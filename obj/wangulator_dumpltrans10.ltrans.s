	.file	"<artificial>"
	.text
	.p2align 4
	.globl	__ZL14yax_cmpbunchesPKvS0_.lto_priv.0
	.def	__ZL14yax_cmpbunchesPKvS0_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL14yax_cmpbunchesPKvS0_.lto_priv.0:
LFB0:
	.cfi_startproc
	movl	8(%esp), %eax
	movl	4(%esp), %edx
	movzwl	(%eax), %eax
	movzwl	(%edx), %edx
	movswl	__ZL9bunchdist.lto_priv.0(%eax,%eax), %eax
	movswl	__ZL9bunchdist.lto_priv.0(%edx,%edx), %edx
	subl	%edx, %eax
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.def	__ZL8getscoreiiii;	.scl	3;	.type	32;	.endef
__ZL8getscoreiiii:
LFB1:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	cmpl	%edx, %eax
	jle	L4
	leal	8(%esp), %eax
	leal	4(%esp), %ebx
/APP
 # 1302 "source/build/src/engine.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
L4:
	movl	(%esp), %edx
	movl	20(%esp), %eax
	cmpl	%eax, %edx
	jle	L5
	movl	%esp, %eax
	leal	20(%esp), %ebx
/APP
 # 1304 "source/build/src/engine.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	20(%esp), %eax
	movl	(%esp), %edx
L5:
	movl	4(%esp), %ecx
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	movl	8(%esp), %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	addl	$12, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	subl	%edx, %eax
	ret
	.cfi_endproc
LFE1:
	.p2align 4
	.def	__ZL9slowhlineii;	.scl	3;	.type	32;	.endef
__ZL9slowhlineii:
LFB2:
	.cfi_startproc
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movl	__ZL5lastx.lto_priv.0, %ecx
	movl	%ebp, 52(%esp)
	.cfi_offset 5, -8
	movl	(%ecx,%edx,4), %ebp
	cmpl	%eax, %ebp
	jg	L7
	movl	%ebx, 40(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%edx, %eax
	subl	_globalhoriz, %eax
	movl	%edi, 48(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	__ZL12horizlookup2.lto_priv.0, %edx
	addl	__ZL10horizycent.lto_priv.0, %eax
	movl	%esi, 44(%esp)
	.cfi_offset 6, -16
	movl	(%edx,%eax,4), %ecx
	movl	_globalx1, %eax
	movl	%ecx, %edx
/APP
 # 2376 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _asm1
	movl	%eax, %esi
	movl	%ecx, %edx
	movl	_globaly2, %eax
/APP
 # 2377 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_globvis, %edx
	movl	%eax, 24(%esp)
	movl	%eax, _asm2
	movl	%ecx, %eax
/APP
 # 2379 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
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
	subl	%ebp, %ebx
	imull	%ebx, %esi
	sall	$8, %eax
	addl	_globalpalwritten, %eax
	movl	%eax, _asm3
	movl	_ylookup, %eax
	movl	(%eax,%edi,4), %edx
	movl	_frameoffset, %edi
	movl	__ZL8globalx2.lto_priv.0, %eax
	addl	%ebp, %edx
	movl	%ebx, %ebp
	addl	%edx, %edi
	movl	__ZL8globaly1.lto_priv.0, %edx
	sall	$16, %ebp
	movl	%ebp, 28(%esp)
	movl	__ZL12globalbufplc.lto_priv.0, %ebp
	movl	%edx, 32(%esp)
	movl	__ZL14globalxpanning.lto_priv.0, %edx
	subl	%esi, %edx
	movl	__ZL14globalypanning.lto_priv.0, %esi
	movl	%edx, 36(%esp)
	movl	24(%esp), %edx
	imull	%ebx, %edx
	subl	%edx, %esi
	movl	%ecx, %edx
	testb	$1, _globalorientation+1
	je	L11
/APP
 # 2387 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	%ecx, %edx
	movl	32(%esp), %eax
/APP
 # 2386 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%edi, 20(%esp)
	movl	36(%esp), %edi
	addl	%esi, %ebx
	movl	28(%esp), %ecx
	movl	%ebx, 16(%esp)
	addl	%eax, %edi
	movl	$0, 12(%esp)
	movl	%edi, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%ebp, (%esp)
	call	_thline
	movl	40(%esp), %ebx
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
	movl	48(%esp), %edi
	.cfi_restore 7
L7:
	movl	52(%esp), %ebp
	addl	$56, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L11:
	.cfi_def_cfa_offset 60
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
/APP
 # 2383 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	%ecx, %edx
	movl	32(%esp), %eax
/APP
 # 2382 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%edi, 20(%esp)
	addl	%esi, %ebx
	movl	36(%esp), %edi
	movl	%ebx, 16(%esp)
	movl	28(%esp), %ebx
	addl	%eax, %edi
	movl	%ebp, (%esp)
	movl	%ebx, 8(%esp)
	movl	%edi, 4(%esp)
	movl	$0, 12(%esp)
	call	_mhline
	movl	40(%esp), %ebx
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
	movl	48(%esp), %edi
	.cfi_restore 7
	movl	52(%esp), %ebp
	addl	$56, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE2:
	.p2align 4
	.def	__ZL8wallscaniiPKsS0_PKiS2_;	.scl	3;	.type	32;	.endef
__ZL8wallscaniiPKsS0_PKiS2_:
LFB3:
	.cfi_startproc
	subl	$184, %esp
	.cfi_def_cfa_offset 188
	movl	%ebp, 180(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	movl	188(%esp), %eax
	movl	%esi, 172(%esp)
	.cfi_offset 6, -16
	movl	_g_nodraw, %esi
	movl	%eax, 28(%esp)
	movl	192(%esp), %eax
	movl	%eax, 24(%esp)
	movl	196(%esp), %eax
	movl	%eax, 36(%esp)
	testl	%esi, %esi
	jne	L12
	movl	%edi, 176(%esp)
	movswl	_globalpicnum, %eax
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	%ebx, 168(%esp)
	.cfi_offset 3, -20
/APP
 # 3110 "source/build/src/engine.cpp" 1
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
	cmpw	$0, __ZL14globalshiftval.lto_priv.0
	js	L193
	movl	_xdim, %eax
	leal	-1(%eax), %edx
	cmpl	%edi, %eax
	cmovle	%edx, %edi
	movl	%edi, 116(%esp)
	movswl	_globalpicnum, %edi
	movswl	_tilesiz(,%edi,4), %ebx
	testw	%bx, %bx
	jle	L193
	movzwl	_tilesiz+2(,%edi,4), %eax
	movw	%ax, 88(%esp)
	testw	%ax, %ax
	jle	L193
	leal	(%ebp,%ebp), %eax
	movswl	(%ecx,%ebp,2), %edx
	movl	%eax, 32(%esp)
	movl	_ydimen, %eax
	cmpl	%eax, %edx
	jle	L15
	movl	116(%esp), %edx
	movswl	(%ecx,%edx,2), %edx
	cmpl	%edx, %eax
	jl	L193
L15:
	movl	28(%esp), %eax
	movl	32(%esp), %edx
	cmpw	$0, (%eax,%edx)
	jns	L16
	movl	116(%esp), %edx
	cmpw	$0, (%eax,%edx,2)
	js	L193
L16:
	movl	%edi, %eax
	movl	%ecx, 48(%esp)
	call	__Z12tileLoadHighi
	movl	%eax, __ZL8globalht.lto_priv.0
	testl	%eax, %eax
	je	L17
	movswl	4(%eax), %esi
	movswl	6(%eax), %edx
L18:
	movl	%esi, %ecx
	movswl	88(%esp), %eax
	sall	%cl, %ebx
	movl	%edx, %ecx
	movswl	_globalpicnum, %edx
	movl	%ebx, %edi
	sall	%cl, %eax
	movswl	%bx, %ecx
	movzbl	_picsiz(%edx), %edx
	negl	%edi
	movw	%di, 88(%esp)
	movl	%edx, %esi
	andl	$15, %esi
	cmpl	%ecx, _pow2long.lto_priv.0(,%esi,4)
	jne	L20
	leal	-1(%ebx), %edi
	movw	%di, 88(%esp)
L20:
	shrb	$4, %dl
	movswl	%ax, %ecx
	negl	%eax
	movzbl	%dl, %ebx
	movw	%ax, 90(%esp)
	cmpl	%ecx, _pow2long.lto_priv.0(,%ebx,4)
	jne	L22
	movzbl	%dl, %eax
	movw	%ax, 90(%esp)
L22:
	movl	_globalpal, %eax
	movl	_palookup(,%eax,4), %eax
	movl	%eax, 32(%esp)
	movswl	__ZL14globalshiftval.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_setupvlineasm
	movl	116(%esp), %edi
	movzwl	__ZL14globalshiftval.lto_priv.0, %ecx
	cmpl	%ebp, %edi
	jl	L23
	movl	__ZL5umost.lto_priv.0, %edx
	movl	__ZL5dmost.lto_priv.0, %eax
	addl	$1, %edi
	jmp	L24
	.p2align 5
	.p2align 4,,10
	.p2align 3
L26:
	addl	$1, %ebp
	cmpl	%edi, %ebp
	je	L25
L24:
	movzwl	(%eax,%ebp,2), %esi
	cmpw	%si, (%edx,%ebp,2)
	jg	L26
L25:
	testw	%cx, %cx
	je	L27
	movl	116(%esp), %eax
	leal	-2(%eax), %esi
	movl	%esi, 104(%esp)
	cmpl	%ebp, %eax
	jl	L29
	cmpw	$0, 90(%esp)
	js	L79
	movswl	88(%esp), %eax
	movl	%edi, 52(%esp)
	negl	%eax
	movl	%eax, 80(%esp)
	jmp	L91
	.p2align 4,,10
	.p2align 3
L177:
	movzwl	88(%esp), %edx
	andl	%eax, %edx
L90:
	movzbl	90(%esp), %ecx
	movl	__ZL8globalht.lto_priv.0, %eax
	sall	%cl, %edx
	testl	%eax, %eax
	je	L196
	movl	(%eax), %eax
L89:
	addl	%edx, %eax
	movl	__ZL8globalzd.lto_priv.0+4, %edx
	movl	%ebx, %esi
	subl	_globalhoriz, %esi
	movl	%eax, 64(%esp)
	addl	$1, %esi
	movl	%eax, _bufplce
	movl	__ZL8globalzd.lto_priv.0, %eax
	movl	%edx, 60(%esp)
	movl	%eax, 56(%esp)
	movl	__ZL14drawing_sprite.lto_priv.0, %eax
	testl	%eax, %eax
	jne	L197
	movl	24(%esp), %eax
	movl	__ZL12globalyscale.lto_priv.0, %ecx
	imull	(%eax,%ebp,4), %ecx
	movl	56(%esp), %eax
	imull	%ecx, %esi
	movl	%ecx, 44(%esp)
	addl	%eax, %esi
L88:
	movl	44(%esp), %ecx
	movl	40(%esp), %edx
	movl	%esi, _vplce
	movl	_ylookup, %eax
	movl	%ecx, _vince
	addl	(%eax,%ebx,4), %edx
	movl	64(%esp), %eax
	movl	%esi, 12(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	%edi, %eax
	subl	%ebx, %eax
	movl	%ecx, (%esp)
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	72(%esp), %eax
	movl	%eax, 4(%esp)
	call	_vlineasm1
L81:
	movl	52(%esp), %eax
	addl	$1, %ebp
	cmpl	%eax, %ebp
	je	L198
L91:
	movl	_frameoffset, %eax
	addl	%ebp, %eax
	movl	%eax, 40(%esp)
	testb	$3, %al
	je	L186
	movl	__ZL5umost.lto_priv.0, %eax
	movl	28(%esp), %edi
	movswl	(%eax,%ebp,2), %ebx
	movl	48(%esp), %eax
	movzwl	(%edi,%ebp,2), %edx
	movswl	(%eax,%ebp,2), %eax
	cmpw	%ax, %bx
	cmovl	%eax, %ebx
	movl	__ZL5dmost.lto_priv.0, %eax
	movzwl	(%eax,%ebp,2), %eax
	movl	%ebx, 152(%esp)
	cmpw	%dx, %ax
	cmovg	%edx, %eax
	movswl	%ax, %edi
	movl	%edi, 136(%esp)
	cmpl	%edi, %ebx
	jge	L81
	movl	24(%esp), %eax
	movl	_globvis, %edx
	movl	(%eax,%ebp,4), %eax
/APP
 # 3153 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$0, %edx
	sarl	$8, %eax
	addl	_globalshade, %eax
	movl	32(%esp), %esi
	cmovs	%edx, %eax
	movswl	_numshades, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	sall	$8, %eax
	addl	%esi, %eax
	movl	%eax, _palookupoffse
	movl	%eax, 72(%esp)
	movl	36(%esp), %eax
	movl	(%eax,%ebp,4), %eax
	addl	__ZL14globalxpanning.lto_priv.0, %eax
	cmpw	$0, 88(%esp)
	jns	L177
	xorl	%edx, %edx
	divl	80(%esp)
	jmp	L90
	.p2align 4,,10
	.p2align 3
L193:
	movl	168(%esp), %ebx
	.cfi_restore 3
	movl	176(%esp), %edi
	.cfi_restore 7
L12:
	movl	172(%esp), %esi
	movl	180(%esp), %ebp
	addl	$184, %esp
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L197:
	.cfi_def_cfa_offset 188
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	__ZL6swallf.lto_priv.0, %eax
	movss	(%eax,%ebp,4), %xmm0
	movss	%xmm0, (%esp)
	call	_llrintf
	movl	%eax, 44(%esp)
	movl	%esi, %eax
	movl	%edx, %ecx
	cltd
	movl	%edx, %eax
	movl	44(%esp), %edx
	imull	%edx, %eax
	movl	%ecx, %edx
	imull	%esi, %edx
	addl	%edx, %eax
	movl	%eax, %ecx
	movl	%esi, %eax
	mull	44(%esp)
	addl	%ecx, %edx
	addl	56(%esp), %eax
	adcl	60(%esp), %edx
	xorl	%esi, %esi
	movl	%edx, %ecx
	cmpl	$0, %eax
	sbbl	%esi, %ecx
	movl	$0, %ecx
	cmovl	%ecx, %eax
	cmovl	%esi, %edx
	movl	$-1, %esi
	cmpl	%eax, %esi
	sbbl	%edx, %ecx
	cmovl	%esi, %eax
	movl	%eax, %esi
	jmp	L88
	.p2align 4,,10
	.p2align 3
L196:
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L89
	.p2align 4,,10
	.p2align 3
L27:
	cmpl	%ebp, 116(%esp)
	jl	L118
	cmpw	$0, 90(%esp)
	js	L117
L140:
	movswl	88(%esp), %ecx
	movl	%edi, 44(%esp)
	negl	%ecx
	movl	%ecx, 72(%esp)
	jmp	L130
	.p2align 4,,10
	.p2align 3
L202:
	movl	%ecx, (%esp)
	call	_vlineasm1
L119:
	movl	44(%esp), %eax
	addl	$1, %ebp
	cmpl	%eax, %ebp
	je	L118
	movl	__ZL5umost.lto_priv.0, %edx
	movl	__ZL5dmost.lto_priv.0, %eax
L130:
	movl	48(%esp), %edi
	movswl	(%edx,%ebp,2), %ebx
	movzwl	(%eax,%ebp,2), %eax
	movswl	(%edi,%ebp,2), %edx
	movl	28(%esp), %edi
	cmpw	%dx, %bx
	cmovl	%edx, %ebx
	movzwl	(%edi,%ebp,2), %edx
	cmpw	%dx, %ax
	cmovg	%edx, %eax
	movswl	%ax, %edi
	cmpl	%edi, %ebx
	jge	L119
	movl	24(%esp), %eax
	movl	_globvis, %edx
	movl	(%eax,%ebp,4), %eax
/APP
 # 3224 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$0, %edx
	sarl	$8, %eax
	addl	_globalshade, %eax
	movl	32(%esp), %esi
	cmovs	%edx, %eax
	movswl	_numshades, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	sall	$8, %eax
	addl	%esi, %eax
	movl	36(%esp), %esi
	movl	%eax, _palookupoffse
	movl	%eax, 52(%esp)
	movl	__ZL14globalxpanning.lto_priv.0, %eax
	addl	(%esi,%ebp,4), %eax
	cmpw	$0, 88(%esp)
	js	L199
	movzwl	88(%esp), %edx
	andl	%eax, %edx
L129:
	movzbl	90(%esp), %ecx
	movl	__ZL8globalht.lto_priv.0, %eax
	sall	%cl, %edx
	testl	%eax, %eax
	je	L200
	movl	(%eax), %eax
L128:
	addl	%edx, %eax
	movl	__ZL8globalzd.lto_priv.0+4, %edx
	movl	%ebx, %esi
	subl	_globalhoriz, %esi
	movl	%eax, 56(%esp)
	addl	$1, %esi
	movl	%eax, _bufplce
	movl	__ZL8globalzd.lto_priv.0, %eax
	movl	%edx, 68(%esp)
	movl	__ZL14drawing_sprite.lto_priv.0, %edx
	movl	%eax, 64(%esp)
	testl	%edx, %edx
	jne	L201
	movl	24(%esp), %eax
	movl	(%eax,%ebp,4), %ecx
	imull	__ZL12globalyscale.lto_priv.0, %ecx
	movl	64(%esp), %eax
	imull	%ecx, %esi
	movl	%ecx, 40(%esp)
	addl	%eax, %esi
L127:
	movl	_ylookup, %edx
	movl	40(%esp), %ecx
	movl	%esi, _vplce
	subl	%ebx, %edi
	movl	_frameoffset, %eax
	movl	%ecx, _vince
	addl	%ebp, %eax
	addl	(%edx,%ebx,4), %eax
	movl	%edi, %edx
	movl	%esi, 12(%esp)
	movl	%eax, 20(%esp)
	movl	56(%esp), %eax
	subl	$1, %edx
	cmpw	$0, __ZL14globalshiftval.lto_priv.0
	movl	%edx, 8(%esp)
	movl	%eax, 16(%esp)
	movl	52(%esp), %eax
	movl	%eax, 4(%esp)
	jne	L202
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	_vlineasm1nonpow2
	jmp	L119
L217:
	movl	52(%esp), %edi
L38:
	cmpl	%ebp, 104(%esp)
	jle	L203
L144:
	leal	(%ebp,%ebp), %eax
	movl	%ebp, 132(%esp)
	movl	%eax, 92(%esp)
	leal	152(%esp), %eax
	movl	%eax, 44(%esp)
	leal	136(%esp), %eax
	movl	%eax, 40(%esp)
	movswl	90(%esp), %eax
	negl	%eax
	movl	%eax, 96(%esp)
	.p2align 4
	.p2align 3
L40:
	movl	92(%esp), %eax
	movl	48(%esp), %ecx
	movb	$0, 52(%esp)
	leal	12(,%ebp,4), %edi
	movl	%ebp, 108(%esp)
	movl	$3, %esi
	leal	(%ecx,%eax), %ebx
	movl	__ZL5umost.lto_priv.0, %ecx
	movl	%ebx, %ebp
	addl	%eax, %ecx
	movl	%ecx, 64(%esp)
	movl	__ZL5dmost.lto_priv.0, %ecx
	addl	%eax, %ecx
	movl	%ecx, 72(%esp)
	movl	28(%esp), %ecx
	addl	%ecx, %eax
	movl	%eax, 56(%esp)
L101:
	movl	64(%esp), %eax
	movswl	0(%ebp,%esi,2), %ebx
	movl	56(%esp), %ecx
	movswl	(%eax,%esi,2), %eax
	movswl	(%ecx,%esi,2), %edx
	movl	40(%esp), %ecx
	cmpw	%ax, %bx
	cmovl	%eax, %ebx
	movl	44(%esp), %eax
	movl	%ebx, (%eax,%esi,4)
	movl	72(%esp), %eax
	movswl	(%eax,%esi,2), %eax
	cmpw	%dx, %ax
	cmovg	%edx, %eax
	subl	$1, %eax
	movl	%eax, (%ecx,%esi,4)
	cmpl	%eax, %ebx
	jle	L93
	movzbl	__ZL8pow2char.lto_priv.7(%esi), %ecx
	addb	%cl, 52(%esp)
L94:
	subl	$1, %esi
	subl	$4, %edi
	cmpl	$-1, %esi
	jne	L101
	movl	108(%esp), %ebp
	cmpb	$15, 52(%esp)
	je	L102
	movl	24(%esp), %eax
	movl	_globvis, %esi
	movl	(%eax,%ebp,4), %eax
	movl	%esi, %edx
/APP
 # 3174 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_globalshade, %edi
	sarl	$8, %eax
	movswl	_numshades, %ebx
	movl	32(%esp), %edx
	leal	(%eax,%edi), %ecx
	subl	$1, %ebx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	cmovs	%eax, %ecx
	movl	24(%esp), %eax
	cmpl	%ebx, %ecx
	cmovg	%ebx, %ecx
	sall	$8, %ecx
	addl	%ecx, %edx
	movl	%edx, _palookupoffse
	movl	12(%eax,%ebp,4), %eax
	movl	%edx, 124(%esp)
	movl	%esi, %edx
/APP
 # 3175 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	sarl	$8, %eax
	movl	$0, %edx
	addl	%edi, %eax
	cmovs	%edx, %eax
	movl	32(%esp), %edx
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	sall	$8, %eax
	addl	%eax, %edx
	movl	%edx, _palookupoffse+12
	cmpl	%ecx, %eax
	je	L204
L103:
	movl	24(%esp), %ecx
	movl	%esi, %edx
	movl	4(%ecx,%ebp,4), %eax
/APP
 # 3184 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	sarl	$8, %eax
	movl	$0, %edx
	addl	%edi, %eax
	cmovs	%edx, %eax
	movl	32(%esp), %edx
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	sall	$8, %eax
	addl	%edx, %eax
	movl	%esi, %edx
	movl	%eax, _palookupoffse+4
	movl	8(%ecx,%ebp,4), %eax
/APP
 # 3185 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	sarl	$8, %eax
	movl	$0, %edx
	addl	%edi, %eax
	cmovs	%edx, %eax
	movl	32(%esp), %edx
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	sall	$8, %eax
	addl	%edx, %eax
L104:
	movl	164(%esp), %edi
	movl	160(%esp), %ecx
	movl	%eax, _palookupoffse+8
	movl	152(%esp), %eax
	movl	148(%esp), %ebx
	cmpl	%edi, %ecx
	movl	%edi, %esi
	movl	156(%esp), %edx
	movl	%edi, 112(%esp)
	cmovge	%ecx, %esi
	movl	%eax, 108(%esp)
	movl	%ebx, 72(%esp)
	movl	144(%esp), %ebx
	cmpl	%eax, %esi
	cmovl	%eax, %esi
	movl	140(%esp), %eax
	movl	%ebx, 80(%esp)
	movl	%eax, 56(%esp)
	movl	136(%esp), %eax
	cmpl	%esi, %edx
	movl	%esi, %edi
	cmovge	%edx, %edi
	movl	%eax, 64(%esp)
	movl	72(%esp), %eax
	cmpl	%ebx, %eax
	cmovle	%eax, %ebx
	movl	56(%esp), %eax
	cmpl	%eax, %ebx
	cmovg	%eax, %ebx
	movl	64(%esp), %eax
	cmpl	%ebx, %eax
	movl	%ebx, 120(%esp)
	cmovle	%eax, %ebx
	cmpb	$0, 52(%esp)
	jne	L149
	cmpl	%ebx, %edi
	jge	L149
	movl	108(%esp), %eax
	cmpl	%eax, %edi
	jg	L205
L110:
	cmpl	%esi, %edx
	jl	L206
L111:
	cmpl	%ecx, %edi
	jg	L207
L112:
	movl	112(%esp), %eax
	cmpl	%eax, %edi
	jg	L208
L113:
	movl	_ylookup, %eax
	movl	(%eax,%edi,4), %esi
	movl	_frameoffset, %eax
	addl	%ebp, %esi
	addl	%esi, %eax
	movl	%eax, 4(%esp)
	movl	%ebx, %eax
	subl	%edi, %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	_vlineasm4
	movl	_frameoffset, %esi
	movl	_ylookup, %eax
	movl	120(%esp), %edi
	addl	%ebp, %esi
	addl	4(%eax,%ebx,4), %esi
	cmpl	%edi, 64(%esp)
	jg	L209
L114:
	movl	56(%esp), %eax
	cmpl	%eax, %ebx
	jl	L210
L115:
	movl	80(%esp), %eax
	cmpl	%eax, %ebx
	jl	L211
L116:
	movl	72(%esp), %eax
	cmpl	%eax, %ebx
	jl	L212
L102:
	movl	104(%esp), %eax
	addl	$4, %ebp
	addl	$8, 92(%esp)
	cmpl	%eax, %ebp
	jl	L40
	movl	116(%esp), %edi
	movl	132(%esp), %ebp
	xorl	%edx, %edx
	movl	104(%esp), %esi
	leal	-3(%edi), %eax
	subl	%ebp, %eax
	andl	$-4, %eax
	cmpl	%esi, %ebp
	cmovge	%edx, %eax
	leal	4(%ebp,%eax), %ebp
	cmpl	%ebp, %edi
	jl	L118
	movl	__ZL5umost.lto_priv.0, %edx
	movl	__ZL5dmost.lto_priv.0, %eax
	addl	$1, %edi
L117:
	movswl	90(%esp), %ecx
	movl	%edi, 44(%esp)
	negl	%ecx
	movl	%ecx, 72(%esp)
	jmp	L139
	.p2align 4,,10
	.p2align 3
L214:
	movl	%ecx, (%esp)
	call	_vlineasm1nonpow2
L131:
	movl	44(%esp), %eax
	addl	$1, %ebp
	cmpl	%eax, %ebp
	je	L118
	movl	__ZL5umost.lto_priv.0, %edx
	movl	__ZL5dmost.lto_priv.0, %eax
L139:
	movl	48(%esp), %edi
	movswl	(%edx,%ebp,2), %ebx
	movzwl	(%eax,%ebp,2), %eax
	movswl	(%edi,%ebp,2), %edx
	movl	28(%esp), %edi
	cmpw	%dx, %bx
	cmovl	%edx, %ebx
	movzwl	(%edi,%ebp,2), %edx
	cmpw	%dx, %ax
	cmovg	%edx, %eax
	movswl	%ax, %edi
	cmpl	%edi, %ebx
	jge	L131
	movl	24(%esp), %eax
	movl	_globvis, %edx
	movl	(%eax,%ebp,4), %eax
/APP
 # 3224 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$0, %edx
	sarl	$8, %eax
	addl	_globalshade, %eax
	movl	32(%esp), %esi
	cmovs	%edx, %eax
	movswl	_numshades, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movzwl	88(%esp), %edx
	sall	$8, %eax
	addl	%esi, %eax
	movl	36(%esp), %esi
	movl	%eax, _palookupoffse
	movl	%eax, 52(%esp)
	movl	__ZL14globalxpanning.lto_priv.0, %eax
	addl	(%esi,%ebp,4), %eax
	movl	%edx, %esi
	andl	%eax, %edx
	testw	%si, %si
	jns	L133
	movswl	%si, %ecx
	xorl	%edx, %edx
	negl	%ecx
	divl	%ecx
L133:
	movl	72(%esp), %eax
	imull	%eax, %edx
	movl	__ZL8globalht.lto_priv.0, %eax
	testl	%eax, %eax
	je	L134
	movl	(%eax), %eax
L135:
	addl	%edx, %eax
	movl	__ZL8globalzd.lto_priv.0+4, %edx
	movl	%ebx, %esi
	subl	_globalhoriz, %esi
	movl	%eax, 56(%esp)
	addl	$1, %esi
	movl	%eax, _bufplce
	movl	__ZL8globalzd.lto_priv.0, %eax
	movl	%edx, 68(%esp)
	movl	%eax, 64(%esp)
	movl	__ZL14drawing_sprite.lto_priv.0, %eax
	testl	%eax, %eax
	jne	L213
	movl	24(%esp), %eax
	movl	(%eax,%ebp,4), %ecx
	imull	__ZL12globalyscale.lto_priv.0, %ecx
	movl	64(%esp), %eax
	imull	%ecx, %esi
	movl	%ecx, 40(%esp)
	addl	%eax, %esi
L137:
	movl	_ylookup, %edx
	movl	40(%esp), %ecx
	movl	%esi, _vplce
	subl	%ebx, %edi
	movl	_frameoffset, %eax
	movl	%ecx, _vince
	addl	%ebp, %eax
	addl	(%edx,%ebx,4), %eax
	movl	%edi, %edx
	movl	%esi, 12(%esp)
	movl	%eax, 20(%esp)
	movl	56(%esp), %eax
	subl	$1, %edx
	cmpw	$0, __ZL14globalshiftval.lto_priv.0
	movl	%edx, 8(%esp)
	movl	%eax, 16(%esp)
	movl	52(%esp), %eax
	movl	%eax, 4(%esp)
	je	L214
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	_vlineasm1
	jmp	L131
L218:
	movl	__ZL5umost.lto_priv.0, %edx
	movl	__ZL5dmost.lto_priv.0, %eax
	cmpl	%ebp, 116(%esp)
	jge	L140
L118:
	movl	168(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	176(%esp), %edi
	.cfi_restore 7
	movl	172(%esp), %esi
	movl	180(%esp), %ebp
	addl	$184, %esp
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	__Z16timerUpdateClockv
	.p2align 4,,10
	.p2align 3
L199:
	.cfi_restore_state
	xorl	%edx, %edx
	divl	72(%esp)
	jmp	L129
	.p2align 4,,10
	.p2align 3
L201:
	movl	__ZL6swallf.lto_priv.0, %eax
	movss	(%eax,%ebp,4), %xmm0
	movss	%xmm0, (%esp)
	call	_llrintf
	movl	%eax, 40(%esp)
	movl	%esi, %eax
	movl	%edx, %ecx
	cltd
	movl	%edx, %eax
	movl	40(%esp), %edx
	imull	%edx, %eax
	movl	%ecx, %edx
	imull	%esi, %edx
	addl	%edx, %eax
	movl	%eax, %ecx
	movl	%esi, %eax
	mull	40(%esp)
	addl	%ecx, %edx
	addl	64(%esp), %eax
	adcl	68(%esp), %edx
	xorl	%esi, %esi
	movl	%edx, %ecx
	cmpl	$0, %eax
	sbbl	%esi, %ecx
	movl	$0, %ecx
	cmovl	%ecx, %eax
	cmovl	%esi, %edx
	movl	$-1, %esi
	cmpl	%eax, %esi
	sbbl	%edx, %ecx
	cmovl	%esi, %eax
	movl	%eax, %esi
	jmp	L127
	.p2align 4,,10
	.p2align 3
L200:
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L128
	.p2align 4,,10
	.p2align 3
L213:
	movl	__ZL6swallf.lto_priv.0, %eax
	movss	(%eax,%ebp,4), %xmm0
	movss	%xmm0, (%esp)
	call	_llrintf
	movl	%eax, 40(%esp)
	movl	%esi, %eax
	movl	%edx, %ecx
	cltd
	movl	%edx, %eax
	movl	40(%esp), %edx
	imull	%edx, %eax
	movl	%ecx, %edx
	imull	%esi, %edx
	addl	%edx, %eax
	movl	%eax, %ecx
	movl	%esi, %eax
	mull	40(%esp)
	addl	%ecx, %edx
	addl	64(%esp), %eax
	adcl	68(%esp), %edx
	xorl	%esi, %esi
	movl	%edx, %ecx
	cmpl	$0, %eax
	sbbl	%esi, %ecx
	movl	$0, %ecx
	cmovl	%ecx, %eax
	cmovl	%esi, %edx
	movl	$-1, %esi
	cmpl	%eax, %esi
	sbbl	%edx, %ecx
	cmovl	%esi, %eax
	movl	%eax, %esi
	jmp	L137
	.p2align 4,,10
	.p2align 3
L134:
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L135
	.p2align 4,,10
	.p2align 3
L17:
	movl	_waloff(,%edi,4), %edx
	testl	%edx, %edx
	je	L215
	xorl	%edx, %edx
	jmp	L18
L215:
	movl	%edi, %eax
	movl	%edx, 32(%esp)
	xorl	%esi, %esi
	call	_tileLoad
	movl	32(%esp), %edx
	jmp	L18
L79:
	movswl	90(%esp), %eax
	movl	%edi, 52(%esp)
	negl	%eax
	movl	%eax, 80(%esp)
	jmp	L37
	.p2align 4,,10
	.p2align 3
L35:
	movl	24(%esp), %eax
	movl	(%eax,%ebp,4), %ecx
	imull	__ZL12globalyscale.lto_priv.0, %ecx
	movl	72(%esp), %eax
	imull	%ecx, %esi
	movl	%ecx, 44(%esp)
	addl	%eax, %esi
L36:
	movl	44(%esp), %ecx
	movl	40(%esp), %edx
	movl	%esi, _vplce
	movl	_ylookup, %eax
	movl	%ecx, _vince
	addl	(%eax,%ebx,4), %edx
	movl	64(%esp), %eax
	movl	%esi, 12(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	%edi, %eax
	subl	%ebx, %eax
	movl	%ecx, (%esp)
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	56(%esp), %eax
	movl	%eax, 4(%esp)
	call	_vlineasm1
L30:
	movl	52(%esp), %eax
	addl	$1, %ebp
	cmpl	%eax, %ebp
	je	L216
L37:
	movl	_frameoffset, %eax
	addl	%ebp, %eax
	movl	%eax, 40(%esp)
	testb	$3, %al
	je	L217
	movl	__ZL5umost.lto_priv.0, %eax
	movl	28(%esp), %edi
	movswl	(%eax,%ebp,2), %ebx
	movl	48(%esp), %eax
	movzwl	(%edi,%ebp,2), %edx
	movswl	(%eax,%ebp,2), %eax
	cmpw	%ax, %bx
	cmovl	%eax, %ebx
	movl	__ZL5dmost.lto_priv.0, %eax
	movzwl	(%eax,%ebp,2), %eax
	movl	%ebx, 152(%esp)
	cmpw	%dx, %ax
	cmovg	%edx, %eax
	movswl	%ax, %edi
	movl	%edi, 136(%esp)
	cmpl	%edi, %ebx
	jge	L30
	movl	24(%esp), %eax
	movl	_globvis, %edx
	movl	(%eax,%ebp,4), %eax
/APP
 # 3153 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$0, %edx
	sarl	$8, %eax
	addl	_globalshade, %eax
	movl	32(%esp), %esi
	cmovs	%edx, %eax
	movswl	_numshades, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movzwl	88(%esp), %edx
	sall	$8, %eax
	addl	%esi, %eax
	movl	36(%esp), %esi
	movl	%eax, _palookupoffse
	movl	%eax, 56(%esp)
	movl	__ZL14globalxpanning.lto_priv.0, %eax
	addl	(%esi,%ebp,4), %eax
	movl	%edx, %esi
	andl	%eax, %edx
	testw	%si, %si
	jns	L32
	movswl	%si, %ecx
	xorl	%edx, %edx
	negl	%ecx
	divl	%ecx
L32:
	movl	80(%esp), %eax
	imull	%eax, %edx
	movl	__ZL8globalht.lto_priv.0, %eax
	testl	%eax, %eax
	je	L33
	movl	(%eax), %eax
L34:
	addl	%edx, %eax
	movl	__ZL8globalzd.lto_priv.0+4, %edx
	movl	%ebx, %esi
	subl	_globalhoriz, %esi
	movl	%eax, 64(%esp)
	addl	$1, %esi
	movl	%eax, _bufplce
	movl	__ZL8globalzd.lto_priv.0, %eax
	movl	%edx, 76(%esp)
	movl	%eax, 72(%esp)
	movl	__ZL14drawing_sprite.lto_priv.0, %eax
	testl	%eax, %eax
	je	L35
	movl	__ZL6swallf.lto_priv.0, %eax
	movss	(%eax,%ebp,4), %xmm0
	movss	%xmm0, (%esp)
	call	_llrintf
	movl	%eax, 44(%esp)
	movl	%esi, %eax
	movl	%edx, %ecx
	cltd
	movl	%edx, %eax
	movl	44(%esp), %edx
	imull	%edx, %eax
	movl	%ecx, %edx
	imull	%esi, %edx
	addl	%edx, %eax
	movl	%eax, %ecx
	movl	%esi, %eax
	mull	44(%esp)
	addl	%ecx, %edx
	addl	72(%esp), %eax
	adcl	76(%esp), %edx
	xorl	%esi, %esi
	movl	%edx, %ecx
	cmpl	$0, %eax
	sbbl	%esi, %ecx
	movl	$0, %ecx
	cmovl	%ecx, %eax
	cmovl	%esi, %edx
	movl	$-1, %esi
	cmpl	%eax, %esi
	sbbl	%edx, %ecx
	cmovl	%esi, %eax
	movl	%eax, %esi
	jmp	L36
	.p2align 4,,10
	.p2align 3
L33:
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L34
L186:
	movl	52(%esp), %edi
L80:
	movl	104(%esp), %eax
	cmpl	%eax, %ebp
	jge	L218
L39:
	leal	(%ebp,%ebp), %eax
	movl	%ebp, 132(%esp)
	movl	%eax, 112(%esp)
	leal	152(%esp), %eax
	movl	%eax, 44(%esp)
	leal	136(%esp), %eax
	movl	%eax, 40(%esp)
	movswl	88(%esp), %eax
	negl	%eax
	movl	%eax, 128(%esp)
	.p2align 4
	.p2align 3
L77:
	movl	112(%esp), %eax
	movl	__ZL5umost.lto_priv.0, %ecx
	movb	$0, 52(%esp)
	leal	12(,%ebp,4), %edi
	movl	28(%esp), %ebx
	movl	%ebp, 120(%esp)
	movl	$3, %esi
	addl	%eax, %ecx
	movl	%ecx, 72(%esp)
	movl	48(%esp), %ecx
	addl	%eax, %ebx
	movl	%ebx, 56(%esp)
	addl	%eax, %ecx
	addl	__ZL5dmost.lto_priv.0, %eax
	movl	%eax, 64(%esp)
	movzwl	88(%esp), %eax
	movl	%ecx, 80(%esp)
	movl	%eax, 108(%esp)
	movswl	90(%esp), %eax
	movl	%eax, 92(%esp)
L51:
	movl	72(%esp), %eax
	movl	64(%esp), %ecx
	movswl	(%eax,%esi,2), %ebx
	movl	80(%esp), %eax
	movswl	(%ecx,%esi,2), %edx
	movl	40(%esp), %ecx
	movswl	(%eax,%esi,2), %eax
	cmpw	%ax, %bx
	cmovl	%eax, %ebx
	movl	44(%esp), %eax
	movl	%ebx, (%eax,%esi,4)
	movl	56(%esp), %eax
	movswl	(%eax,%esi,2), %eax
	cmpw	%dx, %ax
	cmovg	%edx, %eax
	subl	$1, %eax
	movl	%eax, (%ecx,%esi,4)
	cmpl	%ebx, %eax
	jl	L41
	movl	36(%esp), %eax
	movl	(%eax,%edi), %eax
	addl	__ZL14globalxpanning.lto_priv.0, %eax
	cmpw	$0, 88(%esp)
	js	L219
	movl	108(%esp), %edx
	andl	%eax, %edx
L50:
	movzbl	92(%esp), %ecx
	movl	__ZL8globalht.lto_priv.0, %eax
	sall	%cl, %edx
	testl	%eax, %eax
	je	L220
	movl	(%eax), %eax
L49:
	addl	%edx, %eax
	movl	__ZL8globalzd.lto_priv.0+4, %ecx
	movl	__ZL8globalzd.lto_priv.0, %edx
	movl	%eax, _bufplce(,%esi,4)
	movl	__ZL14drawing_sprite.lto_priv.0, %eax
	subl	_globalhoriz, %ebx
	movl	%edx, 96(%esp)
	movl	%ecx, 100(%esp)
	addl	$1, %ebx
	testl	%eax, %eax
	jne	L46
	movl	24(%esp), %ebp
	movl	__ZL12globalyscale.lto_priv.0, %eax
	imull	0(%ebp,%edi), %eax
	movl	%eax, _vince(,%esi,4)
	imull	%ebx, %eax
	addl	%edx, %eax
	movl	%eax, _vplce(,%esi,4)
L47:
	subl	$1, %esi
	subl	$4, %edi
	cmpl	$-1, %esi
	jne	L51
	movl	120(%esp), %ebp
	cmpb	$15, 52(%esp)
	je	L52
	movl	24(%esp), %eax
	movl	_globvis, %esi
	movl	(%eax,%ebp,4), %eax
	movl	%esi, %edx
/APP
 # 3174 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_globalshade, %edi
	sarl	$8, %eax
	movswl	_numshades, %ebx
	movl	32(%esp), %edx
	leal	(%eax,%edi), %ecx
	subl	$1, %ebx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	cmovs	%eax, %ecx
	movl	24(%esp), %eax
	cmpl	%ebx, %ecx
	cmovg	%ebx, %ecx
	sall	$8, %ecx
	addl	%ecx, %edx
	movl	%edx, _palookupoffse
	movl	12(%eax,%ebp,4), %eax
	movl	%edx, 124(%esp)
	movl	%esi, %edx
/APP
 # 3175 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	sarl	$8, %eax
	movl	$0, %edx
	addl	%edi, %eax
	cmovs	%edx, %eax
	movl	32(%esp), %edx
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	sall	$8, %eax
	addl	%eax, %edx
	movl	%edx, _palookupoffse+12
	cmpl	%ecx, %eax
	je	L53
L75:
	movl	24(%esp), %ecx
	movl	%esi, %edx
	movl	4(%ecx,%ebp,4), %eax
/APP
 # 3184 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	sarl	$8, %eax
	movl	$0, %edx
	addl	%edi, %eax
	cmovs	%edx, %eax
	movl	32(%esp), %edx
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	sall	$8, %eax
	addl	%edx, %eax
	movl	%esi, %edx
	movl	%eax, _palookupoffse+4
	movl	8(%ecx,%ebp,4), %eax
/APP
 # 3185 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	sarl	$8, %eax
	movl	$0, %edx
	addl	%edi, %eax
	cmovs	%edx, %eax
	movl	32(%esp), %edx
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	sall	$8, %eax
	addl	%edx, %eax
L76:
	movl	160(%esp), %edi
	movl	164(%esp), %ebx
	movl	%eax, _palookupoffse+8
	movl	152(%esp), %eax
	movl	156(%esp), %edx
	cmpl	%ebx, %edi
	movl	%ebx, 80(%esp)
	movl	148(%esp), %ecx
	cmovge	%edi, %ebx
	movl	%edi, 72(%esp)
	movl	144(%esp), %edi
	movl	%ecx, 56(%esp)
	cmpl	%eax, %ebx
	movl	%edi, 92(%esp)
	cmovl	%eax, %ebx
	cmpl	%ebx, %edx
	movl	%ebx, %esi
	movl	%ebx, 108(%esp)
	movl	140(%esp), %ebx
	cmovge	%edx, %esi
	cmpl	%edi, %ecx
	movl	%edi, %ecx
	cmovle	56(%esp), %ecx
	movl	%ebx, 64(%esp)
	movl	64(%esp), %edi
	movl	136(%esp), %ebx
	cmpl	%edi, %ecx
	cmovg	%edi, %ecx
	movl	%ebx, 96(%esp)
	cmpl	%ecx, %ebx
	movl	%ecx, %edi
	movl	%ecx, 120(%esp)
	cmovle	%ebx, %edi
	cmpb	$0, 52(%esp)
	jne	L54
	cmpl	%edi, %esi
	jge	L54
	cmpl	%esi, %eax
	jl	L55
L68:
	movl	108(%esp), %eax
	cmpl	%eax, %edx
	jl	L56
	cmpl	%esi, 72(%esp)
	jl	L57
L66:
	cmpl	%esi, 80(%esp)
	jl	L58
L65:
	movl	_ylookup, %eax
	movl	(%eax,%esi,4), %ecx
	movl	_frameoffset, %eax
	addl	%ebp, %ecx
	addl	%ecx, %eax
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	subl	%esi, %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	_vlineasm4
	movl	_frameoffset, %ebx
	movl	_ylookup, %eax
	movl	120(%esp), %esi
	addl	%ebp, %ebx
	addl	4(%eax,%edi,4), %ebx
	cmpl	%esi, 96(%esp)
	jg	L59
L64:
	cmpl	%edi, 64(%esp)
	jg	L60
	cmpl	%edi, 92(%esp)
	jg	L61
L62:
	cmpl	%edi, 56(%esp)
	jg	L221
L52:
	movl	104(%esp), %eax
	addl	$4, %ebp
	addl	$8, 112(%esp)
	cmpl	%eax, %ebp
	jl	L77
	movl	116(%esp), %edi
	movl	132(%esp), %ebp
	xorl	%edx, %edx
	movl	104(%esp), %esi
	leal	-3(%edi), %eax
	subl	%ebp, %eax
	andl	$-4, %eax
	cmpl	%esi, %ebp
	cmovge	%edx, %eax
	leal	4(%ebp,%eax), %ebp
	cmpl	%ebp, %edi
	jl	L118
	movl	__ZL5umost.lto_priv.0, %edx
	movl	__ZL5dmost.lto_priv.0, %eax
	addl	$1, %edi
	jmp	L140
	.p2align 4,,10
	.p2align 3
L41:
	movzbl	__ZL8pow2char.lto_priv.7(%esi), %ecx
	addb	%cl, 52(%esp)
	jmp	L47
	.p2align 4,,10
	.p2align 3
L219:
	xorl	%edx, %edx
	divl	128(%esp)
	jmp	L50
	.p2align 4,,10
	.p2align 3
L46:
	movl	__ZL6swallf.lto_priv.0, %eax
	movss	(%eax,%edi), %xmm0
	movss	%xmm0, (%esp)
	call	_llrintf
	movl	%eax, %ecx
	movl	%eax, _vince(,%esi,4)
	movl	%ebx, %eax
	movl	%edx, %ebp
	cltd
	movl	%edx, %eax
	movl	%ebp, %edx
	imull	%ecx, %eax
	imull	%ebx, %edx
	leal	(%eax,%edx), %ebp
	movl	%ebx, %eax
	mull	%ecx
	addl	%ebp, %edx
	addl	96(%esp), %eax
	adcl	100(%esp), %edx
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movl	%edx, %ebp
	cmpl	%ebx, %eax
	sbbl	%ecx, %ebp
	cmovl	%ebx, %eax
	cmovl	%ecx, %edx
	movl	$-1, %ecx
	cmpl	%eax, %ecx
	sbbl	%edx, %ebx
	cmovl	%ecx, %eax
	movl	%eax, _vplce(,%esi,4)
	jmp	L47
	.p2align 4,,10
	.p2align 3
L220:
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L49
	.p2align 4,,10
	.p2align 3
L53:
	testb	$9, 52(%esp)
	jne	L75
	movl	124(%esp), %eax
	movl	%eax, _palookupoffse+4
	jmp	L76
	.p2align 4,,10
	.p2align 3
L54:
	testb	$1, 52(%esp)
	je	L69
L74:
	testb	$2, 52(%esp)
	je	L70
L73:
	testb	$4, 52(%esp)
	je	L71
L72:
	testb	$8, 52(%esp)
	jne	L52
	movl	_ylookup, %eax
	movl	80(%esp), %edi
	movl	(%eax,%edi,4), %esi
	movl	_frameoffset, %eax
	addl	%ebp, %esi
	leal	3(%eax,%esi), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+12, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+12, %eax
	movl	%eax, 12(%esp)
	movl	56(%esp), %eax
	subl	%edi, %eax
L194:
	movl	%eax, 8(%esp)
	movl	_palookupoffse+12, %eax
	movl	%eax, 4(%esp)
	movl	_vince+12, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L52
	.p2align 4,,10
	.p2align 3
L56:
	movl	_ylookup, %eax
	movl	(%eax,%edx,4), %ecx
	movl	_frameoffset, %eax
	addl	%ebp, %ecx
	leal	1(%eax,%ecx), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+4, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+4, %eax
	movl	%eax, 12(%esp)
	movl	%esi, %eax
	subl	%edx, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+4, %eax
	movl	%eax, 4(%esp)
	movl	_vince+4, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	movl	%eax, _vplce+4
	cmpl	%esi, 72(%esp)
	jge	L66
L57:
	movl	_ylookup, %eax
	movl	72(%esp), %ecx
	movl	(%eax,%ecx,4), %ebx
	movl	_frameoffset, %eax
	addl	%ebp, %ebx
	leal	2(%eax,%ebx), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+8, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+8, %eax
	movl	%eax, 12(%esp)
	movl	%esi, %eax
	subl	%ecx, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+8, %eax
	movl	%eax, 4(%esp)
	movl	_vince+8, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	movl	%eax, _vplce+8
	cmpl	%esi, 80(%esp)
	jge	L65
L58:
	movl	_ylookup, %eax
	movl	80(%esp), %ecx
	movl	(%eax,%ecx,4), %ebx
	movl	_frameoffset, %eax
	addl	%ebp, %ebx
	leal	3(%eax,%ebx), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+12, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+12, %eax
	movl	%eax, 12(%esp)
	movl	%esi, %eax
	subl	%ecx, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+12, %eax
	movl	%eax, 4(%esp)
	movl	_vince+12, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	movl	%eax, _vplce+12
	jmp	L65
	.p2align 4,,10
	.p2align 3
L55:
	movl	_ylookup, %ecx
	movl	%edx, 52(%esp)
	movl	(%ecx,%eax,4), %ebx
	movl	_frameoffset, %ecx
	addl	%ebp, %ebx
	addl	%ebx, %ecx
	movl	%ecx, 20(%esp)
	movl	_bufplce, %ecx
	movl	%ecx, 16(%esp)
	movl	_vplce, %ecx
	movl	%ecx, 12(%esp)
	movl	%esi, %ecx
	subl	%eax, %ecx
	movl	124(%esp), %eax
	subl	$1, %ecx
	movl	%eax, 4(%esp)
	movl	_vince, %eax
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	_prevlineasm1
	movl	52(%esp), %edx
	movl	%eax, _vplce
	jmp	L68
	.p2align 4,,10
	.p2align 3
L60:
	leal	1(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+4, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+4, %eax
	movl	%eax, 12(%esp)
	movl	64(%esp), %eax
	subl	%edi, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+4, %eax
	movl	%eax, 4(%esp)
	movl	_vince+4, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	cmpl	%edi, 92(%esp)
	jle	L62
L61:
	leal	2(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+8, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+8, %eax
	movl	%eax, 12(%esp)
	movl	92(%esp), %eax
	subl	%edi, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+8, %eax
	movl	%eax, 4(%esp)
	movl	_vince+8, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	cmpl	%edi, 56(%esp)
	jle	L52
L221:
	movl	_bufplce+12, %eax
	addl	$3, %ebx
	movl	%ebx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	_vplce+12, %eax
	movl	%eax, 12(%esp)
	movl	56(%esp), %eax
	subl	%edi, %eax
	subl	$1, %eax
	jmp	L194
	.p2align 4,,10
	.p2align 3
L59:
	movl	_bufplce, %eax
	movl	%ebx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	_vplce, %eax
	movl	%eax, 12(%esp)
	movl	96(%esp), %eax
	subl	%edi, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse, %eax
	movl	%eax, 4(%esp)
	movl	_vince, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L64
	.p2align 4,,10
	.p2align 3
L71:
	movl	72(%esp), %edi
	movl	_ylookup, %eax
	movl	(%eax,%edi,4), %esi
	movl	_frameoffset, %eax
	addl	%ebp, %esi
	leal	2(%eax,%esi), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+8, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+8, %eax
	movl	%eax, 12(%esp)
	movl	92(%esp), %eax
	subl	%edi, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+8, %eax
	movl	%eax, 4(%esp)
	movl	_vince+8, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L72
	.p2align 4,,10
	.p2align 3
L70:
	movl	_ylookup, %eax
	movl	(%eax,%edx,4), %edi
	movl	_frameoffset, %eax
	addl	%ebp, %edi
	leal	1(%eax,%edi), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+4, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+4, %eax
	movl	%eax, 12(%esp)
	movl	64(%esp), %eax
	subl	%edx, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+4, %eax
	movl	%eax, 4(%esp)
	movl	_vince+4, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L73
	.p2align 4,,10
	.p2align 3
L69:
	movl	_ylookup, %ecx
	movl	%edx, 108(%esp)
	movl	(%ecx,%eax,4), %edi
	movl	_frameoffset, %ecx
	addl	%ebp, %edi
	addl	%edi, %ecx
	movl	%ecx, 20(%esp)
	movl	_bufplce, %ecx
	movl	%ecx, 16(%esp)
	movl	_vplce, %ecx
	movl	%ecx, 12(%esp)
	movl	96(%esp), %ecx
	subl	%eax, %ecx
	movl	124(%esp), %eax
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	_vince, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	movl	108(%esp), %edx
	jmp	L74
L198:
	movl	%eax, %edi
	jmp	L80
	.p2align 4,,10
	.p2align 3
L93:
	movl	36(%esp), %ecx
	movzwl	88(%esp), %edx
	movl	__ZL14globalxpanning.lto_priv.0, %eax
	addl	(%ecx,%edi), %eax
	movl	%edx, %ecx
	andl	%eax, %edx
	testw	%cx, %cx
	jns	L96
	movswl	%cx, %ecx
	xorl	%edx, %edx
	negl	%ecx
	divl	%ecx
L96:
	movl	96(%esp), %eax
	imull	%eax, %edx
	movl	__ZL8globalht.lto_priv.0, %eax
	testl	%eax, %eax
	je	L97
	movl	(%eax), %eax
L98:
	addl	%eax, %edx
	movl	__ZL14drawing_sprite.lto_priv.0, %ecx
	movl	__ZL8globalzd.lto_priv.0, %eax
	movl	%edx, _bufplce(,%esi,4)
	movl	__ZL8globalzd.lto_priv.0+4, %edx
	subl	_globalhoriz, %ebx
	movl	%eax, 80(%esp)
	movl	%edx, 84(%esp)
	addl	$1, %ebx
	testl	%ecx, %ecx
	jne	L222
	movl	24(%esp), %eax
	movl	(%eax,%edi), %eax
	imull	__ZL12globalyscale.lto_priv.0, %eax
	imull	%eax, %ebx
	movl	%eax, _vince(,%esi,4)
	movl	80(%esp), %eax
	addl	%eax, %ebx
	movl	%ebx, _vplce(,%esi,4)
	jmp	L94
	.p2align 4,,10
	.p2align 3
L222:
	movl	__ZL6swallf.lto_priv.0, %eax
	movss	(%eax,%edi), %xmm0
	movss	%xmm0, (%esp)
	call	_llrintf
	movl	%eax, %ecx
	movl	%eax, _vince(,%esi,4)
	movl	%ebx, %eax
	movl	%edx, 112(%esp)
	cltd
	movl	%edx, %eax
	movl	112(%esp), %edx
	imull	%ecx, %eax
	imull	%ebx, %edx
	addl	%edx, %eax
	movl	%eax, 112(%esp)
	movl	%ebx, %eax
	mull	%ecx
	movl	%eax, %ecx
	movl	112(%esp), %eax
	movl	%edx, %ebx
	addl	%eax, %ebx
	addl	80(%esp), %ecx
	adcl	84(%esp), %ebx
	xorl	%eax, %eax
	movl	%ebx, %edx
	cmpl	$0, %ecx
	sbbl	%eax, %edx
	movl	$0, %edx
	cmovl	%edx, %ecx
	cmovl	%eax, %ebx
	movl	$-1, %eax
	cmpl	%ecx, %eax
	sbbl	%ebx, %edx
	cmovl	%eax, %ecx
	movl	%ecx, _vplce(,%esi,4)
	jmp	L94
	.p2align 4,,10
	.p2align 3
L97:
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L98
	.p2align 4,,10
	.p2align 3
L204:
	testb	$9, 52(%esp)
	jne	L103
	movl	124(%esp), %eax
	movl	%eax, _palookupoffse+4
	jmp	L104
	.p2align 4,,10
	.p2align 3
L149:
	testb	$1, 52(%esp)
	je	L223
L107:
	testb	$2, 52(%esp)
	je	L224
L108:
	testb	$4, 52(%esp)
	je	L225
L109:
	testb	$8, 52(%esp)
	jne	L102
	movl	_ylookup, %eax
	movl	112(%esp), %edi
	movl	(%eax,%edi,4), %esi
	movl	_frameoffset, %eax
	addl	%ebp, %esi
	leal	3(%eax,%esi), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+12, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+12, %eax
	movl	%eax, 12(%esp)
	movl	72(%esp), %eax
	subl	%edi, %eax
L195:
	movl	%eax, 8(%esp)
	movl	_palookupoffse+12, %eax
	movl	%eax, 4(%esp)
	movl	_vince+12, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L102
	.p2align 4,,10
	.p2align 3
L212:
	movl	_bufplce+12, %eax
	addl	$3, %esi
	movl	%esi, 20(%esp)
	movl	%eax, 16(%esp)
	movl	_vplce+12, %eax
	movl	%eax, 12(%esp)
	movl	72(%esp), %eax
	subl	%ebx, %eax
	subl	$1, %eax
	jmp	L195
	.p2align 4,,10
	.p2align 3
L206:
	movl	_ylookup, %eax
	movl	%ecx, 52(%esp)
	movl	(%eax,%edx,4), %esi
	movl	_frameoffset, %eax
	addl	%ebp, %esi
	leal	1(%eax,%esi), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+4, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+4, %eax
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	subl	%edx, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+4, %eax
	movl	%eax, 4(%esp)
	movl	_vince+4, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	movl	52(%esp), %ecx
	movl	%eax, _vplce+4
	jmp	L111
	.p2align 4,,10
	.p2align 3
L205:
	movl	%ecx, 128(%esp)
	movl	_ylookup, %ecx
	movl	%ebp, %eax
	movl	%edx, 52(%esp)
	movl	108(%esp), %edx
	addl	(%ecx,%edx,4), %eax
	addl	_frameoffset, %eax
	movl	%eax, 20(%esp)
	movl	_bufplce, %eax
	movl	%eax, 16(%esp)
	movl	_vplce, %eax
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	subl	%edx, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	124(%esp), %eax
	movl	%eax, 4(%esp)
	movl	_vince, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	movl	128(%esp), %ecx
	movl	52(%esp), %edx
	movl	%eax, _vplce
	jmp	L110
	.p2align 4,,10
	.p2align 3
L210:
	leal	1(%esi), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+4, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+4, %eax
	movl	%eax, 12(%esp)
	movl	56(%esp), %eax
	subl	%ebx, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+4, %eax
	movl	%eax, 4(%esp)
	movl	_vince+4, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L115
	.p2align 4,,10
	.p2align 3
L209:
	movl	_bufplce, %eax
	movl	%esi, 20(%esp)
	movl	%eax, 16(%esp)
	movl	_vplce, %eax
	movl	%eax, 12(%esp)
	movl	64(%esp), %eax
	subl	%ebx, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse, %eax
	movl	%eax, 4(%esp)
	movl	_vince, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L114
	.p2align 4,,10
	.p2align 3
L208:
	movl	_ylookup, %eax
	movl	112(%esp), %esi
	movl	(%eax,%esi,4), %ecx
	movl	_frameoffset, %eax
	addl	%ebp, %ecx
	leal	3(%eax,%ecx), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+12, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+12, %eax
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	subl	%esi, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+12, %eax
	movl	%eax, 4(%esp)
	movl	_vince+12, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	movl	%eax, _vplce+12
	jmp	L113
	.p2align 4,,10
	.p2align 3
L207:
	movl	_ylookup, %eax
	movl	(%eax,%ecx,4), %esi
	movl	_frameoffset, %eax
	addl	%ebp, %esi
	leal	2(%eax,%esi), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+8, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+8, %eax
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	subl	%ecx, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+8, %eax
	movl	%eax, 4(%esp)
	movl	_vince+8, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	movl	%eax, _vplce+8
	jmp	L112
	.p2align 4,,10
	.p2align 3
L211:
	leal	2(%esi), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+8, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+8, %eax
	movl	%eax, 12(%esp)
	movl	80(%esp), %eax
	subl	%ebx, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+8, %eax
	movl	%eax, 4(%esp)
	movl	_vince+8, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L116
L225:
	movl	_ylookup, %eax
	movl	(%eax,%ecx,4), %edi
	movl	_frameoffset, %eax
	addl	%ebp, %edi
	leal	2(%eax,%edi), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+8, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+8, %eax
	movl	%eax, 12(%esp)
	movl	80(%esp), %eax
	subl	%ecx, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+8, %eax
	movl	%eax, 4(%esp)
	movl	_vince+8, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L109
L224:
	movl	_ylookup, %eax
	movl	%ecx, 64(%esp)
	movl	(%eax,%edx,4), %edi
	movl	_frameoffset, %eax
	addl	%ebp, %edi
	leal	1(%eax,%edi), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+4, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+4, %eax
	movl	%eax, 12(%esp)
	movl	56(%esp), %eax
	subl	%edx, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+4, %eax
	movl	%eax, 4(%esp)
	movl	_vince+4, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	movl	64(%esp), %ecx
	jmp	L108
L223:
	movl	_ylookup, %ebx
	movl	108(%esp), %edi
	movl	%ebp, %eax
	movl	%ecx, 128(%esp)
	movl	%edx, 120(%esp)
	addl	(%ebx,%edi,4), %eax
	movl	_frameoffset, %ebx
	addl	%eax, %ebx
	movl	124(%esp), %eax
	movl	%ebx, 20(%esp)
	movl	_bufplce, %ebx
	movl	%eax, 4(%esp)
	movl	_vince, %eax
	movl	%ebx, 16(%esp)
	movl	_vplce, %ebx
	movl	%eax, (%esp)
	movl	%ebx, 12(%esp)
	movl	64(%esp), %ebx
	subl	%edi, %ebx
	movl	%ebx, 8(%esp)
	call	_prevlineasm1
	movl	128(%esp), %ecx
	movl	120(%esp), %edx
	jmp	L107
L216:
	movl	%eax, %edi
	jmp	L38
L23:
	testw	%cx, %cx
	je	L118
	movl	116(%esp), %eax
	subl	$2, %eax
	movl	%eax, 104(%esp)
L29:
	movl	104(%esp), %eax
	cmpl	%eax, %ebp
	jge	L118
	cmpw	$0, 90(%esp)
	jns	L39
	jmp	L144
L203:
	movl	__ZL5umost.lto_priv.0, %edx
	movl	__ZL5dmost.lto_priv.0, %eax
	cmpl	%ebp, 116(%esp)
	jge	L117
	jmp	L118
	.cfi_endproc
LFE3:
	.p2align 4
	.def	__ZL14transmaskvlinei;	.scl	3;	.type	32;	.endef
__ZL14transmaskvlinei:
LFB12:
	.cfi_startproc
	cmpl	_xdimen, %eax
	jnb	L242
	subl	$60, %esp
	.cfi_def_cfa_offset 64
	movl	__ZL5uwall.lto_priv.0, %ecx
	movl	_windowxy1+4, %edx
	movl	%esi, 48(%esp)
	.cfi_offset 6, -16
	movl	_windowxy1, %esi
	movl	%ebx, 44(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	addl	%eax, %esi
	movl	_startumost, %eax
	movl	%edi, 52(%esp)
	movswl	(%ecx,%ebx,2), %ecx
	movswl	(%eax,%esi,2), %eax
	.cfi_offset 7, -12
	movl	%ecx, %edi
	subl	%edx, %eax
	cmpl	%ecx, %eax
	cmovge	%eax, %edi
	movl	_startdmost, %eax
	movswl	(%eax,%esi,2), %eax
	movl	%edi, 24(%esp)
	subl	%edx, %eax
	movl	__ZL5dwall.lto_priv.0, %edx
	movswl	(%edx,%ebx,2), %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	subl	$1, %eax
	movl	%eax, 28(%esp)
	cmpl	%edi, %eax
	jl	L226
	movl	__ZL5swall.lto_priv.0, %eax
	movl	%ebp, 56(%esp)
	.cfi_offset 5, -8
	movl	_globvis, %edx
	movl	(%eax,%ebx,4), %eax
	movl	%eax, 40(%esp)
/APP
 # 3252 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$0, %edx
	sarl	$8, %eax
	addl	_globalshade, %eax
	movswl	_globalpicnum, %edi
	cmovs	%edx, %eax
	movswl	_numshades, %edx
	movl	__ZL8globalht.lto_priv.0, %esi
	movswl	_tilesiz(,%edi,4), %ebp
	subl	$1, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	_globalpal, %edx
	sall	$8, %eax
	addl	_palookup(,%edx,4), %eax
	movl	%eax, 32(%esp)
	movswl	_tilesiz+2(,%edi,4), %eax
	testl	%esi, %esi
	je	L228
	movswl	4(%esi), %ecx
	sall	%cl, %ebp
	movswl	6(%esi), %ecx
	sall	%cl, %eax
L228:
	movl	__ZL5lwall.lto_priv.0, %edx
	negl	%eax
	negl	%ebp
	movl	%eax, %ecx
	movl	__ZL14globalxpanning.lto_priv.0, %eax
	addl	(%edx,%ebx,4), %eax
	movzwl	%bp, %edx
	andl	%eax, %edx
	testw	%bp, %bp
	jns	L230
	movswl	%bp, %ebp
	xorl	%edx, %edx
	negl	%ebp
	divl	%ebp
L230:
	movswl	%cx, %eax
	movl	%edx, %ebp
	negl	%eax
	sall	%cl, %ebp
	imull	%edx, %eax
	testw	%cx, %cx
	cmovs	%eax, %ebp
	testl	%esi, %esi
	je	L233
	movl	(%esi), %eax
L234:
	addl	%ebp, %eax
	movl	24(%esp), %esi
	subl	_globalhoriz, %esi
	movl	%eax, 36(%esp)
	movl	__ZL14drawing_sprite.lto_priv.0, %eax
	addl	$1, %esi
	movl	__ZL8globalzd.lto_priv.0, %edi
	movl	__ZL8globalzd.lto_priv.0+4, %ebp
	testl	%eax, %eax
	jne	L245
	movl	40(%esp), %ecx
	imull	__ZL12globalyscale.lto_priv.0, %ecx
	imull	%ecx, %esi
	addl	%edi, %esi
L236:
	movl	_ylookup, %eax
	movl	24(%esp), %edi
	addl	(%eax,%edi,4), %ebx
	movl	28(%esp), %eax
	movl	%esi, 12(%esp)
	addl	_frameoffset, %ebx
	movl	%ecx, (%esp)
	subl	%edi, %eax
	movl	%ebx, 20(%esp)
	movl	36(%esp), %ebx
	cmpw	$0, __ZL14globalshiftval.lto_priv.0
	movl	%eax, 8(%esp)
	movl	32(%esp), %eax
	movl	%ebx, 16(%esp)
	movl	%eax, 4(%esp)
	jne	L237
	call	_tvlineasm1nonpow2
	movl	56(%esp), %ebp
	.cfi_restore 5
L226:
	movl	44(%esp), %ebx
	movl	48(%esp), %esi
	movl	52(%esp), %edi
	addl	$60, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L242:
	ret
	.p2align 4,,10
	.p2align 3
L237:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	_tvlineasm1
	movl	56(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	movl	44(%esp), %ebx
	movl	48(%esp), %esi
	movl	52(%esp), %edi
	addl	$60, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L245:
	.cfi_restore_state
	movl	__ZL6swallf.lto_priv.0, %eax
	movss	(%eax,%ebx,4), %xmm0
	movss	%xmm0, (%esp)
	call	_llrintf
	movl	%eax, %ecx
	movl	%esi, %eax
	movl	%edx, 40(%esp)
	cltd
	movl	40(%esp), %eax
	imull	%ecx, %edx
	imull	%esi, %eax
	addl	%edx, %eax
	movl	%eax, 40(%esp)
	movl	%esi, %eax
	movl	40(%esp), %esi
	mull	%ecx
	addl	%esi, %edx
	addl	%edi, %eax
	adcl	%ebp, %edx
	movl	%eax, %esi
	xorl	%eax, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	cmpl	%edx, %esi
	movl	%edi, %ebp
	sbbl	%eax, %ebp
	cmovl	%edx, %esi
	cmovl	%eax, %edi
	movl	$-1, %eax
	cmpl	%esi, %eax
	sbbl	%edi, %edx
	cmovl	%eax, %esi
	jmp	L236
	.p2align 4,,10
	.p2align 3
L233:
	movl	_waloff(,%edi,4), %eax
	jmp	L234
	.cfi_endproc
LFE12:
	.p2align 4
	.globl	_yax_getneighborsect
	.def	_yax_getneighborsect;	.scl	2;	.type	32;	.endef
_yax_getneighborsect:
LFB13:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	%ebx, 12(%esp)
	movl	%ecx, (%esp)
	cmpw	$0, _editstatus
	.cfi_offset 3, -20
	jne	L247
	movl	32(%esp), %ebx
	xorl	%eax, %eax
	testl	%ebx, %ebx
	sete	%al
	leal	(%eax,%ecx,2), %eax
	movswl	__ZL10yax_updown.lto_priv.0(%eax,%eax), %ebx
	movl	%esi, %eax
	movl	%ebx, %ecx
	call	_inside
	cmpl	$1, %eax
	je	L246
	movl	(%esp), %eax
	movswl	32(%esp), %edx
	movw	%ax, 6(%esp)
	cwtl
	leal	(%edx,%eax,2), %eax
	movzwl	_yax_bunchnum(%eax,%eax), %eax
L250:
	testw	%ax, %ax
	js	L253
	movl	32(%esp), %ecx
	xorl	%edx, %edx
	cwtl
	testl	%ecx, %ecx
	sete	%dl
	movl	%edx, %ecx
	sall	$8, %ecx
	addl	%ecx, %eax
	movswl	_headsectbunch(%eax,%eax), %ebx
	cmpl	$-1, %ebx
	je	L246
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	movl	%edx, %ebp
	movl	%edx, 8(%esp)
	sall	$12, %ebp
	jmp	L252
	.p2align 4,,10
	.p2align 3
L251:
	addl	%ebp, %ebx
	movswl	_nextsectbunch(%ebx,%ebx), %ebx
	cmpl	$-1, %ebx
	je	L259
L252:
	movswl	%bx, %ecx
	movl	%edi, %edx
	movl	%esi, %eax
	call	_inside
	cmpl	$1, %eax
	jne	L251
	movl	32(%esp), %eax
	movzwl	6(%esp), %esi
	movl	8(%esp), %edx
	leal	(%eax,%ebx,2), %eax
	movw	%si, __ZL10yax_updown.lto_priv.0(%eax,%eax)
	movl	(%esp), %eax
	leal	(%edx,%eax,2), %eax
	movw	%bx, __ZL10yax_updown.lto_priv.0(%eax,%eax)
	movl	24(%esp), %ebp
	.cfi_restore 5
L246:
	movl	%ebx, %eax
	movl	16(%esp), %esi
	movl	12(%esp), %ebx
	movl	20(%esp), %edi
	addl	$28, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L247:
	.cfi_restore_state
	movl	(%esp), %eax
	movswl	32(%esp), %edx
	movw	%ax, 6(%esp)
	cwtl
	call	_yax_getbunch.part.0
	jmp	L250
	.p2align 4,,10
	.p2align 3
L259:
	.cfi_offset 5, -8
	movl	24(%esp), %ebp
	.cfi_restore 5
	jmp	L246
L253:
	movl	$-1, %ebx
	jmp	L246
	.cfi_endproc
LFE13:
	.p2align 4
	.globl	_yax_tweakpicnums
	.def	_yax_tweakpicnums;	.scl	2;	.type	32;	.endef
_yax_tweakpicnums:
LFB15:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%edx, %eax
	sall	$8, %eax
	movl	%ecx, (%esp)
	addl	%ebx, %eax
	movswl	_headsectbunch(%eax,%eax), %ecx
	cmpl	$-1, %ecx
	je	L260
	movl	%edi, 24(%esp)
	.cfi_offset 7, -12
	movl	$-858993459, %edi
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	movl	_sector, %ebp
	movl	%esi, 20(%esp)
	.cfi_offset 6, -16
	testl	%edx, %edx
	jne	L262
	cmpl	$1, (%esp)
	je	L263
	.p2align 4
	.p2align 3
L267:
	leal	(%ecx,%ecx,4), %eax
	leal	0(%ebp,%eax,8), %esi
	leal	12(,%eax,8), %eax
	mull	%edi
	movl	%edx, %ebx
	shrl	$5, %ebx
	addl	$1, _sectorchanged(,%ebx,4)
	testw	$384, 12(%esi)
	jne	L264
	leal	16(%esi), %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%edi
	movl	_rendmode, %eax
	movl	%eax, 8(%esp)
	shrl	$5, %edx
	movl	%edx, (%esp)
	movl	_sectorchanged(,%edx,4), %edx
	movl	(%esp), %eax
	movl	%edx, 4(%esp)
	addl	$1, %edx
	movl	%edx, _sectorchanged(,%eax,4)
	movzwl	16(%esi), %eax
	movl	(%esp), %edx
	movw	%ax, 14(%esp)
	movw	%ax, __ZZ16yax_tweakpicnumsE7opicnum(%ecx,%ecx)
	movl	4(%esp), %eax
	addl	$2, %eax
	cmpw	$0, _editstatus
	je	L265
	cmpb	$0, _showinvisibility
	je	L265
	movl	%eax, _sectorchanged(,%edx,4)
	movl	$30719, %eax
	movw	%ax, 16(%esi)
	cmpl	$4, 8(%esp)
	je	L266
	.p2align 4
	.p2align 3
L264:
	movswl	_nextsectbunch(%ecx,%ecx), %ecx
	cmpl	$-1, %ecx
	jne	L267
	.p2align 4
	.p2align 3
L295:
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
	movl	28(%esp), %ebp
	.cfi_restore 5
L260:
	movl	16(%esp), %ebx
	addl	$32, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L271:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	addl	$4096, %ecx
	cmpl	$1, (%esp)
	je	L296
L274:
	movswl	_nextsectbunch(%ecx,%ecx), %ecx
	cmpl	$-1, %ecx
	je	L295
L262:
	leal	(%ecx,%ecx,4), %eax
	leal	0(%ebp,%eax,8), %esi
	leal	14(,%eax,8), %eax
	mull	%edi
	movl	%edx, %ebx
	shrl	$5, %ebx
	addl	$1, _sectorchanged(,%ebx,4)
	testw	$384, 14(%esi)
	jne	L271
	movl	(%esp), %eax
	testl	%eax, %eax
	jne	L297
	leal	24(%esi), %edx
	addl	$4096, %ecx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	movl	_sectorchanged(,%edx,4), %eax
	movl	%eax, 4(%esp)
	movl	_rendmode, %eax
	movl	%eax, 8(%esp)
	movl	4(%esp), %eax
	addl	$1, %eax
	movl	%eax, _sectorchanged(,%edx,4)
	movzwl	24(%esi), %eax
	movw	%ax, __ZZ16yax_tweakpicnumsE7opicnum(%ecx,%ecx)
	movl	4(%esp), %eax
	addl	$2, %eax
	cmpw	$0, _editstatus
	je	L275
	cmpb	$0, _showinvisibility
	je	L275
	movl	%eax, _sectorchanged(,%edx,4)
	movl	$30719, %eax
	movw	%ax, 24(%esi)
	cmpl	$4, 8(%esp)
	jne	L274
L276:
	addl	$1, _sectorchanged(,%ebx,4)
	orw	$-32768, __ZZ16yax_tweakpicnumsE7opicnum(%ecx,%ecx)
	orw	$128, 14(%esi)
	jmp	L274
	.p2align 4,,10
	.p2align 3
L296:
	cmpw	$0, __ZZ16yax_tweakpicnumsE7opicnum(%ecx,%ecx)
	jns	L274
L273:
	leal	24(%esi), %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%edi
	movzwl	__ZZ16yax_tweakpicnumsE7opicnum(%ecx,%ecx), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, 24(%esi)
	cmpl	$4, _rendmode
	jne	L274
	xorl	%eax, %eax
	addl	$1, _sectorchanged(,%ebx,4)
	movw	%ax, __ZZ16yax_tweakpicnumsE7opicnum(%ecx,%ecx)
	andw	$-129, 14(%esi)
	addl	$1, _sectorchanged(,%edx,4)
	andw	$32767, 24(%esi)
	jmp	L274
	.p2align 4,,10
	.p2align 3
L268:
	cmpw	$0, __ZZ16yax_tweakpicnumsE7opicnum(%ecx,%ecx)
	js	L270
L269:
	movswl	_nextsectbunch(%ecx,%ecx), %ecx
	cmpl	$-1, %ecx
	je	L295
L263:
	leal	(%ecx,%ecx,4), %eax
	leal	0(%ebp,%eax,8), %esi
	leal	12(,%eax,8), %eax
	mull	%edi
	movl	%edx, %ebx
	shrl	$5, %ebx
	addl	$1, _sectorchanged(,%ebx,4)
	testw	$384, 12(%esi)
	jne	L268
L270:
	leal	16(%esi), %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%edi
	movzwl	__ZZ16yax_tweakpicnumsE7opicnum(%ecx,%ecx), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, 16(%esi)
	cmpl	$4, _rendmode
	jne	L269
	xorl	%eax, %eax
	addl	$1, _sectorchanged(,%ebx,4)
	movw	%ax, __ZZ16yax_tweakpicnumsE7opicnum(%ecx,%ecx)
	andw	$-129, 12(%esi)
	addl	$1, _sectorchanged(,%edx,4)
	andw	$32767, 16(%esi)
	movswl	_nextsectbunch(%ecx,%ecx), %ecx
	cmpl	$-1, %ecx
	jne	L263
	jmp	L295
	.p2align 4,,10
	.p2align 3
L275:
	movl	%eax, _sectorchanged(,%edx,4)
	movl	$13, %edx
	movw	%dx, 24(%esi)
	cmpl	$4, 8(%esp)
	jne	L274
	jmp	L276
	.p2align 4,,10
	.p2align 3
L297:
	addl	$4096, %ecx
	jmp	L273
	.p2align 4,,10
	.p2align 3
L265:
	movl	%eax, _sectorchanged(,%edx,4)
	movl	$13, %eax
	movw	%ax, 16(%esi)
	cmpl	$4, 8(%esp)
	jne	L264
L266:
	movzwl	14(%esp), %edx
	addl	$1, _sectorchanged(,%ebx,4)
	orw	$128, 12(%esi)
	orw	$-32768, %dx
	movw	%dx, __ZZ16yax_tweakpicnumsE7opicnum(%ecx,%ecx)
	movswl	_nextsectbunch(%ecx,%ecx), %ecx
	cmpl	$-1, %ecx
	jne	L267
	jmp	L295
	.cfi_endproc
LFE15:
	.p2align 4
	.globl	__ZL16yax_copytspritesv.lto_priv.0
	.def	__ZL16yax_copytspritesv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL16yax_copytspritesv.lto_priv.0:
LFB16:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%edi, 24(%esp)
	.cfi_offset 7, -12
	movl	_yax_globallev, %edi
	movswl	__ZL17yax_spritesortcnt.lto_priv.0(%edi,%edi), %eax
	movl	%eax, 8(%esp)
	testl	%eax, %eax
	jle	L298
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	xorl	%ebp, %ebp
	movl	%ebx, 16(%esp)
	movl	%esi, 20(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	jmp	L308
	.p2align 4,,10
	.p2align 3
L300:
	cmpw	$16384, %ax
	je	L309
	movl	$1, %edx
	cmpw	$-32768, %ax
	je	L303
L302:
	movl	_spritesortcnt, %edx
	cmpl	$4095, %edx
	jg	L316
L318:
	addl	_sprite, %ebx
	leal	1(%edx), %eax
	movl	%eax, _spritesortcnt
	movl	(%ebx), %eax
	imull	$44, %edx, %edx
	addl	_tsprite, %edx
	movl	%eax, (%edx)
	movl	4(%ebx), %eax
	movl	%eax, 4(%edx)
	movl	8(%ebx), %eax
	movl	%eax, 8(%edx)
	movzwl	12(%ebx), %eax
	movw	%ax, 12(%edx)
	movzwl	14(%ebx), %eax
	movw	%ax, 14(%edx)
	movzbl	16(%ebx), %eax
	movb	%al, 16(%edx)
	movzbl	17(%ebx), %eax
	movb	%al, 17(%edx)
	movzbl	19(%ebx), %eax
	movb	%al, 19(%edx)
	movzbl	20(%ebx), %eax
	movb	%al, 20(%edx)
	movzbl	21(%ebx), %eax
	movb	%al, 21(%edx)
	movzbl	22(%ebx), %eax
	movb	%al, 22(%edx)
	movzbl	23(%ebx), %eax
	movb	%al, 23(%edx)
	movzwl	24(%ebx), %eax
	movw	%ax, 24(%edx)
	movzwl	26(%ebx), %eax
	movw	%ax, 26(%edx)
	movzwl	28(%ebx), %eax
	movw	%ax, 28(%edx)
	movl	32(%ebx), %eax
	movl	%eax, 32(%edx)
	movzwl	36(%ebx), %eax
	movw	%ax, 36(%edx)
	movzwl	38(%ebx), %eax
	movw	%ax, 38(%edx)
	movzwl	40(%ebx), %eax
	movw	%ax, 40(%edx)
	movzwl	42(%ebx), %eax
	movb	$0, 18(%edx)
	movw	%ax, 42(%edx)
	movzwl	6(%esp), %eax
	movw	%cx, 24(%edx)
	movw	%ax, 30(%edx)
L301:
	addl	$1, %ebp
	cmpl	%ebp, 8(%esp)
	je	L316
	movl	_yax_globallev, %edi
L308:
	movl	%edi, %edx
	sall	$12, %edx
	leal	(%edx,%ebp), %eax
	movzwl	__ZL11yax_tsprite(%eax,%eax), %ebx
	movl	%ebx, %eax
	movl	%ebx, %esi
	andl	$16383, %ebx
	andw	$16383, %si
	imull	$44, %ebx, %ebx
	andw	$-16384, %ax
	movw	%si, 6(%esp)
	movl	_sprite, %esi
	addl	%ebx, %esi
	movswl	24(%esi), %ecx
	cmpw	$-16384, %ax
	jne	L300
	movzbl	__ZL17yax_tsprfrombunch(%ebp,%edx), %eax
	cmpl	_yax_globalbunch, %eax
	jne	L301
	movl	_spritesortcnt, %edx
	cmpl	$4095, %edx
	jle	L318
	.p2align 4
	.p2align 3
L316:
	movl	16(%esp), %ebx
	.cfi_restore 3
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	28(%esp), %ebp
	.cfi_restore 5
L298:
	movl	24(%esp), %edi
	addl	$32, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L309:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	xorl	%edx, %edx
L303:
	sall	$12, %edi
	leal	(%edi,%ebp), %eax
	xorl	%edi, %edi
	cmpw	$0, __ZL14yax_layershift(%eax,%eax)
	jle	L306
	movl	%ebx, 12(%esp)
	movl	%edx, %ebx
	.p2align 4
	.p2align 3
L305:
	testl	%ecx, %ecx
	js	L301
	movl	4(%esi), %edx
	movl	(%esi), %eax
	movl	%ebx, (%esp)
	addl	$1, %edi
	call	_yax_getneighborsect
	movl	%eax, %ecx
	movl	_yax_globallev, %eax
	sall	$12, %eax
	addl	%ebp, %eax
	movswl	__ZL14yax_layershift(%eax,%eax), %eax
	cmpl	%edi, %eax
	jg	L305
	movl	12(%esp), %ebx
L306:
	testl	%ecx, %ecx
	jns	L302
	jmp	L301
	.cfi_endproc
LFE16:
	.p2align 4
	.globl	_setslope
	.def	_setslope;	.scl	2;	.type	32;	.endef
_setslope:
LFB19:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	leal	(%eax,%eax,4), %eax
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	_sector, %ebx
	leal	(%ebx,%eax,8), %ecx
	testw	%si, %si
	jne	L320
	testl	%edx, %edx
	jne	L329
	leal	12(%ecx), %edx
	movl	$-858993459, %esi
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	andw	$-3, 12(%ecx)
	addl	$18, %ecx
L327:
	movl	%ecx, %edx
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, (%ecx)
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
L320:
	.cfi_restore_state
	testl	%edx, %edx
	jne	L330
	leal	12(%ecx), %edx
	movl	$-858993459, %eax
	subl	%ebx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	orw	$2, 12(%ecx)
	addl	$18, %ecx
L328:
	movl	%ecx, %edx
	movl	$-858993459, %eax
	subl	%ebx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%si, (%ecx)
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
L330:
	.cfi_restore_state
	leal	14(%ecx), %edx
	movl	$-858993459, %eax
	subl	%ebx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	orw	$2, 14(%ecx)
	addl	$26, %ecx
	jmp	L328
	.p2align 4,,10
	.p2align 3
L329:
	leal	14(%ecx), %edx
	movl	$-858993459, %esi
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	andw	$-3, 14(%ecx)
	addl	$26, %ecx
	jmp	L327
	.cfi_endproc
LFE19:
	.p2align 4
	.globl	_checksectorpointer
	.def	_checksectorpointer;	.scl	2;	.type	32;	.endef
_checksectorpointer:
LFB20:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movswl	%ax, %ecx
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
	subl	$116, %esp
	.cfi_def_cfa_offset 136
	movl	_wall, %edx
	movl	%ecx, 72(%esp)
	sall	$5, %ecx
	leal	(%edx,%ecx), %ebx
	movl	%ecx, 80(%esp)
	movl	(%ebx), %esi
	movswl	8(%ebx), %ecx
	movl	%esi, 28(%esp)
	sall	$5, %ecx
	movl	4(%ebx), %esi
	addl	%edx, %ecx
	movl	%esi, 40(%esp)
	movl	(%ecx), %esi
	movl	4(%ecx), %ecx
	movl	%esi, 36(%esp)
	movl	%ecx, 20(%esp)
	movswl	10(%ebx), %ecx
	testw	%cx, %cx
	js	L332
	sall	$5, %ecx
	addl	%edx, %ecx
	cmpl	%esi, (%ecx)
	je	L376
L333:
	leal	12(%ecx), %esi
	movl	$-1, %ebp
	subl	%edx, %esi
	shrl	$5, %esi
	addl	$1, _wallchanged(,%esi,4)
	movl	$-1, %esi
	movw	%si, 12(%ecx)
	leal	10(%ecx), %esi
	subl	%edx, %esi
	shrl	$5, %esi
	addl	$1, _wallchanged(,%esi,4)
	movswl	_numsectors, %esi
	movw	%bp, 10(%ecx)
	movswl	12(%ebx), %ecx
	cmpl	%esi, %ecx
	jnb	L336
	cmpw	$0, 10(%ebx)
	js	L337
L336:
	movl	%esi, 32(%esp)
	xorl	%ebp, %ebp
L339:
	movw	%di, 60(%esp)
	leal	10(%ebx), %esi
	leal	12(%ebx), %edi
	movl	$-1, %ecx
	subl	%edx, %esi
	subl	%edx, %edi
	movw	%ax, 62(%esp)
	movl	$-1, %eax
	shrl	$5, %esi
	shrl	$5, %edi
	addl	$1, _wallchanged(,%esi,4)
	movw	%cx, 10(%ebx)
	addl	$1, _wallchanged(,%edi,4)
	movw	%ax, 12(%ebx)
	movl	_chsecptr_onextwall, %eax
	testl	%eax, %eax
	je	L340
	movl	72(%esp), %ecx
	movswl	(%eax,%ecx,2), %eax
	movw	%ax, 24(%esp)
	testw	%ax, %ax
	js	L340
	movl	%eax, 48(%esp)
	sall	$5, %eax
	addl	%edx, %eax
	movl	%eax, 44(%esp)
	cmpw	$0, 10(%eax)
	js	L341
L340:
	cmpl	32(%esp), %ebp
	jge	L334
	movswl	60(%esp), %eax
	movl	$-2147483648, 56(%esp)
	movl	$-1, 76(%esp)
	movl	$-1, 48(%esp)
	movl	$0, 52(%esp)
	movl	%eax, 24(%esp)
	movl	%ebp, %eax
	movl	36(%esp), %ebp
	.p2align 4
	.p2align 3
L357:
	cmpl	%eax, 24(%esp)
	je	L346
	movl	%eax, %edx
	movl	%eax, %ecx
	andl	$7, %edx
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.7(%edx), %edx
	movzbl	_graysectbitmap(%ecx), %ebx
	andl	%edx, %ebx
	cmpb	%bl, %dl
	je	L346
	leal	(%eax,%eax,4), %edx
	leal	0(,%edx,8), %esi
	movl	_sector, %edx
	movl	%esi, 44(%esp)
	addl	%esi, %edx
	movswl	(%edx), %ebx
	movswl	2(%edx), %esi
	addl	%ebx, %esi
	cmpl	%esi, %ebx
	jge	L346
	movl	%eax, 36(%esp)
	.p2align 4
	.p2align 3
L345:
	movl	_wall, %edx
	movl	%ebx, %eax
	sall	$5, %eax
	addl	%edx, %eax
	cmpl	(%eax), %ebp
	jne	L348
	movl	20(%esp), %edi
	cmpl	4(%eax), %edi
	jne	L348
	movswl	8(%eax), %ecx
	movl	28(%esp), %edi
	sall	$5, %ecx
	addl	%ecx, %edx
	cmpl	(%edx), %edi
	jne	L348
	movl	40(%esp), %edi
	cmpl	4(%edx), %edi
	jne	L348
	movzwl	10(%eax), %eax
	testw	%ax, %ax
	js	L364
	cmpw	%ax, 62(%esp)
	je	L364
	.p2align 4
	.p2align 3
L348:
	addl	$1, %ebx
	cmpl	%ebx, %esi
	jne	L345
	movl	36(%esp), %eax
L346:
	addl	$1, %eax
	cmpl	%eax, 32(%esp)
	jne	L357
	movl	48(%esp), %edx
	testl	%edx, %edx
	js	L331
	cmpw	$-2, 60(%esp)
	je	L331
	movl	72(%esp), %eax
	xorl	%edx, %edx
	call	_yax_getnextwall
	testw	%ax, %ax
	js	L377
L360:
	movl	56(%esp), %eax
	testl	%eax, %eax
	jle	L331
L361:
	movl	_wall, %edx
	movl	80(%esp), %eax
	leal	(%edx,%eax), %ecx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movzwl	76(%esp), %eax
	movw	%ax, 12(%ecx)
	leal	10(%ecx), %eax
	subl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	48(%esp), %eax
	movw	%ax, 10(%ecx)
	sall	$5, %eax
	leal	(%edx,%eax), %ecx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movzwl	60(%esp), %eax
	movw	%ax, 12(%ecx)
	leal	10(%ecx), %eax
	subl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movzwl	62(%esp), %eax
	movw	%ax, 10(%ecx)
L331:
	movl	52(%esp), %eax
	addl	$116, %esp
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
L364:
	.cfi_restore_state
	movl	24(%esp), %eax
	call	_yax_getbunch.constprop.1
	movl	%eax, %edi
	movl	24(%esp), %eax
	call	_yax_getbunch.constprop.0
	movswl	36(%esp), %edx
	movw	%ax, 68(%esp)
	movl	%edx, %eax
	movl	%edx, 64(%esp)
	call	_yax_getbunch.constprop.1
	movw	%ax, 70(%esp)
	movl	64(%esp), %eax
	call	_yax_getbunch.constprop.0
	testw	%di, %di
	js	L365
	cmpw	%di, 70(%esp)
	je	L351
L365:
	movzwl	68(%esp), %edi
	testw	%di, %di
	js	L353
	cmpw	%di, %ax
	je	L351
L353:
	movl	24(%esp), %eax
	movl	_sector, %edx
	movl	28(%esp), %ecx
	leal	(%eax,%eax,4), %edi
	leal	84(%esp), %eax
	movl	%eax, 16(%esp)
	leal	100(%esp), %eax
	sall	$3, %edi
	movl	%eax, 12(%esp)
	movl	40(%esp), %eax
	addl	%edi, %edx
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	call	_getzsofslopeptr
	movl	20(%esp), %edx
	leal	88(%esp), %eax
	addl	_sector, %edi
	movl	%eax, 16(%esp)
	leal	104(%esp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%edi, (%esp)
	movl	%ebp, 4(%esp)
	call	_getzsofslopeptr
	leal	92(%esp), %eax
	movl	44(%esp), %edi
	movl	28(%esp), %ecx
	movl	%eax, 16(%esp)
	leal	108(%esp), %eax
	movl	%eax, 12(%esp)
	movl	40(%esp), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	_sector, %eax
	addl	%edi, %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	leal	96(%esp), %eax
	movl	20(%esp), %edx
	movl	%ebp, 4(%esp)
	movl	%eax, 16(%esp)
	leal	112(%esp), %eax
	movl	%eax, 12(%esp)
	movl	_sector, %eax
	movl	%edx, 8(%esp)
	addl	%edi, %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	92(%esp), %eax
	movl	108(%esp), %ecx
	movl	84(%esp), %edx
	movl	%eax, (%esp)
	movl	100(%esp), %eax
	call	__ZL8getscoreiiii
	movl	112(%esp), %ecx
	movl	88(%esp), %edx
	movl	%eax, %edi
	movl	96(%esp), %eax
	movl	%eax, (%esp)
	movl	104(%esp), %eax
	call	__ZL8getscoreiiii
	cmpl	%eax, %edi
	movl	%eax, %edx
	leal	(%edi,%eax), %ecx
	cmovge	%edi, %edx
	xorl	%edi, %eax
	cmovns	%ecx, %edx
	cmpl	$-1, 48(%esp)
	je	L363
L378:
	cmpl	56(%esp), %edx
	jg	L363
L356:
	addl	$1, 52(%esp)
	jmp	L348
	.p2align 4,,10
	.p2align 3
L351:
	movl	$2147483647, %edx
	cmpl	$-1, 48(%esp)
	jne	L378
L363:
	movl	36(%esp), %eax
	movl	%edx, 56(%esp)
	movl	%ebx, 48(%esp)
	movl	%eax, 76(%esp)
	jmp	L356
L376:
	movl	20(%esp), %esi
	cmpl	%esi, 4(%ecx)
	jne	L333
	movswl	8(%ecx), %esi
	movl	28(%esp), %ebp
	sall	$5, %esi
	addl	%edx, %esi
	cmpl	%ebp, (%esi)
	jne	L333
	movl	40(%esp), %ebp
	cmpl	%ebp, 4(%esi)
	jne	L333
L334:
	movl	$0, 52(%esp)
	movl	52(%esp), %eax
	addl	$116, %esp
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
	movswl	12(%ebx), %ecx
	movswl	_numsectors, %esi
	cmpl	%esi, %ecx
	jnb	L336
L337:
	leal	1(%ecx), %esi
	movl	%ecx, %ebp
	movl	%esi, 32(%esp)
	jmp	L339
L341:
	movl	44(%esp), %eax
	movl	36(%esp), %ecx
	cmpl	(%eax), %ecx
	jne	L340
	movl	20(%esp), %ecx
	cmpl	4(%eax), %ecx
	jne	L340
	movswl	8(%eax), %eax
	movl	28(%esp), %ecx
	sall	$5, %eax
	addl	%edx, %eax
	cmpl	(%eax), %ecx
	jne	L340
	movl	40(%esp), %ecx
	cmpl	4(%eax), %ecx
	jne	L340
	movl	48(%esp), %eax
	movl	%edx, 20(%esp)
	call	_sectorofwall
	addl	$1, _wallchanged(,%edi,4)
	movl	44(%esp), %edi
	movw	%ax, 12(%ebx)
	movzwl	24(%esp), %eax
	movl	20(%esp), %edx
	addl	$1, _wallchanged(,%esi,4)
	movw	%ax, 10(%ebx)
	leal	12(%edi), %eax
	subl	%edx, %eax
	movl	$1, 52(%esp)
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movzwl	60(%esp), %eax
	movw	%ax, 12(%edi)
	leal	10(%edi), %eax
	subl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movzwl	62(%esp), %eax
	movw	%ax, 10(%edi)
	jmp	L331
	.p2align 4,,10
	.p2align 3
L377:
	movl	72(%esp), %eax
	call	_yax_getnextwall.constprop.0
	testw	%ax, %ax
	jns	L360
	jmp	L361
	.cfi_endproc
LFE20:
	.p2align 4
	.globl	_renderAddTsprite
	.def	_renderAddTsprite;	.scl	2;	.type	32;	.endef
_renderAddTsprite:
LFB21:
	.cfi_startproc
	subl	$60, %esp
	.cfi_def_cfa_offset 64
	movl	%edx, %ecx
	movswl	%ax, %edx
	movl	%esi, 48(%esp)
	.cfi_offset 6, -16
	imull	$44, %edx, %esi
	movl	%ebx, 44(%esp)
	.cfi_offset 3, -20
	movl	_sprite, %ebx
	movl	%edi, 52(%esp)
	.cfi_offset 7, -12
	movl	_g_nodraw, %edi
	movl	%esi, 16(%esp)
	addl	%esi, %ebx
	movl	%edi, 12(%esp)
	testl	%edi, %edi
	jne	L380
	movl	_numyaxbunches, %edx
	testl	%edx, %edx
	jne	L379
	movl	_spritesortcnt, %edx
	cmpl	$4095, %edx
	jle	L423
L382:
	movl	$1, 12(%esp)
L379:
	movl	12(%esp), %eax
	movl	44(%esp), %ebx
	movl	48(%esp), %esi
	movl	52(%esp), %edi
	addl	$60, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L380:
	.cfi_restore_state
	movl	_yax_nomaskpass, %esi
	movl	%esi, 12(%esp)
	testl	%esi, %esi
	jne	L401
	movl	%ebp, 56(%esp)
	.cfi_offset 5, -8
	movl	_yax_globallev, %ebp
	movzwl	__ZL17yax_spritesortcnt.lto_priv.0(%ebp,%ebp), %esi
	movw	%si, 20(%esp)
	cmpw	$4095, %si
	jg	L424
	movl	_yax_globalbunch, %edi
	movswl	20(%esp), %esi
	movl	%edi, 28(%esp)
	testl	%edi, %edi
	js	L425
	movl	%ebp, %edx
	movl	%eax, %edi
	sall	$12, %edx
	orw	$-16384, %di
	movl	%edx, 24(%esp)
	addl	%esi, %edx
	movw	%di, __ZL11yax_tsprite(%edx,%edx)
	movl	24(%esp), %edi
	movzbl	28(%esp), %edx
	movb	%dl, __ZL17yax_tsprfrombunch(%esi,%edi)
L385:
	movzwl	20(%esp), %edx
	addl	$1, %edx
	movw	%dx, __ZL17yax_spritesortcnt.lto_priv.0(%ebp,%ebp)
	movzwl	12(%ebx), %edx
	movl	%edx, %esi
	andl	$48, %esi
	cmpw	$32, %si
	je	L421
	movw	%cx, 20(%esp)
	movswl	14(%ebx), %ecx
	movzbl	21(%ebx), %esi
	movw	%ax, 34(%esp)
	movswl	_tilesiz+2(,%ecx,4), %eax
	imull	%esi, %eax
	leal	0(,%eax,4), %edi
	addl	%eax, %eax
	andl	$128, %edx
	movl	$0, %edx
	cmovne	%eax, %edx
	movsbl	_picanm+2(%ecx,%ecx,4), %eax
	movl	%edi, 24(%esp)
	movswl	20(%esp), %edi
	imull	%esi, %eax
	movl	%edx, %esi
	movl	4(%ebx), %edx
	movl	%edi, %ecx
	sall	$2, %eax
	subl	%eax, %esi
	movl	(%ebx), %eax
	movl	$0, (%esp)
	movl	%esi, 36(%esp)
	call	_yax_getneighborsect
	movl	%eax, %ecx
	testl	%eax, %eax
	js	L422
	movzwl	34(%esp), %eax
	movswl	%si, %esi
	movl	%edi, %edx
	movl	%esi, 28(%esp)
	orb	$64, %ah
	movw	%ax, 32(%esp)
	testl	%ebp, %ebp
	jle	L422
	movl	%ebx, 20(%esp)
	movl	%ecx, %esi
	movl	%edi, 40(%esp)
	jmp	L394
	.p2align 4,,10
	.p2align 3
L391:
	movl	4(%eax), %ecx
	movl	%ecx, 8(%esp)
	movl	(%eax), %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	call	_getceilzofslopeptr.part.0
	movl	%eax, %edx
	movl	16(%esp), %eax
	addl	_sprite, %eax
L392:
	cmpl	%edx, %ebx
	jge	L415
	leal	-1(%ebp), %ebx
	movzwl	__ZL17yax_spritesortcnt.lto_priv.0(%ebx,%ebx), %edx
	cmpw	$4095, %dx
	jg	L393
	movl	%ebx, %edi
	movswl	%dx, %ecx
	sall	$12, %edi
	addl	%ecx, %edi
	movl	_yax_globallev, %ecx
	subl	%ebp, %ecx
	movl	%ecx, %ebp
	negl	%ebp
	cmovs	%ecx, %ebp
	movzwl	32(%esp), %ecx
	addl	$1, %edx
	movw	%dx, __ZL17yax_spritesortcnt.lto_priv.0(%ebx,%ebx)
	addl	$1, %ebp
	movw	%cx, __ZL11yax_tsprite(%edi,%edi)
	movw	%bp, __ZL14yax_layershift(%edi,%edi)
L393:
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	$0, (%esp)
	movl	%esi, %ecx
	call	_yax_getneighborsect
	movl	%esi, %edx
	testl	%eax, %eax
	js	L406
	testl	%ebx, %ebx
	je	L406
	movl	%eax, %esi
	movl	%ebx, %ebp
L394:
	leal	(%edx,%edx,4), %ecx
	movl	_sector, %edx
	movl	20(%esp), %eax
	movl	28(%esp), %ebx
	leal	(%edx,%ecx,8), %edx
	addl	8(%eax), %ebx
	movl	16(%esp), %eax
	subl	24(%esp), %ebx
	addl	_sprite, %eax
	testb	$2, 12(%edx)
	jne	L391
	movl	4(%edx), %edx
	jmp	L392
	.p2align 4,,10
	.p2align 3
L401:
	.cfi_restore 5
	movl	$0, 12(%esp)
	jmp	L379
	.p2align 4,,10
	.p2align 3
L423:
	leal	1(%edx), %ecx
	movl	%ecx, _spritesortcnt
	movl	(%ebx), %ecx
	imull	$44, %edx, %edx
	addl	_tsprite, %edx
	movl	%ecx, (%edx)
	movl	4(%ebx), %ecx
	movl	%ecx, 4(%edx)
	movl	8(%ebx), %ecx
	movl	%ecx, 8(%edx)
	movzwl	12(%ebx), %ecx
	movw	%cx, 12(%edx)
	movzwl	14(%ebx), %ecx
	movw	%cx, 14(%edx)
	movzbl	16(%ebx), %ecx
	movb	%cl, 16(%edx)
	movzbl	17(%ebx), %ecx
	movb	%cl, 17(%edx)
	movzbl	19(%ebx), %ecx
	movb	%cl, 19(%edx)
	movzbl	20(%ebx), %ecx
	movb	%cl, 20(%edx)
	movzbl	21(%ebx), %ecx
	movb	%cl, 21(%edx)
	movzbl	22(%ebx), %ecx
	movb	%cl, 22(%edx)
	movzbl	23(%ebx), %ecx
	movb	%cl, 23(%edx)
	movzwl	24(%ebx), %ecx
	movw	%cx, 24(%edx)
	movzwl	26(%ebx), %ecx
	movw	%cx, 26(%edx)
	movzwl	28(%ebx), %ecx
	movw	%cx, 28(%edx)
	movl	32(%ebx), %ecx
	movl	%ecx, 32(%edx)
	movzwl	36(%ebx), %ecx
	movw	%cx, 36(%edx)
	movzwl	38(%ebx), %ecx
	movw	%cx, 38(%edx)
	movzwl	40(%ebx), %ecx
	movw	%cx, 40(%edx)
	movzwl	42(%ebx), %ecx
	movb	$0, 18(%edx)
	movw	%cx, 42(%edx)
	movw	%ax, 30(%edx)
	jmp	L379
	.p2align 4,,10
	.p2align 3
L424:
	.cfi_offset 5, -8
	movl	56(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L382
	.p2align 4,,10
	.p2align 3
L421:
	.cfi_restore_state
	movl	56(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L379
	.p2align 4,,10
	.p2align 3
L425:
	.cfi_restore_state
	movl	%ebp, %edi
	sall	$12, %edi
	addl	%esi, %edi
	movw	%ax, __ZL11yax_tsprite(%edi,%edi)
	jmp	L385
	.p2align 4,,10
	.p2align 3
L406:
	movl	20(%esp), %ebx
	movl	40(%esp), %edi
L422:
	movl	16(%esp), %eax
	addl	_sprite, %eax
L390:
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%edi, %ecx
	movl	$1, (%esp)
	movl	_yax_globallev, %esi
	call	_yax_getneighborsect
	movl	%eax, %ebp
	testl	%eax, %eax
	js	L421
	cmpl	$16, %esi
	jg	L421
	movswl	36(%esp), %eax
	movl	%ebx, 24(%esp)
	movl	%eax, 20(%esp)
	movzwl	34(%esp), %eax
	orw	$-32768, %ax
	movw	%ax, 28(%esp)
	movl	%edi, %eax
	movl	%esi, %edi
	movl	16(%esp), %esi
	jmp	L399
	.p2align 4,,10
	.p2align 3
L396:
	movl	_sprite, %edx
	addl	%esi, %edx
	movl	4(%edx), %ecx
	movl	%ecx, 8(%esp)
	movl	(%edx), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_getflorzofslopeptr.part.0
L397:
	cmpl	%eax, %ebx
	jle	L421
	leal	1(%edi), %ebx
	movzwl	__ZL17yax_spritesortcnt.lto_priv.0(%ebx,%ebx), %eax
	cmpw	$4095, %ax
	jg	L398
	movl	%ebx, %ecx
	movswl	%ax, %edx
	sall	$12, %ecx
	addl	%edx, %ecx
	movl	_yax_globallev, %edx
	subl	%edi, %edx
	movl	%edx, %edi
	negl	%edi
	cmovs	%edx, %edi
	addl	$1, %eax
	movw	%ax, __ZL17yax_spritesortcnt.lto_priv.0(%ebx,%ebx)
	addl	$1, %edi
	movw	%di, __ZL14yax_layershift(%ecx,%ecx)
	movzwl	28(%esp), %edi
	movw	%di, __ZL11yax_tsprite(%ecx,%ecx)
L398:
	movl	_sprite, %eax
	movl	%ebp, %ecx
	addl	%esi, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	$1, (%esp)
	call	_yax_getneighborsect
	movl	%eax, %edx
	movl	%ebp, %eax
	testl	%edx, %edx
	js	L421
	cmpl	$17, %ebx
	je	L421
	movl	%edx, %ebp
	movl	%ebx, %edi
L399:
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	movl	24(%esp), %ecx
	movl	20(%esp), %ebx
	leal	(%eax,%edx,8), %eax
	addl	8(%ecx), %ebx
	testb	$2, 14(%eax)
	jne	L396
	movl	8(%eax), %eax
	jmp	L397
	.p2align 4,,10
	.p2align 3
L415:
	movl	20(%esp), %ebx
	movl	40(%esp), %edi
	jmp	L390
	.cfi_endproc
LFE21:
	.p2align 4
	.globl	__ZL17get_screen_coordsRK4vec2IiES2_PiS3_S3_S3_.lto_priv.0
	.def	__ZL17get_screen_coordsRK4vec2IiES2_PiS3_S3_S3_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL17get_screen_coordsRK4vec2IiES2_PiS3_S3_S3_.lto_priv.0:
LFB25:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%ebx, 28(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%esi, 32(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	(%eax), %edx
	movl	%ecx, 16(%esp)
	movl	4(%eax), %ecx
	movl	%ecx, %eax
	negl	%eax
	cmpl	%eax, %edx
	jl	L427
	testl	%ecx, %ecx
	je	L433
	cmpl	%ecx, %edx
	jle	L428
L433:
	xorl	%eax, %eax
L426:
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
L427:
	.cfi_restore_state
	movl	%ebp, 40(%esp)
	movl	%edi, 36(%esp)
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	4(%esi), %edi
	movl	(%esi), %eax
	movl	%edi, %ebp
	negl	%ebp
	cmpl	%ebp, %eax
	jl	L441
	addl	%ecx, %edx
	leal	(%eax,%edi), %ebp
	movl	%edx, %eax
	subl	%ebp, %eax
	jne	L449
	movl	36(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	addl	$44, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L441:
	.cfi_restore_state
	movl	36(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
	jmp	L433
	.p2align 4,,10
	.p2align 3
L449:
	.cfi_restore_state
	subl	%ecx, %edi
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	xorl	%edi, %edi
	imull	%edx
	movl	%ecx, 20(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	20(%esp), %ecx
	movl	40(%esp), %ebp
	.cfi_restore 5
	addl	%eax, %ecx
L432:
	cmpl	$255, %ecx
	jle	L448
	movl	(%esi), %edx
	movl	4(%esi), %eax
	cmpl	%eax, %edx
	jg	L434
	movl	%eax, %ebx
	negl	%ebx
	cmpl	%ebx, %edx
	jl	L448
	testl	%eax, %eax
	jne	L450
	.p2align 4
	.p2align 3
L448:
	movl	36(%esp), %edi
	.cfi_restore 7
	jmp	L433
	.p2align 4,,10
	.p2align 3
L428:
	movl	%edx, %eax
	imull	_halfxdimen
	movl	%ecx, 8(%esp)
	sarl	$31, %ecx
	movl	%ecx, 12(%esp)
	movl	%edi, 36(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	.cfi_offset 7, -12
	call	_tabledivide64.lto_priv.1
	movl	(%ebx), %edx
	addl	_halfxdimen, %eax
	movl	4(%ebx), %ecx
	notl	%edx
	shrl	$31, %edx
	leal	(%eax,%edx), %edi
	movl	_xdimen, %eax
	leal	-1(%eax), %edx
	cmpl	%edi, %eax
	cmovle	%edx, %edi
	jmp	L432
	.p2align 4,,10
	.p2align 3
L434:
	movl	(%ebx), %esi
	movl	4(%ebx), %ebx
	cmpl	%ebx, %esi
	jg	L448
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	movl	_xdimen, %ebp
	subl	%eax, %edx
	subl	%ebx, %eax
	movl	%ecx, 24(%esp)
	subl	$1, %ebp
	movl	%ebp, 20(%esp)
	movl	%ebx, %ebp
	subl	%esi, %ebp
	addl	%ebp, %edx
	movl	%edx, 8(%esp)
	sarl	$31, %edx
	movl	%edx, 12(%esp)
	imull	%ebp
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	24(%esp), %ecx
	movl	40(%esp), %ebp
	.cfi_restore 5
	addl	%ebx, %eax
L436:
	cmpl	$255, %eax
	jle	L448
	movl	20(%esp), %esi
	cmpl	%esi, %edi
	jg	L448
	movl	48(%esp), %edx
	movl	16(%esp), %ebx
	movl	%edi, (%ebx)
	movl	%ecx, (%edx)
	movl	52(%esp), %edx
	movl	%esi, (%edx)
	movl	56(%esp), %edx
	movl	%eax, (%edx)
	movl	$1, %eax
	movl	36(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L426
	.p2align 4,,10
	.p2align 3
L450:
	.cfi_restore_state
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%edx, %eax
	imull	_halfxdimen
	movl	%ecx, 24(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	(%esi), %edx
	addl	_halfxdimen, %eax
	movl	24(%esp), %ecx
	sarl	$31, %edx
	leal	(%edx,%eax), %ebx
	movl	_xdimen, %eax
	leal	-1(%eax), %edx
	cmpl	%ebx, %eax
	movl	4(%esi), %eax
	cmovg	%ebx, %edx
	movl	%edx, 20(%esp)
	jmp	L436
	.cfi_endproc
LFE25:
	.p2align 4
	.globl	__ZL12maskwallscaniii.lto_priv.0
	.def	__ZL12maskwallscaniii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL12maskwallscaniii.lto_priv.0:
LFB26:
	.cfi_startproc
	cmpw	$0, __ZL14globalshiftval.lto_priv.0
	js	L632
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
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	leal	(%eax,%eax), %ebx
	subl	$156, %esp
	.cfi_def_cfa_offset 176
	movl	__ZL5uwall.lto_priv.0, %edx
	movl	_ydimen, %eax
	movswl	(%edx,%edi,2), %esi
	cmpl	%eax, %esi
	jle	L453
	movswl	(%edx,%ebp,2), %edx
	cmpl	%edx, %eax
	jl	L451
L453:
	movl	__ZL5dwall.lto_priv.0, %eax
	cmpw	$0, (%eax,%ebx)
	js	L637
L454:
	movswl	_globalpicnum, %eax
	movzwl	_tilesiz+2(,%eax,4), %ebx
	movswl	_tilesiz(,%eax,4), %esi
	movw	%bx, 84(%esp)
/APP
 # 2095 "source/build/src/engine.cpp" 1
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
	testw	%si, %si
	jle	L451
	cmpw	$0, 84(%esp)
	jle	L451
	movswl	_globalpicnum, %ebx
	movl	%ecx, 24(%esp)
	movl	%ebp, 48(%esp)
	movl	%ebx, %eax
	call	__Z12tileLoadHighi
	movl	%eax, __ZL8globalht.lto_priv.0
	movl	%eax, %edx
	testl	%eax, %eax
	je	L455
	movl	(%eax), %eax
	movswl	4(%edx), %ecx
	movswl	6(%edx), %ebp
L456:
	movl	%eax, __ZL12globalbufplc.lto_priv.0
	movswl	84(%esp), %eax
	sall	%cl, %esi
	movl	%ebp, %ecx
	movl	%esi, %ebp
	movswl	%si, %edx
	sall	%cl, %eax
	negl	%ebp
	movl	%eax, %ebx
	movswl	_globalpicnum, %eax
	movw	%bp, 84(%esp)
	movzbl	_picsiz(%eax), %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	cmpl	%edx, _pow2long.lto_priv.0(,%ecx,4)
	jne	L458
	leal	-1(%esi), %ecx
	movw	%cx, 84(%esp)
L458:
	shrb	$4, %al
	movswl	%bx, %edx
	negl	%ebx
	movzbl	%al, %ecx
	movw	%bx, 86(%esp)
	cmpl	%edx, _pow2long.lto_priv.0(,%ecx,4)
	jne	L460
	movzbl	%al, %eax
	movw	%ax, 86(%esp)
L460:
	movl	_globalpal, %eax
	movl	_palookup(,%eax,4), %eax
	movl	%eax, 40(%esp)
	testl	%eax, %eax
	je	L638
L461:
	movl	24(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	__ZL14globalshiftval.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_setupmvlineasm
	movl	_frameoffset, %eax
	movzwl	__ZL14globalshiftval.lto_priv.0, %ebp
	movl	%eax, 24(%esp)
	cmpl	48(%esp), %edi
	jg	L462
	movl	_windowxy1, %eax
	movl	_startumost, %edx
	movl	_startdmost, %ecx
	leal	(%eax,%eax), %ebx
	movl	%edx, 28(%esp)
	leal	(%edx,%ebx), %esi
	movl	%eax, 32(%esp)
	movl	48(%esp), %edx
	addl	%ecx, %ebx
	jmp	L463
	.p2align 5
	.p2align 4,,10
	.p2align 3
L465:
	addl	$1, %edi
	cmpl	%edi, %edx
	jl	L464
L463:
	movzwl	(%ebx,%edi,2), %eax
	cmpw	%ax, (%esi,%edi,2)
	jg	L465
	movl	24(%esp), %ebx
	movl	28(%esp), %edx
	movl	32(%esp), %eax
	addl	%edi, %ebx
	movl	%ebx, 24(%esp)
	testw	%bp, %bp
	jne	L585
L466:
	cmpl	%edi, 48(%esp)
	jl	L556
	cmpw	$0, 86(%esp)
	js	L588
	movl	%edi, 72(%esp)
	jmp	L579
	.p2align 4,,10
	.p2align 3
L637:
	cmpw	$0, (%eax,%ebp,2)
	jns	L454
L451:
	addl	$156, %esp
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
L632:
	ret
	.p2align 4,,10
	.p2align 3
L455:
	.cfi_def_cfa_offset 176
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	_waloff(,%ebx,4), %eax
	xorl	%ebp, %ebp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jne	L456
	movl	%ebx, %eax
	movl	%ecx, 28(%esp)
	call	_tileLoad
	movl	_waloff(,%ebx,4), %eax
	movl	28(%esp), %ecx
	jmp	L456
	.p2align 4,,10
	.p2align 3
L556:
	addl	$156, %esp
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
	jmp	__Z16timerUpdateClockv
	.p2align 4,,10
	.p2align 3
L464:
	.cfi_restore_state
	testw	%bp, %bp
	je	L556
	movl	24(%esp), %eax
	addl	%edi, %eax
	movl	%eax, 24(%esp)
L585:
	movl	48(%esp), %eax
	leal	-2(%eax), %ebx
	movl	%ebx, 104(%esp)
	cmpl	%edi, %eax
	jl	L468
	movswl	86(%esp), %eax
	testw	%ax, %ax
	js	L639
	movswl	84(%esp), %eax
	negl	%eax
	movl	%eax, 68(%esp)
	jmp	L489
	.p2align 4,,10
	.p2align 3
L619:
	movzwl	84(%esp), %edx
	andl	%eax, %edx
L488:
	movzbl	86(%esp), %ecx
	movl	__ZL8globalht.lto_priv.0, %eax
	sall	%cl, %edx
	testl	%eax, %eax
	je	L640
	movl	(%eax), %eax
L487:
	addl	%edx, %eax
	movl	__ZL8globalzd.lto_priv.0+4, %edx
	movl	%ebx, %esi
	subl	_globalhoriz, %esi
	movl	%eax, 44(%esp)
	addl	$1, %esi
	movl	%eax, _bufplce
	movl	__ZL8globalzd.lto_priv.0, %eax
	movl	%edx, 36(%esp)
	movl	%eax, 32(%esp)
	movl	__ZL14drawing_sprite.lto_priv.0, %eax
	testl	%eax, %eax
	jne	L641
	movl	28(%esp), %eax
	movl	__ZL12globalyscale.lto_priv.0, %ecx
	imull	(%eax), %ecx
	movl	32(%esp), %eax
	imull	%ecx, %esi
	movl	%ecx, 28(%esp)
	addl	%eax, %esi
L486:
	movl	28(%esp), %ecx
	movl	24(%esp), %edx
	movl	%esi, _vplce
	movl	_ylookup, %eax
	movl	%ecx, _vince
	addl	(%eax,%ebx,4), %edx
	movl	44(%esp), %eax
	movl	%esi, 12(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	%ebp, %eax
	subl	%ebx, %eax
	movl	%ecx, (%esp)
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	52(%esp), %eax
	movl	%eax, 4(%esp)
	call	_mvlineasm1
L479:
	addl	$1, 24(%esp)
	addl	$1, %edi
	cmpl	%edi, 48(%esp)
	jl	L478
L489:
	testb	$3, 24(%esp)
	je	L478
	movl	_windowxy1, %edx
	movl	_startumost, %ecx
	movl	_windowxy1+4, %eax
	addl	%edi, %edx
	movswl	(%ecx,%edx,2), %ebx
	movl	__ZL5uwall.lto_priv.0, %ecx
	movswl	(%ecx,%edi,2), %ecx
	subl	%eax, %ebx
	cmpl	%ecx, %ebx
	cmovl	%ecx, %ebx
	movl	_startdmost, %ecx
	movswl	(%ecx,%edx,2), %edx
	movl	%ebx, 140(%esp)
	subl	%eax, %edx
	movl	__ZL5dwall.lto_priv.0, %eax
	movswl	(%eax,%edi,2), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, 124(%esp)
	movl	%eax, %ebp
	cmpl	%ebx, %eax
	jle	L479
	leal	0(,%edi,4), %eax
	movl	_globvis, %edx
	movl	%eax, 60(%esp)
	addl	__ZL5swall.lto_priv.0, %eax
	movl	%eax, 28(%esp)
	movl	(%eax), %eax
/APP
 # 2134 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$0, %edx
	sarl	$8, %eax
	addl	_globalshade, %eax
	movl	40(%esp), %ecx
	cmovs	%edx, %eax
	movswl	_numshades, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	__ZL5lwall.lto_priv.0, %edx
	sall	$8, %eax
	addl	%ecx, %eax
	movl	%eax, _palookupoffse
	movl	%eax, 52(%esp)
	movl	__ZL14globalxpanning.lto_priv.0, %eax
	addl	(%edx,%edi,4), %eax
	cmpw	$0, 84(%esp)
	jns	L619
	xorl	%edx, %edx
	divl	68(%esp)
	jmp	L488
	.p2align 4,,10
	.p2align 3
L641:
	movl	60(%esp), %ecx
	movl	__ZL6swallf.lto_priv.0, %eax
	movss	(%eax,%ecx), %xmm0
	movss	%xmm0, (%esp)
	call	_llrintf
	movl	%eax, 28(%esp)
	movl	%esi, %eax
	movl	%edx, %ecx
	cltd
	movl	%edx, %eax
	movl	28(%esp), %edx
	imull	%edx, %eax
	movl	%ecx, %edx
	imull	%esi, %edx
	addl	%edx, %eax
	movl	%eax, %ecx
	movl	%esi, %eax
	mull	28(%esp)
	addl	%ecx, %edx
	addl	32(%esp), %eax
	adcl	36(%esp), %edx
	xorl	%esi, %esi
	movl	%edx, %ecx
	cmpl	$0, %eax
	sbbl	%esi, %ecx
	movl	$0, %ecx
	cmovl	%ecx, %eax
	cmovl	%esi, %edx
	movl	$-1, %esi
	cmpl	%eax, %esi
	sbbl	%edx, %ecx
	cmovl	%esi, %eax
	movl	%eax, %esi
	jmp	L486
	.p2align 4,,10
	.p2align 3
L640:
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L487
	.p2align 4,,10
	.p2align 3
L478:
	movl	104(%esp), %eax
	movl	%edi, 116(%esp)
	cmpl	%eax, %edi
	jge	L642
L582:
	leal	140(%esp), %eax
	movl	%edi, 80(%esp)
	movl	%eax, 32(%esp)
	leal	124(%esp), %eax
	movl	%eax, 28(%esp)
	movswl	84(%esp), %eax
	negl	%eax
	movl	%eax, 120(%esp)
	.p2align 4
	.p2align 3
L528:
	movl	80(%esp), %eax
	movl	_startumost, %edi
	movb	$0, 44(%esp)
	movl	_windowxy1+4, %esi
	leal	3(%eax), %ebp
	movl	__ZL5uwall.lto_priv.0, %eax
	movl	%esi, 76(%esp)
	movl	%eax, 60(%esp)
	movl	__ZL5dwall.lto_priv.0, %eax
	movl	%eax, 52(%esp)
	movl	_windowxy1, %eax
	addl	%eax, %eax
	addl	%eax, %edi
	addl	_startdmost, %eax
	movl	%eax, 72(%esp)
	movzwl	84(%esp), %eax
	movl	%edi, 68(%esp)
	movl	$3, %edi
	movl	%eax, 108(%esp)
	movswl	86(%esp), %eax
	movl	%eax, 88(%esp)
L502:
	movl	68(%esp), %eax
	movl	76(%esp), %esi
	movswl	(%eax,%ebp,2), %ebx
	movl	60(%esp), %eax
	movswl	(%eax,%ebp,2), %eax
	subl	%esi, %ebx
	cmpl	%eax, %ebx
	cmovl	%eax, %ebx
	movl	32(%esp), %eax
	movl	%ebx, (%eax,%edi,4)
	movl	72(%esp), %eax
	movswl	(%eax,%ebp,2), %eax
	subl	%esi, %eax
	movl	52(%esp), %esi
	movswl	(%esi,%ebp,2), %edx
	movl	28(%esp), %esi
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	subl	$1, %eax
	movl	%eax, (%esi,%edi,4)
	cmpl	%ebx, %eax
	jl	L492
	movl	__ZL5lwall.lto_priv.0, %edx
	movl	__ZL14globalxpanning.lto_priv.0, %eax
	leal	0(,%ebp,4), %esi
	addl	(%edx,%ebp,4), %eax
	cmpw	$0, 84(%esp)
	js	L643
	movl	108(%esp), %edx
	andl	%eax, %edx
L501:
	movzbl	88(%esp), %ecx
	movl	__ZL8globalht.lto_priv.0, %eax
	sall	%cl, %edx
	testl	%eax, %eax
	je	L644
	movl	(%eax), %eax
L500:
	addl	%edx, %eax
	movl	__ZL8globalzd.lto_priv.0+4, %ecx
	movl	__ZL8globalzd.lto_priv.0, %edx
	movl	%eax, _bufplce(,%edi,4)
	movl	__ZL14drawing_sprite.lto_priv.0, %eax
	subl	_globalhoriz, %ebx
	movl	%edx, 96(%esp)
	movl	%ecx, 100(%esp)
	addl	$1, %ebx
	testl	%eax, %eax
	jne	L497
	movl	__ZL5swall.lto_priv.0, %eax
	movl	(%eax,%esi), %eax
	imull	__ZL12globalyscale.lto_priv.0, %eax
	movl	%eax, _vince(,%edi,4)
	imull	%ebx, %eax
	addl	%edx, %eax
	movl	%eax, _vplce(,%edi,4)
L498:
	subl	$1, %edi
	subl	$1, %ebp
	cmpl	$-1, %edi
	jne	L502
	cmpb	$15, 44(%esp)
	je	L503
	movl	116(%esp), %edi
	movl	24(%esp), %eax
	movl	80(%esp), %esi
	movl	_globvis, %edx
	subl	%edi, %eax
	movl	__ZL5swall.lto_priv.0, %edi
	addl	%esi, %eax
	movl	%edx, 52(%esp)
	leal	0(,%esi,4), %ebp
	movl	%eax, 60(%esp)
	movl	(%edi,%esi,4), %eax
/APP
 # 2156 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_globalshade, %esi
	sarl	$8, %eax
	movswl	_numshades, %ebx
	movl	52(%esp), %edx
	leal	(%eax,%esi), %ecx
	subl	$1, %ebx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	cmovs	%eax, %ecx
	movl	40(%esp), %eax
	cmpl	%ebx, %ecx
	cmovg	%ebx, %ecx
	sall	$8, %ecx
	addl	%ecx, %eax
	movl	%eax, 112(%esp)
	movl	%eax, _palookupoffse
	movl	12(%edi,%ebp), %eax
/APP
 # 2157 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	sarl	$8, %eax
	movl	$0, %edx
	addl	%esi, %eax
	cmovs	%edx, %eax
	movl	40(%esp), %edx
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	sall	$8, %eax
	addl	%eax, %edx
	movl	%edx, _palookupoffse+12
	cmpl	%ecx, %eax
	je	L504
L526:
	movl	4(%edi,%ebp), %eax
	movl	52(%esp), %edx
/APP
 # 2166 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	sarl	$8, %eax
	movl	$0, %edx
	movl	40(%esp), %ecx
	addl	%esi, %eax
	cmovs	%edx, %eax
	movl	52(%esp), %edx
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	sall	$8, %eax
	addl	%ecx, %eax
	movl	%eax, _palookupoffse+4
	movl	8(%edi,%ebp), %eax
/APP
 # 2167 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	sarl	$8, %eax
	movl	$0, %edx
	addl	%esi, %eax
	cmovs	%edx, %eax
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	sall	$8, %eax
	addl	%ecx, %eax
L527:
	movl	152(%esp), %edi
	movl	148(%esp), %edx
	movl	%eax, _palookupoffse+8
	movl	140(%esp), %eax
	movl	144(%esp), %ebp
	cmpl	%edx, %edi
	movl	%edi, %ebx
	movl	136(%esp), %ecx
	movl	%edi, 88(%esp)
	cmovl	%edx, %ebx
	movl	%ebp, %esi
	movl	128(%esp), %edi
	movl	%ecx, 76(%esp)
	cmpl	%eax, %ebx
	movl	%edi, 52(%esp)
	movl	124(%esp), %edi
	cmovl	%eax, %ebx
	movl	%edi, 68(%esp)
	cmpl	%ebp, %ebx
	movl	%ebx, 108(%esp)
	cmovge	%ebx, %esi
	movl	132(%esp), %ebx
	cmpl	%ecx, %ebx
	movl	%ebx, 72(%esp)
	cmovle	%ebx, %ecx
	movl	52(%esp), %ebx
	cmpl	%ebx, %ecx
	cmovg	%ebx, %ecx
	cmpl	%edi, %ecx
	movl	%ecx, 96(%esp)
	cmovle	%ecx, %edi
	cmpl	%esi, %edi
	jle	L505
	cmpb	$0, 44(%esp)
	jne	L505
	cmpl	%eax, %esi
	jg	L506
L519:
	cmpl	%ebp, 108(%esp)
	jg	L507
	cmpl	%edx, %esi
	jg	L508
L517:
	movl	88(%esp), %eax
	cmpl	%eax, %esi
	jg	L509
L516:
	movl	_ylookup, %eax
	movl	60(%esp), %ebx
	movl	(%eax,%esi,4), %ecx
	movl	%edi, %eax
	subl	%esi, %eax
	addl	%ebx, %ecx
	addl	$1, %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_mvlineasm4
	movl	_ylookup, %eax
	movl	68(%esp), %ecx
	addl	4(%eax,%edi,4), %ebx
	cmpl	%ecx, 96(%esp)
	jl	L510
L515:
	movl	52(%esp), %eax
	cmpl	%eax, %edi
	jl	L511
L514:
	movl	72(%esp), %eax
	cmpl	%eax, %edi
	jl	L512
L513:
	movl	76(%esp), %eax
	cmpl	%eax, %edi
	jl	L645
L503:
	addl	$4, 80(%esp)
	movl	104(%esp), %edi
	movl	80(%esp), %eax
	cmpl	%edi, %eax
	jl	L528
	movl	48(%esp), %ecx
	movl	116(%esp), %edi
	xorl	%edx, %edx
	movl	104(%esp), %ebx
	leal	-3(%ecx), %eax
	subl	%edi, %eax
	andl	$-4, %eax
	cmpl	%ebx, %edi
	cmovge	%edx, %eax
	leal	4(%edi,%eax), %edi
	cmpl	%edi, %ecx
	jl	L556
	movl	24(%esp), %ebx
	movl	%edi, 72(%esp)
	movl	_startumost, %edx
	movl	_startdmost, %ecx
	leal	4(%ebx,%eax), %eax
	movl	%eax, 24(%esp)
	movl	_windowxy1, %eax
L579:
	movswl	84(%esp), %ebx
	negl	%ebx
	movl	%ebx, 76(%esp)
	jmp	L569
	.p2align 4,,10
	.p2align 3
L649:
	call	_mvlineasm1
L558:
	addl	$1, %edi
	cmpl	%edi, 48(%esp)
	jl	L556
	movl	_windowxy1, %eax
	movl	_startumost, %edx
	movl	_startdmost, %ecx
L569:
	addl	%edi, %eax
	movl	_windowxy1+4, %esi
	movswl	(%edx,%eax,2), %ebx
	movl	__ZL5uwall.lto_priv.0, %edx
	movswl	(%ecx,%eax,2), %eax
	movswl	(%edx,%edi,2), %edx
	subl	%esi, %ebx
	cmpl	%edx, %ebx
	cmovl	%edx, %ebx
	movl	__ZL5dwall.lto_priv.0, %edx
	subl	%esi, %eax
	movswl	(%edx,%edi,2), %edx
	cmpl	%edx, %eax
	cmovle	%eax, %edx
	movl	%edx, 28(%esp)
	cmpl	%edx, %ebx
	jge	L558
	movl	24(%esp), %eax
	movl	72(%esp), %ecx
	movl	__ZL5swall.lto_priv.0, %ebp
	movl	_globvis, %edx
	subl	%ecx, %eax
	addl	%edi, %eax
	movl	%eax, 32(%esp)
	leal	0(,%edi,4), %eax
	addl	%eax, %ebp
	movl	%eax, 68(%esp)
	movl	0(%ebp), %eax
/APP
 # 2207 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$0, %edx
	sarl	$8, %eax
	addl	_globalshade, %eax
	movl	40(%esp), %ecx
	cmovs	%edx, %eax
	movswl	_numshades, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	__ZL5lwall.lto_priv.0, %edx
	sall	$8, %eax
	addl	%ecx, %eax
	movl	%eax, _palookupoffse
	movl	%eax, 44(%esp)
	movl	__ZL14globalxpanning.lto_priv.0, %eax
	addl	(%edx,%edi,4), %eax
	cmpw	$0, 84(%esp)
	js	L646
	movzwl	84(%esp), %edx
	andl	%eax, %edx
L568:
	movzbl	86(%esp), %ecx
	movl	__ZL8globalht.lto_priv.0, %eax
	sall	%cl, %edx
	testl	%eax, %eax
	je	L647
	movl	(%eax), %eax
L567:
	addl	%edx, %eax
	movl	__ZL8globalzd.lto_priv.0+4, %edx
	movl	%ebx, %esi
	subl	_globalhoriz, %esi
	movl	%eax, 52(%esp)
	addl	$1, %esi
	movl	%eax, _bufplce
	movl	__ZL8globalzd.lto_priv.0, %eax
	movl	%edx, 64(%esp)
	movl	__ZL14drawing_sprite.lto_priv.0, %edx
	movl	%eax, 60(%esp)
	testl	%edx, %edx
	jne	L648
	movl	0(%ebp), %ecx
	imull	__ZL12globalyscale.lto_priv.0, %ecx
	movl	60(%esp), %eax
	imull	%ecx, %esi
	addl	%eax, %esi
L566:
	movl	_ylookup, %eax
	movl	32(%esp), %edx
	movl	%ecx, _vince
	movl	%esi, _vplce
	addl	(%eax,%ebx,4), %edx
	movl	%esi, 12(%esp)
	movl	%edx, %eax
	movl	28(%esp), %edx
	movl	%ecx, (%esp)
	movl	%eax, 20(%esp)
	movl	52(%esp), %eax
	subl	%ebx, %edx
	movl	%eax, 16(%esp)
	movl	44(%esp), %eax
	subl	$1, %edx
	cmpw	$0, __ZL14globalshiftval.lto_priv.0
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	jne	L649
	call	_mvlineasm1nonpow2
	jmp	L558
	.p2align 4,,10
	.p2align 3
L492:
	movzbl	__ZL8pow2char.lto_priv.7(%edi), %ecx
	addb	%cl, 44(%esp)
	jmp	L498
	.p2align 4,,10
	.p2align 3
L643:
	xorl	%edx, %edx
	divl	120(%esp)
	jmp	L501
	.p2align 4,,10
	.p2align 3
L497:
	movl	__ZL6swallf.lto_priv.0, %eax
	movss	(%eax,%esi), %xmm0
	movss	%xmm0, (%esp)
	call	_llrintf
	movl	%eax, %ecx
	movl	%eax, _vince(,%edi,4)
	movl	%ebx, %eax
	movl	%edx, %esi
	cltd
	imull	%ebx, %esi
	movl	%edx, %eax
	imull	%ecx, %eax
	addl	%eax, %esi
	movl	%ebx, %eax
	mull	%ecx
	addl	%esi, %edx
	addl	96(%esp), %eax
	adcl	100(%esp), %edx
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movl	%edx, %esi
	cmpl	%ebx, %eax
	sbbl	%ecx, %esi
	cmovl	%ebx, %eax
	cmovl	%ecx, %edx
	movl	$-1, %ecx
	cmpl	%eax, %ecx
	sbbl	%edx, %ebx
	cmovl	%ecx, %eax
	movl	%eax, _vplce(,%edi,4)
	jmp	L498
	.p2align 4,,10
	.p2align 3
L644:
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L500
	.p2align 4,,10
	.p2align 3
L646:
	xorl	%edx, %edx
	divl	76(%esp)
	jmp	L568
	.p2align 4,,10
	.p2align 3
L504:
	testb	$9, 44(%esp)
	jne	L526
	movl	112(%esp), %eax
	movl	%eax, _palookupoffse+4
	jmp	L527
	.p2align 4,,10
	.p2align 3
L505:
	testb	$1, 44(%esp)
	je	L520
L525:
	testb	$2, 44(%esp)
	je	L521
L524:
	testb	$4, 44(%esp)
	je	L522
L523:
	testb	$8, 44(%esp)
	jne	L503
	movl	_ylookup, %eax
	movl	88(%esp), %edi
	movl	60(%esp), %ecx
	addl	(%eax,%edi,4), %ecx
	movl	%ecx, %eax
	addl	$3, %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+12, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+12, %eax
	movl	%eax, 12(%esp)
	movl	76(%esp), %eax
	subl	%edi, %eax
L635:
	movl	%eax, 8(%esp)
	movl	_palookupoffse+12, %eax
	movl	%eax, 4(%esp)
	movl	_vince+12, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	jmp	L503
	.p2align 4,,10
	.p2align 3
L648:
	movl	68(%esp), %ecx
	movl	__ZL6swallf.lto_priv.0, %eax
	movss	(%eax,%ecx), %xmm0
	movss	%xmm0, (%esp)
	call	_llrintf
	movl	%eax, %ecx
	movl	%esi, %eax
	movl	%edx, %ebp
	cltd
	imull	%esi, %ebp
	movl	%edx, %eax
	imull	%ecx, %eax
	addl	%eax, %ebp
	movl	%esi, %eax
	mull	%ecx
	addl	%ebp, %edx
	addl	60(%esp), %eax
	adcl	64(%esp), %edx
	xorl	%ebp, %ebp
	movl	%edx, %esi
	cmpl	$0, %eax
	sbbl	%ebp, %esi
	movl	$0, %esi
	cmovl	%esi, %eax
	cmovl	%ebp, %edx
	movl	$-1, %esi
	cmpl	%eax, %esi
	sbbl	%edx, %ebp
	cmovl	%esi, %eax
	movl	%eax, %esi
	jmp	L566
	.p2align 4,,10
	.p2align 3
L647:
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L567
	.p2align 4,,10
	.p2align 3
L645:
	movl	_bufplce+12, %eax
	addl	$3, %ebx
	movl	%ebx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	_vplce+12, %eax
	movl	%eax, 12(%esp)
	movl	76(%esp), %eax
	subl	%edi, %eax
	subl	$1, %eax
	jmp	L635
	.p2align 4,,10
	.p2align 3
L512:
	leal	2(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+8, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+8, %eax
	movl	%eax, 12(%esp)
	movl	72(%esp), %eax
	subl	%edi, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+8, %eax
	movl	%eax, 4(%esp)
	movl	_vince+8, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	jmp	L513
	.p2align 4,,10
	.p2align 3
L507:
	movl	_ylookup, %eax
	movl	60(%esp), %ebx
	movl	%edx, 44(%esp)
	addl	(%eax,%ebp,4), %ebx
	movl	%ebx, %eax
	addl	$1, %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+4, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+4, %eax
	movl	%eax, 12(%esp)
	movl	%esi, %eax
	subl	%ebp, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+4, %eax
	movl	%eax, 4(%esp)
	movl	_vince+4, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	movl	44(%esp), %edx
	movl	%eax, _vplce+4
	cmpl	%edx, %esi
	jle	L517
L508:
	movl	_ylookup, %eax
	movl	60(%esp), %ebx
	addl	(%eax,%edx,4), %ebx
	movl	%ebx, %eax
	addl	$2, %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+8, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+8, %eax
	movl	%eax, 12(%esp)
	movl	%esi, %eax
	subl	%edx, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+8, %eax
	movl	%eax, 4(%esp)
	movl	_vince+8, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	movl	%eax, _vplce+8
	movl	88(%esp), %eax
	cmpl	%eax, %esi
	jle	L516
L509:
	movl	_ylookup, %eax
	movl	88(%esp), %ebx
	movl	60(%esp), %ecx
	addl	(%eax,%ebx,4), %ecx
	movl	%ecx, %eax
	addl	$3, %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+12, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+12, %eax
	movl	%eax, 12(%esp)
	movl	%esi, %eax
	subl	%ebx, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+12, %eax
	movl	%eax, 4(%esp)
	movl	_vince+12, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	movl	%eax, _vplce+12
	jmp	L516
	.p2align 4,,10
	.p2align 3
L506:
	movl	_ylookup, %ecx
	movl	60(%esp), %ebx
	movl	%edx, 44(%esp)
	addl	(%ecx,%eax,4), %ebx
	movl	_bufplce, %ecx
	movl	%ebx, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	_vplce, %ecx
	movl	%ecx, 12(%esp)
	movl	%esi, %ecx
	subl	%eax, %ecx
	movl	112(%esp), %eax
	subl	$1, %ecx
	movl	%eax, 4(%esp)
	movl	_vince, %eax
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	_mvlineasm1
	movl	44(%esp), %edx
	movl	%eax, _vplce
	jmp	L519
	.p2align 4,,10
	.p2align 3
L511:
	leal	1(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+4, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+4, %eax
	movl	%eax, 12(%esp)
	movl	52(%esp), %eax
	subl	%edi, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+4, %eax
	movl	%eax, 4(%esp)
	movl	_vince+4, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	jmp	L514
	.p2align 4,,10
	.p2align 3
L510:
	movl	_bufplce, %eax
	movl	%ebx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	_vplce, %eax
	movl	%eax, 12(%esp)
	movl	68(%esp), %eax
	subl	%edi, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse, %eax
	movl	%eax, 4(%esp)
	movl	_vince, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	jmp	L515
	.p2align 4,,10
	.p2align 3
L638:
	movl	_palookup, %eax
	movl	$0, _globalpal
	movl	%eax, 40(%esp)
	jmp	L461
	.p2align 4,,10
	.p2align 3
L522:
	movl	_ylookup, %eax
	movl	60(%esp), %edi
	addl	(%eax,%edx,4), %edi
	movl	%edi, %eax
	addl	$2, %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+8, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+8, %eax
	movl	%eax, 12(%esp)
	movl	72(%esp), %eax
	subl	%edx, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+8, %eax
	movl	%eax, 4(%esp)
	movl	_vince+8, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	jmp	L523
	.p2align 4,,10
	.p2align 3
L521:
	movl	_ylookup, %eax
	movl	60(%esp), %edi
	movl	%edx, 68(%esp)
	addl	(%eax,%ebp,4), %edi
	movl	%edi, %eax
	addl	$1, %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+4, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+4, %eax
	movl	%eax, 12(%esp)
	movl	52(%esp), %eax
	subl	%ebp, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+4, %eax
	movl	%eax, 4(%esp)
	movl	_vince+4, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	movl	68(%esp), %edx
	jmp	L524
	.p2align 4,,10
	.p2align 3
L520:
	movl	_ylookup, %ecx
	movl	60(%esp), %edi
	movl	%edx, 96(%esp)
	addl	(%ecx,%eax,4), %edi
	movl	_bufplce, %ecx
	movl	%edi, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	_vplce, %ecx
	movl	%ecx, 12(%esp)
	movl	68(%esp), %ecx
	subl	%eax, %ecx
	movl	112(%esp), %eax
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	_vince, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	movl	96(%esp), %edx
	jmp	L525
L639:
	negl	%eax
	movl	%eax, 60(%esp)
	jmp	L476
	.p2align 4,,10
	.p2align 3
L474:
	movl	(%ecx), %ecx
	imull	__ZL12globalyscale.lto_priv.0, %ecx
	movl	52(%esp), %eax
	imull	%ecx, %esi
	movl	%ecx, 28(%esp)
	addl	%eax, %esi
L475:
	movl	28(%esp), %ecx
	movl	24(%esp), %edx
	movl	%esi, _vplce
	movl	_ylookup, %eax
	movl	%ecx, _vince
	addl	(%eax,%ebx,4), %edx
	movl	44(%esp), %eax
	movl	%esi, 12(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	%ebp, %eax
	subl	%ebx, %eax
	movl	%ecx, (%esp)
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	32(%esp), %eax
	movl	%eax, 4(%esp)
	call	_mvlineasm1
L469:
	addl	$1, 24(%esp)
	addl	$1, %edi
	cmpl	%edi, 48(%esp)
	jl	L477
L476:
	testb	$3, 24(%esp)
	je	L477
	movl	_windowxy1, %edx
	movl	_startumost, %ecx
	movl	_windowxy1+4, %eax
	addl	%edi, %edx
	movswl	(%ecx,%edx,2), %ebx
	movl	__ZL5uwall.lto_priv.0, %ecx
	movswl	(%ecx,%edi,2), %ecx
	subl	%eax, %ebx
	cmpl	%ecx, %ebx
	cmovl	%ecx, %ebx
	movl	_startdmost, %ecx
	movswl	(%ecx,%edx,2), %edx
	movl	%ebx, 140(%esp)
	subl	%eax, %edx
	movl	__ZL5dwall.lto_priv.0, %eax
	movswl	(%eax,%edi,2), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, 124(%esp)
	movl	%eax, %ebp
	cmpl	%eax, %ebx
	jge	L469
	movl	__ZL5swall.lto_priv.0, %ecx
	leal	0(,%edi,4), %eax
	movl	_globvis, %edx
	movl	%eax, 28(%esp)
	addl	%eax, %ecx
	movl	(%ecx), %eax
/APP
 # 2134 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$0, %edx
	sarl	$8, %eax
	addl	_globalshade, %eax
	movl	40(%esp), %esi
	cmovs	%edx, %eax
	movswl	_numshades, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	__ZL5lwall.lto_priv.0, %edx
	sall	$8, %eax
	addl	%esi, %eax
	movl	%eax, _palookupoffse
	movl	%eax, 32(%esp)
	movl	__ZL14globalxpanning.lto_priv.0, %eax
	addl	(%edx,%edi,4), %eax
	movzwl	84(%esp), %edx
	movl	%edx, %esi
	andl	%eax, %edx
	testw	%si, %si
	jns	L471
	movswl	%si, %esi
	xorl	%edx, %edx
	negl	%esi
	divl	%esi
L471:
	movl	60(%esp), %eax
	imull	%eax, %edx
	movl	__ZL8globalht.lto_priv.0, %eax
	testl	%eax, %eax
	je	L472
	movl	(%eax), %eax
L473:
	addl	%edx, %eax
	movl	__ZL8globalzd.lto_priv.0+4, %edx
	movl	%ebx, %esi
	subl	_globalhoriz, %esi
	movl	%eax, 44(%esp)
	addl	$1, %esi
	movl	%eax, _bufplce
	movl	__ZL8globalzd.lto_priv.0, %eax
	movl	%edx, 56(%esp)
	movl	%eax, 52(%esp)
	movl	__ZL14drawing_sprite.lto_priv.0, %eax
	testl	%eax, %eax
	je	L474
	movl	28(%esp), %ecx
	movl	__ZL6swallf.lto_priv.0, %eax
	movss	(%eax,%ecx), %xmm0
	movss	%xmm0, (%esp)
	call	_llrintf
	movl	%eax, 28(%esp)
	movl	%esi, %eax
	movl	%edx, %ecx
	cltd
	movl	%edx, %eax
	movl	28(%esp), %edx
	imull	%edx, %eax
	movl	%ecx, %edx
	imull	%esi, %edx
	addl	%edx, %eax
	movl	%eax, %ecx
	movl	%esi, %eax
	mull	28(%esp)
	addl	%ecx, %edx
	addl	52(%esp), %eax
	adcl	56(%esp), %edx
	xorl	%esi, %esi
	movl	%edx, %ecx
	cmpl	$0, %eax
	sbbl	%esi, %ecx
	movl	$0, %ecx
	cmovl	%ecx, %eax
	cmovl	%esi, %edx
	movl	$-1, %esi
	cmpl	%eax, %esi
	sbbl	%edx, %ecx
	cmovl	%esi, %eax
	movl	%eax, %esi
	jmp	L475
	.p2align 4,,10
	.p2align 3
L472:
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L473
L477:
	movl	%edi, 116(%esp)
	cmpl	%edi, 104(%esp)
	jle	L650
L491:
	leal	140(%esp), %eax
	movl	%edi, 80(%esp)
	movl	%eax, 32(%esp)
	leal	124(%esp), %eax
	movl	%eax, 28(%esp)
	movswl	86(%esp), %eax
	negl	%eax
	movl	%eax, 96(%esp)
	.p2align 4
	.p2align 3
L554:
	movl	80(%esp), %eax
	movb	$0, 44(%esp)
	movl	$3, %ebp
	movl	_startumost, %ecx
	movl	_windowxy1+4, %edi
	leal	3(%eax), %esi
	movl	__ZL5uwall.lto_priv.0, %eax
	movl	%edi, 76(%esp)
	movl	%eax, 52(%esp)
	movl	__ZL5dwall.lto_priv.0, %eax
	movl	%eax, 60(%esp)
	movl	_windowxy1, %eax
	addl	%eax, %eax
	addl	%eax, %ecx
	addl	_startdmost, %eax
	movl	%ecx, 68(%esp)
	movl	%eax, 72(%esp)
L538:
	movl	68(%esp), %eax
	movl	76(%esp), %edi
	movswl	(%eax,%esi,2), %ecx
	movl	52(%esp), %eax
	movswl	(%eax,%esi,2), %eax
	subl	%edi, %ecx
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	movl	32(%esp), %eax
	movl	%ecx, (%eax,%ebp,4)
	movl	72(%esp), %eax
	movswl	(%eax,%esi,2), %eax
	subl	%edi, %eax
	movl	60(%esp), %edi
	movswl	(%edi,%esi,2), %edx
	movl	28(%esp), %edi
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	subl	$1, %eax
	movl	%eax, (%edi,%ebp,4)
	cmpl	%ecx, %eax
	jge	L530
	movzbl	__ZL8pow2char.lto_priv.7(%ebp), %ecx
	addb	%cl, 44(%esp)
L531:
	subl	$1, %ebp
	subl	$1, %esi
	cmpl	$-1, %ebp
	jne	L538
	cmpb	$15, 44(%esp)
	je	L539
	movl	116(%esp), %edi
	movl	24(%esp), %eax
	movl	80(%esp), %esi
	movl	_globvis, %edx
	subl	%edi, %eax
	movl	__ZL5swall.lto_priv.0, %edi
	addl	%esi, %eax
	movl	%edx, 52(%esp)
	leal	0(,%esi,4), %ebp
	movl	%eax, 72(%esp)
	movl	(%edi,%esi,4), %eax
/APP
 # 2156 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_globalshade, %esi
	sarl	$8, %eax
	movswl	_numshades, %ebx
	movl	52(%esp), %edx
	leal	(%eax,%esi), %ecx
	subl	$1, %ebx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	cmovs	%eax, %ecx
	movl	40(%esp), %eax
	cmpl	%ebx, %ecx
	cmovg	%ebx, %ecx
	sall	$8, %ecx
	addl	%ecx, %eax
	movl	%eax, 112(%esp)
	movl	%eax, _palookupoffse
	movl	12(%edi,%ebp), %eax
/APP
 # 2157 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	sarl	$8, %eax
	movl	$0, %edx
	addl	%esi, %eax
	cmovs	%edx, %eax
	movl	40(%esp), %edx
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	sall	$8, %eax
	addl	%eax, %edx
	movl	%edx, _palookupoffse+12
	cmpl	%ecx, %eax
	je	L651
L540:
	movl	4(%edi,%ebp), %eax
	movl	52(%esp), %edx
/APP
 # 2166 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	sarl	$8, %eax
	movl	$0, %edx
	movl	40(%esp), %ecx
	addl	%esi, %eax
	cmovs	%edx, %eax
	movl	52(%esp), %edx
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	sall	$8, %eax
	addl	%ecx, %eax
	movl	%eax, _palookupoffse+4
	movl	8(%edi,%ebp), %eax
/APP
 # 2167 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	sarl	$8, %eax
	movl	$0, %edx
	addl	%esi, %eax
	cmovs	%edx, %eax
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	sall	$8, %eax
	addl	%ecx, %eax
L541:
	movl	148(%esp), %ebp
	movl	152(%esp), %ecx
	movl	%eax, _palookupoffse+8
	movl	140(%esp), %eax
	movl	136(%esp), %ebx
	cmpl	%ecx, %ebp
	movl	%ecx, %esi
	movl	144(%esp), %edx
	cmovge	%ebp, %esi
	movl	%eax, 88(%esp)
	movl	%ebx, 68(%esp)
	movl	132(%esp), %ebx
	cmpl	%eax, %esi
	cmovl	%eax, %esi
	movl	128(%esp), %eax
	movl	%ebx, 76(%esp)
	movl	%eax, 52(%esp)
	movl	124(%esp), %eax
	cmpl	%esi, %edx
	movl	%esi, %edi
	cmovge	%edx, %edi
	movl	%eax, 60(%esp)
	movl	68(%esp), %eax
	cmpl	%ebx, %eax
	cmovle	%eax, %ebx
	movl	52(%esp), %eax
	cmpl	%eax, %ebx
	cmovg	%eax, %ebx
	movl	60(%esp), %eax
	cmpl	%ebx, %eax
	movl	%ebx, 108(%esp)
	cmovle	%eax, %ebx
	cmpb	$0, 44(%esp)
	jne	L593
	cmpl	%ebx, %edi
	jge	L593
	movl	88(%esp), %eax
	cmpl	%eax, %edi
	jg	L652
L547:
	cmpl	%esi, %edx
	jl	L653
L548:
	cmpl	%ebp, %edi
	jg	L654
L549:
	cmpl	%ecx, %edi
	jg	L655
L550:
	movl	_ylookup, %eax
	movl	72(%esp), %esi
	movl	(%eax,%edi,4), %ecx
	movl	%ebx, %eax
	subl	%edi, %eax
	addl	%esi, %ecx
	addl	$1, %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_mvlineasm4
	movl	_ylookup, %eax
	movl	108(%esp), %edi
	addl	4(%eax,%ebx,4), %esi
	cmpl	%edi, 60(%esp)
	jg	L656
L551:
	movl	52(%esp), %eax
	cmpl	%eax, %ebx
	jl	L657
L552:
	movl	76(%esp), %eax
	cmpl	%eax, %ebx
	jl	L658
L553:
	movl	68(%esp), %eax
	cmpl	%eax, %ebx
	jl	L659
L539:
	addl	$4, 80(%esp)
	movl	104(%esp), %edi
	movl	80(%esp), %eax
	cmpl	%edi, %eax
	jl	L554
	movl	48(%esp), %ecx
	movl	116(%esp), %edi
	xorl	%edx, %edx
	movl	104(%esp), %esi
	leal	-3(%ecx), %eax
	subl	%edi, %eax
	andl	$-4, %eax
	cmpl	%esi, %edi
	cmovge	%edx, %eax
	leal	4(%edi,%eax), %edi
	cmpl	%edi, %ecx
	jl	L556
	movl	24(%esp), %ecx
	movl	_startumost, %edx
	movl	%edi, 68(%esp)
	leal	4(%ecx,%eax), %eax
	movl	_startdmost, %ecx
	movl	%eax, 24(%esp)
	movl	_windowxy1, %eax
L557:
	movswl	86(%esp), %ebx
	negl	%ebx
	movl	%ebx, 72(%esp)
	jmp	L578
	.p2align 4,,10
	.p2align 3
L661:
	movl	%ecx, (%esp)
	call	_mvlineasm1nonpow2
L570:
	addl	$1, %edi
	cmpl	%edi, 48(%esp)
	jl	L556
	movl	_windowxy1, %eax
	movl	_startumost, %edx
	movl	_startdmost, %ecx
L578:
	addl	%edi, %eax
	movl	_windowxy1+4, %esi
	movswl	(%edx,%eax,2), %ebx
	movl	__ZL5uwall.lto_priv.0, %edx
	movswl	(%ecx,%eax,2), %eax
	movswl	(%edx,%edi,2), %edx
	subl	%esi, %ebx
	cmpl	%edx, %ebx
	cmovl	%edx, %ebx
	movl	__ZL5dwall.lto_priv.0, %edx
	subl	%esi, %eax
	movswl	(%edx,%edi,2), %edx
	cmpl	%edx, %eax
	cmovle	%eax, %edx
	movl	%edx, %ebp
	cmpl	%edx, %ebx
	jge	L570
	movl	68(%esp), %ecx
	movl	24(%esp), %eax
	movl	_globvis, %edx
	subl	%ecx, %eax
	movl	__ZL5swall.lto_priv.0, %ecx
	addl	%edi, %eax
	movl	%eax, 52(%esp)
	leal	0(,%edi,4), %eax
	addl	%eax, %ecx
	movl	%eax, 28(%esp)
	movl	(%ecx), %eax
/APP
 # 2207 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$0, %edx
	sarl	$8, %eax
	addl	_globalshade, %eax
	movl	40(%esp), %esi
	cmovs	%edx, %eax
	movswl	_numshades, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	__ZL5lwall.lto_priv.0, %edx
	sall	$8, %eax
	addl	%esi, %eax
	movl	%eax, _palookupoffse
	movl	%eax, 32(%esp)
	movl	__ZL14globalxpanning.lto_priv.0, %eax
	addl	(%edx,%edi,4), %eax
	movzwl	84(%esp), %edx
	movl	%edx, %esi
	andl	%eax, %edx
	testw	%si, %si
	jns	L572
	movswl	%si, %esi
	xorl	%edx, %edx
	negl	%esi
	divl	%esi
L572:
	movl	72(%esp), %eax
	imull	%eax, %edx
	movl	__ZL8globalht.lto_priv.0, %eax
	testl	%eax, %eax
	je	L573
	movl	(%eax), %eax
L574:
	addl	%edx, %eax
	movl	__ZL8globalzd.lto_priv.0+4, %edx
	movl	%ebx, %esi
	subl	_globalhoriz, %esi
	movl	%eax, 44(%esp)
	addl	$1, %esi
	movl	%eax, _bufplce
	movl	__ZL8globalzd.lto_priv.0, %eax
	movl	%edx, 64(%esp)
	movl	%eax, 60(%esp)
	movl	__ZL14drawing_sprite.lto_priv.0, %eax
	testl	%eax, %eax
	jne	L660
	movl	(%ecx), %ecx
	imull	__ZL12globalyscale.lto_priv.0, %ecx
	movl	60(%esp), %eax
	imull	%ecx, %esi
	movl	%ecx, 28(%esp)
	addl	%eax, %esi
L576:
	movl	28(%esp), %ecx
	movl	52(%esp), %edx
	movl	%esi, _vplce
	movl	_ylookup, %eax
	movl	%ecx, _vince
	addl	(%eax,%ebx,4), %edx
	movl	%esi, 12(%esp)
	movl	%edx, %eax
	movl	%ebp, %edx
	movl	%eax, 20(%esp)
	movl	44(%esp), %eax
	subl	%ebx, %edx
	subl	$1, %edx
	cmpw	$0, __ZL14globalshiftval.lto_priv.0
	movl	%eax, 16(%esp)
	movl	32(%esp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	je	L661
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	jmp	L570
	.p2align 4,,10
	.p2align 3
L530:
	movl	__ZL5lwall.lto_priv.0, %edx
	movl	__ZL14globalxpanning.lto_priv.0, %eax
	leal	0(,%esi,4), %edi
	addl	(%edx,%esi,4), %eax
	movzwl	84(%esp), %edx
	movl	%edx, %ebx
	andl	%eax, %edx
	testw	%bx, %bx
	jns	L533
	movswl	%bx, %ebx
	xorl	%edx, %edx
	negl	%ebx
	divl	%ebx
L533:
	movl	96(%esp), %eax
	imull	%eax, %edx
	movl	__ZL8globalht.lto_priv.0, %eax
	testl	%eax, %eax
	je	L534
	movl	(%eax), %eax
L535:
	addl	%eax, %edx
	subl	_globalhoriz, %ecx
	movl	__ZL8globalzd.lto_priv.0, %eax
	movl	%edx, _bufplce(,%ebp,4)
	leal	1(%ecx), %ebx
	movl	__ZL8globalzd.lto_priv.0+4, %edx
	movl	__ZL14drawing_sprite.lto_priv.0, %ecx
	movl	%eax, 88(%esp)
	movl	%edx, 92(%esp)
	testl	%ecx, %ecx
	jne	L662
	movl	__ZL5swall.lto_priv.0, %eax
	movl	(%eax,%edi), %eax
	imull	__ZL12globalyscale.lto_priv.0, %eax
	imull	%eax, %ebx
	movl	%eax, _vince(,%ebp,4)
	movl	88(%esp), %eax
	addl	%eax, %ebx
	movl	%ebx, _vplce(,%ebp,4)
	jmp	L531
	.p2align 4,,10
	.p2align 3
L662:
	movl	__ZL6swallf.lto_priv.0, %eax
	movss	(%eax,%edi), %xmm0
	movss	%xmm0, (%esp)
	call	_llrintf
	movl	%eax, %ecx
	movl	%eax, _vince(,%ebp,4)
	movl	%ebx, %eax
	movl	%edx, %edi
	cltd
	imull	%ebx, %edi
	movl	%edx, %eax
	imull	%ecx, %eax
	addl	%eax, %edi
	movl	%ebx, %eax
	mull	%ecx
	addl	%edi, %edx
	addl	88(%esp), %eax
	adcl	92(%esp), %edx
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movl	%edx, %edi
	cmpl	%ebx, %eax
	sbbl	%ecx, %edi
	cmovl	%ebx, %eax
	cmovl	%ecx, %edx
	movl	$-1, %ecx
	cmpl	%eax, %ecx
	sbbl	%edx, %ebx
	cmovl	%ecx, %eax
	movl	%eax, _vplce(,%ebp,4)
	jmp	L531
	.p2align 4,,10
	.p2align 3
L534:
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L535
	.p2align 4,,10
	.p2align 3
L651:
	testb	$9, 44(%esp)
	jne	L540
	movl	112(%esp), %eax
	movl	%eax, _palookupoffse+4
	jmp	L541
	.p2align 4,,10
	.p2align 3
L593:
	testb	$1, 44(%esp)
	je	L663
L544:
	testb	$2, 44(%esp)
	je	L664
L545:
	testb	$4, 44(%esp)
	je	L665
L546:
	testb	$8, 44(%esp)
	jne	L539
	movl	_ylookup, %eax
	movl	72(%esp), %edi
	addl	(%eax,%ecx,4), %edi
	movl	%edi, %eax
	addl	$3, %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+12, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+12, %eax
	movl	%eax, 12(%esp)
	movl	68(%esp), %eax
	subl	%ecx, %eax
	jmp	L636
	.p2align 4,,10
	.p2align 3
L660:
	movl	28(%esp), %ecx
	movl	__ZL6swallf.lto_priv.0, %eax
	movss	(%eax,%ecx), %xmm0
	movss	%xmm0, (%esp)
	call	_llrintf
	movl	%eax, 28(%esp)
	movl	%esi, %eax
	movl	%edx, %ecx
	cltd
	movl	%edx, %eax
	movl	28(%esp), %edx
	imull	%edx, %eax
	movl	%ecx, %edx
	imull	%esi, %edx
	addl	%edx, %eax
	movl	%eax, %ecx
	movl	%esi, %eax
	mull	28(%esp)
	addl	%ecx, %edx
	addl	60(%esp), %eax
	adcl	64(%esp), %edx
	xorl	%esi, %esi
	movl	%edx, %ecx
	cmpl	$0, %eax
	sbbl	%esi, %ecx
	movl	$0, %ecx
	cmovl	%ecx, %eax
	cmovl	%esi, %edx
	movl	$-1, %esi
	cmpl	%eax, %esi
	sbbl	%edx, %ecx
	cmovl	%esi, %eax
	movl	%eax, %esi
	jmp	L576
	.p2align 4,,10
	.p2align 3
L573:
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L574
	.p2align 4,,10
	.p2align 3
L653:
	movl	_ylookup, %eax
	movl	72(%esp), %esi
	movl	%ecx, 44(%esp)
	addl	(%eax,%edx,4), %esi
	movl	%esi, %eax
	addl	$1, %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+4, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+4, %eax
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	subl	%edx, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+4, %eax
	movl	%eax, 4(%esp)
	movl	_vince+4, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	movl	44(%esp), %ecx
	movl	%eax, _vplce+4
	jmp	L548
	.p2align 4,,10
	.p2align 3
L652:
	movl	%ecx, 120(%esp)
	movl	_ylookup, %ecx
	movl	%edx, 44(%esp)
	movl	88(%esp), %edx
	movl	72(%esp), %eax
	addl	(%ecx,%edx,4), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce, %eax
	movl	%eax, 16(%esp)
	movl	_vplce, %eax
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	subl	%edx, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	112(%esp), %eax
	movl	%eax, 4(%esp)
	movl	_vince, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	movl	120(%esp), %ecx
	movl	44(%esp), %edx
	movl	%eax, _vplce
	jmp	L547
	.p2align 4,,10
	.p2align 3
L659:
	movl	_bufplce+12, %eax
	addl	$3, %esi
	movl	%esi, 20(%esp)
	movl	%eax, 16(%esp)
	movl	_vplce+12, %eax
	movl	%eax, 12(%esp)
	movl	68(%esp), %eax
	subl	%ebx, %eax
	subl	$1, %eax
L636:
	movl	%eax, 8(%esp)
	movl	_palookupoffse+12, %eax
	movl	%eax, 4(%esp)
	movl	_vince+12, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	jmp	L539
	.p2align 4,,10
	.p2align 3
L658:
	leal	2(%esi), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+8, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+8, %eax
	movl	%eax, 12(%esp)
	movl	76(%esp), %eax
	subl	%ebx, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+8, %eax
	movl	%eax, 4(%esp)
	movl	_vince+8, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	jmp	L553
	.p2align 4,,10
	.p2align 3
L657:
	leal	1(%esi), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+4, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+4, %eax
	movl	%eax, 12(%esp)
	movl	52(%esp), %eax
	subl	%ebx, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+4, %eax
	movl	%eax, 4(%esp)
	movl	_vince+4, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	jmp	L552
	.p2align 4,,10
	.p2align 3
L656:
	movl	_bufplce, %eax
	movl	%esi, 20(%esp)
	movl	%eax, 16(%esp)
	movl	_vplce, %eax
	movl	%eax, 12(%esp)
	movl	60(%esp), %eax
	subl	%ebx, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse, %eax
	movl	%eax, 4(%esp)
	movl	_vince, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	jmp	L551
	.p2align 4,,10
	.p2align 3
L655:
	movl	_ylookup, %eax
	movl	72(%esp), %esi
	addl	(%eax,%ecx,4), %esi
	movl	%esi, %eax
	addl	$3, %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+12, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+12, %eax
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	subl	%ecx, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+12, %eax
	movl	%eax, 4(%esp)
	movl	_vince+12, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	movl	%eax, _vplce+12
	jmp	L550
	.p2align 4,,10
	.p2align 3
L654:
	movl	_ylookup, %eax
	movl	72(%esp), %esi
	movl	%ecx, 44(%esp)
	addl	(%eax,%ebp,4), %esi
	movl	%esi, %eax
	addl	$2, %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+8, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+8, %eax
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	subl	%ebp, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+8, %eax
	movl	%eax, 4(%esp)
	movl	_vince+8, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	movl	44(%esp), %ecx
	movl	%eax, _vplce+8
	jmp	L549
L588:
	movl	%edi, 68(%esp)
	jmp	L557
L665:
	movl	_ylookup, %eax
	movl	72(%esp), %edi
	movl	%ecx, 52(%esp)
	addl	(%eax,%ebp,4), %edi
	movl	%edi, %eax
	addl	$2, %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+8, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+8, %eax
	movl	%eax, 12(%esp)
	movl	76(%esp), %eax
	subl	%ebp, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+8, %eax
	movl	%eax, 4(%esp)
	movl	_vince+8, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	movl	52(%esp), %ecx
	jmp	L546
L664:
	movl	_ylookup, %eax
	movl	72(%esp), %edi
	movl	%ecx, 60(%esp)
	addl	(%eax,%edx,4), %edi
	movl	%edi, %eax
	addl	$1, %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+4, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+4, %eax
	movl	%eax, 12(%esp)
	movl	52(%esp), %eax
	subl	%edx, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+4, %eax
	movl	%eax, 4(%esp)
	movl	_vince+4, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	movl	60(%esp), %ecx
	jmp	L545
L663:
	movl	_ylookup, %ebx
	movl	88(%esp), %edi
	movl	%ecx, 120(%esp)
	movl	72(%esp), %eax
	movl	%edx, 108(%esp)
	addl	(%ebx,%edi,4), %eax
	movl	_bufplce, %ebx
	movl	%eax, 20(%esp)
	movl	112(%esp), %eax
	movl	%ebx, 16(%esp)
	movl	_vplce, %ebx
	movl	%eax, 4(%esp)
	movl	_vince, %eax
	movl	%ebx, 12(%esp)
	movl	60(%esp), %ebx
	movl	%eax, (%esp)
	subl	%edi, %ebx
	movl	%ebx, 8(%esp)
	call	_mvlineasm1
	movl	120(%esp), %ecx
	movl	108(%esp), %edx
	jmp	L544
L462:
	testw	%bp, %bp
	je	L556
	movl	24(%esp), %eax
	addl	%edi, %eax
	movl	%eax, 24(%esp)
	movl	48(%esp), %eax
	subl	$2, %eax
	movl	%eax, 104(%esp)
L468:
	movl	104(%esp), %eax
	cmpl	%eax, %edi
	jge	L556
	cmpw	$0, 86(%esp)
	movl	%edi, 116(%esp)
	jns	L582
	jmp	L491
L642:
	cmpl	%edi, 48(%esp)
	jl	L556
	movl	%edi, 72(%esp)
	movl	_windowxy1, %eax
	movl	_startumost, %edx
	movl	_startdmost, %ecx
	jmp	L579
L650:
	cmpl	%edi, 48(%esp)
	jl	L556
	movl	%edi, 68(%esp)
	movl	_windowxy1, %eax
	movl	_startumost, %edx
	movl	_startdmost, %ecx
	jmp	L557
	.cfi_endproc
LFE26:
	.p2align 4
	.globl	_wallfront
	.def	_wallfront;	.scl	2;	.type	32;	.endef
_wallfront:
LFB27:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%edx, %ecx
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
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	movswl	_thewall(%ebx,%ebx), %edx
	movl	_wall, %eax
	sall	$5, %edx
	addl	%eax, %edx
	movl	4(%edx), %ebx
	movl	(%edx), %esi
	movswl	8(%edx), %edx
	movl	%esi, (%esp)
	sall	$5, %edx
	movl	%ebx, 4(%esp)
	addl	%eax, %edx
	movl	(%edx), %edi
	movl	%edi, 24(%esp)
	movl	4(%edx), %edi
	movswl	_thewall(%ecx,%ecx), %edx
	movl	%edi, 36(%esp)
	sall	$5, %edx
	addl	%eax, %edx
	movl	(%edx), %ecx
	movl	4(%edx), %ebp
	movswl	8(%edx), %edx
	movl	%ebp, 16(%esp)
	subl	%ebx, %ebp
	sall	$5, %edx
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	4(%eax), %eax
	movl	%edx, 28(%esp)
	movl	%edi, %edx
	movl	%ebp, %edi
	movl	%eax, 32(%esp)
	movl	%ecx, %eax
	subl	%ebx, %edx
	subl	%esi, %eax
	subl	24(%esp), %esi
	movl	%edx, 8(%esp)
	movl	%esi, 12(%esp)
/APP
 # 2234 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $2, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	32(%esp), %ebp
	subl	4(%esp), %ebp
	movl	%eax, 20(%esp)
	movl	8(%esp), %edx
	movl	28(%esp), %eax
	movl	%ebp, %edi
	movl	12(%esp), %esi
	subl	(%esp), %eax
/APP
 # 2235 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $2, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	20(%esp), %ebx
	testl	%ebx, %ebx
	jne	L667
	movl	%eax, %ebp
	testl	%eax, %eax
	je	L674
L668:
	movl	_globalposy, %ecx
	subl	4(%esp), %ecx
	movl	_globalposx, %eax
	movl	8(%esp), %edx
	movl	%ecx, %edi
	subl	(%esp), %eax
	movl	12(%esp), %esi
/APP
 # 2241 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $2, %edx, %eax
 # 0 "" 2
/NO_APP
	xorl	%ebp, %eax
	notl	%eax
	shrl	$31, %eax
L669:
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
L667:
	.cfi_restore_state
	testl	%eax, %eax
	je	L671
	xorl	20(%esp), %eax
	jns	L671
	movl	16(%esp), %edi
	movl	4(%esp), %ebp
	movl	%ecx, %esi
	movl	32(%esp), %edx
	movl	(%esp), %eax
	subl	28(%esp), %esi
	subl	%edi, %ebp
	subl	%edi, %edx
	movl	%esi, 4(%esp)
	subl	%ecx, %eax
	movl	%ebp, %edi
	movl	%edx, (%esp)
/APP
 # 2246 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $2, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	36(%esp), %ebp
	subl	16(%esp), %ebp
	movl	%eax, 8(%esp)
	movl	24(%esp), %eax
	movl	(%esp), %edx
	movl	%ebp, %edi
	movl	4(%esp), %esi
	subl	%ecx, %eax
/APP
 # 2247 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $2, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	8(%esp), %edx
	movl	%eax, %ebp
	testl	%edx, %edx
	jne	L673
	testl	%eax, %eax
	je	L674
L675:
	movl	_globalposx, %eax
	movl	(%esp), %edx
	movl	4(%esp), %esi
	subl	%ecx, %eax
	movl	_globalposy, %ecx
	subl	16(%esp), %ecx
	movl	%ecx, %edi
/APP
 # 2253 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $2, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	$40, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%ebp, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	shrl	$31, %eax
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
L671:
	.cfi_restore_state
	movl	20(%esp), %ebp
	jmp	L668
	.p2align 4,,10
	.p2align 3
L673:
	testl	%eax, %eax
	jne	L676
L677:
	movl	8(%esp), %ebp
	jmp	L675
	.p2align 4,,10
	.p2align 3
L676:
	xorl	8(%esp), %eax
	movl	$-2, %eax
	jns	L677
	jmp	L669
L674:
	movl	$-1, %eax
	jmp	L669
	.cfi_endproc
LFE27:
	.p2align 4
	.globl	__ZL8prepwalliPK11uwalltypev7.lto_priv.0
	.def	__ZL8prepwalliPK11uwalltypev7.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL8prepwalliPK11uwalltypev7.lto_priv.0:
LFB28:
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
	subl	$64, %esp
	.cfi_def_cfa_offset 84
	movzbl	22(%edx), %eax
	movl	%edx, 60(%esp)
	leal	0(,%eax,8), %edi
	movl	__ZL8globalht.lto_priv.0, %eax
	movl	%edi, 36(%esp)
	testl	%eax, %eax
	je	L684
	movswl	4(%eax), %ecx
	sall	%cl, %edi
	movl	%edi, 36(%esp)
L684:
	movl	__ZL3ry2.lto_priv.0(,%ebp,4), %edi
	subl	_ry1(,%ebp,4), %edi
	movl	_ry1(,%ebp,4), %eax
	movl	%edi, %ecx
	movl	%edi, 48(%esp)
	sarl	$8, %ecx
	movl	_xb1(,%ebp,4), %esi
	movl	_xdimen, %edx
	sarl	$2, %eax
	movl	%ecx, 24(%esp)
	movl	_rx1(,%ebp,4), %ecx
	movl	%eax, 32(%esp)
	negl	%eax
	movl	%esi, %ebx
	subl	_halfxdimen, %ebx
	movl	%eax, 52(%esp)
	movl	%ecx, %eax
/APP
 # 2407 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $5, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edi
	movl	%ebx, %edx
	movl	52(%esp), %eax
/APP
 # 2407 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $2, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %edi
	subl	__ZL3rx2.lto_priv.0(,%ebp,4), %ecx
	movl	_xdimen, %edx
	movl	%edi, 20(%esp)
	movl	%ecx, %eax
/APP
 # 2408 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $11, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%ebx, %edx
	movl	24(%esp), %eax
/APP
 # 2408 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $2, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_xdimscale, %edx
	movl	%eax, %ebx
	movl	_ry1(,%ebp,4), %eax
/APP
 # 2410 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $19, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_xdimscale, %edx
	movl	%eax, 40(%esp)
	movl	48(%esp), %eax
/APP
 # 2411 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	xorl	%edi, %edi
	addl	%ecx, %ebx
	movl	%eax, 44(%esp)
	movl	%ebx, 16(%esp)
	jne	L725
L685:
	movl	__ZL3xb2.lto_priv.0(,%ebp,4), %eax
	leal	3(%esi), %edx
	movl	$0, 56(%esp)
	cmpl	%eax, %edx
	jge	L726
	movl	%ebp, 28(%esp)
	xorl	%ebp, %ebp
	jmp	L687
	.p2align 4,,10
	.p2align 3
L686:
	leal	(%edi,%ebp), %edx
	movl	__ZL5lwall.lto_priv.0, %ecx
	movl	%edx, %eax
	sarl	$19, %edx
	sarl	%eax
	movl	%edx, -8(%ecx,%ebx,4)
	movl	__ZL5lwall.lto_priv.0, %ecx
	leal	0(%ebp,%eax), %edx
	addl	%edi, %eax
	sarl	$19, %edx
	sarl	$19, %eax
	movl	%edx, -12(%ecx,%ebx,4)
	movl	__ZL5lwall.lto_priv.0, %edx
	movl	%ebx, %ecx
	movl	%eax, -4(%edx,%ebx,4)
	movl	__ZL5swall.lto_priv.0, %edx
	movl	(%edx,%ebx,4), %eax
	addl	(%edx,%esi,4), %eax
	sarl	%eax
	movl	%eax, -8(%edx,%ebx,4)
	movl	__ZL5swall.lto_priv.0, %edx
	movl	-8(%edx,%ebx,4), %eax
	addl	(%edx,%esi,4), %eax
	addl	$7, %esi
	sarl	%eax
	movl	%eax, -12(%edx,%ebx,4)
	movl	__ZL5swall.lto_priv.0, %edx
	movl	-8(%edx,%ebx,4), %eax
	addl	(%edx,%ebx,4), %eax
	sarl	%eax
	movl	%eax, -4(%edx,%ebx,4)
	movl	28(%esp), %eax
	movl	__ZL3xb2.lto_priv.0(,%eax,4), %eax
	cmpl	%eax, %esi
	jge	L727
	movl	%ebx, %esi
L687:
	movl	32(%esp), %ecx
	subl	%ecx, 20(%esp)
	leal	4(%esi), %ebx
	movl	24(%esp), %ecx
	addl	%ecx, 16(%esp)
	je	L686
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	20(%esp), %eax
	cltd
	shldl	$12, %eax, %edx
	sall	$12, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	44(%esp), %edx
	movl	%eax, %ecx
/APP
 # 2429 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $21, %edx, %eax
 # 0 "" 2
/NO_APP
	imull	36(%esp), %ecx
	movl	__ZL5swall.lto_priv.0, %edx
	movl	%edi, %ebp
	addl	40(%esp), %eax
	movl	%eax, (%edx,%ebx,4)
	movl	__ZL5lwall.lto_priv.0, %eax
	movl	%ecx, %edx
	movl	%ecx, %edi
	sarl	$18, %edx
	movl	%edx, (%eax,%ebx,4)
	jmp	L686
	.p2align 4,,10
	.p2align 3
L727:
	movl	%ebp, 56(%esp)
	movl	28(%esp), %ebp
L688:
	leal	1(%ecx), %edx
	cmpl	%eax, %edx
	jge	L689
	movl	52(%esp), %eax
	leal	2(%ecx), %ebx
	sarl	%eax
	addl	%eax, 20(%esp)
	movl	48(%esp), %eax
	sarl	$9, %eax
	addl	%eax, 16(%esp)
	jne	L728
L690:
	movl	__ZL5lwall.lto_priv.0, %eax
	addl	56(%esp), %edi
	sarl	$19, %edi
	movl	%edi, -4(%eax,%ebx,4)
	movl	__ZL5swall.lto_priv.0, %edx
	movl	(%edx,%ebx,4), %eax
	addl	(%edx,%ecx,4), %eax
	movl	%ebx, %ecx
	sarl	%eax
	movl	%eax, -4(%edx,%ebx,4)
L689:
	cmpl	%ecx, __ZL3xb2.lto_priv.0(,%ebp,4)
	jle	L691
	movl	48(%esp), %eax
	sarl	$10, %eax
	addl	16(%esp), %eax
	jne	L729
L691:
	movl	__ZL5lwall.lto_priv.0, %eax
	movl	_xb1(,%ebp,4), %edx
	leal	(%eax,%edx,4), %edx
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	jns	L692
	movl	$0, (%edx)
	movl	__ZL5lwall.lto_priv.0, %eax
L692:
	movl	__ZL3xb2.lto_priv.0(,%ebp,4), %edx
	movl	36(%esp), %edi
	leal	(%eax,%edx,4), %eax
	cmpl	%edi, (%eax)
	jl	L693
	testl	%edi, %edi
	jne	L730
L693:
	movl	60(%esp), %eax
	testb	$8, 14(%eax)
	je	L683
	movl	_xb1(,%ebp,4), %eax
	cmpl	__ZL3xb2.lto_priv.0(,%ebp,4), %eax
	jg	L683
	movl	36(%esp), %edx
	subl	$1, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L695:
	movl	__ZL5lwall.lto_priv.0, %ecx
	movl	%edx, %ebx
	subl	(%ecx,%eax,4), %ebx
	movl	%ebx, (%ecx,%eax,4)
	addl	$1, %eax
	cmpl	%eax, __ZL3xb2.lto_priv.0(,%ebp,4)
	jge	L695
L683:
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
	.p2align 4,,10
	.p2align 3
L730:
	.cfi_restore_state
	leal	-1(%edi), %edx
	movl	%edx, (%eax)
	jmp	L693
	.p2align 4,,10
	.p2align 3
L725:
	movl	20(%esp), %eax
	movl	%ebx, 8(%esp)
	sarl	$31, %ebx
	movl	%ebx, 12(%esp)
	cltd
	shldl	$12, %eax, %edx
	sall	$12, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	44(%esp), %edx
	movl	%eax, %edi
/APP
 # 2417 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $21, %edx, %eax
 # 0 "" 2
/NO_APP
	imull	36(%esp), %edi
	movl	__ZL5swall.lto_priv.0, %edx
	addl	40(%esp), %eax
	movl	%eax, (%edx,%esi,4)
	movl	__ZL5lwall.lto_priv.0, %eax
	movl	%edi, %edx
	sarl	$18, %edx
	movl	%edx, (%eax,%esi,4)
	jmp	L685
	.p2align 4,,10
	.p2align 3
L729:
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	52(%esp), %eax
	movl	%ecx, 16(%esp)
	sarl	$2, %eax
	addl	20(%esp), %eax
	cltd
	shldl	$12, %eax, %edx
	sall	$12, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	44(%esp), %edx
	movl	%eax, %ebx
/APP
 # 2466 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $21, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	16(%esp), %ecx
	movl	40(%esp), %edi
	movl	__ZL5swall.lto_priv.0, %edx
	addl	%edi, %eax
	addl	$1, %ecx
	movl	%eax, (%edx,%ecx,4)
	movl	36(%esp), %edx
	movl	%ebx, %eax
/APP
 # 2467 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $18, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	__ZL5lwall.lto_priv.0, %edx
	movl	%eax, (%edx,%ecx,4)
	jmp	L691
	.p2align 4,,10
	.p2align 3
L728:
	movl	16(%esp), %eax
	movl	%ecx, 24(%esp)
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	20(%esp), %eax
	cltd
	shldl	$12, %eax, %edx
	sall	$12, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	44(%esp), %edx
	movl	%eax, %esi
/APP
 # 2452 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $21, %edx, %eax
 # 0 "" 2
/NO_APP
	imull	36(%esp), %esi
	movl	__ZL5swall.lto_priv.0, %edx
	movl	%edi, 56(%esp)
	addl	40(%esp), %eax
	movl	24(%esp), %ecx
	movl	%eax, (%edx,%ebx,4)
	movl	__ZL5lwall.lto_priv.0, %eax
	movl	%esi, %edx
	movl	%esi, %edi
	sarl	$18, %edx
	movl	%edx, (%eax,%ebx,4)
	jmp	L690
	.p2align 4,,10
	.p2align 3
L726:
	movl	%esi, %ecx
	jmp	L688
	.cfi_endproc
LFE28:
	.p2align 4
	.globl	_animateoffs
	.def	_animateoffs;	.scl	2;	.type	32;	.endef
_animateoffs:
LFB29:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movzbl	_picanm(%eax,%eax,4), %ebx
	testl	%ebx, %ebx
	je	L731
	movzbl	_picanm+3(%eax,%eax,4), %edx
	movl	_totalclocklock, %eax
	movl	%edx, %ecx
	andl	$-64, %edx
	andl	$15, %ecx
	sarl	%cl, %eax
	cmpb	$-128, %dl
	je	L733
	cmpb	$-64, %dl
	je	L734
	cmpb	$64, %dl
	je	L741
	xorl	%ebx, %ebx
L731:
	movl	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L741:
	.cfi_restore_state
	leal	(%ebx,%ebx), %ecx
	cltd
	idivl	%ecx
	subl	%edx, %ecx
	cmpl	%edx, %ebx
	movl	%edx, %ebx
	cmovle	%ecx, %ebx
	movl	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L733:
	.cfi_restore_state
	leal	1(%ebx), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %ebx
	movl	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L734:
	.cfi_restore_state
	leal	1(%ebx), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %ebx
	negl	%ebx
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE29:
	.section .rdata,"dr"
LC17:
	.ascii "fgrouscan\0"
	.align 4
LC18:
	.ascii "%s:%d: slopalookup[%d] overflow drawing sector %d!\0"
LC19:
	.ascii "source/build/src/engine.cpp\0"
LC23:
	.ascii "grouscan\0"
	.text
	.p2align 4
	.def	__ZL8grouscaniiic;	.scl	3;	.type	32;	.endef
__ZL8grouscaniiic:
LFB30:
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
	subl	$200, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	_r_fpgrouscan, %edi
	movl	_globalposy, %ebx
	movl	%eax, 192(%esp)
	movl	_sector, %eax
	movl	%edx, 160(%esp)
	leal	(%ecx,%ecx,4), %edx
	leal	(%eax,%edx,8), %eax
	movl	%ecx, 148(%esp)
	movl	_globalposx, %ecx
	movl	%edi, 172(%esp)
	movl	%eax, 184(%esp)
	testl	%edi, %edi
	jne	L941
	movl	184(%esp), %eax
	cmpb	$0, 8(%ebp)
	je	L942
	testb	$2, 14(%eax)
	je	L943
	movl	184(%esp), %eax
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_getflorzofslopeptr.part.0
L808:
	cmpl	%eax, _globalposz
	jge	L936
	movl	184(%esp), %edi
	movzwl	14(%edi), %eax
	movzwl	24(%edi), %ebx
	movswl	26(%edi), %esi
	movl	%eax, _globalorientation
	movsbl	28(%edi), %eax
	movw	%bx, _globalpicnum
	movl	%eax, _globalshade
	movzbl	29(%edi), %eax
	movl	%esi, 124(%esp)
	movl	%eax, _globalpal
	movl	8(%edi), %eax
	movl	%eax, 100(%esp)
L806:
	movswl	%bx, %eax
	cmpb	$63, _picanm+3(%eax,%eax,4)
	jbe	L809
	call	_animateoffs
	addl	%eax, %ebx
	movw	%bx, _globalpicnum
	movswl	%bx, %eax
L809:
	testb	$64, 149(%esp)
	je	L811
	testb	$16, _globalorientation+1
	jne	L944
L811:
/APP
 # 3996 "source/build/src/engine.cpp" 1
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
	cmpw	$0, _tilesiz(,%ebx,4)
	jle	L936
	cmpw	$0, _tilesiz+2(,%ebx,4)
	jle	L936
	movl	%ebx, %eax
	call	__Z12tileLoadHighi
	movl	%eax, __ZL8globalht.lto_priv.0
	testl	%eax, %eax
	je	L813
	movswl	4(%eax), %edi
	movl	(%eax), %edx
	movswl	6(%eax), %eax
	movl	%edi, 172(%esp)
	movl	%eax, 68(%esp)
L814:
	movl	184(%esp), %ebx
	movl	%edx, __ZL12globalbufplc.lto_priv.0
	movl	_wall, %eax
	movswl	(%ebx), %edx
	sall	$5, %edx
	leal	(%eax,%edx), %ebx
	movswl	8(%ebx), %edx
	movl	%ebx, 136(%esp)
	sall	$5, %edx
	addl	%edx, %eax
	movl	(%eax), %esi
	movl	4(%eax), %eax
	subl	4(%ebx), %eax
	subl	(%ebx), %esi
	movl	%eax, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	imull	%esi, %eax
	imull	%edi, %edx
	addl	%edx, %eax
/APP
 # 4005 "source/build/src/engine.cpp" 1
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
 # 4005 "source/build/src/engine.cpp" 1
	movl %eax, (_fpuasm); fildl (_fpuasm); addl %eax, %eax; fstps (_fpuasm); sbbl %ebx, %ebx; movl (_fpuasm), %eax; movl %eax, %ecx; andl $0x007ff000, %eax; shrl $10, %eax; subl $0x3f800000, %ecx; shrl $23, %ecx; movl _reciptable(%eax), %eax; sarl %cl, %eax; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 96(%esp)
	movl	124(%esp), %eax
	movl	96(%esp), %edx
/APP
 # 4006 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $21, %edx, %eax
 # 0 "" 2
/NO_APP
	imull	%eax, %esi
	movl	_xdimenrecip, %ecx
	movl	%eax, 144(%esp)
	movl	_singlobalang, %eax
	movl	%ecx, %edx
	movl	%esi, 132(%esp)
/APP
 # 4009 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $19, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%ecx, %edx
	negl	%esi
	movl	%esi, 168(%esp)
	movl	_cosglobalang, %esi
	movl	%esi, %eax
/APP
 # 4010 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $19, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_globalposy, %ebx
	movl	_globalposx, %edx
	movl	%eax, 164(%esp)
	movl	%ebx, %eax
	movl	%edx, 120(%esp)
	sall	$8, %edx
	sall	$8, %eax
	movl	%edx, 156(%esp)
	movl	%edx, _globalx1
	movl	%eax, %edx
	negl	%edx
	movl	%ebx, 116(%esp)
	movl	%edx, 152(%esp)
	movl	%edx, __ZL8globaly1.lto_priv.0
	movl	192(%esp), %edx
	subl	_halfxdimen, %edx
	movl	%edx, %ebx
	movl	__ZL17viewingrangerecip.lto_priv.0, %edx
	imull	%ecx, %ebx
	movl	%esi, %ecx
	sall	$4, %ecx
	movl	%ecx, %eax
/APP
 # 4014 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%ebx, %edx
	movl	_singlobalang, %eax
/APP
 # 4014 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $27, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	%eax, %ecx
	movl	__ZL17viewingrangerecip.lto_priv.0, %edx
	movl	%ecx, 176(%esp)
	movl	%ecx, __ZL8globalx2.lto_priv.0
	movl	_singlobalang, %ecx
	sall	$4, %ecx
	movl	%ecx, %eax
/APP
 # 4015 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%ebx, %edx
	movl	%esi, %eax
/APP
 # 4015 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $27, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	(%ecx,%eax), %esi
	movl	$1, %eax
	subl	_globalhoriz, %eax
	movl	%esi, 180(%esp)
	movl	%esi, _globaly2
	movl	_xdimscale, %esi
	movl	%esi, %ecx
	movl	%esi, 92(%esp)
	movl	%esi, %ebx
	sarl	$31, %esi
	movl	%esi, 84(%esp)
	shldl	$9, %ecx, %esi
	sall	$9, %ebx
	movl	%esi, 76(%esp)
	movl	%esi, __ZL8globalzd.lto_priv.0+4
	movl	%ecx, %esi
	sall	$9, %esi
	movl	%ecx, 80(%esp)
	movl	%ebx, 72(%esp)
	movl	%esi, %edx
	movl	%ebx, __ZL8globalzd.lto_priv.0
/APP
 # 4017 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	imull	144(%esp), %edi
	movl	%eax, 64(%esp)
	movl	180(%esp), %edx
	movl	132(%esp), %eax
	negl	%edi
	movl	%edi, 128(%esp)
	movl	%edi, %esi
	movl	176(%esp), %edi
/APP
 # 4017 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $17, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 60(%esp)
	movl	164(%esp), %edx
	movl	132(%esp), %eax
	movl	128(%esp), %esi
	movl	168(%esp), %edi
/APP
 # 4018 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $25, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	136(%esp), %ebx
	movl	%eax, 144(%esp)
	negl	%ecx
	movl	%ecx, 88(%esp)
	movl	_globalorientation, %ecx
	movl	4(%ebx), %edi
	movl	%ecx, 140(%esp)
	andl	$64, %ecx
	movl	%edi, 104(%esp)
	je	L815
	movswl	8(%ebx), %ecx
	movl	(%ebx), %esi
	movl	96(%esp), %edx
	sall	$5, %ecx
	addl	_wall, %ecx
	movl	%esi, 156(%esp)
	movl	(%ecx), %ebx
	subl	%esi, %ebx
	movl	%ebx, %eax
/APP
 # 4022 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 112(%esp)
	movl	4(%ecx), %eax
	movl	96(%esp), %edx
	subl	%edi, %eax
/APP
 # 4023 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	124(%esp), %ecx
	movl	%eax, %edi
	movl	%ecx, %eax
	imull	%ecx, %eax
	addl	$16777216, %eax
/APP
 # 4025 "source/build/src/engine.cpp" 1
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
	movl	112(%esp), %edx
	movl	164(%esp), %esi
	movl	%eax, 124(%esp)
	movl	168(%esp), %eax
/APP
 # 4028 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	164(%esp), %ecx
	movl	112(%esp), %edx
	movl	%eax, 96(%esp)
	movl	168(%esp), %esi
	negl	%ecx
	movl	%ecx, %eax
/APP
 # 4029 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	124(%esp), %edx
/APP
 # 4029 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $12, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	116(%esp), %ebx
	subl	104(%esp), %ebx
	movl	%eax, 164(%esp)
	movl	156(%esp), %eax
	subl	120(%esp), %eax
	sall	$8, %ebx
	movl	%eax, %ecx
	movl	112(%esp), %edx
	movl	%ebx, 168(%esp)
	movl	%ebx, %esi
	sall	$8, %ecx
	movl	%ecx, %eax
	negl	%eax
/APP
 # 4032 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 156(%esp)
	movl	112(%esp), %edx
	movl	%ecx, %esi
	movl	%eax, _globalx1
	movl	168(%esp), %eax
/APP
 # 4033 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	124(%esp), %edx
/APP
 # 4033 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $12, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 152(%esp)
	movl	112(%esp), %edx
	movl	%eax, __ZL8globaly1.lto_priv.0
	movl	180(%esp), %esi
	movl	176(%esp), %eax
/APP
 # 4036 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	180(%esp), %ebx
	movl	%eax, %ecx
	movl	112(%esp), %edx
	movl	%eax, __ZL8globalx2.lto_priv.0
	movl	176(%esp), %esi
	negl	%ebx
	movl	%ebx, %eax
/APP
 # 4037 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	124(%esp), %edx
/APP
 # 4037 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $12, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 180(%esp)
	movl	%eax, _globaly2
	movl	96(%esp), %eax
	movl	%ecx, 176(%esp)
	movl	%eax, 168(%esp)
L815:
	testb	$4, 140(%esp)
	je	L816
	movl	168(%esp), %eax
	movl	164(%esp), %edx
	movl	176(%esp), %ebx
	movl	152(%esp), %edi
	negl	%eax
	movl	156(%esp), %esi
	negl	%edx
	movl	%eax, 164(%esp)
	movl	180(%esp), %eax
	negl	%ebx
	movl	%edi, _globalx1
	negl	%eax
	movl	%esi, __ZL8globaly1.lto_priv.0
	movl	%eax, __ZL8globalx2.lto_priv.0
	movl	%ebx, 180(%esp)
	movl	%ebx, _globaly2
	movl	%eax, 176(%esp)
	movl	%edi, 156(%esp)
	movl	%esi, 152(%esp)
	movl	%edx, 168(%esp)
L816:
	testb	$16, 140(%esp)
	je	L817
	negl	156(%esp)
	movl	156(%esp), %eax
	negl	176(%esp)
	movl	%eax, _globalx1
	movl	176(%esp), %eax
	negl	168(%esp)
	movl	%eax, __ZL8globalx2.lto_priv.0
L817:
	testb	$32, 140(%esp)
	je	L818
	negl	152(%esp)
	movl	152(%esp), %eax
	negl	180(%esp)
	movl	%eax, __ZL8globaly1.lto_priv.0
	movl	180(%esp), %eax
	negl	164(%esp)
	movl	%eax, _globaly2
L818:
	movl	136(%esp), %eax
	movl	116(%esp), %edx
	movl	120(%esp), %edi
	movl	128(%esp), %esi
	subl	(%eax), %edi
	subl	104(%esp), %edx
	movl	132(%esp), %eax
/APP
 # 4048 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $9, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	100(%esp), %esi
	subl	_globalposz, %esi
	sall	$8, %esi
	addl	%eax, %esi
	movl	176(%esp), %eax
	movl	%esi, %edx
/APP
 # 4049 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $20, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	%esi, %edx
	movl	168(%esp), %eax
/APP
 # 4049 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $28, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%esi, %ecx
	movl	%eax, 136(%esp)
	movl	180(%esp), %eax
	negl	%ecx
	movl	%ecx, %edx
/APP
 # 4050 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $20, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 132(%esp)
	movl	%ecx, %edx
	movl	164(%esp), %eax
/APP
 # 4050 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $28, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 128(%esp)
	movswl	_globalpicnum, %eax
	movzbl	_picsiz(%eax), %eax
	movl	%eax, %ecx
	shrb	$4, %al
	andl	$15, %ecx
	movzbl	%al, %edi
	movl	%ecx, 176(%esp)
	movl	%edi, 168(%esp)
	testb	$8, 140(%esp)
	jne	L819
	movl	$8, %eax
	movl	%eax, %edx
	subl	%edi, %eax
	subl	%ecx, %edx
L820:
	movl	156(%esp), %edi
	leal	12(%edx), %ecx
	sall	%cl, %edi
	leal	12(%eax), %ecx
	movl	%edi, 180(%esp)
	movl	152(%esp), %edi
	sall	%cl, %edi
	movl	%edi, 164(%esp)
	testl	%edx, %edx
	js	L821
	movl	136(%esp), %edi
	movl	%edx, %ecx
	sall	%cl, %ebx
	sall	%cl, %edi
	movl	%edi, 136(%esp)
L822:
	movl	%ebx, __ZL8globalx2.lto_priv.0
	testl	%eax, %eax
	js	L823
	movl	128(%esp), %edi
	movl	%eax, %ecx
	movl	132(%esp), %edx
	sall	%cl, %edi
	sall	%cl, %edx
	movl	%edi, 132(%esp)
L824:
	movl	%edx, _globaly2
	movl	184(%esp), %edi
	cmpb	$0, 8(%ebp)
	jne	L825
	movzbl	22(%edi), %eax
	movzbl	23(%edi), %edx
	sall	$24, %eax
	sall	$24, %edx
	addl	180(%esp), %eax
	addl	164(%esp), %edx
L826:
	movl	%eax, _globalx1
	movl	72(%esp), %eax
	movl	%edx, __ZL8globaly1.lto_priv.0
	movl	76(%esp), %edx
	shrdl	$13, %edx, %eax
	negl	%eax
	movl	%eax, _asm1
	movl	184(%esp), %eax
	movzbl	32(%eax), %edx
	movl	_globalvisibility, %eax
	testb	%dl, %dl
	je	L827
	addl	$16, %edx
	movzbl	%dl, %edx
/APP
 # 4086 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
L827:
	imull	%esi
	movl	176(%esp), %edi
	movl	__ZL12globalbufplc.lto_priv.0, %esi
	addl	172(%esp), %edi
	shrdl	$13, %edx, %eax
	sarl	$13, %edx
	movl	%eax, %ebx
	movl	92(%esp), %eax
	movl	%eax, %ecx
	imull	%edx, %ecx
	movl	84(%esp), %edx
	imull	%ebx, %edx
	addl	%edx, %ecx
	mull	%ebx
	addl	%ecx, %edx
	shrdl	$16, %edx, %eax
	movl	%eax, _globvis
	movl	_globalpal, %eax
	movl	_palookup(,%eax,4), %eax
	movl	%eax, 180(%esp)
	movl	_ylookup, %eax
	movl	4(%eax), %ebx
	movl	68(%esp), %eax
	movl	%esi, 4(%esp)
	addl	168(%esp), %eax
	sall	$8, %eax
	negl	%ebx
	addl	%eax, %edi
	movl	%ebx, 8(%esp)
	movl	%edi, (%esp)
	call	_setupslopevlin
	movl	%edi, %eax
	sarl	$8, %edi
	movl	%esi, __ZL5ggbuf.lto_priv.0
	movl	%edi, __ZL6gglogy.lto_priv.0
	movl	__ZL8globalzd.lto_priv.0, %esi
	andl	$255, %eax
	movl	__ZL8globalzd.lto_priv.0+4, %edi
	movl	%eax, __ZL6gglogx.lto_priv.0
	movl	%esi, %eax
	movl	%ebx, __ZL6ggpinc.lto_priv.0
	movl	%edi, %edx
	shrdl	$16, %edi, %eax
	sarl	$16, %edx
	movl	%eax, 104(%esp)
	movl	%edx, 108(%esp)
	movl	_xdimenscale, %edx
	movl	%eax, 184(%esp)
	movl	88(%esp), %eax
/APP
 # 4097 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 140(%esp)
	movl	$4, 176(%esp)
	movl	$131072, 156(%esp)
	testl	%eax, %eax
	jg	L828
	movl	$16380, %eax
	subl	_ydimen, %eax
	sall	$15, %eax
	movl	%eax, 156(%esp)
	sarl	$15, %eax
	movl	%eax, 176(%esp)
L828:
	movl	__ZL5umost.lto_priv.0, %ecx
	movl	192(%esp), %eax
	movswl	(%ecx,%eax,2), %ebx
	cmpb	$0, 8(%ebp)
	je	L830
	movl	__ZL4dplc.lto_priv.0, %eax
	movl	192(%esp), %edx
	movswl	(%eax,%edx,2), %eax
	cmpw	%ax, %bx
	cmovl	%eax, %ebx
L830:
	movl	%ebx, %eax
	movl	%esi, %edx
/APP
 # 4102 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edi
	movl	104(%esp), %eax
/APP
 # 4104 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	176(%esp), %ebx
	cmpl	$16382, %ebx
	ja	L945
	movl	160(%esp), %edx
	cmpl	%edx, 192(%esp)
	jg	L936
	movl	64(%esp), %esi
	subl	60(%esp), %esi
	movl	%esi, %edx
	movl	%esi, 152(%esp)
	sarl	$6, %edx
	addl	%edi, %edx
	movl	184(%esp), %edi
	addl	%edx, %eax
	movl	%eax, 120(%esp)
	addl	%edi, %eax
	movl	%eax, 116(%esp)
	leal	__ZL11slopalookup.lto_priv.0(,%ebx,4), %eax
	movl	%eax, 128(%esp)
	addl	$4, %eax
	movl	%eax, 124(%esp)
	movl	104(%esp), %eax
	movl	%eax, 68(%esp)
	.p2align 4
	.p2align 3
L856:
	movl	192(%esp), %edi
	movl	__ZL5dmost.lto_priv.0, %eax
	movzwl	(%ecx,%edi,2), %edx
	movswl	(%eax,%edi,2), %eax
	cmpb	$0, 8(%ebp)
	jne	L832
	movswl	%dx, %esi
	movl	__ZL4uplc.lto_priv.0, %edx
	movl	%esi, 164(%esp)
	movswl	(%edx,%edi,2), %edx
	cmpw	%dx, %ax
	cmovle	%eax, %edx
	leal	-1(%edx), %eax
	movl	%eax, 176(%esp)
L833:
	movl	164(%esp), %esi
	cmpl	176(%esp), %esi
	jg	L835
	movl	156(%esp), %eax
	sarl	$15, %eax
	leal	(%eax,%esi), %edx
	cmpl	$16383, %edx
	ja	L946
	addl	176(%esp), %eax
	cmpl	$16383, %eax
	ja	L947
	leal	__ZL11slopalookup.lto_priv.0(,%eax,4), %eax
	leal	__ZL11slopalookup.lto_priv.0(,%edx,4), %ecx
	movl	%eax, 172(%esp)
	movl	128(%esp), %eax
	cmpl	%ecx, %eax
	jb	L839
	movl	%ecx, 168(%esp)
	movl	120(%esp), %edi
	movl	%eax, %esi
	.p2align 4
	.p2align 3
L840:
	movl	%edi, %eax
/APP
 # 4141 "source/build/src/engine.cpp" 1
	movl %eax, (_fpuasm); fildl (_fpuasm); addl %eax, %eax; fstps (_fpuasm); sbbl %ebx, %ebx; movl (_fpuasm), %eax; movl %eax, %ecx; andl $0x007ff000, %eax; shrl $10, %eax; subl $0x3f800000, %ecx; shrl $23, %ecx; movl _reciptable(%eax), %eax; sarl %cl, %eax; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	movl	_globvis, %edx
/APP
 # 4141 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$0, %edx
	subl	$4, %esi
	sarl	$8, %eax
	addl	_globalshade, %eax
	cmovs	%edx, %eax
	movswl	_numshades, %edx
	movl	180(%esp), %ebx
	subl	$1, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	sall	$8, %eax
	addl	%ebx, %eax
	movl	%eax, 4(%esi)
	movl	184(%esp), %eax
	subl	%eax, %edi
	movl	168(%esp), %eax
	cmpl	%eax, %esi
	jnb	L840
	movl	128(%esp), %edi
	movl	%eax, %ecx
	movl	%edi, %eax
	subl	%ecx, %eax
	movl	%eax, %edx
	sall	$30, %edx
	subl	%eax, %edx
	shrl	$2, %eax
	leal	-4(%edi,%edx), %esi
	movl	68(%esp), %edi
	movl	120(%esp), %edx
	movl	%esi, 128(%esp)
	imull	%edi, %eax
	subl	%edi, %edx
	subl	%eax, %edx
	movl	%edx, 120(%esp)
L839:
	movl	124(%esp), %eax
	cmpl	%eax, 172(%esp)
	jb	L841
	movl	116(%esp), %edi
	movl	%eax, %esi
	.p2align 4
	.p2align 3
L842:
	movl	%edi, %eax
/APP
 # 4146 "source/build/src/engine.cpp" 1
	movl %eax, (_fpuasm); fildl (_fpuasm); addl %eax, %eax; fstps (_fpuasm); sbbl %ebx, %ebx; movl (_fpuasm), %eax; movl %eax, %ecx; andl $0x007ff000, %eax; shrl $10, %eax; subl $0x3f800000, %ecx; shrl $23, %ecx; movl _reciptable(%eax), %eax; sarl %cl, %eax; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	movl	_globvis, %edx
/APP
 # 4146 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$0, %edx
	addl	$4, %esi
	sarl	$8, %eax
	addl	_globalshade, %eax
	cmovs	%edx, %eax
	movswl	_numshades, %edx
	movl	180(%esp), %ebx
	subl	$1, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	sall	$8, %eax
	addl	%ebx, %eax
	movl	%eax, -4(%esi)
	movl	184(%esp), %eax
	addl	%eax, %edi
	cmpl	%esi, 172(%esp)
	jnb	L842
	movl	172(%esp), %edi
	movl	124(%esp), %esi
	movl	116(%esp), %edx
	movl	%edi, %eax
	leal	4(%edi), %ebx
	subl	%esi, %eax
	movl	104(%esp), %esi
	movl	%ebx, 124(%esp)
	shrl	$2, %eax
	movl	184(%esp), %ebx
	imull	%esi, %eax
	addl	%ebx, %edx
	addl	%edx, %eax
	movl	%eax, 116(%esp)
L841:
	movl	__ZL8globalx2.lto_priv.0, %edi
	movl	_globaly2, %eax
	movl	__ZL8globalzd.lto_priv.0, %edx
	sarl	$10, %eax
	sarl	$10, %edi
	movl	%eax, 168(%esp)
	movl	%eax, _globaly3
	movl	176(%esp), %eax
	movl	%edi, _globalx3
/APP
 # 4152 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	152(%esp), %edx
	sarl	$6, %edx
	addl	%edx, %eax
	movl	_globalorientation, %edx
	movl	%eax, _asm3
	movl	%edx, %ecx
	andl	$384, %ecx
	cmpl	$128, %ecx
	je	L843
	jg	L948
	movl	__ZL8globaly1.lto_priv.0, %esi
	movl	_globalx1, %edx
	sarl	$3, %eax
/APP
 # 4156 "source/build/src/engine.cpp" 1
	movl %eax, (_fpuasm); fildl (_fpuasm); addl %eax, %eax; fstps (_fpuasm); sbbl %ebx, %ebx; movl (_fpuasm), %eax; movl %eax, %ecx; andl $0x007ff000, %eax; shrl $10, %eax; subl $0x3f800000, %ecx; shrl $23, %ecx; movl _reciptable(%eax), %eax; sarl %cl, %eax; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	movl	176(%esp), %edi
	movl	192(%esp), %ebx
	movl	%esi, 20(%esp)
	movl	164(%esp), %esi
	movl	%edx, 16(%esp)
	movl	%edi, %edx
	movl	%eax, 4(%esp)
	subl	%esi, %edx
	movl	172(%esp), %esi
	addl	$1, %edx
	movl	%edx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	_ylookup, %eax
	addl	(%eax,%edi,4), %ebx
	movl	_frameoffset, %eax
	addl	%ebx, %eax
	movl	%eax, (%esp)
	call	_slopevlin
L847:
	testb	$15, 192(%esp)
	je	L949
	.p2align 4
	.p2align 3
L835:
	movl	136(%esp), %eax
	addl	$1, 192(%esp)
	addl	%eax, __ZL8globalx2.lto_priv.0
	movl	144(%esp), %esi
	movl	132(%esp), %eax
	movl	140(%esp), %ebx
	addl	%eax, _globaly2
	movl	192(%esp), %eax
	subl	%esi, 152(%esp)
	addl	%ebx, 156(%esp)
	cmpl	%eax, 160(%esp)
	jl	L936
	movl	__ZL5umost.lto_priv.0, %ecx
	jmp	L856
	.p2align 4,,10
	.p2align 3
L942:
	testb	$2, 12(%eax)
	je	L950
	movl	184(%esp), %eax
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_getceilzofslopeptr.part.0
L805:
	cmpl	%eax, _globalposz
	jle	L936
	movl	184(%esp), %esi
	movzwl	12(%esi), %eax
	movzwl	16(%esi), %ebx
	movl	%eax, _globalorientation
	movsbl	20(%esi), %eax
	movw	%bx, _globalpicnum
	movl	%eax, _globalshade
	movzbl	21(%esi), %eax
	movl	%eax, _globalpal
	movl	%esi, %eax
	movswl	18(%esi), %esi
	movl	4(%eax), %eax
	movl	%esi, 124(%esp)
	movl	%eax, 100(%esp)
	jmp	L806
	.p2align 4,,10
	.p2align 3
L941:
	cmpb	$0, 8(%ebp)
	je	L951
	movl	184(%esp), %eax
	testb	$2, 14(%eax)
	je	L952
	movl	184(%esp), %eax
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_getflorzofslopeptr.part.0
L750:
	cmpl	%eax, _globalposz
	jge	L936
	movl	184(%esp), %esi
	movzwl	14(%esi), %eax
	movzwl	24(%esi), %ebx
	movswl	26(%esi), %edi
	movl	%eax, _globalorientation
	movsbl	28(%esi), %eax
	movw	%bx, _globalpicnum
	movl	%eax, _globalshade
	movzbl	29(%esi), %eax
	movl	%eax, _globalpal
	movl	8(%esi), %eax
	movl	%eax, 176(%esp)
L748:
	movswl	%bx, %eax
	cmpb	$63, _picanm+3(%eax,%eax,4)
	jbe	L751
	call	_animateoffs
	addl	%ebx, %eax
	movw	%ax, _globalpicnum
	cwtl
L751:
	testb	$64, 149(%esp)
	je	L753
	testb	$16, _globalorientation+1
	jne	L953
L753:
/APP
 # 3669 "source/build/src/engine.cpp" 1
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
	cmpw	$0, _tilesiz(,%ebx,4)
	jle	L936
	cmpw	$0, _tilesiz+2(,%ebx,4)
	jle	L936
	movl	%ebx, %eax
	call	__Z12tileLoadHighi
	movl	%eax, __ZL8globalht.lto_priv.0
	testl	%eax, %eax
	je	L755
	movl	(%eax), %ebx
	movl	%ebx, 164(%esp)
	movswl	4(%eax), %ebx
	movswl	6(%eax), %eax
	movl	%ebx, 136(%esp)
	movl	%eax, 132(%esp)
L756:
	movl	164(%esp), %eax
	movl	184(%esp), %esi
	movl	%eax, __ZL12globalbufplc.lto_priv.0
	movswl	(%esi), %edx
	movl	_wall, %eax
	sall	$5, %edx
	addl	%eax, %edx
	movswl	8(%edx), %ecx
	movl	(%edx), %ebx
	sall	$5, %ecx
	movl	%ebx, 156(%esp)
	addl	%ecx, %eax
	movl	(%eax), %esi
	subl	%ebx, %esi
	movl	4(%edx), %ebx
	movl	4(%eax), %edx
	movl	%esi, %eax
	subl	%ebx, %edx
	imull	%esi, %eax
	movl	%ebx, 152(%esp)
	movl	%edx, %ecx
	imull	%edx, %ecx
	addl	%ecx, %eax
/APP
 # 3678 "source/build/src/engine.cpp" 1
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
	xorps	%xmm0, %xmm0
	xorps	%xmm4, %xmm4
	xorps	%xmm6, %xmm6
	movl	_xdimenrecip, %ecx
	cvtsi2ssl	%eax, %xmm0
	xorps	%xmm2, %xmm2
	xorps	%xmm7, %xmm7
	movss	LC0, %xmm1
	cvtsi2ssl	%edx, %xmm6
	movl	192(%esp), %eax
	subl	_halfxdimen, %eax
	cvtsi2ssl	%esi, %xmm4
	movl	_globalposx, %ebx
	movss	LC3, %xmm3
	cvtsi2ssl	%ecx, %xmm2
	movl	_globalposy, %edx
	divss	%xmm0, %xmm1
	imull	%ecx, %eax
	xorps	%xmm0, %xmm0
	movl	%ebx, 144(%esp)
	cvtsi2ssl	%edi, %xmm0
	movss	%xmm6, 124(%esp)
	movss	%xmm4, 128(%esp)
	cvtsi2ssl	__ZL17viewingrangerecip.lto_priv.0, %xmm7
	movss	%xmm1, 140(%esp)
	mulss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	mulss	LC1, %xmm0
	cvtsi2ssl	_singlobalang, %xmm1
	movaps	%xmm1, %xmm5
	xorps	LC2, %xmm5
	mulss	%xmm0, %xmm4
	mulss	%xmm6, %xmm0
	movss	%xmm4, 172(%esp)
	xorps	%xmm4, %xmm4
	movss	%xmm0, 180(%esp)
	movaps	%xmm5, %xmm0
	cvtsi2ssl	%eax, %xmm4
	movl	_xdimscale, %eax
	mulss	%xmm2, %xmm0
	movl	%eax, 168(%esp)
	movaps	%xmm0, %xmm5
	xorps	%xmm0, %xmm0
	cvtsi2ssl	_cosglobalang, %xmm0
	mulss	%xmm3, %xmm5
	mulss	%xmm0, %xmm2
	movaps	%xmm2, %xmm6
	movaps	%xmm1, %xmm2
	mulss	%xmm3, %xmm6
	movaps	%xmm0, %xmm3
	mulss	%xmm7, %xmm1
	mulss	%xmm4, %xmm0
	mulss	LC4, %xmm1
	mulss	LC5, %xmm0
	mulss	%xmm7, %xmm3
	movss	LC6, %xmm7
	mulss	%xmm4, %xmm2
	movss	172(%esp), %xmm4
	mulss	LC5, %xmm2
	mulss	LC4, %xmm3
	addss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	movl	$1, %eax
	subl	_globalhoriz, %eax
	subss	%xmm2, %xmm3
	movaps	%xmm4, %xmm2
	mulss	%xmm1, %xmm7
	movss	180(%esp), %xmm1
	mulss	%xmm0, %xmm2
	mulss	%xmm3, %xmm1
	mulss	%xmm6, %xmm4
	movss	%xmm7, 56(%esp)
	subss	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	mulss	LC24, %xmm2
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm7, %xmm1
	mulss	LC8, %xmm1
	movaps	%xmm2, %xmm7
	movss	180(%esp), %xmm2
	mulss	%xmm5, %xmm2
	addss	%xmm1, %xmm7
	movaps	%xmm4, %xmm1
	subss	%xmm2, %xmm1
	mulss	LC25, %xmm1
	movl	_globalorientation, %esi
	movss	%xmm1, 104(%esp)
	testl	$64, %esi
	jne	L757
	movss	LC11, %xmm4
	movl	%edx, %eax
	sall	$8, %ebx
	movss	LC12, %xmm2
	negl	%eax
	movss	%xmm4, 92(%esp)
	sall	$8, %eax
	movss	LC13, %xmm4
	movss	%xmm4, 140(%esp)
L758:
	testl	$4, %esi
	je	L759
	xorps	LC2, %xmm6
	xorps	LC2, %xmm5
	movaps	%xmm0, %xmm4
	movl	%ebx, %ecx
	xorps	LC2, %xmm3
	xorps	LC2, %xmm4
	movl	%eax, %ebx
	movl	%ecx, %eax
	movaps	%xmm6, %xmm1
	movaps	%xmm5, %xmm6
	movaps	%xmm3, %xmm0
	movaps	%xmm1, %xmm5
	movaps	%xmm4, %xmm3
L759:
	testl	$16, %esi
	je	L760
	xorps	LC2, %xmm3
	xorps	LC2, %xmm5
	negl	%ebx
L760:
	testl	$32, %esi
	je	L761
	xorps	LC2, %xmm0
	xorps	LC2, %xmm6
	negl	%eax
L761:
	movl	152(%esp), %edi
	xorps	%xmm1, %xmm1
	xorps	%xmm4, %xmm4
	subl	%edi, %edx
	movl	156(%esp), %edi
	cvtsi2ssl	%edx, %xmm1
	movl	144(%esp), %edx
	mulss	172(%esp), %xmm1
	subl	%edi, %edx
	cvtsi2ssl	%edx, %xmm4
	movl	176(%esp), %edx
	mulss	180(%esp), %xmm4
	subl	_globalposz, %edx
	subss	%xmm4, %xmm1
	xorps	%xmm4, %xmm4
	mulss	LC14, %xmm1
	cvtsi2ssl	%edx, %xmm4
	movswl	_globalpicnum, %edx
	mulss	140(%esp), %xmm4
	movzbl	_picsiz(%edx), %edx
	movl	%edx, %edi
	shrb	$4, %dl
	andl	$15, %edi
	movzbl	%dl, %ecx
	andl	$8, %esi
	addss	%xmm4, %xmm1
	movl	%edi, 180(%esp)
	movl	%ecx, 176(%esp)
	mulss	%xmm1, %xmm5
	mulss	%xmm1, %xmm3
	mulss	LC15, %xmm3
	movaps	%xmm5, %xmm4
	movaps	%xmm1, %xmm5
	xorps	LC2, %xmm5
	mulss	%xmm2, %xmm4
	mulss	%xmm5, %xmm6
	mulss	%xmm5, %xmm0
	mulss	LC15, %xmm0
	mulss	%xmm2, %xmm6
	jne	L762
	movl	$8, %edx
	movl	%edx, %esi
	subl	%ecx, %edx
	subl	%edi, %esi
L763:
	leal	12(%esi), %ecx
	sall	%cl, %ebx
	leal	12(%edx), %ecx
	sall	%cl, %eax
	testl	%esi, %esi
	js	L764
	movl	$1, %edi
	movl	%esi, %ecx
	xorps	%xmm2, %xmm2
	sall	%cl, %edi
	cvtsi2ssl	%edi, %xmm2
	mulss	%xmm2, %xmm4
	mulss	%xmm2, %xmm3
	movss	%xmm4, 100(%esp)
L765:
	testl	%edx, %edx
	js	L766
	movl	$1, %esi
	movl	%edx, %ecx
	xorps	%xmm2, %xmm2
	sall	%cl, %esi
	cvtsi2ssl	%esi, %xmm2
	mulss	%xmm2, %xmm6
	mulss	%xmm2, %xmm0
	movss	%xmm6, 96(%esp)
L767:
	movl	184(%esp), %esi
	cmpb	$0, 8(%ebp)
	jne	L768
	movzbl	22(%esi), %edx
	sall	$24, %edx
	leal	(%edx,%ebx), %edi
	movzbl	23(%esi), %edx
	movl	%edi, 140(%esp)
	sall	$24, %edx
	addl	%edx, %eax
	movl	%eax, 128(%esp)
L769:
	movss	56(%esp), %xmm2
	xorps	LC2, %xmm2
	mulss	92(%esp), %xmm2
	movl	184(%esp), %eax
	movzbl	32(%eax), %edx
	movl	_globalvisibility, %eax
	movss	%xmm2, 52(%esp)
	testb	%dl, %dl
	je	L770
	addl	$16, %edx
	movzbl	%dl, %edx
/APP
 # 3765 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
L770:
	fnstcw	198(%esp)
	xorps	%xmm2, %xmm2
	movl	132(%esp), %esi
	movss	%xmm7, 144(%esp)
	movss	%xmm0, 156(%esp)
	cvtsi2ssl	%eax, %xmm2
	movzwl	198(%esp), %eax
	movss	%xmm3, 172(%esp)
	orb	$12, %ah
	mulss	%xmm1, %xmm2
	movw	%ax, 196(%esp)
	movss	%xmm2, 184(%esp)
	flds	184(%esp)
	fldcw	196(%esp)
	fistpq	184(%esp)
	fldcw	198(%esp)
	movl	188(%esp), %edx
	movl	184(%esp), %eax
	shrdl	$13, %edx, %eax
	sarl	$13, %edx
	movl	%eax, 184(%esp)
	movl	168(%esp), %eax
	movl	%edx, 188(%esp)
	movl	188(%esp), %edi
	movl	%eax, %ebx
	movl	%eax, %ecx
	sarl	$31, %ebx
	imull	%edi, %ecx
	movl	164(%esp), %edi
	movl	%ebx, %edx
	movl	184(%esp), %ebx
	imull	%ebx, %edx
	addl	%edx, %ecx
	mull	%ebx
	addl	%ecx, %edx
	shrdl	$16, %edx, %eax
	movl	180(%esp), %edx
	movl	%eax, _globvis
	movl	_globalpal, %eax
	movl	_palookup(,%eax,4), %eax
	movl	%eax, 152(%esp)
	movl	_ylookup, %eax
	movl	4(%eax), %ebx
	movl	176(%esp), %eax
	movl	%edi, 4(%esp)
	addl	%esi, %eax
	movl	136(%esp), %esi
	negl	%ebx
	sall	$8, %eax
	movl	%ebx, 8(%esp)
	addl	%esi, %edx
	leal	(%eax,%edx), %esi
	movl	%esi, (%esp)
	call	_setupslopevlin
	movl	%esi, %eax
	sarl	$8, %esi
	movl	%edi, __ZL5ggbuf.lto_priv.0
	andl	$255, %eax
	movl	%esi, __ZL6gglogy.lto_priv.0
	movss	52(%esp), %xmm1
	movl	$4, %esi
	xorps	LC2, %xmm1
	movl	%eax, __ZL6gglogx.lto_priv.0
	movl	%ebx, __ZL6ggpinc.lto_priv.0
	movss	%xmm1, (%esp)
	call	_lrintf
	xorps	%xmm1, %xmm1
	cvtsi2ssl	_xdimenscale, %xmm1
	mulss	104(%esp), %xmm1
	movl	%eax, 164(%esp)
	mulss	92(%esp), %xmm1
	movss	%xmm1, (%esp)
	call	_lrintf
	movl	$131072, 124(%esp)
	movss	172(%esp), %xmm3
	movss	156(%esp), %xmm0
	testl	%eax, %eax
	movl	%eax, 112(%esp)
	movss	144(%esp), %xmm7
	jg	L771
	movl	$16380, %eax
	subl	_ydimen, %eax
	sall	$15, %eax
	movl	%eax, 124(%esp)
	movl	%eax, %esi
	sarl	$15, %esi
L771:
	movl	__ZL5umost.lto_priv.0, %eax
	movl	192(%esp), %ebx
	movswl	(%eax,%ebx,2), %ebx
	cmpb	$0, 8(%ebp)
	je	L773
	movl	__ZL4dplc.lto_priv.0, %eax
	movl	192(%esp), %ecx
	movswl	(%eax,%ecx,2), %eax
	cmpw	%ax, %bx
	cmovl	%eax, %ebx
L773:
	movss	LC16, %xmm2
	xorps	%xmm1, %xmm1
	movss	%xmm0, 176(%esp)
	movss	%xmm3, 180(%esp)
	cvtsi2ssl	%ebx, %xmm1
	mulss	56(%esp), %xmm1
	movss	%xmm7, 184(%esp)
	mulss	92(%esp), %xmm1
	mulss	%xmm7, %xmm2
	addss	%xmm2, %xmm1
	movss	%xmm1, (%esp)
	call	_lrintf
	movl	%eax, %edx
	movl	164(%esp), %eax
/APP
 # 3783 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movss	184(%esp), %xmm7
	addl	%esi, %ebx
	movss	180(%esp), %xmm3
	movss	176(%esp), %xmm0
	cmpl	$16382, %ebx
	ja	L954
	movl	160(%esp), %ecx
	cmpl	%ecx, 192(%esp)
	jg	L936
	movl	140(%esp), %edi
	addl	%edx, %eax
	movl	%eax, 64(%esp)
	sarl	$16, %edi
	movl	%edi, 120(%esp)
	movl	128(%esp), %edi
	sarl	$16, %edi
	movl	%edi, 116(%esp)
	movl	164(%esp), %edi
	addl	%edi, %eax
	movl	%eax, 60(%esp)
	leal	__ZL11slopalookup.lto_priv.0(,%ebx,4), %eax
	movl	%eax, 88(%esp)
	addl	$4, %eax
	movl	%eax, 68(%esp)
	.p2align 4
	.p2align 3
L802:
	movl	__ZL5umost.lto_priv.0, %eax
	movl	192(%esp), %esi
	movswl	(%eax,%esi,2), %edx
	movl	__ZL5dmost.lto_priv.0, %eax
	movswl	(%eax,%esi,2), %eax
	cmpb	$0, 8(%ebp)
	jne	L775
	movl	__ZL4uplc.lto_priv.0, %ecx
	movswl	(%ecx,%esi,2), %ecx
	cmpw	%cx, %ax
	cmovle	%eax, %ecx
	leal	-1(%ecx), %ebx
L776:
	cmpl	%ebx, %edx
	jg	L778
	movl	124(%esp), %eax
	sarl	$15, %eax
	leal	(%edx,%eax), %ecx
	cmpl	$16383, %ecx
	ja	L955
	addl	%ebx, %eax
	cmpl	$16383, %eax
	ja	L956
	leal	__ZL11slopalookup.lto_priv.0(,%eax,4), %eax
	leal	__ZL11slopalookup.lto_priv.0(,%ecx,4), %ecx
	movl	%eax, 184(%esp)
	movl	88(%esp), %eax
	cmpl	%ecx, %eax
	jb	L782
	movl	%edx, 176(%esp)
	movl	64(%esp), %edi
	movl	%eax, %esi
	movl	%ebx, 172(%esp)
	movl	%ecx, 180(%esp)
	.p2align 4
	.p2align 3
L783:
	movl	%edi, %eax
/APP
 # 3820 "source/build/src/engine.cpp" 1
	movl %eax, (_fpuasm); fildl (_fpuasm); addl %eax, %eax; fstps (_fpuasm); sbbl %ebx, %ebx; movl (_fpuasm), %eax; movl %eax, %ecx; andl $0x007ff000, %eax; shrl $10, %eax; subl $0x3f800000, %ecx; shrl $23, %ecx; movl _reciptable(%eax), %eax; sarl %cl, %eax; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	movl	_globvis, %edx
/APP
 # 3820 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$0, %edx
	subl	$4, %esi
	sarl	$8, %eax
	addl	_globalshade, %eax
	cmovs	%edx, %eax
	movswl	_numshades, %edx
	movl	152(%esp), %ebx
	subl	$1, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	sall	$8, %eax
	addl	%ebx, %eax
	movl	%eax, 4(%esi)
	movl	164(%esp), %eax
	subl	%eax, %edi
	movl	180(%esp), %eax
	cmpl	%eax, %esi
	jnb	L783
	movl	88(%esp), %edi
	movl	%eax, %ecx
	movl	176(%esp), %edx
	movl	172(%esp), %ebx
	movl	%edi, %eax
	subl	%ecx, %eax
	movl	%eax, %ecx
	sall	$30, %ecx
	subl	%eax, %ecx
	shrl	$2, %eax
	leal	-4(%edi,%ecx), %edi
	movl	64(%esp), %ecx
	movl	%edi, 88(%esp)
	movl	164(%esp), %edi
	imull	%edi, %eax
	subl	%edi, %ecx
	subl	%eax, %ecx
	movl	%ecx, 64(%esp)
L782:
	movl	68(%esp), %eax
	cmpl	%eax, 184(%esp)
	jb	L784
	movl	%edx, 180(%esp)
	movl	60(%esp), %edi
	movl	%eax, %esi
	movl	%ebx, 176(%esp)
	.p2align 4
	.p2align 3
L785:
	movl	%edi, %eax
/APP
 # 3825 "source/build/src/engine.cpp" 1
	movl %eax, (_fpuasm); fildl (_fpuasm); addl %eax, %eax; fstps (_fpuasm); sbbl %ebx, %ebx; movl (_fpuasm), %eax; movl %eax, %ecx; andl $0x007ff000, %eax; shrl $10, %eax; subl $0x3f800000, %ecx; shrl $23, %ecx; movl _reciptable(%eax), %eax; sarl %cl, %eax; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	movl	_globvis, %edx
/APP
 # 3825 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$0, %edx
	addl	$4, %esi
	sarl	$8, %eax
	addl	_globalshade, %eax
	cmovs	%edx, %eax
	movswl	_numshades, %edx
	movl	152(%esp), %ebx
	subl	$1, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	sall	$8, %eax
	addl	%ebx, %eax
	movl	%eax, -4(%esi)
	movl	164(%esp), %eax
	addl	%eax, %edi
	cmpl	%esi, 184(%esp)
	jnb	L785
	movl	184(%esp), %edi
	movl	68(%esp), %esi
	movl	60(%esp), %ecx
	movl	180(%esp), %edx
	movl	%edi, %eax
	addl	$4, %edi
	movl	176(%esp), %ebx
	movl	%edi, 68(%esp)
	subl	%esi, %eax
	movl	164(%esp), %edi
	shrl	$2, %eax
	imull	%edi, %eax
	addl	%edi, %ecx
	addl	%ecx, %eax
	movl	%eax, 60(%esp)
L784:
	xorps	%xmm1, %xmm1
	movl	_ylookup, %eax
	movss	LC16, %xmm2
	movss	%xmm7, 136(%esp)
	cvtsi2ssl	%ebx, %xmm1
	mulss	56(%esp), %xmm1
	movss	LC8, %xmm4
	movss	%xmm3, 144(%esp)
	mulss	%xmm7, %xmm2
	movl	192(%esp), %edi
	addl	(%eax,%ebx,4), %edi
	subl	%edx, %ebx
	mulss	92(%esp), %xmm1
	movl	_frameoffset, %eax
	movss	%xmm0, 180(%esp)
	mulss	%xmm3, %xmm4
	mulss	LC21, %xmm4
	addl	%edi, %eax
	movl	%eax, %esi
	movl	_blendtable, %eax
	addss	%xmm2, %xmm1
	movl	%eax, 156(%esp)
	leal	1(%ebx), %eax
	movss	LC20, %xmm2
	movl	%eax, 176(%esp)
	movss	%xmm4, 132(%esp)
	movss	%xmm1, 140(%esp)
	divss	%xmm1, %xmm2
	movss	%xmm2, 168(%esp)
	mulss	%xmm2, %xmm4
	movss	%xmm4, (%esp)
	call	_lrintf
	movss	180(%esp), %xmm0
	movss	LC8, %xmm4
	movss	168(%esp), %xmm2
	movl	%eax, 172(%esp)
	mulss	%xmm0, %xmm4
	mulss	LC21, %xmm4
	movss	%xmm4, 128(%esp)
	mulss	%xmm4, %xmm2
	movss	%xmm2, (%esp)
	call	_lrintf
	movss	52(%esp), %xmm5
	movss	180(%esp), %xmm0
	mulss	LC22, %xmm5
	movl	%eax, 168(%esp)
	movss	144(%esp), %xmm3
	movl	_globalorientation, %eax
	movss	140(%esp), %xmm1
	movss	136(%esp), %xmm7
	andl	$384, %eax
	cmpl	$256, %eax
	je	L786
	jg	L787
	testl	%eax, %eax
	movss	%xmm5, 72(%esp)
	movl	%ebx, %eax
	je	L957
	andl	$15, %eax
	movl	%esi, %edi
	movss	%xmm3, 44(%esp)
	subl	$15, %eax
	movss	%xmm0, 40(%esp)
	movl	%eax, 48(%esp)
	movss	%xmm7, 36(%esp)
	.p2align 4
	.p2align 3
L794:
	movss	LC20, %xmm0
	addss	72(%esp), %xmm1
	movss	132(%esp), %xmm2
	movss	%xmm1, 136(%esp)
	divss	%xmm1, %xmm0
	movss	%xmm0, 180(%esp)
	mulss	%xmm0, %xmm2
	movss	%xmm2, (%esp)
	call	_lrintf
	movss	180(%esp), %xmm0
	mulss	128(%esp), %xmm0
	movl	%eax, %ebx
	movss	%xmm0, (%esp)
	call	_lrintf
	movl	172(%esp), %esi
	movl	176(%esp), %edx
	movss	136(%esp), %xmm1
	subl	%esi, %ebx
	sarl	$4, %ebx
	movl	%ebx, 156(%esp)
	movl	168(%esp), %ebx
	subl	%ebx, %eax
	sarl	$4, %eax
	movl	%eax, 144(%esp)
	movl	$16, %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, %ecx
	movl	120(%esp), %eax
	movl	%ecx, 136(%esp)
	addl	%esi, %eax
	movl	%eax, 180(%esp)
	movl	116(%esp), %eax
	leal	(%ebx,%eax), %esi
	movl	%ecx, %eax
	movl	184(%esp), %ebx
	negl	%eax
	leal	0(,%eax,4), %edx
	leal	(%ebx,%edx), %eax
	movl	%edx, 80(%esp)
	movl	%eax, 140(%esp)
	.p2align 4
	.p2align 3
L793:
	movzwl	180(%esp), %eax
	movl	$16, %ecx
	movzwl	%si, %edx
	subl	__ZL6gglogx.lto_priv.0, %ecx
	shrl	%cl, %eax
	movzbl	__ZL6gglogy.lto_priv.0, %ecx
	sall	%cl, %eax
	movl	$16, %ecx
	subl	__ZL6gglogy.lto_priv.0, %ecx
	addl	__ZL5ggbuf.lto_priv.0, %eax
	shrl	%cl, %edx
	movzbl	(%eax,%edx), %eax
	cmpb	$-1, %al
	je	L792
	movl	(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	movb	%al, (%edi)
L792:
	movl	144(%esp), %eax
	subl	$4, %ebx
	movl	156(%esp), %ecx
	addl	__ZL6ggpinc.lto_priv.0, %edi
	addl	%ecx, 180(%esp)
	addl	%eax, %esi
	movl	140(%esp), %eax
	cmpl	%eax, %ebx
	jne	L793
	movl	136(%esp), %ecx
	movl	144(%esp), %ebx
	movl	168(%esp), %esi
	movl	80(%esp), %edx
	leal	-1(%ecx), %eax
	movl	%ebx, %ecx
	subl	$16, 176(%esp)
	imull	%eax, %ecx
	addl	%esi, %ebx
	leal	(%ecx,%ebx), %esi
	movl	156(%esp), %ebx
	movl	172(%esp), %ecx
	movl	%esi, 168(%esp)
	movl	48(%esp), %esi
	imull	%ebx, %eax
	addl	%ebx, %ecx
	addl	%ecx, %eax
	movl	%eax, 172(%esp)
	movl	184(%esp), %eax
	addl	%edx, %eax
	movl	%eax, 184(%esp)
	movl	176(%esp), %eax
	cmpl	%esi, %eax
	jne	L794
L938:
	movss	44(%esp), %xmm3
	movss	40(%esp), %xmm0
	movss	36(%esp), %xmm7
L791:
	testb	$15, 192(%esp)
	je	L958
	.p2align 4
	.p2align 3
L778:
	addl	$1, 192(%esp)
	movl	112(%esp), %edi
	addss	100(%esp), %xmm3
	addl	%edi, 124(%esp)
	addss	96(%esp), %xmm0
	addss	104(%esp), %xmm7
	movl	192(%esp), %eax
	cmpl	%eax, 160(%esp)
	jge	L802
L936:
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
L944:
	.cfi_restore_state
	movzwl	_rottile(,%eax,4), %edx
	cmpw	$-1, %dx
	je	L811
	movw	%dx, _globalpicnum
	movswl	%dx, %eax
	jmp	L811
	.p2align 4,,10
	.p2align 3
L951:
	testb	$2, 12(%eax)
	je	L959
	movl	184(%esp), %eax
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_getceilzofslopeptr.part.0
L746:
	cmpl	%eax, _globalposz
	jle	L936
	movl	184(%esp), %edi
	movzwl	12(%edi), %eax
	movzwl	16(%edi), %ebx
	movl	%eax, _globalorientation
	movsbl	20(%edi), %eax
	movw	%bx, _globalpicnum
	movl	%eax, _globalshade
	movzbl	21(%edi), %eax
	movl	%eax, _globalpal
	movl	%edi, %eax
	movswl	18(%edi), %edi
	movl	4(%eax), %eax
	movl	%eax, 176(%esp)
	jmp	L748
	.p2align 4,,10
	.p2align 3
L813:
	movl	_waloff(,%ebx,4), %edx
	movl	$0, 68(%esp)
	testl	%edx, %edx
	jne	L814
	movl	%ebx, %eax
	call	_tileLoad
	movl	_waloff(,%ebx,4), %edx
	movl	$0, 172(%esp)
	jmp	L814
	.p2align 4,,10
	.p2align 3
L832:
	movl	__ZL4dplc.lto_priv.0, %ecx
	movl	192(%esp), %esi
	movzwl	(%ecx,%esi,2), %ecx
	cmpw	%cx, %dx
	cmovl	%ecx, %edx
	subl	$1, %eax
	movl	%eax, 176(%esp)
	movswl	%dx, %edi
	movl	%edi, 164(%esp)
	jmp	L833
	.p2align 4,,10
	.p2align 3
L947:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L835
	movl	148(%esp), %edi
	movl	%eax, 24(%esp)
	movl	$4132, 20(%esp)
	movl	%edi, 28(%esp)
	movl	$LC23, 16(%esp)
	movl	$LC18, 12(%esp)
	movl	$4132, 8(%esp)
	movl	$LC19, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L835
	.p2align 4,,10
	.p2align 3
L946:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jl	L835
	movl	148(%esp), %eax
	movl	%edx, 24(%esp)
	movl	$4127, 20(%esp)
	movl	%eax, 28(%esp)
	movl	$LC23, 16(%esp)
	movl	$LC18, 12(%esp)
	movl	$4127, 8(%esp)
	movl	$LC19, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L835
	.p2align 4,,10
	.p2align 3
L950:
	movl	4(%eax), %eax
	jmp	L805
	.p2align 4,,10
	.p2align 3
L943:
	movl	8(%eax), %eax
	jmp	L808
	.p2align 4,,10
	.p2align 3
L948:
	movl	176(%esp), %esi
	movl	164(%esp), %ecx
	movl	%esi, %ebx
	subl	%ecx, %ebx
	movl	_ylookup, %ecx
	movl	%ebx, 64(%esp)
	movl	192(%esp), %ebx
	addl	(%ecx,%esi,4), %ebx
	movl	_frameoffset, %esi
	movl	$32, %ecx
	addl	%ebx, %esi
	movl	_blendtable, %ebx
	movl	%esi, 60(%esp)
	movl	__ZL5ggbuf.lto_priv.0, %esi
	movl	%ebx, 88(%esp)
	movl	_asm1, %ebx
	movl	%esi, 176(%esp)
	movl	_globalx1, %esi
	sarl	$3, %ebx
	movl	%ebx, 164(%esp)
	movl	__ZL6gglogy.lto_priv.0, %ebx
	movl	%esi, 100(%esp)
	movl	__ZL8globaly1.lto_priv.0, %esi
	movl	%ebx, 112(%esp)
	movl	%esi, 96(%esp)
	movl	%ecx, %esi
	subl	%ebx, %ecx
	movl	__ZL6ggpinc.lto_priv.0, %ebx
	subl	__ZL6gglogx.lto_priv.0, %esi
	andl	$128, %edx
	movl	%ecx, 80(%esp)
	movl	%esi, 92(%esp)
	movl	%ebx, 72(%esp)
	jne	L845
	movl	64(%esp), %ebx
	movl	%edi, 64(%esp)
	notl	%ebx
	movl	%ebx, %edx
	movl	172(%esp), %ebx
	leal	(%ebx,%edx,4), %esi
	movl	%ebx, %edi
	movl	%esi, 172(%esp)
	movl	60(%esp), %esi
	.p2align 4
	.p2align 3
L851:
	movl	%eax, %edx
	movl	164(%esp), %ecx
	sarl	$6, %edx
	movl	_sloptable+65536(,%edx,4), %ebx
	movl	64(%esp), %edx
	addl	%ecx, %eax
	movl	100(%esp), %ecx
	imull	%ebx, %edx
	addl	%ecx, %edx
	movzbl	92(%esp), %ecx
	shrl	%cl, %edx
	movzbl	112(%esp), %ecx
	sall	%cl, %edx
	movl	168(%esp), %ecx
	imull	%ecx, %ebx
	movl	96(%esp), %ecx
	addl	%ecx, %ebx
	movzbl	80(%esp), %ecx
	shrl	%cl, %ebx
	movl	176(%esp), %ecx
	addl	%ecx, %edx
	movzbl	(%edx,%ebx), %edx
	cmpb	$-1, %dl
	je	L850
	movzbl	(%esi), %ecx
	addl	(%edi), %edx
	movzbl	(%edx), %edx
	movl	88(%esp), %ebx
	sall	$8, %ecx
	orl	%edx, %ecx
	movzbl	(%ebx,%ecx), %edx
	movb	%dl, (%esi)
L850:
	movl	72(%esp), %ebx
	subl	$4, %edi
	addl	%ebx, %esi
	cmpl	%edi, 172(%esp)
	jne	L851
	jmp	L847
	.p2align 4,,10
	.p2align 3
L949:
	call	__Z16timerUpdateClockv
	jmp	L835
	.p2align 4,,10
	.p2align 3
L819:
	movl	$9, %eax
	movl	%eax, %edx
	subl	168(%esp), %eax
	subl	176(%esp), %edx
	jmp	L820
	.p2align 4,,10
	.p2align 3
L825:
	movzbl	30(%edi), %eax
	movzbl	31(%edi), %edx
	sall	$24, %eax
	sall	$24, %edx
	addl	180(%esp), %eax
	addl	164(%esp), %edx
	jmp	L826
	.p2align 4,,10
	.p2align 3
L821:
	movl	136(%esp), %edi
	movl	%edx, %ecx
	negl	%ecx
	sarl	%cl, %edi
	sarl	%cl, %ebx
	movl	%edi, 136(%esp)
	jmp	L822
	.p2align 4,,10
	.p2align 3
L823:
	negl	%eax
	movl	132(%esp), %edx
	movl	%eax, %ecx
	movl	128(%esp), %eax
	sarl	%cl, %edx
	sarl	%cl, %eax
	movl	%eax, 132(%esp)
	jmp	L824
	.p2align 4,,10
	.p2align 3
L843:
	movl	176(%esp), %ebx
	movl	_ylookup, %edx
	movl	192(%esp), %esi
	movl	_asm1, %ecx
	addl	(%edx,%ebx,4), %esi
	addl	_frameoffset, %esi
	movl	$32, %edx
	movl	%esi, 64(%esp)
	movl	__ZL5ggbuf.lto_priv.0, %esi
	sarl	$3, %ecx
	movl	%ecx, 112(%esp)
	movl	__ZL6gglogy.lto_priv.0, %ecx
	movl	%esi, 176(%esp)
	movl	_globalx1, %esi
	movl	%ecx, 100(%esp)
	movl	%esi, 96(%esp)
	movl	__ZL8globaly1.lto_priv.0, %esi
	movl	%esi, 92(%esp)
	movl	%edx, %esi
	subl	__ZL6gglogx.lto_priv.0, %esi
	subl	%ecx, %edx
	movl	%esi, 80(%esp)
	movl	__ZL6ggpinc.lto_priv.0, %esi
	movl	%edx, 72(%esp)
	movl	%esi, 88(%esp)
	movl	164(%esp), %esi
	movl	%edi, 164(%esp)
	subl	%esi, %ebx
	movl	%ebx, %edx
	movl	172(%esp), %ebx
	notl	%edx
	leal	(%ebx,%edx,4), %esi
	movl	%ebx, %edi
	movl	%esi, 172(%esp)
	movl	64(%esp), %esi
	.p2align 4
	.p2align 3
L849:
	movl	%eax, %edx
	movl	112(%esp), %ecx
	sarl	$6, %edx
	movl	_sloptable+65536(,%edx,4), %ebx
	movl	164(%esp), %edx
	addl	%ecx, %eax
	movl	96(%esp), %ecx
	imull	%ebx, %edx
	addl	%ecx, %edx
	movzbl	80(%esp), %ecx
	shrl	%cl, %edx
	movzbl	100(%esp), %ecx
	sall	%cl, %edx
	movl	168(%esp), %ecx
	imull	%ecx, %ebx
	movl	92(%esp), %ecx
	addl	%ecx, %ebx
	movzbl	72(%esp), %ecx
	shrl	%cl, %ebx
	movl	176(%esp), %ecx
	addl	%ecx, %edx
	movzbl	(%edx,%ebx), %edx
	cmpb	$-1, %dl
	je	L848
	movl	(%edi), %ecx
	movzbl	(%ecx,%edx), %edx
	movb	%dl, (%esi)
L848:
	movl	88(%esp), %ebx
	subl	$4, %edi
	addl	%ebx, %esi
	movl	172(%esp), %ebx
	cmpl	%ebx, %edi
	jne	L849
	jmp	L847
	.p2align 4,,10
	.p2align 3
L953:
	movzwl	_rottile(,%eax,4), %edx
	cmpw	$-1, %dx
	je	L753
	movw	%dx, _globalpicnum
	movswl	%dx, %eax
	jmp	L753
L755:
	movl	_waloff(,%ebx,4), %eax
	movl	$0, 132(%esp)
	movl	$0, 136(%esp)
	movl	%eax, 164(%esp)
	testl	%eax, %eax
	jne	L756
	movl	%ebx, %eax
	call	_tileLoad
	movl	_waloff(,%ebx,4), %eax
	movl	%eax, 164(%esp)
	jmp	L756
	.p2align 4,,10
	.p2align 3
L775:
	movl	__ZL4dplc.lto_priv.0, %ecx
	movl	192(%esp), %edi
	leal	-1(%eax), %ebx
	movswl	(%ecx,%edi,2), %ecx
	cmpw	%cx, %dx
	cmovl	%ecx, %edx
	jmp	L776
	.p2align 4,,10
	.p2align 3
L956:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L778
	movl	148(%esp), %edi
	movl	%eax, 24(%esp)
	movl	$3811, 20(%esp)
	movl	%edi, 28(%esp)
	movl	$LC17, 16(%esp)
	movl	$LC18, 12(%esp)
	movl	$3811, 8(%esp)
	movss	%xmm7, 176(%esp)
	movss	%xmm0, 180(%esp)
	movss	%xmm3, 184(%esp)
L940:
	movl	$LC19, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movss	184(%esp), %xmm3
	movss	180(%esp), %xmm0
	movss	176(%esp), %xmm7
	jmp	L778
	.p2align 4,,10
	.p2align 3
L945:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L936
	movl	148(%esp), %eax
	movl	%ebx, 24(%esp)
	movl	$4109, 20(%esp)
	movl	%eax, 28(%esp)
	movl	$LC23, 16(%esp)
	movl	$LC18, 12(%esp)
	movl	$4109, 8(%esp)
	movl	$LC19, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L936
	.p2align 4,,10
	.p2align 3
L845:
	movl	64(%esp), %ebx
	movl	172(%esp), %esi
	movl	%edi, 64(%esp)
	notl	%ebx
	movl	%esi, %edi
	leal	(%esi,%ebx,4), %ebx
	movl	60(%esp), %esi
	movl	%ebx, 172(%esp)
	.p2align 4
	.p2align 3
L853:
	movl	%eax, %edx
	movl	164(%esp), %ecx
	sarl	$6, %edx
	movl	_sloptable+65536(,%edx,4), %ebx
	movl	64(%esp), %edx
	addl	%ecx, %eax
	movl	100(%esp), %ecx
	imull	%ebx, %edx
	addl	%ecx, %edx
	movzbl	92(%esp), %ecx
	shrl	%cl, %edx
	movzbl	112(%esp), %ecx
	sall	%cl, %edx
	movl	168(%esp), %ecx
	imull	%ecx, %ebx
	movl	96(%esp), %ecx
	addl	%ecx, %ebx
	movzbl	80(%esp), %ecx
	shrl	%cl, %ebx
	movl	176(%esp), %ecx
	addl	%ecx, %edx
	movzbl	(%edx,%ebx), %edx
	cmpb	$-1, %dl
	je	L852
	addl	(%edi), %edx
	movzbl	(%esi), %ecx
	movzbl	(%edx), %edx
	movl	88(%esp), %ebx
	sall	$8, %edx
	orl	%ecx, %edx
	movzbl	(%ebx,%edx), %edx
	movb	%dl, (%esi)
L852:
	movl	72(%esp), %ebx
	subl	$4, %edi
	addl	%ebx, %esi
	movl	172(%esp), %ebx
	cmpl	%ebx, %edi
	jne	L853
	jmp	L847
	.p2align 4,,10
	.p2align 3
L955:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L778
	movl	148(%esp), %eax
	movl	%ecx, 24(%esp)
	movl	$3806, 20(%esp)
	movl	%eax, 28(%esp)
	movl	$LC17, 16(%esp)
	movl	$LC18, 12(%esp)
	movl	$3806, 8(%esp)
	movss	%xmm7, 176(%esp)
	movss	%xmm0, 180(%esp)
	movss	%xmm3, 184(%esp)
	jmp	L940
	.p2align 4,,10
	.p2align 3
L952:
	movl	8(%eax), %eax
	jmp	L750
	.p2align 4,,10
	.p2align 3
L959:
	movl	4(%eax), %eax
	jmp	L746
L958:
	movss	%xmm7, 176(%esp)
	movss	%xmm0, 180(%esp)
	movss	%xmm3, 184(%esp)
	call	__Z16timerUpdateClockv
	movss	176(%esp), %xmm7
	movss	180(%esp), %xmm0
	movss	184(%esp), %xmm3
	jmp	L778
L768:
	movzbl	30(%esi), %edx
	sall	$24, %edx
	leal	(%edx,%ebx), %edi
	movzbl	31(%esi), %edx
	movl	%edi, 140(%esp)
	sall	$24, %edx
	addl	%edx, %eax
	movl	%eax, 128(%esp)
	jmp	L769
L762:
	movl	180(%esp), %edi
	movl	$9, %edx
	movl	%edx, %esi
	subl	%edi, %esi
	movl	176(%esp), %edi
	subl	%edi, %edx
	jmp	L763
L764:
	negl	%esi
	movss	__ZL12pow2invfloat(,%esi,4), %xmm2
	mulss	%xmm2, %xmm4
	mulss	%xmm2, %xmm3
	movss	%xmm4, 100(%esp)
	jmp	L765
L766:
	negl	%edx
	movss	__ZL12pow2invfloat(,%edx,4), %xmm2
	mulss	%xmm2, %xmm6
	mulss	%xmm2, %xmm0
	movss	%xmm6, 96(%esp)
	jmp	L767
L757:
	movss	128(%esp), %xmm1
	movss	%xmm3, 68(%esp)
	movss	140(%esp), %xmm3
	imull	%edi, %edi
	movss	LC10, %xmm2
	movss	%xmm7, 64(%esp)
	mulss	%xmm3, %xmm1
	movss	%xmm0, 88(%esp)
	mulss	124(%esp), %xmm3
	leal	16777216(%edi), %eax
	movaps	%xmm1, %xmm7
	mulss	%xmm2, %xmm7
	mulss	%xmm2, %xmm3
/APP
 # 3699 "source/build/src/engine.cpp" 1
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
	movaps	%xmm7, %xmm1
	movaps	%xmm3, %xmm2
	xorps	%xmm4, %xmm4
	movl	144(%esp), %edi
	mulss	%xmm6, %xmm2
	cvtsi2ssl	%eax, %xmm4
	movl	%edx, 96(%esp)
	movss	LC11, %xmm0
	mulss	%xmm5, %xmm1
	movl	156(%esp), %eax
	movss	%xmm7, 128(%esp)
	mulss	%xmm3, %xmm5
	movss	%xmm3, 124(%esp)
	mulss	%xmm7, %xmm6
	subl	%edi, %eax
	movss	%xmm0, 92(%esp)
	movss	%xmm4, 120(%esp)
	addss	%xmm2, %xmm1
	movss	LC12, %xmm2
	movss	%xmm2, 72(%esp)
	mulss	%xmm0, %xmm1
	movss	%xmm1, 112(%esp)
	movaps	%xmm5, %xmm1
	subss	%xmm6, %xmm1
	mulss	%xmm4, %xmm1
	movaps	%xmm3, %xmm4
	movaps	%xmm1, %xmm6
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	movl	152(%esp), %eax
	mulss	%xmm2, %xmm6
	movss	LC13, %xmm2
	movss	%xmm2, 140(%esp)
	subl	%edx, %eax
	movaps	%xmm1, %xmm5
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm2, %xmm5
	movss	%xmm6, 80(%esp)
	movaps	%xmm1, %xmm6
	mulss	%xmm2, %xmm6
	movaps	%xmm5, %xmm2
	xorps	LC2, %xmm2
	movss	%xmm5, 100(%esp)
	movaps	%xmm2, %xmm1
	mulss	%xmm7, %xmm1
	mulss	%xmm6, %xmm4
	movss	%xmm6, 116(%esp)
	subss	%xmm4, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, (%esp)
	call	_lrintf
	movss	100(%esp), %xmm5
	mulss	124(%esp), %xmm5
	movss	116(%esp), %xmm2
	movl	%eax, %ebx
	mulss	128(%esp), %xmm2
	movaps	%xmm5, %xmm1
	subss	%xmm2, %xmm1
	mulss	120(%esp), %xmm1
	movss	72(%esp), %xmm2
	movss	%xmm2, 116(%esp)
	mulss	%xmm2, %xmm1
	movss	%xmm1, (%esp)
	call	_lrintf
	movss	124(%esp), %xmm6
	movl	96(%esp), %edx
	movss	128(%esp), %xmm7
	movss	68(%esp), %xmm3
	movss	88(%esp), %xmm0
	movaps	%xmm6, %xmm1
	movss	116(%esp), %xmm2
	movaps	%xmm7, %xmm4
	movss	112(%esp), %xmm5
	mulss	%xmm3, %xmm4
	mulss	%xmm0, %xmm1
	mulss	%xmm6, %xmm3
	movss	80(%esp), %xmm6
	mulss	%xmm7, %xmm0
	movss	64(%esp), %xmm7
	addss	%xmm4, %xmm1
	subss	%xmm0, %xmm3
	movss	120(%esp), %xmm0
	mulss	%xmm3, %xmm0
	movss	92(%esp), %xmm3
	mulss	%xmm1, %xmm3
	mulss	%xmm2, %xmm0
	jmp	L758
L786:
	movl	%ebx, %eax
	movss	%xmm5, 48(%esp)
	movl	%esi, %edi
	andl	$15, %eax
	movss	%xmm3, 40(%esp)
	subl	$15, %eax
	movss	%xmm0, 36(%esp)
	movl	%eax, 44(%esp)
	movss	%xmm7, 32(%esp)
	.p2align 4
	.p2align 3
L797:
	movss	LC20, %xmm0
	addss	48(%esp), %xmm1
	movss	132(%esp), %xmm2
	divss	%xmm1, %xmm0
	movss	%xmm1, 72(%esp)
	movss	%xmm0, 180(%esp)
	mulss	%xmm0, %xmm2
	movss	%xmm2, (%esp)
	call	_lrintf
	movss	180(%esp), %xmm0
	mulss	128(%esp), %xmm0
	movl	%eax, %ebx
	movss	%xmm0, (%esp)
	call	_lrintf
	movl	172(%esp), %esi
	movl	176(%esp), %ecx
	movss	72(%esp), %xmm1
	subl	%esi, %ebx
	sarl	$4, %ebx
	movl	%ebx, 144(%esp)
	movl	168(%esp), %ebx
	subl	%ebx, %eax
	sarl	$4, %eax
	movl	%eax, 140(%esp)
	movl	$16, %eax
	cmpl	%eax, %ecx
	cmovle	%ecx, %eax
	movl	%eax, %edx
	movl	120(%esp), %eax
	movl	%edx, 72(%esp)
	addl	%esi, %eax
	movl	%eax, 180(%esp)
	movl	116(%esp), %eax
	leal	(%ebx,%eax), %esi
	movl	%edx, %eax
	movl	184(%esp), %ebx
	negl	%eax
	sall	$2, %eax
	movl	%eax, 80(%esp)
	addl	%ebx, %eax
	movl	%eax, 136(%esp)
	.p2align 4
	.p2align 3
L796:
	movzwl	180(%esp), %eax
	movl	$16, %ecx
	movzwl	%si, %edx
	subl	__ZL6gglogx.lto_priv.0, %ecx
	shrl	%cl, %eax
	movzbl	__ZL6gglogy.lto_priv.0, %ecx
	sall	%cl, %eax
	movl	$16, %ecx
	subl	__ZL6gglogy.lto_priv.0, %ecx
	addl	__ZL5ggbuf.lto_priv.0, %eax
	shrl	%cl, %edx
	movzbl	(%eax,%edx), %eax
	cmpb	$-1, %al
	je	L795
	movzbl	(%edi), %edx
	addl	(%ebx), %eax
	movzbl	(%eax), %eax
	sall	$8, %edx
	orl	%eax, %edx
	movl	156(%esp), %eax
	movzbl	(%eax,%edx), %eax
	movb	%al, (%edi)
L795:
	movl	140(%esp), %eax
	subl	$4, %ebx
	movl	144(%esp), %ecx
	addl	__ZL6ggpinc.lto_priv.0, %edi
	addl	%ecx, 180(%esp)
	addl	%eax, %esi
	movl	136(%esp), %eax
	cmpl	%eax, %ebx
	jne	L796
	movl	72(%esp), %edx
	movl	140(%esp), %ecx
	movl	168(%esp), %esi
	subl	$16, 176(%esp)
	leal	-1(%edx), %eax
	movl	%ecx, %edx
	imull	%eax, %edx
	addl	%esi, %ecx
	leal	(%edx,%ecx), %esi
	movl	172(%esp), %edx
	movl	%esi, 168(%esp)
	movl	144(%esp), %esi
	imull	%esi, %eax
	addl	%esi, %edx
	movl	80(%esp), %esi
	addl	%edx, %eax
	movl	%eax, 172(%esp)
	movl	184(%esp), %eax
	addl	%esi, %eax
	movl	44(%esp), %esi
	movl	%eax, 184(%esp)
	movl	176(%esp), %eax
	cmpl	%esi, %eax
	jne	L797
L939:
	movss	40(%esp), %xmm3
	movss	36(%esp), %xmm0
	movss	32(%esp), %xmm7
	jmp	L791
L957:
	andl	$15, %eax
	movl	%esi, %edi
	movss	%xmm3, 44(%esp)
	subl	$15, %eax
	movss	%xmm0, 40(%esp)
	movl	%eax, 48(%esp)
	movss	%xmm7, 36(%esp)
	.p2align 4
	.p2align 3
L790:
	movss	LC20, %xmm0
	addss	72(%esp), %xmm1
	movss	132(%esp), %xmm2
	movss	%xmm1, 136(%esp)
	divss	%xmm1, %xmm0
	movss	%xmm0, 180(%esp)
	mulss	%xmm0, %xmm2
	movss	%xmm2, (%esp)
	call	_lrintf
	movss	180(%esp), %xmm0
	mulss	128(%esp), %xmm0
	movl	%eax, %ebx
	movss	%xmm0, (%esp)
	call	_lrintf
	movl	172(%esp), %esi
	movl	176(%esp), %edx
	movss	136(%esp), %xmm1
	subl	%esi, %ebx
	sarl	$4, %ebx
	movl	%ebx, 156(%esp)
	movl	168(%esp), %ebx
	subl	%ebx, %eax
	sarl	$4, %eax
	movl	%eax, 144(%esp)
	movl	$16, %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	184(%esp), %edx
	movl	%eax, %ecx
	movl	120(%esp), %eax
	movl	%ecx, 136(%esp)
	addl	%esi, %eax
	movl	%eax, 180(%esp)
	movl	116(%esp), %eax
	leal	(%ebx,%eax), %esi
	movl	%ecx, %eax
	negl	%eax
	leal	0(,%eax,4), %ebx
	leal	(%edx,%ebx), %eax
	movl	%ebx, 80(%esp)
	movl	%eax, 140(%esp)
	.p2align 4
	.p2align 3
L789:
	movzwl	180(%esp), %eax
	movl	$16, %ecx
	movzwl	%si, %ebx
	subl	$4, %edx
	subl	__ZL6gglogx.lto_priv.0, %ecx
	shrl	%cl, %eax
	movzbl	__ZL6gglogy.lto_priv.0, %ecx
	sall	%cl, %eax
	movl	$16, %ecx
	subl	__ZL6gglogy.lto_priv.0, %ecx
	addl	__ZL5ggbuf.lto_priv.0, %eax
	shrl	%cl, %ebx
	movzbl	(%eax,%ebx), %ecx
	movl	4(%edx), %eax
	movl	156(%esp), %ebx
	addl	%ebx, 180(%esp)
	movzbl	(%ecx,%eax), %eax
	movb	%al, (%edi)
	movl	144(%esp), %eax
	addl	__ZL6ggpinc.lto_priv.0, %edi
	addl	%eax, %esi
	movl	140(%esp), %eax
	cmpl	%eax, %edx
	jne	L789
	movl	136(%esp), %ecx
	movl	168(%esp), %esi
	movl	80(%esp), %ebx
	subl	$16, 176(%esp)
	leal	-1(%ecx), %eax
	movl	144(%esp), %ecx
	movl	%ecx, %edx
	addl	%esi, %ecx
	imull	%eax, %edx
	leal	(%edx,%ecx), %esi
	movl	172(%esp), %edx
	movl	%esi, 168(%esp)
	movl	156(%esp), %esi
	imull	%esi, %eax
	addl	%esi, %edx
	movl	48(%esp), %esi
	addl	%edx, %eax
	movl	%eax, 172(%esp)
	movl	184(%esp), %eax
	addl	%ebx, %eax
	movl	%eax, 184(%esp)
	movl	176(%esp), %eax
	cmpl	%esi, %eax
	jne	L790
	jmp	L938
L787:
	movl	%ebx, %eax
	movss	%xmm5, 48(%esp)
	movl	%esi, %edi
	andl	$15, %eax
	movss	%xmm3, 40(%esp)
	subl	$15, %eax
	movss	%xmm0, 36(%esp)
	movl	%eax, 44(%esp)
	movss	%xmm7, 32(%esp)
	.p2align 4
	.p2align 3
L800:
	movss	LC20, %xmm0
	addss	48(%esp), %xmm1
	movss	132(%esp), %xmm2
	divss	%xmm1, %xmm0
	movss	%xmm1, 72(%esp)
	movss	%xmm0, 180(%esp)
	mulss	%xmm0, %xmm2
	movss	%xmm2, (%esp)
	call	_lrintf
	movss	180(%esp), %xmm0
	mulss	128(%esp), %xmm0
	movl	%eax, %ebx
	movss	%xmm0, (%esp)
	call	_lrintf
	movl	172(%esp), %esi
	movl	176(%esp), %ecx
	movss	72(%esp), %xmm1
	subl	%esi, %ebx
	sarl	$4, %ebx
	movl	%ebx, 144(%esp)
	movl	168(%esp), %ebx
	subl	%ebx, %eax
	sarl	$4, %eax
	movl	%eax, 140(%esp)
	movl	$16, %eax
	cmpl	%eax, %ecx
	cmovle	%ecx, %eax
	movl	%eax, %edx
	movl	120(%esp), %eax
	movl	%edx, 72(%esp)
	addl	%esi, %eax
	movl	%eax, 180(%esp)
	movl	116(%esp), %eax
	leal	(%ebx,%eax), %esi
	movl	%edx, %eax
	movl	184(%esp), %ebx
	negl	%eax
	sall	$2, %eax
	movl	%eax, 80(%esp)
	addl	%ebx, %eax
	movl	%eax, 136(%esp)
	.p2align 4
	.p2align 3
L799:
	movzwl	180(%esp), %eax
	movl	$16, %ecx
	movzwl	%si, %edx
	subl	__ZL6gglogx.lto_priv.0, %ecx
	shrl	%cl, %eax
	movzbl	__ZL6gglogy.lto_priv.0, %ecx
	sall	%cl, %eax
	movl	$16, %ecx
	subl	__ZL6gglogy.lto_priv.0, %ecx
	addl	__ZL5ggbuf.lto_priv.0, %eax
	shrl	%cl, %edx
	movzbl	(%eax,%edx), %eax
	cmpb	$-1, %al
	je	L798
	addl	(%ebx), %eax
	movzbl	(%edi), %edx
	movzbl	(%eax), %eax
	movl	156(%esp), %ecx
	sall	$8, %eax
	orl	%edx, %eax
	movzbl	(%ecx,%eax), %eax
	movb	%al, (%edi)
L798:
	movl	140(%esp), %eax
	subl	$4, %ebx
	movl	144(%esp), %ecx
	addl	__ZL6ggpinc.lto_priv.0, %edi
	addl	%ecx, 180(%esp)
	addl	%eax, %esi
	movl	136(%esp), %eax
	cmpl	%eax, %ebx
	jne	L799
	movl	72(%esp), %edx
	movl	140(%esp), %ecx
	movl	168(%esp), %esi
	subl	$16, 176(%esp)
	leal	-1(%edx), %eax
	movl	%ecx, %edx
	imull	%eax, %edx
	addl	%esi, %ecx
	leal	(%edx,%ecx), %esi
	movl	172(%esp), %edx
	movl	%esi, 168(%esp)
	movl	144(%esp), %esi
	imull	%esi, %eax
	addl	%esi, %edx
	movl	80(%esp), %esi
	addl	%edx, %eax
	movl	%eax, 172(%esp)
	movl	184(%esp), %eax
	addl	%esi, %eax
	movl	44(%esp), %esi
	movl	%eax, 184(%esp)
	movl	176(%esp), %eax
	cmpl	%esi, %eax
	jne	L800
	jmp	L939
L954:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L936
	movl	148(%esp), %eax
	movl	%ebx, 24(%esp)
	movl	$3788, 20(%esp)
	movl	%eax, 28(%esp)
	movl	$LC17, 16(%esp)
	movl	$LC18, 12(%esp)
	movl	$3788, 8(%esp)
	movl	$LC19, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L936
	.cfi_endproc
LFE30:
	.p2align 4
	.def	__ZL8parascanci;	.scl	3;	.type	32;	.endef
__ZL8parascanci:
LFB36:
	.cfi_startproc
	subl	$84, %esp
	.cfi_def_cfa_offset 88
	movl	%ebx, 68(%esp)
	movl	%esi, 72(%esp)
	movl	%edi, 76(%esp)
	movb	%al, 24(%esp)
	movswl	_bunchfirst(%edx,%edx), %eax
	movl	%edx, 36(%esp)
	movswl	_thesector(%eax,%eax), %eax
	leal	(%eax,%eax,4), %edx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%eax, %ebx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %ecx
	movl	_globalhoriz, %eax
	movzbl	32(%ecx), %edx
	movl	%eax, 44(%esp)
	movl	_globalpisibility, %eax
	testb	%dl, %dl
	je	L961
	addl	$16, %edx
	movzbl	%dl, %edx
/APP
 # 4195 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
L961:
	movl	%eax, _globvis
	cmpb	$0, 24(%esp)
	jne	L962
	movzbl	21(%ecx), %eax
	movzwl	16(%ecx), %esi
	movl	%eax, _globalpal
	movsbl	20(%ecx), %eax
	movw	%si, _globalpicnum
	movl	%eax, _globalshade
	movzbl	22(%ecx), %eax
	movl	%eax, __ZL14globalxpanning.lto_priv.0
	movzbl	23(%ecx), %eax
	movl	%eax, __ZL14globalypanning.lto_priv.0
	movl	__ZL5umost.lto_priv.0, %eax
	movl	%eax, 28(%esp)
	movl	__ZL4uplc.lto_priv.0, %eax
	movl	%eax, 32(%esp)
L963:
	movswl	%si, %eax
	cmpl	$30719, %eax
	jbe	L965
	xorl	%eax, %eax
	xorl	%esi, %esi
	movw	%ax, _globalpicnum
	xorl	%eax, %eax
L965:
	cmpb	$63, _picanm+3(%eax,%eax,4)
	jbe	L966
	call	_animateoffs
	addl	%eax, %esi
	movw	%si, _globalpicnum
	movswl	%si, %eax
L966:
	andb	$64, %bh
	je	L968
	testb	$16, _globalorientation+1
	jne	L1036
L968:
/APP
 # 4220 "source/build/src/engine.cpp" 1
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
	movswl	_globalpicnum, %edi
	movswl	_tilesiz+2(,%edi,4), %ebx
	testl	%ebx, %ebx
	jne	L1037
	movl	68(%esp), %ebx
	movl	72(%esp), %esi
	movl	76(%esp), %edi
	addl	$84, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L962:
	.cfi_restore_state
	movzbl	29(%ecx), %eax
	movzwl	24(%ecx), %esi
	movl	%eax, _globalpal
	movsbl	28(%ecx), %eax
	movw	%si, _globalpicnum
	movl	%eax, _globalshade
	movzbl	30(%ecx), %eax
	movl	%eax, __ZL14globalxpanning.lto_priv.0
	movzbl	31(%ecx), %eax
	movl	%eax, __ZL14globalypanning.lto_priv.0
	movl	__ZL4dplc.lto_priv.0, %eax
	movl	%eax, 28(%esp)
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	%eax, 32(%esp)
	jmp	L963
L1036:
	movzwl	_rottile(,%eax,4), %edx
	cmpw	$-1, %dx
	je	L968
	movw	%dx, _globalpicnum
	movswl	%dx, %eax
	jmp	L968
	.p2align 4,,10
	.p2align 3
L1037:
	movl	%ebp, 80(%esp)
	.cfi_offset 5, -8
	movzbl	_picsiz(%edi), %eax
	shrb	$4, %al
	movzbl	%al, %esi
	movl	%edi, %eax
	call	__Z12tileLoadHighi
	movl	%eax, __ZL8globalht.lto_priv.0
	movl	%eax, %edx
	testl	%eax, %eax
	je	L971
	movswl	4(%edx), %ebp
	movswl	6(%edx), %edx
	movl	(%eax), %eax
	movl	%edx, %ecx
	addl	%edx, %esi
	sall	%cl, %ebx
	movl	$27, %ecx
	subl	%edx, %ecx
	movl	%ecx, 52(%esp)
L972:
	movl	%eax, __ZL12globalbufplc.lto_priv.0
	movl	_pskynummultis, %eax
	movl	%ebp, %ecx
	movl	_multipskytile, %edi
	sall	%cl, __ZL14globalxpanning.lto_priv.0
	subl	$1, %eax
	movswl	_globalpicnum, %ecx
	movl	_multipsky, %ebp
	testl	%eax, %eax
	jg	L975
	jmp	L974
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1039:
	subl	$1, %eax
	je	L1038
L975:
	cmpl	(%edi,%eax,4), %ecx
	jne	L1039
L974:
	sall	$5, %eax
	movw	%si, __ZL14globalshiftval.lto_priv.0
	leal	0(%ebp,%eax), %edi
	movzbl	8(%edi), %eax
	movl	(%edi), %ebp
	movl	%edi, 48(%esp)
	movb	%al, 20(%esp)
	movl	%edi, %eax
	movl	4(%edi), %edi
	movl	%edi, 16(%esp)
	movl	28(%eax), %edi
	movl	_pow2long.lto_priv.0(,%esi,4), %eax
	cmpl	$9, _g_loadedMapVersion
	jg	L976
	testb	$2, _picanm+4(%ecx,%ecx,4)
	je	L1040
L976:
	cmpl	%eax, %ebx
	je	L977
L978:
	movl	%edx, %ecx
	movl	$65536, %eax
	movl	%ebx, 8(%esp)
	sall	%cl, %eax
	movl	%ebx, _globaltilesizy
	xorl	%ecx, %ecx
	cltd
	movl	$0, (%esp)
	idivl	%ebx
	movw	%cx, __ZL14globalshiftval.lto_priv.0
	movl	%eax, __ZL12globalyscale.lto_priv.0
	movl	%ebx, %eax
	sarl	%ebx
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	16(%esp), %eax
	addl	%ebx, %eax
	movl	%eax, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	__ZL14globalypanning.lto_priv.0, %ecx
	movl	__ZL12globalyscale.lto_priv.0, %esi
	cltd
	movl	%ecx, %ebx
	sarl	$31, %ebx
	shldl	$24, %ecx, %ebx
	sall	$24, %ecx
	addl	%ecx, %eax
	adcl	%ebx, %edx
L979:
	movl	%edi, 8(%esp)
	sarl	$31, %edi
	movl	%edi, 12(%esp)
	movl	%esi, %edi
	sarl	$31, %edi
	movl	%eax, __ZL8globalzd.lto_priv.0
	shldl	$16, %esi, %edi
	sall	$16, %esi
	movl	%edx, __ZL8globalzd.lto_priv.0+4
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	%eax, __ZL12globalyscale.lto_priv.0
	cmpl	$65536, %ebp
	je	L980
	movl	_ydimen, %ecx
	movl	_globalhoriz, %eax
	movl	%ebp, %edx
	sarl	%ecx
	subl	%ecx, %eax
/APP
 # 4264 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movl	%ecx, _globalhoriz
L980:
	movl	36(%esp), %eax
	movswl	_bunchfirst(%eax,%eax), %ebx
	testl	%ebx, %ebx
	js	L981
	movl	48(%esp), %eax
	movl	52(%esp), %edx
	movl	$-1, 16(%esp)
	addl	$9, %eax
	movl	%eax, 40(%esp)
	movswl	_globalpicnum, %eax
	movzbl	_picsiz(%eax), %eax
	andl	$15, %eax
	subl	%eax, %edx
	movsbl	20(%esp), %eax
	subl	%eax, %edx
	movl	$0, %eax
	cmovns	%edx, %eax
	movl	%eax, %esi
	.p2align 4
	.p2align 3
L995:
	movswl	_thewall(%ebx,%ebx), %eax
	sall	$5, %eax
	addl	_wall, %eax
	movswl	12(%eax), %edx
	testw	%dx, %dx
	js	L982
	leal	(%edx,%edx,4), %ecx
	movl	_sector, %edx
	leal	(%edx,%ecx,8), %edx
	cmpb	$0, 24(%esp)
	jne	L983
	movzwl	12(%edx), %edx
L984:
	testb	$32, 14(%eax)
	jne	L982
	andl	$1, %edx
	je	L982
	movl	16(%esp), %eax
	testl	%eax, %eax
	js	L986
	movswl	_globalpicnum, %eax
	movl	__ZL4lplc.lto_priv.0, %ebp
	movl	%eax, %edi
	movw	%ax, 62(%esp)
	movl	%eax, 64(%esp)
	movzbl	_picsiz(%eax), %eax
	movl	%eax, %ecx
	andl	$15, %eax
	andl	$15, %ecx
	movl	%eax, 20(%esp)
	movb	%cl, 56(%esp)
	movl	16(%esp), %ecx
	movl	0(%ebp,%ecx,4), %edx
	movzbl	56(%esp), %ecx
	movl	%edx, %eax
	sarl	%cl, %eax
	movl	40(%esp), %ecx
	movsbw	(%ecx,%eax), %ax
	addl	%edi, %eax
	movl	_xb1(,%ebx,4), %edi
	movw	%ax, _globalpicnum
	movl	-4(%ebp,%edi,4), %ecx
	movl	%edi, 52(%esp)
	xorl	%edx, %ecx
	movl	%ecx, %edi
	movzbl	56(%esp), %ecx
	sarl	%cl, %edi
	testl	%edi, %edi
	jne	L1041
	movl	__ZL5swplc.lto_priv.0, %eax
	movl	52(%esp), %edx
	movl	%ebp, 8(%esp)
	movl	28(%esp), %ecx
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax
	subl	$1, %edx
	movl	%eax, (%esp)
	movl	16(%esp), %eax
	call	__ZL8wallscaniiPKsS0_PKiS2_
L992:
	movzwl	62(%esp), %eax
	movl	$-1, 16(%esp)
	movw	%ax, _globalpicnum
L986:
	movswl	_bunchp2(%ebx,%ebx), %ebx
	testl	%ebx, %ebx
	jns	L995
	.p2align 4
	.p2align 3
L1045:
	movl	16(%esp), %esi
	testl	%esi, %esi
	js	L981
	movswl	_globalpicnum, %eax
	movl	__ZL4lplc.lto_priv.0, %edi
	movl	48(%esp), %ebp
	movl	%eax, %ebx
	movw	%ax, 52(%esp)
	movl	(%edi,%esi,4), %edx
	movl	%eax, 20(%esp)
	movzbl	_picsiz(%eax), %eax
	movl	%eax, %ecx
	andl	$15, %eax
	andl	$15, %ecx
	movl	%eax, 24(%esp)
	movl	%edx, %eax
	sarl	%cl, %eax
	movsbw	9(%ebp,%eax), %ax
	addl	%ebx, %eax
	movl	36(%esp), %ebx
	movw	%ax, _globalpicnum
	movswl	_bunchlast(%ebx,%ebx), %ebp
	movl	__ZL3xb2.lto_priv.0(,%ebp,4), %ebx
	movl	(%edi,%ebx,4), %esi
	xorl	%edx, %esi
	sarl	%cl, %esi
	testl	%esi, %esi
	je	L996
	movl	16(%esp), %ecx
	movl	%ecx, %esi
	cmpl	%ecx, %ebx
	jl	L1042
	movl	%edx, %ebx
	movl	%ebp, %edx
	movl	%edi, %ebp
	movl	40(%esp), %edi
	jmp	L997
	.p2align 4,,10
	.p2align 3
L1043:
	movl	__ZL4lplc.lto_priv.0, %ebp
	movzwl	_globalpicnum, %eax
	movl	%ecx, %esi
	movl	0(%ebp,%ecx,4), %ebx
L997:
	movzbl	24(%esp), %ecx
	cwtl
	sarl	%cl, %ebx
	movl	20(%esp), %ecx
	movsbl	(%edi,%ebx), %ebx
	addl	%ecx, %ebx
	cmpl	%ebx, %eax
	je	L1000
	movl	__ZL5swplc.lto_priv.0, %eax
	movl	28(%esp), %ecx
	movl	%ebp, 8(%esp)
	leal	-1(%esi), %edx
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	movl	16(%esp), %eax
	call	__ZL8wallscaniiPKsS0_PKiS2_
	movl	36(%esp), %eax
	movl	%esi, 16(%esp)
	movw	%bx, _globalpicnum
	movswl	_bunchlast(%eax,%eax), %edx
L1000:
	leal	1(%esi), %ecx
	cmpl	%ecx, __ZL3xb2.lto_priv.0(,%edx,4)
	jge	L1043
	cmpl	%ecx, 16(%esp)
	jle	L1044
L999:
	movzwl	52(%esp), %eax
	movw	%ax, _globalpicnum
L981:
	movl	44(%esp), %eax
	movl	80(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	movl	$0, __ZL8globalht.lto_priv.0
	movl	68(%esp), %ebx
	movl	72(%esp), %esi
	movl	%eax, _globalhoriz
	movl	76(%esp), %edi
	addl	$84, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L982:
	.cfi_restore_state
	cmpl	$-1, 16(%esp)
	je	L1030
	movl	_xb1(,%ebx,4), %ecx
L987:
	movl	_viewingrange, %edx
	movl	_xdimenrecip, %eax
	movl	%edx, 20(%esp)
/APP
 # 4294 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edi
	movl	__ZL3xb2.lto_priv.0(,%ebx,4), %eax
	movl	%ecx, %ebp
	cmpl	%ecx, %eax
	jl	L988
	movl	%esi, %ecx
	.p2align 4
	.p2align 3
L989:
	movl	%ebp, %eax
	movl	%edi, %edx
	subl	_halfxdimen, %eax
/APP
 # 4296 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $7, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	_qglobalang, %eax
	movl	__ZL4lplc.lto_priv.0, %edx
	andl	$134217727, %eax
	sarl	%cl, %eax
	movl	%eax, (%edx,%ebp,4)
	movl	__ZL3xb2.lto_priv.0(,%ebx,4), %eax
	addl	$1, %ebp
	cmpl	%ebp, %eax
	jge	L989
	movl	_viewingrange, %edi
	movl	_xb1(,%ebx,4), %ebp
	movl	%ecx, %esi
	movl	%edi, 20(%esp)
L988:
	movl	__ZL5swplc.lto_priv.0, %edx
	subl	%ebp, %eax
	leal	1(%eax), %ecx
	movl	_xdimscale, %eax
	leal	(%edx,%ebp,4), %edi
	movl	20(%esp), %edx
/APP
 # 4311 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
 # 4311 "source/build/src/engine.cpp" 1
	rep; stosl
 # 0 "" 2
/NO_APP
	movswl	_bunchp2(%ebx,%ebx), %ebx
	testl	%ebx, %ebx
	jns	L995
	jmp	L1045
	.p2align 4,,10
	.p2align 3
L983:
	movzwl	14(%edx), %edx
	jmp	L984
	.p2align 4,,10
	.p2align 3
L1030:
	movl	_xb1(,%ebx,4), %eax
	movl	%eax, 16(%esp)
	movl	%eax, %ecx
	jmp	L987
L1040:
	cmpl	%eax, %ebx
	je	L977
	addl	$1, %esi
	movw	%si, __ZL14globalshiftval.lto_priv.0
L977:
	cmpl	$512, %ebx
	jg	L978
	movl	$32, %eax
	subw	__ZL14globalshiftval.lto_priv.0, %ax
	movl	$8, %esi
	sarl	%ebx
	movw	%ax, __ZL14globalshiftval.lto_priv.0
	cwtl
	leal	-19(%eax,%edx), %ecx
	movl	%eax, 40(%esp)
	sall	%cl, %esi
	movl	16(%esp), %ecx
	movl	%esi, __ZL12globalyscale.lto_priv.0
	leal	(%ecx,%ebx), %eax
	movzbl	40(%esp), %ecx
	xorl	%ebx, %ebx
	cltd
	shldl	%cl, %eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	cmovne	%eax, %edx
	cmovne	%ebx, %eax
	movl	%eax, %ecx
	movl	__ZL14globalypanning.lto_priv.0, %eax
	movl	%edx, %ebx
	cltd
	shldl	$24, %eax, %edx
	sall	$24, %eax
	addl	%ecx, %eax
	adcl	%ebx, %edx
	jmp	L979
L1038:
	xorl	%eax, %eax
	jmp	L974
L1041:
	movl	16(%esp), %ecx
	movl	%ecx, 56(%esp)
	cmpl	%ecx, 52(%esp)
	jle	L992
	movl	%esi, 52(%esp)
	movl	56(%esp), %edi
	movl	%edx, %esi
	movl	%ebp, %edx
	movl	64(%esp), %ebp
	jmp	L991
	.p2align 4,,10
	.p2align 3
L1046:
	movl	__ZL4lplc.lto_priv.0, %edx
	movzwl	_globalpicnum, %eax
	movl	%ecx, %edi
	movl	(%edx,%ecx,4), %esi
L991:
	movzbl	20(%esp), %ecx
	cwtl
	sarl	%cl, %esi
	movl	40(%esp), %ecx
	movsbl	(%ecx,%esi), %esi
	addl	%ebp, %esi
	cmpl	%esi, %eax
	je	L993
	movl	32(%esp), %ecx
	movl	%edx, 8(%esp)
	leal	-1(%edi), %eax
	movl	__ZL5swplc.lto_priv.0, %edx
	movl	%ecx, (%esp)
	movl	28(%esp), %ecx
	movl	%edx, 4(%esp)
	movl	%eax, %edx
	movl	16(%esp), %eax
	call	__ZL8wallscaniiPKsS0_PKiS2_
	movw	%si, _globalpicnum
	movl	%edi, 16(%esp)
L993:
	leal	1(%edi), %ecx
	cmpl	%ecx, _xb1(,%ebx,4)
	jg	L1046
	movl	%edi, 56(%esp)
	movl	52(%esp), %esi
	cmpl	%ecx, 16(%esp)
	jge	L992
	movl	__ZL4lplc.lto_priv.0, %eax
	movl	28(%esp), %ecx
	movl	%edi, %edx
	movl	%eax, 8(%esp)
	movl	__ZL5swplc.lto_priv.0, %eax
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	movl	16(%esp), %eax
	call	__ZL8wallscaniiPKsS0_PKiS2_
	jmp	L992
L996:
	movl	__ZL5swplc.lto_priv.0, %eax
	movl	28(%esp), %ecx
	movl	%edi, 8(%esp)
	movl	%ebx, %edx
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	movl	16(%esp), %eax
	call	__ZL8wallscaniiPKsS0_PKiS2_
	jmp	L999
L971:
	movl	_waloff(,%edi,4), %eax
	testl	%eax, %eax
	je	L1047
	movl	$27, 52(%esp)
	xorl	%edx, %edx
	xorl	%ebp, %ebp
	jmp	L972
L1047:
	movl	%edi, %eax
	xorl	%ebp, %ebp
	call	_tileLoad
	movl	$27, 52(%esp)
	movl	_waloff(,%edi,4), %eax
	xorl	%edx, %edx
	jmp	L972
L1044:
	movl	__ZL4lplc.lto_priv.0, %edi
L998:
	movl	__ZL5swplc.lto_priv.0, %eax
	movl	28(%esp), %ecx
	movl	%edi, 8(%esp)
	movl	%esi, %edx
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	movl	16(%esp), %eax
	call	__ZL8wallscaniiPKsS0_PKiS2_
	jmp	L999
L1042:
	leal	-1(%ecx), %esi
	jmp	L998
	.cfi_endproc
LFE36:
	.p2align 4
	.globl	__ZL9owallmostPsix.lto_priv.0
	.def	__ZL9owallmostPsix.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL9owallmostPsix.lto_priv.0:
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
	movl	%edx, %ebx
	subl	$84, %esp
	.cfi_def_cfa_offset 104
	movl	__ZL11globaluclip.lto_priv.0, %ecx
	movl	__ZL3yb1.lto_priv.0(,%edx,4), %ebp
	movl	104(%esp), %esi
	movl	108(%esp), %edi
	movl	%eax, 40(%esp)
	movl	%ecx, %eax
	imull	%ebp
	shldl	$7, %esi, %edi
	sall	$7, %esi
	shrdl	$20, %edx, %eax
	sarl	$20, %edx
	movl	%edx, 32(%esp)
	movl	__ZL3yb2.lto_priv.0(,%ebx,4), %edx
	movl	%eax, 28(%esp)
	movl	%edx, %eax
	movl	%edx, 20(%esp)
	imull	%ecx
	movl	%edx, %ecx
	movl	%eax, %edx
	shrdl	$20, %ecx, %edx
	sarl	$20, %ecx
	movl	%ecx, 68(%esp)
	movl	__ZL11globaldclip.lto_priv.0, %ecx
	movl	%edx, 64(%esp)
	movl	%ecx, %eax
	imull	%ebp
	shrdl	$20, %edx, %eax
	sarl	$20, %edx
	movl	%eax, 56(%esp)
	movl	20(%esp), %eax
	movl	%edx, 60(%esp)
	imull	%ecx
	movl	68(%esp), %ecx
	shrdl	$20, %edx, %eax
	sarl	$20, %edx
	movl	%edx, 52(%esp)
	movl	64(%esp), %edx
	movl	%eax, 48(%esp)
	movl	%edi, %eax
	cmpl	%edx, %esi
	sbbl	%ecx, %eax
	movl	%edi, %ecx
	setl	%dl
	cmpl	28(%esp), %esi
	sbbl	32(%esp), %ecx
	setl	%al
	movzbl	%dl, %edx
	movzbl	%al, %eax
	leal	(%eax,%edx,2), %eax
	movl	56(%esp), %edx
	movl	60(%esp), %ecx
	cmpl	%esi, %edx
	sbbl	%edi, %ecx
	setl	%dl
	movzbl	%dl, %edx
	leal	(%eax,%edx,4), %ecx
	movl	__ZL3xb2.lto_priv.0(,%ebx,4), %edx
	movl	48(%esp), %eax
	movl	%ecx, 16(%esp)
	movl	%edx, 44(%esp)
	movl	_xb1(,%ebx,4), %edx
	cmpl	%esi, %eax
	movl	%edx, 36(%esp)
	movl	52(%esp), %edx
	movl	%edx, %eax
	sbbl	%edi, %eax
	jl	L1052
	movl	%ecx, %eax
	andl	$3, %ecx
	cmpl	$3, %ecx
	je	L1053
	andl	$12, %eax
	movl	%eax, 72(%esp)
	testl	%ecx, %ecx
	jne	L1054
L1055:
	movl	%ebp, %eax
	movl	%ebp, 28(%esp)
	sarl	$31, %eax
	movl	%eax, 32(%esp)
	movl	20(%esp), %eax
	movl	%eax, 64(%esp)
	sarl	$31, %eax
	movl	%eax, 68(%esp)
	movl	72(%esp), %eax
	testl	%eax, %eax
	jne	L1063
L1075:
	movl	28(%esp), %eax
	movl	32(%esp), %edx
	movl	%eax, 8(%esp)
	movl	%esi, %eax
	movl	%edx, 12(%esp)
	imull	_xdimenscale
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	$0, %edx
	sall	$4, %eax
	movl	%eax, 28(%esp)
	movl	%eax, %ebp
	movl	44(%esp), %eax
	subl	36(%esp), %eax
	cmovs	%edx, %eax
	movl	68(%esp), %edx
	leal	1(%eax), %edi
	movl	64(%esp), %eax
	movl	%edx, 12(%esp)
	movl	%edi, 20(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, %eax
	imull	_xdimenscale
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	sall	$4, %eax
	subl	%ebp, %eax
	movl	%eax, %esi
	cmpl	%edi, _lastd_s32
	je	L1081
	cmpl	$16383, %edi
	jle	L1081
	movl	%edi, %ebx
	movl	%edi, _lastd_s32
	negl	%ebx
	cmovs	%edi, %ebx
	movl	$31, %edi
	bsrl	%ebx, %edx
	leal	-1(%ebx), %ebp
	xorl	%eax, %eax
	xorl	$31, %edx
	subl	%edx, %edi
	movl	%edi, %ecx
	testl	%ebx, %ebp
	jne	L1117
L1082:
	movl	%eax, _divtable32
	movb	%cl, _divtable32+4
L1081:
	movl	20(%esp), %edi
	xorl	%eax, %eax
	cmpl	$16383, %edi
	cmovle	%edi, %eax
	leal	(%eax,%eax,4), %eax
	movzbl	_divtable32+4(%eax), %ebx
	movl	_divtable32(%eax), %edx
	movl	%ebx, %ecx
	andl	$31, %ecx
	testl	%edx, %edx
	jne	L1084
	movl	$-1, %eax
	movl	%esi, %edx
	sarb	$7, %bl
	sall	%cl, %eax
	sarl	$31, %edx
	movsbl	%bl, %ebx
	notl	%eax
	andl	%edx, %eax
	addl	%eax, %esi
	sarl	%cl, %esi
	xorl	%ebx, %esi
	subl	%ebx, %esi
L1085:
	movl	40(%esp), %eax
	movl	36(%esp), %ebx
	movl	_globalhoriz, %edx
	movl	20(%esp), %ecx
	leal	(%eax,%ebx,2), %ebp
	movl	28(%esp), %ebx
	sall	$16, %edx
	movl	%ebp, %eax
	addl	%ebx, %edx
/APP
 # 2530 "source/build/src/engine.cpp" 1
	testl %ecx, %ecx; jz 3f; testb $2, %al; jz 0f; movl %edx, %ebx; sarl $16, %ebx; movw %bx, (%eax); addl %esi, %edx; addl $2, %eax; decl %ecx; jz 3f; 0: subl $2, %ecx; jc 2f; 1: movl %edx, %ebx; addl %esi, %edx; sarl $16, %ebx; movl %edx, %edi; andl $0xffff0000, %edi; addl %esi, %edx; addl %edi, %ebx; movl %ebx, (%eax); addl $4, %eax; subl $2, %ecx; jnc 1b; testb $1, %cl; jz 3f; 2: movl %edx, %ebx; sarl $16, %ebx; movw %bx, (%eax); 3:
 # 0 "" 2
/NO_APP
	movzwl	_ydimen, %eax
	movzwl	0(%ebp), %edx
	movl	44(%esp), %edi
	cmpw	%ax, %dx
	cmovle	%edx, %eax
	testw	%dx, %dx
	movl	$0, %edx
	cmovle	%edx, %eax
	movw	%ax, 0(%ebp)
	movl	40(%esp), %eax
	leal	(%eax,%edi,2), %ecx
	movzwl	_ydimen, %eax
	movzwl	(%ecx), %edx
	cmpw	%ax, %dx
	cmovle	%edx, %eax
	testw	%dx, %dx
	movl	$0, %edx
	cmovle	%edx, %eax
	movw	%ax, (%ecx)
L1048:
	movl	16(%esp), %eax
	addl	$84, %esp
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
L1053:
	.cfi_restore_state
	movl	44(%esp), %eax
	movl	36(%esp), %ebx
	cmpl	%ebx, %eax
	jl	L1048
	subl	%ebx, %eax
	movl	$0, 4(%esp)
	leal	2(%eax,%eax), %edx
	movl	40(%esp), %eax
	movl	%edx, 8(%esp)
	leal	(%eax,%ebx,2), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	16(%esp), %eax
	addl	$84, %esp
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
L1052:
	.cfi_restore_state
	addl	$8, 16(%esp)
	movl	16(%esp), %ecx
	andl	$3, %ecx
	cmpl	$3, %ecx
	je	L1053
	movl	16(%esp), %eax
	notl	%eax
	testb	$12, %al
	je	L1118
	testl	%ecx, %ecx
	jne	L1119
	movl	$8, 16(%esp)
	movl	$8, 72(%esp)
L1063:
	movl	56(%esp), %edx
	movl	48(%esp), %eax
	movl	%edi, 52(%esp)
	movl	%esi, 48(%esp)
	subl	%edx, %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%esi, %eax
	subl	%edx, %eax
	cltd
	shldl	$30, %eax, %edx
	sall	$30, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	%eax, %ecx
	movl	__ZL3yb2.lto_priv.0(,%ebx,4), %eax
	subl	__ZL3yb1.lto_priv.0(,%ebx,4), %eax
	movl	%ecx, %edx
/APP
 # 2611 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 28(%esp)
	movl	_xb1(,%ebx,4), %edi
	movl	%ecx, %edx
	movl	__ZL3yb2.lto_priv.0(,%ebx,4), %eax
/APP
 # 2612 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	28(%esp), %eax
	addl	__ZL3yb1.lto_priv.0(,%ebx,4), %eax
	cltd
	movl	%eax, 28(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	__ZL3xb2.lto_priv.0(,%ebx,4), %eax
	movl	%edx, 32(%esp)
	subl	%edi, %eax
	imull	%ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	_xb1(,%ebx,4), %edx
	movl	48(%esp), %esi
	addl	%edi, %eax
	movl	__ZL3xb2.lto_priv.0(,%ebx,4), %edi
	cmpl	$8, 72(%esp)
	movl	%edi, 56(%esp)
	je	L1120
	cmpl	56(%esp), %eax
	jle	L1093
	movl	%ebp, 28(%esp)
	sarl	$31, %ebp
	movl	%ebp, 32(%esp)
L1077:
	movl	20(%esp), %ecx
	movl	%ecx, %ebx
	movl	%ecx, 64(%esp)
	sarl	$31, %ebx
	movl	%ebx, 68(%esp)
	cmpl	%edx, %eax
	jl	L1075
	movl	40(%esp), %ebx
	leal	(%ebx,%edx,2), %edx
	leal	2(%ebx,%eax,2), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1079:
	movl	_ydimen, %ecx
	addl	$2, %edx
	movw	%cx, -2(%edx)
	cmpl	%eax, %edx
	jne	L1079
	jmp	L1075
	.p2align 4,,10
	.p2align 3
L1084:
	movl	%edx, %eax
	imull	%esi
	movl	%ebx, %eax
	sarb	$7, %al
	movsbl	%al, %eax
	xorl	%eax, %esi
	addl	%edx, %esi
	subl	%eax, %esi
	andl	$64, %ebx
	movl	%edx, %eax
	cmovne	%esi, %eax
	movl	%eax, %edx
	shrl	$31, %eax
	sarl	%cl, %edx
	movl	%eax, %esi
	addl	%edx, %esi
	jmp	L1085
	.p2align 4,,10
	.p2align 3
L1119:
	movl	$8, 72(%esp)
L1054:
	movl	28(%esp), %edx
	movl	64(%esp), %eax
	movl	%ecx, 80(%esp)
	subl	%edx, %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%esi, %eax
	subl	%edx, %eax
	cltd
	shldl	$30, %eax, %edx
	sall	$30, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	%eax, %edx
	movl	__ZL3yb2.lto_priv.0(,%ebx,4), %eax
	subl	__ZL3yb1.lto_priv.0(,%ebx,4), %eax
	movl	%edx, 76(%esp)
/APP
 # 2591 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	__ZL3yb1.lto_priv.0(,%ebx,4), %eax
	movl	76(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%eax, %ecx
	movl	_xb1(,%ebx,4), %eax
	movl	%eax, 64(%esp)
	movl	__ZL3yb2.lto_priv.0(,%ebx,4), %eax
/APP
 # 2592 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%ecx, 8(%esp)
	sarl	$31, %ecx
	movl	%ecx, 12(%esp)
	movl	__ZL3xb2.lto_priv.0(,%ebx,4), %edx
	subl	64(%esp), %edx
	movl	%eax, 76(%esp)
	movl	%edx, %eax
	imull	76(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	__ZL3xb2.lto_priv.0(,%ebx,4), %ecx
	addl	64(%esp), %eax
	movl	_xb1(,%ebx,4), %edx
	movl	%ecx, 64(%esp)
	cmpl	$2, 80(%esp)
	je	L1121
	movl	36(%esp), %ecx
	cmpl	64(%esp), %eax
	cmovle	28(%esp), %ebp
	cmovle	%eax, %ecx
	movl	%ebp, 28(%esp)
	movl	%ecx, 36(%esp)
	cmpl	%edx, %eax
	jl	L1070
	movl	40(%esp), %ecx
	subl	%edx, %eax
	movl	$0, 4(%esp)
	leal	2(%eax,%eax), %eax
	leal	(%ecx,%edx,2), %edx
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	call	_memset
L1070:
	movl	28(%esp), %ebp
	jmp	L1055
	.p2align 4,,10
	.p2align 3
L1117:
	movl	$1, %ebp
	movl	$30, %ecx
	subl	%edx, %ecx
	movl	%ebp, %edx
	sall	%cl, %edx
	movl	%edi, %ecx
/APP
 # 477 "source/build/include/libdivide.h" 1
	divl %ebx
 # 0 "" 2
/NO_APP
	movl	%eax, 48(%esp)
	movl	%ebx, %eax
	sall	%cl, %ebp
	subl	%edx, %eax
	cmpl	%ebp, %eax
	jnb	L1083
	movl	48(%esp), %eax
	leal	-1(%edi), %ecx
	addl	$1, %eax
	jmp	L1082
	.p2align 4,,10
	.p2align 3
L1121:
	cmpl	%edx, %eax
	movl	20(%esp), %ecx
	cmovge	28(%esp), %ecx
	movl	%ecx, 28(%esp)
	movl	44(%esp), %ecx
	cmovge	%eax, %ecx
	addl	$1, %eax
	movl	%ecx, 44(%esp)
	cmpl	64(%esp), %eax
	jg	L1066
	movl	40(%esp), %edx
	.p2align 5
	.p2align 4
	.p2align 3
L1067:
	xorl	%ecx, %ecx
	movw	%cx, (%edx,%eax,2)
	addl	$1, %eax
	cmpl	%eax, __ZL3xb2.lto_priv.0(,%ebx,4)
	jge	L1067
L1066:
	movl	28(%esp), %eax
	movl	%eax, 20(%esp)
	jmp	L1055
	.p2align 4,,10
	.p2align 3
L1120:
	cmpl	%edx, %eax
	jge	L1092
	movl	20(%esp), %edx
	movl	%edx, %ecx
	movl	%edx, 28(%esp)
	sarl	$31, %ecx
	movl	%ecx, 32(%esp)
L1073:
	movl	%ebp, 20(%esp)
	sarl	$31, %ebp
	movl	40(%esp), %ecx
	addl	$1, %eax
	movl	%ebp, 24(%esp)
	cmpl	56(%esp), %eax
	jg	L1076
	.p2align 5
	.p2align 4
	.p2align 3
L1074:
	movl	_ydimen, %edx
	movw	%dx, (%ecx,%eax,2)
	addl	$1, %eax
	cmpl	%eax, __ZL3xb2.lto_priv.0(,%ebx,4)
	jge	L1074
L1076:
	movl	28(%esp), %eax
	movl	32(%esp), %edx
	movl	%eax, 64(%esp)
	movl	20(%esp), %eax
	movl	%edx, 68(%esp)
	movl	24(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	jmp	L1075
	.p2align 4,,10
	.p2align 3
L1118:
	movl	44(%esp), %edi
	movl	36(%esp), %eax
	cmpl	%eax, %edi
	jl	L1048
	movl	40(%esp), %ebx
	leal	(%ebx,%eax,2), %eax
	leal	2(%ebx,%edi,2), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1062:
	movl	_ydimen, %edx
	addl	$2, %eax
	movw	%dx, -2(%eax)
	cmpl	%eax, %ecx
	jne	L1062
	movl	16(%esp), %eax
	addl	$84, %esp
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
L1083:
	.cfi_restore_state
	leal	(%edx,%edx), %eax
	orl	$64, %ecx
	cmpl	%ebx, %eax
	setnb	%bl
	cmpl	%edx, %eax
	setb	%al
	orl	%eax, %ebx
	movl	48(%esp), %eax
	movzbl	%bl, %ebx
	leal	1(%ebx,%eax,2), %eax
	jmp	L1082
	.p2align 4,,10
	.p2align 3
L1093:
	movl	%eax, 36(%esp)
	jmp	L1077
	.p2align 4,,10
	.p2align 3
L1092:
	movl	%eax, 44(%esp)
	jmp	L1073
	.cfi_endproc
LFE37:
	.p2align 4
	.globl	__ZL8wallmostPsiic.lto_priv.0
	.def	__ZL8wallmostPsiic.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL8wallmostPsiic.lto_priv.0:
LFB40:
	.cfi_startproc
	subl	$144, %esp
	.cfi_def_cfa_offset 148
	movl	%esi, 132(%esp)
	.cfi_offset 6, -16
	leal	(%ecx,%ecx,4), %esi
	movl	_sector, %ecx
	sall	$3, %esi
	movl	%ebp, 140(%esp)
	.cfi_offset 5, -8
	movl	%edx, %ebp
	movl	%eax, 36(%esp)
	addl	%esi, %ecx
	movl	_globalposz, %eax
	cmpb	$0, 148(%esp)
	jne	L1123
	movl	4(%ecx), %edx
	subl	%eax, %edx
	testb	$2, 12(%ecx)
	je	L1205
L1124:
	movl	%edi, 136(%esp)
	.cfi_offset 7, -12
	movzwl	(%ecx), %edi
	movswl	_thewall(%ebp,%ebp), %eax
	movw	%di, 16(%esp)
	cmpw	%di, %ax
	je	L1206
	movl	_wall, %edx
	sall	$5, %eax
	movl	%ebx, 128(%esp)
	.cfi_offset 3, -20
	addl	%edx, %eax
	movswl	8(%eax), %ebx
	movl	(%eax), %ecx
	sall	$5, %ebx
	movl	%ecx, 40(%esp)
	addl	%edx, %ebx
	movl	(%ebx), %edi
	movl	%edi, 116(%esp)
	subl	%ecx, %edi
	movswl	16(%esp), %ecx
	movl	%edi, 24(%esp)
	movl	4(%eax), %edi
	movl	4(%ebx), %eax
	sall	$5, %ecx
	movl	%ecx, 96(%esp)
	movl	%eax, 120(%esp)
	subl	%edi, %eax
	movl	%eax, 28(%esp)
	leal	(%edx,%ecx), %eax
	movswl	8(%eax), %ecx
	movl	%edi, 48(%esp)
	sall	$5, %ecx
	addl	%ecx, %edx
	movl	4(%edx), %ebx
	movl	(%edx), %edi
	subl	(%eax), %edi
	movl	4(%eax), %eax
	movl	%ebx, 68(%esp)
	subl	%eax, %ebx
	movl	%eax, 76(%esp)
	movl	%edi, %eax
	movl	%ebx, %edx
	imull	%edi, %eax
	imull	%ebx, %edx
	addl	%edx, %eax
/APP
 # 2679 "source/build/src/engine.cpp" 1
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
 # 2679 "source/build/src/engine.cpp" 1
	movl %eax, (_fpuasm); fildl (_fpuasm); addl %eax, %eax; fstps (_fpuasm); sbbl %ebx, %ebx; movl (_fpuasm), %eax; movl %eax, %ecx; andl $0x007ff000, %eax; shrl $10, %eax; subl $0x3f800000, %ecx; shrl $23, %ecx; movl _reciptable(%eax), %eax; sarl %cl, %eax; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	addl	_sector, %esi
	cmpb	$0, 148(%esp)
	je	L1207
	movswl	26(%esi), %eax
/APP
 # 2688 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $15, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 60(%esp)
	movl	8(%esi), %eax
	movl	%eax, 56(%esp)
L1128:
	movl	_globalposx, %eax
	movl	40(%esp), %ebx
	movl	_globalposy, %ecx
	movl	48(%esp), %esi
	subl	%eax, %ebx
	movl	%eax, 108(%esp)
	movl	_xb1(,%ebp,4), %eax
	subl	%ecx, %esi
	movl	%ecx, 112(%esp)
	movl	%ebx, 88(%esp)
	movl	%esi, 84(%esp)
	testl	%eax, %eax
	jne	L1173
	movl	_sinviewingrangeglobalang, %edx
	movl	_singlobalang, %eax
	addl	_cosglobalang, %edx
	subl	_cosviewingrangeglobalang, %eax
	imull	%edx, %esi
	imull	%eax, %ebx
	subl	%ebx, %esi
	movl	%esi, %ecx
	movl	%esi, 16(%esp)
	sarl	$31, %esi
	movl	%esi, 20(%esp)
	sarl	$3, %ecx
L1129:
	movl	56(%esp), %ebx
	imull	24(%esp), %eax
	movl	%ebx, %esi
	movl	%ebx, 100(%esp)
	sarl	$31, %esi
	movl	%esi, 104(%esp)
	movl	28(%esp), %esi
	imull	%edx, %esi
	subl	%esi, %eax
	movl	%eax, %edx
/APP
 # 2641 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%ecx, %eax
/APP
 # 2641 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %esi
	jg	L1208
L1130:
	movl	96(%esp), %edx
	addl	_wall, %edx
	movl	40(%esp), %eax
	subl	(%edx), %eax
	movl	60(%esp), %ecx
	sall	$8, %eax
	movl	48(%esp), %ebx
	movl	%eax, 56(%esp)
	subl	4(%edx), %ebx
	movl	76(%esp), %eax
	subl	68(%esp), %eax
	movl	%ebx, %esi
	movl	%ecx, %ebx
	imull	%ecx, %eax
	sall	$8, %esi
	movl	100(%esp), %ecx
	imull	%edi, %ebx
	movl	%esi, 60(%esp)
	movl	28(%esp), %edi
	movl	%eax, 80(%esp)
	movl	_globalposz, %eax
	movl	%ebx, 124(%esp)
	movl	%ebx, %esi
	movl	104(%esp), %ebx
	cltd
	subl	%eax, %ecx
	movl	%edi, %eax
	sbbl	%edx, %ebx
	cltd
	shldl	$7, %ecx, %ebx
	sall	$7, %ecx
	movl	%ebx, 72(%esp)
	movl	16(%esp), %ebx
	movl	%ecx, 68(%esp)
	movl	20(%esp), %ecx
	imull	%edx, %ebx
	imull	%ecx, %eax
	movl	%ebx, 76(%esp)
	movl	76(%esp), %ebx
	addl	%eax, %ebx
	movl	%edi, %eax
	movl	16(%esp), %edi
	mull	16(%esp)
	addl	%ebx, %edx
	shrdl	$20, %edx, %eax
	addl	60(%esp), %eax
	imull	%esi
	movl	%eax, %ecx
	movl	24(%esp), %eax
	movl	%edx, %ebx
	cltd
	movl	24(%esp), %eax
	imull	20(%esp), %eax
	imull	%edx, %edi
	addl	%eax, %edi
	movl	24(%esp), %eax
	mull	16(%esp)
	addl	%edi, %edx
	shrdl	$20, %edx, %eax
	addl	56(%esp), %eax
	imull	80(%esp)
	movl	__ZL3xb2.lto_priv.0(,%ebp,4), %edi
	movl	%edi, 76(%esp)
	addl	%eax, %ecx
	adcl	%edx, %ebx
	shrdl	$24, %ebx, %ecx
	sarl	$24, %ebx
	movl	%ecx, %eax
	addl	68(%esp), %eax
	movl	%ebx, %edx
	adcl	72(%esp), %edx
	movl	%eax, 16(%esp)
	movl	_xdimen, %eax
	movl	%edx, 20(%esp)
	movl	116(%esp), %edx
	leal	-1(%eax), %ecx
	subl	108(%esp), %edx
	movl	120(%esp), %eax
	subl	112(%esp), %eax
	cmpl	%ecx, %edi
	jne	L1132
	movl	_cosglobalang, %edx
	movl	_cosviewingrangeglobalang, %eax
	subl	_sinviewingrangeglobalang, %edx
	addl	_singlobalang, %eax
L1132:
	movl	84(%esp), %ecx
	movl	88(%esp), %ebx
	imull	%edx, %ecx
	imull	%eax, %ebx
	imull	28(%esp), %edx
	imull	24(%esp), %eax
	subl	%ebx, %ecx
	subl	%edx, %eax
	movl	%eax, %ebx
/APP
 # 2641 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$3, %eax
/APP
 # 2641 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %edx
	jg	L1209
L1133:
	movl	28(%esp), %eax
	movl	60(%esp), %esi
	movl	56(%esp), %ebx
	imull	%ecx
	shrdl	$20, %edx, %eax
	addl	%eax, %esi
	movl	124(%esp), %eax
	imull	%esi
	movl	%eax, %esi
	movl	24(%esp), %eax
	movl	%edx, %edi
	imull	%ecx
	movl	__ZL11globaluclip.lto_priv.0, %ecx
	shrdl	$20, %edx, %eax
	addl	%ebx, %eax
	imull	80(%esp)
	addl	%eax, %esi
	movl	%ecx, %eax
	adcl	%edx, %edi
	movl	__ZL3yb1.lto_priv.0(,%ebp,4), %edx
	shrdl	$24, %edi, %esi
	sarl	$24, %edi
	addl	68(%esp), %esi
	adcl	72(%esp), %edi
	movl	%esi, %ebx
	movl	%edx, 48(%esp)
	movl	%edi, %esi
/APP
 # 2707 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $20, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	__ZL3yb2.lto_priv.0(,%ebp,4), %edi
	movl	%eax, 68(%esp)
	movl	%ecx, %eax
	movl	%edi, 40(%esp)
	movl	%edi, %edx
/APP
 # 2707 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $20, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	__ZL11globaldclip.lto_priv.0, %edi
	movl	%eax, %ecx
	movl	48(%esp), %edx
	movl	%edi, %eax
/APP
 # 2708 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $20, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 60(%esp)
	movl	40(%esp), %edx
	movl	%edi, %eax
/APP
 # 2708 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $20, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%esi, 32(%esp)
	movl	32(%esp), %edi
	movl	%eax, 80(%esp)
	movl	%ecx, %eax
	movl	20(%esp), %esi
	cltd
	cmpl	%ecx, %ebx
	movl	%ebx, 28(%esp)
	movl	16(%esp), %ebx
	sbbl	%edx, %edi
	movl	68(%esp), %edi
	setl	%dl
	movl	%edi, %eax
	movzbl	%dl, %edx
	movl	%edx, 24(%esp)
	cltd
	cmpl	%edi, %ebx
	movl	60(%esp), %ebx
	sbbl	%edx, %esi
	movl	24(%esp), %esi
	setl	%al
	movzbl	%al, %eax
	leal	(%eax,%esi,2), %edi
	movl	%ebx, %eax
	movl	80(%esp), %esi
	cltd
	xorl	%eax, %eax
	cmpl	16(%esp), %ebx
	sbbl	20(%esp), %edx
	setl	%al
	movl	_xb1(,%ebp,4), %edx
	leal	(%edi,%eax,4), %edi
	movl	%esi, %eax
	movl	%edx, 56(%esp)
	cltd
	cmpl	28(%esp), %esi
	movl	%edx, %ebx
	movl	32(%esp), %edx
	movl	28(%esp), %eax
	movl	%edi, 24(%esp)
	sbbl	%edx, %ebx
	jl	L1137
	movl	%edi, %esi
	andl	$3, %edi
	cmpl	$3, %edi
	je	L1138
	andl	$12, %esi
	movl	%eax, 100(%esp)
	movl	%esi, 84(%esp)
	movl	16(%esp), %esi
	movl	%esi, 96(%esp)
	testl	%edi, %edi
	jne	L1139
	movl	%eax, 68(%esp)
	movl	16(%esp), %eax
	movl	%edx, 72(%esp)
	movl	20(%esp), %edx
	movl	%eax, 88(%esp)
	movl	%edx, 92(%esp)
L1140:
	movl	84(%esp), %ebx
	testl	%ebx, %ebx
	jne	L1147
	movl	40(%esp), %eax
	movl	88(%esp), %ecx
	movl	48(%esp), %esi
	cltd
	movl	%eax, 40(%esp)
	movl	68(%esp), %eax
	movl	%ecx, %ebx
	movl	%edx, 44(%esp)
	sarl	$31, %ebx
	movl	%esi, %edi
	cltd
	movl	%ecx, 16(%esp)
	sarl	$31, %edi
	movl	%ebx, 20(%esp)
	movl	%eax, 60(%esp)
	movl	%edx, 64(%esp)
L1159:
	movl	_xdimenscale, %eax
	movl	20(%esp), %ebp
	movl	%edi, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, %edi
	movl	%ebp, %ebx
	sarl	$31, %edi
	imull	%eax, %ebx
	movl	%edi, %edx
	movl	16(%esp), %edi
	imull	%edi, %edx
	addl	%edx, %ebx
	mull	%edi
	addl	%ebx, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	$0, %edx
	movl	60(%esp), %edi
	movl	64(%esp), %ebp
	sall	$4, %eax
	movl	%eax, 28(%esp)
	movl	76(%esp), %eax
	movl	%edi, %esi
	subl	56(%esp), %eax
	cmovs	%edx, %eax
	movl	44(%esp), %edx
	addl	$1, %eax
	movl	%edx, 12(%esp)
	movl	%ebp, %edx
	movl	%eax, 16(%esp)
	movl	40(%esp), %eax
	movl	%eax, 8(%esp)
	movl	_xdimenscale, %eax
	movl	%eax, %ebx
	imull	%eax, %edx
	sarl	$31, %ebx
	imull	%ebx, %esi
	movl	%esi, %ecx
	addl	%edx, %ecx
	mull	%edi
	addl	%ecx, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	sall	$4, %eax
	movl	%eax, %ebp
	movl	28(%esp), %eax
	subl	%eax, %ebp
	movl	16(%esp), %eax
	cmpl	%eax, _lastd_s32
	je	L1165
	cmpl	$16383, %eax
	jle	L1165
	movl	%eax, %ebx
	movl	%eax, _lastd_s32
	movl	$31, %esi
	negl	%ebx
	cmovs	%eax, %ebx
	bsrl	%ebx, %edx
	leal	-1(%ebx), %eax
	xorl	$31, %edx
	movl	%eax, %edi
	xorl	%eax, %eax
	subl	%edx, %esi
	movl	%esi, %ecx
	testl	%ebx, %edi
	je	L1166
	movl	$30, %ecx
	movl	$1, %edi
	subl	%edx, %ecx
	movl	$1, %edx
	sall	%cl, %edx
	movl	%esi, %ecx
/APP
 # 477 "source/build/include/libdivide.h" 1
	divl %ebx
 # 0 "" 2
/NO_APP
	movl	%eax, 40(%esp)
	movl	%ebx, %eax
	sall	%cl, %edi
	subl	%edx, %eax
	cmpl	%edi, %eax
	jnb	L1167
	movl	40(%esp), %eax
	leal	-1(%esi), %ecx
	addl	$1, %eax
L1166:
	movl	%eax, _divtable32
	movb	%cl, _divtable32+4
L1165:
	movl	16(%esp), %ebx
	xorl	%eax, %eax
	cmpl	$16383, %ebx
	cmovle	%ebx, %eax
	leal	(%eax,%eax,4), %eax
	movzbl	_divtable32+4(%eax), %ebx
	movl	_divtable32(%eax), %edx
	movl	%ebx, %ecx
	andl	$31, %ecx
	testl	%edx, %edx
	jne	L1168
	movl	$-1, %eax
	movl	%ebp, %edx
	sarb	$7, %bl
	sall	%cl, %eax
	sarl	$31, %edx
	movsbl	%bl, %ebx
	notl	%eax
	andl	%edx, %eax
	leal	(%eax,%ebp), %esi
	sarl	%cl, %esi
	xorl	%ebx, %esi
	subl	%ebx, %esi
L1169:
	movl	36(%esp), %eax
	movl	56(%esp), %ebx
	movl	_globalhoriz, %edx
	movl	16(%esp), %ecx
	leal	(%eax,%ebx,2), %ebp
	movl	28(%esp), %eax
	sall	$16, %edx
	addl	%eax, %edx
	movl	%ebp, %eax
/APP
 # 2530 "source/build/src/engine.cpp" 1
	testl %ecx, %ecx; jz 3f; testb $2, %al; jz 0f; movl %edx, %ebx; sarl $16, %ebx; movw %bx, (%eax); addl %esi, %edx; addl $2, %eax; decl %ecx; jz 3f; 0: subl $2, %ecx; jc 2f; 1: movl %edx, %ebx; addl %esi, %edx; sarl $16, %ebx; movl %edx, %edi; andl $0xffff0000, %edi; addl %esi, %edx; addl %edi, %ebx; movl %ebx, (%eax); addl $4, %eax; subl $2, %ecx; jnc 1b; testb $1, %cl; jz 3f; 2: movl %edx, %ebx; sarl $16, %ebx; movw %bx, (%eax); 3:
 # 0 "" 2
/NO_APP
	movzwl	_ydimen, %eax
	movzwl	0(%ebp), %edx
	movl	76(%esp), %edi
	cmpw	%ax, %dx
	cmovle	%edx, %eax
	testw	%dx, %dx
	movl	$0, %edx
	cmovle	%edx, %eax
	movw	%ax, 0(%ebp)
	movl	36(%esp), %eax
	leal	(%eax,%edi,2), %ecx
	movzwl	_ydimen, %eax
	movzwl	(%ecx), %edx
	cmpw	%ax, %dx
	cmovle	%edx, %eax
	testw	%dx, %dx
	movl	$0, %edx
	cmovle	%edx, %eax
	movw	%ax, (%ecx)
	movl	128(%esp), %ebx
	.cfi_restore 3
	movl	136(%esp), %edi
	.cfi_restore 7
	jmp	L1122
	.p2align 4,,10
	.p2align 3
L1123:
	movl	8(%ecx), %edx
	subl	%eax, %edx
	testb	$2, 14(%ecx)
	jne	L1124
L1205:
	movl	%edx, (%esp)
	sarl	$31, %edx
	movl	36(%esp), %eax
	movl	%edx, 4(%esp)
	movl	%ebp, %edx
	call	__ZL9owallmostPsix.lto_priv.0
	movl	%eax, 24(%esp)
L1122:
	movl	24(%esp), %eax
	movl	132(%esp), %esi
	movl	140(%esp), %ebp
	addl	$144, %esp
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1207:
	.cfi_def_cfa_offset 148
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movswl	18(%esi), %eax
/APP
 # 2683 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $15, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 60(%esp)
	movl	4(%esi), %eax
	movl	%eax, 56(%esp)
	jmp	L1128
	.p2align 4,,10
	.p2align 3
L1173:
	movl	$0, 16(%esp)
	movl	84(%esp), %eax
	xorl	%ecx, %ecx
	movl	$0, 20(%esp)
	movl	88(%esp), %edx
	jmp	L1129
	.p2align 4,,10
	.p2align 3
L1137:
	addl	$8, 24(%esp)
	movl	24(%esp), %edi
	andl	$3, %edi
	cmpl	$3, %edi
	je	L1138
	movl	24(%esp), %eax
	notl	%eax
	testb	$12, %al
	je	L1210
	movl	16(%esp), %eax
	movl	%eax, 96(%esp)
	movl	28(%esp), %eax
	movl	%eax, 100(%esp)
	testl	%edi, %edi
	jne	L1211
	movl	28(%esp), %eax
	movl	32(%esp), %edx
	movl	$8, 84(%esp)
	movl	$8, 24(%esp)
	movl	%eax, 68(%esp)
	movl	16(%esp), %eax
	movl	%edx, 72(%esp)
	movl	20(%esp), %edx
	movl	%eax, 88(%esp)
	movl	%edx, 92(%esp)
L1147:
	movl	16(%esp), %edx
	movl	80(%esp), %eax
	movl	60(%esp), %esi
	addl	%edx, %eax
	subl	%esi, %eax
	subl	28(%esp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%edx, %eax
	subl	%esi, %eax
	cltd
	shldl	$30, %eax, %edx
	sall	$30, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	__ZL3yb1.lto_priv.0(,%ebp,4), %edi
	movl	%eax, %ecx
	movl	__ZL3yb2.lto_priv.0(,%ebp,4), %eax
	movl	%ecx, %edx
	subl	%edi, %eax
/APP
 # 2760 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	96(%esp), %ebx
	movl	%eax, %esi
	movl	100(%esp), %eax
	movl	%ecx, %edx
	subl	%ebx, %eax
/APP
 # 2761 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%ebx, %eax
	movl	%ecx, %edx
	movl	_xb1(,%ebp,4), %ebx
	movl	%eax, 16(%esp)
	movl	__ZL3yb2.lto_priv.0(,%ebp,4), %eax
/APP
 # 2762 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	leal	(%edi,%esi), %eax
	movl	%eax, %edi
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	sarl	$31, %edi
	movl	%edi, 12(%esp)
	movl	__ZL3xb2.lto_priv.0(,%ebp,4), %eax
	subl	%ebx, %eax
	imull	%ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	_xb1(,%ebp,4), %edx
	addl	%ebx, %eax
	movl	__ZL3xb2.lto_priv.0(,%ebp,4), %ebx
	movl	%ebx, 28(%esp)
	cmpl	$8, 84(%esp)
	je	L1212
	cmpl	28(%esp), %eax
	jle	L1178
	movl	88(%esp), %edi
	movl	48(%esp), %esi
	movl	%edi, 16(%esp)
	movl	%esi, %edi
	sarl	$31, %edi
L1161:
	movl	16(%esp), %ecx
	movl	%ecx, %ebx
	movl	%ecx, 16(%esp)
	movl	40(%esp), %ecx
	sarl	$31, %ebx
	movl	%ebx, 20(%esp)
	movl	%ecx, %ebx
	movl	%ecx, 40(%esp)
	movl	68(%esp), %ecx
	sarl	$31, %ebx
	movl	%ebx, 44(%esp)
	movl	%ecx, %ebx
	movl	%ecx, 60(%esp)
	sarl	$31, %ebx
	movl	%ebx, 64(%esp)
	cmpl	%edx, %eax
	jl	L1159
	movl	36(%esp), %ebx
	movl	16(%esp), %ecx
	leal	(%ebx,%edx,2), %edx
	leal	2(%ebx,%eax,2), %eax
	movl	20(%esp), %ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1163:
	movl	_ydimen, %ebp
	addl	$2, %edx
	movw	%bp, -2(%edx)
	cmpl	%eax, %edx
	jne	L1163
	movl	%ecx, 16(%esp)
	movl	%ebx, 20(%esp)
	jmp	L1159
	.p2align 4,,10
	.p2align 3
L1210:
	movl	76(%esp), %edi
	movl	56(%esp), %eax
	cmpl	%eax, %edi
	jl	L1204
	movl	36(%esp), %esi
	leal	(%esi,%eax,2), %eax
	leal	2(%esi,%edi,2), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1146:
	movl	_ydimen, %edx
	addl	$2, %eax
	movw	%dx, -2(%eax)
	cmpl	%eax, %ecx
	jne	L1146
L1204:
	movl	128(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	136(%esp), %edi
	.cfi_restore 7
	jmp	L1122
	.p2align 4,,10
	.p2align 3
L1211:
	.cfi_restore_state
	movl	$8, 84(%esp)
L1139:
	movl	16(%esp), %eax
	movl	68(%esp), %ebx
	addl	%eax, %ecx
	subl	%ebx, %eax
	cltd
	subl	%ebx, %ecx
	subl	28(%esp), %ecx
	shldl	$30, %eax, %edx
	movl	%ecx, 8(%esp)
	sall	$30, %eax
	sarl	$31, %ecx
	movl	%eax, (%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	__ZL3yb1.lto_priv.0(,%ebp,4), %esi
	movl	%eax, %ecx
	movl	__ZL3yb2.lto_priv.0(,%ebp,4), %eax
	movl	%ecx, %edx
	subl	%esi, %eax
/APP
 # 2734 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	(%esi,%eax), %ebx
	movl	100(%esp), %eax
	movl	96(%esp), %esi
	movl	%ecx, %edx
	subl	%esi, %eax
/APP
 # 2735 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%esi, %eax
	movl	%ecx, %edx
	movl	_xb1(,%ebp,4), %esi
	movl	%eax, 108(%esp)
	movl	__ZL3yb2.lto_priv.0(,%ebp,4), %eax
/APP
 # 2736 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%ebx, %eax
	movl	%ebx, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	__ZL3xb2.lto_priv.0(,%ebp,4), %eax
	subl	%esi, %eax
	imull	%ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	__ZL3xb2.lto_priv.0(,%ebp,4), %ecx
	movl	_xb1(,%ebp,4), %edx
	addl	%esi, %eax
	cmpl	$2, %edi
	je	L1213
	movl	16(%esp), %esi
	movl	20(%esp), %edi
	movl	%esi, 88(%esp)
	movl	%edi, 92(%esp)
	cmpl	%ecx, %eax
	jle	L1214
L1152:
	cmpl	%edx, %eax
	jl	L1154
	movl	36(%esp), %edi
	subl	%edx, %eax
	movl	$0, 4(%esp)
	leal	2(%eax,%eax), %eax
	leal	(%edi,%edx,2), %edx
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	call	_memset
L1154:
	movl	28(%esp), %eax
	movl	32(%esp), %edx
	movl	%eax, 68(%esp)
	movl	%edx, 72(%esp)
	jmp	L1140
	.p2align 4,,10
	.p2align 3
L1209:
	movl	%ebx, 8(%esp)
	sarl	$31, %ebx
	movl	%ebx, 12(%esp)
	movl	%ecx, %ebx
	sarl	$31, %ebx
	shldl	$28, %ecx, %ebx
	sall	$28, %ecx
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	96(%esp), %edx
	addl	_wall, %edx
	movl	%eax, %ecx
	movl	48(%esp), %eax
	subl	4(%edx), %eax
	sall	$8, %eax
	movl	100(%esp), %ebx
	movl	104(%esp), %esi
	movl	%eax, 60(%esp)
	movl	__ZL3xb2.lto_priv.0(,%ebp,4), %eax
	movl	%eax, 76(%esp)
	movl	40(%esp), %eax
	subl	(%edx), %eax
	sall	$8, %eax
	movl	%eax, 56(%esp)
	movl	_globalposz, %eax
	cltd
	subl	%eax, %ebx
	sbbl	%edx, %esi
	shldl	$7, %ebx, %esi
	sall	$7, %ebx
	movl	%ebx, 68(%esp)
	movl	%esi, 72(%esp)
	jmp	L1133
	.p2align 4,,10
	.p2align 3
L1208:
	movl	%edx, 8(%esp)
	sarl	$31, %edx
	movl	16(%esp), %eax
	movl	%edx, 12(%esp)
	movl	20(%esp), %edx
	shldl	$28, %eax, %edx
	sall	$28, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	_globalposy, %ebx
	movl	_globalposx, %esi
	movl	%eax, 16(%esp)
	sarl	$31, %eax
	movl	%eax, 20(%esp)
	movl	48(%esp), %eax
	movl	%esi, 108(%esp)
	subl	%ebx, %eax
	movl	%ebx, 112(%esp)
	movl	%eax, 84(%esp)
	movl	40(%esp), %eax
	subl	%esi, %eax
	movl	%eax, 88(%esp)
	jmp	L1130
	.p2align 4,,10
	.p2align 3
L1168:
	movl	%edx, %eax
	imull	%ebp
	movl	%ebx, %eax
	sarb	$7, %al
	movsbl	%al, %eax
	xorl	%eax, %ebp
	leal	0(%ebp,%edx), %esi
	subl	%eax, %esi
	andl	$64, %ebx
	movl	%edx, %eax
	cmovne	%esi, %eax
	movl	%eax, %edx
	shrl	$31, %eax
	sarl	%cl, %edx
	movl	%eax, %esi
	addl	%edx, %esi
	jmp	L1169
	.p2align 4,,10
	.p2align 3
L1206:
	.cfi_restore 3
	movl	%edx, (%esp)
	sarl	$31, %edx
	movl	36(%esp), %eax
	movl	%edx, 4(%esp)
	movl	%ebp, %edx
	call	__ZL9owallmostPsix.lto_priv.0
	movl	136(%esp), %edi
	.cfi_restore 7
	movl	%eax, 24(%esp)
	jmp	L1122
	.p2align 4,,10
	.p2align 3
L1138:
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	76(%esp), %eax
	movl	56(%esp), %edi
	cmpl	%edi, %eax
	jl	L1204
	subl	%edi, %eax
	movl	$0, 4(%esp)
	leal	2(%eax,%eax), %edx
	movl	36(%esp), %eax
	movl	%edx, 8(%esp)
	leal	(%eax,%edi,2), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	128(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	136(%esp), %edi
	.cfi_restore 7
	jmp	L1122
	.p2align 4,,10
	.p2align 3
L1167:
	.cfi_restore_state
	leal	(%edx,%edx), %eax
	movl	%esi, %ecx
	orl	$64, %ecx
	cmpl	%ebx, %eax
	setnb	%bl
	cmpl	%edx, %eax
	setb	%al
	orl	%eax, %ebx
	movl	40(%esp), %eax
	movzbl	%bl, %ebx
	leal	1(%ebx,%eax,2), %eax
	jmp	L1166
	.p2align 4,,10
	.p2align 3
L1214:
	movl	108(%esp), %esi
	movl	%ebx, 48(%esp)
	movl	%eax, 56(%esp)
	movl	%esi, %edi
	movl	%esi, 88(%esp)
	sarl	$31, %edi
	movl	%edi, 92(%esp)
	jmp	L1152
	.p2align 4,,10
	.p2align 3
L1178:
	movl	%eax, 56(%esp)
	jmp	L1161
	.p2align 4,,10
	.p2align 3
L1213:
	movl	28(%esp), %esi
	movl	32(%esp), %edi
	movl	%esi, 68(%esp)
	movl	%edi, 72(%esp)
	cmpl	%edx, %eax
	jl	L1149
	movl	108(%esp), %esi
	movl	%ebx, 40(%esp)
	movl	%eax, 76(%esp)
	movl	%esi, %edi
	movl	%esi, 68(%esp)
	sarl	$31, %edi
	movl	%edi, 72(%esp)
L1149:
	addl	$1, %eax
	movl	60(%esp), %ebx
	movl	36(%esp), %edx
	cmpl	%ecx, %eax
	jg	L1151
	.p2align 5
	.p2align 4
	.p2align 3
L1150:
	xorl	%esi, %esi
	movw	%si, (%edx,%eax,2)
	addl	$1, %eax
	cmpl	%eax, __ZL3xb2.lto_priv.0(,%ebp,4)
	jge	L1150
	movl	%ebx, 60(%esp)
L1151:
	movl	16(%esp), %eax
	movl	20(%esp), %edx
	movl	%eax, 88(%esp)
	movl	%edx, 92(%esp)
	jmp	L1140
	.p2align 4,,10
	.p2align 3
L1212:
	cmpl	%edx, %eax
	jge	L1177
	movl	68(%esp), %edi
	movl	40(%esp), %esi
	movl	%edi, 16(%esp)
	movl	%esi, %edi
	sarl	$31, %edi
L1157:
	movl	16(%esp), %ecx
	movl	%ebp, %edx
	addl	$1, %eax
	movl	36(%esp), %ebp
	movl	%ecx, %ebx
	movl	%ecx, 60(%esp)
	movl	48(%esp), %ecx
	sarl	$31, %ebx
	movl	%ebx, 64(%esp)
	movl	%ecx, %ebx
	movl	%ecx, 48(%esp)
	movl	88(%esp), %ecx
	sarl	$31, %ebx
	movl	%ebx, 52(%esp)
	movl	%ecx, %ebx
	movl	%ecx, 16(%esp)
	sarl	$31, %ebx
	movl	%ebx, 20(%esp)
	cmpl	28(%esp), %eax
	jg	L1160
	.p2align 5
	.p2align 4
	.p2align 3
L1158:
	movzwl	_ydimen, %ebx
	movw	%bx, 0(%ebp,%eax,2)
	addl	$1, %eax
	cmpl	%eax, __ZL3xb2.lto_priv.0(,%edx,4)
	jge	L1158
L1160:
	movl	%esi, 40(%esp)
	movl	48(%esp), %esi
	movl	%edi, 44(%esp)
	movl	52(%esp), %edi
	jmp	L1159
	.p2align 4,,10
	.p2align 3
L1177:
	movl	%eax, 76(%esp)
	jmp	L1157
	.cfi_endproc
LFE40:
	.p2align 4
	.globl	__ZL17calc_globalshiftsv.lto_priv.0
	.def	__ZL17calc_globalshiftsv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL17calc_globalshiftsv.lto_priv.0:
LFB42:
	.cfi_startproc
	movswl	_globalpicnum, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$8, %edx
	movl	%edx, %ebx
	movzbl	_picsiz(%eax), %eax
	movl	%eax, %ecx
	shrb	$4, %al
	andl	$15, %ecx
	subl	%eax, %edx
	subl	%ecx, %ebx
	movb	%dl, __ZL12globalyshift.lto_priv.0
	movb	%bl, __ZL12globalxshift.lto_priv.0
	testb	$8, _globalorientation
	je	L1215
	movl	$9, %edx
	movl	%edx, %ebx
	subl	%eax, %edx
	subl	%ecx, %ebx
	movb	%dl, __ZL12globalyshift.lto_priv.0
	movb	%bl, __ZL12globalxshift.lto_priv.0
L1215:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE42:
	.p2align 4
	.def	__ZL17setup_globals_cf1PK13usectortypev7iiiiiiii;	.scl	3;	.type	32;	.endef
__ZL17setup_globals_cf1PK13usectortypev7iiiiiiii:
LFB43:
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
	subl	$64, %esp
	.cfi_def_cfa_offset 84
	movl	%eax, 12(%esp)
	movl	84(%esp), %ebp
	movl	_palookup(,%edx,4), %eax
	cmpl	_globalpalwritten, %eax
	je	L1222
	testl	%eax, %eax
	je	L1275
L1223:
	movl	%eax, (%esp)
	movl	%eax, _globalpalwritten
	call	_setpalookupaddress
L1222:
	xorl	%eax, %eax
	movl	%ebx, %edi
	movl	%ebx, __ZL8globalzd.lto_priv.0
	sarl	$31, %edi
	cmpl	%ebx, %eax
	sbbl	%edi, %eax
	movl	%edi, __ZL8globalzd.lto_priv.0+4
	jl	L1228
	cmpl	$30719, %ebp
	ja	L1250
	movl	%ebp, %ebx
	movl	%ebp, %eax
L1226:
	cmpb	$63, _picanm+3(%ebp,%ebp,4)
	jbe	L1227
	movl	%ebp, %eax
	call	_animateoffs
	addl	%ebx, %eax
	movswl	%ax, %ebp
L1227:
	movw	%ax, _globalpicnum
	movl	%ebp, %eax
/APP
 # 2815 "source/build/src/engine.cpp" 1
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
	cmpw	$0, _tilesiz(,%ebx,4)
	jle	L1228
	cmpw	$0, _tilesiz+2(,%ebx,4)
	jle	L1228
	movl	%ebx, %eax
	call	__Z12tileLoadHighi
	movl	%eax, __ZL8globalht.lto_priv.0
	testl	%eax, %eax
	je	L1229
	movl	(%eax), %edi
	movswl	6(%eax), %esi
	movswl	4(%eax), %eax
	movl	%edi, 28(%esp)
	movl	%esi, 32(%esp)
	movl	%eax, 36(%esp)
L1230:
	movl	28(%esp), %eax
	movl	12(%esp), %edi
	movl	%eax, __ZL12globalbufplc.lto_priv.0
	movzbl	32(%edi), %edx
	movl	88(%esp), %eax
	movl	%eax, _globalshade
	movl	_globalcisibility, %eax
	testb	%dl, %dl
	je	L1231
	addl	$16, %edx
	movzbl	%dl, %edx
/APP
 # 2821 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
L1231:
	movl	%eax, _globvis
	movl	92(%esp), %eax
	movl	_globalposy, %edi
	movl	_singlobalang, %esi
	movl	%eax, _globalorientation
	movl	_globalposx, %eax
	movl	%edi, 48(%esp)
	movl	_cosglobalang, %ebp
	movl	%eax, 44(%esp)
	movl	%esi, 16(%esp)
	testb	$64, 92(%esp)
	jne	L1232
	sall	$14, %eax
	movl	%esi, 20(%esp)
	movl	%ebp, %ebx
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	sall	$14, %eax
	negl	%eax
	movl	%eax, 24(%esp)
L1233:
	movl	16(%esp), %eax
	movl	__ZL17viewingrangerecip.lto_priv.0, %edx
/APP
 # 2845 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	__ZL17viewingrangerecip.lto_priv.0, %edx
	movl	%eax, 16(%esp)
	movl	%eax, %esi
	movl	%ebx, %eax
/APP
 # 2846 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 40(%esp)
	call	__ZL17calc_globalshiftsv.lto_priv.0
	testb	$4, 92(%esp)
	movl	40(%esp), %eax
	je	L1242
	negl	%eax
	movl	12(%esp), %edx
	movl	%eax, 16(%esp)
	movl	%esi, %eax
	movl	24(%esp), %esi
	movl	%edx, 24(%esp)
	movl	20(%esp), %edx
	negl	%eax
	movl	%esi, 12(%esp)
	movl	%ebp, 20(%esp)
	movl	%edx, %ebp
L1242:
	testb	$16, 92(%esp)
	je	L1243
	negl	20(%esp)
	negl	%eax
	negl	12(%esp)
L1243:
	testb	$32, 92(%esp)
	je	L1244
	negl	16(%esp)
	negl	%ebp
	negl	24(%esp)
L1244:
	movsbl	__ZL12globalxshift.lto_priv.0, %esi
	movl	%esi, %ecx
	testb	%cl, %cl
	js	L1245
	sall	%cl, %eax
	movl	20(%esp), %ebx
	movl	%eax, 20(%esp)
	sall	%cl, %ebx
L1246:
	movsbl	__ZL12globalyshift.lto_priv.0, %eax
	movl	%ebx, _globalx1
	movl	%eax, %ecx
	testb	%al, %al
	js	L1247
	movl	16(%esp), %edi
	movl	%ebp, %edx
	sall	%cl, %edx
	sall	%cl, %edi
L1248:
	movl	96(%esp), %ebp
	leal	6(%esi), %ecx
	movl	12(%esp), %esi
	negl	%ebx
	movl	%edx, _globaly2
	subl	20(%esp), %ebx
	sall	%cl, %esi
	sall	$24, %ebp
	leal	(%esi,%ebp), %ecx
	movl	100(%esp), %ebp
	movl	28(%esp), %esi
	movl	%ecx, __ZL14globalxpanning.lto_priv.0
	leal	6(%eax), %ecx
	movl	24(%esp), %eax
	sall	$24, %ebp
	sall	%cl, %eax
	leal	(%eax,%ebp), %ecx
	movl	%edi, %eax
	movl	%ecx, __ZL14globalypanning.lto_priv.0
	movl	_halfxdimen, %ecx
	subl	%edx, %eax
	imull	%ecx, %eax
	imull	%ecx, %ebx
	movl	%eax, __ZL8globalx2.lto_priv.0
	movswl	_globalpicnum, %eax
	movl	%ebx, __ZL8globaly1.lto_priv.0
	movzbl	_picsiz(%eax), %eax
	movl	%esi, 8(%esp)
	movl	%eax, %edx
	andl	$15, %eax
	addl	36(%esp), %eax
	shrb	$4, %dl
	movl	%eax, (%esp)
	movzbl	%dl, %edx
	addl	32(%esp), %edx
	movl	%edx, 4(%esp)
	call	_sethlinesizes
	movl	104(%esp), %eax
	movl	_globaly2, %ebp
	movl	__ZL8globalzd.lto_priv.0, %ecx
	leal	-1(%eax), %ebx
	movl	_globalx1, %eax
	imull	%ebx, %ebp
	movl	%ecx, %edx
	addl	__ZL8globalx2.lto_priv.0, %ebp
	imull	%eax, %ebx
	addl	__ZL8globaly1.lto_priv.0, %ebx
/APP
 # 2884 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _globalx1
	movl	%ecx, %edx
	movl	%ebp, %eax
/APP
 # 2885 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, __ZL8globalx2.lto_priv.0
	movl	%ecx, %edx
	movl	%ebx, %eax
/APP
 # 2886 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, __ZL8globaly1.lto_priv.0
	movl	%ecx, %edx
	movl	_globaly2, %eax
/APP
 # 2887 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _globaly2
	movl	%ecx, %edx
	movl	_globvis, %eax
/APP
 # 2888 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $10, %edx, %eax
 # 0 "" 2
 # 2888 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, _globvis
	addl	$64, %esp
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
L1228:
	.cfi_restore_state
	addl	$64, %esp
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
L1250:
	.cfi_restore_state
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	jmp	L1226
	.p2align 4,,10
	.p2align 3
L1275:
	movl	_globalpal, %eax
	movl	_palookup(,%eax,4), %eax
	jmp	L1223
	.p2align 4,,10
	.p2align 3
L1229:
	movl	_waloff(,%ebx,4), %eax
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	%eax, 28(%esp)
	testl	%eax, %eax
	jne	L1230
	movl	%ebx, %eax
	call	_tileLoad
	movl	_waloff(,%ebx,4), %eax
	movl	%eax, 28(%esp)
	jmp	L1230
	.p2align 4,,10
	.p2align 3
L1232:
	movl	12(%esp), %eax
	movl	_wall, %edi
	movswl	(%eax), %eax
	movl	%edi, 52(%esp)
	sall	$5, %eax
	addl	%edi, %eax
	movswl	8(%eax), %edx
	sall	$5, %edx
	addl	%edi, %edx
	movl	(%edx), %esi
	movl	4(%edx), %edi
	subl	(%eax), %esi
	subl	4(%eax), %edi
	movl	%edi, %edx
	movl	%esi, %eax
	movl	%esi, 20(%esp)
	imull	%esi, %eax
	movl	%edi, 40(%esp)
	imull	%edi, %edx
	addl	%edx, %eax
/APP
 # 2835 "source/build/src/engine.cpp" 1
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
	movl	$1024, %ebx
	movl	%eax, 24(%esp)
	testl	%eax, %eax
	jne	L1276
L1234:
	movl	20(%esp), %eax
	movl	%ebx, %edx
/APP
 # 2836 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 24(%esp)
	movl	%ebx, %edx
	movl	40(%esp), %eax
/APP
 # 2836 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%eax, 40(%esp)
	movl	16(%esp), %edx
	movl	%ebp, %edi
	movl	24(%esp), %eax
	negl	%esi
/APP
 # 2837 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 20(%esp)
	movl	%eax, %ecx
	movl	40(%esp), %esi
	movl	%ebp, %edx
	movl	%eax, _globalx1
	movl	16(%esp), %edi
	movl	24(%esp), %eax
/APP
 # 2838 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	52(%esp), %edx
	movl	40(%esp), %esi
	movl	%eax, __ZL8globaly1.lto_priv.0
	movl	%ecx, %eax
	movl	%ebx, %ebp
	movl	24(%esp), %ecx
	movl	48(%esp), %edi
	negl	%eax
	negl	%ebp
	movl	%eax, __ZL8globalx2.lto_priv.0
	movl	%eax, 16(%esp)
	movl	12(%esp), %eax
	movl	%ebp, _globaly2
	movswl	(%eax), %eax
	sall	$5, %eax
	addl	%eax, %edx
	movl	44(%esp), %eax
	subl	4(%edx), %edi
	subl	(%edx), %eax
	movl	%edi, %edx
	imull	%eax, %ecx
	movl	%esi, %edi
	imull	%edx, %edi
	imull	%esi, %eax
	addl	%ecx, %edi
	movl	24(%esp), %ecx
	movl	%edi, 12(%esp)
	imull	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, 24(%esp)
	jmp	L1233
	.p2align 4,,10
	.p2align 3
L1247:
	movl	16(%esp), %edi
	negl	%ecx
	movl	%ebp, %edx
	sarl	%cl, %edx
	sarl	%cl, %edi
	jmp	L1248
	.p2align 4,,10
	.p2align 3
L1245:
	movl	20(%esp), %ebx
	negl	%ecx
	sarl	%cl, %eax
	movl	%eax, 20(%esp)
	sarl	%cl, %ebx
	jmp	L1246
	.p2align 4,,10
	.p2align 3
L1276:
	movl	%eax, %esi
	cmpl	%eax, _lastd_s32
	je	L1235
	cmpl	$16383, %eax
	jbe	L1235
	movl	%eax, %ebx
	movl	%eax, _lastd_s32
	movl	$31, %edi
	negl	%ebx
	cmovs	%eax, %ebx
	bsrl	%ebx, %eax
	leal	-1(%ebx), %edx
	xorl	$31, %eax
	subl	%eax, %edi
	movl	%edi, 56(%esp)
	testl	%ebx, %edx
	jne	L1236
	movl	%esi, %eax
	xorl	%ecx, %ecx
	sarl	$24, %eax
	andl	$-128, %eax
	orl	%edi, %eax
L1237:
	movl	%ecx, _divtable32
	movb	%al, _divtable32+4
L1235:
	movl	24(%esp), %edi
	xorl	%eax, %eax
	cmpl	$16383, %edi
	cmovbe	%edi, %eax
	movzbl	_divtable32+4(%eax,%eax,4), %ecx
	movl	_divtable32(%eax,%eax,4), %edx
	movl	%ecx, %eax
	andl	$31, %eax
	movb	%al, 24(%esp)
	testl	%edx, %edx
	jne	L1240
	sarb	$7, %cl
	movl	$1048576, %ebx
	movsbl	%cl, %eax
	movzbl	24(%esp), %ecx
	sarl	%cl, %ebx
	xorl	%eax, %ebx
	subl	%eax, %ebx
	jmp	L1234
	.p2align 4,,10
	.p2align 3
L1240:
	movl	%ecx, %ebx
	movl	$1048576, %eax
	sarb	$7, %bl
	imull	%edx
	movsbl	%bl, %ebx
	movl	%ebx, %eax
	xorl	$1048576, %eax
	addl	%edx, %eax
	subl	%ebx, %eax
	andl	$64, %ecx
	movzbl	24(%esp), %ecx
	cmove	%edx, %eax
	movl	%eax, %ebx
	shrl	$31, %eax
	sarl	%cl, %ebx
	addl	%eax, %ebx
	jmp	L1234
	.p2align 4,,10
	.p2align 3
L1236:
	movl	$30, %ecx
	movl	$1, %edx
	movl	$1, %esi
	subl	%eax, %ecx
	xorl	%eax, %eax
	sall	%cl, %edx
	movzbl	56(%esp), %ecx
/APP
 # 477 "source/build/include/libdivide.h" 1
	divl %ebx
 # 0 "" 2
/NO_APP
	movl	%eax, 60(%esp)
	movl	%ebx, %eax
	sall	%cl, %esi
	subl	%edx, %eax
	cmpl	%esi, %eax
	jnb	L1238
	movzbl	56(%esp), %eax
	subl	$1, %eax
L1239:
	movl	60(%esp), %edi
	movl	24(%esp), %ebx
	movl	%eax, %edx
	orl	$-128, %edx
	leal	1(%edi), %ecx
	testl	%ebx, %ebx
	notl	%edi
	cmovs	%edx, %eax
	cmovs	%edi, %ecx
	jmp	L1237
L1238:
	leal	(%edx,%edx), %eax
	movl	60(%esp), %edi
	cmpl	%ebx, %eax
	setnb	%cl
	cmpl	%edx, %eax
	setb	%al
	orl	%ecx, %eax
	movzbl	%al, %eax
	leal	(%eax,%edi,2), %eax
	movl	%eax, 60(%esp)
	movzbl	56(%esp), %eax
	orl	$64, %eax
	jmp	L1239
	.cfi_endproc
LFE43:
	.p2align 4
	.globl	__ZL17transmaskwallscaniii.lto_priv.0
	.def	__ZL17transmaskwallscaniii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL17transmaskwallscaniii.lto_priv.0:
LFB44:
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
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$88, %esp
	.cfi_def_cfa_offset 108
	movswl	_globalpicnum, %eax
/APP
 # 3358 "source/build/src/engine.cpp" 1
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
	movswl	_globalpicnum, %ebp
	cmpw	$0, _tilesiz(,%ebp,4)
	jle	L1277
	cmpw	$0, _tilesiz+2(,%ebp,4)
	jle	L1277
	movl	%ebp, %eax
	movl	%edi, 32(%esp)
	movl	%ecx, %ebx
	call	__Z12tileLoadHighi
	movl	%eax, __ZL8globalht.lto_priv.0
	testl	%eax, %eax
	je	L1332
L1279:
	movswl	__ZL14globalshiftval.lto_priv.0, %eax
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_setuptvlineasm
	movl	32(%esp), %ebx
	cmpl	%ebx, %esi
	jg	L1280
	movl	_windowxy1, %eax
	movl	_startumost, %edx
	movzwl	__ZL14globalshiftval.lto_priv.0, %ecx
	addl	%eax, %eax
	addl	%eax, %edx
	addl	_startdmost, %eax
	jmp	L1281
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1283:
	addl	$1, %esi
	cmpl	%esi, %ebx
	jl	L1282
L1281:
	movzwl	(%eax,%esi,2), %edi
	cmpw	%di, (%edx,%esi,2)
	jg	L1283
	testw	%cx, %cx
	jne	L1284
	movl	32(%esp), %ebx
	cmpl	%esi, %ebx
	jl	L1280
	.p2align 4
	.p2align 3
L1285:
	movl	%esi, %eax
	addl	$1, %esi
	call	__ZL14transmaskvlinei
	cmpl	%esi, %ebx
	jge	L1285
L1280:
	addl	$88, %esp
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
	jmp	__Z16timerUpdateClockv
	.p2align 4,,10
	.p2align 3
L1277:
	.cfi_restore_state
	addl	$88, %esp
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
L1282:
	.cfi_restore_state
	testw	%cx, %cx
	je	L1280
L1284:
	cmpl	%esi, 32(%esp)
	jl	L1280
	testl	$1, %esi
	jne	L1333
	movl	%esi, %edi
	cmpl	%esi, 32(%esp)
	jle	L1334
L1317:
	leal	1(%edi), %eax
	movl	%edi, 84(%esp)
	movl	%edi, %ebp
	movl	%eax, 24(%esp)
	jmp	L1315
	.p2align 4,,10
	.p2align 3
L1291:
	movl	_globalpal, %eax
	movl	__ZL5swall.lto_priv.0, %edi
	movl	_globvis, %edx
	movl	_palookup(,%eax,4), %esi
	leal	0(,%ebp,4), %eax
	movl	%eax, 56(%esp)
	movl	(%edi,%ebp,4), %eax
/APP
 # 3299 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movswl	_numshades, %ebx
	movl	$0, %edx
	sarl	$8, %eax
	subl	$1, %ebx
	addl	_globalshade, %eax
	cmovs	%edx, %eax
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	sall	$8, %eax
	leal	(%eax,%esi), %ecx
	movl	24(%esp), %eax
	movl	%ecx, _palookupoffse
	leal	0(,%eax,4), %edx
	movl	(%edi,%eax,4), %eax
	movl	%edx, 52(%esp)
	movl	_globvis, %edx
/APP
 # 3300 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$0, %edx
	sarl	$8, %eax
	addl	_globalshade, %eax
	movl	%ecx, 4(%esp)
	cmovs	%edx, %eax
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	sall	$8, %eax
	addl	%esi, %eax
	movl	%eax, _palookupoffse+4
	movl	%eax, 8(%esp)
	movswl	__ZL14globalshiftval.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_setuptvlineasm2
	movswl	_globalpicnum, %eax
	movl	__ZL8globalht.lto_priv.0, %esi
	movl	%eax, 76(%esp)
	movswl	_tilesiz(,%eax,4), %ebx
	movswl	_tilesiz+2(,%eax,4), %eax
	testl	%esi, %esi
	je	L1292
	movswl	4(%esi), %ecx
	sall	%cl, %ebx
	movswl	6(%esi), %ecx
	sall	%cl, %eax
L1292:
	negl	%eax
	movl	__ZL5lwall.lto_priv.0, %edi
	movl	56(%esp), %edx
	negl	%ebx
	movl	%eax, %ecx
	movl	__ZL14globalxpanning.lto_priv.0, %eax
	movl	%edi, 64(%esp)
	movl	%eax, 72(%esp)
	addl	(%edi,%edx), %eax
	movzwl	%bx, %edx
	andl	%eax, %edx
	testw	%bx, %bx
	jns	L1294
	movswl	%bx, %edx
	movl	%edx, %edi
	xorl	%edx, %edx
	negl	%edi
	divl	%edi
L1294:
	movswl	%cx, %eax
	movl	%edx, %edi
	negl	%eax
	sall	%cl, %edi
	imull	%edx, %eax
	testw	%cx, %cx
	cmovs	%eax, %edi
	testl	%esi, %esi
	je	L1297
	movl	(%esi), %eax
L1298:
	addl	%edi, %eax
	movl	52(%esp), %edx
	movl	72(%esp), %edi
	movl	%eax, _bufplce
	movl	%eax, 80(%esp)
	movl	64(%esp), %eax
	addl	(%eax,%edx), %edi
	movzwl	%bx, %edx
	andl	%edi, %edx
	testw	%bx, %bx
	jns	L1300
	movswl	%bx, %ebx
	movl	%edi, %eax
	xorl	%edx, %edx
	negl	%ebx
	divl	%ebx
L1300:
	movswl	%cx, %eax
	movl	%edx, %ebx
	negl	%eax
	sall	%cl, %ebx
	imull	%edx, %eax
	testw	%cx, %cx
	cmovs	%eax, %ebx
	testl	%esi, %esi
	je	L1303
	movl	(%esi), %eax
L1304:
	movl	__ZL8globalzd.lto_priv.0, %edx
	addl	%ebx, %eax
	movl	28(%esp), %ebx
	movl	%eax, 72(%esp)
	movl	__ZL8globalzd.lto_priv.0+4, %ecx
	movl	%eax, _bufplce+4
	movl	_globalhoriz, %eax
	movl	%edx, 64(%esp)
	movl	40(%esp), %edx
	subl	%eax, %ebx
	movl	%ecx, 68(%esp)
	subl	%eax, %edx
	movl	__ZL14drawing_sprite.lto_priv.0, %eax
	addl	$1, %ebx
	leal	1(%edx), %edi
	testl	%eax, %eax
	jne	L1335
	movl	__ZL5swall.lto_priv.0, %eax
	movl	56(%esp), %edx
	movl	__ZL12globalyscale.lto_priv.0, %ecx
	movl	(%eax,%edx), %esi
	movl	64(%esp), %edx
	imull	%ecx, %esi
	imull	%esi, %ebx
	movl	%esi, _vince
	movl	52(%esp), %esi
	addl	%edx, %ebx
	movl	%ebx, _vplce
	imull	(%eax,%esi), %ecx
	movl	%edi, %eax
	imull	%ecx, %eax
	addl	%edx, %eax
	movl	%eax, 52(%esp)
L1306:
	movl	28(%esp), %edi
	movl	40(%esp), %edx
	movl	%ecx, _vince+4
	movl	52(%esp), %eax
	movl	60(%esp), %ebx
	cmpl	%edx, %edi
	movl	%edx, %esi
	cmovge	%edi, %esi
	movl	%eax, _vplce+4
	movl	%edi, %eax
	movl	44(%esp), %edi
	cmpl	%edi, 36(%esp)
	movl	_frameoffset, %edi
	cmovle	48(%esp), %ebx
	addl	%ebp, %edi
	movl	%edi, 56(%esp)
	cmpl	%edx, %eax
	je	L1336
	movl	_ylookup, %edx
	jge	L1310
	movl	28(%esp), %ecx
	movl	56(%esp), %eax
	addl	(%edx,%ecx,4), %eax
	movl	%eax, 20(%esp)
	movl	80(%esp), %eax
	movl	%eax, 16(%esp)
	movl	_vplce, %eax
	movl	%eax, 12(%esp)
	movl	%esi, %eax
	subl	%ecx, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse, %eax
	movl	%eax, 4(%esp)
	movl	_vince, %eax
	movl	%eax, (%esp)
	call	_tvlineasm1
	movl	%eax, _vplce
	movl	%eax, %edx
	movl	_vplce+4, %eax
L1309:
	cmpl	%ebx, %esi
	jl	L1337
L1311:
	movl	%edx, _asm1
	movl	44(%esp), %esi
	movl	%eax, _asm2
	cmpl	%esi, 36(%esp)
	jg	L1338
L1313:
	jl	L1339
L1314:
	call	__Z16timerUpdateClockv
L1288:
	addl	$2, 24(%esp)
	addl	$2, %ebp
	cmpl	%ebp, 32(%esp)
	jle	L1340
L1315:
	movl	_xdimen, %eax
	cmpl	%eax, %ebp
	jnb	L1288
	subl	$1, %eax
	cmpl	%eax, %ebp
	je	L1331
	movl	_windowxy1, %eax
	movl	_startumost, %ebx
	movl	__ZL5uwall.lto_priv.0, %edi
	movl	_windowxy1+4, %esi
	leal	0(%ebp,%eax), %edx
	movl	%ebx, 40(%esp)
	movswl	(%ebx,%edx,2), %ecx
	movswl	(%edi,%ebp,2), %ebx
	subl	%esi, %ecx
	cmpl	%ebx, %ecx
	cmovge	%ecx, %ebx
	movl	_startdmost, %ecx
	movl	%ebx, 28(%esp)
	movl	__ZL5dwall.lto_priv.0, %ebx
	movswl	(%ecx,%edx,2), %edx
	movl	%ecx, 44(%esp)
	movswl	(%ebx,%ebp,2), %ecx
	subl	%esi, %edx
	cmpl	%ecx, %edx
	cmovg	%ecx, %edx
	movl	%edx, 36(%esp)
	subl	$1, %edx
	movl	%edx, 48(%esp)
	cmpl	%edx, 28(%esp)
	jg	L1341
	movl	24(%esp), %ecx
	movl	40(%esp), %edx
	addl	%ecx, %eax
	movswl	(%edi,%ecx,2), %ecx
	movswl	(%edx,%eax,2), %edx
	movl	%ecx, %edi
	subl	%esi, %edx
	cmpl	%ecx, %edx
	movl	24(%esp), %ecx
	cmovge	%edx, %edi
	movl	44(%esp), %edx
	movswl	(%edx,%eax,2), %eax
	movswl	(%ebx,%ecx,2), %edx
	movl	%edi, 40(%esp)
	subl	%esi, %eax
	cmpl	%edx, %eax
	cmovle	%eax, %edx
	leal	-1(%edx), %eax
	movl	%edx, 44(%esp)
	movl	%eax, 60(%esp)
	cmpl	%eax, %edi
	jle	L1291
L1331:
	movl	%ebp, %eax
	addl	$2, %ebp
	call	__ZL14transmaskvlinei
	addl	$2, 24(%esp)
	cmpl	%ebp, 32(%esp)
	jg	L1315
L1340:
	movl	32(%esp), %eax
	movl	84(%esp), %ebx
	subl	$1, %eax
	subl	%ebx, %eax
	andl	$-2, %eax
	leal	2(%ebx,%eax), %edi
L1287:
	movl	32(%esp), %ebx
	cmpl	%edi, %ebx
	jl	L1280
	.p2align 4
	.p2align 3
L1316:
	movl	%edi, %eax
	addl	$1, %edi
	call	__ZL14transmaskvlinei
	cmpl	%edi, %ebx
	jge	L1316
	addl	$88, %esp
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
	jmp	__Z16timerUpdateClockv
	.p2align 4,,10
	.p2align 3
L1341:
	.cfi_restore_state
	movl	24(%esp), %eax
	call	__ZL14transmaskvlinei
	jmp	L1288
	.p2align 4,,10
	.p2align 3
L1336:
	movl	_vplce, %edx
	movl	52(%esp), %eax
	cmpl	%ebx, %esi
	jge	L1311
L1337:
	movl	_vince+4, %ecx
	movl	%ecx, _asm1
	movl	_ylookup, %ecx
	movl	(%ecx,%ebx,4), %edi
	movl	56(%esp), %ecx
	leal	1(%ecx,%edi), %edi
	movl	%edi, _asm2
	movl	%ecx, %edi
	movl	_ylookup, %ecx
	addl	(%ecx,%esi,4), %edi
	movl	%edx, 16(%esp)
	movl	_bufplce+4, %edx
	movl	%edi, 20(%esp)
	movl	%eax, (%esp)
	movl	%edx, 12(%esp)
	movl	_bufplce, %edx
	movl	%edx, 8(%esp)
	movl	_vince, %edx
	movl	%edx, 4(%esp)
	call	_tvlineasm2
	movl	44(%esp), %esi
	cmpl	%esi, 36(%esp)
	jle	L1313
L1338:
	movl	_ylookup, %eax
	movl	56(%esp), %edi
	addl	4(%eax,%ebx,4), %edi
	movl	_bufplce, %eax
	movl	%edi, 20(%esp)
	movl	%eax, 16(%esp)
	movl	_asm1, %eax
	movl	%eax, 12(%esp)
	movl	48(%esp), %eax
	subl	%ebx, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse, %eax
	movl	%eax, 4(%esp)
	movl	_vince, %eax
	movl	%eax, (%esp)
	call	_tvlineasm1
	jmp	L1314
	.p2align 4,,10
	.p2align 3
L1310:
	movl	40(%esp), %edi
	movl	56(%esp), %eax
	movl	(%edx,%edi,4), %edx
	movl	%ecx, (%esp)
	leal	1(%eax,%edx), %edx
	movl	52(%esp), %eax
	movl	%edx, 20(%esp)
	movl	72(%esp), %edx
	movl	%eax, 12(%esp)
	movl	%esi, %eax
	subl	%edi, %eax
	movl	%edx, 16(%esp)
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+4, %eax
	movl	%eax, 4(%esp)
	call	_tvlineasm1
	movl	_vplce, %edx
	movl	%eax, _vplce+4
	jmp	L1309
	.p2align 4,,10
	.p2align 3
L1335:
	movl	__ZL6swallf.lto_priv.0, %esi
	movl	56(%esp), %eax
	movss	(%esi,%eax), %xmm0
	movl	%esi, 56(%esp)
	movss	%xmm0, (%esp)
	call	_llrintf
	movl	%eax, %ecx
	movl	%eax, _vince
	movl	%edx, %esi
	movl	%ebx, %eax
	cltd
	movl	%esi, %eax
	imull	%ecx, %edx
	imull	%ebx, %eax
	addl	%edx, %eax
	movl	%eax, %esi
	movl	%ebx, %eax
	mull	%ecx
	addl	%esi, %edx
	addl	64(%esp), %eax
	adcl	68(%esp), %edx
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movl	%edx, %esi
	cmpl	%ebx, %eax
	sbbl	%ecx, %esi
	movl	56(%esp), %esi
	cmovl	%ebx, %eax
	cmovl	%ecx, %edx
	movl	$-1, %ecx
	cmpl	%eax, %ecx
	sbbl	%edx, %ebx
	cmovl	%ecx, %eax
	movl	%eax, _vplce
	movl	52(%esp), %eax
	movss	(%esi,%eax), %xmm0
	movss	%xmm0, (%esp)
	call	_llrintf
	movl	%eax, %ecx
	movl	%edi, %eax
	movl	%edx, %esi
	cltd
	imull	%edi, %esi
	movl	%edx, %ebx
	mull	%ecx
	imull	%ecx, %ebx
	addl	%esi, %ebx
	addl	%ebx, %edx
	addl	64(%esp), %eax
	adcl	68(%esp), %edx
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	movl	%edx, %edi
	cmpl	%esi, %eax
	sbbl	%ebx, %edi
	cmovl	%esi, %eax
	cmovl	%ebx, %edx
	movl	$-1, %ebx
	cmpl	%eax, %ebx
	sbbl	%edx, %esi
	cmovl	%ebx, %eax
	movl	%eax, 52(%esp)
	jmp	L1306
	.p2align 4,,10
	.p2align 3
L1303:
	movl	76(%esp), %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L1304
	.p2align 4,,10
	.p2align 3
L1297:
	movl	76(%esp), %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L1298
	.p2align 4,,10
	.p2align 3
L1332:
	movl	_waloff(,%ebp,4), %edx
	testl	%edx, %edx
	jne	L1279
	movl	%ebp, %eax
	call	_tileLoad
	jmp	L1279
L1333:
	movl	%esi, %eax
	leal	1(%esi), %edi
	call	__ZL14transmaskvlinei
	cmpl	%edi, 32(%esp)
	jg	L1317
	jmp	L1287
	.p2align 4,,10
	.p2align 3
L1339:
	movl	_ylookup, %eax
	movl	56(%esp), %esi
	movl	4(%eax,%ebx,4), %eax
	leal	1(%esi,%eax), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+4, %eax
	movl	%eax, 16(%esp)
	movl	_asm2, %eax
	movl	%eax, 12(%esp)
	movl	60(%esp), %eax
	subl	%ebx, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+4, %eax
	movl	%eax, 4(%esp)
	movl	_vince+4, %eax
	movl	%eax, (%esp)
	call	_tvlineasm1
	jmp	L1314
L1334:
	movl	32(%esp), %ebx
	jmp	L1316
	.cfi_endproc
LFE44:
	.p2align 4
	.globl	__ZL14nonpow2_mhlineijijPc.lto_priv.0
	.def	__ZL14nonpow2_mhlineijijPc.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL14nonpow2_mhlineijijPc.lto_priv.0:
LFB46:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, (%esp)
	movl	%ecx, %eax
	sarl	$16, %eax
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -20
	movl	48(%esp), %ebx
	movl	%edi, 32(%esp)
	.cfi_offset 7, -12
	movl	44(%esp), %edi
	testl	%eax, %eax
	jle	L1342
	movl	_asm3, %ecx
	addl	%ebx, %eax
	movl	%ebp, 36(%esp)
	movl	%eax, 16(%esp)
	.cfi_offset 5, -8
	movl	__ZL11globalyspan.lto_priv.0, %ebp
	movl	%ecx, 20(%esp)
	movl	__ZL11globalxspan.lto_priv.0, %ecx
	movl	%esi, 28(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	%ecx, 4(%esp)
	movl	_asm1, %ecx
	movl	%ecx, 8(%esp)
	movl	_asm2, %ecx
	movl	%ecx, 12(%esp)
	.p2align 4
	.p2align 3
L1345:
	movl	%esi, %eax
	movl	4(%esp), %edx
	shrl	%eax
/APP
 # 3420 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $31, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%edi, %eax
	movl	%ebp, %edx
	shrl	%eax
/APP
 # 3420 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $31, %edx, %eax
 # 0 "" 2
/NO_APP
	imull	%ebp, %ecx
	addl	(%esp), %eax
	movzbl	(%eax,%ecx), %eax
	cmpb	$-1, %al
	je	L1344
	movl	20(%esp), %ecx
	movzbl	(%ecx,%eax), %eax
	movb	%al, (%ebx)
L1344:
	addl	8(%esp), %esi
	addl	12(%esp), %edi
	addl	$1, %ebx
	cmpl	%ebx, 16(%esp)
	jne	L1345
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	36(%esp), %ebp
	.cfi_restore 5
L1342:
	movl	24(%esp), %ebx
	movl	32(%esp), %edi
	addl	$40, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE46:
	.p2align 4
	.globl	__ZL14nonpow2_thlineijijPc.lto_priv.0
	.def	__ZL14nonpow2_thlineijijPc.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL14nonpow2_thlineijijPc.lto_priv.0:
LFB47:
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
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	_asm3, %ebx
	movl	_globalblend, %edx
	movl	48(%esp), %esi
	movl	__ZL11globalyspan.lto_priv.0, %ebp
	movl	%eax, 12(%esp)
	movl	%ecx, %eax
	movl	%ebx, 16(%esp)
	movl	_blendtable(,%edx,4), %ebx
	sarl	$16, %eax
	movl	52(%esp), %ecx
	movl	%ebx, 20(%esp)
	movl	__ZL11globalxspan.lto_priv.0, %ebx
	movl	%ebx, (%esp)
	movl	_asm1, %ebx
	movl	%ebx, 4(%esp)
	movl	_asm2, %ebx
	movl	%ebx, 8(%esp)
	testb	$2, _globalorientation+1
	je	L1352
	testl	%eax, %eax
	jle	L1351
	addl	%ecx, %eax
	movl	%eax, 24(%esp)
	.p2align 4
	.p2align 3
L1355:
	movl	%edi, %eax
	movl	(%esp), %edx
	shrl	%eax
/APP
 # 3447 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $31, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	%esi, %eax
	movl	%ebp, %edx
	shrl	%eax
/APP
 # 3447 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $31, %edx, %eax
 # 0 "" 2
/NO_APP
	imull	%ebp, %ebx
	addl	12(%esp), %eax
	movzbl	(%eax,%ebx), %eax
	cmpb	$-1, %al
	je	L1354
	movl	16(%esp), %ebx
	movzbl	(%ecx), %edx
	movzbl	(%ebx,%eax), %eax
	movl	20(%esp), %ebx
	sall	$8, %eax
	orl	%edx, %eax
	movzbl	(%ebx,%eax), %eax
	movb	%al, (%ecx)
L1354:
	addl	4(%esp), %edi
	addl	8(%esp), %esi
	addl	$1, %ecx
	cmpl	%ecx, 24(%esp)
	jne	L1355
L1351:
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
L1352:
	.cfi_restore_state
	testl	%eax, %eax
	jle	L1351
	addl	%ecx, %eax
	movl	%eax, 24(%esp)
	.p2align 4
	.p2align 3
L1357:
	movl	%edi, %eax
	movl	(%esp), %edx
	shrl	%eax
/APP
 # 3458 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $31, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	%esi, %eax
	movl	%ebp, %edx
	shrl	%eax
/APP
 # 3458 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $31, %edx, %eax
 # 0 "" 2
/NO_APP
	imull	%ebp, %ebx
	addl	12(%esp), %eax
	movzbl	(%eax,%ebx), %eax
	cmpb	$-1, %al
	je	L1356
	movl	16(%esp), %ebx
	movzbl	(%ecx), %edx
	movzbl	(%ebx,%eax), %eax
	sall	$8, %edx
	orl	%eax, %edx
	movl	20(%esp), %eax
	movzbl	(%eax,%edx), %eax
	movb	%al, (%ecx)
L1356:
	addl	4(%esp), %edi
	addl	8(%esp), %esi
	addl	$1, %ecx
	cmpl	%ecx, 24(%esp)
	jne	L1357
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
LFE47:
	.p2align 4
	.def	__ZL15ceilspritehlineii;	.scl	3;	.type	32;	.endef
__ZL15ceilspritehlineii:
LFB48:
	.cfi_startproc
	subl	$64, %esp
	.cfi_def_cfa_offset 68
	movl	__ZL5lastx.lto_priv.0, %ecx
	movl	%esi, 52(%esp)
	.cfi_offset 6, -16
	movl	(%ecx,%edx,4), %esi
	cmpl	%eax, %esi
	jg	L1367
	movl	%eax, 44(%esp)
	movl	%edx, %eax
	subl	_globalhoriz, %eax
	movl	%edx, 24(%esp)
	movl	__ZL11horizlookup.lto_priv.0, %edx
	addl	__ZL10horizycent.lto_priv.0, %eax
	movl	%ebx, 48(%esp)
	movl	%edi, 56(%esp)
	movl	%ebp, 60(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	(%edx,%eax,4), %edx
	movl	__ZL8globalzd.lto_priv.0, %eax
	movl	%edx, %ebx
	sarl	$31, %ebx
	movl	%ebx, %ecx
	movl	__ZL8globalzd.lto_priv.0+4, %ebx
	imull	%eax, %ecx
	imull	%edx, %ebx
	mull	%edx
	addl	%ebx, %ecx
	movl	__ZL8globalx2.lto_priv.0, %ebx
	addl	%ecx, %edx
	movl	%eax, %edi
	movl	_globalx1, %eax
	movl	%ebx, %ecx
	movl	%edx, %ebp
	shrdl	$20, %edx, %edi
	imull	%esi, %ecx
	sarl	$20, %ebp
	addl	%ecx, %eax
	movl	%eax, %ecx
	movl	%eax, %edx
	sarl	$31, %ecx
	imull	%ebp, %edx
	imull	%edi, %ecx
	addl	%edx, %ecx
	mull	%edi
	addl	%ecx, %edx
	movl	__ZL14globalxpanning.lto_priv.0, %ecx
	shrdl	$14, %edx, %eax
	addl	%eax, %ecx
	movl	_globaly2, %eax
	movl	%ecx, 28(%esp)
	movl	__ZL8globaly1.lto_priv.0, %ecx
	imull	%esi, %eax
	addl	%eax, %ecx
	movl	%ecx, %eax
	cltd
	movl	%edx, %eax
	movl	%ecx, %edx
	imull	%edi, %eax
	imull	%ebp, %edx
	addl	%eax, %edx
	movl	%ecx, %eax
	movl	%edx, 32(%esp)
	mull	%edi
	addl	32(%esp), %edx
	shrdl	$14, %edx, %eax
	movl	__ZL14globalypanning.lto_priv.0, %edx
	addl	%eax, %edx
	movl	%ebx, %eax
	movl	%edx, 32(%esp)
	cltd
	imull	%edi, %edx
	imull	%ebp, %eax
	leal	(%edx,%eax), %ecx
	movl	%edi, %eax
	mull	%ebx
	addl	%ecx, %edx
	shrdl	$14, %edx, %eax
	movl	%eax, _asm1
	movl	_globaly2, %eax
	cltd
	movl	_globaly2, %eax
	movl	%edx, %ebx
	imull	%edi, %ebx
	imull	%ebp, %eax
	addl	%eax, %ebx
	movl	%edi, %eax
	mull	_globaly2
	addl	%ebx, %edx
	shrdl	$14, %edx, %eax
	movl	%eax, _asm2
	movl	_globvis, %eax
	movl	%eax, %ebx
	movl	%eax, 36(%esp)
	sarl	$31, %ebx
	movl	%ebx, 40(%esp)
	movl	%edi, %ebx
	negl	%ebx
	movl	%ebx, %ecx
	movl	%ebp, %ebx
	adcl	$0, %ebx
	movl	%ebx, %edx
	movl	40(%esp), %ebx
	negl	%edx
	cmovs	%edi, %ecx
	cmovs	%ebp, %edx
	imull	%ecx, %ebx
	imull	%eax, %edx
	addl	%edx, %ebx
	mull	%ecx
	addl	%ebx, %edx
	shrdl	$28, %edx, %eax
	movl	$0, %edx
	sarl	$8, %eax
	addl	_globalshade, %eax
	cmovs	%edx, %eax
	movswl	_numshades, %edx
	movl	24(%esp), %ebx
	subl	$1, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	_globalpal, %edx
	sall	$8, %eax
	addl	_palookup(,%edx,4), %eax
	movl	_globalorientation, %edx
	movl	%eax, _asm3
	movl	_ylookup, %eax
	movl	(%eax,%ebx,4), %edi
	movl	_frameoffset, %eax
	movl	__ZL12globalbufplc.lto_priv.0, %ebx
	addl	%esi, %edi
	addl	%edi, %eax
	movl	44(%esp), %edi
	subl	%esi, %edi
	movl	__ZL12globalispow2.lto_priv.0, %esi
	movl	%edi, %ecx
	sall	$16, %ecx
	testl	%esi, %esi
	je	L1369
	andl	$2, %edx
	movl	%eax, 20(%esp)
	jne	L1370
	movl	%ecx, 8(%esp)
	movl	32(%esp), %edx
	movl	28(%esp), %ecx
	movl	%ebx, (%esp)
	movl	%edx, 16(%esp)
	movl	$0, 12(%esp)
	movl	%ecx, 4(%esp)
	call	_mhline
	movl	48(%esp), %ebx
	.cfi_restore 3
	movl	56(%esp), %edi
	.cfi_restore 7
	movl	60(%esp), %ebp
	.cfi_restore 5
L1367:
	movl	52(%esp), %esi
	addl	$64, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1369:
	.cfi_def_cfa_offset 68
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax
	andl	$2, %edx
	movl	28(%esp), %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	jne	L1371
	call	__ZL14nonpow2_mhlineijijPc.lto_priv.0
	movl	48(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	56(%esp), %edi
	.cfi_restore 7
	movl	60(%esp), %ebp
	.cfi_restore 5
	movl	52(%esp), %esi
	addl	$64, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1370:
	.cfi_restore_state
	movl	32(%esp), %eax
	movl	%ebx, (%esp)
	movl	$0, 12(%esp)
	movl	%eax, 16(%esp)
	movl	28(%esp), %eax
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	call	_thline
	movl	48(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	56(%esp), %edi
	.cfi_restore 7
	movl	60(%esp), %ebp
	.cfi_restore 5
	movl	52(%esp), %esi
	addl	$64, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1371:
	.cfi_restore_state
	call	__ZL14nonpow2_thlineijijPc.lto_priv.0
	movl	48(%esp), %ebx
	.cfi_restore 3
	movl	56(%esp), %edi
	.cfi_restore 7
	movl	60(%esp), %ebp
	.cfi_restore 5
	movl	52(%esp), %esi
	addl	$64, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE48:
	.p2align 4
	.globl	__ZL14ceilspritescanii.lto_priv.0
	.def	__ZL14ceilspritescanii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL14ceilspritescanii.lto_priv.0:
LFB49:
	.cfi_startproc
	cmpl	%edx, %eax
	jg	L1413
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %ecx
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%ecx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leal	1(%edx), %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	__ZL5uwall.lto_priv.0, %eax
	movl	%edx, 12(%esp)
	movswl	(%eax,%ecx,2), %ebx
	movl	%esi, 4(%esp)
	movl	%ebx, %eax
	movl	%ebx, %ebp
	.p2align 4
	.p2align 3
L1393:
	movl	__ZL5dwall.lto_priv.0, %edx
	leal	(%edi,%edi), %ecx
	movl	%ecx, (%esp)
	movzwl	(%edx,%edi,2), %ecx
	cmpw	%ax, %cx
	jg	L1375
	subl	$1, %ebp
	leal	-1(%edi), %esi
	cmpl	%ebx, %ebp
	jle	L1377
	.p2align 4
	.p2align 3
L1390:
	addl	$1, %ebx
	movl	%esi, %eax
	movl	%ebx, %edx
	call	__ZL15ceilspritehlineii
	cmpl	%ebp, %ebx
	jne	L1390
L1377:
	cmpl	%edi, 12(%esp)
	je	L1410
	movl	__ZL5uwall.lto_priv.0, %eax
	movl	(%esp), %ecx
	movswl	2(%eax,%ecx), %ebx
	movl	%ebx, %ebp
L1387:
	addl	$1, %edi
	cmpl	4(%esp), %edi
	je	L1416
L1392:
	movl	__ZL5uwall.lto_priv.0, %eax
	movl	(%esp), %ecx
	movswl	2(%eax,%ecx), %eax
	jmp	L1393
	.p2align 4,,10
	.p2align 3
L1375:
	leal	-1(%eax), %edx
	movl	%eax, 8(%esp)
	movswl	%cx, %eax
	cmpl	%ebp, %edx
	jge	L1378
	leal	-1(%edi), %esi
	movl	%ebx, %ecx
	cmpl	%ebx, %edx
	jle	L1380
	movl	%edx, 20(%esp)
	movl	%eax, 24(%esp)
	movl	%ebp, 16(%esp)
	movl	%edx, %ebp
	.p2align 4
	.p2align 3
L1383:
	addl	$1, %ebx
	movl	%esi, %eax
	movl	%ebx, %edx
	call	__ZL15ceilspritehlineii
	cmpl	%ebp, %ebx
	jne	L1383
	movl	%ebp, %edx
	movl	20(%esp), %ecx
	movl	16(%esp), %ebp
	movl	24(%esp), %eax
L1380:
	cmpl	%ecx, %edx
	jge	L1395
	movl	8(%esp), %esi
	leal	0(,%ecx,4), %edx
	subl	$1, %esi
	leal	0(,%esi,4), %ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1385:
	movl	__ZL5lastx.lto_priv.0, %ecx
	movl	%edi, (%ecx,%edx)
	subl	$4, %edx
	cmpl	%ebx, %edx
	jne	L1385
	movl	%esi, %ebx
L1384:
	leal	-1(%edi), %esi
	cmpl	%ebp, %eax
	jge	L1417
	movl	%edi, %ecx
	movl	%ebx, 8(%esp)
	movl	%ebp, %edi
	movl	%eax, %ebx
	movl	%ecx, %ebp
	.p2align 4
	.p2align 3
L1386:
	subl	$1, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	call	__ZL15ceilspritehlineii
	cmpl	%edi, %ebx
	jne	L1386
	movl	%ebp, %eax
	movl	%edi, %ebp
	movl	8(%esp), %ebx
	movl	%eax, %edi
	addl	$1, %edi
	cmpl	4(%esp), %edi
	jne	L1392
L1416:
	leal	-1(%ebp), %esi
L1391:
	movl	12(%esp), %edi
	cmpl	%esi, %ebx
	jge	L1374
	.p2align 4
	.p2align 3
L1394:
	addl	$1, %ebx
	movl	%edi, %eax
	movl	%ebx, %edx
	call	__ZL15ceilspritehlineii
	cmpl	%esi, %ebx
	jne	L1394
L1374:
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
	jmp	__Z16timerUpdateClockv
	.p2align 4,,10
	.p2align 3
L1417:
	.cfi_restore_state
	jle	L1387
	sall	$2, %ebp
	leal	0(,%eax,4), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1389:
	movl	__ZL5lastx.lto_priv.0, %edx
	movl	%edi, (%edx,%ebp)
	addl	$4, %ebp
	cmpl	%ecx, %ebp
	jne	L1389
	movl	%eax, %ebp
	jmp	L1387
	.p2align 4,,10
	.p2align 3
L1378:
	leal	-1(%ebp), %esi
	cmpl	%ebx, %esi
	jle	L1381
	movl	%edx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	%ebp, 8(%esp)
	leal	-1(%edi), %ebp
	.p2align 4
	.p2align 3
L1382:
	addl	$1, %ebx
	movl	%ebp, %eax
	movl	%ebx, %edx
	call	__ZL15ceilspritehlineii
	cmpl	%esi, %ebx
	jne	L1382
	movl	8(%esp), %ebp
	movl	16(%esp), %edx
	movl	20(%esp), %eax
L1381:
	movl	%edx, %ebx
	jmp	L1384
L1410:
	movl	%ebp, %esi
	jmp	L1391
L1395:
	movl	%ecx, %ebx
	jmp	L1384
L1413:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	jmp	__Z16timerUpdateClockv
	.cfi_endproc
LFE49:
	.p2align 4
	.globl	__ZL24setupslopevlin_alsotransiii.lto_priv.0
	.def	__ZL24setupslopevlin_alsotransiii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL24setupslopevlin_alsotransiii.lto_priv.0:
LFB32:
	.cfi_startproc
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
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_setupslopevlin
	movzbl	%bl, %eax
	sarl	$8, %ebx
	movl	%edi, __ZL5ggbuf.lto_priv.0
	movl	%ebx, __ZL6gglogy.lto_priv.0
	movl	%esi, __ZL6ggpinc.lto_priv.0
	movl	%eax, __ZL6gglogx.lto_priv.0
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
LFE32:
	.p2align 4
	.globl	__ZL19setup_globals_wall1PK11uwalltypev7i.lto_priv.0
	.def	__ZL19setup_globals_wall1PK11uwalltypev7i.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL19setup_globals_wall1PK11uwalltypev7i.lto_priv.0:
LFB50:
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
	movl	%edx, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movzwl	14(%eax), %ecx
	movl	%ecx, %edx
	cmpl	$30719, %ebx
	ja	L1429
	movl	%ebx, %edi
	movl	%ebx, %eax
L1421:
	movl	%ecx, _globalorientation
	cmpb	$63, _picanm+3(%ebx,%ebx,4)
	jbe	L1422
	movl	%ebx, %eax
	movl	%edx, (%esp)
	call	_animateoffs
	movl	(%esp), %edx
	addl	%edi, %eax
	movswl	%ax, %ebx
	movl	%eax, %edi
L1422:
	movw	%ax, _globalpicnum
	andb	$16, %dh
	je	L1425
	movzwl	_rottile(,%ebx,4), %eax
	cmpw	$-1, %ax
	je	L1425
	movw	%ax, _globalpicnum
	movswl	%ax, %ebx
	movl	%eax, %edi
L1425:
	movl	%ebx, %eax
	call	__Z12tileLoadHighi
	movl	%eax, __ZL8globalht.lto_priv.0
	testl	%eax, %eax
	je	L1426
	movswl	4(%eax), %ecx
L1427:
	movzbl	24(%esi), %eax
	xorl	%edx, %edx
	sall	%cl, %eax
	movl	%eax, __ZL14globalxpanning.lto_priv.0
	movzbl	25(%esi), %eax
	movl	%eax, __ZL14globalypanning.lto_priv.0
	movsbl	20(%esi), %eax
	movl	%eax, _globalshade
	movzbl	21(%esi), %eax
	movl	_palookup(,%eax,4), %ecx
	testl	%ecx, %ecx
	cmove	%edx, %eax
	movl	%eax, _globalpal
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
L1429:
	.cfi_restore_state
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	jmp	L1421
	.p2align 4,,10
	.p2align 3
L1426:
	movl	_waloff(,%ebx,4), %ecx
	testl	%ecx, %ecx
	je	L1436
	xorl	%ecx, %ecx
	jmp	L1427
	.p2align 4,,10
	.p2align 3
L1436:
	movswl	%di, %eax
	movl	%ecx, (%esp)
	call	_tileLoad
	movl	(%esp), %ecx
	jmp	L1427
	.cfi_endproc
LFE50:
	.p2align 4
	.globl	__ZL19setup_globals_wall2PK11uwalltypev7hii.lto_priv.0
	.def	__ZL19setup_globals_wall2PK11uwalltypev7hii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL19setup_globals_wall2PK11uwalltypev7hii.lto_priv.0:
LFB51:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%eax, 16(%esp)
	movl	__ZL8globalht.lto_priv.0, %eax
	movl	%ebp, 32(%esp)
	.cfi_offset 5, -8
	movl	%ecx, %ebp
	xorl	%ecx, %ecx
	movl	%esi, 24(%esp)
	movl	%edi, 28(%esp)
	testl	%eax, %eax
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	je	L1438
	movswl	6(%eax), %ecx
L1438:
	movswl	_globalpicnum, %edi
	movswl	_tilesiz+2(,%edi,4), %esi
	sall	%cl, %esi
	testl	%esi, %esi
	je	L1459
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -20
	movzbl	_picsiz(%edi), %ebx
	movl	_globalvisibility, %eax
	shrb	$4, %bl
	movzbl	%bl, %ebx
	addl	%ecx, %ebx
	testb	%dl, %dl
	je	L1441
	addl	$16, %edx
	movzbl	%dl, %edx
/APP
 # 4408 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
L1441:
	movl	%eax, _globvis
	movl	16(%esp), %edx
	movw	%bx, __ZL14globalshiftval.lto_priv.0
	movl	_pow2long.lto_priv.0(,%ebx,4), %eax
	cmpl	$9, _g_loadedMapVersion
	jle	L1460
L1442:
	cmpl	%eax, %esi
	je	L1443
L1444:
	movl	%esi, 8(%esp)
	xorl	%edi, %edi
	movl	%esi, _globaltilesizy
	sarl	$31, %esi
	movl	%esi, 12(%esp)
	movzbl	23(%edx), %eax
	sall	%cl, %eax
	cltd
	shldl	$13, %eax, %edx
	sall	$13, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movw	%di, __ZL14globalshiftval.lto_priv.0
	movl	%eax, __ZL12globalyscale.lto_priv.0
	movl	%eax, %esi
L1445:
	movl	_globalorientation, %edi
	movl	_globalposz, %eax
	testl	$4, %edi
	jne	L1446
	subl	%ebp, %eax
	imull	%esi
	shldl	$8, %eax, %edx
	sall	$8, %eax
	movl	%eax, %ecx
	movl	%edx, %ebx
L1447:
	movl	__ZL14globalypanning.lto_priv.0, %eax
	cltd
	shldl	$24, %eax, %edx
	sall	$24, %eax
	addl	%ecx, %eax
	adcl	%ebx, %edx
	andl	$256, %edi
	movl	%eax, __ZL8globalzd.lto_priv.0
	movl	%edx, __ZL8globalzd.lto_priv.0+4
	je	L1458
	negl	%esi
	negl	%eax
	movl	20(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	28(%esp), %edi
	adcl	$0, %edx
	movl	%esi, __ZL12globalyscale.lto_priv.0
	movl	32(%esp), %ebp
	negl	%edx
	movl	%eax, __ZL8globalzd.lto_priv.0
	movl	24(%esp), %esi
	movl	%edx, __ZL8globalzd.lto_priv.0+4
	addl	$36, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1460:
	.cfi_restore_state
	testb	$2, _picanm+4(%edi,%edi,4)
	jne	L1442
	cmpl	%eax, %esi
	je	L1443
	addl	$1, %ebx
	movw	%bx, __ZL14globalshiftval.lto_priv.0
L1443:
	cmpl	$512, %esi
	jg	L1444
	movl	$32, %eax
	subw	__ZL14globalshiftval.lto_priv.0, %ax
	movzbl	23(%edx), %esi
	movw	%ax, __ZL14globalshiftval.lto_priv.0
	cwtl
	leal	-19(%ecx,%eax), %ecx
	sall	%cl, %esi
	movl	%esi, __ZL12globalyscale.lto_priv.0
	jmp	L1445
	.p2align 4,,10
	.p2align 3
L1459:
	.cfi_restore 3
	movl	$-1, %ebp
	movl	24(%esp), %esi
	movl	28(%esp), %edi
	movw	%bp, __ZL14globalshiftval.lto_priv.0
	movl	32(%esp), %ebp
	addl	$36, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1458:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	20(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	24(%esp), %esi
	movl	28(%esp), %edi
	movl	32(%esp), %ebp
	addl	$36, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1446:
	.cfi_restore_state
	subl	40(%esp), %eax
	imull	%esi
	shldl	$8, %eax, %edx
	sall	$8, %eax
	movl	%eax, %ecx
	movl	%edx, %ebx
	jmp	L1447
	.cfi_endproc
LFE51:
	.p2align 4
	.globl	__ZL18classicDrawBunchesi.lto_priv.0
	.def	__ZL18classicDrawBunchesi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL18classicDrawBunchesi.lto_priv.0:
LFB52:
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
	subl	$156, %esp
	.cfi_def_cfa_offset 176
	movswl	_bunchfirst(%eax,%eax), %ebp
	movl	%eax, 32(%esp)
	movswl	_thesector(%ebp,%ebp), %ecx
	leal	(%ecx,%ecx,4), %eax
	movw	%cx, 100(%esp)
	sall	$3, %eax
	movl	%ecx, 96(%esp)
	movl	%eax, 60(%esp)
	addl	_sector, %eax
	movl	%eax, 28(%esp)
	testl	%ebp, %ebp
	js	L1462
	movl	%ebp, 24(%esp)
	movl	$-1, %esi
	movl	$-1, %ebx
	movl	%ecx, %edi
	.p2align 4
	.p2align 3
L1463:
	movl	$0, (%esp)
	movl	__ZL4uplc.lto_priv.0, %eax
	movl	%ebp, %edx
	movl	%edi, %ecx
	call	__ZL8wallmostPsiic.lto_priv.0
	movl	$1, (%esp)
	movl	%ebp, %edx
	movl	%edi, %ecx
	andl	%eax, %ebx
	movl	__ZL4dplc.lto_priv.0, %eax
	call	__ZL8wallmostPsiic.lto_priv.0
	movswl	_bunchp2(%ebp,%ebp), %ebp
	andl	%eax, %esi
	testl	%ebp, %ebp
	jns	L1463
	movl	%esi, %eax
	movl	_g_nodraw, %esi
	movl	24(%esp), %ebp
	andl	$3, %ebx
	andl	$12, %eax
	movb	%al, 44(%esp)
	testl	%esi, %esi
	jne	L1465
	cmpb	$3, %bl
	je	L1483
	movl	28(%esp), %eax
	movl	_r_tror_nomaskpass, %edx
	movzwl	12(%eax), %eax
	testl	%edx, %edx
	je	L1484
	cmpl	$8, _yax_globallev
	je	L1484
	testb	$1, %ah
	je	L1484
	cmpl	$1, _yax_nomaskpass
	je	L1484
	movl	100(%esp), %edx
	movl	96(%esp), %ecx
	andl	$7, %edx
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.7(%edx), %edx
	movzbl	_yax_gotsector(%ecx), %ebx
	andl	%edx, %ebx
	cmpb	%bl, %dl
	jne	L1484
	cmpb	$12, 44(%esp)
	je	L1748
	movl	28(%esp), %eax
	movzwl	14(%eax), %eax
L1751:
	testb	$1, %ah
	je	L1545
	cmpl	$1, _yax_nomaskpass
	je	L1545
	movl	100(%esp), %edx
	movl	96(%esp), %ecx
	andl	$7, %edx
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.7(%edx), %edx
	movzbl	_yax_gotsector(%ecx), %ebx
	andl	%edx, %ebx
	cmpb	%bl, %dl
	je	L1923
	.p2align 4
	.p2align 3
L1545:
	movl	%eax, %edx
	movl	32(%esp), %ebx
	andl	$3, %edx
	cmpw	$2, %dx
	je	L1934
	testb	$1, %al
	jne	L1549
	movswl	_bunchlast(%ebx,%ebx), %eax
	movl	_globalposz, %ecx
	movl	__ZL3xb2.lto_priv.0(,%eax,4), %eax
	movl	%eax, 40(%esp)
	movswl	_bunchfirst(%ebx,%ebx), %eax
	movl	_xb1(,%eax,4), %ebx
	movl	60(%esp), %eax
	addl	_sector, %eax
	subl	8(%eax), %ecx
	movzbl	29(%eax), %edx
	movl	%ebx, %edi
	movl	%ebx, 20(%esp)
	movzbl	31(%eax), %ebx
	movl	%ebx, 16(%esp)
	movzbl	30(%eax), %ebx
	movl	%ebx, 12(%esp)
	movzwl	14(%eax), %ebx
	movl	%ebx, 8(%esp)
	movsbl	28(%eax), %ebx
	movl	%ebx, 4(%esp)
	movswl	24(%eax), %ebx
	movl	%ebx, (%esp)
	call	__ZL17setup_globals_cf1PK13usectortypev7iiiiiiii
	testl	%eax, %eax
	jne	L1923
	movl	%edi, %eax
	addl	%eax, %eax
	movl	%eax, 36(%esp)
	movl	_globalorientation, %eax
	andl	$384, %eax
	je	L1935
	cmpl	$256, %eax
	je	L1580
	cmpl	$384, %eax
	je	L1581
	movswl	_globalpicnum, %eax
	movzbl	_picsiz(%eax), %eax
	movl	%eax, %edx
	andl	$15, %eax
	shrb	$4, %dl
	movl	%eax, (%esp)
	movzbl	%dl, %edx
	movl	%edx, 4(%esp)
	call	_msethlineshift
L1582:
	movl	__ZL4dplc.lto_priv.0, %eax
	movl	36(%esp), %ebx
	movswl	(%eax,%ebx), %edx
	movl	__ZL5umost.lto_priv.0, %eax
	movzwl	(%eax,%ebx), %eax
	cmpw	%ax, %dx
	movswl	%ax, %esi
	cmovge	%edx, %esi
	cmpl	%edi, 40(%esp)
	jl	L1585
	movl	%esi, %ebx
	.p2align 4
	.p2align 3
L1605:
	cmpw	%ax, %dx
	movl	36(%esp), %ecx
	cmovge	%edx, %eax
	movl	%eax, %ebp
	movl	__ZL5dmost.lto_priv.0, %eax
	movswl	(%eax,%ecx), %eax
	cmpw	%bp, %ax
	jg	L1586
	subl	$1, %ebx
	leal	-1(%edi), %ebp
	cmpl	%esi, %ebx
	jle	L1588
	.p2align 4
	.p2align 3
L1601:
	addl	$1, %esi
	movl	%ebp, %eax
	movl	%esi, %edx
	call	__ZL9slowhlineii
	cmpl	%esi, %ebx
	jne	L1601
L1588:
	cmpl	%edi, 40(%esp)
	je	L1936
	movl	36(%esp), %ebx
	movl	__ZL4dplc.lto_priv.0, %eax
	movl	__ZL5umost.lto_priv.0, %edx
	movzwl	2(%eax,%ebx), %eax
	movzwl	2(%edx,%ebx), %edx
	cmpw	%dx, %ax
	cmovl	%edx, %eax
	movswl	%ax, %esi
	movl	%esi, %ebx
L1598:
	movl	_globaly2, %eax
	addl	$1, %edi
	addl	%eax, __ZL8globalx2.lto_priv.0
	movl	_globalx1, %eax
	addl	%eax, __ZL8globaly1.lto_priv.0
	cmpl	%edi, 40(%esp)
	jl	L1604
	movl	36(%esp), %ecx
	movl	__ZL4dplc.lto_priv.0, %eax
	movzwl	2(%eax,%ecx), %edx
	movl	__ZL5umost.lto_priv.0, %eax
	movzwl	2(%eax,%ecx), %eax
	leal	(%edi,%edi), %ecx
	movl	%ecx, 36(%esp)
	jmp	L1605
	.p2align 4,,10
	.p2align 3
L1484:
	movl	%eax, %edx
	andl	$3, %edx
	cmpw	$2, %dx
	je	L1937
	testb	$1, %al
	je	L1938
	movl	32(%esp), %edx
	xorl	%eax, %eax
	call	__ZL8parascanci
L1483:
	cmpb	$12, 44(%esp)
	je	L1923
L1543:
	movl	28(%esp), %eax
	movl	_r_tror_nomaskpass, %esi
	movzwl	14(%eax), %eax
	testl	%esi, %esi
	je	L1545
	cmpl	$8, _yax_globallev
	jne	L1751
	jmp	L1545
L1604:
	subl	$1, %ebx
L1603:
	movl	40(%esp), %edi
	cmpl	%ebx, %esi
	jge	L1585
	.p2align 4
	.p2align 3
L1606:
	addl	$1, %esi
	movl	%edi, %eax
	movl	%esi, %edx
	call	__ZL9slowhlineii
	cmpl	%ebx, %esi
	jne	L1606
L1585:
	call	__Z16timerUpdateClockv
L1923:
	movl	32(%esp), %eax
	movswl	_bunchfirst(%eax,%eax), %ebp
L1482:
	testl	%ebp, %ebp
	js	L1461
	.p2align 4
	.p2align 3
L1748:
	movl	_xb1(,%ebp,4), %eax
	movl	__ZL3xb2.lto_priv.0(,%ebp,4), %ebx
	movl	__ZL5dmost.lto_priv.0, %ecx
	movl	%eax, 24(%esp)
	movl	__ZL5umost.lto_priv.0, %eax
	movzwl	(%ecx,%ebx,2), %edi
	cmpw	%di, (%eax,%ebx,2)
	jge	L1939
L1607:
	movswl	_thewall(%ebp,%ebp), %esi
	movl	_wall, %edi
	movl	$0, 36(%esp)
	movl	%esi, %edx
	movw	%si, 64(%esp)
	sall	$5, %edx
	movl	%esi, 40(%esp)
	addl	%edx, %edi
	movswl	12(%edi), %esi
	movw	%si, 48(%esp)
	movl	%esi, 32(%esp)
	testl	%esi, %esi
	js	L1612
	movl	_sector, %ecx
	leal	(%esi,%esi,4), %edx
	leal	(%ecx,%edx,8), %esi
	movl	%esi, 36(%esp)
L1612:
	movl	__ZL12smostwallcnt.lto_priv.0, %esi
	movl	%esi, 68(%esp)
	movl	__ZL8smostcnt.lto_priv.0, %esi
	movl	%esi, 72(%esp)
	cmpw	$2, _searchit
	je	L1940
L1613:
	movl	_yax_nomaskpass, %eax
	testl	%eax, %eax
	jne	L1941
L1625:
	movl	32(%esp), %ecx
	testl	%ecx, %ecx
	jns	L1942
L1626:
	movswl	16(%edi), %edx
	movl	%edi, %eax
	call	__ZL19setup_globals_wall1PK11uwalltypev7i.lto_priv.0
	movl	28(%esp), %eax
	movl	4(%eax), %ecx
	movzbl	32(%eax), %edx
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZL19setup_globals_wall2PK11uwalltypev7hii.lto_priv.0
L1733:
	movl	%edi, %edx
	movl	%ebp, %eax
	call	__ZL8prepwalliPK11uwalltypev7.lto_priv.0
L1734:
	movl	__ZL5lwall.lto_priv.0, %eax
	movl	__ZL4uplc.lto_priv.0, %ecx
	movl	%ebx, %edx
	movl	%eax, 8(%esp)
	movl	__ZL5swall.lto_priv.0, %eax
	movl	%eax, 4(%esp)
	movl	__ZL4dplc.lto_priv.0, %eax
	movl	%eax, (%esp)
	movl	24(%esp), %eax
	call	__ZL8wallscaniiPKsS0_PKiS2_
	movl	28(%esp), %edi
	movl	_globalposz, %eax
	movl	$0, __ZL8globalht.lto_priv.0
	cmpl	%eax, 8(%edi)
	jl	L1943
	movl	28(%esp), %edi
	cmpl	%eax, 4(%edi)
	jg	L1944
L1741:
	movl	24(%esp), %edi
	leal	1(%ebx), %esi
	movl	%edi, %eax
	cmpl	%ebx, %edi
	jg	L1738
	.p2align 6
	.p2align 4
	.p2align 3
L1747:
	movl	__ZL5umost.lto_priv.0, %edx
	movl	__ZL5dmost.lto_priv.0, %ecx
	leal	(%edx,%eax,2), %edx
	movzwl	(%ecx,%eax,2), %edi
	cmpw	%di, (%edx)
	jg	L1746
	movl	$1, %ecx
	xorl	%edi, %edi
	movw	%cx, (%edx)
	movl	__ZL5dmost.lto_priv.0, %edx
	movw	%di, (%edx,%eax,2)
	subw	$1, __ZL7numhits.lto_priv.0
L1746:
	addl	$1, %eax
	cmpl	%esi, %eax
	jne	L1747
L1738:
	movl	__ZL12smostwallcnt.lto_priv.0, %eax
	movb	$0, __ZL13smostwalltype.lto_priv.0(%eax)
	movl	%ebp, __ZL9smostwall.lto_priv.0(,%eax,4)
	addl	$1, %eax
	movl	%eax, __ZL12smostwallcnt.lto_priv.0
	cmpw	$2, _searchit
	je	L1945
L1611:
	movswl	_bunchp2(%ebp,%ebp), %ebp
	testl	%ebp, %ebp
	jns	L1748
L1461:
	addl	$156, %esp
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
L1940:
	.cfi_restore_state
	movl	_searchx, %edx
	cmpl	%ebx, %edx
	jg	L1613
	movl	24(%esp), %esi
	cmpl	%esi, %edx
	jl	L1613
	leal	(%edx,%edx), %esi
	movl	_searchy, %ecx
	movl	%esi, 44(%esp)
	movl	__ZL4uplc.lto_priv.0, %esi
	movswl	(%esi,%edx,2), %esi
	cmpl	%ecx, %esi
	jl	L1615
	movswl	(%eax,%edx,2), %eax
	cmpl	%eax, %ecx
	jge	L1946
L1615:
	movl	__ZL4dplc.lto_priv.0, %eax
	movl	44(%esp), %esi
	movswl	(%eax,%esi), %eax
	cmpl	%ecx, %eax
	jg	L1613
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	44(%esp), %esi
	movswl	(%eax,%esi), %eax
	cmpl	%ecx, %eax
	jle	L1613
	movl	60(%esp), %eax
	addl	_sector, %eax
	testb	$2, 14(%eax)
	je	L1947
	movl	_globalposy, %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	_globalposx, %edx
	movl	%edx, 4(%esp)
	call	_getflorzofslopeptr.part.0
L1623:
	cmpl	%eax, _globalposz
	jg	L1613
	movl	96(%esp), %eax
	call	_yax_getbunch.constprop.0
	testw	%ax, %ax
	js	L1624
	cmpb	$0, _showinvisibility
	jne	L1624
	movl	28(%esp), %eax
	testw	$384, 14(%eax)
	jne	L1624
	movl	_yax_globallev, %eax
	subl	$8, %eax
/APP
 # 4651 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	$8, %eax
	jne	L1613
L1624:
	movzwl	100(%esp), %eax
	movw	%ax, _searchsector
	movzwl	64(%esp), %eax
	movw	%ax, _searchwall
	movl	$2, %eax
	movw	%ax, _searchstat
	movl	$1, %eax
	movw	%ax, _searchit
	jmp	L1613
	.p2align 4,,10
	.p2align 3
L1942:
	movl	60(%esp), %esi
	movl	4(%edi), %ecx
	movl	$0, 136(%esp)
	addl	_sector, %esi
	movl	(%edi), %edx
	movl	$0, 140(%esp)
	movl	%esi, %eax
	leal	116(%esp), %esi
	movl	%ecx, 8(%esp)
	movl	%esi, 16(%esp)
	leal	136(%esp), %esi
	movl	%esi, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	$0, 148(%esp)
	movl	$0, 116(%esp)
	movl	$0, 120(%esp)
	movl	$0, 128(%esp)
	call	_getzsofslopeptr
	movswl	8(%edi), %eax
	leal	120(%esp), %edx
	movl	60(%esp), %esi
	movl	%edx, 16(%esp)
	leal	140(%esp), %edx
	addl	_sector, %esi
	sall	$5, %eax
	addl	_wall, %eax
	movl	%edx, 12(%esp)
	movl	4(%eax), %edx
	movl	%edx, 8(%esp)
	movl	(%eax), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_getzsofslopeptr
	movl	32(%esp), %eax
	leal	(%eax,%eax,4), %esi
	leal	124(%esp), %eax
	movl	%eax, 16(%esp)
	leal	144(%esp), %eax
	sall	$3, %esi
	movl	%eax, 12(%esp)
	movl	4(%edi), %eax
	movl	%eax, 8(%esp)
	movl	(%edi), %eax
	movl	%eax, 4(%esp)
	movl	_sector, %eax
	addl	%esi, %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movswl	8(%edi), %eax
	leal	128(%esp), %edx
	movl	%edx, 16(%esp)
	leal	148(%esp), %edx
	sall	$5, %eax
	addl	_wall, %eax
	movl	%edx, 12(%esp)
	movl	4(%eax), %edx
	movl	%edx, 8(%esp)
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	_sector, %eax
	addl	%esi, %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	leal	132(%esp), %eax
	addl	_sector, %esi
	movl	%eax, 16(%esp)
	leal	152(%esp), %eax
	movl	%eax, 12(%esp)
	movl	_globalposy, %eax
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	movl	_globalposx, %eax
	movl	%eax, 4(%esp)
	call	_getzsofslopeptr
	movl	136(%esp), %eax
	movl	%eax, 52(%esp)
	movl	140(%esp), %eax
	movl	%eax, 88(%esp)
	movl	148(%esp), %eax
	movl	%eax, 76(%esp)
	movl	116(%esp), %eax
	movl	%eax, 56(%esp)
	movl	120(%esp), %eax
	movl	%eax, 84(%esp)
	movl	128(%esp), %eax
	movl	%eax, 80(%esp)
	movzwl	14(%edi), %eax
	andl	$48, %eax
	cmpw	$16, %ax
	jne	L1628
	movswl	_maskwallcnt, %eax
	leal	1(%eax), %edx
	movw	%bp, _maskwall(%eax,%eax)
	movw	%dx, _maskwallcnt
L1628:
	movl	28(%esp), %eax
	testb	$1, 12(%eax)
	je	L1629
	movl	36(%esp), %eax
	movl	$0, 44(%esp)
	testb	$1, 12(%eax)
	jne	L1630
L1629:
	movl	144(%esp), %eax
	movl	52(%esp), %esi
	movl	%eax, 92(%esp)
	cmpl	%esi, %eax
	jg	L1631
	movl	88(%esp), %esi
	cmpl	%esi, 76(%esp)
	jle	L1948
L1631:
	movl	$0, (%esp)
	movl	32(%esp), %ecx
	movl	%ebp, %edx
	movl	__ZL5dwall.lto_priv.0, %eax
	call	__ZL8wallmostPsiic.lto_priv.0
	movl	56(%esp), %esi
	cmpl	%esi, 92(%esp)
	jg	L1638
	movl	84(%esp), %esi
	cmpl	%esi, 76(%esp)
	jg	L1638
L1639:
	cmpw	$2, _searchit
	je	L1949
L1642:
	movswl	16(%edi), %edx
	movl	%edi, %eax
	call	__ZL19setup_globals_wall1PK11uwalltypev7i.lto_priv.0
	movl	36(%esp), %eax
	movl	4(%eax), %ecx
	movl	28(%esp), %eax
	movzbl	32(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZL19setup_globals_wall2PK11uwalltypev7hii.lto_priv.0
	movl	%edi, %edx
	movl	%ebp, %eax
	call	__ZL8prepwalliPK11uwalltypev7.lto_priv.0
	movl	__ZL5lwall.lto_priv.0, %eax
	movl	24(%esp), %esi
	movl	%ebx, %edx
	movl	__ZL4uplc.lto_priv.0, %ecx
	movl	%eax, 8(%esp)
	movl	__ZL5swall.lto_priv.0, %eax
	movl	%eax, 4(%esp)
	movl	__ZL5dwall.lto_priv.0, %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__ZL8wallscaniiPKsS0_PKiS2_
	movl	_yax_globallev, %eax
	movl	52(%esp), %edx
	movl	$0, __ZL8globalht.lto_priv.0
	cmpl	%edx, 92(%esp)
	jl	L1644
	movl	88(%esp), %edx
	cmpl	%edx, 76(%esp)
	jl	L1644
	cmpl	$8, %eax
	jle	L1645
	cmpl	%ebx, %esi
	jg	L1646
	movl	__ZL4uplc.lto_priv.0, %edx
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	%edi, 92(%esp)
	movl	__ZL5dwall.lto_priv.0, %ecx
	movl	%edx, 44(%esp)
	movl	%esi, %edx
	movl	44(%esp), %edi
	jmp	L1648
	.p2align 4,,10
	.p2align 3
L1951:
	cmpw	(%edi,%edx,2), %si
	jg	L1907
	addl	$1, %edx
	cmpl	%edx, %ebx
	jl	L1950
L1648:
	movzwl	(%eax,%edx,2), %esi
	cmpw	%si, (%ecx,%edx,2)
	jge	L1951
L1907:
	movl	92(%esp), %edi
L1647:
	leal	1(%ebx), %esi
	movl	%ebp, 104(%esp)
	movl	24(%esp), %eax
	movl	%ebx, 44(%esp)
	movl	__ZL5umost.lto_priv.0, %edx
	movl	%esi, %ebp
	movl	%edi, 92(%esp)
	jmp	L1650
	.p2align 4,,10
	.p2align 3
L1952:
	movl	__ZL5dwall.lto_priv.0, %ecx
L1650:
	leal	(%edx,%eax,2), %ebx
	movzwl	(%ecx,%eax,2), %esi
	movzwl	(%ebx), %ecx
	cmpw	%cx, %si
	jle	L1649
	movl	__ZL5dmost.lto_priv.0, %edi
	cmpw	(%edi,%eax,2), %cx
	jg	L1649
	movw	%si, (%ebx)
	movl	__ZL5dmost.lto_priv.0, %edi
	movl	__ZL5umost.lto_priv.0, %edx
	movzwl	(%edi,%eax,2), %ebx
	cmpw	%bx, (%edx,%eax,2)
	jle	L1649
	subw	$1, __ZL7numhits.lto_priv.0
	.p2align 4
	.p2align 3
L1649:
	addl	$1, %eax
	cmpl	%eax, %ebp
	jne	L1952
L1908:
	movl	44(%esp), %ebx
	movl	92(%esp), %edi
	movl	$1, 44(%esp)
	movl	104(%esp), %ebp
L1651:
	movl	88(%esp), %esi
	cmpl	%esi, 76(%esp)
	jge	L1656
L1662:
	movl	24(%esp), %esi
	movl	%ebx, %eax
	movl	__ZL8smostcnt.lto_priv.0, %edx
	subl	%esi, %eax
	addl	$1, %eax
	leal	(%edx,%eax), %esi
	cmpl	__ZL8ysavecnt.lto_priv.0, %esi
	jl	L1953
L1630:
	movl	28(%esp), %eax
	testb	$1, 14(%eax)
	je	L1675
	movl	36(%esp), %eax
	testb	$1, 14(%eax)
	jne	L1676
L1675:
	movl	124(%esp), %eax
	movl	56(%esp), %esi
	movl	%eax, 76(%esp)
	cmpl	%esi, %eax
	jl	L1677
	movl	84(%esp), %esi
	cmpl	%esi, 80(%esp)
	jge	L1954
L1677:
	movl	$1, (%esp)
	movl	32(%esp), %ecx
	movl	%ebp, %edx
	movl	__ZL5uwall.lto_priv.0, %eax
	call	__ZL8wallmostPsiic.lto_priv.0
	movl	52(%esp), %esi
	cmpl	%esi, 76(%esp)
	jl	L1683
	movl	88(%esp), %esi
	cmpl	%esi, 80(%esp)
	jl	L1683
L1684:
	cmpw	$2, _searchit
	je	L1955
L1687:
	movl	%edi, %eax
	testb	$2, 14(%edi)
	je	L1688
	movswl	10(%edi), %eax
	sall	$5, %eax
	addl	_wall, %eax
L1688:
	movswl	16(%eax), %edx
	call	__ZL19setup_globals_wall1PK11uwalltypev7i.lto_priv.0
	movl	36(%esp), %eax
	movl	8(%eax), %ecx
	movl	28(%esp), %eax
	movzbl	32(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZL19setup_globals_wall2PK11uwalltypev7hii.lto_priv.0
	movl	44(%esp), %eax
	testl	%eax, %eax
	je	L1956
L1689:
	movl	__ZL5lwall.lto_priv.0, %eax
	movl	24(%esp), %esi
	movl	%ebx, %edx
	movl	__ZL5uwall.lto_priv.0, %ecx
	movl	%eax, 8(%esp)
	movl	__ZL5swall.lto_priv.0, %eax
	movl	%eax, 4(%esp)
	movl	__ZL4dplc.lto_priv.0, %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__ZL8wallscaniiPKsS0_PKiS2_
	movl	_yax_globallev, %eax
	movl	56(%esp), %edx
	movl	$0, __ZL8globalht.lto_priv.0
	cmpl	%edx, 76(%esp)
	jg	L1691
	movl	84(%esp), %edx
	cmpl	%edx, 80(%esp)
	jg	L1691
	cmpl	$7, %eax
	jg	L1692
	movl	%esi, %eax
	cmpl	%ebx, %esi
	jg	L1693
	movl	__ZL4dplc.lto_priv.0, %edx
	movl	%edi, 44(%esp)
	movl	__ZL5uwall.lto_priv.0, %ecx
	movl	__ZL5umost.lto_priv.0, %esi
	movl	%edx, %edi
	jmp	L1695
	.p2align 4,,10
	.p2align 3
L1958:
	cmpw	(%edi,%eax,2), %dx
	jl	L1912
	addl	$1, %eax
	cmpl	%eax, %ebx
	jl	L1957
L1695:
	movzwl	(%esi,%eax,2), %edx
	cmpw	%dx, (%ecx,%eax,2)
	jle	L1958
L1912:
	movl	44(%esp), %edi
L1694:
	leal	1(%ebx), %esi
	movl	%edi, 52(%esp)
	movl	24(%esp), %edx
	movl	%ebp, 56(%esp)
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	%esi, %edi
	movl	%ebx, 44(%esp)
	jmp	L1697
	.p2align 4,,10
	.p2align 3
L1959:
	movl	__ZL5uwall.lto_priv.0, %ecx
L1697:
	leal	(%eax,%edx,2), %ebx
	movzwl	(%ecx,%edx,2), %esi
	movzwl	(%ebx), %ecx
	cmpw	%cx, %si
	jge	L1696
	movl	__ZL5umost.lto_priv.0, %ebp
	cmpw	0(%ebp,%edx,2), %cx
	jl	L1696
	movw	%si, (%ebx)
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	__ZL5umost.lto_priv.0, %ecx
	movzwl	(%eax,%edx,2), %ebx
	cmpw	%bx, (%ecx,%edx,2)
	jle	L1696
	subw	$1, __ZL7numhits.lto_priv.0
	.p2align 4
	.p2align 3
L1696:
	addl	$1, %edx
	cmpl	%edi, %edx
	jne	L1959
L1913:
	movl	44(%esp), %ebx
	movl	52(%esp), %edi
	movl	$1, 44(%esp)
	movl	56(%esp), %ebp
L1698:
	movl	84(%esp), %esi
	cmpl	%esi, 80(%esp)
	jle	L1703
L1709:
	movl	24(%esp), %esi
	movl	%ebx, %eax
	movl	__ZL8smostcnt.lto_priv.0, %edx
	subl	%esi, %eax
	addl	$1, %eax
	leal	(%edx,%eax), %esi
	cmpl	__ZL8ysavecnt.lto_priv.0, %esi
	jl	L1960
L1676:
	cmpw	$0, __ZL7numhits.lto_priv.0
	js	L1461
	testb	$32, 14(%edi)
	jne	L1725
	movl	48(%esp), %eax
	movl	32(%esp), %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %eax
	movzbl	_gotsector(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%cl, %al
	je	L1611
	movl	__ZL5dmost.lto_priv.0, %edx
	movl	__ZL5umost.lto_priv.0, %eax
	movzwl	(%edx,%ebx,2), %esi
	cmpw	%si, (%eax,%ebx,2)
	jge	L1961
	movzwl	48(%esp), %eax
	movw	%ax, _sectorborder
	call	__ZL17classicScanSectors.part.0.lto_priv.0
	movzwl	14(%edi), %eax
	andl	$32, %eax
L1730:
	testw	%ax, %ax
	je	L1611
	.p2align 4
	.p2align 3
L1725:
	movswl	18(%edi), %edx
	movl	%edi, %eax
	call	__ZL19setup_globals_wall1PK11uwalltypev7i.lto_priv.0
	movl	36(%esp), %eax
	movl	4(%eax), %ecx
	movl	28(%esp), %eax
	movzbl	32(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZL19setup_globals_wall2PK11uwalltypev7hii.lto_priv.0
	movl	44(%esp), %eax
	testl	%eax, %eax
	jne	L1734
	jmp	L1733
	.p2align 4,,10
	.p2align 3
L1941:
	movl	_yax_globalcf, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	movl	40(%esp), %eax
	sete	%dl
	call	_yax_getnextwall
	testw	%ax, %ax
	js	L1625
	cwtl
	sall	$5, %eax
	addl	_wall, %eax
	cmpw	$0, 12(%eax)
	js	L1625
	movl	$1, _yax_nomaskdidit
	movl	32(%esp), %esi
	testl	%esi, %esi
	js	L1626
	testb	$32, 14(%edi)
	je	L1611
	movswl	18(%edi), %edx
	movl	%edi, %eax
	call	__ZL19setup_globals_wall1PK11uwalltypev7i.lto_priv.0
	movl	36(%esp), %eax
	movl	4(%eax), %ecx
	movl	28(%esp), %eax
	movzbl	32(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZL19setup_globals_wall2PK11uwalltypev7hii.lto_priv.0
	jmp	L1733
	.p2align 4,,10
	.p2align 3
L1939:
	movl	24(%esp), %edi
	cmpl	%ebx, %edi
	jge	L1608
	movl	%edi, %edx
	jmp	L1610
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1962:
	addl	$1, %edx
	cmpl	%edx, %ebx
	je	L1608
L1610:
	movzwl	(%ecx,%edx,2), %edi
	cmpw	%di, (%eax,%edx,2)
	jge	L1962
	cmpl	%edx, %ebx
	jg	L1607
	.p2align 4
	.p2align 3
L1608:
	movl	__ZL12smostwallcnt.lto_priv.0, %eax
	movb	$0, __ZL13smostwalltype.lto_priv.0(%eax)
	movl	%ebp, __ZL9smostwall.lto_priv.0(,%eax,4)
	addl	$1, %eax
	movl	%eax, __ZL12smostwallcnt.lto_priv.0
	jmp	L1611
	.p2align 4,,10
	.p2align 3
L1945:
	movl	_searchx, %eax
	movl	24(%esp), %edi
	cmpl	%edi, %eax
	jl	L1611
	cmpl	%ebx, %eax
	jg	L1611
	movl	__ZL4uplc.lto_priv.0, %ecx
	movl	_searchy, %edx
	movswl	(%ecx,%eax,2), %ecx
	cmpl	%edx, %ecx
	jg	L1611
	movl	__ZL4dplc.lto_priv.0, %ecx
	movswl	(%ecx,%eax,2), %eax
	cmpl	%eax, %edx
	jge	L1611
	movl	$1, %eax
	movw	%ax, _searchit
	movzwl	100(%esp), %eax
	movw	%ax, _searchsector
	movzwl	64(%esp), %eax
	movw	%ax, _searchwall
	movl	32(%esp), %eax
	notl	%eax
	shrl	$31, %eax
	sall	$2, %eax
	movw	%ax, _searchstat
	jmp	L1611
	.p2align 4,,10
	.p2align 3
L1943:
	movl	40(%esp), %eax
	movl	$1, %edx
	call	_yax_getnextwall
	testw	%ax, %ax
	js	L1737
	cwtl
	sall	$5, %eax
	addl	_wall, %eax
	cmpw	$0, 12(%eax)
	jns	L1963
L1737:
	movl	28(%esp), %edi
	movl	_globalposz, %eax
	cmpl	%eax, 4(%edi)
	jle	L1741
L1944:
	movl	40(%esp), %eax
	xorl	%edx, %edx
	call	_yax_getnextwall
	testw	%ax, %ax
	js	L1741
	cwtl
	sall	$5, %eax
	addl	_wall, %eax
	cmpw	$0, 12(%eax)
	js	L1741
	cmpl	%ebx, 24(%esp)
	jg	L1738
	movl	%ebp, 40(%esp)
	movl	24(%esp), %edx
	leal	1(%ebx), %edi
	movl	%ebx, 36(%esp)
	movl	__ZL5dmost.lto_priv.0, %eax
	.p2align 4
	.p2align 3
L1745:
	movl	__ZL4uplc.lto_priv.0, %ecx
	leal	(%eax,%edx,2), %ebx
	movzwl	(%ecx,%edx,2), %esi
	movzwl	(%ebx), %ecx
	cmpw	%cx, %si
	jge	L1744
	movl	__ZL5umost.lto_priv.0, %ebp
	cmpw	0(%ebp,%edx,2), %cx
	jl	L1744
	movw	%si, (%ebx)
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	__ZL5umost.lto_priv.0, %ecx
	movzwl	(%eax,%edx,2), %ebx
	cmpw	%bx, (%ecx,%edx,2)
	jle	L1744
	subw	$1, __ZL7numhits.lto_priv.0
	.p2align 4
	.p2align 3
L1744:
	addl	$1, %edx
	cmpl	%edi, %edx
	jne	L1745
	movl	36(%esp), %ebx
	movl	40(%esp), %ebp
	jmp	L1738
	.p2align 4,,10
	.p2align 3
L1691:
	cmpl	$7, %eax
	jg	L1964
	movl	24(%esp), %eax
	cmpl	%ebx, %eax
	jg	L1711
	movl	__ZL4dplc.lto_priv.0, %ecx
	movl	%edi, 44(%esp)
	movl	__ZL5uwall.lto_priv.0, %esi
	movl	__ZL5umost.lto_priv.0, %edx
	movl	%ecx, %edi
	jmp	L1712
	.p2align 4,,10
	.p2align 3
L1966:
	cmpw	(%edi,%eax,2), %cx
	jl	L1915
	addl	$1, %eax
	cmpl	%eax, %ebx
	jl	L1965
L1712:
	movzwl	(%edx,%eax,2), %ecx
	cmpw	%cx, (%esi,%eax,2)
	jle	L1966
L1915:
	movl	44(%esp), %edi
L1708:
	leal	1(%ebx), %eax
	movl	%ebx, 52(%esp)
	movl	24(%esp), %ecx
	movl	%edi, 88(%esp)
	movl	%ebp, 92(%esp)
	movl	%eax, 44(%esp)
	movl	__ZL5dmost.lto_priv.0, %eax
	.p2align 4
	.p2align 3
L1714:
	leal	(%eax,%ecx,2), %edi
	movzwl	(%edi), %esi
	cmpw	%si, (%edx,%ecx,2)
	jg	L1713
	movl	__ZL5uwall.lto_priv.0, %ebx
	movl	__ZL4dplc.lto_priv.0, %ebp
	movzwl	(%ebx,%ecx,2), %ebx
	movzwl	0(%ebp,%ecx,2), %ebp
	cmpw	%bp, %bx
	cmovg	%ebp, %ebx
	cmpw	%bx, %si
	jle	L1713
	movw	%bx, (%edi)
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	__ZL5umost.lto_priv.0, %edx
	movzwl	(%eax,%ecx,2), %ebx
	cmpw	%bx, (%edx,%ecx,2)
	jle	L1713
	subw	$1, __ZL7numhits.lto_priv.0
	.p2align 4
	.p2align 3
L1713:
	addl	$1, %ecx
	cmpl	%ecx, 44(%esp)
	jne	L1714
	movl	52(%esp), %ebx
	movl	88(%esp), %edi
	movl	92(%esp), %ebp
L1718:
	movl	$1, 44(%esp)
L1715:
	movl	56(%esp), %esi
	cmpl	%esi, 76(%esp)
	jg	L1709
	jmp	L1698
	.p2align 4,,10
	.p2align 3
L1644:
	cmpl	$8, %eax
	jle	L1967
	movl	24(%esp), %edx
	cmpl	%ebx, %edx
	jg	L1664
	movl	__ZL4uplc.lto_priv.0, %ecx
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	%edi, 44(%esp)
	movl	__ZL5dwall.lto_priv.0, %esi
	movl	%ecx, %edi
	jmp	L1665
	.p2align 4,,10
	.p2align 3
L1969:
	cmpw	(%edi,%edx,2), %cx
	jg	L1910
	addl	$1, %edx
	cmpl	%edx, %ebx
	jl	L1968
L1665:
	movzwl	(%eax,%edx,2), %ecx
	cmpw	%cx, (%esi,%edx,2)
	jge	L1969
L1910:
	movl	44(%esp), %edi
L1661:
	leal	1(%ebx), %esi
	movl	%ebx, 104(%esp)
	movl	24(%esp), %ecx
	movl	%esi, 44(%esp)
	movl	__ZL5umost.lto_priv.0, %edx
	movl	%edi, 108(%esp)
	movl	%ebp, 112(%esp)
	.p2align 4
	.p2align 3
L1667:
	leal	(%edx,%ecx,2), %edi
	movzwl	(%edi), %esi
	cmpw	(%eax,%ecx,2), %si
	jg	L1666
	movl	__ZL4uplc.lto_priv.0, %ebx
	movl	__ZL5dwall.lto_priv.0, %ebp
	movzwl	(%ebx,%ecx,2), %ebx
	movzwl	0(%ebp,%ecx,2), %ebp
	cmpw	%bp, %bx
	cmovl	%ebp, %ebx
	cmpw	%bx, %si
	jge	L1666
	movw	%bx, (%edi)
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	__ZL5umost.lto_priv.0, %edx
	movzwl	(%eax,%ecx,2), %ebx
	cmpw	%bx, (%edx,%ecx,2)
	jle	L1666
	subw	$1, __ZL7numhits.lto_priv.0
	.p2align 4
	.p2align 3
L1666:
	movl	44(%esp), %ebx
	addl	$1, %ecx
	cmpl	%ebx, %ecx
	jne	L1667
	movl	104(%esp), %ebx
	movl	108(%esp), %edi
	movl	112(%esp), %ebp
L1670:
	movl	$1, 44(%esp)
L1637:
	movl	52(%esp), %esi
	cmpl	%esi, 92(%esp)
	jl	L1662
	jmp	L1651
	.p2align 4,,10
	.p2align 3
L1963:
	movl	24(%esp), %eax
	cmpl	%ebx, %eax
	jg	L1738
	movl	%ebp, 40(%esp)
	movl	__ZL5umost.lto_priv.0, %edx
	leal	1(%ebx), %edi
	movl	%ebx, 36(%esp)
	.p2align 4
	.p2align 3
L1740:
	movl	__ZL4dplc.lto_priv.0, %ecx
	leal	(%edx,%eax,2), %ebx
	movzwl	(%ecx,%eax,2), %esi
	movzwl	(%ebx), %ecx
	cmpw	%cx, %si
	jle	L1739
	movl	__ZL5dmost.lto_priv.0, %ebp
	cmpw	0(%ebp,%eax,2), %cx
	jg	L1739
	movw	%si, (%ebx)
	movl	__ZL5dmost.lto_priv.0, %ecx
	movl	__ZL5umost.lto_priv.0, %edx
	movzwl	(%ecx,%eax,2), %ebx
	cmpw	%bx, (%edx,%eax,2)
	jle	L1739
	subw	$1, __ZL7numhits.lto_priv.0
	.p2align 4
	.p2align 3
L1739:
	addl	$1, %eax
	cmpl	%edi, %eax
	jne	L1740
	movl	36(%esp), %ebx
	movl	40(%esp), %ebp
	jmp	L1738
	.p2align 4,,10
	.p2align 3
L1638:
	movl	24(%esp), %eax
	cmpl	%ebx, %eax
	jg	L1639
	leal	1(%ebx), %esi
	.p2align 6
	.p2align 4
	.p2align 3
L1641:
	movl	__ZL5dwall.lto_priv.0, %edx
	movl	__ZL4dplc.lto_priv.0, %ecx
	leal	(%edx,%eax,2), %edx
	movzwl	(%ecx,%eax,2), %ecx
	cmpw	%cx, (%edx)
	jle	L1640
	movw	%cx, (%edx)
L1640:
	addl	$1, %eax
	cmpl	%esi, %eax
	jne	L1641
	cmpw	$2, _searchit
	jne	L1642
L1949:
	movl	_searchx, %eax
	movl	24(%esp), %esi
	cmpl	%esi, %eax
	jl	L1642
	cmpl	%ebx, %eax
	jg	L1642
	movl	__ZL4uplc.lto_priv.0, %ecx
	movl	_searchy, %edx
	movswl	(%ecx,%eax,2), %ecx
	cmpl	%edx, %ecx
	jg	L1642
	movl	__ZL5dwall.lto_priv.0, %ecx
	movswl	(%ecx,%eax,2), %eax
	cmpl	%eax, %edx
	jg	L1642
	movzwl	100(%esp), %eax
	movl	$1, %edx
	movw	%dx, _searchit
	movw	%ax, _searchsector
	movzwl	64(%esp), %eax
	movw	%ax, _searchwall
	xorl	%eax, %eax
	movw	%ax, _searchstat
	jmp	L1642
	.p2align 4,,10
	.p2align 3
L1683:
	movl	24(%esp), %eax
	cmpl	%ebx, %eax
	jg	L1684
	leal	1(%ebx), %esi
	.p2align 6
	.p2align 4
	.p2align 3
L1686:
	movl	__ZL5uwall.lto_priv.0, %edx
	movl	__ZL4uplc.lto_priv.0, %ecx
	leal	(%edx,%eax,2), %edx
	movzwl	(%ecx,%eax,2), %ecx
	cmpw	%cx, (%edx)
	jge	L1685
	movw	%cx, (%edx)
L1685:
	addl	$1, %eax
	cmpl	%eax, %esi
	jne	L1686
	cmpw	$2, _searchit
	jne	L1687
L1955:
	movl	_searchx, %eax
	movl	24(%esp), %esi
	cmpl	%esi, %eax
	jl	L1687
	cmpl	%ebx, %eax
	jg	L1687
	movl	__ZL4dplc.lto_priv.0, %ecx
	movl	_searchy, %edx
	movswl	(%ecx,%eax,2), %ecx
	cmpl	%edx, %ecx
	jl	L1687
	movl	__ZL5uwall.lto_priv.0, %ecx
	movswl	(%ecx,%eax,2), %eax
	cmpl	%eax, %edx
	jl	L1687
	movzwl	100(%esp), %eax
	movw	%ax, _searchsector
	movzwl	64(%esp), %eax
	movw	%ax, _searchwall
	xorl	%eax, %eax
	movw	%ax, _searchstat
	movl	$1, %eax
	movw	%ax, _searchit
	jmp	L1687
L1968:
	movl	44(%esp), %edi
L1664:
	movl	60(%esp), %eax
	addl	_sector, %eax
	testb	$2, 12(%eax)
	je	L1970
	movl	_globalposy, %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	_globalposx, %edx
	movl	%edx, 4(%esp)
	call	_getceilzofslopeptr.part.0
L1669:
	cmpl	%eax, _globalposz
	jl	L1670
	movl	24(%esp), %eax
	cmpl	%ebx, %eax
	jg	L1670
	movl	%ebx, 44(%esp)
	leal	1(%ebx), %esi
	movl	__ZL5umost.lto_priv.0, %edx
	movl	%edi, 104(%esp)
	movl	%ebp, 108(%esp)
	movl	%esi, %ebp
	.p2align 4
	.p2align 3
L1672:
	movl	__ZL4uplc.lto_priv.0, %ecx
	leal	(%edx,%eax,2), %ebx
	movzwl	(%ecx,%eax,2), %esi
	movzwl	(%ebx), %ecx
	cmpw	%cx, %si
	jle	L1671
	movl	__ZL5dmost.lto_priv.0, %edi
	cmpw	(%edi,%eax,2), %cx
	jg	L1671
	movw	%si, (%ebx)
	movl	__ZL5dmost.lto_priv.0, %edi
	movl	__ZL5umost.lto_priv.0, %edx
	movzwl	(%edi,%eax,2), %ebx
	cmpw	%bx, (%edx,%eax,2)
	jle	L1671
	subw	$1, __ZL7numhits.lto_priv.0
	.p2align 4
	.p2align 3
L1671:
	addl	$1, %eax
	cmpl	%ebp, %eax
	jne	L1672
	movl	44(%esp), %ebx
	movl	104(%esp), %edi
	movl	108(%esp), %ebp
	jmp	L1670
L1965:
	movl	44(%esp), %edi
L1711:
	movl	60(%esp), %eax
	addl	_sector, %eax
	testb	$2, 14(%eax)
	je	L1971
	movl	_globalposy, %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	_globalposx, %edx
	movl	%edx, 4(%esp)
	call	_getflorzofslopeptr.part.0
L1717:
	cmpl	%eax, _globalposz
	jg	L1718
	movl	24(%esp), %edx
	cmpl	%ebx, %edx
	jg	L1718
	movl	%ebp, 88(%esp)
	leal	1(%ebx), %esi
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	%ebx, 44(%esp)
	movl	%edi, 52(%esp)
	movl	%esi, %edi
	.p2align 4
	.p2align 3
L1720:
	movl	__ZL4dplc.lto_priv.0, %ecx
	leal	(%eax,%edx,2), %ebx
	movzwl	(%ecx,%edx,2), %esi
	movzwl	(%ebx), %ecx
	cmpw	%cx, %si
	jge	L1719
	movl	__ZL5umost.lto_priv.0, %ebp
	cmpw	0(%ebp,%edx,2), %cx
	jl	L1719
	movw	%si, (%ebx)
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	__ZL5umost.lto_priv.0, %ecx
	movzwl	(%eax,%edx,2), %ebx
	cmpw	%bx, (%ecx,%edx,2)
	jle	L1719
	subw	$1, __ZL7numhits.lto_priv.0
	.p2align 4
	.p2align 3
L1719:
	addl	$1, %edx
	cmpl	%edx, %edi
	jne	L1720
	movl	44(%esp), %ebx
	movl	52(%esp), %edi
	movl	88(%esp), %ebp
	jmp	L1718
	.p2align 4,,10
	.p2align 3
L1960:
	movl	__ZL12smostwallcnt.lto_priv.0, %ecx
	movb	$2, __ZL13smostwalltype.lto_priv.0(%ecx)
	movl	%edx, __ZL10smoststart.lto_priv.0(,%ecx,4)
	movl	%ebp, __ZL9smostwall.lto_priv.0(,%ecx,4)
	addl	$1, %ecx
	movl	%ecx, __ZL12smostwallcnt.lto_priv.0
	leal	(%eax,%eax), %ecx
	movl	__ZL5smost.lto_priv.0, %eax
	leal	(%eax,%edx,2), %eax
	movl	24(%esp), %edx
	movl	%eax, 52(%esp)
	movl	__ZL5dmost.lto_priv.0, %eax
	leal	(%eax,%edx,2), %eax
	movl	52(%esp), %edx
	call	_copybufbyte
	movl	%esi, __ZL8smostcnt.lto_priv.0
	jmp	L1676
	.p2align 4,,10
	.p2align 3
L1953:
	movl	__ZL12smostwallcnt.lto_priv.0, %ecx
	movb	$1, __ZL13smostwalltype.lto_priv.0(%ecx)
	movl	%edx, __ZL10smoststart.lto_priv.0(,%ecx,4)
	movl	%ebp, __ZL9smostwall.lto_priv.0(,%ecx,4)
	addl	$1, %ecx
	movl	%ecx, __ZL12smostwallcnt.lto_priv.0
	leal	(%eax,%eax), %ecx
	movl	__ZL5smost.lto_priv.0, %eax
	leal	(%eax,%edx,2), %eax
	movl	24(%esp), %edx
	movl	%eax, 76(%esp)
	movl	__ZL5umost.lto_priv.0, %eax
	leal	(%eax,%edx,2), %eax
	movl	76(%esp), %edx
	call	_copybufbyte
	movl	%esi, __ZL8smostcnt.lto_priv.0
	jmp	L1630
	.p2align 4,,10
	.p2align 3
L1956:
	movl	%edi, %edx
	movl	%ebp, %eax
	call	__ZL8prepwalliPK11uwalltypev7.lto_priv.0
	jmp	L1689
L1957:
	movl	44(%esp), %edi
L1693:
	movl	60(%esp), %eax
	addl	_sector, %eax
	testb	$2, 14(%eax)
	je	L1972
	movl	_globalposy, %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	_globalposx, %edx
	movl	%edx, 4(%esp)
	call	_getflorzofslopeptr.part.0
L1701:
	cmpl	%eax, _globalposz
	jle	L1973
L1699:
	movl	$1, 44(%esp)
L1703:
	movl	_globalposz, %eax
	cmpl	%eax, 132(%esp)
	jge	L1676
	jmp	L1709
L1950:
	movl	92(%esp), %edi
L1646:
	movl	60(%esp), %eax
	addl	_sector, %eax
	testb	$2, 12(%eax)
	je	L1974
	movl	_globalposy, %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	_globalposx, %edx
	movl	%edx, 4(%esp)
	call	_getceilzofslopeptr.part.0
L1654:
	cmpl	%eax, _globalposz
	jge	L1975
L1652:
	movl	$1, 44(%esp)
L1656:
	movl	_globalposz, %eax
	cmpl	%eax, 152(%esp)
	jle	L1630
	jmp	L1662
	.p2align 4,,10
	.p2align 3
L1948:
	movl	60(%esp), %eax
	addl	_sector, %eax
	testb	$2, 12(%eax)
	je	L1976
	movl	_globalposy, %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	_globalposx, %edx
	movl	%edx, 4(%esp)
	call	_getceilzofslopeptr.part.0
	cmpl	%eax, _globalposz
	jge	L1977
L1634:
	movl	$0, 44(%esp)
	jmp	L1637
	.p2align 4,,10
	.p2align 3
L1954:
	movl	60(%esp), %eax
	addl	_sector, %eax
	testb	$2, 14(%eax)
	je	L1978
	movl	_globalposy, %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	_globalposx, %edx
	movl	%edx, 4(%esp)
	call	_getflorzofslopeptr.part.0
L1679:
	cmpl	%eax, _globalposz
	jg	L1715
	movl	24(%esp), %edx
	cmpl	%ebx, %edx
	jg	L1715
	movl	%ebp, 92(%esp)
	leal	1(%ebx), %esi
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	%ebx, 52(%esp)
	movl	%edi, 88(%esp)
	movl	%esi, %edi
	.p2align 4
	.p2align 3
L1682:
	movl	__ZL4dplc.lto_priv.0, %ecx
	leal	(%eax,%edx,2), %ebx
	movzwl	(%ecx,%edx,2), %esi
	movzwl	(%ebx), %ecx
	cmpw	%cx, %si
	jge	L1681
	movl	__ZL5umost.lto_priv.0, %ebp
	cmpw	0(%ebp,%edx,2), %cx
	jl	L1681
	movw	%si, (%ebx)
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	__ZL5umost.lto_priv.0, %ecx
	movzwl	(%eax,%edx,2), %ebx
	cmpw	%bx, (%ecx,%edx,2)
	jle	L1681
	subw	$1, __ZL7numhits.lto_priv.0
	.p2align 4
	.p2align 3
L1681:
	addl	$1, %edx
	cmpl	%edi, %edx
	jne	L1682
	movl	52(%esp), %ebx
	movl	88(%esp), %edi
	movl	92(%esp), %ebp
	jmp	L1715
	.p2align 4,,10
	.p2align 3
L1961:
	movl	24(%esp), %ecx
	movl	%ecx, %esi
	cmpl	%ebx, %ecx
	jl	L1728
	jmp	L1729
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1731:
	addl	$1, %esi
	cmpl	%esi, %ebx
	je	L1732
L1728:
	movzwl	(%edx,%esi,2), %ecx
	cmpw	%cx, (%eax,%esi,2)
	jge	L1731
	movzwl	48(%esp), %eax
	movw	%ax, _sectorborder
	call	__ZL17classicScanSectors.part.0.lto_priv.0
L1729:
	cmpl	%esi, %ebx
	je	L1732
L1929:
	movzwl	14(%edi), %eax
	andl	$32, %eax
	jmp	L1730
	.p2align 4,,10
	.p2align 3
L1964:
	movl	__ZL5umost.lto_priv.0, %edx
	cmpl	%ebx, 24(%esp)
	jle	L1708
	movl	$1, 44(%esp)
	jmp	L1709
	.p2align 4,,10
	.p2align 3
L1967:
	movl	__ZL5dmost.lto_priv.0, %eax
	cmpl	%ebx, 24(%esp)
	jle	L1661
	movl	$1, 44(%esp)
	jmp	L1662
L1971:
	movl	8(%eax), %eax
	jmp	L1717
L1970:
	movl	4(%eax), %eax
	jmp	L1669
L1462:
	movl	_g_nodraw, %edi
	testl	%edi, %edi
	je	L1461
	movb	$12, 44(%esp)
	movl	$3, %ebx
L1465:
	movl	96(%esp), %ebp
	movl	_yax_globallev, %esi
	movl	%ebp, %eax
	call	_yax_getbunch.constprop.1
	movswl	%ax, %edi
	movl	%ebp, %eax
	movw	%di, 136(%esp)
	notl	%edi
	call	_yax_getbunch.constprop.0
	shrl	$31, %edi
	movw	%ax, 138(%esp)
	cwtl
	notl	%eax
	shrl	$31, %eax
	leal	(%edi,%eax,2), %edi
	cmpl	$8, %esi
	je	L1468
	movl	_yax_globalcf, %ecx
	movl	$1, %eax
	sall	%cl, %eax
	andl	%eax, %edi
L1468:
	movl	%edi, %eax
	andl	$-2, %eax
	cmpb	$3, %bl
	cmove	%eax, %edi
	movl	%edi, %eax
	andl	$-3, %eax
	cmpb	$12, 44(%esp)
	cmove	%eax, %edi
	testl	$1, %edi
	jne	L1979
L1480:
	movl	%edi, %ebx
	sarl	%ebx
	jne	L1481
L1920:
	movl	32(%esp), %eax
	movswl	_bunchfirst(%eax,%eax), %edx
	movl	%edx, %ebp
	jmp	L1482
L1978:
	movl	8(%eax), %eax
	jmp	L1679
L1976:
	movl	4(%eax), %eax
	cmpl	%eax, _globalposz
	jl	L1634
L1977:
	movl	24(%esp), %eax
	cmpl	%ebx, %eax
	jg	L1634
	movl	%ebx, 44(%esp)
	leal	1(%ebx), %esi
	movl	__ZL5umost.lto_priv.0, %edx
	movl	%edi, 104(%esp)
	movl	%ebp, 108(%esp)
	movl	%esi, %ebp
	.p2align 4
	.p2align 3
L1636:
	movl	__ZL4uplc.lto_priv.0, %ecx
	leal	(%edx,%eax,2), %ebx
	movzwl	(%ecx,%eax,2), %esi
	movzwl	(%ebx), %ecx
	cmpw	%cx, %si
	jle	L1635
	movl	__ZL5dmost.lto_priv.0, %edi
	cmpw	(%edi,%eax,2), %cx
	jg	L1635
	movw	%si, (%ebx)
	movl	__ZL5dmost.lto_priv.0, %edi
	movl	__ZL5umost.lto_priv.0, %edx
	movzwl	(%edi,%eax,2), %ebx
	cmpw	%bx, (%edx,%eax,2)
	jle	L1635
	subw	$1, __ZL7numhits.lto_priv.0
	.p2align 4
	.p2align 3
L1635:
	addl	$1, %eax
	cmpl	%eax, %ebp
	jne	L1636
	movl	44(%esp), %ebx
	movl	104(%esp), %edi
	movl	108(%esp), %ebp
	jmp	L1634
L1549:
	movl	%ebx, %edx
	movl	$1, %eax
	call	__ZL8parascanci
	movswl	_bunchfirst(%ebx,%ebx), %ebp
	jmp	L1482
L1938:
	movl	32(%esp), %eax
	movl	_xb1(,%ebp,4), %edi
	movswl	_bunchlast(%eax,%eax), %eax
	movl	__ZL3xb2.lto_priv.0(,%eax,4), %eax
	movl	%eax, 40(%esp)
	movl	60(%esp), %eax
	addl	_sector, %eax
	movl	4(%eax), %ecx
	movzbl	21(%eax), %edx
	movl	%edi, 20(%esp)
	movzbl	23(%eax), %ebx
	subl	_globalposz, %ecx
	movl	%ebx, 16(%esp)
	movzbl	22(%eax), %ebx
	movl	%ebx, 12(%esp)
	movzwl	12(%eax), %ebx
	movl	%ebx, 8(%esp)
	movsbl	20(%eax), %ebx
	movl	%ebx, 4(%esp)
	movswl	16(%eax), %ebx
	movl	%ebx, (%esp)
	call	__ZL17setup_globals_cf1PK13usectortypev7iiiiiiii
	testl	%eax, %eax
	jne	L1483
	leal	(%edi,%edi), %eax
	movl	%eax, 24(%esp)
	movl	_globalorientation, %eax
	andl	$384, %eax
	je	L1980
	cmpl	$256, %eax
	je	L1517
	cmpl	$384, %eax
	je	L1518
	movswl	_globalpicnum, %eax
	movzbl	_picsiz(%eax), %eax
	movl	%eax, %edx
	andl	$15, %eax
	shrb	$4, %dl
	movl	%eax, (%esp)
	movzbl	%dl, %edx
	movl	%edx, 4(%esp)
	call	_msethlineshift
L1519:
	cmpl	%edi, 40(%esp)
	jl	L1489
	movl	24(%esp), %ebx
	movl	__ZL5umost.lto_priv.0, %eax
	movswl	(%eax,%ebx), %esi
	movl	%esi, %ebx
	movl	%esi, %ebp
	.p2align 4
	.p2align 3
L1541:
	movl	24(%esp), %ecx
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	__ZL4uplc.lto_priv.0, %edx
	movzwl	(%eax,%ecx), %eax
	movzwl	(%edx,%ecx), %edx
	cmpw	%dx, %ax
	movl	%edx, %ecx
	cmovle	%eax, %ecx
	cmpw	%bp, %cx
	jg	L1522
	subl	$1, %ebx
	leal	-1(%edi), %ebp
	cmpl	%esi, %ebx
	jle	L1524
	.p2align 4
	.p2align 3
L1537:
	addl	$1, %esi
	movl	%ebp, %eax
	movl	%esi, %edx
	call	__ZL9slowhlineii
	cmpl	%ebx, %esi
	jne	L1537
L1524:
	cmpl	%edi, 40(%esp)
	je	L1981
	movl	24(%esp), %ebx
	movl	__ZL5umost.lto_priv.0, %eax
	movswl	2(%eax,%ebx), %esi
	movl	%esi, %ebx
L1534:
	movl	_globaly2, %eax
	addl	$1, %edi
	addl	%eax, __ZL8globalx2.lto_priv.0
	movl	_globalx1, %eax
	addl	%eax, __ZL8globaly1.lto_priv.0
	cmpl	%edi, 40(%esp)
	jl	L1540
	movl	__ZL5umost.lto_priv.0, %eax
	movl	24(%esp), %ecx
	movzwl	2(%eax,%ecx), %ebp
	leal	(%edi,%edi), %eax
	movl	%eax, 24(%esp)
	jmp	L1541
L1979:
	xorl	%ebx, %ebx
L1481:
	movswl	136(%esp,%ebx,2), %eax
	movl	%eax, %edx
	movl	%eax, %ebp
	movl	%eax, %esi
	andl	$7, %edx
	sarl	$3, %ebp
	movzbl	__ZL8pow2char.lto_priv.7(%edx), %edx
	movzbl	_haveymost(%ebp), %ecx
	movb	%dl, 24(%esp)
	movl	_xdimen, %edx
	movb	%cl, 36(%esp)
	notl	%ecx
	imull	%edx, %esi
	testb	%cl, 24(%esp)
	jne	L1982
L1473:
	movl	32(%esp), %ecx
	movswl	_bunchfirst(%ecx,%ecx), %edx
	movswl	_bunchlast(%ecx,%ecx), %ecx
	movl	_xb1(,%edx,4), %eax
	cmpl	__ZL3xb2.lto_priv.0(,%ecx,4), %eax
	jg	L1471
	leal	(%eax,%esi), %ecx
	addl	%eax, %eax
	testl	%ebx, %ebx
	je	L1476
	.p2align 4
	.p2align 3
L1477:
	movl	__ZL4dplc.lto_priv.0, %edx
	movl	__ZL6yumost.lto_priv.0, %edi
	leal	(%ecx,%ecx), %ebx
	movzwl	(%edx,%eax), %ebp
	movl	__ZL5umost.lto_priv.0, %edx
	addl	%ebx, %edi
	movzwl	(%edx,%eax), %edx
	cmpw	%dx, %bp
	cmovge	%ebp, %edx
	movzwl	(%edi), %ebp
	cmpw	%bp, %dx
	cmovg	%ebp, %edx
	movw	%dx, (%edi)
	movl	__ZL5dmost.lto_priv.0, %edi
	addl	__ZL6ydmost.lto_priv.0, %ebx
	movzwl	(%ebx), %edx
	movzwl	(%edi,%eax), %edi
	cmpw	%di, %dx
	cmovl	%edi, %edx
	addl	$1, %ecx
	addl	$2, %eax
	movw	%dx, (%ebx)
	movl	32(%esp), %ebx
	movswl	_bunchlast(%ebx,%ebx), %edx
	movl	__ZL3xb2.lto_priv.0(,%edx,4), %ebx
	addl	%esi, %ebx
	cmpl	%ecx, %ebx
	jge	L1477
	jmp	L1920
L1471:
	cmpl	$1, %ebx
	jne	L1480
	movl	%edx, %ebp
	jmp	L1482
L1732:
	movl	72(%esp), %eax
	movl	%eax, __ZL8smostcnt.lto_priv.0
	movl	68(%esp), %eax
	movb	$0, __ZL13smostwalltype.lto_priv.0(%eax)
	movl	%ebp, __ZL9smostwall.lto_priv.0(,%eax,4)
	addl	$1, %eax
	movl	%eax, __ZL12smostwallcnt.lto_priv.0
	jmp	L1929
L1946:
	movl	60(%esp), %eax
	addl	_sector, %eax
	testb	$2, 12(%eax)
	je	L1983
	movl	_globalposy, %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	_globalposx, %edx
	movl	%edx, 4(%esp)
	call	_getceilzofslopeptr.part.0
L1618:
	cmpl	%eax, _globalposz
	jge	L1619
L1924:
	movl	_searchx, %eax
	movl	_searchy, %ecx
	addl	%eax, %eax
	movl	%eax, 44(%esp)
	jmp	L1615
L1692:
	movl	__ZL5uwall.lto_priv.0, %ecx
	cmpl	%ebx, 24(%esp)
	jle	L1694
	jmp	L1699
L1645:
	movl	__ZL5dwall.lto_priv.0, %ecx
	cmpl	%ebx, 24(%esp)
	jle	L1647
	jmp	L1652
L1972:
	movl	8(%eax), %eax
	jmp	L1701
L1974:
	movl	4(%eax), %eax
	jmp	L1654
L1975:
	cmpl	%ebx, 24(%esp)
	jg	L1652
	movl	%ebx, 44(%esp)
	leal	1(%ebx), %esi
	movl	24(%esp), %eax
	movl	%edi, 92(%esp)
	movl	__ZL5umost.lto_priv.0, %edx
	movl	%ebp, 104(%esp)
	movl	%esi, %ebp
	.p2align 4
	.p2align 3
L1658:
	movl	__ZL4uplc.lto_priv.0, %ecx
	leal	(%edx,%eax,2), %ebx
	movzwl	(%ecx,%eax,2), %esi
	movzwl	(%ebx), %ecx
	cmpw	%cx, %si
	jle	L1657
	movl	__ZL5dmost.lto_priv.0, %edi
	cmpw	(%edi,%eax,2), %cx
	jg	L1657
	movw	%si, (%ebx)
	movl	__ZL5dmost.lto_priv.0, %edi
	movl	__ZL5umost.lto_priv.0, %edx
	movzwl	(%edi,%eax,2), %ebx
	cmpw	%bx, (%edx,%eax,2)
	jle	L1657
	subw	$1, __ZL7numhits.lto_priv.0
	.p2align 4
	.p2align 3
L1657:
	addl	$1, %eax
	cmpl	%ebp, %eax
	jne	L1658
	jmp	L1908
L1973:
	cmpl	%ebx, 24(%esp)
	jg	L1699
	movl	%ebp, 56(%esp)
	leal	1(%ebx), %esi
	movl	24(%esp), %edx
	movl	%ebx, 44(%esp)
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	%edi, 52(%esp)
	movl	%esi, %edi
	.p2align 4
	.p2align 3
L1705:
	movl	__ZL4dplc.lto_priv.0, %ecx
	leal	(%eax,%edx,2), %ebx
	movzwl	(%ecx,%edx,2), %esi
	movzwl	(%ebx), %ecx
	cmpw	%cx, %si
	jge	L1704
	movl	__ZL5umost.lto_priv.0, %ebp
	cmpw	0(%ebp,%edx,2), %cx
	jl	L1704
	movw	%si, (%ebx)
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	__ZL5umost.lto_priv.0, %ecx
	movzwl	(%eax,%edx,2), %ebx
	cmpw	%bx, (%ecx,%edx,2)
	jle	L1704
	subw	$1, __ZL7numhits.lto_priv.0
	.p2align 4
	.p2align 3
L1704:
	addl	$1, %edx
	cmpl	%edi, %edx
	jne	L1705
	jmp	L1913
L1934:
	movswl	_bunchlast(%ebx,%ebx), %eax
	movl	96(%esp), %ecx
	movl	__ZL3xb2.lto_priv.0(,%eax,4), %edx
	movswl	_bunchfirst(%ebx,%ebx), %eax
	movl	_xb1(,%eax,4), %eax
	movl	$1, (%esp)
	call	__ZL8grouscaniiic
	movswl	_bunchfirst(%ebx,%ebx), %ebp
	jmp	L1482
L1937:
	movl	32(%esp), %eax
	movl	96(%esp), %ecx
	movswl	_bunchlast(%eax,%eax), %eax
	movl	__ZL3xb2.lto_priv.0(,%eax,4), %edx
	movl	_xb1(,%ebp,4), %eax
	movl	$0, (%esp)
	call	__ZL8grouscaniiic
	jmp	L1483
L1982:
	movzbl	24(%esp), %ecx
	addl	%esi, %edx
	orb	36(%esp), %cl
	movb	%cl, _haveymost(%ebp)
	cmpl	%esi, %edx
	jle	L1473
	addl	$1, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L1475:
	movl	__ZL6yumost.lto_priv.0, %edx
	movl	_ydimen, %ecx
	movw	%cx, (%edx,%esi,2)
	movl	__ZL6ydmost.lto_priv.0, %edx
	xorl	%ecx, %ecx
	movw	%cx, (%edx,%esi,2)
	movl	_xdimen, %edx
	addl	$1, %esi
	movl	%edx, %ecx
	imull	%eax, %ecx
	cmpl	%esi, %ecx
	jg	L1475
	movl	%ecx, %esi
	subl	%edx, %esi
	jmp	L1473
L1476:
	movl	%edi, 24(%esp)
	.p2align 4
	.p2align 3
L1479:
	movl	__ZL6yumost.lto_priv.0, %edi
	movl	__ZL5umost.lto_priv.0, %ebp
	leal	(%ecx,%ecx), %edx
	addl	%edx, %edi
	movzwl	0(%ebp,%eax), %ebp
	movzwl	(%edi), %ebx
	cmpw	%bp, %bx
	cmovg	%ebp, %ebx
	movw	%bx, (%edi)
	movl	__ZL5dmost.lto_priv.0, %ebx
	addl	__ZL6ydmost.lto_priv.0, %edx
	movzwl	(%ebx,%eax), %edi
	movl	__ZL4uplc.lto_priv.0, %ebx
	movzwl	(%ebx,%eax), %ebx
	cmpw	%bx, %di
	cmovle	%edi, %ebx
	movzwl	(%edx), %edi
	cmpw	%di, %bx
	cmovl	%edi, %ebx
	addl	$1, %ecx
	addl	$2, %eax
	movw	%bx, (%edx)
	movl	32(%esp), %ebx
	movswl	_bunchlast(%ebx,%ebx), %edx
	movl	__ZL3xb2.lto_priv.0(,%edx,4), %ebx
	addl	%esi, %ebx
	cmpl	%ecx, %ebx
	jge	L1479
	movl	24(%esp), %edi
	jmp	L1480
L1947:
	movl	8(%eax), %eax
	jmp	L1623
L1619:
	movl	96(%esp), %eax
	call	_yax_getbunch.constprop.1
	testw	%ax, %ax
	js	L1620
	cmpb	$0, _showinvisibility
	jne	L1620
	movl	28(%esp), %eax
	testw	$384, 12(%eax)
	jne	L1620
	movl	_yax_globallev, %eax
	subl	$8, %eax
/APP
 # 4641 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	$8, %eax
	jne	L1924
L1620:
	movzwl	100(%esp), %eax
	movl	$1, %edx
	movw	%dx, _searchit
	movw	%ax, _searchsector
	movzwl	64(%esp), %eax
	movw	%ax, _searchwall
	movl	$1, %eax
	movw	%ax, _searchstat
	jmp	L1613
L1983:
	movl	4(%eax), %eax
	jmp	L1618
L1581:
	movl	_globalblend, %ecx
	testl	%ecx, %ecx
	je	L1584
	movl	_blendtable, %eax
	movl	$0, _globalblend
	movl	%eax, (%esp)
	call	_fixtransluscence
L1584:
	call	_settransreverse
L1922:
	movswl	_globalpicnum, %eax
	movzbl	_picsiz(%eax), %eax
	movl	%eax, %edx
	andl	$15, %eax
	shrb	$4, %dl
	movl	%eax, (%esp)
	movzbl	%dl, %edx
	movl	%edx, 4(%esp)
	call	_tsethlineshift
	jmp	L1582
L1518:
	movl	_globalblend, %ebp
	testl	%ebp, %ebp
	je	L1521
	movl	_blendtable, %eax
	movl	$0, _globalblend
	movl	%eax, (%esp)
	call	_fixtransluscence
L1521:
	call	_settransreverse
L1921:
	movswl	_globalpicnum, %eax
	movzbl	_picsiz(%eax), %eax
	movl	%eax, %edx
	andl	$15, %eax
	shrb	$4, %dl
	movl	%eax, (%esp)
	movzbl	%dl, %edx
	movl	%edx, 4(%esp)
	call	_tsethlineshift
	jmp	L1519
	.p2align 4,,10
	.p2align 3
L1586:
	movswl	%bp, %ecx
	leal	-1(%ecx), %edx
	movl	%ecx, 24(%esp)
	cmpl	%ebx, %edx
	jge	L1589
	leal	-1(%edi), %ebp
	cmpl	%esi, %edx
	jle	L1984
	movl	%edx, 48(%esp)
	movl	%eax, 52(%esp)
	movl	%ebx, 44(%esp)
	movl	%edx, %ebx
	.p2align 4
	.p2align 3
L1594:
	addl	$1, %esi
	movl	%ebp, %eax
	movl	%esi, %edx
	call	__ZL9slowhlineii
	cmpl	%ebx, %esi
	jne	L1594
	movl	%ebx, %edx
	movl	48(%esp), %ecx
	movl	44(%esp), %ebx
	movl	52(%esp), %eax
L1591:
	cmpl	%ecx, %edx
	jge	L1756
	movl	24(%esp), %ebp
	leal	0(,%ecx,4), %edx
	subl	$1, %ebp
	leal	0(,%ebp,4), %esi
	.p2align 5
	.p2align 4
	.p2align 3
L1596:
	movl	__ZL5lastx.lto_priv.0, %ecx
	movl	%edi, (%ecx,%edx)
	subl	$4, %edx
	cmpl	%esi, %edx
	jne	L1596
	movl	%ebp, %esi
L1595:
	leal	-1(%edi), %ebp
	cmpl	%ebx, %eax
	jge	L1985
	movl	%esi, 24(%esp)
	movl	%ebx, %esi
	movl	%eax, %ebx
	.p2align 4
	.p2align 3
L1597:
	subl	$1, %esi
	movl	%ebp, %eax
	movl	%esi, %edx
	call	__ZL9slowhlineii
	cmpl	%esi, %ebx
	jne	L1597
	movl	%esi, %ebx
	movl	24(%esp), %esi
	jmp	L1598
	.p2align 4,,10
	.p2align 3
L1522:
	movswl	%bp, %eax
	leal	-1(%eax), %edx
	movl	%eax, 36(%esp)
	movswl	%cx, %eax
	cmpl	%ebx, %edx
	jge	L1525
	leal	-1(%edi), %ebp
	movl	%esi, %ecx
	cmpl	%esi, %edx
	jle	L1527
	movl	%edx, 52(%esp)
	movl	%eax, 56(%esp)
	movl	%ebx, 48(%esp)
	movl	%edx, %ebx
	.p2align 4
	.p2align 3
L1530:
	addl	$1, %esi
	movl	%ebp, %eax
	movl	%esi, %edx
	call	__ZL9slowhlineii
	cmpl	%ebx, %esi
	jne	L1530
	movl	%ebx, %edx
	movl	52(%esp), %ecx
	movl	48(%esp), %ebx
	movl	56(%esp), %eax
L1527:
	cmpl	%ecx, %edx
	jge	L1754
	movl	36(%esp), %ebp
	leal	0(,%ecx,4), %edx
	subl	$1, %ebp
	leal	0(,%ebp,4), %esi
	.p2align 5
	.p2align 4
	.p2align 3
L1532:
	movl	__ZL5lastx.lto_priv.0, %ecx
	movl	%edi, (%ecx,%edx)
	subl	$4, %edx
	cmpl	%edx, %esi
	jne	L1532
	movl	%ebp, %esi
L1531:
	leal	-1(%edi), %ebp
	cmpl	%ebx, %eax
	jge	L1986
	movl	%esi, 36(%esp)
	movl	%ebx, %esi
	movl	%eax, %ebx
	.p2align 4
	.p2align 3
L1533:
	subl	$1, %esi
	movl	%ebp, %eax
	movl	%esi, %edx
	call	__ZL9slowhlineii
	cmpl	%esi, %ebx
	jne	L1533
	movl	%esi, %ebx
	movl	36(%esp), %esi
	jmp	L1534
L1986:
	jle	L1534
	sall	$2, %ebx
	leal	0(,%eax,4), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1536:
	movl	__ZL5lastx.lto_priv.0, %edx
	movl	%edi, (%edx,%ebx)
	addl	$4, %ebx
	cmpl	%ebx, %ecx
	jne	L1536
	movl	%eax, %ebx
	jmp	L1534
L1985:
	jle	L1598
	sall	$2, %ebx
	leal	0(,%eax,4), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1600:
	movl	__ZL5lastx.lto_priv.0, %edx
	movl	%edi, (%edx,%ebx)
	addl	$4, %ebx
	cmpl	%ecx, %ebx
	jne	L1600
	movl	%eax, %ebx
	jmp	L1598
L1525:
	leal	-1(%ebx), %ebp
	cmpl	%esi, %ebp
	jle	L1528
	movl	%edx, 36(%esp)
	movl	%eax, 52(%esp)
	movl	%ebx, 48(%esp)
	leal	-1(%edi), %ebx
	.p2align 4
	.p2align 3
L1529:
	addl	$1, %esi
	movl	%ebx, %eax
	movl	%esi, %edx
	call	__ZL9slowhlineii
	cmpl	%ebp, %esi
	jne	L1529
	movl	36(%esp), %edx
	movl	48(%esp), %ebx
	movl	52(%esp), %eax
L1528:
	movl	%edx, %esi
	jmp	L1531
L1589:
	leal	-1(%ebx), %ecx
	cmpl	%esi, %ecx
	jle	L1592
	movl	%edx, 24(%esp)
	leal	-1(%edi), %ebp
	movl	%eax, 48(%esp)
	movl	%ebx, 44(%esp)
	movl	%ecx, %ebx
	.p2align 4
	.p2align 3
L1593:
	addl	$1, %esi
	movl	%ebp, %eax
	movl	%esi, %edx
	call	__ZL9slowhlineii
	cmpl	%esi, %ebx
	jne	L1593
	movl	24(%esp), %edx
	movl	44(%esp), %ebx
	movl	48(%esp), %eax
L1592:
	movl	%edx, %esi
	jmp	L1595
L1540:
	subl	$1, %ebx
L1539:
	movl	40(%esp), %edi
	cmpl	%ebx, %esi
	jge	L1489
	.p2align 4
	.p2align 3
L1542:
	addl	$1, %esi
	movl	%edi, %eax
	movl	%esi, %edx
	call	__ZL9slowhlineii
	cmpl	%ebx, %esi
	jne	L1542
L1489:
	call	__Z16timerUpdateClockv
	cmpb	$12, 44(%esp)
	jne	L1543
	jmp	L1923
L1935:
	movl	__ZL4dplc.lto_priv.0, %eax
	movl	%edi, %ebx
	movswl	(%eax,%edi,2), %edx
	movl	__ZL5umost.lto_priv.0, %eax
	movswl	(%eax,%edi,2), %eax
	cmpw	%ax, %dx
	movl	%eax, %ecx
	cmovge	%edx, %ecx
	cmpl	%edi, 40(%esp)
	jl	L1585
	leal	-1(%edi), %edi
	movswl	%cx, %ebp
	movl	%edi, 24(%esp)
	movl	36(%esp), %edi
	movl	%ebp, %esi
	.p2align 4
	.p2align 3
L1577:
	cmpw	%ax, %dx
	cmovl	%eax, %edx
	movl	__ZL5dmost.lto_priv.0, %eax
	movswl	(%eax,%edi), %eax
	cmpw	%dx, %ax
	jg	L1553
	leal	-1(%esi), %eax
	movl	%eax, 36(%esp)
	cmpl	%ebp, %eax
	jle	L1555
	movl	%ebx, 48(%esp)
	movl	%edi, 52(%esp)
	.p2align 4
	.p2align 3
L1573:
	movl	__ZL5lastx.lto_priv.0, %eax
	addl	$1, %ebp
	movl	24(%esp), %ecx
	movl	(%eax,%ebp,4), %edi
	cmpl	%edi, %ecx
	jl	L1572
	movl	__ZL12horizlookup2.lto_priv.0, %edx
	movl	%ebp, %eax
	subl	_globalhoriz, %eax
	addl	__ZL10horizycent.lto_priv.0, %eax
	movl	(%edx,%eax,4), %ebx
	movl	_globalx1, %eax
	movl	%ebx, %edx
/APP
 # 2360 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _asm1
	movl	%ebx, %edx
	movl	_globaly2, %eax
/APP
 # 2361 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_globvis, %edx
	movl	%eax, _asm2
	movl	%ebx, %eax
/APP
 # 2362 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 44(%esp)
	movl	%ebx, %edx
	movl	__ZL8globaly1.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%ebx, %edx
	movl	__ZL8globalx2.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_ylookup, %edx
	movl	%ecx, %ebx
	addl	__ZL14globalypanning.lto_priv.0, %eax
	addl	__ZL14globalxpanning.lto_priv.0, %esi
	addl	(%edx,%ebp,4), %ecx
	movl	_frameoffset, %edx
	movl	%eax, 12(%esp)
	movl	$0, %eax
	movl	%esi, 16(%esp)
	addl	%ecx, %edx
	movl	44(%esp), %ecx
	movl	$0, 4(%esp)
	movl	%edx, 20(%esp)
	sarl	$8, %ecx
	addl	_globalshade, %ecx
	cmovs	%eax, %ecx
	movswl	_numshades, %eax
	subl	$1, %eax
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	%ebx, %eax
	subl	%edi, %eax
	sall	$8, %ecx
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	call	_hlineasm4
L1572:
	movl	36(%esp), %eax
	cmpl	%eax, %ebp
	jne	L1573
	movl	48(%esp), %ebx
	movl	52(%esp), %edi
L1555:
	cmpl	%ebx, 40(%esp)
	je	L1987
	movl	__ZL4dplc.lto_priv.0, %eax
	movl	__ZL5umost.lto_priv.0, %edx
	movzwl	2(%eax,%edi), %eax
	movzwl	2(%edx,%edi), %edx
	cmpw	%dx, %ax
	cmovl	%edx, %eax
	movswl	%ax, %ebp
	movl	%ebp, %esi
L1570:
	movl	_globaly2, %eax
	addl	$1, %ebx
	addl	%eax, __ZL8globalx2.lto_priv.0
	movl	_globalx1, %eax
	addl	%eax, __ZL8globaly1.lto_priv.0
	cmpl	%ebx, 40(%esp)
	jl	L1576
	movl	__ZL4dplc.lto_priv.0, %eax
	addl	$1, 24(%esp)
	movswl	2(%eax,%edi), %edx
	movl	__ZL5umost.lto_priv.0, %eax
	movswl	2(%eax,%edi), %eax
	leal	(%ebx,%ebx), %edi
	jmp	L1577
L1553:
	leal	-1(%edx), %ecx
	movl	%eax, 36(%esp)
	movl	%ecx, 44(%esp)
	cmpl	%esi, %ecx
	jge	L1556
	cmpl	%ebp, %ecx
	jle	L1988
	movl	%esi, 52(%esp)
	movl	%ebx, 56(%esp)
	movl	%ecx, 64(%esp)
	movl	%edi, 68(%esp)
	movl	%edx, 72(%esp)
	.p2align 4
	.p2align 3
L1563:
	movl	__ZL5lastx.lto_priv.0, %eax
	addl	$1, %ebp
	movl	24(%esp), %ecx
	movl	(%eax,%ebp,4), %edi
	cmpl	%edi, %ecx
	jl	L1562
	movl	__ZL12horizlookup2.lto_priv.0, %edx
	movl	%ebp, %eax
	subl	_globalhoriz, %eax
	addl	__ZL10horizycent.lto_priv.0, %eax
	movl	(%edx,%eax,4), %ebx
	movl	_globalx1, %eax
	movl	%ebx, %edx
/APP
 # 2360 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _asm1
	movl	%ebx, %edx
	movl	_globaly2, %eax
/APP
 # 2361 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_globvis, %edx
	movl	%eax, _asm2
	movl	%ebx, %eax
/APP
 # 2362 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 48(%esp)
	movl	%ebx, %edx
	movl	__ZL8globaly1.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%ebx, %edx
	movl	__ZL8globalx2.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_ylookup, %edx
	movl	%ecx, %ebx
	addl	__ZL14globalypanning.lto_priv.0, %eax
	addl	__ZL14globalxpanning.lto_priv.0, %esi
	addl	(%edx,%ebp,4), %ecx
	movl	_frameoffset, %edx
	movl	%eax, 12(%esp)
	movl	$0, %eax
	movl	%esi, 16(%esp)
	addl	%ecx, %edx
	movl	48(%esp), %ecx
	movl	$0, 4(%esp)
	movl	%edx, 20(%esp)
	sarl	$8, %ecx
	addl	_globalshade, %ecx
	cmovs	%eax, %ecx
	movswl	_numshades, %eax
	subl	$1, %eax
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	%ebx, %eax
	subl	%edi, %eax
	sall	$8, %ecx
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	call	_hlineasm4
L1562:
	movl	44(%esp), %eax
	cmpl	%eax, %ebp
	jne	L1563
	movl	52(%esp), %esi
	movl	56(%esp), %ebx
	movl	64(%esp), %eax
	movl	68(%esp), %edi
	movl	72(%esp), %edx
L1558:
	cmpl	%eax, 44(%esp)
	jge	L1755
	leal	-1(%edx), %ebp
	sall	$2, %eax
	leal	0(,%ebp,4), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1565:
	movl	__ZL5lastx.lto_priv.0, %edx
	movl	%ebx, (%edx,%eax)
	subl	$4, %eax
	cmpl	%ecx, %eax
	jne	L1565
L1564:
	cmpl	%esi, 36(%esp)
	jge	L1989
	movl	%ebx, 48(%esp)
	movl	%ebp, 52(%esp)
	movl	%edi, 56(%esp)
	.p2align 4
	.p2align 3
L1569:
	movl	__ZL5lastx.lto_priv.0, %eax
	subl	$1, %esi
	movl	24(%esp), %ecx
	movl	(%eax,%esi,4), %ebp
	cmpl	%ebp, %ecx
	jl	L1566
	movl	__ZL12horizlookup2.lto_priv.0, %edx
	movl	%esi, %eax
	subl	_globalhoriz, %eax
	addl	__ZL10horizycent.lto_priv.0, %eax
	movl	(%edx,%eax,4), %ebx
	movl	_globalx1, %eax
	movl	%ebx, %edx
/APP
 # 2360 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _asm1
	movl	%ebx, %edx
	movl	_globaly2, %eax
/APP
 # 2361 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_globvis, %edx
	movl	%eax, _asm2
	movl	%ebx, %eax
/APP
 # 2362 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 44(%esp)
	movl	%ebx, %edx
	movl	__ZL8globaly1.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edi
	movl	%ebx, %edx
	movl	__ZL8globalx2.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_ylookup, %edx
	movl	%ecx, %ebx
	addl	__ZL14globalypanning.lto_priv.0, %eax
	addl	__ZL14globalxpanning.lto_priv.0, %edi
	addl	(%edx,%esi,4), %ecx
	movl	_frameoffset, %edx
	movl	%eax, 12(%esp)
	movl	$0, %eax
	movl	%edi, 16(%esp)
	addl	%ecx, %edx
	movl	44(%esp), %ecx
	movl	$0, 4(%esp)
	movl	%edx, 20(%esp)
	sarl	$8, %ecx
	addl	_globalshade, %ecx
	cmovs	%eax, %ecx
	movswl	_numshades, %eax
	subl	$1, %eax
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	%ebx, %eax
	subl	%ebp, %eax
	sall	$8, %ecx
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	call	_hlineasm4
L1566:
	cmpl	%esi, 36(%esp)
	jne	L1569
	movl	48(%esp), %ebx
	movl	52(%esp), %ebp
	movl	56(%esp), %edi
	jmp	L1570
L1989:
	jle	L1570
	leal	0(,%esi,4), %eax
	movl	36(%esp), %esi
	leal	0(,%esi,4), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1571:
	movl	__ZL5lastx.lto_priv.0, %edx
	movl	%ebx, (%edx,%eax)
	addl	$4, %eax
	cmpl	%ecx, %eax
	jne	L1571
	movl	36(%esp), %esi
	jmp	L1570
L1556:
	leal	-1(%esi), %eax
	movl	%eax, 48(%esp)
	cmpl	%ebp, %eax
	jle	L1559
	movl	%esi, 56(%esp)
	movl	%ebx, 64(%esp)
	movl	%edi, 68(%esp)
	.p2align 4
	.p2align 3
L1561:
	movl	__ZL5lastx.lto_priv.0, %eax
	addl	$1, %ebp
	movl	24(%esp), %ecx
	movl	(%eax,%ebp,4), %edi
	cmpl	%edi, %ecx
	jl	L1560
	movl	__ZL12horizlookup2.lto_priv.0, %edx
	movl	%ebp, %eax
	subl	_globalhoriz, %eax
	addl	__ZL10horizycent.lto_priv.0, %eax
	movl	(%edx,%eax,4), %ebx
	movl	_globalx1, %eax
	movl	%ebx, %edx
/APP
 # 2360 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _asm1
	movl	%ebx, %edx
	movl	_globaly2, %eax
/APP
 # 2361 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_globvis, %edx
	movl	%eax, _asm2
	movl	%ebx, %eax
/APP
 # 2362 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 52(%esp)
	movl	%ebx, %edx
	movl	__ZL8globaly1.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%ebx, %edx
	movl	__ZL8globalx2.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_ylookup, %edx
	movl	%ecx, %ebx
	addl	__ZL14globalypanning.lto_priv.0, %eax
	addl	__ZL14globalxpanning.lto_priv.0, %esi
	addl	(%edx,%ebp,4), %ecx
	movl	_frameoffset, %edx
	movl	%eax, 12(%esp)
	movl	$0, %eax
	movl	%esi, 16(%esp)
	addl	%ecx, %edx
	movl	52(%esp), %ecx
	movl	$0, 4(%esp)
	movl	%edx, 20(%esp)
	sarl	$8, %ecx
	addl	_globalshade, %ecx
	cmovs	%eax, %ecx
	movswl	_numshades, %eax
	subl	$1, %eax
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	%ebx, %eax
	subl	%edi, %eax
	sall	$8, %ecx
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	call	_hlineasm4
L1560:
	movl	48(%esp), %eax
	cmpl	%eax, %ebp
	jne	L1561
	movl	56(%esp), %esi
	movl	64(%esp), %ebx
	movl	68(%esp), %edi
L1559:
	movl	44(%esp), %ebp
	jmp	L1564
L1980:
	cmpl	%edi, 40(%esp)
	jl	L1489
	movl	24(%esp), %ecx
	movl	__ZL5umost.lto_priv.0, %eax
	movswl	(%eax,%ecx), %ebp
	movl	%edi, %eax
	leal	-1(%edi), %edi
	movl	%edi, 24(%esp)
	movl	%eax, %ebx
	movl	%ecx, %edi
	movl	%ebp, %edx
	movl	%ebp, %esi
	.p2align 4
	.p2align 3
L1514:
	movl	__ZL5dmost.lto_priv.0, %eax
	movswl	(%eax,%edi), %ecx
	movl	__ZL4uplc.lto_priv.0, %eax
	movswl	(%eax,%edi), %eax
	cmpw	%ax, %cx
	cmovle	%ecx, %eax
	cmpw	%dx, %ax
	jg	L1490
	leal	-1(%esi), %eax
	movl	%eax, 36(%esp)
	cmpl	%ebp, %eax
	jle	L1492
	movl	%ebx, 52(%esp)
	movl	%edi, 56(%esp)
	.p2align 4
	.p2align 3
L1510:
	movl	__ZL5lastx.lto_priv.0, %eax
	addl	$1, %ebp
	movl	24(%esp), %ecx
	movl	(%eax,%ebp,4), %edi
	cmpl	%edi, %ecx
	jl	L1509
	movl	__ZL12horizlookup2.lto_priv.0, %edx
	movl	%ebp, %eax
	subl	_globalhoriz, %eax
	addl	__ZL10horizycent.lto_priv.0, %eax
	movl	(%edx,%eax,4), %ebx
	movl	_globalx1, %eax
	movl	%ebx, %edx
/APP
 # 2360 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _asm1
	movl	%ebx, %edx
	movl	_globaly2, %eax
/APP
 # 2361 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_globvis, %edx
	movl	%eax, _asm2
	movl	%ebx, %eax
/APP
 # 2362 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 48(%esp)
	movl	%ebx, %edx
	movl	__ZL8globaly1.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%ebx, %edx
	movl	__ZL8globalx2.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_ylookup, %edx
	movl	%ecx, %ebx
	addl	__ZL14globalypanning.lto_priv.0, %eax
	addl	__ZL14globalxpanning.lto_priv.0, %esi
	addl	(%edx,%ebp,4), %ecx
	movl	_frameoffset, %edx
	movl	%eax, 12(%esp)
	movl	$0, %eax
	movl	%esi, 16(%esp)
	addl	%ecx, %edx
	movl	48(%esp), %ecx
	movl	$0, 4(%esp)
	movl	%edx, 20(%esp)
	sarl	$8, %ecx
	addl	_globalshade, %ecx
	cmovs	%eax, %ecx
	movswl	_numshades, %eax
	subl	$1, %eax
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	%ebx, %eax
	subl	%edi, %eax
	sall	$8, %ecx
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	call	_hlineasm4
L1509:
	movl	36(%esp), %eax
	cmpl	%eax, %ebp
	jne	L1510
	movl	52(%esp), %ebx
	movl	56(%esp), %edi
L1492:
	cmpl	%ebx, 40(%esp)
	je	L1990
	movl	__ZL5umost.lto_priv.0, %eax
	movswl	2(%eax,%edi), %ebp
	movl	%ebp, %esi
L1507:
	movl	_globaly2, %eax
	addl	$1, %ebx
	addl	%eax, __ZL8globalx2.lto_priv.0
	movl	_globalx1, %eax
	addl	%eax, __ZL8globaly1.lto_priv.0
	cmpl	%ebx, 40(%esp)
	jl	L1513
	movl	__ZL5umost.lto_priv.0, %eax
	addl	$1, 24(%esp)
	movswl	2(%eax,%edi), %edx
	leal	(%ebx,%ebx), %edi
	jmp	L1514
L1490:
	leal	-1(%edx), %ecx
	movl	%eax, 36(%esp)
	movl	%ecx, 48(%esp)
	cmpl	%esi, %ecx
	jge	L1493
	cmpl	%ebp, %ecx
	jle	L1991
	movl	%esi, 56(%esp)
	movl	%ebx, 64(%esp)
	movl	%ecx, 68(%esp)
	movl	%edx, 72(%esp)
	movl	%edi, 76(%esp)
	.p2align 4
	.p2align 3
L1500:
	movl	__ZL5lastx.lto_priv.0, %eax
	addl	$1, %ebp
	movl	24(%esp), %ecx
	movl	(%eax,%ebp,4), %edi
	cmpl	%edi, %ecx
	jl	L1499
	movl	__ZL12horizlookup2.lto_priv.0, %edx
	movl	%ebp, %eax
	subl	_globalhoriz, %eax
	addl	__ZL10horizycent.lto_priv.0, %eax
	movl	(%edx,%eax,4), %ebx
	movl	_globalx1, %eax
	movl	%ebx, %edx
/APP
 # 2360 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _asm1
	movl	%ebx, %edx
	movl	_globaly2, %eax
/APP
 # 2361 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_globvis, %edx
	movl	%eax, _asm2
	movl	%ebx, %eax
/APP
 # 2362 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 52(%esp)
	movl	%ebx, %edx
	movl	__ZL8globaly1.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%ebx, %edx
	movl	__ZL8globalx2.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_ylookup, %edx
	movl	%ecx, %ebx
	addl	__ZL14globalypanning.lto_priv.0, %eax
	addl	__ZL14globalxpanning.lto_priv.0, %esi
	addl	(%edx,%ebp,4), %ecx
	movl	_frameoffset, %edx
	movl	%eax, 12(%esp)
	movl	$0, %eax
	movl	%esi, 16(%esp)
	addl	%ecx, %edx
	movl	52(%esp), %ecx
	movl	$0, 4(%esp)
	movl	%edx, 20(%esp)
	sarl	$8, %ecx
	addl	_globalshade, %ecx
	cmovs	%eax, %ecx
	movswl	_numshades, %eax
	subl	$1, %eax
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	%ebx, %eax
	subl	%edi, %eax
	sall	$8, %ecx
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	call	_hlineasm4
L1499:
	movl	48(%esp), %eax
	cmpl	%eax, %ebp
	jne	L1500
	movl	56(%esp), %esi
	movl	64(%esp), %ebx
	movl	68(%esp), %eax
	movl	72(%esp), %edx
	movl	76(%esp), %edi
L1495:
	cmpl	%eax, 48(%esp)
	jge	L1753
	leal	-1(%edx), %ebp
	sall	$2, %eax
	leal	0(,%ebp,4), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1502:
	movl	__ZL5lastx.lto_priv.0, %edx
	movl	%ebx, (%edx,%eax)
	subl	$4, %eax
	cmpl	%ecx, %eax
	jne	L1502
L1501:
	cmpl	%esi, 36(%esp)
	jge	L1992
	movl	%ebx, 52(%esp)
	movl	%ebp, 56(%esp)
	movl	%edi, 64(%esp)
	.p2align 4
	.p2align 3
L1506:
	movl	__ZL5lastx.lto_priv.0, %eax
	subl	$1, %esi
	movl	24(%esp), %ecx
	movl	(%eax,%esi,4), %ebp
	cmpl	%ebp, %ecx
	jl	L1503
	movl	__ZL12horizlookup2.lto_priv.0, %edx
	movl	%esi, %eax
	subl	_globalhoriz, %eax
	addl	__ZL10horizycent.lto_priv.0, %eax
	movl	(%edx,%eax,4), %ebx
	movl	_globalx1, %eax
	movl	%ebx, %edx
/APP
 # 2360 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _asm1
	movl	%ebx, %edx
	movl	_globaly2, %eax
/APP
 # 2361 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_globvis, %edx
	movl	%eax, _asm2
	movl	%ebx, %eax
/APP
 # 2362 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 48(%esp)
	movl	%ebx, %edx
	movl	__ZL8globaly1.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edi
	movl	%ebx, %edx
	movl	__ZL8globalx2.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_ylookup, %edx
	movl	%ecx, %ebx
	addl	__ZL14globalypanning.lto_priv.0, %eax
	addl	__ZL14globalxpanning.lto_priv.0, %edi
	addl	(%edx,%esi,4), %ecx
	movl	_frameoffset, %edx
	movl	%eax, 12(%esp)
	movl	$0, %eax
	movl	%edi, 16(%esp)
	addl	%ecx, %edx
	movl	48(%esp), %ecx
	movl	$0, 4(%esp)
	movl	%edx, 20(%esp)
	sarl	$8, %ecx
	addl	_globalshade, %ecx
	cmovs	%eax, %ecx
	movswl	_numshades, %eax
	subl	$1, %eax
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	%ebx, %eax
	subl	%ebp, %eax
	sall	$8, %ecx
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	call	_hlineasm4
L1503:
	cmpl	%esi, 36(%esp)
	jne	L1506
	movl	52(%esp), %ebx
	movl	56(%esp), %ebp
	movl	64(%esp), %edi
	jmp	L1507
L1992:
	jle	L1507
	leal	0(,%esi,4), %eax
	movl	36(%esp), %esi
	leal	0(,%esi,4), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1508:
	movl	__ZL5lastx.lto_priv.0, %edx
	movl	%ebx, (%edx,%eax)
	addl	$4, %eax
	cmpl	%eax, %ecx
	jne	L1508
	movl	36(%esp), %esi
	jmp	L1507
L1493:
	leal	-1(%esi), %eax
	movl	%eax, 52(%esp)
	cmpl	%ebp, %eax
	jle	L1496
	movl	%esi, 64(%esp)
	movl	%ebx, 68(%esp)
	movl	%edi, 72(%esp)
	.p2align 4
	.p2align 3
L1498:
	movl	__ZL5lastx.lto_priv.0, %eax
	addl	$1, %ebp
	movl	24(%esp), %ecx
	movl	(%eax,%ebp,4), %edi
	cmpl	%edi, %ecx
	jl	L1497
	movl	__ZL12horizlookup2.lto_priv.0, %edx
	movl	%ebp, %eax
	subl	_globalhoriz, %eax
	addl	__ZL10horizycent.lto_priv.0, %eax
	movl	(%edx,%eax,4), %ebx
	movl	_globalx1, %eax
	movl	%ebx, %edx
/APP
 # 2360 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _asm1
	movl	%ebx, %edx
	movl	_globaly2, %eax
/APP
 # 2361 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_globvis, %edx
	movl	%eax, _asm2
	movl	%ebx, %eax
/APP
 # 2362 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 56(%esp)
	movl	%ebx, %edx
	movl	__ZL8globaly1.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%ebx, %edx
	movl	__ZL8globalx2.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_ylookup, %edx
	movl	%ecx, %ebx
	addl	__ZL14globalypanning.lto_priv.0, %eax
	addl	__ZL14globalxpanning.lto_priv.0, %esi
	addl	(%edx,%ebp,4), %ecx
	movl	_frameoffset, %edx
	movl	%eax, 12(%esp)
	movl	$0, %eax
	movl	%esi, 16(%esp)
	addl	%ecx, %edx
	movl	56(%esp), %ecx
	movl	$0, 4(%esp)
	movl	%edx, 20(%esp)
	sarl	$8, %ecx
	addl	_globalshade, %ecx
	cmovs	%eax, %ecx
	movswl	_numshades, %eax
	subl	$1, %eax
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	%ebx, %eax
	subl	%edi, %eax
	sall	$8, %ecx
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	call	_hlineasm4
L1497:
	movl	52(%esp), %eax
	cmpl	%eax, %ebp
	jne	L1498
	movl	64(%esp), %esi
	movl	68(%esp), %ebx
	movl	72(%esp), %edi
L1496:
	movl	48(%esp), %ebp
	jmp	L1501
L1754:
	movl	%ecx, %esi
	jmp	L1531
L1981:
	movl	_globaly2, %eax
	addl	%eax, __ZL8globalx2.lto_priv.0
	movl	_globalx1, %eax
	addl	%eax, __ZL8globaly1.lto_priv.0
	jmp	L1539
L1513:
	leal	-1(%esi), %eax
	movl	%eax, 36(%esp)
L1512:
	movl	36(%esp), %eax
	cmpl	%eax, %ebp
	jge	L1489
L1516:
	movl	__ZL5lastx.lto_priv.0, %eax
	addl	$1, %ebp
	movl	40(%esp), %ecx
	movl	(%eax,%ebp,4), %edi
	cmpl	%edi, %ecx
	jl	L1515
	movl	__ZL12horizlookup2.lto_priv.0, %edx
	movl	%ebp, %eax
	subl	_globalhoriz, %eax
	addl	__ZL10horizycent.lto_priv.0, %eax
	movl	(%edx,%eax,4), %ebx
	movl	_globalx1, %eax
	movl	%ebx, %edx
/APP
 # 2360 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _asm1
	movl	%ebx, %edx
	movl	_globaly2, %eax
/APP
 # 2361 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_globvis, %edx
	movl	%eax, _asm2
	movl	%ebx, %eax
/APP
 # 2362 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 24(%esp)
	movl	%ebx, %edx
	movl	__ZL8globaly1.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%ebx, %edx
	movl	__ZL8globalx2.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_ylookup, %edx
	movl	%ecx, %ebx
	addl	__ZL14globalypanning.lto_priv.0, %eax
	addl	__ZL14globalxpanning.lto_priv.0, %esi
	addl	(%edx,%ebp,4), %ecx
	movl	_frameoffset, %edx
	movl	%eax, 12(%esp)
	movl	$0, %eax
	movl	%esi, 16(%esp)
	addl	%ecx, %edx
	movl	24(%esp), %ecx
	movl	$0, 4(%esp)
	movl	%edx, 20(%esp)
	sarl	$8, %ecx
	addl	_globalshade, %ecx
	cmovs	%eax, %ecx
	movswl	_numshades, %eax
	subl	$1, %eax
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	%ebx, %eax
	subl	%edi, %eax
	sall	$8, %ecx
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	call	_hlineasm4
L1515:
	movl	36(%esp), %eax
	cmpl	%eax, %ebp
	jne	L1516
	jmp	L1489
L1576:
	leal	-1(%esi), %eax
	movl	%eax, 36(%esp)
L1575:
	movl	36(%esp), %eax
	cmpl	%eax, %ebp
	jge	L1585
L1579:
	movl	__ZL5lastx.lto_priv.0, %eax
	addl	$1, %ebp
	movl	40(%esp), %ecx
	movl	(%eax,%ebp,4), %edi
	cmpl	%edi, %ecx
	jl	L1578
	movl	__ZL12horizlookup2.lto_priv.0, %edx
	movl	%ebp, %eax
	subl	_globalhoriz, %eax
	addl	__ZL10horizycent.lto_priv.0, %eax
	movl	(%edx,%eax,4), %ebx
	movl	_globalx1, %eax
	movl	%ebx, %edx
/APP
 # 2360 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _asm1
	movl	%ebx, %edx
	movl	_globaly2, %eax
/APP
 # 2361 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_globvis, %edx
	movl	%eax, _asm2
	movl	%ebx, %eax
/APP
 # 2362 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 24(%esp)
	movl	%ebx, %edx
	movl	__ZL8globaly1.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%ebx, %edx
	movl	__ZL8globalx2.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_ylookup, %edx
	movl	%ecx, %ebx
	addl	__ZL14globalypanning.lto_priv.0, %eax
	addl	__ZL14globalxpanning.lto_priv.0, %esi
	addl	(%edx,%ebp,4), %ecx
	movl	_frameoffset, %edx
	movl	%eax, 12(%esp)
	movl	$0, %eax
	movl	%esi, 16(%esp)
	addl	%ecx, %edx
	movl	24(%esp), %ecx
	movl	$0, 4(%esp)
	movl	%edx, 20(%esp)
	sarl	$8, %ecx
	addl	_globalshade, %ecx
	cmovs	%eax, %ecx
	movswl	_numshades, %eax
	subl	$1, %eax
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	%ebx, %eax
	subl	%edi, %eax
	sall	$8, %ecx
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	call	_hlineasm4
L1578:
	movl	36(%esp), %eax
	cmpl	%eax, %ebp
	jne	L1579
	jmp	L1585
L1936:
	movl	_globaly2, %eax
	addl	%eax, __ZL8globalx2.lto_priv.0
	movl	_globalx1, %eax
	addl	%eax, __ZL8globaly1.lto_priv.0
	jmp	L1603
L1756:
	movl	%ecx, %esi
	jmp	L1595
L1984:
	movl	%esi, %ecx
	jmp	L1591
L1580:
	movl	_globalblend, %ebx
	testl	%ebx, %ebx
	je	L1583
	movl	_blendtable, %eax
	movl	$0, _globalblend
	movl	%eax, (%esp)
	call	_fixtransluscence
L1583:
	call	_settransnormal
	jmp	L1922
L1517:
	movl	_globalblend, %eax
	testl	%eax, %eax
	je	L1520
	movl	_blendtable, %eax
	movl	$0, _globalblend
	movl	%eax, (%esp)
	call	_fixtransluscence
L1520:
	call	_settransnormal
	jmp	L1921
L1755:
	movl	%eax, %ebp
	jmp	L1564
L1988:
	movl	%ebp, %eax
	jmp	L1558
L1987:
	movl	_globaly2, %eax
	addl	%eax, __ZL8globalx2.lto_priv.0
	movl	_globalx1, %eax
	addl	%eax, __ZL8globaly1.lto_priv.0
	jmp	L1575
L1990:
	movl	_globaly2, %eax
	addl	%eax, __ZL8globalx2.lto_priv.0
	movl	_globalx1, %eax
	addl	%eax, __ZL8globaly1.lto_priv.0
	jmp	L1512
L1753:
	movl	%eax, %ebp
	jmp	L1501
L1991:
	movl	%ebp, %eax
	jmp	L1495
	.cfi_endproc
LFE52:
	.globl	_sectorborder
	.bss
	.align 32
_sectorborder:
	.space 512
	.globl	__ZL5smost.lto_priv.0
	.align 4
__ZL5smost.lto_priv.0:
	.space 4
	.globl	__ZL10smoststart.lto_priv.0
	.align 32
__ZL10smoststart.lto_priv.0:
	.space 32768
	.globl	__ZL8ysavecnt.lto_priv.0
	.align 4
__ZL8ysavecnt.lto_priv.0:
	.space 4
	.globl	__ZL7numhits.lto_priv.0
	.align 2
__ZL7numhits.lto_priv.0:
	.space 2
	.globl	_maskwall
	.align 32
_maskwall:
	.space 16384
	.globl	_maskwallcnt
	.align 2
_maskwallcnt:
	.space 2
	.globl	__ZL8smostcnt.lto_priv.0
	.align 4
__ZL8smostcnt.lto_priv.0:
	.space 4
	.globl	__ZL13smostwalltype.lto_priv.0
	.align 32
__ZL13smostwalltype.lto_priv.0:
	.space 8192
	.globl	__ZL9smostwall.lto_priv.0
	.align 32
__ZL9smostwall.lto_priv.0:
	.space 32768
	.globl	__ZL12smostwallcnt.lto_priv.0
	.data
	.align 4
__ZL12smostwallcnt.lto_priv.0:
	.long	-1
	.globl	_bunchlast
	.bss
	.align 32
_bunchlast:
	.space 16384
	.globl	_bunchp2
	.align 32
_bunchp2:
	.space 16384
	.globl	__ZL5swplc.lto_priv.0
	.align 4
__ZL5swplc.lto_priv.0:
	.space 4
	.globl	__ZL9radarang2.lto_priv.0
	.align 4
__ZL9radarang2.lto_priv.0:
	.space 4
	.globl	__ZL4lplc.lto_priv.0
	.align 4
__ZL4lplc.lto_priv.0:
	.space 4
	.globl	__ZL12no_radarang2.lto_priv.0
	.align 4
__ZL12no_radarang2.lto_priv.0:
	.space 4
	.globl	_globaltilesizy
	.align 4
_globaltilesizy:
	.space 4
	.globl	_pskybits_override
	.section .rdata,"dr"
	.align 2
_pskybits_override:
	.word	-1
	.globl	_multipskytile
	.bss
	.align 4
_multipskytile:
	.space 4
	.globl	_pskynummultis
	.align 4
_pskynummultis:
	.space 4
	.globl	_multipsky
	.align 4
_multipsky:
	.space 4
	.globl	_globalpisibility
	.align 4
_globalpisibility:
	.space 4
	.globl	_thesector
	.align 32
_thesector:
	.space 16384
	.globl	_bunchfirst
	.align 32
_bunchfirst:
	.space 16384
	.section .rdata,"dr"
	.align 32
__ZL12pow2invfloat:
	.long	1065353216
	.long	1056964608
	.long	1048576000
	.long	1040187392
	.long	1031798784
	.long	1023410176
	.long	1015021568
	.long	1006632960
	.globl	_globaly3
	.bss
	.align 4
_globaly3:
	.space 4
	.globl	_globalx3
	.align 4
_globalx3:
	.space 4
	.globl	__ZL4uplc.lto_priv.0
	.align 4
__ZL4uplc.lto_priv.0:
	.space 4
	.globl	__ZL11slopalookup.lto_priv.0
	.align 32
__ZL11slopalookup.lto_priv.0:
	.space 65536
	.globl	__ZL4dplc.lto_priv.0
	.align 4
__ZL4dplc.lto_priv.0:
	.space 4
	.globl	_globalvisibility
	.align 4
_globalvisibility:
	.space 4
	.globl	_xdimenrecip
	.align 4
_xdimenrecip:
	.space 4
	.globl	_r_fpgrouscan
	.data
	.align 4
_r_fpgrouscan:
	.long	1
	.globl	__ZL6ggpinc.lto_priv.0
	.bss
	.align 4
__ZL6ggpinc.lto_priv.0:
	.space 4
	.globl	__ZL5ggbuf.lto_priv.0
	.align 4
__ZL5ggbuf.lto_priv.0:
	.space 4
	.globl	__ZL6gglogy.lto_priv.0
	.align 4
__ZL6gglogy.lto_priv.0:
	.space 4
	.globl	__ZL6gglogx.lto_priv.0
	.align 4
__ZL6gglogx.lto_priv.0:
	.space 4
	.globl	__ZL12globalispow2.lto_priv.0
	.data
	.align 4
__ZL12globalispow2.lto_priv.0:
	.long	1
	.globl	__ZL11horizlookup.lto_priv.0
	.bss
	.align 4
__ZL11horizlookup.lto_priv.0:
	.space 4
	.globl	_globalblend
	.align 4
_globalblend:
	.space 4
	.globl	__ZL11globalyspan.lto_priv.0
	.align 4
__ZL11globalyspan.lto_priv.0:
	.space 4
	.globl	__ZL11globalxspan.lto_priv.0
	.align 4
__ZL11globalxspan.lto_priv.0:
	.space 4
	.globl	__ZL5dmost.lto_priv.0
	.align 4
__ZL5dmost.lto_priv.0:
	.space 4
	.globl	__ZL5umost.lto_priv.0
	.align 4
__ZL5umost.lto_priv.0:
	.space 4
	.globl	__ZL17viewingrangerecip.lto_priv.0
	.align 4
__ZL17viewingrangerecip.lto_priv.0:
	.space 4
	.globl	_globalcisibility
	.align 4
_globalcisibility:
	.space 4
	.globl	__ZL12globalyshift.lto_priv.0
__ZL12globalyshift.lto_priv.0:
	.space 1
	.globl	__ZL12globalxshift.lto_priv.0
__ZL12globalxshift.lto_priv.0:
	.space 1
	.globl	_cosviewingrangeglobalang
	.align 4
_cosviewingrangeglobalang:
	.space 4
	.globl	_singlobalang
	.align 4
_singlobalang:
	.space 4
	.globl	_sinviewingrangeglobalang
	.align 4
_sinviewingrangeglobalang:
	.space 4
	.globl	_cosglobalang
	.align 4
_cosglobalang:
	.space 4
	.globl	_xdimenscale
	.align 4
_xdimenscale:
	.space 4
	.globl	__ZL11globaldclip.lto_priv.0
	.align 4
__ZL11globaldclip.lto_priv.0:
	.space 4
	.globl	__ZL3yb2.lto_priv.0
	.align 32
__ZL3yb2.lto_priv.0:
	.space 32768
	.globl	__ZL11globaluclip.lto_priv.0
	.align 4
__ZL11globaluclip.lto_priv.0:
	.space 4
	.globl	__ZL3yb1.lto_priv.0
	.align 32
__ZL3yb1.lto_priv.0:
	.space 32768
	.globl	__ZL3xb2.lto_priv.0
	.align 32
__ZL3xb2.lto_priv.0:
	.space 32768
	.globl	_xdimscale
	.align 4
_xdimscale:
	.space 4
	.globl	__ZL3rx2.lto_priv.0
	.align 32
__ZL3rx2.lto_priv.0:
	.space 32768
	.globl	_rx1
	.align 32
_rx1:
	.space 32768
	.globl	__ZL3ry2.lto_priv.0
	.align 32
__ZL3ry2.lto_priv.0:
	.space 32768
	.globl	_ry1
	.align 32
_ry1:
	.space 32768
	.globl	_xb1
	.align 32
_xb1:
	.space 32768
	.globl	__ZL8globaly1.lto_priv.0
	.align 4
__ZL8globaly1.lto_priv.0:
	.space 4
	.globl	__ZL14globalypanning.lto_priv.0
	.align 4
__ZL14globalypanning.lto_priv.0:
	.space 4
	.globl	__ZL8globalx2.lto_priv.0
	.align 4
__ZL8globalx2.lto_priv.0:
	.space 4
	.globl	_globalorientation
	.align 4
_globalorientation:
	.space 4
	.globl	_asm3
	.align 4
_asm3:
	.space 4
	.globl	_asm2
	.align 4
_asm2:
	.space 4
	.globl	_globaly2
	.align 4
_globaly2:
	.space 4
	.globl	_asm1
	.align 4
_asm1:
	.space 4
	.globl	_globalx1
	.align 4
_globalx1:
	.space 4
	.globl	__ZL10horizycent.lto_priv.0
	.align 4
__ZL10horizycent.lto_priv.0:
	.space 4
	.globl	__ZL12horizlookup2.lto_priv.0
	.align 4
__ZL12horizlookup2.lto_priv.0:
	.space 4
	.globl	__ZL5lastx.lto_priv.0
	.align 4
__ZL5lastx.lto_priv.0:
	.space 4
	.globl	_thewall
	.align 32
_thewall:
	.space 16384
	.globl	_pow2long.lto_priv.0
	.section .rdata,"dr"
	.align 32
_pow2long.lto_priv.0:
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
	.long	2147483647
	.globl	_pow2long.lto_priv.1
	.set	_pow2long.lto_priv.1,_pow2long.lto_priv.0
	.globl	_pow2long.lto_priv.2
	.set	_pow2long.lto_priv.2,_pow2long.lto_priv.0
	.globl	__ZL8globalht.lto_priv.0
	.bss
	.align 4
__ZL8globalht.lto_priv.0:
	.space 4
	.globl	__ZL14globalxpanning.lto_priv.0
	.align 4
__ZL14globalxpanning.lto_priv.0:
	.space 4
	.globl	__ZL12globalyscale.lto_priv.0
	.align 4
__ZL12globalyscale.lto_priv.0:
	.space 4
	.globl	__ZL8globalzd.lto_priv.0
	.align 8
__ZL8globalzd.lto_priv.0:
	.space 8
	.globl	_globalhoriz
	.align 4
_globalhoriz:
	.space 4
	.globl	__ZL6swallf.lto_priv.0
	.align 4
__ZL6swallf.lto_priv.0:
	.space 4
	.globl	__ZL14drawing_sprite.lto_priv.0
	.align 4
__ZL14drawing_sprite.lto_priv.0:
	.space 4
	.globl	_vince
	.align 4
_vince:
	.space 16
	.globl	_vplce
	.align 4
_vplce:
	.space 16
	.globl	_bufplce
	.align 4
_bufplce:
	.space 16
	.globl	__ZL5lwall.lto_priv.0
	.align 4
__ZL5lwall.lto_priv.0:
	.space 4
	.globl	_palookupoffse
	.align 4
_palookupoffse:
	.space 16
	.globl	_globalshade
	.align 4
_globalshade:
	.space 4
	.globl	_globvis
	.align 4
_globvis:
	.space 4
	.globl	__ZL5swall.lto_priv.0
	.align 4
__ZL5swall.lto_priv.0:
	.space 4
	.globl	_frameoffset
	.align 4
_frameoffset:
	.space 4
	.globl	__ZL12globalbufplc.lto_priv.0
	.align 4
__ZL12globalbufplc.lto_priv.0:
	.space 4
	.globl	_globalpicnum
	.align 2
_globalpicnum:
	.space 2
	.globl	__ZL5dwall.lto_priv.0
	.align 4
__ZL5dwall.lto_priv.0:
	.space 4
	.globl	_ydimen
	.align 4
_ydimen:
	.space 4
	.globl	__ZL5uwall.lto_priv.0
	.align 4
__ZL5uwall.lto_priv.0:
	.space 4
	.globl	__ZL14globalshiftval.lto_priv.0
	.align 2
__ZL14globalshiftval.lto_priv.0:
	.space 2
	.globl	_halfxdimen
	.align 4
_halfxdimen:
	.space 4
.lcomm __ZL14yax_layershift,139264,32
.lcomm __ZL17yax_tsprfrombunch,69632,32
.lcomm __ZL11yax_tsprite,139264,32
.lcomm __ZZ16yax_tweakpicnumsE7opicnum,16384,32
	.section .rdata,"dr"
	.align 4
LC0:
	.long	1317011456
	.align 4
LC1:
	.long	889192448
	.align 16
LC2:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
LC3:
	.long	905969664
	.align 4
LC4:
	.long	964689920
	.align 4
LC5:
	.long	838860800
	.align 4
LC6:
	.long	1140850688
	.align 4
LC8:
	.long	981467136
	.align 4
LC10:
	.long	947912704
	.align 4
LC11:
	.long	931135488
	.align 4
LC12:
	.long	830472192
	.align 4
LC13:
	.long	1132462080
	.align 4
LC14:
	.long	989855744
	.align 4
LC15:
	.long	897581056
	.align 4
LC16:
	.long	1015021568
	.align 4
LC20:
	.long	1065353216
	.align 4
LC21:
	.long	1233125376
	.align 4
LC22:
	.long	1098907648
	.align 4
LC24:
	.long	-1224736768
	.align 4
LC25:
	.long	-1291845632
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_thline;	.scl	2;	.type	32;	.endef
	.def	_mhline;	.scl	2;	.type	32;	.endef
	.def	__Z12tileLoadHighi;	.scl	2;	.type	32;	.endef
	.def	_setupvlineasm;	.scl	2;	.type	32;	.endef
	.def	_vlineasm1;	.scl	2;	.type	32;	.endef
	.def	_llrintf;	.scl	2;	.type	32;	.endef
	.def	_vlineasm1nonpow2;	.scl	2;	.type	32;	.endef
	.def	_vlineasm4;	.scl	2;	.type	32;	.endef
	.def	__Z16timerUpdateClockv;	.scl	2;	.type	32;	.endef
	.def	_tileLoad;	.scl	2;	.type	32;	.endef
	.def	_prevlineasm1;	.scl	2;	.type	32;	.endef
	.def	_tvlineasm1nonpow2;	.scl	2;	.type	32;	.endef
	.def	_tvlineasm1;	.scl	2;	.type	32;	.endef
	.def	_inside;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.part.0;	.scl	2;	.type	32;	.endef
	.def	_yax_getnextwall;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.1;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
	.def	_sectorofwall;	.scl	2;	.type	32;	.endef
	.def	_yax_getnextwall.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_getceilzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	_getflorzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.1;	.scl	2;	.type	32;	.endef
	.def	_setupmvlineasm;	.scl	2;	.type	32;	.endef
	.def	_mvlineasm1;	.scl	2;	.type	32;	.endef
	.def	_mvlineasm4;	.scl	2;	.type	32;	.endef
	.def	_mvlineasm1nonpow2;	.scl	2;	.type	32;	.endef
	.def	_setupslopevlin;	.scl	2;	.type	32;	.endef
	.def	_slopevlin;	.scl	2;	.type	32;	.endef
	.def	_lrintf;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_setpalookupaddress;	.scl	2;	.type	32;	.endef
	.def	_sethlinesizes;	.scl	2;	.type	32;	.endef
	.def	_setuptvlineasm;	.scl	2;	.type	32;	.endef
	.def	_setuptvlineasm2;	.scl	2;	.type	32;	.endef
	.def	_tvlineasm2;	.scl	2;	.type	32;	.endef
	.def	_msethlineshift;	.scl	2;	.type	32;	.endef
	.def	__ZL17classicScanSectors.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_copybufbyte;	.scl	2;	.type	32;	.endef
	.def	_fixtransluscence;	.scl	2;	.type	32;	.endef
	.def	_settransreverse;	.scl	2;	.type	32;	.endef
	.def	_tsethlineshift;	.scl	2;	.type	32;	.endef
	.def	_hlineasm4;	.scl	2;	.type	32;	.endef
	.def	_settransnormal;	.scl	2;	.type	32;	.endef
