	.file	"<artificial>"
	.text
	.p2align 4
	.def	__ZL9slowhlineii;	.scl	3;	.type	32;	.endef
__ZL9slowhlineii:
LFB0:
	.cfi_startproc
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movl	__ZL5lastx.lto_priv.0, %ecx
	movl	%ebp, 52(%esp)
	.cfi_offset 5, -8
	movl	(%ecx,%edx,4), %ebp
	cmpl	%eax, %ebp
	jg	L1
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
	je	L6
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
L1:
	movl	52(%esp), %ebp
	addl	$56, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L6:
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
LFE0:
	.p2align 4
	.def	__ZL8wallscaniiPKsS0_PKiS2_;	.scl	3;	.type	32;	.endef
__ZL8wallscaniiPKsS0_PKiS2_:
LFB1:
	.cfi_startproc
	subl	$172, %esp
	.cfi_def_cfa_offset 176
	movl	%esi, 160(%esp)
	.cfi_offset 6, -16
	movl	_g_nodraw, %esi
	testl	%esi, %esi
	jne	L7
	movl	%edi, 164(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	%ebp, 168(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	movswl	_globalpicnum, %eax
	movl	%ebx, 156(%esp)
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
	js	L191
	movl	_xdim, %eax
	leal	-1(%eax), %edx
	cmpl	%edi, %eax
	cmovle	%edx, %edi
	movl	%edi, 104(%esp)
	movswl	_globalpicnum, %edi
	movswl	_tilesiz(,%edi,4), %ebx
	testw	%bx, %bx
	jle	L191
	movzwl	_tilesiz+2(,%edi,4), %eax
	movw	%ax, 76(%esp)
	testw	%ax, %ax
	jle	L191
	leal	(%ebp,%ebp), %eax
	movswl	(%ecx,%ebp,2), %edx
	movl	%eax, 24(%esp)
	movl	_ydimen, %eax
	cmpl	%eax, %edx
	jle	L10
	movl	104(%esp), %edx
	movswl	(%ecx,%edx,2), %edx
	cmpl	%edx, %eax
	jl	L191
L10:
	movl	176(%esp), %eax
	movl	24(%esp), %edx
	cmpw	$0, (%eax,%edx)
	jns	L11
	movl	104(%esp), %edx
	cmpw	$0, (%eax,%edx,2)
	js	L191
L11:
	movl	%edi, %eax
	movl	%ecx, 32(%esp)
	call	__Z12tileLoadHighi
	movl	%eax, __ZL8globalht.lto_priv.0
	testl	%eax, %eax
	je	L12
	movswl	4(%eax), %esi
	movswl	6(%eax), %edx
L13:
	movl	%esi, %ecx
	movswl	76(%esp), %eax
	sall	%cl, %ebx
	movl	%edx, %ecx
	movswl	_globalpicnum, %edx
	movl	%ebx, %edi
	sall	%cl, %eax
	movswl	%bx, %ecx
	movzbl	_picsiz(%edx), %edx
	negl	%edi
	movw	%di, 76(%esp)
	movl	%edx, %esi
	andl	$15, %esi
	cmpl	%ecx, _pow2long.lto_priv.0(,%esi,4)
	jne	L15
	leal	-1(%ebx), %edi
	movw	%di, 76(%esp)
L15:
	shrb	$4, %dl
	movswl	%ax, %ecx
	negl	%eax
	movzbl	%dl, %ebx
	movw	%ax, 78(%esp)
	cmpl	%ecx, _pow2long.lto_priv.0(,%ebx,4)
	jne	L17
	movzbl	%dl, %eax
	movw	%ax, 78(%esp)
L17:
	movl	_globalpal, %eax
	movl	_palookup(,%eax,4), %eax
	movl	%eax, 36(%esp)
	movswl	__ZL14globalshiftval.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_setupvlineasm
	movl	104(%esp), %edi
	movzwl	__ZL14globalshiftval.lto_priv.0, %ecx
	cmpl	%ebp, %edi
	jl	L18
	movl	__ZL5umost.lto_priv.0, %edx
	movl	__ZL5dmost.lto_priv.0, %eax
	addl	$1, %edi
	jmp	L19
	.p2align 5
	.p2align 4,,10
	.p2align 3
L21:
	addl	$1, %ebp
	cmpl	%edi, %ebp
	je	L20
L19:
	movzwl	(%eax,%ebp,2), %esi
	cmpw	%si, (%edx,%ebp,2)
	jg	L21
L20:
	testw	%cx, %cx
	je	L22
	movl	104(%esp), %eax
	leal	-2(%eax), %esi
	movl	%esi, 92(%esp)
	cmpl	%ebp, %eax
	jl	L24
	cmpw	$0, 78(%esp)
	js	L74
	movswl	76(%esp), %eax
	movl	%edi, 40(%esp)
	negl	%eax
	movl	%eax, 68(%esp)
	jmp	L86
	.p2align 4,,10
	.p2align 3
L171:
	movzwl	76(%esp), %edx
	andl	%eax, %edx
L85:
	movzbl	78(%esp), %ecx
	movl	__ZL8globalht.lto_priv.0, %eax
	sall	%cl, %edx
	testl	%eax, %eax
	je	L194
	movl	(%eax), %eax
L84:
	addl	%edx, %eax
	movl	__ZL8globalzd.lto_priv.0+4, %edx
	movl	%ebx, %esi
	subl	_globalhoriz, %esi
	movl	%eax, 52(%esp)
	addl	$1, %esi
	movl	%eax, _bufplce
	movl	__ZL8globalzd.lto_priv.0, %eax
	movl	%edx, 48(%esp)
	movl	%eax, 44(%esp)
	movl	__ZL14drawing_sprite.lto_priv.0, %eax
	testl	%eax, %eax
	jne	L195
	movl	180(%esp), %eax
	movl	__ZL12globalyscale.lto_priv.0, %ecx
	imull	(%eax,%ebp,4), %ecx
	movl	44(%esp), %eax
	imull	%ecx, %esi
	movl	%ecx, 28(%esp)
	addl	%eax, %esi
L83:
	movl	28(%esp), %ecx
	movl	24(%esp), %edx
	movl	%esi, _vplce
	movl	_ylookup, %eax
	movl	%ecx, _vince
	addl	(%eax,%ebx,4), %edx
	movl	52(%esp), %eax
	movl	%esi, 12(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	%edi, %eax
	subl	%ebx, %eax
	movl	%ecx, (%esp)
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	60(%esp), %eax
	movl	%eax, 4(%esp)
	call	_vlineasm1
L76:
	movl	40(%esp), %eax
	addl	$1, %ebp
	cmpl	%eax, %ebp
	je	L196
L86:
	movl	_frameoffset, %eax
	addl	%ebp, %eax
	movl	%eax, 24(%esp)
	testb	$3, %al
	je	L180
	movl	__ZL5umost.lto_priv.0, %eax
	movl	176(%esp), %edi
	movswl	(%eax,%ebp,2), %ebx
	movl	32(%esp), %eax
	movzwl	(%edi,%ebp,2), %edx
	movswl	(%eax,%ebp,2), %eax
	cmpw	%ax, %bx
	cmovl	%eax, %ebx
	movl	__ZL5dmost.lto_priv.0, %eax
	movzwl	(%eax,%ebp,2), %eax
	movl	%ebx, 140(%esp)
	cmpw	%dx, %ax
	cmovg	%edx, %eax
	movswl	%ax, %edi
	movl	%edi, 124(%esp)
	cmpl	%ebx, %edi
	jle	L76
	movl	180(%esp), %eax
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
	movl	36(%esp), %esi
	cmovs	%edx, %eax
	movswl	_numshades, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	sall	$8, %eax
	addl	%esi, %eax
	movl	%eax, _palookupoffse
	movl	%eax, 60(%esp)
	movl	184(%esp), %eax
	movl	(%eax,%ebp,4), %eax
	addl	__ZL14globalxpanning.lto_priv.0, %eax
	cmpw	$0, 76(%esp)
	jns	L171
	xorl	%edx, %edx
	divl	68(%esp)
	jmp	L85
L216:
	movl	__ZL5umost.lto_priv.0, %edx
	movl	__ZL5dmost.lto_priv.0, %eax
	cmpl	%ebp, 104(%esp)
	jge	L134
	.p2align 4
	.p2align 3
L191:
	movl	156(%esp), %ebx
	.cfi_restore 3
	movl	164(%esp), %edi
	.cfi_restore 7
	movl	168(%esp), %ebp
	.cfi_restore 5
L7:
	movl	160(%esp), %esi
	addl	$172, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L195:
	.cfi_def_cfa_offset 176
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	__ZL6swallf.lto_priv.0, %eax
	movss	(%eax,%ebp,4), %xmm0
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
	addl	44(%esp), %eax
	adcl	48(%esp), %edx
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
	jmp	L83
	.p2align 4,,10
	.p2align 3
L194:
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L84
	.p2align 4,,10
	.p2align 3
L22:
	cmpl	%ebp, 104(%esp)
	jl	L191
	cmpw	$0, 78(%esp)
	js	L112
L134:
	movswl	76(%esp), %ecx
	movl	%edi, 28(%esp)
	negl	%ecx
	movl	%ecx, 60(%esp)
	jmp	L124
	.p2align 4,,10
	.p2align 3
L200:
	movl	%ecx, (%esp)
	call	_vlineasm1
L113:
	movl	28(%esp), %eax
	addl	$1, %ebp
	cmpl	%eax, %ebp
	je	L191
	movl	__ZL5umost.lto_priv.0, %edx
	movl	__ZL5dmost.lto_priv.0, %eax
L124:
	movl	32(%esp), %edi
	movswl	(%edx,%ebp,2), %ebx
	movzwl	(%eax,%ebp,2), %eax
	movswl	(%edi,%ebp,2), %edx
	movl	176(%esp), %edi
	cmpw	%dx, %bx
	cmovl	%edx, %ebx
	movzwl	(%edi,%ebp,2), %edx
	cmpw	%dx, %ax
	cmovg	%edx, %eax
	movswl	%ax, %edi
	cmpl	%edi, %ebx
	jge	L113
	movl	180(%esp), %eax
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
	movl	36(%esp), %esi
	cmovs	%edx, %eax
	movswl	_numshades, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	sall	$8, %eax
	addl	%esi, %eax
	movl	184(%esp), %esi
	movl	%eax, _palookupoffse
	movl	%eax, 40(%esp)
	movl	__ZL14globalxpanning.lto_priv.0, %eax
	addl	(%esi,%ebp,4), %eax
	cmpw	$0, 76(%esp)
	js	L197
	movzwl	76(%esp), %edx
	andl	%eax, %edx
L123:
	movzbl	78(%esp), %ecx
	movl	__ZL8globalht.lto_priv.0, %eax
	sall	%cl, %edx
	testl	%eax, %eax
	je	L198
	movl	(%eax), %eax
L122:
	addl	%edx, %eax
	movl	__ZL8globalzd.lto_priv.0+4, %edx
	movl	%ebx, %esi
	subl	_globalhoriz, %esi
	movl	%eax, 44(%esp)
	addl	$1, %esi
	movl	%eax, _bufplce
	movl	__ZL8globalzd.lto_priv.0, %eax
	movl	%edx, 56(%esp)
	movl	__ZL14drawing_sprite.lto_priv.0, %edx
	movl	%eax, 52(%esp)
	testl	%edx, %edx
	jne	L199
	movl	180(%esp), %eax
	movl	(%eax,%ebp,4), %ecx
	imull	__ZL12globalyscale.lto_priv.0, %ecx
	movl	52(%esp), %eax
	imull	%ecx, %esi
	movl	%ecx, 24(%esp)
	addl	%eax, %esi
L121:
	movl	_ylookup, %edx
	movl	24(%esp), %ecx
	movl	%esi, _vplce
	subl	%ebx, %edi
	movl	_frameoffset, %eax
	movl	%ecx, _vince
	addl	%ebp, %eax
	addl	(%edx,%ebx,4), %eax
	movl	%edi, %edx
	movl	%esi, 12(%esp)
	movl	%eax, 20(%esp)
	movl	44(%esp), %eax
	subl	$1, %edx
	cmpw	$0, __ZL14globalshiftval.lto_priv.0
	movl	%edx, 8(%esp)
	movl	%eax, 16(%esp)
	movl	40(%esp), %eax
	movl	%eax, 4(%esp)
	jne	L200
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	call	_vlineasm1nonpow2
	jmp	L113
L215:
	movl	40(%esp), %edi
L33:
	cmpl	%ebp, 92(%esp)
	jle	L201
L138:
	leal	(%ebp,%ebp), %eax
	movl	%ebp, 120(%esp)
	movl	%eax, 80(%esp)
	leal	140(%esp), %eax
	movl	%eax, 28(%esp)
	leal	124(%esp), %eax
	movl	%eax, 24(%esp)
	movswl	78(%esp), %eax
	negl	%eax
	movl	%eax, 84(%esp)
	.p2align 4
	.p2align 3
L35:
	movl	80(%esp), %eax
	movl	32(%esp), %ecx
	movb	$0, 40(%esp)
	leal	12(,%ebp,4), %edi
	movl	%ebp, 96(%esp)
	movl	$3, %esi
	leal	(%ecx,%eax), %ebx
	movl	__ZL5umost.lto_priv.0, %ecx
	movl	%ebx, %ebp
	addl	%eax, %ecx
	movl	%ecx, 52(%esp)
	movl	__ZL5dmost.lto_priv.0, %ecx
	addl	%eax, %ecx
	movl	%ecx, 60(%esp)
	movl	176(%esp), %ecx
	addl	%ecx, %eax
	movl	%eax, 44(%esp)
L96:
	movl	52(%esp), %eax
	movswl	0(%ebp,%esi,2), %ebx
	movl	44(%esp), %ecx
	movswl	(%eax,%esi,2), %eax
	movswl	(%ecx,%esi,2), %edx
	movl	24(%esp), %ecx
	cmpw	%ax, %bx
	cmovl	%eax, %ebx
	movl	28(%esp), %eax
	movl	%ebx, (%eax,%esi,4)
	movl	60(%esp), %eax
	movswl	(%eax,%esi,2), %eax
	cmpw	%dx, %ax
	cmovg	%edx, %eax
	subl	$1, %eax
	movl	%eax, (%ecx,%esi,4)
	cmpl	%eax, %ebx
	jle	L88
	movzbl	__ZL8pow2char.lto_priv.9(%esi), %ecx
	addb	%cl, 40(%esp)
L89:
	subl	$1, %esi
	subl	$4, %edi
	cmpl	$-1, %esi
	jne	L96
	movl	96(%esp), %ebp
	cmpb	$15, 40(%esp)
	je	L97
	movl	180(%esp), %eax
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
	movl	%esi, %edx
	leal	(%eax,%edi), %ecx
	subl	$1, %ebx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	cmovs	%eax, %ecx
	movl	36(%esp), %eax
	cmpl	%ebx, %ecx
	cmovg	%ebx, %ecx
	sall	$8, %ecx
	addl	%ecx, %eax
	movl	%eax, _palookupoffse
	movl	%eax, 112(%esp)
	movl	180(%esp), %eax
	movl	12(%eax,%ebp,4), %eax
/APP
 # 3175 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	sarl	$8, %eax
	movl	$0, %edx
	addl	%edi, %eax
	cmovs	%edx, %eax
	movl	36(%esp), %edx
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	sall	$8, %eax
	addl	%eax, %edx
	movl	%edx, _palookupoffse+12
	cmpl	%ecx, %eax
	je	L202
L98:
	movl	180(%esp), %eax
	movl	%esi, %edx
	movl	4(%eax,%ebp,4), %eax
/APP
 # 3184 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	sarl	$8, %eax
	movl	$0, %edx
	movl	36(%esp), %ecx
	addl	%edi, %eax
	cmovs	%edx, %eax
	movl	%esi, %edx
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	sall	$8, %eax
	addl	%ecx, %eax
	movl	%eax, _palookupoffse+4
	movl	180(%esp), %eax
	movl	8(%eax,%ebp,4), %eax
/APP
 # 3185 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	sarl	$8, %eax
	movl	$0, %edx
	addl	%edi, %eax
	cmovs	%edx, %eax
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	sall	$8, %eax
	addl	%ecx, %eax
L99:
	movl	152(%esp), %edi
	movl	148(%esp), %ecx
	movl	%eax, _palookupoffse+8
	movl	140(%esp), %eax
	movl	136(%esp), %ebx
	cmpl	%edi, %ecx
	movl	%edi, %esi
	movl	144(%esp), %edx
	movl	%edi, 100(%esp)
	cmovge	%ecx, %esi
	movl	%eax, 96(%esp)
	movl	%ebx, 60(%esp)
	movl	132(%esp), %ebx
	cmpl	%eax, %esi
	cmovl	%eax, %esi
	movl	128(%esp), %eax
	movl	%ebx, 68(%esp)
	movl	%eax, 44(%esp)
	movl	124(%esp), %eax
	cmpl	%esi, %edx
	movl	%esi, %edi
	cmovge	%edx, %edi
	movl	%eax, 52(%esp)
	movl	60(%esp), %eax
	cmpl	%ebx, %eax
	cmovle	%eax, %ebx
	movl	44(%esp), %eax
	cmpl	%eax, %ebx
	cmovg	%eax, %ebx
	movl	52(%esp), %eax
	cmpl	%ebx, %eax
	movl	%ebx, 108(%esp)
	cmovle	%eax, %ebx
	cmpb	$0, 40(%esp)
	jne	L143
	cmpl	%ebx, %edi
	jge	L143
	movl	96(%esp), %eax
	cmpl	%eax, %edi
	jg	L203
L105:
	cmpl	%esi, %edx
	jl	L204
L106:
	cmpl	%ecx, %edi
	jg	L205
L107:
	movl	100(%esp), %eax
	cmpl	%eax, %edi
	jg	L206
L108:
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
	movl	108(%esp), %edi
	addl	%ebp, %esi
	addl	4(%eax,%ebx,4), %esi
	cmpl	%edi, 52(%esp)
	jg	L207
L109:
	movl	44(%esp), %eax
	cmpl	%eax, %ebx
	jl	L208
L110:
	movl	68(%esp), %eax
	cmpl	%eax, %ebx
	jl	L209
L111:
	movl	60(%esp), %eax
	cmpl	%eax, %ebx
	jl	L210
L97:
	movl	92(%esp), %eax
	addl	$4, %ebp
	addl	$8, 80(%esp)
	cmpl	%eax, %ebp
	jl	L35
	movl	104(%esp), %edi
	movl	120(%esp), %ebp
	xorl	%edx, %edx
	movl	92(%esp), %esi
	leal	-3(%edi), %eax
	subl	%ebp, %eax
	andl	$-4, %eax
	cmpl	%esi, %ebp
	cmovge	%edx, %eax
	leal	4(%ebp,%eax), %ebp
	cmpl	%ebp, %edi
	jl	L191
	movl	__ZL5umost.lto_priv.0, %edx
	movl	__ZL5dmost.lto_priv.0, %eax
	addl	$1, %edi
L112:
	movswl	78(%esp), %ecx
	movl	%edi, 28(%esp)
	negl	%ecx
	movl	%ecx, 60(%esp)
	jmp	L133
	.p2align 4,,10
	.p2align 3
L212:
	movl	%ecx, (%esp)
	call	_vlineasm1nonpow2
L125:
	movl	28(%esp), %eax
	addl	$1, %ebp
	cmpl	%eax, %ebp
	je	L191
	movl	__ZL5umost.lto_priv.0, %edx
	movl	__ZL5dmost.lto_priv.0, %eax
L133:
	movl	32(%esp), %edi
	movswl	(%edx,%ebp,2), %ebx
	movzwl	(%eax,%ebp,2), %eax
	movswl	(%edi,%ebp,2), %edx
	movl	176(%esp), %edi
	cmpw	%dx, %bx
	cmovl	%edx, %ebx
	movzwl	(%edi,%ebp,2), %edx
	cmpw	%dx, %ax
	cmovg	%edx, %eax
	movswl	%ax, %edi
	cmpl	%edi, %ebx
	jge	L125
	movl	180(%esp), %eax
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
	movl	36(%esp), %esi
	cmovs	%edx, %eax
	movswl	_numshades, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movzwl	76(%esp), %edx
	sall	$8, %eax
	addl	%esi, %eax
	movl	184(%esp), %esi
	movl	%eax, _palookupoffse
	movl	%eax, 40(%esp)
	movl	__ZL14globalxpanning.lto_priv.0, %eax
	addl	(%esi,%ebp,4), %eax
	movl	%edx, %esi
	andl	%eax, %edx
	testw	%si, %si
	jns	L127
	movswl	%si, %ecx
	xorl	%edx, %edx
	negl	%ecx
	divl	%ecx
L127:
	movl	60(%esp), %eax
	imull	%eax, %edx
	movl	__ZL8globalht.lto_priv.0, %eax
	testl	%eax, %eax
	je	L128
	movl	(%eax), %eax
L129:
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
	jne	L211
	movl	180(%esp), %eax
	movl	(%eax,%ebp,4), %ecx
	imull	__ZL12globalyscale.lto_priv.0, %ecx
	movl	52(%esp), %eax
	imull	%ecx, %esi
	movl	%ecx, 24(%esp)
	addl	%eax, %esi
L131:
	movl	_ylookup, %edx
	movl	24(%esp), %ecx
	movl	%esi, _vplce
	subl	%ebx, %edi
	movl	_frameoffset, %eax
	movl	%ecx, _vince
	addl	%ebp, %eax
	addl	(%edx,%ebx,4), %eax
	movl	%edi, %edx
	movl	%esi, 12(%esp)
	movl	%eax, 20(%esp)
	movl	44(%esp), %eax
	subl	$1, %edx
	cmpw	$0, __ZL14globalshiftval.lto_priv.0
	movl	%edx, 8(%esp)
	movl	%eax, 16(%esp)
	movl	40(%esp), %eax
	movl	%eax, 4(%esp)
	je	L212
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	call	_vlineasm1
	jmp	L125
	.p2align 4,,10
	.p2align 3
L197:
	xorl	%edx, %edx
	divl	60(%esp)
	jmp	L123
	.p2align 4,,10
	.p2align 3
L199:
	movl	__ZL6swallf.lto_priv.0, %eax
	movss	(%eax,%ebp,4), %xmm0
	movss	%xmm0, (%esp)
	call	_llrintf
	movl	%eax, 24(%esp)
	movl	%esi, %eax
	movl	%edx, %ecx
	cltd
	movl	%edx, %eax
	movl	24(%esp), %edx
	imull	%edx, %eax
	movl	%ecx, %edx
	imull	%esi, %edx
	addl	%edx, %eax
	movl	%eax, %ecx
	movl	%esi, %eax
	mull	24(%esp)
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
	jmp	L121
	.p2align 4,,10
	.p2align 3
L198:
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L122
	.p2align 4,,10
	.p2align 3
L211:
	movl	__ZL6swallf.lto_priv.0, %eax
	movss	(%eax,%ebp,4), %xmm0
	movss	%xmm0, (%esp)
	call	_llrintf
	movl	%eax, 24(%esp)
	movl	%esi, %eax
	movl	%edx, %ecx
	cltd
	movl	%edx, %eax
	movl	24(%esp), %edx
	imull	%edx, %eax
	movl	%ecx, %edx
	imull	%esi, %edx
	addl	%edx, %eax
	movl	%eax, %ecx
	movl	%esi, %eax
	mull	24(%esp)
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
	jmp	L131
	.p2align 4,,10
	.p2align 3
L128:
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L129
	.p2align 4,,10
	.p2align 3
L12:
	movl	_waloff(,%edi,4), %edx
	testl	%edx, %edx
	je	L213
	xorl	%edx, %edx
	jmp	L13
L213:
	movl	%edi, %eax
	movl	%edx, 24(%esp)
	xorl	%esi, %esi
	call	_tileLoad.isra.0
	movl	24(%esp), %edx
	jmp	L13
L74:
	movswl	78(%esp), %eax
	movl	%edi, 40(%esp)
	negl	%eax
	movl	%eax, 68(%esp)
	jmp	L32
	.p2align 4,,10
	.p2align 3
L30:
	movl	180(%esp), %eax
	movl	(%eax,%ebp,4), %ecx
	imull	__ZL12globalyscale.lto_priv.0, %ecx
	movl	60(%esp), %eax
	imull	%ecx, %esi
	movl	%ecx, 28(%esp)
	addl	%eax, %esi
L31:
	movl	28(%esp), %ecx
	movl	24(%esp), %edx
	movl	%esi, _vplce
	movl	_ylookup, %eax
	movl	%ecx, _vince
	addl	(%eax,%ebx,4), %edx
	movl	52(%esp), %eax
	movl	%esi, 12(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	%edi, %eax
	subl	%ebx, %eax
	movl	%ecx, (%esp)
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	44(%esp), %eax
	movl	%eax, 4(%esp)
	call	_vlineasm1
L25:
	movl	40(%esp), %eax
	addl	$1, %ebp
	cmpl	%eax, %ebp
	je	L214
L32:
	movl	_frameoffset, %eax
	addl	%ebp, %eax
	movl	%eax, 24(%esp)
	testb	$3, %al
	je	L215
	movl	__ZL5umost.lto_priv.0, %eax
	movl	176(%esp), %edi
	movswl	(%eax,%ebp,2), %ebx
	movl	32(%esp), %eax
	movzwl	(%edi,%ebp,2), %edx
	movswl	(%eax,%ebp,2), %eax
	cmpw	%ax, %bx
	cmovl	%eax, %ebx
	movl	__ZL5dmost.lto_priv.0, %eax
	movzwl	(%eax,%ebp,2), %eax
	movl	%ebx, 140(%esp)
	cmpw	%dx, %ax
	cmovg	%edx, %eax
	movswl	%ax, %edi
	movl	%edi, 124(%esp)
	cmpl	%edi, %ebx
	jge	L25
	movl	180(%esp), %eax
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
	movl	36(%esp), %esi
	cmovs	%edx, %eax
	movswl	_numshades, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movzwl	76(%esp), %edx
	sall	$8, %eax
	addl	%esi, %eax
	movl	184(%esp), %esi
	movl	%eax, _palookupoffse
	movl	%eax, 44(%esp)
	movl	__ZL14globalxpanning.lto_priv.0, %eax
	addl	(%esi,%ebp,4), %eax
	movl	%edx, %esi
	andl	%eax, %edx
	testw	%si, %si
	jns	L27
	movswl	%si, %ecx
	xorl	%edx, %edx
	negl	%ecx
	divl	%ecx
L27:
	movl	68(%esp), %eax
	imull	%eax, %edx
	movl	__ZL8globalht.lto_priv.0, %eax
	testl	%eax, %eax
	je	L28
	movl	(%eax), %eax
L29:
	addl	%edx, %eax
	movl	__ZL8globalzd.lto_priv.0+4, %edx
	movl	%ebx, %esi
	subl	_globalhoriz, %esi
	movl	%eax, 52(%esp)
	addl	$1, %esi
	movl	%eax, _bufplce
	movl	__ZL8globalzd.lto_priv.0, %eax
	movl	%edx, 64(%esp)
	movl	%eax, 60(%esp)
	movl	__ZL14drawing_sprite.lto_priv.0, %eax
	testl	%eax, %eax
	je	L30
	movl	__ZL6swallf.lto_priv.0, %eax
	movss	(%eax,%ebp,4), %xmm0
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
	jmp	L31
	.p2align 4,,10
	.p2align 3
L28:
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L29
L180:
	movl	40(%esp), %edi
L75:
	movl	92(%esp), %eax
	cmpl	%eax, %ebp
	jge	L216
L34:
	leal	(%ebp,%ebp), %eax
	movl	%ebp, 120(%esp)
	movl	%eax, 100(%esp)
	leal	140(%esp), %eax
	movl	%eax, 28(%esp)
	leal	124(%esp), %eax
	movl	%eax, 24(%esp)
	movswl	76(%esp), %eax
	negl	%eax
	movl	%eax, 116(%esp)
	.p2align 4
	.p2align 3
L72:
	movl	100(%esp), %eax
	movl	__ZL5umost.lto_priv.0, %ecx
	movb	$0, 40(%esp)
	leal	12(,%ebp,4), %edi
	movl	176(%esp), %edx
	movl	%ebp, 108(%esp)
	movl	$3, %esi
	addl	%eax, %ecx
	movl	%ecx, 60(%esp)
	movl	32(%esp), %ecx
	addl	%eax, %edx
	movl	%edx, 44(%esp)
	addl	%eax, %ecx
	addl	__ZL5dmost.lto_priv.0, %eax
	movl	%eax, 52(%esp)
	movzwl	76(%esp), %eax
	movl	%ecx, 68(%esp)
	movl	%eax, 96(%esp)
	movswl	78(%esp), %eax
	movl	%eax, 80(%esp)
L46:
	movl	60(%esp), %eax
	movl	52(%esp), %ecx
	movswl	(%eax,%esi,2), %ebx
	movl	68(%esp), %eax
	movswl	(%ecx,%esi,2), %edx
	movl	24(%esp), %ecx
	movswl	(%eax,%esi,2), %eax
	cmpw	%ax, %bx
	cmovl	%eax, %ebx
	movl	28(%esp), %eax
	movl	%ebx, (%eax,%esi,4)
	movl	44(%esp), %eax
	movswl	(%eax,%esi,2), %eax
	cmpw	%dx, %ax
	cmovg	%edx, %eax
	subl	$1, %eax
	movl	%eax, (%ecx,%esi,4)
	cmpl	%ebx, %eax
	jl	L36
	movl	184(%esp), %eax
	movl	(%eax,%edi), %eax
	addl	__ZL14globalxpanning.lto_priv.0, %eax
	cmpw	$0, 76(%esp)
	js	L217
	movl	96(%esp), %edx
	andl	%eax, %edx
L45:
	movzbl	80(%esp), %ecx
	movl	__ZL8globalht.lto_priv.0, %eax
	sall	%cl, %edx
	testl	%eax, %eax
	je	L218
	movl	(%eax), %eax
L44:
	addl	%edx, %eax
	movl	__ZL8globalzd.lto_priv.0+4, %ecx
	movl	__ZL8globalzd.lto_priv.0, %edx
	movl	%eax, _bufplce(,%esi,4)
	movl	__ZL14drawing_sprite.lto_priv.0, %eax
	subl	_globalhoriz, %ebx
	movl	%edx, 84(%esp)
	movl	%ecx, 88(%esp)
	addl	$1, %ebx
	testl	%eax, %eax
	jne	L41
	movl	180(%esp), %ebp
	movl	__ZL12globalyscale.lto_priv.0, %eax
	imull	0(%ebp,%edi), %eax
	movl	%eax, _vince(,%esi,4)
	imull	%ebx, %eax
	addl	%edx, %eax
	movl	%eax, _vplce(,%esi,4)
L42:
	subl	$1, %esi
	subl	$4, %edi
	cmpl	$-1, %esi
	jne	L46
	movl	108(%esp), %ebp
	cmpb	$15, 40(%esp)
	je	L47
	movl	180(%esp), %eax
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
	movl	%esi, %edx
	leal	(%eax,%edi), %ecx
	subl	$1, %ebx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	cmovs	%eax, %ecx
	movl	36(%esp), %eax
	cmpl	%ebx, %ecx
	cmovg	%ebx, %ecx
	sall	$8, %ecx
	addl	%ecx, %eax
	movl	%eax, _palookupoffse
	movl	%eax, 112(%esp)
	movl	180(%esp), %eax
	movl	12(%eax,%ebp,4), %eax
/APP
 # 3175 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	sarl	$8, %eax
	movl	$0, %edx
	addl	%edi, %eax
	cmovs	%edx, %eax
	movl	36(%esp), %edx
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	sall	$8, %eax
	addl	%eax, %edx
	movl	%edx, _palookupoffse+12
	cmpl	%ecx, %eax
	je	L48
L70:
	movl	180(%esp), %eax
	movl	%esi, %edx
	movl	4(%eax,%ebp,4), %eax
/APP
 # 3184 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	sarl	$8, %eax
	movl	$0, %edx
	movl	36(%esp), %ecx
	addl	%edi, %eax
	cmovs	%edx, %eax
	movl	%esi, %edx
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	sall	$8, %eax
	addl	%ecx, %eax
	movl	%eax, _palookupoffse+4
	movl	180(%esp), %eax
	movl	8(%eax,%ebp,4), %eax
/APP
 # 3185 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	sarl	$8, %eax
	movl	$0, %edx
	addl	%edi, %eax
	cmovs	%edx, %eax
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	sall	$8, %eax
	addl	%ecx, %eax
L71:
	movl	148(%esp), %edi
	movl	152(%esp), %ebx
	movl	%eax, _palookupoffse+8
	movl	140(%esp), %eax
	movl	144(%esp), %edx
	cmpl	%ebx, %edi
	movl	%ebx, 68(%esp)
	movl	136(%esp), %ecx
	cmovge	%edi, %ebx
	movl	%edi, 60(%esp)
	movl	132(%esp), %edi
	movl	%ecx, 44(%esp)
	cmpl	%eax, %ebx
	movl	%edi, 80(%esp)
	cmovl	%eax, %ebx
	cmpl	%ebx, %edx
	movl	%ebx, %esi
	movl	%ebx, 96(%esp)
	movl	128(%esp), %ebx
	cmovge	%edx, %esi
	cmpl	%edi, %ecx
	movl	%edi, %ecx
	cmovle	44(%esp), %ecx
	movl	%ebx, 52(%esp)
	movl	52(%esp), %edi
	movl	124(%esp), %ebx
	cmpl	%edi, %ecx
	cmovg	%edi, %ecx
	movl	%ebx, 84(%esp)
	cmpl	%ecx, %ebx
	movl	%ecx, %edi
	movl	%ecx, 108(%esp)
	cmovle	%ebx, %edi
	cmpb	$0, 40(%esp)
	jne	L49
	cmpl	%edi, %esi
	jge	L49
	cmpl	%esi, %eax
	jl	L50
L63:
	movl	96(%esp), %eax
	cmpl	%eax, %edx
	jl	L51
	cmpl	%esi, 60(%esp)
	jl	L52
L61:
	cmpl	%esi, 68(%esp)
	jl	L53
L60:
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
	movl	108(%esp), %esi
	addl	%ebp, %ebx
	addl	4(%eax,%edi,4), %ebx
	cmpl	%esi, 84(%esp)
	jg	L54
L59:
	cmpl	%edi, 52(%esp)
	jg	L55
	cmpl	%edi, 80(%esp)
	jg	L56
L57:
	cmpl	%edi, 44(%esp)
	jg	L219
L47:
	movl	92(%esp), %eax
	addl	$4, %ebp
	addl	$8, 100(%esp)
	cmpl	%eax, %ebp
	jl	L72
	movl	104(%esp), %edi
	movl	120(%esp), %ebp
	xorl	%edx, %edx
	movl	92(%esp), %esi
	leal	-3(%edi), %eax
	subl	%ebp, %eax
	andl	$-4, %eax
	cmpl	%esi, %ebp
	cmovge	%edx, %eax
	leal	4(%ebp,%eax), %ebp
	cmpl	%ebp, %edi
	jl	L191
	movl	__ZL5umost.lto_priv.0, %edx
	movl	__ZL5dmost.lto_priv.0, %eax
	addl	$1, %edi
	jmp	L134
	.p2align 4,,10
	.p2align 3
L36:
	movzbl	__ZL8pow2char.lto_priv.9(%esi), %ecx
	addb	%cl, 40(%esp)
	jmp	L42
	.p2align 4,,10
	.p2align 3
L217:
	xorl	%edx, %edx
	divl	116(%esp)
	jmp	L45
	.p2align 4,,10
	.p2align 3
L41:
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
	addl	84(%esp), %eax
	adcl	88(%esp), %edx
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
	jmp	L42
	.p2align 4,,10
	.p2align 3
L218:
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L44
	.p2align 4,,10
	.p2align 3
L48:
	testb	$9, 40(%esp)
	jne	L70
	movl	112(%esp), %eax
	movl	%eax, _palookupoffse+4
	jmp	L71
	.p2align 4,,10
	.p2align 3
L49:
	testb	$1, 40(%esp)
	je	L64
L69:
	testb	$2, 40(%esp)
	je	L65
L68:
	testb	$4, 40(%esp)
	je	L66
L67:
	testb	$8, 40(%esp)
	jne	L47
	movl	_ylookup, %eax
	movl	68(%esp), %edi
	movl	(%eax,%edi,4), %esi
	movl	_frameoffset, %eax
	addl	%ebp, %esi
	leal	3(%eax,%esi), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+12, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+12, %eax
	movl	%eax, 12(%esp)
	movl	44(%esp), %eax
	subl	%edi, %eax
L192:
	movl	%eax, 8(%esp)
	movl	_palookupoffse+12, %eax
	movl	%eax, 4(%esp)
	movl	_vince+12, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L47
	.p2align 4,,10
	.p2align 3
L51:
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
	cmpl	%esi, 60(%esp)
	jge	L61
L52:
	movl	_ylookup, %eax
	movl	60(%esp), %ecx
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
	cmpl	%esi, 68(%esp)
	jge	L60
L53:
	movl	_ylookup, %eax
	movl	68(%esp), %ecx
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
	jmp	L60
	.p2align 4,,10
	.p2align 3
L50:
	movl	_ylookup, %ecx
	movl	%edx, 40(%esp)
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
	movl	112(%esp), %eax
	subl	$1, %ecx
	movl	%eax, 4(%esp)
	movl	_vince, %eax
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	_prevlineasm1
	movl	40(%esp), %edx
	movl	%eax, _vplce
	jmp	L63
	.p2align 4,,10
	.p2align 3
L55:
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
	call	_prevlineasm1
	cmpl	%edi, 80(%esp)
	jle	L57
L56:
	leal	2(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+8, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+8, %eax
	movl	%eax, 12(%esp)
	movl	80(%esp), %eax
	subl	%edi, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+8, %eax
	movl	%eax, 4(%esp)
	movl	_vince+8, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	cmpl	%edi, 44(%esp)
	jle	L47
L219:
	movl	_bufplce+12, %eax
	addl	$3, %ebx
	movl	%ebx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	_vplce+12, %eax
	movl	%eax, 12(%esp)
	movl	44(%esp), %eax
	subl	%edi, %eax
	subl	$1, %eax
	jmp	L192
	.p2align 4,,10
	.p2align 3
L54:
	movl	_bufplce, %eax
	movl	%ebx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	_vplce, %eax
	movl	%eax, 12(%esp)
	movl	84(%esp), %eax
	subl	%edi, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse, %eax
	movl	%eax, 4(%esp)
	movl	_vince, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L59
	.p2align 4,,10
	.p2align 3
L66:
	movl	60(%esp), %edi
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
	movl	80(%esp), %eax
	subl	%edi, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+8, %eax
	movl	%eax, 4(%esp)
	movl	_vince+8, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L67
	.p2align 4,,10
	.p2align 3
L65:
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
	movl	52(%esp), %eax
	subl	%edx, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+4, %eax
	movl	%eax, 4(%esp)
	movl	_vince+4, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L68
	.p2align 4,,10
	.p2align 3
L64:
	movl	_ylookup, %ecx
	movl	%edx, 96(%esp)
	movl	(%ecx,%eax,4), %edi
	movl	_frameoffset, %ecx
	addl	%ebp, %edi
	addl	%edi, %ecx
	movl	%ecx, 20(%esp)
	movl	_bufplce, %ecx
	movl	%ecx, 16(%esp)
	movl	_vplce, %ecx
	movl	%ecx, 12(%esp)
	movl	84(%esp), %ecx
	subl	%eax, %ecx
	movl	112(%esp), %eax
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	_vince, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	movl	96(%esp), %edx
	jmp	L69
L196:
	movl	%eax, %edi
	jmp	L75
	.p2align 4,,10
	.p2align 3
L88:
	movl	184(%esp), %ecx
	movzwl	76(%esp), %edx
	movl	__ZL14globalxpanning.lto_priv.0, %eax
	addl	(%ecx,%edi), %eax
	movl	%edx, %ecx
	andl	%eax, %edx
	testw	%cx, %cx
	jns	L91
	movswl	%cx, %ecx
	xorl	%edx, %edx
	negl	%ecx
	divl	%ecx
L91:
	movl	84(%esp), %eax
	imull	%eax, %edx
	movl	__ZL8globalht.lto_priv.0, %eax
	testl	%eax, %eax
	je	L92
	movl	(%eax), %eax
L93:
	addl	%eax, %edx
	movl	__ZL14drawing_sprite.lto_priv.0, %ecx
	movl	__ZL8globalzd.lto_priv.0, %eax
	movl	%edx, _bufplce(,%esi,4)
	movl	__ZL8globalzd.lto_priv.0+4, %edx
	subl	_globalhoriz, %ebx
	movl	%eax, 68(%esp)
	movl	%edx, 72(%esp)
	addl	$1, %ebx
	testl	%ecx, %ecx
	jne	L220
	movl	180(%esp), %eax
	movl	(%eax,%edi), %eax
	imull	__ZL12globalyscale.lto_priv.0, %eax
	imull	%eax, %ebx
	movl	%eax, _vince(,%esi,4)
	movl	68(%esp), %eax
	addl	%eax, %ebx
	movl	%ebx, _vplce(,%esi,4)
	jmp	L89
	.p2align 4,,10
	.p2align 3
L220:
	movl	__ZL6swallf.lto_priv.0, %eax
	movss	(%eax,%edi), %xmm0
	movss	%xmm0, (%esp)
	call	_llrintf
	movl	%eax, %ecx
	movl	%eax, _vince(,%esi,4)
	movl	%ebx, %eax
	movl	%edx, 100(%esp)
	cltd
	movl	%edx, %eax
	movl	100(%esp), %edx
	imull	%ecx, %eax
	imull	%ebx, %edx
	addl	%edx, %eax
	movl	%eax, 100(%esp)
	movl	%ebx, %eax
	mull	%ecx
	movl	%eax, %ecx
	movl	100(%esp), %eax
	movl	%edx, %ebx
	addl	%eax, %ebx
	addl	68(%esp), %ecx
	adcl	72(%esp), %ebx
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
	jmp	L89
	.p2align 4,,10
	.p2align 3
L92:
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L93
	.p2align 4,,10
	.p2align 3
L202:
	testb	$9, 40(%esp)
	jne	L98
	movl	112(%esp), %eax
	movl	%eax, _palookupoffse+4
	jmp	L99
	.p2align 4,,10
	.p2align 3
L143:
	testb	$1, 40(%esp)
	je	L221
L102:
	testb	$2, 40(%esp)
	je	L222
L103:
	testb	$4, 40(%esp)
	je	L223
L104:
	testb	$8, 40(%esp)
	jne	L97
	movl	_ylookup, %eax
	movl	100(%esp), %edi
	movl	(%eax,%edi,4), %esi
	movl	_frameoffset, %eax
	addl	%ebp, %esi
	leal	3(%eax,%esi), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+12, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+12, %eax
	movl	%eax, 12(%esp)
	movl	60(%esp), %eax
	subl	%edi, %eax
L193:
	movl	%eax, 8(%esp)
	movl	_palookupoffse+12, %eax
	movl	%eax, 4(%esp)
	movl	_vince+12, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L97
	.p2align 4,,10
	.p2align 3
L210:
	movl	_bufplce+12, %eax
	addl	$3, %esi
	movl	%esi, 20(%esp)
	movl	%eax, 16(%esp)
	movl	_vplce+12, %eax
	movl	%eax, 12(%esp)
	movl	60(%esp), %eax
	subl	%ebx, %eax
	subl	$1, %eax
	jmp	L193
	.p2align 4,,10
	.p2align 3
L204:
	movl	_ylookup, %eax
	movl	%ecx, 40(%esp)
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
	movl	40(%esp), %ecx
	movl	%eax, _vplce+4
	jmp	L106
	.p2align 4,,10
	.p2align 3
L203:
	movl	%ecx, 116(%esp)
	movl	_ylookup, %ecx
	movl	%ebp, %eax
	movl	%edx, 40(%esp)
	movl	96(%esp), %edx
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
	movl	112(%esp), %eax
	movl	%eax, 4(%esp)
	movl	_vince, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	movl	116(%esp), %ecx
	movl	40(%esp), %edx
	movl	%eax, _vplce
	jmp	L105
	.p2align 4,,10
	.p2align 3
L208:
	leal	1(%esi), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+4, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+4, %eax
	movl	%eax, 12(%esp)
	movl	44(%esp), %eax
	subl	%ebx, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+4, %eax
	movl	%eax, 4(%esp)
	movl	_vince+4, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L110
	.p2align 4,,10
	.p2align 3
L207:
	movl	_bufplce, %eax
	movl	%esi, 20(%esp)
	movl	%eax, 16(%esp)
	movl	_vplce, %eax
	movl	%eax, 12(%esp)
	movl	52(%esp), %eax
	subl	%ebx, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse, %eax
	movl	%eax, 4(%esp)
	movl	_vince, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L109
	.p2align 4,,10
	.p2align 3
L206:
	movl	_ylookup, %eax
	movl	100(%esp), %esi
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
	jmp	L108
	.p2align 4,,10
	.p2align 3
L205:
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
	jmp	L107
	.p2align 4,,10
	.p2align 3
L209:
	leal	2(%esi), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+8, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+8, %eax
	movl	%eax, 12(%esp)
	movl	68(%esp), %eax
	subl	%ebx, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+8, %eax
	movl	%eax, 4(%esp)
	movl	_vince+8, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L111
L223:
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
	movl	68(%esp), %eax
	subl	%ecx, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+8, %eax
	movl	%eax, 4(%esp)
	movl	_vince+8, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L104
L222:
	movl	_ylookup, %eax
	movl	%ecx, 52(%esp)
	movl	(%eax,%edx,4), %edi
	movl	_frameoffset, %eax
	addl	%ebp, %edi
	leal	1(%eax,%edi), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+4, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+4, %eax
	movl	%eax, 12(%esp)
	movl	44(%esp), %eax
	subl	%edx, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+4, %eax
	movl	%eax, 4(%esp)
	movl	_vince+4, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	movl	52(%esp), %ecx
	jmp	L103
L221:
	movl	_ylookup, %ebx
	movl	96(%esp), %edi
	movl	%ebp, %eax
	movl	%ecx, 116(%esp)
	movl	%edx, 108(%esp)
	addl	(%ebx,%edi,4), %eax
	movl	_frameoffset, %ebx
	addl	%eax, %ebx
	movl	112(%esp), %eax
	movl	%ebx, 20(%esp)
	movl	_bufplce, %ebx
	movl	%eax, 4(%esp)
	movl	_vince, %eax
	movl	%ebx, 16(%esp)
	movl	_vplce, %ebx
	movl	%eax, (%esp)
	movl	%ebx, 12(%esp)
	movl	52(%esp), %ebx
	subl	%edi, %ebx
	movl	%ebx, 8(%esp)
	call	_prevlineasm1
	movl	116(%esp), %ecx
	movl	108(%esp), %edx
	jmp	L102
L214:
	movl	%eax, %edi
	jmp	L33
L18:
	testw	%cx, %cx
	je	L191
	movl	104(%esp), %eax
	subl	$2, %eax
	movl	%eax, 92(%esp)
L24:
	movl	92(%esp), %eax
	cmpl	%eax, %ebp
	jge	L191
	cmpw	$0, 78(%esp)
	jns	L34
	jmp	L138
L201:
	movl	__ZL5umost.lto_priv.0, %edx
	movl	__ZL5dmost.lto_priv.0, %eax
	cmpl	%ebp, 104(%esp)
	jge	L112
	jmp	L191
	.cfi_endproc
LFE1:
	.p2align 4
	.def	__ZL14transmaskvlinei;	.scl	3;	.type	32;	.endef
__ZL14transmaskvlinei:
LFB10:
	.cfi_startproc
	cmpl	_xdimen, %eax
	jnb	L240
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
	jl	L224
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
	je	L226
	movswl	4(%esi), %ecx
	sall	%cl, %ebp
	movswl	6(%esi), %ecx
	sall	%cl, %eax
L226:
	movl	__ZL5lwall.lto_priv.0, %edx
	negl	%eax
	negl	%ebp
	movl	%eax, %ecx
	movl	__ZL14globalxpanning.lto_priv.0, %eax
	addl	(%edx,%ebx,4), %eax
	movzwl	%bp, %edx
	andl	%eax, %edx
	testw	%bp, %bp
	jns	L228
	movswl	%bp, %ebp
	xorl	%edx, %edx
	negl	%ebp
	divl	%ebp
L228:
	movswl	%cx, %eax
	movl	%edx, %ebp
	negl	%eax
	sall	%cl, %ebp
	imull	%edx, %eax
	testw	%cx, %cx
	cmovs	%eax, %ebp
	testl	%esi, %esi
	je	L231
	movl	(%esi), %eax
L232:
	addl	%ebp, %eax
	movl	24(%esp), %esi
	subl	_globalhoriz, %esi
	movl	%eax, 36(%esp)
	movl	__ZL14drawing_sprite.lto_priv.0, %eax
	addl	$1, %esi
	movl	__ZL8globalzd.lto_priv.0, %edi
	movl	__ZL8globalzd.lto_priv.0+4, %ebp
	testl	%eax, %eax
	jne	L243
	movl	40(%esp), %ecx
	imull	__ZL12globalyscale.lto_priv.0, %ecx
	imull	%ecx, %esi
	addl	%edi, %esi
L234:
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
	jne	L235
	call	_tvlineasm1nonpow2
	movl	56(%esp), %ebp
	.cfi_restore 5
L224:
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
L240:
	ret
	.p2align 4,,10
	.p2align 3
L235:
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
L243:
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
	jmp	L234
	.p2align 4,,10
	.p2align 3
L231:
	movl	_waloff(,%edi,4), %eax
	jmp	L232
	.cfi_endproc
LFE10:
	.p2align 4
	.globl	_renderAddTsprite
	.def	_renderAddTsprite;	.scl	2;	.type	32;	.endef
_renderAddTsprite:
LFB11:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	%eax, %ecx
	movl	%esi, 40(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movswl	%ax, %edx
	movl	_g_nodraw, %eax
	movl	%ebp, 48(%esp)
	.cfi_offset 5, -8
	imull	$44, %edx, %ebp
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	movl	_sprite, %ebx
	addl	%ebp, %ebx
	testl	%eax, %eax
	jne	L245
	movl	_numyaxbunches, %edx
	testl	%edx, %edx
	jne	L244
	movl	_spritesortcnt, %esi
	cmpl	$4095, %esi
	jle	L272
L247:
	movl	$1, %eax
L244:
	movl	36(%esp), %ebx
	movl	40(%esp), %esi
	movl	48(%esp), %ebp
	addl	$52, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L245:
	.cfi_restore_state
	movzwl	__ZL17yax_spritesortcnt+16, %eax
	cmpw	$4095, %ax
	jg	L247
	addl	$1, %eax
	movw	%ax, __ZL17yax_spritesortcnt+16
	movzwl	12(%ebx), %ecx
	movl	%ecx, %eax
	andl	$48, %eax
	cmpw	$32, %ax
	je	L257
	movl	%edi, 44(%esp)
	.cfi_offset 7, -12
	movzbl	21(%ebx), %edi
	movw	%si, 12(%esp)
	movswl	14(%ebx), %esi
	movswl	_tilesiz+2(,%esi,4), %edx
	imull	%edi, %edx
	leal	0(,%edx,4), %eax
	addl	%edx, %edx
	andl	$128, %ecx
	movl	$0, %ecx
	cmovne	%edx, %ecx
	movsbl	_picanm+2(%esi,%esi,4), %edx
	movl	%eax, 24(%esp)
	movswl	12(%esp), %esi
	movl	(%ebx), %eax
	imull	%edi, %edx
	movl	%ecx, %edi
	movl	%esi, %ecx
	movl	%esi, 28(%esp)
	sall	$2, %edx
	subl	%edx, %edi
	movl	4(%ebx), %edx
	movl	$0, (%esp)
	movl	%edi, 32(%esp)
	movswl	%di, %edi
	call	_yax_getneighborsect
	movl	%esi, %ecx
	movl	%edi, 20(%esp)
	movl	$8, %esi
	testl	%eax, %eax
	js	L273
	movl	%ebp, 12(%esp)
	movl	%eax, %edi
	movl	%ebx, 16(%esp)
	jmp	L255
	.p2align 4,,10
	.p2align 3
L252:
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	call	_getceilzofslopeptr.part.0
	movl	12(%esp), %edx
	addl	_sprite, %edx
	movl	%eax, %ecx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	cmpl	%ecx, %ebx
	jge	L268
L274:
	subl	$1, %esi
	movzwl	__ZL17yax_spritesortcnt(%esi,%esi), %ecx
	cmpw	$4095, %cx
	jg	L254
	addl	$1, %ecx
	movw	%cx, __ZL17yax_spritesortcnt(%esi,%esi)
L254:
	movl	$0, (%esp)
	movl	%edi, %ecx
	call	_yax_getneighborsect
	movl	%edi, %ecx
	testl	%eax, %eax
	js	L265
	testl	%esi, %esi
	je	L265
	movl	%eax, %edi
L255:
	movl	16(%esp), %eax
	leal	(%ecx,%ecx,4), %ebp
	movl	_sector, %ecx
	movl	20(%esp), %ebx
	leal	(%ecx,%ebp,8), %ecx
	addl	8(%eax), %ebx
	movl	12(%esp), %eax
	addl	_sprite, %eax
	subl	24(%esp), %ebx
	movl	4(%eax), %edx
	movl	(%eax), %eax
	testb	$2, 12(%ecx)
	jne	L252
	movl	4(%ecx), %ecx
	cmpl	%ecx, %ebx
	jl	L274
L268:
	movl	12(%esp), %ebp
	movl	16(%esp), %ebx
L251:
	movl	$1, (%esp)
	movl	28(%esp), %ecx
	call	_yax_getneighborsect
	movl	%eax, %edi
	testl	%eax, %eax
	js	L271
	movswl	32(%esp), %esi
	movl	28(%esp), %eax
	movl	%ebx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	$__ZL17yax_spritesortcnt+18, %esi
	jmp	L261
	.p2align 4,,10
	.p2align 3
L258:
	movl	_sprite, %ecx
	addl	%ebp, %ecx
	movl	4(%ecx), %edx
	movl	%edx, 8(%esp)
	movl	(%ecx), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	_getflorzofslopeptr.part.0
	cmpl	%eax, %ebx
	jle	L271
L275:
	movzwl	(%esi), %eax
	cmpw	$4095, %ax
	jg	L260
	addl	$1, %eax
	movw	%ax, (%esi)
L260:
	movl	_sprite, %eax
	movl	%edi, %ecx
	addl	$2, %esi
	addl	%ebp, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	$1, (%esp)
	call	_yax_getneighborsect
	movl	%eax, %edx
	movl	%edi, %eax
	testl	%edx, %edx
	js	L271
	movl	%edx, %edi
L261:
	leal	(%eax,%eax,4), %ecx
	movl	_sector, %eax
	movl	16(%esp), %edx
	movl	12(%esp), %ebx
	leal	(%eax,%ecx,8), %eax
	addl	8(%edx), %ebx
	testb	$2, 14(%eax)
	jne	L258
	movl	8(%eax), %eax
	cmpl	%eax, %ebx
	jg	L275
	.p2align 4
	.p2align 3
L271:
	movl	44(%esp), %edi
	.cfi_restore 7
L257:
	movl	36(%esp), %ebx
	movl	40(%esp), %esi
	xorl	%eax, %eax
	movl	48(%esp), %ebp
	addl	$52, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L272:
	.cfi_restore_state
	leal	1(%esi), %edx
	movl	%edx, _spritesortcnt
	movl	(%ebx), %edx
	imull	$44, %esi, %esi
	addl	_tsprite, %esi
	movl	%edx, (%esi)
	movl	4(%ebx), %edx
	movl	%edx, 4(%esi)
	movl	8(%ebx), %edx
	movl	%edx, 8(%esi)
	movzwl	12(%ebx), %edx
	movw	%dx, 12(%esi)
	movzwl	14(%ebx), %edx
	movw	%dx, 14(%esi)
	movzbl	16(%ebx), %edx
	movb	%dl, 16(%esi)
	movzbl	17(%ebx), %edx
	movb	%dl, 17(%esi)
	movzbl	19(%ebx), %edx
	movb	%dl, 19(%esi)
	movzbl	20(%ebx), %edx
	movb	%dl, 20(%esi)
	movzbl	21(%ebx), %edx
	movb	%dl, 21(%esi)
	movzbl	22(%ebx), %edx
	movb	%dl, 22(%esi)
	movzbl	23(%ebx), %edx
	movb	%dl, 23(%esi)
	movzwl	24(%ebx), %edx
	movw	%dx, 24(%esi)
	movzwl	26(%ebx), %edx
	movw	%dx, 26(%esi)
	movzwl	28(%ebx), %edx
	movw	%dx, 28(%esi)
	movl	32(%ebx), %edx
	movl	%edx, 32(%esi)
	movzwl	36(%ebx), %edx
	movw	%dx, 36(%esi)
	movzwl	38(%ebx), %edx
	movw	%dx, 38(%esi)
	movzwl	40(%ebx), %edx
	movw	%dx, 40(%esi)
	movzwl	42(%ebx), %edx
	movb	$0, 18(%esi)
	movw	%dx, 42(%esi)
	movw	%cx, 30(%esi)
	movl	36(%esp), %ebx
	movl	40(%esp), %esi
	movl	48(%esp), %ebp
	addl	$52, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L265:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	12(%esp), %ebp
	movl	_sprite, %edx
	movl	16(%esp), %ebx
	addl	%ebp, %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	jmp	L251
L273:
	movl	_sprite, %eax
	addl	%ebp, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	jmp	L251
	.cfi_endproc
LFE11:
	.p2align 4
	.globl	__ZL17get_screen_coordsRK4vec2IiES2_PiS3_S3_S3_.lto_priv.0
	.def	__ZL17get_screen_coordsRK4vec2IiES2_PiS3_S3_S3_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL17get_screen_coordsRK4vec2IiES2_PiS3_S3_S3_.lto_priv.0:
LFB18:
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
	jl	L277
	testl	%ecx, %ecx
	je	L283
	cmpl	%ecx, %edx
	jle	L278
L283:
	xorl	%eax, %eax
L276:
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
L277:
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
	jl	L291
	addl	%ecx, %edx
	leal	(%eax,%edi), %ebp
	movl	%edx, %eax
	subl	%ebp, %eax
	jne	L299
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
L291:
	.cfi_restore_state
	movl	36(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
	jmp	L283
	.p2align 4,,10
	.p2align 3
L299:
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
	call	_tabledivide64.lto_priv.9
	movl	20(%esp), %ecx
	movl	40(%esp), %ebp
	.cfi_restore 5
	addl	%eax, %ecx
L282:
	cmpl	$255, %ecx
	jle	L298
	movl	(%esi), %edx
	movl	4(%esi), %eax
	cmpl	%eax, %edx
	jg	L284
	movl	%eax, %ebx
	negl	%ebx
	cmpl	%ebx, %edx
	jl	L298
	testl	%eax, %eax
	jne	L300
	.p2align 4
	.p2align 3
L298:
	movl	36(%esp), %edi
	.cfi_restore 7
	jmp	L283
	.p2align 4,,10
	.p2align 3
L278:
	movl	%edx, %eax
	imull	_halfxdimen
	movl	%ecx, 8(%esp)
	sarl	$31, %ecx
	movl	%ecx, 12(%esp)
	movl	%edi, 36(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	.cfi_offset 7, -12
	call	_tabledivide64.lto_priv.9
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
	jmp	L282
	.p2align 4,,10
	.p2align 3
L284:
	movl	(%ebx), %esi
	movl	4(%ebx), %ebx
	cmpl	%ebx, %esi
	jg	L298
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
	call	_tabledivide64.lto_priv.9
	movl	24(%esp), %ecx
	movl	40(%esp), %ebp
	.cfi_restore 5
	addl	%ebx, %eax
L286:
	cmpl	$255, %eax
	jle	L298
	movl	20(%esp), %esi
	cmpl	%esi, %edi
	jg	L298
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
	jmp	L276
	.p2align 4,,10
	.p2align 3
L300:
	.cfi_restore_state
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%edx, %eax
	imull	_halfxdimen
	movl	%ecx, 24(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
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
	jmp	L286
	.cfi_endproc
LFE18:
	.p2align 4
	.globl	__ZL12maskwallscaniii.lto_priv.0
	.def	__ZL12maskwallscaniii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL12maskwallscaniii.lto_priv.0:
LFB19:
	.cfi_startproc
	cmpw	$0, __ZL14globalshiftval.lto_priv.0
	js	L481
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
	jle	L303
	movswl	(%edx,%ebp,2), %edx
	cmpl	%edx, %eax
	jl	L301
L303:
	movl	__ZL5dwall.lto_priv.0, %eax
	cmpw	$0, (%eax,%ebx)
	js	L486
L304:
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
	jle	L301
	cmpw	$0, 84(%esp)
	jle	L301
	movswl	_globalpicnum, %ebx
	movl	%ecx, 24(%esp)
	movl	%ebp, 48(%esp)
	movl	%ebx, %eax
	call	__Z12tileLoadHighi
	movl	%eax, __ZL8globalht.lto_priv.0
	movl	%eax, %edx
	testl	%eax, %eax
	je	L305
	movl	(%eax), %eax
	movswl	4(%edx), %ecx
	movswl	6(%edx), %ebp
L306:
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
	jne	L308
	leal	-1(%esi), %ecx
	movw	%cx, 84(%esp)
L308:
	shrb	$4, %al
	movswl	%bx, %edx
	negl	%ebx
	movzbl	%al, %ecx
	movw	%bx, 86(%esp)
	cmpl	%edx, _pow2long.lto_priv.0(,%ecx,4)
	jne	L310
	movzbl	%al, %eax
	movw	%ax, 86(%esp)
L310:
	movl	_globalpal, %eax
	movl	_palookup(,%eax,4), %eax
	movl	%eax, 40(%esp)
	testl	%eax, %eax
	je	L487
L311:
	movl	24(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	__ZL14globalshiftval.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_setupmvlineasm
	movl	_frameoffset, %eax
	movzwl	__ZL14globalshiftval.lto_priv.0, %ebp
	movl	%eax, 24(%esp)
	cmpl	48(%esp), %edi
	jg	L312
	movl	_windowxy1, %eax
	movl	_startumost, %edx
	movl	_startdmost, %ecx
	leal	(%eax,%eax), %ebx
	movl	%edx, 28(%esp)
	leal	(%edx,%ebx), %esi
	movl	%eax, 32(%esp)
	movl	48(%esp), %edx
	addl	%ecx, %ebx
	jmp	L313
	.p2align 5
	.p2align 4,,10
	.p2align 3
L315:
	addl	$1, %edi
	cmpl	%edi, %edx
	jl	L314
L313:
	movzwl	(%ebx,%edi,2), %eax
	cmpw	%ax, (%esi,%edi,2)
	jg	L315
	movl	24(%esp), %ebx
	movl	28(%esp), %edx
	movl	32(%esp), %eax
	addl	%edi, %ebx
	movl	%ebx, 24(%esp)
	testw	%bp, %bp
	jne	L434
L316:
	cmpl	%edi, 48(%esp)
	jl	L301
	cmpw	$0, 86(%esp)
	js	L437
	movl	%edi, 72(%esp)
	jmp	L428
	.p2align 4,,10
	.p2align 3
L486:
	cmpw	$0, (%eax,%ebp,2)
	jns	L304
L301:
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
L481:
	ret
	.p2align 4,,10
	.p2align 3
L305:
	.cfi_def_cfa_offset 176
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	_waloff(,%ebx,4), %eax
	xorl	%ebp, %ebp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jne	L306
	movl	%ebx, %eax
	movl	%ecx, 28(%esp)
	call	_tileLoad.isra.0
	movl	_waloff(,%ebx,4), %eax
	movl	28(%esp), %ecx
	jmp	L306
	.p2align 4,,10
	.p2align 3
L314:
	testw	%bp, %bp
	je	L301
	movl	24(%esp), %eax
	addl	%edi, %eax
	movl	%eax, 24(%esp)
L434:
	movl	48(%esp), %eax
	leal	-2(%eax), %ebx
	movl	%ebx, 104(%esp)
	cmpl	%edi, %eax
	jl	L318
	movswl	86(%esp), %eax
	testw	%ax, %ax
	js	L488
	movswl	84(%esp), %eax
	negl	%eax
	movl	%eax, 68(%esp)
	jmp	L339
	.p2align 4,,10
	.p2align 3
L468:
	movzwl	84(%esp), %edx
	andl	%eax, %edx
L338:
	movzbl	86(%esp), %ecx
	movl	__ZL8globalht.lto_priv.0, %eax
	sall	%cl, %edx
	testl	%eax, %eax
	je	L489
	movl	(%eax), %eax
L337:
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
	jne	L490
	movl	28(%esp), %eax
	movl	__ZL12globalyscale.lto_priv.0, %ecx
	imull	(%eax), %ecx
	movl	32(%esp), %eax
	imull	%ecx, %esi
	movl	%ecx, 28(%esp)
	addl	%eax, %esi
L336:
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
L329:
	addl	$1, 24(%esp)
	addl	$1, %edi
	cmpl	%edi, 48(%esp)
	jl	L328
L339:
	testb	$3, 24(%esp)
	je	L328
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
	jle	L329
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
	jns	L468
	xorl	%edx, %edx
	divl	68(%esp)
	jmp	L338
	.p2align 4,,10
	.p2align 3
L490:
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
	jmp	L336
	.p2align 4,,10
	.p2align 3
L489:
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L337
	.p2align 4,,10
	.p2align 3
L328:
	movl	104(%esp), %eax
	movl	%edi, 116(%esp)
	cmpl	%eax, %edi
	jge	L491
L431:
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
L378:
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
L352:
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
	jl	L342
	movl	__ZL5lwall.lto_priv.0, %edx
	movl	__ZL14globalxpanning.lto_priv.0, %eax
	leal	0(,%ebp,4), %esi
	addl	(%edx,%ebp,4), %eax
	cmpw	$0, 84(%esp)
	js	L492
	movl	108(%esp), %edx
	andl	%eax, %edx
L351:
	movzbl	88(%esp), %ecx
	movl	__ZL8globalht.lto_priv.0, %eax
	sall	%cl, %edx
	testl	%eax, %eax
	je	L493
	movl	(%eax), %eax
L350:
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
	jne	L347
	movl	__ZL5swall.lto_priv.0, %eax
	movl	(%eax,%esi), %eax
	imull	__ZL12globalyscale.lto_priv.0, %eax
	movl	%eax, _vince(,%edi,4)
	imull	%ebx, %eax
	addl	%edx, %eax
	movl	%eax, _vplce(,%edi,4)
L348:
	subl	$1, %edi
	subl	$1, %ebp
	cmpl	$-1, %edi
	jne	L352
	cmpb	$15, 44(%esp)
	je	L353
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
	je	L354
L376:
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
L377:
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
	jle	L355
	cmpb	$0, 44(%esp)
	jne	L355
	cmpl	%eax, %esi
	jg	L356
L369:
	cmpl	%ebp, 108(%esp)
	jg	L357
	cmpl	%edx, %esi
	jg	L358
L367:
	movl	88(%esp), %eax
	cmpl	%eax, %esi
	jg	L359
L366:
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
	jl	L360
L365:
	movl	52(%esp), %eax
	cmpl	%eax, %edi
	jl	L361
L364:
	movl	72(%esp), %eax
	cmpl	%eax, %edi
	jl	L362
L363:
	movl	76(%esp), %eax
	cmpl	%eax, %edi
	jl	L494
L353:
	addl	$4, 80(%esp)
	movl	104(%esp), %edi
	movl	80(%esp), %eax
	cmpl	%edi, %eax
	jl	L378
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
	jl	L301
	movl	24(%esp), %ebx
	movl	%edi, 72(%esp)
	movl	_startumost, %edx
	movl	_startdmost, %ecx
	leal	4(%ebx,%eax), %eax
	movl	%eax, 24(%esp)
	movl	_windowxy1, %eax
L428:
	movswl	84(%esp), %ebx
	negl	%ebx
	movl	%ebx, 76(%esp)
	jmp	L418
	.p2align 4,,10
	.p2align 3
L498:
	call	_mvlineasm1
L407:
	addl	$1, %edi
	cmpl	%edi, 48(%esp)
	jl	L301
	movl	_windowxy1, %eax
	movl	_startumost, %edx
	movl	_startdmost, %ecx
L418:
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
	jge	L407
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
	js	L495
	movzwl	84(%esp), %edx
	andl	%eax, %edx
L417:
	movzbl	86(%esp), %ecx
	movl	__ZL8globalht.lto_priv.0, %eax
	sall	%cl, %edx
	testl	%eax, %eax
	je	L496
	movl	(%eax), %eax
L416:
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
	jne	L497
	movl	0(%ebp), %ecx
	imull	__ZL12globalyscale.lto_priv.0, %ecx
	movl	60(%esp), %eax
	imull	%ecx, %esi
	addl	%eax, %esi
L415:
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
	jne	L498
	call	_mvlineasm1nonpow2
	jmp	L407
	.p2align 4,,10
	.p2align 3
L342:
	movzbl	__ZL8pow2char.lto_priv.9(%edi), %ecx
	addb	%cl, 44(%esp)
	jmp	L348
	.p2align 4,,10
	.p2align 3
L492:
	xorl	%edx, %edx
	divl	120(%esp)
	jmp	L351
	.p2align 4,,10
	.p2align 3
L347:
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
	jmp	L348
	.p2align 4,,10
	.p2align 3
L493:
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L350
	.p2align 4,,10
	.p2align 3
L495:
	xorl	%edx, %edx
	divl	76(%esp)
	jmp	L417
	.p2align 4,,10
	.p2align 3
L354:
	testb	$9, 44(%esp)
	jne	L376
	movl	112(%esp), %eax
	movl	%eax, _palookupoffse+4
	jmp	L377
	.p2align 4,,10
	.p2align 3
L355:
	testb	$1, 44(%esp)
	je	L370
L375:
	testb	$2, 44(%esp)
	je	L371
L374:
	testb	$4, 44(%esp)
	je	L372
L373:
	testb	$8, 44(%esp)
	jne	L353
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
L484:
	movl	%eax, 8(%esp)
	movl	_palookupoffse+12, %eax
	movl	%eax, 4(%esp)
	movl	_vince+12, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	jmp	L353
	.p2align 4,,10
	.p2align 3
L497:
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
	jmp	L415
	.p2align 4,,10
	.p2align 3
L496:
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L416
	.p2align 4,,10
	.p2align 3
L494:
	movl	_bufplce+12, %eax
	addl	$3, %ebx
	movl	%ebx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	_vplce+12, %eax
	movl	%eax, 12(%esp)
	movl	76(%esp), %eax
	subl	%edi, %eax
	subl	$1, %eax
	jmp	L484
	.p2align 4,,10
	.p2align 3
L362:
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
	jmp	L363
	.p2align 4,,10
	.p2align 3
L357:
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
	jle	L367
L358:
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
	jle	L366
L359:
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
	jmp	L366
	.p2align 4,,10
	.p2align 3
L356:
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
	jmp	L369
	.p2align 4,,10
	.p2align 3
L361:
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
	jmp	L364
	.p2align 4,,10
	.p2align 3
L360:
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
	jmp	L365
	.p2align 4,,10
	.p2align 3
L487:
	movl	_palookup, %eax
	movl	$0, _globalpal
	movl	%eax, 40(%esp)
	jmp	L311
	.p2align 4,,10
	.p2align 3
L372:
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
	jmp	L373
	.p2align 4,,10
	.p2align 3
L371:
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
	jmp	L374
	.p2align 4,,10
	.p2align 3
L370:
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
	jmp	L375
L488:
	negl	%eax
	movl	%eax, 60(%esp)
	jmp	L326
	.p2align 4,,10
	.p2align 3
L324:
	movl	(%ecx), %ecx
	imull	__ZL12globalyscale.lto_priv.0, %ecx
	movl	52(%esp), %eax
	imull	%ecx, %esi
	movl	%ecx, 28(%esp)
	addl	%eax, %esi
L325:
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
L319:
	addl	$1, 24(%esp)
	addl	$1, %edi
	cmpl	%edi, 48(%esp)
	jl	L327
L326:
	testb	$3, 24(%esp)
	je	L327
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
	jge	L319
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
	jns	L321
	movswl	%si, %esi
	xorl	%edx, %edx
	negl	%esi
	divl	%esi
L321:
	movl	60(%esp), %eax
	imull	%eax, %edx
	movl	__ZL8globalht.lto_priv.0, %eax
	testl	%eax, %eax
	je	L322
	movl	(%eax), %eax
L323:
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
	je	L324
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
	jmp	L325
	.p2align 4,,10
	.p2align 3
L322:
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L323
L327:
	movl	%edi, 116(%esp)
	cmpl	%edi, 104(%esp)
	jle	L499
L341:
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
L404:
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
L388:
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
	jge	L380
	movzbl	__ZL8pow2char.lto_priv.9(%ebp), %ecx
	addb	%cl, 44(%esp)
L381:
	subl	$1, %ebp
	subl	$1, %esi
	cmpl	$-1, %ebp
	jne	L388
	cmpb	$15, 44(%esp)
	je	L389
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
	je	L500
L390:
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
L391:
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
	jne	L442
	cmpl	%ebx, %edi
	jge	L442
	movl	88(%esp), %eax
	cmpl	%eax, %edi
	jg	L501
L397:
	cmpl	%esi, %edx
	jl	L502
L398:
	cmpl	%ebp, %edi
	jg	L503
L399:
	cmpl	%ecx, %edi
	jg	L504
L400:
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
	jg	L505
L401:
	movl	52(%esp), %eax
	cmpl	%eax, %ebx
	jl	L506
L402:
	movl	76(%esp), %eax
	cmpl	%eax, %ebx
	jl	L507
L403:
	movl	68(%esp), %eax
	cmpl	%eax, %ebx
	jl	L508
L389:
	addl	$4, 80(%esp)
	movl	104(%esp), %edi
	movl	80(%esp), %eax
	cmpl	%edi, %eax
	jl	L404
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
	jl	L301
	movl	24(%esp), %ecx
	movl	_startumost, %edx
	movl	%edi, 68(%esp)
	leal	4(%ecx,%eax), %eax
	movl	_startdmost, %ecx
	movl	%eax, 24(%esp)
	movl	_windowxy1, %eax
L406:
	movswl	86(%esp), %ebx
	negl	%ebx
	movl	%ebx, 72(%esp)
	jmp	L427
	.p2align 4,,10
	.p2align 3
L510:
	movl	%ecx, (%esp)
	call	_mvlineasm1nonpow2
L419:
	addl	$1, %edi
	cmpl	%edi, 48(%esp)
	jl	L301
	movl	_windowxy1, %eax
	movl	_startumost, %edx
	movl	_startdmost, %ecx
L427:
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
	jge	L419
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
	jns	L421
	movswl	%si, %esi
	xorl	%edx, %edx
	negl	%esi
	divl	%esi
L421:
	movl	72(%esp), %eax
	imull	%eax, %edx
	movl	__ZL8globalht.lto_priv.0, %eax
	testl	%eax, %eax
	je	L422
	movl	(%eax), %eax
L423:
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
	jne	L509
	movl	(%ecx), %ecx
	imull	__ZL12globalyscale.lto_priv.0, %ecx
	movl	60(%esp), %eax
	imull	%ecx, %esi
	movl	%ecx, 28(%esp)
	addl	%eax, %esi
L425:
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
	je	L510
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	jmp	L419
	.p2align 4,,10
	.p2align 3
L380:
	movl	__ZL5lwall.lto_priv.0, %edx
	movl	__ZL14globalxpanning.lto_priv.0, %eax
	leal	0(,%esi,4), %edi
	addl	(%edx,%esi,4), %eax
	movzwl	84(%esp), %edx
	movl	%edx, %ebx
	andl	%eax, %edx
	testw	%bx, %bx
	jns	L383
	movswl	%bx, %ebx
	xorl	%edx, %edx
	negl	%ebx
	divl	%ebx
L383:
	movl	96(%esp), %eax
	imull	%eax, %edx
	movl	__ZL8globalht.lto_priv.0, %eax
	testl	%eax, %eax
	je	L384
	movl	(%eax), %eax
L385:
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
	jne	L511
	movl	__ZL5swall.lto_priv.0, %eax
	movl	(%eax,%edi), %eax
	imull	__ZL12globalyscale.lto_priv.0, %eax
	imull	%eax, %ebx
	movl	%eax, _vince(,%ebp,4)
	movl	88(%esp), %eax
	addl	%eax, %ebx
	movl	%ebx, _vplce(,%ebp,4)
	jmp	L381
	.p2align 4,,10
	.p2align 3
L511:
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
	jmp	L381
	.p2align 4,,10
	.p2align 3
L384:
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L385
	.p2align 4,,10
	.p2align 3
L500:
	testb	$9, 44(%esp)
	jne	L390
	movl	112(%esp), %eax
	movl	%eax, _palookupoffse+4
	jmp	L391
	.p2align 4,,10
	.p2align 3
L442:
	testb	$1, 44(%esp)
	je	L512
L394:
	testb	$2, 44(%esp)
	je	L513
L395:
	testb	$4, 44(%esp)
	je	L514
L396:
	testb	$8, 44(%esp)
	jne	L389
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
	jmp	L485
	.p2align 4,,10
	.p2align 3
L509:
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
	jmp	L425
	.p2align 4,,10
	.p2align 3
L422:
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L423
	.p2align 4,,10
	.p2align 3
L502:
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
	jmp	L398
	.p2align 4,,10
	.p2align 3
L501:
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
	jmp	L397
	.p2align 4,,10
	.p2align 3
L508:
	movl	_bufplce+12, %eax
	addl	$3, %esi
	movl	%esi, 20(%esp)
	movl	%eax, 16(%esp)
	movl	_vplce+12, %eax
	movl	%eax, 12(%esp)
	movl	68(%esp), %eax
	subl	%ebx, %eax
	subl	$1, %eax
L485:
	movl	%eax, 8(%esp)
	movl	_palookupoffse+12, %eax
	movl	%eax, 4(%esp)
	movl	_vince+12, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	jmp	L389
	.p2align 4,,10
	.p2align 3
L507:
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
	jmp	L403
	.p2align 4,,10
	.p2align 3
L506:
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
	jmp	L402
	.p2align 4,,10
	.p2align 3
L505:
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
	jmp	L401
	.p2align 4,,10
	.p2align 3
L504:
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
	jmp	L400
	.p2align 4,,10
	.p2align 3
L503:
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
	jmp	L399
L437:
	movl	%edi, 68(%esp)
	jmp	L406
L514:
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
	jmp	L396
L513:
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
	jmp	L395
L512:
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
	jmp	L394
L312:
	testw	%bp, %bp
	je	L301
	movl	24(%esp), %eax
	addl	%edi, %eax
	movl	%eax, 24(%esp)
	movl	48(%esp), %eax
	subl	$2, %eax
	movl	%eax, 104(%esp)
L318:
	movl	104(%esp), %eax
	cmpl	%eax, %edi
	jge	L301
	cmpw	$0, 86(%esp)
	movl	%edi, 116(%esp)
	jns	L431
	jmp	L341
L491:
	cmpl	%edi, 48(%esp)
	jl	L301
	movl	%edi, 72(%esp)
	movl	_windowxy1, %eax
	movl	_startumost, %edx
	movl	_startdmost, %ecx
	jmp	L428
L499:
	cmpl	%edi, 48(%esp)
	jl	L301
	movl	%edi, 68(%esp)
	movl	_windowxy1, %eax
	movl	_startumost, %edx
	movl	_startdmost, %ecx
	jmp	L406
	.cfi_endproc
LFE19:
	.p2align 4
	.globl	_wallfront
	.def	_wallfront;	.scl	2;	.type	32;	.endef
_wallfront:
LFB20:
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
	jne	L516
	movl	%eax, %ebp
	testl	%eax, %eax
	je	L523
L517:
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
L518:
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
L516:
	.cfi_restore_state
	testl	%eax, %eax
	je	L520
	xorl	20(%esp), %eax
	jns	L520
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
	jne	L522
	testl	%eax, %eax
	je	L523
L524:
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
L520:
	.cfi_restore_state
	movl	20(%esp), %ebp
	jmp	L517
	.p2align 4,,10
	.p2align 3
L522:
	testl	%eax, %eax
	jne	L525
L526:
	movl	8(%esp), %ebp
	jmp	L524
	.p2align 4,,10
	.p2align 3
L525:
	xorl	8(%esp), %eax
	movl	$-2, %eax
	jns	L526
	jmp	L518
L523:
	movl	$-1, %eax
	jmp	L518
	.cfi_endproc
LFE20:
	.p2align 4
	.globl	__ZL8prepwalliPK11uwalltypev7.lto_priv.0
	.def	__ZL8prepwalliPK11uwalltypev7.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL8prepwalliPK11uwalltypev7.lto_priv.0:
LFB21:
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
	je	L533
	movswl	4(%eax), %ecx
	sall	%cl, %edi
	movl	%edi, 36(%esp)
L533:
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
	jne	L574
L534:
	movl	__ZL3xb2.lto_priv.0(,%ebp,4), %eax
	leal	3(%esi), %edx
	movl	$0, 56(%esp)
	cmpl	%eax, %edx
	jge	L575
	movl	%ebp, 28(%esp)
	xorl	%ebp, %ebp
	jmp	L536
	.p2align 4,,10
	.p2align 3
L535:
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
	jge	L576
	movl	%ebx, %esi
L536:
	movl	32(%esp), %ecx
	subl	%ecx, 20(%esp)
	leal	4(%esi), %ebx
	movl	24(%esp), %ecx
	addl	%ecx, 16(%esp)
	je	L535
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
	call	_tabledivide64.lto_priv.9
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
	jmp	L535
	.p2align 4,,10
	.p2align 3
L576:
	movl	%ebp, 56(%esp)
	movl	28(%esp), %ebp
L537:
	leal	1(%ecx), %edx
	cmpl	%eax, %edx
	jge	L538
	movl	52(%esp), %eax
	leal	2(%ecx), %ebx
	sarl	%eax
	addl	%eax, 20(%esp)
	movl	48(%esp), %eax
	sarl	$9, %eax
	addl	%eax, 16(%esp)
	jne	L577
L539:
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
L538:
	cmpl	%ecx, __ZL3xb2.lto_priv.0(,%ebp,4)
	jle	L540
	movl	48(%esp), %eax
	sarl	$10, %eax
	addl	16(%esp), %eax
	jne	L578
L540:
	movl	__ZL5lwall.lto_priv.0, %eax
	movl	_xb1(,%ebp,4), %edx
	leal	(%eax,%edx,4), %edx
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	jns	L541
	movl	$0, (%edx)
	movl	__ZL5lwall.lto_priv.0, %eax
L541:
	movl	__ZL3xb2.lto_priv.0(,%ebp,4), %edx
	movl	36(%esp), %edi
	leal	(%eax,%edx,4), %eax
	cmpl	%edi, (%eax)
	jl	L542
	testl	%edi, %edi
	jne	L579
L542:
	movl	60(%esp), %eax
	testb	$8, 14(%eax)
	je	L532
	movl	_xb1(,%ebp,4), %eax
	cmpl	__ZL3xb2.lto_priv.0(,%ebp,4), %eax
	jg	L532
	movl	36(%esp), %edx
	subl	$1, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L544:
	movl	__ZL5lwall.lto_priv.0, %ecx
	movl	%edx, %ebx
	subl	(%ecx,%eax,4), %ebx
	movl	%ebx, (%ecx,%eax,4)
	addl	$1, %eax
	cmpl	%eax, __ZL3xb2.lto_priv.0(,%ebp,4)
	jge	L544
L532:
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
L579:
	.cfi_restore_state
	leal	-1(%edi), %edx
	movl	%edx, (%eax)
	jmp	L542
	.p2align 4,,10
	.p2align 3
L574:
	movl	20(%esp), %eax
	movl	%ebx, 8(%esp)
	sarl	$31, %ebx
	movl	%ebx, 12(%esp)
	cltd
	shldl	$12, %eax, %edx
	sall	$12, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
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
	jmp	L534
	.p2align 4,,10
	.p2align 3
L578:
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
	call	_tabledivide64.lto_priv.9
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
	jmp	L540
	.p2align 4,,10
	.p2align 3
L577:
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
	call	_tabledivide64.lto_priv.9
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
	jmp	L539
	.p2align 4,,10
	.p2align 3
L575:
	movl	%esi, %ecx
	jmp	L537
	.cfi_endproc
LFE21:
	.p2align 4
	.globl	_animateoffs
	.def	_animateoffs;	.scl	2;	.type	32;	.endef
_animateoffs:
LFB22:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movzbl	_picanm(%eax,%eax,4), %ebx
	testl	%ebx, %ebx
	je	L580
	movzbl	_picanm+3(%eax,%eax,4), %edx
	movl	_totalclocklock, %eax
	movl	%edx, %ecx
	andl	$-64, %edx
	andl	$15, %ecx
	sarl	%cl, %eax
	cmpb	$-128, %dl
	je	L582
	cmpb	$-64, %dl
	je	L583
	cmpb	$64, %dl
	je	L590
	xorl	%ebx, %ebx
L580:
	movl	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L590:
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
L582:
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
L583:
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
LFE22:
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
LFB23:
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
	jne	L788
	movl	184(%esp), %eax
	cmpb	$0, 8(%ebp)
	je	L789
	testb	$2, 14(%eax)
	je	L790
	movl	184(%esp), %eax
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_getflorzofslopeptr.part.0
L655:
	cmpl	%eax, _globalposz
	jge	L782
	movl	184(%esp), %esi
	movzwl	14(%esi), %eax
	movzwl	24(%esi), %ebx
	movswl	26(%esi), %edi
	movl	%eax, _globalorientation
	movsbl	28(%esi), %eax
	movw	%bx, _globalpicnum
	movl	%eax, _globalshade
	movzbl	29(%esi), %eax
	movl	%edi, 124(%esp)
	movl	%eax, _globalpal
	movl	8(%esi), %eax
	movl	%eax, 100(%esp)
L653:
	movswl	%bx, %eax
	cmpb	$63, _picanm+3(%eax,%eax,4)
	jbe	L656
	call	_animateoffs
	addl	%eax, %ebx
	movw	%bx, _globalpicnum
	movswl	%bx, %eax
L656:
	testb	$64, 149(%esp)
	je	L658
	testb	$16, _globalorientation+1
	jne	L791
L658:
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
	jle	L782
	cmpw	$0, _tilesiz+2(,%ebx,4)
	jle	L782
	movl	%ebx, %eax
	call	__Z12tileLoadHighi
	movl	%eax, __ZL8globalht.lto_priv.0
	testl	%eax, %eax
	je	L660
	movswl	4(%eax), %edi
	movl	(%eax), %edx
	movswl	6(%eax), %eax
	movl	%edi, 172(%esp)
	movl	%eax, 68(%esp)
L661:
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
	je	L662
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
L662:
	testb	$4, 140(%esp)
	je	L663
	movl	168(%esp), %eax
	movl	164(%esp), %edx
	movl	176(%esp), %edi
	movl	152(%esp), %esi
	negl	%eax
	movl	156(%esp), %ebx
	negl	%edx
	movl	%eax, 164(%esp)
	movl	180(%esp), %eax
	negl	%edi
	movl	%esi, _globalx1
	negl	%eax
	movl	%ebx, __ZL8globaly1.lto_priv.0
	movl	%eax, __ZL8globalx2.lto_priv.0
	movl	%edi, 180(%esp)
	movl	%edi, _globaly2
	movl	%eax, 176(%esp)
	movl	%esi, 156(%esp)
	movl	%ebx, 152(%esp)
	movl	%edx, 168(%esp)
L663:
	testb	$16, 140(%esp)
	je	L664
	negl	156(%esp)
	movl	156(%esp), %eax
	negl	176(%esp)
	movl	%eax, _globalx1
	movl	176(%esp), %eax
	negl	168(%esp)
	movl	%eax, __ZL8globalx2.lto_priv.0
L664:
	testb	$32, 140(%esp)
	je	L665
	negl	152(%esp)
	movl	152(%esp), %eax
	negl	180(%esp)
	movl	%eax, __ZL8globaly1.lto_priv.0
	movl	180(%esp), %eax
	negl	164(%esp)
	movl	%eax, _globaly2
L665:
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
	jne	L666
	movl	$8, %eax
	movl	%eax, %edx
	subl	%edi, %eax
	subl	%ecx, %edx
L667:
	movl	156(%esp), %edi
	leal	12(%edx), %ecx
	sall	%cl, %edi
	leal	12(%eax), %ecx
	movl	%edi, 180(%esp)
	movl	152(%esp), %edi
	sall	%cl, %edi
	movl	%edi, 164(%esp)
	testl	%edx, %edx
	js	L668
	movl	136(%esp), %edi
	movl	%edx, %ecx
	sall	%cl, %ebx
	sall	%cl, %edi
	movl	%edi, 136(%esp)
L669:
	movl	%ebx, __ZL8globalx2.lto_priv.0
	testl	%eax, %eax
	js	L670
	movl	128(%esp), %edi
	movl	%eax, %ecx
	movl	132(%esp), %edx
	sall	%cl, %edi
	sall	%cl, %edx
	movl	%edi, 132(%esp)
L671:
	movl	%edx, _globaly2
	movl	184(%esp), %edi
	cmpb	$0, 8(%ebp)
	jne	L672
	movzbl	22(%edi), %eax
	movzbl	23(%edi), %edx
	sall	$24, %eax
	sall	$24, %edx
	addl	180(%esp), %eax
	addl	164(%esp), %edx
L673:
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
	je	L674
	addl	$16, %edx
	movzbl	%dl, %edx
/APP
 # 4086 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
L674:
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
	jg	L675
	movl	$16380, %eax
	subl	_ydimen, %eax
	sall	$15, %eax
	movl	%eax, 156(%esp)
	sarl	$15, %eax
	movl	%eax, 176(%esp)
L675:
	movl	__ZL5umost.lto_priv.0, %ecx
	movl	192(%esp), %eax
	movswl	(%ecx,%eax,2), %ebx
	cmpb	$0, 8(%ebp)
	je	L677
	movl	__ZL4dplc.lto_priv.0, %eax
	movl	192(%esp), %edx
	movswl	(%eax,%edx,2), %eax
	cmpw	%ax, %bx
	cmovl	%eax, %ebx
L677:
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
	ja	L792
	movl	160(%esp), %edx
	cmpl	%edx, 192(%esp)
	jg	L782
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
L702:
	movl	192(%esp), %edi
	movl	__ZL5dmost.lto_priv.0, %eax
	movzwl	(%ecx,%edi,2), %edx
	movswl	(%eax,%edi,2), %eax
	cmpb	$0, 8(%ebp)
	jne	L679
	movswl	%dx, %esi
	movl	__ZL4uplc.lto_priv.0, %edx
	movl	%esi, 164(%esp)
	movswl	(%edx,%edi,2), %edx
	cmpw	%dx, %ax
	cmovle	%eax, %edx
	leal	-1(%edx), %eax
	movl	%eax, 176(%esp)
L680:
	movl	164(%esp), %esi
	cmpl	176(%esp), %esi
	jg	L681
	movl	156(%esp), %eax
	sarl	$15, %eax
	leal	(%eax,%esi), %edx
	cmpl	$16383, %edx
	ja	L793
	addl	176(%esp), %eax
	cmpl	$16383, %eax
	ja	L794
	leal	__ZL11slopalookup.lto_priv.0(,%eax,4), %eax
	leal	__ZL11slopalookup.lto_priv.0(,%edx,4), %ecx
	movl	%eax, 172(%esp)
	movl	128(%esp), %eax
	cmpl	%ecx, %eax
	jb	L687
	movl	%ecx, 168(%esp)
	movl	120(%esp), %edi
	movl	%eax, %esi
	.p2align 4
	.p2align 3
L688:
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
	jnb	L688
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
L687:
	movl	124(%esp), %eax
	cmpl	%eax, 172(%esp)
	jb	L689
	movl	116(%esp), %edi
	movl	%eax, %esi
	.p2align 4
	.p2align 3
L690:
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
	jnb	L690
	movl	172(%esp), %edi
	movl	124(%esp), %esi
	movl	116(%esp), %edx
	movl	184(%esp), %ebx
	movl	%edi, %eax
	subl	%esi, %eax
	leal	4(%edi), %esi
	addl	%ebx, %edx
	movl	%esi, 124(%esp)
	movl	104(%esp), %esi
	shrl	$2, %eax
	imull	%esi, %eax
	addl	%edx, %eax
	movl	%eax, 116(%esp)
L689:
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
	je	L691
	jg	L795
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
	movl	__ZL8globalx2.lto_priv.0, %edx
	movl	_globaly2, %eax
	.p2align 4
	.p2align 3
L684:
	movl	136(%esp), %esi
	movl	132(%esp), %ebx
	addl	$1, 192(%esp)
	movl	144(%esp), %edi
	addl	%esi, %edx
	addl	%ebx, %eax
	movl	140(%esp), %esi
	subl	%edi, 152(%esp)
	movl	%eax, _globaly2
	movl	192(%esp), %eax
	addl	%esi, 156(%esp)
	movl	%edx, __ZL8globalx2.lto_priv.0
	cmpl	%eax, 160(%esp)
	jl	L782
	movl	__ZL5umost.lto_priv.0, %ecx
	jmp	L702
	.p2align 4,,10
	.p2align 3
L789:
	testb	$2, 12(%eax)
	je	L796
	movl	184(%esp), %eax
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_getceilzofslopeptr.part.0
L652:
	cmpl	%eax, _globalposz
	jle	L782
	movl	184(%esp), %edi
	movzwl	12(%edi), %eax
	movzwl	16(%edi), %ebx
	movswl	18(%edi), %esi
	movl	%eax, _globalorientation
	movsbl	20(%edi), %eax
	movw	%bx, _globalpicnum
	movl	%eax, _globalshade
	movzbl	21(%edi), %eax
	movl	%esi, 124(%esp)
	movl	%eax, _globalpal
	movl	4(%edi), %eax
	movl	%eax, 100(%esp)
	jmp	L653
	.p2align 4,,10
	.p2align 3
L788:
	cmpb	$0, 8(%ebp)
	je	L797
	movl	184(%esp), %eax
	testb	$2, 14(%eax)
	je	L798
	movl	184(%esp), %eax
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_getflorzofslopeptr.part.0
L599:
	cmpl	%eax, _globalposz
	jge	L782
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
L597:
	movswl	%bx, %eax
	cmpb	$63, _picanm+3(%eax,%eax,4)
	jbe	L600
	call	_animateoffs
	addl	%ebx, %eax
	movw	%ax, _globalpicnum
	cwtl
L600:
	testb	$64, 149(%esp)
	je	L602
	testb	$16, _globalorientation+1
	jne	L799
L602:
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
	jle	L782
	cmpw	$0, _tilesiz+2(,%ebx,4)
	jle	L782
	movl	%ebx, %eax
	call	__Z12tileLoadHighi
	movl	%eax, __ZL8globalht.lto_priv.0
	testl	%eax, %eax
	je	L604
	movl	(%eax), %ebx
	movl	%ebx, 164(%esp)
	movswl	4(%eax), %ebx
	movswl	6(%eax), %eax
	movl	%ebx, 136(%esp)
	movl	%eax, 132(%esp)
L605:
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
	jne	L606
	movss	LC11, %xmm4
	movl	%edx, %eax
	sall	$8, %ebx
	movss	LC12, %xmm2
	negl	%eax
	movss	%xmm4, 92(%esp)
	sall	$8, %eax
	movss	LC13, %xmm4
	movss	%xmm4, 140(%esp)
L607:
	testl	$4, %esi
	je	L608
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
L608:
	testl	$16, %esi
	je	L609
	xorps	LC2, %xmm3
	xorps	LC2, %xmm5
	negl	%ebx
L609:
	testl	$32, %esi
	je	L610
	xorps	LC2, %xmm0
	xorps	LC2, %xmm6
	negl	%eax
L610:
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
	jne	L611
	movl	$8, %edx
	movl	%edx, %esi
	subl	%ecx, %edx
	subl	%edi, %esi
L612:
	leal	12(%esi), %ecx
	sall	%cl, %ebx
	leal	12(%edx), %ecx
	sall	%cl, %eax
	testl	%esi, %esi
	js	L613
	movl	$1, %edi
	movl	%esi, %ecx
	xorps	%xmm2, %xmm2
	sall	%cl, %edi
	cvtsi2ssl	%edi, %xmm2
	mulss	%xmm2, %xmm4
	mulss	%xmm2, %xmm3
	movss	%xmm4, 100(%esp)
L614:
	testl	%edx, %edx
	js	L615
	movl	$1, %esi
	movl	%edx, %ecx
	xorps	%xmm2, %xmm2
	sall	%cl, %esi
	cvtsi2ssl	%esi, %xmm2
	mulss	%xmm2, %xmm6
	mulss	%xmm2, %xmm0
	movss	%xmm6, 96(%esp)
L616:
	movl	184(%esp), %esi
	cmpb	$0, 8(%ebp)
	jne	L617
	movzbl	22(%esi), %edx
	sall	$24, %edx
	leal	(%edx,%ebx), %edi
	movzbl	23(%esi), %edx
	movl	%edi, 140(%esp)
	sall	$24, %edx
	addl	%edx, %eax
	movl	%eax, 128(%esp)
L618:
	movss	56(%esp), %xmm2
	xorps	LC2, %xmm2
	mulss	92(%esp), %xmm2
	movl	184(%esp), %eax
	movzbl	32(%eax), %edx
	movl	_globalvisibility, %eax
	movss	%xmm2, 52(%esp)
	testb	%dl, %dl
	je	L619
	addl	$16, %edx
	movzbl	%dl, %edx
/APP
 # 3765 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
L619:
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
	jg	L620
	movl	$16380, %eax
	subl	_ydimen, %eax
	sall	$15, %eax
	movl	%eax, 124(%esp)
	movl	%eax, %esi
	sarl	$15, %esi
L620:
	movl	__ZL5umost.lto_priv.0, %eax
	movl	192(%esp), %ebx
	movswl	(%eax,%ebx,2), %ebx
	cmpb	$0, 8(%ebp)
	je	L622
	movl	__ZL4dplc.lto_priv.0, %eax
	movl	192(%esp), %ecx
	movswl	(%eax,%ecx,2), %eax
	cmpw	%ax, %bx
	cmovl	%eax, %ebx
L622:
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
	ja	L800
	movl	160(%esp), %ecx
	cmpl	%ecx, 192(%esp)
	jg	L782
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
L649:
	movl	__ZL5umost.lto_priv.0, %eax
	movl	192(%esp), %esi
	movswl	(%eax,%esi,2), %edx
	movl	__ZL5dmost.lto_priv.0, %eax
	movswl	(%eax,%esi,2), %eax
	cmpb	$0, 8(%ebp)
	jne	L624
	movl	__ZL4uplc.lto_priv.0, %ecx
	movswl	(%ecx,%esi,2), %ecx
	cmpw	%cx, %ax
	cmovle	%eax, %ecx
	leal	-1(%ecx), %ebx
L625:
	cmpl	%ebx, %edx
	jg	L628
	movl	124(%esp), %eax
	sarl	$15, %eax
	leal	(%edx,%eax), %ecx
	cmpl	$16383, %ecx
	ja	L801
	addl	%ebx, %eax
	cmpl	$16383, %eax
	ja	L802
	leal	__ZL11slopalookup.lto_priv.0(,%eax,4), %eax
	leal	__ZL11slopalookup.lto_priv.0(,%ecx,4), %ecx
	movl	%eax, 184(%esp)
	movl	88(%esp), %eax
	cmpl	%ecx, %eax
	jb	L630
	movl	%edx, 176(%esp)
	movl	64(%esp), %edi
	movl	%eax, %esi
	movl	%ebx, 172(%esp)
	movl	%ecx, 180(%esp)
	.p2align 4
	.p2align 3
L631:
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
	jnb	L631
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
L630:
	movl	68(%esp), %eax
	cmpl	%eax, 184(%esp)
	jb	L632
	movl	%edx, 180(%esp)
	movl	60(%esp), %edi
	movl	%eax, %esi
	movl	%ebx, 176(%esp)
	.p2align 4
	.p2align 3
L633:
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
	jnb	L633
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
L632:
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
	je	L634
	jg	L635
	testl	%eax, %eax
	movss	%xmm5, 72(%esp)
	movl	%ebx, %eax
	je	L803
	andl	$15, %eax
	movl	%esi, %edi
	movss	%xmm3, 44(%esp)
	subl	$15, %eax
	movss	%xmm0, 40(%esp)
	movl	%eax, 48(%esp)
	movss	%xmm7, 36(%esp)
	.p2align 4
	.p2align 3
L642:
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
L641:
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
	je	L640
	movl	(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	movb	%al, (%edi)
L640:
	movl	144(%esp), %eax
	subl	$4, %ebx
	movl	156(%esp), %ecx
	addl	__ZL6ggpinc.lto_priv.0, %edi
	addl	%ecx, 180(%esp)
	addl	%eax, %esi
	movl	140(%esp), %eax
	cmpl	%eax, %ebx
	jne	L641
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
	jne	L642
L784:
	movss	44(%esp), %xmm3
	movss	40(%esp), %xmm0
	movss	36(%esp), %xmm7
	.p2align 4
	.p2align 3
L628:
	addl	$1, 192(%esp)
	movl	112(%esp), %edi
	addss	100(%esp), %xmm3
	addl	%edi, 124(%esp)
	addss	96(%esp), %xmm0
	addss	104(%esp), %xmm7
	movl	192(%esp), %eax
	cmpl	%eax, 160(%esp)
	jge	L649
L782:
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
L791:
	.cfi_restore_state
	movzwl	_rottile(,%eax,4), %edx
	cmpw	$-1, %dx
	je	L658
	movw	%dx, _globalpicnum
	movswl	%dx, %eax
	jmp	L658
	.p2align 4,,10
	.p2align 3
L797:
	testb	$2, 12(%eax)
	je	L804
	movl	184(%esp), %eax
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_getceilzofslopeptr.part.0
L595:
	cmpl	%eax, _globalposz
	jle	L782
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
	jmp	L597
	.p2align 4,,10
	.p2align 3
L660:
	movl	_waloff(,%ebx,4), %edx
	movl	$0, 68(%esp)
	testl	%edx, %edx
	jne	L661
	movl	%ebx, %eax
	call	_tileLoad.isra.0
	movl	_waloff(,%ebx,4), %edx
	movl	$0, 172(%esp)
	jmp	L661
	.p2align 4,,10
	.p2align 3
L793:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jge	L683
	.p2align 4
	.p2align 3
L681:
	movl	__ZL8globalx2.lto_priv.0, %edx
	movl	_globaly2, %eax
	jmp	L684
	.p2align 4,,10
	.p2align 3
L679:
	movl	192(%esp), %edi
	movl	__ZL4dplc.lto_priv.0, %ecx
	movzwl	(%ecx,%edi,2), %ecx
	cmpw	%cx, %dx
	cmovl	%ecx, %edx
	subl	$1, %eax
	movl	%eax, 176(%esp)
	movswl	%dx, %edi
	movl	%edi, 164(%esp)
	jmp	L680
	.p2align 4,,10
	.p2align 3
L794:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L681
	movl	148(%esp), %edi
	movl	%eax, 24(%esp)
	movl	$4132, 20(%esp)
	movl	%edi, 28(%esp)
	movl	$LC23, 16(%esp)
	movl	$LC18, 12(%esp)
	movl	$4132, 8(%esp)
L787:
	movl	$LC19, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZL8globalx2.lto_priv.0, %edx
	movl	_globaly2, %eax
	jmp	L684
	.p2align 4,,10
	.p2align 3
L796:
	movl	4(%eax), %eax
	jmp	L652
	.p2align 4,,10
	.p2align 3
L790:
	movl	8(%eax), %eax
	jmp	L655
	.p2align 4,,10
	.p2align 3
L795:
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
	movl	__ZL5ggbuf.lto_priv.0, %ebx
	movl	%esi, 60(%esp)
	movl	_blendtable, %esi
	movl	%ebx, 176(%esp)
	movl	_asm1, %ebx
	movl	%esi, 88(%esp)
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
	jne	L693
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
L698:
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
	je	L697
	movzbl	(%esi), %ecx
	addl	(%edi), %edx
	movzbl	(%edx), %edx
	movl	88(%esp), %ebx
	sall	$8, %ecx
	orl	%edx, %ecx
	movzbl	(%ebx,%ecx), %edx
	movb	%dl, (%esi)
L697:
	movl	72(%esp), %ebx
	subl	$4, %edi
	addl	%ebx, %esi
	cmpl	%edi, 172(%esp)
	jne	L698
	jmp	L681
	.p2align 4,,10
	.p2align 3
L672:
	movzbl	30(%edi), %eax
	movzbl	31(%edi), %edx
	sall	$24, %eax
	sall	$24, %edx
	addl	180(%esp), %eax
	addl	164(%esp), %edx
	jmp	L673
	.p2align 4,,10
	.p2align 3
L666:
	movl	$9, %eax
	movl	%eax, %edx
	subl	168(%esp), %eax
	subl	176(%esp), %edx
	jmp	L667
	.p2align 4,,10
	.p2align 3
L670:
	negl	%eax
	movl	132(%esp), %edx
	movl	%eax, %ecx
	movl	128(%esp), %eax
	sarl	%cl, %edx
	sarl	%cl, %eax
	movl	%eax, 132(%esp)
	jmp	L671
	.p2align 4,,10
	.p2align 3
L668:
	movl	136(%esp), %edi
	movl	%edx, %ecx
	negl	%ecx
	sarl	%cl, %edi
	sarl	%cl, %ebx
	movl	%edi, 136(%esp)
	jmp	L669
	.p2align 4,,10
	.p2align 3
L691:
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
L696:
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
	je	L695
	movl	(%edi), %ecx
	movzbl	(%ecx,%edx), %edx
	movb	%dl, (%esi)
L695:
	movl	88(%esp), %ebx
	subl	$4, %edi
	addl	%ebx, %esi
	movl	172(%esp), %ebx
	cmpl	%ebx, %edi
	jne	L696
	jmp	L681
	.p2align 4,,10
	.p2align 3
L683:
	movl	148(%esp), %eax
	movl	%edx, 24(%esp)
	movl	$4127, 20(%esp)
	movl	%eax, 28(%esp)
	movl	$LC23, 16(%esp)
	movl	$LC18, 12(%esp)
	movl	$4127, 8(%esp)
	jmp	L787
	.p2align 4,,10
	.p2align 3
L799:
	movzwl	_rottile(,%eax,4), %edx
	cmpw	$-1, %dx
	je	L602
	movw	%dx, _globalpicnum
	movswl	%dx, %eax
	jmp	L602
L604:
	movl	_waloff(,%ebx,4), %eax
	movl	$0, 132(%esp)
	movl	$0, 136(%esp)
	movl	%eax, 164(%esp)
	testl	%eax, %eax
	jne	L605
	movl	%ebx, %eax
	call	_tileLoad.isra.0
	movl	_waloff(,%ebx,4), %eax
	movl	%eax, 164(%esp)
	jmp	L605
	.p2align 4,,10
	.p2align 3
L624:
	movl	__ZL4dplc.lto_priv.0, %ecx
	movl	192(%esp), %edi
	leal	-1(%eax), %ebx
	movswl	(%ecx,%edi,2), %ecx
	cmpw	%cx, %dx
	cmovl	%ecx, %edx
	jmp	L625
	.p2align 4,,10
	.p2align 3
L802:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L628
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
L786:
	movl	$LC19, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movss	184(%esp), %xmm3
	movss	180(%esp), %xmm0
	movss	176(%esp), %xmm7
	jmp	L628
	.p2align 4,,10
	.p2align 3
L792:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L782
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
	jmp	L782
	.p2align 4,,10
	.p2align 3
L693:
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
L701:
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
	je	L700
	addl	(%edi), %edx
	movzbl	(%esi), %ecx
	movzbl	(%edx), %edx
	movl	88(%esp), %ebx
	sall	$8, %edx
	orl	%ecx, %edx
	movzbl	(%ebx,%edx), %edx
	movb	%dl, (%esi)
L700:
	movl	72(%esp), %ebx
	subl	$4, %edi
	addl	%ebx, %esi
	movl	172(%esp), %ebx
	cmpl	%ebx, %edi
	jne	L701
	jmp	L681
	.p2align 4,,10
	.p2align 3
L801:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L628
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
	jmp	L786
	.p2align 4,,10
	.p2align 3
L798:
	movl	8(%eax), %eax
	jmp	L599
	.p2align 4,,10
	.p2align 3
L804:
	movl	4(%eax), %eax
	jmp	L595
L617:
	movzbl	30(%esi), %edx
	sall	$24, %edx
	leal	(%edx,%ebx), %edi
	movzbl	31(%esi), %edx
	movl	%edi, 140(%esp)
	sall	$24, %edx
	addl	%edx, %eax
	movl	%eax, 128(%esp)
	jmp	L618
L611:
	movl	180(%esp), %edi
	movl	$9, %edx
	movl	%edx, %esi
	subl	%edi, %esi
	movl	176(%esp), %edi
	subl	%edi, %edx
	jmp	L612
L613:
	negl	%esi
	movss	__ZL12pow2invfloat(,%esi,4), %xmm2
	mulss	%xmm2, %xmm4
	mulss	%xmm2, %xmm3
	movss	%xmm4, 100(%esp)
	jmp	L614
L615:
	negl	%edx
	movss	__ZL12pow2invfloat(,%edx,4), %xmm2
	mulss	%xmm2, %xmm6
	mulss	%xmm2, %xmm0
	movss	%xmm6, 96(%esp)
	jmp	L616
L606:
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
	jmp	L607
L634:
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
L645:
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
L644:
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
	je	L643
	movzbl	(%edi), %edx
	addl	(%ebx), %eax
	movzbl	(%eax), %eax
	sall	$8, %edx
	orl	%eax, %edx
	movl	156(%esp), %eax
	movzbl	(%eax,%edx), %eax
	movb	%al, (%edi)
L643:
	movl	140(%esp), %eax
	subl	$4, %ebx
	movl	144(%esp), %ecx
	addl	__ZL6ggpinc.lto_priv.0, %edi
	addl	%ecx, 180(%esp)
	addl	%eax, %esi
	movl	136(%esp), %eax
	cmpl	%eax, %ebx
	jne	L644
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
	jne	L645
L785:
	movss	40(%esp), %xmm3
	movss	36(%esp), %xmm0
	movss	32(%esp), %xmm7
	jmp	L628
L803:
	andl	$15, %eax
	movl	%esi, %edi
	movss	%xmm3, 44(%esp)
	subl	$15, %eax
	movss	%xmm0, 40(%esp)
	movl	%eax, 48(%esp)
	movss	%xmm7, 36(%esp)
	.p2align 4
	.p2align 3
L638:
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
L637:
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
	jne	L637
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
	jne	L638
	jmp	L784
L635:
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
L648:
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
L647:
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
	je	L646
	addl	(%ebx), %eax
	movzbl	(%edi), %edx
	movzbl	(%eax), %eax
	movl	156(%esp), %ecx
	sall	$8, %eax
	orl	%edx, %eax
	movzbl	(%ecx,%eax), %eax
	movb	%al, (%edi)
L646:
	movl	140(%esp), %eax
	subl	$4, %ebx
	movl	144(%esp), %ecx
	addl	__ZL6ggpinc.lto_priv.0, %edi
	addl	%ecx, 180(%esp)
	addl	%eax, %esi
	movl	136(%esp), %eax
	cmpl	%eax, %ebx
	jne	L647
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
	jne	L648
	jmp	L785
L800:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L782
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
	jmp	L782
	.cfi_endproc
LFE23:
	.p2align 4
	.def	__ZL8parascanci;	.scl	3;	.type	32;	.endef
__ZL8parascanci:
LFB29:
	.cfi_startproc
	subl	$80, %esp
	.cfi_def_cfa_offset 84
	movl	%ebx, 64(%esp)
	movl	%esi, 68(%esp)
	movb	%al, 24(%esp)
	movswl	_bunchfirst(%edx,%edx), %eax
	movl	%edx, 40(%esp)
	movswl	_thesector(%eax,%eax), %eax
	leal	(%eax,%eax,4), %edx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	%eax, %ebx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %ecx
	movl	_globalhoriz, %eax
	movzbl	32(%ecx), %edx
	movl	%eax, 52(%esp)
	movl	_globalpisibility, %eax
	testb	%dl, %dl
	je	L806
	addl	$16, %edx
	movzbl	%dl, %edx
/APP
 # 4195 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
L806:
	movl	%eax, _globvis
	cmpb	$0, 24(%esp)
	jne	L807
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
	movl	%eax, 32(%esp)
	movl	__ZL4uplc.lto_priv.0, %eax
	movl	%eax, 36(%esp)
L808:
	movswl	%si, %eax
	cmpl	$30719, %eax
	jbe	L810
	xorl	%eax, %eax
	xorl	%esi, %esi
	movw	%ax, _globalpicnum
	xorl	%eax, %eax
L810:
	cmpb	$63, _picanm+3(%eax,%eax,4)
	jbe	L811
	call	_animateoffs
	addl	%eax, %esi
	movw	%si, _globalpicnum
	movswl	%si, %eax
L811:
	andb	$64, %bh
	je	L813
	testb	$16, _globalorientation+1
	jne	L899
L813:
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
	movswl	_globalpicnum, %esi
	movswl	_tilesiz+2(,%esi,4), %ebx
	testl	%ebx, %ebx
	jne	L900
	movl	64(%esp), %ebx
	movl	68(%esp), %esi
	addl	$80, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L807:
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
	movl	%eax, 32(%esp)
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	%eax, 36(%esp)
	jmp	L808
	.p2align 4,,10
	.p2align 3
L899:
	movzwl	_rottile(,%eax,4), %edx
	cmpw	$-1, %dx
	je	L813
	movw	%dx, _globalpicnum
	movswl	%dx, %eax
	jmp	L813
	.p2align 4,,10
	.p2align 3
L900:
	movl	%edi, 72(%esp)
	movl	%ebp, 76(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movzbl	_picsiz(%esi), %eax
	shrb	$4, %al
	movzbl	%al, %edi
	movl	%esi, %eax
	call	__Z12tileLoadHighi
	movl	%eax, __ZL8globalht.lto_priv.0
	movl	%eax, %edx
	testl	%eax, %eax
	je	L816
	movswl	4(%edx), %ebp
	movswl	6(%edx), %edx
	movl	(%eax), %eax
	movl	%edx, %ecx
	addl	%edx, %edi
	sall	%cl, %ebx
	movl	$27, %ecx
	subl	%edx, %ecx
	movl	%ecx, 28(%esp)
L817:
	movl	_pskynummultis, %esi
	movl	%ebp, %ecx
	sall	%cl, __ZL14globalxpanning.lto_priv.0
	movl	%eax, __ZL12globalbufplc.lto_priv.0
	movl	_multipsky, %ebp
	leal	-1(%esi), %ecx
	movswl	_globalpicnum, %eax
	movl	_multipskytile, %esi
	testl	%ecx, %ecx
	jg	L820
	jmp	L819
	.p2align 4
	.p2align 4,,10
	.p2align 3
L902:
	subl	$1, %ecx
	je	L901
L820:
	cmpl	(%esi,%ecx,4), %eax
	jne	L902
L819:
	sall	$5, %ecx
	leal	0(%ebp,%ecx), %esi
	movl	%esi, 48(%esp)
	movswl	_pskybits_override, %esi
	movl	%esi, 16(%esp)
	cmpw	$-1, %si
	jne	L822
	movl	48(%esp), %esi
	movsbl	8(%esi), %esi
	movl	%esi, 16(%esp)
L822:
	movl	_parallaxyscale_override, %esi
	testl	%esi, %esi
	jne	L823
	movl	48(%esp), %esi
	movl	(%esi), %esi
L823:
	movl	48(%esp), %ebp
	movl	_parallaxyoffs_override, %ecx
	movw	%di, __ZL14globalshiftval.lto_priv.0
	addl	4(%ebp), %ecx
	movl	28(%ebp), %ebp
	movl	%ecx, 20(%esp)
	movl	_pow2long.lto_priv.0(,%edi,4), %ecx
	cmpl	$9, _g_loadedMapVersion
	jg	L824
	testb	$2, _picanm+4(%eax,%eax,4)
	je	L903
L824:
	cmpl	%ecx, %ebx
	je	L825
L826:
	movl	%edx, %ecx
	movl	$65536, %eax
	movl	%ebx, _globaltilesizy
	xorl	%edi, %edi
	sall	%cl, %eax
	movl	%ebx, 8(%esp)
	cltd
	movl	$0, (%esp)
	idivl	%ebx
	movw	%di, __ZL14globalshiftval.lto_priv.0
	movl	%eax, __ZL12globalyscale.lto_priv.0
	movl	%ebx, %eax
	sarl	%ebx
	addl	20(%esp), %ebx
	sarl	$31, %eax
	movl	%ebx, 4(%esp)
	movl	%eax, 12(%esp)
	call	_tabledivide64.lto_priv.9
	movl	__ZL14globalypanning.lto_priv.0, %ecx
	movl	__ZL12globalyscale.lto_priv.0, %edi
	cltd
	movl	%ecx, %ebx
	sarl	$31, %ebx
	shldl	$24, %ecx, %ebx
	sall	$24, %ecx
	addl	%ecx, %eax
	adcl	%ebx, %edx
L827:
	movl	%eax, __ZL8globalzd.lto_priv.0
	movl	%edi, %eax
	movl	%edx, __ZL8globalzd.lto_priv.0+4
	cltd
	sall	$16, %eax
	movl	%ebp, 8(%esp)
	shldl	$16, %edi, %edx
	sarl	$31, %ebp
	movl	%ebp, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, __ZL12globalyscale.lto_priv.0
	cmpl	$65536, %esi
	je	L828
	movl	_ydimen, %ecx
	movl	_globalhoriz, %eax
	movl	%esi, %edx
	sarl	%ecx
	subl	%ecx, %eax
/APP
 # 4264 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movl	%ecx, _globalhoriz
L828:
	movl	40(%esp), %eax
	movswl	_bunchfirst(%eax,%eax), %ebp
	testl	%ebp, %ebp
	js	L829
	movl	48(%esp), %eax
	addl	$9, %eax
	movl	%eax, 44(%esp)
	movswl	_globalpicnum, %eax
	movzbl	_picsiz(%eax), %edx
	movl	28(%esp), %eax
	andl	$15, %edx
	subl	%edx, %eax
	subl	16(%esp), %eax
	movl	$-1, 16(%esp)
	movl	%eax, %esi
	movl	$0, %eax
	cmovs	%eax, %esi
	movl	%esi, 28(%esp)
	.p2align 4
	.p2align 3
L852:
	movswl	_thewall(%ebp,%ebp), %eax
	sall	$5, %eax
	addl	_wall, %eax
	movswl	12(%eax), %edx
	testw	%dx, %dx
	js	L830
	leal	(%edx,%edx,4), %ecx
	movl	_sector, %edx
	leal	(%edx,%ecx,8), %edx
	cmpb	$0, 24(%esp)
	jne	L831
	movzwl	12(%edx), %edx
L832:
	testb	$32, 14(%eax)
	jne	L830
	andl	$1, %edx
	je	L830
	movl	16(%esp), %ecx
	testl	%ecx, %ecx
	js	L834
	movswl	_globalpicnum, %eax
	movl	__ZL4lplc.lto_priv.0, %edi
	movl	44(%esp), %ebx
	movl	%eax, %esi
	movw	%ax, 58(%esp)
	movl	%eax, 60(%esp)
	movzbl	_picsiz(%eax), %eax
	movl	%eax, %ecx
	andl	$15, %eax
	movl	%eax, 20(%esp)
	movl	16(%esp), %eax
	andl	$15, %ecx
	movl	(%edi,%eax,4), %edx
	movl	%edx, %eax
	sarl	%cl, %eax
	movsbw	(%ebx,%eax), %ax
	addl	%esi, %eax
	movl	_xb1(,%ebp,4), %esi
	movw	%ax, _globalpicnum
	movl	-4(%edi,%esi,4), %ebx
	xorl	%edx, %ebx
	sarl	%cl, %ebx
	testl	%ebx, %ebx
	jne	L904
	movl	__ZL5swplc.lto_priv.0, %eax
	movl	32(%esp), %ecx
	movl	%edi, 8(%esp)
	leal	-1(%esi), %edx
	movl	%eax, 4(%esp)
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	movl	16(%esp), %eax
	call	__ZL8wallscaniiPKsS0_PKiS2_
L849:
	movzwl	58(%esp), %eax
	movl	$-1, 16(%esp)
	movw	%ax, _globalpicnum
L834:
	movswl	_bunchp2(%ebp,%ebp), %ebp
	testl	%ebp, %ebp
	jns	L852
	.p2align 4
	.p2align 3
L909:
	movl	16(%esp), %esi
	testl	%esi, %esi
	js	L829
	movswl	_globalpicnum, %eax
	movl	__ZL4lplc.lto_priv.0, %edi
	movl	48(%esp), %ebp
	movl	%eax, %ebx
	movw	%ax, 28(%esp)
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
	movl	40(%esp), %ebx
	movw	%ax, _globalpicnum
	movswl	_bunchlast(%ebx,%ebx), %ebp
	movl	__ZL3xb2.lto_priv.0(,%ebp,4), %ebx
	movl	(%edi,%ebx,4), %esi
	xorl	%edx, %esi
	sarl	%cl, %esi
	testl	%esi, %esi
	je	L853
	movl	16(%esp), %ecx
	movl	%ecx, %esi
	cmpl	%ecx, %ebx
	jl	L905
	movl	%edx, %ebx
	movl	%ebp, %edx
	movl	%edi, %ebp
	movl	44(%esp), %edi
	jmp	L854
	.p2align 4,,10
	.p2align 3
L906:
	movl	__ZL4lplc.lto_priv.0, %ebp
	movzwl	_globalpicnum, %eax
	movl	%ecx, %esi
	movl	0(%ebp,%ecx,4), %ebx
L854:
	movzbl	24(%esp), %ecx
	cwtl
	sarl	%cl, %ebx
	movsbl	(%edi,%ebx), %ebx
	addl	20(%esp), %ebx
	cmpl	%ebx, %eax
	je	L857
	movl	__ZL5swplc.lto_priv.0, %eax
	movl	32(%esp), %ecx
	movl	%ebp, 8(%esp)
	leal	-1(%esi), %edx
	movl	%eax, 4(%esp)
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	movl	16(%esp), %eax
	call	__ZL8wallscaniiPKsS0_PKiS2_
	movl	40(%esp), %eax
	movl	%esi, 16(%esp)
	movw	%bx, _globalpicnum
	movswl	_bunchlast(%eax,%eax), %edx
L857:
	leal	1(%esi), %ecx
	cmpl	%ecx, __ZL3xb2.lto_priv.0(,%edx,4)
	jge	L906
	cmpl	%ecx, 16(%esp)
	jle	L907
L856:
	movzwl	28(%esp), %eax
	movw	%ax, _globalpicnum
L829:
	movl	52(%esp), %eax
	movl	72(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	$0, __ZL8globalht.lto_priv.0
	movl	76(%esp), %ebp
	.cfi_restore 5
	movl	64(%esp), %ebx
	movl	%eax, _globalhoriz
	movl	68(%esp), %esi
	addl	$80, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L830:
	.cfi_restore_state
	movl	_xb1(,%ebp,4), %eax
	cmpl	$-1, 16(%esp)
	jne	L835
	movl	%eax, 16(%esp)
L835:
	movzbl	_parallaxtype, %edx
	movl	__ZL3xb2.lto_priv.0(,%ebp,4), %ecx
	movl	%eax, %ebx
	movb	%dl, 20(%esp)
	testb	%dl, %dl
	je	L898
	movl	__ZL12no_radarang2.lto_priv.0, %edx
	testl	%edx, %edx
	jne	L898
	cmpl	%ecx, %eax
	jg	L842
	movl	28(%esp), %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L843:
	movl	__ZL9radarang2.lto_priv.0, %edx
	movl	_qglobalang, %eax
	addl	(%edx,%ebx,4), %eax
	movl	__ZL4lplc.lto_priv.0, %edx
	andl	$134217727, %eax
	sarl	%cl, %eax
	movl	%eax, (%edx,%ebx,4)
	movl	__ZL3xb2.lto_priv.0(,%ebp,4), %eax
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jge	L843
L896:
	movl	_xb1(,%ebp,4), %ebx
	movl	_viewingrange, %edi
	movl	%eax, %ecx
	cmpb	$2, 20(%esp)
	je	L908
L838:
	movl	__ZL5swplc.lto_priv.0, %eax
	subl	%ebx, %ecx
	movl	%edi, %edx
	addl	$1, %ecx
	leal	(%eax,%ebx,4), %esi
	movl	_xdimscale, %eax
/APP
 # 4311 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%esi, %edi
/APP
 # 4311 "source/build/src/engine.cpp" 1
	rep; stosl
 # 0 "" 2
/NO_APP
	movswl	_bunchp2(%ebp,%ebp), %ebp
	testl	%ebp, %ebp
	jns	L852
	jmp	L909
	.p2align 4,,10
	.p2align 3
L898:
	movl	_viewingrange, %edi
	movl	_xdimenrecip, %eax
	movl	%edi, %edx
/APP
 # 4294 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	cmpl	%ecx, %ebx
	jg	L838
	movl	28(%esp), %ecx
	.p2align 4
	.p2align 3
L840:
	movl	%ebx, %eax
	movl	%esi, %edx
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
	movl	%eax, (%edx,%ebx,4)
	movl	__ZL3xb2.lto_priv.0(,%ebp,4), %eax
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jge	L840
	jmp	L896
	.p2align 4,,10
	.p2align 3
L831:
	movzwl	14(%edx), %edx
	jmp	L832
	.p2align 4,,10
	.p2align 3
L908:
	movl	__ZL12no_radarang2.lto_priv.0, %eax
	testl	%eax, %eax
	jne	L838
	movl	_xdimscale, %eax
	movl	%edi, %edx
/APP
 # 4306 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	cmpl	%ecx, %ebx
	jg	L834
	.p2align 4
	.p2align 3
L846:
	movl	__ZL9radarang2.lto_priv.0, %eax
	movl	%esi, %edx
	movswl	2(%eax,%ebx,4), %eax
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 4308 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	__ZL5swplc.lto_priv.0, %edx
	movl	%eax, (%edx,%ebx,4)
	addl	$1, %ebx
	cmpl	%ebx, __ZL3xb2.lto_priv.0(,%ebp,4)
	jge	L846
	movswl	_bunchp2(%ebp,%ebp), %ebp
	testl	%ebp, %ebp
	jns	L852
	jmp	L909
L903:
	cmpl	%ecx, %ebx
	je	L825
	addl	$1, %edi
	movw	%di, __ZL14globalshiftval.lto_priv.0
L825:
	cmpl	$512, %ebx
	jg	L826
	movl	$32, %eax
	subw	__ZL14globalshiftval.lto_priv.0, %ax
	movl	$8, %edi
	sarl	%ebx
	movw	%ax, __ZL14globalshiftval.lto_priv.0
	cwtl
	leal	-19(%eax,%edx), %ecx
	movl	%eax, 44(%esp)
	sall	%cl, %edi
	movl	20(%esp), %ecx
	movl	%edi, __ZL12globalyscale.lto_priv.0
	leal	(%ecx,%ebx), %eax
	movzbl	44(%esp), %ecx
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
	jmp	L827
	.p2align 4,,10
	.p2align 3
L901:
	xorl	%ecx, %ecx
	jmp	L819
L904:
	movl	16(%esp), %ecx
	movl	%ecx, %ebx
	cmpl	%ecx, %esi
	jle	L849
	movl	%edx, %esi
	movl	%edi, %edx
	movl	60(%esp), %edi
	jmp	L848
	.p2align 4,,10
	.p2align 3
L910:
	movl	__ZL4lplc.lto_priv.0, %edx
	movzwl	_globalpicnum, %eax
	movl	%ecx, %ebx
	movl	(%edx,%ecx,4), %esi
L848:
	movzbl	20(%esp), %ecx
	cwtl
	sarl	%cl, %esi
	movl	44(%esp), %ecx
	movsbl	(%ecx,%esi), %esi
	addl	%edi, %esi
	cmpl	%esi, %eax
	je	L850
	movl	36(%esp), %ecx
	movl	16(%esp), %eax
	movl	%edx, 8(%esp)
	movl	__ZL5swplc.lto_priv.0, %edx
	movl	%ecx, (%esp)
	movl	32(%esp), %ecx
	movl	%edx, 4(%esp)
	leal	-1(%ebx), %edx
	call	__ZL8wallscaniiPKsS0_PKiS2_
	movw	%si, _globalpicnum
	movl	%ebx, 16(%esp)
L850:
	leal	1(%ebx), %ecx
	cmpl	%ecx, _xb1(,%ebp,4)
	jg	L910
	cmpl	%ecx, 16(%esp)
	jge	L849
	movl	__ZL4lplc.lto_priv.0, %eax
	movl	32(%esp), %ecx
	movl	%ebx, %edx
	movl	%eax, 8(%esp)
	movl	__ZL5swplc.lto_priv.0, %eax
	movl	%eax, 4(%esp)
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	movl	16(%esp), %eax
	call	__ZL8wallscaniiPKsS0_PKiS2_
	jmp	L849
L853:
	movl	__ZL5swplc.lto_priv.0, %eax
	movl	32(%esp), %ecx
	movl	%edi, 8(%esp)
	movl	%ebx, %edx
	movl	%eax, 4(%esp)
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	movl	16(%esp), %eax
	call	__ZL8wallscaniiPKsS0_PKiS2_
	jmp	L856
L816:
	movl	_waloff(,%esi,4), %eax
	testl	%eax, %eax
	je	L911
	movl	$27, 28(%esp)
	xorl	%edx, %edx
	xorl	%ebp, %ebp
	jmp	L817
L842:
	movl	_viewingrange, %edi
	cmpb	$2, 20(%esp)
	jne	L838
	movl	_xdimscale, %eax
	movl	%edi, %edx
/APP
 # 4306 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	jmp	L834
L911:
	movl	%esi, %eax
	xorl	%ebp, %ebp
	call	_tileLoad.isra.0
	movl	$27, 28(%esp)
	movl	_waloff(,%esi,4), %eax
	xorl	%edx, %edx
	jmp	L817
L907:
	movl	__ZL4lplc.lto_priv.0, %edi
L855:
	movl	__ZL5swplc.lto_priv.0, %eax
	movl	32(%esp), %ecx
	movl	%edi, 8(%esp)
	movl	%esi, %edx
	movl	%eax, 4(%esp)
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	movl	16(%esp), %eax
	call	__ZL8wallscaniiPKsS0_PKiS2_
	jmp	L856
L905:
	subl	$1, %esi
	jmp	L855
	.cfi_endproc
LFE29:
	.p2align 4
	.globl	__ZL9owallmostPsix.lto_priv.0
	.def	__ZL9owallmostPsix.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL9owallmostPsix.lto_priv.0:
LFB30:
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
	jl	L916
	movl	%ecx, %eax
	andl	$3, %ecx
	cmpl	$3, %ecx
	je	L917
	andl	$12, %eax
	movl	%eax, 72(%esp)
	testl	%ecx, %ecx
	jne	L918
L919:
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
	jne	L927
L939:
	movl	28(%esp), %eax
	movl	32(%esp), %edx
	movl	%eax, 8(%esp)
	movl	%esi, %eax
	movl	%edx, 12(%esp)
	imull	_xdimenscale
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
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
	call	_tabledivide64.lto_priv.9
	sall	$4, %eax
	subl	%ebp, %eax
	movl	%eax, %esi
	cmpl	%edi, _lastd_s32
	je	L945
	cmpl	$16383, %edi
	jle	L945
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
	jne	L981
L946:
	movl	%eax, _divtable32
	movb	%cl, _divtable32+4
L945:
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
	jne	L948
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
L949:
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
L912:
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
L917:
	.cfi_restore_state
	movl	44(%esp), %eax
	movl	36(%esp), %ebx
	cmpl	%ebx, %eax
	jl	L912
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
L916:
	.cfi_restore_state
	addl	$8, 16(%esp)
	movl	16(%esp), %ecx
	andl	$3, %ecx
	cmpl	$3, %ecx
	je	L917
	movl	16(%esp), %eax
	notl	%eax
	testb	$12, %al
	je	L982
	testl	%ecx, %ecx
	jne	L983
	movl	$8, 16(%esp)
	movl	$8, 72(%esp)
L927:
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
	call	_tabledivide64.lto_priv.9
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
	call	_tabledivide64.lto_priv.9
	movl	_xb1(,%ebx,4), %edx
	movl	48(%esp), %esi
	addl	%edi, %eax
	movl	__ZL3xb2.lto_priv.0(,%ebx,4), %edi
	cmpl	$8, 72(%esp)
	movl	%edi, 56(%esp)
	je	L984
	cmpl	56(%esp), %eax
	jle	L957
	movl	%ebp, 28(%esp)
	sarl	$31, %ebp
	movl	%ebp, 32(%esp)
L941:
	movl	20(%esp), %ecx
	movl	%ecx, %ebx
	movl	%ecx, 64(%esp)
	sarl	$31, %ebx
	movl	%ebx, 68(%esp)
	cmpl	%edx, %eax
	jl	L939
	movl	40(%esp), %ebx
	leal	(%ebx,%edx,2), %edx
	leal	2(%ebx,%eax,2), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L943:
	movl	_ydimen, %ecx
	addl	$2, %edx
	movw	%cx, -2(%edx)
	cmpl	%eax, %edx
	jne	L943
	jmp	L939
	.p2align 4,,10
	.p2align 3
L948:
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
	jmp	L949
	.p2align 4,,10
	.p2align 3
L983:
	movl	$8, 72(%esp)
L918:
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
	call	_tabledivide64.lto_priv.9
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
	call	_tabledivide64.lto_priv.9
	movl	__ZL3xb2.lto_priv.0(,%ebx,4), %ecx
	addl	64(%esp), %eax
	movl	_xb1(,%ebx,4), %edx
	movl	%ecx, 64(%esp)
	cmpl	$2, 80(%esp)
	je	L985
	movl	36(%esp), %ecx
	cmpl	64(%esp), %eax
	cmovle	28(%esp), %ebp
	cmovle	%eax, %ecx
	movl	%ebp, 28(%esp)
	movl	%ecx, 36(%esp)
	cmpl	%edx, %eax
	jl	L934
	movl	40(%esp), %ecx
	subl	%edx, %eax
	movl	$0, 4(%esp)
	leal	2(%eax,%eax), %eax
	leal	(%ecx,%edx,2), %edx
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	call	_memset
L934:
	movl	28(%esp), %ebp
	jmp	L919
	.p2align 4,,10
	.p2align 3
L981:
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
	jnb	L947
	movl	48(%esp), %eax
	leal	-1(%edi), %ecx
	addl	$1, %eax
	jmp	L946
	.p2align 4,,10
	.p2align 3
L985:
	cmpl	%edx, %eax
	movl	20(%esp), %ecx
	cmovge	28(%esp), %ecx
	movl	%ecx, 28(%esp)
	movl	44(%esp), %ecx
	cmovge	%eax, %ecx
	addl	$1, %eax
	movl	%ecx, 44(%esp)
	cmpl	64(%esp), %eax
	jg	L930
	movl	40(%esp), %edx
	.p2align 5
	.p2align 4
	.p2align 3
L931:
	xorl	%ecx, %ecx
	movw	%cx, (%edx,%eax,2)
	addl	$1, %eax
	cmpl	%eax, __ZL3xb2.lto_priv.0(,%ebx,4)
	jge	L931
L930:
	movl	28(%esp), %eax
	movl	%eax, 20(%esp)
	jmp	L919
	.p2align 4,,10
	.p2align 3
L984:
	cmpl	%edx, %eax
	jge	L956
	movl	20(%esp), %edx
	movl	%edx, %ecx
	movl	%edx, 28(%esp)
	sarl	$31, %ecx
	movl	%ecx, 32(%esp)
L937:
	movl	%ebp, 20(%esp)
	sarl	$31, %ebp
	movl	40(%esp), %ecx
	addl	$1, %eax
	movl	%ebp, 24(%esp)
	cmpl	56(%esp), %eax
	jg	L940
	.p2align 5
	.p2align 4
	.p2align 3
L938:
	movl	_ydimen, %edx
	movw	%dx, (%ecx,%eax,2)
	addl	$1, %eax
	cmpl	%eax, __ZL3xb2.lto_priv.0(,%ebx,4)
	jge	L938
L940:
	movl	28(%esp), %eax
	movl	32(%esp), %edx
	movl	%eax, 64(%esp)
	movl	20(%esp), %eax
	movl	%edx, 68(%esp)
	movl	24(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	jmp	L939
	.p2align 4,,10
	.p2align 3
L982:
	movl	44(%esp), %edi
	movl	36(%esp), %eax
	cmpl	%eax, %edi
	jl	L912
	movl	40(%esp), %ebx
	leal	(%ebx,%eax,2), %eax
	leal	2(%ebx,%edi,2), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L926:
	movl	_ydimen, %edx
	addl	$2, %eax
	movw	%dx, -2(%eax)
	cmpl	%eax, %ecx
	jne	L926
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
L947:
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
	jmp	L946
	.p2align 4,,10
	.p2align 3
L957:
	movl	%eax, 36(%esp)
	jmp	L941
	.p2align 4,,10
	.p2align 3
L956:
	movl	%eax, 44(%esp)
	jmp	L937
	.cfi_endproc
LFE30:
	.p2align 4
	.globl	__ZL8wallmostPsiic.lto_priv.0
	.def	__ZL8wallmostPsiic.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL8wallmostPsiic.lto_priv.0:
LFB33:
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
	jne	L987
	movl	4(%ecx), %edx
	subl	%eax, %edx
	testb	$2, 12(%ecx)
	je	L1069
L988:
	movl	%edi, 136(%esp)
	.cfi_offset 7, -12
	movzwl	(%ecx), %edi
	movswl	_thewall(%ebp,%ebp), %eax
	movw	%di, 16(%esp)
	cmpw	%di, %ax
	je	L1070
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
	je	L1071
	movswl	26(%esi), %eax
/APP
 # 2688 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $15, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 60(%esp)
	movl	8(%esi), %eax
	movl	%eax, 56(%esp)
L992:
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
	jne	L1037
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
L993:
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
	jg	L1072
L994:
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
	jne	L996
	movl	_cosglobalang, %edx
	movl	_cosviewingrangeglobalang, %eax
	subl	_sinviewingrangeglobalang, %edx
	addl	_singlobalang, %eax
L996:
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
	jg	L1073
L997:
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
	jl	L1001
	movl	%edi, %esi
	andl	$3, %edi
	cmpl	$3, %edi
	je	L1002
	andl	$12, %esi
	movl	%eax, 100(%esp)
	movl	%esi, 84(%esp)
	movl	16(%esp), %esi
	movl	%esi, 96(%esp)
	testl	%edi, %edi
	jne	L1003
	movl	%eax, 68(%esp)
	movl	16(%esp), %eax
	movl	%edx, 72(%esp)
	movl	20(%esp), %edx
	movl	%eax, 88(%esp)
	movl	%edx, 92(%esp)
L1004:
	movl	84(%esp), %ebx
	testl	%ebx, %ebx
	jne	L1011
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
L1023:
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
	call	_tabledivide64.lto_priv.9
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
	call	_tabledivide64.lto_priv.9
	sall	$4, %eax
	movl	%eax, %ebp
	movl	28(%esp), %eax
	subl	%eax, %ebp
	movl	16(%esp), %eax
	cmpl	%eax, _lastd_s32
	je	L1029
	cmpl	$16383, %eax
	jle	L1029
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
	je	L1030
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
	jnb	L1031
	movl	40(%esp), %eax
	leal	-1(%esi), %ecx
	addl	$1, %eax
L1030:
	movl	%eax, _divtable32
	movb	%cl, _divtable32+4
L1029:
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
	jne	L1032
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
L1033:
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
	jmp	L986
	.p2align 4,,10
	.p2align 3
L987:
	movl	8(%ecx), %edx
	subl	%eax, %edx
	testb	$2, 14(%ecx)
	jne	L988
L1069:
	movl	%edx, (%esp)
	sarl	$31, %edx
	movl	36(%esp), %eax
	movl	%edx, 4(%esp)
	movl	%ebp, %edx
	call	__ZL9owallmostPsix.lto_priv.0
	movl	%eax, 24(%esp)
L986:
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
L1071:
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
	jmp	L992
	.p2align 4,,10
	.p2align 3
L1037:
	movl	$0, 16(%esp)
	movl	84(%esp), %eax
	xorl	%ecx, %ecx
	movl	$0, 20(%esp)
	movl	88(%esp), %edx
	jmp	L993
	.p2align 4,,10
	.p2align 3
L1001:
	addl	$8, 24(%esp)
	movl	24(%esp), %edi
	andl	$3, %edi
	cmpl	$3, %edi
	je	L1002
	movl	24(%esp), %eax
	notl	%eax
	testb	$12, %al
	je	L1074
	movl	16(%esp), %eax
	movl	%eax, 96(%esp)
	movl	28(%esp), %eax
	movl	%eax, 100(%esp)
	testl	%edi, %edi
	jne	L1075
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
L1011:
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
	call	_tabledivide64.lto_priv.9
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
	call	_tabledivide64.lto_priv.9
	movl	_xb1(,%ebp,4), %edx
	addl	%ebx, %eax
	movl	__ZL3xb2.lto_priv.0(,%ebp,4), %ebx
	movl	%ebx, 28(%esp)
	cmpl	$8, 84(%esp)
	je	L1076
	cmpl	28(%esp), %eax
	jle	L1042
	movl	88(%esp), %edi
	movl	48(%esp), %esi
	movl	%edi, 16(%esp)
	movl	%esi, %edi
	sarl	$31, %edi
L1025:
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
	jl	L1023
	movl	36(%esp), %ebx
	movl	16(%esp), %ecx
	leal	(%ebx,%edx,2), %edx
	leal	2(%ebx,%eax,2), %eax
	movl	20(%esp), %ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1027:
	movl	_ydimen, %ebp
	addl	$2, %edx
	movw	%bp, -2(%edx)
	cmpl	%eax, %edx
	jne	L1027
	movl	%ecx, 16(%esp)
	movl	%ebx, 20(%esp)
	jmp	L1023
	.p2align 4,,10
	.p2align 3
L1074:
	movl	76(%esp), %edi
	movl	56(%esp), %eax
	cmpl	%eax, %edi
	jl	L1068
	movl	36(%esp), %esi
	leal	(%esi,%eax,2), %eax
	leal	2(%esi,%edi,2), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1010:
	movl	_ydimen, %edx
	addl	$2, %eax
	movw	%dx, -2(%eax)
	cmpl	%eax, %ecx
	jne	L1010
L1068:
	movl	128(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	136(%esp), %edi
	.cfi_restore 7
	jmp	L986
	.p2align 4,,10
	.p2align 3
L1075:
	.cfi_restore_state
	movl	$8, 84(%esp)
L1003:
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
	call	_tabledivide64.lto_priv.9
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
	call	_tabledivide64.lto_priv.9
	movl	__ZL3xb2.lto_priv.0(,%ebp,4), %ecx
	movl	_xb1(,%ebp,4), %edx
	addl	%esi, %eax
	cmpl	$2, %edi
	je	L1077
	movl	16(%esp), %esi
	movl	20(%esp), %edi
	movl	%esi, 88(%esp)
	movl	%edi, 92(%esp)
	cmpl	%ecx, %eax
	jle	L1078
L1016:
	cmpl	%edx, %eax
	jl	L1018
	movl	36(%esp), %edi
	subl	%edx, %eax
	movl	$0, 4(%esp)
	leal	2(%eax,%eax), %eax
	leal	(%edi,%edx,2), %edx
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	call	_memset
L1018:
	movl	28(%esp), %eax
	movl	32(%esp), %edx
	movl	%eax, 68(%esp)
	movl	%edx, 72(%esp)
	jmp	L1004
	.p2align 4,,10
	.p2align 3
L1073:
	movl	%ebx, 8(%esp)
	sarl	$31, %ebx
	movl	%ebx, 12(%esp)
	movl	%ecx, %ebx
	sarl	$31, %ebx
	shldl	$28, %ecx, %ebx
	sall	$28, %ecx
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	call	_tabledivide64.lto_priv.9
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
	jmp	L997
	.p2align 4,,10
	.p2align 3
L1072:
	movl	%edx, 8(%esp)
	sarl	$31, %edx
	movl	16(%esp), %eax
	movl	%edx, 12(%esp)
	movl	20(%esp), %edx
	shldl	$28, %eax, %edx
	sall	$28, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
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
	jmp	L994
	.p2align 4,,10
	.p2align 3
L1032:
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
	jmp	L1033
	.p2align 4,,10
	.p2align 3
L1070:
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
	jmp	L986
	.p2align 4,,10
	.p2align 3
L1002:
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	76(%esp), %eax
	movl	56(%esp), %edi
	cmpl	%edi, %eax
	jl	L1068
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
	jmp	L986
	.p2align 4,,10
	.p2align 3
L1031:
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
	jmp	L1030
	.p2align 4,,10
	.p2align 3
L1078:
	movl	108(%esp), %esi
	movl	%ebx, 48(%esp)
	movl	%eax, 56(%esp)
	movl	%esi, %edi
	movl	%esi, 88(%esp)
	sarl	$31, %edi
	movl	%edi, 92(%esp)
	jmp	L1016
	.p2align 4,,10
	.p2align 3
L1042:
	movl	%eax, 56(%esp)
	jmp	L1025
	.p2align 4,,10
	.p2align 3
L1077:
	movl	28(%esp), %esi
	movl	32(%esp), %edi
	movl	%esi, 68(%esp)
	movl	%edi, 72(%esp)
	cmpl	%edx, %eax
	jl	L1013
	movl	108(%esp), %esi
	movl	%ebx, 40(%esp)
	movl	%eax, 76(%esp)
	movl	%esi, %edi
	movl	%esi, 68(%esp)
	sarl	$31, %edi
	movl	%edi, 72(%esp)
L1013:
	addl	$1, %eax
	movl	60(%esp), %ebx
	movl	36(%esp), %edx
	cmpl	%ecx, %eax
	jg	L1015
	.p2align 5
	.p2align 4
	.p2align 3
L1014:
	xorl	%esi, %esi
	movw	%si, (%edx,%eax,2)
	addl	$1, %eax
	cmpl	%eax, __ZL3xb2.lto_priv.0(,%ebp,4)
	jge	L1014
	movl	%ebx, 60(%esp)
L1015:
	movl	16(%esp), %eax
	movl	20(%esp), %edx
	movl	%eax, 88(%esp)
	movl	%edx, 92(%esp)
	jmp	L1004
	.p2align 4,,10
	.p2align 3
L1076:
	cmpl	%edx, %eax
	jge	L1041
	movl	68(%esp), %edi
	movl	40(%esp), %esi
	movl	%edi, 16(%esp)
	movl	%esi, %edi
	sarl	$31, %edi
L1021:
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
	jg	L1024
	.p2align 5
	.p2align 4
	.p2align 3
L1022:
	movzwl	_ydimen, %ebx
	movw	%bx, 0(%ebp,%eax,2)
	addl	$1, %eax
	cmpl	%eax, __ZL3xb2.lto_priv.0(,%edx,4)
	jge	L1022
L1024:
	movl	%esi, 40(%esp)
	movl	48(%esp), %esi
	movl	%edi, 44(%esp)
	movl	52(%esp), %edi
	jmp	L1023
	.p2align 4,,10
	.p2align 3
L1041:
	movl	%eax, 76(%esp)
	jmp	L1021
	.cfi_endproc
LFE33:
	.p2align 4
	.globl	__ZL17calc_globalshiftsv.lto_priv.0
	.def	__ZL17calc_globalshiftsv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL17calc_globalshiftsv.lto_priv.0:
LFB35:
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
	je	L1079
	movl	$9, %edx
	movl	%edx, %ebx
	subl	%eax, %edx
	subl	%ecx, %ebx
	movb	%dl, __ZL12globalyshift.lto_priv.0
	movb	%bl, __ZL12globalxshift.lto_priv.0
L1079:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE35:
	.p2align 4
	.def	__ZL17setup_globals_cf1PK13usectortypev7iiiiiiii;	.scl	3;	.type	32;	.endef
__ZL17setup_globals_cf1PK13usectortypev7iiiiiiii:
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
	movl	%ecx, %ebx
	subl	$56, %esp
	.cfi_def_cfa_offset 76
	movl	%eax, 12(%esp)
	movl	76(%esp), %esi
	movl	_palookup(,%edx,4), %eax
	cmpl	_globalpalwritten, %eax
	je	L1086
	testl	%eax, %eax
	je	L1139
L1087:
	movl	%eax, (%esp)
	movl	%eax, _globalpalwritten
	call	_setpalookupaddress
L1086:
	xorl	%eax, %eax
	movl	%ebx, %ebp
	movl	%ebx, __ZL8globalzd.lto_priv.0
	sarl	$31, %ebp
	cmpl	%ebx, %eax
	sbbl	%ebp, %eax
	movl	%ebp, __ZL8globalzd.lto_priv.0+4
	jl	L1092
	cmpl	$30719, %esi
	ja	L1114
	movl	%esi, %ebx
	movl	%esi, %eax
L1090:
	movw	%ax, _globalpicnum
	cmpb	$63, _picanm+3(%esi,%esi,4)
	jbe	L1091
	movl	%esi, %eax
	call	_animateoffs
	addl	%eax, %ebx
	movw	%bx, _globalpicnum
	movswl	%bx, %esi
L1091:
	movl	%esi, %eax
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
	jle	L1092
	cmpw	$0, _tilesiz+2(,%ebx,4)
	jle	L1092
	movl	%ebx, %eax
	call	__Z12tileLoadHighi
	movl	%eax, __ZL8globalht.lto_priv.0
	testl	%eax, %eax
	je	L1093
	movswl	6(%eax), %esi
	movl	(%eax), %edx
	movswl	4(%eax), %eax
	movl	%esi, 24(%esp)
	movl	%eax, 28(%esp)
L1094:
	movl	12(%esp), %edi
	movl	80(%esp), %eax
	movl	%edx, __ZL12globalbufplc.lto_priv.0
	movzbl	32(%edi), %edx
	movl	%eax, _globalshade
	movl	_globalcisibility, %eax
	testb	%dl, %dl
	je	L1095
	addl	$16, %edx
	movzbl	%dl, %edx
/APP
 # 2821 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
L1095:
	movl	%eax, _globvis
	movl	84(%esp), %eax
	movl	_globalposy, %edi
	movl	_singlobalang, %esi
	movl	%eax, _globalorientation
	movl	_cosglobalang, %ebx
	movl	_globalposx, %eax
	movl	%edi, 40(%esp)
	movl	%esi, 16(%esp)
	movl	%eax, 36(%esp)
	movl	%ebx, 20(%esp)
	testb	$64, 84(%esp)
	jne	L1096
	sall	$14, %eax
	movl	%esi, _globalx1
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	sall	$14, %eax
	movl	%ebx, _globaly2
	negl	%eax
	movl	%eax, %ebp
L1097:
	movl	16(%esp), %eax
	movl	__ZL17viewingrangerecip.lto_priv.0, %edx
/APP
 # 2845 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	__ZL17viewingrangerecip.lto_priv.0, %edx
	movl	%eax, __ZL8globalx2.lto_priv.0
	movl	20(%esp), %eax
/APP
 # 2846 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, __ZL8globaly1.lto_priv.0
	call	__ZL17calc_globalshiftsv.lto_priv.0
	movl	_globalorientation, %ecx
	movl	__ZL8globaly1.lto_priv.0, %esi
	movl	_globaly2, %ebx
	movl	__ZL8globalx2.lto_priv.0, %edx
	movl	_globalx1, %eax
	testb	$4, %cl
	je	L1106
	movl	%esi, %edi
	movl	%edx, %esi
	negl	%edi
	negl	%esi
	movl	%edi, %edx
	movl	12(%esp), %edi
	movl	%ebp, 12(%esp)
	movl	%edi, %ebp
	movl	%eax, %edi
	movl	%ebx, %eax
	movl	%edi, %ebx
L1106:
	testb	$16, %cl
	je	L1107
	negl	12(%esp)
	negl	%eax
	negl	%esi
L1107:
	andl	$32, %ecx
	je	L1108
	movl	%ebp, %edi
	negl	%edx
	negl	%ebx
	negl	%edi
	movl	%edi, %ebp
L1108:
	movsbl	__ZL12globalxshift.lto_priv.0, %edi
	movl	%edi, %ecx
	movl	%edi, 16(%esp)
	testb	%cl, %cl
	js	L1109
	sall	%cl, %esi
	sall	%cl, %eax
	movl	%esi, 20(%esp)
L1110:
	movsbl	__ZL12globalyshift.lto_priv.0, %esi
	movl	%eax, _globalx1
	movl	%esi, %ecx
	testb	%cl, %cl
	js	L1111
	sall	%cl, %edx
	sall	%cl, %ebx
L1112:
	movl	16(%esp), %ecx
	movl	12(%esp), %edi
	negl	%eax
	subl	%ebx, %edx
	subl	20(%esp), %eax
	movl	%ebx, _globaly2
	addl	$6, %ecx
	sall	%cl, %edi
	movl	%edi, %ecx
	movl	88(%esp), %edi
	sall	$24, %edi
	addl	%edi, %ecx
	movl	%ebp, %edi
	movl	%ecx, __ZL14globalxpanning.lto_priv.0
	leal	6(%esi), %ecx
	movl	92(%esp), %esi
	sall	%cl, %edi
	sall	$24, %esi
	leal	(%edi,%esi), %ecx
	movl	%ecx, __ZL14globalypanning.lto_priv.0
	movl	_halfxdimen, %ecx
	imull	%ecx, %eax
	imull	%ecx, %edx
	movl	%eax, __ZL8globaly1.lto_priv.0
	movswl	_globalpicnum, %eax
	movl	%edx, __ZL8globalx2.lto_priv.0
	movl	__ZL12globalbufplc.lto_priv.0, %edx
	movzbl	_picsiz(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, %edx
	andl	$15, %eax
	addl	28(%esp), %eax
	shrb	$4, %dl
	movl	%eax, (%esp)
	movzbl	%dl, %edx
	addl	24(%esp), %edx
	movl	%edx, 4(%esp)
	call	_sethlinesizes
	movl	96(%esp), %eax
	movl	_globaly2, %esi
	movl	__ZL8globalzd.lto_priv.0, %ecx
	leal	-1(%eax), %ebx
	movl	_globalx1, %eax
	imull	%ebx, %esi
	movl	%ecx, %edx
	addl	__ZL8globalx2.lto_priv.0, %esi
	imull	%eax, %ebx
	addl	__ZL8globaly1.lto_priv.0, %ebx
/APP
 # 2884 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _globalx1
	movl	%ecx, %edx
	movl	%esi, %eax
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
	addl	$56, %esp
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
L1092:
	.cfi_restore_state
	addl	$56, %esp
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
L1114:
	.cfi_restore_state
	xorl	%eax, %eax
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	jmp	L1090
	.p2align 4,,10
	.p2align 3
L1139:
	movl	_globalpal, %eax
	movl	_palookup(,%eax,4), %eax
	jmp	L1087
	.p2align 4,,10
	.p2align 3
L1093:
	movl	_waloff(,%ebx,4), %edx
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	testl	%edx, %edx
	jne	L1094
	movl	%ebx, %eax
	call	_tileLoad.isra.0
	movl	_waloff(,%ebx,4), %edx
	jmp	L1094
	.p2align 4,,10
	.p2align 3
L1096:
	movl	12(%esp), %eax
	movl	_wall, %edi
	movswl	(%eax), %eax
	movl	%edi, 48(%esp)
	sall	$5, %eax
	addl	%edi, %eax
	movswl	8(%eax), %edx
	sall	$5, %edx
	addl	%edi, %edx
	movl	(%edx), %edi
	movl	4(%edx), %esi
	subl	(%eax), %edi
	subl	4(%eax), %esi
	movl	%esi, %edx
	movl	%edi, %eax
	movl	%edi, 32(%esp)
	imull	%edi, %eax
	imull	%esi, %edx
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
	movl	$1024, %ecx
	movl	%eax, 44(%esp)
	testl	%eax, %eax
	jne	L1140
L1098:
	movl	32(%esp), %eax
	movl	%ecx, %edx
/APP
 # 2836 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 32(%esp)
	movl	%ecx, %edx
	movl	%esi, %eax
/APP
 # 2836 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%eax, %ebp
	movl	16(%esp), %edx
	movl	32(%esp), %eax
	movl	20(%esp), %edi
	negl	%esi
/APP
 # 2837 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _globalx1
	movl	%eax, %ecx
	movl	%edi, %edx
	movl	32(%esp), %eax
	movl	%ebp, 44(%esp)
	movl	16(%esp), %edi
	movl	%ebp, %esi
/APP
 # 2838 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	12(%esp), %ebx
	movl	%eax, %edi
	negl	%ecx
	movl	%eax, __ZL8globaly1.lto_priv.0
	negl	%edi
	movl	%ecx, __ZL8globalx2.lto_priv.0
	movl	36(%esp), %edx
	movl	%edi, _globaly2
	movl	32(%esp), %edi
	movl	%eax, 20(%esp)
	movswl	(%ebx), %eax
	movl	48(%esp), %ebx
	movl	%ecx, 16(%esp)
	movl	%ebp, %ecx
	sall	$5, %eax
	addl	%ebx, %eax
	movl	40(%esp), %ebx
	subl	4(%eax), %ebx
	subl	(%eax), %edx
	movl	%ebx, %eax
	movl	%edi, %ebx
	imull	%edx, %ebx
	imull	%eax, %ecx
	imull	%ebp, %edx
	imull	%edi, %eax
	addl	%ecx, %ebx
	movl	%ebx, 12(%esp)
	subl	%edx, %eax
	movl	%eax, %ebp
	jmp	L1097
	.p2align 4,,10
	.p2align 3
L1111:
	negl	%ecx
	sarl	%cl, %edx
	sarl	%cl, %ebx
	jmp	L1112
	.p2align 4,,10
	.p2align 3
L1109:
	movl	16(%esp), %ecx
	negl	%ecx
	sarl	%cl, %esi
	sarl	%cl, %eax
	movl	%esi, 20(%esp)
	jmp	L1110
	.p2align 4,,10
	.p2align 3
L1140:
	movl	%eax, %edi
	cmpl	%eax, _lastd_s32
	je	L1099
	cmpl	$16383, %eax
	jbe	L1099
	movl	%eax, %ebx
	movl	%eax, _lastd_s32
	movl	$31, %ecx
	negl	%ebx
	cmovs	%eax, %ebx
	bsrl	%ebx, %eax
	leal	-1(%ebx), %edx
	xorl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %ebp
	testl	%ebx, %edx
	jne	L1100
	movl	%edi, %eax
	sarl	$24, %eax
	andl	$-128, %eax
	orl	%ecx, %eax
	xorl	%ecx, %ecx
L1101:
	movl	%ecx, _divtable32
	movb	%al, _divtable32+4
L1099:
	movl	44(%esp), %ebx
	xorl	%eax, %eax
	cmpl	$16383, %ebx
	cmovbe	%ebx, %eax
	movzbl	_divtable32+4(%eax,%eax,4), %ecx
	movl	_divtable32(%eax,%eax,4), %edx
	movl	%ecx, %ebx
	andl	$31, %ebx
	movl	%ebx, %edi
	testl	%edx, %edx
	jne	L1104
	sarb	$7, %cl
	movl	$1048576, %edx
	movsbl	%cl, %eax
	movl	%ebx, %ecx
	sarl	%cl, %edx
	movl	%edx, %ecx
	xorl	%eax, %ecx
	subl	%eax, %ecx
	jmp	L1098
	.p2align 4,,10
	.p2align 3
L1104:
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
	movl	%edi, %ecx
	cmove	%edx, %eax
	movl	%eax, %ebx
	shrl	$31, %eax
	sarl	%cl, %ebx
	leal	(%ebx,%eax), %ecx
	jmp	L1098
	.p2align 4,,10
	.p2align 3
L1100:
	movl	$30, %ecx
	movl	$1, %edx
	movl	$1, %edi
	subl	%eax, %ecx
	xorl	%eax, %eax
	sall	%cl, %edx
	movl	%ebp, %ecx
/APP
 # 477 "source/build/include/libdivide.h" 1
	divl %ebx
 # 0 "" 2
/NO_APP
	movl	%eax, 52(%esp)
	movl	%ebx, %eax
	sall	%cl, %edi
	subl	%edx, %eax
	cmpl	%edi, %eax
	jnb	L1102
	leal	-1(%ebp), %eax
L1103:
	movl	52(%esp), %ebx
	movl	44(%esp), %edi
	movl	%eax, %edx
	orl	$-128, %edx
	leal	1(%ebx), %ecx
	testl	%edi, %edi
	notl	%ebx
	cmovs	%edx, %eax
	cmovs	%ebx, %ecx
	jmp	L1101
L1102:
	leal	(%edx,%edx), %eax
	cmpl	%ebx, %eax
	movl	52(%esp), %ebx
	setnb	%cl
	cmpl	%edx, %eax
	setb	%al
	orl	%ecx, %eax
	movzbl	%al, %eax
	leal	(%eax,%ebx,2), %eax
	movl	%eax, 52(%esp)
	movl	%ebp, %eax
	orl	$64, %eax
	jmp	L1103
	.cfi_endproc
LFE36:
	.p2align 4
	.globl	__ZL17transmaskwallscaniii.lto_priv.0
	.def	__ZL17transmaskwallscaniii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL17transmaskwallscaniii.lto_priv.0:
LFB37:
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
	jle	L1141
	cmpw	$0, _tilesiz+2(,%ebp,4)
	jle	L1141
	movl	%ebp, %eax
	movl	%edi, 32(%esp)
	movl	%ecx, %ebx
	call	__Z12tileLoadHighi
	movl	%eax, __ZL8globalht.lto_priv.0
	testl	%eax, %eax
	je	L1194
L1143:
	movswl	__ZL14globalshiftval.lto_priv.0, %eax
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_setuptvlineasm
	movl	32(%esp), %ebx
	cmpl	%ebx, %esi
	jg	L1141
	movl	_windowxy1, %eax
	movl	_startumost, %edx
	movzwl	__ZL14globalshiftval.lto_priv.0, %ecx
	addl	%eax, %eax
	addl	%eax, %edx
	addl	_startdmost, %eax
	jmp	L1144
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1146:
	addl	$1, %esi
	cmpl	%esi, %ebx
	jl	L1145
L1144:
	movzwl	(%eax,%esi,2), %edi
	cmpw	%di, (%edx,%esi,2)
	jg	L1146
	testw	%cx, %cx
	jne	L1147
	movl	32(%esp), %ebx
	cmpl	%esi, %ebx
	jl	L1141
	.p2align 4
	.p2align 3
L1148:
	movl	%esi, %eax
	addl	$1, %esi
	call	__ZL14transmaskvlinei
	cmpl	%esi, %ebx
	jge	L1148
L1141:
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
L1145:
	.cfi_restore_state
	testw	%cx, %cx
	je	L1141
L1147:
	cmpl	%esi, 32(%esp)
	jl	L1141
	testl	$1, %esi
	jne	L1195
	movl	%esi, %edi
	cmpl	%esi, 32(%esp)
	jle	L1196
L1179:
	leal	1(%edi), %eax
	movl	%edi, 84(%esp)
	movl	%edi, %ebp
	movl	%eax, 24(%esp)
	jmp	L1177
	.p2align 4,,10
	.p2align 3
L1154:
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
	je	L1155
	movswl	4(%esi), %ecx
	sall	%cl, %ebx
	movswl	6(%esi), %ecx
	sall	%cl, %eax
L1155:
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
	jns	L1157
	movswl	%bx, %edx
	movl	%edx, %edi
	xorl	%edx, %edx
	negl	%edi
	divl	%edi
L1157:
	movswl	%cx, %eax
	movl	%edx, %edi
	negl	%eax
	sall	%cl, %edi
	imull	%edx, %eax
	testw	%cx, %cx
	cmovs	%eax, %edi
	testl	%esi, %esi
	je	L1160
	movl	(%esi), %eax
L1161:
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
	jns	L1163
	movswl	%bx, %ebx
	movl	%edi, %eax
	xorl	%edx, %edx
	negl	%ebx
	divl	%ebx
L1163:
	movswl	%cx, %eax
	movl	%edx, %ebx
	negl	%eax
	sall	%cl, %ebx
	imull	%edx, %eax
	testw	%cx, %cx
	cmovs	%eax, %ebx
	testl	%esi, %esi
	je	L1166
	movl	(%esi), %eax
L1167:
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
	jne	L1197
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
L1169:
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
	je	L1198
	movl	_ylookup, %edx
	jge	L1173
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
L1172:
	cmpl	%ebx, %esi
	jl	L1199
L1174:
	movl	%edx, _asm1
	movl	44(%esp), %esi
	movl	%eax, _asm2
	cmpl	%esi, 36(%esp)
	jg	L1200
L1176:
	jl	L1201
	.p2align 5
	.p2align 4
	.p2align 3
L1151:
	addl	$2, 24(%esp)
	addl	$2, %ebp
	cmpl	%ebp, 32(%esp)
	jle	L1202
L1177:
	movl	_xdimen, %eax
	cmpl	%eax, %ebp
	jnb	L1151
	subl	$1, %eax
	cmpl	%ebp, %eax
	je	L1193
	movl	_windowxy1, %eax
	movl	_startumost, %ebx
	movl	__ZL5uwall.lto_priv.0, %edi
	movl	_windowxy1+4, %esi
	leal	(%eax,%ebp), %edx
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
	jg	L1203
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
	jle	L1154
L1193:
	movl	%ebp, %eax
	addl	$2, %ebp
	call	__ZL14transmaskvlinei
	addl	$2, 24(%esp)
	cmpl	%ebp, 32(%esp)
	jg	L1177
L1202:
	movl	32(%esp), %eax
	movl	84(%esp), %ebx
	subl	$1, %eax
	subl	%ebx, %eax
	andl	$-2, %eax
	leal	2(%ebx,%eax), %edi
L1150:
	movl	32(%esp), %ebx
	cmpl	%edi, %ebx
	jl	L1141
	.p2align 4
	.p2align 3
L1178:
	movl	%edi, %eax
	addl	$1, %edi
	call	__ZL14transmaskvlinei
	cmpl	%edi, %ebx
	jge	L1178
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
L1203:
	.cfi_restore_state
	movl	24(%esp), %eax
	call	__ZL14transmaskvlinei
	jmp	L1151
	.p2align 4,,10
	.p2align 3
L1198:
	movl	_vplce, %edx
	movl	52(%esp), %eax
	cmpl	%ebx, %esi
	jge	L1174
L1199:
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
	jle	L1176
L1200:
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
	jmp	L1151
	.p2align 4,,10
	.p2align 3
L1173:
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
	jmp	L1172
	.p2align 4,,10
	.p2align 3
L1197:
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
	jmp	L1169
	.p2align 4,,10
	.p2align 3
L1166:
	movl	76(%esp), %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L1167
	.p2align 4,,10
	.p2align 3
L1160:
	movl	76(%esp), %eax
	movl	_waloff(,%eax,4), %eax
	jmp	L1161
	.p2align 4,,10
	.p2align 3
L1194:
	movl	_waloff(,%ebp,4), %edx
	testl	%edx, %edx
	jne	L1143
	movl	%ebp, %eax
	call	_tileLoad.isra.0
	jmp	L1143
L1195:
	movl	%esi, %eax
	leal	1(%esi), %edi
	call	__ZL14transmaskvlinei
	cmpl	%edi, 32(%esp)
	jg	L1179
	jmp	L1150
	.p2align 4,,10
	.p2align 3
L1201:
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
	jmp	L1151
L1196:
	movl	32(%esp), %ebx
	jmp	L1178
	.cfi_endproc
LFE37:
	.p2align 4
	.globl	__ZL14nonpow2_mhlineijijPc.lto_priv.0
	.def	__ZL14nonpow2_mhlineijijPc.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL14nonpow2_mhlineijijPc.lto_priv.0:
LFB39:
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
	jle	L1204
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
L1207:
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
	je	L1206
	movl	20(%esp), %ecx
	movzbl	(%ecx,%eax), %eax
	movb	%al, (%ebx)
L1206:
	addl	8(%esp), %esi
	addl	12(%esp), %edi
	addl	$1, %ebx
	cmpl	%ebx, 16(%esp)
	jne	L1207
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	36(%esp), %ebp
	.cfi_restore 5
L1204:
	movl	24(%esp), %ebx
	movl	32(%esp), %edi
	addl	$40, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE39:
	.p2align 4
	.globl	__ZL14nonpow2_thlineijijPc.lto_priv.0
	.def	__ZL14nonpow2_thlineijijPc.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL14nonpow2_thlineijijPc.lto_priv.0:
LFB40:
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
	je	L1214
	testl	%eax, %eax
	jle	L1213
	addl	%ecx, %eax
	movl	%eax, 24(%esp)
	.p2align 4
	.p2align 3
L1217:
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
	je	L1216
	movl	16(%esp), %ebx
	movzbl	(%ecx), %edx
	movzbl	(%ebx,%eax), %eax
	movl	20(%esp), %ebx
	sall	$8, %eax
	orl	%edx, %eax
	movzbl	(%ebx,%eax), %eax
	movb	%al, (%ecx)
L1216:
	addl	4(%esp), %edi
	addl	8(%esp), %esi
	addl	$1, %ecx
	cmpl	%ecx, 24(%esp)
	jne	L1217
L1213:
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
L1214:
	.cfi_restore_state
	testl	%eax, %eax
	jle	L1213
	addl	%ecx, %eax
	movl	%eax, 24(%esp)
	.p2align 4
	.p2align 3
L1219:
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
	je	L1218
	movl	16(%esp), %ebx
	movzbl	(%ecx), %edx
	movzbl	(%ebx,%eax), %eax
	sall	$8, %edx
	orl	%eax, %edx
	movl	20(%esp), %eax
	movzbl	(%eax,%edx), %eax
	movb	%al, (%ecx)
L1218:
	addl	4(%esp), %edi
	addl	8(%esp), %esi
	addl	$1, %ecx
	cmpl	%ecx, 24(%esp)
	jne	L1219
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
LFE40:
	.p2align 4
	.def	__ZL15ceilspritehlineii;	.scl	3;	.type	32;	.endef
__ZL15ceilspritehlineii:
LFB41:
	.cfi_startproc
	subl	$64, %esp
	.cfi_def_cfa_offset 68
	movl	__ZL5lastx.lto_priv.0, %ecx
	movl	%esi, 52(%esp)
	.cfi_offset 6, -16
	movl	(%ecx,%edx,4), %esi
	cmpl	%eax, %esi
	jg	L1229
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
	je	L1231
	andl	$2, %edx
	movl	%eax, 20(%esp)
	jne	L1232
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
L1229:
	movl	52(%esp), %esi
	addl	$64, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1231:
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
	jne	L1233
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
L1232:
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
L1233:
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
LFE41:
	.p2align 4
	.globl	__ZL14ceilspritescanii.lto_priv.0
	.def	__ZL14ceilspritescanii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL14ceilspritescanii.lto_priv.0:
LFB42:
	.cfi_startproc
	cmpl	%edx, %eax
	jg	L1275
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
L1255:
	movl	__ZL5dwall.lto_priv.0, %edx
	leal	(%edi,%edi), %ecx
	movl	%ecx, (%esp)
	movzwl	(%edx,%edi,2), %ecx
	cmpw	%ax, %cx
	jg	L1237
	subl	$1, %ebp
	leal	-1(%edi), %esi
	cmpl	%ebx, %ebp
	jle	L1239
	.p2align 4
	.p2align 3
L1252:
	addl	$1, %ebx
	movl	%esi, %eax
	movl	%ebx, %edx
	call	__ZL15ceilspritehlineii
	cmpl	%ebp, %ebx
	jne	L1252
L1239:
	cmpl	%edi, 12(%esp)
	je	L1272
	movl	__ZL5uwall.lto_priv.0, %eax
	movl	(%esp), %ecx
	movswl	2(%eax,%ecx), %ebx
	movl	%ebx, %ebp
L1249:
	addl	$1, %edi
	cmpl	4(%esp), %edi
	je	L1278
L1254:
	movl	__ZL5uwall.lto_priv.0, %eax
	movl	(%esp), %ecx
	movswl	2(%eax,%ecx), %eax
	jmp	L1255
	.p2align 4,,10
	.p2align 3
L1237:
	leal	-1(%eax), %edx
	movl	%eax, 8(%esp)
	movswl	%cx, %eax
	cmpl	%ebp, %edx
	jge	L1240
	leal	-1(%edi), %esi
	movl	%ebx, %ecx
	cmpl	%ebx, %edx
	jle	L1242
	movl	%edx, 20(%esp)
	movl	%eax, 24(%esp)
	movl	%ebp, 16(%esp)
	movl	%edx, %ebp
	.p2align 4
	.p2align 3
L1245:
	addl	$1, %ebx
	movl	%esi, %eax
	movl	%ebx, %edx
	call	__ZL15ceilspritehlineii
	cmpl	%ebp, %ebx
	jne	L1245
	movl	%ebp, %edx
	movl	20(%esp), %ecx
	movl	16(%esp), %ebp
	movl	24(%esp), %eax
L1242:
	cmpl	%ecx, %edx
	jge	L1257
	movl	8(%esp), %esi
	leal	0(,%ecx,4), %edx
	subl	$1, %esi
	leal	0(,%esi,4), %ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1247:
	movl	__ZL5lastx.lto_priv.0, %ecx
	movl	%edi, (%ecx,%edx)
	subl	$4, %edx
	cmpl	%ebx, %edx
	jne	L1247
	movl	%esi, %ebx
L1246:
	leal	-1(%edi), %esi
	cmpl	%ebp, %eax
	jge	L1279
	movl	%edi, %ecx
	movl	%ebx, 8(%esp)
	movl	%ebp, %edi
	movl	%eax, %ebx
	movl	%ecx, %ebp
	.p2align 4
	.p2align 3
L1248:
	subl	$1, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	call	__ZL15ceilspritehlineii
	cmpl	%edi, %ebx
	jne	L1248
	movl	%ebp, %eax
	movl	%edi, %ebp
	movl	8(%esp), %ebx
	movl	%eax, %edi
	addl	$1, %edi
	cmpl	4(%esp), %edi
	jne	L1254
L1278:
	leal	-1(%ebp), %esi
L1253:
	movl	12(%esp), %edi
	cmpl	%esi, %ebx
	jge	L1235
	.p2align 4
	.p2align 3
L1256:
	addl	$1, %ebx
	movl	%edi, %eax
	movl	%ebx, %edx
	call	__ZL15ceilspritehlineii
	cmpl	%esi, %ebx
	jne	L1256
L1235:
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
L1279:
	.cfi_restore_state
	jle	L1249
	sall	$2, %ebp
	leal	0(,%eax,4), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1251:
	movl	__ZL5lastx.lto_priv.0, %edx
	movl	%edi, (%edx,%ebp)
	addl	$4, %ebp
	cmpl	%ecx, %ebp
	jne	L1251
	movl	%eax, %ebp
	jmp	L1249
	.p2align 4,,10
	.p2align 3
L1240:
	leal	-1(%ebp), %esi
	cmpl	%ebx, %esi
	jle	L1243
	movl	%edx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	%ebp, 8(%esp)
	leal	-1(%edi), %ebp
	.p2align 4
	.p2align 3
L1244:
	addl	$1, %ebx
	movl	%ebp, %eax
	movl	%ebx, %edx
	call	__ZL15ceilspritehlineii
	cmpl	%esi, %ebx
	jne	L1244
	movl	8(%esp), %ebp
	movl	16(%esp), %edx
	movl	20(%esp), %eax
L1243:
	movl	%edx, %ebx
	jmp	L1246
L1272:
	movl	%ebp, %esi
	jmp	L1253
L1257:
	movl	%ecx, %ebx
	jmp	L1246
L1275:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	ret
	.cfi_endproc
LFE42:
	.p2align 4
	.globl	__ZL24setupslopevlin_alsotransiii.lto_priv.0
	.def	__ZL24setupslopevlin_alsotransiii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL24setupslopevlin_alsotransiii.lto_priv.0:
LFB25:
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
LFE25:
	.p2align 4
	.globl	__ZL19setup_globals_wall1PK11uwalltypev7i.lto_priv.0
	.def	__ZL19setup_globals_wall1PK11uwalltypev7i.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL19setup_globals_wall1PK11uwalltypev7i.lto_priv.0:
LFB43:
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
	ja	L1291
	movl	%ebx, %edi
	movl	%ebx, %eax
L1283:
	movl	%ecx, _globalorientation
	movw	%ax, _globalpicnum
	cmpb	$63, _picanm+3(%ebx,%ebx,4)
	jbe	L1284
	movl	%ebx, %eax
	movl	%edx, (%esp)
	call	_animateoffs
	movl	(%esp), %edx
	addl	%eax, %edi
	movw	%di, _globalpicnum
	movswl	%di, %ebx
L1284:
	andb	$16, %dh
	je	L1287
	movzwl	_rottile(,%ebx,4), %eax
	cmpw	$-1, %ax
	je	L1287
	movw	%ax, _globalpicnum
	movswl	%ax, %ebx
	movl	%eax, %edi
L1287:
	movl	%ebx, %eax
	call	__Z12tileLoadHighi
	movl	%eax, __ZL8globalht.lto_priv.0
	testl	%eax, %eax
	je	L1288
	movswl	4(%eax), %ecx
L1289:
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
L1291:
	.cfi_restore_state
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	jmp	L1283
	.p2align 4,,10
	.p2align 3
L1288:
	movl	_waloff(,%ebx,4), %ecx
	testl	%ecx, %ecx
	je	L1298
	xorl	%ecx, %ecx
	jmp	L1289
	.p2align 4,,10
	.p2align 3
L1298:
	movswl	%di, %eax
	movl	%ecx, (%esp)
	call	_tileLoad.isra.0
	movl	(%esp), %ecx
	jmp	L1289
	.cfi_endproc
LFE43:
	.p2align 4
	.globl	__ZL19setup_globals_wall2PK11uwalltypev7hii.lto_priv.0
	.def	__ZL19setup_globals_wall2PK11uwalltypev7hii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL19setup_globals_wall2PK11uwalltypev7hii.lto_priv.0:
LFB44:
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
	je	L1300
	movswl	6(%eax), %ecx
L1300:
	movswl	_globalpicnum, %edi
	movswl	_tilesiz+2(,%edi,4), %esi
	sall	%cl, %esi
	testl	%esi, %esi
	je	L1321
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -20
	movzbl	_picsiz(%edi), %ebx
	movl	_globalvisibility, %eax
	shrb	$4, %bl
	movzbl	%bl, %ebx
	addl	%ecx, %ebx
	testb	%dl, %dl
	je	L1303
	addl	$16, %edx
	movzbl	%dl, %edx
/APP
 # 4408 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
L1303:
	movl	%eax, _globvis
	movl	16(%esp), %edx
	movw	%bx, __ZL14globalshiftval.lto_priv.0
	movl	_pow2long.lto_priv.0(,%ebx,4), %eax
	cmpl	$9, _g_loadedMapVersion
	jle	L1322
L1304:
	cmpl	%eax, %esi
	je	L1305
L1306:
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
	call	_tabledivide64.lto_priv.9
	movw	%di, __ZL14globalshiftval.lto_priv.0
	movl	%eax, __ZL12globalyscale.lto_priv.0
	movl	%eax, %esi
L1307:
	movl	_globalorientation, %edi
	movl	_globalposz, %eax
	testl	$4, %edi
	jne	L1308
	subl	%ebp, %eax
	imull	%esi
	shldl	$8, %eax, %edx
	sall	$8, %eax
	movl	%eax, %ecx
	movl	%edx, %ebx
L1309:
	movl	__ZL14globalypanning.lto_priv.0, %eax
	cltd
	shldl	$24, %eax, %edx
	sall	$24, %eax
	addl	%ecx, %eax
	adcl	%ebx, %edx
	andl	$256, %edi
	movl	%eax, __ZL8globalzd.lto_priv.0
	movl	%edx, __ZL8globalzd.lto_priv.0+4
	je	L1320
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
L1322:
	.cfi_restore_state
	testb	$2, _picanm+4(%edi,%edi,4)
	jne	L1304
	cmpl	%eax, %esi
	je	L1305
	addl	$1, %ebx
	movw	%bx, __ZL14globalshiftval.lto_priv.0
L1305:
	cmpl	$512, %esi
	jg	L1306
	movl	$32, %eax
	subw	__ZL14globalshiftval.lto_priv.0, %ax
	movzbl	23(%edx), %esi
	movw	%ax, __ZL14globalshiftval.lto_priv.0
	cwtl
	leal	-19(%ecx,%eax), %ecx
	sall	%cl, %esi
	movl	%esi, __ZL12globalyscale.lto_priv.0
	jmp	L1307
	.p2align 4,,10
	.p2align 3
L1321:
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
L1320:
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
L1308:
	.cfi_restore_state
	subl	40(%esp), %eax
	imull	%esi
	shldl	$8, %eax, %edx
	sall	$8, %eax
	movl	%eax, %ecx
	movl	%edx, %ebx
	jmp	L1309
	.cfi_endproc
LFE44:
	.p2align 4
	.globl	__ZL18classicDrawBunchesi.lto_priv.0
	.def	__ZL18classicDrawBunchesi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL18classicDrawBunchesi.lto_priv.0:
LFB45:
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
	subl	$148, %esp
	.cfi_def_cfa_offset 168
	movswl	_bunchfirst(%eax,%eax), %ebp
	movl	%eax, 36(%esp)
	movswl	_thesector(%ebp,%ebp), %ecx
	leal	(%ecx,%ecx,4), %eax
	movl	%ecx, 104(%esp)
	sall	$3, %eax
	movl	%eax, 92(%esp)
	addl	_sector, %eax
	movl	%eax, 32(%esp)
	movl	_g_nodraw, %eax
	testl	%ebp, %ebp
	js	L1324
	movl	%eax, 28(%esp)
	movl	%ebp, %ebx
	movl	$-1, %edi
	movl	$-1, %esi
	movl	%ebp, 24(%esp)
	movl	%ecx, %ebp
	.p2align 4
	.p2align 3
L1325:
	movl	$0, (%esp)
	movl	__ZL4uplc.lto_priv.0, %eax
	movl	%ebx, %edx
	movl	%ebp, %ecx
	call	__ZL8wallmostPsiic.lto_priv.0
	movl	$1, (%esp)
	movl	%ebx, %edx
	movl	%ebp, %ecx
	andl	%eax, %esi
	movl	__ZL4dplc.lto_priv.0, %eax
	call	__ZL8wallmostPsiic.lto_priv.0
	movswl	_bunchp2(%ebx,%ebx), %ebx
	andl	%eax, %edi
	testl	%ebx, %ebx
	jns	L1325
	movl	28(%esp), %edx
	movl	%esi, %ebx
	movl	24(%esp), %ebp
	andl	$12, %edi
	andl	$3, %ebx
	testl	%edx, %edx
	jne	L1728
	cmpb	$3, %bl
	je	L1344
	movl	32(%esp), %eax
	movzwl	12(%eax), %eax
	movl	%eax, %edx
	andl	$3, %edx
	cmpw	$2, %dx
	je	L1729
	testb	$1, %al
	jne	L1346
	movl	36(%esp), %eax
	movl	_xb1(,%ebp,4), %esi
	movswl	_bunchlast(%eax,%eax), %eax
	movl	%esi, %ebp
	movl	__ZL3xb2.lto_priv.0(,%eax,4), %eax
	movl	%eax, 40(%esp)
	movl	92(%esp), %eax
	addl	_sector, %eax
	movl	4(%eax), %ecx
	movzbl	21(%eax), %edx
	movl	%esi, 20(%esp)
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
	jne	L1344
	leal	(%esi,%esi), %eax
	movl	%eax, 24(%esp)
	movl	_globalorientation, %eax
	andl	$384, %eax
	je	L1730
	cmpl	$256, %eax
	je	L1375
	cmpl	$384, %eax
	je	L1376
	movswl	_globalpicnum, %eax
	movzbl	_picsiz(%eax), %eax
	movl	%eax, %edx
	andl	$15, %eax
	shrb	$4, %dl
	movl	%eax, (%esp)
	movzbl	%dl, %edx
	movl	%edx, 4(%esp)
	call	_msethlineshift
L1377:
	cmpl	%ebp, 40(%esp)
	jl	L1344
	movl	__ZL5umost.lto_priv.0, %eax
	movl	24(%esp), %ebx
	movswl	(%eax,%ebx), %ebx
	movl	%edi, %eax
	movl	%ebp, %edi
	movb	%al, 52(%esp)
	movl	%ebx, %edx
	movl	%ebx, %esi
	.p2align 4
	.p2align 3
L1399:
	movl	24(%esp), %ebp
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	__ZL4uplc.lto_priv.0, %ecx
	movswl	(%eax,%ebp), %eax
	movswl	(%ecx,%ebp), %ebp
	cmpw	%bp, %ax
	cmovg	%ebp, %eax
	cmpw	%dx, %ax
	jg	L1380
	subl	$1, %esi
	leal	-1(%edi), %ebp
	cmpl	%ebx, %esi
	jle	L1382
	.p2align 4
	.p2align 3
L1395:
	addl	$1, %ebx
	movl	%ebp, %eax
	movl	%ebx, %edx
	call	__ZL9slowhlineii
	cmpl	%ebx, %esi
	jne	L1395
L1382:
	cmpl	%edi, 40(%esp)
	je	L1731
	movl	__ZL5umost.lto_priv.0, %eax
	movl	24(%esp), %ebx
	movswl	2(%eax,%ebx), %ebx
	movl	%ebx, %esi
L1392:
	movl	_globaly2, %eax
	addl	$1, %edi
	addl	%eax, __ZL8globalx2.lto_priv.0
	movl	_globalx1, %eax
	addl	%eax, __ZL8globaly1.lto_priv.0
	cmpl	%edi, 40(%esp)
	jl	L1398
	movl	__ZL5umost.lto_priv.0, %eax
	movl	24(%esp), %ecx
	movzwl	2(%eax,%ecx), %edx
	leal	(%edi,%edi), %eax
	movl	%eax, 24(%esp)
	jmp	L1399
L1346:
	movl	36(%esp), %edx
	xorl	%eax, %eax
	call	__ZL8parascanci
L1344:
	movl	%edi, %eax
	cmpb	$12, %al
	je	L1725
	movl	32(%esp), %eax
	movl	36(%esp), %ebx
	movzwl	14(%eax), %eax
	movl	%eax, %edx
	andl	$3, %edx
	cmpw	$2, %dx
	je	L1732
	testb	$1, %al
	jne	L1403
	movswl	_bunchlast(%ebx,%ebx), %eax
	movl	_globalposz, %ecx
	movl	__ZL3xb2.lto_priv.0(,%eax,4), %eax
	movl	%eax, 40(%esp)
	movswl	_bunchfirst(%ebx,%ebx), %eax
	movl	_xb1(,%eax,4), %ebp
	movl	92(%esp), %eax
	addl	_sector, %eax
	subl	8(%eax), %ecx
	movzbl	29(%eax), %edx
	movl	%ebp, 20(%esp)
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
	jne	L1725
	leal	(%ebp,%ebp), %eax
	movl	%eax, 28(%esp)
	movl	_globalorientation, %eax
	andl	$384, %eax
	je	L1733
	cmpl	$256, %eax
	je	L1434
	cmpl	$384, %eax
	je	L1435
	movswl	_globalpicnum, %eax
	movzbl	_picsiz(%eax), %eax
	movl	%eax, %edx
	andl	$15, %eax
	shrb	$4, %dl
	movl	%eax, (%esp)
	movzbl	%dl, %edx
	movl	%edx, 4(%esp)
	call	_msethlineshift
L1436:
	movl	28(%esp), %ebx
	movl	__ZL4dplc.lto_priv.0, %eax
	movl	__ZL5umost.lto_priv.0, %edx
	movswl	(%eax,%ebx), %eax
	movswl	(%edx,%ebx), %ecx
	cmpw	%cx, %ax
	movswl	%cx, %esi
	cmovge	%eax, %esi
	cmpl	%ebp, 40(%esp)
	jl	L1725
	movl	%esi, %ebx
	.p2align 4
	.p2align 3
L1440:
	cmpw	%cx, %ax
	movl	28(%esp), %edi
	cmovge	%eax, %ecx
	movl	__ZL5dmost.lto_priv.0, %eax
	movswl	(%eax,%edi), %eax
	cmpw	%ax, %cx
	jl	L1441
	subl	$1, %ebx
	leal	-1(%ebp), %edi
	cmpl	%ebx, %esi
	jge	L1443
	.p2align 4
	.p2align 3
L1456:
	addl	$1, %esi
	movl	%edi, %eax
	movl	%esi, %edx
	call	__ZL9slowhlineii
	cmpl	%esi, %ebx
	jne	L1456
L1443:
	cmpl	%ebp, 40(%esp)
	je	L1734
	movl	28(%esp), %ebx
	movl	__ZL4dplc.lto_priv.0, %eax
	movl	__ZL5umost.lto_priv.0, %edx
	movzwl	2(%eax,%ebx), %eax
	movzwl	2(%edx,%ebx), %edx
	cmpw	%dx, %ax
	cmovl	%edx, %eax
	movswl	%ax, %esi
	movl	%esi, %ebx
L1453:
	movl	_globaly2, %eax
	addl	$1, %ebp
	addl	%eax, __ZL8globalx2.lto_priv.0
	movl	_globalx1, %eax
	addl	%eax, __ZL8globaly1.lto_priv.0
	cmpl	%ebp, 40(%esp)
	jl	L1459
	movl	28(%esp), %edi
	movl	__ZL4dplc.lto_priv.0, %eax
	movl	__ZL5umost.lto_priv.0, %edx
	movswl	2(%eax,%edi), %eax
	movswl	2(%edx,%edi), %ecx
	leal	(%ebp,%ebp), %edi
	movl	%edi, 28(%esp)
	jmp	L1440
L1459:
	subl	$1, %ebx
L1458:
	movl	40(%esp), %edi
	cmpl	%ebx, %esi
	jge	L1725
	.p2align 4
	.p2align 3
L1460:
	addl	$1, %esi
	movl	%edi, %eax
	movl	%esi, %edx
	call	__ZL9slowhlineii
	cmpl	%ebx, %esi
	jne	L1460
L1725:
	movl	36(%esp), %eax
	movswl	_bunchfirst(%eax,%eax), %eax
	movl	%eax, 24(%esp)
L1343:
	movl	24(%esp), %edi
	testl	%edi, %edi
	js	L1323
	.p2align 4
	.p2align 3
L1564:
	movl	24(%esp), %eax
	movl	__ZL5dmost.lto_priv.0, %ecx
	movl	_xb1(,%eax,4), %edi
	movl	__ZL3xb2.lto_priv.0(,%eax,4), %ebp
	movl	__ZL5umost.lto_priv.0, %eax
	movl	%edi, 28(%esp)
	movzwl	(%ecx,%ebp,2), %esi
	cmpw	%si, (%eax,%ebp,2)
	jge	L1735
L1461:
	movl	24(%esp), %edi
	movl	_wall, %ebx
	movzwl	_searchit, %ecx
	movswl	_thewall(%edi,%edi), %edi
	movl	%edi, 64(%esp)
	sall	$5, %edi
	addl	%edi, %ebx
	movl	%edi, 56(%esp)
	movl	__ZL12smostwallcnt.lto_priv.0, %edi
	movswl	12(%ebx), %esi
	movl	%edi, 84(%esp)
	movl	__ZL8smostcnt.lto_priv.0, %edi
	movw	%si, 60(%esp)
	movl	%esi, 36(%esp)
	movl	%edi, 88(%esp)
	testl	%esi, %esi
	js	L1736
	movl	36(%esp), %esi
	movl	_sector, %edx
	leal	(%esi,%esi,4), %edi
	leal	0(,%edi,8), %esi
	leal	(%edx,%edi,8), %edi
	movl	%edi, 40(%esp)
	cmpw	$2, %cx
	je	L1737
L1470:
	leal	108(%esp), %edi
	movl	4(%ebx), %ecx
	movl	(%ebx), %eax
	movl	$0, 128(%esp)
	movl	%edi, 16(%esp)
	leal	128(%esp), %edi
	movl	%edi, 12(%esp)
	movl	92(%esp), %edi
	movl	%ecx, 8(%esp)
	addl	%edi, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	$0, 132(%esp)
	movl	$0, 140(%esp)
	movl	$0, 108(%esp)
	movl	$0, 112(%esp)
	movl	$0, 120(%esp)
	call	_getzsofslopeptr
	movswl	8(%ebx), %eax
	leal	112(%esp), %edx
	movl	%edx, 16(%esp)
	leal	132(%esp), %edx
	sall	$5, %eax
	addl	_wall, %eax
	movl	%edx, 12(%esp)
	movl	4(%eax), %edx
	movl	%edx, 8(%esp)
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	_sector, %eax
	addl	%edi, %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	leal	116(%esp), %eax
	movl	%eax, 16(%esp)
	leal	136(%esp), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_sector, %eax
	addl	%esi, %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movswl	8(%ebx), %eax
	leal	120(%esp), %edx
	movl	%edx, 16(%esp)
	leal	140(%esp), %edx
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
	leal	124(%esp), %eax
	addl	_sector, %esi
	movl	%eax, 16(%esp)
	leal	144(%esp), %eax
	movl	%eax, 12(%esp)
	movl	_globalposy, %eax
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	movl	_globalposx, %eax
	movl	%eax, 4(%esp)
	call	_getzsofslopeptr
	movl	128(%esp), %eax
	movl	%eax, 52(%esp)
	movl	132(%esp), %eax
	movl	%eax, 72(%esp)
	movl	140(%esp), %eax
	movl	%eax, 80(%esp)
	movl	108(%esp), %eax
	movl	%eax, 48(%esp)
	movl	112(%esp), %eax
	movl	%eax, 76(%esp)
	movl	120(%esp), %eax
	movl	%eax, 68(%esp)
	movzwl	14(%ebx), %eax
	andl	$48, %eax
	cmpw	$16, %ax
	jne	L1479
	movswl	_maskwallcnt, %eax
	movzwl	24(%esp), %edi
	leal	1(%eax), %edx
	movw	%di, _maskwall(%eax,%eax)
	movw	%dx, _maskwallcnt
L1479:
	movl	32(%esp), %eax
	testb	$1, 12(%eax)
	je	L1480
	movl	40(%esp), %eax
	movl	$0, 44(%esp)
	testb	$1, 12(%eax)
	jne	L1481
L1480:
	movl	136(%esp), %edi
	movl	52(%esp), %eax
	cmpl	%eax, %edi
	jg	L1482
	movl	80(%esp), %esi
	cmpl	%esi, 72(%esp)
	jge	L1738
L1482:
	movl	36(%esp), %ecx
	movl	$0, (%esp)
	movl	24(%esp), %edx
	movl	__ZL5dwall.lto_priv.0, %eax
	call	__ZL8wallmostPsiic.lto_priv.0
	movl	48(%esp), %eax
	cmpl	%eax, %edi
	jg	L1490
	movl	80(%esp), %esi
	cmpl	%esi, 76(%esp)
	jl	L1490
L1491:
	cmpw	$2, _searchit
	je	L1739
L1494:
	movswl	16(%ebx), %edx
	movl	%ebx, %eax
	call	__ZL19setup_globals_wall1PK11uwalltypev7i.lto_priv.0
	movl	40(%esp), %eax
	movl	4(%eax), %ecx
	movl	32(%esp), %eax
	movzbl	32(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__ZL19setup_globals_wall2PK11uwalltypev7hii.lto_priv.0
	movl	24(%esp), %eax
	movl	%ebx, %edx
	call	__ZL8prepwalliPK11uwalltypev7.lto_priv.0
	movl	__ZL5lwall.lto_priv.0, %eax
	movl	__ZL4uplc.lto_priv.0, %ecx
	movl	%ebp, %edx
	movl	%eax, 8(%esp)
	movl	__ZL5swall.lto_priv.0, %eax
	movl	%eax, 4(%esp)
	movl	__ZL5dwall.lto_priv.0, %eax
	movl	%eax, (%esp)
	movl	28(%esp), %eax
	call	__ZL8wallscaniiPKsS0_PKiS2_
	movl	52(%esp), %eax
	movl	$0, __ZL8globalht.lto_priv.0
	cmpl	%eax, %edi
	jl	L1496
L1571:
	movl	80(%esp), %esi
	cmpl	%esi, 72(%esp)
	jg	L1496
	movl	28(%esp), %eax
	cmpl	%ebp, %eax
	jg	L1580
	movl	%ebx, 96(%esp)
	leal	1(%ebp), %esi
	movl	__ZL5umost.lto_priv.0, %ecx
	movl	%ebp, 44(%esp)
	movl	%esi, %ebp
	.p2align 4
	.p2align 3
L1500:
	movl	__ZL5dwall.lto_priv.0, %edx
	leal	(%ecx,%eax,2), %ebx
	movzwl	(%edx,%eax,2), %esi
	movzwl	(%ebx), %edx
	cmpw	%dx, %si
	jle	L1499
	movl	__ZL5dmost.lto_priv.0, %edi
	cmpw	(%edi,%eax,2), %dx
	jg	L1499
	movw	%si, (%ebx)
	movl	__ZL5dmost.lto_priv.0, %edi
	movl	__ZL5umost.lto_priv.0, %ecx
	movzwl	(%edi,%eax,2), %ebx
	cmpw	%bx, (%ecx,%eax,2)
	jle	L1499
	subw	$1, __ZL7numhits.lto_priv.0
	.p2align 4
	.p2align 3
L1499:
	addl	$1, %eax
	cmpl	%ebp, %eax
	jne	L1500
	movl	44(%esp), %ebp
	movl	96(%esp), %ebx
	movl	$1, 44(%esp)
L1501:
	movl	80(%esp), %edi
	cmpl	%edi, 72(%esp)
	jg	L1504
L1498:
	movl	_globalposz, %eax
	cmpl	%eax, 144(%esp)
	jle	L1481
	.p2align 4
	.p2align 3
L1504:
	movl	28(%esp), %esi
	movl	%ebp, %eax
	movl	__ZL8smostcnt.lto_priv.0, %edx
	subl	%esi, %eax
	addl	$1, %eax
	leal	(%edx,%eax), %esi
	cmpl	__ZL8ysavecnt.lto_priv.0, %esi
	jl	L1740
L1481:
	movl	32(%esp), %eax
	testb	$1, 14(%eax)
	je	L1507
	movl	40(%esp), %eax
	testb	$1, 14(%eax)
	jne	L1508
L1507:
	movl	116(%esp), %edi
	movl	48(%esp), %eax
	cmpl	%eax, %edi
	jl	L1509
	movl	76(%esp), %esi
	cmpl	%esi, 68(%esp)
	jge	L1741
L1509:
	movl	36(%esp), %ecx
	movl	$1, (%esp)
	movl	24(%esp), %edx
	movl	__ZL5uwall.lto_priv.0, %eax
	call	__ZL8wallmostPsiic.lto_priv.0
	movl	52(%esp), %eax
	cmpl	%eax, %edi
	jl	L1516
	movl	72(%esp), %esi
	cmpl	%esi, 68(%esp)
	jl	L1516
L1517:
	cmpw	$2, _searchit
	je	L1742
L1520:
	movl	%ebx, %eax
	testb	$2, 14(%ebx)
	je	L1521
	movswl	10(%ebx), %eax
	sall	$5, %eax
	addl	_wall, %eax
L1521:
	movswl	16(%eax), %edx
	call	__ZL19setup_globals_wall1PK11uwalltypev7i.lto_priv.0
	movl	40(%esp), %eax
	movl	8(%eax), %ecx
	movl	32(%esp), %eax
	movzbl	32(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__ZL19setup_globals_wall2PK11uwalltypev7hii.lto_priv.0
	movl	44(%esp), %eax
	testl	%eax, %eax
	je	L1743
L1522:
	movl	__ZL5lwall.lto_priv.0, %eax
	movl	28(%esp), %esi
	movl	%ebp, %edx
	movl	__ZL5uwall.lto_priv.0, %ecx
	movl	%eax, 8(%esp)
	movl	__ZL5swall.lto_priv.0, %eax
	movl	%eax, 4(%esp)
	movl	__ZL4dplc.lto_priv.0, %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__ZL8wallscaniiPKsS0_PKiS2_
	movl	48(%esp), %eax
	movl	$0, __ZL8globalht.lto_priv.0
	cmpl	%eax, %edi
	jg	L1524
	movl	76(%esp), %ecx
	cmpl	%ecx, 68(%esp)
	jg	L1524
	movl	%esi, %edx
	cmpl	%ebp, %esi
	jg	L1582
	movl	%ebp, 44(%esp)
	movl	__ZL5dmost.lto_priv.0, %eax
	leal	1(%ebp), %edi
	movl	%ebx, 48(%esp)
	.p2align 4
	.p2align 3
L1527:
	movl	__ZL5uwall.lto_priv.0, %ecx
	leal	(%eax,%edx,2), %ebx
	movzwl	(%ecx,%edx,2), %esi
	movzwl	(%ebx), %ecx
	cmpw	%cx, %si
	jge	L1526
	movl	__ZL5umost.lto_priv.0, %ebp
	cmpw	0(%ebp,%edx,2), %cx
	jl	L1526
	movw	%si, (%ebx)
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	__ZL5umost.lto_priv.0, %ecx
	movzwl	(%eax,%edx,2), %ebx
	cmpw	%bx, (%ecx,%edx,2)
	jle	L1526
	subw	$1, __ZL7numhits.lto_priv.0
	.p2align 4
	.p2align 3
L1526:
	addl	$1, %edx
	cmpl	%edi, %edx
	jne	L1527
	movl	44(%esp), %ebp
	movl	48(%esp), %ebx
	movl	$1, 44(%esp)
L1528:
	movl	76(%esp), %edi
	cmpl	%edi, 68(%esp)
	jg	L1531
L1525:
	movl	_globalposz, %eax
	cmpl	%eax, 124(%esp)
	jge	L1508
	.p2align 4
	.p2align 3
L1531:
	movl	28(%esp), %esi
	movl	%ebp, %eax
	movl	__ZL8smostcnt.lto_priv.0, %edx
	subl	%esi, %eax
	addl	$1, %eax
	leal	(%edx,%eax), %esi
	cmpl	__ZL8ysavecnt.lto_priv.0, %esi
	jl	L1744
L1508:
	cmpw	$0, __ZL7numhits.lto_priv.0
	js	L1323
	testb	$32, 14(%ebx)
	jne	L1536
	movl	36(%esp), %edi
	movl	60(%esp), %eax
	sarl	$3, %edi
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.9(%eax), %ecx
	movzbl	_gotsector(%edi), %eax
	andl	%ecx, %eax
	cmpb	%al, %cl
	je	L1465
	movl	__ZL5dmost.lto_priv.0, %edx
	movl	__ZL5umost.lto_priv.0, %eax
	movzwl	(%edx,%ebp,2), %esi
	cmpw	%si, (%eax,%ebp,2)
	jge	L1745
	movl	_automapping, %eax
	testl	%eax, %eax
	je	L1541
	orb	%cl, _show2dsector(%edi)
L1541:
	movzwl	60(%esp), %eax
	movw	%ax, _sectorborder
	call	__ZL17classicScanSectors.part.0.lto_priv.0
	movzwl	14(%ebx), %eax
	andl	$32, %eax
L1542:
	testw	%ax, %ax
	jne	L1536
	.p2align 4
	.p2align 3
L1465:
	movl	24(%esp), %eax
	movswl	_bunchp2(%eax,%eax), %eax
	movl	%eax, 24(%esp)
	testl	%eax, %eax
	jns	L1564
L1323:
	addl	$148, %esp
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
L1536:
	.cfi_restore_state
	movswl	18(%ebx), %edx
	movl	%ebx, %eax
	call	__ZL19setup_globals_wall1PK11uwalltypev7i.lto_priv.0
	movl	40(%esp), %eax
	movl	4(%eax), %ecx
	movl	32(%esp), %eax
	movzbl	32(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__ZL19setup_globals_wall2PK11uwalltypev7hii.lto_priv.0
	movl	44(%esp), %edi
	testl	%edi, %edi
	je	L1546
L1547:
	movl	__ZL5lwall.lto_priv.0, %eax
	movl	__ZL4uplc.lto_priv.0, %ecx
	movl	%ebp, %edx
	movl	%eax, 8(%esp)
	movl	__ZL5swall.lto_priv.0, %eax
	movl	%eax, 4(%esp)
	movl	__ZL4dplc.lto_priv.0, %eax
	movl	%eax, (%esp)
	movl	28(%esp), %eax
	call	__ZL8wallscaniiPKsS0_PKiS2_
	movl	32(%esp), %esi
	movl	_globalposz, %eax
	movl	$0, __ZL8globalht.lto_priv.0
	cmpl	%eax, 8(%esi)
	jl	L1746
L1548:
	movl	32(%esp), %ebx
	cmpl	4(%ebx), %eax
	jl	L1747
L1555:
	movl	28(%esp), %esi
	leal	1(%ebp), %ebx
	movl	%esi, %eax
	cmpl	%ebp, %esi
	jg	L1552
	.p2align 6
	.p2align 4
	.p2align 3
L1563:
	movl	__ZL5umost.lto_priv.0, %edx
	movl	__ZL5dmost.lto_priv.0, %ecx
	leal	(%edx,%eax,2), %edx
	movzwl	(%ecx,%eax,2), %edi
	cmpw	%di, (%edx)
	jg	L1562
	movl	$1, %ecx
	xorl	%esi, %esi
	movw	%cx, (%edx)
	movl	__ZL5dmost.lto_priv.0, %edx
	movw	%si, (%edx,%eax,2)
	subw	$1, __ZL7numhits.lto_priv.0
L1562:
	addl	$1, %eax
	cmpl	%ebx, %eax
	jne	L1563
L1552:
	movl	__ZL12smostwallcnt.lto_priv.0, %eax
	movl	24(%esp), %ebx
	movb	$0, __ZL13smostwalltype.lto_priv.0(%eax)
	movl	%ebx, __ZL9smostwall.lto_priv.0(,%eax,4)
	addl	$1, %eax
	movl	%eax, __ZL12smostwallcnt.lto_priv.0
	cmpw	$2, _searchit
	jne	L1465
	movl	_searchx, %eax
	movl	28(%esp), %esi
	cmpl	%esi, %eax
	jl	L1465
	cmpl	%ebp, %eax
	jg	L1465
	movl	__ZL4uplc.lto_priv.0, %ecx
	movl	_searchy, %edx
	movswl	(%ecx,%eax,2), %ecx
	cmpl	%edx, %ecx
	jg	L1465
	movl	__ZL4dplc.lto_priv.0, %ecx
	movswl	(%ecx,%eax,2), %eax
	cmpl	%eax, %edx
	jge	L1465
	movl	$1, %eax
	movw	%ax, _searchit
	jmp	L1465
	.p2align 4,,10
	.p2align 3
L1736:
	cmpw	$2, %cx
	je	L1748
L1468:
	movswl	16(%ebx), %edx
	movl	%ebx, %eax
	call	__ZL19setup_globals_wall1PK11uwalltypev7i.lto_priv.0
	movl	32(%esp), %eax
	movl	4(%eax), %ecx
	movzbl	32(%eax), %edx
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__ZL19setup_globals_wall2PK11uwalltypev7hii.lto_priv.0
L1546:
	movl	24(%esp), %eax
	movl	%ebx, %edx
	call	__ZL8prepwalliPK11uwalltypev7.lto_priv.0
	jmp	L1547
	.p2align 4,,10
	.p2align 3
L1735:
	cmpl	%ebp, %edi
	jge	L1462
	movl	%edi, %edx
	jmp	L1464
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1749:
	addl	$1, %edx
	cmpl	%edx, %ebp
	je	L1462
L1464:
	movzwl	(%ecx,%edx,2), %esi
	cmpw	%si, (%eax,%edx,2)
	jge	L1749
	cmpl	%edx, %ebp
	jg	L1461
	.p2align 4
	.p2align 3
L1462:
	movl	__ZL12smostwallcnt.lto_priv.0, %eax
	movl	24(%esp), %ebx
	movb	$0, __ZL13smostwalltype.lto_priv.0(%eax)
	movl	%ebx, __ZL9smostwall.lto_priv.0(,%eax,4)
	addl	$1, %eax
	movl	%eax, __ZL12smostwallcnt.lto_priv.0
	jmp	L1465
	.p2align 4,,10
	.p2align 3
L1746:
	cmpw	$0, _editstatus
	je	L1750
	movl	_wall, %ebx
	movl	56(%esp), %edi
	leal	(%ebx,%edi), %edx
	movzwl	14(%edx), %ecx
	testb	$8, %ch
	je	L1551
	leal	26(%edx), %ecx
	subl	%ebx, %ecx
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	movswl	30(%edx), %edx
L1550:
	testw	%dx, %dx
	js	L1548
	sall	$5, %edx
	addl	_wall, %edx
	cmpw	$0, 12(%edx)
	js	L1548
	movl	28(%esp), %eax
	cmpl	%ebp, %eax
	jg	L1552
	movl	%ebp, 36(%esp)
	movl	__ZL5umost.lto_priv.0, %ecx
	leal	1(%ebp), %edi
	.p2align 4
	.p2align 3
L1554:
	movl	__ZL4dplc.lto_priv.0, %edx
	leal	(%ecx,%eax,2), %ebx
	movzwl	(%edx,%eax,2), %esi
	movzwl	(%ebx), %edx
	cmpw	%dx, %si
	jle	L1553
	movl	__ZL5dmost.lto_priv.0, %ebp
	cmpw	0(%ebp,%eax,2), %dx
	jg	L1553
	movw	%si, (%ebx)
	movl	__ZL5dmost.lto_priv.0, %edx
	movl	__ZL5umost.lto_priv.0, %ecx
	movzwl	(%edx,%eax,2), %ebx
	cmpw	%bx, (%ecx,%eax,2)
	jle	L1553
	subw	$1, __ZL7numhits.lto_priv.0
	.p2align 4
	.p2align 3
L1553:
	addl	$1, %eax
	cmpl	%edi, %eax
	jne	L1554
	movl	36(%esp), %ebp
	jmp	L1552
	.p2align 4,,10
	.p2align 3
L1747:
	cmpw	$0, _editstatus
	je	L1751
	movl	_wall, %ebx
	movl	56(%esp), %edx
	addl	%ebx, %edx
	movzwl	14(%edx), %ecx
L1565:
	andb	$4, %ch
	je	L1555
	leal	26(%edx), %eax
	subl	%ebx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movswl	26(%edx), %eax
L1557:
	testw	%ax, %ax
	js	L1555
	sall	$5, %eax
	addl	_wall, %eax
	cmpw	$0, 12(%eax)
	js	L1555
	cmpl	%ebp, 28(%esp)
	jg	L1552
	movl	%ebp, 36(%esp)
	movl	28(%esp), %edx
	leal	1(%ebp), %edi
	movl	__ZL5dmost.lto_priv.0, %eax
	.p2align 4
	.p2align 3
L1561:
	movl	__ZL4uplc.lto_priv.0, %ecx
	leal	(%eax,%edx,2), %ebx
	movzwl	(%ecx,%edx,2), %esi
	movzwl	(%ebx), %ecx
	cmpw	%cx, %si
	jge	L1560
	movl	__ZL5umost.lto_priv.0, %ebp
	cmpw	0(%ebp,%edx,2), %cx
	jl	L1560
	movw	%si, (%ebx)
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	__ZL5umost.lto_priv.0, %ecx
	movzwl	(%eax,%edx,2), %esi
	cmpw	%si, (%ecx,%edx,2)
	jle	L1560
	subw	$1, __ZL7numhits.lto_priv.0
	.p2align 4
	.p2align 3
L1560:
	addl	$1, %edx
	cmpl	%edi, %edx
	jne	L1561
	movl	36(%esp), %ebp
	jmp	L1552
	.p2align 4,,10
	.p2align 3
L1737:
	movl	_searchx, %ecx
	cmpl	%ecx, 28(%esp)
	jg	L1575
	cmpl	%ecx, %ebp
	jl	L1575
L1572:
	movl	__ZL4uplc.lto_priv.0, %edx
	movl	_searchy, %esi
	leal	(%ecx,%ecx), %edi
	movswl	(%edx,%ecx,2), %edx
	cmpl	%esi, %edx
	jl	L1471
	movswl	(%eax,%ecx,2), %eax
	cmpl	%eax, %esi
	jge	L1752
L1471:
	movl	__ZL4dplc.lto_priv.0, %eax
	movswl	(%eax,%edi), %eax
	cmpl	%eax, %esi
	jl	L1476
	movl	__ZL5dmost.lto_priv.0, %eax
	movswl	(%eax,%edi), %eax
	cmpl	%eax, %esi
	jl	L1753
L1476:
	movl	36(%esp), %edx
	testl	%edx, %edx
	js	L1468
	movl	_sector, %edx
L1575:
	movl	36(%esp), %eax
	leal	(%eax,%eax,4), %esi
	sall	$3, %esi
	jmp	L1470
	.p2align 4,,10
	.p2align 3
L1524:
	movl	28(%esp), %eax
	movl	%eax, %edx
	cmpl	%ebp, %eax
	jg	L1754
	movl	%edi, 52(%esp)
	movl	__ZL5umost.lto_priv.0, %ecx
	movl	%ebp, 44(%esp)
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	%ebx, 72(%esp)
	.p2align 4
	.p2align 3
L1530:
	leal	(%eax,%edx,2), %edi
	movzwl	(%edi), %esi
	cmpw	%si, (%ecx,%edx,2)
	jg	L1529
	movl	__ZL5uwall.lto_priv.0, %ebx
	movl	__ZL4dplc.lto_priv.0, %ebp
	movzwl	(%ebx,%edx,2), %ebx
	movzwl	0(%ebp,%edx,2), %ebp
	cmpw	%bp, %bx
	cmovg	%ebp, %ebx
	cmpw	%bx, %si
	jle	L1529
	movw	%bx, (%edi)
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	__ZL5umost.lto_priv.0, %ecx
	movzwl	(%eax,%edx,2), %esi
	cmpw	%si, (%ecx,%edx,2)
	jle	L1529
	subw	$1, __ZL7numhits.lto_priv.0
	.p2align 4
	.p2align 3
L1529:
	addl	$1, %edx
	cmpl	%edx, 44(%esp)
	jge	L1530
	movl	44(%esp), %ebp
	movl	52(%esp), %edi
	movl	$1, 44(%esp)
	movl	72(%esp), %ebx
L1515:
	movl	48(%esp), %eax
	cmpl	%eax, %edi
	jg	L1531
	jmp	L1528
	.p2align 4,,10
	.p2align 3
L1496:
	cmpl	%ebp, 28(%esp)
	jg	L1755
L1568:
	movl	28(%esp), %edx
	movl	__ZL5umost.lto_priv.0, %ecx
	movl	%edi, 96(%esp)
	movl	%ebp, 44(%esp)
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	%ebx, 100(%esp)
	.p2align 4
	.p2align 3
L1503:
	leal	(%ecx,%edx,2), %edi
	movzwl	(%edi), %esi
	cmpw	(%eax,%edx,2), %si
	jg	L1502
	movl	__ZL4uplc.lto_priv.0, %ebx
	movl	__ZL5dwall.lto_priv.0, %ebp
	movzwl	(%ebx,%edx,2), %ebx
	movzwl	0(%ebp,%edx,2), %ebp
	cmpw	%bp, %bx
	cmovl	%ebp, %ebx
	cmpw	%bx, %si
	jge	L1502
	movw	%bx, (%edi)
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	__ZL5umost.lto_priv.0, %ecx
	movzwl	(%eax,%edx,2), %ebx
	cmpw	%bx, (%ecx,%edx,2)
	jle	L1502
	subw	$1, __ZL7numhits.lto_priv.0
	.p2align 4
	.p2align 3
L1502:
	addl	$1, %edx
	cmpl	%edx, 44(%esp)
	jge	L1503
	movl	44(%esp), %ebp
	movl	96(%esp), %edi
	movl	$1, 44(%esp)
	movl	100(%esp), %ebx
L1487:
	movl	52(%esp), %eax
	cmpl	%eax, %edi
	jl	L1504
	jmp	L1501
	.p2align 4,,10
	.p2align 3
L1748:
	movl	_searchx, %ecx
	cmpl	%ecx, %ebp
	jl	L1468
	cmpl	%ecx, 28(%esp)
	jg	L1468
	xorl	%esi, %esi
	movl	%esi, 40(%esp)
	jmp	L1572
	.p2align 4,,10
	.p2align 3
L1490:
	movl	28(%esp), %eax
	cmpl	%ebp, %eax
	jg	L1491
	leal	1(%ebp), %esi
	.p2align 6
	.p2align 4
	.p2align 3
L1493:
	movl	__ZL5dwall.lto_priv.0, %edx
	movl	__ZL4dplc.lto_priv.0, %ecx
	leal	(%edx,%eax,2), %edx
	movzwl	(%ecx,%eax,2), %ecx
	cmpw	%cx, (%edx)
	jle	L1492
	movw	%cx, (%edx)
L1492:
	addl	$1, %eax
	cmpl	%esi, %eax
	jne	L1493
	cmpw	$2, _searchit
	jne	L1494
L1739:
	movl	_searchx, %eax
	cmpl	%ebp, %eax
	jg	L1494
	movl	28(%esp), %esi
	cmpl	%esi, %eax
	jl	L1494
	movl	__ZL4uplc.lto_priv.0, %ecx
	movl	_searchy, %edx
	movswl	(%ecx,%eax,2), %ecx
	cmpl	%edx, %ecx
	jg	L1495
	movl	__ZL5dwall.lto_priv.0, %ecx
	movswl	(%ecx,%eax,2), %eax
	cmpl	%eax, %edx
	jg	L1495
	movl	$1, %eax
	movw	%ax, _searchit
L1495:
	movswl	16(%ebx), %edx
	movl	%ebx, %eax
	call	__ZL19setup_globals_wall1PK11uwalltypev7i.lto_priv.0
	movl	40(%esp), %eax
	movl	4(%eax), %ecx
	movl	32(%esp), %eax
	movzbl	32(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__ZL19setup_globals_wall2PK11uwalltypev7hii.lto_priv.0
	movl	24(%esp), %eax
	movl	%ebx, %edx
	call	__ZL8prepwalliPK11uwalltypev7.lto_priv.0
	movl	__ZL5lwall.lto_priv.0, %eax
	movl	__ZL4uplc.lto_priv.0, %ecx
	movl	%ebp, %edx
	movl	%eax, 8(%esp)
	movl	__ZL5swall.lto_priv.0, %eax
	movl	%eax, 4(%esp)
	movl	__ZL5dwall.lto_priv.0, %eax
	movl	%eax, (%esp)
	movl	28(%esp), %eax
	call	__ZL8wallscaniiPKsS0_PKiS2_
	movl	52(%esp), %eax
	movl	$0, __ZL8globalht.lto_priv.0
	cmpl	%eax, %edi
	jge	L1571
	jmp	L1568
	.p2align 4,,10
	.p2align 3
L1516:
	movl	28(%esp), %eax
	cmpl	%ebp, %eax
	jg	L1517
	leal	1(%ebp), %esi
	.p2align 6
	.p2align 4
	.p2align 3
L1519:
	movl	__ZL5uwall.lto_priv.0, %edx
	movl	__ZL4uplc.lto_priv.0, %ecx
	leal	(%edx,%eax,2), %edx
	movzwl	(%ecx,%eax,2), %ecx
	cmpw	%cx, (%edx)
	jge	L1518
	movw	%cx, (%edx)
L1518:
	addl	$1, %eax
	cmpl	%eax, %esi
	jne	L1519
	cmpw	$2, _searchit
	jne	L1520
L1742:
	movl	_searchx, %eax
	movl	28(%esp), %esi
	cmpl	%esi, %eax
	jl	L1520
	cmpl	%ebp, %eax
	jg	L1520
	movl	__ZL4dplc.lto_priv.0, %ecx
	movl	_searchy, %edx
	movswl	(%ecx,%eax,2), %ecx
	cmpl	%edx, %ecx
	jl	L1520
	movl	__ZL5uwall.lto_priv.0, %ecx
	movswl	(%ecx,%eax,2), %eax
	cmpl	%eax, %edx
	jl	L1520
	movl	$1, %eax
	movw	%ax, _searchit
	jmp	L1520
	.p2align 4,,10
	.p2align 3
L1750:
	movl	64(%esp), %ebx
	movswl	_yax_nextwall+2(,%ebx,4), %edx
	jmp	L1550
	.p2align 4,,10
	.p2align 3
L1744:
	movl	__ZL12smostwallcnt.lto_priv.0, %ecx
	movl	24(%esp), %edi
	movb	$2, __ZL13smostwalltype.lto_priv.0(%ecx)
	movl	%edx, __ZL10smoststart.lto_priv.0(,%ecx,4)
	movl	%edi, __ZL9smostwall.lto_priv.0(,%ecx,4)
	addl	$1, %ecx
	movl	28(%esp), %edi
	movl	%ecx, __ZL12smostwallcnt.lto_priv.0
	leal	(%eax,%eax), %ecx
	movl	__ZL5smost.lto_priv.0, %eax
	leal	(%eax,%edx,2), %edx
	movl	__ZL5dmost.lto_priv.0, %eax
	leal	(%eax,%edi,2), %eax
	call	_copybufbyte
	movl	%esi, __ZL8smostcnt.lto_priv.0
	jmp	L1508
	.p2align 4,,10
	.p2align 3
L1740:
	movl	__ZL12smostwallcnt.lto_priv.0, %ecx
	movl	24(%esp), %edi
	movb	$1, __ZL13smostwalltype.lto_priv.0(%ecx)
	movl	%edx, __ZL10smoststart.lto_priv.0(,%ecx,4)
	movl	%edi, __ZL9smostwall.lto_priv.0(,%ecx,4)
	addl	$1, %ecx
	movl	28(%esp), %edi
	movl	%ecx, __ZL12smostwallcnt.lto_priv.0
	leal	(%eax,%eax), %ecx
	movl	__ZL5smost.lto_priv.0, %eax
	leal	(%eax,%edx,2), %edx
	movl	__ZL5umost.lto_priv.0, %eax
	leal	(%eax,%edi,2), %eax
	call	_copybufbyte
	movl	%esi, __ZL8smostcnt.lto_priv.0
	jmp	L1481
	.p2align 4,,10
	.p2align 3
L1751:
	movl	64(%esp), %eax
	movswl	_yax_nextwall(,%eax,4), %eax
	jmp	L1557
	.p2align 4,,10
	.p2align 3
L1743:
	movl	24(%esp), %eax
	movl	%ebx, %edx
	call	__ZL8prepwalliPK11uwalltypev7.lto_priv.0
	jmp	L1522
	.p2align 4,,10
	.p2align 3
L1741:
	movl	92(%esp), %eax
	addl	_sector, %eax
	testb	$2, 14(%eax)
	je	L1756
	movl	_globalposy, %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	_globalposx, %edx
	movl	%edx, 4(%esp)
	call	_getflorzofslopeptr.part.0
L1511:
	cmpl	%eax, _globalposz
	jg	L1515
	movl	28(%esp), %edx
	cmpl	%ebp, %edx
	jg	L1515
	movl	%ebp, 72(%esp)
	leal	1(%ebp), %esi
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	%ebx, 80(%esp)
	movl	%edi, 52(%esp)
	movl	%esi, %edi
	.p2align 4
	.p2align 3
L1514:
	movl	__ZL4dplc.lto_priv.0, %ecx
	leal	(%eax,%edx,2), %ebx
	movzwl	(%ecx,%edx,2), %esi
	movzwl	(%ebx), %ecx
	cmpw	%cx, %si
	jge	L1513
	movl	__ZL5umost.lto_priv.0, %ebp
	cmpw	0(%ebp,%edx,2), %cx
	jl	L1513
	movw	%si, (%ebx)
	movl	__ZL5dmost.lto_priv.0, %eax
	movl	__ZL5umost.lto_priv.0, %ecx
	movzwl	(%eax,%edx,2), %ebx
	cmpw	%bx, (%ecx,%edx,2)
	jle	L1513
	subw	$1, __ZL7numhits.lto_priv.0
	.p2align 4
	.p2align 3
L1513:
	addl	$1, %edx
	cmpl	%edi, %edx
	jne	L1514
	movl	52(%esp), %edi
	movl	72(%esp), %ebp
	movl	80(%esp), %ebx
	jmp	L1515
	.p2align 4,,10
	.p2align 3
L1738:
	movl	92(%esp), %eax
	addl	_sector, %eax
	testb	$2, 12(%eax)
	je	L1757
	movl	_globalposy, %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	_globalposx, %edx
	movl	%edx, 4(%esp)
	call	_getceilzofslopeptr.part.0
	cmpl	%eax, _globalposz
	jge	L1758
L1485:
	movl	$0, 44(%esp)
	jmp	L1487
	.p2align 4,,10
	.p2align 3
L1745:
	movl	28(%esp), %esi
	cmpl	%ebp, %esi
	jge	L1540
	movb	%cl, 36(%esp)
	jmp	L1539
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1543:
	addl	$1, %esi
	cmpl	%esi, %ebp
	je	L1545
L1539:
	movzwl	(%edx,%esi,2), %ecx
	cmpw	%cx, (%eax,%esi,2)
	jge	L1543
	movl	_automapping, %eax
	movzbl	36(%esp), %ecx
	testl	%eax, %eax
	jne	L1759
L1544:
	movzwl	60(%esp), %eax
	movw	%ax, _sectorborder
	call	__ZL17classicScanSectors.part.0.lto_priv.0
L1540:
	cmpl	%esi, %ebp
	je	L1545
L1726:
	movzwl	14(%ebx), %eax
	andl	$32, %eax
	jmp	L1542
L1728:
	movl	104(%esp), %ebp
	movl	%ebp, %eax
	call	_yax_getbunch.constprop.1
	movl	%eax, %esi
	movw	%ax, 128(%esp)
	movl	%ebp, %eax
	call	_yax_getbunch.constprop.0
	movswl	%si, %edx
	movw	%ax, 130(%esp)
	cwtl
	notl	%edx
	notl	%eax
	shrl	$31, %edx
	shrl	$31, %eax
	leal	(%edx,%eax,2), %esi
	movl	%esi, %eax
	andl	$-2, %eax
	cmpb	$3, %bl
	cmove	%eax, %esi
	movl	%edi, %eax
	cmpb	$12, %al
	je	L1570
L1331:
	testl	$1, %esi
	jne	L1760
L1341:
	movl	%esi, %ebx
	sarl	%ebx
	jne	L1342
L1722:
	movl	36(%esp), %eax
	movswl	_bunchfirst(%eax,%eax), %edx
L1339:
	movl	%edx, 24(%esp)
	jmp	L1343
L1756:
	movl	8(%eax), %eax
	jmp	L1511
L1757:
	movl	4(%eax), %eax
	cmpl	%eax, _globalposz
	jl	L1485
L1758:
	cmpl	%ebp, 28(%esp)
	jg	L1485
	movl	%edi, 44(%esp)
	leal	1(%ebp), %esi
	movl	28(%esp), %eax
	movl	%ebx, 100(%esp)
	movl	__ZL5umost.lto_priv.0, %ecx
	movl	%ebp, 96(%esp)
	movl	%esi, %ebp
	.p2align 4
	.p2align 3
L1489:
	movl	__ZL4uplc.lto_priv.0, %edx
	leal	(%ecx,%eax,2), %ebx
	movzwl	(%edx,%eax,2), %esi
	movzwl	(%ebx), %edx
	cmpw	%dx, %si
	jle	L1488
	movl	__ZL5dmost.lto_priv.0, %edi
	cmpw	(%edi,%eax,2), %dx
	jg	L1488
	movw	%si, (%ebx)
	movl	__ZL5dmost.lto_priv.0, %edi
	movl	__ZL5umost.lto_priv.0, %ecx
	movzwl	(%edi,%eax,2), %ebx
	cmpw	%bx, (%ecx,%eax,2)
	jle	L1488
	subw	$1, __ZL7numhits.lto_priv.0
	.p2align 4
	.p2align 3
L1488:
	addl	$1, %eax
	cmpl	%eax, %ebp
	jne	L1489
	movl	44(%esp), %edi
	movl	96(%esp), %ebp
	movl	100(%esp), %ebx
	jmp	L1485
L1754:
	movl	$1, 44(%esp)
	jmp	L1531
L1755:
	movl	$1, 44(%esp)
	jmp	L1504
L1545:
	movl	88(%esp), %eax
	movl	24(%esp), %edi
	movl	%eax, __ZL8smostcnt.lto_priv.0
	movl	84(%esp), %eax
	movb	$0, __ZL13smostwalltype.lto_priv.0(%eax)
	movl	%edi, __ZL9smostwall.lto_priv.0(,%eax,4)
	addl	$1, %eax
	movl	%eax, __ZL12smostwallcnt.lto_priv.0
	jmp	L1726
L1403:
	movl	$1, %eax
	movl	%ebx, %edx
	call	__ZL8parascanci
	movswl	_bunchfirst(%ebx,%ebx), %eax
	movl	%eax, 24(%esp)
	jmp	L1343
L1759:
	orb	%cl, _show2dsector(%edi)
	jmp	L1544
L1760:
	xorl	%ebx, %ebx
L1342:
	movswl	128(%esp,%ebx,2), %ebp
	movl	%ebp, %eax
	movl	%ebp, %edi
	movl	%ebp, %ecx
	andl	$7, %eax
	sarl	$3, %edi
	movzbl	__ZL8pow2char.lto_priv.9(%eax), %eax
	movzbl	_haveymost(%edi), %edx
	movb	%al, 24(%esp)
	movl	_xdimen, %eax
	movb	%dl, 28(%esp)
	notl	%edx
	imull	%eax, %ecx
	testb	%dl, 24(%esp)
	jne	L1761
L1334:
	movl	36(%esp), %ebp
	movswl	_bunchfirst(%ebp,%ebp), %edx
	movswl	_bunchlast(%ebp,%ebp), %edi
	movl	_xb1(,%edx,4), %eax
	cmpl	__ZL3xb2.lto_priv.0(,%edi,4), %eax
	jg	L1332
	leal	(%eax,%ecx), %edx
	testl	%ebx, %ebx
	je	L1337
	leal	(%eax,%eax), %ebx
	movl	%ebp, %edi
	.p2align 4
	.p2align 3
L1338:
	movl	__ZL4dplc.lto_priv.0, %eax
	movl	__ZL5umost.lto_priv.0, %ebp
	leal	(%edx,%edx), %esi
	movzwl	0(%ebp,%ebx), %ebp
	movzwl	(%eax,%ebx), %eax
	cmpw	%bp, %ax
	cmovl	%ebp, %eax
	movzwl	(%esi), %ebp
	cmpw	%bp, %ax
	cmovg	%ebp, %eax
	movw	%ax, (%esi)
	movl	__ZL5dmost.lto_priv.0, %ebp
	movzwl	0(%ebp,%ebx), %ebp
	cmpw	%ax, %bp
	cmovl	%eax, %ebp
	addl	$1, %edx
	addl	$2, %ebx
	movw	%bp, (%esi)
	movswl	_bunchlast(%edi,%edi), %eax
	movl	__ZL3xb2.lto_priv.0(,%eax,4), %esi
	addl	%ecx, %esi
	cmpl	%edx, %esi
	jge	L1338
	jmp	L1722
L1332:
	cmpl	$1, %ebx
	jne	L1341
	jmp	L1339
L1752:
	movl	92(%esp), %eax
	addl	_sector, %eax
	testb	$2, 12(%eax)
	je	L1762
	movl	_globalposy, %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	_globalposx, %edx
	movl	%edx, 4(%esp)
	call	_getceilzofslopeptr.part.0
L1473:
	cmpl	%eax, _globalposz
	jl	L1471
	movl	104(%esp), %eax
	call	_yax_getbunch.constprop.1
	testw	%ax, %ax
	js	L1474
	cmpb	$0, _showinvisibility
	jne	L1474
	movl	32(%esp), %eax
	testw	$384, 12(%eax)
	jne	L1474
	xorl	%eax, %eax
/APP
 # 4641 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	$8, %eax
	jne	L1471
L1474:
	movl	$1, %ecx
	movw	%cx, _searchit
	jmp	L1476
L1753:
	movl	92(%esp), %eax
	addl	_sector, %eax
	testb	$2, 14(%eax)
	je	L1763
	movl	_globalposy, %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	_globalposx, %edx
	movl	%edx, 4(%esp)
	call	_getflorzofslopeptr.part.0
L1478:
	cmpl	%eax, _globalposz
	jg	L1476
	movl	104(%esp), %eax
	call	_yax_getbunch.constprop.0
	testw	%ax, %ax
	js	L1474
	cmpb	$0, _showinvisibility
	jne	L1474
	movl	32(%esp), %eax
	testw	$384, 14(%eax)
	jne	L1474
	xorl	%eax, %eax
/APP
 # 4651 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	$8, %eax
	jne	L1476
	jmp	L1474
	.p2align 4,,10
	.p2align 3
L1324:
	testl	%eax, %eax
	je	L1323
	movl	104(%esp), %edi
	movl	%edi, %eax
	call	_yax_getbunch.constprop.1
	movw	%ax, 128(%esp)
	movl	%eax, %ebx
	movl	%edi, %eax
	call	_yax_getbunch.constprop.0
	movswl	%ax, %edx
	movw	%ax, 130(%esp)
	movswl	%bx, %eax
	notl	%edx
	notl	%eax
	shrl	$31, %edx
	shrl	$31, %eax
	leal	(%eax,%edx,2), %eax
	andl	$-2, %eax
	movl	%eax, %esi
L1570:
	andl	$-3, %esi
	jmp	L1331
L1729:
	movl	36(%esp), %eax
	movl	104(%esp), %ecx
	movswl	_bunchlast(%eax,%eax), %eax
	movl	__ZL3xb2.lto_priv.0(,%eax,4), %edx
	movl	_xb1(,%ebp,4), %eax
	movl	$0, (%esp)
	call	__ZL8grouscaniiic
	jmp	L1344
L1732:
	movswl	_bunchlast(%ebx,%ebx), %eax
	movl	104(%esp), %ecx
	movl	__ZL3xb2.lto_priv.0(,%eax,4), %edx
	movswl	_bunchfirst(%ebx,%ebx), %eax
	movl	_xb1(,%eax,4), %eax
	movl	$1, (%esp)
	call	__ZL8grouscaniiic
	movswl	_bunchfirst(%ebx,%ebx), %eax
	movl	%eax, 24(%esp)
	jmp	L1343
L1580:
	movl	$1, 44(%esp)
	jmp	L1498
L1582:
	movl	$1, 44(%esp)
	jmp	L1525
L1761:
	movzbl	24(%esp), %edx
	addl	%ecx, %eax
	orb	28(%esp), %dl
	movb	%dl, _haveymost(%edi)
	cmpl	%ecx, %eax
	jle	L1334
	addl	$1, %ebp
	.p2align 5
	.p2align 4
	.p2align 3
L1336:
	xorl	%eax, %eax
	movw	%ax, (%ecx,%ecx)
	movl	_xdimen, %eax
	addl	$1, %ecx
	movl	%eax, %edx
	imull	%ebp, %edx
	cmpl	%ecx, %edx
	jg	L1336
	movl	%edx, %ecx
	subl	%eax, %ecx
	jmp	L1334
L1337:
	movl	%esi, 24(%esp)
	addl	%eax, %eax
	.p2align 4
	.p2align 3
L1340:
	movl	__ZL5umost.lto_priv.0, %ebx
	leal	(%edx,%edx), %edi
	movzwl	(%ebx,%eax), %esi
	movzwl	(%edi), %ebx
	cmpw	%bx, %si
	cmovg	%ebx, %esi
	movw	%si, (%edi)
	movl	__ZL5dmost.lto_priv.0, %ebx
	movl	__ZL4uplc.lto_priv.0, %ebp
	movzwl	(%ebx,%eax), %ebx
	movzwl	0(%ebp,%eax), %ebp
	cmpw	%bp, %bx
	cmovg	%ebp, %ebx
	cmpw	%si, %bx
	cmovl	%esi, %ebx
	addl	$1, %edx
	addl	$2, %eax
	movw	%bx, (%edi)
	movl	36(%esp), %ebx
	movswl	_bunchlast(%ebx,%ebx), %ebx
	movl	__ZL3xb2.lto_priv.0(,%ebx,4), %esi
	addl	%ecx, %esi
	cmpl	%edx, %esi
	jge	L1340
	movl	24(%esp), %esi
	jmp	L1341
L1762:
	movl	4(%eax), %eax
	jmp	L1473
L1763:
	movl	8(%eax), %eax
	jmp	L1478
L1435:
	movl	_globalblend, %eax
	testl	%eax, %eax
	je	L1438
	movl	_blendtable, %eax
	movl	$0, _globalblend
	movl	%eax, (%esp)
	call	_fixtransluscence
L1438:
	call	_settransreverse
L1724:
	movswl	_globalpicnum, %eax
	movzbl	_picsiz(%eax), %eax
	movl	%eax, %edx
	andl	$15, %eax
	shrb	$4, %dl
	movl	%eax, (%esp)
	movzbl	%dl, %edx
	movl	%edx, 4(%esp)
	call	_tsethlineshift
	jmp	L1436
L1376:
	movl	_globalblend, %eax
	testl	%eax, %eax
	je	L1379
	movl	_blendtable, %eax
	movl	$0, _globalblend
	movl	%eax, (%esp)
	call	_fixtransluscence
L1379:
	call	_settransreverse
L1723:
	movswl	_globalpicnum, %eax
	movzbl	_picsiz(%eax), %eax
	movl	%eax, %edx
	andl	$15, %eax
	shrb	$4, %dl
	movl	%eax, (%esp)
	movzbl	%dl, %edx
	movl	%edx, 4(%esp)
	call	_tsethlineshift
	jmp	L1377
	.p2align 4,,10
	.p2align 3
L1380:
	movswl	%dx, %ecx
	leal	-1(%ecx), %edx
	cmpl	%edx, %esi
	jle	L1383
	leal	-1(%edi), %ebp
	cmpl	%ebx, %edx
	jle	L1385
	movl	%ecx, 44(%esp)
	movl	%eax, 48(%esp)
	movl	%esi, 28(%esp)
	movl	%edx, %esi
	.p2align 4
	.p2align 3
L1388:
	addl	$1, %ebx
	movl	%ebp, %eax
	movl	%ebx, %edx
	call	__ZL9slowhlineii
	cmpl	%ebx, %esi
	jne	L1388
	movl	%esi, %edx
	movl	44(%esp), %ecx
	movl	28(%esp), %esi
	movl	48(%esp), %eax
L1385:
	cmpl	%ebx, %edx
	jge	L1389
	subl	$1, %ecx
	sall	$2, %ebx
	leal	0(,%ecx,4), %ebp
	.p2align 5
	.p2align 4
	.p2align 3
L1390:
	movl	__ZL5lastx.lto_priv.0, %edx
	movl	%edi, (%edx,%ebx)
	subl	$4, %ebx
	cmpl	%ebx, %ebp
	jne	L1390
	movl	%ecx, %ebx
L1389:
	leal	-1(%edi), %ebp
	cmpl	%eax, %esi
	jle	L1764
	movl	%ebx, 28(%esp)
	movl	%eax, %ebx
	.p2align 4
	.p2align 3
L1391:
	subl	$1, %esi
	movl	%ebp, %eax
	movl	%esi, %edx
	call	__ZL9slowhlineii
	cmpl	%esi, %ebx
	jne	L1391
	movl	28(%esp), %ebx
	jmp	L1392
	.p2align 4,,10
	.p2align 3
L1441:
	leal	-1(%ecx), %edx
	cmpl	%edx, %ebx
	jle	L1444
	movl	%edx, 24(%esp)
	leal	-1(%ebp), %edi
	cmpl	%edx, %esi
	jge	L1765
	movl	%eax, 48(%esp)
	movl	%ecx, 52(%esp)
	movl	%ebx, 44(%esp)
	movl	%edx, %ebx
	.p2align 4
	.p2align 3
L1449:
	addl	$1, %esi
	movl	%edi, %eax
	movl	%esi, %edx
	call	__ZL9slowhlineii
	cmpl	%ebx, %esi
	jne	L1449
	movl	%ebx, %edx
	movl	48(%esp), %eax
	movl	44(%esp), %ebx
	movl	52(%esp), %ecx
L1446:
	movl	24(%esp), %edi
	cmpl	%edx, %edi
	jle	L1578
	sall	$2, %edi
	subl	$1, %ecx
	movl	%edi, %edx
	leal	0(,%ecx,4), %edi
	.p2align 5
	.p2align 4
	.p2align 3
L1451:
	movl	__ZL5lastx.lto_priv.0, %esi
	movl	%ebp, (%esi,%edx)
	subl	$4, %edx
	cmpl	%edi, %edx
	jne	L1451
	movl	%ecx, %esi
L1450:
	leal	-1(%ebp), %edi
	cmpl	%eax, %ebx
	jle	L1766
	movl	%esi, 24(%esp)
	movl	%ebx, %esi
	movl	%eax, %ebx
	.p2align 4
	.p2align 3
L1452:
	subl	$1, %esi
	movl	%edi, %eax
	movl	%esi, %edx
	call	__ZL9slowhlineii
	cmpl	%esi, %ebx
	jne	L1452
	movl	%esi, %ebx
	movl	24(%esp), %esi
	jmp	L1453
L1766:
	jge	L1453
	sall	$2, %ebx
	leal	0(,%eax,4), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1455:
	movl	__ZL5lastx.lto_priv.0, %edx
	movl	%ebp, (%edx,%ebx)
	addl	$4, %ebx
	cmpl	%ecx, %ebx
	jne	L1455
	movl	%eax, %ebx
	jmp	L1453
L1764:
	jge	L1392
	sall	$2, %esi
	leal	0(,%eax,4), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1394:
	movl	__ZL5lastx.lto_priv.0, %edx
	movl	%edi, (%edx,%esi)
	addl	$4, %esi
	cmpl	%esi, %ecx
	jne	L1394
	movl	%eax, %esi
	jmp	L1392
L1383:
	leal	-1(%esi), %ecx
	cmpl	%ebx, %ecx
	jle	L1386
	movl	%edx, 44(%esp)
	leal	-1(%edi), %ebp
	movl	%eax, 48(%esp)
	movl	%esi, 28(%esp)
	movl	%ecx, %esi
	.p2align 4
	.p2align 3
L1387:
	addl	$1, %ebx
	movl	%ebp, %eax
	movl	%ebx, %edx
	call	__ZL9slowhlineii
	cmpl	%ebx, %esi
	jne	L1387
	movl	28(%esp), %esi
	movl	44(%esp), %edx
	movl	48(%esp), %eax
L1386:
	movl	%edx, %ebx
	jmp	L1389
L1444:
	leal	-1(%ebx), %edi
	cmpl	%edi, %esi
	jge	L1447
	movl	%edx, 44(%esp)
	leal	-1(%ebp), %ecx
	movl	%eax, 48(%esp)
	movl	%ebx, 24(%esp)
	movl	%ecx, %ebx
	.p2align 4
	.p2align 3
L1448:
	addl	$1, %esi
	movl	%ebx, %eax
	movl	%esi, %edx
	call	__ZL9slowhlineii
	cmpl	%edi, %esi
	jne	L1448
	movl	24(%esp), %ebx
	movl	44(%esp), %edx
	movl	48(%esp), %eax
L1447:
	movl	%edx, %esi
	jmp	L1450
L1398:
	movzbl	52(%esp), %edi
	subl	$1, %esi
L1397:
	movl	40(%esp), %ebp
	cmpl	%esi, %ebx
	jge	L1344
	.p2align 4
	.p2align 3
L1400:
	addl	$1, %ebx
	movl	%ebp, %eax
	movl	%ebx, %edx
	call	__ZL9slowhlineii
	cmpl	%esi, %ebx
	jne	L1400
	jmp	L1344
L1551:
	movl	32(%esp), %edi
	cmpl	4(%edi), %eax
	jge	L1555
	jmp	L1565
L1730:
	cmpl	%esi, 40(%esp)
	jl	L1344
	movl	24(%esp), %ecx
	movl	__ZL5umost.lto_priv.0, %eax
	leal	-1(%esi), %ebx
	movl	%ebx, 24(%esp)
	movswl	(%eax,%ecx), %edx
	movl	%esi, %eax
	movl	%eax, %ebx
	movl	%edi, %eax
	movl	%ecx, %edi
	movb	%al, 72(%esp)
	movswl	%dx, %ebp
	movl	%ebp, %esi
	.p2align 4
	.p2align 3
L1372:
	movl	__ZL5dmost.lto_priv.0, %eax
	movswl	(%eax,%edi), %ecx
	movl	__ZL4uplc.lto_priv.0, %eax
	movswl	(%eax,%edi), %eax
	cmpw	%ax, %cx
	cmovle	%ecx, %eax
	cmpw	%dx, %ax
	jg	L1348
	leal	-1(%esi), %eax
	movl	%eax, 28(%esp)
	cmpl	%ebp, %eax
	jle	L1350
	movl	%ebx, 48(%esp)
	movl	%edi, 52(%esp)
	.p2align 4
	.p2align 3
L1368:
	movl	__ZL5lastx.lto_priv.0, %eax
	addl	$1, %ebp
	movl	24(%esp), %ecx
	movl	(%eax,%ebp,4), %edi
	cmpl	%edi, %ecx
	jl	L1367
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
L1367:
	cmpl	%ebp, 28(%esp)
	jne	L1368
	movl	48(%esp), %ebx
	movl	52(%esp), %edi
L1350:
	cmpl	%ebx, 40(%esp)
	je	L1767
	movl	__ZL5umost.lto_priv.0, %eax
	movswl	2(%eax,%edi), %ebp
	movl	%ebp, %esi
L1365:
	movl	_globaly2, %eax
	addl	$1, %ebx
	addl	%eax, __ZL8globalx2.lto_priv.0
	movl	_globalx1, %eax
	addl	%eax, __ZL8globaly1.lto_priv.0
	cmpl	%ebx, 40(%esp)
	jl	L1371
	movl	__ZL5umost.lto_priv.0, %eax
	addl	$1, 24(%esp)
	movswl	2(%eax,%edi), %edx
	leal	(%ebx,%ebx), %edi
	jmp	L1372
L1348:
	leal	-1(%edx), %ecx
	movl	%eax, 28(%esp)
	movl	%ecx, 44(%esp)
	cmpl	%ecx, %esi
	jle	L1351
	cmpl	%ebp, %ecx
	jle	L1768
	movl	%ecx, 52(%esp)
	movl	%esi, 56(%esp)
	movl	%ebx, 60(%esp)
	movl	%edx, 64(%esp)
	movl	%edi, 68(%esp)
	.p2align 4
	.p2align 3
L1358:
	movl	__ZL5lastx.lto_priv.0, %eax
	addl	$1, %ebp
	movl	24(%esp), %ecx
	movl	(%eax,%ebp,4), %edi
	cmpl	%edi, %ecx
	jl	L1357
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
L1357:
	movl	44(%esp), %eax
	cmpl	%eax, %ebp
	jne	L1358
	movl	52(%esp), %eax
	movl	56(%esp), %esi
	movl	60(%esp), %ebx
	movl	64(%esp), %edx
	movl	68(%esp), %edi
L1353:
	movl	44(%esp), %ecx
	cmpl	%ecx, %eax
	jle	L1576
	leal	-1(%edx), %ebp
	sall	$2, %eax
	leal	0(,%ebp,4), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1360:
	movl	__ZL5lastx.lto_priv.0, %edx
	movl	%ebx, (%edx,%eax)
	subl	$4, %eax
	cmpl	%eax, %ecx
	jne	L1360
L1359:
	movl	28(%esp), %eax
	cmpl	%eax, %esi
	jle	L1769
	movl	%ebx, 48(%esp)
	movl	%ebp, 52(%esp)
	movl	%edi, 56(%esp)
	.p2align 4
	.p2align 3
L1364:
	movl	__ZL5lastx.lto_priv.0, %eax
	subl	$1, %esi
	movl	24(%esp), %ecx
	movl	(%eax,%esi,4), %ebp
	cmpl	%ebp, %ecx
	jl	L1361
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
L1361:
	cmpl	%esi, 28(%esp)
	jne	L1364
	movl	48(%esp), %ebx
	movl	52(%esp), %ebp
	movl	56(%esp), %edi
	jmp	L1365
L1769:
	jge	L1365
	leal	0(,%esi,4), %eax
	movl	28(%esp), %esi
	leal	0(,%esi,4), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1366:
	movl	__ZL5lastx.lto_priv.0, %edx
	movl	%ebx, (%edx,%eax)
	addl	$4, %eax
	cmpl	%ecx, %eax
	jne	L1366
	movl	28(%esp), %esi
	jmp	L1365
L1351:
	leal	-1(%esi), %eax
	movl	%eax, 48(%esp)
	cmpl	%eax, %ebp
	jge	L1354
	movl	%esi, 56(%esp)
	movl	%ebx, 60(%esp)
	movl	%edi, 64(%esp)
	.p2align 4
	.p2align 3
L1356:
	movl	__ZL5lastx.lto_priv.0, %eax
	addl	$1, %ebp
	movl	24(%esp), %ecx
	movl	(%eax,%ebp,4), %edi
	cmpl	%edi, %ecx
	jl	L1355
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
L1355:
	movl	48(%esp), %eax
	cmpl	%eax, %ebp
	jne	L1356
	movl	56(%esp), %esi
	movl	60(%esp), %ebx
	movl	64(%esp), %edi
L1354:
	movl	44(%esp), %ebp
	jmp	L1359
L1733:
	movl	__ZL4dplc.lto_priv.0, %eax
	movswl	(%eax,%ebp,2), %edx
	movl	__ZL5umost.lto_priv.0, %eax
	movswl	(%eax,%ebp,2), %eax
	cmpw	%ax, %dx
	movl	%eax, %ecx
	cmovge	%edx, %ecx
	cmpl	%ebp, 40(%esp)
	jl	L1725
	leal	-1(%ebp), %edi
	movswl	%cx, %ebx
	movl	%ebp, %esi
	movl	%edi, 24(%esp)
	movl	28(%esp), %edi
	movl	%ebx, %ebp
	.p2align 4
	.p2align 3
L1431:
	cmpw	%ax, %dx
	cmovl	%eax, %edx
	movl	__ZL5dmost.lto_priv.0, %eax
	movswl	(%eax,%edi), %eax
	cmpw	%ax, %dx
	jl	L1407
	leal	-1(%ebp), %eax
	movl	%eax, 28(%esp)
	cmpl	%eax, %ebx
	jge	L1409
	movl	%esi, 48(%esp)
	movl	%edi, 52(%esp)
	.p2align 4
	.p2align 3
L1427:
	movl	__ZL5lastx.lto_priv.0, %eax
	addl	$1, %ebx
	movl	24(%esp), %ecx
	movl	(%eax,%ebx,4), %ebp
	cmpl	%ebp, %ecx
	jl	L1426
	movl	__ZL12horizlookup2.lto_priv.0, %edx
	movl	%ebx, %eax
	subl	_globalhoriz, %eax
	addl	__ZL10horizycent.lto_priv.0, %eax
	movl	(%edx,%eax,4), %esi
	movl	_globalx1, %eax
	movl	%esi, %edx
/APP
 # 2360 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _asm1
	movl	%esi, %edx
	movl	_globaly2, %eax
/APP
 # 2361 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_globvis, %edx
	movl	%eax, _asm2
	movl	%esi, %eax
/APP
 # 2362 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 44(%esp)
	movl	%esi, %edx
	movl	__ZL8globaly1.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edi
	movl	%esi, %edx
	movl	__ZL8globalx2.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_ylookup, %edx
	movl	%ecx, %esi
	addl	__ZL14globalypanning.lto_priv.0, %eax
	addl	__ZL14globalxpanning.lto_priv.0, %edi
	addl	(%edx,%ebx,4), %ecx
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
	movl	%esi, %eax
	subl	%ebp, %eax
	sall	$8, %ecx
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	call	_hlineasm4
L1426:
	cmpl	%ebx, 28(%esp)
	jne	L1427
	movl	48(%esp), %esi
	movl	52(%esp), %edi
L1409:
	cmpl	%esi, 40(%esp)
	je	L1770
	movl	__ZL4dplc.lto_priv.0, %eax
	movl	__ZL5umost.lto_priv.0, %edx
	movzwl	2(%eax,%edi), %eax
	movzwl	2(%edx,%edi), %edx
	cmpw	%dx, %ax
	cmovl	%edx, %eax
	movswl	%ax, %ebx
	movl	%ebx, %ebp
L1424:
	movl	_globaly2, %eax
	addl	$1, %esi
	addl	%eax, __ZL8globalx2.lto_priv.0
	movl	_globalx1, %eax
	addl	%eax, __ZL8globaly1.lto_priv.0
	cmpl	%esi, 40(%esp)
	jl	L1430
	movl	__ZL4dplc.lto_priv.0, %eax
	addl	$1, 24(%esp)
	movswl	2(%eax,%edi), %edx
	movl	__ZL5umost.lto_priv.0, %eax
	movswl	2(%eax,%edi), %eax
	leal	(%esi,%esi), %edi
	jmp	L1431
L1407:
	leal	-1(%edx), %ecx
	movl	%eax, 28(%esp)
	movl	%ecx, 44(%esp)
	cmpl	%ebp, %ecx
	jge	L1410
	cmpl	%ecx, %ebx
	jge	L1771
	movl	%esi, 52(%esp)
	movl	%ebp, 56(%esp)
	movl	%ecx, 60(%esp)
	movl	%edx, 64(%esp)
	movl	%edi, 68(%esp)
	.p2align 4
	.p2align 3
L1417:
	movl	__ZL5lastx.lto_priv.0, %eax
	addl	$1, %ebx
	movl	24(%esp), %ecx
	movl	(%eax,%ebx,4), %ebp
	cmpl	%ebp, %ecx
	jl	L1416
	movl	__ZL12horizlookup2.lto_priv.0, %edx
	movl	%ebx, %eax
	subl	_globalhoriz, %eax
	addl	__ZL10horizycent.lto_priv.0, %eax
	movl	(%edx,%eax,4), %esi
	movl	_globalx1, %eax
	movl	%esi, %edx
/APP
 # 2360 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _asm1
	movl	%esi, %edx
	movl	_globaly2, %eax
/APP
 # 2361 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_globvis, %edx
	movl	%eax, _asm2
	movl	%esi, %eax
/APP
 # 2362 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 48(%esp)
	movl	%esi, %edx
	movl	__ZL8globaly1.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edi
	movl	%esi, %edx
	movl	__ZL8globalx2.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_ylookup, %edx
	movl	%ecx, %esi
	addl	__ZL14globalypanning.lto_priv.0, %eax
	addl	__ZL14globalxpanning.lto_priv.0, %edi
	addl	(%edx,%ebx,4), %ecx
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
	movl	%esi, %eax
	subl	%ebp, %eax
	sall	$8, %ecx
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	call	_hlineasm4
L1416:
	movl	44(%esp), %eax
	cmpl	%eax, %ebx
	jne	L1417
	movl	52(%esp), %esi
	movl	56(%esp), %ebp
	movl	60(%esp), %eax
	movl	64(%esp), %edx
	movl	68(%esp), %edi
L1412:
	cmpl	%eax, 44(%esp)
	jge	L1577
	leal	-1(%edx), %ebx
	sall	$2, %eax
	leal	0(,%ebx,4), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1419:
	movl	__ZL5lastx.lto_priv.0, %edx
	movl	%esi, (%edx,%eax)
	subl	$4, %eax
	cmpl	%ecx, %eax
	jne	L1419
L1418:
	cmpl	%ebp, 28(%esp)
	jge	L1772
	movl	%esi, 48(%esp)
	movl	%ebx, 52(%esp)
	movl	%edi, 56(%esp)
	.p2align 4
	.p2align 3
L1423:
	movl	__ZL5lastx.lto_priv.0, %eax
	subl	$1, %ebp
	movl	24(%esp), %ecx
	movl	(%eax,%ebp,4), %edi
	cmpl	%edi, %ecx
	jl	L1420
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
L1420:
	cmpl	%ebp, 28(%esp)
	jne	L1423
	movl	48(%esp), %esi
	movl	52(%esp), %ebx
	movl	56(%esp), %edi
	jmp	L1424
L1772:
	jle	L1424
	movl	28(%esp), %ecx
	leal	0(,%ebp,4), %eax
	sall	$2, %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1425:
	movl	__ZL5lastx.lto_priv.0, %edx
	movl	%esi, (%edx,%eax)
	addl	$4, %eax
	cmpl	%ecx, %eax
	jne	L1425
	movl	28(%esp), %ebp
	jmp	L1424
L1410:
	leal	-1(%ebp), %eax
	movl	%eax, 48(%esp)
	cmpl	%eax, %ebx
	jge	L1413
	movl	%esi, 56(%esp)
	movl	%ebp, 60(%esp)
	movl	%edi, 64(%esp)
	.p2align 4
	.p2align 3
L1415:
	movl	__ZL5lastx.lto_priv.0, %eax
	addl	$1, %ebx
	movl	24(%esp), %ecx
	movl	(%eax,%ebx,4), %ebp
	cmpl	%ebp, %ecx
	jl	L1414
	movl	__ZL12horizlookup2.lto_priv.0, %edx
	movl	%ebx, %eax
	subl	_globalhoriz, %eax
	addl	__ZL10horizycent.lto_priv.0, %eax
	movl	(%edx,%eax,4), %esi
	movl	_globalx1, %eax
	movl	%esi, %edx
/APP
 # 2360 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _asm1
	movl	%esi, %edx
	movl	_globaly2, %eax
/APP
 # 2361 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_globvis, %edx
	movl	%eax, _asm2
	movl	%esi, %eax
/APP
 # 2362 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 52(%esp)
	movl	%esi, %edx
	movl	__ZL8globaly1.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edi
	movl	%esi, %edx
	movl	__ZL8globalx2.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_ylookup, %edx
	movl	%ecx, %esi
	addl	__ZL14globalypanning.lto_priv.0, %eax
	addl	__ZL14globalxpanning.lto_priv.0, %edi
	addl	(%edx,%ebx,4), %ecx
	movl	_frameoffset, %edx
	movl	%eax, 12(%esp)
	movl	$0, %eax
	movl	%edi, 16(%esp)
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
	movl	%esi, %eax
	subl	%ebp, %eax
	sall	$8, %ecx
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	call	_hlineasm4
L1414:
	cmpl	%ebx, 48(%esp)
	jne	L1415
	movl	56(%esp), %esi
	movl	60(%esp), %ebp
	movl	64(%esp), %edi
L1413:
	movl	44(%esp), %ebx
	jmp	L1418
L1430:
	leal	-1(%ebp), %eax
	movl	%eax, 28(%esp)
L1429:
	movl	28(%esp), %eax
	cmpl	%eax, %ebx
	jge	L1725
L1433:
	movl	__ZL5lastx.lto_priv.0, %eax
	addl	$1, %ebx
	movl	40(%esp), %ecx
	movl	(%eax,%ebx,4), %ebp
	cmpl	%ebp, %ecx
	jl	L1432
	movl	__ZL12horizlookup2.lto_priv.0, %edx
	movl	%ebx, %eax
	subl	_globalhoriz, %eax
	addl	__ZL10horizycent.lto_priv.0, %eax
	movl	(%edx,%eax,4), %esi
	movl	_globalx1, %eax
	movl	%esi, %edx
/APP
 # 2360 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _asm1
	movl	%esi, %edx
	movl	_globaly2, %eax
/APP
 # 2361 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_globvis, %edx
	movl	%eax, _asm2
	movl	%esi, %eax
/APP
 # 2362 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 24(%esp)
	movl	%esi, %edx
	movl	__ZL8globaly1.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edi
	movl	%esi, %edx
	movl	__ZL8globalx2.lto_priv.0, %eax
/APP
 # 2364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_ylookup, %edx
	movl	%ecx, %esi
	addl	__ZL14globalypanning.lto_priv.0, %eax
	addl	__ZL14globalxpanning.lto_priv.0, %edi
	addl	(%edx,%ebx,4), %ecx
	movl	_frameoffset, %edx
	movl	%eax, 12(%esp)
	movl	$0, %eax
	movl	%edi, 16(%esp)
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
	movl	%esi, %eax
	subl	%ebp, %eax
	sall	$8, %ecx
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	call	_hlineasm4
L1432:
	movl	28(%esp), %eax
	cmpl	%eax, %ebx
	jne	L1433
	jmp	L1725
L1371:
	leal	-1(%esi), %eax
	movzbl	72(%esp), %edi
	movl	%eax, 28(%esp)
L1370:
	movl	28(%esp), %eax
	cmpl	%eax, %ebp
	jge	L1344
	movl	%edi, %eax
	movb	%al, 44(%esp)
L1374:
	movl	__ZL5lastx.lto_priv.0, %eax
	addl	$1, %ebp
	movl	40(%esp), %ecx
	movl	(%eax,%ebp,4), %edi
	cmpl	%edi, %ecx
	jl	L1373
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
L1373:
	movl	28(%esp), %eax
	cmpl	%eax, %ebp
	jne	L1374
	movzbl	44(%esp), %edi
	jmp	L1344
L1578:
	movl	24(%esp), %esi
	jmp	L1450
L1765:
	movl	%esi, 24(%esp)
	jmp	L1446
L1731:
	movl	_globaly2, %eax
	movzbl	52(%esp), %edi
	addl	%eax, __ZL8globalx2.lto_priv.0
	movl	_globalx1, %eax
	addl	%eax, __ZL8globaly1.lto_priv.0
	jmp	L1397
L1734:
	movl	_globaly2, %eax
	addl	%eax, __ZL8globalx2.lto_priv.0
	movl	_globalx1, %eax
	addl	%eax, __ZL8globaly1.lto_priv.0
	jmp	L1458
L1434:
	movl	_globalblend, %eax
	testl	%eax, %eax
	je	L1437
	movl	_blendtable, %eax
	movl	$0, _globalblend
	movl	%eax, (%esp)
	call	_fixtransluscence
L1437:
	call	_settransnormal
	jmp	L1724
L1375:
	movl	_globalblend, %eax
	testl	%eax, %eax
	je	L1378
	movl	_blendtable, %eax
	movl	$0, _globalblend
	movl	%eax, (%esp)
	call	_fixtransluscence
L1378:
	call	_settransnormal
	jmp	L1723
L1577:
	movl	%eax, %ebx
	jmp	L1418
L1771:
	movl	%ebx, %eax
	jmp	L1412
L1770:
	movl	_globaly2, %eax
	addl	%eax, __ZL8globalx2.lto_priv.0
	movl	_globalx1, %eax
	addl	%eax, __ZL8globaly1.lto_priv.0
	jmp	L1429
L1767:
	movl	_globaly2, %eax
	movzbl	72(%esp), %edi
	addl	%eax, __ZL8globalx2.lto_priv.0
	movl	_globalx1, %eax
	addl	%eax, __ZL8globaly1.lto_priv.0
	jmp	L1370
L1576:
	movl	%eax, %ebp
	jmp	L1359
L1768:
	movl	%ebp, %eax
	jmp	L1353
	.cfi_endproc
LFE45:
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
	.globl	_searchisbottom
	.align 2
_searchisbottom:
	.space 2
	.globl	_searchbottomwall
	.align 2
_searchbottomwall:
	.space 2
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
	.globl	_yax_nomaskdidit
	.align 4
_yax_nomaskdidit:
	.space 4
	.globl	_searchwall
	.align 2
_searchwall:
	.space 2
	.globl	_searchsector
	.align 2
_searchsector:
	.space 2
	.globl	_searchy
	.align 4
_searchy:
	.space 4
	.globl	_searchx
	.data
	.align 4
_searchx:
	.long	-1
	.globl	__ZL8smostcnt.lto_priv.0
	.bss
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
	.globl	_yax_gotsector
	.bss
	.align 32
_yax_gotsector:
	.space 512
	.globl	_r_tror_nomaskpass
	.data
	.align 4
_r_tror_nomaskpass:
	.long	1
	.globl	__ZL6ydmost.lto_priv.0
	.section .rdata,"dr"
	.align 4
__ZL6ydmost.lto_priv.0:
	.space 4
	.globl	__ZL6yumost.lto_priv.0
	.align 4
__ZL6yumost.lto_priv.0:
	.space 4
	.globl	_haveymost
	.bss
	.align 32
_haveymost:
	.space 32
	.globl	_yax_globalcf
	.section .rdata,"dr"
	.align 4
_yax_globalcf:
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
	.globl	_qglobalang
	.align 4
_qglobalang:
	.space 4
	.globl	__ZL12no_radarang2.lto_priv.0
	.align 4
__ZL12no_radarang2.lto_priv.0:
	.space 4
	.globl	_globaltilesizy
	.align 4
_globaltilesizy:
	.space 4
	.globl	_g_loadedMapVersion
	.data
	.align 4
_g_loadedMapVersion:
	.long	-1
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
	.globl	__ZL11horizlookup.lto_priv.0
	.align 4
__ZL11horizlookup.lto_priv.0:
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
	.globl	__ZL3ry2.lto_priv.0
	.align 32
__ZL3ry2.lto_priv.0:
	.space 32768
	.globl	__ZL14globalypanning.lto_priv.0
	.align 4
__ZL14globalypanning.lto_priv.0:
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
	.globl	__ZL8globalht.lto_priv.0
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
	.globl	__ZL5swall.lto_priv.0
	.align 4
__ZL5swall.lto_priv.0:
	.space 4
	.globl	_frameoffset
	.align 4
_frameoffset:
	.space 4
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
	.globl	_xdimen
	.data
	.align 4
_xdimen:
	.long	-1
	.globl	_halfxdimen
	.bss
	.align 4
_halfxdimen:
	.space 4
	.globl	_yax_globalbunch
	.section .rdata,"dr"
	.align 4
_yax_globalbunch:
	.long	-1
.lcomm __ZL17yax_spritesortcnt,34,32
	.globl	_yax_globallev
	.align 4
_yax_globallev:
	.long	8
	.globl	_yax_nomaskpass
	.align 4
_yax_nomaskpass:
	.space 4
	.globl	_g_nodraw
	.bss
	.align 4
_g_nodraw:
	.space 4
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
	.def	_tileLoad.isra.0;	.scl	2;	.type	32;	.endef
	.def	_prevlineasm1;	.scl	2;	.type	32;	.endef
	.def	_tvlineasm1nonpow2;	.scl	2;	.type	32;	.endef
	.def	_tvlineasm1;	.scl	2;	.type	32;	.endef
	.def	_yax_getneighborsect;	.scl	2;	.type	32;	.endef
	.def	_getceilzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	_getflorzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.9;	.scl	2;	.type	32;	.endef
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
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
	.def	__ZL17classicScanSectors.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_copybufbyte;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.1;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_fixtransluscence;	.scl	2;	.type	32;	.endef
	.def	_settransreverse;	.scl	2;	.type	32;	.endef
	.def	_tsethlineshift;	.scl	2;	.type	32;	.endef
	.def	_hlineasm4;	.scl	2;	.type	32;	.endef
	.def	_settransnormal;	.scl	2;	.type	32;	.endef
