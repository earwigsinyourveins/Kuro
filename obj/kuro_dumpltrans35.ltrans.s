	.file	"<artificial>"
	.text
	.p2align 4
	.def	__ZL17polymost_clipmostP4vec2IfERiffffff;	.scl	3;	.type	32;	.endef
__ZL17polymost_clipmostP4vec2IfERiffffff:
LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movaps	%xmm0, %xmm7
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$112, %esp
	comiss	8(%ebp), %xmm2
	movss	12(%ebp), %xmm0
	ja	L1
	comiss	16(%ebp), %xmm0
	ja	L1
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movl	(%edx), %esi
	testl	%esi, %esi
	jle	L3
	movl	%edi, -4(%ebp)
	.cfi_offset 7, -12
	movss	(%eax), %xmm4
	movaps	%xmm1, %xmm3
	subss	%xmm7, %xmm1
	subss	%xmm2, %xmm0
	movss	4(%eax), %xmm5
	movl	%eax, 32(%esp)
	xorl	%edx, %edx
	movss	%xmm4, 24(%esp)
	subss	%xmm7, %xmm4
	xorl	%eax, %eax
	movaps	%xmm2, %xmm6
	movss	%xmm1, 28(%esp)
	movss	%xmm0, 20(%esp)
	movaps	%xmm4, %xmm1
	movl	%ebx, 4(%esp)
	xorps	%xmm4, %xmm4
	mulss	%xmm0, %xmm1
	movaps	%xmm5, %xmm0
	movss	%xmm5, 16(%esp)
	subss	%xmm2, %xmm0
	mulss	28(%esp), %xmm0
	movss	%xmm3, (%esp)
	subss	%xmm0, %xmm1
	movss	%xmm1, 12(%esp)
	xorps	LC0, %xmm1
	movss	%xmm1, 8(%esp)
	movaps	%xmm1, %xmm0
	jmp	L10
	.p2align 4,,10
	.p2align 3
L27:
	movl	32(%esp), %edi
	movss	(%edi,%eax,8), %xmm2
	movss	4(%edi,%eax,8), %xmm1
	movaps	%xmm2, %xmm5
	movaps	%xmm1, %xmm3
	subss	%xmm7, %xmm5
	subss	%xmm6, %xmm3
	mulss	20(%esp), %xmm5
	mulss	28(%esp), %xmm3
	subss	%xmm3, %xmm5
	movaps	%xmm5, %xmm3
	xorps	LC0, %xmm3
L4:
	comiss	%xmm4, %xmm0
	jb	L5
	movl	32(%esp), %ebx
	movl	-8(%ebx,%eax,8), %ecx
	movl	-4(%ebx,%eax,8), %ebx
	movl	%ecx, 36(%esp,%edx,8)
	movl	%ebx, 40(%esp,%edx,8)
	addl	$1, %edx
L5:
	comiss	%xmm4, %xmm0
	setnb	%bl
	comiss	%xmm5, %xmm4
	setnb	%cl
	cmpb	%cl, %bl
	je	L8
	comiss	%xmm0, %xmm4
	setnb	%bl
	comiss	%xmm4, %xmm5
	setnb	%cl
	cmpb	%cl, %bl
	je	L8
	addss	%xmm0, %xmm5
	movl	32(%esp), %ebx
	subss	-8(%ebx,%eax,8), %xmm2
	divss	%xmm5, %xmm0
	movss	-4(%ebx,%eax,8), %xmm5
	subss	%xmm5, %xmm1
	mulss	%xmm0, %xmm1
	mulss	%xmm0, %xmm2
	addss	-8(%ebx,%eax,8), %xmm2
	addss	%xmm5, %xmm1
	movss	%xmm2, 36(%esp,%edx,8)
	movss	%xmm1, 40(%esp,%edx,8)
	addl	$1, %edx
L8:
	cmpl	%esi, %eax
	je	L26
	movaps	%xmm3, %xmm0
L10:
	addl	$1, %eax
	cmpl	%esi, %eax
	jl	L27
	movss	8(%esp), %xmm3
	movss	12(%esp), %xmm5
	movss	16(%esp), %xmm1
	movss	24(%esp), %xmm2
	jmp	L4
	.p2align 4,,10
	.p2align 3
L29:
	movl	32(%esp), %ebx
	cmpl	$2, (%ebx)
	jg	L28
L24:
	movl	-4(%ebp), %edi
	.cfi_restore 7
L3:
	movl	$0, (%ebx)
	movl	-12(%ebp), %ebx
	.cfi_restore 3
	movl	-8(%ebp), %esi
	.cfi_restore 6
L1:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L26:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movss	8(%ebp), %xmm6
	movl	32(%esp), %ecx
	movl	4(%esp), %ebx
	movss	(%esp), %xmm3
	cmpl	$2, %edx
	jle	L24
	movss	36(%esp), %xmm4
	subss	%xmm3, %xmm7
	movl	%edx, 28(%esp)
	leal	36(%esp), %eax
	movss	40(%esp), %xmm2
	subss	16(%ebp), %xmm6
	movl	$0, (%ebx)
	movl	$1, %esi
	movss	%xmm4, 16(%esp)
	subss	%xmm3, %xmm4
	movss	%xmm2, 12(%esp)
	subss	16(%ebp), %xmm2
	movss	%xmm6, 20(%esp)
	movaps	%xmm4, %xmm1
	movl	%ecx, 24(%esp)
	xorps	%xmm4, %xmm4
	mulss	%xmm6, %xmm1
	movaps	%xmm2, %xmm0
	movl	%ebx, 32(%esp)
	movaps	%xmm3, %xmm6
	mulss	%xmm7, %xmm0
	subss	%xmm0, %xmm1
	movss	%xmm1, 8(%esp)
	xorps	LC0, %xmm1
	movss	%xmm1, 4(%esp)
	movaps	%xmm1, %xmm0
	jmp	L16
	.p2align 4,,10
	.p2align 3
L30:
	movss	12(%eax), %xmm1
	movss	8(%eax), %xmm2
	movaps	%xmm1, %xmm3
	subss	16(%ebp), %xmm3
	movaps	%xmm2, %xmm5
	subss	%xmm6, %xmm5
	mulss	20(%esp), %xmm5
	mulss	%xmm7, %xmm3
	subss	%xmm3, %xmm5
	movaps	%xmm5, %xmm3
	xorps	LC0, %xmm3
L12:
	comiss	%xmm4, %xmm0
	jb	L13
	movl	32(%esp), %edx
	movl	32(%esp), %ebx
	movl	4(%eax), %ecx
	movl	(%edx), %edi
	leal	1(%edi), %edx
	movl	%edx, (%ebx)
	movl	24(%esp), %ebx
	movl	(%eax), %edx
	movl	%ecx, 4(%ebx,%edi,8)
	movl	%edx, (%ebx,%edi,8)
L13:
	comiss	%xmm4, %xmm0
	setnb	%cl
	comiss	%xmm5, %xmm4
	movl	%ecx, %edi
	movl	%edi, %edx
	setnb	%cl
	cmpb	%cl, %dl
	je	L15
	comiss	%xmm0, %xmm4
	setnb	%dl
	comiss	%xmm4, %xmm5
	movl	%edx, %ecx
	setnb	%dl
	cmpb	%dl, %cl
	je	L15
	addss	%xmm0, %xmm5
	subss	(%eax), %xmm2
	movl	32(%esp), %edx
	movl	24(%esp), %ebx
	movl	(%edx), %edi
	divss	%xmm5, %xmm0
	movss	4(%eax), %xmm5
	subss	%xmm5, %xmm1
	mulss	%xmm0, %xmm1
	mulss	%xmm0, %xmm2
	addss	(%eax), %xmm2
	addss	%xmm5, %xmm1
	movss	%xmm2, (%ebx,%edi,8)
	movss	%xmm1, 4(%ebx,%edi,8)
	addl	$1, (%edx)
L15:
	addl	$8, %eax
	cmpl	%esi, 28(%esp)
	je	L29
	addl	$1, %esi
	movaps	%xmm3, %xmm0
L16:
	cmpl	%esi, 28(%esp)
	jg	L30
	movss	4(%esp), %xmm3
	movss	8(%esp), %xmm5
	movss	12(%esp), %xmm1
	movss	16(%esp), %xmm2
	jmp	L12
	.p2align 4,,10
	.p2align 3
L28:
	movl	-12(%ebp), %ebx
	.cfi_restore 3
	movl	-8(%ebp), %esi
	.cfi_restore 6
	movl	-4(%ebp), %edi
	.cfi_restore 7
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.def	__ZL19yax_polymost_domostiffff;	.scl	3;	.type	32;	.endef
__ZL19yax_polymost_domostiffff:
LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movaps	%xmm0, %xmm5
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	movl	%eax, %esi
	pushl	%ebx
	andl	$-8, %esp
	addl	$-128, %esp
	.cfi_offset 3, -20
	comiss	%xmm0, %xmm2
	movss	%xmm0, 92(%esp)
	movss	%xmm1, 88(%esp)
	movss	%xmm2, 84(%esp)
	jbe	L176
	movss	LC2, %xmm7
	movss	8(%ebp), %xmm4
	movaps	%xmm2, %xmm3
	subss	%xmm7, %xmm1
	subss	%xmm7, %xmm4
	movss	%xmm1, 88(%esp)
	movss	%xmm4, 8(%ebp)
L34:
	movss	__ZL3xbl.lto_priv.0, %xmm6
	comiss	%xmm3, %xmm6
	movss	%xmm6, 80(%esp)
	ja	L37
	movss	__ZL3xbr.lto_priv.0, %xmm6
	movss	92(%esp), %xmm0
	comiss	%xmm6, %xmm0
	movss	%xmm6, 76(%esp)
	ja	L37
	movaps	%xmm3, %xmm6
	movss	%xmm1, 56(%esp)
	movaps	%xmm4, %xmm1
	subss	56(%esp), %xmm1
	subss	%xmm0, %xmm6
	movss	%xmm4, 20(%esp)
	divss	%xmm6, %xmm1
	movaps	%xmm1, %xmm6
	movss	%xmm1, 8(%esp)
	movss	80(%esp), %xmm1
	comiss	%xmm0, %xmm1
	jbe	L40
	subss	%xmm0, %xmm1
	movss	80(%esp), %xmm0
	mulss	%xmm6, %xmm1
	addss	56(%esp), %xmm1
	movss	%xmm1, 56(%esp)
L40:
	movss	76(%esp), %xmm6
	comiss	%xmm6, %xmm3
	ja	L190
L42:
	movl	__ZL7yax_vsp.lto_priv.0(,%esi,4), %edi
	movswl	16(%edi), %eax
	movl	%eax, 80(%esp)
	testl	%eax, %eax
	je	L44
	comiss	%xmm5, %xmm2
	ja	L191
	movl	80(%esp), %eax
	movss	8(%esp), %xmm6
	addl	%eax, %eax
	movl	%eax, 68(%esp)
	movl	%esi, %eax
	movl	%edi, %esi
	movl	%eax, %edi
	.p2align 4
	.p2align 3
L79:
	movl	80(%esp), %edx
	movl	68(%esp), %eax
	addl	%edx, %eax
	movl	%edx, 72(%esp)
	movl	%eax, 76(%esp)
	leal	(%esi,%eax,8), %eax
	movswl	16(%eax), %edx
	leal	(%edx,%edx), %ecx
	movl	%edx, 80(%esp)
	addl	%ecx, %edx
	movl	%ecx, 68(%esp)
	sall	$3, %edx
	movl	%edx, 64(%esp)
	addl	%esi, %edx
	movss	(%edx), %xmm2
	comiss	%xmm2, %xmm0
	jnb	L51
	movss	(%eax), %xmm1
	comiss	%xmm3, %xmm1
	jnb	L51
	cmpw	$0, 20(%eax)
	jle	L51
	movss	%xmm2, 60(%esp)
	flds	60(%esp)
	comiss	%xmm1, %xmm0
	movss	%xmm1, 60(%esp)
	fstpl	8(%esp)
	flds	60(%esp)
	movss	%xmm2, 60(%esp)
	flds	60(%esp)
	movss	%xmm1, 60(%esp)
	fsubs	60(%esp)
	flds	4(%eax)
	fld	%st(0)
	fsubrs	8(%eax)
	flds	56(%esp)
	fld	%st(2)
	fsubrs	56(%esp)
	fmul	%st(4), %st
	jbe	L75
	comiss	%xmm0, %xmm2
	jbe	L75
	movaps	%xmm0, %xmm5
	fld	%st(2)
	subss	%xmm1, %xmm5
	movss	%xmm5, 60(%esp)
	fmuls	60(%esp)
	fsub	%st(1), %st
	fldz
	fcomip	%st(1), %st
	fstp	%st(0)
	jnb	L192
	.p2align 4
	.p2align 3
L75:
	movl	$0, 48(%esp)
L78:
	flds	20(%esp)
	movss	%xmm0, 60(%esp)
	fld	%st(0)
	fstpl	24(%esp)
	flds	60(%esp)
	movss	%xmm3, 60(%esp)
	fstpl	32(%esp)
	flds	60(%esp)
	movss	%xmm0, 60(%esp)
	fstpl	40(%esp)
	fsubrp	%st, %st(2)
	fxch	%st(1)
	fmul	%st(4), %st
	flds	60(%esp)
	movss	%xmm3, 60(%esp)
	fsubs	60(%esp)
	movss	%xmm0, 60(%esp)
	fmul	%st(3), %st
	fsubrp	%st, %st(1)
	fld	%st(5)
	fsubrs	60(%esp)
	fmul	%st(3), %st
	fsubrp	%st, %st(2)
	fld	%st(0)
/APP
 # 228 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fld	%st(2)
/APP
 # 228 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fxch	%st(1)
	fcomip	%st(1), %st
	fstp	%st(0)
	jbe	L200
	fldz
	fld	%st(2)
	fmul	%st(2), %st
	fcomip	%st(1), %st
	fstp	%st(0)
	jb	L201
	fdivrp	%st, %st(1)
	fldl	40(%esp)
	fldl	32(%esp)
	fsubr	%st, %st(1)
	fxch	%st(2)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fcomi	%st(4), %st
	jbe	L202
	fldl	8(%esp)
	fcomip	%st(1), %st
	jbe	L203
	movl	48(%esp), %eax
	fstps	60(%esp)
	movss	60(%esp), %xmm4
	movl	$0, 96(%esp,%eax,4)
	movss	%xmm4, 112(%esp,%eax,4)
	cmpl	$1, %eax
	jne	L125
	movss	112(%esp), %xmm4
	comiss	116(%esp), %xmm4
	jbe	L74
	leal	112(%esp), %ebx
	leal	116(%esp), %eax
/APP
 # 4489 "source/build/src/polymost.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	leal	96(%esp), %ebx
	leal	100(%esp), %eax
/APP
 # 4490 "source/build/src/polymost.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
L74:
	movl	$2, 48(%esp)
	jmp	L72
L203:
	fstp	%st(0)
	.p2align 4
	.p2align 3
L72:
	comiss	%xmm3, %xmm2
	jbe	L204
	fldl	40(%esp)
	fsubp	%st, %st(4)
	fmul	%st, %st(3)
	fldl	24(%esp)
	fsub	%st(2), %st
	fmul	%st(3), %st
	fsubrp	%st, %st(4)
	fldz
	fcomip	%st(4), %st
	fstp	%st(3)
	jb	L205
	fxch	%st(1)
	fxch	%st(2)
	movl	48(%esp), %eax
	movl	$-1, 96(%esp,%eax,4)
	movss	%xmm3, 112(%esp,%eax,4)
	addl	$1, %eax
	movl	%eax, 48(%esp)
	jmp	L187
	.p2align 4,,10
	.p2align 3
L204:
	fstp	%st(3)
	fxch	%st(1)
	fxch	%st(2)
	jmp	L187
	.p2align 4,,10
	.p2align 3
L205:
	fxch	%st(1)
	fxch	%st(2)
L187:
	fxch	%st(2)
	movl	64(%esp), %edx
	addl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %edx
	jmp	L65
	.p2align 4,,10
	.p2align 3
L212:
	fstp	%st(3)
	fxch	%st(1)
L65:
	fdivrl	LC3
	movl	76(%esp), %esi
	movl	$-1, 12(%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %eax
	movl	$0, 40(%esp)
	movss	%xmm6, 24(%esp)
	movl	$-1, 12(%eax,%esi,8)
	fstps	76(%esp)
	movss	76(%esp), %xmm5
	movl	$0, 76(%esp)
L53:
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %eax
	movl	48(%esp), %esi
	movl	%eax, 64(%esp)
	movl	%eax, %edx
	movl	72(%esp), %eax
	leal	(%eax,%eax,2), %ecx
	leal	0(,%ecx,8), %eax
	cmpl	%esi, 76(%esp)
	je	L193
	movl	64(%esp), %esi
	movl	76(%esp), %ebx
	fld	%st(1)
	movss	112(%esp,%ebx,4), %xmm2
	movswl	49144(%esi), %ebx
	movw	%bx, 60(%esp)
	subss	%xmm1, %xmm2
	movl	%ebx, 40(%esp)
	leal	(%ebx,%ebx,2), %ebx
	leal	0(,%ebx,8), %edx
	movl	%ebx, 64(%esp)
	movswl	16(%esi,%ebx,8), %ebx
	mulss	%xmm5, %xmm2
	leal	(%ebx,%ebx,2), %ebx
	movw	$2047, 18(%esi,%ebx,8)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %ebx
	movzwl	16(%ebx,%edx), %esi
	movss	%xmm2, 32(%esp)
	movw	%si, 49144(%ebx)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %ebx
	movl	64(%esp), %esi
	movl	(%ebx,%ecx,8), %ecx
	movl	%ecx, (%ebx,%esi,8)
	movl	4(%ebx,%eax), %ecx
	movl	%ecx, 4(%ebx,%edx)
	movl	8(%ebx,%eax), %ecx
	movl	%ecx, 8(%ebx,%edx)
	movl	12(%ebx,%eax), %ecx
	movl	%ecx, 12(%ebx,%edx)
	movl	16(%ebx,%eax), %ecx
	movl	%ecx, 16(%ebx,%edx)
	movl	20(%ebx,%eax), %ecx
	movl	%ecx, 20(%ebx,%edx)
	movzwl	72(%esp), %ebx
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %ecx
	movw	%bx, 18(%ecx,%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %ecx
	movzwl	16(%ecx,%eax), %ebx
	movw	%bx, 16(%ecx,%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %ecx
	fmuls	32(%esp)
	movzwl	60(%esp), %esi
	movswl	16(%ecx,%eax), %ebx
	leal	(%ebx,%ebx,2), %ebx
	fadd	%st(1), %st
	movw	%si, 18(%ecx,%ebx,8)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %ecx
	movl	76(%esp), %ebx
	movw	%si, 16(%ecx,%eax)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %ecx
	fstps	72(%esp)
	movss	72(%esp), %xmm2
	movl	64(%esp), %esi
	movss	%xmm2, 8(%ecx,%eax)
	movss	112(%esp,%ebx,4), %xmm2
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %ecx
	movss	%xmm2, (%ecx,%esi,8)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %ecx
	movss	8(%ecx,%eax), %xmm2
	movss	%xmm2, 4(%ecx,%edx)
	movl	96(%esp,%ebx,4), %ebx
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %ecx
	movl	%ebx, 12(%ecx,%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %esi
	leal	(%esi,%eax), %ebx
	movl	%esi, 64(%esp)
	movswl	16(%ebx), %ecx
	testw	%cx, %cx
	je	L56
	movss	(%ebx), %xmm2
	comiss	%xmm2, %xmm0
	ja	L56
L54:
	movl	64(%esp), %esi
	leal	(%ecx,%ecx,2), %edx
	movss	(%esi,%edx,8), %xmm4
	comiss	%xmm3, %xmm4
	ja	L56
	movl	12(%ebx), %ecx
	subss	%xmm0, %xmm4
	mulss	24(%esp), %xmm4
	addss	56(%esp), %xmm4
	movl	12(%esi,%edx,8), %edx
	testl	%ecx, %ecx
	je	L59
	movss	4(%ebx), %xmm6
	subss	%xmm0, %xmm2
	mulss	24(%esp), %xmm2
	addss	56(%esp), %xmm2
	addss	%xmm7, %xmm6
	comiss	%xmm2, %xmm6
	jnb	L59
	movl	__ZL4gtag.lto_priv.0, %ecx
	testl	%edx, %edx
	jne	L60
L61:
	movss	%xmm2, 4(%ebx)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %edx
	movw	%cx, 20(%edx,%eax)
	.p2align 4
	.p2align 3
L56:
	addl	$1, 76(%esp)
	movl	48(%esp), %eax
	cmpl	%eax, 76(%esp)
	jg	L194
	movl	40(%esp), %eax
	movl	%eax, 72(%esp)
	jmp	L53
	.p2align 4,,10
	.p2align 3
L37:
	addl	$1, _domost_rejectcount
L31:
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
L176:
	.cfi_restore_state
	ucomiss	%xmm2, %xmm0
	jp	L129
	je	L31
L129:
	leal	92(%esp), %eax
	leal	84(%esp), %ebx
/APP
 # 4421 "source/build/src/polymost.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	leal	88(%esp), %eax
	leal	8(%ebp), %ebx
/APP
 # 4422 "source/build/src/polymost.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movss	LC2, %xmm7
	movss	88(%esp), %xmm1
	movss	8(%ebp), %xmm4
	movss	84(%esp), %xmm3
	addss	%xmm7, %xmm1
	addss	%xmm7, %xmm4
	movss	%xmm1, 88(%esp)
	movss	%xmm4, 8(%ebp)
	jmp	L34
	.p2align 4,,10
	.p2align 3
L194:
	fstp	%st(0)
	fstp	%st(0)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %eax
	movss	24(%esp), %xmm6
	movl	%eax, %esi
	.p2align 4
	.p2align 3
L51:
	movl	80(%esp), %eax
	testl	%eax, %eax
	jne	L79
L189:
	movl	%edi, %eax
	movl	%esi, %edi
	movl	%eax, %esi
	movswl	16(%edi), %eax
	movl	%eax, 80(%esp)
L44:
	movl	80(%esp), %edx
	addl	$1, __ZL4gtag.lto_priv.0
	movl	%esi, 80(%esp)
	jmp	L120
	.p2align 6
	.p2align 4,,10
	.p2align 3
L195:
	movl	%ecx, %edx
L119:
	testl	%edx, %edx
	je	L31
	movl	80(%esp), %eax
	movl	__ZL7yax_vsp.lto_priv.0(,%eax,4), %edi
L120:
	leal	(%edx,%edx,2), %eax
	leal	(%edi,%eax,8), %ebx
	movswl	16(%ebx), %ecx
	leal	(%ecx,%ecx,2), %eax
	movw	%cx, 76(%esp)
	sall	$3, %eax
	addl	%eax, %edi
	movzwl	20(%edi), %esi
	cmpw	%si, 20(%ebx)
	jne	L195
	movss	8(%edi), %xmm0
	movl	80(%esp), %esi
	movss	%xmm0, 8(%ebx)
	movl	%eax, %ebx
	addl	__ZL7yax_vsp.lto_priv.0(,%esi,4), %ebx
	movl	__ZL7yax_vsp.lto_priv.0(,%esi,4), %esi
	movswl	18(%ebx), %ecx
	movswl	16(%ebx), %ebx
	movl	%ebx, %edi
	leal	(%ebx,%ebx,2), %ebx
	movw	%cx, 18(%esi,%ebx,8)
	movl	80(%esp), %esi
	leal	(%ecx,%ecx,2), %ecx
	sall	$3, %ecx
	addl	__ZL7yax_vsp.lto_priv.0(,%esi,4), %ecx
	movw	%di, 16(%ecx)
	movl	__ZL7yax_vsp.lto_priv.0(,%esi,4), %ecx
	movzwl	76(%esp), %edi
	movzwl	49144(%ecx), %ebx
	movw	%bx, 16(%ecx,%eax)
	movl	__ZL7yax_vsp.lto_priv.0(,%esi,4), %ecx
	movl	$2047, %ebx
	movw	%bx, 18(%ecx,%eax)
	movl	__ZL7yax_vsp.lto_priv.0(,%esi,4), %eax
	movswl	49144(%eax), %ecx
	leal	(%ecx,%ecx,2), %ecx
	movw	%di, 18(%eax,%ecx,8)
	movl	__ZL7yax_vsp.lto_priv.0(,%esi,4), %eax
	movw	%di, 49144(%eax)
	jmp	L119
	.p2align 4,,10
	.p2align 3
L190:
	movaps	%xmm6, %xmm1
	subss	%xmm3, %xmm1
	mulss	8(%esp), %xmm1
	movaps	%xmm6, %xmm3
	addss	%xmm1, %xmm4
	movss	%xmm4, 20(%esp)
	jmp	L42
	.p2align 4,,10
	.p2align 3
L191:
	addl	%eax, %eax
	movl	%eax, 68(%esp)
	movl	%esi, %eax
	movl	%edi, %esi
	movl	%eax, %edi
	.p2align 4
	.p2align 3
L45:
	movl	80(%esp), %edx
	movl	68(%esp), %eax
	addl	%edx, %eax
	movl	%edx, 64(%esp)
	movl	%eax, 76(%esp)
	leal	(%esi,%eax,8), %eax
	movswl	16(%eax), %edx
	leal	(%edx,%edx), %ecx
	movl	%edx, 80(%esp)
	addl	%ecx, %edx
	movl	%ecx, 68(%esp)
	leal	0(,%edx,8), %ebx
	leal	(%esi,%ebx), %edx
	movl	%ebx, 72(%esp)
	movss	(%edx), %xmm2
	comiss	%xmm2, %xmm0
	jnb	L83
	movss	(%eax), %xmm1
	comiss	%xmm3, %xmm1
	jnb	L83
	cmpw	$0, 20(%eax)
	jle	L83
	movss	%xmm2, 60(%esp)
	flds	60(%esp)
	comiss	%xmm1, %xmm0
	movss	%xmm1, 60(%esp)
	fstpl	(%esp)
	flds	60(%esp)
	movss	%xmm2, 60(%esp)
	flds	60(%esp)
	movss	%xmm1, 60(%esp)
	fsubs	60(%esp)
	flds	4(%eax)
	fld	%st(0)
	fsubrs	8(%eax)
	flds	56(%esp)
	fld	%st(2)
	fsubrs	56(%esp)
	fmul	%st(4), %st
	jbe	L85
	comiss	%xmm0, %xmm2
	jbe	L85
	movaps	%xmm0, %xmm5
	fld	%st(2)
	subss	%xmm1, %xmm5
	movss	%xmm5, 60(%esp)
	fmuls	60(%esp)
	fsub	%st(1), %st
	fldz
	fxch	%st(1)
	fcomip	%st(1), %st
	fstp	%st(0)
	jb	L85
	movl	$-1, 96(%esp)
	movl	$1, 40(%esp)
	movss	%xmm0, 112(%esp)
	.p2align 4
	.p2align 3
L88:
	flds	20(%esp)
	movss	%xmm0, 60(%esp)
	fld	%st(0)
	fstpl	24(%esp)
	flds	60(%esp)
	movss	%xmm3, 60(%esp)
	fstpl	32(%esp)
	flds	60(%esp)
	movss	%xmm0, 60(%esp)
	fstpl	48(%esp)
	fsubrp	%st, %st(2)
	fxch	%st(1)
	fmul	%st(4), %st
	flds	60(%esp)
	movss	%xmm3, 60(%esp)
	fsubs	60(%esp)
	movss	%xmm0, 60(%esp)
	fmul	%st(3), %st
	fsubrp	%st, %st(1)
	fld	%st(5)
	fsubrs	60(%esp)
	fmul	%st(3), %st
	fsubrp	%st, %st(2)
	fld	%st(0)
/APP
 # 228 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fld	%st(2)
/APP
 # 228 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fxch	%st(1)
	fcomip	%st(1), %st
	fstp	%st(0)
	jbe	L206
	fldz
	fld	%st(1)
	fmul	%st(3), %st
	fcomip	%st(1), %st
	fstp	%st(0)
	jb	L207
	fdivrp	%st, %st(1)
	fldl	48(%esp)
	fldl	32(%esp)
	fsubr	%st, %st(1)
	fxch	%st(2)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fcomi	%st(4), %st
	jbe	L208
	fldl	(%esp)
	fcomip	%st(1), %st
	jbe	L209
	movl	40(%esp), %eax
	fstps	60(%esp)
	movss	60(%esp), %xmm4
	movl	$0, 96(%esp,%eax,4)
	movss	%xmm4, 112(%esp,%eax,4)
	cmpl	$1, %eax
	jne	L126
	movss	112(%esp), %xmm4
	comiss	116(%esp), %xmm4
	jbe	L97
	leal	112(%esp), %ebx
	leal	116(%esp), %eax
/APP
 # 4489 "source/build/src/polymost.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	leal	96(%esp), %ebx
	leal	100(%esp), %eax
/APP
 # 4490 "source/build/src/polymost.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
L97:
	movl	$2, 40(%esp)
	jmp	L96
L209:
	fstp	%st(0)
	.p2align 4
	.p2align 3
L96:
	comiss	%xmm3, %xmm2
	jbe	L210
	fldl	48(%esp)
	fsubp	%st, %st(4)
	fmul	%st, %st(3)
	fldl	24(%esp)
	fsub	%st(2), %st
	fmul	%st(3), %st
	fsubrp	%st, %st(4)
	fldz
	fxch	%st(4)
	fcomip	%st(4), %st
	fstp	%st(3)
	jb	L211
	fxch	%st(1)
	fxch	%st(2)
	movl	40(%esp), %eax
	movl	$-1, 96(%esp,%eax,4)
	movss	%xmm3, 112(%esp,%eax,4)
	addl	$1, %eax
	movl	%eax, 40(%esp)
	jmp	L188
	.p2align 4,,10
	.p2align 3
L210:
	fstp	%st(3)
	fxch	%st(1)
	fxch	%st(2)
	jmp	L188
	.p2align 4,,10
	.p2align 3
L211:
	fxch	%st(1)
	fxch	%st(2)
L188:
	fxch	%st(2)
	movl	72(%esp), %edx
	addl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %edx
	jmp	L99
	.p2align 4,,10
	.p2align 3
L213:
	fstp	%st(3)
	fxch	%st(1)
L99:
	fdivrl	LC3
	movl	76(%esp), %esi
	movl	$-1, 12(%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %eax
	movl	$0, 32(%esp)
	movl	$-1, 12(%eax,%esi,8)
	fstps	76(%esp)
	movss	76(%esp), %xmm5
	movl	$0, 76(%esp)
L117:
	movl	64(%esp), %eax
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %ebx
	movl	76(%esp), %esi
	leal	(%eax,%eax,2), %ecx
	movl	%ebx, 72(%esp)
	movl	%ebx, %edx
	leal	0(,%ecx,8), %eax
	cmpl	%esi, 40(%esp)
	je	L105
	movswl	49144(%ebx), %edx
	movss	112(%esp,%esi,4), %xmm2
	fld	%st(1)
	leal	(%edx,%edx,2), %esi
	movw	%dx, 48(%esp)
	subss	%xmm1, %xmm2
	movswl	16(%ebx,%esi,8), %ebx
	movl	%esi, 60(%esp)
	movl	%edx, 32(%esp)
	leal	0(,%esi,8), %edx
	movl	72(%esp), %esi
	leal	(%ebx,%ebx,2), %ebx
	mulss	%xmm5, %xmm2
	movw	$2047, 18(%esi,%ebx,8)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %ebx
	movzwl	16(%ebx,%edx), %esi
	movw	%si, 49144(%ebx)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %ebx
	movl	60(%esp), %esi
	movss	%xmm2, 24(%esp)
	movl	(%ebx,%ecx,8), %ecx
	movl	%ecx, (%ebx,%esi,8)
	movl	4(%ebx,%eax), %ecx
	movl	%ecx, 4(%ebx,%edx)
	movl	8(%ebx,%eax), %ecx
	movl	%ecx, 8(%ebx,%edx)
	movl	12(%ebx,%eax), %ecx
	movl	%ecx, 12(%ebx,%edx)
	movl	16(%ebx,%eax), %ecx
	movl	%ecx, 16(%ebx,%edx)
	movl	20(%ebx,%eax), %ecx
	movl	%ecx, 20(%ebx,%edx)
	movzwl	64(%esp), %ebx
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %ecx
	movw	%bx, 18(%ecx,%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %ecx
	movzwl	16(%ecx,%eax), %ebx
	movw	%bx, 16(%ecx,%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %ecx
	fmuls	24(%esp)
	movzwl	48(%esp), %esi
	movswl	16(%ecx,%eax), %ebx
	leal	(%ebx,%ebx,2), %ebx
	fadd	%st(1), %st
	movw	%si, 18(%ecx,%ebx,8)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %ecx
	movl	76(%esp), %ebx
	movw	%si, 16(%ecx,%eax)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %ecx
	fstps	72(%esp)
	movss	72(%esp), %xmm2
	movl	60(%esp), %esi
	movss	%xmm2, 8(%ecx,%eax)
	movss	112(%esp,%ebx,4), %xmm2
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %ecx
	movss	%xmm2, (%ecx,%esi,8)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %ecx
	movss	8(%ecx,%eax), %xmm2
	movss	%xmm2, 4(%ecx,%edx)
	movl	96(%esp,%ebx,4), %ebx
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %ecx
	movl	%ebx, 12(%ecx,%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %esi
	leal	(%esi,%eax), %ebx
	movl	%esi, 72(%esp)
	movswl	16(%ebx), %ecx
	testw	%cx, %cx
	je	L109
	movss	(%ebx), %xmm4
	comiss	%xmm4, %xmm0
	ja	L109
L107:
	movl	72(%esp), %esi
	leal	(%ecx,%ecx,2), %edx
	movss	(%esi,%edx,8), %xmm2
	comiss	%xmm3, %xmm2
	ja	L109
	subss	%xmm0, %xmm2
	movss	8(%esp), %xmm6
	movl	12(%ebx), %ecx
	movl	12(%esi,%edx,8), %edx
	mulss	%xmm6, %xmm2
	addss	56(%esp), %xmm2
	testl	%ecx, %ecx
	je	L111
	subss	%xmm0, %xmm4
	mulss	%xmm6, %xmm4
	movss	4(%ebx), %xmm6
	addss	56(%esp), %xmm4
	subss	%xmm7, %xmm6
	comiss	%xmm6, %xmm4
	jnb	L111
	movl	__ZL4gtag.lto_priv.0, %ecx
	testl	%edx, %edx
	jne	L196
L116:
	movss	%xmm4, 4(%ebx)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %edx
	movw	%cx, 20(%edx,%eax)
	.p2align 4
	.p2align 3
L109:
	addl	$1, 76(%esp)
	movl	76(%esp), %eax
	cmpl	%eax, 40(%esp)
	jl	L197
	movl	32(%esp), %eax
	movl	%eax, 64(%esp)
	jmp	L117
	.p2align 4,,10
	.p2align 3
L197:
	fstp	%st(0)
	fstp	%st(0)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %eax
	movl	%eax, %esi
	.p2align 4
	.p2align 3
L83:
	movl	80(%esp), %eax
	testl	%eax, %eax
	jne	L45
	jmp	L189
	.p2align 4,,10
	.p2align 3
L193:
	leal	(%edx,%eax), %ebx
	movl	%edx, %esi
	movswl	16(%ebx), %ecx
	testw	%cx, %cx
	je	L198
	movss	(%ebx), %xmm2
	comiss	%xmm2, %xmm0
	jbe	L54
	fstp	%st(0)
	fstp	%st(0)
	movl	%edx, %eax
	movss	24(%esp), %xmm6
	movl	%eax, %esi
	jmp	L51
	.p2align 4,,10
	.p2align 3
L105:
	leal	(%ebx,%eax), %ebx
	movswl	16(%ebx), %ecx
	testw	%cx, %cx
	je	L199
	movss	(%ebx), %xmm4
	comiss	%xmm4, %xmm0
	jbe	L107
	fstp	%st(0)
	fstp	%st(0)
	movl	%edx, %eax
	movl	%eax, %esi
	jmp	L83
	.p2align 4,,10
	.p2align 3
L85:
	movl	$0, 40(%esp)
	jmp	L88
	.p2align 4,,10
	.p2align 3
L200:
	fstp	%st(0)
	fstp	%st(0)
	jmp	L68
	.p2align 4,,10
	.p2align 3
L201:
	fstp	%st(0)
	fstp	%st(0)
	jmp	L68
	.p2align 4,,10
	.p2align 3
L202:
	fstp	%st(0)
	.p2align 4
	.p2align 3
L68:
	comiss	%xmm1, %xmm3
	jbe	L212
	jmp	L72
	.p2align 4,,10
	.p2align 3
L206:
	fstp	%st(0)
	fstp	%st(0)
	jmp	L90
	.p2align 4,,10
	.p2align 3
L207:
	fstp	%st(0)
	fstp	%st(0)
	jmp	L90
	.p2align 4,,10
	.p2align 3
L208:
	fstp	%st(0)
	.p2align 4
	.p2align 3
L90:
	comiss	%xmm1, %xmm3
	jbe	L213
	jmp	L96
	.p2align 4,,10
	.p2align 3
L111:
	testl	%edx, %edx
	je	L109
	movss	8(%ebx), %xmm4
	subss	%xmm7, %xmm4
	comiss	%xmm4, %xmm2
	jnb	L109
	movss	%xmm2, 8(%ebx)
	movl	__ZL4gtag.lto_priv.0, %ecx
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %edx
	movw	%cx, 20(%edx,%eax)
	jmp	L109
	.p2align 4,,10
	.p2align 3
L59:
	testl	%edx, %edx
	je	L56
	movss	8(%ebx), %xmm2
	addss	%xmm7, %xmm2
	comiss	%xmm4, %xmm2
	jnb	L56
	movss	%xmm4, 8(%ebx)
	movl	__ZL4gtag.lto_priv.0, %ecx
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %edx
	movw	%cx, 20(%edx,%eax)
	jmp	L56
	.p2align 4,,10
	.p2align 3
L199:
	fstp	%st(0)
	fstp	%st(0)
	movl	80(%esp), %eax
	movl	72(%esp), %esi
	testl	%eax, %eax
	jne	L45
	jmp	L189
	.p2align 4,,10
	.p2align 3
L198:
	fstp	%st(0)
	fstp	%st(0)
	movss	24(%esp), %xmm6
	jmp	L51
L60:
	movss	8(%ebx), %xmm6
	addss	%xmm7, %xmm6
	comiss	%xmm4, %xmm6
	jnb	L61
	movss	%xmm2, 4(%ebx)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %edx
	movss	%xmm4, 8(%edx,%eax)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %edx
	movw	%cx, 20(%edx,%eax)
	jmp	L56
L196:
	movss	8(%ebx), %xmm6
	subss	%xmm7, %xmm6
	comiss	%xmm6, %xmm2
	jnb	L116
	movss	%xmm4, 4(%ebx)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %edx
	movss	%xmm2, 8(%edx,%eax)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %edx
	movw	%cx, 20(%edx,%eax)
	jmp	L109
	.p2align 4,,10
	.p2align 3
L192:
	movl	$-1, 96(%esp)
	movl	$1, 48(%esp)
	movss	%xmm0, 112(%esp)
	jmp	L78
L125:
	movl	$1, 48(%esp)
	jmp	L72
L126:
	movl	$1, 40(%esp)
	jmp	L96
	.cfi_endproc
LFE1:
	.p2align 4
	.def	__ZL18should_clip_cfwallffff;	.scl	3;	.type	32;	.endef
__ZL18should_clip_cfwallffff:
LFB4:
	.cfi_startproc
	movl	$1, %eax
	ret
	.cfi_endproc
LFE4:
	.p2align 4
	.def	__Z16fgetceilzofslopePK13usectortypev7ff;	.scl	3;	.type	32;	.endef
__Z16fgetceilzofslopePK13usectortypev7ff:
LFB5:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	xorps	%xmm1, %xmm1
	movl	24(%esp), %edx
	cvtsi2ssl	4(%edx), %xmm1
	testb	$2, 12(%edx)
	je	L215
	movl	%ebx, 4(%esp)
	movl	_wall, %ecx
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%ebp, 16(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movswl	(%edx), %eax
	sall	$5, %eax
	addl	%ecx, %eax
	movswl	8(%eax), %ebx
	movl	4(%eax), %ebp
	sall	$5, %ebx
	addl	%ebx, %ecx
	movl	(%eax), %ebx
	movl	(%ecx), %edi
	movl	4(%ecx), %esi
	movl	%ebx, (%esp)
	subl	%ebx, %edi
	subl	%ebp, %esi
	movl	%esi, %eax
	movl	%edi, %ecx
	imull	%esi, %eax
	imull	%edi, %ecx
	addl	%ecx, %eax
/APP
 # 5109 "source/build/src/polymost.cpp" 1
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
	sall	$5, %eax
	je	L223
	xorps	%xmm2, %xmm2
	movss	32(%esp), %xmm0
	xorps	%xmm3, %xmm3
	movswl	18(%edx), %edx
	cvtsi2ssl	%ebp, %xmm2
	movl	4(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %ebp
	.cfi_restore 5
	cvtsi2ssl	(%esp), %xmm3
	subss	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%edi, %xmm2
	movl	12(%esp), %edi
	.cfi_restore 7
	mulss	%xmm2, %xmm0
	movss	28(%esp), %xmm2
	subss	%xmm3, %xmm2
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%esi, %xmm3
	movl	8(%esp), %esi
	.cfi_restore 6
	mulss	%xmm3, %xmm2
	subss	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	mulss	LC6, %xmm0
	cvtsi2ssl	%edx, %xmm2
	mulss	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
L215:
	movss	%xmm1, (%esp)
	flds	(%esp)
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L223:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movss	%xmm1, (%esp)
	movl	4(%esp), %ebx
	.cfi_restore 3
	flds	(%esp)
	movl	8(%esp), %esi
	.cfi_restore 6
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	16(%esp), %ebp
	.cfi_restore 5
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE5:
	.p2align 4
	.def	__Z16fgetflorzofslopePK13usectortypev7ff;	.scl	3;	.type	32;	.endef
__Z16fgetflorzofslopePK13usectortypev7ff:
LFB7:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	xorps	%xmm1, %xmm1
	movl	24(%esp), %edx
	cvtsi2ssl	8(%edx), %xmm1
	testb	$2, 14(%edx)
	je	L224
	movl	%ebx, 4(%esp)
	movl	_wall, %ecx
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%ebp, 16(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movswl	(%edx), %eax
	sall	$5, %eax
	addl	%ecx, %eax
	movswl	8(%eax), %ebx
	movl	4(%eax), %ebp
	sall	$5, %ebx
	addl	%ebx, %ecx
	movl	(%eax), %ebx
	movl	(%ecx), %edi
	movl	4(%ecx), %esi
	movl	%ebx, (%esp)
	subl	%ebx, %edi
	subl	%ebp, %esi
	movl	%esi, %eax
	movl	%edi, %ecx
	imull	%esi, %eax
	imull	%edi, %ecx
	addl	%ecx, %eax
/APP
 # 5127 "source/build/src/polymost.cpp" 1
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
	sall	$5, %eax
	je	L232
	xorps	%xmm2, %xmm2
	movss	32(%esp), %xmm0
	xorps	%xmm3, %xmm3
	movswl	26(%edx), %edx
	cvtsi2ssl	%ebp, %xmm2
	movl	4(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %ebp
	.cfi_restore 5
	cvtsi2ssl	(%esp), %xmm3
	subss	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%edi, %xmm2
	movl	12(%esp), %edi
	.cfi_restore 7
	mulss	%xmm2, %xmm0
	movss	28(%esp), %xmm2
	subss	%xmm3, %xmm2
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%esi, %xmm3
	movl	8(%esp), %esi
	.cfi_restore 6
	mulss	%xmm3, %xmm2
	subss	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	mulss	LC6, %xmm0
	cvtsi2ssl	%edx, %xmm2
	mulss	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
L224:
	movss	%xmm1, (%esp)
	flds	(%esp)
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L232:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movss	%xmm1, (%esp)
	movl	4(%esp), %ebx
	.cfi_restore 3
	flds	(%esp)
	movl	8(%esp), %esi
	.cfi_restore 6
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	16(%esp), %ebp
	.cfi_restore 5
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE7:
	.p2align 4
	.def	__Z13fgetzsofslopePK13usectortypev7ffPfS2_;	.scl	3;	.type	32;	.endef
__Z13fgetzsofslopePK13usectortypev7ffPfS2_:
LFB9:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	xorps	%xmm2, %xmm2
	movl	%esi, 24(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%edi, 28(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	cvtsi2ssl	4(%eax), %xmm2
	movss	%xmm2, (%edx)
	xorps	%xmm2, %xmm2
	cvtsi2ssl	8(%eax), %xmm2
	movss	%xmm2, (%ecx)
	movzwl	12(%eax), %eax
	.cfi_offset 7, -12
	movzwl	14(%esi), %edi
	movw	%ax, 2(%esp)
	orl	%edi, %eax
	testb	$2, %al
	je	L233
	movl	%ebx, 20(%esp)
	movl	_wall, %ecx
	movl	%ebp, 32(%esp)
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	movswl	(%esi), %eax
	sall	$5, %eax
	addl	%ecx, %eax
	movswl	8(%eax), %edx
	movl	(%eax), %ebp
	sall	$5, %edx
	movl	%ebp, 12(%esp)
	addl	%edx, %ecx
	movl	(%ecx), %edx
	subl	%ebp, %edx
	movl	4(%eax), %ebp
	movl	4(%ecx), %eax
	subl	%ebp, %eax
	movl	%ebp, 16(%esp)
	movl	%eax, %ecx
	movl	%eax, %ebp
	imull	%eax, %ecx
	movl	%ecx, %eax
	movl	%edx, %ecx
	imull	%edx, %ecx
	addl	%ecx, %eax
/APP
 # 5146 "source/build/src/polymost.cpp" 1
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
	sall	$5, %eax
	je	L250
	xorps	%xmm2, %xmm2
	cvtsi2ssl	16(%esp), %xmm2
	subss	%xmm2, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%edx, %xmm2
	mulss	%xmm2, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2ssl	12(%esp), %xmm2
	subss	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ebp, %xmm2
	mulss	%xmm2, %xmm0
	subss	%xmm0, %xmm1
	mulss	LC6, %xmm1
	testb	$2, 2(%esp)
	je	L235
	movswl	18(%esi), %edx
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	movl	4(%esp), %ebx
	cvtsi2ssl	%eax, %xmm2
	cvtsi2ssl	%edx, %xmm0
	mulss	%xmm1, %xmm0
	divss	%xmm2, %xmm0
	addss	(%ebx), %xmm0
	movss	%xmm0, (%ebx)
	movzwl	14(%esi), %edi
L235:
	andl	$2, %edi
	je	L250
	movswl	26(%esi), %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	mulss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	movl	8(%esp), %eax
	divss	%xmm1, %xmm0
	addss	(%eax), %xmm0
	movss	%xmm0, (%eax)
	movl	20(%esp), %ebx
	.cfi_restore 3
	movl	32(%esp), %ebp
	.cfi_restore 5
L233:
	movl	24(%esp), %esi
	movl	28(%esp), %edi
	addl	$36, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L250:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	20(%esp), %ebx
	.cfi_restore 3
	movl	32(%esp), %ebp
	.cfi_restore 5
	movl	24(%esp), %esi
	movl	28(%esp), %edi
	addl	$36, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE9:
	.p2align 4
	.globl	__ZL13calc_ypanningiffffhhi.lto_priv.0
	.def	__ZL13calc_ypanningiffffhhi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL13calc_ypanningiffffhhi.lto_priv.0:
LFB10:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movaps	%xmm0, %xmm3
	xorps	%xmm0, %xmm0
	movzbl	%cl, %ecx
	xorps	%xmm5, %xmm5
	cvtsi2ssl	%ecx, %xmm5
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	$1, %edx
	pushl	%ebx
	andl	$-8, %esp
	subl	$60, %esp
	.cfi_offset 3, -20
	subl	_globalposz, %eax
	fldl	__ZL4xtex.lto_priv.0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm2, 52(%esp)
	flds	52(%esp)
	fldl	__ZL4otex.lto_priv.0
	movss	__ZL6ghoriz.lto_priv.0, %xmm4
	movswl	_globalpicnum, %eax
	fld	%st(2)
	fmuls	52(%esp)
	movzbl	_picsiz(%eax), %ecx
	movaps	%xmm0, %xmm2
	mulss	%xmm1, %xmm0
	shrb	$4, %cl
	mulss	%xmm3, %xmm2
	sall	%cl, %edx
	movswl	_tilesiz+2(,%eax,4), %ecx
	fadd	%st(1), %st
	leal	(%edx,%edx), %ebx
	cmpl	%edx, %ecx
	cmovg	%ebx, %edx
	movl	%esi, %ebx
	movaps	%xmm0, %xmm1
	movzbl	%bl, %ebx
	addss	%xmm4, %xmm2
	addss	%xmm4, %xmm1
	movss	8(%ebp), %xmm4
	subss	52(%esp), %xmm4
	fstps	52(%esp)
	movss	52(%esp), %xmm0
	mulss	%xmm5, %xmm0
	mulss	%xmm4, %xmm3
	mulss	LC7, %xmm3
	divss	%xmm3, %xmm0
	movss	%xmm0, 52(%esp)
	flds	52(%esp)
	testb	$2, _picanm+4(%eax,%eax,4)
	jne	L253
	movl	%ecx, %edi
	cmpb	$0, _glinfo+29
	js	L260
L254:
	movl	12(%ebp), %eax
	movl	%edx, %ecx
	testl	%eax, %eax
	jne	L261
L253:
	imull	%ebx, %ecx
	movaps	%xmm2, %xmm6
	xorps	%xmm0, %xmm0
	subss	%xmm1, %xmm6
	cvtsi2ssl	%ecx, %xmm0
	mulss	LC9, %xmm0
	movss	%xmm6, 52(%esp)
	flds	52(%esp)
	movss	%xmm4, 52(%esp)
	fmul	%st(1), %st
	fxch	%st(1)
	fmuls	52(%esp)
	movss	%xmm0, 52(%esp)
	flds	52(%esp)
	movss	%xmm2, 52(%esp)
	fld	%st(0)
	fld	%st(3)
	fchs
	fmulp	%st, %st(6)
	fld	%st(2)
	fmuls	52(%esp)
	fsubrp	%st, %st(6)
	fxch	%st(4)
	fmul	%st(1), %st
	faddp	%st, %st(5)
	fxch	%st(4)
	fstpl	__ZL4otex.lto_priv.0+16
	fxch	%st(3)
	fmulp	%st, %st(4)
	faddp	%st, %st(3)
	fxch	%st(2)
	fstpl	__ZL4xtex.lto_priv.0+16
	fxch	%st(1)
	fmull	__ZL4ytex.lto_priv.0
	faddp	%st, %st(1)
	fstpl	__ZL4ytex.lto_priv.0+16
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
L260:
	.cfi_restore_state
	movl	_r_npotwallmode, %eax
	cmpl	$0, _usehightile
	jne	L255
	cmpl	$1, %eax
	je	L262
L255:
	cmpl	$2, %eax
	jne	L254
L256:
	movl	%edx, %ecx
	jmp	L253
	.p2align 4,,10
	.p2align 3
L261:
	xorps	%xmm5, %xmm5
	movl	%esi, %eax
	xorps	%xmm0, %xmm0
	fstps	28(%esp)
	cvtsi2ssl	%edx, %xmm5
	movb	%al, 15(%esp)
	movl	%edx, %eax
	movss	LC8, %xmm3
	subl	%edi, %eax
	fstpl	36(%esp)
	cvtsi2ssl	%eax, %xmm0
	fstpl	44(%esp)
	movl	%edx, 24(%esp)
	divss	%xmm5, %xmm3
	movl	%edx, 8(%esp)
	movss	%xmm1, 16(%esp)
	movss	%xmm2, 20(%esp)
	movss	%xmm4, 32(%esp)
	fstpl	52(%esp)
	mulss	%xmm3, %xmm0
	movss	%xmm0, (%esp)
	call	_lrintf
	movss	32(%esp), %xmm4
	fldl	52(%esp)
	movl	%eax, %esi
	movl	$256, %eax
	fldl	44(%esp)
	movl	24(%esp), %edx
	subl	%esi, %eax
	fldl	36(%esp)
	flds	28(%esp)
	cmpl	%ebx, %eax
	movss	20(%esp), %xmm2
	movss	16(%esp), %xmm1
	jge	L256
	movzbl	15(%esp), %ebx
	movl	%esi, %eax
	movl	8(%esp), %ecx
	subl	%eax, %ebx
	movzbl	%bl, %ebx
	jmp	L253
	.p2align 4,,10
	.p2align 3
L262:
	fstp	%st(0)
	xorps	%xmm0, %xmm0
	xorps	%xmm3, %xmm3
	movss	52(%esp), %xmm7
	cvtsi2ssl	%ecx, %xmm0
	cvtsi2ssl	%edx, %xmm3
	divss	%xmm3, %xmm0
	mulss	%xmm0, %xmm7
	movss	%xmm7, 52(%esp)
	flds	52(%esp)
	jmp	L253
	.cfi_endproc
LFE10:
	.section .rdata,"dr"
	.align 4
LC20:
	.ascii "polymost_drawpoly(dpxy:%p, n:%d, method_:%X), method: %X\0"
	.align 4
LC21:
	.ascii "pth==NULL! (bad pal?) pic=%d pal=%d\0"
	.text
	.p2align 4
	.globl	__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0
	.def	__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0:
LFB11:
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
	subl	$676, %esp
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	_doeditorcheck, %eax
	movl	%edx, -508(%ebp)
	movl	%ecx, -568(%ebp)
	testl	%eax, %eax
	je	L264
	cmpw	$0, _editstatus
	je	L264
	cmpl	$2, %edx
	jg	L603
L264:
	cmpl	$-1, -568(%ebp)
	je	L263
	movl	_g_nodraw, %eax
	movl	%eax, -512(%ebp)
	testl	%eax, %eax
	jne	L263
	movswl	_globalpicnum, %edi
	cmpl	$30719, %edi
	ja	L263
	cmpl	$3, -508(%ebp)
	je	L604
	jle	L263
	movl	-508(%ebp), %ecx
	movl	%edi, -496(%ebp)
	xorl	%eax, %eax
	xorps	%xmm1, %xmm1
	leal	-2(%ecx), %ebx
	leal	-1(%ecx), %edx
	movl	%ecx, %edi
	jmp	L268
	.p2align 6
	.p2align 4,,10
	.p2align 3
L464:
	movl	%ecx, %eax
L268:
	movss	(%esi,%ebx,8), %xmm0
	subss	(%esi,%eax,8), %xmm0
	leal	1(%eax), %ecx
	movl	%edx, %ebx
	mulss	4(%esi,%edx,8), %xmm0
	movl	%eax, %edx
	addss	%xmm0, %xmm1
	cmpl	%ecx, %edi
	jne	L464
	xorps	%xmm0, %xmm0
	movl	-496(%ebp), %edi
	comiss	%xmm1, %xmm0
	jnb	L263
L267:
	movl	__ZL13flatskyrender, %eax
	testl	%eax, %eax
	je	L269
	movl	__ZZL17polymost_drawpolyPK4vec2IfEiiE19skyzbufferhack_pass, %eax
	testl	%eax, %eax
	je	L605
L269:
	movl	_globalpal, %eax
	movl	_palookup(,%eax,4), %ebx
	testl	%ebx, %ebx
	je	L606
L303:
	movl	%edi, %eax
/APP
 # 3221 "source/build/src/polymost.cpp" 1
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
	movswl	_globalpicnum, %eax
	movzwl	_tilesiz(,%eax,4), %edi
	movl	_waloff(,%eax,4), %ecx
	movw	%di, -560(%ebp)
	movzwl	_tilesiz+2(,%eax,4), %edi
	movw	%di, -580(%ebp)
	testl	%ecx, %ecx
	je	L607
L304:
	fldl	__ZL4xtex.lto_priv.0
	xorl	%eax, %eax
	leal	-96(%ebp), %ebx
	xorps	%xmm1, %xmm1
	fldl	__ZL4ytex.lto_priv.0
	fldl	__ZL4otex.lto_priv.0
	leal	-168(%ebp), %ecx
	leal	-232(%ebp), %edi
	fldl	__ZL4xtex.lto_priv.0+8
	fldl	__ZL4ytex.lto_priv.0+8
	movl	%ecx, -556(%ebp)
	movl	%edi, -500(%ebp)
	movl	%ecx, -504(%ebp)
	fstpl	-520(%ebp)
	fldl	__ZL4otex.lto_priv.0+8
	fstpl	-528(%ebp)
	fldl	__ZL4xtex.lto_priv.0+16
	fstpl	-536(%ebp)
	fldl	__ZL4ytex.lto_priv.0+16
	fstpl	-544(%ebp)
	fldl	__ZL4otex.lto_priv.0+16
	fstpl	-552(%ebp)
	.p2align 4
	.p2align 3
L305:
	flds	(%esi,%eax,8)
	flds	4(%esi,%eax,8)
	movss	(%esi,%eax,8), %xmm7
	movl	-504(%ebp), %edi
	fld	%st(5)
	fmuls	(%esi,%eax,8)
	movss	%xmm7, (%ebx,%eax,4)
	movss	4(%esi,%eax,8), %xmm7
	movss	%xmm7, (%edi,%eax,4)
	movl	-500(%ebp), %edi
	fld	%st(5)
	fmuls	4(%esi,%eax,8)
	faddp	%st, %st(1)
	fadd	%st(4), %st
	fstps	-496(%ebp)
	movss	-496(%ebp), %xmm0
	comiss	%xmm0, %xmm1
	movss	%xmm0, (%edi,%eax,4)
	jnb	L633
	fld	%st(1)
	leal	-296(%ebp), %edi
	leal	-360(%ebp), %edx
	fmul	%st(3), %st
	fldl	-520(%ebp)
	fmul	%st(2), %st
	faddp	%st, %st(1)
	faddl	-528(%ebp)
	fstps	-496(%ebp)
	fxch	%st(1)
	fmull	-536(%ebp)
	fxch	%st(1)
	fmull	-544(%ebp)
	movss	-496(%ebp), %xmm0
	movss	%xmm0, (%edi,%eax,4)
	faddp	%st, %st(1)
	faddl	-552(%ebp)
	fstps	-496(%ebp)
	movss	-496(%ebp), %xmm0
	movss	%xmm0, (%edx,%eax,4)
	addl	$1, %eax
	cmpl	-508(%ebp), %eax
	jl	L305
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	movss	-96(%ebp), %xmm0
	movss	-168(%ebp), %xmm1
	movl	%edx, -600(%ebp)
	movl	-556(%ebp), %ecx
	movss	%xmm0, -588(%ebp)
	movss	%xmm1, -592(%ebp)
	jmp	L306
	.p2align 4,,10
	.p2align 3
L608:
	ucomiss	(%ecx,%eax,4), %xmm1
	jp	L598
	jne	L598
	cmpl	$2, %eax
	je	L263
L306:
	movl	%eax, %edx
	subl	$1, %eax
	ucomiss	(%ebx,%eax,4), %xmm0
	jp	L598
	je	L608
L598:
	movl	-568(%ebp), %ecx
	movl	%edx, -576(%ebp)
	movl	__ZL12skyclamphack.lto_priv.0, %edx
	movl	%ecx, %eax
	orl	$4, %eax
	testl	%edx, %edx
	cmove	%ecx, %eax
	movl	%eax, -496(%ebp)
	movl	%eax, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	-508(%ebp), %eax
	movl	%esi, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$LC20, 4(%esp)
	movl	$3, (%esp)
	call	__Z26buildgl_outputDebugMessagehPKcz.constprop.0
	cmpl	$3, _rendmode
	je	L609
L313:
	movl	-496(%ebp), %edx
L312:
	movswl	_numshades, %ecx
	xorl	%eax, %eax
	subl	$1, %ecx
	cmpl	$0, _globalshade
	cmovns	_globalshade, %eax
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movswl	_globalpicnum, %eax
	movl	%edx, (%esp)
	movl	_globalpal, %edx
	call	_texcache_fetch
	movl	%eax, -632(%ebp)
	testl	%eax, %eax
	je	L610
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %ecx
	testl	%ecx, %ecx
	je	L315
	movswl	-560(%ebp), %eax
	movl	%eax, -628(%ebp)
	movswl	-580(%ebp), %eax
	movl	%eax, -520(%ebp)
L316:
	movl	-632(%ebp), %eax
	testb	$16, 34(%eax)
	je	L318
	movl	_r_fullbrights, %edx
	testl	%edx, %edx
	je	L318
	movl	__ZZL17polymost_drawpolyPK4vec2IfEiiE15fullbright_pass, %eax
	testl	%eax, %eax
	jne	L320
	movl	$1, __ZZL17polymost_drawpolyPK4vec2IfEiiE15fullbright_pass
	.p2align 4
	.p2align 3
L318:
	movl	-632(%ebp), %eax
	cmpl	$3, _rendmode
	je	L611
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L600
	movl	_drawingskybox, %ecx
	testl	%ecx, %ecx
	jne	L600
L461:
	movss	LC10, %xmm7
	ucomiss	12(%eax), %xmm7
	movss	%xmm7, -560(%ebp)
	jp	L337
	jne	L337
	ucomiss	16(%eax), %xmm7
	jp	L337
	je	L336
L337:
	movl	$5890, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glLoadIdentity
	movl	-632(%ebp), %eax
	movss	-560(%ebp), %xmm7
	movl	8(%eax), %eax
	movss	%xmm7, 8(%esp)
	movss	16(%eax), %xmm0
	movss	%xmm0, 4(%esp)
	movss	12(%eax), %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glScalef
	subl	$12, %esp
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
L336:
	cmpl	$3, _rendmode
	je	L612
L340:
	movl	$33984, -648(%ebp)
L460:
	movl	_r_detailmapping, %eax
	testl	%eax, %eax
	je	L342
	movl	_usehightile, %eax
	testl	%eax, %eax
	je	L357
	movl	_drawingskybox, %eax
	testl	%eax, %eax
	je	L613
L344:
	movl	_r_glowmapping, %eax
	testl	%eax, %eax
	je	L357
L356:
	movl	_globalclipdist, %eax
	andl	$32, %eax
	orl	_drawingskybox, %eax
	je	L614
	.p2align 4
	.p2align 3
L357:
	cmpl	$33984, _gl+4
	je	L361
	movl	$33984, _gl+4
	movl	$33984, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L361:
	cmpb	$0, _glinfo+29
	jns	L362
	cmpl	$2, _r_npotwallmode
	je	L615
L362:
	movss	-560(%ebp), %xmm0
	xorps	%xmm1, %xmm1
	xorl	%eax, %eax
	call	__Z22polymost_npotEmulationcff
L366:
	movl	-632(%ebp), %edx
	movzwl	34(%edx), %eax
	movl	%eax, %ecx
	andw	$2, %cx
	movw	%cx, -528(%ebp)
	je	L472
	movss	16(%edx), %xmm7
	movl	24(%edx), %ecx
	movss	%xmm7, -504(%ebp)
	movss	20(%edx), %xmm7
	movl	28(%edx), %edx
	movl	%ecx, -628(%ebp)
	movl	%edx, -520(%ebp)
	movss	%xmm7, -580(%ebp)
L367:
	cmpb	$0, _glinfo+29
	js	L473
	movl	-628(%ebp), %ecx
	cmpl	$1, %ecx
	jle	L474
	movl	$1, %edx
	.p2align 3
	.p2align 4
	.p2align 3
L370:
	addl	%edx, %edx
	cmpl	%ecx, %edx
	jl	L370
	movl	%edx, -640(%ebp)
L369:
	movl	-640(%ebp), %ecx
	cmpl	%ecx, -628(%ebp)
	movl	-520(%ebp), %ecx
	setne	-552(%ebp)
	cmpl	$1, %ecx
	jle	L475
	movl	$1, %edx
	.p2align 3
	.p2align 4
	.p2align 3
L371:
	addl	%edx, %edx
	cmpl	%ecx, %edx
	jl	L371
	movl	%edx, -644(%ebp)
L368:
	movl	-496(%ebp), %ecx
	andl	$3, %ecx
	movl	%ecx, -520(%ebp)
	jne	L372
	cmpl	$2, __ZZL17polymost_drawpolyPK4vec2IfEiiE15fullbright_pass
	je	L372
L373:
	movl	_rendmode, %ecx
	movl	_globalpal, %edx
	movl	%ecx, -496(%ebp)
	movzwl	_hictinting(,%edx,8), %ecx
	movw	%cx, -536(%ebp)
	cmpl	$4, -496(%ebp)
	je	L616
	testb	$2, %ah
	je	L384
	cmpl	$3, -496(%ebp)
	jne	L383
	movl	_r_useindexedcolortextures, %ecx
	testl	%ecx, %ecx
	je	L385
	movl	_gltexfiltermode, %eax
	testl	%eax, %eax
	je	L386
L385:
	movl	_globalshade, %eax
	movl	%eax, -544(%ebp)
L387:
	movl	_r_usetileshades, %eax
	testl	%eax, %eax
	je	L378
	testb	$1, _globalflags
	jne	L378
L389:
	movl	_usehightile, %eax
	testl	%eax, %eax
	jne	L392
L386:
	movss	-560(%ebp), %xmm3
	.p2align 4
	.p2align 3
L393:
	movzbl	_hictinting+5(,%edx,8), %eax
	xorps	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	movss	LC22, %xmm5
	movss	-560(%ebp), %xmm7
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%eax, %xmm1
	movzbl	_hictinting+6(,%edx,8), %eax
	movaps	%xmm7, %xmm0
	cvtsi2ssl	%eax, %xmm2
	movzbl	_hictinting+7(,%edx,8), %eax
	mulss	%xmm5, %xmm1
	cvtsi2ssl	%eax, %xmm4
	mulss	%xmm5, %xmm2
	mulss	%xmm5, %xmm4
	subss	%xmm1, %xmm0
	mulss	%xmm3, %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm7, %xmm1
	subss	%xmm4, %xmm7
	subss	%xmm2, %xmm1
	mulss	%xmm3, %xmm1
	addss	%xmm2, %xmm1
	movaps	%xmm7, %xmm2
	mulss	%xmm3, %xmm2
	addss	%xmm4, %xmm2
L382:
	movl	-520(%ebp), %eax
	movss	-560(%ebp), %xmm4
	subl	$2, %eax
	cmpl	$1, %eax
	ja	L402
	movzbl	__ZL14drawpoly_blend.lto_priv.0, %ecx
	leal	(%eax,%ecx,2), %eax
	movss	_glblend(,%eax,8), %xmm4
L402:
	movzwl	-536(%ebp), %ecx
	testb	$-60, %cl
	jne	L403
	cmpw	$0, -528(%ebp)
	je	L404
	movl	-632(%ebp), %eax
	movzbl	38(%eax), %eax
	cmpl	%edx, %eax
	jne	L405
	movl	-632(%ebp), %eax
	andl	$32, %ecx
	movzwl	36(%eax), %eax
	movw	%ax, -496(%ebp)
	andw	$199, %ax
	orw	%cx, %ax
	je	L407
L405:
	movzbl	_hictinting+2(,%edx,8), %eax
	xorps	%xmm3, %xmm3
	movss	LC22, %xmm5
	cvtsi2ssl	%eax, %xmm3
	movzbl	_hictinting+3(,%edx,8), %eax
	mulss	%xmm5, %xmm3
	mulss	%xmm3, %xmm0
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	movzbl	_hictinting+4(,%edx,8), %eax
	mulss	%xmm5, %xmm3
	mulss	%xmm3, %xmm1
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	mulss	%xmm5, %xmm3
	mulss	%xmm3, %xmm2
L407:
	movzbl	_hictinting+2044, %eax
	cmpw	$-1, _hictinting+2042
	je	L617
L410:
	movzbl	_hictinting+2042, %edx
	xorps	%xmm3, %xmm3
	movss	LC22, %xmm5
	cvtsi2ssl	%edx, %xmm3
	movzbl	_hictinting+2043, %edx
	mulss	%xmm5, %xmm3
	mulss	%xmm3, %xmm0
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%edx, %xmm3
	mulss	%xmm5, %xmm3
	mulss	%xmm3, %xmm1
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	mulss	%xmm5, %xmm3
	mulss	%xmm3, %xmm2
L409:
	movss	LC2, %xmm3
	movl	__ZZL17polymost_drawpolyPK4vec2IfEiiE19skyzbufferhack_pass, %ecx
	testl	%ecx, %ecx
	jne	L411
	movss	-560(%ebp), %xmm3
	subss	__ZL14drawpoly_alpha.lto_priv.0, %xmm3
	mulss	%xmm4, %xmm3
L411:
	movss	%xmm3, 12(%esp)
	movss	%xmm2, 8(%esp)
	movss	%xmm1, 4(%esp)
	movss	%xmm0, (%esp)
	call	*_glad_glColor4f
	movl	__ZL10pow2xsplit.lto_priv.0, %edx
	subl	$16, %esp
	testl	%edx, %edx
	je	L412
	cmpb	$0, -552(%ebp)
	je	L412
	movss	-164(%ebp), %xmm0
	movss	-592(%ebp), %xmm5
	movss	-160(%ebp), %xmm1
	movss	-232(%ebp), %xmm3
	movaps	%xmm0, %xmm4
	movaps	%xmm5, %xmm7
	subss	%xmm1, %xmm4
	subss	%xmm5, %xmm1
	subss	LC23, %xmm5
	subss	%xmm0, %xmm7
	movss	-88(%ebp), %xmm0
	movss	%xmm1, -500(%ebp)
	movss	-92(%ebp), %xmm1
	movaps	%xmm0, %xmm6
	movss	%xmm4, -496(%ebp)
	movss	-588(%ebp), %xmm4
	movaps	%xmm1, %xmm2
	subss	%xmm1, %xmm6
	movss	%xmm5, -652(%ebp)
	movss	-500(%ebp), %xmm5
	subss	%xmm4, %xmm2
	mulss	%xmm5, %xmm1
	movss	%xmm6, -596(%ebp)
	movaps	%xmm4, %xmm6
	movss	%xmm2, -616(%ebp)
	movaps	%xmm4, %xmm2
	subss	%xmm0, %xmm6
	subss	LC23, %xmm2
	mulss	%xmm7, %xmm0
	movss	%xmm2, -620(%ebp)
	movaps	%xmm4, %xmm2
	movss	-496(%ebp), %xmm4
	movss	%xmm6, -612(%ebp)
	movaps	%xmm7, %xmm6
	movss	-560(%ebp), %xmm7
	mulss	%xmm4, %xmm2
	movss	%xmm6, -584(%ebp)
	addss	%xmm2, %xmm1
	movss	-224(%ebp), %xmm2
	addss	%xmm1, %xmm0
	movaps	%xmm4, %xmm1
	mulss	%xmm3, %xmm1
	divss	%xmm0, %xmm7
	movss	-228(%ebp), %xmm0
	movaps	%xmm1, %xmm4
	movaps	%xmm5, %xmm1
	movss	-292(%ebp), %xmm5
	mulss	%xmm0, %xmm1
	mulss	-612(%ebp), %xmm0
	addss	%xmm4, %xmm1
	movaps	%xmm6, %xmm4
	movss	-288(%ebp), %xmm6
	mulss	%xmm2, %xmm4
	addss	%xmm4, %xmm1
	mulss	%xmm7, %xmm1
	movss	%xmm1, -528(%ebp)
	movss	-496(%ebp), %xmm1
	mulss	-296(%ebp), %xmm1
	movaps	%xmm1, %xmm4
	movss	-500(%ebp), %xmm1
	mulss	%xmm5, %xmm1
	addss	%xmm4, %xmm1
	movss	-584(%ebp), %xmm4
	mulss	%xmm6, %xmm4
	addss	%xmm4, %xmm1
	movss	-596(%ebp), %xmm4
	mulss	%xmm3, %xmm4
	mulss	%xmm7, %xmm1
	mulss	-504(%ebp), %xmm1
	addss	%xmm4, %xmm0
	movss	-616(%ebp), %xmm4
	mulss	-612(%ebp), %xmm5
	movl	-640(%ebp), %eax
	subl	-628(%ebp), %eax
	mulss	%xmm4, %xmm2
	movl	-556(%ebp), %edx
	mulss	%xmm4, %xmm6
	movss	-528(%ebp), %xmm4
	addss	%xmm2, %xmm0
	mulss	%xmm7, %xmm0
	movss	%xmm0, -520(%ebp)
	movss	-596(%ebp), %xmm0
	mulss	-296(%ebp), %xmm0
	addss	%xmm0, %xmm5
	addss	%xmm6, %xmm5
	movss	-620(%ebp), %xmm6
	movaps	%xmm6, %xmm2
	mulss	%xmm4, %xmm2
	movaps	%xmm5, %xmm0
	movss	-652(%ebp), %xmm5
	mulss	%xmm7, %xmm0
	mulss	-504(%ebp), %xmm0
	subss	%xmm2, %xmm3
	movss	-520(%ebp), %xmm2
	mulss	%xmm5, %xmm2
	subss	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	xorl	%eax, %eax
	movss	%xmm3, -536(%ebp)
	movss	LC23, %xmm3
	mulss	%xmm2, %xmm3
	mulss	%xmm3, %xmm4
	movss	%xmm3, -604(%ebp)
	movaps	%xmm4, %xmm2
	movaps	%xmm1, %xmm4
	subss	%xmm2, %xmm4
	movss	-520(%ebp), %xmm2
	mulss	%xmm6, %xmm1
	mulss	%xmm3, %xmm2
	movss	%xmm4, -544(%ebp)
	movaps	%xmm0, %xmm4
	mulss	%xmm5, %xmm0
	subss	%xmm2, %xmm4
	movss	-296(%ebp), %xmm2
	subss	%xmm1, %xmm2
	movss	%xmm4, -552(%ebp)
	xorps	%xmm4, %xmm4
	movaps	%xmm4, %xmm5
	subss	%xmm0, %xmm2
	movss	-536(%ebp), %xmm0
	mulss	-504(%ebp), %xmm2
	mulss	%xmm3, %xmm0
	subss	%xmm0, %xmm2
	movss	%xmm2, -512(%ebp)
	.p2align 4
	.p2align 3
L416:
	movss	(%ebx,%eax,4), %xmm0
	movss	(%edx,%eax,4), %xmm2
	movss	-544(%ebp), %xmm1
	movss	-552(%ebp), %xmm3
	mulss	%xmm0, %xmm1
	mulss	%xmm2, %xmm3
	mulss	-528(%ebp), %xmm0
	mulss	-520(%ebp), %xmm2
	addss	%xmm3, %xmm1
	addss	-512(%ebp), %xmm1
	addss	%xmm2, %xmm0
	addss	-536(%ebp), %xmm0
	divss	%xmm0, %xmm1
	testl	%eax, %eax
	je	L480
	comiss	%xmm1, %xmm5
	ja	L481
	maxss	%xmm4, %xmm1
	movaps	%xmm1, %xmm4
L414:
	addl	$1, %eax
	cmpl	%eax, -576(%ebp)
	jne	L416
	movl	-628(%ebp), %ebx
	xorps	%xmm0, %xmm0
	movss	-560(%ebp), %xmm1
	movss	%xmm7, -656(%ebp)
	movss	%xmm5, -608(%ebp)
	cvtsi2ssl	%ebx, %xmm0
	divss	%xmm0, %xmm1
	mulss	%xmm1, %xmm4
	movss	%xmm1, -556(%ebp)
	movss	%xmm4, (%esp)
	call	_floorf
	movss	-608(%ebp), %xmm5
	mulss	-556(%ebp), %xmm5
	fstps	-504(%ebp)
	cvttss2sil	-504(%ebp), %edx
	movl	%edx, -636(%ebp)
	movss	%xmm5, (%esp)
	call	_floorf
	fstps	-504(%ebp)
	cvttss2sil	-504(%ebp), %eax
	movl	%eax, -624(%ebp)
	cmpl	%eax, -636(%ebp)
	jl	L417
	movss	-360(%ebp), %xmm2
	movss	-356(%ebp), %xmm3
	imull	%eax, %ebx
	movss	-496(%ebp), %xmm1
	movss	-500(%ebp), %xmm0
	movss	-352(%ebp), %xmm4
	movss	-656(%ebp), %xmm7
	movl	%esi, -656(%ebp)
	mulss	%xmm2, %xmm1
	movss	-580(%ebp), %xmm6
	mulss	%xmm3, %xmm0
	addss	%xmm1, %xmm0
	movss	-584(%ebp), %xmm1
	mulss	%xmm4, %xmm1
	addss	%xmm1, %xmm0
	movss	-596(%ebp), %xmm1
	mulss	%xmm2, %xmm1
	mulss	%xmm7, %xmm0
	movaps	%xmm0, %xmm5
	movss	-612(%ebp), %xmm0
	mulss	%xmm6, %xmm5
	mulss	%xmm3, %xmm0
	movss	%xmm5, -608(%ebp)
	addss	%xmm1, %xmm0
	movss	-616(%ebp), %xmm1
	mulss	%xmm4, %xmm1
	addss	%xmm1, %xmm0
	mulss	%xmm7, %xmm0
	movss	-592(%ebp), %xmm7
	movaps	%xmm0, %xmm3
	movss	-620(%ebp), %xmm0
	movl	%ebx, -620(%ebp)
	mulss	%xmm6, %xmm3
	mulss	%xmm5, %xmm0
	movss	-588(%ebp), %xmm5
	movss	%xmm3, -612(%ebp)
	subss	%xmm0, %xmm2
	movss	-652(%ebp), %xmm0
	movl	%edi, -652(%ebp)
	mulss	%xmm3, %xmm0
	movaps	%xmm2, %xmm1
	movss	-512(%ebp), %xmm2
	subss	%xmm0, %xmm1
	movss	-544(%ebp), %xmm0
	mulss	%xmm5, %xmm0
	mulss	%xmm6, %xmm1
	mulss	-528(%ebp), %xmm5
	movss	%xmm1, -616(%ebp)
	movss	-552(%ebp), %xmm1
	mulss	%xmm7, %xmm1
	mulss	-520(%ebp), %xmm7
	addss	%xmm1, %xmm0
	addss	%xmm0, %xmm2
	movaps	%xmm5, %xmm0
	addss	%xmm7, %xmm0
	addss	-536(%ebp), %xmm0
	xorps	%xmm7, %xmm7
	cvtsi2ssl	%ebx, %xmm7
	divss	%xmm0, %xmm2
	movss	%xmm7, -504(%ebp)
	movss	%xmm2, -584(%ebp)
	.p2align 4
	.p2align 3
L431:
	movl	-628(%ebp), %edi
	addl	%edi, -620(%ebp)
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorps	%xmm5, %xmm5
	movss	-504(%ebp), %xmm7
	addl	$1, -624(%ebp)
	movss	-584(%ebp), %xmm3
	movss	%xmm7, -596(%ebp)
	cvtsi2ssl	-620(%ebp), %xmm5
	movss	%xmm7, -496(%ebp)
	movss	%xmm5, -504(%ebp)
	jmp	L428
	.p2align 4,,10
	.p2align 3
L619:
	cmpb	-500(%ebp), %bl
	je	L425
	movss	-528(%ebp), %xmm3
	movss	-544(%ebp), %xmm5
	movaps	%xmm1, %xmm4
	subss	-96(%ebp,%edx,4), %xmm4
	mulss	%xmm6, %xmm3
	subss	%xmm3, %xmm5
	movss	-520(%ebp), %xmm3
	mulss	%xmm6, %xmm3
	movss	-168(%ebp,%edx,4), %xmm6
	movaps	%xmm5, %xmm7
	movss	-552(%ebp), %xmm5
	movss	%xmm7, -500(%ebp)
	subss	%xmm3, %xmm5
	movaps	%xmm2, %xmm3
	subss	-168(%ebp,%edx,4), %xmm3
	movss	%xmm3, -580(%ebp)
	movss	-96(%ebp,%edx,4), %xmm3
	mulss	%xmm5, %xmm6
	mulss	%xmm7, %xmm3
	movss	-536(%ebp), %xmm7
	mulss	-504(%ebp), %xmm7
	addss	%xmm6, %xmm3
	movss	-512(%ebp), %xmm6
	subss	%xmm7, %xmm6
	movss	-580(%ebp), %xmm7
	mulss	%xmm7, %xmm5
	addss	%xmm6, %xmm3
	movss	-500(%ebp), %xmm6
	xorps	LC0, %xmm3
	mulss	%xmm4, %xmm6
	addss	%xmm6, %xmm5
	divss	%xmm5, %xmm3
	mulss	%xmm3, %xmm4
	mulss	%xmm7, %xmm3
	addss	-96(%ebp,%edx,4), %xmm4
	addss	-168(%ebp,%edx,4), %xmm3
	movss	%xmm4, -296(%ebp,%esi,4)
	movss	%xmm3, -360(%ebp,%esi,4)
	addl	$1, %esi
L425:
	movl	%edi, %ebx
	cmpb	-556(%ebp), %bl
	je	L426
	movss	-528(%ebp), %xmm3
	mulss	-496(%ebp), %xmm3
	movss	-520(%ebp), %xmm7
	movss	-96(%ebp,%edx,4), %xmm5
	mulss	-496(%ebp), %xmm7
	movss	-544(%ebp), %xmm4
	movss	-168(%ebp,%edx,4), %xmm6
	subss	%xmm5, %xmm1
	subss	%xmm3, %xmm4
	movss	-552(%ebp), %xmm3
	movss	%xmm6, -500(%ebp)
	movss	-500(%ebp), %xmm6
	subss	%xmm7, %xmm3
	movaps	%xmm5, %xmm7
	subss	%xmm6, %xmm2
	mulss	%xmm4, %xmm7
	mulss	%xmm1, %xmm4
	mulss	%xmm3, %xmm6
	movss	%xmm2, -556(%ebp)
	movaps	%xmm7, %xmm2
	movss	-536(%ebp), %xmm7
	mulss	-496(%ebp), %xmm7
	addss	%xmm6, %xmm2
	movss	-512(%ebp), %xmm6
	subss	%xmm7, %xmm6
	addss	%xmm6, %xmm2
	movss	-556(%ebp), %xmm6
	xorps	LC0, %xmm2
	mulss	%xmm6, %xmm3
	addss	%xmm4, %xmm3
	divss	%xmm3, %xmm2
	mulss	%xmm2, %xmm1
	mulss	%xmm6, %xmm2
	addss	-500(%ebp), %xmm2
	movss	%xmm2, -360(%ebp,%esi,4)
	addss	%xmm5, %xmm1
	movss	%xmm1, -296(%ebp,%esi,4)
	addl	$1, %esi
L426:
	testl	%eax, %eax
	je	L618
L483:
	movl	%eax, %edx
	movaps	%xmm0, %xmm3
L428:
	leal	1(%edx), %eax
	cmpl	%eax, -576(%ebp)
	je	L482
	movss	-96(%ebp,%eax,4), %xmm1
	movss	-544(%ebp), %xmm0
	movss	-552(%ebp), %xmm4
	movss	-520(%ebp), %xmm5
	movss	-168(%ebp,%eax,4), %xmm2
	mulss	%xmm1, %xmm0
	mulss	%xmm2, %xmm4
	mulss	%xmm2, %xmm5
	addss	%xmm4, %xmm0
	movss	-528(%ebp), %xmm4
	addss	-512(%ebp), %xmm0
	mulss	%xmm1, %xmm4
	addss	%xmm5, %xmm4
	addss	-536(%ebp), %xmm4
	divss	%xmm4, %xmm0
L418:
	comiss	-496(%ebp), %xmm3
	jb	L420
	movss	-504(%ebp), %xmm5
	comiss	%xmm3, %xmm5
	jb	L420
	movss	-96(%ebp,%edx,4), %xmm4
	movss	%xmm4, -296(%ebp,%esi,4)
	movss	-168(%ebp,%edx,4), %xmm4
	movss	%xmm4, -360(%ebp,%esi,4)
	addl	$1, %esi
L420:
	movss	-496(%ebp), %xmm7
	movss	-504(%ebp), %xmm6
	comiss	%xmm7, %xmm0
	seta	%bl
	comiss	%xmm7, %xmm3
	movl	%ebx, %edi
	seta	-556(%ebp)
	comiss	%xmm6, %xmm0
	seta	%bl
	comiss	%xmm6, %xmm3
	seta	-500(%ebp)
	comiss	%xmm0, %xmm3
	jnb	L619
	movl	%edi, %ecx
	cmpb	-556(%ebp), %cl
	je	L427
	movss	-496(%ebp), %xmm5
	movaps	%xmm1, %xmm4
	movss	-528(%ebp), %xmm3
	movss	-544(%ebp), %xmm6
	subss	-96(%ebp,%edx,4), %xmm4
	movss	-168(%ebp,%edx,4), %xmm7
	mulss	%xmm5, %xmm3
	subss	%xmm3, %xmm6
	movss	-520(%ebp), %xmm3
	mulss	%xmm5, %xmm3
	movss	-552(%ebp), %xmm5
	movss	%xmm6, -556(%ebp)
	subss	%xmm3, %xmm5
	movaps	%xmm2, %xmm3
	subss	-168(%ebp,%edx,4), %xmm3
	movss	%xmm3, -580(%ebp)
	movss	-96(%ebp,%edx,4), %xmm3
	mulss	%xmm5, %xmm7
	mulss	%xmm6, %xmm3
	movss	-512(%ebp), %xmm6
	addss	%xmm7, %xmm3
	movss	-536(%ebp), %xmm7
	mulss	-496(%ebp), %xmm7
	subss	%xmm7, %xmm6
	movss	-580(%ebp), %xmm7
	mulss	%xmm7, %xmm5
	addss	%xmm6, %xmm3
	movss	-556(%ebp), %xmm6
	xorps	LC0, %xmm3
	mulss	%xmm4, %xmm6
	addss	%xmm6, %xmm5
	divss	%xmm5, %xmm3
	mulss	%xmm3, %xmm4
	mulss	%xmm7, %xmm3
	addss	-96(%ebp,%edx,4), %xmm4
	addss	-168(%ebp,%edx,4), %xmm3
	movss	%xmm4, -296(%ebp,%esi,4)
	movss	%xmm3, -360(%ebp,%esi,4)
	addl	$1, %esi
L427:
	cmpb	-500(%ebp), %bl
	je	L426
	movss	-520(%ebp), %xmm7
	mulss	-504(%ebp), %xmm7
	movss	-168(%ebp,%edx,4), %xmm6
	movss	-528(%ebp), %xmm3
	mulss	-504(%ebp), %xmm3
	movss	-544(%ebp), %xmm4
	movss	%xmm6, -500(%ebp)
	movss	-96(%ebp,%edx,4), %xmm5
	movaps	%xmm7, %xmm6
	movss	-552(%ebp), %xmm7
	subss	%xmm5, %xmm1
	subss	%xmm6, %xmm7
	subss	%xmm3, %xmm4
	movss	-500(%ebp), %xmm6
	subss	%xmm6, %xmm2
	movaps	%xmm7, %xmm3
	movaps	%xmm5, %xmm7
	mulss	%xmm4, %xmm7
	mulss	%xmm3, %xmm6
	movss	%xmm2, -556(%ebp)
	mulss	%xmm1, %xmm4
	movaps	%xmm7, %xmm2
	movss	-536(%ebp), %xmm7
	mulss	-504(%ebp), %xmm7
	addss	%xmm6, %xmm2
	movss	-512(%ebp), %xmm6
	subss	%xmm7, %xmm6
	addss	%xmm6, %xmm2
	movss	-556(%ebp), %xmm6
	xorps	LC0, %xmm2
	mulss	%xmm6, %xmm3
	addss	%xmm4, %xmm3
	divss	%xmm3, %xmm2
	mulss	%xmm2, %xmm1
	addss	%xmm5, %xmm1
	movss	%xmm1, -296(%ebp,%esi,4)
	movaps	%xmm6, %xmm1
	mulss	%xmm2, %xmm1
	addss	-500(%ebp), %xmm1
	movss	%xmm1, -360(%ebp,%esi,4)
	addl	$1, %esi
	testl	%eax, %eax
	jne	L483
L618:
	cmpl	$2, %esi
	jg	L620
L429:
	movl	-636(%ebp), %edi
	cmpl	%edi, -624(%ebp)
	jle	L431
	movl	-656(%ebp), %esi
L417:
	cmpl	$3, _rendmode
	je	L433
	movl	-648(%ebp), %eax
	cmpl	$33984, %eax
	je	L458
	movl	%eax, %ebx
	.p2align 4
	.p2align 3
L436:
	cmpl	%ebx, _gl+4
	je	L435
	movl	%ebx, _gl+4
	movl	%ebx, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L435:
	movl	$5890, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glLoadIdentity
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	movl	%ebx, (%esp)
	subl	$1, %ebx
	call	*_glad_glClientActiveTexture
	subl	$4, %esp
	movl	$32888, (%esp)
	call	*_glad_glDisableClientState
	movss	-560(%ebp), %xmm7
	subl	$4, %esp
	movl	$34163, 4(%esp)
	movl	$8960, (%esp)
	movss	%xmm7, 8(%esp)
	call	*_glad_glTexEnvf
	subl	$12, %esp
	cmpl	$33984, %ebx
	jne	L436
L458:
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	testl	%eax, %eax
	jne	L263
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glColorMask
	subl	$16, %esp
	jmp	L263
	.p2align 4,,10
	.p2align 3
L633:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
L263:
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
L603:
	.cfi_restore_state
	movl	%esi, %eax
	call	__ZL23polymost_polyeditorfuncPK4vec2IfEi.part.0.lto_priv.0
	jmp	L264
	.p2align 4,,10
	.p2align 3
L604:
	movss	8(%esi), %xmm2
	movss	12(%esi), %xmm3
	movss	(%esi), %xmm1
	movss	20(%esi), %xmm0
	subss	%xmm2, %xmm1
	subss	%xmm3, %xmm0
	mulss	%xmm0, %xmm1
	movss	16(%esi), %xmm0
	subss	%xmm2, %xmm0
	movss	4(%esi), %xmm2
	subss	%xmm3, %xmm2
	mulss	%xmm2, %xmm0
	comiss	%xmm0, %xmm1
	jb	L267
	jmp	L263
	.p2align 4,,10
	.p2align 3
L607:
	call	_tileLoad.isra.0
	jmp	L304
	.p2align 4,,10
	.p2align 3
L606:
	movl	$0, _globalpal
	jmp	L303
	.p2align 4,,10
	.p2align 3
L609:
	movl	_r_useindexedcolortextures, %edx
	testl	%edx, %edx
	je	L313
	movl	_gltexfiltermode, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	sete	%dl
	sall	$9, %edx
	orl	-496(%ebp), %edx
	jmp	L312
	.p2align 4,,10
	.p2align 3
L482:
	movss	-584(%ebp), %xmm0
	movss	-592(%ebp), %xmm2
	xorl	%eax, %eax
	movss	-588(%ebp), %xmm1
	jmp	L418
	.p2align 4,,10
	.p2align 3
L481:
	movaps	%xmm1, %xmm5
	jmp	L414
	.p2align 4,,10
	.p2align 3
L480:
	movaps	%xmm1, %xmm4
	movaps	%xmm1, %xmm5
	movl	$1, %eax
	jmp	L416
	.p2align 4,,10
	.p2align 3
L620:
	movl	%esi, %eax
	xorl	%ebx, %ebx
	call	__Z29polymost_startBufferedDrawingi
	xorps	%xmm0, %xmm0
	movss	-560(%ebp), %xmm7
	movl	%esi, -580(%ebp)
	cvtsi2ssl	-640(%ebp), %xmm0
	movl	-600(%ebp), %esi
	movl	-652(%ebp), %edi
	movaps	%xmm7, %xmm5
	divss	%xmm0, %xmm5
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-644(%ebp), %xmm0
	divss	%xmm0, %xmm7
	movss	%xmm5, -500(%ebp)
	movss	%xmm7, -496(%ebp)
	movss	LC24, %xmm7
	movss	%xmm7, -556(%ebp)
	.p2align 4
	.p2align 3
L430:
	movss	(%edi,%ebx,4), %xmm1
	movss	(%esi,%ebx,4), %xmm3
	addl	$1, %ebx
	movss	-528(%ebp), %xmm0
	movss	-520(%ebp), %xmm2
	movss	-552(%ebp), %xmm4
	movss	-612(%ebp), %xmm5
	mulss	%xmm3, %xmm2
	mulss	%xmm1, %xmm0
	mulss	%xmm3, %xmm4
	mulss	%xmm3, %xmm5
	addss	%xmm2, %xmm0
	addss	-536(%ebp), %xmm0
	movss	-560(%ebp), %xmm2
	divss	%xmm0, %xmm2
	movss	-544(%ebp), %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm4, %xmm0
	movss	-608(%ebp), %xmm4
	addss	-512(%ebp), %xmm0
	mulss	%xmm1, %xmm4
	subss	_ghalfx, %xmm1
	addss	%xmm5, %xmm4
	addss	-616(%ebp), %xmm4
	mulss	%xmm2, %xmm1
	mulss	_grhalfxdown10x, %xmm1
	mulss	%xmm2, %xmm0
	mulss	%xmm2, %xmm4
	subss	-596(%ebp), %xmm0
	addss	-604(%ebp), %xmm0
	mulss	-496(%ebp), %xmm4
	mulss	-500(%ebp), %xmm0
	movss	%xmm1, -488(%ebp)
	movss	_ghalfy, %xmm1
	subss	%xmm3, %xmm1
	mulss	%xmm2, %xmm1
	mulss	_grhalfxdown10, %xmm1
	mulss	-556(%ebp), %xmm2
	movss	%xmm1, -484(%ebp)
	movss	%xmm2, -480(%ebp)
	movss	%xmm0, (%esp)
	movss	%xmm4, 4(%esp)
	movl	-488(%ebp), %eax
	movl	-484(%ebp), %edx
	movl	-480(%ebp), %ecx
	call	__Z19polymost_bufferVert4vec3IfE4vec2IfE
	cmpl	%ebx, -580(%ebp)
	jne	L430
	movl	$6, %eax
	call	__Z30polymost_finishBufferedDrawingi
	jmp	L429
	.p2align 4,,10
	.p2align 3
L383:
	movl	_globalshade, %eax
	movl	%eax, -544(%ebp)
L378:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-544(%ebp), %xmm0
	mulss	_shadescale, %xmm0
	cmpl	$4, _r_usenewshading
	je	L621
	movswl	_numshades, %eax
	movl	_shadescale_unbounded, %ecx
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	testl	%ecx, %ecx
	jne	L399
	cmpl	-544(%ebp), %eax
	jle	L399
	subl	$1, %eax
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
L398:
	movaps	%xmm0, %xmm1
	xorps	%xmm4, %xmm4
	cmpnltss	%xmm4, %xmm1
	andps	%xmm0, %xmm1
	minss	%xmm1, %xmm3
	movaps	%xmm3, %xmm0
	movaps	%xmm2, %xmm3
	subss	%xmm0, %xmm3
	divss	%xmm2, %xmm3
	jmp	L393
	.p2align 4,,10
	.p2align 3
L372:
	movswl	_globalpicnum, %eax
	movzbl	_alphahackarray(%eax), %eax
	testb	%al, %al
	je	L374
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	LC22, %xmm0
L375:
	call	__Z20buildgl_setAlphaFuncjf.constprop.0
	movl	-496(%ebp), %eax
	xorl	%ecx, %ecx
	cmpl	$3, -520(%ebp)
	sete	%cl
	movzbl	__ZL14drawpoly_blend.lto_priv.0, %edx
	shrl	%eax
	andl	$1, %eax
	call	_handle_blend
	movl	-632(%ebp), %eax
	movzwl	34(%eax), %eax
	movl	%eax, %edx
	andl	$2, %edx
	movw	%dx, -528(%ebp)
	jmp	L373
	.p2align 4,,10
	.p2align 3
L412:
	movl	-576(%ebp), %eax
	call	__Z29polymost_startBufferedDrawingi
	xorps	%xmm1, %xmm1
	movss	-560(%ebp), %xmm7
	movl	%esi, -528(%ebp)
	cvtsi2ssl	-640(%ebp), %xmm1
	movl	-512(%ebp), %esi
	movaps	%xmm7, %xmm0
	divss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	-644(%ebp), %xmm1
	divss	%xmm1, %xmm7
	mulss	-504(%ebp), %xmm0
	movss	%xmm0, -496(%ebp)
	movss	-580(%ebp), %xmm0
	mulss	%xmm7, %xmm0
	movss	LC24, %xmm7
	movss	%xmm7, -520(%ebp)
	movss	%xmm0, -504(%ebp)
	.p2align 4
	.p2align 3
L432:
	movss	(%ebx,%esi,4), %xmm1
	movl	-500(%ebp), %eax
	subss	_ghalfx, %xmm1
	movss	-560(%ebp), %xmm0
	divss	(%eax,%esi,4), %xmm0
	movl	-600(%ebp), %eax
	movss	(%edi,%esi,4), %xmm3
	mulss	%xmm0, %xmm1
	movss	(%eax,%esi,4), %xmm2
	movl	-556(%ebp), %eax
	mulss	_grhalfxdown10x, %xmm1
	mulss	%xmm0, %xmm3
	mulss	%xmm0, %xmm2
	mulss	-496(%ebp), %xmm3
	mulss	-504(%ebp), %xmm2
	movss	%xmm1, -456(%ebp)
	movss	_ghalfy, %xmm1
	subss	(%eax,%esi,4), %xmm1
	addl	$1, %esi
	mulss	%xmm0, %xmm1
	mulss	_grhalfxdown10, %xmm1
	mulss	-520(%ebp), %xmm0
	movss	%xmm1, -452(%ebp)
	movss	%xmm0, -448(%ebp)
	movss	%xmm3, (%esp)
	movss	%xmm2, 4(%esp)
	movl	-456(%ebp), %eax
	movl	-452(%ebp), %edx
	movl	-448(%ebp), %ecx
	call	__Z19polymost_bufferVert4vec3IfE4vec2IfE
	cmpl	%esi, -576(%ebp)
	jne	L432
	movl	$6, %eax
	movl	-528(%ebp), %esi
	call	__Z30polymost_finishBufferedDrawingi
	jmp	L417
L613:
	movswl	_globalpicnum, %eax
	movl	$1, %ecx
	movl	$255, %edx
	movl	%eax, -504(%ebp)
	call	_hicfindsubst
	testl	%eax, %eax
	je	L344
	movl	-496(%ebp), %edx
	xorl	%ecx, %ecx
	andl	$-4, %edx
	movl	%edx, (%esp)
	movl	-504(%ebp), %eax
	movl	$255, %edx
	call	_texcache_fetch
	movl	%eax, -504(%ebp)
	testl	%eax, %eax
	je	L342
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L342
	cmpb	$-1, 32(%eax)
	jne	L342
	movl	$1, %eax
	call	__Z25polymost_useDetailMappingc
	cmpl	$3, _rendmode
	je	L469
	addl	$1, -648(%ebp)
	movl	-648(%ebp), %eax
L346:
	movl	-504(%ebp), %edx
	movzwl	34(%edx), %ecx
	movl	12(%edx), %edx
	call	__Z27polymost_setupdetailtextureiii
	movl	$5890, (%esp)
	call	*_glad_glMatrixMode
	pushl	%ecx
	call	*_glad_glLoadIdentity
	movl	-632(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L347
	movss	12(%eax), %xmm0
	movss	-560(%ebp), %xmm7
	movss	16(%eax), %xmm1
	ucomiss	%xmm7, %xmm0
	jp	L348
	jne	L348
	ucomiss	%xmm7, %xmm1
	jp	L348
	je	L347
L348:
	movss	-560(%ebp), %xmm7
	movss	%xmm1, 4(%esp)
	movss	%xmm0, (%esp)
	movss	%xmm7, 8(%esp)
	call	*_glad_glScalef
	subl	$12, %esp
L347:
	movl	-504(%ebp), %eax
	movss	-560(%ebp), %xmm7
	movl	8(%eax), %eax
	movss	12(%eax), %xmm0
	movss	16(%eax), %xmm1
	ucomiss	%xmm7, %xmm0
	jp	L351
	jne	L351
	ucomiss	%xmm7, %xmm1
	jp	L351
	je	L353
L351:
	movss	-560(%ebp), %xmm7
	movss	%xmm1, 4(%esp)
	movss	%xmm0, (%esp)
	movss	%xmm7, 8(%esp)
	call	*_glad_glScalef
	subl	$12, %esp
L353:
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	pushl	%edx
	.p2align 4
	.p2align 3
L342:
	movl	_r_glowmapping, %eax
	testl	%eax, %eax
	je	L357
	movl	_usehightile, %eax
	testl	%eax, %eax
	jne	L356
	jmp	L357
	.p2align 4,,10
	.p2align 3
L600:
	movss	LC10, %xmm7
	movss	%xmm7, -560(%ebp)
	jmp	L340
	.p2align 4,,10
	.p2align 3
L315:
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	*_glad_glColorMask
	subl	$16, %esp
	movl	$1, -520(%ebp)
	movl	$1, -628(%ebp)
	jmp	L316
	.p2align 4,,10
	.p2align 3
L472:
	movss	-560(%ebp), %xmm7
	movss	%xmm7, -580(%ebp)
	movss	%xmm7, -504(%ebp)
	jmp	L367
	.p2align 4,,10
	.p2align 3
L403:
	cmpw	$0, -528(%ebp)
	je	L409
	jmp	L407
	.p2align 4,,10
	.p2align 3
L399:
	movaps	%xmm2, %xmm3
	jmp	L398
	.p2align 4,,10
	.p2align 3
L473:
	movl	-520(%ebp), %edx
	movl	-628(%ebp), %ecx
	movb	$0, -552(%ebp)
	movl	%edx, -644(%ebp)
	movl	%ecx, -640(%ebp)
	jmp	L368
	.p2align 4,,10
	.p2align 3
L605:
	movss	_ghalfx, %xmm2
	leal	-360(%ebp), %edx
	xorl	%eax, %eax
	movss	_ghalfy, %xmm7
	movss	_gchang, %xmm4
	movl	%edx, -600(%ebp)
	movss	_gshang, %xmm5
	movss	%xmm7, -500(%ebp)
	movaps	%xmm2, %xmm3
	divss	_gvrcorrection, %xmm3
	movaps	%xmm3, %xmm7
	movaps	%xmm3, %xmm6
	movss	%xmm2, -496(%ebp)
	flds	-496(%ebp)
	mulss	%xmm5, %xmm7
	flds	-500(%ebp)
	movl	$0, __ZL13flatskyrender
	mulss	%xmm4, %xmm6
	movl	-508(%ebp), %ecx
	movss	%xmm2, -504(%ebp)
	.p2align 4
	.p2align 3
L270:
	movss	4(%esi,%eax,8), %xmm1
	subss	-500(%ebp), %xmm1
	movaps	%xmm3, %xmm2
	movaps	%xmm1, %xmm0
	mulss	%xmm5, %xmm0
	mulss	%xmm4, %xmm1
	addss	%xmm6, %xmm0
	subss	%xmm7, %xmm1
	divss	%xmm0, %xmm2
	movss	(%esi,%eax,8), %xmm0
	subss	-504(%ebp), %xmm0
	movss	%xmm2, -496(%ebp)
	flds	-496(%ebp)
	movss	%xmm0, -496(%ebp)
	flds	-496(%ebp)
	fmul	%st(1), %st
	fadd	%st(3), %st
	fstps	-496(%ebp)
	movss	-496(%ebp), %xmm0
	movss	%xmm1, -496(%ebp)
	fmuls	-496(%ebp)
	movss	%xmm0, (%edx,%eax,8)
	fadd	%st(1), %st
	fstps	-496(%ebp)
	movss	-496(%ebp), %xmm0
	movss	%xmm0, 4(%edx,%eax,8)
	addl	$1, %eax
	cmpl	%eax, %ecx
	jg	L270
	fstp	%st(0)
	fstp	%st(0)
	xorps	%xmm0, %xmm0
	movl	_pskynummultis, %ebx
	movss	LC11, %xmm1
	cvtsi2ssl	_qglobalang, %xmm0
	movl	_multipsky, %eax
	movl	_multipskytile, %ecx
	leal	-1(%ebx), %edx
	mulss	%xmm1, %xmm0
	movss	%xmm0, -580(%ebp)
	testl	%edx, %edx
	jg	L273
	jmp	L272
	.p2align 4
	.p2align 4,,10
	.p2align 3
L623:
	subl	$1, %edx
	je	L622
L273:
	cmpl	(%ecx,%edx,4), %edi
	jne	L623
L272:
	movswl	_pskybits_override, %ebx
	sall	$5, %edx
	addl	%edx, %eax
	movl	%ebx, -500(%ebp)
	cmpw	$-1, %bx
	jne	L275
	movsbl	8(%eax), %ebx
	movl	%ebx, -500(%ebp)
L275:
	movl	_parallaxyscale_override, %ecx
	testl	%ecx, %ecx
	jne	L276
	movl	(%eax), %ecx
L276:
	xorps	%xmm0, %xmm0
	movl	_ydimen, %edx
	xorps	%xmm2, %xmm2
	xorps	%xmm3, %xmm3
	movzbl	_picsiz(%edi), %esi
	movl	_parallaxyoffs_override, %ebx
	cvtsi2ssl	%ecx, %xmm3
	xorps	%xmm7, %xmm7
	cvtsi2ssl	_qglobalhoriz, %xmm0
	sarl	%edx
	addl	4(%eax), %ebx
	movl	$0, __ZL12skyclamphack.lto_priv.0
	cvtsi2ssl	%edx, %xmm2
	movl	%esi, %ecx
	movl	%ebx, -496(%ebp)
	movl	$1, %edx
	leal	9(%eax), %ebx
	andl	$15, %ecx
	movl	$0, __ZL4xtex.lto_priv.0+16
	movl	%ebx, -608(%ebp)
	movl	%edx, %ebx
	mulss	%xmm1, %xmm0
	sall	%cl, %ebx
	movzbl	-500(%ebp), %ecx
	movl	$0, __ZL4xtex.lto_priv.0+20
	movl	%ebx, -596(%ebp)
	movl	$0, __ZL4xtex.lto_priv.0
	sall	%cl, %ebx
	movl	$0, __ZL4xtex.lto_priv.0+4
	cvtsi2ssl	%ebx, %xmm7
	movl	$0, __ZL4ytex.lto_priv.0+8
	movl	$0, __ZL4ytex.lto_priv.0+12
	subss	%xmm2, %xmm0
	movl	$0, __ZL4ytex.lto_priv.0
	movss	%xmm7, -604(%ebp)
	movss	LC10, %xmm7
	movl	$0, __ZL4ytex.lto_priv.0+4
	mulss	%xmm3, %xmm0
	xorps	%xmm3, %xmm3
	cvtsi2ssl	28(%eax), %xmm3
	movaps	%xmm7, %xmm4
	movzwl	_tilesiz+2(,%edi,4), %eax
	movss	%xmm7, -560(%ebp)
	mulss	LC13, %xmm3
	movl	%eax, %ecx
	sarw	%cx
	mulss	%xmm1, %xmm0
	movswl	%cx, %ecx
	addl	-496(%ebp), %ecx
	movss	LC12, %xmm1
	mulss	_fxdimen, %xmm1
	divss	%xmm3, %xmm4
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%ecx, %xmm3
	movl	%esi, %ecx
	movswl	%ax, %esi
	movl	$2, %eax
	shrb	$4, %cl
	addss	%xmm2, %xmm0
	sall	%cl, %edx
	xorps	%xmm2, %xmm2
	sall	%cl, %eax
	cvtsi2ssl	_xdimscale, %xmm2
	cmpl	%esi, %edx
	addss	__ZL13ghorizcorrect.lto_priv.0, %xmm0
	movss	%xmm1, -496(%ebp)
	mulss	_fviewingrange, %xmm2
	cmovne	%eax, %esi
	movss	%xmm0, __ZL6ghoriz.lto_priv.0
	flds	-496(%ebp)
	movl	_xdimscale, %eax
	mulss	%xmm1, %xmm3
	imull	_yxaspect
	movl	_viewingrange, %ebx
	mulss	%xmm1, %xmm2
	sarl	$31, %ebx
	fstl	__ZL4otex.lto_priv.0
	movl	%eax, -496(%ebp)
	movl	%edx, -492(%ebp)
	movl	%ebx, %edx
	movl	-496(%ebp), %ebx
	movl	-492(%ebp), %ecx
	imull	_viewingrange, %ecx
	imull	%ebx, %edx
	movl	%ebx, %eax
	addl	%edx, %ecx
	mull	_viewingrange
	mulss	%xmm4, %xmm2
	addl	%ecx, %edx
	movl	%eax, -496(%ebp)
	movl	%edx, -492(%ebp)
	fildq	-496(%ebp)
	mulss	%xmm2, %xmm0
	subss	%xmm0, %xmm3
	jns	L278
	fadds	LC14
L278:
	fstpl	-496(%ebp)
	fldl	-496(%ebp)
	fmuls	-604(%ebp)
	movss	%xmm2, -496(%ebp)
	movl	_r_parallaxskypanning, %edx
	fmulp	%st, %st(1)
	fmull	LC15
	fstpl	__ZL4xtex.lto_priv.0+8
	flds	-496(%ebp)
	fstpl	__ZL4ytex.lto_priv.0+16
	testl	%edx, %edx
	je	L279
	mulss	__ZL18global_cf_ypanning, %xmm1
	movaps	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%esi, %xmm1
	mulss	%xmm1, %xmm0
	mulss	LC9, %xmm0
	addss	%xmm0, %xmm3
L279:
	movl	-508(%ebp), %eax
	movss	%xmm3, -496(%ebp)
	flds	-496(%ebp)
	leal	-352(%ebp), %ecx
	movss	-360(%ebp), %xmm7
	leal	-1(%eax), %ebx
	movl	%ebx, -536(%ebp)
	movl	-600(%ebp), %ebx
	movaps	%xmm7, %xmm2
	movaps	%xmm7, %xmm4
	fstpl	__ZL4otex.lto_priv.0+16
	movss	%xmm7, -512(%ebp)
	leal	(%ebx,%eax,8), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L282:
	movss	-8(%eax), %xmm1
	subl	$8, %eax
	movaps	%xmm1, %xmm0
	maxss	%xmm2, %xmm1
	minss	%xmm4, %xmm0
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm4
	cmpl	%ecx, %eax
	jne	L282
	movswl	_tilesiz(,%edi,4), %eax
	cmpl	%eax, -596(%ebp)
	movss	%xmm1, -612(%ebp)
	movl	%eax, -616(%ebp)
	setne	%al
	movzbl	%al, %eax
	testl	%edx, %edx
	je	L283
	cvttss2sil	__ZL18global_cf_xpanning, %edx
	orl	%edx, %eax
L283:
	testl	%eax, %eax
	movl	%edx, -496(%ebp)
	sete	%al
	movss	%xmm0, -520(%ebp)
	movzbl	%al, %eax
	movss	%xmm4, -504(%ebp)
	addl	%eax, %eax
	call	__Z17polymost_setClampc
	movss	-560(%ebp), %xmm7
	movss	_ghalfx, %xmm3
	movss	LC16, %xmm2
	movss	-520(%ebp), %xmm0
	movss	_fviewingrange, %xmm1
	movzwl	_globalpicnum, %esi
	mulss	%xmm3, %xmm2
	subss	%xmm3, %xmm0
	movl	_globalclipdist, %eax
	movl	-500(%ebp), %edx
	movss	-504(%ebp), %xmm4
	movl	-600(%ebp), %edi
	movl	$0, _globalclipdist
	movl	%eax, -632(%ebp)
	movswl	%si, %eax
	movl	%eax, -552(%ebp)
	movl	$11, %eax
	subl	%edx, %eax
	movw	%si, -636(%ebp)
	leal	-296(%ebp), %esi
	divss	%xmm2, %xmm1
	movl	%eax, %ecx
	movl	%eax, -584(%ebp)
	movss	%xmm4, -588(%ebp)
	divss	%xmm1, %xmm7
	mulss	%xmm1, %xmm0
	addss	-580(%ebp), %xmm0
	cvttss2sil	%xmm0, %eax
	sarl	%cl, %eax
	movl	%edx, %ecx
	movl	%eax, %ebx
	movl	$1, %eax
	sall	%cl, %eax
	subl	$1, %eax
	movl	%eax, -620(%ebp)
	movl	-568(%ebp), %eax
	orl	$32, %eax
	movl	%eax, -624(%ebp)
	leal	-168(%ebp), %eax
	movl	%eax, -556(%ebp)
	movss	%xmm7, -592(%ebp)
	xorps	%xmm7, %xmm7
	cvtsi2ssl	-496(%ebp), %xmm7
	movss	%xmm7, -628(%ebp)
	movaps	%xmm3, %xmm7
	.p2align 4
	.p2align 3
L302:
	fldl	__ZL4otex.lto_priv.0
	movl	-620(%ebp), %eax
	movss	%xmm7, -496(%ebp)
	xorps	%xmm0, %xmm0
	fldl	__ZL4xtex.lto_priv.0+8
	movl	-608(%ebp), %ecx
	andl	%ebx, %eax
	movl	-616(%ebp), %edx
	movsbw	(%ecx,%eax), %ax
	movzbl	-584(%ebp), %ecx
	addw	-552(%ebp), %ax
	fstl	-544(%ebp)
	flds	-496(%ebp)
	movw	%ax, _globalpicnum
	movl	%ebx, %eax
	sall	%cl, %eax
	fld	%st(1)
	cvtsi2ssl	%eax, %xmm0
	fmuls	-496(%ebp)
	cmpl	%edx, -596(%ebp)
	je	L284
	andl	$2047, %eax
	xorps	%xmm1, %xmm1
	subss	-580(%ebp), %xmm0
	cvtsi2ssl	%eax, %xmm1
	mulss	-604(%ebp), %xmm1
	mulss	LC17, %xmm1
	fld	%st(3)
	mulss	-592(%ebp), %xmm0
	addss	-628(%ebp), %xmm1
	movss	%xmm1, -496(%ebp)
	fmuls	-496(%ebp)
	fxch	%st(3)
	addss	%xmm7, %xmm0
	movss	%xmm0, -496(%ebp)
	fmuls	-496(%ebp)
	fsubrp	%st, %st(3)
	fxch	%st(2)
L285:
	addl	$1, %ebx
	movzbl	-584(%ebp), %ecx
	xorps	%xmm0, %xmm0
	movaps	%xmm7, %xmm2
	movl	%ebx, %eax
	movss	-612(%ebp), %xmm5
	fstl	__ZL4otex.lto_priv.0+8
	leal	-384(%ebp), %edx
	sall	%cl, %eax
	leal	-488(%ebp), %ecx
	cvtsi2ssl	%eax, %xmm0
	subss	-580(%ebp), %xmm0
	movl	$-1, %eax
	mulss	-592(%ebp), %xmm0
	addss	%xmm7, %xmm0
	comiss	%xmm5, %xmm0
	cmovbe	-552(%ebp), %eax
	minss	%xmm0, %xmm5
	movl	%eax, -552(%ebp)
	movl	__ZL4otex.lto_priv.0, %eax
	movaps	%xmm5, %xmm0
	movl	%eax, -456(%ebp)
	movl	__ZL4otex.lto_priv.0+4, %eax
	movl	%eax, -452(%ebp)
	movl	__ZL4otex.lto_priv.0+8, %eax
	movl	%eax, -448(%ebp)
	movl	__ZL4otex.lto_priv.0+12, %eax
	movl	%eax, -444(%ebp)
	movl	__ZL4otex.lto_priv.0+16, %eax
	movl	%eax, -440(%ebp)
	movl	__ZL4otex.lto_priv.0+20, %eax
	movl	%eax, -436(%ebp)
	movl	__ZL4xtex.lto_priv.0, %eax
	movl	%eax, -432(%ebp)
	movl	__ZL4xtex.lto_priv.0+4, %eax
	movl	%eax, -428(%ebp)
	movl	__ZL4xtex.lto_priv.0+8, %eax
	movl	%eax, -424(%ebp)
	movl	__ZL4xtex.lto_priv.0+12, %eax
	movl	%eax, -420(%ebp)
	movl	__ZL4xtex.lto_priv.0+16, %eax
	movl	%eax, -416(%ebp)
	movl	__ZL4xtex.lto_priv.0+20, %eax
	movl	%eax, -412(%ebp)
	movl	__ZL4ytex.lto_priv.0, %eax
	movl	%eax, -408(%ebp)
	movl	__ZL4ytex.lto_priv.0+4, %eax
	movss	_ghalfy, %xmm5
	movss	LC18, %xmm3
	movl	%eax, -404(%ebp)
	movl	__ZL4ytex.lto_priv.0+8, %eax
	mulss	%xmm5, %xmm3
	movss	%xmm5, -500(%ebp)
	movl	%eax, -400(%ebp)
	movl	__ZL4ytex.lto_priv.0+12, %eax
	movl	%eax, -396(%ebp)
	movl	__ZL4ytex.lto_priv.0+16, %eax
	movss	%xmm3, -496(%ebp)
	movss	LC19, %xmm3
	movl	%eax, -392(%ebp)
	movl	__ZL4ytex.lto_priv.0+20, %eax
	mulss	%xmm5, %xmm3
	movss	LC18, %xmm5
	movl	%eax, -388(%ebp)
	xorl	%eax, %eax
	mulss	%xmm7, %xmm5
	unpcklps	%xmm3, %xmm2
	movss	%xmm3, -504(%ebp)
	movss	%xmm5, -520(%ebp)
	flds	-520(%ebp)
	movaps	%xmm5, %xmm1
	fldl	__ZL4ytex.lto_priv.0
	fmuls	-496(%ebp)
	fldl	__ZL4xtex.lto_priv.0
	movss	-496(%ebp), %xmm5
	fmul	%st(2), %st
	fxch	%st(1)
	unpcklps	%xmm5, %xmm1
	movss	LC19, %xmm5
	movlhps	%xmm2, %xmm1
	movups	%xmm1, -488(%ebp)
	mulss	%xmm7, %xmm5
	fstl	-528(%ebp)
	faddp	%st, %st(1)
	movss	%xmm5, -520(%ebp)
	fadd	%st(5), %st
	movss	%xmm5, -472(%ebp)
	movss	-496(%ebp), %xmm5
	movss	%xmm5, -468(%ebp)
	movaps	%xmm7, %xmm5
	fstpl	-168(%ebp)
	fldl	__ZL4ytex.lto_priv.0+8
	fmuls	-496(%ebp)
	divss	_gvrcorrection, %xmm5
	movss	_gchang, %xmm6
	movaps	%xmm5, %xmm2
	fldl	-544(%ebp)
	fmul	%st(2), %st
	fadd	%st(1), %st
	fadd	%st(3), %st
	fstpl	-160(%ebp)
	fldl	__ZL4ytex.lto_priv.0+16
	fmuls	-496(%ebp)
	fldl	__ZL4xtex.lto_priv.0+16
	fmulp	%st, %st(3)
	fadd	%st, %st(2)
	fxch	%st(2)
	faddl	__ZL4otex.lto_priv.0+16
	fstpl	-152(%ebp)
	fldl	__ZL4xtex.lto_priv.0
	fmul	%st(4), %st
	fldl	__ZL4ytex.lto_priv.0
	fmuls	-504(%ebp)
	faddp	%st, %st(1)
	fadd	%st(6), %st
	fstpl	-144(%ebp)
	fldl	__ZL4ytex.lto_priv.0+8
	fmuls	-504(%ebp)
	faddp	%st, %st(5)
	fxch	%st(4)
	fadd	%st(2), %st
	fstpl	-136(%ebp)
	fldl	__ZL4xtex.lto_priv.0+16
	fmul	%st(3), %st
	fldl	__ZL4ytex.lto_priv.0+16
	fmuls	-504(%ebp)
	faddp	%st, %st(1)
	faddl	__ZL4otex.lto_priv.0+16
	fstpl	-128(%ebp)
	fldl	__ZL4xtex.lto_priv.0
	fmuls	-520(%ebp)
	faddl	-528(%ebp)
	faddp	%st, %st(5)
	flds	-520(%ebp)
	fxch	%st(5)
	fstpl	-120(%ebp)
	fldl	-544(%ebp)
	fmul	%st(5), %st
	faddp	%st, %st(4)
	fxch	%st(3)
	faddp	%st, %st(1)
	fstpl	-112(%ebp)
	fldl	__ZL4xtex.lto_priv.0+16
	fmulp	%st, %st(3)
	fxch	%st(2)
	faddp	%st, %st(1)
	faddl	__ZL4otex.lto_priv.0+16
	fstpl	-104(%ebp)
	movss	%xmm6, -504(%ebp)
	mulss	%xmm5, %xmm6
	movss	_gshang, %xmm3
	flds	-500(%ebp)
	movl	%ebx, -520(%ebp)
	movl	-556(%ebp), %ebx
	mulss	%xmm3, %xmm2
	movss	%xmm2, -544(%ebp)
L287:
	movss	4(%ecx), %xmm1
	movaps	%xmm6, %xmm2
	addl	$8, %ecx
	addl	$8, %edx
	subss	-500(%ebp), %xmm1
	movaps	%xmm1, %xmm4
	mulss	%xmm3, %xmm4
	mulss	-504(%ebp), %xmm1
	addss	-544(%ebp), %xmm1
	subss	%xmm4, %xmm2
	movaps	%xmm5, %xmm4
	divss	%xmm2, %xmm4
	movss	-8(%ecx), %xmm2
	subss	%xmm7, %xmm2
	movss	%xmm4, -496(%ebp)
	flds	-496(%ebp)
	movss	%xmm2, -496(%ebp)
	flds	-496(%ebp)
	fmul	%st(1), %st
	fadd	%st(3), %st
	fstps	-496(%ebp)
	movss	-496(%ebp), %xmm2
	movss	%xmm1, -496(%ebp)
	flds	-496(%ebp)
	movss	%xmm2, -8(%edx)
	fmul	%st(1), %st
	fadd	%st(2), %st
	fstps	-496(%ebp)
	fldl	(%ebx,%eax)
	movss	-496(%ebp), %xmm1
	movss	%xmm1, -4(%edx)
	fmul	%st(1), %st
	fstpl	-96(%ebp,%eax)
	fldl	-160(%ebp,%eax)
	fmul	%st(1), %st
	fstpl	-88(%ebp,%eax)
	fldl	-152(%ebp,%eax)
	fstl	-496(%ebp)
	fmulp	%st, %st(1)
	fstpl	-80(%ebp,%eax)
	addl	$24, %eax
	cmpl	$72, %eax
	jne	L287
	movss	-372(%ebp), %xmm1
	movss	-364(%ebp), %xmm2
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movl	-520(%ebp), %ebx
	movaps	%xmm1, %xmm4
	subss	%xmm2, %xmm4
	subss	-380(%ebp), %xmm2
	movss	%xmm4, -496(%ebp)
	movss	-380(%ebp), %xmm4
	flds	-496(%ebp)
	movss	%xmm2, -496(%ebp)
	flds	-496(%ebp)
	subss	%xmm1, %xmm4
	movss	%xmm4, -496(%ebp)
	flds	-496(%ebp)
	fxch	%st(2)
	fsts	-496(%ebp)
	fxch	%st(1)
	movss	-496(%ebp), %xmm2
	mulss	-384(%ebp), %xmm2
	fsts	-496(%ebp)
	movss	-496(%ebp), %xmm1
	mulss	-376(%ebp), %xmm1
	addss	%xmm2, %xmm1
	movss	-368(%ebp), %xmm2
	mulss	%xmm4, %xmm2
	movss	-560(%ebp), %xmm4
	addss	%xmm2, %xmm1
	divss	%xmm1, %xmm4
	movss	%xmm4, -496(%ebp)
	flds	-496(%ebp)
	fldl	-96(%ebp)
	fmul	%st(3), %st
	fldl	-72(%ebp)
	fmul	%st(3), %st
	faddp	%st, %st(1)
	fldl	-48(%ebp)
	fmul	%st(5), %st
	faddp	%st, %st(1)
	fmul	%st(1), %st
	fstl	-520(%ebp)
	fstpl	__ZL4xtex.lto_priv.0
	fldl	-88(%ebp)
	fmul	%st(3), %st
	fldl	-64(%ebp)
	fmul	%st(3), %st
	faddp	%st, %st(1)
	fldl	-40(%ebp)
	fmul	%st(5), %st
	faddp	%st, %st(1)
	fmul	%st(1), %st
	fstl	-528(%ebp)
	fstpl	__ZL4xtex.lto_priv.0+8
	fldl	-80(%ebp)
	fmulp	%st, %st(3)
	fldl	-56(%ebp)
	movss	-368(%ebp), %xmm4
	subss	-376(%ebp), %xmm4
	fmulp	%st, %st(2)
	fxch	%st(2)
	movss	%xmm4, -496(%ebp)
	movss	-384(%ebp), %xmm4
	subss	-368(%ebp), %xmm4
	faddp	%st, %st(1)
	fldl	-32(%ebp)
	fmulp	%st, %st(3)
	faddp	%st, %st(2)
	fmul	%st, %st(1)
	fxch	%st(1)
	fstl	-568(%ebp)
	fstpl	__ZL4xtex.lto_priv.0+16
	flds	-496(%ebp)
	movss	%xmm4, -496(%ebp)
	flds	-496(%ebp)
	fldl	-96(%ebp)
	movss	-376(%ebp), %xmm4
	subss	-384(%ebp), %xmm4
	fmul	%st(2), %st
	movss	%xmm4, -496(%ebp)
	fldl	-72(%ebp)
	fmul	%st(2), %st
	faddp	%st, %st(1)
	fldl	-48(%ebp)
	fmuls	-496(%ebp)
	faddp	%st, %st(1)
	fmul	%st(3), %st
	fstl	-576(%ebp)
	fstpl	__ZL4ytex.lto_priv.0
	fldl	-88(%ebp)
	fmul	%st(2), %st
	fldl	-64(%ebp)
	fmul	%st(2), %st
	faddp	%st, %st(1)
	fldl	-40(%ebp)
	fmuls	-496(%ebp)
	faddp	%st, %st(1)
	fmul	%st(3), %st
	fstl	__ZL4ytex.lto_priv.0+8
	fldl	-80(%ebp)
	fmulp	%st, %st(3)
	fldl	-56(%ebp)
	fmulp	%st, %st(2)
	fxch	%st(1)
	faddp	%st, %st(2)
	fldl	-32(%ebp)
	fmuls	-496(%ebp)
	faddp	%st, %st(2)
	fxch	%st(1)
	fmulp	%st, %st(2)
	fxch	%st(1)
	fstl	__ZL4ytex.lto_priv.0+16
	fldl	-520(%ebp)
	fmuls	-384(%ebp)
	fsubrl	-96(%ebp)
	movl	%ebx, -520(%ebp)
	fldl	-576(%ebp)
	fmuls	-380(%ebp)
	movl	%esi, -576(%ebp)
	movss	-588(%ebp), %xmm4
	fsubrp	%st, %st(1)
	fstpl	__ZL4otex.lto_priv.0
	fldl	-528(%ebp)
	fmuls	-384(%ebp)
	fsubrl	-88(%ebp)
	fxch	%st(2)
	movss	%xmm0, -528(%ebp)
	fmuls	-380(%ebp)
	fsubrp	%st, %st(2)
	fxch	%st(1)
	fstpl	__ZL4otex.lto_priv.0+8
	fldl	-568(%ebp)
	fmuls	-384(%ebp)
	fsubrl	-80(%ebp)
	fxch	%st(1)
	movss	%xmm5, -568(%ebp)
	fmuls	-380(%ebp)
	fsubrp	%st, %st(1)
	fstpl	__ZL4otex.lto_priv.0+16
	jmp	L292
	.p2align 4,,10
	.p2align 3
L625:
	movl	%eax, -496(%ebp)
	movss	(%edi,%eax,8), %xmm2
L288:
	movss	-8(%edi,%eax,8), %xmm1
	comiss	%xmm4, %xmm1
	jb	L289
	movl	-8(%edi,%eax,8), %ebx
	movl	-4(%edi,%eax,8), %esi
	movl	%ebx, -296(%ebp,%ecx,8)
	movl	%esi, -292(%ebp,%ecx,8)
	addl	$1, %ecx
L289:
	comiss	%xmm4, %xmm1
	setnb	%bl
	comiss	%xmm4, %xmm2
	setnb	%dl
	cmpb	%dl, %bl
	je	L291
	movaps	%xmm4, %xmm0
	subss	%xmm1, %xmm2
	movl	-496(%ebp), %esi
	movss	-4(%edi,%eax,8), %xmm5
	movss	%xmm4, -296(%ebp,%ecx,8)
	subss	%xmm1, %xmm0
	movss	-356(%ebp,%esi,8), %xmm1
	divss	%xmm2, %xmm0
	subss	%xmm5, %xmm1
	mulss	%xmm1, %xmm0
	addss	%xmm5, %xmm0
	movss	%xmm0, -292(%ebp,%ecx,8)
	addl	$1, %ecx
L291:
	cmpl	%eax, -508(%ebp)
	jle	L624
L292:
	movl	%eax, %edx
	addl	$1, %eax
	cmpl	%edx, -536(%ebp)
	jg	L625
	movl	$0, -496(%ebp)
	movss	-512(%ebp), %xmm2
	jmp	L288
	.p2align 4,,10
	.p2align 3
L624:
	movl	-520(%ebp), %ebx
	movss	-528(%ebp), %xmm0
	movss	-568(%ebp), %xmm5
	movl	-576(%ebp), %esi
	testl	%ecx, %ecx
	jle	L467
	movl	%ebx, -568(%ebp)
	leal	-1(%ecx), %eax
	xorl	%edx, %edx
	movl	%ecx, -528(%ebp)
	movl	%edi, -588(%ebp)
	movl	%eax, -520(%ebp)
	xorl	%eax, %eax
	movss	%xmm5, -576(%ebp)
	.p2align 4
	.p2align 3
L298:
	movl	%eax, %ecx
	addl	$1, %eax
	cmpl	%ecx, -520(%ebp)
	movl	$0, %ecx
	movss	-8(%esi,%eax,8), %xmm2
	cmovg	%eax, %ecx
	comiss	%xmm2, %xmm0
	movl	%ecx, -496(%ebp)
	jb	L295
	movl	-8(%esi,%eax,8), %ecx
	movl	-4(%esi,%eax,8), %ebx
	movl	%ecx, -232(%ebp,%edx,8)
	movl	%ebx, -228(%ebp,%edx,8)
	addl	$1, %edx
L295:
	movl	-496(%ebp), %edi
	comiss	%xmm2, %xmm0
	movss	-296(%ebp,%edi,8), %xmm4
	setnb	%bl
	comiss	%xmm4, %xmm0
	movl	%ebx, %ecx
	setnb	%bl
	cmpb	%bl, %cl
	je	L297
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm4
	movl	-496(%ebp), %edi
	movss	-4(%esi,%eax,8), %xmm5
	movss	%xmm0, -232(%ebp,%edx,8)
	subss	%xmm2, %xmm1
	movss	-292(%ebp,%edi,8), %xmm2
	divss	%xmm4, %xmm1
	subss	%xmm5, %xmm2
	mulss	%xmm2, %xmm1
	addss	%xmm5, %xmm1
	movss	%xmm1, -228(%ebp,%edx,8)
	addl	$1, %edx
L297:
	cmpl	%eax, -528(%ebp)
	jne	L298
	movl	-568(%ebp), %ebx
	movss	-576(%ebp), %xmm5
	movl	-588(%ebp), %edi
	testl	%edx, %edx
	jle	L634
	movss	-544(%ebp), %xmm4
	xorl	%eax, %eax
	leal	-232(%ebp), %ecx
	movss	%xmm0, -520(%ebp)
	.p2align 4
	.p2align 3
L300:
	movss	4(%ecx,%eax,8), %xmm0
	movaps	%xmm3, %xmm2
	movaps	%xmm6, %xmm1
	subss	-500(%ebp), %xmm0
	mulss	%xmm0, %xmm2
	mulss	-504(%ebp), %xmm0
	subss	%xmm2, %xmm1
	movaps	%xmm5, %xmm2
	addss	%xmm4, %xmm0
	divss	%xmm1, %xmm2
	movss	(%ecx,%eax,8), %xmm1
	subss	%xmm7, %xmm1
	movss	%xmm2, -496(%ebp)
	flds	-496(%ebp)
	movss	%xmm1, -496(%ebp)
	flds	-496(%ebp)
	fmul	%st(1), %st
	fadd	%st(3), %st
	fstps	-496(%ebp)
	movss	-496(%ebp), %xmm1
	movss	%xmm0, -496(%ebp)
	fmuls	-496(%ebp)
	movss	%xmm1, (%esi,%eax,8)
	fadd	%st(1), %st
	fstps	-496(%ebp)
	movss	-496(%ebp), %xmm0
	movss	%xmm0, 4(%esi,%eax,8)
	addl	$1, %eax
	cmpl	%edx, %eax
	jne	L300
	fstp	%st(0)
	fstp	%st(0)
	movss	-520(%ebp), %xmm0
	jmp	L293
L634:
	fstp	%st(0)
	fstp	%st(0)
	.p2align 4
	.p2align 3
L293:
	movl	-624(%ebp), %ecx
	movl	%esi, %eax
	movss	%xmm0, -496(%ebp)
	call	__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0
	movl	-456(%ebp), %eax
	movl	%eax, __ZL4otex.lto_priv.0
	movl	-452(%ebp), %eax
	movl	%eax, __ZL4otex.lto_priv.0+4
	movl	-448(%ebp), %eax
	movl	%eax, __ZL4otex.lto_priv.0+8
	movl	-444(%ebp), %eax
	movl	%eax, __ZL4otex.lto_priv.0+12
	movl	-440(%ebp), %eax
	movl	%eax, __ZL4otex.lto_priv.0+16
	movl	-436(%ebp), %eax
	movl	%eax, __ZL4otex.lto_priv.0+20
	movl	-432(%ebp), %eax
	movl	%eax, __ZL4xtex.lto_priv.0
	movl	-428(%ebp), %eax
	movl	%eax, __ZL4xtex.lto_priv.0+4
	movl	-424(%ebp), %eax
	movl	%eax, __ZL4xtex.lto_priv.0+8
	movl	-420(%ebp), %eax
	movl	%eax, __ZL4xtex.lto_priv.0+12
	movl	-416(%ebp), %eax
	movl	%eax, __ZL4xtex.lto_priv.0+16
	movl	-412(%ebp), %eax
	movl	%eax, __ZL4xtex.lto_priv.0+20
	movl	-408(%ebp), %eax
	movl	%eax, __ZL4ytex.lto_priv.0
	movl	-404(%ebp), %eax
	movl	%eax, __ZL4ytex.lto_priv.0+4
	movl	-400(%ebp), %eax
	movl	%eax, __ZL4ytex.lto_priv.0+8
	movl	-396(%ebp), %eax
	movl	%eax, __ZL4ytex.lto_priv.0+12
	movl	-392(%ebp), %eax
	movl	%eax, __ZL4ytex.lto_priv.0+16
	movl	-388(%ebp), %eax
	movl	%eax, __ZL4ytex.lto_priv.0+20
	movl	-552(%ebp), %eax
	testl	%eax, %eax
	js	L301
	movss	-496(%ebp), %xmm0
	movss	_ghalfx, %xmm7
	movss	%xmm0, -588(%ebp)
	jmp	L302
	.p2align 4,,10
	.p2align 3
L284:
	fstp	%st(2)
	fxch	%st(1)
	movss	-580(%ebp), %xmm1
	fld	%st(2)
	subss	%xmm0, %xmm1
	mulss	-604(%ebp), %xmm1
	movss	LC17, %xmm0
	mulss	%xmm1, %xmm0
	addss	-628(%ebp), %xmm0
	movss	%xmm0, -496(%ebp)
	fmuls	-496(%ebp)
	fsub	%st(1), %st
	fxch	%st(1)
	fxch	%st(2)
	fxch	%st(1)
	jmp	L285
	.p2align 4,,10
	.p2align 3
L467:
	fstp	%st(0)
	fstp	%st(0)
	xorl	%edx, %edx
	jmp	L293
	.p2align 4,,10
	.p2align 3
L301:
	movl	-632(%ebp), %eax
	movzwl	-636(%ebp), %esi
	movl	%eax, _globalclipdist
	xorl	%eax, %eax
	movw	%si, _globalpicnum
	call	__Z17polymost_setClampc
	movl	$1, __ZL13flatskyrender
	jmp	L263
	.p2align 4,,10
	.p2align 3
L616:
	movl	_pr_artmapping, %eax
	testl	%eax, %eax
	je	L383
	movl	_gltexfiltermode, %eax
	testl	%eax, %eax
	jne	L383
	testb	$1, _globalflags
	jne	L383
	movl	-632(%ebp), %ecx
	movl	8(%ecx), %eax
	testl	%eax, %eax
	jne	L383
	cmpw	$30463, _globalpicnum
	jg	L383
	movss	-560(%ebp), %xmm0
	movaps	%xmm0, %xmm2
	movaps	%xmm0, %xmm1
	jmp	L382
	.p2align 4,,10
	.p2align 3
L374:
	movl	-632(%ebp), %eax
	xorps	%xmm0, %xmm0
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L375
	movss	20(%eax), %xmm1
	cmpless	%xmm1, %xmm0
	andps	%xmm1, %xmm0
	jmp	L375
L433:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L437
	xorps	%xmm0, %xmm0
	ucomiss	__ZL25polymost1UseDetailMapping.lto_priv.0, %xmm0
	jp	L494
	je	L438
L494:
	movl	$0x00000000, __ZL25polymost1UseDetailMapping.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL28polymost1UseDetailMappingLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	subl	$8, %esp
	cmpl	%eax, _gl
	jne	L437
L438:
	xorps	%xmm0, %xmm0
	ucomiss	__ZL23polymost1UseGlowMapping.lto_priv.0, %xmm0
	jp	L495
	je	L437
L495:
	movl	$0x00000000, __ZL23polymost1UseGlowMapping.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL26polymost1UseGlowMappingLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L437:
	movss	-560(%ebp), %xmm0
	xorl	%eax, %eax
	xorps	%xmm1, %xmm1
	call	__Z22polymost_npotEmulationcff
	movl	-632(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L441
	movl	$5890, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glLoadIdentity
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	movl	_r_detailmapping, %eax
	subl	$4, %esp
	testl	%eax, %eax
	je	L442
	movl	$33987, (%esp)
	call	*_glad_glClientActiveTexture
	subl	$4, %esp
	movl	$32888, (%esp)
	call	*_glad_glDisableClientState
	subl	$4, %esp
L442:
	movl	_r_glowmapping, %eax
	testl	%eax, %eax
	je	L443
	movl	$33988, (%esp)
	call	*_glad_glClientActiveTexture
	subl	$4, %esp
	movl	$32888, (%esp)
	call	*_glad_glDisableClientState
	subl	$4, %esp
L443:
	movl	$33984, (%esp)
	call	*_glad_glClientActiveTexture
	subl	$4, %esp
L441:
	movl	-632(%ebp), %eax
	testb	$2, 35(%eax)
	je	L626
	movl	_nofog, %eax
	testl	%eax, %eax
	je	L627
L445:
	testb	$8, _glinfo+29
	je	L448
	movl	_r_usesamplerobjects, %eax
	testl	%eax, %eax
	jne	L449
L448:
	movl	__ZL16drawpoly_srepeat.lto_priv.0, %edi
	testl	%edi, %edi
	je	L450
	movl	$33071, 8(%esp)
	movl	$10242, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
L450:
	movl	__ZL16drawpoly_trepeat.lto_priv.0, %ebx
	testl	%ebx, %ebx
	je	L449
	movl	$33071, 8(%esp)
	movl	$10243, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
L449:
	cmpl	$1, __ZZL17polymost_drawpolyPK4vec2IfEiiE15fullbright_pass
	je	L628
L451:
	movl	_r_skyzbufferhack, %eax
	testl	%eax, %eax
	je	L458
	movl	__ZL14skyzbufferhack, %eax
	testl	%eax, %eax
	je	L458
	movl	__ZZL17polymost_drawpolyPK4vec2IfEiiE19skyzbufferhack_pass, %eax
	testl	%eax, %eax
	jne	L458
	movl	__ZL4xtex.lto_priv.0, %eax
	movl	%eax, -384(%ebp)
	movl	__ZL4xtex.lto_priv.0+4, %eax
	movl	%eax, -380(%ebp)
	movl	__ZL4xtex.lto_priv.0+8, %eax
	movl	%eax, -376(%ebp)
	movl	__ZL4xtex.lto_priv.0+12, %eax
	movl	%eax, -372(%ebp)
	movl	__ZL4xtex.lto_priv.0+16, %eax
	movl	%eax, -368(%ebp)
	movl	__ZL4xtex.lto_priv.0+20, %eax
	movl	%eax, -364(%ebp)
	movl	__ZL4ytex.lto_priv.0, %eax
	movl	%eax, -408(%ebp)
	movl	__ZL4ytex.lto_priv.0+4, %eax
	movl	%eax, -404(%ebp)
	movl	__ZL4ytex.lto_priv.0+8, %eax
	movl	%eax, -400(%ebp)
	movl	__ZL4ytex.lto_priv.0+12, %eax
	movl	%eax, -396(%ebp)
	movl	__ZL4ytex.lto_priv.0+16, %eax
	movl	%eax, -392(%ebp)
	movl	__ZL4ytex.lto_priv.0+20, %eax
	movl	%eax, -388(%ebp)
	movl	__ZL4otex.lto_priv.0, %eax
	movl	%eax, -432(%ebp)
	movl	__ZL4otex.lto_priv.0+4, %eax
	movl	%eax, -428(%ebp)
	movl	__ZL4otex.lto_priv.0+8, %eax
	movl	%eax, -424(%ebp)
	movl	__ZL4otex.lto_priv.0+12, %eax
	movl	%eax, -420(%ebp)
	movl	__ZL4otex.lto_priv.0+16, %eax
	movl	%eax, -416(%ebp)
	movl	__ZL4otex.lto_priv.0+20, %eax
	movl	%eax, -412(%ebp)
	movl	__ZL5xtex2, %eax
	movl	%eax, __ZL4xtex.lto_priv.0
	movl	__ZL5xtex2+4, %eax
	movl	%eax, __ZL4xtex.lto_priv.0+4
	movl	__ZL5xtex2+8, %eax
	movl	%eax, __ZL4xtex.lto_priv.0+8
	movl	__ZL5xtex2+12, %eax
	movl	%eax, __ZL4xtex.lto_priv.0+12
	movl	__ZL5xtex2+16, %eax
	movl	%eax, __ZL4xtex.lto_priv.0+16
	movl	__ZL5xtex2+20, %eax
	movl	%eax, __ZL4xtex.lto_priv.0+20
	movl	__ZL5ytex2, %eax
	movl	%eax, __ZL4ytex.lto_priv.0
	movl	__ZL5ytex2+4, %eax
	movl	%eax, __ZL4ytex.lto_priv.0+4
	movl	__ZL5ytex2+8, %eax
	movl	%eax, __ZL4ytex.lto_priv.0+8
	movl	__ZL5ytex2+12, %eax
	movl	%eax, __ZL4ytex.lto_priv.0+12
	movl	__ZL5ytex2+16, %eax
	movl	%eax, __ZL4ytex.lto_priv.0+16
	movl	__ZL5ytex2+20, %eax
	movl	%eax, __ZL4ytex.lto_priv.0+20
	movl	__ZL5otex2, %eax
	movl	%eax, __ZL4otex.lto_priv.0
	movl	__ZL5otex2+4, %eax
	movl	%eax, __ZL4otex.lto_priv.0+4
	movl	__ZL5otex2+8, %eax
	movl	$1, __ZZL17polymost_drawpolyPK4vec2IfEiiE19skyzbufferhack_pass
	movl	%eax, __ZL4otex.lto_priv.0+8
	movl	__ZL5otex2+12, %eax
	movl	%eax, __ZL4otex.lto_priv.0+12
	movl	__ZL5otex2+16, %eax
	movl	%eax, __ZL4otex.lto_priv.0+16
	movl	__ZL5otex2+20, %eax
	movl	%eax, __ZL4otex.lto_priv.0+20
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	*_glad_glColorMask
	movl	-508(%ebp), %edx
	movl	%esi, %eax
	movl	$1, %ecx
	subl	$16, %esp
	call	__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glColorMask
	movl	-384(%ebp), %eax
	subl	$16, %esp
	movl	%eax, __ZL4xtex.lto_priv.0
	movl	-380(%ebp), %eax
	movl	%eax, __ZL4xtex.lto_priv.0+4
	movl	-376(%ebp), %eax
	movl	%eax, __ZL4xtex.lto_priv.0+8
	movl	-372(%ebp), %eax
	movl	%eax, __ZL4xtex.lto_priv.0+12
	movl	-368(%ebp), %eax
	movl	%eax, __ZL4xtex.lto_priv.0+16
	movl	-364(%ebp), %eax
	movl	%eax, __ZL4xtex.lto_priv.0+20
	movl	-408(%ebp), %eax
	movl	%eax, __ZL4ytex.lto_priv.0
	movl	-404(%ebp), %eax
	movl	%eax, __ZL4ytex.lto_priv.0+4
	movl	-400(%ebp), %eax
	movl	%eax, __ZL4ytex.lto_priv.0+8
	movl	-396(%ebp), %eax
	movl	%eax, __ZL4ytex.lto_priv.0+12
	movl	-392(%ebp), %eax
	movl	%eax, __ZL4ytex.lto_priv.0+16
	movl	-388(%ebp), %eax
	movl	%eax, __ZL4ytex.lto_priv.0+20
	movl	-432(%ebp), %eax
	movl	%eax, __ZL4otex.lto_priv.0
	movl	-428(%ebp), %eax
	movl	%eax, __ZL4otex.lto_priv.0+4
	movl	-424(%ebp), %eax
	movl	%eax, __ZL4otex.lto_priv.0+8
	movl	-420(%ebp), %eax
	movl	%eax, __ZL4otex.lto_priv.0+12
	movl	-416(%ebp), %eax
	subl	$1, __ZZL17polymost_drawpolyPK4vec2IfEiiE19skyzbufferhack_pass
	movl	%eax, __ZL4otex.lto_priv.0+16
	movl	-412(%ebp), %eax
	movl	%eax, __ZL4otex.lto_priv.0+20
	jmp	L458
L621:
	movss	-560(%ebp), %xmm7
	divss	_frealmaxshade, %xmm0
	movaps	%xmm7, %xmm1
	subss	%xmm0, %xmm1
	movaps	%xmm7, %xmm0
	cmpltss	%xmm1, %xmm0
	andps	%xmm0, %xmm7
	andnps	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	orps	%xmm7, %xmm0
	movaps	%xmm0, %xmm3
	cmpnltss	%xmm1, %xmm3
	andps	%xmm0, %xmm3
	jmp	L393
L404:
	testw	$264, -536(%ebp)
	je	L409
	movzbl	_hictinting+2(,%edx,8), %eax
	xorps	%xmm3, %xmm3
	movss	LC22, %xmm5
	cvtsi2ssl	%eax, %xmm3
	movzbl	_hictinting+3(,%edx,8), %eax
	mulss	%xmm5, %xmm3
	mulss	%xmm3, %xmm0
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	movzbl	_hictinting+4(,%edx,8), %eax
	mulss	%xmm5, %xmm3
	mulss	%xmm3, %xmm1
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	mulss	%xmm5, %xmm3
	mulss	%xmm3, %xmm2
	jmp	L409
L610:
	cmpw	$0, _editstatus
	je	L263
	movl	_globalpal, %eax
	movl	%eax, 12(%esp)
	movswl	_globalpicnum, %eax
	movl	$LC21, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$_ptempbuf, (%esp)
	call	_sprintf
	movzbl	_editorcolors+15, %ecx
	movl	$8, %edx
	movl	$0, 8(%esp)
	movl	$_ptempbuf, 4(%esp)
	movzbl	_editorcolors+5, %eax
	movl	%eax, (%esp)
	movl	$8, %eax
	call	__Z21polymost_printtext256iissPKcc
	jmp	L263
L384:
	movl	_globalshade, %eax
	movl	%eax, -544(%ebp)
	cmpl	$3, -496(%ebp)
	jne	L378
	movl	_r_useindexedcolortextures, %eax
	testl	%eax, %eax
	je	L387
	movl	_gltexfiltermode, %eax
	testl	%eax, %eax
	je	L389
	jmp	L387
L612:
	call	__Z22polymost_updatePalettev
	movl	$33988, -648(%ebp)
	jmp	L460
L611:
	call	__ZL16polymost_bindPthPK8pthtyp_t.lto_priv.0
	movl	-632(%ebp), %eax
	testb	$2, 35(%eax)
	je	L629
	cmpl	$3, _rendmode
	je	L630
L325:
	movl	_r_usetileshades, %eax
	testl	%eax, %eax
	je	L326
	testb	$1, _globalflags
	je	L323
L326:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L323
	xorps	%xmm0, %xmm0
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm0
	jp	L488
	je	L323
L488:
	movl	$0x00000000, __ZL19polymost1FogEnabled.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L323:
	testb	$8, _glinfo+29
	je	L328
	movl	_r_usesamplerobjects, %eax
	testl	%eax, %eax
	je	L328
	movl	-632(%ebp), %eax
	movzwl	34(%eax), %edx
	cmpl	$3, _rendmode
	je	L631
L333:
	andb	$-3, %dh
	orl	$2, %edx
L335:
	xorl	%eax, %eax
	call	__Z25buildgl_bindSamplerObjectii
L334:
	movss	LC10, %xmm7
	movl	-632(%ebp), %eax
	movl	8(%eax), %eax
	movss	%xmm7, -560(%ebp)
	testl	%eax, %eax
	je	L336
	movl	_drawingskybox, %edx
	testl	%edx, %edx
	jne	L336
	jmp	L461
L615:
	testb	$32, -496(%ebp)
	je	L362
	movswl	_globalpicnum, %ecx
	testb	$2, _picanm+4(%ecx,%ecx,4)
	jne	L362
	movswl	_tilesiz+2(,%ecx,4), %edx
	movl	$1, %eax
	cmpl	$1, %edx
	jle	L363
	.p2align 3
	.p2align 4
	.p2align 3
L364:
	addl	%eax, %eax
	cmpl	%eax, %edx
	jg	L364
L363:
	cmpl	%eax, %edx
	je	L362
	movswl	_tilesiz(,%ecx,4), %ecx
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm0
	movss	-560(%ebp), %xmm7
	movl	$1, %eax
	cvtsi2ssl	%ecx, %xmm1
	cvtsi2ssl	%edx, %xmm2
	divss	%xmm1, %xmm7
	divss	%xmm2, %xmm0
	movaps	%xmm7, %xmm1
	call	__Z22polymost_npotEmulationcff
	jmp	L366
L622:
	xorl	%edx, %edx
	jmp	L272
L328:
	movl	__ZL16drawpoly_srepeat.lto_priv.0, %eax
	testl	%eax, %eax
	je	L331
	movl	$10497, 8(%esp)
	movl	$10242, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
L331:
	movl	__ZL16drawpoly_trepeat.lto_priv.0, %ecx
	testl	%ecx, %ecx
	je	L334
	movl	$10497, 8(%esp)
	movl	$10243, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	jmp	L334
L320:
	cmpl	$2, %eax
	jne	L318
	movl	-632(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -632(%ebp)
	jmp	L318
L626:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L445
	movss	-560(%ebp), %xmm7
	ucomiss	__ZL19polymost1UsePalette.lto_priv.0, %xmm7
	jp	L496
	je	L445
L496:
	movss	-560(%ebp), %xmm7
	movss	%xmm7, __ZL19polymost1UsePalette.lto_priv.0
	movss	%xmm7, 4(%esp)
	movl	__ZL22polymost1UsePaletteLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
	jmp	L445
L627:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L445
	movss	-560(%ebp), %xmm7
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm7
	jp	L497
	je	L445
L497:
	movss	-560(%ebp), %xmm7
	movss	%xmm7, __ZL19polymost1FogEnabled.lto_priv.0
	movss	%xmm7, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
	jmp	L445
L629:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L323
	xorps	%xmm0, %xmm0
	ucomiss	__ZL19polymost1UsePalette.lto_priv.0, %xmm0
	jp	L487
	je	L323
L487:
	movl	$0x00000000, __ZL19polymost1UsePalette.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL22polymost1UsePaletteLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
	jmp	L323
L628:
	movl	_globalshade, %ebx
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$-128, _globalshade
	movl	$2, __ZZL17polymost_drawpolyPK4vec2IfEiiE15fullbright_pass
	cmpl	%eax, _gl
	jne	L452
	xorps	%xmm0, %xmm0
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm0
	jp	L498
	je	L452
L498:
	movl	$0x00000000, __ZL19polymost1FogEnabled.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L452:
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L454
	movl	$3008, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L454:
	movl	-508(%ebp), %edx
	movl	-568(%ebp), %ecx
	movl	%esi, %eax
	call	__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L455
	movl	$3008, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L455:
	movl	_nofog, %ecx
	testl	%ecx, %ecx
	je	L632
L456:
	movl	%ebx, _globalshade
	movl	$0, __ZZL17polymost_drawpolyPK4vec2IfEiiE15fullbright_pass
	jmp	L451
L474:
	movl	$1, -640(%ebp)
	jmp	L369
L475:
	movl	$1, -644(%ebp)
	jmp	L368
L617:
	cmpb	$-1, %al
	jne	L410
	jmp	L409
L392:
	movl	-536(%ebp), %ecx
	movswl	_globalpicnum, %eax
	movl	%edx, -496(%ebp)
	andl	$256, %ecx
	call	_hicfindsubst
	movl	-496(%ebp), %edx
	testl	%eax, %eax
	jne	L378
	jmp	L386
L630:
	movl	_r_useindexedcolortextures, %eax
	testl	%eax, %eax
	je	L325
	movl	_gltexfiltermode, %eax
	testl	%eax, %eax
	je	L326
	jmp	L325
L614:
	movswl	_globalpicnum, %eax
	movl	$1, %ecx
	movl	$254, %edx
	movl	%eax, -504(%ebp)
	call	_hicfindsubst
	testl	%eax, %eax
	je	L357
	movl	-496(%ebp), %edx
	xorl	%ecx, %ecx
	andl	$-4, %edx
	movl	%edx, %eax
	movl	$254, %edx
	orl	$1, %eax
	movl	%eax, (%esp)
	movl	-504(%ebp), %eax
	call	_texcache_fetch
	movl	%eax, %edx
	testl	%eax, %eax
	je	L357
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L357
	cmpb	$-2, 32(%eax)
	jne	L357
	movl	$1, %eax
	movl	%edx, -504(%ebp)
	call	__Z23polymost_useGlowMappingc
	cmpl	$3, _rendmode
	movl	-504(%ebp), %edx
	je	L470
	addl	$1, -648(%ebp)
	movl	-648(%ebp), %eax
L360:
	movzwl	34(%edx), %ecx
	movl	12(%edx), %edx
	call	__Z25polymost_setupglowtextureiii
	jmp	L357
	.p2align 4,,10
	.p2align 3
L632:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L456
	movss	-560(%ebp), %xmm7
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm7
	jp	L499
	je	L456
L499:
	movss	-560(%ebp), %xmm7
	movss	%xmm7, __ZL19polymost1FogEnabled.lto_priv.0
	movss	%xmm7, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	pushl	%edx
	pushl	%edx
	jmp	L456
L631:
	cmpl	$0, _r_useindexedcolortextures
	je	L333
	cmpl	$0, _gltexfiltermode
	je	L335
	jmp	L333
L469:
	movl	$33987, %eax
	jmp	L346
L470:
	movl	$33988, %eax
	jmp	L360
	.cfi_endproc
LFE11:
	.section .rdata,"dr"
	.align 4
LC25:
	.ascii "polymost_domost(x0:%f, y0:%f, x1:%f, y1:%f, y0top:%f, y0bot:%f, y1top:%f, y1bot:%f)\0"
	.text
	.p2align 4
	.globl	__ZL15polymost_domostffffffff.lto_priv.0
	.def	__ZL15polymost_domostffffffff.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL15polymost_domostffffffff.lto_priv.0:
LFB33:
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
	subl	$280, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	flds	24(%ebp)
	movss	%xmm2, 156(%esp)
	movss	%xmm1, 160(%esp)
	fstpl	64(%esp)
	flds	20(%ebp)
	movss	%xmm0, 164(%esp)
	movss	%xmm0, 176(%esp)
	fstpl	56(%esp)
	flds	16(%ebp)
	movss	%xmm1, 172(%esp)
	movss	%xmm2, 168(%esp)
	fstpl	48(%esp)
	flds	12(%ebp)
	fstpl	40(%esp)
	flds	8(%ebp)
	fstpl	32(%esp)
	flds	156(%esp)
	fstpl	24(%esp)
	flds	160(%esp)
	fstpl	16(%esp)
	flds	164(%esp)
	fstpl	8(%esp)
	movl	$LC25, 4(%esp)
	movl	$3, (%esp)
	call	__Z26buildgl_outputDebugMessagehPKcz.constprop.0
	movss	12(%ebp), %xmm0
	subss	LC2, %xmm0
	movss	156(%esp), %xmm7
	comiss	164(%esp), %xmm7
	movss	%xmm0, 12(%ebp)
	movss	20(%ebp), %xmm0
	subss	LC2, %xmm0
	movss	%xmm0, 20(%ebp)
	movss	LC2, %xmm0
	addss	16(%ebp), %xmm0
	movss	%xmm0, 16(%ebp)
	movss	LC2, %xmm0
	addss	24(%ebp), %xmm0
	movss	%xmm0, 24(%ebp)
	jbe	L910
	movss	172(%esp), %xmm0
	subss	LC2, %xmm0
	movss	%xmm0, 172(%esp)
	movss	8(%ebp), %xmm0
	subss	LC2, %xmm0
	movss	%xmm0, 136(%esp)
L638:
	movss	168(%esp), %xmm2
	movss	__ZL3xbl.lto_priv.0, %xmm0
	movss	136(%esp), %xmm7
	comiss	%xmm2, %xmm0
	movss	%xmm7, 8(%ebp)
	ja	L641
	movss	176(%esp), %xmm3
	movss	__ZL3xbr.lto_priv.0, %xmm1
	comiss	%xmm1, %xmm3
	ja	L641
	movss	LC2, %xmm7
	movaps	%xmm3, %xmm6
	subss	LC2, %xmm6
	movss	172(%esp), %xmm5
	movss	136(%esp), %xmm3
	addss	%xmm2, %xmm7
	movss	%xmm5, 144(%esp)
	subss	%xmm5, %xmm3
	comiss	%xmm6, %xmm0
	movss	%xmm7, 160(%esp)
	subss	%xmm6, %xmm7
	movaps	%xmm7, %xmm2
	movaps	%xmm3, %xmm7
	divss	%xmm2, %xmm7
	movss	%xmm7, 108(%esp)
	jbe	L644
	movaps	%xmm0, %xmm2
	subss	%xmm6, %xmm2
	movaps	%xmm0, %xmm6
	mulss	%xmm7, %xmm2
	addss	%xmm5, %xmm2
	movss	%xmm2, 144(%esp)
L644:
	movss	160(%esp), %xmm7
	comiss	%xmm1, %xmm7
	ja	L930
L646:
	movswl	__ZL3vsp.lto_priv.0+24, %edi
	movb	$0, __ZL14drawpoly_blend.lto_priv.0
	movl	$0x00000000, __ZL14drawpoly_alpha.lto_priv.0
	testl	%edi, %edi
	je	L822
	movss	156(%esp), %xmm7
	comiss	164(%esp), %xmm7
	movl	%edi, 104(%esp)
	movaps	%xmm6, %xmm7
	movl	%edi, 152(%esp)
	ja	L649
	.p2align 4
	.p2align 3
L734:
	movl	152(%esp), %esi
	movl	%esi, %eax
	sall	$5, %eax
	movswl	__ZL3vsp.lto_priv.0+24(%eax), %eax
	movl	%eax, 152(%esp)
	sall	$5, %eax
	movss	__ZL3vsp.lto_priv.0(%eax), %xmm5
	comiss	%xmm5, %xmm7
	jnb	L824
	movl	%esi, %eax
	sall	$5, %eax
	movss	__ZL3vsp.lto_priv.0(%eax), %xmm4
	comiss	160(%esp), %xmm4
	jnb	L648
	cmpw	$0, __ZL3vsp.lto_priv.0+28(%eax)
	jle	L650
	movss	__ZL3vsp.lto_priv.0+4(%eax), %xmm2
	movaps	%xmm5, %xmm6
	comiss	%xmm4, %xmm7
	movss	__ZL3vsp.lto_priv.0+8(%eax), %xmm0
	subss	%xmm4, %xmm6
	movss	__ZL3vsp.lto_priv.0+12(%eax), %xmm1
	subss	%xmm2, %xmm0
	movss	%xmm2, 100(%esp)
	movss	%xmm2, 128(%esp)
	movss	%xmm6, 164(%esp)
	movaps	%xmm7, %xmm6
	movaps	%xmm0, %xmm3
	movss	%xmm0, 120(%esp)
	subss	%xmm4, %xmm6
	movss	%xmm0, 132(%esp)
	movss	__ZL3vsp.lto_priv.0+16(%eax), %xmm0
	movss	%xmm1, 124(%esp)
	movss	%xmm6, 156(%esp)
	subss	%xmm1, %xmm0
	movss	%xmm0, 148(%esp)
	movss	%xmm0, 116(%esp)
	ja	L653
	movss	144(%esp), %xmm0
	subss	%xmm2, %xmm0
	movss	156(%esp), %xmm2
	mulss	%xmm3, %xmm2
	movaps	%xmm0, %xmm6
	movss	%xmm2, 112(%esp)
L730:
	xorl	%eax, %eax
L733:
	mulss	164(%esp), %xmm6
	movaps	%xmm7, %xmm0
	subss	160(%esp), %xmm0
	movss	144(%esp), %xmm3
	subss	136(%esp), %xmm3
	mulss	164(%esp), %xmm3
	movaps	%xmm0, %xmm2
	movss	132(%esp), %xmm0
	mulss	%xmm2, %xmm0
	mulss	148(%esp), %xmm2
	movss	%xmm0, 140(%esp)
	movaps	%xmm3, %xmm0
	subss	140(%esp), %xmm0
	subss	%xmm2, %xmm3
	movaps	%xmm6, %xmm2
	subss	112(%esp), %xmm2
	movss	144(%esp), %xmm6
	movss	%xmm0, 140(%esp)
	subss	%xmm1, %xmm6
	movss	156(%esp), %xmm1
	mulss	164(%esp), %xmm6
	mulss	148(%esp), %xmm1
	movss	140(%esp), %xmm0
	movss	%xmm0, 156(%esp)
	flds	156(%esp)
	subss	%xmm1, %xmm6
	movss	160(%esp), %xmm1
	subss	%xmm7, %xmm1
	movss	%xmm1, 112(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fstps	156(%esp)
	movss	%xmm2, 148(%esp)
	flds	148(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	movss	156(%esp), %xmm0
	fstps	148(%esp)
	comiss	148(%esp), %xmm0
	jbe	L912
	movss	140(%esp), %xmm0
	xorps	%xmm1, %xmm1
	mulss	%xmm2, %xmm0
	comiss	%xmm1, %xmm0
	jb	L912
	divss	140(%esp), %xmm2
	mulss	112(%esp), %xmm2
	addss	%xmm7, %xmm2
	comiss	%xmm4, %xmm2
	jbe	L912
	comiss	%xmm2, %xmm5
	jbe	L922
	movss	%xmm3, 156(%esp)
	leal	1(%eax), %edi
	flds	156(%esp)
	movl	%edi, 148(%esp)
	movl	$0, 184(%esp,%eax,4)
	movss	%xmm2, 200(%esp,%eax,4)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fstps	140(%esp)
	movss	%xmm6, 156(%esp)
	flds	156(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	movss	140(%esp), %xmm2
	fstps	156(%esp)
	comiss	156(%esp), %xmm2
	jbe	L718
	movaps	%xmm6, %xmm0
	mulss	%xmm3, %xmm0
	comiss	%xmm1, %xmm0
	jnb	L931
L714:
	cmpl	$2, 148(%esp)
	je	L658
	movl	$1, 148(%esp)
	jmp	L657
	.p2align 4,,10
	.p2align 3
L910:
	movss	176(%esp), %xmm0
	ucomiss	168(%esp), %xmm0
	jp	L834
	je	L635
L834:
	leal	176(%esp), %eax
	leal	168(%esp), %ebx
/APP
 # 3945 "source/build/src/polymost.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	leal	172(%esp), %eax
	leal	8(%ebp), %ebx
/APP
 # 3946 "source/build/src/polymost.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	leal	12(%ebp), %eax
	leal	20(%ebp), %ebx
/APP
 # 3947 "source/build/src/polymost.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	leal	16(%ebp), %eax
	leal	24(%ebp), %ebx
/APP
 # 3948 "source/build/src/polymost.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movss	LC2, %xmm0
	movss	LC2, %xmm7
	addss	172(%esp), %xmm0
	addss	8(%ebp), %xmm7
	movss	%xmm0, 172(%esp)
	movss	%xmm7, 136(%esp)
	jmp	L638
	.p2align 4,,10
	.p2align 3
L641:
	addl	$1, _domost_rejectcount
L635:
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
	.p2align 6
	.p2align 4,,10
	.p2align 3
L828:
	.cfi_restore_state
	movl	%esi, 104(%esp)
L735:
	movl	152(%esp), %eax
	testl	%eax, %eax
	je	L648
L649:
	movl	152(%esp), %esi
	movl	%esi, %eax
	sall	$5, %eax
	movswl	__ZL3vsp.lto_priv.0+24(%eax), %eax
	movl	%eax, 152(%esp)
	sall	$5, %eax
	movss	__ZL3vsp.lto_priv.0(%eax), %xmm5
	comiss	%xmm5, %xmm7
	jnb	L828
	movl	%esi, %eax
	sall	$5, %eax
	movss	__ZL3vsp.lto_priv.0(%eax), %xmm6
	comiss	160(%esp), %xmm6
	jnb	L648
	cmpw	$0, __ZL3vsp.lto_priv.0+28(%eax)
	jle	L735
	movaps	%xmm5, %xmm4
	movss	__ZL3vsp.lto_priv.0+12(%eax), %xmm2
	comiss	%xmm6, %xmm7
	movss	__ZL3vsp.lto_priv.0+16(%eax), %xmm1
	subss	%xmm6, %xmm4
	movss	__ZL3vsp.lto_priv.0+8(%eax), %xmm0
	subss	%xmm2, %xmm1
	movss	%xmm2, 96(%esp)
	movss	%xmm2, 124(%esp)
	movss	%xmm4, 164(%esp)
	movss	__ZL3vsp.lto_priv.0+4(%eax), %xmm4
	movaps	%xmm1, %xmm3
	movss	%xmm1, 116(%esp)
	movss	%xmm1, 132(%esp)
	subss	%xmm4, %xmm0
	movaps	%xmm7, %xmm1
	movss	%xmm4, 128(%esp)
	subss	%xmm6, %xmm1
	movss	%xmm0, 156(%esp)
	movss	%xmm0, 120(%esp)
	ja	L848
	mulss	%xmm1, %xmm3
	movss	%xmm3, 100(%esp)
	movss	144(%esp), %xmm3
	subss	%xmm2, %xmm3
	movss	%xmm3, 112(%esp)
L737:
	xorl	%eax, %eax
L740:
	movss	144(%esp), %xmm3
	movaps	%xmm7, %xmm0
	subss	160(%esp), %xmm0
	subss	136(%esp), %xmm3
	mulss	164(%esp), %xmm3
	mulss	156(%esp), %xmm1
	movaps	%xmm0, %xmm2
	movss	156(%esp), %xmm0
	mulss	%xmm2, %xmm0
	mulss	132(%esp), %xmm2
	movss	%xmm0, 148(%esp)
	movaps	%xmm3, %xmm0
	subss	148(%esp), %xmm0
	subss	%xmm2, %xmm3
	movss	144(%esp), %xmm2
	movss	%xmm0, 140(%esp)
	subss	%xmm4, %xmm2
	movss	164(%esp), %xmm4
	movss	112(%esp), %xmm0
	mulss	%xmm4, %xmm0
	mulss	%xmm4, %xmm2
	subss	100(%esp), %xmm0
	movss	160(%esp), %xmm4
	subss	%xmm7, %xmm4
	subss	%xmm1, %xmm2
	movss	%xmm4, 112(%esp)
	movss	140(%esp), %xmm1
	movss	%xmm1, 156(%esp)
	flds	156(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fstps	156(%esp)
	movss	%xmm2, 148(%esp)
	flds	148(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	movss	156(%esp), %xmm1
	fstps	148(%esp)
	comiss	148(%esp), %xmm1
	ja	L742
	movss	%xmm3, 156(%esp)
	flds	156(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fstps	148(%esp)
	movss	%xmm0, 156(%esp)
	flds	156(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	movss	148(%esp), %xmm2
	fstps	156(%esp)
	comiss	156(%esp), %xmm2
	ja	L743
L744:
	movl	%eax, 148(%esp)
L757:
	movss	160(%esp), %xmm3
	comiss	%xmm6, %xmm3
	ja	L814
L760:
	movl	152(%esp), %eax
	movl	%esi, 156(%esp)
	movss	LC10, %xmm5
	movss	%xmm6, 112(%esp)
	divss	164(%esp), %xmm5
	movl	$0, 164(%esp)
	sall	$5, %eax
	movl	$-1, __ZL3vsp.lto_priv.0+20(%eax)
	movl	%esi, %eax
	xorl	%esi, %esi
	movss	%xmm5, 132(%esp)
	sall	$5, %eax
	movl	$-1, __ZL3vsp.lto_priv.0+20(%eax)
	movl	164(%esp), %eax
	cmpl	%eax, 148(%esp)
	je	L765
L935:
	movswl	__ZL3vsp.lto_priv.0+65528, %esi
	movl	$2047, %ebx
	movss	200(%esp,%eax,4), %xmm2
	movss	120(%esp), %xmm1
	movl	%esi, %eax
	movaps	%xmm2, %xmm0
	subss	112(%esp), %xmm0
	movw	%si, 140(%esp)
	mulss	132(%esp), %xmm0
	sall	$5, %eax
	movswl	__ZL3vsp.lto_priv.0+24(%eax), %edx
	movl	%edx, %ecx
	sall	$5, %edx
	movw	%bx, __ZL3vsp.lto_priv.0+26(%edx)
	movl	156(%esp), %ebx
	movw	%cx, __ZL3vsp.lto_priv.0+65528
	mulss	%xmm0, %xmm1
	addss	128(%esp), %xmm1
	movl	%ebx, %edx
	sall	$16, %ebx
	sall	$5, %edx
	movl	__ZL3vsp.lto_priv.0(%edx), %ecx
	movl	%ecx, __ZL3vsp.lto_priv.0(%eax)
	movl	__ZL3vsp.lto_priv.0+4(%edx), %ecx
	movl	%ecx, __ZL3vsp.lto_priv.0+4(%eax)
	movl	__ZL3vsp.lto_priv.0+8(%edx), %ecx
	movl	%ecx, __ZL3vsp.lto_priv.0+8(%eax)
	movl	__ZL3vsp.lto_priv.0+12(%edx), %ecx
	movl	%ecx, __ZL3vsp.lto_priv.0+12(%eax)
	movl	__ZL3vsp.lto_priv.0+16(%edx), %ecx
	movl	%ecx, __ZL3vsp.lto_priv.0+16(%eax)
	movl	__ZL3vsp.lto_priv.0+20(%edx), %ecx
	movl	%ecx, __ZL3vsp.lto_priv.0+20(%eax)
	movl	__ZL3vsp.lto_priv.0+24(%edx), %ecx
	movl	%ecx, __ZL3vsp.lto_priv.0+24(%eax)
	movl	__ZL3vsp.lto_priv.0+28(%edx), %ecx
	movl	%ecx, __ZL3vsp.lto_priv.0+28(%eax)
	movzwl	__ZL3vsp.lto_priv.0+24(%edx), %edi
	orl	%edi, %ebx
	movswl	%di, %ecx
	movl	%ebx, __ZL3vsp.lto_priv.0+24(%eax)
	movzwl	140(%esp), %ebx
	sall	$5, %ecx
	movw	%bx, __ZL3vsp.lto_priv.0+26(%ecx)
	movw	%bx, __ZL3vsp.lto_priv.0+24(%edx)
	movss	%xmm1, __ZL3vsp.lto_priv.0+8(%edx)
	mulss	116(%esp), %xmm0
	movl	164(%esp), %edi
	addss	124(%esp), %xmm0
	movss	%xmm2, __ZL3vsp.lto_priv.0(%eax)
	movl	184(%esp,%edi,4), %ecx
	movss	%xmm1, __ZL3vsp.lto_priv.0+4(%eax)
	movl	%ecx, __ZL3vsp.lto_priv.0+20(%eax)
	movss	%xmm0, __ZL3vsp.lto_priv.0+16(%edx)
	movss	%xmm0, __ZL3vsp.lto_priv.0+12(%eax)
	testl	%esi, %esi
	je	L785
	movss	__ZL3vsp.lto_priv.0(%edx), %xmm3
	comiss	%xmm3, %xmm7
	ja	L785
	movl	%esi, %ebx
L819:
	movl	%esi, %eax
	sall	$5, %eax
	movss	__ZL3vsp.lto_priv.0(%eax), %xmm6
	comiss	160(%esp), %xmm6
	ja	L767
	movaps	%xmm3, %xmm5
	movaps	%xmm6, %xmm4
	movss	108(%esp), %xmm2
	movl	156(%esp), %eax
	subss	%xmm7, %xmm5
	subss	%xmm7, %xmm4
	movss	144(%esp), %xmm1
	sall	$5, %eax
	movl	__ZL3vsp.lto_priv.0+20(%eax), %edx
	mulss	%xmm2, %xmm5
	mulss	%xmm2, %xmm4
	addss	%xmm1, %xmm5
	addss	%xmm1, %xmm4
	testl	%edx, %edx
	je	L830
	movss	LC2, %xmm0
	addss	__ZL3vsp.lto_priv.0+4(%eax), %xmm0
	xorl	%eax, %eax
	ucomiss	%xmm5, %xmm0
	setb	%al
	addl	$3, %eax
	cmpl	$1, %edx
	jne	L768
L770:
	sall	$5, %esi
	addl	$1, %eax
	movl	__ZL3vsp.lto_priv.0+20(%esi), %edx
	testl	%edx, %edx
	jne	L773
L938:
	subl	$3, %eax
L774:
	movl	156(%esp), %edx
	sall	$5, %edx
	movss	__ZL3vsp.lto_priv.0+16(%edx), %xmm0
	subss	LC2, %xmm0
	comiss	%xmm0, %xmm4
	jb	L778
L777:
	addl	$3, %eax
L778:
	cmpl	$7, %eax
	ja	L767
	jmp	*L781(,%eax,4)
	.section .rdata,"dr"
	.align 4
L781:
	.long	L784
	.long	L783
	.long	L782
	.long	L783
	.long	L783
	.long	L782
	.long	L780
	.long	L780
	.text
	.p2align 4,,10
	.p2align 3
L742:
	movss	140(%esp), %xmm1
	xorps	%xmm4, %xmm4
	mulss	%xmm2, %xmm1
	comiss	%xmm4, %xmm1
	jnb	L745
L928:
	movss	%xmm3, 156(%esp)
	flds	156(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fstps	148(%esp)
	movss	%xmm0, 156(%esp)
	flds	156(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	movss	148(%esp), %xmm4
	fstps	156(%esp)
	comiss	156(%esp), %xmm4
	jbe	L744
L743:
	movaps	%xmm3, %xmm1
	xorps	%xmm4, %xmm4
	mulss	%xmm0, %xmm1
	comiss	%xmm4, %xmm1
	jb	L744
	divss	%xmm3, %xmm0
	mulss	112(%esp), %xmm0
	addss	%xmm7, %xmm0
	comiss	%xmm6, %xmm0
	jbe	L744
	comiss	%xmm0, %xmm5
	jbe	L748
	movl	$1, 184(%esp,%eax,4)
	leal	1(%eax), %edi
	movl	%edi, 148(%esp)
	movss	%xmm0, 200(%esp,%eax,4)
L756:
	cmpl	$2, 148(%esp)
	jne	L932
L755:
	movl	148(%esp), %edi
	movss	192(%esp,%edi,4), %xmm0
	leal	-1(%edi), %eax
	comiss	196(%esp,%edi,4), %xmm0
	jbe	L757
	leal	0(,%eax,4), %edi
	leal	200(%esp,%edi), %eax
	leal	196(%esp,%edi), %ebx
/APP
 # 4034 "source/build/src/polymost.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	leal	184(%esp,%edi), %eax
	leal	180(%esp,%edi), %ebx
/APP
 # 4035 "source/build/src/polymost.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movss	160(%esp), %xmm3
	comiss	%xmm6, %xmm3
	jbe	L760
L814:
	movss	160(%esp), %xmm4
	comiss	%xmm4, %xmm5
	jbe	L760
	movss	136(%esp), %xmm1
	movaps	%xmm4, %xmm0
	subss	96(%esp), %xmm1
	mulss	164(%esp), %xmm1
	subss	%xmm6, %xmm0
	mulss	132(%esp), %xmm0
	subss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	jbe	L760
	movl	148(%esp), %eax
	movl	$-1, 184(%esp,%eax,4)
	movss	%xmm4, 200(%esp,%eax,4)
	addl	$1, %eax
	movl	%eax, 148(%esp)
	jmp	L760
	.p2align 4,,10
	.p2align 3
L912:
	movss	%xmm3, 156(%esp)
	flds	156(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fstps	148(%esp)
	movss	%xmm6, 156(%esp)
	flds	156(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	movss	148(%esp), %xmm2
	fstps	156(%esp)
	comiss	156(%esp), %xmm2
	jbe	L729
L727:
	movaps	%xmm6, %xmm0
	xorps	%xmm2, %xmm2
	mulss	%xmm3, %xmm0
	comiss	%xmm2, %xmm0
	jb	L729
	divss	%xmm3, %xmm6
	mulss	112(%esp), %xmm6
	addss	%xmm7, %xmm6
	comiss	%xmm4, %xmm6
	jbe	L729
	comiss	%xmm6, %xmm5
	jbe	L728
	movl	$1, 184(%esp,%eax,4)
	leal	1(%eax), %edi
	movl	%edi, 148(%esp)
	movss	%xmm6, 200(%esp,%eax,4)
L718:
	cmpl	$2, 148(%esp)
	jne	L933
L658:
	movl	148(%esp), %edi
	movss	192(%esp,%edi,4), %xmm0
	leal	-1(%edi), %eax
	comiss	196(%esp,%edi,4), %xmm0
	jbe	L657
	leal	0(,%eax,4), %edi
	leal	200(%esp,%edi), %eax
	leal	196(%esp,%edi), %ebx
/APP
 # 4034 "source/build/src/polymost.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	leal	184(%esp,%edi), %eax
	leal	180(%esp,%edi), %ebx
/APP
 # 4035 "source/build/src/polymost.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movss	160(%esp), %xmm6
	comiss	%xmm4, %xmm6
	jbe	L711
L659:
	movss	160(%esp), %xmm6
	comiss	%xmm6, %xmm5
	jbe	L711
	movss	136(%esp), %xmm1
	movaps	%xmm6, %xmm0
	subss	100(%esp), %xmm1
	mulss	164(%esp), %xmm1
	subss	%xmm4, %xmm0
	mulss	132(%esp), %xmm0
	subss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	comiss	%xmm0, %xmm1
	jbe	L711
	movl	148(%esp), %eax
	movl	$-1, 184(%esp,%eax,4)
	movss	%xmm6, 200(%esp,%eax,4)
	addl	$1, %eax
	movl	%eax, 148(%esp)
	jmp	L711
	.p2align 4,,10
	.p2align 3
L782:
	movl	164(%esp), %edi
	xorl	%eax, %eax
L794:
	movl	$0, 240(%esp,%eax)
	movl	$0, 244(%esp,%eax)
	movl	$0, 248(%esp,%eax)
	movl	$0, 252(%esp,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L794
	movaps	%xmm3, %xmm0
	movaps	%xmm6, %xmm1
	movss	%xmm7, 96(%esp)
	leal	216(%esp), %esi
	unpcklps	%xmm4, %xmm1
	movl	$0, 240(%esp,%eax)
	leal	180(%esp), %edx
	movl	$0, 244(%esp,%eax)
	movl	156(%esp), %eax
	movl	$3, 180(%esp)
	sall	$5, %eax
	movss	%xmm4, 100(%esp)
	movss	__ZL3vsp.lto_priv.0+12(%eax), %xmm5
	movss	__ZL3vsp.lto_priv.0+16(%eax), %xmm7
	movl	%esi, %eax
	movss	%xmm6, 232(%esp)
	movl	%edi, 164(%esp)
	unpcklps	%xmm5, %xmm0
	movss	%xmm3, 84(%esp)
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 216(%esp)
	movss	24(%ebp), %xmm0
	movss	168(%esp), %xmm1
	movss	%xmm7, 236(%esp)
	movss	%xmm0, 8(%esp)
	movss	20(%ebp), %xmm0
	movss	%xmm7, 140(%esp)
	movss	%xmm0, 4(%esp)
	movss	16(%ebp), %xmm0
	movss	%xmm5, 88(%esp)
	movss	%xmm0, (%esp)
	movss	12(%ebp), %xmm2
	movss	176(%esp), %xmm0
	movss	%xmm6, 92(%esp)
	call	__ZL17polymost_clipmostP4vec2IfERiffffff
	movl	_g_nodraw, %eax
	movss	100(%esp), %xmm4
	movss	96(%esp), %xmm7
	testl	%eax, %eax
	je	L796
	movl	__ZL10yax_drawcf, %eax
	cmpl	$-1, %eax
	je	L797
	movl	__ZL11yax_holencf(,%eax,4), %edx
	movss	88(%esp), %xmm5
	movss	92(%esp), %xmm6
	movss	84(%esp), %xmm3
	leal	1(%edx), %ecx
	leal	(%edx,%edx,2), %edx
	movaps	%xmm5, %xmm0
	movl	%ecx, __ZL11yax_holencf(,%eax,4)
	leal	(%eax,%eax,2), %eax
	unpcklps	%xmm4, %xmm0
	unpcklps	%xmm6, %xmm3
	sall	$14, %eax
	movlhps	%xmm0, %xmm3
	movss	%xmm5, __ZL10yax_holecf+16(%eax,%edx,8)
	movss	140(%esp), %xmm5
	movups	%xmm3, __ZL10yax_holecf(%eax,%edx,8)
	movss	%xmm5, __ZL10yax_holecf+20(%eax,%edx,8)
L797:
	cmpw	$0, _editstatus
	je	L798
	movl	_doeditorcheck, %eax
	testl	%eax, %eax
	jne	L934
L798:
	movl	156(%esp), %eax
	movl	__ZL4gtag.lto_priv.0, %edx
	sall	$5, %eax
	movw	%dx, __ZL3vsp.lto_priv.0+30(%eax)
	movss	%xmm4, __ZL3vsp.lto_priv.0+16(%eax)
	.p2align 4
	.p2align 3
L767:
	movl	%ebx, %esi
L785:
	addl	$1, 164(%esp)
	movl	164(%esp), %eax
	cmpl	%eax, 148(%esp)
	jl	L735
	movl	%esi, 156(%esp)
	movl	164(%esp), %eax
	cmpl	%eax, 148(%esp)
	jne	L935
L765:
	movl	156(%esp), %eax
	sall	$5, %eax
	movswl	__ZL3vsp.lto_priv.0+24(%eax), %edx
	testl	%edx, %edx
	je	L735
	movss	__ZL3vsp.lto_priv.0(%eax), %xmm3
	comiss	%xmm3, %xmm7
	ja	L735
	movl	%esi, %ebx
	movl	%edx, %esi
	jmp	L819
	.p2align 4,,10
	.p2align 3
L824:
	movl	%esi, 104(%esp)
L650:
	movl	152(%esp), %esi
	testl	%esi, %esi
	jne	L734
L648:
	movl	__ZL17viewportNodeCount.lto_priv.0, %esi
	movl	104(%esp), %eax
	addl	$1, __ZL4gtag.lto_priv.0
	movss	LC26, %xmm2
	movss	160(%esp), %xmm3
	movl	%esi, 164(%esp)
	.p2align 4
	.p2align 3
L812:
	movl	%eax, %edx
	sall	$5, %edx
	movss	__ZL3vsp.lto_priv.0(%edx), %xmm0
	comiss	%xmm3, %xmm0
	jnb	L635
	movss	__ZL3vsp.lto_priv.0+4(%edx), %xmm1
	addss	%xmm2, %xmm1
	comiss	__ZL3vsp.lto_priv.0+12(%edx), %xmm1
	jb	L803
	movss	__ZL3vsp.lto_priv.0+8(%edx), %xmm1
	addss	%xmm2, %xmm1
	comiss	__ZL3vsp.lto_priv.0+16(%edx), %xmm1
	jb	L803
	movl	$-1, __ZL3vsp.lto_priv.0+28(%edx)
L803:
	movl	%eax, %ecx
	sall	$5, %ecx
	movswl	__ZL3vsp.lto_priv.0+24(%ecx), %edx
	movl	%edx, %ebx
	cmpl	%edx, 164(%esp)
	jg	L810
	movl	%edx, %edi
	sall	$5, %edi
	leal	__ZL3vsp.lto_priv.0(%edi), %esi
	movzwl	__ZL3vsp.lto_priv.0+28(%edi), %edi
	cmpw	%di, __ZL3vsp.lto_priv.0+28(%ecx)
	je	L936
L808:
	movss	LC2, %xmm7
	movl	%edx, %ecx
	sall	$5, %ecx
	movss	__ZL3vsp.lto_priv.0(%ecx), %xmm1
	movaps	%xmm1, %xmm4
	subss	%xmm0, %xmm4
	comiss	%xmm4, %xmm7
	ja	L937
L810:
	movl	%edx, %eax
L807:
	testl	%eax, %eax
	jne	L812
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
L937:
	.cfi_restore_state
	movl	__ZL3vsp.lto_priv.0+28(%ecx), %edi
	movl	%eax, %edx
	movss	__ZL3vsp.lto_priv.0+4(%ecx), %xmm4
	movl	$2047, %esi
	sall	$5, %edx
	movss	__ZL3vsp.lto_priv.0+12(%ecx), %xmm5
	movl	%edi, __ZL3vsp.lto_priv.0+28(%edx)
	movss	__ZL3vsp.lto_priv.0+8(%ecx), %xmm0
	unpcklps	%xmm4, %xmm1
	unpcklps	%xmm5, %xmm0
	movlhps	%xmm0, %xmm1
	movups	%xmm1, __ZL3vsp.lto_priv.0(%edx)
	movss	__ZL3vsp.lto_priv.0+16(%ecx), %xmm0
	movswl	__ZL3vsp.lto_priv.0+24(%ecx), %edi
	movss	%xmm0, __ZL3vsp.lto_priv.0+16(%edx)
	movswl	__ZL3vsp.lto_priv.0+26(%ecx), %edx
	sall	$5, %edi
	movw	%dx, __ZL3vsp.lto_priv.0+26(%edi)
	movzwl	__ZL3vsp.lto_priv.0+24(%ecx), %edi
	sall	$5, %edx
	movw	%si, __ZL3vsp.lto_priv.0+26(%ecx)
	movw	%di, __ZL3vsp.lto_priv.0+24(%edx)
	movswl	__ZL3vsp.lto_priv.0+65528, %edx
	movw	%dx, __ZL3vsp.lto_priv.0+24(%ecx)
	sall	$5, %edx
	movw	%bx, __ZL3vsp.lto_priv.0+26(%edx)
	movw	%bx, __ZL3vsp.lto_priv.0+65528
	jmp	L807
	.p2align 4,,10
	.p2align 3
L936:
	movzwl	30(%esi), %edi
	cmpw	%di, __ZL3vsp.lto_priv.0+30(%ecx)
	jne	L808
	movss	8(%esi), %xmm0
	movswl	26(%esi), %edx
	movss	%xmm0, __ZL3vsp.lto_priv.0+8(%ecx)
	movss	16(%esi), %xmm0
	movss	%xmm0, __ZL3vsp.lto_priv.0+16(%ecx)
	movswl	24(%esi), %ecx
	movl	%ecx, %edi
	sall	$5, %ecx
	movw	%dx, __ZL3vsp.lto_priv.0+26(%ecx)
	sall	$5, %edx
	movw	%di, __ZL3vsp.lto_priv.0+24(%edx)
	movswl	__ZL3vsp.lto_priv.0+65528, %edx
	movl	$2047, %edi
	movw	%di, 26(%esi)
	movw	%dx, 24(%esi)
	sall	$5, %edx
	movw	%bx, __ZL3vsp.lto_priv.0+26(%edx)
	movw	%bx, __ZL3vsp.lto_priv.0+65528
	jmp	L807
	.p2align 4,,10
	.p2align 3
L830:
	movl	$3, %eax
L768:
	movl	156(%esp), %edx
	sall	$5, %edx
	movss	__ZL3vsp.lto_priv.0+12(%edx), %xmm0
	subss	LC2, %xmm0
	comiss	%xmm0, %xmm5
	jnb	L770
	sall	$5, %esi
	movl	__ZL3vsp.lto_priv.0+20(%esi), %edx
	testl	%edx, %edx
	je	L938
L773:
	movss	LC2, %xmm0
	movl	156(%esp), %ecx
	sall	$5, %ecx
	addss	__ZL3vsp.lto_priv.0+8(%ecx), %xmm0
	leal	-3(%eax), %ecx
	comiss	%xmm4, %xmm0
	cmovnb	%ecx, %eax
	cmpl	$1, %edx
	je	L777
	jmp	L774
	.p2align 4,,10
	.p2align 3
L848:
	movss	132(%esp), %xmm3
	comiss	%xmm7, %xmm5
	mulss	%xmm1, %xmm3
	movss	%xmm3, 100(%esp)
	jbe	L939
	movss	144(%esp), %xmm2
	subss	96(%esp), %xmm2
	movss	%xmm2, 112(%esp)
	mulss	164(%esp), %xmm2
	subss	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	comiss	%xmm2, %xmm3
	jbe	L737
	movl	$-1, 184(%esp)
	movl	$1, %eax
	movss	%xmm7, 200(%esp)
	jmp	L740
	.p2align 4,,10
	.p2align 3
L653:
	comiss	%xmm7, %xmm5
	jbe	L940
	movss	144(%esp), %xmm6
	subss	100(%esp), %xmm6
	movss	164(%esp), %xmm3
	movss	156(%esp), %xmm2
	mulss	132(%esp), %xmm2
	mulss	%xmm6, %xmm3
	movss	%xmm2, 112(%esp)
	subss	%xmm3, %xmm2
	xorps	%xmm3, %xmm3
	comiss	%xmm2, %xmm3
	jbe	L730
	movl	$-1, 184(%esp)
	movl	$1, %eax
	movss	%xmm7, 200(%esp)
	jmp	L733
	.p2align 4,,10
	.p2align 3
L729:
	movl	%eax, 148(%esp)
L657:
	movss	160(%esp), %xmm6
	comiss	%xmm4, %xmm6
	ja	L659
L711:
	movl	152(%esp), %eax
	movl	%esi, 156(%esp)
	movss	LC10, %xmm5
	movss	%xmm4, 112(%esp)
	divss	164(%esp), %xmm5
	movl	$0, 164(%esp)
	sall	$5, %eax
	movl	$-1, __ZL3vsp.lto_priv.0+20(%eax)
	movl	%esi, %eax
	xorl	%esi, %esi
	movss	%xmm5, 132(%esp)
	sall	$5, %eax
	movl	$-1, __ZL3vsp.lto_priv.0+20(%eax)
	movl	148(%esp), %eax
	cmpl	%eax, 164(%esp)
	je	L941
L660:
	movswl	__ZL3vsp.lto_priv.0+65528, %esi
	movl	164(%esp), %ebx
	movl	$2047, %edi
	movss	120(%esp), %xmm1
	movl	%esi, %eax
	movw	%si, 140(%esp)
	movss	200(%esp,%ebx,4), %xmm2
	sall	$5, %eax
	movl	156(%esp), %ebx
	movswl	__ZL3vsp.lto_priv.0+24(%eax), %edx
	movaps	%xmm2, %xmm0
	subss	112(%esp), %xmm0
	mulss	132(%esp), %xmm0
	movl	%edx, %ecx
	sall	$5, %edx
	movw	%di, __ZL3vsp.lto_priv.0+26(%edx)
	movl	%ebx, %edx
	sall	$16, %ebx
	sall	$5, %edx
	movw	%cx, __ZL3vsp.lto_priv.0+65528
	movl	__ZL3vsp.lto_priv.0(%edx), %ecx
	mulss	%xmm0, %xmm1
	movl	%ecx, __ZL3vsp.lto_priv.0(%eax)
	movl	__ZL3vsp.lto_priv.0+4(%edx), %ecx
	movl	%ecx, __ZL3vsp.lto_priv.0+4(%eax)
	movl	__ZL3vsp.lto_priv.0+8(%edx), %ecx
	movl	%ecx, __ZL3vsp.lto_priv.0+8(%eax)
	movl	__ZL3vsp.lto_priv.0+12(%edx), %ecx
	movl	%ecx, __ZL3vsp.lto_priv.0+12(%eax)
	movl	__ZL3vsp.lto_priv.0+16(%edx), %ecx
	movl	%ecx, __ZL3vsp.lto_priv.0+16(%eax)
	movl	__ZL3vsp.lto_priv.0+20(%edx), %ecx
	movl	%ecx, __ZL3vsp.lto_priv.0+20(%eax)
	movl	__ZL3vsp.lto_priv.0+24(%edx), %ecx
	movl	%ecx, __ZL3vsp.lto_priv.0+24(%eax)
	movl	__ZL3vsp.lto_priv.0+28(%edx), %ecx
	movl	%ecx, __ZL3vsp.lto_priv.0+28(%eax)
	movzwl	__ZL3vsp.lto_priv.0+24(%edx), %edi
	orl	%edi, %ebx
	movswl	%di, %ecx
	movzwl	140(%esp), %edi
	sall	$5, %ecx
	movl	%ebx, __ZL3vsp.lto_priv.0+24(%eax)
	movw	%di, __ZL3vsp.lto_priv.0+26(%ecx)
	movw	%di, __ZL3vsp.lto_priv.0+24(%edx)
	addss	128(%esp), %xmm1
	mulss	116(%esp), %xmm0
	movl	164(%esp), %ebx
	movss	%xmm2, __ZL3vsp.lto_priv.0(%eax)
	addss	124(%esp), %xmm0
	movl	184(%esp,%ebx,4), %ecx
	movss	%xmm1, __ZL3vsp.lto_priv.0+8(%edx)
	movss	%xmm1, __ZL3vsp.lto_priv.0+4(%eax)
	movl	%ecx, __ZL3vsp.lto_priv.0+20(%eax)
	movss	%xmm0, __ZL3vsp.lto_priv.0+16(%edx)
	movss	%xmm0, __ZL3vsp.lto_priv.0+12(%eax)
	testl	%esi, %esi
	je	L663
	movss	__ZL3vsp.lto_priv.0(%edx), %xmm3
	comiss	%xmm3, %xmm7
	ja	L663
	movl	%esi, %ebx
L816:
	movl	%esi, %eax
	sall	$5, %eax
	movss	__ZL3vsp.lto_priv.0(%eax), %xmm6
	comiss	160(%esp), %xmm6
	ja	L662
	movaps	%xmm3, %xmm5
	movaps	%xmm6, %xmm4
	movss	108(%esp), %xmm2
	movl	156(%esp), %eax
	subss	%xmm7, %xmm5
	subss	%xmm7, %xmm4
	movss	144(%esp), %xmm1
	sall	$5, %eax
	movl	__ZL3vsp.lto_priv.0+20(%eax), %edx
	mulss	%xmm2, %xmm5
	mulss	%xmm2, %xmm4
	addss	%xmm1, %xmm5
	addss	%xmm1, %xmm4
	testl	%edx, %edx
	jne	L942
	movl	$3, %eax
L666:
	movl	156(%esp), %edx
	sall	$5, %edx
	movss	__ZL3vsp.lto_priv.0+12(%edx), %xmm0
	subss	LC2, %xmm0
	comiss	%xmm0, %xmm5
	jb	L704
L705:
	addl	$1, %eax
L704:
	sall	$5, %esi
	movl	__ZL3vsp.lto_priv.0+20(%esi), %edx
	testl	%edx, %edx
	jne	L943
	subl	$3, %eax
L702:
	movl	156(%esp), %edx
	sall	$5, %edx
	movss	__ZL3vsp.lto_priv.0+16(%edx), %xmm0
	subss	LC2, %xmm0
	comiss	%xmm0, %xmm4
	jb	L699
L700:
	addl	$3, %eax
L699:
	cmpl	$8, %eax
	ja	L662
	jmp	*L671(,%eax,4)
	.section .rdata,"dr"
	.align 4
L671:
	.long	L662
	.long	L674
	.long	L674
	.long	L673
	.long	L672
	.long	L672
	.long	L673
	.long	L672
	.long	L670
	.text
	.p2align 4,,10
	.p2align 3
L674:
	movl	164(%esp), %edi
	xorl	%eax, %eax
L687:
	movl	$0, 240(%esp,%eax)
	movl	$0, 244(%esp,%eax)
	movl	$0, 248(%esp,%eax)
	movl	$0, 252(%esp,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L687
	movss	%xmm7, 88(%esp)
	movaps	%xmm6, %xmm1
	movaps	%xmm3, %xmm0
	leal	216(%esp), %esi
	leal	180(%esp), %edx
	movss	%xmm6, 92(%esp)
	movl	$0, 240(%esp,%eax)
	movl	$0, 244(%esp,%eax)
	movl	156(%esp), %eax
	movl	$3, 180(%esp)
	sall	$5, %eax
	movss	%xmm3, 100(%esp)
	movss	__ZL3vsp.lto_priv.0+4(%eax), %xmm7
	movl	%edi, 164(%esp)
	movss	__ZL3vsp.lto_priv.0+8(%eax), %xmm4
	movl	%esi, %eax
	movss	%xmm3, 232(%esp)
	unpcklps	%xmm7, %xmm0
	movss	%xmm7, 84(%esp)
	unpcklps	%xmm4, %xmm1
	movss	%xmm4, 96(%esp)
	movss	%xmm5, 236(%esp)
	movlhps	%xmm1, %xmm0
	movss	168(%esp), %xmm1
	movups	%xmm0, 216(%esp)
	movss	24(%ebp), %xmm0
	movss	%xmm5, 140(%esp)
	movss	%xmm0, 8(%esp)
	movss	20(%ebp), %xmm0
	movss	%xmm0, 4(%esp)
	movss	16(%ebp), %xmm0
	movss	%xmm0, (%esp)
	movss	12(%ebp), %xmm2
	movss	176(%esp), %xmm0
	call	__ZL17polymost_clipmostP4vec2IfERiffffff
	movl	_g_nodraw, %eax
	movss	140(%esp), %xmm5
	movss	100(%esp), %xmm3
	movss	96(%esp), %xmm4
	testl	%eax, %eax
	movss	92(%esp), %xmm6
	movss	88(%esp), %xmm7
	je	L944
	movl	__ZL10yax_drawcf, %eax
	cmpl	$-1, %eax
	je	L693
	movl	__ZL11yax_holencf(,%eax,4), %edx
	movss	84(%esp), %xmm0
	unpcklps	%xmm6, %xmm3
	leal	1(%edx), %ecx
	unpcklps	%xmm4, %xmm0
	leal	(%edx,%edx,2), %edx
	movl	%ecx, __ZL11yax_holencf(,%eax,4)
	leal	(%eax,%eax,2), %eax
	movlhps	%xmm0, %xmm3
	sall	$14, %eax
	movups	%xmm3, __ZL10yax_holecf(%eax,%edx,8)
	movss	%xmm5, __ZL10yax_holecf+16(%eax,%edx,8)
	movss	%xmm4, __ZL10yax_holecf+20(%eax,%edx,8)
L693:
	cmpw	$0, _editstatus
	je	L691
	movl	_doeditorcheck, %eax
	testl	%eax, %eax
	jne	L945
L691:
	movl	156(%esp), %eax
	movl	__ZL4gtag.lto_priv.0, %edx
	sall	$5, %eax
	movw	%dx, __ZL3vsp.lto_priv.0+28(%eax)
	movss	%xmm5, __ZL3vsp.lto_priv.0+4(%eax)
	.p2align 4
	.p2align 3
L662:
	movl	%ebx, %esi
L663:
	addl	$1, 164(%esp)
	movl	148(%esp), %eax
	cmpl	%eax, 164(%esp)
	jg	L650
	movl	%esi, 156(%esp)
	movl	148(%esp), %eax
	cmpl	%eax, 164(%esp)
	jne	L660
L941:
	movl	156(%esp), %eax
	sall	$5, %eax
	movswl	__ZL3vsp.lto_priv.0+24(%eax), %edx
	testl	%edx, %edx
	je	L650
	movss	__ZL3vsp.lto_priv.0(%eax), %xmm3
	comiss	%xmm3, %xmm7
	ja	L650
	movl	%esi, %ebx
	movl	%edx, %esi
	jmp	L816
	.p2align 4,,10
	.p2align 3
L943:
	movss	LC2, %xmm0
	movl	156(%esp), %ecx
	sall	$5, %ecx
	addss	__ZL3vsp.lto_priv.0+8(%ecx), %xmm0
	leal	-3(%eax), %ecx
	comiss	%xmm4, %xmm0
	cmovnb	%ecx, %eax
	cmpl	$1, %edx
	je	L700
	jmp	L702
	.p2align 4,,10
	.p2align 3
L942:
	movss	LC2, %xmm0
	addss	__ZL3vsp.lto_priv.0+4(%eax), %xmm0
	xorl	%eax, %eax
	ucomiss	%xmm5, %xmm0
	setb	%al
	addl	$3, %eax
	cmpl	$1, %edx
	je	L705
	jmp	L666
	.p2align 4,,10
	.p2align 3
L672:
	movl	156(%esp), %eax
	movss	%xmm7, 88(%esp)
	movaps	%xmm6, %xmm1
	movaps	%xmm3, %xmm0
	movl	$0, 248(%esp)
	leal	216(%esp), %esi
	leal	180(%esp), %edx
	sall	$5, %eax
	movl	$0, 252(%esp)
	movss	__ZL3vsp.lto_priv.0+4(%eax), %xmm7
	movss	__ZL3vsp.lto_priv.0+8(%eax), %xmm2
	movl	%esi, %eax
	movl	$0, 256(%esp)
	movl	$0, 260(%esp)
	unpcklps	%xmm2, %xmm1
	unpcklps	%xmm7, %xmm0
	movl	$0, 264(%esp)
	movlhps	%xmm1, %xmm0
	movaps	%xmm3, %xmm1
	movups	%xmm0, 216(%esp)
	movaps	%xmm6, %xmm0
	unpcklps	%xmm5, %xmm1
	unpcklps	%xmm4, %xmm0
	movl	$0, 268(%esp)
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 232(%esp)
	movss	24(%ebp), %xmm0
	movss	168(%esp), %xmm1
	movl	$0, 272(%esp)
	movss	%xmm0, 8(%esp)
	movss	20(%ebp), %xmm0
	movl	$0, 276(%esp)
	movss	%xmm0, 4(%esp)
	movss	16(%ebp), %xmm0
	movl	$4, 180(%esp)
	movss	%xmm0, (%esp)
	movss	176(%esp), %xmm0
	movss	%xmm2, 80(%esp)
	movss	12(%ebp), %xmm2
	movss	%xmm7, 84(%esp)
	movss	%xmm6, 92(%esp)
	movss	%xmm4, 96(%esp)
	movss	%xmm3, 100(%esp)
	movss	%xmm5, 140(%esp)
	call	__ZL17polymost_clipmostP4vec2IfERiffffff
	movl	_g_nodraw, %eax
	movss	140(%esp), %xmm5
	movss	100(%esp), %xmm3
	movss	96(%esp), %xmm4
	testl	%eax, %eax
	movss	92(%esp), %xmm6
	movss	88(%esp), %xmm7
	je	L946
	movl	__ZL10yax_drawcf, %eax
	cmpl	$-1, %eax
	je	L698
	movl	__ZL11yax_holencf(,%eax,4), %edx
	movss	84(%esp), %xmm0
	unpcklps	%xmm6, %xmm3
	movss	80(%esp), %xmm2
	leal	1(%edx), %ecx
	leal	(%edx,%edx,2), %edx
	movl	%ecx, __ZL11yax_holencf(,%eax,4)
	leal	(%eax,%eax,2), %eax
	unpcklps	%xmm2, %xmm0
	sall	$14, %eax
	movlhps	%xmm0, %xmm3
	movss	%xmm5, __ZL10yax_holecf+16(%eax,%edx,8)
	movups	%xmm3, __ZL10yax_holecf(%eax,%edx,8)
	movss	%xmm4, __ZL10yax_holecf+20(%eax,%edx,8)
L698:
	cmpw	$0, _editstatus
	je	L696
	movl	_doeditorcheck, %eax
	testl	%eax, %eax
	je	L696
	movl	180(%esp), %edx
	cmpl	$2, %edx
	jle	L696
	movl	%esi, %eax
	movss	%xmm7, 96(%esp)
	movss	%xmm5, 100(%esp)
	movss	%xmm4, 140(%esp)
	call	__ZL23polymost_polyeditorfuncPK4vec2IfEi.part.0.lto_priv.0
	movss	100(%esp), %xmm5
	movss	140(%esp), %xmm4
	movss	96(%esp), %xmm7
	.p2align 4
	.p2align 3
L696:
	movl	156(%esp), %eax
	movl	__ZL4gtag.lto_priv.0, %edx
	movl	%ebx, %esi
	sall	$5, %eax
	movw	%dx, __ZL3vsp.lto_priv.0+28(%eax)
	movss	%xmm5, __ZL3vsp.lto_priv.0+4(%eax)
	movss	%xmm4, __ZL3vsp.lto_priv.0+8(%eax)
	jmp	L663
	.p2align 4,,10
	.p2align 3
L783:
	movl	156(%esp), %eax
	movaps	%xmm3, %xmm0
	movaps	%xmm6, %xmm1
	movss	%xmm7, 88(%esp)
	unpcklps	%xmm4, %xmm1
	unpcklps	%xmm5, %xmm0
	movl	$0, 248(%esp)
	leal	216(%esp), %esi
	sall	$5, %eax
	movlhps	%xmm1, %xmm0
	movaps	%xmm3, %xmm1
	movups	%xmm0, 216(%esp)
	movaps	%xmm6, %xmm0
	movss	__ZL3vsp.lto_priv.0+16(%eax), %xmm7
	movss	__ZL3vsp.lto_priv.0+12(%eax), %xmm2
	movl	%esi, %eax
	movl	$0, 252(%esp)
	leal	180(%esp), %edx
	unpcklps	%xmm2, %xmm1
	unpcklps	%xmm7, %xmm0
	movl	$0, 256(%esp)
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 232(%esp)
	movss	24(%ebp), %xmm0
	movss	168(%esp), %xmm1
	movl	$0, 260(%esp)
	movss	%xmm0, 8(%esp)
	movss	20(%ebp), %xmm0
	movl	$0, 264(%esp)
	movss	%xmm0, 4(%esp)
	movss	16(%ebp), %xmm0
	movl	$0, 268(%esp)
	movl	$0, 272(%esp)
	movl	$0, 276(%esp)
	movl	$4, 180(%esp)
	movss	%xmm0, (%esp)
	movss	176(%esp), %xmm0
	movss	%xmm2, 100(%esp)
	movss	12(%ebp), %xmm2
	movss	%xmm5, 92(%esp)
	movss	%xmm4, 96(%esp)
	movss	%xmm7, 140(%esp)
	movss	%xmm3, 80(%esp)
	movss	%xmm6, 84(%esp)
	call	__ZL17polymost_clipmostP4vec2IfERiffffff
	movl	_g_nodraw, %eax
	movss	96(%esp), %xmm4
	movss	92(%esp), %xmm5
	movss	88(%esp), %xmm7
	testl	%eax, %eax
	je	L786
	movl	__ZL10yax_drawcf, %eax
	cmpl	$-1, %eax
	je	L787
	movl	__ZL11yax_holencf(,%eax,4), %edx
	movss	84(%esp), %xmm6
	movaps	%xmm5, %xmm0
	movss	80(%esp), %xmm3
	movss	100(%esp), %xmm2
	unpcklps	%xmm4, %xmm0
	leal	1(%edx), %ecx
	leal	(%edx,%edx,2), %edx
	unpcklps	%xmm6, %xmm3
	movl	%ecx, __ZL11yax_holencf(,%eax,4)
	leal	(%eax,%eax,2), %eax
	movss	140(%esp), %xmm6
	sall	$14, %eax
	movlhps	%xmm0, %xmm3
	movss	%xmm2, __ZL10yax_holecf+16(%eax,%edx,8)
	movups	%xmm3, __ZL10yax_holecf(%eax,%edx,8)
	movss	%xmm6, __ZL10yax_holecf+20(%eax,%edx,8)
L787:
	cmpw	$0, _editstatus
	je	L788
	movl	_doeditorcheck, %edi
	testl	%edi, %edi
	je	L788
	movl	180(%esp), %edx
	cmpl	$2, %edx
	jle	L788
	movl	%esi, %eax
	movss	%xmm7, 96(%esp)
	movss	%xmm4, 100(%esp)
	movss	%xmm5, 140(%esp)
	call	__ZL23polymost_polyeditorfuncPK4vec2IfEi.part.0.lto_priv.0
	movss	100(%esp), %xmm4
	movss	140(%esp), %xmm5
	movss	96(%esp), %xmm7
	.p2align 4
	.p2align 3
L788:
	movl	156(%esp), %eax
	movl	__ZL4gtag.lto_priv.0, %edx
	movl	%ebx, %esi
	sall	$5, %eax
	movw	%dx, __ZL3vsp.lto_priv.0+30(%eax)
	movss	%xmm5, __ZL3vsp.lto_priv.0+12(%eax)
	movss	%xmm4, __ZL3vsp.lto_priv.0+16(%eax)
	jmp	L785
	.p2align 4,,10
	.p2align 3
L673:
	movl	164(%esp), %edi
	xorl	%eax, %eax
L680:
	movl	$0, 240(%esp,%eax)
	movl	$0, 244(%esp,%eax)
	movl	$0, 248(%esp,%eax)
	movl	$0, 252(%esp,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L680
	movss	%xmm7, 88(%esp)
	movaps	%xmm6, %xmm1
	movaps	%xmm3, %xmm0
	leal	216(%esp), %esi
	leal	180(%esp), %edx
	movss	%xmm3, 92(%esp)
	movl	$0, 240(%esp,%eax)
	movl	$0, 244(%esp,%eax)
	movl	156(%esp), %eax
	movl	$3, 180(%esp)
	sall	$5, %eax
	movss	%xmm6, 100(%esp)
	movss	__ZL3vsp.lto_priv.0+4(%eax), %xmm5
	movl	%edi, 164(%esp)
	movss	__ZL3vsp.lto_priv.0+8(%eax), %xmm7
	movl	%esi, %eax
	movss	%xmm6, 232(%esp)
	unpcklps	%xmm5, %xmm0
	movss	%xmm5, 96(%esp)
	unpcklps	%xmm7, %xmm1
	movss	%xmm7, 84(%esp)
	movss	%xmm4, 236(%esp)
	movlhps	%xmm1, %xmm0
	movss	168(%esp), %xmm1
	movups	%xmm0, 216(%esp)
	movss	24(%ebp), %xmm0
	movss	%xmm4, 140(%esp)
	movss	%xmm0, 8(%esp)
	movss	20(%ebp), %xmm0
	movss	%xmm0, 4(%esp)
	movss	16(%ebp), %xmm0
	movss	%xmm0, (%esp)
	movss	12(%ebp), %xmm2
	movss	176(%esp), %xmm0
	call	__ZL17polymost_clipmostP4vec2IfERiffffff
	movl	_g_nodraw, %edx
	movss	140(%esp), %xmm4
	movss	100(%esp), %xmm6
	movss	96(%esp), %xmm5
	testl	%edx, %edx
	movss	92(%esp), %xmm3
	movss	88(%esp), %xmm7
	je	L947
	movl	__ZL10yax_drawcf, %eax
	cmpl	$-1, %eax
	je	L686
	movl	__ZL11yax_holencf(,%eax,4), %edx
	movss	84(%esp), %xmm2
	movaps	%xmm5, %xmm0
	unpcklps	%xmm6, %xmm3
	leal	1(%edx), %ecx
	unpcklps	%xmm2, %xmm0
	leal	(%edx,%edx,2), %edx
	movl	%ecx, __ZL11yax_holencf(,%eax,4)
	leal	(%eax,%eax,2), %eax
	movlhps	%xmm0, %xmm3
	sall	$14, %eax
	movups	%xmm3, __ZL10yax_holecf(%eax,%edx,8)
	movss	%xmm5, __ZL10yax_holecf+16(%eax,%edx,8)
	movss	%xmm4, __ZL10yax_holecf+20(%eax,%edx,8)
L686:
	cmpw	$0, _editstatus
	je	L684
	movl	_doeditorcheck, %eax
	testl	%eax, %eax
	jne	L948
L684:
	movl	156(%esp), %eax
	movl	__ZL4gtag.lto_priv.0, %edx
	movl	%ebx, %esi
	sall	$5, %eax
	movw	%dx, __ZL3vsp.lto_priv.0+28(%eax)
	movss	%xmm4, __ZL3vsp.lto_priv.0+8(%eax)
	jmp	L663
	.p2align 4,,10
	.p2align 3
L780:
	movl	164(%esp), %edi
	xorl	%eax, %eax
L789:
	movl	$0, 240(%esp,%eax)
	movl	$0, 244(%esp,%eax)
	movl	$0, 248(%esp,%eax)
	movl	$0, 252(%esp,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L789
	movaps	%xmm6, %xmm1
	movaps	%xmm3, %xmm0
	movss	%xmm7, 96(%esp)
	leal	216(%esp), %esi
	unpcklps	%xmm5, %xmm0
	movl	$0, 240(%esp,%eax)
	leal	180(%esp), %edx
	movl	$0, 244(%esp,%eax)
	movl	156(%esp), %eax
	movl	$3, 180(%esp)
	sall	$5, %eax
	movss	%xmm5, 100(%esp)
	movss	__ZL3vsp.lto_priv.0+16(%eax), %xmm4
	movss	__ZL3vsp.lto_priv.0+12(%eax), %xmm7
	movl	%esi, %eax
	movss	%xmm3, 232(%esp)
	movl	%edi, 164(%esp)
	unpcklps	%xmm4, %xmm1
	movss	%xmm6, 84(%esp)
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 216(%esp)
	movss	24(%ebp), %xmm0
	movss	168(%esp), %xmm1
	movss	%xmm7, 236(%esp)
	movss	%xmm0, 8(%esp)
	movss	20(%ebp), %xmm0
	movss	%xmm7, 140(%esp)
	movss	%xmm0, 4(%esp)
	movss	16(%ebp), %xmm0
	movss	%xmm4, 88(%esp)
	movss	%xmm0, (%esp)
	movss	12(%ebp), %xmm2
	movss	176(%esp), %xmm0
	movss	%xmm3, 92(%esp)
	call	__ZL17polymost_clipmostP4vec2IfERiffffff
	movl	_g_nodraw, %ecx
	movss	100(%esp), %xmm5
	movss	96(%esp), %xmm7
	testl	%ecx, %ecx
	je	L791
	movl	__ZL10yax_drawcf, %eax
	cmpl	$-1, %eax
	je	L792
	movl	__ZL11yax_holencf(,%eax,4), %edx
	movss	84(%esp), %xmm6
	movaps	%xmm5, %xmm0
	movss	92(%esp), %xmm3
	movss	88(%esp), %xmm4
	leal	1(%edx), %ecx
	leal	(%edx,%edx,2), %edx
	unpcklps	%xmm6, %xmm3
	movl	%ecx, __ZL11yax_holencf(,%eax,4)
	leal	(%eax,%eax,2), %eax
	unpcklps	%xmm4, %xmm0
	movss	140(%esp), %xmm6
	sall	$14, %eax
	movlhps	%xmm0, %xmm3
	movss	%xmm4, __ZL10yax_holecf+20(%eax,%edx,8)
	movups	%xmm3, __ZL10yax_holecf(%eax,%edx,8)
	movss	%xmm6, __ZL10yax_holecf+16(%eax,%edx,8)
L792:
	cmpw	$0, _editstatus
	je	L793
	movl	_doeditorcheck, %edx
	testl	%edx, %edx
	jne	L949
L793:
	movl	156(%esp), %eax
	movl	__ZL4gtag.lto_priv.0, %edx
	movl	%ebx, %esi
	sall	$5, %eax
	movw	%dx, __ZL3vsp.lto_priv.0+30(%eax)
	movss	%xmm5, __ZL3vsp.lto_priv.0+12(%eax)
	jmp	L785
	.p2align 4,,10
	.p2align 3
L745:
	divss	140(%esp), %xmm2
	mulss	112(%esp), %xmm2
	addss	%xmm7, %xmm2
	comiss	%xmm6, %xmm2
	jbe	L928
	comiss	%xmm2, %xmm5
	jbe	L950
	movss	%xmm3, 156(%esp)
	leal	1(%eax), %edi
	flds	156(%esp)
	movl	%edi, 148(%esp)
	movl	$0, 184(%esp,%eax,4)
	movss	%xmm2, 200(%esp,%eax,4)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fstps	140(%esp)
	movss	%xmm0, 156(%esp)
	flds	156(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	movss	140(%esp), %xmm4
	fstps	156(%esp)
	comiss	156(%esp), %xmm4
	jbe	L756
	movaps	%xmm3, %xmm1
	xorps	%xmm4, %xmm4
	mulss	%xmm0, %xmm1
	comiss	%xmm4, %xmm1
	jnb	L951
L751:
	cmpl	$2, 148(%esp)
	je	L755
	movl	$1, 148(%esp)
	jmp	L757
	.p2align 4,,10
	.p2align 3
L930:
	movss	%xmm1, 160(%esp)
	movaps	%xmm1, %xmm0
	subss	%xmm7, %xmm0
	mulss	108(%esp), %xmm0
	addss	136(%esp), %xmm0
	movss	%xmm0, 136(%esp)
	jmp	L646
	.p2align 4,,10
	.p2align 3
L939:
	movss	144(%esp), %xmm3
	subss	96(%esp), %xmm3
	movss	%xmm3, 112(%esp)
	jmp	L737
	.p2align 4,,10
	.p2align 3
L940:
	movss	156(%esp), %xmm3
	mulss	132(%esp), %xmm3
	movss	144(%esp), %xmm6
	subss	100(%esp), %xmm6
	movss	%xmm3, 112(%esp)
	jmp	L730
	.p2align 4,,10
	.p2align 3
L784:
	movl	156(%esp), %eax
	movaps	%xmm6, %xmm1
	movaps	%xmm3, %xmm0
	movss	%xmm7, 96(%esp)
	movl	$0, 248(%esp)
	leal	216(%esp), %esi
	leal	180(%esp), %edx
	sall	$5, %eax
	movl	$0, 252(%esp)
	movss	__ZL3vsp.lto_priv.0+4(%eax), %xmm4
	movss	__ZL3vsp.lto_priv.0+8(%eax), %xmm5
	movl	$0, 256(%esp)
	movss	__ZL3vsp.lto_priv.0+16(%eax), %xmm7
	movss	__ZL3vsp.lto_priv.0+12(%eax), %xmm2
	movl	%esi, %eax
	movl	$0, 260(%esp)
	unpcklps	%xmm5, %xmm1
	unpcklps	%xmm4, %xmm0
	movl	$0, 264(%esp)
	movlhps	%xmm1, %xmm0
	movaps	%xmm3, %xmm1
	movups	%xmm0, 216(%esp)
	movaps	%xmm6, %xmm0
	unpcklps	%xmm2, %xmm1
	unpcklps	%xmm7, %xmm0
	movl	$0, 268(%esp)
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 232(%esp)
	movss	24(%ebp), %xmm0
	movss	168(%esp), %xmm1
	movl	$0, 272(%esp)
	movss	%xmm0, 8(%esp)
	movss	20(%ebp), %xmm0
	movl	$0, 276(%esp)
	movss	%xmm0, 4(%esp)
	movss	16(%ebp), %xmm0
	movl	$4, 180(%esp)
	movss	%xmm0, (%esp)
	movss	176(%esp), %xmm0
	movss	%xmm2, 100(%esp)
	movss	12(%ebp), %xmm2
	movss	%xmm7, 140(%esp)
	movss	%xmm5, 80(%esp)
	movss	%xmm4, 84(%esp)
	movss	%xmm3, 88(%esp)
	movss	%xmm6, 92(%esp)
	call	__ZL17polymost_clipmostP4vec2IfERiffffff
	movl	_g_nodraw, %eax
	movss	96(%esp), %xmm7
	testl	%eax, %eax
	je	L799
	movl	__ZL10yax_drawcf, %eax
	cmpl	$-1, %eax
	je	L800
	movl	__ZL11yax_holencf(,%eax,4), %edx
	movss	80(%esp), %xmm5
	movss	84(%esp), %xmm4
	movss	92(%esp), %xmm6
	leal	1(%edx), %ecx
	movss	88(%esp), %xmm3
	movss	100(%esp), %xmm2
	leal	(%edx,%edx,2), %edx
	unpcklps	%xmm5, %xmm4
	movl	%ecx, __ZL11yax_holencf(,%eax,4)
	leal	(%eax,%eax,2), %eax
	movss	140(%esp), %xmm5
	sall	$14, %eax
	unpcklps	%xmm6, %xmm3
	movss	%xmm2, __ZL10yax_holecf+16(%eax,%edx,8)
	movlhps	%xmm4, %xmm3
	movss	%xmm5, __ZL10yax_holecf+20(%eax,%edx,8)
	movups	%xmm3, __ZL10yax_holecf(%eax,%edx,8)
L800:
	cmpw	$0, _editstatus
	je	L801
	movl	_doeditorcheck, %eax
	testl	%eax, %eax
	je	L801
	movl	180(%esp), %edx
	cmpl	$2, %edx
	jle	L801
	movss	%xmm7, 140(%esp)
	movl	%esi, %eax
	call	__ZL23polymost_polyeditorfuncPK4vec2IfEi.part.0.lto_priv.0
	movss	140(%esp), %xmm7
	.p2align 4
	.p2align 3
L801:
	movl	156(%esp), %eax
	movl	%ebx, %esi
	sall	$5, %eax
	movl	$-1, __ZL3vsp.lto_priv.0+28(%eax)
	jmp	L785
	.p2align 4,,10
	.p2align 3
L670:
	movl	156(%esp), %eax
	movaps	%xmm6, %xmm1
	movaps	%xmm3, %xmm0
	movss	%xmm7, 88(%esp)
	movl	$0, 248(%esp)
	leal	216(%esp), %esi
	leal	180(%esp), %edx
	sall	$5, %eax
	movl	$0, 252(%esp)
	movss	__ZL3vsp.lto_priv.0+4(%eax), %xmm4
	movss	__ZL3vsp.lto_priv.0+8(%eax), %xmm5
	movl	$0, 256(%esp)
	movss	__ZL3vsp.lto_priv.0+16(%eax), %xmm7
	movss	__ZL3vsp.lto_priv.0+12(%eax), %xmm2
	movl	%esi, %eax
	movl	$0, 260(%esp)
	unpcklps	%xmm5, %xmm1
	unpcklps	%xmm4, %xmm0
	movl	$0, 264(%esp)
	movlhps	%xmm1, %xmm0
	movaps	%xmm3, %xmm1
	movups	%xmm0, 216(%esp)
	movaps	%xmm6, %xmm0
	unpcklps	%xmm2, %xmm1
	unpcklps	%xmm7, %xmm0
	movl	$0, 268(%esp)
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 232(%esp)
	movss	24(%ebp), %xmm0
	movss	168(%esp), %xmm1
	movl	$0, 272(%esp)
	movss	%xmm0, 8(%esp)
	movss	20(%ebp), %xmm0
	movl	$0, 276(%esp)
	movss	%xmm0, 4(%esp)
	movss	16(%ebp), %xmm0
	movl	$4, 180(%esp)
	movss	%xmm0, (%esp)
	movss	176(%esp), %xmm0
	movss	%xmm2, 80(%esp)
	movss	12(%ebp), %xmm2
	movss	%xmm7, 84(%esp)
	movss	%xmm5, 92(%esp)
	movss	%xmm4, 96(%esp)
	movss	%xmm3, 100(%esp)
	movss	%xmm6, 140(%esp)
	call	__ZL17polymost_clipmostP4vec2IfERiffffff
	movl	_g_nodraw, %edi
	movss	140(%esp), %xmm6
	movss	100(%esp), %xmm3
	movss	96(%esp), %xmm4
	testl	%edi, %edi
	movss	92(%esp), %xmm5
	movss	88(%esp), %xmm7
	je	L952
	movl	__ZL10yax_drawcf, %eax
	cmpl	$-1, %eax
	je	L679
	movl	__ZL11yax_holencf(,%eax,4), %edx
	unpcklps	%xmm5, %xmm4
	movss	80(%esp), %xmm5
	unpcklps	%xmm6, %xmm3
	movlhps	%xmm4, %xmm3
	leal	1(%edx), %ecx
	leal	(%edx,%edx,2), %edx
	movl	%ecx, __ZL11yax_holencf(,%eax,4)
	leal	(%eax,%eax,2), %eax
	sall	$14, %eax
	movss	%xmm5, __ZL10yax_holecf+16(%eax,%edx,8)
	movss	84(%esp), %xmm5
	movups	%xmm3, __ZL10yax_holecf(%eax,%edx,8)
	movss	%xmm5, __ZL10yax_holecf+20(%eax,%edx,8)
L679:
	cmpw	$0, _editstatus
	je	L677
	movl	_doeditorcheck, %ecx
	testl	%ecx, %ecx
	je	L677
	movl	180(%esp), %edx
	cmpl	$2, %edx
	jle	L677
	movss	%xmm7, 140(%esp)
	movl	%esi, %eax
	call	__ZL23polymost_polyeditorfuncPK4vec2IfEi.part.0.lto_priv.0
	movss	140(%esp), %xmm7
	.p2align 4
	.p2align 3
L677:
	movl	156(%esp), %eax
	movl	%ebx, %esi
	sall	$5, %eax
	movl	$-1, __ZL3vsp.lto_priv.0+28(%eax)
	jmp	L663
L950:
	movss	%xmm3, 156(%esp)
	flds	156(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fstps	148(%esp)
	movss	%xmm0, 156(%esp)
	flds	156(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	movss	148(%esp), %xmm4
	fstps	156(%esp)
	comiss	156(%esp), %xmm4
	ja	L743
L748:
	movl	%eax, 148(%esp)
	jmp	L814
L922:
	movss	%xmm3, 156(%esp)
	flds	156(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fstps	148(%esp)
	movss	%xmm6, 156(%esp)
	flds	156(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	movss	148(%esp), %xmm2
	fstps	156(%esp)
	comiss	156(%esp), %xmm2
	ja	L727
L728:
	movl	%eax, 148(%esp)
	jmp	L659
L952:
	movl	__ZL16domostpolymethod, %ecx
	movl	180(%esp), %edx
	movl	%esi, %eax
	movss	%xmm7, 140(%esp)
	call	__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0
	movss	140(%esp), %xmm7
	jmp	L677
L799:
	movl	__ZL16domostpolymethod, %ecx
	movl	180(%esp), %edx
	movl	%esi, %eax
	movss	%xmm7, 140(%esp)
	call	__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0
	movss	140(%esp), %xmm7
	jmp	L801
L786:
	movl	__ZL16domostpolymethod, %ecx
	movl	180(%esp), %edx
	movl	%esi, %eax
	movss	%xmm7, 96(%esp)
	movss	%xmm4, 100(%esp)
	movss	%xmm5, 140(%esp)
	call	__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0
	movss	96(%esp), %xmm7
	movss	100(%esp), %xmm4
	movss	140(%esp), %xmm5
	jmp	L788
L946:
	movl	__ZL16domostpolymethod, %ecx
	movl	180(%esp), %edx
	movl	%esi, %eax
	movss	%xmm7, 96(%esp)
	movss	%xmm5, 100(%esp)
	movss	%xmm4, 140(%esp)
	call	__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0
	movss	100(%esp), %xmm5
	movss	140(%esp), %xmm4
	movss	96(%esp), %xmm7
	jmp	L696
L947:
	movl	__ZL16domostpolymethod, %ecx
	movl	180(%esp), %edx
	movl	%esi, %eax
	movss	%xmm7, 100(%esp)
	movss	%xmm4, 140(%esp)
	call	__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0
	movss	100(%esp), %xmm7
	movss	140(%esp), %xmm4
	jmp	L684
L944:
	movl	__ZL16domostpolymethod, %ecx
	movl	180(%esp), %edx
	movl	%esi, %eax
	movss	%xmm7, 100(%esp)
	movss	%xmm5, 140(%esp)
	call	__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0
	movss	100(%esp), %xmm7
	movss	140(%esp), %xmm5
	jmp	L691
L796:
	movl	__ZL16domostpolymethod, %ecx
	movl	180(%esp), %edx
	movl	%esi, %eax
	movss	%xmm7, 100(%esp)
	movss	%xmm4, 140(%esp)
	call	__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0
	movss	100(%esp), %xmm7
	movss	140(%esp), %xmm4
	jmp	L798
L791:
	movl	__ZL16domostpolymethod, %ecx
	movl	180(%esp), %edx
	movl	%esi, %eax
	movss	%xmm7, 100(%esp)
	movss	%xmm5, 140(%esp)
	call	__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0
	movss	100(%esp), %xmm7
	movss	140(%esp), %xmm5
	jmp	L793
L822:
	movl	$0, 104(%esp)
	jmp	L648
L945:
	movl	180(%esp), %edx
	cmpl	$2, %edx
	jle	L691
	movl	%esi, %eax
	movss	%xmm7, 100(%esp)
	movss	%xmm5, 140(%esp)
	call	__ZL23polymost_polyeditorfuncPK4vec2IfEi.part.0.lto_priv.0
	movss	100(%esp), %xmm7
	movss	140(%esp), %xmm5
	jmp	L691
L949:
	movl	180(%esp), %edx
	cmpl	$2, %edx
	jle	L793
	movl	%esi, %eax
	movss	%xmm7, 100(%esp)
	movss	%xmm5, 140(%esp)
	call	__ZL23polymost_polyeditorfuncPK4vec2IfEi.part.0.lto_priv.0
	movss	100(%esp), %xmm7
	movss	140(%esp), %xmm5
	jmp	L793
L948:
	movl	180(%esp), %edx
	cmpl	$2, %edx
	jle	L684
	movl	%esi, %eax
	movss	%xmm7, 100(%esp)
	movss	%xmm4, 140(%esp)
	call	__ZL23polymost_polyeditorfuncPK4vec2IfEi.part.0.lto_priv.0
	movss	100(%esp), %xmm7
	movss	140(%esp), %xmm4
	jmp	L684
L934:
	movl	180(%esp), %edx
	cmpl	$2, %edx
	jle	L798
	movl	%esi, %eax
	movss	%xmm7, 100(%esp)
	movss	%xmm4, 140(%esp)
	call	__ZL23polymost_polyeditorfuncPK4vec2IfEi.part.0.lto_priv.0
	movss	100(%esp), %xmm7
	movss	140(%esp), %xmm4
	jmp	L798
L933:
	movl	$1, 148(%esp)
	jmp	L659
L932:
	movl	$1, 148(%esp)
	jmp	L814
L931:
	divss	%xmm3, %xmm6
	mulss	112(%esp), %xmm6
	addss	%xmm7, %xmm6
	comiss	%xmm4, %xmm6
	jbe	L714
	comiss	%xmm6, %xmm5
	jbe	L718
	movl	148(%esp), %edi
	addl	$2, %eax
	movl	%eax, 148(%esp)
	movl	$1, 184(%esp,%edi,4)
	movss	%xmm6, 200(%esp,%edi,4)
	jmp	L658
L951:
	divss	%xmm3, %xmm0
	mulss	112(%esp), %xmm0
	addss	%xmm7, %xmm0
	comiss	%xmm6, %xmm0
	jbe	L751
	comiss	%xmm0, %xmm5
	jbe	L756
	movl	$1, 184(%esp,%edi,4)
	addl	$2, %eax
	movl	%eax, 148(%esp)
	movss	%xmm0, 200(%esp,%edi,4)
	jmp	L755
	.cfi_endproc
LFE33:
	.section .rdata,"dr"
	.align 4
LC27:
	.ascii "polymost_internal_nonparallaxed(n0:{x:%f, y:%f}, n1:{x:%f, y:%f}, ryp0:%f, ryp1:%f, x0:%f, x1:%f, y0:%f, y1:%f, sectnum:%d)\0"
	.text
	.p2align 4
	.def	__ZL31polymost_internal_nonparallaxed4vec2IfES0_ffffffi;	.scl	3;	.type	32;	.endef
__ZL31polymost_internal_nonparallaxed4vec2IfES0_ffffffi:
LFB38:
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
	subl	$256, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	20(%edi), %esi
	movss	(%edi), %xmm5
	movl	%eax, -72(%ebp)
	movss	8(%edi), %xmm6
	movss	%xmm0, -20(%ebp)
	movss	16(%edi), %xmm7
	flds	-20(%ebp)
	movss	%xmm1, -20(%ebp)
	flds	-20(%ebp)
	movl	%esi, %eax
	movss	%xmm6, -20(%ebp)
	movss	12(%edi), %xmm6
	andb	$-17, %ah
	movl	%edx, -80(%ebp)
	leal	(%eax,%eax,4), %edx
	movss	%xmm2, -32(%ebp)
	leal	0(,%edx,8), %ebx
	movss	%xmm6, -24(%ebp)
	movss	%xmm7, -28(%ebp)
	movl	%esi, -108(%ebp)
	movss	%xmm5, -104(%ebp)
	flds	-28(%ebp)
	movss	4(%edi), %xmm6
	movss	_fglobalposx, %xmm4
	movl	%ebx, -48(%ebp)
	movss	_fglobalposy, %xmm3
	addl	_sector, %ebx
	movss	%xmm6, -96(%ebp)
	movss	_fcosglobalang, %xmm1
	fstpl	-144(%ebp)
	flds	-24(%ebp)
	movss	_fsinglobalang, %xmm0
	movss	%xmm4, -128(%ebp)
	movss	%xmm3, -120(%ebp)
	fstpl	-136(%ebp)
	flds	-20(%ebp)
	movss	%xmm1, -64(%ebp)
	movss	%xmm0, -56(%ebp)
	fstpl	-88(%ebp)
	flds	-32(%ebp)
	movl	%ebx, -44(%ebp)
	fstpl	-40(%ebp)
	fstl	-152(%ebp)
	fxch	%st(1)
	fstl	-160(%ebp)
	movl	%eax, 88(%esp)
	flds	-28(%ebp)
	fstpl	80(%esp)
	flds	-24(%ebp)
	fstpl	72(%esp)
	flds	-20(%ebp)
	fstpl	64(%esp)
	flds	-32(%ebp)
	fstpl	56(%esp)
	fxch	%st(1)
	fstpl	48(%esp)
	fstpl	40(%esp)
	flds	-96(%ebp)
	fstpl	32(%esp)
	flds	-104(%ebp)
	fstpl	24(%esp)
	flds	-80(%ebp)
	fstpl	16(%esp)
	flds	-72(%ebp)
	movl	$LC27, 4(%esp)
	movl	$3, (%esp)
	fstpl	8(%esp)
	call	__Z26buildgl_outputDebugMessagehPKcz.constprop.0
	movss	-56(%ebp), %xmm0
	movss	-64(%ebp), %xmm1
	movl	_globalorientation, %edi
	movss	-120(%ebp), %xmm3
	movss	-128(%ebp), %xmm4
	testl	$64, %edi
	je	L954
	movswl	(%ebx), %eax
	movl	_wall, %esi
	movl	%ebx, -44(%ebp)
	sall	$5, %eax
	movl	%esi, -176(%ebp)
	addl	%esi, %eax
	movswl	8(%eax), %edx
	sall	$5, %edx
	addl	%esi, %edx
	movl	(%eax), %esi
	movl	(%edx), %ecx
	movl	%esi, -56(%ebp)
	subl	%esi, %ecx
	movl	4(%eax), %esi
	movl	4(%edx), %eax
	movl	%ecx, -120(%ebp)
	subl	%esi, %eax
	movl	%esi, -64(%ebp)
	movl	%edi, %esi
	movl	%eax, %edx
	movl	%eax, -128(%ebp)
	movl	%ecx, %eax
	imull	%ecx, %eax
	imull	%edx, %edx
	addl	%edx, %eax
	andl	$2, %esi
	movl	%esi, -168(%ebp)
	je	L955
/APP
 # 4841 "source/build/src/polymost.cpp" 1
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
 # 4841 "source/build/src/polymost.cpp" 1
	movl %eax, (_fpuasm); fildl (_fpuasm); addl %eax, %eax; fstps (_fpuasm); sbbl %ebx, %ebx; movl (_fpuasm), %eax; movl %eax, %ecx; andl $0x007ff000, %eax; shrl $10, %eax; subl $0x3f800000, %ecx; shrl $23, %ecx; movl _reciptable(%eax), %eax; sarl %cl, %eax; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	movl	-44(%ebp), %ebx
	xorps	%xmm1, %xmm1
	movl	_globalorientation, %edi
	cvtsi2ssl	%eax, %xmm1
	mulss	LC28, %xmm1
	movswl	(%ebx), %eax
	sall	$5, %eax
	addl	_wall, %eax
	movl	(%eax), %ebx
	movl	4(%eax), %eax
	movl	%ebx, -56(%ebp)
	movl	%eax, -64(%ebp)
L956:
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	movl	_globalposx, %eax
	subl	-56(%ebp), %eax
	cvtsi2ssl	-120(%ebp), %xmm0
	xorps	%xmm3, %xmm3
	movss	_fsinglobalang, %xmm6
	cvtsi2ssl	-128(%ebp), %xmm2
	mulss	%xmm1, %xmm0
	mulss	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	movl	_globalposy, %eax
	subl	-64(%ebp), %eax
	cvtsi2ssl	%eax, %xmm3
	movl	%edi, %eax
	andl	$4, %eax
	movaps	%xmm0, %xmm4
	cmpl	$1, %eax
	mulss	%xmm1, %xmm4
	movaps	%xmm2, %xmm5
	movaps	%xmm2, %xmm7
	sbbl	%eax, %eax
	mulss	%xmm3, %xmm5
	andl	$16, %eax
	mulss	%xmm2, %xmm1
	addl	$16, %eax
	mulss	%xmm0, %xmm3
	xorl	%eax, %edi
	mulss	%xmm6, %xmm7
	movl	%edi, _globalorientation
	addss	%xmm5, %xmm4
	movss	_fcosglobalang, %xmm5
	subss	%xmm1, %xmm3
	mulss	%xmm5, %xmm2
	movaps	%xmm0, %xmm1
	mulss	%xmm5, %xmm1
	mulss	%xmm6, %xmm0
	addss	%xmm7, %xmm1
	subss	%xmm2, %xmm0
L954:
	fldl	_gxyaspect
	movl	%edi, %edx
	movl	$0, __ZL4xtex.lto_priv.0
	movl	$0, __ZL4xtex.lto_priv.0+4
	fstl	__ZL4ytex.lto_priv.0
	andl	$2, %edx
	jne	L967
	movl	__ZL11global_cf_z, %eax
	movl	_globalposz, %ecx
	cmpl	%ecx, %eax
	je	L967
	subl	%ecx, %eax
	movl	%eax, -56(%ebp)
	fildl	-56(%ebp)
	fdivrp	%st, %st(1)
	fstl	__ZL4ytex.lto_priv.0
L967:
	movss	__ZL6ghoriz.lto_priv.0, %xmm2
	fld	%st(0)
	xorps	LC0, %xmm2
	movss	%xmm2, -56(%ebp)
	fmuls	-56(%ebp)
	fstl	__ZL4otex.lto_priv.0
	testl	$8, %edi
	je	L968
	movss	LC31, %xmm2
	mulss	LC6, %xmm4
	mulss	LC30, %xmm3
	mulss	%xmm2, %xmm1
	mulss	%xmm2, %xmm0
	movss	%xmm4, -56(%ebp)
	flds	-56(%ebp)
	movss	%xmm3, -56(%ebp)
L969:
	movaps	%xmm0, %xmm7
	fildl	_viewingrange
	movss	%xmm1, -120(%ebp)
	movss	LC35, %xmm2
	mulss	%xmm2, %xmm7
	mulss	%xmm1, %xmm2
	fld	%st(0)
	movss	%xmm7, -64(%ebp)
	fmuls	-64(%ebp)
	movss	%xmm2, -64(%ebp)
	fstl	__ZL4xtex.lto_priv.0+8
	fxch	%st(1)
	fmuls	-64(%ebp)
	fstl	-64(%ebp)
	fstpl	__ZL4xtex.lto_priv.0+16
	fld	%st(3)
	fmul	%st(2), %st
	fstl	__ZL4ytex.lto_priv.0+8
	fld	%st(4)
	fmuls	-56(%ebp)
	fstl	__ZL4ytex.lto_priv.0+16
	flds	_ghalfx
	fxch	%st(3)
	fsubrs	-120(%ebp)
	fmul	%st(3), %st
	fxch	%st(4)
	fmul	%st(5), %st
	faddp	%st, %st(4)
	fxch	%st(3)
	fstl	__ZL4otex.lto_priv.0+8
	fld	%st(4)
	fmuls	-56(%ebp)
	movss	%xmm0, -56(%ebp)
	fldl	-64(%ebp)
	fadds	-56(%ebp)
	fmulp	%st, %st(4)
	fsubp	%st, %st(3)
	fxch	%st(2)
	fstl	__ZL4otex.lto_priv.0+16
	testl	$4, %edi
	je	L970
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	movl	$__ZL4xtex.lto_priv.0+8, %eax
	movl	$__ZL4xtex.lto_priv.0+16, %ebx
/APP
 # 4895 "source/build/src/polymost.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl 4(%eax), %ecx; movl %edx, (%eax); movl 4(%ebx), %edx; movl %ecx, 4(%ebx); movl %edx, 4(%eax)
 # 0 "" 2
/NO_APP
	movl	$__ZL4ytex.lto_priv.0+8, %eax
	movl	$__ZL4ytex.lto_priv.0+16, %ebx
/APP
 # 4896 "source/build/src/polymost.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl 4(%eax), %ecx; movl %edx, (%eax); movl 4(%ebx), %edx; movl %ecx, 4(%ebx); movl %edx, 4(%eax)
 # 0 "" 2
/NO_APP
	movl	$__ZL4otex.lto_priv.0+8, %eax
	movl	$__ZL4otex.lto_priv.0+16, %ebx
/APP
 # 4897 "source/build/src/polymost.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl 4(%eax), %ecx; movl %edx, (%eax); movl 4(%ebx), %edx; movl %ecx, 4(%ebx); movl %edx, 4(%eax)
 # 0 "" 2
/NO_APP
	movl	_globalorientation, %edi
	fldl	__ZL4ytex.lto_priv.0+8
	fldl	__ZL4otex.lto_priv.0+8
	fldl	__ZL4ytex.lto_priv.0+16
	fldl	__ZL4otex.lto_priv.0+16
	fldl	__ZL4ytex.lto_priv.0
	movl	%edi, %edx
	fldl	__ZL4otex.lto_priv.0
	fxch	%st(4)
	fxch	%st(2)
	fxch	%st(1)
	fxch	%st(5)
	fxch	%st(1)
	andl	$2, %edx
L970:
	testl	$16, %edi
	je	L971
	fldl	__ZL4xtex.lto_priv.0+8
	fchs
	fstpl	__ZL4xtex.lto_priv.0+8
	fxch	%st(1)
	fchs
	fxch	%st(2)
	fchs
	fxch	%st(2)
	fxch	%st(1)
L971:
	testl	$32, %edi
	je	L972
	fldl	__ZL4xtex.lto_priv.0+16
	fchs
	fstpl	__ZL4xtex.lto_priv.0+16
	fxch	%st(3)
	fchs
	fxch	%st(3)
	fchs
L972:
	movswl	_globalpicnum, %eax
	xorps	%xmm0, %xmm0
	movss	LC9, %xmm1
	movzbl	_picsiz(%eax), %ebx
	movl	$1, %eax
	movl	%eax, %esi
	movl	%ebx, %ecx
	shrb	$4, %bl
	andl	$15, %ecx
	sall	%cl, %esi
	movl	%ebx, %ecx
	cvtsi2ssl	%esi, %xmm0
	sall	%cl, %eax
	mulss	__ZL18global_cf_xpanning, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -56(%ebp)
	xorps	%xmm0, %xmm0
	flds	-56(%ebp)
	cvtsi2ssl	%eax, %xmm0
	movl	%edi, %eax
	mulss	__ZL18global_cf_ypanning, %xmm0
	notl	%eax
	mulss	%xmm1, %xmm0
	movss	%xmm0, -56(%ebp)
	testb	$66, %al
	je	L1046
L973:
	fld	%st(6)
	fmul	%st(1), %st
	faddp	%st, %st(3)
	fxch	%st(2)
	fstl	__ZL4ytex.lto_priv.0+8
	fxch	%st(2)
	fmul	%st(5), %st
	faddp	%st, %st(3)
	fxch	%st(2)
	fstl	-64(%ebp)
	fstpl	__ZL4otex.lto_priv.0+8
	fld	%st(4)
	flds	-56(%ebp)
	fmul	%st, %st(1)
	fxch	%st(4)
	faddp	%st, %st(1)
	fstl	-56(%ebp)
	fstpl	__ZL4ytex.lto_priv.0+16
	fld	%st(3)
	fmulp	%st, %st(3)
	fxch	%st(2)
	faddp	%st, %st(1)
	fstl	__ZL4otex.lto_priv.0+16
	testl	%edx, %edx
	jne	L1047
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	jmp	L975
	.p2align 4,,10
	.p2align 3
L1053:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
L975:
	sarl	$7, %edi
	movb	$0, __ZL14drawpoly_blend.lto_priv.0
	movl	$0, __ZL10pow2xsplit.lto_priv.0
	andl	$3, %edi
	movl	%edi, __ZL16domostpolymethod
	movl	$0x00000000, __ZL14drawpoly_alpha.lto_priv.0
	cmpl	$3, _rendmode
	je	L1048
L979:
	movl	-44(%ebp), %eax
	movl	__ZL16global_cf_fogpal, %ecx
	movl	__ZL13global_cf_pal, %ebx
	movzbl	32(%eax), %edx
	movl	_globalflags, %eax
	testl	%ecx, %ecx
	cmove	%ebx, %ecx
	andl	$4, %eax
	je	L1049
	xorl	%eax, %eax
L982:
	call	_calc_and_apply_fog
L980:
	movl	-48(%ebp), %eax
	movl	_globalposy, %ecx
	movl	_globalposx, %edx
	addl	_sector, %eax
	testb	$16, -107(%ebp)
	je	L983
	testb	$2, 14(%eax)
	je	L1050
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_getflorzofslopeptr.part.0
L985:
	cmpl	%eax, _globalposz
	jle	L986
	movl	$-1, __ZL16domostpolymethod
L987:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L988
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L988:
	movss	LC38, %xmm0
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm0, 16(%esp)
	movss	%xmm0, 8(%esp)
	movss	-28(%ebp), %xmm6
	movss	%xmm6, (%esp)
	movss	-20(%ebp), %xmm2
	movss	-24(%ebp), %xmm1
	movss	-32(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	testb	$3, __ZL16domostpolymethod
	jne	L1051
L995:
	movl	$0, __ZL16domostpolymethod
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
L968:
	.cfi_restore_state
	mulss	LC32, %xmm4
	movss	LC34, %xmm2
	mulss	LC33, %xmm3
	mulss	%xmm2, %xmm1
	mulss	%xmm2, %xmm0
	movss	%xmm4, -56(%ebp)
	flds	-56(%ebp)
	movss	%xmm3, -56(%ebp)
	jmp	L969
	.p2align 4,,10
	.p2align 3
L1049:
	testb	$2, _hictinting+1(,%ebx,8)
	cmove	__ZL15global_cf_shade, %eax
	jmp	L982
	.p2align 4,,10
	.p2align 3
L955:
/APP
 # 4846 "source/build/src/polymost.cpp" 1
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
	movss	LC24, %xmm1
	movl	%eax, -112(%ebp)
	testl	%eax, %eax
	je	L956
	movl	%eax, %esi
	cmpl	%eax, _lastd_s32
	je	L957
	cmpl	$16383, %eax
	jbe	L957
	movl	%eax, %ebx
	movl	%eax, _lastd_s32
	movl	$31, %ecx
	negl	%ebx
	cmovs	%eax, %ebx
	bsrl	%ebx, %eax
	leal	-1(%ebx), %edx
	xorl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, -56(%ebp)
	testl	%ebx, %edx
	jne	L958
	movl	%esi, %eax
	sarl	$24, %eax
	andl	$-128, %eax
	orl	%ecx, %eax
L959:
	movb	%al, _divtable32+4
	movl	-168(%ebp), %ebx
	movl	-44(%ebp), %eax
	movl	%ebx, _divtable32
	movl	-176(%ebp), %ebx
	movswl	(%eax), %eax
	sall	$5, %eax
	addl	%ebx, %eax
	movl	(%eax), %ebx
	movl	4(%eax), %eax
	movl	%ebx, -56(%ebp)
	movl	%eax, -64(%ebp)
L957:
	movl	-112(%ebp), %ebx
	xorl	%eax, %eax
	cmpl	$16383, %ebx
	cmovbe	%ebx, %eax
	movzbl	_divtable32+4(%eax,%eax,4), %ecx
	movl	_divtable32(%eax,%eax,4), %edx
	movl	%ecx, %ebx
	andl	$31, %ebx
	movl	%ebx, %esi
	testl	%edx, %edx
	jne	L962
	sarb	$7, %cl
	movl	$1048576, %eax
	xorps	%xmm1, %xmm1
	movsbl	%cl, %edx
	movl	%ebx, %ecx
	sarl	%cl, %eax
	xorl	%edx, %eax
	subl	%edx, %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	LC29, %xmm1
	jmp	L956
	.p2align 4,,10
	.p2align 3
L983:
	testb	$2, 12(%eax)
	je	L1052
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_getceilzofslopeptr.part.0
L991:
	cmpl	%eax, _globalposz
	jge	L992
	movl	$-1, __ZL16domostpolymethod
L993:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L994
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L994:
	movss	LC38, %xmm0
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm0, 16(%esp)
	movss	%xmm0, 8(%esp)
	movss	-24(%ebp), %xmm7
	movss	%xmm7, (%esp)
	movss	-32(%ebp), %xmm2
	movss	-28(%ebp), %xmm1
	movss	-20(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	testb	$3, __ZL16domostpolymethod
	je	L995
L1051:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L995
	movl	$3042, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
	jmp	L995
	.p2align 4,,10
	.p2align 3
L1048:
	movl	_r_useindexedcolortextures, %ecx
	testl	%ecx, %ecx
	je	L979
	movl	_gltexfiltermode, %edx
	testl	%edx, %edx
	jne	L979
	movl	_usehightile, %eax
	testl	%eax, %eax
	je	L980
	movl	_globalpal, %edx
	movswl	_globalpicnum, %eax
	movzwl	_hictinting(,%edx,8), %ecx
	andl	$256, %ecx
	call	_hicfindsubst
	testl	%eax, %eax
	jne	L979
	jmp	L980
	.p2align 4,,10
	.p2align 3
L992:
	testb	$3, __ZL16domostpolymethod
	je	L994
	jmp	L993
	.p2align 4,,10
	.p2align 3
L986:
	testb	$3, __ZL16domostpolymethod
	je	L988
	jmp	L987
	.p2align 4,,10
	.p2align 3
L1047:
	movss	-72(%ebp), %xmm3
	movss	-96(%ebp), %xmm0
	subss	-104(%ebp), %xmm3
	subss	-80(%ebp), %xmm0
	movss	_gcosang2, %xmm4
	flds	_ghalfx
	movss	_gsinang2, %xmm5
	movaps	%xmm0, %xmm2
	movaps	%xmm3, %xmm1
	mulss	%xmm3, %xmm1
	fld	%st(0)
	mulss	%xmm0, %xmm2
	addss	%xmm1, %xmm2
	movss	LC10, %xmm1
	sqrtss	%xmm2, %xmm2
	divss	%xmm2, %xmm1
	mulss	LC37, %xmm1
	mulss	%xmm1, %xmm0
	mulss	%xmm3, %xmm1
	addss	-72(%ebp), %xmm0
	addss	-80(%ebp), %xmm1
	movaps	%xmm0, %xmm2
	subss	_fglobalposx, %xmm2
	movaps	%xmm1, %xmm3
	subss	_fglobalposy, %xmm3
	mulss	%xmm2, %xmm4
	mulss	%xmm3, %xmm5
	mulss	_gsinang, %xmm2
	mulss	_gcosang, %xmm3
	addss	%xmm5, %xmm4
	movss	LC10, %xmm5
	subss	%xmm2, %xmm3
	divss	%xmm4, %xmm5
	movss	%xmm3, -72(%ebp)
	fmuls	-72(%ebp)
	movss	%xmm5, -72(%ebp)
	fmuls	-72(%ebp)
	mulss	_gyxscale, %xmm5
	faddp	%st, %st(1)
	movss	%xmm5, -80(%ebp)
	fstpl	-72(%ebp)
	flds	__ZL6ghoriz.lto_priv.0
	fldl	-160(%ebp)
	fadd	%st(1), %st
	fldl	-152(%ebp)
	fadd	%st(2), %st
	flds	-80(%ebp)
	fstpl	-176(%ebp)
	fxch	%st(2)
	fadds	-80(%ebp)
	fstpl	-152(%ebp)
	fldl	-40(%ebp)
	fmull	__ZL4xtex.lto_priv.0
	fld	%st(1)
	fmul	%st(7), %st
	faddp	%st, %st(1)
	fadd	%st(5), %st
	fstpl	-80(%ebp)
	fldl	-40(%ebp)
	fmull	__ZL4xtex.lto_priv.0+8
	fld	%st(4)
	fmul	%st(2), %st
	faddp	%st, %st(1)
	faddl	-64(%ebp)
	fstpl	-96(%ebp)
	fldl	-40(%ebp)
	fmull	__ZL4xtex.lto_priv.0+16
	fxch	%st(1)
	fmull	-56(%ebp)
	faddp	%st, %st(1)
	fadd	%st(2), %st
	fstpl	-104(%ebp)
	fldl	-88(%ebp)
	fmull	__ZL4xtex.lto_priv.0
	fld	%st(1)
	fmul	%st(6), %st
	faddp	%st, %st(1)
	fadd	%st(4), %st
	fstpl	-120(%ebp)
	fldl	-88(%ebp)
	fmull	__ZL4xtex.lto_priv.0+8
	fld	%st(3)
	fmul	%st(2), %st
	faddp	%st, %st(1)
	fldl	-64(%ebp)
	fadd	%st, %st(1)
	fxch	%st(1)
	fstpl	-64(%ebp)
	fldl	-88(%ebp)
	fmull	__ZL4xtex.lto_priv.0+16
	fxch	%st(2)
	fmull	-56(%ebp)
	faddp	%st, %st(2)
	fxch	%st(1)
	fadd	%st(2), %st
	fstpl	-128(%ebp)
	fldl	-72(%ebp)
	fldl	__ZL4xtex.lto_priv.0
	fmul	%st(1), %st
	fldl	-152(%ebp)
	fmul	%st, %st(7)
	fxch	%st(1)
	faddp	%st, %st(7)
	fxch	%st(6)
	faddp	%st, %st(5)
	fxch	%st(4)
	fstpl	-152(%ebp)
	fldl	__ZL4xtex.lto_priv.0+8
	fmul	%st(4), %st
	fxch	%st(3)
	fmul	%st(5), %st
	faddp	%st, %st(3)
	faddp	%st, %st(2)
	fxch	%st(1)
	fstpl	-160(%ebp)
	fldl	__ZL4xtex.lto_priv.0+16
	fmulp	%st, %st(2)
	fldl	-56(%ebp)
	fmulp	%st, %st(3)
	fxch	%st(1)
	faddp	%st, %st(2)
	faddp	%st, %st(1)
	fstpl	-168(%ebp)
	movss	%xmm0, 4(%esp)
	movss	%xmm1, 8(%esp)
	movl	-48(%ebp), %eax
	addl	_sector, %eax
	movl	%eax, (%esp)
	call	*__ZL23global_getzofslope_func
	xorps	%xmm0, %xmm0
	movss	-24(%ebp), %xmm7
	subss	-28(%ebp), %xmm7
	cvtsi2ssl	_globalposz, %xmm0
	fstps	-56(%ebp)
	movss	-56(%ebp), %xmm6
	fldl	-176(%ebp)
	subss	%xmm0, %xmm6
	movss	%xmm6, -56(%ebp)
	fmuls	-56(%ebp)
	fadds	__ZL6ghoriz.lto_priv.0
	fldl	-144(%ebp)
	fsub	%st(1), %st
	fstps	-56(%ebp)
	flds	-56(%ebp)
	fxch	%st(1)
	fsubl	-136(%ebp)
	fstps	-56(%ebp)
	flds	-56(%ebp)
	fldl	-40(%ebp)
	movss	%xmm7, -40(%ebp)
	fld	%st(0)
	fmul	%st(3), %st
	fldl	-88(%ebp)
	fmul	%st(3), %st
	faddp	%st, %st(1)
	flds	-40(%ebp)
	fldl	-72(%ebp)
	fld	%st(0)
	fmul	%st(2), %st
	faddp	%st, %st(3)
	fxch	%st(2)
	fdivrl	LC3
	fstps	-40(%ebp)
	flds	-40(%ebp)
	fldl	-80(%ebp)
	fmul	%st(6), %st
	fldl	-120(%ebp)
	fmul	%st(6), %st
	faddp	%st, %st(1)
	fldl	-152(%ebp)
	fmul	%st(3), %st
	faddp	%st, %st(1)
	fmul	%st(1), %st
	fstl	-72(%ebp)
	fstpl	__ZL4xtex.lto_priv.0
	fldl	-96(%ebp)
	fmul	%st(6), %st
	fldl	-64(%ebp)
	fmul	%st(6), %st
	faddp	%st, %st(1)
	fldl	-160(%ebp)
	fmul	%st(3), %st
	faddp	%st, %st(1)
	fmul	%st(1), %st
	fstl	-56(%ebp)
	fstpl	__ZL4xtex.lto_priv.0+8
	fldl	-104(%ebp)
	movss	-20(%ebp), %xmm6
	subss	-32(%ebp), %xmm6
	fmulp	%st, %st(6)
	fldl	-128(%ebp)
	fmulp	%st, %st(5)
	fxch	%st(4)
	faddp	%st, %st(5)
	fldl	-168(%ebp)
	fmulp	%st, %st(1)
	faddp	%st, %st(4)
	fxch	%st(3)
	fmul	%st(2), %st
	fld	%st(0)
	fstpl	__ZL4xtex.lto_priv.0+16
	fldl	-88(%ebp)
	fsubr	%st(4), %st
	fstps	-40(%ebp)
	flds	-40(%ebp)
	fxch	%st(2)
	fstl	-40(%ebp)
	fsubp	%st, %st(4)
	fxch	%st(3)
	fstps	-88(%ebp)
	flds	-88(%ebp)
	fldl	-80(%ebp)
	movss	%xmm6, -88(%ebp)
	fmul	%st(2), %st
	fldl	-120(%ebp)
	fmul	%st(2), %st
	faddp	%st, %st(1)
	flds	-88(%ebp)
	fldl	-152(%ebp)
	fmul	%st(1), %st
	faddp	%st, %st(2)
	fxch	%st(1)
	fmul	%st(4), %st
	fstl	__ZL4ytex.lto_priv.0
	fldl	-96(%ebp)
	fmul	%st(4), %st
	fldl	-64(%ebp)
	fmul	%st(4), %st
	faddp	%st, %st(1)
	fldl	-160(%ebp)
	fmul	%st(3), %st
	faddp	%st, %st(1)
	fmul	%st(5), %st
	fstl	__ZL4ytex.lto_priv.0+8
	fldl	-104(%ebp)
	fmulp	%st, %st(5)
	fldl	-128(%ebp)
	fmulp	%st, %st(4)
	fxch	%st(3)
	faddp	%st, %st(4)
	fldl	-168(%ebp)
	fmulp	%st, %st(2)
	fxch	%st(3)
	faddp	%st, %st(1)
	fmulp	%st, %st(3)
	fxch	%st(2)
	fstl	__ZL4ytex.lto_priv.0+16
	fldl	-72(%ebp)
	fldl	-40(%ebp)
	fmul	%st, %st(1)
	fldl	-80(%ebp)
	fsubp	%st, %st(2)
	fldl	-136(%ebp)
	fmul	%st, %st(4)
	fxch	%st(2)
	fsubp	%st, %st(4)
	fxch	%st(3)
	fstpl	__ZL4otex.lto_priv.0
	fldl	-56(%ebp)
	fmul	%st(3), %st
	fldl	-96(%ebp)
	movl	_globalorientation, %edi
	fsubp	%st, %st(1)
	fld	%st(1)
	fmul	%st(5), %st
	fsubrp	%st, %st(1)
	fstl	__ZL4otex.lto_priv.0+8
	fxch	%st(3)
	fmul	%st(5), %st
	fldl	-104(%ebp)
	fsubp	%st, %st(1)
	fxch	%st(1)
	fmul	%st(2), %st
	fsubrp	%st, %st(1)
	fstl	__ZL4otex.lto_priv.0+16
	testl	$64, %edi
	je	L1053
	movss	LC36, %xmm0
	mulss	__ZL16global_cf_heinum, %xmm0
	mulss	%xmm0, %xmm0
	addss	LC10, %xmm0
	sqrtss	%xmm0, %xmm0
	movss	%xmm0, -40(%ebp)
	flds	-40(%ebp)
	testl	$4, %edi
	jne	L977
	fstp	%st(4)
	fstp	%st(2)
	fxch	%st(2)
	fmul	%st, %st(3)
	fxch	%st(3)
	fstpl	__ZL4xtex.lto_priv.0+16
	fxch	%st(1)
	fmul	%st(2), %st
	fstpl	__ZL4ytex.lto_priv.0+16
	fmulp	%st, %st(1)
	fstpl	__ZL4otex.lto_priv.0+16
	jmp	L975
	.p2align 4,,10
	.p2align 3
L1046:
	movss	LC36, %xmm0
	mulss	__ZL16global_cf_heinum, %xmm0
	movss	LC10, %xmm1
	mulss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	sqrtss	%xmm0, %xmm0
	divss	%xmm0, %xmm1
	testl	$4, %edi
	jne	L974
	mulss	-56(%ebp), %xmm1
	movss	%xmm1, -56(%ebp)
	jmp	L973
	.p2align 4,,10
	.p2align 3
L974:
	fstps	-64(%ebp)
	movss	-64(%ebp), %xmm5
	mulss	%xmm1, %xmm5
	movss	%xmm5, -64(%ebp)
	flds	-64(%ebp)
	jmp	L973
	.p2align 4,,10
	.p2align 3
L1052:
	movl	4(%eax), %eax
	jmp	L991
	.p2align 4,,10
	.p2align 3
L1050:
	movl	8(%eax), %eax
	jmp	L985
	.p2align 4,,10
	.p2align 3
L977:
	fstp	%st(5)
	fstp	%st(0)
	fstp	%st(0)
	fxch	%st(1)
	fxch	%st(2)
	fldl	-56(%ebp)
	fmul	%st(1), %st
	fstpl	__ZL4xtex.lto_priv.0+8
	fmul	%st, %st(2)
	fxch	%st(2)
	fstpl	__ZL4ytex.lto_priv.0+8
	fmulp	%st, %st(1)
	fstpl	__ZL4otex.lto_priv.0+8
	jmp	L975
	.p2align 4,,10
	.p2align 3
L962:
	movl	%ecx, %ebx
	movl	$1048576, %eax
	xorps	%xmm1, %xmm1
	sarb	$7, %bl
	imull	%edx
	movsbl	%bl, %ebx
	movl	%ebx, %eax
	xorl	$1048576, %eax
	addl	%edx, %eax
	subl	%ebx, %eax
	andl	$64, %ecx
	movl	%esi, %ecx
	cmove	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %eax
	sarl	%cl, %edx
	addl	%edx, %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	LC29, %xmm1
	jmp	L956
	.p2align 4,,10
	.p2align 3
L958:
	movl	$30, %ecx
	movl	$1, %edx
	movl	$1, %esi
	subl	%eax, %ecx
	movl	-168(%ebp), %eax
	sall	%cl, %edx
	movzbl	-56(%ebp), %ecx
/APP
 # 477 "source/build/include/libdivide.h" 1
	divl %ebx
 # 0 "" 2
/NO_APP
	movl	%eax, -64(%ebp)
	movl	%ebx, %eax
	sall	%cl, %esi
	subl	%edx, %eax
	cmpl	%esi, %eax
	jnb	L960
	movzbl	-56(%ebp), %eax
	subl	$1, %eax
L961:
	movl	-64(%ebp), %ebx
	movl	-112(%ebp), %esi
	movl	%eax, %edx
	orl	$-128, %edx
	leal	1(%ebx), %ecx
	testl	%esi, %esi
	notl	%ebx
	cmovs	%edx, %eax
	movl	%ebx, %edx
	cmovns	%ecx, %edx
	movl	%edx, -168(%ebp)
	jmp	L959
	.p2align 4,,10
	.p2align 3
L960:
	leal	(%edx,%edx), %eax
	cmpl	%ebx, %eax
	movl	-64(%ebp), %ebx
	setnb	%cl
	cmpl	%edx, %eax
	setb	%al
	orl	%ecx, %eax
	movzbl	%al, %eax
	leal	(%eax,%ebx,2), %eax
	movl	%eax, -64(%ebp)
	movzbl	-56(%ebp), %eax
	orl	$64, %eax
	jmp	L961
	.cfi_endproc
LFE38:
	.section .rdata,"dr"
LC42:
	.ascii "polymost_drawalls(bunch:%d)\0"
	.align 4
LC44:
	.ascii "Tried to draw wall %d twice in a frame\0"
LC45:
	.ascii "source/build/src/polymost.cpp\0"
	.text
	.p2align 4
	.globl	__ZL17polymost_drawallsi.lto_priv.0
	.def	__ZL17polymost_drawallsi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL17polymost_drawallsi.lto_priv.0:
LFB42:
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
	subl	$324, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movswl	_bunchfirst(%eax,%eax), %eax
	movl	$0x00000000, __ZL14drawpoly_alpha.lto_priv.0
	movb	$0, __ZL14drawpoly_blend.lto_priv.0
	movl	_sector, %esi
	movzwl	_thesector(%eax,%eax), %eax
	movl	_qglobalang, %ebx
	movw	%ax, -154(%ebp)
	movl	%edi, 8(%esp)
	movl	$LC42, 4(%esp)
	movl	$3, (%esp)
	call	__Z26buildgl_outputDebugMessagehPKcz.constprop.0
	movswl	_bunchfirst(%edi,%edi), %eax
	movl	%eax, -56(%ebp)
	testl	%eax, %eax
	js	L1054
	movswl	-154(%ebp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebx, %xmm0
	mulss	LC11, %xmm0
	movl	%eax, -184(%ebp)
	leal	(%eax,%eax,4), %eax
	sall	$3, %eax
	leal	(%esi,%eax), %edi
	movl	%eax, -76(%ebp)
	movl	%edi, -40(%ebp)
	movss	%xmm0, -68(%ebp)
	.p2align 4
	.p2align 3
L1318:
	movl	-56(%ebp), %eax
	movl	$0, -80(%ebp)
	movswl	_thewall(%eax,%eax), %edi
	movl	_wall, %eax
	movw	%di, -72(%ebp)
	movl	%edi, -64(%ebp)
	sall	$5, %edi
	movl	%edi, -124(%ebp)
	addl	%eax, %edi
	movswl	8(%edi), %edx
	movswl	12(%edi), %esi
	movl	%edi, -44(%ebp)
	sall	$5, %edx
	movw	%si, -112(%ebp)
	movl	%esi, -60(%ebp)
	addl	%edx, %eax
	testl	%esi, %esi
	js	L1056
	movl	_sector, %ecx
	leal	(%esi,%esi,4), %edx
	leal	(%ecx,%edx,8), %ebx
	movl	%ebx, -80(%ebp)
L1056:
	movl	-44(%ebp), %ebx
	movl	_globalposx, %esi
	xorps	%xmm1, %xmm1
	xorps	%xmm6, %xmm6
	movss	_gcosang, %xmm0
	xorps	%xmm7, %xmm7
	movss	_gsinang, %xmm5
	movss	_gsinang2, %xmm4
	movl	(%ebx), %ecx
	movl	%ecx, %edx
	subl	%esi, %edx
	cvtsi2ssl	%edx, %xmm1
	movl	4(%ebx), %edx
	movl	(%eax), %ebx
	movl	4(%eax), %eax
	movl	%edx, %edi
	subl	_globalposy, %edi
	cvtsi2ssl	%edi, %xmm6
	movl	%ebx, %edi
	movaps	%xmm1, %xmm3
	subl	%esi, %edi
	movl	%eax, %esi
	subl	_globalposy, %esi
	mulss	%xmm5, %xmm3
	cvtsi2ssl	%edi, %xmm7
	movaps	%xmm6, %xmm2
	mulss	%xmm0, %xmm2
	mulss	%xmm4, %xmm6
	mulss	%xmm7, %xmm5
	subss	%xmm3, %xmm2
	movss	_gcosang2, %xmm3
	mulss	%xmm3, %xmm1
	mulss	%xmm7, %xmm3
	addss	%xmm6, %xmm1
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%esi, %xmm6
	mulss	%xmm6, %xmm4
	mulss	%xmm6, %xmm0
	addss	%xmm4, %xmm3
	movss	LC43, %xmm4
	subss	%xmm5, %xmm0
	comiss	%xmm1, %xmm4
	jbe	L1530
	comiss	%xmm3, %xmm4
	ja	L1059
	movss	LC10, %xmm7
	movaps	%xmm4, %xmm5
	movaps	%xmm3, %xmm4
	movl	%ebx, %esi
	subss	%xmm1, %xmm4
	subss	%xmm1, %xmm5
	movaps	%xmm0, %xmm1
	subl	%ecx, %esi
	subss	%xmm2, %xmm1
	movss	%xmm7, -84(%ebp)
	divss	%xmm4, %xmm5
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%ecx, %xmm4
	movl	%eax, %ecx
	subl	%edx, %ecx
	mulss	%xmm5, %xmm1
	movss	%xmm5, -132(%ebp)
	addss	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%esi, %xmm1
	mulss	%xmm5, %xmm1
	addss	%xmm4, %xmm1
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%edx, %xmm4
	movss	%xmm1, -104(%ebp)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	mulss	%xmm5, %xmm1
	addss	%xmm4, %xmm1
	movss	LC39, %xmm4
	movss	%xmm1, -96(%ebp)
L1060:
	xorps	%xmm7, %xmm7
	cvtsi2ssl	%ebx, %xmm7
	movss	%xmm7, -108(%ebp)
	xorps	%xmm7, %xmm7
	cvtsi2ssl	%eax, %xmm7
	movss	%xmm7, -120(%ebp)
	movss	-84(%ebp), %xmm7
	movaps	%xmm7, %xmm5
	movss	%xmm7, -128(%ebp)
	divss	%xmm3, %xmm5
L1062:
	movss	_ghalfx, %xmm1
	mulss	%xmm1, %xmm2
	mulss	%xmm1, %xmm0
	mulss	%xmm4, %xmm2
	mulss	%xmm5, %xmm0
	movaps	%xmm2, %xmm7
	movaps	%xmm0, %xmm6
	addss	%xmm1, %xmm7
	addss	%xmm1, %xmm6
	movss	%xmm7, -48(%ebp)
	comiss	%xmm6, %xmm7
	movss	%xmm6, -52(%ebp)
	jnb	L1059
	movl	-64(%ebp), %esi
	movl	-72(%ebp), %eax
	movl	%esi, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.12(%eax), %eax
	movzbl	_didwall(%edx), %ecx
	movl	%ecx, %ebx
	notl	%ebx
	testb	%al, %bl
	je	L1576
	movaps	%xmm4, %xmm7
	orl	%ecx, %eax
	movl	-76(%ebp), %ebx
	movss	-96(%ebp), %xmm1
	movss	_gyxscale, %xmm0
	movb	%al, _didwall(%edx)
	leal	-36(%ebp), %ecx
	leal	-32(%ebp), %edx
	addl	_sector, %ebx
	xorps	%xmm4, %xmm4
	mulss	%xmm0, %xmm7
	movaps	%xmm0, %xmm6
	movss	-104(%ebp), %xmm0
	movl	%ebx, %eax
	mulss	%xmm5, %xmm6
	movss	%xmm7, -72(%ebp)
	movss	%xmm6, -136(%ebp)
	call	__Z13fgetzsofslopePK13usectortypev7ffPfS2_
	movss	-32(%ebp), %xmm0
	leal	-36(%ebp), %ecx
	leal	-32(%ebp), %edx
	cvtsi2ssl	_globalposz, %xmm4
	movss	-120(%ebp), %xmm1
	movl	%ebx, %eax
	movss	__ZL6ghoriz.lto_priv.0, %xmm3
	subss	%xmm4, %xmm0
	mulss	%xmm7, %xmm0
	addss	%xmm3, %xmm0
	movss	%xmm0, -92(%ebp)
	movss	-36(%ebp), %xmm0
	subss	%xmm4, %xmm0
	mulss	%xmm7, %xmm0
	addss	%xmm3, %xmm0
	movss	%xmm0, -88(%ebp)
	movss	-108(%ebp), %xmm0
	call	__Z13fgetzsofslopePK13usectortypev7ffPfS2_
	movss	-32(%ebp), %xmm0
	subss	%xmm6, %xmm7
	movl	$0, __ZL5ytex2
	movl	$0, __ZL5ytex2+4
	movl	$0, __ZL5otex2+8
	subss	%xmm4, %xmm0
	movss	%xmm7, -144(%ebp)
	flds	-144(%ebp)
	movl	$0, __ZL5otex2+12
	movl	$0, __ZL5ytex2+8
	mulss	%xmm6, %xmm0
	fstl	-192(%ebp)
	movl	$0, __ZL5ytex2+12
	movl	$0, __ZL5xtex2+8
	movl	$0, __ZL5xtex2+12
	addss	%xmm3, %xmm0
	movl	$0, __ZL5otex2+16
	movl	$0, __ZL5otex2+20
	movss	%xmm0, -164(%ebp)
	movss	-36(%ebp), %xmm0
	subss	%xmm4, %xmm0
	movss	-48(%ebp), %xmm4
	subss	-52(%ebp), %xmm4
	movss	%xmm4, -144(%ebp)
	flds	-144(%ebp)
	mulss	%xmm6, %xmm0
	fstl	-200(%ebp)
	fldl	_gxyaspect
	addss	%xmm3, %xmm0
	fmulp	%st, %st(2)
	movss	%xmm0, -160(%ebp)
	fdivrp	%st, %st(1)
	fstl	__ZL5xtex2
	flds	-72(%ebp)
	fstpl	-208(%ebp)
	flds	-48(%ebp)
	fstpl	-216(%ebp)
	fldl	_gxyaspect
	fmuls	-72(%ebp)
	fxch	%st(1)
	fmuls	-48(%ebp)
	fsubrp	%st, %st(1)
	fstpl	__ZL5otex2
	movl	$0, __ZL5ytex2+16
	movl	$0, __ZL5ytex2+20
	movl	$0, __ZL5xtex2+16
	movl	$0, __ZL5xtex2+20
	cmpw	$2, _searchit
	je	L1577
L1064:
	movl	_g_nodraw, %eax
	movl	$0, -28(%ebp)
	movl	%eax, -180(%ebp)
	testl	%eax, %eax
	jne	L1578
L1066:
	movl	-40(%ebp), %ecx
	movl	-76(%ebp), %esi
	movl	$0, __ZL11yax_holencf+4
	movl	$1, __ZL10yax_drawcf
	movl	_globalcisibility2, %ebx
	movl	$0, _globalclipdist
	movzwl	24(%ecx), %eax
	movw	%ax, _globalpicnum
	movsbl	28(%ecx), %eax
	movl	%eax, _globalshade
	movzbl	29(%ecx), %eax
	movl	%eax, _globalpal
	movzwl	14(%ecx), %eax
	movl	%eax, _globalorientation
	movl	_sector, %eax
	movzbl	32(%eax,%esi), %ecx
	movl	_globalcisibility, %esi
	testb	%cl, %cl
	je	L1067
	addl	$16, %ecx
	movl	%esi, %eax
	movzbl	%cl, %edx
/APP
 # 5486 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movzbl	%cl, %edx
	movl	%ebx, %eax
/APP
 # 5489 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
L1067:
	xorps	%xmm0, %xmm0
	movl	%ebx, _globvis2
	cvtsi2ssl	%ebx, %xmm0
	movl	%esi, _globvis
	call	__Z22polymost_setVisibilityf
	movswl	_globalpicnum, %eax
	movl	%eax, %ebx
	cmpb	$63, _picanm+3(%eax,%eax,4)
	ja	L1579
L1068:
	movl	_globalorientation, %ecx
	testb	$64, -153(%ebp)
	je	L1070
	testb	$16, %ch
	je	L1070
	movzwl	_rottile(,%eax,4), %edx
	cmpw	$-1, %dx
	je	L1070
	movw	%dx, _globalpicnum
	movswl	%dx, %eax
	.p2align 4
	.p2align 3
L1070:
	movl	_pskynummultis, %ebx
	movl	_multipsky, %esi
	leal	-1(%ebx), %edx
	movl	_multipskytile, %ebx
	testl	%edx, %edx
	jg	L1074
	jmp	L1073
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1581:
	subl	$1, %edx
	je	L1580
L1074:
	cmpl	%eax, (%ebx,%edx,4)
	jne	L1581
L1073:
	sall	$5, %edx
	leal	(%esi,%edx), %edi
	movswl	_pskybits_override, %esi
	movl	%edi, -144(%ebp)
	movl	%esi, -168(%ebp)
	cmpw	$-1, %si
	jne	L1076
	movsbl	8(%edi), %edi
	movl	%edi, -168(%ebp)
L1076:
	movl	_parallaxyscale_override, %esi
	testl	%esi, %esi
	jne	L1077
	movl	-144(%ebp), %edi
	movl	(%edi), %esi
L1077:
	movl	-144(%ebp), %ebx
	xorps	%xmm0, %xmm0
	andl	$1, %ecx
	movl	$__Z16fgetflorzofslopePK13usectortypev7ff, __ZL23global_getzofslope_func
	movl	4(%ebx), %edi
	movl	%edi, -244(%ebp)
	movl	_parallaxyoffs_override, %edi
	movl	%edi, -252(%ebp)
	movl	28(%ebx), %edi
	movl	-40(%ebp), %ebx
	movl	%edi, -236(%ebp)
	movzbl	33(%ebx), %edx
	movzbl	29(%ebx), %edi
	movl	%edx, __ZL16global_cf_fogpal
	movsbl	28(%ebx), %edx
	movl	%edi, __ZL13global_cf_pal
	movl	%edx, -176(%ebp)
	movl	%edx, __ZL15global_cf_shade
	movl	8(%ebx), %edx
	movl	%edx, __ZL11global_cf_z
	movzbl	30(%ebx), %edx
	cvtsi2ssl	%edx, %xmm0
	movzbl	31(%ebx), %edx
	movss	%xmm0, __ZL18global_cf_xpanning
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movswl	26(%ebx), %edx
	movss	%xmm0, __ZL18global_cf_ypanning
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movss	%xmm0, __ZL16global_cf_heinum
	je	L1582
	movl	-60(%ebp), %ecx
	testl	%ecx, %ecx
	js	L1083
	movss	LC53, %xmm7
	leal	(%ecx,%ecx,4), %edx
	movl	_sector, %ecx
	leal	(%ecx,%edx,8), %edx
	movss	%xmm7, -152(%ebp)
	testb	$1, 14(%edx)
	je	L1083
L1082:
	movl	$0, _doeditorcheck
	cmpw	$2, _searchit
	je	L1583
L1150:
	movl	-40(%ebp), %ecx
	movl	-76(%ebp), %esi
	movl	$0, __ZL11yax_holencf
	movl	$0, __ZL10yax_drawcf
	movl	_globalcisibility2, %ebx
	movl	$0, _globalclipdist
	movzwl	16(%ecx), %eax
	movw	%ax, _globalpicnum
	movsbl	20(%ecx), %eax
	movl	%eax, _globalshade
	movzbl	21(%ecx), %eax
	movl	%eax, _globalpal
	movzwl	12(%ecx), %eax
	movl	%eax, _globalorientation
	movl	_sector, %eax
	movzbl	32(%eax,%esi), %ecx
	movl	_globalcisibility, %esi
	testb	%cl, %cl
	je	L1152
	addl	$16, %ecx
	movl	%esi, %eax
	movzbl	%cl, %edx
/APP
 # 5905 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movzbl	%cl, %edx
	movl	%ebx, %eax
/APP
 # 5908 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
L1152:
	xorps	%xmm0, %xmm0
	movl	%ebx, _globvis2
	cvtsi2ssl	%ebx, %xmm0
	movl	%esi, _globvis
	call	__Z22polymost_setVisibilityf
	movswl	_globalpicnum, %eax
	movl	%eax, %ebx
	cmpb	$63, _picanm+3(%eax,%eax,4)
	ja	L1584
L1153:
	movl	_globalorientation, %ecx
	testb	$64, -153(%ebp)
	je	L1155
	testb	$16, %ch
	je	L1155
	movzwl	_rottile(,%eax,4), %edx
	cmpw	$-1, %dx
	je	L1155
	movw	%dx, _globalpicnum
	movswl	%dx, %eax
	.p2align 4
	.p2align 3
L1155:
	movl	_pskynummultis, %ebx
	movl	_multipsky, %esi
	leal	-1(%ebx), %edx
	movl	_multipskytile, %ebx
	testl	%edx, %edx
	jg	L1159
	jmp	L1158
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1586:
	subl	$1, %edx
	je	L1585
L1159:
	cmpl	%eax, (%ebx,%edx,4)
	jne	L1586
L1158:
	sall	$5, %edx
	leal	(%esi,%edx), %ebx
	movswl	_pskybits_override, %esi
	movl	%esi, -144(%ebp)
	cmpw	$-1, %si
	jne	L1161
	movsbl	8(%ebx), %edi
	movl	%edi, -144(%ebp)
L1161:
	movl	_parallaxyscale_override, %esi
	movl	%esi, -168(%ebp)
	testl	%esi, %esi
	jne	L1162
	movl	(%ebx), %esi
	movl	%esi, -168(%ebp)
L1162:
	movl	4(%ebx), %esi
	xorps	%xmm0, %xmm0
	andl	$1, %ecx
	movl	$__Z16fgetceilzofslopePK13usectortypev7ff, __ZL23global_getzofslope_func
	movl	%esi, -240(%ebp)
	movl	_parallaxyoffs_override, %esi
	movl	%esi, -248(%ebp)
	movl	28(%ebx), %esi
	movl	%esi, -176(%ebp)
	movl	-40(%ebp), %esi
	movzbl	33(%esi), %edx
	movl	%edx, __ZL16global_cf_fogpal
	movl	%esi, %edx
	movsbl	20(%esi), %esi
	movzbl	21(%edx), %edi
	movl	4(%edx), %edx
	movl	%esi, __ZL15global_cf_shade
	movl	%edx, __ZL11global_cf_z
	movl	-40(%ebp), %edx
	movl	%edi, __ZL13global_cf_pal
	movzbl	22(%edx), %edx
	cvtsi2ssl	%edx, %xmm0
	movl	-40(%ebp), %edx
	movzbl	23(%edx), %edx
	movss	%xmm0, __ZL18global_cf_xpanning
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movl	-40(%ebp), %edx
	movswl	18(%edx), %edx
	movss	%xmm0, __ZL18global_cf_ypanning
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movss	%xmm0, __ZL16global_cf_heinum
	je	L1587
	movl	-60(%ebp), %ecx
	testl	%ecx, %ecx
	js	L1172
	leal	(%ecx,%ecx,4), %edx
	movl	_sector, %ecx
	leal	(%ecx,%edx,8), %edx
	testb	$1, 12(%edx)
	je	L1172
L1572:
	movl	_g_nodraw, %eax
L1167:
	movl	$0, _doeditorcheck
	testl	%eax, %eax
	jne	L1171
L1169:
	fldl	-192(%ebp)
	fmull	_gxyaspect
	movl	$-1, __ZL10yax_drawcf
	fldl	-200(%ebp)
	movss	-132(%ebp), %xmm0
	movl	$0, __ZL4ytex.lto_priv.0
	movss	-72(%ebp), %xmm7
	movss	-128(%ebp), %xmm1
	movl	$0, __ZL4ytex.lto_priv.0+4
	movss	-136(%ebp), %xmm6
	movl	-44(%ebp), %eax
	fdivr	%st, %st(1)
	fxch	%st(1)
	mulss	%xmm7, %xmm0
	movzbl	22(%eax), %ecx
	movzbl	24(%eax), %eax
	mulss	%xmm6, %xmm1
	movl	%eax, -128(%ebp)
	movaps	%xmm0, %xmm4
	subss	%xmm1, %xmm4
	movss	%xmm4, -84(%ebp)
	fstl	__ZL4xtex.lto_priv.0
	fldl	-208(%ebp)
	fmull	_gxyaspect
	fldl	-216(%ebp)
	fld	%st(0)
	fmul	%st(3), %st
	fsubrp	%st, %st(2)
	fxch	%st(1)
	fstl	__ZL4otex.lto_priv.0
	fldl	_gxyaspect
	fmuls	-84(%ebp)
	movl	%ecx, -84(%ebp)
	fildl	-84(%ebp)
	fmulp	%st, %st(1)
	fmuls	-152(%ebp)
	fdivp	%st, %st(4)
	fildl	-128(%ebp)
	movss	%xmm0, -128(%ebp)
	fldl	_gxyaspect
	fmuls	-128(%ebp)
	fildl	-84(%ebp)
	fmulp	%st, %st(1)
	fmuls	-152(%ebp)
	fxch	%st(3)
	fmul	%st(5), %st
	fsubrp	%st, %st(3)
	fmul	%st, %st(1)
	fxch	%st(2)
	faddp	%st, %st(1)
	fstl	__ZL4otex.lto_priv.0+8
	fxch	%st(2)
	fmulp	%st, %st(1)
	faddp	%st, %st(2)
	fxch	%st(1)
	fstl	__ZL4xtex.lto_priv.0+8
	movl	-60(%ebp), %ebx
	movl	$0, __ZL4ytex.lto_priv.0+8
	movl	$0, __ZL4ytex.lto_priv.0+12
	movl	$32, __ZL16domostpolymethod
	testl	%ebx, %ebx
	jns	L1588
	fstp	%st(0)
	fstp	%st(0)
	cmpw	$2, _searchit
	jne	L1291
	movl	-184(%ebp), %eax
	movl	$0, _psearchstat
	movl	$1, _doeditorcheck
	movl	%eax, _psectnum
	movl	-64(%ebp), %eax
	movl	%eax, _pwallnum
	movl	%eax, _pbottomwall
L1291:
	movl	-44(%ebp), %eax
	movl	$1, %esi
	movzwl	16(%eax), %eax
L1294:
	movl	-44(%ebp), %ebx
	movw	%ax, _globalpicnum
	movl	$0, _globalclipdist
	movl	_globalvisibility, %edi
	movsbl	20(%ebx), %eax
	movl	%eax, _globalshade
	movzbl	21(%ebx), %eax
	movl	-76(%ebp), %ebx
	movl	%eax, _globalpal
	movl	_sector, %eax
	movzbl	32(%eax,%ebx), %ecx
	movl	_globalvisibility2, %ebx
	testb	%cl, %cl
	je	L1295
	addl	$16, %ecx
	movl	%edi, %eax
	movzbl	%cl, %edx
/APP
 # 6500 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edi
	movzbl	%cl, %edx
	movl	%ebx, %eax
/APP
 # 6503 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
L1295:
	xorps	%xmm0, %xmm0
	movl	%edi, _globvis
	cvtsi2ssl	%ebx, %xmm0
	movl	%ebx, _globvis2
	call	__Z22polymost_setVisibilityf
	movl	-44(%ebp), %eax
	movzwl	14(%eax), %eax
	movl	%eax, _globalorientation
	movl	%eax, %ebx
	movl	-64(%ebp), %eax
	leal	16384(%eax), %edx
	movswl	_globalpicnum, %eax
	movl	%eax, %edi
	cmpb	$63, _picanm+3(%eax,%eax,4)
	ja	L1589
L1296:
	andb	$64, %dh
	je	L1297
	testb	$16, %bh
	je	L1297
	movswl	_globalpicnum, %eax
	movzwl	_rottile(,%eax,4), %eax
	cmpw	$-1, %ax
	je	L1297
	movw	%ax, _globalpicnum
	.p2align 4
	.p2align 3
L1297:
	movl	-60(%ebp), %edi
	andl	$4, %ebx
	testl	%edi, %edi
	js	L1298
	testw	%bx, %bx
	jne	L1299
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
L1300:
	shrw	$2, %bx
	movl	-44(%ebp), %edi
	xorl	$1, %ebx
	andl	%esi, %ebx
	movzbl	23(%edi), %ecx
	movzbl	25(%edi), %edx
	movzbl	%bl, %ebx
	movl	%ebx, 4(%esp)
	movss	-52(%ebp), %xmm2
	movss	%xmm2, (%esp)
	movss	-48(%ebp), %xmm2
	movss	-72(%ebp), %xmm0
	movss	-136(%ebp), %xmm1
	call	__ZL13calc_ypanningiffffhhi.lto_priv.0
	movzwl	14(%edi), %eax
	testb	$8, %al
	je	L1302
	movzbl	22(%edi), %edx
	movzbl	24(%edi), %eax
	leal	(%eax,%edx,4), %eax
	addl	%eax, %eax
	movl	%eax, -72(%ebp)
	fildl	-72(%ebp)
	fldl	__ZL4xtex.lto_priv.0
	fmul	%st(1), %st
	fsubl	__ZL4xtex.lto_priv.0+8
	fstpl	__ZL4xtex.lto_priv.0+8
	fldl	__ZL4ytex.lto_priv.0
	fmul	%st(1), %st
	fsubl	__ZL4ytex.lto_priv.0+8
	fstpl	__ZL4ytex.lto_priv.0+8
	fmull	__ZL4otex.lto_priv.0
	fsubl	__ZL4otex.lto_priv.0+8
	fstpl	__ZL4otex.lto_priv.0+8
	movzwl	14(%edi), %eax
L1302:
	testb	$1, %ah
	je	L1303
	fldl	__ZL4xtex.lto_priv.0+16
	fchs
	fstpl	__ZL4xtex.lto_priv.0+16
	fldl	__ZL4ytex.lto_priv.0+16
	fchs
	fstpl	__ZL4ytex.lto_priv.0+16
	fldl	__ZL4otex.lto_priv.0+16
	fchs
	fstpl	__ZL4otex.lto_priv.0+16
L1303:
	cmpl	$3, _rendmode
	je	L1590
L1304:
	movl	-40(%ebp), %eax
	movzbl	33(%eax), %ecx
	testb	%cl, %cl
	jne	L1306
	movzbl	29(%eax), %ecx
L1306:
	movl	-40(%ebp), %eax
	movzbl	32(%eax), %edx
	movl	_globalflags, %eax
	andl	$4, %eax
	jne	L1340
	movl	-44(%ebp), %esi
	movzbl	21(%esi), %ebx
	testb	$2, _hictinting+1(,%ebx,8)
	jne	L1307
	movsbl	20(%esi), %eax
L1307:
	call	_calc_and_apply_fog
L1305:
	movl	-40(%ebp), %eax
	movl	_globalposz, %ebx
	movl	$1, __ZL10pow2xsplit.lto_priv.0
	cmpl	%ebx, 8(%eax)
	jge	L1308
	cmpw	$0, _editstatus
	je	L1591
	movl	_wall, %ecx
	movl	-124(%ebp), %edx
	addl	%ecx, %edx
	testb	$8, 15(%edx)
	je	L1308
	leal	26(%edx), %eax
	subl	%ecx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movswl	30(%edx), %eax
L1310:
	testw	%ax, %ax
	js	L1308
	sall	$5, %eax
	addl	_wall, %eax
	cmpw	$0, 12(%eax)
	jns	L1311
L1308:
	movss	-160(%ebp), %xmm2
	movss	%xmm2, 16(%esp)
	movss	-164(%ebp), %xmm2
	movss	%xmm2, 12(%esp)
	movss	-88(%ebp), %xmm7
	movss	%xmm7, 8(%esp)
	movss	-92(%ebp), %xmm1
	movss	%xmm2, (%esp)
	movss	%xmm1, 4(%esp)
	movss	-52(%ebp), %xmm2
	movss	-48(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
L1312:
	movl	$0, _doeditorcheck
	movl	-60(%ebp), %edx
	movl	$0, __ZL16domostpolymethod
	testl	%edx, %edx
	jns	L1289
	.p2align 4
	.p2align 3
L1059:
	movl	-56(%ebp), %eax
	movswl	_bunchp2(%eax,%eax), %eax
	movl	%eax, -56(%ebp)
	testl	%eax, %eax
	jns	L1318
L1054:
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
L1530:
	.cfi_restore_state
	movss	LC43, %xmm5
	xorps	%xmm7, %xmm7
	xorps	%xmm6, %xmm6
	movss	LC10, %xmm4
	cvtsi2ssl	%ecx, %xmm7
	movl	$0x3f800000, -84(%ebp)
	cvtsi2ssl	%edx, %xmm6
	comiss	%xmm3, %xmm5
	divss	%xmm1, %xmm4
	movss	%xmm7, -104(%ebp)
	movss	%xmm6, -96(%ebp)
	jbe	L1531
	subss	%xmm1, %xmm5
	subss	%xmm1, %xmm3
	subl	%ecx, %ebx
	subl	%edx, %eax
	xorps	%xmm1, %xmm1
	subss	%xmm2, %xmm0
	movl	$0x00000000, -132(%ebp)
	cvtsi2ssl	%ebx, %xmm1
	divss	%xmm3, %xmm5
	mulss	%xmm5, %xmm1
	movss	%xmm5, -128(%ebp)
	mulss	%xmm5, %xmm0
	addss	%xmm7, %xmm1
	addss	%xmm2, %xmm0
	movss	%xmm1, -108(%ebp)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm5, %xmm1
	movss	LC39, %xmm5
	addss	%xmm6, %xmm1
	movss	%xmm1, -120(%ebp)
	jmp	L1062
	.p2align 4,,10
	.p2align 3
L1576:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L1059
	movl	%esi, 16(%esp)
	movl	$LC44, 12(%esp)
	movl	$5424, 8(%esp)
	movl	$LC45, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1059
	.p2align 4,,10
	.p2align 3
L1588:
	movl	_sector, %esi
	leal	(%ebx,%ebx,4), %edi
	fstps	-128(%ebp)
	leal	-36(%ebp), %ecx
	movss	-96(%ebp), %xmm1
	movss	-104(%ebp), %xmm0
	leal	-32(%ebp), %edx
	xorps	%xmm4, %xmm4
	leal	(%esi,%edi,8), %ebx
	fstps	-132(%ebp)
	movl	%ebx, %eax
	call	__Z13fgetzsofslopePK13usectortypev7ffPfS2_
	movss	-32(%ebp), %xmm0
	movl	%ebx, %eax
	leal	-36(%ebp), %ecx
	cvtsi2ssl	_globalposz, %xmm4
	movss	-120(%ebp), %xmm1
	leal	-32(%ebp), %edx
	movss	__ZL6ghoriz.lto_priv.0, %xmm3
	subss	%xmm4, %xmm0
	mulss	%xmm7, %xmm0
	addss	%xmm3, %xmm0
	movss	%xmm0, -84(%ebp)
	movss	-36(%ebp), %xmm0
	subss	%xmm4, %xmm0
	mulss	%xmm7, %xmm0
	addss	%xmm3, %xmm0
	movss	%xmm0, -104(%ebp)
	movss	-108(%ebp), %xmm0
	call	__Z13fgetzsofslopePK13usectortypev7ffPfS2_
	movss	-32(%ebp), %xmm0
	movl	-44(%ebp), %eax
	subss	%xmm4, %xmm0
	movzwl	14(%eax), %eax
	movw	%ax, -96(%ebp)
	andl	$48, %eax
	mulss	%xmm6, %xmm0
	addss	%xmm3, %xmm0
	movss	%xmm0, -108(%ebp)
	movss	-36(%ebp), %xmm0
	subss	%xmm4, %xmm0
	mulss	%xmm6, %xmm0
	addss	%xmm3, %xmm0
	movss	%xmm0, -120(%ebp)
	cmpw	$16, %ax
	jne	L1251
	movswl	_maskwallcnt, %eax
	movzwl	-56(%ebp), %ecx
	leal	1(%eax), %edx
	movw	%cx, _maskwall(%eax,%eax)
	movw	%dx, _maskwallcnt
L1251:
	movss	-84(%ebp), %xmm2
	comiss	-92(%ebp), %xmm2
	ja	L1252
	movss	-108(%ebp), %xmm2
	comiss	-164(%ebp), %xmm2
	jbe	L1573
L1252:
	movl	-40(%ebp), %eax
	movzwl	12(%eax), %eax
	andw	12(%ebx), %ax
	testb	$1, %al
	je	L1254
L1573:
	movl	-44(%ebp), %eax
	movzwl	14(%eax), %eax
L1253:
	movss	-88(%ebp), %xmm2
	comiss	-104(%ebp), %xmm2
	ja	L1268
	movss	-160(%ebp), %xmm2
	comiss	-120(%ebp), %xmm2
	jbe	L1269
L1268:
	movl	_sector, %edx
	movl	-40(%ebp), %ebx
	movzwl	14(%edx,%edi,8), %ecx
	andw	14(%ebx), %cx
	andl	$1, %ecx
	jne	L1269
	cmpw	$2, _searchit
	je	L1592
	testb	$2, %al
	jne	L1593
L1275:
	movl	-44(%ebp), %ebx
L1273:
	movzwl	16(%ebx), %eax
	movl	_globalvisibility, %ecx
	movl	$0, _globalclipdist
	movl	_globalvisibility2, %esi
	movw	%ax, _globalpicnum
	movsbl	20(%ebx), %eax
	movl	%eax, _globalshade
	movzbl	21(%ebx), %eax
	movl	%eax, _globalpal
	movl	-76(%ebp), %eax
	movzbl	32(%edx,%eax), %eax
	testb	%al, %al
	je	L1276
	addl	$16, %eax
	movzbl	%al, %edx
	movl	%ecx, %eax
	movl	%edx, -84(%ebp)
/APP
 # 6438 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	-84(%ebp), %edx
	movl	%esi, %eax
/APP
 # 6440 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
L1276:
	xorps	%xmm0, %xmm0
	movl	%esi, _globvis2
	cvtsi2ssl	%esi, %xmm0
	movl	%ecx, _globvis
	call	__Z22polymost_setVisibilityf
	movzwl	14(%ebx), %eax
	movl	%eax, _globalorientation
	movl	%eax, %esi
	movl	-64(%ebp), %eax
	leal	16384(%eax), %edx
	movswl	_globalpicnum, %eax
	cmpb	$63, _picanm+3(%eax,%eax,4)
	ja	L1594
L1277:
	andb	$64, %dh
	je	L1278
	testw	$4096, %si
	jne	L1595
L1278:
	movl	%esi, %eax
	andw	$4, %ax
	jne	L1279
	movl	_sector, %edx
	movl	8(%edx,%edi,8), %edi
L1280:
	shrw	$2, %ax
	movl	-44(%ebp), %esi
	movzbl	25(%ebx), %edx
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	23(%esi), %ecx
	movl	%eax, 4(%esp)
	movss	-52(%ebp), %xmm2
	movl	%edi, %eax
	movss	%xmm2, (%esp)
	movss	-48(%ebp), %xmm2
	movss	-72(%ebp), %xmm0
	movss	-136(%ebp), %xmm1
	call	__ZL13calc_ypanningiffffhhi.lto_priv.0
	testb	$8, 14(%esi)
	je	L1281
	movzbl	22(%esi), %edx
	movzbl	24(%ebx), %eax
	leal	(%eax,%edx,4), %eax
	addl	%eax, %eax
	movl	%eax, -84(%ebp)
	fildl	-84(%ebp)
	fldl	__ZL4xtex.lto_priv.0
	fmul	%st(1), %st
	fsubl	__ZL4xtex.lto_priv.0+8
	fstpl	__ZL4xtex.lto_priv.0+8
	fldl	__ZL4ytex.lto_priv.0
	fmul	%st(1), %st
	fsubl	__ZL4ytex.lto_priv.0+8
	fstpl	__ZL4ytex.lto_priv.0+8
	fmull	__ZL4otex.lto_priv.0
	fsubl	__ZL4otex.lto_priv.0+8
	fstpl	__ZL4otex.lto_priv.0+8
L1281:
	testb	$1, 15(%ebx)
	je	L1282
	fldl	__ZL4xtex.lto_priv.0+16
	fchs
	fstpl	__ZL4xtex.lto_priv.0+16
	fldl	__ZL4ytex.lto_priv.0+16
	fchs
	fstpl	__ZL4ytex.lto_priv.0+16
	fldl	__ZL4otex.lto_priv.0+16
	fchs
	fstpl	__ZL4otex.lto_priv.0+16
L1282:
	cmpl	$3, _rendmode
	je	L1596
L1283:
	movl	-40(%ebp), %eax
	movzbl	33(%eax), %ecx
	testb	%cl, %cl
	je	L1597
L1285:
	movl	-40(%ebp), %eax
	movzbl	32(%eax), %edx
	movl	_globalflags, %eax
	andl	$4, %eax
	je	L1598
	xorl	%eax, %eax
L1286:
	call	_calc_and_apply_fog
L1284:
	movss	-160(%ebp), %xmm2
	movl	$1, __ZL10pow2xsplit.lto_priv.0
	movss	%xmm2, 16(%esp)
	movss	-120(%ebp), %xmm2
	movss	%xmm2, 12(%esp)
	movss	-88(%ebp), %xmm6
	movss	%xmm6, 8(%esp)
	movss	-104(%ebp), %xmm1
	movss	%xmm2, (%esp)
	movss	%xmm1, 4(%esp)
	movss	-52(%ebp), %xmm2
	movss	-48(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movl	-44(%ebp), %ebx
	movzwl	14(%ebx), %eax
	testb	$10, %al
	je	L1287
	flds	-132(%ebp)
	movl	$0, __ZL4ytex.lto_priv.0+8
	movl	$0, __ZL4ytex.lto_priv.0+12
	fstpl	__ZL4otex.lto_priv.0+8
	flds	-128(%ebp)
	fstpl	__ZL4xtex.lto_priv.0+8
	movzwl	14(%ebx), %eax
L1287:
	movl	$0, _doeditorcheck
L1269:
	testb	$32, %al
	je	L1293
	cmpw	$2, _searchit
	jne	L1290
	movl	-184(%ebp), %eax
	movl	$4, _psearchstat
	movl	$1, _doeditorcheck
	movl	%eax, _psectnum
	movl	-64(%ebp), %eax
	movl	%eax, _pwallnum
	movl	%eax, _pbottomwall
L1290:
	movl	_globalposx, %eax
	movl	-124(%ebp), %edi
	movl	_globalposy, %ebx
	movl	%eax, -128(%ebp)
	movl	_wall, %eax
	movl	%ebx, -132(%ebp)
	leal	(%eax,%edi), %edx
	movl	(%edx), %esi
	movl	4(%edx), %edi
	movswl	8(%edx), %edx
	movl	%esi, -96(%ebp)
	sall	$5, %edx
	movl	%edi, -108(%ebp)
	addl	%edx, %eax
	movl	(%eax), %ebx
	movl	4(%eax), %eax
	subl	%edi, %eax
	subl	%esi, %ebx
	movl	%eax, %ecx
	movl	%eax, -104(%ebp)
	movl	%ebx, %esi
	movl	%ebx, %edi
	sarl	$31, %ecx
	movl	%eax, -152(%ebp)
	movl	-128(%ebp), %eax
	sarl	$31, %edi
	movl	%ecx, -148(%ebp)
	movl	-96(%ebp), %ecx
	movl	%ebx, -84(%ebp)
	cltd
	movl	%ecx, %ebx
	movl	%edi, -140(%ebp)
	sarl	$31, %ebx
	subl	%ecx, %eax
	movl	%esi, -144(%ebp)
	sbbl	%ebx, %edx
	movl	%eax, -120(%ebp)
	movl	-84(%ebp), %eax
	movl	-120(%ebp), %ebx
	movl	%edx, -116(%ebp)
	movl	-140(%ebp), %edx
	movl	-116(%ebp), %ecx
	imull	%ebx, %edx
	imull	%eax, %ecx
	addl	%edx, %ecx
	movl	%eax, %edx
	movl	%ebx, %eax
	mull	%edx
	movl	%edx, %edi
	movl	%eax, %esi
	movl	-132(%ebp), %eax
	addl	%ecx, %edi
	movl	-108(%ebp), %ecx
	cltd
	movl	%ecx, %ebx
	sarl	$31, %ebx
	subl	%ecx, %eax
	sbbl	%ebx, %edx
	movl	-104(%ebp), %ebx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	movl	%ebx, %ecx
	imull	-100(%ebp), %ecx
	movl	-104(%ebp), %eax
	movl	%ebx, -104(%ebp)
	movl	-148(%ebp), %edx
	imull	%eax, %edx
	addl	%edx, %ecx
	mull	%ebx
	addl	%ecx, %edx
	addl	%eax, %esi
	adcl	%edx, %edi
	js	L1292
	movl	-84(%ebp), %eax
	imull	%eax
	movl	%eax, %ecx
	movl	-104(%ebp), %eax
	movl	%edx, %ebx
	imull	%eax
	addl	%ecx, %eax
	adcl	%ebx, %edx
	cmpl	%esi, %eax
	movl	%edx, %ecx
	sbbl	%edi, %ecx
	jl	L1292
	movl	%esi, %ecx
	movl	%edi, %ebx
	movl	%eax, 8(%esp)
	shldl	$15, %esi, %ebx
	sall	$15, %ecx
	movl	%edx, 12(%esp)
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	call	_tabledivide64.lto_priv.11
	movl	%eax, %ecx
	movl	%edx, %ebx
	sall	$15, %ecx
	shldl	$15, %eax, %ebx
	movl	-84(%ebp), %eax
	movl	%ecx, %esi
	movl	-140(%ebp), %ecx
	movl	%ebx, %edi
	imull	%ebx, %eax
	imull	%esi, %ecx
	addl	%eax, %ecx
	movl	-84(%ebp), %eax
	mull	%esi
	addl	%ecx, %edx
	movl	-96(%ebp), %ecx
	shrdl	$30, %edx, %eax
	leal	(%ecx,%eax), %edx
	movl	-128(%ebp), %ecx
	subl	%edx, %ecx
	movl	%ecx, %eax
/APP
 # 6490 "source/build/src/polymost.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	-148(%ebp), %edx
	movl	%eax, %ecx
	movl	-104(%ebp), %eax
	imull	%esi, %edx
	imull	%edi, %eax
	movl	-108(%ebp), %edi
	movl	%edx, %ebx
	addl	%eax, %ebx
	movl	-104(%ebp), %eax
	mull	%esi
	addl	%ebx, %edx
	shrdl	$30, %edx, %eax
	leal	(%edi,%eax), %edx
	movl	-132(%ebp), %eax
	subl	%edx, %eax
/APP
 # 6490 "source/build/src/polymost.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	cmpl	$128, %ecx
	jg	L1292
L1293:
	movl	$0, __ZL16domostpolymethod
L1289:
	movl	-60(%ebp), %ecx
	movl	-112(%ebp), %eax
	sarl	$3, %ecx
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.12(%eax), %ebx
	movzbl	_gotsector(%ecx), %eax
	andl	%ebx, %eax
	cmpb	%al, %bl
	je	L1059
	movswl	__ZL3vsp.lto_priv.0+24, %eax
	testl	%eax, %eax
	je	L1059
	movss	-48(%ebp), %xmm1
	movss	-52(%ebp), %xmm2
	jmp	L1317
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1313:
	testl	%eax, %eax
	je	L1059
L1317:
	movl	%eax, %edx
	sall	$5, %eax
	movswl	__ZL3vsp.lto_priv.0+24(%eax), %eax
	movl	%eax, %esi
	sall	$5, %esi
	movss	__ZL3vsp.lto_priv.0(%esi), %xmm0
	comiss	%xmm1, %xmm0
	jbe	L1313
	sall	$5, %edx
	comiss	__ZL3vsp.lto_priv.0(%edx), %xmm2
	jbe	L1313
	cmpw	$0, __ZL3vsp.lto_priv.0+28(%edx)
	js	L1313
	movl	_automapping, %eax
	testl	%eax, %eax
	je	L1320
	orb	%bl, _show2dsector(%ecx)
L1320:
	movzwl	-112(%ebp), %eax
	movw	%ax, _sectorborder
	call	_polymost_scansector.part.0
	jmp	L1059
	.p2align 4,,10
	.p2align 3
L1580:
	xorl	%edx, %edx
	jmp	L1073
	.p2align 4,,10
	.p2align 3
L1585:
	xorl	%edx, %edx
	jmp	L1158
	.p2align 4,,10
	.p2align 3
L1292:
	movl	-44(%ebp), %eax
	xorl	%esi, %esi
	movzwl	18(%eax), %eax
	jmp	L1294
	.p2align 4,,10
	.p2align 3
L1340:
	xorl	%eax, %eax
	jmp	L1307
	.p2align 4,,10
	.p2align 3
L1584:
	call	_animateoffs
	addl	%eax, %ebx
	movw	%bx, _globalpicnum
	movswl	%bx, %eax
	jmp	L1153
	.p2align 4,,10
	.p2align 3
L1582:
	movl	-76(%ebp), %eax
	addl	_sector, %eax
	testb	$2, 14(%eax)
	je	L1599
	movl	_globalposy, %edx
	movl	%edx, 8(%esp)
	movl	_globalposx, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_getflorzofslopeptr.part.0
	cmpl	%eax, _globalposz
	jle	L1600
L1081:
	movss	LC53, %xmm7
	movl	_g_nodraw, %ebx
	movss	%xmm7, -152(%ebp)
	testl	%ebx, %ebx
	je	L1082
	testb	$2, -180(%ebp)
	je	L1082
	movss	LC38, %xmm7
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	-160(%ebp), %xmm4
	movss	%xmm4, (%esp)
	movss	-52(%ebp), %xmm2
	movss	-88(%ebp), %xmm1
	movss	-48(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	jmp	L1082
	.p2align 4,,10
	.p2align 3
L1587:
	movl	-76(%ebp), %eax
	addl	_sector, %eax
	testb	$2, 12(%eax)
	je	L1601
	movl	_globalposy, %edx
	movl	%edx, 8(%esp)
	movl	_globalposx, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_getceilzofslopeptr.part.0
	cmpl	%eax, _globalposz
	jge	L1602
L1166:
	movl	_g_nodraw, %ebx
	testl	%ebx, %ebx
	je	L1603
	testb	$1, -180(%ebp)
	jne	L1170
	movl	$0, _doeditorcheck
L1171:
	movl	$__ZL10yax_holecf, -236(%ebp)
	testb	$1, -180(%ebp)
	jne	L1604
L1469:
	movl	-180(%ebp), %eax
	sarl	%eax
	movl	%eax, -232(%ebp)
	je	L1169
	addl	$49152, -236(%ebp)
L1249:
	movl	-232(%ebp), %eax
	movswl	-28(%ebp,%eax,2), %eax
	movl	%eax, %ecx
	movl	%eax, %ebx
	sarl	$3, %ecx
	andl	$7, %ebx
	movzbl	_haveymost(%ecx), %edi
	movzbl	__ZL8pow2char.lto_priv.12(%ebx), %ebx
	movl	%edi, %esi
	notl	%esi
	movl	%esi, %edx
	testb	%bl, %dl
	je	L1242
	movss	__ZL3xbl.lto_priv.0, %xmm2
	movl	%edi, %edx
	movss	__ZL3xbr.lto_priv.0, %xmm1
	movss	__ZL3xbb.lto_priv.0, %xmm0
	orl	%ebx, %edx
	movb	%dl, _haveymost(%ecx)
	movl	__ZL7yax_vsp.lto_priv.0(,%eax,8), %edx
	xorl	%ecx, %ecx
	movss	%xmm2, 24(%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%eax,8), %edx
	movss	%xmm1, 48(%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%eax,8), %edx
	movss	%xmm0, 28(%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%eax,8), %edx
	movss	%xmm0, 52(%edx)
	movl	$24, %edx
	.p2align 4
	.p2align 3
L1243:
	movl	__ZL7yax_vsp.lto_priv.0(,%eax,8), %ebx
	leal	1(%ecx), %esi
	movss	4(%ebx,%edx), %xmm0
	movss	%xmm0, -16(%ebx,%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%eax,8), %ebx
	movw	%cx, -4(%ebx,%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%eax,8), %ebx
	movw	%si, -8(%ebx,%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%eax,8), %ebx
	leal	-1(%ecx), %esi
	addl	$1, %ecx
	movw	%si, -6(%ebx,%edx)
	addl	$24, %edx
	cmpl	$3, %ecx
	jne	L1243
	movl	__ZL7yax_vsp.lto_priv.0(,%eax,8), %edx
	xorl	%ecx, %ecx
	movl	$2, %ebx
	movw	%cx, 64(%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%eax,8), %edx
	movl	$72, %ecx
	movw	%bx, 18(%edx)
	movl	$4, %edx
	.p2align 6
	.p2align 4
	.p2align 3
L1244:
	movl	__ZL7yax_vsp.lto_priv.0(,%eax,8), %ebx
	leal	-2(%edx), %esi
	movw	%dx, 16(%ebx,%ecx)
	movl	__ZL7yax_vsp.lto_priv.0(,%eax,8), %ebx
	addl	$1, %edx
	movw	%si, 18(%ebx,%ecx)
	addl	$24, %ecx
	cmpl	$2049, %edx
	jne	L1244
	movl	$3, %esi
	leal	1(%eax,%eax), %ecx
	movl	$2047, %edi
	xorl	%ebx, %ebx
	movss	__ZL3xbt.lto_priv.0, %xmm0
	movl	__ZL7yax_vsp.lto_priv.0(,%eax,8), %edx
	movw	%si, 49144(%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%eax,8), %edx
	movw	%di, 90(%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%ecx,4), %edx
	movss	%xmm2, 24(%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%ecx,4), %edx
	movss	%xmm1, 48(%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%ecx,4), %edx
	movss	%xmm0, 28(%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%ecx,4), %edx
	movss	%xmm0, 52(%edx)
	movl	$24, %edx
	.p2align 4
	.p2align 3
L1245:
	movl	__ZL7yax_vsp.lto_priv.0(,%ecx,4), %esi
	leal	1(%ebx), %edi
	movss	4(%esi,%edx), %xmm0
	movss	%xmm0, -16(%esi,%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%ecx,4), %esi
	movw	%bx, -4(%esi,%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%ecx,4), %esi
	movw	%di, -8(%esi,%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%ecx,4), %esi
	leal	-1(%ebx), %edi
	addl	$1, %ebx
	movw	%di, -6(%esi,%edx)
	addl	$24, %edx
	cmpl	$3, %ebx
	jne	L1245
	movl	__ZL7yax_vsp.lto_priv.0(,%ecx,4), %edx
	xorl	%edi, %edi
	movl	$2, %ebx
	movw	%di, 64(%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%ecx,4), %edx
	movw	%bx, 18(%edx)
	movl	$72, %ebx
	movl	$4, %edx
	.p2align 6
	.p2align 4
	.p2align 3
L1246:
	movl	__ZL7yax_vsp.lto_priv.0(,%ecx,4), %esi
	leal	-2(%edx), %edi
	movw	%dx, 16(%esi,%ebx)
	movl	__ZL7yax_vsp.lto_priv.0(,%ecx,4), %esi
	addl	$1, %edx
	movw	%di, 18(%esi,%ebx)
	addl	$24, %ebx
	cmpl	$2049, %edx
	jne	L1246
	movl	__ZL7yax_vsp.lto_priv.0(,%ecx,4), %edx
	movl	$3, %ebx
	movl	$2047, %esi
	movw	%bx, 49144(%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%ecx,4), %edx
	movw	%si, 90(%edx)
L1242:
	movl	-232(%ebp), %ebx
	movl	__ZL11yax_holencf(,%ebx,4), %edx
	testl	%edx, %edx
	jle	L1241
	leal	(%eax,%eax), %esi
	movl	-236(%ebp), %ebx
	movl	%edx, %edi
	leal	1(%esi), %eax
	movl	%esi, -176(%ebp)
	movl	%eax, -168(%ebp)
	movl	%ebx, %esi
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L1248:
	movss	12(%esi), %xmm1
	movss	4(%esi), %xmm3
	addl	$1, %ebx
	addl	$24, %esi
	movss	-24(%esi), %xmm0
	movss	%xmm1, (%esp)
	movss	-16(%esi), %xmm1
	movl	-176(%ebp), %eax
	movaps	%xmm3, %xmm2
	movss	%xmm3, -144(%ebp)
	movss	%xmm0, -84(%ebp)
	call	__ZL19yax_polymost_domostiffff
	movss	-8(%esi), %xmm1
	movss	%xmm1, (%esp)
	movss	-4(%esi), %xmm1
	movss	-84(%ebp), %xmm2
	movss	-144(%ebp), %xmm0
	movl	-168(%ebp), %eax
	call	__ZL19yax_polymost_domostiffff
	cmpl	%edi, %ebx
	jne	L1248
L1241:
	cmpl	$1, -232(%ebp)
	jne	L1469
	jmp	L1169
	.p2align 4,,10
	.p2align 3
L1298:
	movl	-40(%ebp), %eax
	testw	%bx, %bx
	jne	L1301
	movl	4(%eax), %eax
	jmp	L1300
	.p2align 4,,10
	.p2align 3
L1579:
	call	_animateoffs
	addl	%eax, %ebx
	movw	%bx, _globalpicnum
	movswl	%bx, %eax
	jmp	L1068
	.p2align 4,,10
	.p2align 3
L1578:
	movl	-184(%ebp), %esi
	movl	%esi, %eax
	call	_yax_getbunch.constprop.1
	movw	%ax, -28(%ebp)
	movswl	%ax, %ebx
	movl	%esi, %eax
	call	_yax_getbunch.constprop.0
	notl	%ebx
	movw	%ax, -26(%ebp)
	cwtl
	shrl	$31, %ebx
	notl	%eax
	shrl	$31, %eax
	leal	(%ebx,%eax,2), %eax
	movl	%eax, -180(%ebp)
	jmp	L1066
	.p2align 4,,10
	.p2align 3
L1172:
	movl	-40(%ebp), %ecx
	movzbl	32(%ecx), %ecx
	movb	%cl, -232(%ebp)
	cmpl	$3, _rendmode
	je	L1605
L1173:
	movl	_nofog, %eax
	testl	%eax, %eax
	jne	L1175
	movzbl	-232(%ebp), %edx
	movl	%esi, %eax
	movl	%edi, %ecx
	call	_calc_and_apply_fog_factor.part.0.constprop.0
	movl	-40(%ebp), %eax
	movzbl	32(%eax), %eax
	movb	%al, -232(%ebp)
L1175:
	movl	_globalpisibility, %eax
	movzbl	-232(%ebp), %ecx
	movl	%eax, %edx
	testb	%cl, %cl
	jne	L1606
L1177:
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movl	%edx, _globvis2
	cvtsi2ssl	_xdimscale, %xmm0
	mulss	_fxdimen, %xmm0
	mulss	LC46, %xmm0
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	call	__Z22polymost_setVisibilityf
	movzbl	-144(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	leal	-1(%eax), %esi
	movl	%esi, -232(%ebp)
	testl	%esi, %esi
	jle	L1178
	movzbl	8(%ebx,%eax), %edx
	movl	%esi, %eax
	jmp	L1180
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1179:
	subl	$1, %eax
	je	L1178
L1180:
	movl	%edx, %ecx
	movzbl	8(%ebx,%eax), %edx
	cmpb	%cl, %dl
	je	L1179
	movl	_r_parallaxskyclamping, %eax
	movl	%eax, __ZL12skyclamphack.lto_priv.0
L1178:
	movl	_usehightile, %eax
	movl	$1, __ZL14skyzbufferhack
	testl	%eax, %eax
	jne	L1607
L1181:
	movss	__ZL6ghoriz.lto_priv.0, %xmm2
	movl	_r_flatsky, %eax
	movl	_r_yshearing, %esi
	movl	_xdimscale, %edi
	movss	%xmm2, -264(%ebp)
	movss	_fviewingrange, %xmm2
	testl	%eax, %eax
	je	L1183
	testl	%esi, %esi
	jne	L1184
	movl	_globvis2, %eax
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movl	$0, __ZL10pow2xsplit.lto_priv.0
	cvtsi2ssl	_globalshade, %xmm1
	movl	$0, __ZL12skyclamphack.lto_priv.0
	movl	$1, __ZL13flatskyrender
	imull	%edi, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm2, %xmm0
	mulss	LC47, %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	xorps	%xmm0, %xmm0
	movl	%eax, _globalshade
	call	__Z22polymost_setVisibilityf
	movl	$0x00000000, 12(%esp)
	movss	LC38, %xmm7
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	-92(%ebp), %xmm7
	movss	%xmm7, (%esp)
	movss	-48(%ebp), %xmm2
	movss	-52(%ebp), %xmm0
	movss	-164(%ebp), %xmm1
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movl	$0, __ZL13flatskyrender
L1185:
	movss	-264(%ebp), %xmm2
	movss	%xmm2, __ZL6ghoriz.lto_priv.0
L1203:
	movl	_nofog, %esi
	movl	$0, __ZL12skyclamphack.lto_priv.0
	movl	$0, __ZL14skyzbufferhack
	testl	%esi, %esi
	jne	L1572
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L1572
	movss	-84(%ebp), %xmm3
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm3
	jp	L1375
	je	L1572
L1375:
	movss	-84(%ebp), %xmm3
	movss	%xmm3, __ZL19polymost1FogEnabled.lto_priv.0
	movss	%xmm3, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
	jmp	L1572
	.p2align 4,,10
	.p2align 3
L1083:
	movl	-40(%ebp), %ecx
	movzbl	32(%ecx), %ebx
	cmpl	$3, _rendmode
	je	L1608
L1084:
	movl	_nofog, %eax
	testl	%eax, %eax
	jne	L1086
	movl	-176(%ebp), %eax
	movzbl	%bl, %edx
	movl	%edi, %ecx
	call	_calc_and_apply_fog_factor.part.0.constprop.0
	movl	-40(%ebp), %eax
	movzbl	32(%eax), %ebx
L1086:
	movl	_globalpisibility, %eax
	movl	%eax, %edx
	testb	%bl, %bl
	jne	L1609
L1088:
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movl	%edx, _globvis2
	cvtsi2ssl	_xdimscale, %xmm0
	mulss	_fxdimen, %xmm0
	mulss	LC46, %xmm0
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	call	__Z22polymost_setVisibilityf
	movzbl	-168(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	leal	-1(%eax), %edi
	movl	%edi, -176(%ebp)
	testl	%edi, %edi
	jle	L1089
	movl	-144(%ebp), %ebx
	movzbl	8(%ebx,%eax), %edx
	movl	%edi, %eax
	jmp	L1091
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1090:
	subl	$1, %eax
	je	L1610
L1091:
	movl	%edx, %ecx
	movzbl	8(%ebx,%eax), %edx
	cmpb	%cl, %dl
	je	L1090
	movl	_r_parallaxskyclamping, %eax
	movl	%ebx, -144(%ebp)
	movl	%eax, __ZL12skyclamphack.lto_priv.0
L1089:
	movl	_usehightile, %ecx
	movl	$1, __ZL14skyzbufferhack
	testl	%ecx, %ecx
	jne	L1611
L1092:
	movss	__ZL6ghoriz.lto_priv.0, %xmm2
	movl	_r_flatsky, %edx
	movl	_r_yshearing, %eax
	movl	_xdimscale, %edi
	movss	%xmm2, -260(%ebp)
	movss	_fviewingrange, %xmm2
	testl	%edx, %edx
	je	L1094
	testl	%eax, %eax
	jne	L1095
	movl	_globvis2, %eax
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movl	$0, __ZL10pow2xsplit.lto_priv.0
	cvtsi2ssl	_globalshade, %xmm1
	movl	$0, __ZL12skyclamphack.lto_priv.0
	movl	$1, __ZL13flatskyrender
	imull	%edi, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm2, %xmm0
	mulss	LC47, %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	xorps	%xmm0, %xmm0
	movl	%eax, _globalshade
	call	__Z22polymost_setVisibilityf
	movl	$0x00000000, 12(%esp)
	movss	LC38, %xmm7
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	-160(%ebp), %xmm2
	movss	%xmm2, (%esp)
	movss	-52(%ebp), %xmm2
	movss	-88(%ebp), %xmm1
	movss	-48(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movl	$0, __ZL13flatskyrender
L1096:
	movss	-260(%ebp), %xmm2
	movss	%xmm2, __ZL6ghoriz.lto_priv.0
	movss	LC53, %xmm2
	movss	%xmm2, -152(%ebp)
L1114:
	movl	_nofog, %esi
	movl	$0, __ZL12skyclamphack.lto_priv.0
	movl	$0, __ZL14skyzbufferhack
	testl	%esi, %esi
	jne	L1082
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L1082
	movss	-84(%ebp), %xmm3
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm3
	jp	L1359
	je	L1082
L1359:
	movss	-84(%ebp), %xmm5
	movss	%xmm5, __ZL19polymost1FogEnabled.lto_priv.0
	movss	%xmm5, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
	jmp	L1082
	.p2align 4,,10
	.p2align 3
L1590:
	movl	_r_useindexedcolortextures, %esi
	testl	%esi, %esi
	je	L1304
	movl	_gltexfiltermode, %ebx
	testl	%ebx, %ebx
	jne	L1304
	movl	_usehightile, %ecx
	testl	%ecx, %ecx
	je	L1305
	movl	_globalpal, %edx
	movswl	_globalpicnum, %eax
	movzwl	_hictinting(,%edx,8), %ecx
	andl	$256, %ecx
	call	_hicfindsubst
	testl	%eax, %eax
	jne	L1304
	jmp	L1305
	.p2align 4,,10
	.p2align 3
L1589:
	movl	%edx, -84(%ebp)
	call	_animateoffs
	movl	-84(%ebp), %edx
	addl	%eax, %edi
	movw	%di, _globalpicnum
	jmp	L1296
	.p2align 4,,10
	.p2align 3
L1531:
	movl	$0x00000000, -132(%ebp)
	jmp	L1060
	.p2align 4,,10
	.p2align 3
L1299:
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	jmp	L1300
	.p2align 4,,10
	.p2align 3
L1577:
	movl	-184(%ebp), %eax
	call	_yax_getbunch.constprop.0
	testw	%ax, %ax
	js	L1065
	cmpb	$0, _showinvisibility
	jne	L1065
	movl	-40(%ebp), %eax
	testw	$384, 14(%eax)
	jne	L1065
	xorl	%eax, %eax
/APP
 # 5451 "source/build/src/polymost.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	$8, %eax
	jne	L1064
	.p2align 4
	.p2align 3
L1065:
	movl	-184(%ebp), %eax
	movl	$2, _psearchstat
	movl	$1, _doeditorcheck
	movl	%eax, _psectnum
	movl	-64(%ebp), %eax
	movl	%eax, _pwallnum
	jmp	L1064
	.p2align 4,,10
	.p2align 3
L1583:
	movl	-184(%ebp), %eax
	call	_yax_getbunch.constprop.1
	testw	%ax, %ax
	js	L1151
	cmpb	$0, _showinvisibility
	jne	L1151
	movl	-40(%ebp), %eax
	testw	$384, 14(%eax)
	jne	L1151
	xorl	%eax, %eax
/APP
 # 5884 "source/build/src/polymost.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	$8, %eax
	jne	L1150
	.p2align 4
	.p2align 3
L1151:
	movl	-184(%ebp), %eax
	movl	$1, _psearchstat
	movl	$1, _doeditorcheck
	movl	%eax, _psectnum
	movl	-64(%ebp), %eax
	movl	%eax, _pwallnum
	jmp	L1150
	.p2align 4,,10
	.p2align 3
L1301:
	movl	8(%eax), %eax
	jmp	L1300
	.p2align 4,,10
	.p2align 3
L1254:
	cmpw	$2, _searchit
	jne	L1255
	movl	-184(%ebp), %eax
	movl	$0, _pisbottomwall
	movl	$0, _psearchstat
	movl	%eax, _psectnum
	movl	-64(%ebp), %eax
	movl	$1, _doeditorcheck
	movl	%eax, _pwallnum
	movl	%eax, _pbottomwall
L1255:
	movl	$0, _globalclipdist
	movl	-44(%ebp), %ebx
	movzwl	16(%ebx), %eax
	movw	%ax, _globalpicnum
	movsbl	20(%ebx), %eax
	movl	%eax, _globalshade
	movzbl	21(%ebx), %eax
	movl	_globalvisibility, %ebx
	movl	%eax, _globalpal
	movl	-76(%ebp), %eax
	movzbl	32(%esi,%eax), %eax
	movl	_globalvisibility2, %esi
	testb	%al, %al
	je	L1256
	addl	$16, %eax
	movzbl	%al, %ecx
	movl	%ebx, %eax
	movl	%ecx, %edx
/APP
 # 6381 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	%ecx, %edx
	movl	%esi, %eax
/APP
 # 6383 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
L1256:
	xorps	%xmm0, %xmm0
	movl	%ebx, _globvis
	cvtsi2ssl	%esi, %xmm0
	movl	%esi, _globvis2
	call	__Z22polymost_setVisibilityf
	movl	-44(%ebp), %eax
	movzwl	14(%eax), %eax
	movl	%eax, _globalorientation
	movl	%eax, %ebx
	movl	-64(%ebp), %eax
	leal	16384(%eax), %edx
	movswl	_globalpicnum, %eax
	movl	%eax, %esi
	cmpb	$63, _picanm+3(%eax,%eax,4)
	ja	L1612
L1257:
	andb	$64, %dh
	je	L1258
	testb	$16, %bh
	jne	L1613
L1258:
	andw	$4, %bx
	jne	L1259
	movl	_sector, %eax
	movl	4(%eax,%edi,8), %eax
L1260:
	movl	-44(%ebp), %esi
	movzwl	%bx, %ebx
	movzbl	23(%esi), %ecx
	movzbl	25(%esi), %edx
	movl	%ebx, 4(%esp)
	movss	-52(%ebp), %xmm2
	movss	%xmm2, (%esp)
	movss	-48(%ebp), %xmm2
	movss	-72(%ebp), %xmm0
	movss	-136(%ebp), %xmm1
	call	__ZL13calc_ypanningiffffhhi.lto_priv.0
	movzwl	14(%esi), %eax
	testb	$8, %al
	je	L1261
	movzbl	22(%esi), %edx
	movzbl	24(%esi), %eax
	leal	(%eax,%edx,4), %eax
	addl	%eax, %eax
	movl	%eax, -96(%ebp)
	fildl	-96(%ebp)
	fldl	__ZL4xtex.lto_priv.0
	fmul	%st(1), %st
	fsubl	__ZL4xtex.lto_priv.0+8
	fstpl	__ZL4xtex.lto_priv.0+8
	fldl	__ZL4ytex.lto_priv.0
	fmul	%st(1), %st
	fsubl	__ZL4ytex.lto_priv.0+8
	fstpl	__ZL4ytex.lto_priv.0+8
	fmull	__ZL4otex.lto_priv.0
	fsubl	__ZL4otex.lto_priv.0+8
	fstpl	__ZL4otex.lto_priv.0+8
	movzwl	14(%esi), %eax
L1261:
	testb	$1, %ah
	je	L1262
	fldl	__ZL4xtex.lto_priv.0+16
	fchs
	fstpl	__ZL4xtex.lto_priv.0+16
	fldl	__ZL4ytex.lto_priv.0+16
	fchs
	fstpl	__ZL4ytex.lto_priv.0+16
	fldl	__ZL4otex.lto_priv.0+16
	fchs
	fstpl	__ZL4otex.lto_priv.0+16
L1262:
	cmpl	$3, _rendmode
	je	L1614
L1263:
	movl	-40(%ebp), %eax
	movzbl	33(%eax), %ecx
	testb	%cl, %cl
	je	L1615
L1265:
	movl	-40(%ebp), %eax
	movzbl	32(%eax), %edx
	movl	_globalflags, %eax
	andl	$4, %eax
	je	L1616
	xorl	%eax, %eax
L1266:
	call	_calc_and_apply_fog
L1264:
	movl	$1, __ZL10pow2xsplit.lto_priv.0
	movss	-84(%ebp), %xmm7
	movss	%xmm7, 16(%esp)
	movss	-92(%ebp), %xmm2
	movss	%xmm2, 12(%esp)
	movss	-108(%ebp), %xmm1
	movss	%xmm1, 8(%esp)
	movss	-164(%ebp), %xmm2
	movss	%xmm7, (%esp)
	movss	%xmm2, 4(%esp)
	movss	-48(%ebp), %xmm2
	movss	-52(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movl	-44(%ebp), %ebx
	movzwl	14(%ebx), %eax
	testb	$8, %al
	je	L1267
	movl	$0, __ZL4ytex.lto_priv.0+8
	flds	-128(%ebp)
	movl	$0, __ZL4ytex.lto_priv.0+12
	fstpl	__ZL4xtex.lto_priv.0+8
	flds	-132(%ebp)
	fstpl	__ZL4otex.lto_priv.0+8
	movzwl	14(%ebx), %eax
L1267:
	movl	$0, _doeditorcheck
	jmp	L1253
	.p2align 4,,10
	.p2align 3
L1606:
	leal	16(%ecx), %edx
	movzbl	%dl, %edx
/APP
 # 5946 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	jmp	L1177
	.p2align 4,,10
	.p2align 3
L1609:
	leal	16(%ebx), %edx
	movzbl	%dl, %edx
/APP
 # 5527 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	jmp	L1088
	.p2align 4,,10
	.p2align 3
L1603:
	movl	$0, _doeditorcheck
	jmp	L1169
	.p2align 4,,10
	.p2align 3
L1608:
	movl	_r_useindexedcolortextures, %edx
	testl	%edx, %edx
	je	L1084
	movl	_gltexfiltermode, %ecx
	testl	%ecx, %ecx
	jne	L1084
	movl	_usehightile, %edx
	testl	%edx, %edx
	je	L1086
	movl	_globalpal, %edx
	movzwl	_hictinting(,%edx,8), %ecx
	andl	$256, %ecx
	call	_hicfindsubst
	testl	%eax, %eax
	jne	L1084
	jmp	L1086
	.p2align 4,,10
	.p2align 3
L1605:
	movl	_r_useindexedcolortextures, %edx
	testl	%edx, %edx
	je	L1173
	movl	_gltexfiltermode, %ecx
	testl	%ecx, %ecx
	jne	L1173
	movl	_usehightile, %edx
	testl	%edx, %edx
	je	L1175
	movl	_globalpal, %edx
	movzwl	_hictinting(,%edx,8), %ecx
	andl	$256, %ecx
	call	_hicfindsubst
	testl	%eax, %eax
	jne	L1173
	jmp	L1175
	.p2align 4,,10
	.p2align 3
L1311:
	movss	-88(%ebp), %xmm2
	movss	%xmm2, 16(%esp)
	movss	-92(%ebp), %xmm7
	movss	%xmm7, 12(%esp)
	movss	-160(%ebp), %xmm1
	movss	%xmm1, 8(%esp)
	movss	-164(%ebp), %xmm7
	movss	%xmm2, (%esp)
	movss	%xmm7, 4(%esp)
	movss	-48(%ebp), %xmm2
	movss	-52(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	jmp	L1312
	.p2align 4,,10
	.p2align 3
L1591:
	movl	-64(%ebp), %eax
	movswl	_yax_nextwall+2(,%eax,4), %eax
	jmp	L1310
	.p2align 4,,10
	.p2align 3
L1610:
	movl	%ebx, -144(%ebp)
	jmp	L1089
	.p2align 4,,10
	.p2align 3
L1599:
	movl	8(%eax), %eax
	cmpl	%eax, _globalposz
	jg	L1081
L1600:
	movzwl	-154(%ebp), %ecx
	movss	-108(%ebp), %xmm1
	movss	-120(%ebp), %xmm0
	movl	-104(%ebp), %eax
	orb	$16, %ch
	movl	-96(%ebp), %edx
	movswl	%cx, %ecx
	movl	%ecx, 20(%esp)
	movss	-160(%ebp), %xmm2
	movss	%xmm2, 16(%esp)
	movss	-88(%ebp), %xmm5
	movss	%xmm5, 12(%esp)
	movss	-52(%ebp), %xmm2
	movss	%xmm1, (%esp)
	movss	%xmm2, 8(%esp)
	movss	%xmm0, 4(%esp)
	movss	-48(%ebp), %xmm2
	movss	-72(%ebp), %xmm0
	movss	-136(%ebp), %xmm1
	call	__ZL31polymost_internal_nonparallaxed4vec2IfES0_ffffffi
	movss	LC53, %xmm7
	movss	%xmm7, -152(%ebp)
	jmp	L1082
	.p2align 4,,10
	.p2align 3
L1601:
	movl	4(%eax), %eax
	cmpl	%eax, _globalposz
	jl	L1166
L1602:
	movl	-184(%ebp), %ebx
	movl	-104(%ebp), %eax
	movss	-108(%ebp), %xmm1
	movss	-120(%ebp), %xmm0
	movl	-96(%ebp), %edx
	movl	%ebx, 20(%esp)
	movss	-164(%ebp), %xmm6
	movss	%xmm6, 16(%esp)
	movss	-92(%ebp), %xmm4
	movss	%xmm4, 12(%esp)
	movss	-52(%ebp), %xmm3
	movss	%xmm1, (%esp)
	movss	%xmm3, 8(%esp)
	movss	%xmm0, 4(%esp)
	movss	-48(%ebp), %xmm2
	movss	-72(%ebp), %xmm0
	movss	-136(%ebp), %xmm1
	call	__ZL31polymost_internal_nonparallaxed4vec2IfES0_ffffffi
	movl	_g_nodraw, %eax
	jmp	L1167
L1611:
	movswl	_globalpicnum, %eax
	movl	_globalpal, %edx
	call	_hicfindskybox.constprop.0
	testl	%eax, %eax
	je	L1092
	movss	LC35, %xmm3
	movl	$1, %ebx
	movss	LC0, %xmm6
	movups	%xmm6, -232(%ebp)
	movss	LC50, %xmm6
	movss	_ghalfx, %xmm5
	movl	$0, __ZL10pow2xsplit.lto_priv.0
	movss	LC38, %xmm7
	movss	%xmm3, -236(%ebp)
	movss	LC53, %xmm3
	movss	%xmm6, -240(%ebp)
	movss	LC51, %xmm6
	movss	LC41, %xmm2
	movl	$1, __ZL12skyclamphack.lto_priv.0
	movss	%xmm5, -144(%ebp)
	movss	LC40, %xmm5
	movss	%xmm6, -244(%ebp)
	movss	%xmm3, -152(%ebp)
	movss	%xmm7, -168(%ebp)
L1093:
	movss	__ZZL17polymost_drawallsiE6skywal-8(,%ebx,8), %xmm6
	movss	__ZZL17polymost_drawallsiE6skywal-4(,%ebx,8), %xmm1
	movss	_gcosang, %xmm0
	movss	_gsinang, %xmm4
	movaps	%xmm1, %xmm7
	movaps	%xmm6, %xmm3
	mulss	%xmm4, %xmm3
	mulss	%xmm0, %xmm7
	mulss	_gcosang2, %xmm6
	mulss	%xmm2, %xmm4
	mulss	%xmm5, %xmm0
	mulss	_gcosang2, %xmm2
	subss	%xmm3, %xmm7
	movss	_gsinang2, %xmm3
	mulss	%xmm3, %xmm1
	mulss	%xmm5, %xmm3
	subss	%xmm4, %xmm0
	addss	%xmm6, %xmm1
	movss	LC43, %xmm6
	addss	%xmm3, %xmm2
	comiss	%xmm1, %xmm6
	jbe	L1535
	comiss	%xmm2, %xmm6
	ja	L1122
	movss	LC39, %xmm5
	movaps	%xmm6, %xmm4
	movaps	%xmm2, %xmm3
	subss	%xmm1, %xmm4
	subss	%xmm1, %xmm3
	movaps	%xmm0, %xmm1
	subss	%xmm7, %xmm1
	movaps	%xmm4, %xmm6
	divss	%xmm3, %xmm6
	movss	-84(%ebp), %xmm3
	movss	%xmm3, -256(%ebp)
	mulss	%xmm6, %xmm1
	movss	%xmm6, -260(%ebp)
	addss	%xmm1, %xmm7
	movaps	%xmm3, %xmm1
	divss	%xmm2, %xmm1
L1118:
	movss	-144(%ebp), %xmm2
	mulss	%xmm2, %xmm7
	mulss	%xmm2, %xmm0
	movaps	%xmm7, %xmm3
	mulss	%xmm5, %xmm3
	movaps	%xmm0, %xmm4
	mulss	%xmm1, %xmm4
	addss	%xmm2, %xmm3
	addss	%xmm2, %xmm4
	comiss	%xmm4, %xmm3
	jnb	L1122
	comiss	-52(%ebp), %xmm3
	jnb	L1122
	movss	-48(%ebp), %xmm7
	comiss	%xmm4, %xmm7
	jnb	L1122
	movss	_gyxscale, %xmm0
	comiss	%xmm3, %xmm7
	movss	__ZL6ghoriz.lto_priv.0, %xmm2
	movss	%xmm2, -176(%ebp)
	movaps	%xmm5, %xmm2
	movaps	%xmm0, %xmm5
	mulss	%xmm1, %xmm5
	mulss	%xmm0, %xmm2
	movss	%xmm5, -292(%ebp)
	movaps	%xmm5, %xmm0
	movss	LC49, %xmm5
	movss	%xmm2, -276(%ebp)
	mulss	%xmm2, %xmm5
	movss	-176(%ebp), %xmm2
	movaps	%xmm2, %xmm1
	movaps	%xmm5, %xmm6
	movss	%xmm5, -284(%ebp)
	addss	%xmm2, %xmm5
	movss	LC49, %xmm2
	subss	%xmm6, %xmm1
	movss	-176(%ebp), %xmm6
	mulss	%xmm0, %xmm2
	movss	%xmm5, -272(%ebp)
	movaps	%xmm2, %xmm0
	movss	%xmm2, -288(%ebp)
	addss	%xmm6, %xmm2
	subss	%xmm0, %xmm6
	movaps	%xmm7, %xmm0
	movss	%xmm2, -264(%ebp)
	jbe	L1536
	movaps	%xmm4, %xmm7
	subss	%xmm3, %xmm0
	subss	%xmm5, %xmm2
	subss	%xmm3, %xmm7
	divss	%xmm7, %xmm0
	movss	%xmm7, -296(%ebp)
	mulss	%xmm0, %xmm2
	addss	%xmm5, %xmm2
	movss	-88(%ebp), %xmm5
	movss	%xmm2, -272(%ebp)
	movaps	%xmm6, %xmm2
	subss	%xmm1, %xmm2
	mulss	%xmm0, %xmm2
	movss	-48(%ebp), %xmm0
	movss	%xmm0, -248(%ebp)
	addss	%xmm2, %xmm1
L1125:
	movss	-52(%ebp), %xmm0
	comiss	%xmm0, %xmm4
	jbe	L1538
	subss	%xmm4, %xmm0
	movaps	%xmm4, %xmm2
	subss	-248(%ebp), %xmm2
	movss	-264(%ebp), %xmm7
	divss	%xmm2, %xmm0
	movaps	%xmm7, %xmm2
	subss	-272(%ebp), %xmm2
	mulss	%xmm0, %xmm2
	addss	%xmm7, %xmm2
	movss	%xmm2, -264(%ebp)
	movaps	%xmm6, %xmm2
	subss	%xmm1, %xmm2
	mulss	%xmm0, %xmm2
	movss	-52(%ebp), %xmm0
	movss	%xmm0, -268(%ebp)
	addss	%xmm2, %xmm6
	movss	-160(%ebp), %xmm2
	movss	%xmm2, -252(%ebp)
L1129:
	movss	-240(%ebp), %xmm0
	movss	-176(%ebp), %xmm7
	comiss	%xmm5, %xmm1
	movl	$6, _drawingskybox
	movss	_fcosglobalang, %xmm2
	xorps	-232(%ebp), %xmm7
	movl	$0, __ZL4xtex.lto_priv.0
	flds	LC34
	fmull	_gxyaspect
	movl	$0, __ZL4xtex.lto_priv.0+4
	mulss	%xmm0, %xmm2
	movss	%xmm7, -176(%ebp)
	mulss	_fsinglobalang, %xmm0
	fstl	__ZL4ytex.lto_priv.0
	fld	%st(0)
	fmuls	-176(%ebp)
	movss	%xmm0, -280(%ebp)
	movss	-280(%ebp), %xmm7
	movss	_fviewingrange, %xmm0
	mulss	%xmm0, %xmm7
	fstl	__ZL4otex.lto_priv.0
	mulss	%xmm2, %xmm0
	movss	%xmm7, -176(%ebp)
	flds	-176(%ebp)
	flds	-236(%ebp)
	movss	%xmm0, -176(%ebp)
	fmul	%st, %st(1)
	fxch	%st(1)
	fstl	__ZL4xtex.lto_priv.0+8
	fxch	%st(1)
	fmuls	-176(%ebp)
	movss	%xmm2, -176(%ebp)
	flds	-244(%ebp)
	fmul	%st, %st(4)
	fxch	%st(4)
	fstl	__ZL4ytex.lto_priv.0+8
	fxch	%st(3)
	fmulp	%st, %st(4)
	fxch	%st(1)
	fsubrs	-176(%ebp)
	fmuls	-144(%ebp)
	fadd	%st(3), %st
	fstpl	__ZL4otex.lto_priv.0+8
	fld	%st(0)
	fchs
	fstpl	__ZL4xtex.lto_priv.0+16
	fxch	%st(1)
	fstpl	__ZL4ytex.lto_priv.0+16
	fxch	%st(1)
	fchs
	fxch	%st(1)
	fadds	-280(%ebp)
	fmuls	-144(%ebp)
	fsubrp	%st, %st(1)
	fchs
	fstpl	__ZL4otex.lto_priv.0+16
	jbe	L1540
	comiss	-252(%ebp), %xmm6
	ja	L1617
	movss	-252(%ebp), %xmm0
	movaps	%xmm1, %xmm2
	movss	-248(%ebp), %xmm7
	subss	%xmm5, %xmm2
	subss	%xmm5, %xmm0
	subss	%xmm6, %xmm0
	subss	%xmm1, %xmm6
	addss	%xmm1, %xmm0
	divss	%xmm0, %xmm2
	movss	-268(%ebp), %xmm0
	subss	%xmm7, %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm7, %xmm0
	movss	%xmm0, -144(%ebp)
	movaps	%xmm6, %xmm0
	mulss	%xmm2, %xmm0
	movaps	%xmm0, %xmm7
	addss	%xmm1, %xmm7
L1138:
	movss	%xmm4, -304(%ebp)
	movss	-168(%ebp), %xmm4
	movss	%xmm3, -300(%ebp)
	movss	%xmm5, -280(%ebp)
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm4, 16(%esp)
	movss	%xmm4, 8(%esp)
	movss	%xmm7, (%esp)
	movss	-144(%ebp), %xmm2
	movss	-248(%ebp), %xmm0
	movss	%xmm7, -176(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-168(%ebp), %xmm4
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm4, 16(%esp)
	movss	%xmm4, 8(%esp)
	movss	-252(%ebp), %xmm4
	movss	%xmm4, (%esp)
	movss	-268(%ebp), %xmm2
	movss	-176(%ebp), %xmm1
	movss	-144(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-280(%ebp), %xmm5
	movss	-300(%ebp), %xmm3
	movss	-304(%ebp), %xmm4
L1135:
	movaps	%xmm3, %xmm2
	movss	-276(%ebp), %xmm7
	movss	-260(%ebp), %xmm0
	movl	%ebx, _drawingskybox
	subss	%xmm4, %xmm2
	movss	-292(%ebp), %xmm4
	movss	-256(%ebp), %xmm1
	movl	$0, __ZL4ytex.lto_priv.0
	movl	$0, __ZL4ytex.lto_priv.0+4
	mulss	%xmm7, %xmm0
	movl	$0, __ZL4ytex.lto_priv.0+8
	mulss	%xmm4, %xmm1
	movss	%xmm2, -144(%ebp)
	movss	-276(%ebp), %xmm2
	flds	-144(%ebp)
	fldl	_gxyaspect
	subss	%xmm4, %xmm2
	movss	%xmm2, -144(%ebp)
	fmuls	-144(%ebp)
	movaps	%xmm0, %xmm2
	flds	LC52
	movss	%xmm3, -144(%ebp)
	subss	%xmm1, %xmm2
	fmul	%st, %st(1)
	fxch	%st(1)
	fdiv	%st(2), %st
	fstl	__ZL4xtex.lto_priv.0
	fmuls	-144(%ebp)
	fldl	_gxyaspect
	fmuls	-276(%ebp)
	movss	%xmm2, -144(%ebp)
	fmulp	%st, %st(2)
	fsubr	%st, %st(1)
	fxch	%st(1)
	fstl	__ZL4otex.lto_priv.0
	fldl	_gxyaspect
	fmuls	-144(%ebp)
	flds	LC6
	movss	%xmm0, -144(%ebp)
	fmul	%st, %st(1)
	fxch	%st(1)
	fdivp	%st, %st(4)
	fxch	%st(3)
	fstl	__ZL4xtex.lto_priv.0+8
	fldl	_gxyaspect
	fmuls	-144(%ebp)
	movss	%xmm3, -144(%ebp)
	fmulp	%st, %st(4)
	fmuls	-144(%ebp)
	fsubrp	%st, %st(3)
	fxch	%st(2)
	fstpl	__ZL4otex.lto_priv.0+8
	movl	$0, __ZL4ytex.lto_priv.0+12
	faddp	%st, %st(1)
	movss	-296(%ebp), %xmm6
	movss	LC7, %xmm0
	fmuls	-152(%ebp)
	mulss	%xmm6, %xmm7
	movss	-284(%ebp), %xmm4
	movss	__ZL6ghoriz.lto_priv.0, %xmm2
	addss	%xmm2, %xmm4
	addss	-288(%ebp), %xmm2
	mulss	%xmm7, %xmm0
	movaps	%xmm4, %xmm1
	subss	%xmm2, %xmm1
	movss	%xmm0, -144(%ebp)
	fdivs	-144(%ebp)
	fstps	-144(%ebp)
	movss	-144(%ebp), %xmm0
	mulss	%xmm0, %xmm1
	mulss	%xmm6, %xmm0
	movss	-272(%ebp), %xmm6
	comiss	%xmm5, %xmm6
	movss	%xmm1, -144(%ebp)
	flds	-144(%ebp)
	movss	%xmm0, -144(%ebp)
	fld	%st(0)
	fstpl	__ZL4xtex.lto_priv.0+16
	flds	-144(%ebp)
	movss	%xmm3, -144(%ebp)
	fstl	__ZL4ytex.lto_priv.0+16
	fxch	%st(1)
	fchs
	fmuls	-144(%ebp)
	fxch	%st(1)
	movss	%xmm4, -144(%ebp)
	fmuls	-144(%ebp)
	fsubrp	%st, %st(1)
	fstpl	__ZL4otex.lto_priv.0+16
	jbe	L1543
	movss	-264(%ebp), %xmm4
	comiss	-252(%ebp), %xmm4
	ja	L1618
	movss	-252(%ebp), %xmm0
	movss	-264(%ebp), %xmm6
	movss	-272(%ebp), %xmm1
	movss	-248(%ebp), %xmm2
	subss	%xmm5, %xmm0
	subss	%xmm5, %xmm1
	movss	-272(%ebp), %xmm5
	subss	%xmm6, %xmm0
	subss	%xmm5, %xmm6
	addss	%xmm5, %xmm0
	movaps	%xmm6, %xmm3
	divss	%xmm0, %xmm1
	movss	-268(%ebp), %xmm0
	subss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	mulss	%xmm1, %xmm3
	movaps	%xmm0, %xmm4
	addss	%xmm2, %xmm4
	addss	%xmm5, %xmm3
L1146:
	movss	-168(%ebp), %xmm5
	movss	%xmm3, (%esp)
	movaps	%xmm4, %xmm2
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm5, 16(%esp)
	movss	%xmm5, 8(%esp)
	movss	-272(%ebp), %xmm1
	movss	-248(%ebp), %xmm0
	movss	%xmm4, -144(%ebp)
	movss	%xmm3, -176(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-168(%ebp), %xmm5
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm5, 16(%esp)
	movss	%xmm5, 8(%esp)
	movss	-252(%ebp), %xmm3
	movss	%xmm3, (%esp)
	movss	-268(%ebp), %xmm2
	movss	-176(%ebp), %xmm1
	movss	-144(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	_ghalfx, %xmm4
	movss	%xmm4, -144(%ebp)
	.p2align 4
	.p2align 3
L1122:
	addl	$1, %ebx
	cmpl	$5, %ebx
	je	L1619
	movl	%ebx, %eax
	andl	$3, %eax
	movss	__ZZL17polymost_drawallsiE6skywal(,%eax,8), %xmm2
	movss	__ZZL17polymost_drawallsiE6skywal+4(,%eax,8), %xmm5
	jmp	L1093
L1607:
	movswl	_globalpicnum, %eax
	movl	_globalpal, %edx
	call	_hicfindskybox.constprop.0
	testl	%eax, %eax
	je	L1181
	movss	LC50, %xmm6
	movl	$1, %ebx
	movss	_ghalfx, %xmm5
	movss	LC0, %xmm4
	movss	LC38, %xmm7
	movups	%xmm4, -232(%ebp)
	movss	LC35, %xmm4
	movss	%xmm6, -240(%ebp)
	movss	LC51, %xmm6
	movss	LC41, %xmm1
	movl	$0, __ZL10pow2xsplit.lto_priv.0
	movl	$1, __ZL12skyclamphack.lto_priv.0
	movss	%xmm5, -144(%ebp)
	movss	LC40, %xmm5
	movss	%xmm4, -236(%ebp)
	movss	%xmm6, -244(%ebp)
	movss	%xmm7, -168(%ebp)
L1182:
	movss	_gcosang, %xmm0
	movss	_gsinang, %xmm4
	movss	__ZZL17polymost_drawallsiE6skywal_0-8(,%ebx,8), %xmm6
	movss	__ZZL17polymost_drawallsiE6skywal_0-4(,%ebx,8), %xmm2
	movaps	%xmm0, %xmm7
	movaps	%xmm4, %xmm3
	mulss	%xmm6, %xmm3
	mulss	%xmm2, %xmm7
	mulss	_gcosang2, %xmm6
	mulss	%xmm5, %xmm0
	mulss	%xmm1, %xmm4
	mulss	_gcosang2, %xmm1
	subss	%xmm3, %xmm7
	movss	_gsinang2, %xmm3
	mulss	%xmm3, %xmm2
	mulss	%xmm5, %xmm3
	subss	%xmm4, %xmm0
	movss	LC43, %xmm5
	addss	%xmm6, %xmm2
	addss	%xmm3, %xmm1
	comiss	%xmm2, %xmm5
	jbe	L1548
	comiss	%xmm1, %xmm5
	ja	L1211
	movaps	%xmm5, %xmm4
	movaps	%xmm1, %xmm3
	movss	LC39, %xmm5
	subss	%xmm2, %xmm3
	subss	%xmm2, %xmm4
	movaps	%xmm0, %xmm2
	subss	%xmm7, %xmm2
	divss	%xmm3, %xmm4
	movss	-84(%ebp), %xmm3
	movss	%xmm3, -256(%ebp)
	mulss	%xmm4, %xmm2
	movss	%xmm4, -264(%ebp)
	addss	%xmm2, %xmm7
	movaps	%xmm3, %xmm2
	divss	%xmm1, %xmm2
L1207:
	movss	-144(%ebp), %xmm4
	mulss	%xmm4, %xmm7
	mulss	%xmm4, %xmm0
	movaps	%xmm7, %xmm3
	movaps	%xmm4, %xmm7
	mulss	%xmm5, %xmm3
	addss	%xmm4, %xmm3
	movaps	%xmm0, %xmm4
	mulss	%xmm2, %xmm4
	addss	%xmm7, %xmm4
	comiss	%xmm4, %xmm3
	jnb	L1211
	comiss	-52(%ebp), %xmm3
	jnb	L1211
	movss	-48(%ebp), %xmm6
	comiss	%xmm4, %xmm6
	jnb	L1211
	movss	_gyxscale, %xmm1
	movss	LC49, %xmm7
	movss	__ZL6ghoriz.lto_priv.0, %xmm0
	mulss	%xmm1, %xmm5
	mulss	%xmm2, %xmm1
	mulss	%xmm5, %xmm7
	movss	%xmm5, -272(%ebp)
	movaps	%xmm0, %xmm5
	movss	%xmm1, -292(%ebp)
	subss	%xmm7, %xmm5
	movaps	%xmm7, %xmm2
	movss	%xmm7, -280(%ebp)
	movss	LC49, %xmm7
	addss	%xmm0, %xmm2
	mulss	%xmm1, %xmm7
	movss	%xmm5, -260(%ebp)
	movaps	%xmm7, %xmm6
	movss	%xmm7, -284(%ebp)
	addss	%xmm0, %xmm7
	movss	%xmm7, -176(%ebp)
	movaps	%xmm0, %xmm7
	subss	%xmm6, %xmm7
	movss	-48(%ebp), %xmm6
	comiss	%xmm3, %xmm6
	movss	%xmm7, -252(%ebp)
	jbe	L1549
	movaps	%xmm4, %xmm1
	movss	%xmm6, -248(%ebp)
	subss	%xmm3, %xmm1
	movaps	%xmm1, %xmm5
	movss	%xmm1, -276(%ebp)
	movaps	%xmm6, %xmm1
	subss	%xmm3, %xmm1
	divss	%xmm5, %xmm1
	movss	-176(%ebp), %xmm5
	subss	%xmm2, %xmm5
	mulss	%xmm1, %xmm5
	addss	%xmm5, %xmm2
	movaps	%xmm7, %xmm5
	movss	-260(%ebp), %xmm7
	subss	%xmm7, %xmm5
	mulss	%xmm1, %xmm5
	addss	%xmm7, %xmm5
	movss	%xmm5, -260(%ebp)
	movss	-92(%ebp), %xmm5
L1214:
	movss	-52(%ebp), %xmm7
	comiss	%xmm7, %xmm4
	jbe	L1551
	movaps	%xmm7, %xmm1
	movaps	%xmm4, %xmm6
	subss	-248(%ebp), %xmm6
	movss	%xmm7, -268(%ebp)
	subss	%xmm4, %xmm1
	divss	%xmm6, %xmm1
	movss	-176(%ebp), %xmm6
	subss	%xmm2, %xmm6
	mulss	%xmm1, %xmm6
	addss	-176(%ebp), %xmm6
	movss	%xmm6, -176(%ebp)
	movss	-252(%ebp), %xmm6
	subss	-260(%ebp), %xmm6
	mulss	%xmm1, %xmm6
	addss	-252(%ebp), %xmm6
	movss	%xmm6, -252(%ebp)
	movss	-164(%ebp), %xmm6
L1218:
	movss	-240(%ebp), %xmm7
	xorps	-232(%ebp), %xmm0
	comiss	%xmm2, %xmm5
	movl	$5, _drawingskybox
	movss	_fcosglobalang, %xmm1
	flds	LC54
	movl	$0, __ZL4xtex.lto_priv.0
	fmull	_gxyaspect
	movss	%xmm0, -296(%ebp)
	movss	_fviewingrange, %xmm0
	movl	$0, __ZL4xtex.lto_priv.0+4
	mulss	%xmm7, %xmm1
	mulss	_fsinglobalang, %xmm7
	fstl	__ZL4ytex.lto_priv.0
	fld	%st(0)
	fmuls	-296(%ebp)
	movss	%xmm7, -288(%ebp)
	mulss	%xmm0, %xmm7
	mulss	%xmm1, %xmm0
	fstl	__ZL4otex.lto_priv.0
	movss	%xmm7, -296(%ebp)
	flds	-296(%ebp)
	flds	-236(%ebp)
	movss	%xmm0, -296(%ebp)
	fmul	%st, %st(1)
	fxch	%st(1)
	fstl	__ZL4xtex.lto_priv.0+8
	fxch	%st(1)
	fmuls	-296(%ebp)
	movss	%xmm1, -296(%ebp)
	fstl	__ZL4xtex.lto_priv.0+16
	flds	-244(%ebp)
	fmul	%st, %st(4)
	fxch	%st(4)
	fstl	__ZL4ytex.lto_priv.0+8
	fstpl	__ZL4ytex.lto_priv.0+16
	fxch	%st(2)
	fmulp	%st, %st(3)
	fsubrs	-296(%ebp)
	fmuls	-144(%ebp)
	fadd	%st(2), %st
	fstpl	__ZL4otex.lto_priv.0+8
	fadds	-288(%ebp)
	fmuls	-144(%ebp)
	fsubrp	%st, %st(1)
	fstpl	__ZL4otex.lto_priv.0+16
	jbe	L1553
	comiss	-176(%ebp), %xmm6
	ja	L1620
	movaps	%xmm6, %xmm0
	movaps	%xmm2, %xmm1
	movss	-248(%ebp), %xmm7
	subss	%xmm5, %xmm0
	subss	-176(%ebp), %xmm0
	subss	%xmm5, %xmm1
	addss	%xmm2, %xmm0
	divss	%xmm0, %xmm1
	movss	-268(%ebp), %xmm0
	subss	%xmm7, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm7, %xmm0
	movss	-176(%ebp), %xmm7
	subss	%xmm2, %xmm7
	movss	%xmm0, -144(%ebp)
	mulss	%xmm7, %xmm1
	addss	%xmm2, %xmm1
L1227:
	movss	%xmm4, -304(%ebp)
	movss	-168(%ebp), %xmm4
	movss	%xmm3, -300(%ebp)
	movss	%xmm5, -296(%ebp)
	movss	%xmm6, -288(%ebp)
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm4, 16(%esp)
	movss	%xmm4, 8(%esp)
	movss	%xmm2, (%esp)
	movss	-248(%ebp), %xmm2
	movss	-144(%ebp), %xmm0
	movss	%xmm1, -176(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-168(%ebp), %xmm4
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm4, 16(%esp)
	movss	%xmm4, 8(%esp)
	movss	-176(%ebp), %xmm1
	movss	%xmm1, (%esp)
	movss	-288(%ebp), %xmm6
	movss	-144(%ebp), %xmm2
	movss	-268(%ebp), %xmm0
	movaps	%xmm6, %xmm1
	movss	%xmm6, -144(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-144(%ebp), %xmm6
	movss	-296(%ebp), %xmm5
	movss	-300(%ebp), %xmm3
	movss	-304(%ebp), %xmm4
L1224:
	movaps	%xmm3, %xmm2
	movss	-272(%ebp), %xmm7
	movss	-264(%ebp), %xmm0
	movl	%ebx, _drawingskybox
	subss	%xmm4, %xmm2
	movss	-272(%ebp), %xmm4
	movss	-256(%ebp), %xmm1
	movl	$0, __ZL4ytex.lto_priv.0
	movl	$0, __ZL4ytex.lto_priv.0+4
	mulss	%xmm7, %xmm0
	movl	$0, __ZL4ytex.lto_priv.0+8
	movss	%xmm2, -144(%ebp)
	movss	-292(%ebp), %xmm2
	flds	-144(%ebp)
	fldl	_gxyaspect
	subss	%xmm2, %xmm4
	mulss	%xmm2, %xmm1
	movss	%xmm4, -144(%ebp)
	fmuls	-144(%ebp)
	movaps	%xmm0, %xmm4
	flds	LC52
	movss	%xmm3, -144(%ebp)
	subss	%xmm1, %xmm4
	fmul	%st, %st(1)
	fxch	%st(1)
	fdiv	%st(2), %st
	fstl	__ZL4xtex.lto_priv.0
	fmuls	-144(%ebp)
	fldl	_gxyaspect
	fmuls	-272(%ebp)
	movss	%xmm4, -144(%ebp)
	fmulp	%st, %st(2)
	fsubr	%st, %st(1)
	fxch	%st(1)
	fstl	__ZL4otex.lto_priv.0
	fldl	_gxyaspect
	fmuls	-144(%ebp)
	flds	LC6
	movss	%xmm0, -144(%ebp)
	fmul	%st, %st(1)
	fxch	%st(1)
	fdivp	%st, %st(4)
	fxch	%st(3)
	fstl	__ZL4xtex.lto_priv.0+8
	fldl	_gxyaspect
	fmuls	-144(%ebp)
	movss	%xmm3, -144(%ebp)
	fmulp	%st, %st(4)
	fmuls	-144(%ebp)
	fsubrp	%st, %st(3)
	fxch	%st(2)
	fstpl	__ZL4otex.lto_priv.0+8
	movl	$0, __ZL4ytex.lto_priv.0+12
	faddp	%st, %st(1)
	mulss	-276(%ebp), %xmm7
	movss	LC7, %xmm0
	fmuls	-152(%ebp)
	movss	__ZL6ghoriz.lto_priv.0, %xmm2
	movss	-280(%ebp), %xmm4
	comiss	-260(%ebp), %xmm5
	addss	%xmm2, %xmm4
	addss	-284(%ebp), %xmm2
	mulss	%xmm7, %xmm0
	movaps	%xmm4, %xmm7
	subss	%xmm2, %xmm7
	movss	%xmm0, -144(%ebp)
	fdivs	-144(%ebp)
	movaps	%xmm7, %xmm2
	fstps	-144(%ebp)
	movss	-144(%ebp), %xmm0
	mulss	%xmm0, %xmm2
	mulss	-276(%ebp), %xmm0
	movss	%xmm2, -144(%ebp)
	flds	-144(%ebp)
	movss	%xmm0, -144(%ebp)
	fld	%st(0)
	fstpl	__ZL4xtex.lto_priv.0+16
	flds	-144(%ebp)
	movss	%xmm3, -144(%ebp)
	fstl	__ZL4ytex.lto_priv.0+16
	fxch	%st(1)
	fchs
	fmuls	-144(%ebp)
	fxch	%st(1)
	movss	%xmm4, -144(%ebp)
	fmuls	-144(%ebp)
	fsubrp	%st, %st(1)
	fstpl	__ZL4otex.lto_priv.0+16
	jbe	L1556
	comiss	-252(%ebp), %xmm6
	ja	L1621
	movss	-260(%ebp), %xmm4
	movaps	%xmm6, %xmm0
	movss	-248(%ebp), %xmm3
	subss	%xmm5, %xmm0
	subss	%xmm5, %xmm4
	movss	-252(%ebp), %xmm5
	subss	%xmm5, %xmm0
	movaps	%xmm4, %xmm2
	movss	-260(%ebp), %xmm4
	addss	%xmm4, %xmm0
	subss	%xmm4, %xmm5
	divss	%xmm0, %xmm2
	movss	-268(%ebp), %xmm0
	movaps	%xmm5, %xmm1
	subss	%xmm3, %xmm0
	mulss	%xmm2, %xmm1
	mulss	%xmm2, %xmm0
	addss	%xmm4, %xmm1
	addss	%xmm3, %xmm0
L1235:
	movss	-168(%ebp), %xmm3
	movss	%xmm6, -252(%ebp)
	movl	$0x00000000, 12(%esp)
	movss	%xmm3, 16(%esp)
	movss	%xmm3, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movss	-260(%ebp), %xmm6
	movss	%xmm6, (%esp)
	movss	-248(%ebp), %xmm2
	movss	%xmm1, -176(%ebp)
	movss	%xmm0, -144(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-168(%ebp), %xmm3
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm3, 16(%esp)
	movss	%xmm3, 8(%esp)
	movss	-176(%ebp), %xmm1
	movss	%xmm1, (%esp)
	movss	-144(%ebp), %xmm2
L1571:
	movss	-252(%ebp), %xmm1
	movss	-268(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	_ghalfx, %xmm3
	movss	%xmm3, -144(%ebp)
	.p2align 4
	.p2align 3
L1211:
	addl	$1, %ebx
	cmpl	$5, %ebx
	je	L1622
	movl	%ebx, %eax
	andl	$3, %eax
	movss	__ZZL17polymost_drawallsiE6skywal_0(,%eax,8), %xmm1
	movss	__ZZL17polymost_drawallsiE6skywal_0+4(,%eax,8), %xmm5
	jmp	L1182
L1259:
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	jmp	L1260
L1279:
	movl	-40(%ebp), %edi
	movl	4(%edi), %edi
	jmp	L1280
L1616:
	movl	-44(%ebp), %esi
	movzbl	21(%esi), %ebx
	testb	$2, _hictinting+1(,%ebx,8)
	jne	L1266
	movsbl	20(%esi), %eax
	jmp	L1266
L1615:
	movzbl	29(%eax), %ecx
	jmp	L1265
L1598:
	movzbl	21(%ebx), %esi
	testb	$2, _hictinting+1(,%esi,8)
	jne	L1286
	movsbl	20(%ebx), %eax
	jmp	L1286
L1597:
	movzbl	29(%eax), %ecx
	jmp	L1285
L1094:
	testl	%eax, %eax
	jne	L1095
	movss	-260(%ebp), %xmm0
	movss	LC13, %xmm1
L1097:
	movswl	_globalpicnum, %edx
	movl	-144(%ebp), %eax
	xorps	%xmm4, %xmm4
	xorps	%xmm3, %xmm3
	movss	LC12, %xmm7
	cvtsi2ssl	%edi, %xmm3
	mulss	_fxdimen, %xmm7
	movzbl	_picsiz(%edx), %esi
	addl	$9, %eax
	movl	%edx, -264(%ebp)
	movl	%eax, -248(%ebp)
	movl	$1, %eax
	movl	%esi, %ecx
	mulss	%xmm2, %xmm3
	andl	$15, %ecx
	sall	%cl, %eax
	movzbl	-168(%ebp), %ecx
	movss	%xmm7, -256(%ebp)
	movl	%eax, -240(%ebp)
	sall	%cl, %eax
	cvtsi2ssl	%eax, %xmm4
	movswl	_tilesiz+2(,%edx,4), %eax
	movl	-244(%ebp), %edx
	mulss	%xmm7, %xmm3
	addl	-252(%ebp), %edx
	movl	%eax, %ecx
	sarw	%cx
	movss	%xmm4, -232(%ebp)
	xorps	%xmm4, %xmm4
	movswl	%cx, %ecx
	cvtsi2ssl	-236(%ebp), %xmm4
	addl	%edx, %ecx
	movl	$2, %edx
	movaps	%xmm3, %xmm6
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%ecx, %xmm3
	movl	%esi, %ecx
	movl	$1, %esi
	shrb	$4, %cl
	mulss	%xmm4, %xmm1
	movss	-84(%ebp), %xmm4
	sall	%cl, %esi
	sall	%cl, %edx
	cmpl	%esi, %eax
	mulss	%xmm7, %xmm3
	cmovne	%edx, %esi
	movl	-236(%ebp), %edx
	imull	%eax, %edx
	divss	%xmm1, %xmm4
	mulss	%xmm4, %xmm6
	movaps	%xmm6, %xmm1
	movss	%xmm6, -272(%ebp)
	mulss	%xmm0, %xmm1
	subss	%xmm1, %xmm3
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edx, %xmm1
	mulss	LC11, %xmm1
	comiss	LC16, %xmm1
	jbe	L1532
	xorps	%xmm4, %xmm4
	flds	LC48
	fmull	_gxyaspect
	leal	-1(%eax), %edx
	cvtsi2ssl	%eax, %xmm4
	movl	%edx, -152(%ebp)
	xorps	LC0, %xmm0
	movl	$0, __ZL4xtex.lto_priv.0+16
	movl	$0, __ZL4xtex.lto_priv.0+20
	fstl	__ZL4ytex.lto_priv.0
	fildl	-152(%ebp)
	mulss	%xmm7, %xmm4
	movss	%xmm0, -152(%ebp)
	movl	$0, __ZL4xtex.lto_priv.0+8
	movl	$0, __ZL4xtex.lto_priv.0+12
	fld	%st(1)
	movl	$0, __ZL4xtex.lto_priv.0
	fmul	%st(1), %st
	movl	$0, __ZL4xtex.lto_priv.0+4
	movl	$0, __ZL4ytex.lto_priv.0+8
	subss	%xmm3, %xmm4
	movl	$0, __ZL4ytex.lto_priv.0+12
	fstpl	__ZL4ytex.lto_priv.0+16
	fxch	%st(1)
	fmuls	-152(%ebp)
	movl	$0, __ZL4otex.lto_priv.0+8
	divss	%xmm6, %xmm4
	movl	$0, __ZL4otex.lto_priv.0+12
	fstl	__ZL4otex.lto_priv.0
	fmulp	%st, %st(1)
	fstpl	__ZL4otex.lto_priv.0+16
	comiss	-88(%ebp), %xmm4
	jbe	L1533
	comiss	-160(%ebp), %xmm4
	ja	L1623
	movss	-48(%ebp), %xmm0
	movss	-88(%ebp), %xmm7
	movaps	%xmm4, %xmm6
	movaps	%xmm4, %xmm1
	movss	%xmm3, -252(%ebp)
	movss	-52(%ebp), %xmm3
	movss	-160(%ebp), %xmm5
	subss	%xmm7, %xmm6
	subss	%xmm0, %xmm3
	subss	%xmm7, %xmm5
	movss	LC38, %xmm7
	mulss	%xmm3, %xmm6
	movss	%xmm5, -244(%ebp)
	movss	%xmm3, -268(%ebp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movl	$0x00000000, 12(%esp)
	divss	%xmm5, %xmm6
	movss	%xmm7, -236(%ebp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm4, (%esp)
	movss	%xmm4, -152(%ebp)
	addss	%xmm0, %xmm6
	movaps	%xmm6, %xmm2
	movss	%xmm6, -240(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-236(%ebp), %xmm7
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	-160(%ebp), %xmm5
	movss	%xmm5, (%esp)
	movss	-52(%ebp), %xmm2
	movss	-152(%ebp), %xmm1
	movss	-240(%ebp), %xmm0
L1566:
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movswl	_globalpicnum, %eax
	movl	_xdimscale, %edi
	movss	-236(%ebp), %xmm7
	movss	-244(%ebp), %xmm5
	movl	%eax, -264(%ebp)
	movzbl	_picsiz(%eax), %ecx
	movl	$1, %eax
	movss	_fviewingrange, %xmm2
	movss	-252(%ebp), %xmm3
	andl	$15, %ecx
	sall	%cl, %eax
	movl	%eax, -240(%ebp)
L1105:
	movl	_yxaspect, %eax
	imull	_viewingrange
	movl	$0, __ZL4xtex.lto_priv.0+16
	flds	-256(%ebp)
	movl	$0, __ZL4xtex.lto_priv.0+20
	movl	$0, __ZL4xtex.lto_priv.0
	movl	%eax, -152(%ebp)
	movl	%edi, %eax
	movl	-152(%ebp), %ebx
	movl	%edx, -148(%ebp)
	cltd
	movl	-148(%ebp), %ecx
	imull	%ebx, %edx
	movl	%ebx, %eax
	fstl	__ZL4otex.lto_priv.0
	movl	$0, __ZL4xtex.lto_priv.0+4
	imull	%edi, %ecx
	movl	$0, __ZL4ytex.lto_priv.0+8
	movl	$0, __ZL4ytex.lto_priv.0+12
	movl	$0, __ZL4ytex.lto_priv.0
	addl	%edx, %ecx
	mull	%edi
	movl	$0, __ZL4ytex.lto_priv.0+4
	addl	%ecx, %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	fildq	-152(%ebp)
	jns	L1107
	fadds	LC14
L1107:
	fstpl	-152(%ebp)
	fldl	-152(%ebp)
	fmuls	-232(%ebp)
	xorps	%xmm4, %xmm4
	movl	-264(%ebp), %eax
	movzwl	_tilesiz(,%eax,4), %edx
	movl	_r_parallaxskypanning, %eax
	fmul	%st(1), %st
	fmull	LC15
	fstl	__ZL4xtex.lto_priv.0+8
	flds	-272(%ebp)
	fstpl	__ZL4ytex.lto_priv.0+16
	testl	%eax, %eax
	je	L1108
	movl	-40(%ebp), %ebx
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%esi, %xmm1
	movzbl	31(%ebx), %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	-256(%ebp), %xmm0
	movzbl	30(%ebx), %eax
	cvtsi2ssl	%eax, %xmm4
	mulss	%xmm1, %xmm0
	mulss	LC9, %xmm0
	addss	%xmm0, %xmm3
L1108:
	movswl	%dx, %eax
	movl	$11, %edi
	movss	_ghalfx, %xmm1
	movss	LC16, %xmm0
	movl	%eax, -244(%ebp)
	subl	-168(%ebp), %edi
	divss	-268(%ebp), %xmm5
	mulss	%xmm1, %xmm0
	movl	%edi, %ecx
	movss	%xmm3, -152(%ebp)
	flds	-152(%ebp)
	movss	-84(%ebp), %xmm6
	movss	%xmm5, -236(%ebp)
	fstpl	__ZL4otex.lto_priv.0+16
	divss	%xmm0, %xmm2
	movss	-48(%ebp), %xmm0
	subss	%xmm1, %xmm0
	mulss	%xmm2, %xmm0
	addss	-68(%ebp), %xmm0
	divss	%xmm2, %xmm6
	cvttss2sil	%xmm0, %eax
	sarl	%cl, %eax
	movl	%eax, %esi
	movl	-264(%ebp), %eax
	movl	%eax, %edx
	testl	%eax, %eax
	js	L1624
	movss	LC17, %xmm5
	movss	-48(%ebp), %xmm0
	movl	%edi, %ebx
	movss	%xmm6, -168(%ebp)
	movl	%esi, %edi
	movss	%xmm4, -252(%ebp)
	movl	%eax, %esi
	movss	%xmm5, -256(%ebp)
	.p2align 4
	.p2align 3
L1109:
	movl	-176(%ebp), %edx
	movl	-248(%ebp), %eax
	movl	%ebx, %ecx
	xorps	%xmm2, %xmm2
	andl	%edi, %edx
	movsbw	(%eax,%edx), %dx
	addl	%esi, %edx
	movw	%dx, _globalpicnum
	movl	%edi, %edx
	sall	%cl, %edx
	movl	-240(%ebp), %ecx
	cvtsi2ssl	%edx, %xmm2
	cmpl	%ecx, -244(%ebp)
	je	L1112
	fxch	%st(1)
	subss	-68(%ebp), %xmm2
	mulss	-168(%ebp), %xmm2
	andl	$2047, %edx
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%edx, %xmm3
	mulss	-232(%ebp), %xmm3
	mulss	-256(%ebp), %xmm3
	addss	-252(%ebp), %xmm3
	addss	%xmm1, %xmm2
	movss	%xmm3, -144(%ebp)
	fmuls	-144(%ebp)
	fxch	%st(1)
	movss	%xmm2, -144(%ebp)
	fmuls	-144(%ebp)
	fsubrp	%st, %st(1)
L1113:
	addl	$1, %edi
	movl	%ebx, %ecx
	xorps	%xmm2, %xmm2
	movss	-48(%ebp), %xmm4
	movl	%edi, %edx
	movss	-236(%ebp), %xmm5
	movss	-88(%ebp), %xmm6
	fstpl	__ZL4otex.lto_priv.0+8
	sall	%cl, %edx
	cvtsi2ssl	%edx, %xmm2
	subss	-68(%ebp), %xmm2
	mulss	-168(%ebp), %xmm2
	addss	%xmm1, %xmm2
	comiss	-52(%ebp), %xmm2
	movaps	%xmm0, %xmm1
	subss	%xmm4, %xmm1
	mulss	%xmm5, %xmm1
	addss	%xmm6, %xmm1
	jbe	L1625
	movaps	%xmm0, %xmm3
L1111:
	movl	$0, __ZL10pow2xsplit.lto_priv.0
	movaps	%xmm3, %xmm0
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	-236(%ebp), %xmm7
	mulss	-268(%ebp), %xmm7
	addss	-88(%ebp), %xmm7
	movss	%xmm7, (%esp)
	movss	-52(%ebp), %xmm2
	call	__ZL15polymost_domostffffffff.lto_priv.0
	jmp	L1096
L1183:
	testl	%esi, %esi
	jne	L1184
	movss	-264(%ebp), %xmm0
	movss	LC13, %xmm1
L1186:
	xorps	%xmm4, %xmm4
	leal	9(%ebx), %eax
	xorps	%xmm3, %xmm3
	movl	$1, %edx
	cvtsi2ssl	%edi, %xmm3
	movl	%eax, -252(%ebp)
	xorps	%xmm7, %xmm7
	movswl	_globalpicnum, %eax
	cvtsi2ssl	-176(%ebp), %xmm4
	movss	LC12, %xmm6
	mulss	_fxdimen, %xmm6
	movl	%eax, -168(%ebp)
	movzbl	_picsiz(%eax), %eax
	mulss	%xmm2, %xmm3
	movl	%eax, %ecx
	movb	%al, -256(%ebp)
	movl	-240(%ebp), %eax
	mulss	%xmm4, %xmm1
	movss	-84(%ebp), %xmm4
	andl	$15, %ecx
	addl	-248(%ebp), %eax
	sall	%cl, %edx
	movzbl	-144(%ebp), %ecx
	movl	%edx, -244(%ebp)
	sall	%cl, %edx
	movzbl	-256(%ebp), %ecx
	cvtsi2ssl	%edx, %xmm7
	mulss	%xmm6, %xmm3
	movl	-168(%ebp), %edx
	divss	%xmm1, %xmm4
	shrb	$4, %cl
	movzwl	_tilesiz+2(,%edx,4), %edx
	movw	%dx, -260(%ebp)
	sarw	%dx
	movswl	%dx, %edx
	movss	%xmm7, -236(%ebp)
	addl	%eax, %edx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -240(%ebp)
	movswl	-260(%ebp), %eax
	mulss	%xmm4, %xmm3
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%edx, %xmm4
	movl	$2, %edx
	sall	%cl, %edx
	movl	-240(%ebp), %ecx
	cmpl	%ecx, %eax
	mulss	%xmm6, %xmm4
	movaps	%xmm3, %xmm1
	cmove	%ecx, %edx
	imull	-176(%ebp), %eax
	mulss	%xmm0, %xmm1
	movl	%edx, -240(%ebp)
	subss	%xmm1, %xmm4
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	mulss	LC11, %xmm1
	comiss	LC16, %xmm1
	jbe	L1188
	testl	%esi, %esi
	je	L1626
L1188:
	movss	-52(%ebp), %xmm7
	subss	-48(%ebp), %xmm7
	movl	$0, __ZL12skyclamphack.lto_priv.0
	movss	-164(%ebp), %xmm5
	subss	-92(%ebp), %xmm5
	movss	%xmm7, -268(%ebp)
	movss	LC38, %xmm7
L1193:
	movl	_yxaspect, %eax
	imull	_viewingrange
	movss	%xmm6, -176(%ebp)
	flds	-176(%ebp)
	movl	$0, __ZL4xtex.lto_priv.0+16
	movl	$0, __ZL4xtex.lto_priv.0+20
	movl	%eax, -176(%ebp)
	movl	%edi, %eax
	movl	-176(%ebp), %esi
	movl	%edx, -172(%ebp)
	cltd
	movl	-172(%ebp), %ecx
	imull	%esi, %edx
	movl	%esi, %eax
	fstl	__ZL4otex.lto_priv.0
	movl	$0, __ZL4xtex.lto_priv.0
	imull	%edi, %ecx
	movl	$0, __ZL4xtex.lto_priv.0+4
	movl	$0, __ZL4ytex.lto_priv.0+8
	movl	$0, __ZL4ytex.lto_priv.0+12
	addl	%edx, %ecx
	mull	%edi
	movl	$0, __ZL4ytex.lto_priv.0
	movl	$0, __ZL4ytex.lto_priv.0+4
	addl	%ecx, %edx
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	fildq	-176(%ebp)
	jns	L1195
	fadds	LC14
L1195:
	fstpl	-176(%ebp)
	fldl	-176(%ebp)
	fmuls	-236(%ebp)
	movl	-168(%ebp), %eax
	movss	%xmm3, -176(%ebp)
	movzwl	_tilesiz(,%eax,4), %edx
	movl	_r_parallaxskypanning, %eax
	fmul	%st(1), %st
	fmull	LC15
	fstl	__ZL4xtex.lto_priv.0+8
	flds	-176(%ebp)
	fstpl	__ZL4ytex.lto_priv.0+16
	testl	%eax, %eax
	je	L1196
	movl	-40(%ebp), %edi
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	xorps	%xmm3, %xmm3
	cvtsi2ssl	-240(%ebp), %xmm1
	movzbl	23(%edi), %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm6, %xmm0
	mulss	%xmm1, %xmm0
	mulss	LC9, %xmm0
	addss	%xmm4, %xmm0
	movss	%xmm0, -176(%ebp)
	flds	-176(%ebp)
	fstpl	__ZL4otex.lto_priv.0+16
	movzbl	22(%edi), %eax
	cvtsi2ssl	%eax, %xmm3
L1197:
	movswl	%dx, %eax
	movl	$11, %edi
	movss	_ghalfx, %xmm1
	movss	LC16, %xmm0
	movl	%eax, -248(%ebp)
	subl	-144(%ebp), %edi
	divss	-268(%ebp), %xmm5
	mulss	%xmm1, %xmm0
	movl	%edi, %ecx
	movss	-84(%ebp), %xmm4
	movss	%xmm5, -240(%ebp)
	divss	%xmm0, %xmm2
	movss	-48(%ebp), %xmm0
	subss	%xmm1, %xmm0
	mulss	%xmm2, %xmm0
	addss	-68(%ebp), %xmm0
	divss	%xmm2, %xmm4
	cvttss2sil	%xmm0, %eax
	sarl	%cl, %eax
	movl	%eax, %esi
	movl	-168(%ebp), %eax
	movl	%eax, %edx
	testl	%eax, %eax
	js	L1627
	movss	LC17, %xmm5
	movss	-48(%ebp), %xmm2
	movl	%edi, %ebx
	movss	%xmm4, -176(%ebp)
	movl	%esi, %edi
	movss	%xmm3, -256(%ebp)
	movl	%eax, %esi
	movss	%xmm5, -260(%ebp)
	.p2align 4
	.p2align 3
L1198:
	movl	-232(%ebp), %edx
	movl	-252(%ebp), %eax
	movl	%ebx, %ecx
	xorps	%xmm0, %xmm0
	andl	%edi, %edx
	movsbw	(%eax,%edx), %dx
	addl	%esi, %edx
	movw	%dx, _globalpicnum
	movl	%edi, %edx
	sall	%cl, %edx
	movl	-244(%ebp), %ecx
	cvtsi2ssl	%edx, %xmm0
	cmpl	%ecx, -248(%ebp)
	je	L1201
	fxch	%st(1)
	subss	-68(%ebp), %xmm0
	mulss	-176(%ebp), %xmm0
	andl	$2047, %edx
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%edx, %xmm3
	mulss	-236(%ebp), %xmm3
	mulss	-260(%ebp), %xmm3
	addss	-256(%ebp), %xmm3
	addss	%xmm1, %xmm0
	movss	%xmm3, -144(%ebp)
	fmuls	-144(%ebp)
	fxch	%st(1)
	movss	%xmm0, -144(%ebp)
	fmuls	-144(%ebp)
	fsubrp	%st, %st(1)
L1202:
	addl	$1, %edi
	movss	-48(%ebp), %xmm4
	movl	%ebx, %ecx
	xorps	%xmm0, %xmm0
	movl	%edi, %edx
	movaps	%xmm2, %xmm6
	movss	-240(%ebp), %xmm3
	movss	-92(%ebp), %xmm5
	sall	%cl, %edx
	subss	%xmm4, %xmm6
	fstpl	__ZL4otex.lto_priv.0+8
	cvtsi2ssl	%edx, %xmm0
	subss	-68(%ebp), %xmm0
	mulss	-176(%ebp), %xmm0
	mulss	%xmm3, %xmm6
	addss	%xmm1, %xmm0
	comiss	-52(%ebp), %xmm0
	addss	%xmm5, %xmm6
	jbe	L1628
L1200:
	movss	-240(%ebp), %xmm1
	mulss	-268(%ebp), %xmm1
	movl	$0, __ZL10pow2xsplit.lto_priv.0
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	%xmm6, (%esp)
	addss	-92(%ebp), %xmm1
	movss	-52(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	jmp	L1185
L1593:
	movl	-44(%ebp), %eax
	movswl	10(%eax), %ebx
L1274:
	movl	-44(%ebp), %esi
	sall	$5, %ebx
	addl	_wall, %ebx
	movzbl	24(%ebx), %eax
	movzbl	24(%esi), %ecx
	subl	%ecx, %eax
	movl	%eax, -84(%ebp)
	fildl	-84(%ebp)
	fldl	__ZL4otex.lto_priv.0
	fmul	%st(1), %st
	faddl	__ZL4otex.lto_priv.0+8
	fstpl	__ZL4otex.lto_priv.0+8
	fldl	__ZL4xtex.lto_priv.0
	fmul	%st(1), %st
	faddl	__ZL4xtex.lto_priv.0+8
	fstpl	__ZL4xtex.lto_priv.0+8
	fmull	__ZL4ytex.lto_priv.0
	faddl	__ZL4ytex.lto_priv.0+8
	fstpl	__ZL4ytex.lto_priv.0+8
	jmp	L1273
L1595:
	movswl	_globalpicnum, %eax
	movzwl	_rottile(,%eax,4), %eax
	cmpw	$-1, %ax
	je	L1278
	movw	%ax, _globalpicnum
	jmp	L1278
L1613:
	movswl	_globalpicnum, %eax
	movzwl	_rottile(,%eax,4), %eax
	cmpw	$-1, %ax
	je	L1258
	movw	%ax, _globalpicnum
	jmp	L1258
L1170:
	movss	LC38, %xmm7
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	-92(%ebp), %xmm5
	movss	%xmm5, (%esp)
	movss	-48(%ebp), %xmm2
	movss	-52(%ebp), %xmm0
	movss	-164(%ebp), %xmm1
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movl	_g_nodraw, %eax
	jmp	L1167
	.p2align 4,,10
	.p2align 3
L1625:
	movl	$0, __ZL10pow2xsplit.lto_priv.0
	movaps	%xmm2, %xmm3
	subss	%xmm4, %xmm3
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movl	$0x00000000, 12(%esp)
	mulss	%xmm5, %xmm3
	movss	%xmm7, -152(%ebp)
	movl	$0x00000000, 4(%esp)
	addss	%xmm6, %xmm3
	movss	%xmm3, (%esp)
	movss	%xmm2, -144(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-144(%ebp), %xmm0
	fldl	__ZL4otex.lto_priv.0
	movss	_ghalfx, %xmm1
	fldl	__ZL4xtex.lto_priv.0+8
	movss	-152(%ebp), %xmm7
	jmp	L1109
	.p2align 4,,10
	.p2align 3
L1628:
	movl	$0, __ZL10pow2xsplit.lto_priv.0
	movaps	%xmm0, %xmm1
	subss	%xmm4, %xmm1
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movl	$0x00000000, 12(%esp)
	mulss	%xmm3, %xmm1
	movss	%xmm7, -168(%ebp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm6, (%esp)
	movss	%xmm0, -144(%ebp)
	addss	%xmm5, %xmm1
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-144(%ebp), %xmm2
	fldl	__ZL4otex.lto_priv.0
	movss	_ghalfx, %xmm1
	fldl	__ZL4xtex.lto_priv.0+8
	movss	-168(%ebp), %xmm7
	jmp	L1198
	.p2align 4,,10
	.p2align 3
L1112:
	fxch	%st(1)
	movss	-68(%ebp), %xmm3
	subss	%xmm2, %xmm3
	movss	-232(%ebp), %xmm2
	mulss	%xmm3, %xmm2
	mulss	-256(%ebp), %xmm2
	addss	-252(%ebp), %xmm2
	movss	%xmm2, -144(%ebp)
	fmuls	-144(%ebp)
	fxch	%st(1)
	movss	%xmm1, -144(%ebp)
	fmuls	-144(%ebp)
	fsubrp	%st, %st(1)
	jmp	L1113
	.p2align 4,,10
	.p2align 3
L1201:
	fxch	%st(1)
	movss	-68(%ebp), %xmm3
	subss	%xmm0, %xmm3
	mulss	-236(%ebp), %xmm3
	movss	-260(%ebp), %xmm0
	mulss	%xmm3, %xmm0
	addss	-256(%ebp), %xmm0
	movss	%xmm0, -144(%ebp)
	fmuls	-144(%ebp)
	fxch	%st(1)
	movss	%xmm1, -144(%ebp)
	fmuls	-144(%ebp)
	fsubrp	%st, %st(1)
	jmp	L1202
L1548:
	movss	LC43, %xmm6
	movss	-84(%ebp), %xmm5
	divss	%xmm2, %xmm5
	comiss	%xmm1, %xmm6
	jbe	L1629
	movss	LC43, %xmm3
	subss	%xmm2, %xmm1
	subss	%xmm7, %xmm0
	movl	$0x00000000, -264(%ebp)
	subss	%xmm2, %xmm3
	movss	LC39, %xmm2
	divss	%xmm1, %xmm3
	mulss	%xmm3, %xmm0
	movss	%xmm3, -256(%ebp)
	addss	%xmm7, %xmm0
	jmp	L1207
L1535:
	movss	LC43, %xmm6
	movss	-84(%ebp), %xmm5
	divss	%xmm1, %xmm5
	comiss	%xmm2, %xmm6
	jbe	L1630
	movss	LC43, %xmm3
	subss	%xmm1, %xmm2
	subss	%xmm7, %xmm0
	movl	$0x00000000, -260(%ebp)
	subss	%xmm1, %xmm3
	movss	LC39, %xmm1
	divss	%xmm2, %xmm3
	mulss	%xmm3, %xmm0
	movss	%xmm3, -256(%ebp)
	addss	%xmm7, %xmm0
	jmp	L1118
L1604:
	movl	$0, -232(%ebp)
	jmp	L1249
L1184:
	movl	_ydimen, %eax
	xorps	%xmm0, %xmm0
	xorps	%xmm3, %xmm3
	xorps	%xmm4, %xmm4
	cvtsi2ssl	_qglobalhoriz, %xmm0
	mulss	LC11, %xmm0
	movss	LC13, %xmm1
	sarl	%eax
	cvtsi2ssl	-168(%ebp), %xmm4
	cvtsi2ssl	%eax, %xmm3
	subss	%xmm1, %xmm4
	subss	%xmm3, %xmm0
	mulss	%xmm4, %xmm0
	mulss	LC11, %xmm0
	addss	%xmm3, %xmm0
	movss	%xmm0, __ZL6ghoriz.lto_priv.0
	jmp	L1186
L1095:
	movl	_ydimen, %eax
	xorps	%xmm0, %xmm0
	xorps	%xmm3, %xmm3
	xorps	%xmm4, %xmm4
	movss	LC13, %xmm1
	cvtsi2ssl	%esi, %xmm4
	cvtsi2ssl	_qglobalhoriz, %xmm0
	sarl	%eax
	mulss	LC11, %xmm0
	cvtsi2ssl	%eax, %xmm3
	subss	%xmm1, %xmm4
	subss	%xmm3, %xmm0
	mulss	%xmm4, %xmm0
	mulss	LC11, %xmm0
	addss	%xmm3, %xmm0
	movss	%xmm0, __ZL6ghoriz.lto_priv.0
	jmp	L1097
L1532:
	movss	-52(%ebp), %xmm4
	subss	-48(%ebp), %xmm4
	movl	$0, __ZL12skyclamphack.lto_priv.0
	movss	-160(%ebp), %xmm5
	subss	-88(%ebp), %xmm5
	movss	LC38, %xmm7
	movss	%xmm4, -268(%ebp)
	jmp	L1105
L1196:
	movss	%xmm4, -176(%ebp)
	flds	-176(%ebp)
	xorps	%xmm3, %xmm3
	fstpl	__ZL4otex.lto_priv.0+16
	jmp	L1197
L1614:
	movl	_r_useindexedcolortextures, %eax
	testl	%eax, %eax
	je	L1263
	movl	_gltexfiltermode, %eax
	testl	%eax, %eax
	jne	L1263
	movl	_usehightile, %eax
	testl	%eax, %eax
	je	L1264
	movl	_globalpal, %edx
	movswl	_globalpicnum, %eax
	movzwl	_hictinting(,%edx,8), %ecx
	andl	$256, %ecx
	call	_hicfindsubst
	testl	%eax, %eax
	jne	L1263
	jmp	L1264
	.p2align 4,,10
	.p2align 3
L1596:
	movl	_r_useindexedcolortextures, %eax
	testl	%eax, %eax
	je	L1283
	movl	_gltexfiltermode, %edi
	testl	%edi, %edi
	jne	L1283
	movl	_usehightile, %esi
	testl	%esi, %esi
	je	L1284
	movl	_globalpal, %edx
	movswl	_globalpicnum, %eax
	movzwl	_hictinting(,%edx,8), %ecx
	andl	$256, %ecx
	call	_hicfindsubst
	testl	%eax, %eax
	jne	L1283
	jmp	L1284
	.p2align 4,,10
	.p2align 3
L1592:
	movl	-184(%ebp), %ebx
	movl	$1, _pisbottomwall
	movl	%ebx, _psectnum
	movl	-64(%ebp), %ebx
	movl	%ebx, _pwallnum
	movl	%ebx, _pbottomwall
	testb	$2, %al
	jne	L1272
	movl	$0, _psearchstat
	movl	$1, _doeditorcheck
	jmp	L1275
L1594:
	movl	%edx, -84(%ebp)
	movl	%eax, -96(%ebp)
	call	_animateoffs
	addw	-96(%ebp), %ax
	movl	-84(%ebp), %edx
	movw	%ax, _globalpicnum
	jmp	L1277
L1612:
	movl	%edx, -96(%ebp)
	call	_animateoffs
	movl	-96(%ebp), %edx
	addl	%eax, %esi
	movw	%si, _globalpicnum
	jmp	L1257
L1619:
	movss	-240(%ebp), %xmm4
	flds	LC54
	movl	$5, _drawingskybox
	movss	_fcosglobalang, %xmm0
	fmull	_gxyaspect
	movl	$0, __ZL4xtex.lto_priv.0
	movss	__ZL6ghoriz.lto_priv.0, %xmm2
	xorps	-232(%ebp), %xmm2
	movl	$0, __ZL4xtex.lto_priv.0+4
	mulss	%xmm4, %xmm0
	movss	-168(%ebp), %xmm7
	mulss	_fsinglobalang, %xmm4
	movss	%xmm2, -168(%ebp)
	movss	_fviewingrange, %xmm2
	fstl	__ZL4ytex.lto_priv.0
	fld	%st(0)
	fmuls	-168(%ebp)
	movaps	%xmm4, %xmm3
	mulss	%xmm2, %xmm3
	fstl	__ZL4otex.lto_priv.0
	mulss	%xmm0, %xmm2
	movss	%xmm3, -168(%ebp)
	flds	-168(%ebp)
	flds	-236(%ebp)
	movss	%xmm2, -168(%ebp)
	fmul	%st, %st(1)
	fxch	%st(1)
	fstl	__ZL4xtex.lto_priv.0+8
	fxch	%st(1)
	fmuls	-168(%ebp)
	movss	%xmm0, -168(%ebp)
	fstl	__ZL4xtex.lto_priv.0+16
	flds	-244(%ebp)
	fmul	%st, %st(4)
	fxch	%st(4)
	fstl	__ZL4ytex.lto_priv.0+8
	fstpl	__ZL4ytex.lto_priv.0+16
	fxch	%st(2)
	fmulp	%st, %st(3)
	fsubrs	-168(%ebp)
	movss	%xmm4, -168(%ebp)
	fmuls	-144(%ebp)
	fadd	%st(2), %st
	fstpl	__ZL4otex.lto_priv.0+8
	fadds	-168(%ebp)
	fmuls	-144(%ebp)
	fsubrp	%st, %st(1)
	fstpl	__ZL4otex.lto_priv.0+16
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	-160(%ebp), %xmm5
	movss	%xmm5, (%esp)
	movss	-52(%ebp), %xmm2
	movss	-88(%ebp), %xmm1
	movss	-48(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movl	$0, _drawingskybox
	jmp	L1114
L1622:
	movss	-240(%ebp), %xmm5
	flds	LC34
	movl	$6, _drawingskybox
	movss	_fcosglobalang, %xmm1
	fmull	_gxyaspect
	movl	$0, __ZL4xtex.lto_priv.0
	movss	__ZL6ghoriz.lto_priv.0, %xmm2
	xorps	-232(%ebp), %xmm2
	movl	$0, __ZL4xtex.lto_priv.0+4
	mulss	%xmm5, %xmm1
	movss	-168(%ebp), %xmm7
	mulss	_fsinglobalang, %xmm5
	movss	%xmm2, -168(%ebp)
	movss	_fviewingrange, %xmm2
	fstl	__ZL4ytex.lto_priv.0
	fld	%st(0)
	fmuls	-168(%ebp)
	movaps	%xmm5, %xmm3
	mulss	%xmm2, %xmm3
	fstl	__ZL4otex.lto_priv.0
	mulss	%xmm1, %xmm2
	movss	%xmm3, -168(%ebp)
	flds	-168(%ebp)
	flds	-236(%ebp)
	movss	%xmm2, -168(%ebp)
	fmul	%st, %st(1)
	fxch	%st(1)
	fstl	__ZL4xtex.lto_priv.0+8
	fxch	%st(1)
	fmuls	-168(%ebp)
	movss	%xmm1, -168(%ebp)
	flds	-244(%ebp)
	fmul	%st, %st(4)
	fxch	%st(4)
	fstl	__ZL4ytex.lto_priv.0+8
	fxch	%st(3)
	fmulp	%st, %st(4)
	fxch	%st(1)
	fsubrs	-168(%ebp)
	movss	%xmm5, -168(%ebp)
	fmuls	-144(%ebp)
	fadd	%st(3), %st
	fstpl	__ZL4otex.lto_priv.0+8
	fld	%st(0)
	fchs
	fstpl	__ZL4xtex.lto_priv.0+16
	fxch	%st(1)
	fstpl	__ZL4ytex.lto_priv.0+16
	fxch	%st(1)
	fchs
	fxch	%st(1)
	fadds	-168(%ebp)
	fmuls	-144(%ebp)
	fsubrp	%st, %st(1)
	fchs
	fstpl	__ZL4otex.lto_priv.0+16
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	-92(%ebp), %xmm5
	movss	%xmm5, (%esp)
	movss	-48(%ebp), %xmm2
	movss	-52(%ebp), %xmm0
	movss	-164(%ebp), %xmm1
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movl	$0, _drawingskybox
	jmp	L1203
L1533:
	comiss	-160(%ebp), %xmm4
	jbe	L1631
	movss	-48(%ebp), %xmm0
	movss	-88(%ebp), %xmm1
	movaps	%xmm4, %xmm6
	movss	%xmm3, -252(%ebp)
	movss	-52(%ebp), %xmm3
	movss	-160(%ebp), %xmm5
	movss	LC38, %xmm7
	subss	%xmm1, %xmm6
	subss	%xmm0, %xmm3
	subss	%xmm1, %xmm5
	mulss	%xmm3, %xmm6
	movss	%xmm3, -268(%ebp)
	movss	%xmm5, -244(%ebp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movl	$0x00000000, 12(%esp)
	divss	%xmm5, %xmm6
	movss	%xmm7, -236(%ebp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm4, (%esp)
	movss	%xmm4, -240(%ebp)
	addss	%xmm0, %xmm6
	movaps	%xmm6, %xmm2
	movss	%xmm6, -152(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-236(%ebp), %xmm7
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	-240(%ebp), %xmm4
	movss	%xmm4, (%esp)
	movaps	%xmm4, %xmm1
	movss	-52(%ebp), %xmm2
	movss	-152(%ebp), %xmm0
	jmp	L1566
L1626:
	movaps	%xmm4, %xmm1
	xorps	LC0, %xmm1
	movss	-92(%ebp), %xmm5
	movl	$0, __ZL4xtex.lto_priv.0+16
	flds	LC55
	fmull	_gxyaspect
	movl	$0, __ZL4xtex.lto_priv.0+20
	divss	%xmm3, %xmm1
	xorps	LC0, %xmm0
	movl	$0, __ZL4xtex.lto_priv.0+8
	movl	$0, __ZL4xtex.lto_priv.0+12
	movss	%xmm0, -168(%ebp)
	fstl	__ZL4ytex.lto_priv.0
	fmuls	-168(%ebp)
	movl	$0, __ZL4xtex.lto_priv.0
	movl	$0, __ZL4xtex.lto_priv.0+4
	movl	$0, __ZL4ytex.lto_priv.0+8
	movl	$0, __ZL4ytex.lto_priv.0+12
	movl	$0, __ZL4ytex.lto_priv.0+16
	movl	$0, __ZL4ytex.lto_priv.0+20
	movl	$0, __ZL4otex.lto_priv.0+8
	movl	$0, __ZL4otex.lto_priv.0+12
	movl	$0, __ZL4otex.lto_priv.0+16
	movl	$0, __ZL4otex.lto_priv.0+20
	fstpl	__ZL4otex.lto_priv.0
	comiss	%xmm1, %xmm5
	movss	-164(%ebp), %xmm5
	ja	L1632
	comiss	%xmm1, %xmm5
	jbe	L1633
	movss	%xmm4, -272(%ebp)
	movss	-48(%ebp), %xmm4
	movaps	%xmm1, %xmm7
	movss	-164(%ebp), %xmm5
	movss	%xmm3, -260(%ebp)
	movss	-52(%ebp), %xmm3
	movss	%xmm6, -276(%ebp)
	movaps	%xmm4, %xmm2
	subss	%xmm4, %xmm3
	movss	%xmm3, -268(%ebp)
	movaps	%xmm3, %xmm6
	movss	-92(%ebp), %xmm3
	subss	%xmm3, %xmm7
	subss	%xmm3, %xmm5
	movaps	%xmm7, %xmm0
	movss	%xmm5, -256(%ebp)
	movss	LC38, %xmm7
	mulss	%xmm6, %xmm0
	movl	$0x00000000, 12(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	%xmm7, -244(%ebp)
	movl	$0x00000000, 4(%esp)
	divss	%xmm5, %xmm0
	movss	%xmm3, (%esp)
	movss	%xmm1, -176(%ebp)
	addss	%xmm4, %xmm0
	movss	%xmm0, -168(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-244(%ebp), %xmm7
	movl	$0x00000000, 12(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	%xmm7, -248(%ebp)
	movl	$0x00000000, 4(%esp)
	movss	-176(%ebp), %xmm1
	movss	%xmm1, (%esp)
	movss	-168(%ebp), %xmm2
L1569:
	movss	-52(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movswl	_globalpicnum, %eax
	movl	_xdimscale, %edi
	movss	-248(%ebp), %xmm7
	movss	-256(%ebp), %xmm5
	movl	%eax, -168(%ebp)
	movzbl	_picsiz(%eax), %ecx
	movl	$1, %eax
	movss	-260(%ebp), %xmm3
	movss	-272(%ebp), %xmm4
	andl	$15, %ecx
	movss	-276(%ebp), %xmm6
	movss	_fviewingrange, %xmm2
	sall	%cl, %eax
	movl	%eax, -244(%ebp)
	jmp	L1193
L1272:
	movl	$0, _psearchstat
	movl	-44(%ebp), %eax
	movl	$1, _doeditorcheck
	movswl	10(%eax), %ebx
	movl	%ebx, _pbottomwall
	jmp	L1274
L1538:
	movss	-52(%ebp), %xmm7
	movss	-160(%ebp), %xmm2
	comiss	%xmm4, %xmm7
	jbe	L1539
	movaps	%xmm4, %xmm0
	subss	-88(%ebp), %xmm2
	movss	%xmm4, -268(%ebp)
	subss	%xmm7, %xmm0
	mulss	%xmm2, %xmm0
	movaps	%xmm7, %xmm2
	subss	-48(%ebp), %xmm2
	divss	%xmm2, %xmm0
	addss	-160(%ebp), %xmm0
	movss	%xmm0, -252(%ebp)
	jmp	L1129
L1536:
	movss	-48(%ebp), %xmm2
	comiss	%xmm2, %xmm3
	jbe	L1537
	movss	-88(%ebp), %xmm7
	movss	-160(%ebp), %xmm0
	movaps	%xmm3, %xmm5
	movss	%xmm3, -248(%ebp)
	subss	%xmm2, %xmm5
	subss	%xmm7, %xmm0
	mulss	%xmm0, %xmm5
	movss	-52(%ebp), %xmm0
	subss	%xmm2, %xmm0
	movaps	%xmm4, %xmm2
	subss	%xmm3, %xmm2
	divss	%xmm0, %xmm5
	movss	%xmm2, -296(%ebp)
	addss	%xmm7, %xmm5
	jmp	L1125
L1553:
	movss	-176(%ebp), %xmm7
	comiss	%xmm7, %xmm6
	jbe	L1555
	movaps	%xmm6, %xmm0
	comiss	%xmm5, %xmm2
	movaps	%xmm2, %xmm1
	subss	%xmm5, %xmm0
	subss	%xmm5, %xmm1
	subss	%xmm7, %xmm0
	movss	-268(%ebp), %xmm7
	subss	-248(%ebp), %xmm7
	addss	%xmm2, %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm7, %xmm0
	movss	-248(%ebp), %xmm7
	mulss	%xmm1, %xmm0
	addss	%xmm0, %xmm7
	movss	-176(%ebp), %xmm0
	subss	%xmm2, %xmm0
	movss	%xmm7, -144(%ebp)
	mulss	%xmm0, %xmm1
	addss	%xmm2, %xmm1
	jbe	L1227
	movss	%xmm3, -304(%ebp)
	movss	-168(%ebp), %xmm3
	movaps	%xmm7, %xmm0
	movss	%xmm4, -308(%ebp)
	movss	%xmm6, -300(%ebp)
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm5, (%esp)
	movss	%xmm3, 16(%esp)
	movss	%xmm3, 8(%esp)
	movss	-248(%ebp), %xmm2
	movss	%xmm5, -296(%ebp)
	movss	%xmm1, -288(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-168(%ebp), %xmm3
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm3, 16(%esp)
	movss	%xmm3, 8(%esp)
	movss	-288(%ebp), %xmm1
	movss	%xmm1, (%esp)
	movss	-144(%ebp), %xmm2
	movss	-176(%ebp), %xmm1
	movss	-268(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-296(%ebp), %xmm5
	movss	-300(%ebp), %xmm6
	movss	-304(%ebp), %xmm3
	movss	-308(%ebp), %xmm4
	jmp	L1224
L1540:
	movss	-252(%ebp), %xmm7
	comiss	%xmm7, %xmm6
	jbe	L1542
	movaps	%xmm7, %xmm2
	movaps	%xmm1, %xmm0
	movss	-248(%ebp), %xmm7
	subss	%xmm5, %xmm2
	subss	%xmm5, %xmm0
	comiss	%xmm1, %xmm5
	subss	%xmm6, %xmm2
	addss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	-268(%ebp), %xmm2
	subss	%xmm7, %xmm2
	mulss	%xmm0, %xmm2
	addss	%xmm7, %xmm2
	movaps	%xmm6, %xmm7
	subss	%xmm1, %xmm7
	movss	%xmm2, -144(%ebp)
	mulss	%xmm0, %xmm7
	addss	%xmm1, %xmm7
	jbe	L1138
	movss	%xmm3, -300(%ebp)
	movss	-168(%ebp), %xmm3
	movaps	%xmm5, %xmm1
	movss	%xmm4, -304(%ebp)
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm3, 16(%esp)
	movss	%xmm3, 8(%esp)
	movss	%xmm7, (%esp)
	movss	-248(%ebp), %xmm0
	movss	%xmm5, -176(%ebp)
	movss	%xmm7, -280(%ebp)
	movss	%xmm6, -308(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-168(%ebp), %xmm3
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm3, 16(%esp)
	movss	%xmm3, 8(%esp)
	movss	-308(%ebp), %xmm6
	movss	%xmm6, (%esp)
	movss	-268(%ebp), %xmm2
	movss	-280(%ebp), %xmm1
	movss	-144(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-176(%ebp), %xmm5
	movss	-300(%ebp), %xmm3
	movss	-304(%ebp), %xmm4
	jmp	L1135
L1551:
	movss	-52(%ebp), %xmm7
	movss	-164(%ebp), %xmm6
	comiss	%xmm4, %xmm7
	jbe	L1552
	movaps	%xmm4, %xmm1
	subss	-92(%ebp), %xmm6
	movss	%xmm4, -268(%ebp)
	subss	%xmm7, %xmm1
	mulss	%xmm6, %xmm1
	movaps	%xmm7, %xmm6
	subss	-48(%ebp), %xmm6
	divss	%xmm6, %xmm1
	addss	-164(%ebp), %xmm1
	movaps	%xmm1, %xmm6
	jmp	L1218
L1549:
	movss	-48(%ebp), %xmm6
	comiss	%xmm6, %xmm3
	jbe	L1550
	movss	-92(%ebp), %xmm7
	movss	-164(%ebp), %xmm5
	movaps	%xmm3, %xmm1
	movss	%xmm3, -248(%ebp)
	subss	%xmm6, %xmm1
	subss	%xmm7, %xmm5
	mulss	%xmm5, %xmm1
	movss	-52(%ebp), %xmm5
	subss	%xmm6, %xmm5
	movaps	%xmm4, %xmm6
	subss	%xmm3, %xmm6
	divss	%xmm5, %xmm1
	movss	%xmm6, -276(%ebp)
	movaps	%xmm1, %xmm5
	addss	%xmm7, %xmm5
	jmp	L1214
L1632:
	comiss	%xmm1, %xmm5
	ja	L1634
	movss	-92(%ebp), %xmm2
	movss	%xmm6, -276(%ebp)
	movaps	%xmm1, %xmm6
	movss	-164(%ebp), %xmm5
	movss	%xmm4, -272(%ebp)
	movss	-48(%ebp), %xmm4
	movss	LC38, %xmm7
	movss	%xmm3, -260(%ebp)
	subss	%xmm2, %xmm6
	subss	%xmm2, %xmm5
	movss	-52(%ebp), %xmm3
	movaps	%xmm4, %xmm2
	subss	%xmm4, %xmm3
	movaps	%xmm6, %xmm0
	movss	%xmm5, -256(%ebp)
	mulss	%xmm3, %xmm0
	movss	%xmm3, -268(%ebp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movl	$0x00000000, 12(%esp)
	movss	%xmm7, -244(%ebp)
	divss	%xmm5, %xmm0
	movl	$0x00000000, 4(%esp)
	movss	%xmm1, (%esp)
	movss	%xmm1, -176(%ebp)
	addss	%xmm4, %xmm0
	movss	%xmm0, -168(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-244(%ebp), %xmm7
	movl	$0x00000000, 12(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	%xmm7, -248(%ebp)
	movl	$0x00000000, 4(%esp)
	movss	-176(%ebp), %xmm1
	movss	%xmm1, (%esp)
	movss	-168(%ebp), %xmm2
	movss	-164(%ebp), %xmm1
	jmp	L1569
L1537:
	movaps	%xmm4, %xmm2
	movss	-88(%ebp), %xmm5
	movss	%xmm3, -248(%ebp)
	subss	%xmm3, %xmm2
	movss	%xmm2, -296(%ebp)
	jmp	L1125
L1539:
	movss	%xmm2, -252(%ebp)
	movss	%xmm4, -268(%ebp)
	jmp	L1129
L1550:
	movaps	%xmm4, %xmm6
	movss	-92(%ebp), %xmm5
	movss	%xmm3, -248(%ebp)
	subss	%xmm3, %xmm6
	movss	%xmm6, -276(%ebp)
	jmp	L1214
L1552:
	movss	%xmm4, -268(%ebp)
	jmp	L1218
L1620:
	movss	%xmm6, -144(%ebp)
	movss	-168(%ebp), %xmm6
	movss	%xmm4, -300(%ebp)
	movss	%xmm3, -296(%ebp)
	movss	%xmm5, -288(%ebp)
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm6, 16(%esp)
	movss	%xmm6, 8(%esp)
	movss	%xmm2, (%esp)
	movss	-248(%ebp), %xmm2
	movss	-176(%ebp), %xmm1
	movss	-268(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-144(%ebp), %xmm6
	movss	-288(%ebp), %xmm5
	movss	-296(%ebp), %xmm3
	movss	-300(%ebp), %xmm4
	jmp	L1224
L1542:
	movss	%xmm4, -280(%ebp)
	movss	-168(%ebp), %xmm4
	movaps	%xmm5, %xmm1
	movss	%xmm3, -176(%ebp)
	movss	%xmm4, 16(%esp)
	movss	%xmm4, 8(%esp)
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	-252(%ebp), %xmm3
	movss	%xmm3, (%esp)
	movss	-268(%ebp), %xmm2
	movss	-248(%ebp), %xmm0
	movss	%xmm5, -144(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-280(%ebp), %xmm4
	movss	-176(%ebp), %xmm3
	movss	-144(%ebp), %xmm5
	jmp	L1135
L1555:
	movss	-168(%ebp), %xmm2
	movss	%xmm4, -296(%ebp)
	movaps	%xmm6, %xmm1
	movss	%xmm3, -288(%ebp)
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm5, (%esp)
	movss	%xmm2, 16(%esp)
	movss	%xmm2, 8(%esp)
	movss	-248(%ebp), %xmm2
	movss	-268(%ebp), %xmm0
	movss	%xmm5, -176(%ebp)
	movss	%xmm6, -144(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-296(%ebp), %xmm4
	movss	-288(%ebp), %xmm3
	movss	-176(%ebp), %xmm5
	movss	-144(%ebp), %xmm6
	jmp	L1224
L1617:
	movss	-168(%ebp), %xmm2
	movss	%xmm4, -280(%ebp)
	movss	%xmm3, -176(%ebp)
	movss	%xmm5, -144(%ebp)
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm2, 16(%esp)
	movss	%xmm2, 8(%esp)
	movss	%xmm6, (%esp)
	movss	-268(%ebp), %xmm2
	movss	-248(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-144(%ebp), %xmm5
	movss	-176(%ebp), %xmm3
	movss	-280(%ebp), %xmm4
	jmp	L1135
L1543:
	movss	-264(%ebp), %xmm3
	movss	-252(%ebp), %xmm4
	comiss	%xmm4, %xmm3
	jbe	L1545
	subss	%xmm5, %xmm4
	movss	-272(%ebp), %xmm6
	movss	-248(%ebp), %xmm7
	movaps	%xmm6, %xmm0
	comiss	%xmm6, %xmm5
	movaps	%xmm4, %xmm1
	subss	%xmm5, %xmm0
	subss	%xmm3, %xmm1
	subss	%xmm6, %xmm3
	addss	%xmm6, %xmm1
	divss	%xmm1, %xmm0
	movss	-268(%ebp), %xmm1
	subss	%xmm7, %xmm1
	mulss	%xmm0, %xmm1
	mulss	%xmm0, %xmm3
	movaps	%xmm1, %xmm4
	addss	%xmm7, %xmm4
	addss	%xmm6, %xmm3
	jbe	L1146
	movss	-168(%ebp), %xmm6
	movaps	%xmm4, %xmm2
	movss	%xmm3, (%esp)
	movaps	%xmm5, %xmm1
	movl	$0x00000000, 12(%esp)
	movaps	%xmm7, %xmm0
	movl	$0x00000000, 4(%esp)
	movss	%xmm6, 16(%esp)
	movss	%xmm6, 8(%esp)
	movss	%xmm3, -176(%ebp)
	movss	%xmm4, -144(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-168(%ebp), %xmm6
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm6, 16(%esp)
	movss	%xmm6, 8(%esp)
	movss	-264(%ebp), %xmm3
	movss	%xmm3, (%esp)
	movss	-268(%ebp), %xmm2
	movss	-176(%ebp), %xmm1
	movss	-144(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	_ghalfx, %xmm6
	movss	%xmm6, -144(%ebp)
	jmp	L1122
L1556:
	movss	-252(%ebp), %xmm3
	comiss	%xmm3, %xmm6
	jbe	L1558
	movaps	%xmm6, %xmm0
	movss	-260(%ebp), %xmm7
	movss	-248(%ebp), %xmm1
	subss	%xmm5, %xmm0
	movss	-268(%ebp), %xmm4
	movaps	%xmm7, %xmm2
	comiss	%xmm5, %xmm7
	subss	%xmm5, %xmm2
	subss	%xmm1, %xmm4
	subss	%xmm3, %xmm0
	addss	%xmm7, %xmm0
	divss	%xmm0, %xmm2
	movaps	%xmm4, %xmm0
	movaps	%xmm3, %xmm4
	subss	%xmm7, %xmm4
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm4, %xmm1
	mulss	%xmm2, %xmm1
	addss	%xmm7, %xmm1
	jbe	L1235
	movss	-168(%ebp), %xmm4
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm4, 16(%esp)
	movss	%xmm4, 8(%esp)
	movss	%xmm5, (%esp)
	movss	-248(%ebp), %xmm2
	movss	%xmm1, -176(%ebp)
	movss	%xmm0, -144(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-168(%ebp), %xmm4
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm4, 16(%esp)
	movss	%xmm4, 8(%esp)
	movss	-176(%ebp), %xmm1
	movss	%xmm1, (%esp)
	movss	-144(%ebp), %xmm2
	movss	-252(%ebp), %xmm1
	movss	-268(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	_ghalfx, %xmm4
	movss	%xmm4, -144(%ebp)
	jmp	L1211
L1630:
	movl	$0x00000000, -260(%ebp)
	movss	-84(%ebp), %xmm6
	movaps	%xmm6, %xmm1
	movss	%xmm6, -256(%ebp)
	divss	%xmm2, %xmm1
	jmp	L1118
L1629:
	movl	$0x00000000, -264(%ebp)
	movss	-84(%ebp), %xmm3
	movaps	%xmm3, %xmm2
	movss	%xmm3, -256(%ebp)
	divss	%xmm1, %xmm2
	jmp	L1207
L1631:
	movss	LC38, %xmm7
	movss	%xmm3, -244(%ebp)
	movl	$0x00000000, 12(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	%xmm7, -236(%ebp)
	movl	$0x00000000, 4(%esp)
	movss	-160(%ebp), %xmm5
	movss	%xmm5, (%esp)
	movss	-52(%ebp), %xmm2
	movss	-88(%ebp), %xmm1
	movss	-48(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-52(%ebp), %xmm3
	subss	-48(%ebp), %xmm3
	movss	-160(%ebp), %xmm5
	subss	-88(%ebp), %xmm5
	movss	_fviewingrange, %xmm2
	movl	_xdimscale, %edi
	movss	%xmm3, -268(%ebp)
L1567:
	movswl	_globalpicnum, %eax
	movss	-236(%ebp), %xmm7
	movss	-244(%ebp), %xmm3
	movl	%eax, -264(%ebp)
	movzbl	_picsiz(%eax), %ecx
	movl	$1, %eax
	andl	$15, %ecx
	sall	%cl, %eax
	movl	%eax, -240(%ebp)
	jmp	L1105
L1623:
	movss	LC38, %xmm7
	movss	%xmm3, -244(%ebp)
	movaps	%xmm4, %xmm1
	movl	$0x00000000, 12(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	%xmm7, -236(%ebp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm4, (%esp)
	movss	-52(%ebp), %xmm2
	movss	-48(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-52(%ebp), %xmm4
	subss	-48(%ebp), %xmm4
	movss	-160(%ebp), %xmm5
	movl	_xdimscale, %edi
	movss	_fviewingrange, %xmm2
	subss	-88(%ebp), %xmm5
	movss	%xmm4, -268(%ebp)
	jmp	L1567
L1558:
	movss	-168(%ebp), %xmm7
	movss	%xmm5, (%esp)
	movaps	%xmm6, %xmm1
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	-248(%ebp), %xmm2
	movss	-268(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	_ghalfx, %xmm4
	movss	%xmm4, -144(%ebp)
	jmp	L1211
L1621:
	movss	-168(%ebp), %xmm3
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm3, 16(%esp)
	movss	%xmm3, 8(%esp)
	movss	-260(%ebp), %xmm4
	movss	%xmm4, (%esp)
	movss	-248(%ebp), %xmm2
	jmp	L1571
L1545:
	movss	-168(%ebp), %xmm2
	movl	$0x00000000, 12(%esp)
	movaps	%xmm5, %xmm1
	movl	$0x00000000, 4(%esp)
	movss	%xmm2, 16(%esp)
	movss	%xmm2, 8(%esp)
	movss	-252(%ebp), %xmm6
	movss	%xmm6, (%esp)
	movss	-268(%ebp), %xmm2
	movss	-248(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	_ghalfx, %xmm5
	movss	%xmm5, -144(%ebp)
	jmp	L1122
L1618:
	movss	-168(%ebp), %xmm3
	movss	%xmm4, (%esp)
	movaps	%xmm6, %xmm1
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm3, 16(%esp)
	movss	%xmm3, 8(%esp)
	movss	-268(%ebp), %xmm2
	movss	-248(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	_ghalfx, %xmm5
	movss	%xmm5, -144(%ebp)
	jmp	L1122
L1634:
	movss	LC38, %xmm7
	movss	%xmm6, -272(%ebp)
	movss	%xmm4, -260(%ebp)
	movss	%xmm3, -256(%ebp)
	movl	$0x00000000, 12(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	%xmm7, -248(%ebp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm1, (%esp)
	movss	-48(%ebp), %xmm2
	movss	-52(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-52(%ebp), %xmm5
	subss	-48(%ebp), %xmm5
	movss	%xmm5, -268(%ebp)
L1570:
	movswl	_globalpicnum, %eax
	movl	_xdimscale, %edi
	movss	-164(%ebp), %xmm5
	movss	-248(%ebp), %xmm7
	movl	%eax, -168(%ebp)
	movzbl	_picsiz(%eax), %ecx
	movl	$1, %eax
	subss	-92(%ebp), %xmm5
	movss	-256(%ebp), %xmm3
	andl	$15, %ecx
	movss	-260(%ebp), %xmm4
	movss	_fviewingrange, %xmm2
	sall	%cl, %eax
	movss	-272(%ebp), %xmm6
	movl	%eax, -244(%ebp)
	jmp	L1193
L1633:
	movss	LC38, %xmm7
	movss	%xmm4, -260(%ebp)
	movaps	%xmm5, %xmm1
	movss	%xmm6, -272(%ebp)
	movss	%xmm3, -256(%ebp)
	movl	$0x00000000, 12(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	%xmm7, -248(%ebp)
	movl	$0x00000000, 4(%esp)
	movss	-92(%ebp), %xmm2
	movss	%xmm2, (%esp)
	movss	-48(%ebp), %xmm2
	movss	-52(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-52(%ebp), %xmm4
	subss	-48(%ebp), %xmm4
	movss	%xmm4, -268(%ebp)
	jmp	L1570
L1624:
	movl	-176(%ebp), %ecx
	movl	-144(%ebp), %eax
	movl	-240(%ebp), %ebx
	andl	%esi, %ecx
	movsbw	9(%eax,%ecx), %cx
	addl	%edx, %ecx
	cmpl	%ebx, -244(%ebp)
	movl	%esi, %edx
	movw	%cx, _globalpicnum
	movl	%edi, %ecx
	je	L1635
	fxch	%st(1)
	sall	%cl, %edx
	xorps	%xmm0, %xmm0
	movss	-68(%ebp), %xmm3
	leal	1(%esi), %eax
	movss	LC17, %xmm5
	movl	%edx, %ecx
	andl	$2047, %ecx
	cvtsi2ssl	%ecx, %xmm0
	mulss	-232(%ebp), %xmm0
	movl	%edi, %ecx
	mulss	%xmm5, %xmm0
	addss	%xmm4, %xmm0
	movss	%xmm0, -144(%ebp)
	xorps	%xmm0, %xmm0
	fmuls	-144(%ebp)
	fxch	%st(1)
	cvtsi2ssl	%edx, %xmm0
	subss	%xmm3, %xmm0
	mulss	%xmm6, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -144(%ebp)
	fmuls	-144(%ebp)
	fsubrp	%st, %st(1)
	fstpl	__ZL4otex.lto_priv.0+8
L1575:
	sall	%cl, %eax
	xorps	%xmm2, %xmm2
	movss	-236(%ebp), %xmm5
	cvtsi2ssl	%eax, %xmm2
	subss	%xmm3, %xmm2
	movss	-48(%ebp), %xmm3
	mulss	%xmm6, %xmm2
	movss	-88(%ebp), %xmm6
	addss	%xmm1, %xmm2
	comiss	-52(%ebp), %xmm2
	movaps	%xmm3, %xmm1
	subss	%xmm3, %xmm1
	mulss	%xmm5, %xmm1
	addss	%xmm6, %xmm1
	ja	L1328
	movaps	%xmm2, %xmm0
	xorl	%edi, %edi
	subss	%xmm3, %xmm0
	movl	%edi, __ZL10pow2xsplit.lto_priv.0
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	mulss	%xmm5, %xmm0
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	addss	%xmm6, %xmm0
	movss	%xmm0, (%esp)
	movaps	%xmm3, %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	jmp	L1096
L1627:
	movl	-244(%ebp), %ecx
	cmpl	%ecx, -248(%ebp)
	movl	-232(%ebp), %ecx
	je	L1636
	fxch	%st(1)
	andl	%esi, %ecx
	xorps	%xmm0, %xmm0
	movss	-68(%ebp), %xmm2
	leal	1(%esi), %eax
	movss	LC17, %xmm5
	movsbw	9(%ebx,%ecx), %cx
	addl	%edx, %ecx
	movl	%esi, %edx
	movw	%cx, _globalpicnum
	movl	%edi, %ecx
	sall	%cl, %edx
	movl	%edx, %ecx
	andl	$2047, %ecx
	cvtsi2ssl	%ecx, %xmm0
	mulss	-236(%ebp), %xmm0
	movl	%edi, %ecx
	sall	%cl, %eax
	mulss	%xmm5, %xmm0
	movss	-48(%ebp), %xmm5
	movaps	%xmm5, %xmm6
	subss	%xmm5, %xmm6
	addss	%xmm3, %xmm0
	movss	-240(%ebp), %xmm3
	mulss	%xmm3, %xmm6
	movss	%xmm0, -144(%ebp)
	xorps	%xmm0, %xmm0
	fmuls	-144(%ebp)
	fxch	%st(1)
	cvtsi2ssl	%edx, %xmm0
	subss	%xmm2, %xmm0
	mulss	%xmm4, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -144(%ebp)
	xorps	%xmm0, %xmm0
	fmuls	-144(%ebp)
	cvtsi2ssl	%eax, %xmm0
	fsubrp	%st, %st(1)
	subss	%xmm2, %xmm0
	fstpl	__ZL4otex.lto_priv.0+8
	mulss	%xmm4, %xmm0
	movss	-92(%ebp), %xmm4
	addss	%xmm4, %xmm6
	addss	%xmm1, %xmm0
	comiss	-52(%ebp), %xmm0
	ja	L1335
	movaps	%xmm0, %xmm1
	xorl	%edi, %edi
	movaps	%xmm5, %xmm2
	subss	%xmm5, %xmm1
	movl	%edi, __ZL10pow2xsplit.lto_priv.0
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	mulss	%xmm3, %xmm1
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	%xmm6, (%esp)
	addss	%xmm4, %xmm1
	call	__ZL15polymost_domostffffffff.lto_priv.0
	jmp	L1185
L1328:
	movss	-48(%ebp), %xmm3
	jmp	L1111
L1635:
	fxch	%st(1)
	sall	%cl, %edx
	xorps	%xmm2, %xmm2
	movss	-68(%ebp), %xmm3
	leal	1(%esi), %eax
	movss	LC17, %xmm5
	cvtsi2ssl	%edx, %xmm2
	movaps	%xmm3, %xmm0
	subss	%xmm2, %xmm0
	mulss	-232(%ebp), %xmm0
	mulss	%xmm5, %xmm0
	addss	%xmm4, %xmm0
	movss	%xmm0, -144(%ebp)
	fmuls	-144(%ebp)
	fxch	%st(1)
	movss	%xmm1, -144(%ebp)
	fmuls	-144(%ebp)
	fsubrp	%st, %st(1)
	fstpl	__ZL4otex.lto_priv.0+8
	jmp	L1575
L1335:
	movss	-48(%ebp), %xmm2
	jmp	L1200
L1636:
	fxch	%st(1)
	andl	%esi, %ecx
	xorps	%xmm2, %xmm2
	movss	-68(%ebp), %xmm6
	leal	1(%esi), %eax
	movss	LC17, %xmm5
	movsbw	9(%ebx,%ecx), %cx
	movaps	%xmm6, %xmm0
	addl	%edx, %ecx
	movl	%esi, %edx
	movw	%cx, _globalpicnum
	movl	%edi, %ecx
	sall	%cl, %edx
	sall	%cl, %eax
	cvtsi2ssl	%edx, %xmm2
	subss	%xmm2, %xmm0
	mulss	-236(%ebp), %xmm0
	mulss	%xmm5, %xmm0
	movss	-92(%ebp), %xmm5
	addss	%xmm3, %xmm0
	movss	-48(%ebp), %xmm3
	movss	%xmm0, -144(%ebp)
	xorps	%xmm0, %xmm0
	fmuls	-144(%ebp)
	fxch	%st(1)
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm1, -144(%ebp)
	fmuls	-144(%ebp)
	fsubrp	%st, %st(1)
	subss	%xmm6, %xmm0
	movaps	%xmm3, %xmm6
	subss	%xmm3, %xmm6
	mulss	%xmm4, %xmm0
	movss	-240(%ebp), %xmm4
	fstpl	__ZL4otex.lto_priv.0+8
	mulss	%xmm4, %xmm6
	addss	%xmm1, %xmm0
	comiss	-52(%ebp), %xmm0
	addss	%xmm5, %xmm6
	ja	L1335
	movaps	%xmm0, %xmm1
	xorl	%eax, %eax
	movaps	%xmm3, %xmm2
	subss	%xmm3, %xmm1
	movl	%eax, __ZL10pow2xsplit.lto_priv.0
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	mulss	%xmm4, %xmm1
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	%xmm6, (%esp)
	addss	%xmm5, %xmm1
	call	__ZL15polymost_domostffffffff.lto_priv.0
	jmp	L1185
	.cfi_endproc
LFE42:
	.globl	_pisbottomwall
	.bss
	.align 4
_pisbottomwall:
	.space 4
	.globl	_pbottomwall
	.align 4
_pbottomwall:
	.space 4
	.section .rdata,"dr"
	.align 32
__ZZL17polymost_drawallsiE6skywal:
	.long	-1006632960
	.long	-1006632960
	.long	1140850688
	.long	-1006632960
	.long	1140850688
	.long	1140850688
	.long	-1006632960
	.long	1140850688
	.set	__ZZL17polymost_drawallsiE6skywal_0,__ZZL17polymost_drawallsiE6skywal
	.globl	_psearchstat
	.bss
	.align 4
_psearchstat:
	.space 4
	.globl	_pwallnum
	.align 4
_pwallnum:
	.space 4
	.globl	_psectnum
	.align 4
_psectnum:
	.space 4
.lcomm __ZL15global_cf_shade,4,4
.lcomm __ZL13global_cf_pal,4,4
.lcomm __ZL16global_cf_fogpal,4,4
.lcomm __ZL23global_getzofslope_func,4,4
.lcomm __ZL16global_cf_heinum,4,4
.lcomm __ZL11global_cf_z,4,4
.lcomm __ZL16domostpolymethod,4,4
.lcomm __ZL10yax_holecf,98304,32
.lcomm __ZL11yax_holencf,8,4
	.data
	.align 4
__ZL10yax_drawcf:
	.long	-1
.lcomm __ZL18global_cf_xpanning,4,4
.lcomm __ZL18global_cf_ypanning,4,4
.lcomm __ZL5otex2,24,8
.lcomm __ZL5ytex2,24,8
.lcomm __ZL5xtex2,24,8
.lcomm __ZL14skyzbufferhack,4,4
	.globl	__ZL16drawpoly_trepeat.lto_priv.0
	.bss
	.align 4
__ZL16drawpoly_trepeat.lto_priv.0:
	.space 4
	.globl	__ZL16drawpoly_srepeat.lto_priv.0
	.align 4
__ZL16drawpoly_srepeat.lto_priv.0:
	.space 4
.lcomm __ZZL17polymost_drawpolyPK4vec2IfEiiE15fullbright_pass,4,4
	.globl	__ZL12skyclamphack.lto_priv.0
	.align 4
__ZL12skyclamphack.lto_priv.0:
	.space 4
.lcomm __ZZL17polymost_drawpolyPK4vec2IfEiiE19skyzbufferhack_pass,4,4
.lcomm __ZL13flatskyrender,4,4
	.section .rdata,"dr"
	.align 16
LC0:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
LC2:
	.long	1008981770
	.align 8
LC3:
	.long	0
	.long	1072693248
	.align 4
LC6:
	.long	1040187392
	.align 4
LC7:
	.long	1157627904
	.align 4
LC8:
	.long	1132396544
	.align 4
LC9:
	.long	998244352
	.align 4
LC10:
	.long	1065353216
	.align 4
LC11:
	.long	931135488
	.align 4
LC12:
	.long	869711765
	.align 4
LC13:
	.long	1199570944
	.align 4
LC14:
	.long	1602224128
	.align 8
LC15:
	.long	-1717986918
	.long	1011456409
	.align 4
LC16:
	.long	1132462080
	.align 4
LC17:
	.long	973078528
	.align 4
LC18:
	.long	1061158912
	.align 4
LC19:
	.long	1067450368
	.align 4
LC22:
	.long	998277249
	.align 4
LC23:
	.long	1056964608
	.align 4
LC24:
	.long	981467136
	.align 4
LC26:
	.long	1017370378
	.align 4
LC28:
	.long	813694976
	.align 4
LC29:
	.long	897581056
	.align 4
LC30:
	.long	-1107296256
	.align 4
LC31:
	.long	889192448
	.align 4
LC32:
	.long	1031798784
	.align 4
LC33:
	.long	-1115684864
	.align 4
LC34:
	.long	880803840
	.align 4
LC35:
	.long	-1216348160
	.align 4
LC36:
	.long	964689920
	.align 4
LC37:
	.long	1166016512
	.align 4
LC38:
	.long	-1082130432
	.align 4
LC39:
	.long	1092616192
	.align 4
LC40:
	.long	-1006632960
	.align 4
LC41:
	.long	1140850688
	.align 4
LC43:
	.long	1036831949
	.align 4
LC46:
	.long	802602901
	.align 4
LC47:
	.long	729808896
	.align 4
LC48:
	.long	914358272
	.align 4
LC49:
	.long	-973078528
	.align 4
LC50:
	.long	805306368
	.align 4
LC51:
	.long	1107296256
	.align 4
LC52:
	.long	989855744
	.align 4
LC53:
	.long	1090519040
	.align 4
LC54:
	.long	-1266679808
	.align 4
LC55:
	.long	-1233125376
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_lrintf;	.scl	2;	.type	32;	.endef
	.def	__Z26buildgl_outputDebugMessagehPKcz.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_texcache_fetch;	.scl	2;	.type	32;	.endef
	.def	__Z22polymost_npotEmulationcff;	.scl	2;	.type	32;	.endef
	.def	_floorf;	.scl	2;	.type	32;	.endef
	.def	__ZL23polymost_polyeditorfuncPK4vec2IfEi.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_tileLoad.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z29polymost_startBufferedDrawingi;	.scl	2;	.type	32;	.endef
	.def	__Z19polymost_bufferVert4vec3IfE4vec2IfE;	.scl	2;	.type	32;	.endef
	.def	__Z30polymost_finishBufferedDrawingi;	.scl	2;	.type	32;	.endef
	.def	__Z20buildgl_setAlphaFuncjf.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_handle_blend;	.scl	2;	.type	32;	.endef
	.def	_hicfindsubst;	.scl	2;	.type	32;	.endef
	.def	__Z25polymost_useDetailMappingc;	.scl	2;	.type	32;	.endef
	.def	__Z27polymost_setupdetailtextureiii;	.scl	2;	.type	32;	.endef
	.def	__Z17polymost_setClampc;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	__Z21polymost_printtext256iissPKcc;	.scl	2;	.type	32;	.endef
	.def	__Z22polymost_updatePalettev;	.scl	2;	.type	32;	.endef
	.def	__ZL16polymost_bindPthPK8pthtyp_t.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z25buildgl_bindSamplerObjectii;	.scl	2;	.type	32;	.endef
	.def	_inthash_find;	.scl	2;	.type	32;	.endef
	.def	_inthash_add;	.scl	2;	.type	32;	.endef
	.def	__Z23polymost_useGlowMappingc;	.scl	2;	.type	32;	.endef
	.def	__Z25polymost_setupglowtextureiii;	.scl	2;	.type	32;	.endef
	.def	_calc_and_apply_fog;	.scl	2;	.type	32;	.endef
	.def	_getflorzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	_getceilzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z22polymost_setVisibilityf;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.11;	.scl	2;	.type	32;	.endef
	.def	_polymost_scansector.part.0;	.scl	2;	.type	32;	.endef
	.def	_animateoffs;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.1;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_calc_and_apply_fog_factor.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_hicfindskybox.constprop.0;	.scl	2;	.type	32;	.endef
