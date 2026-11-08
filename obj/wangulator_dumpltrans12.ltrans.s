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
	call	_tabledivide64.lto_priv.1
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
	call	_tabledivide64.lto_priv.1
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
	call	_tabledivide64.lto_priv.1
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
	call	_tabledivide64.lto_priv.1
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
	call	_tabledivide64.lto_priv.1
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
	call	_tabledivide64.lto_priv.1
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
	movw	%ax, -372(%ebp)
	movzwl	4(%edi), %eax
	movl	%ecx, -312(%ebp)
	movw	%ax, -320(%ebp)
	movzbl	8(%edi), %eax
	movb	%al, -396(%ebp)
	movzbl	12(%edi), %eax
	movb	%al, -392(%ebp)
	movl	16(%edi), %eax
	movl	%eax, -348(%ebp)
	movzbl	20(%edi), %eax
	movb	%al, -376(%ebp)
	movzbl	24(%edi), %eax
	movb	%al, -400(%ebp)
	movl	28(%edi), %eax
	movl	%eax, -316(%ebp)
	movl	32(%edi), %eax
	movl	%eax, -328(%ebp)
	movl	36(%edi), %eax
	movl	%eax, -344(%ebp)
	movl	40(%edi), %eax
	movl	%eax, -356(%ebp)
	movl	44(%edi), %eax
	movl	%eax, -324(%ebp)
	testl	%eax, %eax
	je	L81
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
	movswl	-372(%ebp), %eax
	movzwl	-320(%ebp), %ebx
	movzbl	-324(%ebp), %edi
	movss	-304(%ebp), %xmm3
	movl	%eax, -352(%ebp)
	movss	-312(%ebp), %xmm1
	movl	_totalclock+8, %eax
	movw	%bx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+32
	imull	$52, %edi, %ebx
	movaps	%xmm3, %xmm0
	movss	-308(%ebp), %xmm2
	movss	-352(%ebp), %xmm7
	movaps	%xmm1, %xmm4
	movl	_totalclock+12, %edx
	movzwl	-348(%ebp), %esi
	movl	%eax, %ecx
	xorw	%cx, %cx
	unpcklps	%xmm7, %xmm4
	unpcklps	%xmm2, %xmm0
	movl	%ecx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+44
	andl	$-34, %esi
	movlhps	%xmm4, %xmm0
	leal	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth(%ebx), %ecx
	movl	%edx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+48
	cmpl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+44(%ebx), %eax
	movl	%edx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+36
	sbbl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+48(%ebx), %edx
	movw	%si, -360(%ebp)
	movl	%edx, %ebx
	movw	%si, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+34
	movups	%xmm0, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth
	movups	%xmm0, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+16
	testb	$16, -347(%ebp)
	jne	L563
L67:
	movl	$1, %edx
L69:
	cmpl	$3, %ebx
	jg	L71
	imull	$52, %edi, %eax
	movss	%xmm3, -364(%ebp)
	movl	-364(%ebp), %ebx
	movss	%xmm2, -364(%ebp)
	movl	-364(%ebp), %ecx
	movss	%xmm1, -364(%ebp)
	cmpl	%ebx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+16(%eax)
	leal	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth(%eax), %esi
	setne	%bl
	cmpl	%ecx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+20(%eax)
	setne	%cl
	orl	%ebx, %ecx
	movl	-364(%ebp), %ebx
	cmpl	%ebx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+24(%eax)
	setne	%al
	orb	%cl, %al
	jne	L71
	movl	-352(%ebp), %eax
	cmpl	%eax, 28(%esi)
	je	L72
	.p2align 4
	.p2align 3
L71:
	imull	$52, %edi, %eax
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+16(%eax), %ecx
	movl	%ecx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth(%eax)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+20(%eax), %ecx
	movl	%ecx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+4(%eax)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+24(%eax), %ecx
	movl	%ecx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+8(%eax)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+28(%eax), %ecx
	movl	%ecx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+12(%eax)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+16, %ecx
	movl	%ecx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+16(%eax)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+20, %ecx
	movl	%ecx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+20(%eax)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+24, %ecx
	movl	%ecx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+24(%eax)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+28, %ecx
	movl	%ecx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+28(%eax)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+44, %ecx
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+48, %ebx
	xorw	%cx, %cx
	movl	%ebx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+36(%eax)
	movl	%ecx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+44(%eax)
	movl	%ebx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+48(%eax)
L72:
	testb	%dl, %dl
	je	L74
	imull	$52, %edi, %eax
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+16, %esi
	movl	%esi, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+16(%eax)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+20, %ebx
	movl	%esi, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth(%eax)
	movl	%ebx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+20(%eax)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+24, %ecx
	movl	%ebx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+4(%eax)
	movl	%ecx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+24(%eax)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+28, %edx
	movl	%ecx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+8(%eax)
	movl	%edx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+28(%eax)
	movl	%edx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+12(%eax)
L75:
	imull	$52, %edi, %eax
	movzwl	-320(%ebp), %esi
	movl	_r_rotatespriteinterp, %edi
	movw	%si, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+32(%eax)
	movzwl	-360(%ebp), %esi
	movw	%si, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+34(%eax)
	testl	%edi, %edi
	je	L81
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth, %eax
	movl	%eax, -304(%ebp)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+4, %eax
	movl	%eax, -308(%ebp)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+8, %eax
	movl	%eax, -312(%ebp)
	movzwl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+12, %eax
	movw	%ax, -372(%ebp)
L81:
	cmpb	$-1, -376(%ebp)
	je	L63
	movswl	-320(%ebp), %eax
	movl	%eax, -368(%ebp)
	cmpl	$2, _rendmode
	jle	L83
	cmpl	$200, _qsetmode
	je	L84
L83:
	movl	-316(%ebp), %esi
	testl	%esi, %esi
	js	L564
	movl	-316(%ebp), %esi
	movl	_xdim, %eax
	cmpl	%esi, %eax
	leal	-1(%eax), %edx
	cmovg	%esi, %edx
	movl	-328(%ebp), %esi
	movl	%edx, -316(%ebp)
	testl	%esi, %esi
	js	L346
L574:
	movl	_ydim, %eax
	cmpl	%esi, %eax
	jle	L169
	sall	$16, %esi
	movl	%esi, -320(%ebp)
L168:
	movl	-344(%ebp), %esi
	testl	%esi, %esi
	js	L347
L575:
	movl	_xdim, %eax
	cmpl	%esi, %eax
	jle	L171
	movl	-316(%ebp), %eax
	addl	%eax, %esi
L170:
	movl	-356(%ebp), %edi
	testl	%edi, %edi
	js	L348
L576:
	movl	_ydim, %eax
	cmpl	%edi, %eax
	jle	L173
	addl	%edi, -328(%ebp)
L172:
	movl	-368(%ebp), %eax
	movswl	_tilesiz(,%eax,4), %edi
	movswl	_tilesiz+2(,%eax,4), %ebx
	movl	%edi, -364(%ebp)
	movl	%ebx, -360(%ebp)
	testb	$16, -348(%ebp)
	jne	L349
	movsbl	_picanm+1(%eax,%eax,4), %ecx
	movsbl	_picanm+2(%eax,%eax,4), %edx
	movl	%ebx, %eax
	sarl	%edi
	sarl	%eax
	addl	%ecx, %edi
	addl	%edx, %eax
	movl	%edi, -380(%ebp)
	movl	%eax, -324(%ebp)
L174:
	movl	-348(%ebp), %edi
	movl	-324(%ebp), %edx
	leal	-312(%ebp), %ecx
	movl	-360(%ebp), %eax
	movl	%edi, %ebx
	subl	%edx, %eax
	andl	$4, %ebx
	movl	%ebx, -404(%ebp)
	cmove	%edx, %eax
	movzwl	-372(%ebp), %ebx
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
	movl	-328(%ebp), %ebx
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
	movl	%edi, -408(%ebp)
	cmpl	$8, %edi
	je	L350
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
	movl	%eax, -328(%ebp)
L176:
	movl	-380(%ebp), %eax
	movl	-324(%ebp), %edi
	movl	-308(%ebp), %edx
	imull	%ecx, %edi
	imull	%ebx, %eax
	imull	-360(%ebp), %ecx
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
	movl	%ebx, -352(%ebp)
	subl	%ebx, %eax
	cmpl	%ecx, %edx
	movl	%ecx, __ZL4nry1+12
	cmovge	%edx, %edi
	movl	%eax, __ZL4nry1+8
	movl	%edi, %ebx
	movl	-352(%ebp), %edi
	cmpl	%edi, %ebx
	cmovl	%edi, %ebx
	cmpl	%eax, %ebx
	cmovl	%eax, %ebx
	cmpl	-320(%ebp), %ebx
	jl	L63
	movl	-356(%ebp), %ebx
	movl	-352(%ebp), %edi
	sall	$16, %ebx
	cmpl	%ecx, %edx
	cmovg	%ecx, %edx
	cmpl	%edi, %edx
	cmovg	%edi, %edx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	cmpl	%edx, %ebx
	jl	L63
	movl	-380(%ebp), %eax
	movl	-328(%ebp), %edx
	imull	-324(%ebp), %edx
	movl	-304(%ebp), %ebx
	imull	%esi, %eax
	imull	-364(%ebp), %esi
	subl	%edx, %eax
	movl	-328(%ebp), %edx
	imull	-360(%ebp), %edx
	subl	%eax, %ebx
	movl	%ebx, %eax
	leal	(%esi,%ebx), %edi
	movl	-316(%ebp), %esi
	movl	%ebx, -412(%ebp)
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
	movl	%esi, -328(%ebp)
	cmpl	%ebx, %ecx
	cmovl	%ebx, %ecx
	cmpl	%edx, %ecx
	cmovl	%edx, %ecx
	cmpl	%esi, %ecx
	jl	L63
	movl	-344(%ebp), %ecx
	sall	$16, %ecx
	cmpl	%eax, %edi
	cmovle	%edi, %eax
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	cmpl	%eax, %ecx
	jl	L63
	movl	-344(%ebp), %eax
	xorl	%ecx, %ecx
	movl	$4, -364(%ebp)
	movl	$0, -316(%ebp)
	addl	$1, %eax
	sall	$16, %eax
	movl	%eax, -344(%ebp)
L184:
	movl	%edi, %eax
	leal	1(%ecx), %esi
	subl	%ebx, %eax
	andl	$3, %esi
	movl	%eax, -324(%ebp)
	cmpl	%ebx, -328(%ebp)
	jg	L177
	cmpl	%ebx, -344(%ebp)
	jl	L177
	movl	-316(%ebp), %edx
	movl	__ZL4nry1(,%ecx,4), %eax
	movl	%ebx, __ZL4nrx2(,%edx,4)
	movl	%eax, __ZL4nry2(,%edx,4)
	addl	$1, %edx
	movl	%edx, -316(%ebp)
L177:
	movl	-324(%ebp), %eax
	testl	%eax, %eax
	jle	L178
	movl	-328(%ebp), %eax
	movl	%eax, %edx
	subl	%edi, %eax
	subl	%ebx, %edx
	xorl	%edx, %eax
	movl	%edx, -380(%ebp)
	js	L179
	movl	-344(%ebp), %eax
L180:
	movl	%eax, %edx
	subl	%ebx, %edx
	movl	%eax, %ebx
	subl	%edi, %ebx
	xorl	%edx, %ebx
	js	L565
L182:
	subl	$1, -364(%ebp)
	je	L183
L577:
	leal	1(%esi), %eax
	movl	__ZL4nrx1(,%esi,4), %ebx
	movl	%esi, %ecx
	andl	$3, %eax
	movl	__ZL4nrx1(,%eax,4), %edi
	jmp	L184
L586:
	movss	-392(%ebp), %xmm0
	shufps	$0, %xmm0, %xmm0
	movups	%xmm0, -344(%ebp)
	testl	%eax, %eax
	je	L209
	movl	$24, (%esp)
	call	_setupvlineasm
	movups	-344(%ebp), %xmm0
L210:
	movl	-328(%ebp), %eax
	movups	%xmm0, _palookupoffse
	sall	$8, %eax
	movl	%eax, -328(%ebp)
	movss	-328(%ebp), %xmm0
	movl	%eax, -376(%ebp)
	movl	-316(%ebp), %eax
	shufps	$0, %xmm0, %xmm0
	movups	%xmm0, _vince
	cmpl	-364(%ebp), %eax
	jge	L63
	sall	$8, %edi
	addl	%eax, %eax
	movl	%ebx, -384(%ebp)
	movl	%edi, -348(%ebp)
	movl	%eax, -396(%ebp)
	movl	$0, -344(%ebp)
	.p2align 4
	.p2align 3
L250:
	movl	$4, %eax
	movl	-364(%ebp), %esi
	subl	-316(%ebp), %esi
	cmpl	%eax, %esi
	movl	-380(%ebp), %ebx
	movl	__ZL4uplc.lto_priv.0, %ecx
	cmovle	%esi, %eax
	movl	__ZL4dplc.lto_priv.0, %edx
	movl	%eax, -352(%ebp)
	xorl	%eax, %eax
	testl	%ebx, %ebx
	je	L212
	movl	-396(%ebp), %edi
	movb	$15, -328(%ebp)
	movl	-384(%ebp), %esi
	leal	(%ecx,%edi), %ebx
	movl	%ebx, -360(%ebp)
	leal	(%edx,%edi), %ebx
	movl	%ebx, -356(%ebp)
L214:
	movl	-360(%ebp), %ebx
	addl	-368(%ebp), %esi
	movswl	(%ebx,%eax,2), %edx
	movl	-356(%ebp), %ebx
	movswl	(%ebx,%eax,2), %ecx
	cmpl	%edx, %ecx
	jle	L213
	subl	$1, %ecx
	movl	%edx, %ebx
	subl	-344(%ebp), %ebx
	movl	%edx, -88(%ebp,%eax,4)
	movl	%ecx, -152(%ebp,%eax,4)
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %ecx
	imull	-376(%ebp), %ebx
	addl	%ebx, -348(%ebp)
	movl	%esi, %ebx
	movl	-348(%ebp), %edi
	shrl	$16, %ebx
	notl	%ecx
	andb	%cl, -328(%ebp)
	imull	-320(%ebp), %ebx
	addl	-324(%ebp), %ebx
	movl	%edx, -344(%ebp)
	movl	%ebx, _bufplce(,%eax,4)
	movl	%edi, _vplce(,%eax,4)
L213:
	addl	$1, %eax
	cmpl	%eax, -352(%ebp)
	jne	L214
	movl	-352(%ebp), %eax
L557:
	movl	-368(%ebp), %esi
	subl	$1, %eax
	movl	-384(%ebp), %edx
	movl	$-2147483648, %ebx
	movl	$2147483647, %edi
	leal	-152(%ebp), %ecx
	imull	%esi, %eax
	addl	%esi, %edx
	leal	-88(%ebp), %esi
	addl	%edx, %eax
	movl	%eax, -384(%ebp)
	movl	-316(%ebp), %eax
	addl	_frameplace, %eax
	movl	%eax, -352(%ebp)
	xorl	%eax, %eax
L220:
	movzbl	-328(%ebp), %edx
	testb	%dl, __ZL8pow2char.lto_priv.7(%eax)
	jne	L219
	movl	(%esi,%eax,4), %edx
	cmpl	%edx, %ebx
	cmovl	%edx, %ebx
	movl	(%ecx,%eax,4), %edx
	cmpl	%edx, %edi
	cmovg	%edx, %edi
L219:
	addl	$1, %eax
	cmpl	$4, %eax
	jne	L220
	movl	-388(%ebp), %eax
	testl	%eax, %eax
	je	L221
	cmpb	$0, -328(%ebp)
	jne	L222
	cmpl	%ebx, %edi
	jle	L223
	movl	-88(%ebp), %eax
	cmpl	%eax, %ebx
	jg	L566
L229:
	movl	-84(%ebp), %eax
	cmpl	%ebx, %eax
	jl	L567
L230:
	movl	-80(%ebp), %eax
	cmpl	%ebx, %eax
	jl	L568
L231:
	movl	-76(%ebp), %eax
	cmpl	%ebx, %eax
	jl	L569
L232:
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
	jg	L570
L233:
	movl	-148(%ebp), %eax
	cmpl	%edi, %eax
	jg	L571
L234:
	movl	-144(%ebp), %eax
	cmpl	%edi, %eax
	jg	L572
L235:
	movl	-140(%ebp), %eax
	cmpl	%edi, %eax
	jg	L573
L236:
	call	__Z16timerUpdateClockv
L228:
	addl	$4, -316(%ebp)
	movl	-316(%ebp), %eax
	addl	$8, -396(%ebp)
	cmpl	%eax, -364(%ebp)
	jg	L250
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
L564:
	.cfi_restore_state
	movl	$0, -316(%ebp)
	movl	-328(%ebp), %esi
	testl	%esi, %esi
	jns	L574
L346:
	movl	$0, -320(%ebp)
	movl	-344(%ebp), %esi
	movl	$0, -328(%ebp)
	testl	%esi, %esi
	jns	L575
L347:
	movl	-356(%ebp), %edi
	movl	-316(%ebp), %esi
	movl	$0, -344(%ebp)
	testl	%edi, %edi
	jns	L576
L348:
	movl	$0, -356(%ebp)
	jmp	L172
	.p2align 4,,10
	.p2align 3
L178:
	movl	-344(%ebp), %eax
	movl	%eax, %edx
	subl	%edi, %eax
	subl	%ebx, %edx
	xorl	%edx, %eax
	movl	%edx, -380(%ebp)
	js	L181
	movl	-328(%ebp), %eax
	movl	%eax, %edx
	subl	%ebx, %edx
	movl	%eax, %ebx
	subl	%edi, %ebx
	xorl	%edx, %ebx
	jns	L182
L565:
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
	call	_tabledivide64.lto_priv.1
	addl	%eax, %ebx
	movl	%ebx, __ZL4nry2(,%edi,4)
	addl	$1, %edi
	subl	$1, -364(%ebp)
	movl	%edi, -316(%ebp)
	jne	L577
L183:
	cmpl	$2, -316(%ebp)
	jle	L63
	movl	-356(%ebp), %eax
	xorl	%ecx, %ecx
	movl	$0, -328(%ebp)
	addl	$1, %eax
	sall	$16, %eax
	movl	%eax, -344(%ebp)
	jmp	L192
	.p2align 4,,10
	.p2align 3
L580:
	movl	-320(%ebp), %eax
	movl	%eax, %edx
	subl	%esi, %eax
	subl	%edi, %edx
	xorl	%edx, %eax
	movl	%edx, -356(%ebp)
	js	L188
	movl	-344(%ebp), %eax
L189:
	movl	%eax, %edx
	subl	%edi, %edx
	movl	%eax, %edi
	subl	%esi, %edi
	xorl	%edx, %edi
	js	L578
L191:
	testl	%ebx, %ebx
	je	L579
L352:
	movl	%ebx, %ecx
L192:
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
	jl	L186
	cmpl	%edi, -344(%ebp)
	jl	L186
	movl	-328(%ebp), %edx
	movl	__ZL4nrx2(,%ecx,4), %eax
	movl	%edi, __ZL4nry1(,%edx,4)
	movl	%eax, __ZL4nrx1(,%edx,4)
	addl	$1, %edx
	movl	%edx, -328(%ebp)
L186:
	movl	-324(%ebp), %eax
	testl	%eax, %eax
	jg	L580
	movl	-344(%ebp), %eax
	movl	%eax, %edx
	subl	%esi, %eax
	subl	%edi, %edx
	xorl	%edx, %eax
	movl	%edx, -356(%ebp)
	js	L190
	movl	-320(%ebp), %eax
	movl	%eax, %edx
	subl	%edi, %edx
	movl	%eax, %edi
	subl	%esi, %edi
	xorl	%edx, %edi
	jns	L191
L578:
	movl	-328(%ebp), %edi
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
	call	_tabledivide64.lto_priv.1
	addl	%eax, %esi
	movl	%esi, __ZL4nrx1(,%edi,4)
	addl	$1, %edi
	movl	%edi, -328(%ebp)
	testl	%ebx, %ebx
	jne	L352
L579:
	movl	-328(%ebp), %edi
	movl	%ebx, -424(%ebp)
	cmpl	$2, %edi
	jle	L63
	movl	__ZL4nrx1, %eax
	leal	-1(%edi), %esi
	xorl	%edx, %edx
	movl	%esi, -316(%ebp)
	movl	%eax, -320(%ebp)
	movl	%eax, %ecx
	movl	%eax, -328(%ebp)
	jmp	L196
	.p2align 4,,10
	.p2align 3
L581:
	movl	%ebx, %eax
	orl	$65535, %eax
	subl	%ebx, %eax
/APP
 # 8043 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	-344(%ebp), %edx
	movl	__ZL4uplc.lto_priv.0, %eax
	subl	%esi, %edi
	movl	%edi, %ecx
	leal	(%eax,%esi,2), %eax
	addl	%ebx, %edx
	movl	-324(%ebp), %esi
/APP
 # 8049 "source/build/src/engine.cpp" 1
	testl %ecx, %ecx; jz 3f; testb $2, %al; jz 0f; movl %edx, %ebx; sarl $16, %ebx; movw %bx, (%eax); addl %esi, %edx; addl $2, %eax; decl %ecx; jz 3f; 0: subl $2, %ecx; jc 2f; 1: movl %edx, %ebx; addl %esi, %edx; sarl $16, %ebx; movl %edx, %edi; andl $0xffff0000, %edi; addl %esi, %edx; addl %edi, %ebx; movl %ebx, (%eax); addl $4, %eax; subl $2, %ecx; jnc 1b; testb $1, %cl; jz 3f; 2: movl %edx, %ebx; sarl $16, %ebx; movw %bx, (%eax); 3:
 # 0 "" 2
/NO_APP
L193:
	movl	-316(%ebp), %edx
	leal	-1(%edx), %eax
	testl	%edx, %edx
	je	L195
L582:
	movl	%eax, -316(%ebp)
	movl	__ZL4nrx1+4(,%eax,4), %ecx
L196:
	movl	-316(%ebp), %eax
	movl	%ecx, %edi
	movl	__ZL4nrx1(,%eax,4), %ebx
	movl	-320(%ebp), %eax
	movl	%ebx, %esi
	sarl	$16, %esi
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	sarl	$16, %edi
	movl	%eax, -320(%ebp)
	movl	-328(%ebp), %eax
	cmpl	%ebx, %eax
	cmovl	%ebx, %eax
	movl	%eax, -328(%ebp)
	cmpl	%edi, %esi
	je	L193
	movl	-316(%ebp), %eax
	movl	__ZL4nry1(,%edx,4), %edx
	movl	%ecx, -356(%ebp)
	movl	__ZL4nry1(,%eax,4), %eax
	movl	%edx, -364(%ebp)
	movl	%eax, -344(%ebp)
	movl	%ecx, %eax
	subl	%ebx, %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%edx, %eax
	subl	-344(%ebp), %eax
	cltd
	shldl	$16, %eax, %edx
	sall	$16, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	%eax, -324(%ebp)
	movl	%eax, %edx
	cmpl	%edi, %esi
	jl	L581
	movl	-356(%ebp), %eax
	movl	-324(%ebp), %edx
	orl	$65535, %eax
	subl	-356(%ebp), %eax
/APP
 # 8053 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	__ZL4dplc.lto_priv.0, %eax
	movl	%esi, %ecx
	movl	-324(%ebp), %esi
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
	jne	L582
L195:
	movl	-368(%ebp), %eax
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
	movl	-368(%ebp), %eax
	call	__Z12tileLoadHighi
	movl	%eax, __ZL8globalht.lto_priv.0
	testl	%eax, %eax
	je	L197
	movl	(%eax), %esi
	movl	%esi, -324(%ebp)
	movzwl	4(%eax), %esi
	movzwl	6(%eax), %eax
	movw	%si, -416(%ebp)
	movw	%ax, -428(%ebp)
L198:
	movzbl	-392(%ebp), %eax
	movzwl	_numshades, %esi
	movl	_palookup(,%eax,4), %ebx
	movl	-348(%ebp), %eax
	testl	%ebx, %ebx
	cmove	_palookup, %ebx
	andl	$1, %eax
	movl	%eax, -356(%ebp)
	jne	L200
	cmpb	$0, -376(%ebp)
	je	L200
	movzbl	_numalphatabs, %eax
	testb	%al, %al
	jne	L583
	movzbl	-376(%ebp), %eax
	movl	$0, -356(%ebp)
	cmpb	$84, %al
	ja	L584
	.p2align 4
	.p2align 3
L200:
	movsbl	-396(%ebp), %edx
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
	call	_tabledivide64.lto_priv.1
	movl	%eax, %ecx
	movl	-388(%ebp), %eax
	movl	%ecx, %edx
/APP
 # 8089 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -344(%ebp)
	movl	%ecx, %edx
	movl	-384(%ebp), %eax
/APP
 # 8090 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%eax, -388(%ebp)
	movl	-348(%ebp), %edi
	movl	%eax, -384(%ebp)
	movl	-344(%ebp), %eax
	andl	$8, %edi
	movl	%esi, -368(%ebp)
	negl	%eax
	movl	%edi, -380(%ebp)
	movl	%eax, -376(%ebp)
	cmpl	$8, -408(%ebp)
	je	L205
	movl	-216(%ebp), %edx
/APP
 # 8093 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -376(%ebp)
	movl	-216(%ebp), %edx
	movl	%esi, %eax
/APP
 # 8094 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -368(%ebp)
L205:
	movl	-320(%ebp), %eax
	movl	$65535, %ecx
	subl	-352(%ebp), %ecx
	movl	-368(%ebp), %edx
	movl	-344(%ebp), %edi
	movl	%eax, %esi
	xorw	%ax, %ax
	sarl	$16, %esi
	subl	$1, %eax
	subl	-412(%ebp), %eax
	movl	%esi, -316(%ebp)
	movl	-328(%ebp), %esi
	movl	%eax, -320(%ebp)
	sarl	$16, %esi
	movl	%esi, -364(%ebp)
	movl	%ecx, %esi
/APP
 # 8108 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -352(%ebp)
	movl	-376(%ebp), %edx
	movl	%ecx, %esi
	movl	-320(%ebp), %eax
	movl	-388(%ebp), %edi
/APP
 # 8109 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-404(%ebp), %edx
	testl	%edx, %edx
	jne	L585
L206:
	movzwl	-428(%ebp), %esi
	movzwl	-416(%ebp), %edi
	movl	-360(%ebp), %edx
	movl	-344(%ebp), %ebx
	movl	%esi, %ecx
	sall	%cl, %edx
	movl	%edi, %ecx
	sall	%cl, %ebx
	movl	%esi, %ecx
	movl	%edx, -320(%ebp)
	movl	%ebx, -344(%ebp)
	movl	-384(%ebp), %ebx
	sall	%cl, %ebx
	movl	%edi, %ecx
	movl	%ebx, -328(%ebp)
	movl	-368(%ebp), %ebx
	sall	%cl, %ebx
	movl	%esi, %ecx
	movl	%ebx, -368(%ebp)
	movl	-376(%ebp), %ebx
	sall	%cl, %ebx
	movl	%edi, %ecx
	movl	%ebx, -384(%ebp)
	movl	-352(%ebp), %ebx
	sall	%cl, %ebx
	movl	%esi, %ecx
	movl	-356(%ebp), %esi
	sall	%cl, %eax
	movl	%eax, %edi
	testl	%esi, %esi
	jne	L207
	movl	-348(%ebp), %eax
	andl	$64, %eax
	movl	%eax, -388(%ebp)
	testw	$1023, -372(%ebp)
	jne	L208
	cmpl	$256, %edx
	jle	L586
L208:
	movl	-368(%ebp), %ecx
	movl	-384(%ebp), %esi
	movl	%ecx, %eax
	movl	%esi, %edx
	sall	$16, %esi
	sarl	$16, %eax
	imull	-320(%ebp), %eax
	sarl	$16, %edx
	addl	%edx, %eax
	movl	%esi, %edx
	movl	-388(%ebp), %esi
	movl	$0, 20(%esp)
	testl	%esi, %esi
	je	L251
	testw	%cx, %cx
	jne	L252
	movl	$0, 16(%esp)
	movl	-392(%ebp), %esi
	movl	%eax, 8(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	_setupqrhlineasm4
	movl	$1, -392(%ebp)
L253:
	movl	__ZL4uplc.lto_priv.0, %eax
	movl	-316(%ebp), %esi
	movl	-380(%ebp), %ecx
	movzwl	(%eax,%esi,2), %eax
	movl	%eax, %edx
	testl	%ecx, %ecx
	jne	L254
	movl	_startumost, %edx
	movzwl	(%edx,%esi,2), %edx
	cmpw	%dx, %ax
	cmovge	%eax, %edx
L254:
	movswl	%dx, %ecx
	movl	-364(%ebp), %edx
	cmpl	%edx, -316(%ebp)
	jge	L63
	subl	$1, %edx
	movl	%ebx, -360(%ebp)
	movl	%ecx, %esi
	movl	%edx, -396(%ebp)
	movw	%ax, -348(%ebp)
	.p2align 4
	.p2align 3
L305:
	movl	-316(%ebp), %ebx
	movswl	-348(%ebp), %edx
	leal	(%ebx,%ebx), %eax
	movl	%eax, -372(%ebp)
	leal	-1(%edx), %eax
	movl	__ZL4dplc.lto_priv.0, %edx
	movl	%eax, -352(%ebp)
	movl	-380(%ebp), %eax
	movzwl	(%edx,%ebx,2), %edx
	testl	%eax, %eax
	jne	L558
	movl	_startumost, %ebx
	movl	-316(%ebp), %eax
	movzwl	(%ebx,%eax,2), %eax
	cmpw	-348(%ebp), %ax
	leal	-1(%eax), %ebx
	movl	-352(%ebp), %eax
	movswl	%bx, %ebx
	cmovg	%ebx, %eax
	movl	-316(%ebp), %ebx
	movl	%eax, -352(%ebp)
	movl	_startdmost, %eax
	movzwl	(%eax,%ebx,2), %eax
	cmpw	%ax, %dx
	cmovg	%eax, %edx
L558:
	movswl	%dx, %eax
	movl	%eax, -348(%ebp)
	movl	-348(%ebp), %eax
	subl	$1, %eax
	cmpl	-352(%ebp), %eax
	jg	L258
	leal	-1(%esi), %eax
	movl	%eax, -348(%ebp)
	cmpl	%ecx, %eax
	jle	L260
	movl	-388(%ebp), %eax
	testl	%eax, %eax
	je	L587
	movl	-392(%ebp), %eax
	testl	%eax, %eax
	jne	L549
	movl	-356(%ebp), %ebx
	movl	-360(%ebp), %esi
	movl	%ecx, %eax
	jmp	L300
	.p2align 4,,10
	.p2align 3
L299:
	movl	%ebx, %eax
	movl	-316(%ebp), %edx
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-328(%ebp), %eax
	addl	%ecx, %esi
	addl	%eax, %edi
	movl	_ylookup, %eax
	movl	(%eax,%ebx,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 8(%esp)
	addl	%edx, %ecx
	addl	%ecx, %eax
	movl	%edi, %ecx
	movl	%eax, 20(%esp)
	movl	%edi, %eax
	sarl	$16, %ecx
	sall	$16, %eax
	movl	%eax, 16(%esp)
	movl	%esi, %eax
	sall	$16, %eax
	movl	%eax, 12(%esp)
	movl	%esi, %eax
	sarl	$16, %eax
	imull	-320(%ebp), %eax
	addl	%ecx, %eax
	addl	-324(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	subl	(%eax,%ebx,4), %edx
	movl	%edx, (%esp)
	call	_rhlineasm4
	cmpl	%ebx, -348(%ebp)
	je	L561
	movl	%ebx, %eax
L300:
	movl	%ebx, %ecx
	leal	1(%eax), %ebx
	testb	$31, %bl
	jne	L299
	movl	%ecx, -352(%ebp)
	call	__Z16timerUpdateClockv
	movl	-352(%ebp), %ecx
	jmp	L299
	.p2align 4,,10
	.p2align 3
L188:
	movl	-328(%ebp), %eax
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
	imull	-356(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	-328(%ebp), %edx
	addl	-364(%ebp), %eax
	movl	-380(%ebp), %ecx
	movl	%eax, __ZL4nrx1(,%edx,4)
	addl	$1, %edx
	movl	-344(%ebp), %eax
	movl	%edx, -328(%ebp)
	jmp	L189
	.p2align 4,,10
	.p2align 3
L190:
	movl	-328(%ebp), %eax
	movl	-344(%ebp), %edx
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
	imull	-356(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	-328(%ebp), %edx
	addl	-364(%ebp), %eax
	movl	-380(%ebp), %ecx
	movl	%eax, __ZL4nrx1(,%edx,4)
	addl	$1, %edx
	movl	-320(%ebp), %eax
	movl	%edx, -328(%ebp)
	jmp	L189
	.p2align 4,,10
	.p2align 3
L349:
	movl	$0, -324(%ebp)
	movl	$0, -380(%ebp)
	jmp	L174
	.p2align 4,,10
	.p2align 3
L179:
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
	movl	%ecx, -424(%ebp)
	subl	%ecx, %eax
	imull	-380(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	-316(%ebp), %edx
	addl	-424(%ebp), %eax
	movl	-416(%ebp), %ecx
	movl	%eax, __ZL4nry2(,%edx,4)
	addl	$1, %edx
	movl	-344(%ebp), %eax
	movl	%edx, -316(%ebp)
	jmp	L180
	.p2align 4,,10
	.p2align 3
L181:
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
	movl	%ecx, -424(%ebp)
	subl	%ecx, %eax
	imull	-380(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	-316(%ebp), %edx
	addl	-424(%ebp), %eax
	movl	-416(%ebp), %ecx
	movl	%eax, __ZL4nry2(,%edx,4)
	addl	$1, %edx
	movl	-328(%ebp), %eax
	movl	%edx, -316(%ebp)
	jmp	L180
L74:
	testb	$64, -347(%ebp)
	je	L76
	imull	$52, %edi, %ecx
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+16, %eax
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+20, %edx
	movl	%eax, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth(%ecx)
	movl	%eax, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+16(%ecx)
	movl	%edx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+20(%ecx)
	movl	%edx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+4(%ecx)
L76:
	testb	$-128, -347(%ebp)
	je	L77
	imull	$52, %edi, %eax
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+24, %edx
	movl	%edx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+24(%eax)
	movl	%edx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+8(%eax)
L77:
	testb	$1, -346(%ebp)
	jne	L78
	imull	$52, %edi, %eax
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+12(%eax), %eax
	movl	%eax, -368(%ebp)
L79:
	imull	$52, %edi, %ebx
	movl	$65536, %eax
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+16(%ebx), %edx
	movl	%edx, -352(%ebp)
	subl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth(%ebx), %edx
/APP
 # 7928 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+20(%ebx), %esi
	movl	%eax, -380(%ebp)
	movl	%esi, %eax
	subl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+4(%ebx), %eax
	movl	%eax, %edx
	movl	$65536, %eax
/APP
 # 7929 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -384(%ebp)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+24(%ebx), %eax
	movl	%eax, -364(%ebp)
	subl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+8(%ebx), %eax
	movl	%eax, %edx
	movl	$65536, %eax
/APP
 # 7930 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+28(%ebx), %ebx
	movl	%eax, -388(%ebp)
	movl	$65536, %eax
	leal	1024(%ebx), %edx
	subl	-368(%ebp), %edx
	andl	$2047, %edx
	subl	$1024, %edx
/APP
 # 7931 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-352(%ebp), %edx
	subl	%eax, %ebx
	subl	-380(%ebp), %edx
	movl	%edx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth
	subl	-384(%ebp), %esi
	andl	$2047, %ebx
	movl	-364(%ebp), %edx
	subl	-388(%ebp), %edx
	movl	%esi, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+4
	movl	%edx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+8
	movl	%ebx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+12
	jmp	L75
L173:
	subl	$1, %eax
	addl	%eax, -328(%ebp)
	movl	%eax, -356(%ebp)
	jmp	L172
L171:
	movl	-316(%ebp), %esi
	subl	$1, %eax
	movl	%eax, -344(%ebp)
	addl	%eax, %esi
	jmp	L170
L169:
	subl	$1, %eax
	movl	%eax, -328(%ebp)
	sall	$16, %eax
	movl	%eax, -320(%ebp)
	jmp	L168
L585:
	movl	-360(%ebp), %edx
	negl	%edi
	negl	-376(%ebp)
	movl	%edi, -384(%ebp)
	sall	$16, %edx
	subl	$1, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	L206
L563:
	movl	36(%ecx), %eax
	testl	%eax, %eax
	je	L67
	cmpl	$4, %edx
	ja	L67
	movl	-348(%ebp), %eax
	testb	$32, %ah
	jne	L70
	movswl	34(%ecx), %edx
	andl	$-34, %eax
	cmpl	%eax, %edx
	jne	L67
	movswl	32(%ecx), %edx
	movswl	-320(%ebp), %eax
	movzwl	_tilesiz(,%eax,4), %ecx
	cmpw	%cx, _tilesiz(,%edx,4)
	movl	%edx, %esi
	movzwl	_tilesiz+2(,%eax,4), %eax
	setne	%cl
	cmpw	%ax, _tilesiz+2(,%edx,4)
	setne	%dl
	orl	%ecx, %edx
	cmpw	-320(%ebp), %si
	setne	%al
	andb	%al, %dl
	jne	L69
L70:
	imull	$52, %edi, %eax
	movl	-352(%ebp), %esi
	subl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+28(%eax), %esi
	movl	%esi, %eax
/APP
 # 7908 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	$1024, %eax
	sete	%dl
	jmp	L69
	.p2align 4,,10
	.p2align 3
L78:
	imull	$52, %edi, %eax
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+28, %esi
	movl	%esi, -368(%ebp)
	movl	%esi, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+28(%eax)
	movl	%esi, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+12(%eax)
	jmp	L79
	.p2align 4,,10
	.p2align 3
L258:
	movl	-352(%ebp), %eax
	cmpl	%esi, %eax
	jge	L261
	cmpl	%ecx, %eax
	jle	L588
	movl	-388(%ebp), %eax
	testl	%eax, %eax
	je	L589
	movl	-392(%ebp), %ebx
	testl	%ebx, %ebx
	jne	L548
	movl	%esi, -376(%ebp)
	movl	-356(%ebp), %ebx
	movl	%ecx, %eax
	movl	-360(%ebp), %esi
	jmp	L278
	.p2align 4,,10
	.p2align 3
L277:
	movl	%ebx, %eax
	movl	-316(%ebp), %edx
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-328(%ebp), %eax
	addl	%ecx, %esi
	addl	%eax, %edi
	movl	_ylookup, %eax
	movl	(%eax,%ebx,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 8(%esp)
	addl	%edx, %ecx
	addl	%ecx, %eax
	movl	%edi, %ecx
	movl	%eax, 20(%esp)
	movl	%edi, %eax
	sarl	$16, %ecx
	sall	$16, %eax
	movl	%eax, 16(%esp)
	movl	%esi, %eax
	sall	$16, %eax
	movl	%eax, 12(%esp)
	movl	%esi, %eax
	sarl	$16, %eax
	imull	-320(%ebp), %eax
	addl	%ecx, %eax
	addl	-324(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	subl	(%eax,%ebx,4), %edx
	movl	%edx, (%esp)
	call	_rhlineasm4
	cmpl	%ebx, -352(%ebp)
	je	L590
	movl	%ebx, %eax
L278:
	movl	%ebx, %ecx
	leal	1(%eax), %ebx
	testb	$31, %bl
	jne	L277
	movl	%ecx, -356(%ebp)
	call	__Z16timerUpdateClockv
	movl	-356(%ebp), %ecx
	jmp	L277
	.p2align 4,,10
	.p2align 3
L561:
	movl	%ebx, -356(%ebp)
	movl	-348(%ebp), %ecx
	movl	%esi, -360(%ebp)
L260:
	movl	-316(%ebp), %esi
	cmpl	%esi, -396(%ebp)
	je	L591
	movl	__ZL4uplc.lto_priv.0, %eax
	movl	-372(%ebp), %ebx
	movswl	2(%eax,%ebx), %ecx
	movl	-380(%ebp), %eax
	movl	%ecx, %esi
	testl	%eax, %eax
	jne	L288
	movl	_startumost, %eax
	movswl	2(%eax,%ebx), %eax
	cmpw	%ax, %cx
	cmovl	%eax, %ecx
	movl	%ecx, %esi
	.p2align 4
	.p2align 3
L288:
	addl	$1, -316(%ebp)
	movl	-368(%ebp), %edx
	movl	-316(%ebp), %eax
	addl	%edx, -360(%ebp)
	addl	-384(%ebp), %edi
	cmpl	%eax, -364(%ebp)
	je	L304
	movl	__ZL4uplc.lto_priv.0, %eax
	movl	-372(%ebp), %edx
	movzwl	2(%eax,%edx), %eax
	movw	%ax, -348(%ebp)
	jmp	L305
	.p2align 4,,10
	.p2align 3
L261:
	leal	-1(%esi), %eax
	movl	%eax, -376(%ebp)
	cmpl	%eax, %ecx
	jge	L357
	movl	-388(%ebp), %eax
	testl	%eax, %eax
	je	L592
	movl	-392(%ebp), %eax
	testl	%eax, %eax
	jne	L547
	movl	%esi, -400(%ebp)
	movl	-356(%ebp), %ebx
	movl	%ecx, %eax
	movl	-360(%ebp), %esi
	jmp	L270
	.p2align 4,,10
	.p2align 3
L269:
	movl	%ebx, %eax
	movl	-316(%ebp), %edx
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-328(%ebp), %eax
	addl	%ecx, %esi
	addl	%eax, %edi
	movl	_ylookup, %eax
	movl	(%eax,%ebx,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 8(%esp)
	addl	%edx, %ecx
	addl	%ecx, %eax
	movl	%edi, %ecx
	movl	%eax, 20(%esp)
	movl	%edi, %eax
	sarl	$16, %ecx
	sall	$16, %eax
	movl	%eax, 16(%esp)
	movl	%esi, %eax
	sall	$16, %eax
	movl	%eax, 12(%esp)
	movl	%esi, %eax
	sarl	$16, %eax
	imull	-320(%ebp), %eax
	addl	%ecx, %eax
	addl	-324(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	subl	(%eax,%ebx,4), %edx
	movl	%edx, (%esp)
	call	_rhlineasm4
	cmpl	%ebx, -376(%ebp)
	je	L559
	movl	%ebx, %eax
L270:
	movl	%ebx, %ecx
	leal	1(%eax), %ebx
	testb	$31, %bl
	jne	L269
	movl	%ecx, -356(%ebp)
	call	__Z16timerUpdateClockv
	movl	-356(%ebp), %ecx
	jmp	L269
L588:
	jge	L367
	movl	-352(%ebp), %ebx
	movl	%edi, -376(%ebp)
	leal	0(,%ecx,4), %eax
	movl	-316(%ebp), %edi
	leal	0(,%ebx,4), %ecx
	movl	-356(%ebp), %ebx
	.p2align 5
	.p2align 4
	.p2align 3
L284:
	movl	__ZL5lastx.lto_priv.0, %edx
	movl	%edi, (%edx,%eax)
	subl	$4, %eax
	cmpl	%eax, %ecx
	jne	L284
	movl	%ebx, -356(%ebp)
	movl	-376(%ebp), %edi
L283:
	cmpl	%esi, -348(%ebp)
	jge	L357
	movl	-388(%ebp), %edx
	movl	-352(%ebp), %ecx
	testl	%edx, %edx
	je	L282
	movl	-392(%ebp), %eax
	testl	%eax, %eax
	jne	L281
L279:
	movl	%esi, %eax
	movl	-360(%ebp), %ebx
	movl	-356(%ebp), %esi
	movl	%ecx, -356(%ebp)
	jmp	L290
	.p2align 4,,10
	.p2align 3
L289:
	movl	%esi, %eax
	movl	-316(%ebp), %edx
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-328(%ebp), %eax
	addl	%ecx, %ebx
	addl	%eax, %edi
	movl	_ylookup, %eax
	movl	(%eax,%esi,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 8(%esp)
	addl	%edx, %ecx
	addl	%ecx, %eax
	movl	%edi, %ecx
	movl	%eax, 20(%esp)
	movl	%edi, %eax
	sarl	$16, %ecx
	sall	$16, %eax
	movl	%eax, 16(%esp)
	movl	%ebx, %eax
	sall	$16, %eax
	movl	%eax, 12(%esp)
	movl	%ebx, %eax
	sarl	$16, %eax
	imull	-320(%ebp), %eax
	addl	%ecx, %eax
	addl	-324(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	subl	(%eax,%esi,4), %edx
	movl	%edx, (%esp)
	call	_rhlineasm4
	cmpl	%esi, -348(%ebp)
	je	L562
	movl	%esi, %eax
L290:
	movl	%esi, %ecx
	leal	-1(%eax), %esi
	testl	$31, %esi
	jne	L289
	movl	%ecx, -352(%ebp)
	call	__Z16timerUpdateClockv
	movl	-352(%ebp), %ecx
	jmp	L289
	.p2align 4,,10
	.p2align 3
L562:
	movl	-356(%ebp), %ecx
	movl	%ebx, -360(%ebp)
	movl	%esi, -356(%ebp)
	jmp	L288
L596:
	movl	%esi, -360(%ebp)
	movl	%ebx, %edi
	movl	-376(%ebp), %esi
	movl	%eax, -356(%ebp)
	cmpl	%esi, -348(%ebp)
	jge	L593
	movl	-356(%ebp), %ecx
L281:
	movl	-356(%ebp), %edx
	movl	%esi, %eax
	movl	%edi, %esi
	movl	%ecx, -356(%ebp)
	movl	-360(%ebp), %ebx
	movl	%edx, %edi
	jmp	L292
	.p2align 4,,10
	.p2align 3
L291:
	movl	%edi, %eax
	movl	-316(%ebp), %edx
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-328(%ebp), %eax
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
	imull	-320(%ebp), %eax
	addl	%ecx, %eax
	addl	-324(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	subl	(%eax,%edi,4), %edx
	movl	%edx, (%esp)
	call	_qrhlineasm4
	cmpl	%edi, -348(%ebp)
	je	L594
	movl	%edi, %eax
L292:
	movl	%edi, %ecx
	leal	-1(%eax), %edi
	testl	$31, %edi
	jne	L291
	movl	%ecx, -352(%ebp)
	call	__Z16timerUpdateClockv
	movl	-352(%ebp), %ecx
	jmp	L291
	.p2align 4,,10
	.p2align 3
L594:
	movl	%edi, %eax
	movl	-356(%ebp), %ecx
	movl	%esi, %edi
	movl	%ebx, -360(%ebp)
	movl	%eax, -356(%ebp)
	movl	%eax, %esi
	jmp	L288
	.p2align 4,,10
	.p2align 3
L549:
	movl	%edi, %ebx
	movl	-360(%ebp), %esi
	movl	-356(%ebp), %edi
	movl	%ecx, %eax
	jmp	L298
	.p2align 4,,10
	.p2align 3
L301:
	movl	%edi, %eax
	movl	-316(%ebp), %edx
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-328(%ebp), %eax
	addl	%ecx, %esi
	addl	%eax, %ebx
	movl	_ylookup, %eax
	movl	(%eax,%edi,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 12(%esp)
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
	sarl	$16, %eax
	imull	-320(%ebp), %eax
	addl	%ecx, %eax
	addl	-324(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	subl	(%eax,%edi,4), %edx
	movl	%edx, (%esp)
	call	_qrhlineasm4
	cmpl	-348(%ebp), %edi
	je	L595
	movl	%edi, %eax
L298:
	movl	%edi, %ecx
	leal	1(%eax), %edi
	testl	$31, %edi
	jne	L301
	movl	%ecx, -352(%ebp)
	call	__Z16timerUpdateClockv
	movl	-352(%ebp), %ecx
	jmp	L301
	.p2align 4,,10
	.p2align 3
L595:
	movl	%edi, %ecx
	movl	%esi, -360(%ebp)
	movl	%ebx, %edi
	movl	%ecx, -356(%ebp)
	jmp	L260
	.p2align 4,,10
	.p2align 3
L559:
	movl	%ebx, -356(%ebp)
	movl	-352(%ebp), %ecx
	movl	%esi, -360(%ebp)
	movl	-400(%ebp), %esi
L264:
	movl	-348(%ebp), %eax
	cmpl	%esi, %eax
	jle	L288
	movl	%edi, -352(%ebp)
	movl	-356(%ebp), %ebx
	sall	$2, %esi
	leal	0(,%eax,4), %edx
	movl	-316(%ebp), %edi
	.p2align 4
	.p2align 4
	.p2align 3
L294:
	movl	__ZL5lastx.lto_priv.0, %eax
	movl	%edi, (%eax,%esi)
	addl	$4, %esi
	cmpl	%esi, %edx
	jne	L294
	movl	%ebx, -356(%ebp)
	movl	-352(%ebp), %edi
	movl	-348(%ebp), %esi
	jmp	L288
L598:
	movl	%esi, -360(%ebp)
	movl	-376(%ebp), %esi
	movl	%ebx, -356(%ebp)
	cmpl	%esi, -348(%ebp)
	jge	L560
	movl	-356(%ebp), %ecx
L282:
	movl	%esi, %eax
	movl	-360(%ebp), %ebx
	movl	-356(%ebp), %esi
	movl	%ecx, -356(%ebp)
	jmp	L287
	.p2align 4,,10
	.p2align 3
L286:
	movl	%esi, %eax
	movl	-316(%ebp), %edx
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-328(%ebp), %eax
	addl	%ecx, %ebx
	addl	%eax, %edi
	movl	_ylookup, %eax
	movl	(%eax,%esi,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 8(%esp)
	addl	%edx, %ecx
	addl	%ecx, %eax
	movl	%edi, %ecx
	movl	%eax, 20(%esp)
	movl	%edi, %eax
	sarl	$16, %ecx
	sall	$16, %eax
	movl	%eax, 16(%esp)
	movl	%ebx, %eax
	sall	$16, %eax
	movl	%eax, 12(%esp)
	movl	%ebx, %eax
	sarl	$16, %eax
	imull	-320(%ebp), %eax
	addl	%ecx, %eax
	addl	-324(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	subl	(%eax,%esi,4), %edx
	movl	%edx, (%esp)
	call	_rmhlineasm4
	cmpl	%esi, -348(%ebp)
	je	L562
	movl	%esi, %eax
L287:
	movl	%esi, %ecx
	leal	-1(%eax), %esi
	testl	$31, %esi
	jne	L286
	movl	%ecx, -352(%ebp)
	call	__Z16timerUpdateClockv
	movl	-352(%ebp), %ecx
	jmp	L286
	.p2align 4,,10
	.p2align 3
L587:
	movl	-356(%ebp), %ebx
	movl	-360(%ebp), %esi
	movl	%ecx, %eax
	jmp	L297
	.p2align 4,,10
	.p2align 3
L296:
	movl	%ebx, %eax
	movl	-316(%ebp), %edx
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-328(%ebp), %eax
	addl	%ecx, %esi
	addl	%eax, %edi
	movl	_ylookup, %eax
	movl	(%eax,%ebx,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 8(%esp)
	addl	%edx, %ecx
	addl	%ecx, %eax
	movl	%edi, %ecx
	movl	%eax, 20(%esp)
	movl	%edi, %eax
	sarl	$16, %ecx
	sall	$16, %eax
	movl	%eax, 16(%esp)
	movl	%esi, %eax
	sall	$16, %eax
	movl	%eax, 12(%esp)
	movl	%esi, %eax
	sarl	$16, %eax
	imull	-320(%ebp), %eax
	addl	%ecx, %eax
	addl	-324(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	subl	(%eax,%ebx,4), %edx
	movl	%edx, (%esp)
	call	_rmhlineasm4
	cmpl	%ebx, -348(%ebp)
	je	L561
	movl	%ebx, %eax
L297:
	movl	%ebx, %ecx
	leal	1(%eax), %ebx
	testb	$31, %bl
	jne	L296
	movl	%ecx, -352(%ebp)
	call	__Z16timerUpdateClockv
	movl	-352(%ebp), %ecx
	jmp	L296
L350:
	movl	%eax, -328(%ebp)
	movl	%ecx, %esi
	jmp	L176
L548:
	movl	%esi, -376(%ebp)
	movl	%edi, %ebx
	movl	-360(%ebp), %esi
	movl	%ecx, %eax
	movl	-356(%ebp), %edi
	jmp	L276
	.p2align 4,,10
	.p2align 3
L280:
	movl	%edi, %eax
	movl	-316(%ebp), %edx
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-328(%ebp), %eax
	addl	%ecx, %esi
	addl	%eax, %ebx
	movl	_ylookup, %eax
	movl	(%eax,%edi,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 12(%esp)
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
	sarl	$16, %eax
	imull	-320(%ebp), %eax
	addl	%ecx, %eax
	addl	-324(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	subl	(%eax,%edi,4), %edx
	movl	%edx, (%esp)
	call	_qrhlineasm4
	movl	%edi, %eax
	cmpl	%edi, -352(%ebp)
	je	L596
L276:
	movl	%edi, %ecx
	leal	1(%eax), %edi
	testl	$31, %edi
	jne	L280
	movl	%ecx, -356(%ebp)
	call	__Z16timerUpdateClockv
	movl	-356(%ebp), %ecx
	jmp	L280
L547:
	movl	%esi, -400(%ebp)
	movl	%edi, %ebx
	movl	-360(%ebp), %esi
	movl	%ecx, %eax
	movl	-356(%ebp), %edi
	jmp	L268
	.p2align 4,,10
	.p2align 3
L271:
	movl	%edi, %eax
	movl	-316(%ebp), %edx
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-328(%ebp), %eax
	addl	%ecx, %esi
	addl	%eax, %ebx
	movl	_ylookup, %eax
	movl	(%eax,%edi,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 12(%esp)
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
	sarl	$16, %eax
	imull	-320(%ebp), %eax
	addl	%ecx, %eax
	addl	-324(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	subl	(%eax,%edi,4), %edx
	movl	%edx, (%esp)
	call	_qrhlineasm4
	movl	%edi, %eax
	cmpl	-376(%ebp), %edi
	je	L597
L268:
	movl	%edi, %ecx
	leal	1(%eax), %edi
	testl	$31, %edi
	jne	L271
	movl	%ecx, -356(%ebp)
	call	__Z16timerUpdateClockv
	movl	-356(%ebp), %ecx
	jmp	L271
L597:
	movl	%esi, -360(%ebp)
	movl	-352(%ebp), %ecx
	movl	%ebx, %edi
	movl	%eax, -356(%ebp)
	movl	-400(%ebp), %esi
	jmp	L264
L590:
	movl	%esi, -360(%ebp)
	movl	-376(%ebp), %esi
	movl	%ebx, -356(%ebp)
	cmpl	%esi, -348(%ebp)
	jge	L560
	movl	-356(%ebp), %ecx
	jmp	L279
L592:
	movl	%esi, -400(%ebp)
	movl	-356(%ebp), %ebx
	movl	%ecx, %eax
	movl	-360(%ebp), %esi
	jmp	L267
	.p2align 4,,10
	.p2align 3
L266:
	movl	%ebx, %eax
	movl	-316(%ebp), %edx
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-328(%ebp), %eax
	addl	%ecx, %esi
	addl	%eax, %edi
	movl	_ylookup, %eax
	movl	(%eax,%ebx,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 8(%esp)
	addl	%edx, %ecx
	addl	%ecx, %eax
	movl	%edi, %ecx
	movl	%eax, 20(%esp)
	movl	%edi, %eax
	sarl	$16, %ecx
	sall	$16, %eax
	movl	%eax, 16(%esp)
	movl	%esi, %eax
	sall	$16, %eax
	movl	%eax, 12(%esp)
	movl	%esi, %eax
	sarl	$16, %eax
	imull	-320(%ebp), %eax
	addl	%ecx, %eax
	addl	-324(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	subl	(%eax,%ebx,4), %edx
	movl	%edx, (%esp)
	call	_rmhlineasm4
	cmpl	%ebx, -376(%ebp)
	je	L559
	movl	%ebx, %eax
L267:
	movl	%ebx, %ecx
	leal	1(%eax), %ebx
	testb	$31, %bl
	jne	L266
	movl	%ecx, -356(%ebp)
	call	__Z16timerUpdateClockv
	movl	-356(%ebp), %ecx
	jmp	L266
L589:
	movl	%esi, -376(%ebp)
	movl	-356(%ebp), %ebx
	movl	%ecx, %eax
	movl	-360(%ebp), %esi
	jmp	L274
	.p2align 4,,10
	.p2align 3
L273:
	movl	%ebx, %eax
	movl	-316(%ebp), %edx
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-328(%ebp), %eax
	addl	%ecx, %esi
	addl	%eax, %edi
	movl	_ylookup, %eax
	movl	(%eax,%ebx,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 8(%esp)
	addl	%edx, %ecx
	addl	%ecx, %eax
	movl	%edi, %ecx
	movl	%eax, 20(%esp)
	movl	%edi, %eax
	sarl	$16, %ecx
	sall	$16, %eax
	movl	%eax, 16(%esp)
	movl	%esi, %eax
	sall	$16, %eax
	movl	%eax, 12(%esp)
	movl	%esi, %eax
	sarl	$16, %eax
	imull	-320(%ebp), %eax
	addl	%ecx, %eax
	addl	-324(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	subl	(%eax,%ebx,4), %edx
	movl	%edx, (%esp)
	call	_rmhlineasm4
	cmpl	%ebx, -352(%ebp)
	je	L598
	movl	%ebx, %eax
L274:
	movl	%ebx, %ecx
	leal	1(%eax), %ebx
	testb	$31, %bl
	jne	L273
	movl	%ecx, -356(%ebp)
	call	__Z16timerUpdateClockv
	movl	-356(%ebp), %ecx
	jmp	L273
L207:
	movl	$0, 20(%esp)
	movl	-328(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-320(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-344(%ebp), %esi
	movl	%esi, %eax
	sall	$16, %eax
	movl	%eax, 8(%esp)
	movl	%esi, %eax
	sarl	$16, %eax
	imull	%edx, %eax
	movl	%eax, 4(%esp)
	movl	-392(%ebp), %eax
	movl	%eax, (%esp)
	call	_tsetupspritevline
	movzbl	-400(%ebp), %eax
	movl	-348(%ebp), %esi
	xorl	%edx, %edx
	movl	_blendtable(,%eax,4), %ecx
	andl	$32, %esi
	testl	%ecx, %ecx
	cmove	%edx, %eax
	cmpl	%eax, _globalblend
	je	L315
	movl	%eax, _globalblend
	movl	_blendtable(,%eax,4), %eax
	movl	%eax, (%esp)
	call	_fixtransluscence
L315:
	testl	%esi, %esi
	je	L316
	call	_settransreverse
L317:
	movl	-316(%ebp), %eax
	cmpl	-364(%ebp), %eax
	jge	L63
	movl	-380(%ebp), %ecx
	testl	%ecx, %ecx
	je	L551
	movl	%ebx, %esi
	movl	%edi, -316(%ebp)
	movl	%eax, %ebx
	jmp	L324
L599:
	cmpl	$-1, %eax
	je	L322
	movl	-344(%ebp), %edi
	movl	%ecx, -424(%ebp)
	imull	%eax, %edi
	imull	-328(%ebp), %eax
	addl	%eax, -316(%ebp)
	addl	%edi, %esi
L320:
	movl	_ylookup, %eax
	subl	%ecx, %edx
	addl	$1, %edx
	movl	(%eax,%ecx,4), %edi
	movl	_frameplace, %eax
	addl	%ebx, %edi
	addl	%edi, %eax
	movl	%eax, 20(%esp)
	movl	%esi, %eax
	movl	-316(%ebp), %edi
	sarl	$16, %eax
	imull	-320(%ebp), %eax
	sarl	$16, %edi
	addl	%edi, %eax
	addl	-324(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 16(%esp)
	movl	%esi, %eax
	sall	$16, %eax
	movl	%eax, 12(%esp)
	movl	-316(%ebp), %eax
	movl	$0, (%esp)
	sall	$16, %eax
	movl	%eax, 4(%esp)
	call	_tspritevline
	call	__Z16timerUpdateClockv
L319:
	addl	$1, %ebx
	cmpl	%ebx, -364(%ebp)
	je	L63
L324:
	movl	-384(%ebp), %eax
	addl	%eax, -316(%ebp)
	movl	__ZL4uplc.lto_priv.0, %eax
	addl	-368(%ebp), %esi
	movswl	(%eax,%ebx,2), %ecx
	movl	__ZL4dplc.lto_priv.0, %eax
	movswl	(%eax,%ebx,2), %edx
	cmpl	%ecx, %edx
	jle	L319
	movl	%ecx, %eax
	subl	-424(%ebp), %eax
	je	L320
	cmpl	$1, %eax
	jne	L599
	movl	-328(%ebp), %eax
	movl	%ecx, -424(%ebp)
	addl	%eax, -316(%ebp)
	addl	-344(%ebp), %esi
	jmp	L320
L197:
	movl	-368(%ebp), %eax
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movw	%bx, -428(%ebp)
	movl	_waloff(,%eax,4), %eax
	movw	%si, -416(%ebp)
	movl	%eax, -324(%ebp)
	testl	%eax, %eax
	jne	L198
	movl	-368(%ebp), %esi
	movl	%esi, %eax
	call	_tileLoad
	movl	_waloff(,%esi,4), %eax
	movl	%eax, -324(%ebp)
	jmp	L198
L304:
	leal	-1(%esi), %eax
	movl	-360(%ebp), %ebx
	movl	%eax, -348(%ebp)
L303:
	cmpl	-348(%ebp), %ecx
	jge	L63
	movl	-388(%ebp), %eax
	testl	%eax, %eax
	je	L600
	movl	-392(%ebp), %esi
	testl	%esi, %esi
	jne	L550
	movl	-356(%ebp), %esi
	movl	%ecx, %eax
	jmp	L311
	.p2align 4,,10
	.p2align 3
L310:
	movl	%esi, %eax
	movl	-364(%ebp), %edx
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-328(%ebp), %eax
	addl	%ecx, %ebx
	addl	%eax, %edi
	movl	_ylookup, %eax
	movl	(%eax,%esi,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 8(%esp)
	addl	%edx, %ecx
	addl	%ecx, %eax
	movl	%edi, %ecx
	movl	%eax, 20(%esp)
	movl	%edi, %eax
	sarl	$16, %ecx
	sall	$16, %eax
	movl	%eax, 16(%esp)
	movl	%ebx, %eax
	sall	$16, %eax
	movl	%eax, 12(%esp)
	movl	%ebx, %eax
	sarl	$16, %eax
	imull	-320(%ebp), %eax
	addl	%ecx, %eax
	addl	-324(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	subl	(%eax,%esi,4), %edx
	movl	%edx, (%esp)
	call	_rhlineasm4
	cmpl	-348(%ebp), %esi
	je	L63
	movl	%esi, %eax
L311:
	movl	%esi, %ecx
	leal	1(%eax), %esi
	testl	$31, %esi
	jne	L310
	movl	%ecx, -316(%ebp)
	call	__Z16timerUpdateClockv
	movl	-316(%ebp), %ecx
	jmp	L310
L322:
	movl	-328(%ebp), %eax
	movl	%ecx, -424(%ebp)
	subl	%eax, -316(%ebp)
	subl	-344(%ebp), %esi
	jmp	L320
L316:
	call	_settransnormal
	jmp	L317
L252:
	movl	-320(%ebp), %esi
	movl	%esi, 16(%esp)
	movl	-392(%ebp), %esi
	movl	%eax, 8(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 4(%esp)
	movl	-368(%ebp), %eax
	sall	$16, %eax
	movl	%eax, (%esp)
	call	_setuprhlineasm4
	movl	$0, -392(%ebp)
	jmp	L253
L251:
	movl	-320(%ebp), %esi
	movl	%esi, 16(%esp)
	movl	-392(%ebp), %esi
	movl	%eax, 8(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 4(%esp)
	movl	-368(%ebp), %eax
	sall	$16, %eax
	movl	%eax, (%esp)
	call	_setuprmhlineasm4
	movl	$0, -392(%ebp)
	jmp	L253
L357:
	movl	-352(%ebp), %ecx
	jmp	L264
L591:
	movl	-360(%ebp), %ebx
	addl	-384(%ebp), %edi
	addl	-368(%ebp), %ebx
	jmp	L303
L551:
	movl	%edi, -348(%ebp)
	movl	-316(%ebp), %esi
	jmp	L318
L601:
	cmpl	$-1, %ecx
	jne	L328
	movl	-328(%ebp), %edi
	subl	%edi, -348(%ebp)
	movl	%edx, -380(%ebp)
	subl	-344(%ebp), %ebx
L326:
	movl	_ylookup, %ecx
	subl	%edx, %eax
	addl	$1, %eax
	movl	(%ecx,%edx,4), %edi
	movl	_frameplace, %ecx
	addl	%esi, %edi
	addl	%edi, %ecx
	movl	%ecx, 20(%esp)
	movl	%ebx, %ecx
	movl	-348(%ebp), %edi
	sarl	$16, %ecx
	imull	-320(%ebp), %ecx
	sarl	$16, %edi
	addl	%edi, %ecx
	addl	-324(%ebp), %ecx
	movl	%eax, 8(%esp)
	movl	%ecx, 16(%esp)
	movl	%ebx, %ecx
	sall	$16, %ecx
	movl	%ecx, 12(%esp)
	movl	-348(%ebp), %eax
	movl	$0, (%esp)
	sall	$16, %eax
	movl	%eax, 4(%esp)
	call	_tspritevline
	call	__Z16timerUpdateClockv
L325:
	addl	$1, %esi
	cmpl	%esi, -364(%ebp)
	je	L63
L318:
	movl	-384(%ebp), %eax
	addl	%eax, -348(%ebp)
	movl	__ZL4uplc.lto_priv.0, %eax
	addl	-368(%ebp), %ebx
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
	jle	L325
	movl	%edx, %ecx
	subl	-380(%ebp), %ecx
	je	L326
	cmpl	$1, %ecx
	jne	L601
	movl	-328(%ebp), %edi
	movl	%edx, -380(%ebp)
	addl	%edi, -348(%ebp)
	addl	-344(%ebp), %ebx
	jmp	L326
L328:
	movl	-344(%ebp), %edi
	movl	%edx, -380(%ebp)
	imull	%ecx, %edi
	imull	-328(%ebp), %ecx
	addl	%ecx, -348(%ebp)
	addl	%edi, %ebx
	jmp	L326
L550:
	movl	%edi, %esi
	movl	%ecx, %eax
	movl	-356(%ebp), %edi
	jmp	L309
	.p2align 4,,10
	.p2align 3
L312:
	movl	%edi, %eax
	movl	-364(%ebp), %edx
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-328(%ebp), %eax
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
	imull	-320(%ebp), %eax
	addl	%ecx, %eax
	addl	-324(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	subl	(%eax,%edi,4), %edx
	movl	%edx, (%esp)
	call	_qrhlineasm4
	cmpl	-348(%ebp), %edi
	je	L63
	movl	%edi, %eax
L309:
	movl	%edi, %ecx
	leal	1(%eax), %edi
	testl	$31, %edi
	jne	L312
	movl	%ecx, -316(%ebp)
	call	__Z16timerUpdateClockv
	movl	-316(%ebp), %ecx
	jmp	L312
L600:
	movl	-356(%ebp), %esi
	movl	%ecx, %eax
	jmp	L308
	.p2align 4,,10
	.p2align 3
L307:
	movl	%esi, %eax
	movl	-364(%ebp), %edx
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-328(%ebp), %eax
	addl	%ecx, %ebx
	addl	%eax, %edi
	movl	_ylookup, %eax
	movl	(%eax,%esi,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 8(%esp)
	addl	%edx, %ecx
	addl	%ecx, %eax
	movl	%edi, %ecx
	movl	%eax, 20(%esp)
	movl	%edi, %eax
	sarl	$16, %ecx
	sall	$16, %eax
	movl	%eax, 16(%esp)
	movl	%ebx, %eax
	sall	$16, %eax
	movl	%eax, 12(%esp)
	movl	%ebx, %eax
	sarl	$16, %eax
	imull	-320(%ebp), %eax
	addl	%ecx, %eax
	addl	-324(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	subl	(%eax,%esi,4), %edx
	movl	%edx, (%esp)
	call	_rmhlineasm4
	cmpl	-348(%ebp), %esi
	je	L63
	movl	%esi, %eax
L308:
	movl	%esi, %ecx
	leal	1(%eax), %esi
	testl	$31, %esi
	jne	L307
	movl	%ecx, -316(%ebp)
	call	__Z16timerUpdateClockv
	movl	-316(%ebp), %ecx
	jmp	L307
L584:
	cmpb	$-88, %al
	jbe	L204
	orl	$33, -348(%ebp)
	movl	$1, -356(%ebp)
	jmp	L200
L84:
	movl	-308(%ebp), %ebx
	movl	-304(%ebp), %esi
	movl	-312(%ebp), %eax
	movl	%ebx, -352(%ebp)
	movl	%ebx, -296(%ebp)
	movl	_usemodels, %ebx
	movl	%esi, -380(%ebp)
	movl	%esi, -300(%ebp)
	movzbl	-392(%ebp), %esi
	movl	%eax, -364(%ebp)
	movl	%eax, -292(%ebp)
	testl	%ebx, %ebx
	je	L87
	movl	-348(%ebp), %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%eax, %ebx
	movl	-368(%ebp), %eax
	leal	(%eax,%eax,4), %eax
	addl	%ebx, %eax
	movl	_tile2model+8(,%eax,4), %ecx
	testl	%ecx, %ecx
	jne	L602
L87:
	movzbl	-376(%ebp), %edx
	movswl	-372(%ebp), %ecx
	movsbl	-396(%ebp), %ebx
	movl	-324(%ebp), %eax
	movl	%edx, -384(%ebp)
	movl	%ecx, -388(%ebp)
	movl	%ebx, -468(%ebp)
	movl	%eax, 64(%esp)
	movl	-356(%ebp), %eax
	movl	%eax, 60(%esp)
	movl	-344(%ebp), %eax
	movl	%eax, 56(%esp)
	movl	-328(%ebp), %eax
	movl	%eax, 52(%esp)
	movl	-316(%ebp), %eax
	movl	%eax, 48(%esp)
	movzbl	-400(%ebp), %eax
	movl	%eax, -324(%ebp)
	movl	%edx, 40(%esp)
	movl	%eax, 44(%esp)
	movl	-348(%ebp), %eax
	movl	%esi, 32(%esp)
	movl	%eax, 36(%esp)
	movl	%ebx, 28(%esp)
	movl	-368(%ebp), %eax
	movl	%ecx, 20(%esp)
	movl	%eax, 24(%esp)
	movl	-364(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-352(%ebp), %eax
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
	movss	%xmm5, -408(%ebp)
	movss	LC0, %xmm5
	movss	_fydim, %xmm3
	movss	_ghalfy, %xmm6
	movw	%ax, _globalpicnum
	movl	_globalshade, %eax
	mulss	%xmm3, %xmm1
	movaps	%xmm5, %xmm4
	movss	_grhalfxdown10, %xmm7
	movss	%xmm6, -412(%ebp)
	movss	_grhalfxdown10x, %xmm6
	movl	%eax, -392(%ebp)
	movl	_globalclipdist, %eax
	movss	%xmm2, _ghalfx
	mulss	LC23, %xmm2
	movl	%eax, -396(%ebp)
	movl	_globalpal, %eax
	movss	%xmm7, -424(%ebp)
	movss	__ZL6ghoriz.lto_priv.0, %xmm7
	movl	%eax, -404(%ebp)
	movss	%xmm6, -416(%ebp)
	divss	%xmm2, %xmm4
	movl	%ebx, _globalshade
	movl	$0, _globalclipdist
	movl	%esi, _globalpal
	movss	%xmm1, _ghalfy
	movss	%xmm5, -360(%ebp)
	movss	%xmm4, _grhalfxdown10
	movss	%xmm4, _grhalfxdown10x
	movss	%xmm7, -428(%ebp)
	movl	_frameoffset, %eax
	movss	_gchang, %xmm6
	movss	_gshang, %xmm7
	movss	%xmm1, __ZL6ghoriz.lto_priv.0
	movss	%xmm6, -436(%ebp)
	movss	_gctang, %xmm6
	movl	%eax, -432(%ebp)
	movl	_frameplace, %eax
	movss	%xmm7, -440(%ebp)
	movss	_gstang, %xmm7
	movss	%xmm6, -444(%ebp)
	movss	_gvrcorrection, %xmm6
	movl	%eax, _frameoffset
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$0x00000000, _gshang
	movl	$0x00000000, _gstang
	movss	%xmm5, _gchang
	movss	%xmm5, _gctang
	movss	%xmm7, -448(%ebp)
	movss	%xmm6, -452(%ebp)
	movss	%xmm5, _gvrcorrection
	cmpl	%eax, _gl
	je	L603
L126:
	xorl	%eax, %eax
L127:
	movl	$0, -212(%ebp,%eax)
	movl	$0, -208(%ebp,%eax)
	movl	$0, -204(%ebp,%eax)
	movl	$0, -200(%ebp,%eax)
	addl	$16, %eax
	cmpl	$48, %eax
	jb	L127
	divss	%xmm3, %xmm0
	movss	-360(%ebp), %xmm7
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
	je	L129
	movl	$2929, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$2929, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L129:
	movl	_r_detailmapping, %eax
	movl	$3008, %edx
	movl	%eax, -456(%ebp)
	movl	_r_glowmapping, %eax
	movl	%eax, -460(%ebp)
	movl	_pr_normalmapping, %eax
	movl	%eax, -464(%ebp)
	movl	$_gl+88, %eax
	call	_inthash_find
	testb	$64, -348(%ebp)
	jne	L130
	cmpl	$1, %eax
	je	L131
	movl	$3008, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L131:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L132
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L132:
	movl	$5, -376(%ebp)
	movl	-348(%ebp), %eax
	movl	%eax, %ebx
	andl	$32, %ebx
	testb	$1, %al
	je	L133
	testl	%ebx, %ebx
	movl	$32, %eax
	movl	$6, %edi
	cmovne	%eax, %ebx
	movl	$7, %eax
	cmove	%edi, %eax
	movl	%eax, -376(%ebp)
L133:
	movl	-348(%ebp), %eax
	shrl	$5, %ebx
	movl	-324(%ebp), %edx
	movl	%ebx, %ecx
	andl	$1, %eax
	call	_handle_blend
	cmpl	$4, _rendmode
	je	L604
L136:
	movzbl	-400(%ebp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-384(%ebp), %xmm0
	mulss	LC20, %xmm0
	movb	%al, __ZL14drawpoly_blend.lto_priv.0
	movswl	_globalpicnum, %eax
	movzwl	_tilesiz(,%eax,4), %esi
	movzwl	_tilesiz+2(,%eax,4), %ebx
	movw	%si, -384(%ebp)
	movw	%bx, -352(%ebp)
	movss	%xmm0, __ZL14drawpoly_alpha.lto_priv.0
	testb	$16, -348(%ebp)
	jne	L339
	movsbw	_picanm+2(%eax,%eax,4), %cx
	sarw	%si
	sarw	%bx
	movsbw	_picanm+1(%eax,%eax,4), %ax
	addl	%esi, %eax
	addl	%ecx, %ebx
	cwtl
	movl	%eax, -364(%ebp)
L137:
	movl	-348(%ebp), %esi
	movzwl	-352(%ebp), %eax
	leal	-292(%ebp), %ecx
	movl	%esi, %edx
	subl	%ebx, %eax
	movl	%esi, %edi
	andl	$4, %edx
	cmovne	%eax, %ebx
	leal	-288(%ebp), %eax
	movl	%edx, -400(%ebp)
	leal	-296(%ebp), %edx
	movl	%eax, 16(%esp)
	leal	-284(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-328(%ebp), %eax
	addl	-356(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-316(%ebp), %eax
	addl	-344(%ebp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	leal	-300(%ebp), %eax
	call	_dorotspr_handle_bit2
	movl	-388(%ebp), %eax
	movl	-292(%ebp), %edx
	addl	$512, %eax
	movl	%edx, -368(%ebp)
	andl	$2047, %eax
	movl	%eax, -388(%ebp)
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 9261 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-372(%ebp), %ecx
	movl	%eax, %esi
	movl	-368(%ebp), %edx
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
	je	L340
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
L139:
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
	movl	%eax, -364(%ebp)
	movl	-296(%ebp), %eax
	movl	%ebx, %edx
	subl	%edi, %eax
	movl	-364(%ebp), %edi
	movl	%eax, %ebx
	movswl	-384(%ebp), %eax
	subl	%edx, %ebx
	movl	-320(%ebp), %edx
	movl	%edi, -152(%ebp)
	imull	%eax, %ecx
	movl	%ebx, -148(%ebp)
	imull	%eax, %edx
	movl	-324(%ebp), %eax
	addl	%edi, %edx
	leal	(%ecx,%ebx), %edi
	movswl	-352(%ebp), %ecx
	movl	%edx, -144(%ebp)
	imull	%ecx, %eax
	movl	%ecx, -372(%ebp)
	movl	-364(%ebp), %ecx
	movl	%edi, -140(%ebp)
	subl	%eax, %ecx
	movl	-372(%ebp), %eax
	movl	%ecx, -128(%ebp)
	addl	%ecx, %edx
	movl	-364(%ebp), %ecx
	imull	%esi, %eax
	subl	%ecx, %edx
	movl	%edx, -136(%ebp)
	addl	%ebx, %eax
	movl	%eax, -124(%ebp)
	addl	%edi, %eax
	xorl	%edi, %edi
	subl	%ebx, %eax
	movl	%eax, -132(%ebp)
	movl	-344(%ebp), %eax
	movl	-316(%ebp), %esi
	movl	%ebx, -384(%ebp)
	movl	%ecx, %ebx
	addl	$1, %eax
	movl	%edi, -320(%ebp)
	sall	$16, %esi
	sall	$16, %eax
	movl	%esi, -344(%ebp)
	movl	%eax, -348(%ebp)
	jmp	L147
L142:
	movl	-344(%ebp), %ecx
	movl	%ecx, %edx
	subl	%ebx, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	cmpl	-316(%ebp), %ecx
	movl	%eax, -352(%ebp)
	setl	%cl
	cmpb	-352(%ebp), %cl
	jne	L145
	movl	-348(%ebp), %eax
L144:
	movl	%eax, %edx
	subl	%ebx, %edx
	cmpl	-316(%ebp), %eax
	movl	%edx, %ecx
	setl	%bl
	shrl	$31, %ecx
	cmpb	%cl, %bl
	je	L146
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
	call	_tabledivide64.lto_priv.7
	addl	%eax, %ebx
	movl	%ebx, -248(%ebp,%edi,4)
	addl	$1, %edi
L146:
	testl	%esi, %esi
	je	L605
	movl	%esi, -320(%ebp)
	movl	-316(%ebp), %ebx
L147:
	movl	-320(%ebp), %eax
	leal	1(%eax), %esi
	cmpl	$3, %eax
	je	L341
	movl	-152(%ebp,%esi,8), %eax
	movl	%eax, -316(%ebp)
L140:
	movl	-316(%ebp), %eax
	subl	%ebx, %eax
	movl	%eax, -324(%ebp)
	cmpl	%ebx, -344(%ebp)
	jg	L141
	cmpl	%ebx, -348(%ebp)
	jl	L141
	movl	-320(%ebp), %eax
	movl	%ebx, -280(%ebp,%edi,4)
	movl	-148(%ebp,%eax,8), %eax
	movl	%eax, -248(%ebp,%edi,4)
	addl	$1, %edi
L141:
	movl	-324(%ebp), %eax
	testl	%eax, %eax
	jg	L142
	movl	-348(%ebp), %eax
	movl	%eax, %ecx
	subl	%ebx, %ecx
	cmpl	-316(%ebp), %eax
	movl	%ecx, %eax
	setl	%dl
	shrl	$31, %eax
	cmpb	%al, %dl
	je	L555
	movl	-348(%ebp), %eax
	movl	%eax, -280(%ebp,%edi,4)
	movl	-320(%ebp), %eax
	movl	-148(%ebp,%eax,8), %edx
	movl	-324(%ebp), %eax
	movl	%edx, -352(%ebp)
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	-148(%ebp,%esi,8), %eax
	subl	-352(%ebp), %eax
	imull	%ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.7
	addl	-352(%ebp), %eax
	movl	%eax, -248(%ebp,%edi,4)
	addl	$1, %edi
L555:
	movl	-344(%ebp), %eax
	jmp	L144
L209:
	movl	$0, 4(%esp)
	movl	$24, (%esp)
	call	_setupmvlineasm
	movups	-344(%ebp), %xmm0
	jmp	L210
L603:
	call	__ZL21polymost_updaterotmatv.part.0.lto_priv.0
	movss	_fxdim, %xmm0
	movss	_fydim, %xmm3
	jmp	L126
	.p2align 4,,10
	.p2align 3
L212:
	movl	-396(%ebp), %esi
	movl	-384(%ebp), %ebx
	movb	$15, -328(%ebp)
	leal	(%ecx,%esi), %edi
	movl	%ebx, -372(%ebp)
	movl	%edi, -360(%ebp)
	leal	(%edx,%esi), %edi
	movl	%edi, -356(%ebp)
	movl	%esi, %edi
	addl	_startdmost, %edi
	movl	%edi, -392(%ebp)
	addl	_startumost, %esi
L217:
	movl	-368(%ebp), %edi
	addl	%edi, -372(%ebp)
	movl	-360(%ebp), %edi
	movswl	(%esi,%eax,2), %ecx
	movswl	(%edi,%eax,2), %edx
	movl	-356(%ebp), %edi
	cmpw	%cx, %dx
	cmovl	%ecx, %edx
	movswl	(%edi,%eax,2), %ecx
	movl	-392(%ebp), %edi
	movswl	(%edi,%eax,2), %edi
	cmpw	%di, %cx
	cmovg	%edi, %ecx
	cmpl	%ecx, %edx
	jge	L216
	movl	%edx, %edi
	subl	-344(%ebp), %edi
	subl	$1, %ecx
	movl	%edx, -88(%ebp,%eax,4)
	imull	-376(%ebp), %edi
	addl	%edi, -348(%ebp)
	movl	-372(%ebp), %edi
	movl	%ecx, -152(%ebp,%eax,4)
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %ecx
	movl	%edx, -344(%ebp)
	shrl	$16, %edi
	imull	-320(%ebp), %edi
	addl	-324(%ebp), %edi
	movl	%edi, _bufplce(,%eax,4)
	movl	-348(%ebp), %edi
	notl	%ecx
	andb	%cl, -328(%ebp)
	movl	%edi, _vplce(,%eax,4)
L216:
	addl	$1, %eax
	cmpl	-352(%ebp), %eax
	jne	L217
	jmp	L557
	.p2align 4,,10
	.p2align 3
L221:
	cmpb	$0, -328(%ebp)
	jne	L237
	cmpl	%ebx, %edi
	jle	L238
	movl	-88(%ebp), %eax
	cmpl	%eax, %ebx
	jg	L606
L243:
	movl	-84(%ebp), %eax
	cmpl	%ebx, %eax
	jl	L607
L244:
	movl	-80(%ebp), %eax
	cmpl	%ebx, %eax
	jl	L608
L245:
	movl	-76(%ebp), %eax
	cmpl	%ebx, %eax
	jl	L609
L246:
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
	jg	L610
L247:
	movl	-148(%ebp), %eax
	cmpl	%edi, %eax
	jg	L611
L248:
	movl	-144(%ebp), %eax
	cmpl	%edi, %eax
	jg	L612
L249:
	movl	-140(%ebp), %eax
	cmpl	%edi, %eax
	jle	L236
	leal	3(%ebx), %edx
	subl	%edi, %eax
	movl	%edx, 20(%esp)
	movl	_bufplce+12, %edx
	subl	$1, %eax
	movl	%edx, 16(%esp)
	movl	_vplce+12, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	_palookupoffse+12, %eax
	movl	%eax, 4(%esp)
	movl	_vince+12, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	jmp	L236
L341:
	movl	-364(%ebp), %eax
	xorl	%esi, %esi
	movl	%eax, -316(%ebp)
	jmp	L140
L145:
	movl	-344(%ebp), %eax
	movl	%eax, -280(%ebp,%edi,4)
	movl	-320(%ebp), %eax
	movl	-148(%ebp,%eax,8), %ecx
	movl	-324(%ebp), %eax
	movl	%ecx, -352(%ebp)
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	-148(%ebp,%esi,8), %eax
	subl	-352(%ebp), %eax
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.7
	movl	-352(%ebp), %ecx
	addl	%eax, %ecx
	movl	-348(%ebp), %eax
	movl	%ecx, -248(%ebp,%edi,4)
	addl	$1, %edi
	jmp	L144
L222:
	testb	$1, -328(%ebp)
	je	L223
L225:
	testb	$2, -328(%ebp)
	je	L613
L226:
	testb	$4, -328(%ebp)
	je	L614
L227:
	testb	$8, -328(%ebp)
	jne	L228
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
	movl	%eax, 8(%esp)
	movl	_palookupoffse+12, %eax
	movl	%eax, 4(%esp)
	movl	_vince+12, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L228
L237:
	testb	$1, -328(%ebp)
	je	L238
L240:
	testb	$2, -328(%ebp)
	je	L615
L241:
	testb	$4, -328(%ebp)
	je	L616
L242:
	testb	$8, -328(%ebp)
	jne	L228
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
	movl	%eax, 8(%esp)
	movl	_palookupoffse+12, %eax
	movl	%eax, 4(%esp)
	movl	_vince+12, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	jmp	L228
L238:
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
	jmp	L240
L616:
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
	jmp	L242
L615:
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
	jmp	L241
L223:
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
	jmp	L225
L614:
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
	jmp	L227
L613:
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
	jmp	L226
L583:
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
	movl	%eax, -356(%ebp)
	cmpl	%eax, %edi
	jge	L202
	movl	-316(%ebp), %edx
	subl	%eax, %edx
	movl	%edx, -356(%ebp)
	testl	%edx, %edx
	jle	L63
	orl	$33, -348(%ebp)
L203:
	movzbl	-356(%ebp), %eax
	movl	$1, -356(%ebp)
	movb	%al, -400(%ebp)
	movl	-348(%ebp), %eax
	movl	%eax, %edi
	andl	$10, %eax
	andl	$4, %edi
	movl	%eax, -408(%ebp)
	movl	%edi, -404(%ebp)
	jmp	L200
L573:
	leal	3(%ebx), %edx
	subl	%edi, %eax
	movl	%edx, 20(%esp)
	movl	_bufplce+12, %edx
	subl	$1, %eax
	movl	%edx, 16(%esp)
	movl	_vplce+12, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	_palookupoffse+12, %eax
	movl	%eax, 4(%esp)
	movl	_vince+12, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L236
L572:
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
	jmp	L235
L571:
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
	jmp	L234
L566:
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
	jmp	L229
L607:
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
	jmp	L244
L606:
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
	jmp	L243
L612:
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
	jmp	L249
L570:
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
	jmp	L233
L569:
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
	jmp	L232
L568:
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
	jmp	L231
L567:
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
	jmp	L230
L611:
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
	jmp	L248
L610:
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
	jmp	L247
L609:
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
	jmp	L246
L608:
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
	jmp	L245
L605:
	movl	%edi, -352(%ebp)
	movl	-384(%ebp), %ebx
	cmpl	$2, %edi
	jle	L148
	movl	-356(%ebp), %eax
	movl	-328(%ebp), %esi
	movl	$0, -320(%ebp)
	movl	%ebx, -356(%ebp)
	movl	-248(%ebp), %edi
	addl	$1, %eax
	sall	$16, %esi
	sall	$16, %eax
	movl	%esi, -344(%ebp)
	xorl	%esi, %esi
	movl	%eax, -348(%ebp)
	jmp	L156
L618:
	movl	-344(%ebp), %edx
	movl	%edx, %ecx
	subl	%edi, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	cmpl	-316(%ebp), %edx
	movl	%eax, -328(%ebp)
	setl	%dl
	cmpb	-328(%ebp), %dl
	je	L556
	movl	-320(%ebp), %eax
	movl	-344(%ebp), %edx
	movl	%edx, -148(%ebp,%eax,8)
	movl	-280(%ebp,%esi,4), %edx
	movl	-324(%ebp), %eax
	movl	%edx, -328(%ebp)
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	-280(%ebp,%ebx,4), %eax
	subl	-328(%ebp), %eax
	imull	%ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.7
	movl	-320(%ebp), %edx
	addl	-328(%ebp), %eax
	movl	%eax, -152(%ebp,%edx,8)
	leal	1(%edx), %eax
	movl	%eax, -320(%ebp)
L556:
	movl	-348(%ebp), %eax
L153:
	movl	%eax, %edx
	subl	%edi, %edx
	cmpl	%eax, -316(%ebp)
	setg	%cl
	movl	%edx, -328(%ebp)
	shrl	$31, %edx
	movl	%ecx, %edi
	movl	%edx, %ecx
	movl	%edi, %edx
	cmpb	%cl, %dl
	je	L155
	movl	-320(%ebp), %edi
	movl	-280(%ebp,%esi,4), %esi
	movl	%eax, -148(%ebp,%edi,8)
	movl	-324(%ebp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	-280(%ebp,%ebx,4), %eax
	subl	%esi, %eax
	imull	-328(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.7
	addl	%eax, %esi
	movl	%esi, -152(%ebp,%edi,8)
	addl	$1, %edi
	movl	%edi, -320(%ebp)
L155:
	testl	%ebx, %ebx
	je	L617
	movl	-316(%ebp), %edi
	movl	%ebx, %esi
L156:
	xorl	%eax, %eax
	leal	1(%esi), %ebx
	cmpl	%ebx, -352(%ebp)
	cmove	%eax, %ebx
	movl	-248(%ebp,%ebx,4), %eax
	movl	%eax, -316(%ebp)
	subl	%edi, %eax
	movl	%eax, -324(%ebp)
	cmpl	%edi, -344(%ebp)
	jg	L150
	cmpl	%edi, -348(%ebp)
	jl	L150
	movl	-320(%ebp), %edx
	movl	-280(%ebp,%esi,4), %eax
	movl	%edi, -148(%ebp,%edx,8)
	movl	%eax, -152(%ebp,%edx,8)
	addl	$1, %edx
	movl	%edx, -320(%ebp)
L150:
	movl	-324(%ebp), %ecx
	testl	%ecx, %ecx
	jg	L618
	movl	-348(%ebp), %edx
	movl	%edx, %ecx
	subl	%edi, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	cmpl	-316(%ebp), %edx
	movl	%eax, -328(%ebp)
	setl	%dl
	cmpb	-328(%ebp), %dl
	jne	L154
	movl	-344(%ebp), %eax
	jmp	L153
L617:
	movl	%ebx, -328(%ebp)
	movl	-356(%ebp), %ebx
	cmpl	$2, -320(%ebp)
	jle	L148
	movl	-368(%ebp), %eax
	movl	$0, (%esp)
	movl	$1, 4(%esp)
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	call	_tabledivide64.lto_priv.7
	movl	%eax, %ecx
	movl	-468(%ebp), %eax
	movl	%ecx, %edx
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 9333 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-388(%ebp), %esi
	movl	%eax, -348(%ebp)
	movl	%ecx, %edx
	movswl	_sintable(%esi,%esi), %eax
/APP
 # 9334 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%eax, -384(%ebp)
	movl	%eax, -352(%ebp)
	movl	-348(%ebp), %eax
	movl	%esi, -344(%ebp)
	negl	%eax
	movl	%eax, -324(%ebp)
	cmpl	$8, -472(%ebp)
	je	L157
	movl	-284(%ebp), %edx
/APP
 # 9338 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -324(%ebp)
	movl	-284(%ebp), %edx
	movl	%esi, %eax
/APP
 # 9339 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -344(%ebp)
L157:
	movl	-320(%ebp), %edi
	leal	-152(%ebp), %esi
	movl	-152(%ebp), %eax
	movl	%esi, -316(%ebp)
	leal	(%esi,%edi,8), %edx
	leal	-144(%ebp), %esi
	movl	%edx, %ecx
	subl	%esi, %ecx
	andl	$8, %ecx
	je	L158
	movl	-8(%edx), %ecx
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	subl	$8, %edx
	cmpl	%edx, %esi
	je	L546
L158:
	movl	-8(%edx), %ecx
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	movl	-16(%edx), %ecx
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	subl	$16, %edx
	cmpl	%edx, %esi
	jne	L158
L546:
	movl	%eax, %esi
	movl	$65535, %ecx
	xorw	%ax, %ax
	movl	-344(%ebp), %edx
	sarl	$16, %esi
	subl	$1, %eax
	subl	%ebx, %ecx
	subl	-364(%ebp), %eax
	movl	%esi, -368(%ebp)
	movl	-348(%ebp), %edi
	movl	%ecx, %esi
	movl	%eax, -356(%ebp)
/APP
 # 9354 "source/build/src/polymost.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -364(%ebp)
	movl	-324(%ebp), %edx
	movl	%ecx, %esi
	movl	-356(%ebp), %eax
	movl	-384(%ebp), %edi
/APP
 # 9355 "source/build/src/polymost.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-400(%ebp), %edx
	testl	%edx, %edx
	je	L159
	movl	-372(%ebp), %edx
	negl	%edi
	negl	-324(%ebp)
	movl	%edi, -352(%ebp)
	sall	$16, %edx
	subl	$1, %edx
	subl	%eax, %edx
	movl	%edx, %eax
L159:
	movl	-328(%ebp), %edx
	movl	-316(%ebp), %ebx
	leal	-88(%ebp), %esi
L160:
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
	cmpl	%edx, -320(%ebp)
	jne	L160
	movl	%edx, -328(%ebp)
	movl	-368(%ebp), %edx
	movl	$0, __ZL4xtex.lto_priv.0
	movl	$0, __ZL4xtex.lto_priv.0+4
	subl	$1, %edx
	movl	%edx, -316(%ebp)
	fildl	-316(%ebp)
	faddl	LC25
	movl	%eax, -316(%ebp)
	fildl	-344(%ebp)
	fildl	-348(%ebp)
	movl	$0, __ZL4ytex.lto_priv.0
	fildl	-364(%ebp)
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
	fildl	-324(%ebp)
	fildl	-352(%ebp)
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
	jne	L161
	movl	$0x00000000, -316(%ebp)
	xorps	%xmm5, %xmm5
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm5
	jp	L383
	je	L161
L383:
	movl	$0x00000000, __ZL19polymost1FogEnabled.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L161:
	movl	-376(%ebp), %ecx
	movl	%esi, %eax
	movl	-328(%ebp), %edx
	movl	$0, __ZL10pow2xsplit.lto_priv.0
	call	__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0
	movl	_nofog, %eax
	testl	%eax, %eax
	jne	L148
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L148
	movss	-360(%ebp), %xmm5
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm5
	jp	L384
	je	L148
L384:
	movss	-360(%ebp), %xmm5
	movss	%xmm5, __ZL19polymost1FogEnabled.lto_priv.0
	movss	%xmm5, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	pushl	%eax
	pushl	%eax
L148:
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L165
	movl	$3008, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L165:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L166
	movl	$3042, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L166:
	xorl	%eax, %eax
	call	__Z17polymost_setClampc
	cmpl	$4, _rendmode
	je	L619
L167:
	call	*_glad_glPopMatrix
	movl	$5889, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glPopMatrix
	movzwl	-380(%ebp), %eax
	movss	-408(%ebp), %xmm3
	movss	-412(%ebp), %xmm5
	movss	-436(%ebp), %xmm7
	movw	%ax, _globalpicnum
	movl	-392(%ebp), %eax
	movss	%xmm3, _ghalfx
	movss	-424(%ebp), %xmm3
	movss	-448(%ebp), %xmm6
	movl	%eax, _globalshade
	movl	-404(%ebp), %eax
	movss	%xmm5, _ghalfy
	movss	-416(%ebp), %xmm5
	movl	%eax, _globalpal
	movl	-396(%ebp), %eax
	movss	%xmm3, _grhalfxdown10
	movss	-428(%ebp), %xmm3
	movl	%eax, _globalclipdist
	movl	-432(%ebp), %eax
	movss	%xmm5, _grhalfxdown10x
	movss	-440(%ebp), %xmm5
	movss	%xmm3, __ZL6ghoriz.lto_priv.0
	movss	-444(%ebp), %xmm3
	movss	%xmm7, _gchang
	movss	-452(%ebp), %xmm7
	movl	%eax, _frameoffset
	movss	%xmm5, _gshang
	movss	%xmm3, _gctang
	movss	%xmm6, _gstang
	movss	%xmm7, _gvrcorrection
	call	__ZL23polymost_identityrotmatv.lto_priv.0
	jmp	L63
L154:
	movl	-320(%ebp), %eax
	movl	-348(%ebp), %edx
	movl	%edx, -148(%ebp,%eax,8)
	movl	-280(%ebp,%esi,4), %edx
	movl	-324(%ebp), %eax
	movl	%edx, -328(%ebp)
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	-280(%ebp,%ebx,4), %eax
	subl	-328(%ebp), %eax
	imull	%ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.7
	movl	-320(%ebp), %edx
	addl	-328(%ebp), %eax
	movl	%eax, -152(%ebp,%edx,8)
	leal	1(%edx), %eax
	movl	%eax, -320(%ebp)
	movl	-344(%ebp), %eax
	jmp	L153
L202:
	movl	-356(%ebp), %ecx
	testl	%ecx, %ecx
	je	L200
	movl	-348(%ebp), %eax
	andl	$-33, %eax
	orl	$1, %eax
	movl	%eax, -348(%ebp)
	jmp	L203
L204:
	movl	$1, -356(%ebp)
	movl	-348(%ebp), %eax
	andl	$-33, %eax
	orl	$1, %eax
	movl	%eax, -348(%ebp)
	jmp	L200
L339:
	movl	$0, -364(%ebp)
	xorl	%ebx, %ebx
	jmp	L137
L130:
	testl	%eax, %eax
	je	L134
	movl	$3008, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L134:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	movl	-348(%ebp), %ebx
	andl	$32, %ebx
	testl	%eax, %eax
	je	L135
	movl	$3042, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L135:
	movl	$4, -376(%ebp)
	jmp	L133
L602:
	movl	-368(%ebp), %edx
	movl	%ebx, -316(%ebp)
	movl	-352(%ebp), %edi
	movl	%edx, %eax
	leal	0(,%edx,4), %edx
	jmp	L88
L90:
	leal	0(,%eax,4), %edx
	movzbl	-392(%ebp), %ebx
	leal	(%edx,%eax), %ecx
	cmpb	_tile2model+17(,%ecx,4), %bl
	je	L620
L88:
	addl	%edx, %eax
	movswl	_tile2model+4(,%eax,4), %eax
	cmpl	$-1, %eax
	jne	L90
	movl	-368(%ebp), %edx
	movl	%edi, -352(%ebp)
	movl	-316(%ebp), %ebx
	movl	%edx, %eax
	leal	0(,%edx,4), %edx
L89:
	leal	(%edx,%eax), %ecx
	sall	$2, %ecx
	cmpw	$-1, _tile2model(%ecx)
	je	L63
	cmpw	$-1, _tile2model+2(%ecx)
	je	L63
	leal	-152(%ebp), %ecx
	movl	-352(%ebp), %edi
	movl	%ecx, -316(%ebp)
	xorl	%ecx, %ecx
L92:
	movl	$0, -152(%ebp,%ecx)
	movl	$0, -148(%ebp,%ecx)
	movl	$0, -144(%ebp,%ecx)
	movl	$0, -140(%ebp,%ecx)
	addl	$16, %ecx
	cmpl	$32, %ecx
	jb	L92
	addl	%edx, %eax
	addl	-316(%ebp), %ecx
	movl	%edi, -352(%ebp)
	addl	%ebx, %eax
	movl	$0, (%ecx)
	movl	_tile2model+8(,%eax,4), %ebx
	movl	$0, 4(%ecx)
	movl	$0, 8(%ecx)
	testl	%ebx, %ebx
	je	L63
	testb	$1, 14(%ebx)
	jne	L63
	movzbl	-376(%ebp), %eax
	movl	-324(%ebp), %edi
	movswl	-372(%ebp), %ecx
	movl	%eax, -356(%ebp)
	movsbl	-396(%ebp), %eax
	movl	%edi, 48(%esp)
	movzbl	-400(%ebp), %edx
	movl	%edx, 44(%esp)
	movl	-356(%ebp), %edx
	movl	%edx, 40(%esp)
	movl	-348(%ebp), %edi
	movl	%esi, 32(%esp)
	movl	%edi, 36(%esp)
	movl	%eax, 28(%esp)
	movl	%eax, -412(%ebp)
	movl	-368(%ebp), %eax
	movl	%ecx, 20(%esp)
	movl	%eax, 24(%esp)
	movl	-364(%ebp), %eax
	movl	%ecx, -328(%ebp)
	movl	%eax, 16(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-380(%ebp), %eax
	movl	$LC3, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$3, (%esp)
	call	__Z26buildgl_outputDebugMessagehPKcz.constprop.0
	movl	-328(%ebp), %eax
	xorps	%xmm1, %xmm1
	movss	_gctang, %xmm5
	xorps	%xmm0, %xmm0
	fldl	_gxyaspect
	movss	_gchang, %xmm7
	movl	$0, _gxyaspect
	addl	$512, %eax
	movl	-412(%ebp), %edx
	cvtsi2ssl	-364(%ebp), %xmm0
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
	movl	-372(%ebp), %eax
	movl	$1072693248, _gxyaspect+4
	movss	%xmm7, -404(%ebp)
	andl	$2047, %eax
	movss	%xmm6, -360(%ebp)
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
	jne	L94
	movss	8(%ebx), %xmm6
	movl	%edi, %esi
	movss	(%ebx), %xmm3
	movss	4(%ebx), %xmm0
	movzwl	_globalang, %eax
	andl	$10, %esi
	movss	%xmm6, -328(%ebp)
	testb	$2, 14(%ebx)
	je	L95
L96:
	addw	12(%ebx), %ax
L102:
	movw	%ax, -124(%ebp)
	testb	$4, -348(%ebp)
	je	L103
	xorps	LC9, %xmm3
	xorps	LC9, %xmm0
L103:
	movss	_gcosang, %xmm4
	movss	-328(%ebp), %xmm2
	movaps	%xmm3, %xmm5
	movss	_gsinang, %xmm1
	mulss	%xmm4, %xmm2
	mulss	%xmm1, %xmm5
	subss	%xmm5, %xmm2
	cmpl	$4, _rendmode
	jne	L104
	mulss	%xmm3, %xmm4
	movl	$1285, %eax
	movss	LC12, %xmm3
	mulss	-328(%ebp), %xmm1
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
L105:
	movzwl	-320(%ebp), %eax
	movl	-348(%ebp), %edi
	movw	%ax, -138(%ebp)
	movzbl	-396(%ebp), %eax
	leal	(%edi,%edi), %edx
	andl	$8, %edx
	movb	%al, -136(%ebp)
	movzbl	-392(%ebp), %eax
	movb	%al, -135(%ebp)
	movzwl	-324(%ebp), %eax
	addw	$16384, %ax
	movw	%ax, -122(%ebp)
	movl	%edi, %eax
	andl	$1, %edi
	sall	$4, %eax
	andl	$512, %eax
	orl	%edx, %eax
	orl	%edi, %eax
	movl	%eax, _globalorientation
	movw	%ax, -140(%ebp)
	movl	_ydim, %eax
	cmpl	$2, %esi
	je	L621
	movl	%eax, (%esp)
	movl	_xdim, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	__Z19buildgl_setViewportiiii
	cmpl	$3, _rendmode
	jg	L108
	movl	$5889, (%esp)
	leal	-84(%ebp), %edi
	leal	-88(%ebp), %esi
	call	*_glad_glMatrixMode
	movl	$15, %ecx
	pushl	%eax
	xorl	%eax, %eax
	movss	-360(%ebp), %xmm6
	rep stosl
	movl	$0x3f800347, -48(%ebp)
	movss	_fxdim, %xmm0
	divss	_fydim, %xmm0
	movss	%xmm0, -68(%ebp)
	movss	LC2, %xmm0
	movss	%xmm6, -44(%ebp)
	movss	%xmm6, -88(%ebp)
L331:
	movss	%xmm0, -32(%ebp)
	movl	%esi, (%esp)
	call	*_glad_glLoadMatrixf
	subl	$4, %esp
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glLoadIdentity
L108:
	movl	$2929, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testb	$8, 14(%ebx)
	je	L111
	testl	%eax, %eax
	je	L112
	movl	$2929, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$2929, %edx
	pushl	%eax
	movl	$_gl+88, %eax
	movl	$1, (%esp)
	call	_inthash_add
L112:
	xorps	%xmm0, %xmm0
	movswl	-122(%ebp), %eax
	cvtsi2ssl	-356(%ebp), %xmm0
	mulss	LC20, %xmm0
	sall	$6, %eax
	addl	_spriteext, %eax
	movss	%xmm0, 8(%eax)
	movzbl	-400(%ebp), %eax
	movb	%al, -133(%ebp)
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L114
	xorps	%xmm0, %xmm0
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm0
	jp	L381
	je	L114
L381:
	movl	$0x00000000, __ZL19polymost1FogEnabled.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	pushl	%esi
	pushl	%esi
L114:
	movl	_maxspritesonscreen, %eax
	movl	-316(%ebp), %esi
	movl	%esi, _tspriteptr(,%eax,4)
	cmpl	$3, _rendmode
	je	L622
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L118
	movl	$3008, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L118:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L119
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L119:
	movswl	-122(%ebp), %eax
	movl	_spriteext, %edx
	movzwl	-372(%ebp), %esi
	sall	$6, %eax
	movw	%si, 26(%edx,%eax)
	movswl	-122(%ebp), %eax
	movl	-364(%ebp), %esi
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
	je	L122
	movl	$3008, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L122:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L117
	movl	$3042, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L117:
	movl	_maxspritesonscreen, %eax
	movl	$0, _tspriteptr(,%eax,4)
	movl	_nofog, %eax
	testl	%eax, %eax
	je	L623
L123:
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
	movss	-404(%ebp), %xmm7
	movl	%eax, _globalpal
	fstpl	_gxyaspect
	movss	%xmm5, _gshang
	movss	%xmm6, _gctang
	movss	%xmm7, _gstang
	jmp	L63
L619:
	movl	-456(%ebp), %eax
	movl	%eax, _r_detailmapping
	movl	-460(%ebp), %eax
	movl	%eax, _r_glowmapping
	movl	_rotatespritematerialbits, %eax
	call	_polymer_unbindmaterial.lto_priv.0
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	-464(%ebp), %eax
	movl	%eax, _pr_normalmapping
	jmp	L167
L604:
	movl	-376(%ebp), %eax
	movl	%esi, %edx
	movl	$0, _pr_normalmapping
	movl	%eax, (%esp)
	movl	-468(%ebp), %ecx
	movl	-368(%ebp), %eax
	call	_polymer_inb4rotatesprite
	movl	$0, _r_detailmapping
	movl	$0, _r_glowmapping
	jmp	L136
L340:
	movl	%ecx, -324(%ebp)
	movl	%esi, -320(%ebp)
	jmp	L139
L620:
	movl	%edi, -352(%ebp)
	movl	-316(%ebp), %ebx
	jmp	L89
L94:
	movss	_pr_hudzadd, %xmm6
	movl	-348(%ebp), %esi
	movss	_pr_hudxadd, %xmm3
	movzwl	_globalang, %eax
	movss	_pr_hudyadd, %xmm0
	movss	%xmm6, -328(%ebp)
	andl	$10, %esi
	testb	$2, 14(%ebx)
	jne	L97
L95:
	movss	LC8, %xmm6
	xorps	%xmm2, %xmm2
	xorps	%xmm1, %xmm1
	cvtsi2ssl	-380(%ebp), %xmm2
	cvtsi2ssl	-352(%ebp), %xmm1
	mulss	%xmm6, %xmm2
	mulss	%xmm6, %xmm1
	testb	$16, -348(%ebp)
	je	L98
	movl	-368(%ebp), %edi
	movzwl	_tilesiz(,%edi,4), %eax
	leal	(%edi,%edi,4), %edx
	movsbw	_picanm+1(%edx), %cx
	movsbw	_picanm+2(%edx), %dx
	movw	%ax, -352(%ebp)
	sarw	%ax
	addl	%eax, %ecx
	movzwl	_tilesiz+2(,%edi,4), %eax
	sarw	%ax
	addl	%edx, %eax
	cmpl	$8, %esi
	je	L334
	xorps	%xmm4, %xmm4
	cvtsi2ssl	_xyaspect, %xmm4
	mulss	%xmm6, %xmm4
	movss	-344(%ebp), %xmm6
	mulss	%xmm4, %xmm6
	movaps	%xmm4, %xmm7
	mulss	%xmm5, %xmm7
L99:
	cwtl
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%eax, %xmm4
	movswl	%cx, %eax
	movss	%xmm4, -352(%ebp)
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%eax, %xmm4
	xorps	LC9, %xmm4
	mulss	-352(%ebp), %xmm7
	mulss	%xmm4, %xmm6
	mulss	%xmm5, %xmm4
	movss	-344(%ebp), %xmm5
	mulss	-352(%ebp), %xmm5
	addss	%xmm7, %xmm6
	subss	%xmm5, %xmm4
	addss	%xmm6, %xmm2
	addss	%xmm4, %xmm1
L98:
	testb	$2, -348(%ebp)
	jne	L100
	movl	_xdim, %eax
	xorps	%xmm4, %xmm4
	movss	-360(%ebp), %xmm5
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
L101:
	movl	-436(%ebp), %edx
	movzwl	_globalang, %eax
	testl	%edx, %edx
	je	L96
L97:
	addw	_pr_hudangadd, %ax
	jmp	L102
L111:
	cmpl	$1, %eax
	je	L113
	movl	$2929, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$2929, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L113:
	movl	_numframes, %eax
	cmpl	%eax, __ZZ28polymost_dorotatespritemodeliiissacihhiE10onumframes
	je	L112
	movl	%eax, __ZZ28polymost_dorotatespritemodeliiissacihhiE10onumframes
	movl	$256, (%esp)
	call	*_glad_glClear
	pushl	%edi
	jmp	L112
L104:
	mulss	LC16, %xmm2
	movl	$8224, %eax
	movss	%xmm4, -368(%ebp)
	movw	%ax, -132(%ebp)
	movss	%xmm0, -352(%ebp)
	movss	%xmm1, -380(%ebp)
	movss	%xmm3, -344(%ebp)
	movss	%xmm2, (%esp)
	call	_lrintf
	movss	-380(%ebp), %xmm1
	movss	-344(%ebp), %xmm3
	mulss	-328(%ebp), %xmm1
	addl	_globalposx, %eax
	mulss	-368(%ebp), %xmm3
	movl	%eax, -152(%ebp)
	addss	%xmm3, %xmm1
	mulss	LC16, %xmm1
	movss	%xmm1, (%esp)
	call	_lrintf
	movss	-352(%ebp), %xmm0
	mulss	LC17, %xmm0
	addl	_globalposy, %eax
	movl	%eax, -148(%ebp)
	movss	%xmm0, (%esp)
	call	_lrintf
	addl	_globalposz, %eax
	movl	%eax, -144(%ebp)
	jmp	L105
L334:
	movss	-344(%ebp), %xmm6
	movaps	%xmm5, %xmm7
	jmp	L99
L621:
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
	jg	L108
	leal	-88(%ebp), %esi
	movl	$5889, (%esp)
	call	*_glad_glMatrixMode
	movl	%esi, %edi
	xorl	%eax, %eax
	movl	$16, %ecx
	pushl	%edx
	rep stosl
	movl	_pr_hudfov, %eax
	cmpl	$0, _pr_overridehud
	jne	L330
	movswl	16(%ebx), %eax
L330:
	cmpl	$-1, %eax
	je	L335
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	LC18, %xmm0
	mulss	LC19, %xmm0
	movss	%xmm0, (%esp)
	call	_tanf
	movss	-360(%ebp), %xmm0
	fstps	-320(%ebp)
	divss	-320(%ebp), %xmm0
L110:
	movss	_fydimen, %xmm1
	movss	-360(%ebp), %xmm6
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
	jmp	L331
L623:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L123
	movss	-360(%ebp), %xmm6
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm6
	jp	L382
	je	L123
L382:
	movss	-360(%ebp), %xmm6
	movss	%xmm6, __ZL19polymost1FogEnabled.lto_priv.0
	movss	%xmm6, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	pushl	%eax
	pushl	%eax
	jmp	L123
L100:
	mulss	LC10, %xmm2
	movss	-360(%ebp), %xmm5
	mulss	LC11, %xmm1
	subss	%xmm5, %xmm2
	subss	%xmm5, %xmm1
	addss	%xmm2, %xmm3
	addss	%xmm1, %xmm0
	jmp	L101
L335:
	movss	-360(%ebp), %xmm0
	jmp	L110
L622:
	movl	%esi, %eax
	call	_polymost_mddraw
	jmp	L117
L367:
	movl	%ecx, -352(%ebp)
	jmp	L283
L560:
	movl	%ebx, %ecx
	jmp	L264
L593:
	movl	%eax, %ecx
	jmp	L264
	.cfi_endproc
LFE2:
	.p2align 4
	.globl	_do_insertsprite_at_headofsect
	.def	_do_insertsprite_at_headofsect;	.scl	2;	.type	32;	.endef
_do_insertsprite_at_headofsect:
LFB27:
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
	js	L625
	movw	%ax, _prevspritesect(%edx,%edx)
L625:
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
LFE27:
	.p2align 4
	.globl	_do_deletespritesect
	.def	_do_deletespritesect;	.scl	2;	.type	32;	.endef
_do_deletespritesect:
LFB28:
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
	jne	L628
	movw	%dx, _headspritesect(%edi,%edi)
L628:
	testl	%esi, %esi
	js	L629
	movw	%ax, _nextspritesect(%esi,%esi)
L629:
	testl	%edx, %edx
	js	L627
	movw	%bx, _prevspritesect(%edx,%edx)
L627:
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
LFE28:
	.p2align 4
	.globl	_do_insertsprite_at_headofstat
	.def	_do_insertsprite_at_headofstat;	.scl	2;	.type	32;	.endef
_do_insertsprite_at_headofstat:
LFB29:
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
	js	L633
	movw	%ax, _prevspritestat(%edx,%edx)
L633:
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
LFE29:
	.p2align 4
	.globl	_do_deletespritestat
	.def	_do_deletespritestat;	.scl	2;	.type	32;	.endef
_do_deletespritestat:
LFB30:
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
	jne	L636
	movw	%dx, _headspritestat(%edi,%edi)
L636:
	testl	%esi, %esi
	js	L637
	movw	%ax, _nextspritestat(%esi,%esi)
L637:
	testl	%edx, %edx
	js	L635
	movw	%bx, _prevspritestat(%edx,%edx)
L635:
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
LFE30:
	.p2align 4
	.globl	_insertsprite
	.def	_insertsprite;	.scl	2;	.type	32;	.endef
_insertsprite:
LFB31:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%esi, 4(%esp)
	cmpw	$1023, %dx
	.cfi_offset 6, -12
	jg	L643
	movl	%ebx, (%esp)
	.cfi_offset 3, -16
	movswl	_headspritestat+2048, %ebx
	cmpw	$-1, %bx
	je	L651
	movl	%edi, 8(%esp)
	.cfi_offset 7, -8
	movl	%eax, %edi
	movswl	_nextspritestat(%ebx,%ebx), %eax
	movl	%ebx, %esi
	movw	%ax, _headspritestat+2048
	testw	%ax, %ax
	js	L644
	movl	$-1, %ecx
	movw	%cx, _prevspritestat(%eax,%eax)
L645:
	movswl	%dx, %edx
	movl	%ebx, %eax
	call	_do_insertsprite_at_headofstat
	testl	%ebx, %ebx
	jns	L653
	movl	(%esp), %ebx
	.cfi_restore 3
	movl	8(%esp), %edi
	.cfi_restore 7
L640:
	movl	%esi, %eax
	movl	4(%esp), %esi
	addl	$12, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L653:
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
L644:
	.cfi_restore_state
	movl	$-1, %eax
	movw	%ax, _tailspritefree
	jmp	L645
L651:
	.cfi_restore 7
	movl	(%esp), %ebx
	.cfi_restore 3
L643:
	movl	$-1, %esi
	jmp	L640
	.cfi_endproc
LFE31:
	.p2align 4
	.globl	_deletesprite
	.def	_deletesprite;	.scl	2;	.type	32;	.endef
_deletesprite:
LFB33:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	_sprite, %edx
	movl	%edi, 8(%esp)
	.cfi_offset 7, -12
	movswl	%ax, %edi
	movl	%ebp, 12(%esp)
	.cfi_offset 5, -8
	imull	$44, %edi, %ebp
	cmpw	$1024, 26(%edx,%ebp)
	je	L658
	movl	%ebx, (%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%edi, %eax
	movl	%esi, 4(%esp)
	.cfi_offset 6, -16
	call	_do_deletespritestat
	movl	%edi, %eax
	call	_do_deletespritesect
	movl	_sprite, %esi
	leal	24(%ebp), %eax
	leal	(%esi,%ebp), %ecx
	movl	$-1171354717, %ebp
	mull	%ebp
	movswl	_tailspritefree, %eax
	movl	$-1, %ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$4096, %edx
	movw	%dx, 24(%ecx)
	movw	%ax, _prevspritestat(%edi,%edi)
	movw	%bp, _nextspritestat(%edi,%edi)
	testw	%ax, %ax
	js	L656
	movw	%bx, _nextspritestat(%eax,%eax)
L657:
	leal	26(%ecx), %edx
	movl	$-1171354717, %eax
	subl	$1, _Numsprites
	subl	%esi, %edx
	movw	%bx, _tailspritefree
	mull	%edx
	movl	$1024, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 26(%ecx)
	movl	(%esp), %ebx
	.cfi_restore 3
	xorl	%eax, %eax
	movl	4(%esp), %esi
	.cfi_restore 6
L654:
	movl	8(%esp), %edi
	movl	12(%esp), %ebp
	addl	$16, %esp
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L656:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movw	%bx, _headspritestat+2048
	jmp	L657
	.p2align 4,,10
	.p2align 3
L658:
	.cfi_restore 3
	.cfi_restore 6
	movl	$-1, %eax
	jmp	L654
	.cfi_endproc
LFE33:
	.p2align 4
	.globl	_lintersect
	.def	_lintersect;	.scl	2;	.type	32;	.endef
_lintersect:
LFB34:
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
	movl	%edx, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	68(%esp), %esi
	movl	76(%esp), %edx
	movl	%ecx, 40(%esp)
	movl	64(%esp), %edi
	movl	84(%esp), %ecx
	movl	%ebx, 16(%esp)
	subl	%ebx, %esi
	movl	%eax, 36(%esp)
	movl	88(%esp), %ebx
	subl	%edx, %ecx
	subl	%ebp, %edi
	subl	%ebp, %edx
	movl	%esi, %ebp
	imull	%ecx, %ebp
	movl	80(%esp), %eax
	movl	%edx, 24(%esp)
	movl	%edi, %edx
	movl	%ecx, 20(%esp)
	movl	%edx, %ecx
	subl	%eax, %ebx
	subl	16(%esp), %eax
	movl	%edx, 32(%esp)
	movl	%ebp, 28(%esp)
	movl	24(%esp), %ebp
	imull	%eax, %edx
	imull	%ebx, %edi
	imull	%esi, %ebp
	subl	%edx, %ebp
	subl	28(%esp), %edi
	jne	L661
	testl	%ebp, %ebp
	jne	L660
	movl	%ecx, %edi
	movl	24(%esp), %edx
	imull	%esi, %eax
	imull	%ecx, %edi
	imull	%ecx, %edx
	imull	%esi, %ebx
	movl	%edi, %ebp
	movl	%esi, %edi
	imull	%esi, %edi
	addl	%eax, %edx
	addl	%ebp, %edi
	movl	%ecx, %ebp
	movl	20(%esp), %ecx
	imull	%ebp, %ecx
	addl	%edx, %ecx
	addl	%ecx, %ebx
	testl	%edx, %edx
	js	L673
	cmpl	%edi, %edx
	jle	L674
	cmpl	%edi, %ebx
	jg	L668
	movl	%ebx, %eax
	cltd
	sall	$24, %eax
	shldl	$24, %ebx, %edx
L664:
	movl	%edi, 8(%esp)
	sarl	$31, %edi
	movl	%edi, 12(%esp)
L672:
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	%eax, %ecx
	movl	32(%esp), %eax
	movl	%ecx, %edx
/APP
 # 8947 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	36(%esp), %ebx
	movl	%ecx, %edx
	addl	%ebx, %eax
	movl	92(%esp), %ebx
	movl	%eax, (%ebx)
	movl	%esi, %eax
/APP
 # 8948 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	16(%esp), %esi
	movl	%ecx, %edx
	addl	%esi, %eax
	movl	96(%esp), %esi
	movl	%eax, (%esi)
	movl	72(%esp), %eax
	movl	40(%esp), %esi
	subl	%esi, %eax
/APP
 # 8949 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%esi, %eax
	movl	100(%esp), %esi
	movl	$1, %edi
	movl	%eax, (%esi)
L660:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%edi, %eax
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
L661:
	.cfi_restore_state
	movl	24(%esp), %edx
	movl	20(%esp), %ecx
	imull	%ebx, %edx
	imull	%eax, %ecx
	movl	%edi, %eax
	xorl	%ebp, %eax
	subl	%ecx, %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	orl	%ecx, %eax
	js	L668
	movl	%edx, %eax
/APP
 # 8966 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%edi, %eax
/APP
 # 8966 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %ecx
	jg	L668
	movl	%ebp, %eax
/APP
 # 8967 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ebp
	movl	%edi, %eax
/APP
 # 8967 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %ebp
	jg	L668
	movl	%edx, %eax
	movl	%edi, 8(%esp)
	sarl	$31, %edi
	cltd
	movl	%edi, 12(%esp)
	shldl	$24, %eax, %edx
	sall	$24, %eax
	jmp	L672
	.p2align 4,,10
	.p2align 3
L673:
	xorl	%eax, %eax
	xorl	%edx, %edx
	testl	%ebx, %ebx
	jns	L664
L668:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%edi, %edi
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%edi, %eax
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
L674:
	.cfi_restore_state
	cmpl	%ebx, %edx
	movl	%ebx, %eax
	cmovle	%edx, %eax
	cltd
	shldl	$24, %eax, %edx
	sall	$24, %eax
	jmp	L664
	.cfi_endproc
LFE34:
	.p2align 4
	.globl	_rintersect
	.def	_rintersect;	.scl	2;	.type	32;	.endef
_rintersect:
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
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$68, %esp
	.cfi_def_cfa_offset 88
	movl	%eax, 40(%esp)
	movl	88(%esp), %eax
	movl	%ecx, 64(%esp)
	movl	104(%esp), %ecx
	movl	%eax, 48(%esp)
	sarl	$31, %eax
	movl	100(%esp), %ebx
	movl	%eax, 52(%esp)
	movl	92(%esp), %eax
	movl	%ecx, %ebp
	subl	112(%esp), %ebp
	subl	108(%esp), %ebx
	movl	%edx, 44(%esp)
	movl	%eax, 56(%esp)
	sarl	$31, %eax
	movl	%eax, 60(%esp)
	movl	%ebp, %eax
	imull	88(%esp)
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%ebx, %eax
	imull	92(%esp)
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%esi, 16(%esp)
	orl	%edi, %eax
	movl	%edi, 20(%esp)
	je	L679
	movl	100(%esp), %eax
	subl	40(%esp), %eax
	movl	%eax, 32(%esp)
	imull	%ebp
	subl	44(%esp), %ecx
	movl	%eax, %esi
	movl	%ebx, %eax
	movl	%edx, %edi
	imull	%ecx
	movl	%edi, %ebp
	movl	%esi, %edi
	subl	%eax, %edi
	movl	%ecx, %eax
	sbbl	%edx, %ebp
	imull	88(%esp)
	movl	%edi, 24(%esp)
	movl	%ebp, 28(%esp)
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	32(%esp), %eax
	imull	92(%esp)
	subl	%eax, %ecx
	sbbl	%edx, %ebx
	movl	%ecx, %edx
	xorl	%eax, %eax
	movl	%ebx, 36(%esp)
	movl	%ebx, %ecx
	movl	16(%esp), %ebx
	movl	%edx, 32(%esp)
	cmpl	%ebx, %eax
	sbbl	20(%esp), %eax
	jge	L678
	movl	%edx, %ebx
	movl	%ecx, %edx
	orl	28(%esp), %edx
	js	L679
	movl	16(%esp), %eax
	movl	20(%esp), %edx
	cmpl	%eax, %ebx
	sbbl	%edx, %ecx
	jge	L679
L681:
	movl	24(%esp), %edi
	movl	28(%esp), %ebp
	movl	16(%esp), %eax
	movl	20(%esp), %edx
	shldl	$16, %edi, %ebp
	sall	$16, %edi
	movl	44(%esp), %esi
	movl	%edi, (%esp)
	movl	%ebp, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	call	_tabledivide64.lto_priv.8
	movl	52(%esp), %ebp
	movl	88(%esp), %edi
	movl	%eax, %ecx
	movl	%edx, %ebx
	imull	%edx, %edi
	imull	%eax, %ebp
	mull	88(%esp)
	addl	%edi, %ebp
	movl	40(%esp), %edi
	addl	%ebp, %edx
	shrdl	$16, %edx, %eax
	movl	92(%esp), %edx
	addl	%eax, %edi
	movl	116(%esp), %eax
	imull	%ebx, %edx
	movl	%edi, (%eax)
	movl	60(%esp), %edi
	movl	%ecx, %eax
	imull	96(%esp), %ebx
	imull	%ecx, %edi
	addl	%edx, %edi
	mull	92(%esp)
	addl	%edi, %edx
	shrdl	$16, %edx, %eax
	addl	%eax, %esi
	movl	120(%esp), %eax
	movl	%esi, (%eax)
	movl	96(%esp), %eax
	cltd
	movl	%ecx, %eax
	movl	%edx, %esi
	mull	96(%esp)
	imull	%ecx, %esi
	addl	%esi, %ebx
	addl	%ebx, %edx
	shrdl	$16, %edx, %eax
	movl	124(%esp), %edx
	addl	64(%esp), %eax
	movl	%eax, (%edx)
	movl	16(%esp), %eax
	movl	20(%esp), %edx
	movl	%eax, 8(%esp)
	movl	32(%esp), %eax
	movl	%edx, 12(%esp)
	movl	36(%esp), %edx
	shldl	$16, %eax, %edx
	sall	$16, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.8
L675:
	addl	$68, %esp
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
L678:
	.cfi_restore_state
	movl	28(%esp), %edx
	movl	36(%esp), %esi
	movl	32(%esp), %ebx
	sarl	$31, %edx
	cmpl	24(%esp), %edx
	sbbl	28(%esp), %edx
	movl	%edx, %ecx
	movl	%esi, %edx
	sarl	$31, %edx
	shrl	$31, %ecx
	cmpl	%ebx, %edx
	sbbl	%esi, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	orb	%cl, %al
	jne	L679
	movl	16(%esp), %eax
	movl	20(%esp), %edx
	cmpl	%ebx, %eax
	movl	%edx, %eax
	sbbl	%esi, %eax
	jl	L681
L679:
	movl	$-1, %eax
	jmp	L675
	.cfi_endproc
LFE35:
	.p2align 4
	.globl	_tileSetupSky
	.def	_tileSetupSky;	.scl	2;	.type	32;	.endef
_tileSetupSky:
LFB37:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, %edx
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -16
	movl	_pskynummultis, %ebx
	testl	%ebx, %ebx
	jle	L687
	movl	_multipskytile, %ecx
	xorl	%eax, %eax
	jmp	L690
	.p2align 4
	.p2align 4,,10
	.p2align 3
L688:
	addl	$1, %eax
	cmpl	%ebx, %eax
	je	L687
L690:
	cmpl	%edx, (%ecx,%eax,4)
	jne	L688
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
L687:
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
	jne	L695
	testl	%esi, %esi
	jne	L691
L695:
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
	jne	L693
	movl	8(%esp), %edx
	testl	%edx, %edx
	jne	L699
L693:
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
L691:
	.cfi_restore_state
	movl	%esi, %eax
	call	__Z13handle_memerri
L699:
	movl	%edx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE37:
	.section .rdata,"dr"
LC28:
	.ascii "%s\0"
LC29:
	.ascii "source/build/src/engine.cpp\0"
	.text
	.p2align 4
	.globl	_engineFatalError.isra.0
	.def	_engineFatalError.isra.0;	.scl	2;	.type	32;	.endef
_engineFatalError.isra.0:
LFB39:
	.cfi_startproc
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	movl	%eax, _engineerrstr
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L706
	ret
	.p2align 4,,10
	.p2align 3
L706:
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%eax, 16(%esp)
	movl	$LC28, 12(%esp)
	movl	$9146, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE39:
	.section .rdata,"dr"
LC30:
	.ascii "\0"
LC31:
	.ascii "95\0"
LC32:
	.ascii "98\0"
LC33:
	.ascii "ME\0"
LC34:
	.ascii "2000\0"
LC35:
	.ascii "XP\0"
LC36:
	.ascii "XP x64\0"
LC37:
	.ascii "Server 2003\0"
LC38:
	.ascii "10\0"
LC39:
	.ascii "Server\0"
LC40:
	.ascii "setrendermode\0"
	.align 4
LC41:
	.ascii "setrendermode <number>: sets the engine's rendering mode.\12Mode numbers are:\12   0 - Classic Build software\12   3 - Polygonal OpenGL\12   4 - Great justice renderer (Polymer)\12\0"
LC42:
	.ascii "glinfo\0"
	.align 4
LC43:
	.ascii "glinfo: shows OpenGL information about the current OpenGL mode\0"
LC44:
	.ascii "Windows %s\0"
LC45:
	.ascii "OS: %s (build %lu.%lu.%lu)\0"
LC46:
	.ascii "source/build/src/winbits.cpp\0"
LC47:
	.ascii "powrprof.dll\0"
LC48:
	.ascii "PowerGetActiveScheme\0"
LC49:
	.ascii "PowerSetActiveScheme\0"
	.align 4
LC50:
	.ascii "PowerGetActiveScheme or PowerSetActiveScheme symbols missing from powrprof.dll!\0"
LC51:
	.ascii "avrt.dll\0"
LC52:
	.ascii "AvSetMmThreadCharacteristicsA\0"
LC53:
	.ascii "AvSetMmThreadPriority\0"
	.align 4
LC54:
	.ascii "AvRevertMmThreadCharacteristics\0"
	.align 4
LC55:
	.ascii "AvSetMmThreadCharacteristicsA, AvSetMmThreadPriority or AvRevertMmThreadCharacteristics symbols missing from avrt.dll!\0"
LC56:
	.ascii "ntdll.dll\0"
LC57:
	.ascii "NtQueryTimerResolution\0"
LC58:
	.ascii "NtSetTimerResolution\0"
	.align 4
LC59:
	.ascii "NtQueryTimerResolution or NtSetTimerResolution symbols missing from ntdll.dll!\0"
LC60:
	.ascii "CPU: %s\0"
LC61:
	.ascii "source/build/src/cpuid.cpp\0"
	.align 4
LC62:
	.ascii "SDL initialization failed: %s.\0"
LC63:
	.ascii "source/build/src/sdlayer.cpp\0"
	.align 4
LC64:
	.ascii "Non-interactive mode enabled; this is probably not what you want.\0"
LC65:
	.ascii "Video output disabled.\0"
	.align 4
LC66:
	.ascii "Failed loading OpenGL driver: %s; all OpenGL modes are unavailable.\0"
LC67:
	.ascii "enginePreInit\0"
LC68:
	.ascii "Failure in initsystem()!\0"
	.align 4
LC69:
	.ascii "fatal_exit(%s) at %s:%d in %s()\12\0"
	.align 4
LC70:
	.ascii "VirtualProtect() error! Crashing in 3... 2... 1...\0"
	.align 4
LC71:
	.ascii "source/build/src/baselayer.cpp\0"
LC72:
	.ascii "ABORT: \0"
	.text
	.p2align 4
	.globl	_enginePreInit
	.def	_enginePreInit;	.scl	2;	.type	32;	.endef
_enginePreInit:
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
	movl	$__ZZ14baselayer_initE12cvars_engine, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	$__ZL25osdcmd_cvar_set_baselayerPK13osdfuncparm_t.lto_priv.0, %ebx
	subl	$136, %esp
	.cfi_def_cfa_offset 156
	.p2align 4
	.p2align 3
L709:
	testb	$2, 13(%esi)
	movl	$__Z15osdcmd_cvar_setPK13osdfuncparm_t, %edx
	movl	%esi, %eax
	cmovne	%ebx, %edx
	addl	$24, %esi
	call	__Z16OSD_RegisterCvarP13osdcvardata_tPFiPK13osdfuncparm_tE
	cmpl	$__ZZ14baselayer_initE12cvars_engine+384, %esi
	jne	L709
	movl	$__ZL19osdcmd_displayindexPK13osdfuncparm_t.lto_priv.0, %edx
	movl	$__ZZ14baselayer_initE12displayindex, %eax
	call	__Z16OSD_RegisterCvarP13osdcvardata_tPFiPK13osdfuncparm_tE
	movl	_osd, %edi
	testl	%edi, %edi
	je	L842
L710:
	movl	$LC40, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L843
L711:
	movl	_osd, %esi
	movl	$LC41, 8(%eax)
	movl	$__ZL21osdfunc_setrendermodePK13osdfuncparm_t.lto_priv.0, 12(%eax)
	testl	%esi, %esi
	je	L844
L712:
	movl	$LC42, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L845
L713:
	movl	$__ZZ21polymost_initosdfuncsvE14cvars_polymost, %edi
	movl	$__ZZ21polymost_initosdfuncsvE14cvars_polymost+1752, %esi
	movl	$__ZL24osdcmd_cvar_set_polymostPK13osdfuncparm_t.lto_priv.0, %ebx
	movl	$LC43, 8(%eax)
	movl	$_osdcmd_glinfo, 12(%eax)
	.p2align 4
	.p2align 3
L715:
	testb	$2, 13(%edi)
	movl	$__Z15osdcmd_cvar_setPK13osdfuncparm_t, %edx
	movl	%edi, %eax
	cmovne	%ebx, %edx
	addl	$24, %edi
	call	__Z16OSD_RegisterCvarP13osdcvardata_tPFiPK13osdfuncparm_tE
	cmpl	%edi, %esi
	jne	L715
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L717:
	cmpb	$0, _g_keyRemapTable(%eax)
	jne	L716
	movb	%al, _g_keyRemapTable(%eax)
L716:
	addl	$1, %eax
	cmpl	$256, %eax
	jne	L717
	movl	$_divtable64, 84(%esp)
	movl	$1, %ebp
	movl	$0, 80(%esp)
	movl	$2, 92(%esp)
	movl	$0, 96(%esp)
	movl	$1, 72(%esp)
	movl	$0, 76(%esp)
	movl	$31, 56(%esp)
	movl	$63, 40(%esp)
	jmp	L735
	.p2align 4,,10
	.p2align 3
L846:
	movl	84(%esp), %ebx
	movl	%edi, %eax
	movl	$0, 9(%ebx)
	movl	$0, 13(%ebx)
	movb	%al, 17(%ebx)
	testl	%esi, %esi
	jne	L720
L719:
	movzbl	48(%esp), %ecx
	xorl	%esi, %esi
	xorl	%eax, %eax
L729:
	movl	80(%esp), %edi
	addl	$1, %ebp
	movl	%eax, _bfdivtable32+5(%edi)
	movzbl	55(%esp), %eax
	movl	%esi, _divtable32+5(%edi)
	movb	%cl, _divtable32+9(%edi)
	movb	%al, _bfdivtable32+9(%edi)
	cmpl	$16384, %ebp
	je	L732
	movl	%ebp, %eax
	addl	$1, 72(%esp)
	leal	5(%edi), %esi
	movl	96(%esp), %edi
	adcl	$0, 76(%esp)
	addl	$9, 84(%esp)
	negl	%eax
	movl	%edi, %edx
	cmovs	%ebp, %eax
	movl	%esi, 80(%esp)
	movl	92(%esp), %esi
	bsrl	%eax, %eax
	xorl	$31, %eax
	movl	%eax, 56(%esp)
	movl	%esi, %eax
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	cmovs	%edi, %edx
	cmovs	%esi, %eax
	testl	%edx, %edx
	je	L733
	bsrl	%edx, %eax
	xorl	$31, %eax
L734:
	addl	$1, 92(%esp)
	adcl	$0, 96(%esp)
	movl	%eax, 40(%esp)
L735:
	movl	72(%esp), %ecx
	movl	76(%esp), %ebx
	movl	$63, %edi
	movl	$31, %esi
	movl	%ecx, %edx
	movl	%ebx, %eax
	negl	%edx
	adcl	$0, %eax
	negl	%eax
	cmovs	%ebx, %eax
	cmovs	%ecx, %edx
	subl	56(%esp), %esi
	subl	40(%esp), %edi
	movl	%esi, 48(%esp)
	movl	%eax, 36(%esp)
	movl	%ebp, %eax
	negl	%eax
	movl	%edx, 32(%esp)
	movl	32(%esp), %ecx
	cmovs	%ebp, %eax
	movl	%edi, 88(%esp)
	movl	%eax, %ebx
	movl	%eax, 68(%esp)
	movl	%esi, %eax
	movb	%al, 55(%esp)
	leal	-1(%ebx), %eax
	andl	%ebx, %eax
	movl	36(%esp), %ebx
	movl	%eax, 108(%esp)
	movl	%eax, %esi
	movl	%ecx, %eax
	addl	$-1, %eax
	movl	%ebx, %edx
	adcl	$-1, %edx
	andl	%eax, %ecx
	andl	%edx, %ebx
	movl	%ecx, %eax
	orl	%ebx, %eax
	je	L846
	movl	$62, %ecx
	subl	40(%esp), %ecx
	xorl	%eax, %eax
	xorl	%edx, %edx
	testb	$32, %cl
	movl	$1, %esi
	sete	%al
	setne	%dl
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	sall	%cl, %eax
	sall	%cl, %edx
	movzbl	88(%esp), %ecx
	shldl	%cl, %esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	cmovne	%esi, %edi
	cmovne	%ebx, %esi
	movl	%edx, %ebx
	movl	%esi, 124(%esp)
	movl	32(%esp), %esi
	movl	%edi, 128(%esp)
	movl	36(%esp), %edi
	cmpl	%esi, %eax
	sbbl	%edi, %ebx
	jnc	L847
	movzbl	40(%esp), %ecx
	movl	32(%esp), %esi
	xorl	%ebx, %ebx
	movl	$0, 12(%esp)
	movl	36(%esp), %edi
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
	movl	%edi, 120(%esp)
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
	movl	$0, 112(%esp)
	movl	%eax, 100(%esp)
	movl	%eax, %esi
	movl	100(%esp), %ecx
	movl	60(%esp), %eax
	movl	%edx, 104(%esp)
	imull	%ecx, %ebx
	mull	%ecx
	movzbl	40(%esp), %ecx
	addl	%ebx, %edx
	negl	%eax
	adcl	$0, %edx
	xorl	%ebx, %ebx
	negl	%edx
	shrdl	%cl, %edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	movl	32(%esp), %ecx
	cmovne	%edx, %eax
	cmovne	%ebx, %edx
	movl	120(%esp), %ebx
	movl	%eax, 40(%esp)
	movl	%esi, %eax
	orl	112(%esp), %eax
	movl	%edx, 44(%esp)
	movl	%edi, %edx
	movl	%ebx, 116(%esp)
	orl	116(%esp), %edx
	movl	36(%esp), %ebx
	subl	40(%esp), %ecx
	movl	%eax, 60(%esp)
	sbbl	44(%esp), %ebx
	movl	%edx, 64(%esp)
	movl	124(%esp), %esi
	movl	128(%esp), %edi
	movl	%ebx, %eax
	movl	64(%esp), %edx
	cmpl	%esi, %ecx
	sbbl	%edi, %eax
	movl	60(%esp), %eax
	jnc	L724
	addl	$1, %eax
	adcl	$0, %edx
L722:
	movzbl	88(%esp), %ecx
	subl	$1, %ecx
L725:
	movl	84(%esp), %esi
	movl	108(%esp), %ebx
	movl	%eax, 9(%esi)
	movl	%edx, 13(%esi)
	movb	%cl, 17(%esi)
	testl	%ebx, %ebx
	je	L719
L720:
	movl	$1, %esi
	movl	$30, %ecx
	subl	56(%esp), %ecx
	xorl	%eax, %eax
	movl	%esi, %ebx
	movl	68(%esp), %edi
	sall	%cl, %ebx
	movzbl	48(%esp), %ecx
	movl	%ebx, %edx
	sall	%cl, %esi
	subl	$1, %ecx
/APP
 # 477 "source/build/include/libdivide.h" 1
	divl %edi
 # 0 "" 2
/NO_APP
	subl	%edx, %edi
	cmpl	%esi, %edi
	jb	L731
	leal	(%edx,%edx), %esi
	cmpl	68(%esp), %esi
	setnb	%cl
	cmpl	%edx, %esi
	setb	%dl
	orl	%edx, %ecx
	movzbl	%cl, %ecx
	leal	(%ecx,%eax,2), %eax
	movzbl	48(%esp), %ecx
	orl	$64, %ecx
L731:
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
	movl	%eax, 40(%esp)
	cmpl	%edi, %ebx
	setnb	%al
	cmpl	%edx, %ebx
	movzbl	48(%esp), %ebx
	setb	%dl
	orl	%eax, %edx
	movl	40(%esp), %eax
	orl	$64, %ebx
	movzbl	%dl, %edi
	movb	%bl, 55(%esp)
	leal	1(%edi,%eax,2), %eax
	jmp	L729
	.p2align 4,,10
	.p2align 3
L733:
	bsrl	%eax, %eax
	xorl	$31, %eax
	addl	$32, %eax
	jmp	L734
	.p2align 4,,10
	.p2align 3
L724:
	addl	%eax, %eax
	movl	%eax, %ebx
	movl	40(%esp), %eax
	adcl	%edx, %edx
	movl	%edx, %esi
	xorl	%edx, %edx
	addl	%eax, %eax
	adcl	%edx, %edx
	cmpl	32(%esp), %eax
	movl	%edx, %edi
	sbbl	36(%esp), %edi
	jnc	L726
	cmpl	40(%esp), %eax
	movl	%edx, %eax
	sbbl	44(%esp), %eax
	jc	L726
	movl	%ebx, %eax
	movl	%esi, %edx
	addl	$1, %eax
	adcl	$0, %edx
L723:
	movzbl	88(%esp), %ecx
	orl	$64, %ecx
	jmp	L725
	.p2align 4,,10
	.p2align 3
L726:
	movl	%ebx, %eax
	movl	%esi, %edx
	addl	$2, %eax
	adcl	$0, %edx
	jmp	L723
	.p2align 4,,10
	.p2align 3
L847:
	movl	%esi, %eax
	movl	%edi, %edx
	movl	124(%esp), %esi
	movl	128(%esp), %edi
	addl	$1, %eax
	adcl	$0, %edx
	cmpl	%esi, %eax
	movl	%edx, %eax
	movl	$0, %edx
	sbbl	%edi, %eax
	movl	$0, %eax
	jc	L722
	jmp	L723
L732:
	movl	$__ZL26osdcmd_win_systemtimermodePK13osdfuncparm_t.lto_priv.0, %edx
	movl	$__ZZ19windowsPlatformInitvE14win_timer_cvar, %eax
	movl	$__ZZ19windowsPlatformInitvE9cvars_win, %ebx
	movl	$0, __ZL12m_initprintf
	call	__Z16OSD_RegisterCvarP13osdcvardata_tPFiPK13osdfuncparm_tE
	movl	$__ZZ19windowsPlatformInitvE9cvars_win+72, %esi
L736:
	movl	%ebx, %eax
	movl	$__Z15osdcmd_cvar_setPK13osdfuncparm_t, %edx
	addl	$24, %ebx
	call	__Z16OSD_RegisterCvarP13osdcvardata_tPFiPK13osdfuncparm_tE
	cmpl	%ebx, %esi
	jne	L736
	movl	__ZL3osv.lto_priv.0+16, %eax
	cmpl	$1, %eax
	je	L737
	cmpl	$2, %eax
	je	L738
L742:
	movl	$LC30, %ebx
L739:
	movl	$256, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 152
	subl	$4, %esp
	.cfi_def_cfa_offset 156
	movl	%eax, %esi
	testl	%eax, %eax
	je	L745
	movl	$0, 240(%eax)
	movl	$0, 244(%eax)
	movl	$0, 248(%eax)
	movl	$0, 252(%eax)
	xorl	%eax, %eax
L746:
	movl	$0, (%esi,%eax)
	movl	$0, 4(%esi,%eax)
	movl	$0, 8(%esi,%eax)
	movl	$0, 12(%esi,%eax)
	addl	$16, %eax
	cmpl	$240, %eax
	jb	L746
	movl	%ebx, 8(%esp)
	movl	$LC44, 4(%esp)
	movl	%esi, (%esp)
	call	_sprintf
	cmpl	$2, __ZL3osv.lto_priv.0+16
	jne	L748
	cmpl	$5, __ZL3osv.lto_priv.0+4
	ja	L750
L748:
	movl	%esi, (%esp)
	call	_strlen
	movl	$1163153999, 8(%esi,%eax)
	movl	$1314203680, (%esi,%eax)
	movl	$1347442003, 4(%esi,%eax)
	movl	$2704453, 11(%esi,%eax)
	addl	$14, %eax
L750:
	cmpb	$0, __ZL3osv.lto_priv.0+20
	jne	L848
L751:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L752
	movl	__ZL3osv.lto_priv.0+12, %eax
	movl	%esi, 16(%esp)
	movl	$LC45, 12(%esp)
	movl	%eax, 28(%esp)
	movl	__ZL3osv.lto_priv.0+8, %eax
	movl	$268, 8(%esp)
	movl	%eax, 24(%esp)
	movl	__ZL3osv.lto_priv.0+4, %eax
	movl	$LC46, 4(%esp)
	movl	%eax, 20(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L752:
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 152
	subl	$4, %esp
	.cfi_def_cfa_offset 156
	cmpl	$5, __ZL3osv.lto_priv.0+4
	jbe	L753
	movl	__ZL9hPOWRPROF, %ecx
	testl	%ecx, %ecx
	je	L849
L754:
	movl	__ZL5hAVRT.lto_priv.0, %ebp
	testl	%ebp, %ebp
	je	L850
L753:
	movl	__ZL6hNTDLL.lto_priv.0, %ebx
	testl	%ebx, %ebx
	je	L851
L761:
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
	ja	L852
L764:
	call	__Z20sdlayer_checkversionv
	testl	%eax, %eax
	jne	L766
	movl	$32, (%esp)
	call	_SDL_WasInit
	cmpl	$32, %eax
	je	L767
	movl	$32, (%esp)
	call	_SDL_InitSubSystem
	testl	%eax, %eax
	jne	L853
L767:
	call	_SDL_StopTextInput
	movl	$2, (%esp)
	call	_SDL_SetThreadPriority
	call	__Z9timerIniti.constprop.0.isra.0
	movl	$0, _frameplace
	movl	$0, _lockcount
	cmpb	$0, _novideo
	je	L854
L769:
	leal	132(%esp), %eax
	movl	$64, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$_dep_end, %eax
	subl	$_dep_begin, %eax
	movl	$_dep_begin, (%esp)
	movl	%eax, 4(%esp)
	call	*__imp__VirtualProtect@16
	.cfi_def_cfa_offset 140
	subl	$16, %esp
	.cfi_def_cfa_offset 156
	testl	%eax, %eax
	je	L855
	movl	$__ZL8sector_s, _sector
	xorl	%esi, %esi
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
	.p2align 4
	.p2align 3
L777:
	movl	%esi, %edx
	movl	$8, %ecx
	xorl	%eax, %eax
	sall	$8, %edx
	.p2align 6
	.p2align 4
	.p2align 3
L776:
	movl	%eax, %edi
	addl	%eax, %eax
	movzwl	%ax, %eax
	xorl	%edx, %edi
	movl	%eax, %ebx
	xorl	$4129, %ebx
	andl	$32768, %edi
	cmovne	%ebx, %eax
	addl	%edx, %edx
	movzwl	%dx, %edx
	subl	$1, %ecx
	jne	L776
	movl	%eax, _crctab16(,%esi,4)
	addl	$1, %esi
	cmpl	$256, %esi
	jne	L777
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L779:
	movl	%ebx, %eax
	movl	$8, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L778:
	movl	%eax, %ecx
	andl	$1, %eax
	negl	%eax
	shrl	%ecx
	andl	$-306674912, %eax
	xorl	%ecx, %eax
	subl	$1, %edx
	jne	L778
	movl	%eax, _crc32table(,%ebx,4)
	addl	$1, %ebx
	cmpl	$256, %ebx
	jne	L779
	xorl	%edx, %edx
	.p2align 4
	.p2align 3
L780:
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
	jne	L780
	call	_engineInitClipMaps
	xorl	%eax, %eax
	movl	$1, __ZL13preinitcalled.lto_priv.0
	addl	$136, %esp
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
L738:
	.cfi_restore_state
	movl	__ZL3osv.lto_priv.0+4, %eax
	cmpl	$6, %eax
	je	L740
	cmpl	$10, %eax
	je	L741
	cmpl	$5, %eax
	jne	L742
	movl	__ZL3osv.lto_priv.0+8, %eax
	movl	$LC35, %ebx
	cmpl	$1, %eax
	je	L739
	cmpl	$2, %eax
	je	L743
	testl	%eax, %eax
	movl	$LC30, %ebx
	movl	$LC34, %eax
	cmove	%eax, %ebx
	jmp	L739
L737:
	movl	__ZL3osv.lto_priv.0+8, %eax
	movl	$LC31, %ebx
	cmpl	$9, %eax
	jbe	L739
	cmpl	$89, %eax
	movl	$LC33, %ebx
	movl	$LC32, %eax
	cmovbe	%eax, %ebx
	jmp	L739
L741:
	cmpb	$1, __ZL3osv.lto_priv.0+154
	movl	$LC39, %ebx
	movl	$LC38, %eax
	cmove	%eax, %ebx
	jmp	L739
L766:
	movl	$LC67, 16(%esp)
	movl	$9173, 12(%esp)
	movl	$LC29, 8(%esp)
	movl	$LC68, 4(%esp)
	movl	$LC69, (%esp)
	call	_initprintf
	movl	_g_sm_heap, %edx
	testl	%edx, %edx
	je	L772
	call	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	movl	_g_sm_heap, %ebx
	testl	%ebx, %ebx
	je	L772
	movl	372(%ebx), %eax
	testl	%eax, %eax
	je	L773
	call	_mi_free
L773:
	movl	%ebx, %eax
	call	_mi_free
L772:
	movl	$LC68, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__FatalAppExitA@8
	.cfi_def_cfa_offset 148
	subl	$8, %esp
	.cfi_def_cfa_offset 156
	jmp	L769
L852:
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
	js	L765
	movl	$__ZL16g_cpuBrandString, 16(%esp)
	movl	$LC60, 12(%esp)
	movl	$68, 8(%esp)
	movl	$LC61, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L765:
	movl	$__ZL16g_cpuBrandString, _cpu+4
	cmpl	$-2147483642, %esi
	jbe	L764
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
	jmp	L764
L854:
	movl	$0, (%esp)
	call	_SDL_GL_LoadLibrary
	testl	%eax, %eax
	jne	L856
L770:
	movl	$_apptitle, %eax
	call	_wm_setapptitle
	call	_SDL_GetNumVideoDisplays
	movl	%eax, _g_numdisplays
	jmp	L769
L848:
	addl	%esi, %eax
	movb	$32, (%eax)
	movl	$__ZL3osv.lto_priv.0+20, 4(%esp)
	movl	%eax, (%esp)
	call	_strcat
	jmp	L751
L851:
	movl	$LC56, (%esp)
	call	*__imp__GetModuleHandleA@4
	.cfi_def_cfa_offset 152
	subl	$4, %esp
	.cfi_def_cfa_offset 156
	movl	%eax, __ZL6hNTDLL.lto_priv.0
	testl	%eax, %eax
	je	L761
	movl	__imp__GetProcAddress@8, %ebx
	movl	$LC57, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 148
	subl	$8, %esp
	.cfi_def_cfa_offset 156
	movl	%eax, __ZL28ntdll_NtQueryTimerResolution.lto_priv.0
	movl	__ZL6hNTDLL.lto_priv.0, %eax
	movl	$LC58, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 148
	movl	__ZL28ntdll_NtQueryTimerResolution.lto_priv.0, %ecx
	subl	$8, %esp
	.cfi_def_cfa_offset 156
	movl	%eax, __ZL26ntdll_NtSetTimerResolution.lto_priv.0
	testl	%ecx, %ecx
	je	L791
	testl	%eax, %eax
	jne	L761
L791:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L857
L763:
	movl	$0, __ZL6hNTDLL.lto_priv.0
	movl	$0, __ZL19win_systemtimermode.lto_priv.0
	jmp	L761
L853:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L858
L768:
	movb	$1, _novideo
	movb	$1, _nogl
	jmp	L767
L843:
	movl	$LC40, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC40, (%eax)
	jmp	L711
L845:
	movl	$LC42, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC42, (%eax)
	jmp	L713
L842:
	call	__Z8OSD_Initv
	jmp	L710
L844:
	call	__Z8OSD_Initv
	jmp	L712
L856:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L859
L771:
	movb	$1, _nogl
	jmp	L770
L858:
	call	_SDL_GetError
	movl	$LC62, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$801, 8(%esp)
	movl	$LC63, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L768
	movl	$LC64, 12(%esp)
	movl	$802, 8(%esp)
	movl	$LC63, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$1, %eax
	jle	L768
	movl	$LC65, 12(%esp)
	movl	$803, 8(%esp)
	movl	$LC63, 4(%esp)
	movl	$2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L768
L740:
	movl	__ZL3osv.lto_priv.0+8, %eax
	andl	$3, %eax
	cmpb	$1, __ZL3osv.lto_priv.0+154
	je	L860
	movl	__ZZL19windowsPrintVersionvE6server(,%eax,4), %ebx
	jmp	L739
L745:
	movl	$256, %eax
	call	__Z13handle_memerri
L850:
	movl	$LC51, (%esp)
	call	*__imp__LoadLibraryA@4
	.cfi_def_cfa_offset 152
	subl	$4, %esp
	.cfi_def_cfa_offset 156
	movl	%eax, __ZL5hAVRT.lto_priv.0
	testl	%eax, %eax
	je	L753
	movl	__imp__GetProcAddress@8, %ebx
	movl	$LC52, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 148
	subl	$8, %esp
	.cfi_def_cfa_offset 156
	movl	%eax, __ZL33avrt_AvSetMmThreadCharacteristics.lto_priv.0
	movl	__ZL5hAVRT.lto_priv.0, %eax
	movl	$LC53, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 148
	subl	$8, %esp
	.cfi_def_cfa_offset 156
	movl	%eax, __ZL26avrt_AvSetMmThreadPriority.lto_priv.0
	movl	__ZL5hAVRT.lto_priv.0, %eax
	movl	$LC54, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 148
	movl	__ZL33avrt_AvSetMmThreadCharacteristics.lto_priv.0, %edi
	subl	$8, %esp
	.cfi_def_cfa_offset 156
	movl	%eax, __ZL36avrt_AvRevertMmThreadCharacteristics.lto_priv.0
	testl	%edi, %edi
	je	L758
	movl	__ZL26avrt_AvSetMmThreadPriority.lto_priv.0, %esi
	testl	%esi, %esi
	je	L758
	testl	%eax, %eax
	jne	L753
L758:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L861
L760:
	movl	$0, __ZL5hAVRT.lto_priv.0
	jmp	L753
L849:
	movl	$LC47, (%esp)
	call	*__imp__GetModuleHandleA@4
	.cfi_def_cfa_offset 152
	subl	$4, %esp
	.cfi_def_cfa_offset 156
	movl	%eax, __ZL9hPOWRPROF
	testl	%eax, %eax
	je	L754
	movl	__imp__GetProcAddress@8, %ebx
	movl	$LC48, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 148
	subl	$8, %esp
	.cfi_def_cfa_offset 156
	movl	%eax, __ZL29powrprof_PowerGetActiveScheme
	movl	__ZL9hPOWRPROF, %eax
	movl	$LC49, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 148
	subl	$8, %esp
	.cfi_def_cfa_offset 156
	testl	%eax, %eax
	movl	%eax, __ZL29powrprof_PowerSetActiveScheme.lto_priv.0
	movl	__ZL29powrprof_PowerGetActiveScheme, %eax
	je	L790
	testl	%eax, %eax
	je	L790
	movl	__ZL21systemPowerSchemeGUID.lto_priv.0, %edx
	testl	%edx, %edx
	jne	L754
	movl	$__ZL21systemPowerSchemeGUID.lto_priv.0, 4(%esp)
	movl	$0, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 148
	subl	$8, %esp
	.cfi_def_cfa_offset 156
	jmp	L754
L790:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L862
L757:
	movl	$0, __ZL9hPOWRPROF
	jmp	L754
L860:
	movl	__ZZL19windowsPrintVersionvE6client(,%eax,4), %ebx
	jmp	L739
L859:
	call	_SDL_GetError
	movl	$LC66, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$826, 8(%esp)
	movl	$LC63, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L771
L862:
	movl	$LC50, 12(%esp)
	movl	$378, 8(%esp)
	movl	$LC46, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L757
L855:
	xorl	%eax, %eax
	movl	$LC70, 16(%esp)
	movl	$407, 12(%esp)
	movl	$LC71, 8(%esp)
	movl	$LC72, 4(%esp)
	movl	%eax, (%esp)
	call	__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0
	.p2align 4,,10
	.p2align 3
L857:
	movl	$LC59, 12(%esp)
	movl	$406, 8(%esp)
	movl	$LC46, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L763
L743:
	cmpb	$1, __ZL3osv.lto_priv.0+154
	movl	$LC37, %ebx
	movl	$LC36, %eax
	cmove	%eax, %ebx
	jmp	L739
L861:
	movl	$LC55, 12(%esp)
	movl	$393, 8(%esp)
	movl	$LC46, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L760
	.cfi_endproc
LFE42:
	.p2align 4
	.globl	_engineUnInit
	.def	_engineUnInit;	.scl	2;	.type	32;	.endef
_engineUnInit:
LFB67:
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
	jne	L916
L864:
	call	_hicinit
	movl	__ZL6artfil.lto_priv.0, %eax
	cmpl	$-1, %eax
	je	L865
	call	_kclose
L865:
	movl	__ZL9g_vm_data.lto_priv.0, %eax
	movl	_g_sm_heap, %ecx
	movl	$__ZL14distrecipcache, %ebx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	$0, __ZL9g_vm_data.lto_priv.0
L866:
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
	jne	L866
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
L867:
	movl	_palookup(,%ebx,4), %eax
	cmpl	%eax, _palookup
	je	L870
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
L870:
	addl	$1, %ebx
	cmpl	$256, %ebx
	jne	L867
	movl	$1024, 8(%esp)
	xorl	%ebx, %ebx
	movl	$0, 4(%esp)
	movl	$_palookup, (%esp)
	call	_memset
	.p2align 4
	.p2align 3
L871:
	movl	_blendtable(,%ebx,4), %eax
	movl	_g_sm_heap, %ecx
	addl	$1, %ebx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	cmpl	$256, %ebx
	jne	L871
	movl	$1024, 8(%esp)
	movl	$1, %ebx
	movl	$0, 4(%esp)
	movl	$_blendtable, (%esp)
	call	_memset
	.p2align 4
	.p2align 3
L872:
	movl	_basepaltable(,%ebx,4), %eax
	movl	_g_sm_heap, %ecx
	addl	$1, %ebx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	cmpl	$256, %ebx
	jne	L872
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
	jle	L873
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L874:
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
	jg	L874
L873:
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
	je	L875
	movl	%eax, (%esp)
	call	_SDL_GameControllerClose
	movl	$0, __ZL10controller.lto_priv.0
L875:
	movl	__ZL6joydev.lto_priv.0, %eax
	testl	%eax, %eax
	je	L876
	movl	%eax, (%esp)
	call	_SDL_JoystickClose
	movl	$0, __ZL6joydev.lto_priv.0
L876:
	movl	__ZL5hAVRT.lto_priv.0, %eax
	testl	%eax, %eax
	je	L877
	movl	__ZL9hMMTHREAD.lto_priv.0, %edx
	testl	%edx, %edx
	je	L878
	movl	%edx, (%esp)
	call	*__ZL36avrt_AvRevertMmThreadCharacteristics.lto_priv.0
	.cfi_def_cfa_offset 32
	movl	__ZL5hAVRT.lto_priv.0, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	$0, __ZL9hMMTHREAD.lto_priv.0
L878:
	movl	%eax, (%esp)
	call	*__imp__FreeLibrary@4
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	$0, __ZL5hAVRT.lto_priv.0
L877:
	movl	__ZL25g_singleInstanceSemaphore.lto_priv.0, %eax
	testl	%eax, %eax
	je	L879
	movl	%eax, (%esp)
	call	*__imp__CloseHandle@4
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
L879:
	movl	__ZZ34windowsGetSystemKeyboardLayoutNamevE11layoutSaved.lto_priv.0, %eax
	testl	%eax, %eax
	je	L917
L880:
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
	je	L881
	xorl	%edx, %edx
	movl	$__ZZ34windowsGetSystemKeyboardLayoutNamevE16systemLayoutName.lto_priv.0, %eax
	call	__Z24windowsSetKeyboardLayoutPKci.part.0
L881:
	movl	__ZL21systemPowerSchemeGUID.lto_priv.0, %eax
	testl	%eax, %eax
	je	L882
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
L882:
	movl	__ZL7appicon.lto_priv.0, %eax
	testl	%eax, %eax
	je	L883
	movl	%eax, (%esp)
	call	_SDL_FreeSurface
	movl	$0, __ZL7appicon.lto_priv.0
L883:
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
L916:
	.cfi_restore_state
	call	_polymost_glreset
	call	_freeallmodels
	call	_polymer_uninit
	jmp	L864
L917:
	call	__Z34windowsGetSystemKeyboardLayoutNamev.part.0
	jmp	L880
	.cfi_endproc
LFE67:
	.p2align 4
	.globl	_initspritelists
	.def	_initspritelists;	.scl	2;	.type	32;	.endef
_initspritelists:
LFB75:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	$-1171354717, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	$8192, 8(%esp)
	movl	$255, 4(%esp)
	movl	$_headspritesect, (%esp)
	call	_memset
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	_sprite, %esi
	movw	%dx, _headspritesect+8192
	leal	24(%esi), %ebx
	.p2align 6
	.p2align 4
	.p2align 3
L919:
	movl	%ebx, %edx
	leal	-2(%ecx), %eax
	movw	%cx, _nextspritesect-2(%ecx,%ecx)
	addl	$44, %ebx
	subl	%esi, %edx
	movw	%ax, _prevspritesect-2(%ecx,%ecx)
	addl	$1, %ecx
	movl	%edx, %eax
	mull	%edi
	movl	$4096, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, -44(%ebx)
	cmpl	$16385, %ecx
	jne	L919
	movl	$2048, 8(%esp)
	movl	$-1, %eax
	leal	26(%esi), %ebx
	movl	$-1171354717, %edi
	movl	$255, 4(%esp)
	movl	$_headspritestat, (%esp)
	movw	%ax, _prevspritesect
	movl	$-1, %eax
	movw	%ax, _nextspritesect+32766
	call	_memset
	xorl	%eax, %eax
	movl	$1, %ecx
	movw	%ax, _headspritestat+2048
	.p2align 6
	.p2align 4
	.p2align 3
L920:
	movl	%ebx, %edx
	leal	-2(%ecx), %eax
	movw	%cx, _nextspritestat-2(%ecx,%ecx)
	addl	$44, %ebx
	subl	%esi, %edx
	movw	%ax, _prevspritestat-2(%ecx,%ecx)
	addl	$1, %ecx
	movl	%edx, %eax
	mull	%edi
	movl	$1024, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, -44(%ebx)
	cmpl	$16385, %ecx
	jne	L920
	movl	$-1, %eax
	movl	$-1, %edx
	movl	$16383, %ecx
	movl	$0, _Numsprites
	movw	%ax, _prevspritestat
	movw	%dx, _nextspritestat+32766
	movw	%cx, _tailspritefree
	addl	$12, %esp
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
LFE75:
	.p2align 4
	.globl	_set_globalang
	.def	_set_globalang;	.scl	2;	.type	32;	.endef
_set_globalang:
LFB76:
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
	fldl	LC73
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
	fmuls	LC74
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
LFE76:
	.section .rdata,"dr"
LC76:
	.ascii "Drawing rooms...\0"
LC77:
	.ascii "source/build/src/polymer.cpp\0"
LC83:
	.ascii "Drawing shadow %i\0"
LC90:
	.ascii "got sector %d after update!\0"
LC91:
	.ascii "EXT sec=%d  z=%d (%d, %d)\0"
LC92:
	.ascii "EXT sec=%d  z=%d\0"
LC94:
	.ascii "Rooms drawn.\0"
LC95:
	.ascii "polymost_drawrooms()\0"
	.text
	.p2align 4
	.globl	_renderDrawRoomsQ16.isra.0
	.def	_renderDrawRoomsQ16.isra.0;	.scl	2;	.type	32;	.endef
_renderDrawRoomsQ16.isra.0:
LFB78:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	xorps	%xmm5, %xmm5
	xorps	%xmm7, %xmm7
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%edx, %xmm7
	cvtsi2ssl	%ecx, %xmm6
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
	cvtsi2ssl	%ebx, %xmm5
	subl	$332, %esp
	movl	%eax, -252(%ebp)
	movl	4(%edi), %esi
	movl	(%edi), %eax
	movzwl	8(%edi), %edi
	movl	%edx, -256(%ebp)
	movl	%ecx, -248(%ebp)
	movl	%eax, -264(%ebp)
	movss	%xmm5, -268(%ebp)
	movss	%xmm5, _fglobalposx
	movss	%xmm7, -272(%ebp)
	movss	%xmm7, _fglobalposy
	movl	%edx, _globalposy
	movl	%esi, -280(%ebp)
	movw	%di, -244(%ebp)
	movl	%ebx, _globalposx
	movl	$0, __ZL15beforedrawrooms.lto_priv.0
	movl	%ecx, _globalposz
	movss	%xmm6, -276(%ebp)
	movss	%xmm6, _fglobalposz
	call	_set_globalang
	movl	_viewingrange, %eax
	movl	%esi, __ZL14global100horiz.lto_priv.0
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	_xdimenscale, %eax
	cltd
	shldl	$16, %eax, %edx
	sall	$16, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
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
	je	L930
	cmpl	$4, %eax
	je	L931
	testl	%eax, %eax
	jne	L1443
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
L933:
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
	jne	L939
	movl	__ZL7oxdimen.lto_priv.0, %eax
	cmpl	%eax, _xdimen
	je	L1444
L939:
	call	__ZL11dosetaspectv
L940:
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_gotsector, (%esp)
	call	_memset
	movl	_rendmode, %eax
	testl	%eax, %eax
	jne	L941
	cmpl	$8, _yax_globallev
	je	L941
	cmpw	$0, _numwalls
	jle	L952
L1223:
	xorl	%edi, %edi
	jmp	L951
	.p2align 6
	.p2align 4,,10
	.p2align 3
L945:
	movswl	_numwalls, %eax
	addl	$1, %edi
	cmpl	%eax, %edi
	jge	L944
L951:
	movl	%edi, %esi
	sall	$5, %esi
	addl	_wall, %esi
	testb	$16, 15(%esi)
	je	L945
	movswl	16(%esi), %ebx
	movl	%ebx, %eax
	call	_animateoffs
	leal	(%ebx,%eax), %edx
	movswl	_rottile(,%edx,4), %eax
	cmpw	$-1, %ax
	je	L1445
L946:
	movl	_waloff(,%eax,4), %edx
	testl	%edx, %edx
	jne	L945
	call	_tileLoad
	movswl	_numwalls, %eax
	addl	$1, %edi
	cmpl	%eax, %edi
	jl	L951
	.p2align 4
	.p2align 3
L944:
	cmpl	$4, _rendmode
	jne	L952
	cmpw	$0, _editstatus
	je	L953
	cmpb	$0, _showinvisibility
	je	L953
	movl	_numyaxbunches, %eax
	testl	%eax, %eax
	jle	L953
	xorl	%ebx, %ebx
L954:
	movl	%ebx, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	call	_yax_tweakpicnums
	movl	%ebx, %eax
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	_yax_tweakpicnums
	addl	$1, %ebx
	cmpl	_numyaxbunches, %ebx
	jl	L954
L953:
	call	_polymer_glinit
	movl	_rendmode, %eax
	movl	$0, -152(%ebp)
	movl	$0, -104(%ebp)
	testl	%eax, %eax
	jne	L1446
L955:
	movl	$2884, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1019
	movl	$2884, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$2884, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1019:
	movl	$0, _polymost2d
L928:
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
L1443:
	.cfi_restore_state
	movl	_globalvisibility, %ecx
	movl	_globalvisibility2, %ebx
	jmp	L933
	.p2align 4,,10
	.p2align 3
L952:
	movzwl	_globalcursectnum, %ebx
	cmpw	$4095, %bx
	jle	L1021
	subw	$4096, %bx
	movw	%bx, _globalcursectnum
L1022:
	movl	_rendmode, %edi
	testl	%edi, %edi
	jne	L1447
L1155:
	call	_videoBeginDrawing
	movl	_windowxy1+4, %eax
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	imull	_bytesperline, %eax
	addl	_frameplace, %eax
	xorl	%edi, %edi
	movw	%bx, _numscans
	addl	_windowxy1, %eax
	movw	%si, _numbunches
	movl	%eax, _frameoffset
	movl	_xdimen, %eax
	movw	%di, _maskwallcnt
	movw	%ax, __ZL7numhits.lto_priv.0
	movl	$0, __ZL12smostwallcnt.lto_priv.0
	movl	$0, __ZL8smostcnt.lto_priv.0
	movl	$0, _spritesortcnt
	cmpl	$8, _yax_globallev
	jne	L1448
L1156:
	movzwl	_globalcursectnum, %eax
	testw	%ax, %ax
	js	L1164
	movw	%ax, _sectorborder
	call	__ZL17classicScanSectors.part.0.lto_priv.0
L1163:
	movswl	_numbunches, %ecx
	movl	%ecx, -252(%ebp)
	movl	%ecx, %eax
	cmpl	$8, _yax_globallev
	je	L1165
L1222:
	movl	-252(%ebp), %ecx
	testl	%ecx, %ecx
	jle	L1166
	leal	(%ecx,%ecx), %esi
	xorl	%edx, %edx
	.p2align 6
	.p2align 4
	.p2align 3
L1167:
	movzwl	_bunchfirst(%edx), %ebx
	movl	%edx, %ecx
	addl	$2, %edx
	negl	%ecx
	movw	%bx, _bunchfirst+16382(%ecx)
	movzwl	_bunchlast-2(%edx), %ebx
	movw	%bx, _bunchlast+16382(%ecx)
	cmpl	%esi, %edx
	jne	L1167
L1165:
	movl	%eax, %ebx
	cmpb	$0, _inpreparemirror
	je	L1182
L1221:
	testw	%ax, %ax
	je	L1449
	movl	_xdimen, %eax
	movl	$0, __ZL9mirrorsx2
	leal	-1(%eax), %edx
	movl	%eax, -244(%ebp)
	movswl	_numscans, %eax
	movl	%edx, __ZL9mirrorsx1
	subl	$1, %eax
	js	L1245
	movl	_wall, %ecx
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	%edx, -248(%ebp)
	movl	%ecx, -240(%ebp)
	movl	%edx, -236(%ebp)
	.p2align 4
	.p2align 3
L1173:
	movswl	_thewall(%eax,%eax), %edx
	movl	-240(%ebp), %ecx
	sall	$5, %edx
	cmpw	$0, 12(%ecx,%edx)
	js	L1171
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
L1171:
	subl	$1, %eax
	jnb	L1173
	movl	%edi, %eax
	movl	-248(%ebp), %edx
	movl	-236(%ebp), %ecx
	testb	%al, %al
	je	L1174
	movl	%ebx, __ZL9mirrorsx2
L1174:
	movl	%esi, %eax
	testb	%al, %al
	je	L1450
	movl	__ZL9mirrorsx2, %eax
	movl	%ecx, __ZL9mirrorsx1
	addl	$1, %eax
L1170:
	testl	%ecx, %ecx
	jle	L1176
	addl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align 6
	.p2align 4
	.p2align 3
L1178:
	movl	__ZL5umost.lto_priv.0, %ebx
	movl	__ZL5dmost.lto_priv.0, %esi
	addl	%edx, %ebx
	movzwl	(%esi,%edx), %edi
	cmpw	%di, (%ebx)
	jg	L1177
	movl	$1, %esi
	xorl	%edi, %edi
	movw	%si, (%ebx)
	movl	__ZL5dmost.lto_priv.0, %ebx
	movw	%di, (%ebx,%edx)
	subw	$1, __ZL7numhits.lto_priv.0
L1177:
	addl	$2, %edx
	cmpl	%ecx, %edx
	jne	L1178
	movl	_xdimen, %ecx
	movl	%ecx, -244(%ebp)
L1176:
	cmpl	-244(%ebp), %eax
	jge	L1179
	.p2align 4
	.p2align 3
L1181:
	movl	__ZL5dmost.lto_priv.0, %ecx
	movl	__ZL5umost.lto_priv.0, %edx
	movzwl	(%ecx,%eax,2), %ecx
	cmpw	%cx, (%edx,%eax,2)
	jg	L1180
	movl	$1, %ecx
	xorl	%ebx, %ebx
	movw	%cx, (%edx,%eax,2)
	movl	__ZL5dmost.lto_priv.0, %edx
	movw	%bx, (%edx,%eax,2)
	subw	$1, __ZL7numhits.lto_priv.0
L1180:
	addl	$1, %eax
	cmpl	_xdimen, %eax
	jl	L1181
L1179:
	xorl	%eax, %eax
	call	__ZL18classicDrawBunchesi.lto_priv.0
	movzwl	_numbunches, %eax
	leal	-1(%eax), %ebx
	movswl	%bx, %eax
	movw	%bx, _numbunches
	movzwl	_bunchfirst(%eax,%eax), %edx
	movzwl	_bunchlast(%eax,%eax), %eax
	movw	%dx, _bunchfirst
	movw	%ax, _bunchlast
L1182:
	testw	%bx, %bx
	jle	L1219
	movl	-252(%ebp), %eax
	negl	%eax
	addl	%eax, %eax
	movl	%eax, -248(%ebp)
	.p2align 4
	.p2align 3
L1218:
	cmpw	$0, __ZL7numhits.lto_priv.0
	jle	L1219
	movswl	%bx, %eax
	movl	%eax, -240(%ebp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.3, (%esp)
	call	_memset
	movb	$1, __ZL7tempbuf.lto_priv.3
	movl	$0, -236(%ebp)
	cmpw	$1, %bx
	je	L1183
	movl	$1, %ebx
	.p2align 4
	.p2align 3
L1193:
	movl	-236(%ebp), %edi
	movswl	_bunchfirst(%ebx,%ebx), %eax
	movswl	_bunchlast(%edi,%edi), %edx
	movl	_xb1(,%eax,4), %ecx
	movl	__ZL3xb2.lto_priv.0(,%edx,4), %edx
	addl	$1, %edx
	cmpl	%edx, %ecx
	jge	L1192
	movswl	_bunchfirst(%edi,%edi), %edx
	movswl	_bunchlast(%ebx,%ebx), %edi
	movl	__ZL3xb2.lto_priv.0(,%edi,4), %edi
	movl	_xb1(,%edx,4), %esi
	addl	$1, %edi
	cmpl	%edi, %esi
	jge	L1192
	cmpl	%esi, %ecx
	jge	L1185
	cmpl	%esi, __ZL3xb2.lto_priv.0(,%eax,4)
	jge	L1187
	.p2align 5
	.p2align 4
	.p2align 3
L1186:
	movswl	_bunchp2(%eax,%eax), %eax
	cmpl	__ZL3xb2.lto_priv.0(,%eax,4), %esi
	jg	L1186
L1187:
	call	_wallfront
	testl	%eax, %eax
	js	L1192
	movb	$1, __ZL7tempbuf.lto_priv.3(%ebx)
	jne	L1192
	movl	-236(%ebp), %eax
	movl	%ebx, -236(%ebp)
	movb	$1, __ZL7tempbuf.lto_priv.3(%eax)
L1192:
	addl	$1, %ebx
	cmpl	-240(%ebp), %ebx
	jne	L1193
L1183:
	movl	$1, %eax
	xorl	%ebx, %ebx
	testb	%al, %al
	jne	L1439
	.p2align 4
	.p2align 3
L1451:
	movl	-236(%ebp), %edi
	movswl	_bunchfirst(%ebx,%ebx), %eax
	movswl	_bunchlast(%edi,%edi), %edx
	movl	_xb1(,%eax,4), %ecx
	movl	__ZL3xb2.lto_priv.0(,%edx,4), %edx
	addl	$1, %edx
	cmpl	%edx, %ecx
	jge	L1439
	movl	-236(%ebp), %edi
	movswl	_bunchfirst(%edi,%edi), %edx
	movswl	_bunchlast(%ebx,%ebx), %edi
	movl	__ZL3xb2.lto_priv.0(,%edi,4), %edi
	movl	_xb1(,%edx,4), %esi
	addl	$1, %edi
	cmpl	%edi, %esi
	jge	L1439
	cmpl	%esi, %ecx
	jge	L1198
	cmpl	%esi, __ZL3xb2.lto_priv.0(,%eax,4)
	jge	L1200
	.p2align 5
	.p2align 4
	.p2align 3
L1199:
	movswl	_bunchp2(%eax,%eax), %eax
	cmpl	__ZL3xb2.lto_priv.0(,%eax,4), %esi
	jg	L1199
L1200:
	call	_wallfront
	testl	%eax, %eax
	js	L1439
	movb	$1, __ZL7tempbuf.lto_priv.3(%ebx)
	jne	L1439
	movl	-236(%ebp), %eax
	movl	%ebx, -236(%ebp)
	movl	$1, %ebx
	movb	$1, __ZL7tempbuf.lto_priv.3(%eax)
	cmpl	%ebx, -240(%ebp)
	jle	L1206
	.p2align 5
	.p2align 4
	.p2align 3
L1452:
	movzbl	__ZL7tempbuf.lto_priv.3(%ebx), %eax
	testb	%al, %al
	je	L1451
L1439:
	addl	$1, %ebx
	cmpl	%ebx, -240(%ebp)
	jg	L1452
L1206:
	cmpl	$8, _yax_globallev
	je	L1208
	movl	-252(%ebp), %eax
	testl	%eax, %eax
	jle	L1209
	movl	-236(%ebp), %eax
	xorl	%ebx, %ebx
	movswl	_bunchfirst(%eax,%eax), %eax
	movw	%ax, -244(%ebp)
	movl	%eax, -240(%ebp)
	.p2align 4
	.p2align 3
L1217:
	movswl	_bunchfirst+16382(%ebx), %eax
	cmpw	-244(%ebp), %ax
	je	L1208
	movl	-236(%ebp), %esi
	movl	_xb1(,%eax,4), %ecx
	movswl	_bunchlast(%esi,%esi), %edx
	movl	__ZL3xb2.lto_priv.0(,%edx,4), %edx
	addl	$1, %edx
	cmpl	%edx, %ecx
	jge	L1210
	movl	-240(%ebp), %edi
	movl	_xb1(,%edi,4), %esi
	movl	%edi, %edx
	movswl	_bunchlast+16382(%ebx), %edi
	movl	__ZL3xb2.lto_priv.0(,%edi,4), %edi
	addl	$1, %edi
	cmpl	%edi, %esi
	jge	L1210
	cmpl	%esi, %ecx
	jl	L1440
	movl	-240(%ebp), %edi
	cmpl	%ecx, __ZL3xb2.lto_priv.0(,%edi,4)
	jge	L1441
	.p2align 5
	.p2align 4
	.p2align 3
L1215:
	movswl	_bunchp2(%edx,%edx), %edx
	cmpl	__ZL3xb2.lto_priv.0(,%edx,4), %ecx
	jg	L1215
	call	_wallfront
	testl	%eax, %eax
	jne	L1210
	.p2align 4
	.p2align 3
L1208:
	movl	-236(%ebp), %eax
	call	__ZL18classicDrawBunchesi.lto_priv.0
L1209:
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
	jg	L1218
L1219:
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
L1445:
	.cfi_restore_state
	movl	__ZZL14findUnusedTilevE14lastUnusedTile, %ebx
	testl	%ebx, %ebx
	js	L1226
	movl	%esi, -236(%ebp)
	xorl	%ecx, %ecx
	movl	-260(%ebp), %esi
	movw	%ax, -240(%ebp)
	jmp	L950
	.p2align 4,,10
	.p2align 3
L1227:
	movl	%ebx, %esi
L950:
	movzwl	_tilesiz(,%ebx,4), %eax
	orw	_tilesiz+2(,%ebx,4), %ax
	jne	L948
	movl	_waloff(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1453
L948:
	subl	$1, %ebx
	movl	$1, %ecx
	cmpl	$-1, %ebx
	jne	L1227
	movl	%esi, -260(%ebp)
	movzwl	-240(%ebp), %eax
	movl	$-1, __ZZL14findUnusedTilevE14lastUnusedTile
	movl	-236(%ebp), %esi
L947:
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
	je	L945
	jmp	L946
	.p2align 4,,10
	.p2align 3
L941:
	movl	_windowxy1, %eax
	movl	_startumost, %ebx
	leal	(%eax,%eax), %ecx
	movl	_xdimen, %eax
	addl	%ecx, %ebx
	addl	_startdmost, %ecx
	leal	-2(%eax,%eax), %eax
	.p2align 6
	.p2align 4
	.p2align 3
L943:
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
	jne	L943
	movl	__ZL5umost.lto_priv.0, %edx
	movzwl	(%ebx), %eax
	subw	_windowxy1+4, %ax
	movw	%ax, (%edx)
	movl	__ZL5dmost.lto_priv.0, %edx
	movzwl	(%ecx), %eax
	subw	_windowxy1+4, %ax
	movw	%ax, (%edx)
	cmpw	$0, _numwalls
	jg	L1223
	jmp	L944
L1447:
	movl	$LC95, 4(%esp)
	movl	$3, (%esp)
	call	__Z26buildgl_outputDebugMessagehPKcz.constprop.0
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_didwall, (%esp)
	call	_memset
	call	_videoBeginDrawing
	movl	_numyaxbunches, %esi
	movl	_windowxy1+4, %eax
	imull	_bytesperline, %eax
	addl	_frameplace, %eax
	addl	_windowxy1, %eax
	movl	%eax, _frameoffset
	testl	%esi, %esi
	jne	L1024
	cmpw	$0, _editstatus
	je	L1024
	movl	$16384, (%esp)
	call	*_glad_glClear
	subl	$4, %esp
L1024:
	movl	_yax_polymostclearzbuffer, %ebx
	testl	%ebx, %ebx
	jne	L1454
L1025:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1026
	movl	$3042, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1026:
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1027
	movl	$3008, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1027:
	movl	$2929, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1028
	movl	$2929, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$2929, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1028:
	movl	$2932, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$519, %eax
	je	L1029
	movl	$519, (%esp)
	call	*_glad_glDepthFunc
	movl	$519, %ecx
	movl	$2932, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1029:
	movl	_viewingrange, %ebx
	xorps	%xmm2, %xmm2
	movss	LC8, %xmm5
	movss	_fviewingrange, %xmm1
	cvtsi2ssl	%ebx, %xmm2
	movss	%xmm5, -240(%ebp)
	mulss	%xmm5, %xmm2
	movss	%xmm2, _gvrcorrection
	cmpl	$2, _glprojectionhacks
	je	L1455
L1030:
	movl	_xdimenscale, %eax
	xorps	%xmm0, %xmm0
	movss	-240(%ebp), %xmm7
	movss	%xmm1, -236(%ebp)
	movss	_fcosglobalang, %xmm2
	movl	_xdimen, %edx
	cvtsi2ssl	%eax, %xmm0
	fildl	_xyaspect
	mulss	LC101, %xmm0
	sarl	%edx
	fmuls	-236(%ebp)
	fmuls	LC102
	movss	%xmm0, _gyxscale
	movss	_fxdimen, %xmm0
	fstpl	_gxyaspect
	mulss	%xmm1, %xmm0
	mulss	LC103, %xmm0
	mulss	%xmm7, %xmm1
	movss	%xmm0, __ZL11gviewxrange.lto_priv.0
	movss	LC93, %xmm0
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
	mulss	%xmm7, %xmm0
	movss	%xmm0, __ZL6ghoriz.lto_priv.0
	movss	%xmm1, _grhalfxdown10
	movl	%ebx, 8(%esp)
	sarl	$31, %ebx
	movl	%ebx, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.7
	xorps	%xmm0, %xmm0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$0x00000000, __ZL13ghorizcorrect.lto_priv.0
	cvtsi2ssl	_globalvisibility, %xmm0
	mulss	LC78, %xmm0
	movss	%xmm0, _gvisibility
	cmpl	%eax, _gl
	je	L1456
L1032:
	xorps	%xmm1, %xmm1
L1035:
	movl	_ydimen, %eax
	xorps	%xmm2, %xmm2
	addss	__ZL6ghoriz.lto_priv.0, %xmm1
	movl	_r_yshearing, %edi
	sarl	%eax
	cvtsi2ssl	%eax, %xmm2
	movaps	%xmm2, %xmm0
	subss	%xmm1, %xmm0
	testl	%edi, %edi
	je	L1036
	movl	$0x00000000, _gshang
	movss	LC0, %xmm1
L1037:
	movss	%xmm1, _gchang
	movss	%xmm0, __ZL7ghoriz2.lto_priv.0
	movss	%xmm2, __ZL6ghoriz.lto_priv.0
	call	__ZL13resizeglcheckv.lto_priv.0
	cmpl	$1, _glprojectionhacks
	je	L1457
L1042:
	movss	LC0, %xmm6
L1044:
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
	jne	L1229
	xorps	%xmm0, %xmm0
	movaps	%xmm0, %xmm3
L1045:
	movss	%xmm0, _gstang
	xorl	%eax, %eax
L1046:
	movl	$0, -144(%ebp,%eax)
	movl	$0, -140(%ebp,%eax)
	movl	$0, -136(%ebp,%eax)
	movl	$0, -132(%ebp,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L1046
	movl	$0, -144(%ebp,%eax)
	xorps	%xmm0, %xmm0
	movss	__ZL13ghorizcorrect.lto_priv.0, %xmm1
	movl	$0, -140(%ebp,%eax)
	movl	_windowxy2, %eax
	subl	_windowxy1, %eax
	movaps	%xmm1, %xmm2
	subss	LC0, %xmm2
	movl	$0xbf800000, -152(%ebp)
	addl	$3, %eax
	movl	$0xbf800000, -116(%ebp)
	movss	__ZL7ghoriz2.lto_priv.0, %xmm4
	movss	_ghalfx, %xmm7
	cvtsi2ssl	%eax, %xmm0
	movl	_windowxy2+4, %eax
	subl	_windowxy1+4, %eax
	movss	%xmm2, -148(%ebp)
	movss	__ZL6ghoriz.lto_priv.0, %xmm5
	addl	$3, %eax
	movss	%xmm2, -136(%ebp)
	movss	%xmm4, -236(%ebp)
	movaps	%xmm7, %xmm4
	divss	_gvrcorrection, %xmm4
	movaps	%xmm4, %xmm2
	movss	%xmm0, -140(%ebp)
	movss	%xmm0, -128(%ebp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm4, -260(%ebp)
	leal	-152(%ebp), %eax
	movl	%eax, %edx
	addss	%xmm1, %xmm0
	movss	_gchang, %xmm1
	mulss	%xmm1, %xmm4
	movss	%xmm1, -240(%ebp)
	movss	%xmm0, -124(%ebp)
	movss	%xmm0, -112(%ebp)
	movss	_gshang, %xmm0
	mulss	%xmm0, %xmm2
	movss	%xmm0, -244(%ebp)
	movss	%xmm4, -252(%ebp)
	movss	%xmm2, -248(%ebp)
	.p2align 4
	.p2align 3
L1048:
	movss	4(%edx), %xmm0
	movss	(%edx), %xmm2
	leal	-104(%ebp), %edi
	addl	$12, %edx
	subss	%xmm5, %xmm0
	subss	%xmm7, %xmm2
	mulss	%xmm6, %xmm0
	mulss	%xmm6, %xmm2
	movaps	%xmm0, %xmm1
	mulss	%xmm3, %xmm0
	movaps	%xmm2, %xmm4
	mulss	%xmm3, %xmm4
	addss	%xmm2, %xmm0
	subss	%xmm4, %xmm1
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
	jne	L1048
	testb	%cl, %cl
	je	L1049
	xorps	LC9, %xmm3
	movss	%xmm3, _gstang
L1049:
	movl	$0, -236(%ebp)
	xorl	%edi, %edi
	xorl	%esi, %esi
	movss	LC104, %xmm4
L1054:
	movl	-236(%ebp), %ebx
	movss	8(%eax), %xmm0
	movl	%ebx, %ecx
	addl	$1, %ebx
	cmpl	$3, %ecx
	movl	%esi, %ecx
	movl	%ebx, -236(%ebp)
	cmovne	%ebx, %ecx
	comiss	LC104, %xmm0
	jb	L1051
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
L1051:
	comiss	LC104, %xmm0
	leal	(%ecx,%ecx,2), %ecx
	movss	-144(%ebp,%ecx,4), %xmm1
	setnb	-240(%ebp)
	comiss	LC104, %xmm1
	setnb	%bl
	cmpb	%bl, -240(%ebp)
	je	L1053
	movaps	%xmm4, %xmm3
	subss	%xmm0, %xmm1
	movss	(%eax), %xmm2
	leal	(%edi,%edi,2), %ebx
	subss	%xmm0, %xmm3
	movss	%xmm4, -96(%ebp,%ebx,4)
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
L1053:
	addl	$12, %eax
	cmpl	$4, -236(%ebp)
	jne	L1054
	movl	%edi, -240(%ebp)
	cmpl	$2, %edi
	jle	L1458
	movl	-240(%ebp), %eax
	leal	-1(%eax), %ecx
	movl	%ecx, -256(%ebp)
	cmpl	$3, %eax
	je	L1231
	movups	-104(%ebp), %xmm0
	movups	-88(%ebp), %xmm2
	movss	-260(%ebp), %xmm1
	movaps	%xmm0, %xmm3
	movaps	%xmm2, %xmm4
	shufps	$90, -72(%ebp), %xmm4
	shufps	$90, %xmm2, %xmm3
	shufps	$0, %xmm1, %xmm1
	shufps	$200, -72(%ebp), %xmm3
	divps	%xmm3, %xmm1
	movaps	%xmm0, %xmm3
	shufps	$5, %xmm2, %xmm0
	shufps	$175, -72(%ebp), %xmm2
	shufps	$136, %xmm2, %xmm0
	shufps	$140, %xmm4, %xmm3
	movaps	%xmm7, %xmm4
	shufps	$0, %xmm4, %xmm4
	mulps	%xmm1, %xmm3
	mulps	%xmm1, %xmm0
	movaps	%xmm5, %xmm1
	shufps	$0, %xmm1, %xmm1
	addps	%xmm4, %xmm3
	addps	%xmm1, %xmm0
	movups	%xmm3, -216(%ebp)
	movups	%xmm0, -184(%ebp)
	testb	$3, %al
	je	L1459
	movl	-240(%ebp), %eax
	andl	$-4, %eax
L1058:
	leal	-184(%ebp), %esi
	leal	(%eax,%eax,2), %edx
	movl	-240(%ebp), %ecx
	movss	-260(%ebp), %xmm2
	leal	-216(%ebp), %ebx
	movl	%esi, -244(%ebp)
	leal	-104(%ebp,%edx,4), %edx
	movl	%ebx, -252(%ebp)
L1060:
	movss	(%edx), %xmm1
	movaps	%xmm2, %xmm0
	divss	8(%edx), %xmm0
	addl	$12, %edx
	mulss	%xmm0, %xmm1
	mulss	-8(%edx), %xmm0
	addss	%xmm7, %xmm1
	addss	%xmm5, %xmm0
	movss	%xmm1, (%ebx,%eax,4)
	movss	%xmm0, (%esi,%eax,4)
	addl	$1, %eax
	cmpl	%ecx, %eax
	jl	L1060
L1059:
	xorl	%edx, %edx
	movss	-216(%ebp), %xmm3
	comiss	-212(%ebp), %xmm3
	movl	-256(%ebp), %eax
	movl	-252(%ebp), %ebx
	seta	%dl
	movl	%eax, -264(%ebp)
	movss	-216(%ebp,%edx,4), %xmm1
	jmp	L1064
L1461:
	leal	0(,%eax,4), %ecx
	movl	%eax, %edx
	movaps	%xmm0, %xmm1
	subl	$1, %eax
	cmpl	$1, %eax
	je	L1460
L1064:
	movss	(%ebx,%eax,4), %xmm0
	comiss	%xmm0, %xmm1
	ja	L1461
	subl	$1, %eax
	leal	0(,%edx,4), %ecx
	cmpl	$1, %eax
	jne	L1064
L1460:
	movss	-184(%ebp,%ecx), %xmm0
	leal	-1(%edx), %ecx
	leal	1(%edx), %eax
	movss	%xmm1, __ZL3vsp.lto_priv.0+32
	movl	%ecx, -236(%ebp)
	movss	%xmm0, __ZL3vsp.lto_priv.0+44
	movss	%xmm0, __ZL3vsp.lto_priv.0+36
	cmpl	%eax, -240(%ebp)
	jle	L1232
	movss	-216(%ebp,%eax,4), %xmm0
L1065:
	movl	-236(%ebp), %ecx
	movl	-256(%ebp), %edi
	movl	$2, %edx
	testl	%ecx, %ecx
	cmovs	%edi, %ecx
	movss	-216(%ebp,%ecx,4), %xmm2
	movl	%ecx, -236(%ebp)
	movl	-252(%ebp), %ecx
	leal	(%ecx,%edi,4), %ecx
	movl	%ecx, -260(%ebp)
	jmp	L1084
	.p2align 4,,10
	.p2align 3
L1462:
	comiss	%xmm0, %xmm1
	movss	-184(%ebp,%ebx), %xmm1
	cmovb	%edx, %edi
	cmovb	%esi, %edx
	movl	%edi, %esi
	sall	$5, %esi
	movss	%xmm0, __ZL3vsp.lto_priv.0(%esi)
	movss	%xmm1, __ZL3vsp.lto_priv.0+4(%esi)
	movl	-236(%ebp), %esi
	leal	1(%esi), %ebx
	cmpl	%ebx, -240(%ebp)
	jle	L1234
	movss	-212(%ebp,%ecx), %xmm5
	movl	-244(%ebp), %esi
	leal	4(%esi,%ecx), %ebx
L1070:
	movss	(%ebx), %xmm4
	subss	%xmm5, %xmm0
	movl	%edi, %ebx
	addl	$1, %eax
	movss	-184(%ebp,%ecx), %xmm1
	sall	$5, %ebx
	xorl	%esi, %esi
	cmpl	%eax, -240(%ebp)
	cmovle	%esi, %eax
	subss	%xmm4, %xmm1
	mulss	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	subss	%xmm5, %xmm1
	divss	%xmm1, %xmm0
	addss	%xmm4, %xmm0
	movss	%xmm0, __ZL3vsp.lto_priv.0+12(%ebx)
L1071:
	cmpl	-236(%ebp), %eax
	je	L1083
L1081:
	movss	-216(%ebp,%eax,4), %xmm0
	sall	$5, %edi
	movss	__ZL3vsp.lto_priv.0(%edi), %xmm1
L1084:
	movl	-236(%ebp), %ecx
	leal	0(,%eax,4), %ebx
	leal	-1(%edx), %edi
	leal	1(%edx), %esi
	sall	$2, %ecx
	comiss	%xmm0, %xmm2
	ja	L1462
	comiss	%xmm2, %xmm0
	jbe	L1417
	comiss	%xmm2, %xmm1
	movss	-184(%ebp,%ecx), %xmm1
	cmovb	%edx, %edi
	cmovb	%esi, %edx
	movl	%edi, %esi
	sall	$5, %esi
	movl	%esi, -248(%ebp)
	movss	%xmm2, __ZL3vsp.lto_priv.0(%esi)
	movss	%xmm1, __ZL3vsp.lto_priv.0+12(%esi)
	movl	%eax, %esi
	movss	-184(%ebp,%ebx), %xmm1
	subl	$1, %esi
	cmovs	-256(%ebp), %esi
	subl	$1, -236(%ebp)
	movss	-216(%ebp,%esi,4), %xmm5
	movss	-184(%ebp,%esi,4), %xmm4
	movl	-248(%ebp), %esi
	subss	%xmm4, %xmm1
	subss	%xmm5, %xmm2
	mulss	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	subss	%xmm5, %xmm1
	divss	%xmm1, %xmm2
	movaps	%xmm2, %xmm0
	addss	%xmm4, %xmm0
	movss	%xmm0, __ZL3vsp.lto_priv.0+4(%esi)
	js	L1082
L1080:
	subl	$4, %ecx
	movss	-216(%ebp,%ecx), %xmm2
	cmpl	-236(%ebp), %eax
	jne	L1081
L1083:
	movl	%edi, %eax
	sall	$5, %eax
	comiss	__ZL3vsp.lto_priv.0(%eax), %xmm2
	jbe	L1085
	movss	-184(%ebp,%ecx), %xmm0
	movl	%edx, %eax
	movl	%edx, %edi
	addl	$1, %edx
	sall	$5, %eax
	movss	%xmm2, __ZL3vsp.lto_priv.0(%eax)
	movss	%xmm0, __ZL3vsp.lto_priv.0+12(%eax)
	movss	%xmm0, __ZL3vsp.lto_priv.0+4(%eax)
L1085:
	movl	$0, _domost_rejectcount
	testl	%edx, %edx
	jle	L1087
	movl	$__ZL3vsp.lto_priv.0+16, %eax
	movl	%edx, %ebx
	xorl	%ecx, %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1088:
	movss	28(%eax), %xmm0
	movw	%cx, 14(%eax)
	addl	$1, %ecx
	addl	$32, %eax
	movss	%xmm0, -32(%eax)
	cmpw	%bx, %cx
	jne	L1088
	movl	$__ZL3vsp.lto_priv.0+8, %eax
	xorl	%ecx, %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L1089:
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
	jne	L1089
L1087:
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
L1090:
	movw	%ax, 24(%ecx)
	leal	-2(%eax), %ebx
	addl	$1, %eax
	addl	$32, %ecx
	movw	%bx, -6(%ecx)
	cmpw	$2049, %ax
	jne	L1090
	movss	-184(%ebp), %xmm5
	movl	%edx, %eax
	movaps	%xmm3, %xmm2
	xorl	%edi, %edi
	movb	$0, -236(%ebp)
	sall	$5, %eax
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	movw	%dx, __ZL3vsp.lto_priv.0+65528
	movaps	%xmm5, %xmm1
	movaps	%xmm5, %xmm4
	movl	$2047, %ecx
	movl	%edx, -240(%ebp)
	movl	-264(%ebp), %edx
	movw	%cx, __ZL3vsp.lto_priv.0+26(%eax)
	movl	$1, %eax
	movss	%xmm3, __ZL3xbl.lto_priv.0
	movss	%xmm3, __ZL3xbr.lto_priv.0
	movss	%xmm5, __ZL3xbt.lto_priv.0
	.p2align 4
	.p2align 3
L1095:
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
	comiss	%xmm0, %xmm4
	movaps	%xmm0, %xmm7
	minss	%xmm4, %xmm7
	cmova	%eax, %esi
	comiss	%xmm1, %xmm0
	maxss	%xmm1, %xmm0
	movaps	%xmm7, %xmm4
	cmova	%eax, %edi
	movaps	%xmm0, %xmm1
	subl	$1, %edx
	jne	L1095
	movl	%edi, %eax
	movl	-240(%ebp), %edx
	movzbl	-236(%ebp), %ecx
	testb	%al, %al
	jne	L1096
	movaps	%xmm5, %xmm1
L1096:
	movss	%xmm1, __ZL3xbb.lto_priv.0
	movl	%esi, %eax
	testb	%al, %al
	je	L1097
	movss	%xmm4, __ZL3xbt.lto_priv.0
L1097:
	testb	%bl, %bl
	je	L1098
	movss	%xmm2, __ZL3xbr.lto_priv.0
L1098:
	testb	%cl, %cl
	je	L1099
	movss	%xmm3, __ZL3xbl.lto_priv.0
L1099:
	movl	_numyaxbunches, %eax
	movl	%edx, __ZL4gtag.lto_priv.0
	movl	%edx, __ZL17viewportNodeCount.lto_priv.0
	movl	__ZL22numyaxbunchesallocated, %ebx
	leal	(%eax,%eax), %edx
	leal	1(%edx), %eax
	cmpl	%ebx, %eax
	je	L1101
	cmpl	%ebx, %edx
	jl	L1104
	movss	%xmm6, -236(%ebp)
	jmp	L1103
L1464:
	movl	$49152, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	_numyaxbunches, %eax
	movl	%esi, __ZL7yax_vsp.lto_priv.0(,%ebx,4)
	movl	__ZL22numyaxbunchesallocated, %ebx
	addl	%eax, %eax
	cmpl	%eax, %ebx
	jg	L1463
L1103:
	leal	1(%ebx), %eax
	movl	%eax, __ZL22numyaxbunchesallocated
	movl	$49152, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L1464
	movl	$49152, %eax
	call	__Z13handle_memerri
L1453:
	movl	%esi, -260(%ebp)
	movl	%esi, %eax
	movl	-236(%ebp), %esi
	testb	%cl, %cl
	je	L949
	movl	%eax, __ZZL14findUnusedTilevE14lastUnusedTile
L949:
	movl	%ebx, %eax
	movswl	%bx, %ebx
	jmp	L947
L1021:
	movl	$_globalcursectnum, 8(%esp)
	movl	_globalposy, %eax
	movl	%eax, 4(%esp)
	movl	_globalposx, %eax
	movl	%eax, (%esp)
	call	_updatesector
	cmpw	$0, _globalcursectnum
	jns	L1022
	movw	%bx, _globalcursectnum
	testw	%bx, %bx
	js	L928
	jmp	L1022
L931:
	movl	_r_usenewshading, %eax
	movl	_g_visibility, %ebx
	cmpl	$4, %eax
	je	L1465
	sall	$2, %ebx
	cmpl	$1, %eax
	jle	L938
	imull	$150, %ebx, %ebx
	movl	$-2109602569, %eax
	imull	%ebx
	leal	(%edx,%ebx), %ecx
	sarl	$31, %ebx
	sarl	$12, %ecx
	subl	%ebx, %ecx
	movl	_globalvisibility2, %ebx
	movl	%ecx, _globalvisibility
	jmp	L933
L930:
	movl	_r_usenewshading, %esi
	movl	_xdimen, %ecx
	movl	_g_visibility, %eax
	cmpl	$4, %esi
	je	L1466
	sall	$2, %eax
	imull	%ecx
	cmpl	$1, %esi
	jle	L936
	movl	$1680, 8(%esp)
L1432:
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	%eax, _globalvisibility
	movl	%eax, %ecx
	movl	_g_visibility, %eax
L935:
	movl	%ebx, %edx
/APP
 # 9475 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _globalvisibility2
	movl	%eax, %ebx
	jmp	L933
L1229:
	movss	LC75, %xmm0
	movaps	%xmm0, %xmm3
	jmp	L1045
L1456:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	_r_shadeinterpolate, %xmm0
	ucomiss	__ZL25polymost1ShadeInterpolate.lto_priv.0, %xmm0
	jp	L1033
	je	L1032
L1033:
	movss	%xmm0, __ZL25polymost1ShadeInterpolate.lto_priv.0
	movss	%xmm0, 4(%esp)
	movl	__ZL28polymost1ShadeInterpolateLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	movss	__ZL13ghorizcorrect.lto_priv.0, %xmm1
	subl	$8, %esp
	jmp	L1035
L1454:
	movl	$256, (%esp)
	call	*_glad_glClear
	subl	$4, %esp
	jmp	L1025
L1448:
	movl	_yax_globalbunch, %ebx
	movl	__ZL6yumost.lto_priv.0, %edx
	imull	%eax, %ebx
	addl	%eax, %eax
	movl	%eax, 8(%esp)
	addl	%ebx, %ebx
	addl	%ebx, %edx
	movl	%edx, 4(%esp)
	movl	__ZL5umost.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	_xdimen, %eax
	addl	__ZL6ydmost.lto_priv.0, %ebx
	movl	%ebx, 4(%esp)
	addl	%eax, %eax
	movl	%eax, 8(%esp)
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	_xdimen, %ecx
	testl	%ecx, %ecx
	jle	L1157
	movl	__ZL5umost.lto_priv.0, %eax
	movl	__ZL5dmost.lto_priv.0, %edx
	leal	(%eax,%ecx,2), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1159:
	movzwl	(%eax), %edi
	cmpw	%di, (%edx)
	jge	L1158
	subw	$1, __ZL7numhits.lto_priv.0
L1158:
	addl	$2, %eax
	addl	$2, %edx
	cmpl	%ecx, %eax
	jne	L1159
L1157:
	cmpl	$8, _yax_globallev
	je	L1156
	movl	_yax_globalcf, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	sete	%al
	sall	$8, %eax
	addl	_yax_globalbunch, %eax
	movswl	_headsectbunch(%eax,%eax), %ebx
	cmpl	$-1, %ebx
	je	L1160
	.p2align 4
	.p2align 3
L1162:
	testl	%ebx, %ebx
	js	L1161
	movw	%bx, _sectorborder
	call	__ZL17classicScanSectors.part.0.lto_priv.0
L1161:
	movl	_yax_globalcf, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	sete	%al
	sall	$12, %eax
	addl	%ebx, %eax
	movswl	_nextsectbunch(%eax,%eax), %ebx
	cmpl	$-1, %ebx
	jne	L1162
	jmp	L1163
L1446:
	call	_videoBeginDrawing
	cmpl	$2, _pr_verbosity
	jg	L1467
L956:
	xorps	%xmm0, %xmm0
	movl	$_prlights, %esi
	xorl	%ebx, %ebx
	movss	LC8, %xmm7
	cvtsi2ssl	_globalvisibility, %xmm0
	mulss	LC78, %xmm0
	movss	%xmm7, -240(%ebp)
	movss	%xmm0, _gvisibility
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-264(%ebp), %xmm0
	mulss	%xmm7, %xmm0
	mulss	LC79, %xmm0
	movss	%xmm0, -260(%ebp)
	xorps	%xmm0, %xmm0
	movl	$0x43000000, 4(%esp)
	cvtsi2ssl	-280(%ebp), %xmm0
	mulss	%xmm7, %xmm0
	subss	LC81, %xmm0
	movss	%xmm0, (%esp)
	call	_atan2f
	fstps	-236(%ebp)
	movss	-236(%ebp), %xmm0
	mulss	LC108, %xmm0
	movss	%xmm0, _horizang
	jmp	L964
	.p2align 4,,10
	.p2align 3
L957:
	testb	$1, %al
	je	L960
	cmpw	$0, 24(%esi)
	je	L961
	movzwl	34(%esi), %edx
	testw	%dx, %dx
	jle	L961
	movswl	%dx, %edi
	cmpb	$63, _picanm+3(%edi,%edi,4)
	ja	L1468
L962:
	movl	_waloff(,%edi,4), %eax
	testl	%eax, %eax
	je	L1469
L963:
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edi, %eax
	call	_texcache_fetch
	testl	%eax, %eax
	je	L961
	movl	12(%eax), %eax
	movl	%eax, 258(%esi)
L961:
	movl	$-1, 250(%esi)
L960:
	addl	$1, %ebx
	addl	$270, %esi
	cmpl	$1024, %ebx
	je	L1470
L964:
	imull	$270, %ebx, %eax
	movzbl	_prlights+254(%eax), %eax
	movl	%eax, %edx
	notl	%edx
	andl	$3, %edx
	jne	L957
	movswl	%bx, %eax
	movl	%ebx, %edi
	call	_polymer_removelight.lto_priv.0
	cmpw	$0, 24(%esi)
	jne	L1471
L958:
	movswl	%di, %eax
	call	_polymer_culllight.lto_priv.0
	testl	%eax, %eax
	je	L959
	imull	$270, %ebx, %eax
	movzbl	_prlights+254(%eax), %eax
	jmp	L957
L1465:
	movl	%ebx, %ecx
	movl	_globalvisibility2, %ebx
	sall	$5, %ecx
	movl	%ecx, _globalvisibility
	jmp	L933
L1466:
	imull	%eax, %ecx
	movl	%ecx, _globalvisibility
	jmp	L935
	.p2align 4,,10
	.p2align 3
L1185:
	cmpl	%ecx, __ZL3xb2.lto_priv.0(,%edx,4)
	jge	L1187
	.p2align 5
	.p2align 4
	.p2align 3
L1189:
	movswl	_bunchp2(%edx,%edx), %edx
	cmpl	__ZL3xb2.lto_priv.0(,%edx,4), %ecx
	jg	L1189
	jmp	L1187
	.p2align 4,,10
	.p2align 3
L1198:
	cmpl	%ecx, __ZL3xb2.lto_priv.0(,%edx,4)
	jge	L1200
	.p2align 5
	.p2align 4
	.p2align 3
L1202:
	movswl	_bunchp2(%edx,%edx), %edx
	cmpl	__ZL3xb2.lto_priv.0(,%edx,4), %ecx
	jg	L1202
	jmp	L1200
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1212:
	movswl	_bunchp2(%eax,%eax), %eax
L1440:
	cmpl	__ZL3xb2.lto_priv.0(,%eax,4), %esi
	jg	L1212
	movl	-240(%ebp), %edx
L1441:
	call	_wallfront
	testl	%eax, %eax
	je	L1208
L1210:
	subl	$2, %ebx
	cmpl	%ebx, -248(%ebp)
	jne	L1217
	jmp	L1209
	.p2align 4,,10
	.p2align 3
L959:
	imull	$270, %ebx, %edx
	movzbl	_prlights+254(%edx), %eax
	andl	$-3, %eax
	movb	%al, _prlights+254(%edx)
	jmp	L957
L1471:
	movl	%esi, %eax
	call	_polymer_processspotlight.lto_priv.0
	jmp	L958
L1469:
	movl	%edi, %eax
	call	_tileLoad
	jmp	L963
L1468:
	movl	%edi, %eax
	movl	%edx, -236(%ebp)
	call	_animateoffs
	movl	-236(%ebp), %edx
	addl	%eax, %edx
	movswl	%dx, %edi
	jmp	L962
L1234:
	movl	-244(%ebp), %ebx
	movaps	%xmm3, %xmm5
	jmp	L1070
L1417:
	comiss	%xmm0, %xmm1
	cmovb	%edx, %edi
	cmovb	%esi, %edx
	addl	$1, %eax
	movl	%edi, %esi
	sall	$5, %esi
	movss	%xmm0, __ZL3vsp.lto_priv.0(%esi)
	movss	-184(%ebp,%ebx), %xmm0
	movss	%xmm0, __ZL3vsp.lto_priv.0+4(%esi)
	movss	-184(%ebp,%ecx), %xmm0
	movss	%xmm0, __ZL3vsp.lto_priv.0+12(%esi)
	movl	-236(%ebp), %esi
	cmpl	%eax, -240(%ebp)
	jg	L1078
	xorl	%eax, %eax
	testl	%esi, %esi
	je	L1079
	subl	$1, %esi
	movl	%esi, -236(%ebp)
	jns	L1080
	movl	-260(%ebp), %ecx
	movss	(%ecx), %xmm2
	movl	-256(%ebp), %ecx
	movl	%ecx, -236(%ebp)
	jmp	L1081
L1078:
	cmpl	%eax, %esi
	je	L1079
	subl	$1, %esi
	movl	%esi, -236(%ebp)
	jns	L1080
L1082:
	movl	-260(%ebp), %ecx
	movl	-256(%ebp), %esi
	movss	(%ecx), %xmm2
	movl	%esi, -236(%ebp)
	leal	0(,%esi,4), %ecx
	jmp	L1071
L1463:
	movss	-236(%ebp), %xmm6
	addl	$1, %eax
L1104:
	cmpl	%ebx, %eax
	jge	L1101
	movss	%xmm6, -236(%ebp)
L1105:
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
	jg	L1105
	movss	-236(%ebp), %xmm6
L1101:
	cmpl	$8, _yax_globallev
	je	L1106
	movl	_yax_globalbunch, %edx
	movl	_g_nodraw, %ebx
	movl	$1, _g_nodraw
	addl	%edx, %edx
	movl	__ZL7yax_vsp.lto_priv.0(,%edx,4), %ecx
	movswl	16(%ecx), %eax
	testw	%ax, %ax
	je	L1107
	movss	LC11, %xmm3
	leal	(%eax,%eax,2), %eax
	leal	(%ecx,%eax,8), %eax
	movswl	16(%eax), %esi
	testl	%esi, %esi
	je	L1107
	movss	%xmm6, -240(%ebp)
	movss	%xmm3, -236(%ebp)
	.p2align 4
	.p2align 3
L1108:
	leal	(%esi,%esi,2), %esi
	movss	8(%eax), %xmm1
	movss	(%eax), %xmm2
	sall	$3, %esi
	movss	(%ecx,%esi), %xmm3
	movl	$0xbf800000, 16(%esp)
	movl	$0x00000000, 12(%esp)
	movl	$0xbf800000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movss	4(%eax), %xmm0
	movss	-236(%ebp), %xmm6
	subss	%xmm6, %xmm0
	subss	%xmm6, %xmm1
	movss	%xmm0, (%esp)
	movaps	%xmm3, %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movl	_yax_globalbunch, %edx
	addl	%edx, %edx
	movl	__ZL7yax_vsp.lto_priv.0(,%edx,4), %ecx
	leal	(%ecx,%esi), %eax
	movswl	16(%eax), %esi
	testl	%esi, %esi
	jne	L1108
	movss	-240(%ebp), %xmm6
L1107:
	movl	__ZL7yax_vsp.lto_priv.0+4(,%edx,4), %ecx
	movswl	16(%ecx), %eax
	testw	%ax, %ax
	je	L1110
	leal	(%eax,%eax,2), %eax
	leal	(%ecx,%eax,8), %eax
	movswl	16(%eax), %edx
	testl	%edx, %edx
	je	L1110
	movss	LC11, %xmm3
	movss	%xmm6, -240(%ebp)
	.p2align 4
	.p2align 3
L1111:
	leal	(%edx,%edx,2), %esi
	movss	4(%eax), %xmm1
	movss	(%eax), %xmm0
	movaps	%xmm3, %xmm4
	sall	$3, %esi
	movss	(%ecx,%esi), %xmm2
	movl	$0xbf800000, 16(%esp)
	addss	%xmm3, %xmm1
	movl	$0x00000000, 12(%esp)
	movl	$0xbf800000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	addss	8(%eax), %xmm4
	movss	%xmm3, -236(%ebp)
	movss	%xmm4, (%esp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movl	_yax_globalbunch, %eax
	movss	-236(%ebp), %xmm3
	movl	__ZL7yax_vsp.lto_priv.0+4(,%eax,8), %ecx
	leal	(%ecx,%esi), %eax
	movswl	16(%eax), %edx
	testl	%edx, %edx
	jne	L1111
	movss	-240(%ebp), %xmm6
L1110:
	movl	__ZL17viewportNodeCount.lto_priv.0, %eax
	movl	%ebx, _g_nodraw
	movswl	__ZL3vsp.lto_priv.0+24, %edi
	movss	LC104, %xmm2
	movl	%eax, -240(%ebp)
	.p2align 4
	.p2align 3
L1119:
	movl	%edi, %edx
	sall	$5, %edx
	movswl	__ZL3vsp.lto_priv.0+24(%edx), %eax
	movl	%eax, %ecx
	cmpl	-240(%ebp), %eax
	jl	L1114
	movss	__ZL3vsp.lto_priv.0+8(%edx), %xmm0
	movl	%eax, %ebx
	sall	$5, %ebx
	movaps	%xmm0, %xmm1
	subss	__ZL3vsp.lto_priv.0+4(%ebx), %xmm1
	leal	__ZL3vsp.lto_priv.0(%ebx), %esi
	movss	%xmm1, -236(%ebp)
	flds	-236(%ebp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fstps	-236(%ebp)
	comiss	-236(%ebp), %xmm2
	jbe	L1114
	movss	__ZL3vsp.lto_priv.0+16(%edx), %xmm1
	movaps	%xmm1, %xmm3
	subss	12(%esi), %xmm3
	movss	%xmm3, -236(%ebp)
	flds	-236(%ebp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fstps	-236(%ebp)
	comiss	-236(%ebp), %xmm2
	jbe	L1114
	movss	__ZL3vsp.lto_priv.0(%edx), %xmm4
	movss	__ZL3vsp.lto_priv.0(%ebx), %xmm3
	movswl	24(%esi), %ebx
	subss	__ZL3vsp.lto_priv.0+4(%edx), %xmm0
	movss	LC0, %xmm7
	subss	%xmm4, %xmm3
	movss	LC0, %xmm5
	movw	%bx, -244(%ebp)
	sall	$5, %ebx
	divss	%xmm3, %xmm7
	movss	__ZL3vsp.lto_priv.0(%ebx), %xmm3
	subss	%xmm4, %xmm3
	movss	8(%esi), %xmm4
	divss	%xmm3, %xmm5
	movaps	%xmm4, %xmm3
	subss	__ZL3vsp.lto_priv.0+4(%edx), %xmm3
	mulss	%xmm7, %xmm0
	mulss	%xmm5, %xmm3
	subss	%xmm3, %xmm0
	movss	%xmm0, -236(%ebp)
	flds	-236(%ebp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	movss	LC88, %xmm3
	fstps	-236(%ebp)
	comiss	-236(%ebp), %xmm3
	jbe	L1114
	movss	__ZL3vsp.lto_priv.0+12(%edx), %xmm3
	movss	16(%esi), %xmm0
	subss	%xmm3, %xmm1
	mulss	%xmm7, %xmm1
	movaps	%xmm0, %xmm7
	subss	%xmm3, %xmm7
	mulss	%xmm5, %xmm7
	subss	%xmm7, %xmm1
	movss	%xmm1, -236(%ebp)
	flds	-236(%ebp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	movss	LC88, %xmm5
	fstps	-236(%ebp)
	comiss	-236(%ebp), %xmm5
	ja	L1472
	.p2align 4
	.p2align 3
L1114:
	movl	%eax, %edi
L1113:
	testl	%edi, %edi
	jne	L1119
L1106:
	movzwl	_searchit, %eax
	movl	$0, _doeditorcheck
	testw	%ax, %ax
	jle	L1120
	movss	_ghalfx, %xmm3
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	movss	__ZL6ghoriz.lto_priv.0, %xmm5
	cvtsi2ssl	_searchx, %xmm0
	movss	_gctang, %xmm1
	movss	_gstang, %xmm4
	cvtsi2ssl	_searchy, %xmm2
	movss	_gshang, %xmm7
	subss	%xmm3, %xmm0
	subss	%xmm5, %xmm2
	mulss	%xmm6, %xmm0
	mulss	%xmm6, %xmm2
	movss	_gchang, %xmm6
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
	jne	L1121
	movl	$0x00000000, _fsearchz
L1121:
	movss	LC0, %xmm1
	movl	_r_usenewaspect, %eax
	testl	%eax, %eax
	je	L1122
	movss	_fxdim, %xmm1
	divss	_fydim, %xmm1
	divss	LC105, %xmm1
L1122:
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
	movss	LC106, %xmm0
	movl	%eax, %esi
	subss	%xmm5, %xmm2
	mulss	%xmm2, %xmm0
	mulss	LC107, %xmm0
	divss	%xmm5, %xmm0
	mulss	LC16, %xmm0
	movss	%xmm0, (%esp)
	call	_lrintf
	movl	_globalposz, %edx
	movss	_globalposx, %xmm0
	movl	$1, _hitallsprites
	movss	_globalposy, %xmm5
	movl	%edx, -224(%ebp)
	unpcklps	%xmm5, %xmm0
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
L1120:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	je	L1473
L1123:
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	xorl	%edi, %edi
	movw	%bx, _numbunches
	movw	%si, _numscans
	movw	%di, _maskwallcnt
	cmpl	$8, _yax_globallev
	je	L1124
	movl	_yax_globalcf, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	sete	%al
	sall	$8, %eax
	addl	_yax_globalbunch, %eax
	movswl	_headsectbunch(%eax,%eax), %ebx
	cmpl	$-1, %ebx
	je	L1125
	.p2align 4
	.p2align 3
L1127:
	testl	%ebx, %ebx
	js	L1126
	movw	%bx, _sectorborder
	call	_polymost_scansector.part.0
L1126:
	movl	_yax_globalcf, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	sete	%al
	sall	$12, %eax
	addl	%ebx, %eax
	movswl	_nextsectbunch(%eax,%eax), %ebx
	cmpl	$-1, %ebx
	jne	L1127
L1128:
	movswl	_numbunches, %edx
	movl	%edx, %eax
	cmpl	$8, _yax_globallev
	je	L1130
	testl	%edx, %edx
	jle	L1125
	leal	(%edx,%edx), %edi
	xorl	%ecx, %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L1131:
	movzwl	_bunchfirst(%ecx), %esi
	movl	%ecx, %ebx
	addl	$2, %ecx
	negl	%ebx
	movw	%si, _bunchfirst+16382(%ebx)
	movzwl	_bunchlast-2(%ecx), %esi
	movw	%si, _bunchlast+16382(%ebx)
	cmpl	%ecx, %edi
	jne	L1131
	movss	_grhalfxdown10, %xmm0
	movss	%xmm0, _grhalfxdown10x
	cmpb	$0, _inpreparemirror
	je	L1135
L1136:
	xorps	LC9, %xmm0
	xorl	%eax, %eax
	movl	%edx, -236(%ebp)
	movss	%xmm0, _grhalfxdown10x
	call	__ZL17polymost_drawallsi.lto_priv.0
	movzwl	_numbunches, %eax
	movl	-236(%ebp), %edx
	leal	-1(%eax), %ebx
	movswl	%bx, %edi
	movw	%bx, _numbunches
	movzwl	_bunchfirst(%edi,%edi), %ecx
	movzwl	_bunchlast(%edi,%edi), %eax
	movw	%cx, _bunchfirst
	movw	%ax, _bunchlast
L1138:
	testw	%bx, %bx
	jle	L1134
	movl	$8191, %eax
	movl	%edx, -244(%ebp)
	movswl	%bx, %edi
	subl	%edx, %eax
	movl	%ebx, %edx
	movl	%eax, -236(%ebp)
	.p2align 4
	.p2align 3
L1153:
	leal	3(%edi), %eax
	movl	%edx, -240(%ebp)
	xorl	%esi, %esi
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_ptempbuf, (%esp)
	call	_memset
	movb	$1, _ptempbuf
	cmpw	$1, -240(%ebp)
	je	L1139
	movl	$1, %ebx
	.p2align 4
	.p2align 3
L1143:
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__ZL19polymost_bunchfrontii.lto_priv.0
	testl	%eax, %eax
	js	L1141
	movb	$1, _ptempbuf(%ebx)
	jne	L1141
	movb	$1, _ptempbuf(%esi)
	movl	%ebx, %esi
L1141:
	addl	$1, %ebx
	cmpl	%ebx, %edi
	jne	L1143
L1139:
	xorl	%ebx, %ebx
	movl	$1, %eax
	jmp	L1149
	.p2align 4,,10
	.p2align 3
L1474:
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__ZL19polymost_bunchfrontii.lto_priv.0
	testl	%eax, %eax
	js	L1436
	movb	$1, _ptempbuf(%ebx)
	jne	L1436
	movb	$1, _ptempbuf(%esi)
	movl	%ebx, %esi
	movl	$1, %ebx
	cmpl	%ebx, %edi
	jle	L1148
	.p2align 5
	.p2align 4
	.p2align 3
L1475:
	movzbl	_ptempbuf(%ebx), %eax
L1149:
	testb	%al, %al
	je	L1474
L1436:
	addl	$1, %ebx
	cmpl	%ebx, %edi
	jg	L1475
L1148:
	cmpl	$8, _yax_globallev
	je	L1150
	movl	-244(%ebp), %eax
	testl	%eax, %eax
	jle	L1151
	movzwl	_bunchfirst(%esi,%esi), %edi
	movl	$8191, %ebx
	jmp	L1152
	.p2align 4,,10
	.p2align 3
L1476:
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__ZL19polymost_bunchfrontii.lto_priv.0
	testl	%eax, %eax
	je	L1150
	subl	$1, %ebx
	cmpl	%ebx, -236(%ebp)
	je	L1151
L1152:
	cmpw	%di, _bunchfirst(%ebx,%ebx)
	jne	L1476
L1150:
	movl	%esi, %eax
	call	__ZL17polymost_drawallsi.lto_priv.0
L1151:
	movzwl	_numbunches, %eax
	leal	-1(%eax), %edx
	movswl	%dx, %edi
	movw	%dx, _numbunches
	movzwl	_bunchfirst(%edi,%edi), %eax
	movw	%ax, _bunchfirst(%esi,%esi)
	movzwl	_bunchlast(%edi,%edi), %eax
	movw	%ax, _bunchlast(%esi,%esi)
	testw	%dx, %dx
	jg	L1153
L1134:
	movl	$2932, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$515, %eax
	je	L1154
	movl	$515, (%esp)
	call	*_glad_glDepthFunc
	movl	$515, %ecx
	movl	$2932, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1154:
	call	__ZL23polymost_identityrotmatv.lto_priv.0
L1437:
	call	_videoEndDrawing
	movl	_rendmode, %eax
	testl	%eax, %eax
	je	L1155
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
L1444:
	.cfi_restore_state
	movl	__ZL13oviewingrange.lto_priv.0, %eax
	cmpl	%eax, _viewingrange
	jne	L939
	jmp	L940
L1455:
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
	mulss	LC96, %xmm3
	mulss	LC85, %xmm0
	divss	%xmm3, %xmm0
	movss	%xmm0, (%esp)
	call	_atanf
	xorps	%xmm3, %xmm3
	movss	-244(%ebp), %xmm1
	fstps	-236(%ebp)
	movss	-236(%ebp), %xmm0
	mulss	LC97, %xmm0
	addss	LC98, %xmm0
	subss	LC99, %xmm0
	comiss	%xmm3, %xmm0
	jbe	L1030
	mulss	LC100, %xmm0
	movss	-248(%ebp), %xmm2
	addss	LC0, %xmm0
	divss	%xmm0, %xmm2
	movss	%xmm2, _gvrcorrection
	jmp	L1030
L1457:
	movl	_r_yshearing, %esi
	testl	%esi, %esi
	jne	L1042
	call	__ZL18get_projhack_ratiov.part.0.lto_priv.0
	movss	LC0, %xmm6
	fstps	-236(%ebp)
	divss	-236(%ebp), %xmm6
	jmp	L1044
L1036:
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
	ja	L1412
	sqrtss	%xmm1, %xmm1
	divss	%xmm1, %xmm0
	movss	LC0, %xmm1
	movss	%xmm0, _gshang
	mulss	%xmm0, %xmm0
	subss	%xmm0, %xmm1
	ucomiss	%xmm1, %xmm3
	ja	L1477
L1040:
	sqrtss	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	jmp	L1037
L1470:
	movl	_pr_shadows, %ebx
	movl	$0, _depth
	testl	%ebx, %ebx
	je	L965
	movl	_lightcount, %edx
	testl	%edx, %edx
	je	L965
	movl	_pr_shadowcount, %ecx
	testl	%ecx, %ecx
	jle	L965
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
	jle	L967
	movl	%eax, -284(%ebp)
	movl	%ecx, -288(%ebp)
	movl	%ebx, -292(%ebp)
	jmp	L1434
	.p2align 5
	.p2align 4,,10
	.p2align 3
L968:
	addl	$1, %edi
L1434:
	imull	$270, %edi, %eax
	testb	$1, _prlights+254(%eax)
	je	L968
	imull	$270, %edi, %eax
	leal	_prlights(%eax), %ebx
	cmpw	$0, _prlights+24(%eax)
	je	L970
	testb	$1, _prlights+38(%eax)
	je	L970
	movzbl	_prlights+254(%eax), %ecx
	testb	$4, %cl
	je	L970
	andl	$-5, %ecx
	addl	$1, %esi
	movb	%cl, _prlights+254(%eax)
	movl	%esi, 250(%ebx)
	cmpl	$2, _pr_verbosity
	jg	L972
L974:
	movl	%esi, %eax
L973:
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
	je	L975
	movl	$32823, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$32823, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L975:
	movss	LC84, %xmm5
	movss	%xmm5, 4(%esp)
	movss	LC85, %xmm5
	movss	%xmm5, (%esp)
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
	je	L976
	movl	$32823, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$32823, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L976:
	movl	$5889, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glPopMatrix
	call	*_glad_glPopAttrib
	movl	$0, 4(%esp)
	movl	$36160, (%esp)
	call	*_glad_glBindFramebufferEXT
	subl	$8, %esp
L970:
	addl	$1, -236(%ebp)
	movl	-236(%ebp), %eax
	cmpl	_lightcount, %eax
	jge	L1421
	addl	$1, %edi
	cmpl	_pr_shadowcount, %esi
	jl	L1434
L1421:
	movl	-284(%ebp), %eax
	movl	-288(%ebp), %ecx
	movl	-292(%ebp), %ebx
L967:
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
L965:
	movss	_horizang, %xmm0
	movss	LC86, %xmm1
	comiss	%xmm0, %xmm1
	jbe	L978
	addss	LC87, %xmm0
L978:
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
	je	L980
	testb	$4, 34(%eax)
	je	L980
L981:
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
	movss	-260(%ebp), %xmm5
	movss	%xmm5, (%esp)
	call	*_glad_glRotatef
	movss	LC88, %xmm0
	subl	$16, %esp
	movss	%xmm0, 8(%esp)
	movss	%xmm0, 4(%esp)
	movss	%xmm0, (%esp)
	call	*_glad_glScalef
	movss	-276(%ebp), %xmm2
	mulss	LC89, %xmm2
	movss	-268(%ebp), %xmm7
	movss	-272(%ebp), %xmm1
	subl	$12, %esp
	xorps	LC9, %xmm1
	movss	%xmm7, 8(%esp)
	movss	%xmm2, 4(%esp)
	movss	%xmm2, -272(%ebp)
	movss	%xmm1, (%esp)
	movss	%xmm1, -236(%ebp)
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
	movss	-260(%ebp), %xmm5
	movss	%xmm5, (%esp)
	call	*_glad_glRotatef
	movss	LC88, %xmm0
	subl	$16, %esp
	movss	%xmm0, 8(%esp)
	movss	%xmm0, 4(%esp)
	movss	%xmm0, (%esp)
	call	*_glad_glScalef
	movss	-268(%ebp), %xmm7
	subl	$12, %esp
	movss	%xmm7, 8(%esp)
	movss	-272(%ebp), %xmm2
	movss	%xmm2, 4(%esp)
	movss	-236(%ebp), %xmm1
	movss	%xmm1, (%esp)
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
	movswl	-184(%ebp), %eax
	testw	%ax, %ax
	js	L982
	movzwl	_numsectors, %edx
	cmpw	%dx, %ax
	jge	L982
	leal	-1(%edx), %ecx
	movw	%ax, -244(%ebp)
	movswl	%cx, %ecx
	jmp	L988
L980:
	mulss	__ZL12curskyangmul.lto_priv.0, %xmm0
	jmp	L981
L982:
	cmpl	$1, _pr_verbosity
	jg	L984
L1435:
	movzwl	_numsectors, %edx
	movswl	%dx, %ecx
	subl	$1, %ecx
	js	L987
	.p2align 6
	.p2align 4
	.p2align 3
L988:
	movl	_prsectors(,%ecx,4), %eax
	andb	$-3, 560(%eax)
	movl	_prsectors(,%ecx,4), %eax
	movl	$0x00000000, 516(%eax)
	movl	_prsectors(,%ecx,4), %eax
	movl	$0x00000000, 520(%eax)
	subl	$1, %ecx
	jnb	L988
L987:
	movswl	_numwalls, %eax
	subl	$1, %eax
	js	L989
	.p2align 5
	.p2align 4
	.p2align 3
L990:
	movl	_prwalls(,%eax,4), %ecx
	andb	$-3, 796(%ecx)
	subl	$1, %eax
	jnb	L990
L989:
	movzwl	_searchit, %eax
	cmpw	$2, %ax
	je	L1478
	testw	%ax, %ax
	jne	L992
	movl	_polymersearching, %eax
	testl	%eax, %eax
	jne	L1479
L992:
	movzwl	-244(%ebp), %eax
	testw	%ax, %ax
	js	L995
	cmpw	%dx, %ax
	jl	L1480
L995:
	movl	$1, _prcanbucket
	cmpw	$0, _editstatus
	je	L997
L1001:
	movl	$_rootmodelviewmatrix, _curmodelviewmatrix
	testw	%dx, %dx
	jle	L1005
L998:
	movswl	%dx, %esi
L1015:
	leal	-1(%esi), %ebx
	movswl	%bx, %ebx
	cmpl	$2, _pr_nullrender
	jg	L1006
	movl	%ebx, %eax
	call	_polymer_updatesector.part.0.isra.0
L1006:
	movl	%ebx, %eax
	xorl	%edx, %edx
	call	_polymer_drawsector.lto_priv.0
	movswl	_headspritesect-2(%esi,%esi), %eax
	testl	%eax, %eax
	js	L1007
	movl	_tsprite, %ecx
	movl	%ecx, -240(%ebp)
	movl	_sprite, %ecx
	cmpb	$0, _showinvisibility
	jne	L1423
	movl	_spritesortcnt, %ebx
	xorl	%edi, %edi
	movl	%ebx, -236(%ebp)
	.p2align 4
	.p2align 3
L1012:
	imull	$44, %eax, %edx
	addl	%ecx, %edx
	cmpw	$0, 12(%edx)
	js	L1011
	cmpb	$0, 20(%edx)
	je	L1011
	cmpb	$0, 21(%edx)
	je	L1011
	cmpl	$4095, -236(%ebp)
	jle	L1481
	.p2align 4
	.p2align 3
L1011:
	movswl	_nextspritesect(%eax,%eax), %eax
	testl	%eax, %eax
	jns	L1012
	movl	%edi, %eax
	movl	-236(%ebp), %ebx
	testb	%al, %al
	je	L1007
	movl	%ebx, _spritesortcnt
L1007:
	subl	$1, %esi
	jne	L1015
L1005:
	movswl	_numwalls, %ebx
	testw	%bx, %bx
	jle	L1016
L1017:
	leal	-1(%ebx), %esi
	movswl	%si, %eax
	call	_polymer_updatewall.lto_priv.0
	movswl	_wallsect-2(%ebx,%ebx), %eax
	movswl	%si, %edx
	call	_polymer_drawwall.lto_priv.0
	subl	$1, %ebx
	jne	L1017
L1016:
	call	_polymer_emptybuckets.lto_priv.0
	movl	-264(%ebp), %eax
	movl	%eax, _viewangle
	call	_videoEndDrawing
	jmp	L955
L1423:
	movl	%ecx, -236(%ebp)
	jmp	L1008
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1014:
	movswl	_nextspritesect(%eax,%eax), %eax
	testl	%eax, %eax
	js	L1007
L1008:
	imull	$44, %eax, %edx
	addl	-236(%ebp), %edx
	cmpb	$0, 20(%edx)
	je	L1014
	cmpb	$0, 21(%edx)
	je	L1014
	movl	_spritesortcnt, %ebx
	cmpl	$4095, %ebx
	jg	L1014
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
	jmp	L1014
L1481:
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
	jmp	L1011
L1130:
	movss	_grhalfxdown10, %xmm0
	movss	%xmm0, _grhalfxdown10x
	cmpb	$0, _inpreparemirror
	jne	L1482
L1135:
	movl	%eax, %ebx
	jmp	L1138
L1232:
	movaps	%xmm3, %xmm0
	xorl	%eax, %eax
	jmp	L1065
L1458:
	movl	$2932, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$515, %eax
	je	L1437
	movl	$515, (%esp)
	call	*_glad_glDepthFunc
	movl	$515, %ecx
	movl	$2932, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
	jmp	L1437
L938:
	movl	$-368140053, %eax
	imull	%ebx
	leal	(%edx,%ebx), %ecx
	sarl	$31, %ebx
	sarl	$5, %ecx
	subl	%ebx, %ecx
	movl	_globalvisibility2, %ebx
	movl	%ecx, _globalvisibility
	jmp	L933
L936:
	movl	$1100, 8(%esp)
	jmp	L1432
L1226:
	movl	$-1, %ebx
	jmp	L947
L1459:
	leal	-184(%ebp), %eax
	movl	%eax, -244(%ebp)
	leal	-216(%ebp), %eax
	movl	%eax, -252(%ebp)
	jmp	L1059
L997:
	movl	_pr_verbosity, %eax
	testl	%eax, %eax
	jle	L1001
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movswl	%dx, %ebx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	movswl	-244(%ebp), %ecx
	cmpl	%ebx, %ecx
	jnb	L1003
	cmpl	$6, %eax
	jle	L1001
	movl	-104(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-248(%ebp), %eax
	movl	%ecx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$LC91, 12(%esp)
	movl	$1223, 8(%esp)
	movl	$LC77, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movzwl	_numsectors, %edx
	jmp	L1001
L1482:
	testw	%dx, %dx
	jg	L1136
L1133:
	movb	$0, _inpreparemirror
	jmp	L1134
L984:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$6, %edx
	jle	L1435
	movl	%eax, 16(%esp)
	movl	$LC90, 12(%esp)
	movl	$1180, 8(%esp)
	movl	$LC77, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1435
L1479:
	movl	_globaloldoverridematerial, %eax
	movl	$0, _polymersearching
	movl	%eax, _overridematerial
	jmp	L992
L1472:
	movswl	26(%esi), %eax
	movss	%xmm4, __ZL3vsp.lto_priv.0+8(%edx)
	movss	%xmm0, __ZL3vsp.lto_priv.0+16(%edx)
	movl	$2047, %edx
	movw	%ax, __ZL3vsp.lto_priv.0+26(%ebx)
	movzwl	-244(%ebp), %ebx
	sall	$5, %eax
	movw	%dx, 26(%esi)
	movw	%bx, __ZL3vsp.lto_priv.0+24(%eax)
	movswl	__ZL3vsp.lto_priv.0+65528, %eax
	movw	%ax, 24(%esi)
	sall	$5, %eax
	movw	%cx, __ZL3vsp.lto_priv.0+26(%eax)
	movw	%cx, __ZL3vsp.lto_priv.0+65528
	jmp	L1113
L1164:
	movswl	_numbunches, %ecx
	movl	%ecx, -252(%ebp)
	movl	%ecx, %eax
	jmp	L1165
L1480:
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
	jge	L995
	movl	-248(%ebp), %eax
	cmpl	-152(%ebp), %eax
	jg	L1483
	movl	-248(%ebp), %eax
	cmpl	-104(%ebp), %eax
	jl	L995
	movl	%ebx, %eax
	call	_polymer_displayrooms.lto_priv.0
	movl	-264(%ebp), %eax
	movl	$_rootmodelviewmatrix, _curmodelviewmatrix
	movl	%eax, _viewangle
	call	_set_globalang
	movss	-240(%ebp), %xmm5
	movss	LC93, %xmm0
	movss	_fcosglobalang, %xmm1
	movss	_fviewingrange, %xmm2
	mulss	%xmm0, %xmm1
	mulss	_fsinglobalang, %xmm0
	movss	%xmm1, _gcosang
	mulss	%xmm2, %xmm1
	movss	%xmm0, _gsinang
	mulss	%xmm2, %xmm0
	mulss	%xmm5, %xmm1
	mulss	%xmm5, %xmm0
	movss	%xmm1, _gcosang2
	movss	%xmm0, _gsinang2
	cmpl	$2, _pr_verbosity
	jg	L1484
L1018:
	call	_videoEndDrawing
	jmp	L955
L1079:
	leal	0(,%eax,4), %ecx
	movss	-216(%ebp,%ecx), %xmm2
	jmp	L1083
L1450:
	movl	__ZL9mirrorsx2, %eax
	movl	%edx, %ecx
	addl	$1, %eax
	jmp	L1170
L1124:
	movzwl	_globalcursectnum, %eax
	testw	%ax, %ax
	js	L1129
	movw	%ax, _sectorborder
	call	_polymost_scansector.part.0
	jmp	L1128
L1473:
	call	__ZL21polymost_updaterotmatv.part.0.lto_priv.0
	jmp	L1123
L1478:
	movl	_polymersearching, %eax
	testl	%eax, %eax
	jne	L992
	movl	_overridematerial, %eax
	movl	$1, _polymersearching
	movl	$384, _overridematerial
	movl	%eax, _globaloldoverridematerial
	jmp	L992
L1231:
	xorl	%eax, %eax
	jmp	L1058
L1467:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L956
	movl	$LC76, 12(%esp)
	movl	$1109, 8(%esp)
	movl	$LC77, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L956
L1160:
	movswl	_numbunches, %ecx
	movl	%ecx, -252(%ebp)
	movl	%ecx, %eax
	jmp	L1222
L1449:
	movb	$0, _inpreparemirror
	jmp	L1219
L1166:
	cmpb	$0, _inpreparemirror
	jne	L1221
	jmp	L1219
L1003:
	cmpl	$6, %eax
	jle	L1001
	movl	-248(%ebp), %eax
	movl	%ecx, 16(%esp)
	movl	$LC92, 12(%esp)
	movl	%eax, 20(%esp)
	movl	$1225, 8(%esp)
	movl	$LC77, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movzwl	_numsectors, %edx
	jmp	L1001
L1483:
	movl	$1, _prcanbucket
	cmpw	$0, _editstatus
	je	L997
	movl	$_rootmodelviewmatrix, _curmodelviewmatrix
	jmp	L998
L1125:
	movss	_grhalfxdown10, %xmm0
	movss	%xmm0, _grhalfxdown10x
	cmpb	$0, _inpreparemirror
	jne	L1133
	jmp	L1134
L1245:
	movl	%edx, %ecx
	movl	$1, %eax
	jmp	L1170
L1129:
	movss	_grhalfxdown10, %xmm0
	movss	%xmm0, _grhalfxdown10x
	cmpb	$0, _inpreparemirror
	jne	L1133
	xorl	%eax, %eax
	xorl	%edx, %edx
	movl	%eax, %ebx
	jmp	L1138
L1484:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L1018
	movl	$LC94, 12(%esp)
	movl	$1268, 8(%esp)
	movl	$LC77, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1018
L1412:
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
	jmp	L1040
L1477:
	movss	%xmm1, (%esp)
	call	_sqrtf
	movl	_ydimen, %eax
	xorps	%xmm2, %xmm2
	xorps	%xmm0, %xmm0
	fstps	-236(%ebp)
	movss	-236(%ebp), %xmm1
	sarl	%eax
	cvtsi2ssl	%eax, %xmm2
	jmp	L1037
	.p2align 4,,10
	.p2align 3
L972:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$6, %eax
	jle	L974
	movl	%edi, 16(%esp)
	movl	$LC83, 12(%esp)
	movl	$6218, 8(%esp)
	movl	$LC77, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	250(%ebx), %eax
	jmp	L973
	.cfi_endproc
LFE78:
	.p2align 4
	.globl	_wallvisible
	.def	_wallvisible;	.scl	2;	.type	32;	.endef
_wallvisible:
LFB101:
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
LFE101:
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
	.globl	_r_drawpolyVertsBufferLength
	.data
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
	.globl	_r_parallaxskypanning
	.data
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
	.globl	_r_polymostDebug
	.align 4
_r_polymostDebug:
	.space 4
	.globl	_screenshot_dir
	.data
	.align 32
_screenshot_dir:
	.ascii "screenshots\0"
	.space 244
	.globl	_g_videoSaturation
	.align 4
_g_videoSaturation:
	.long	1065353216
	.globl	_r_borderless
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
	.globl	__ZL21win_togglecomposition.lto_priv.0
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
	.globl	_rootmodelviewmatrix
	.align 32
_rootmodelviewmatrix:
	.space 64
	.globl	_curskymodelviewmatrix
	.align 4
_curskymodelviewmatrix:
	.space 4
.lcomm _rootskymodelviewmatrix,64,32
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
.lcomm __ZL9mirrorsx2,4,4
.lcomm __ZL9mirrorsx1,4,4
	.globl	_numbunches
	.bss
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
	.globl	_qglobalhoriz
	.align 4
_qglobalhoriz:
	.space 4
	.globl	__ZL15beforedrawrooms.lto_priv.0
	.data
	.align 4
__ZL15beforedrawrooms.lto_priv.0:
	.long	1
	.globl	_fsinglobalang
	.bss
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
	.globl	__ZZ34windowsGetSystemKeyboardLayoutNamevE16systemLayoutName.lto_priv.0
	.bss
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
LC110:
	.ascii "r_texfilter\0"
	.align 4
LC111:
	.ascii "changes the texture filtering settings (overrides r_useindexedcolortextures)\0"
LC112:
	.ascii "r_polymostDebug\0"
	.align 4
LC113:
	.ascii "Set the verbosity of Polymost GL debug messages\0"
LC114:
	.ascii "r_detailmapping\0"
LC115:
	.ascii "enable/disable detail mapping\0"
LC116:
	.ascii "r_glowmapping\0"
LC117:
	.ascii "enable/disable glow mapping\0"
LC118:
	.ascii "r_memcache\0"
	.align 4
LC119:
	.ascii "enable/disable texture cache memory cache\0"
LC120:
	.ascii "r_polygonmode\0"
LC121:
	.ascii "debugging feature\0"
LC122:
	.ascii "r_texcache\0"
	.align 4
LC123:
	.ascii "enable/disable OpenGL compressed texture cache\0"
LC124:
	.ascii "r_animsmoothing\0"
	.align 4
LC125:
	.ascii "enable/disable model animation smoothing\0"
LC126:
	.ascii "r_anisotropy\0"
	.align 4
LC127:
	.ascii "changes the OpenGL texture anisotropy setting (requires r_useindexedcolortextures to be off)\0"
LC128:
	.ascii "r_downsize\0"
	.align 4
LC129:
	.ascii "controls downsizing factor (quality) for hires textures\0"
LC130:
	.ascii "r_finishbeforeswap\0"
	.align 4
LC131:
	.ascii "run glFinish() before swapping when 'r_glfinish' is 1 and when not using KMT vsync\0"
LC132:
	.ascii "r_fullbrights\0"
	.align 4
LC133:
	.ascii "enable/disable fullbright textures\0"
LC134:
	.ascii "r_glfinish\0"
	.align 4
LC135:
	.ascii "run glFinish() after swapping buffers when not using KMT vsync\0"
LC136:
	.ascii "r_models\0"
	.align 4
LC137:
	.ascii "enable/disable model rendering\0"
LC138:
	.ascii "r_nofog\0"
LC139:
	.ascii "enable/disable GL fog\0"
LC140:
	.ascii "r_npotwallmode\0"
	.align 4
LC141:
	.ascii "enable/disable emulation of walls with non-power-of-two height textures (Polymost, r_hightile 0)\0"
LC142:
	.ascii "r_parallaxskyclamping\0"
	.align 4
LC143:
	.ascii "enable/disable parallaxed floor/ceiling sky texture clamping\0"
LC144:
	.ascii "r_parallaxskypanning\0"
	.align 4
LC145:
	.ascii "enable/disable parallaxed floor/ceiling panning when drawing a parallaxing sky\0"
LC146:
	.ascii "r_projectionhack\0"
	.align 4
LC147:
	.ascii "enable/disable projection hack\0"
LC148:
	.ascii "r_shadeinterpolate\0"
	.align 4
LC149:
	.ascii "enable/disable shade interpolation\0"
LC150:
	.ascii "r_shadescale\0"
LC151:
	.ascii "multiplier for shading\0"
LC152:
	.ascii "r_shadescale_unbounded\0"
	.align 4
LC153:
	.ascii "enable/disable allowance of complete blackness\0"
LC154:
	.ascii "r_spritedepth\0"
LC155:
	.ascii "depth offset for sprites\0"
LC156:
	.ascii "r_spritedepthmul\0"
	.align 4
LC157:
	.ascii "depth offset multiplier for sprites\0"
LC158:
	.ascii "r_texcompr\0"
	.align 4
LC159:
	.ascii "enable/disable OpenGL texture compression: 0: off  1: hightile only  2: ART and hightile\0"
LC160:
	.ascii "r_texturemaxsize\0"
	.align 4
LC161:
	.ascii "changes the maximum OpenGL texture size limit\0"
LC162:
	.ascii "r_texturemiplevel\0"
	.align 4
LC163:
	.ascii "changes the highest OpenGL mipmap level used\0"
LC164:
	.ascii "r_useindexedcolortextures\0"
	.align 4
LC165:
	.ascii "enable/disable indexed color texture rendering (disabled by r_texfilter, disables r_anisotropy)\0"
LC166:
	.ascii "r_usenewshading\0"
	.align 4
LC167:
	.ascii "visibility/fog code: 0: orig. Polymost   1: 07/2011   2: linear 12/2012   3: no neg. start 03/2014   4: base constant on shade table 11/2017\0"
LC168:
	.ascii "r_usesamplerobjects\0"
	.align 4
LC169:
	.ascii "enable/disable OpenGL sampler objects\0"
LC170:
	.ascii "r_usetileshades\0"
	.align 4
LC171:
	.ascii "enable/disable apply shade tables to art tiles\0"
LC172:
	.ascii "r_vsync\0"
	.align 4
LC173:
	.ascii "VSync mode:\12  -1: adaptive (video driver)\12   0: disabled\12   1: enabled (video driver)\12   2: KMT\12\0"
LC174:
	.ascii "r_vertexarrays\0"
	.align 4
LC175:
	.ascii "enable/disable using vertex arrays when drawing models\0"
LC176:
	.ascii "r_yshearing\0"
LC177:
	.ascii "enable/disable y-shearing\0"
LC178:
	.ascii "r_flatsky\0"
LC179:
	.ascii "enable/disable flat skies\0"
LC180:
	.ascii "r_skyzbufferhack\0"
	.align 4
LC181:
	.ascii "enable/disable polymost sky z-buffer hack\0"
LC182:
	.ascii "r_vbocount\0"
	.align 4
LC183:
	.ascii "sets the number of Vertex Buffer Objects to use when drawing models\0"
LC184:
	.ascii "r_persistentStreamBuffer\0"
	.align 4
LC185:
	.ascii "enable/disable persistent stream buffering (requires renderer restart)\0"
LC186:
	.ascii "r_drawpolyVertsBufferLength\0"
	.align 4
LC187:
	.ascii "sets the size of the vertex buffer for polymost's streaming VBO rendering (requires renderer restart)\0"
LC188:
	.ascii "r_pr_artmapping\0"
LC189:
	.ascii "enable/disable art mapping\0"
LC190:
	.ascii "r_pr_ati_fboworkaround\0"
	.align 4
LC191:
	.ascii "enable this to workaround an ATI driver bug that causes sprite shadows to be square - you need to restart the renderer for it to take effect\0"
LC192:
	.ascii "r_pr_ati_nodepthoffset\0"
	.align 4
LC193:
	.ascii "enable this to workaround an ATI driver bug that causes sprite drawing to freeze the game on Radeon X1x00 hardware - you need to restart the renderer for it to take effect\0"
LC194:
	.ascii "r_pr_billboardingmode\0"
	.align 4
LC195:
	.ascii "face sprite display method. 0: classic mode; 1: polymost mode\0"
LC196:
	.ascii "r_pr_buckets\0"
	.align 4
LC197:
	.ascii "controls batching of primitives. 0: no batching. 1: buckets of materials.\0"
LC198:
	.ascii "r_pr_constrained\0"
	.align 4
LC199:
	.ascii "tessellation mode. 0: normal. 1: constrained Delaunay triangulation.\0"
LC200:
	.ascii "r_pr_customaspect\0"
	.align 4
LC201:
	.ascii "if non-zero, forces the 3D view aspect ratio\0"
LC202:
	.ascii "r_pr_gpusmoothing\0"
	.align 4
LC203:
	.ascii "toggles model animation interpolation\0"
LC204:
	.ascii "r_pr_highpalookups\0"
LC205:
	.ascii "enable/disable highpalookups\0"
LC206:
	.ascii "r_pr_hudangadd\0"
	.align 4
LC207:
	.ascii "overriden HUD angadd; see r_pr_overridehud\0"
LC208:
	.ascii "r_pr_hudfov\0"
	.align 4
LC209:
	.ascii "overriden HUD fov; see r_pr_overridehud\0"
LC210:
	.ascii "r_pr_hudxadd\0"
	.align 4
LC211:
	.ascii "overriden HUD xadd; see r_pr_overridehud\0"
LC212:
	.ascii "r_pr_hudyadd\0"
	.align 4
LC213:
	.ascii "overriden HUD yadd; see r_pr_overridehud\0"
LC214:
	.ascii "r_pr_hudzadd\0"
	.align 4
LC215:
	.ascii "overriden HUD zadd; see r_pr_overridehud\0"
LC216:
	.ascii "r_pr_lighting\0"
	.align 4
LC217:
	.ascii "enable/disable dynamic lights - restarts renderer\0"
LC218:
	.ascii "r_pr_maxlightpasses\0"
	.align 4
LC219:
	.ascii "the maximal amount of lights a single object can by affected by\0"
LC220:
	.ascii "r_pr_maxlightpriority\0"
	.align 4
LC221:
	.ascii "lowering that value removes less meaningful lights from the scene\0"
LC222:
	.ascii "r_pr_normalmapping\0"
	.align 4
LC223:
	.ascii "enable/disable virtual displacement mapping\0"
LC224:
	.ascii "r_pr_nullrender\0"
	.align 4
LC225:
	.ascii "disable all draws when enabled, 2: disables updates too\0"
LC226:
	.ascii "r_pr_overridehud\0"
	.align 4
LC227:
	.ascii "overrides hud model parameters with values from the pr_hud* cvars; use it to fine-tune DEF tokens\0"
LC228:
	.ascii "r_pr_overridemodelscale\0"
	.align 4
LC229:
	.ascii "overrides model scale if non-zero; use it to fine-tune DEF tokens\0"
LC230:
	.ascii "r_pr_overrideparallax\0"
	.align 4
LC231:
	.ascii "overrides parallax mapping scale and bias values with values from the pr_parallaxscale and pr_parallaxbias cvars; use it to fine-tune DEF tokens\0"
LC232:
	.ascii "r_pr_overridespecular\0"
	.align 4
LC233:
	.ascii "overrides specular material power and factor values with values from the pr_specularpower and pr_specularfactor cvars; use it to fine-tune DEF tokens\0"
LC234:
	.ascii "r_pr_parallaxbias\0"
	.align 4
LC235:
	.ascii "overriden parallax mapping offset bias\0"
LC236:
	.ascii "r_pr_parallaxscale\0"
	.align 4
LC237:
	.ascii "overriden parallax mapping offset scale\0"
LC238:
	.ascii "r_pr_shadowcount\0"
	.align 4
LC239:
	.ascii "maximal amount of shadow emitting lights on screen - you need to restart the renderer for it to take effect\0"
LC240:
	.ascii "r_pr_shadowdetail\0"
	.align 4
LC241:
	.ascii "sets the shadow map resolution - you need to restart the renderer for it to take effect\0"
LC242:
	.ascii "r_pr_shadowfiltering\0"
	.align 4
LC243:
	.ascii "enable/disable shadow edges filtering - you need to restart the renderer for it to take effect\0"
LC244:
	.ascii "r_pr_shadows\0"
	.align 4
LC245:
	.ascii "enable/disable dynamic shadows\0"
LC246:
	.ascii "r_pr_specularfactor\0"
	.align 4
LC247:
	.ascii "overriden specular material factor\0"
LC248:
	.ascii "r_pr_specularmapping\0"
	.align 4
LC249:
	.ascii "enable/disable specular mapping\0"
LC250:
	.ascii "r_pr_specularpower\0"
	.align 4
LC251:
	.ascii "overriden specular material power\0"
LC252:
	.ascii "r_pr_verbosity\0"
	.align 4
LC253:
	.ascii "verbosity level of the polymer renderer\0"
LC254:
	.ascii "r_pr_wireframe\0"
LC255:
	.ascii "toggles wireframe mode\0"
	.data
	.align 32
__ZZ21polymost_initosdfuncsvE14cvars_polymost:
	.long	LC110
	.long	LC111
	.long	_gltexfiltermode
	.long	5634
	.long	0
	.long	5
	.long	LC112
	.long	LC113
	.long	_r_polymostDebug
	.long	2
	.long	0
	.long	3
	.long	LC114
	.long	LC115
	.long	_r_detailmapping
	.long	8
	.long	0
	.long	1
	.long	LC116
	.long	LC117
	.long	_r_glowmapping
	.long	8
	.long	0
	.long	1
	.long	LC118
	.long	LC119
	.long	_glusememcache
	.long	8
	.long	0
	.long	1
	.long	LC120
	.long	LC121
	.long	_r_polygonmode
	.long	258
	.long	0
	.long	3
	.long	LC122
	.long	LC123
	.long	_glusetexcache
	.long	2
	.long	0
	.long	2
	.long	LC124
	.long	LC125
	.long	_r_animsmoothing
	.long	8
	.long	0
	.long	1
	.long	LC126
	.long	LC127
	.long	_glanisotropy
	.long	1538
	.long	1
	.long	16
	.long	LC128
	.long	LC129
	.long	_r_downsize
	.long	514
	.long	0
	.long	5
	.long	LC130
	.long	LC131
	.long	_r_finishbeforeswap
	.long	8
	.long	0
	.long	1
	.long	LC132
	.long	LC133
	.long	_r_fullbrights
	.long	8
	.long	0
	.long	1
	.long	LC134
	.long	LC135
	.long	_r_glfinish
	.long	8
	.long	0
	.long	1
	.long	LC136
	.long	LC137
	.long	_usemodels
	.long	8
	.long	0
	.long	1
	.long	LC138
	.long	LC139
	.long	_nofog
	.long	8
	.long	0
	.long	1
	.long	LC140
	.long	LC141
	.long	_r_npotwallmode
	.long	258
	.long	0
	.long	2
	.long	LC142
	.long	LC143
	.long	_r_parallaxskyclamping
	.long	8
	.long	0
	.long	1
	.long	LC144
	.long	LC145
	.long	_r_parallaxskypanning
	.long	8
	.long	0
	.long	1
	.long	LC146
	.long	LC147
	.long	_glprojectionhacks
	.long	2
	.long	0
	.long	2
	.long	LC148
	.long	LC149
	.long	_r_shadeinterpolate
	.long	8
	.long	0
	.long	1
	.long	LC150
	.long	LC151
	.long	_shadescale
	.long	1
	.long	0
	.long	10
	.long	LC152
	.long	LC153
	.long	_shadescale_unbounded
	.long	8
	.long	0
	.long	1
	.long	LC154
	.long	LC155
	.long	_r_spritedepth
	.long	257
	.long	1
	.long	10
	.long	LC156
	.long	LC157
	.long	_r_spritedepthmul
	.long	257
	.long	0
	.long	1
	.long	LC158
	.long	LC159
	.long	_glusetexcompr
	.long	2
	.long	0
	.long	2
	.long	LC160
	.long	LC161
	.long	_gltexmaxsize
	.long	258
	.long	0
	.long	4096
	.long	LC162
	.long	LC163
	.long	_gltexmiplevel
	.long	2
	.long	0
	.long	6
	.long	LC164
	.long	LC165
	.long	_r_useindexedcolortextures
	.long	5128
	.long	0
	.long	1
	.long	LC166
	.long	LC167
	.long	_r_usenewshading
	.long	514
	.long	0
	.long	4
	.long	LC168
	.long	LC169
	.long	_r_usesamplerobjects
	.long	5640
	.long	0
	.long	1
	.long	LC170
	.long	LC171
	.long	_r_usetileshades
	.long	8
	.long	0
	.long	1
	.long	LC172
	.long	LC173
	.long	_vsync
	.long	514
	.long	-1
	.long	2
	.long	LC174
	.long	LC175
	.long	_r_vertexarrays
	.long	8
	.long	0
	.long	1
	.long	LC176
	.long	LC177
	.long	_r_yshearing
	.long	8
	.long	0
	.long	1
	.long	LC178
	.long	LC179
	.long	_r_flatsky
	.long	8
	.long	0
	.long	1
	.long	LC180
	.long	LC181
	.long	_r_skyzbufferhack
	.long	8
	.long	0
	.long	1
	.long	LC182
	.long	LC183
	.long	_r_vbocount
	.long	2
	.long	1
	.long	256
	.long	LC184
	.long	LC185
	.long	_r_persistentStreamBuffer
	.long	1032
	.long	0
	.long	1
	.long	LC186
	.long	LC187
	.long	_r_drawpolyVertsBufferLength
	.long	2
	.long	8
	.long	1000000
	.long	LC188
	.long	LC189
	.long	_pr_artmapping
	.long	4104
	.long	0
	.long	1
	.long	LC190
	.long	LC191
	.long	_pr_ati_fboworkaround
	.long	264
	.long	0
	.long	1
	.long	LC192
	.long	LC193
	.long	_pr_ati_nodepthoffset
	.long	264
	.long	0
	.long	1
	.long	LC194
	.long	LC195
	.long	_pr_billboardingmode
	.long	8
	.long	0
	.long	1
	.long	LC196
	.long	LC197
	.long	_pr_buckets
	.long	1288
	.long	0
	.long	1
	.long	LC198
	.long	LC199
	.long	_r_pr_constrained
	.long	1032
	.long	0
	.long	1
	.long	LC200
	.long	LC201
	.long	_pr_customaspect
	.long	32
	.long	0
	.long	3
	.long	LC202
	.long	LC203
	.long	_pr_gpusmoothing
	.long	8
	.long	0
	.long	1
	.long	LC204
	.long	LC205
	.long	_pr_highpalookups
	.long	8
	.long	0
	.long	1
	.long	LC206
	.long	LC207
	.long	_pr_hudangadd
	.long	258
	.long	-1024
	.long	1024
	.long	LC208
	.long	LC209
	.long	_pr_hudfov
	.long	258
	.long	0
	.long	1023
	.long	LC210
	.long	LC211
	.long	_pr_hudxadd
	.long	257
	.long	-100
	.long	100
	.long	LC212
	.long	LC213
	.long	_pr_hudyadd
	.long	257
	.long	-100
	.long	100
	.long	LC214
	.long	LC215
	.long	_pr_hudzadd
	.long	257
	.long	-100
	.long	100
	.long	LC216
	.long	LC217
	.long	_pr_lighting
	.long	1026
	.long	0
	.long	2
	.long	LC218
	.long	LC219
	.long	_r_pr_maxlightpasses
	.long	514
	.long	0
	.long	32
	.long	LC220
	.long	LC221
	.long	_pr_maxlightpriority
	.long	2
	.long	0
	.long	6
	.long	LC222
	.long	LC223
	.long	_pr_normalmapping
	.long	8
	.long	0
	.long	1
	.long	LC224
	.long	LC225
	.long	_pr_nullrender
	.long	258
	.long	0
	.long	3
	.long	LC226
	.long	LC227
	.long	_pr_overridehud
	.long	264
	.long	0
	.long	1
	.long	LC228
	.long	LC229
	.long	_pr_overridemodelscale
	.long	257
	.long	0
	.long	500
	.long	LC230
	.long	LC231
	.long	_pr_overrideparallax
	.long	264
	.long	0
	.long	1
	.long	LC232
	.long	LC233
	.long	_pr_overridespecular
	.long	264
	.long	0
	.long	1
	.long	LC234
	.long	LC235
	.long	_pr_parallaxbias
	.long	257
	.long	-10
	.long	10
	.long	LC236
	.long	LC237
	.long	_pr_parallaxscale
	.long	257
	.long	-10
	.long	10
	.long	LC238
	.long	LC239
	.long	_pr_shadowcount
	.long	1026
	.long	0
	.long	64
	.long	LC240
	.long	LC241
	.long	_pr_shadowdetail
	.long	1026
	.long	0
	.long	5
	.long	LC242
	.long	LC243
	.long	_pr_shadowfiltering
	.long	1032
	.long	0
	.long	1
	.long	LC244
	.long	LC245
	.long	_pr_shadows
	.long	8
	.long	0
	.long	1
	.long	LC246
	.long	LC247
	.long	_pr_specularfactor
	.long	257
	.long	-10
	.long	1000
	.long	LC248
	.long	LC249
	.long	_pr_specularmapping
	.long	8
	.long	0
	.long	1
	.long	LC250
	.long	LC251
	.long	_pr_specularpower
	.long	257
	.long	-10
	.long	1000
	.long	LC252
	.long	LC253
	.long	_pr_verbosity
	.long	2
	.long	0
	.long	3
	.long	LC254
	.long	LC255
	.long	_pr_wireframe
	.long	264
	.long	0
	.long	1
	.section .rdata,"dr"
LC256:
	.ascii "r_displayindex\0"
LC257:
	.ascii "index of output display\0"
	.data
	.align 4
__ZZ14baselayer_initE12displayindex:
	.long	LC256
	.long	LC257
	.long	_r_displayindex
	.long	514
	.long	0
	.long	8
	.section .rdata,"dr"
LC258:
	.ascii "lz4compressionlevel\0"
	.align 4
LC259:
	.ascii "adjust LZ4 compression level used for savegames\0"
LC260:
	.ascii "r_borderless\0"
	.align 4
LC261:
	.ascii "borderless windowed mode: 0: never  1: always  2: if resolution matches desktop\0"
LC262:
	.ascii "r_usenewaspect\0"
	.align 4
LC263:
	.ascii "enable/disable new screen aspect ratio determination code\0"
LC264:
	.ascii "r_screenaspect\0"
	.align 4
LC265:
	.ascii "if using r_usenewaspect and in fullscreen, screen aspect ratio in the form XXYY, e.g. 1609 for 16:9\0"
LC266:
	.ascii "r_fpgrouscan\0"
	.align 4
LC267:
	.ascii "use floating-point numbers for slope rendering\0"
LC268:
	.ascii "r_hightile\0"
	.align 4
LC269:
	.ascii "enable/disable hightile texture rendering\0"
LC270:
	.ascii "r_maxspritesonscreen\0"
	.align 4
LC271:
	.ascii "maximum number of sprites to draw per frame\0"
LC272:
	.ascii "r_novoxmips\0"
	.align 4
LC273:
	.ascii "turn off/on the use of mipmaps when rendering 8-bit voxels\0"
LC274:
	.ascii "r_rotatespriteinterp\0"
	.align 4
LC275:
	.ascii "interpolate repeated rotatesprite calls\0"
LC276:
	.ascii "r_voxels\0"
	.align 4
LC277:
	.ascii "enable/disable automatic sprite->voxel rendering\0"
LC278:
	.ascii "r_maxfps\0"
LC279:
	.ascii "limit the frame rate\0"
LC280:
	.ascii "r_tror_nomaskpass\0"
	.align 4
LC281:
	.ascii "enable/disable additional pass in TROR software rendering\0"
LC282:
	.ascii "vid_gamma\0"
LC283:
	.ascii "gamma/brightness correction\0"
LC284:
	.ascii "vid_contrast\0"
LC285:
	.ascii "contrast correction\0"
LC286:
	.ascii "vid_saturation\0"
LC287:
	.ascii "saturation correction\0"
LC288:
	.ascii "screenshot_dir\0"
LC289:
	.ascii "Screenshot save path\0"
	.data
	.align 32
__ZZ14baselayer_initE12cvars_engine:
	.long	LC258
	.long	LC259
	.long	_lz4CompressionLevel
	.long	2
	.long	1
	.long	32
	.long	LC260
	.long	LC261
	.long	_r_borderless
	.long	1026
	.long	0
	.long	2
	.long	LC262
	.long	LC263
	.long	_r_usenewaspect
	.long	8
	.long	0
	.long	1
	.long	LC264
	.long	LC265
	.long	_r_screenxy
	.long	260
	.long	0
	.long	9999
	.long	LC266
	.long	LC267
	.long	_r_fpgrouscan
	.long	8
	.long	0
	.long	1
	.long	LC268
	.long	LC269
	.long	_usehightile
	.long	8
	.long	0
	.long	1
	.long	LC270
	.long	LC271
	.long	_maxspritesonscreen
	.long	2
	.long	0
	.long	4096
	.long	LC272
	.long	LC273
	.long	_novoxmips
	.long	8
	.long	0
	.long	1
	.long	LC274
	.long	LC275
	.long	_r_rotatespriteinterp
	.long	8
	.long	0
	.long	1
	.long	LC276
	.long	LC277
	.long	_usevoxels
	.long	8
	.long	0
	.long	1
	.long	LC278
	.long	LC279
	.long	_r_maxfps
	.long	514
	.long	-2
	.long	1000
	.long	LC280
	.long	LC281
	.long	_r_tror_nomaskpass
	.long	8
	.long	0
	.long	1
	.long	LC282
	.long	LC283
	.long	_g_videoGamma
	.long	513
	.long	0
	.long	2
	.long	LC284
	.long	LC285
	.long	_g_videoContrast
	.long	513
	.long	0
	.long	2
	.long	LC286
	.long	LC287
	.long	_g_videoSaturation
	.long	513
	.long	0
	.long	2
	.long	LC288
	.long	LC289
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
LC290:
	.ascii "Server 2008\0"
LC291:
	.ascii "Server 2008 R2\0"
LC292:
	.ascii "Server 2012\0"
LC293:
	.ascii "Server 2012 R2\0"
	.align 4
__ZZL19windowsPrintVersionvE6server:
	.long	LC290
	.long	LC291
	.long	LC292
	.long	LC293
LC294:
	.ascii "Vista\0"
LC295:
	.ascii "7\0"
LC296:
	.ascii "8\0"
LC297:
	.ascii "8.1\0"
	.align 4
__ZZL19windowsPrintVersionvE6client:
	.long	LC294
	.long	LC295
	.long	LC296
	.long	LC297
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
LC298:
	.ascii "win_togglecomposition\0"
	.align 4
LC299:
	.ascii "disables Windows Vista/7 DWM composition\0"
LC300:
	.ascii "win_boostpriority\0"
	.align 4
LC301:
	.ascii "Windows process priority class:\12   0: do not alter process priority\12   1: ABOVE NORMAL when game has focus, IDLE when interacting with other programs   2: HIGH when game has focus, BELOW NORMAL when interacting with other programs\12\0"
LC302:
	.ascii "win_performancemode\0"
	.align 4
LC303:
	.ascii "Windows performance mode:\12   0: do not alter performance mode\12   1: use HIGH PERFORMANCE power plan when game has focus\0"
	.data
	.align 32
__ZZ19windowsPlatformInitvE9cvars_win:
	.long	LC298
	.long	LC299
	.long	__ZL21win_togglecomposition.lto_priv.0
	.long	8
	.long	0
	.long	1
	.long	LC300
	.long	LC301
	.long	_win_boostpriority
	.long	2
	.long	0
	.long	2
	.long	LC302
	.long	LC303
	.long	__ZL19win_performancemode.lto_priv.0
	.long	8
	.long	0
	.long	1
	.section .rdata,"dr"
LC304:
	.ascii "win_systemtimermode\0"
	.align 4
LC305:
	.ascii "Windows timer interrupt resolution:\12   0: 1.0ms\12   1: 0.5ms low-latency\12This option has no effect when running on battery power.\0"
	.data
	.align 4
__ZZ19windowsPlatformInitvE14win_timer_cvar:
	.long	LC304
	.long	LC305
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
	.globl	_apptitle
	.data
	.align 32
_apptitle:
	.ascii "Build Engine\0"
	.space 243
	.globl	_lockcount
	.bss
	.align 4
_lockcount:
	.space 4
	.globl	_novideo
_novideo:
	.space 1
.lcomm __ZL12m_initprintf,4,4
	.globl	_crctab16
	.align 32
_crctab16:
	.space 1024
.lcomm __ZL14spritesmooth_s,166400,32
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
	.long	_tabledivide64.lto_priv.8
.lcomm _tailspritefree,2,2
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
	.globl	_pr_fov
	.section .rdata,"dr"
	.align 4
_pr_fov:
	.long	512
	.globl	_numframes
	.bss
	.align 4
_numframes:
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
	.globl	_fglobalposz
	.bss
	.align 4
_fglobalposz:
	.space 4
	.globl	_fglobalposy
	.align 4
_fglobalposy:
	.space 4
	.globl	_fglobalposx
	.align 4
_fglobalposx:
	.space 4
	.globl	_gsinang
	.align 4
_gsinang:
	.space 4
	.globl	_gcosang
	.align 4
_gcosang:
	.space 4
.lcomm _pr_hudangadd,4,4
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
	.section .rdata,"dr"
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
LC73:
	.long	1413754136
	.long	1074340347
	.align 4
LC74:
	.long	981467136
	.set	LC75,LC9
	.align 4
LC78:
	.long	950079408
	.align 4
LC79:
	.long	1043595264
	.align 4
LC81:
	.long	1120403456
	.align 4
LC84:
	.long	1106247680
	.align 4
LC85:
	.long	1084227584
	.align 4
LC86:
	.long	-1020002304
	.align 4
LC87:
	.long	1135869952
	.align 4
LC88:
	.long	981668463
	.align 4
LC89:
	.long	1031798784
	.align 4
LC93:
	.long	914358272
	.align 4
LC96:
	.long	1082130432
	.align 4
LC97:
	.long	1059256707
	.align 4
LC98:
	.long	1059248215
	.align 4
LC99:
	.long	1064514355
	.align 4
LC100:
	.long	1075838976
	.align 4
LC101:
	.long	922746880
	.align 4
LC102:
	.long	799014912
	.align 4
LC103:
	.long	855638016
	.align 4
LC104:
	.long	1036831949
	.align 4
LC105:
	.long	1068149419
	.align 4
LC106:
	.long	1098907648
	.align 4
LC107:
	.long	1061158912
	.align 4
LC108:
	.long	-1033556256
	.def	___udivdi3;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_tabledivide64.lto_priv.1;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_dorotspr_handle_bit2;	.scl	2;	.type	32;	.endef
	.def	_setupvlineasm;	.scl	2;	.type	32;	.endef
	.def	_vlineasm4;	.scl	2;	.type	32;	.endef
	.def	__Z16timerUpdateClockv;	.scl	2;	.type	32;	.endef
	.def	__Z12tileLoadHighi;	.scl	2;	.type	32;	.endef
	.def	_setupqrhlineasm4;	.scl	2;	.type	32;	.endef
	.def	_rhlineasm4;	.scl	2;	.type	32;	.endef
	.def	_qrhlineasm4;	.scl	2;	.type	32;	.endef
	.def	_rmhlineasm4;	.scl	2;	.type	32;	.endef
	.def	_tsetupspritevline;	.scl	2;	.type	32;	.endef
	.def	_fixtransluscence;	.scl	2;	.type	32;	.endef
	.def	_settransreverse;	.scl	2;	.type	32;	.endef
	.def	_tspritevline;	.scl	2;	.type	32;	.endef
	.def	_tileLoad;	.scl	2;	.type	32;	.endef
	.def	_settransnormal;	.scl	2;	.type	32;	.endef
	.def	_setuprhlineasm4;	.scl	2;	.type	32;	.endef
	.def	_setuprmhlineasm4;	.scl	2;	.type	32;	.endef
	.def	__Z26buildgl_outputDebugMessagehPKcz.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z19buildgl_setViewportiiii;	.scl	2;	.type	32;	.endef
	.def	__Z17polymost_setClampc;	.scl	2;	.type	32;	.endef
	.def	__Z22polymost_setVisibilityf;	.scl	2;	.type	32;	.endef
	.def	_inthash_find;	.scl	2;	.type	32;	.endef
	.def	_inthash_add;	.scl	2;	.type	32;	.endef
	.def	_handle_blend;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.7;	.scl	2;	.type	32;	.endef
	.def	_setupmvlineasm;	.scl	2;	.type	32;	.endef
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
	.def	_tabledivide64.lto_priv.8;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
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
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	__Z20sdlayer_checkversionv;	.scl	2;	.type	32;	.endef
	.def	_SDL_WasInit;	.scl	2;	.type	32;	.endef
	.def	_SDL_InitSubSystem;	.scl	2;	.type	32;	.endef
	.def	_SDL_StopTextInput;	.scl	2;	.type	32;	.endef
	.def	_SDL_SetThreadPriority;	.scl	2;	.type	32;	.endef
	.def	__Z9timerIniti.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_mmxoverlay;	.scl	2;	.type	32;	.endef
	.def	_videoGetModes.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_engineInitClipMaps;	.scl	2;	.type	32;	.endef
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
	.def	_yax_tweakpicnums;	.scl	2;	.type	32;	.endef
	.def	_polymer_glinit;	.scl	2;	.type	32;	.endef
	.def	_videoBeginDrawing;	.scl	2;	.type	32;	.endef
	.def	__ZL17classicScanSectors.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL18classicDrawBunchesi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_wallfront;	.scl	2;	.type	32;	.endef
	.def	_videoEndDrawing;	.scl	2;	.type	32;	.endef
	.def	_tileUpdatePicSiz;	.scl	2;	.type	32;	.endef
	.def	__ZL13resizeglcheckv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_updatesector;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_atan2f;	.scl	2;	.type	32;	.endef
	.def	_texcache_fetch;	.scl	2;	.type	32;	.endef
	.def	_polymer_removelight.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_culllight.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_processspotlight.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL15polymost_domostffffffff.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_hitscan;	.scl	2;	.type	32;	.endef
	.def	_polymost_scansector.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZL17polymost_drawallsi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL19polymost_bunchfrontii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_atanf;	.scl	2;	.type	32;	.endef
	.def	__ZL18get_projhack_ratiov.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_displayrooms.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_updatesector.part.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_drawsector.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_updatewall.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_drawwall.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_emptybuckets.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
	.def	_sqrtf;	.scl	2;	.type	32;	.endef
	.def	@gethiq16angle@8;	.scl	2;	.type	32;	.endef
