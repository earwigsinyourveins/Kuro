	.file	"<artificial>"
	.text
	.p2align 4
	.def	__ZL21polymost_setuptextureii;	.scl	3;	.type	32;	.endef
__ZL21polymost_setuptextureii:
LFB0:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%eax, %edi
	movl	$5, %eax
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	_gltexfiltermode, %ebx
	cmpl	%eax, %ebx
	cmovg	%eax, %ebx
	xorl	%eax, %eax
	testl	%ebx, %ebx
	cmovs	%eax, %ebx
	movl	%ebx, _gltexfiltermode
	cmpl	$-1, %edx
	je	L17
	movl	$9729, %eax
	movl	$5, %ebx
	movl	$10, %esi
L2:
	addl	%ebx, %esi
	movl	%eax, 8(%esp)
	movl	$10240, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 16
	movl	_glfiltermodes+4(,%esi,4), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, 8(%esp)
	movl	$10241, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 16
	movl	_glad_glTexParameterf, %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	testl	$512, %edi
	je	L3
	cmpl	$3, _rendmode
	je	L18
L3:
	movss	LC0, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	_glanisotropy, %xmm1
	comiss	%xmm1, %xmm0
	jb	L19
L4:
	movl	$34046, 4(%esp)
	movl	$3553, (%esp)
	movss	%xmm0, 8(%esp)
	call	*%eax
	.cfi_def_cfa_offset 16
	movl	_glad_glTexParameteri, %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	andl	$4, %edi
	jne	L8
	movl	$10497, 8(%esp)
	movl	$10242, 4(%esp)
	movl	$3553, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	$10497, 8(%esp)
	movl	$10243, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	addl	$12, %esp
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
L8:
	.cfi_restore_state
	movl	$33071, 8(%esp)
	movl	$10242, 4(%esp)
	movl	$3553, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	$33071, 8(%esp)
	movl	$10243, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	addl	$12, %esp
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
L19:
	.cfi_restore_state
	movss	_glinfo+16, %xmm2
	movaps	%xmm2, %xmm0
	cmpnless	%xmm1, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm2, %xmm0
	orps	%xmm1, %xmm0
	jmp	L4
	.p2align 4,,10
	.p2align 3
L17:
	leal	(%ebx,%ebx), %esi
	leal	(%esi,%ebx), %eax
	movl	_glfiltermodes+8(,%eax,4), %eax
	jmp	L2
	.p2align 4,,10
	.p2align 3
L18:
	movl	_r_useindexedcolortextures, %ecx
	testl	%ecx, %ecx
	je	L3
	movss	LC0, %xmm0
	movl	_gltexfiltermode, %edx
	testl	%edx, %edx
	je	L4
	jmp	L3
	.cfi_endproc
LFE0:
	.p2align 4
	.def	__ZL17polymost_clipmostP4vec2IfERiffffff;	.scl	3;	.type	32;	.endef
__ZL17polymost_clipmostP4vec2IfERiffffff:
LFB1:
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
	ja	L20
	comiss	16(%ebp), %xmm0
	ja	L20
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movl	(%edx), %esi
	testl	%esi, %esi
	jle	L22
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
	xorps	LC1, %xmm1
	movss	%xmm1, 8(%esp)
	movaps	%xmm1, %xmm0
	jmp	L29
	.p2align 4,,10
	.p2align 3
L45:
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
	xorps	LC1, %xmm3
L23:
	comiss	%xmm4, %xmm0
	jb	L24
	movl	32(%esp), %ebx
	movl	-8(%ebx,%eax,8), %ecx
	movl	-4(%ebx,%eax,8), %ebx
	movl	%ecx, 36(%esp,%edx,8)
	movl	%ebx, 40(%esp,%edx,8)
	addl	$1, %edx
L24:
	comiss	%xmm4, %xmm0
	setnb	%bl
	comiss	%xmm5, %xmm4
	setnb	%cl
	cmpb	%cl, %bl
	je	L27
	comiss	%xmm0, %xmm4
	setnb	%bl
	comiss	%xmm4, %xmm5
	setnb	%cl
	cmpb	%cl, %bl
	je	L27
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
L27:
	cmpl	%esi, %eax
	je	L44
	movaps	%xmm3, %xmm0
L29:
	addl	$1, %eax
	cmpl	%esi, %eax
	jl	L45
	movss	8(%esp), %xmm3
	movss	12(%esp), %xmm5
	movss	16(%esp), %xmm1
	movss	24(%esp), %xmm2
	jmp	L23
	.p2align 4,,10
	.p2align 3
L47:
	movl	32(%esp), %ebx
	cmpl	$2, (%ebx)
	jg	L46
L43:
	movl	-4(%ebp), %edi
	.cfi_restore 7
L22:
	movl	$0, (%ebx)
	movl	-12(%ebp), %ebx
	.cfi_restore 3
	movl	-8(%ebp), %esi
	.cfi_restore 6
L20:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L44:
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
	jle	L43
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
	xorps	LC1, %xmm1
	movss	%xmm1, 4(%esp)
	movaps	%xmm1, %xmm0
	jmp	L35
	.p2align 4,,10
	.p2align 3
L48:
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
	xorps	LC1, %xmm3
L31:
	comiss	%xmm4, %xmm0
	jb	L32
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
L32:
	comiss	%xmm4, %xmm0
	setnb	%cl
	comiss	%xmm5, %xmm4
	movl	%ecx, %edi
	movl	%edi, %edx
	setnb	%cl
	cmpb	%cl, %dl
	je	L34
	comiss	%xmm0, %xmm4
	setnb	%dl
	comiss	%xmm4, %xmm5
	movl	%edx, %ecx
	setnb	%dl
	cmpb	%dl, %cl
	je	L34
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
L34:
	addl	$8, %eax
	cmpl	%esi, 28(%esp)
	je	L47
	addl	$1, %esi
	movaps	%xmm3, %xmm0
L35:
	cmpl	%esi, 28(%esp)
	jg	L48
	movss	4(%esp), %xmm3
	movss	8(%esp), %xmm5
	movss	12(%esp), %xmm1
	movss	16(%esp), %xmm2
	jmp	L31
	.p2align 4,,10
	.p2align 3
L46:
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
LFE1:
	.p2align 4
	.def	__ZL19yax_polymost_domostiffff;	.scl	3;	.type	32;	.endef
__ZL19yax_polymost_domostiffff:
LFB2:
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
	jbe	L194
	movss	LC3, %xmm7
	movss	8(%ebp), %xmm4
	movaps	%xmm2, %xmm3
	subss	%xmm7, %xmm1
	subss	%xmm7, %xmm4
	movss	%xmm1, 88(%esp)
	movss	%xmm4, 8(%ebp)
L52:
	movss	__ZL3xbl.lto_priv.0, %xmm6
	comiss	%xmm3, %xmm6
	movss	%xmm6, 80(%esp)
	ja	L55
	movss	__ZL3xbr.lto_priv.0, %xmm6
	movss	92(%esp), %xmm0
	comiss	%xmm6, %xmm0
	movss	%xmm6, 76(%esp)
	ja	L55
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
	jbe	L58
	subss	%xmm0, %xmm1
	movss	80(%esp), %xmm0
	mulss	%xmm6, %xmm1
	addss	56(%esp), %xmm1
	movss	%xmm1, 56(%esp)
L58:
	movss	76(%esp), %xmm6
	comiss	%xmm6, %xmm3
	ja	L208
L60:
	movl	__ZL7yax_vsp.lto_priv.0(,%esi,4), %edi
	movswl	16(%edi), %eax
	movl	%eax, 80(%esp)
	testl	%eax, %eax
	je	L62
	comiss	%xmm5, %xmm2
	ja	L209
	movl	80(%esp), %eax
	movss	8(%esp), %xmm6
	addl	%eax, %eax
	movl	%eax, 68(%esp)
	movl	%esi, %eax
	movl	%edi, %esi
	movl	%eax, %edi
	.p2align 4
	.p2align 3
L97:
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
	jnb	L69
	movss	(%eax), %xmm1
	comiss	%xmm3, %xmm1
	jnb	L69
	cmpw	$0, 20(%eax)
	jle	L69
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
	jbe	L93
	comiss	%xmm0, %xmm2
	jbe	L93
	movaps	%xmm0, %xmm5
	fld	%st(2)
	subss	%xmm1, %xmm5
	movss	%xmm5, 60(%esp)
	fmuls	60(%esp)
	fsub	%st(1), %st
	fldz
	fcomip	%st(1), %st
	fstp	%st(0)
	jnb	L210
	.p2align 4
	.p2align 3
L93:
	movl	$0, 48(%esp)
L96:
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
	jbe	L218
	fldz
	fld	%st(2)
	fmul	%st(2), %st
	fcomip	%st(1), %st
	fstp	%st(0)
	jb	L219
	fdivrp	%st, %st(1)
	fldl	40(%esp)
	fldl	32(%esp)
	fsubr	%st, %st(1)
	fxch	%st(2)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fcomi	%st(4), %st
	jbe	L220
	fldl	8(%esp)
	fcomip	%st(1), %st
	jbe	L221
	movl	48(%esp), %eax
	fstps	60(%esp)
	movss	60(%esp), %xmm4
	movl	$0, 96(%esp,%eax,4)
	movss	%xmm4, 112(%esp,%eax,4)
	cmpl	$1, %eax
	jne	L143
	movss	112(%esp), %xmm4
	comiss	116(%esp), %xmm4
	jbe	L92
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
L92:
	movl	$2, 48(%esp)
	jmp	L90
L221:
	fstp	%st(0)
	.p2align 4
	.p2align 3
L90:
	comiss	%xmm3, %xmm2
	jbe	L222
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
	jb	L223
	fxch	%st(1)
	fxch	%st(2)
	movl	48(%esp), %eax
	movl	$-1, 96(%esp,%eax,4)
	movss	%xmm3, 112(%esp,%eax,4)
	addl	$1, %eax
	movl	%eax, 48(%esp)
	jmp	L205
	.p2align 4,,10
	.p2align 3
L222:
	fstp	%st(3)
	fxch	%st(1)
	fxch	%st(2)
	jmp	L205
	.p2align 4,,10
	.p2align 3
L223:
	fxch	%st(1)
	fxch	%st(2)
L205:
	fxch	%st(2)
	movl	64(%esp), %edx
	addl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %edx
	jmp	L83
	.p2align 4,,10
	.p2align 3
L230:
	fstp	%st(3)
	fxch	%st(1)
L83:
	fdivrl	LC4
	movl	76(%esp), %esi
	movl	$-1, 12(%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %eax
	movl	$0, 40(%esp)
	movss	%xmm6, 24(%esp)
	movl	$-1, 12(%eax,%esi,8)
	fstps	76(%esp)
	movss	76(%esp), %xmm5
	movl	$0, 76(%esp)
L71:
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %eax
	movl	48(%esp), %esi
	movl	%eax, 64(%esp)
	movl	%eax, %edx
	movl	72(%esp), %eax
	leal	(%eax,%eax,2), %ecx
	leal	0(,%ecx,8), %eax
	cmpl	%esi, 76(%esp)
	je	L211
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
	je	L74
	movss	(%ebx), %xmm2
	comiss	%xmm2, %xmm0
	ja	L74
L72:
	movl	64(%esp), %esi
	leal	(%ecx,%ecx,2), %edx
	movss	(%esi,%edx,8), %xmm4
	comiss	%xmm3, %xmm4
	ja	L74
	movl	12(%ebx), %ecx
	subss	%xmm0, %xmm4
	mulss	24(%esp), %xmm4
	addss	56(%esp), %xmm4
	movl	12(%esi,%edx,8), %edx
	testl	%ecx, %ecx
	je	L77
	movss	4(%ebx), %xmm6
	subss	%xmm0, %xmm2
	mulss	24(%esp), %xmm2
	addss	56(%esp), %xmm2
	addss	%xmm7, %xmm6
	comiss	%xmm2, %xmm6
	jnb	L77
	movl	__ZL4gtag.lto_priv.0, %ecx
	testl	%edx, %edx
	jne	L78
L79:
	movss	%xmm2, 4(%ebx)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %edx
	movw	%cx, 20(%edx,%eax)
	.p2align 4
	.p2align 3
L74:
	addl	$1, 76(%esp)
	movl	48(%esp), %eax
	cmpl	%eax, 76(%esp)
	jg	L212
	movl	40(%esp), %eax
	movl	%eax, 72(%esp)
	jmp	L71
	.p2align 4,,10
	.p2align 3
L55:
	addl	$1, _domost_rejectcount
L49:
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
L194:
	.cfi_restore_state
	ucomiss	%xmm2, %xmm0
	jp	L147
	je	L49
L147:
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
	movss	LC3, %xmm7
	movss	88(%esp), %xmm1
	movss	8(%ebp), %xmm4
	movss	84(%esp), %xmm3
	addss	%xmm7, %xmm1
	addss	%xmm7, %xmm4
	movss	%xmm1, 88(%esp)
	movss	%xmm4, 8(%ebp)
	jmp	L52
	.p2align 4,,10
	.p2align 3
L212:
	fstp	%st(0)
	fstp	%st(0)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %eax
	movss	24(%esp), %xmm6
	movl	%eax, %esi
	.p2align 4
	.p2align 3
L69:
	movl	80(%esp), %eax
	testl	%eax, %eax
	jne	L97
L207:
	movl	%edi, %eax
	movl	%esi, %edi
	movl	%eax, %esi
	movswl	16(%edi), %eax
	movl	%eax, 80(%esp)
L62:
	movl	80(%esp), %edx
	addl	$1, __ZL4gtag.lto_priv.0
	movl	%esi, 80(%esp)
	jmp	L138
	.p2align 6
	.p2align 4,,10
	.p2align 3
L213:
	movl	%ecx, %edx
L137:
	testl	%edx, %edx
	je	L49
	movl	80(%esp), %eax
	movl	__ZL7yax_vsp.lto_priv.0(,%eax,4), %edi
L138:
	leal	(%edx,%edx,2), %eax
	leal	(%edi,%eax,8), %ebx
	movswl	16(%ebx), %ecx
	leal	(%ecx,%ecx,2), %eax
	movw	%cx, 76(%esp)
	sall	$3, %eax
	addl	%eax, %edi
	movzwl	20(%edi), %esi
	cmpw	%si, 20(%ebx)
	jne	L213
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
	jmp	L137
	.p2align 4,,10
	.p2align 3
L208:
	movaps	%xmm6, %xmm1
	subss	%xmm3, %xmm1
	mulss	8(%esp), %xmm1
	movaps	%xmm6, %xmm3
	addss	%xmm1, %xmm4
	movss	%xmm4, 20(%esp)
	jmp	L60
	.p2align 4,,10
	.p2align 3
L209:
	addl	%eax, %eax
	movl	%eax, 68(%esp)
	movl	%esi, %eax
	movl	%edi, %esi
	movl	%eax, %edi
	.p2align 4
	.p2align 3
L63:
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
	jnb	L101
	movss	(%eax), %xmm1
	comiss	%xmm3, %xmm1
	jnb	L101
	cmpw	$0, 20(%eax)
	jle	L101
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
	jbe	L103
	comiss	%xmm0, %xmm2
	jbe	L103
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
	jb	L103
	movl	$-1, 96(%esp)
	movl	$1, 40(%esp)
	movss	%xmm0, 112(%esp)
	.p2align 4
	.p2align 3
L106:
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
	jbe	L224
	fldz
	fld	%st(1)
	fmul	%st(3), %st
	fcomip	%st(1), %st
	fstp	%st(0)
	jb	L225
	fdivrp	%st, %st(1)
	fldl	48(%esp)
	fldl	32(%esp)
	fsubr	%st, %st(1)
	fxch	%st(2)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fcomi	%st(4), %st
	jbe	L226
	fldl	(%esp)
	fcomip	%st(1), %st
	jbe	L227
	movl	40(%esp), %eax
	fstps	60(%esp)
	movss	60(%esp), %xmm4
	movl	$0, 96(%esp,%eax,4)
	movss	%xmm4, 112(%esp,%eax,4)
	cmpl	$1, %eax
	jne	L144
	movss	112(%esp), %xmm4
	comiss	116(%esp), %xmm4
	jbe	L115
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
L115:
	movl	$2, 40(%esp)
	jmp	L114
L227:
	fstp	%st(0)
	.p2align 4
	.p2align 3
L114:
	comiss	%xmm3, %xmm2
	jbe	L228
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
	jb	L229
	fxch	%st(1)
	fxch	%st(2)
	movl	40(%esp), %eax
	movl	$-1, 96(%esp,%eax,4)
	movss	%xmm3, 112(%esp,%eax,4)
	addl	$1, %eax
	movl	%eax, 40(%esp)
	jmp	L206
	.p2align 4,,10
	.p2align 3
L228:
	fstp	%st(3)
	fxch	%st(1)
	fxch	%st(2)
	jmp	L206
	.p2align 4,,10
	.p2align 3
L229:
	fxch	%st(1)
	fxch	%st(2)
L206:
	fxch	%st(2)
	movl	72(%esp), %edx
	addl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %edx
	jmp	L117
	.p2align 4,,10
	.p2align 3
L231:
	fstp	%st(3)
	fxch	%st(1)
L117:
	fdivrl	LC4
	movl	76(%esp), %esi
	movl	$-1, 12(%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %eax
	movl	$0, 32(%esp)
	movl	$-1, 12(%eax,%esi,8)
	fstps	76(%esp)
	movss	76(%esp), %xmm5
	movl	$0, 76(%esp)
L135:
	movl	64(%esp), %eax
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %ebx
	movl	76(%esp), %esi
	leal	(%eax,%eax,2), %ecx
	movl	%ebx, 72(%esp)
	movl	%ebx, %edx
	leal	0(,%ecx,8), %eax
	cmpl	%esi, 40(%esp)
	je	L123
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
	je	L127
	movss	(%ebx), %xmm4
	comiss	%xmm4, %xmm0
	ja	L127
L125:
	movl	72(%esp), %esi
	leal	(%ecx,%ecx,2), %edx
	movss	(%esi,%edx,8), %xmm2
	comiss	%xmm3, %xmm2
	ja	L127
	subss	%xmm0, %xmm2
	movss	8(%esp), %xmm6
	movl	12(%ebx), %ecx
	movl	12(%esi,%edx,8), %edx
	mulss	%xmm6, %xmm2
	addss	56(%esp), %xmm2
	testl	%ecx, %ecx
	je	L129
	subss	%xmm0, %xmm4
	mulss	%xmm6, %xmm4
	movss	4(%ebx), %xmm6
	addss	56(%esp), %xmm4
	subss	%xmm7, %xmm6
	comiss	%xmm6, %xmm4
	jnb	L129
	movl	__ZL4gtag.lto_priv.0, %ecx
	testl	%edx, %edx
	jne	L214
L134:
	movss	%xmm4, 4(%ebx)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %edx
	movw	%cx, 20(%edx,%eax)
	.p2align 4
	.p2align 3
L127:
	addl	$1, 76(%esp)
	movl	76(%esp), %eax
	cmpl	%eax, 40(%esp)
	jl	L215
	movl	32(%esp), %eax
	movl	%eax, 64(%esp)
	jmp	L135
	.p2align 4,,10
	.p2align 3
L215:
	fstp	%st(0)
	fstp	%st(0)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %eax
	movl	%eax, %esi
	.p2align 4
	.p2align 3
L101:
	movl	80(%esp), %eax
	testl	%eax, %eax
	jne	L63
	jmp	L207
	.p2align 4,,10
	.p2align 3
L211:
	leal	(%edx,%eax), %ebx
	movl	%edx, %esi
	movswl	16(%ebx), %ecx
	testw	%cx, %cx
	je	L216
	movss	(%ebx), %xmm2
	comiss	%xmm2, %xmm0
	jbe	L72
	fstp	%st(0)
	fstp	%st(0)
	movl	%edx, %eax
	movss	24(%esp), %xmm6
	movl	%eax, %esi
	jmp	L69
	.p2align 4,,10
	.p2align 3
L123:
	leal	(%ebx,%eax), %ebx
	movswl	16(%ebx), %ecx
	testw	%cx, %cx
	je	L217
	movss	(%ebx), %xmm4
	comiss	%xmm4, %xmm0
	jbe	L125
	fstp	%st(0)
	fstp	%st(0)
	movl	%edx, %eax
	movl	%eax, %esi
	jmp	L101
	.p2align 4,,10
	.p2align 3
L103:
	movl	$0, 40(%esp)
	jmp	L106
	.p2align 4,,10
	.p2align 3
L218:
	fstp	%st(0)
	fstp	%st(0)
	jmp	L86
	.p2align 4,,10
	.p2align 3
L219:
	fstp	%st(0)
	fstp	%st(0)
	jmp	L86
	.p2align 4,,10
	.p2align 3
L220:
	fstp	%st(0)
	.p2align 4
	.p2align 3
L86:
	comiss	%xmm1, %xmm3
	jbe	L230
	jmp	L90
	.p2align 4,,10
	.p2align 3
L224:
	fstp	%st(0)
	fstp	%st(0)
	jmp	L108
	.p2align 4,,10
	.p2align 3
L225:
	fstp	%st(0)
	fstp	%st(0)
	jmp	L108
	.p2align 4,,10
	.p2align 3
L226:
	fstp	%st(0)
	.p2align 4
	.p2align 3
L108:
	comiss	%xmm1, %xmm3
	jbe	L231
	jmp	L114
	.p2align 4,,10
	.p2align 3
L129:
	testl	%edx, %edx
	je	L127
	movss	8(%ebx), %xmm4
	subss	%xmm7, %xmm4
	comiss	%xmm4, %xmm2
	jnb	L127
	movss	%xmm2, 8(%ebx)
	movl	__ZL4gtag.lto_priv.0, %ecx
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %edx
	movw	%cx, 20(%edx,%eax)
	jmp	L127
	.p2align 4,,10
	.p2align 3
L77:
	testl	%edx, %edx
	je	L74
	movss	8(%ebx), %xmm2
	addss	%xmm7, %xmm2
	comiss	%xmm4, %xmm2
	jnb	L74
	movss	%xmm4, 8(%ebx)
	movl	__ZL4gtag.lto_priv.0, %ecx
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %edx
	movw	%cx, 20(%edx,%eax)
	jmp	L74
	.p2align 4,,10
	.p2align 3
L217:
	fstp	%st(0)
	fstp	%st(0)
	movl	80(%esp), %eax
	movl	72(%esp), %esi
	testl	%eax, %eax
	jne	L63
	jmp	L207
	.p2align 4,,10
	.p2align 3
L216:
	fstp	%st(0)
	fstp	%st(0)
	movss	24(%esp), %xmm6
	jmp	L69
L78:
	movss	8(%ebx), %xmm6
	addss	%xmm7, %xmm6
	comiss	%xmm4, %xmm6
	jnb	L79
	movss	%xmm2, 4(%ebx)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %edx
	movss	%xmm4, 8(%edx,%eax)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %edx
	movw	%cx, 20(%edx,%eax)
	jmp	L74
L214:
	movss	8(%ebx), %xmm6
	subss	%xmm7, %xmm6
	comiss	%xmm6, %xmm2
	jnb	L134
	movss	%xmm4, 4(%ebx)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %edx
	movss	%xmm2, 8(%edx,%eax)
	movl	__ZL7yax_vsp.lto_priv.0(,%edi,4), %edx
	movw	%cx, 20(%edx,%eax)
	jmp	L127
	.p2align 4,,10
	.p2align 3
L210:
	movl	$-1, 96(%esp)
	movl	$1, 48(%esp)
	movss	%xmm0, 112(%esp)
	jmp	L96
L143:
	movl	$1, 48(%esp)
	jmp	L90
L144:
	movl	$1, 40(%esp)
	jmp	L114
	.cfi_endproc
LFE2:
	.p2align 4
	.def	__ZL18should_clip_cfwallffff;	.scl	3;	.type	32;	.endef
__ZL18should_clip_cfwallffff:
LFB5:
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
	subl	$208, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	comiss	%xmm0, %xmm2
	movss	%xmm0, 60(%esp)
	movss	%xmm0, 76(%esp)
	movss	%xmm1, 72(%esp)
	movss	%xmm2, 56(%esp)
	movss	%xmm2, 68(%esp)
	ja	L346
	movss	60(%esp), %xmm6
	ucomiss	56(%esp), %xmm6
	movl	$0, %edx
	setnp	%al
	cmovne	%edx, %eax
	testb	%al, %al
	jne	L235
	cmpl	$8, _yax_globallev
	jle	L235
	leal	76(%esp), %eax
	leal	68(%esp), %ebx
/APP
 # 4643 "source/build/src/polymost.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	leal	72(%esp), %eax
	leal	8(%ebp), %ebx
/APP
 # 4644 "source/build/src/polymost.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movss	LC3, %xmm4
	movss	72(%esp), %xmm1
	movss	8(%ebp), %xmm0
	movss	76(%esp), %xmm3
	addss	%xmm4, %xmm1
	movss	68(%esp), %xmm2
	addss	%xmm4, %xmm0
	movss	%xmm1, 72(%esp)
	movss	%xmm0, 8(%ebp)
	jmp	L240
	.p2align 4,,10
	.p2align 3
L346:
	cmpl	$7, _yax_globallev
	jg	L235
	movss	LC3, %xmm4
	movss	8(%ebp), %xmm0
	movss	56(%esp), %xmm2
	movss	60(%esp), %xmm3
	subss	%xmm4, %xmm1
	subss	%xmm4, %xmm0
	movss	%xmm1, 72(%esp)
	movss	%xmm0, 8(%ebp)
L240:
	addss	%xmm4, %xmm2
	movaps	%xmm3, %xmm6
	subss	%xmm4, %xmm6
	movaps	%xmm2, %xmm7
	movss	%xmm2, 64(%esp)
	movss	%xmm2, 68(%esp)
	movss	__ZL3xbl.lto_priv.0, %xmm2
	movss	%xmm6, 76(%esp)
	comiss	%xmm7, %xmm2
	ja	L235
	movss	__ZL3xbr.lto_priv.0, %xmm3
	comiss	%xmm3, %xmm6
	ja	L235
	movaps	%xmm0, %xmm5
	movss	%xmm1, 52(%esp)
	comiss	%xmm6, %xmm2
	subss	%xmm6, %xmm7
	subss	%xmm1, %xmm5
	movss	%xmm0, 28(%esp)
	movaps	%xmm7, %xmm1
	movaps	%xmm5, %xmm7
	divss	%xmm1, %xmm7
	movss	%xmm7, 20(%esp)
	jbe	L241
	movaps	%xmm2, %xmm5
	subss	%xmm6, %xmm5
	movaps	%xmm2, %xmm6
	movaps	%xmm5, %xmm1
	mulss	%xmm7, %xmm1
	movss	52(%esp), %xmm7
	addss	%xmm1, %xmm7
	movss	%xmm7, 52(%esp)
L241:
	movss	64(%esp), %xmm7
	comiss	%xmm3, %xmm7
	jbe	L243
	movaps	%xmm3, %xmm1
	movss	%xmm3, 64(%esp)
	subss	%xmm7, %xmm1
	mulss	20(%esp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, 28(%esp)
L243:
	movswl	__ZL3vsp.lto_priv.0+24, %edi
	testl	%edi, %edi
	je	L232
	xorl	%eax, %eax
	movss	56(%esp), %xmm7
	comiss	60(%esp), %xmm7
	movss	%xmm4, 16(%esp)
	seta	%al
	movl	%eax, 12(%esp)
	.p2align 4
	.p2align 3
L247:
	movl	%edi, %edx
	movl	%edi, %eax
	sall	$5, %edx
	movswl	__ZL3vsp.lto_priv.0+24(%edx), %edi
	movl	%edi, %edx
	sall	$5, %edx
	movss	__ZL3vsp.lto_priv.0(%edx), %xmm4
	comiss	%xmm4, %xmm6
	jnb	L245
	sall	$5, %eax
	movss	__ZL3vsp.lto_priv.0(%eax), %xmm7
	comiss	64(%esp), %xmm7
	jnb	L245
	cmpw	$0, __ZL3vsp.lto_priv.0+28(%eax)
	jle	L245
	movaps	%xmm4, %xmm5
	movss	__ZL3vsp.lto_priv.0+12(%eax), %xmm3
	comiss	%xmm7, %xmm6
	movss	__ZL3vsp.lto_priv.0+16(%eax), %xmm0
	subss	%xmm7, %xmm5
	movss	__ZL3vsp.lto_priv.0+8(%eax), %xmm1
	movl	$-1, 184(%esp)
	subss	%xmm3, %xmm0
	movss	%xmm3, 24(%esp)
	movss	%xmm3, 92(%esp)
	movaps	%xmm6, %xmm3
	movss	%xmm5, 48(%esp)
	subss	%xmm7, %xmm3
	movss	__ZL3vsp.lto_priv.0+4(%eax), %xmm5
	movss	%xmm0, 40(%esp)
	subss	%xmm5, %xmm1
	movss	%xmm5, 88(%esp)
	movss	%xmm0, 84(%esp)
	movss	%xmm7, 160(%esp)
	movss	%xmm1, 80(%esp)
	movss	%xmm3, 32(%esp)
	ja	L347
L248:
	movl	$1, %esi
L251:
	movaps	%xmm6, %xmm2
	subss	64(%esp), %xmm2
	movaps	%xmm1, %xmm0
	movss	52(%esp), %xmm3
	subss	28(%esp), %xmm3
	mulss	48(%esp), %xmm3
	mulss	%xmm2, %xmm0
	mulss	40(%esp), %xmm2
	movss	%xmm0, 44(%esp)
	movaps	%xmm3, %xmm0
	subss	44(%esp), %xmm0
	subss	%xmm2, %xmm3
	movss	52(%esp), %xmm2
	subss	%xmm5, %xmm2
	movss	%xmm0, 44(%esp)
	movss	48(%esp), %xmm5
	movss	32(%esp), %xmm0
	movss	%xmm3, 36(%esp)
	flds	44(%esp)
	mulss	%xmm0, %xmm1
	mulss	%xmm5, %xmm2
	subss	%xmm1, %xmm2
	movss	52(%esp), %xmm1
	subss	24(%esp), %xmm1
	mulss	%xmm5, %xmm1
	movaps	%xmm0, %xmm5
	movss	40(%esp), %xmm0
	mulss	%xmm5, %xmm0
	movss	64(%esp), %xmm5
	subss	%xmm6, %xmm5
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	divss	36(%esp), %xmm0
	mulss	%xmm5, %xmm0
	addss	%xmm6, %xmm0
	movss	%xmm0, 32(%esp)
	movss	44(%esp), %xmm0
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fstps	44(%esp)
	movss	%xmm2, 40(%esp)
	flds	40(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	movss	44(%esp), %xmm3
	fstps	40(%esp)
	comiss	40(%esp), %xmm3
	ja	L348
L255:
	flds	36(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fstps	40(%esp)
	movss	%xmm1, 44(%esp)
	flds	44(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	movss	40(%esp), %xmm3
	fstps	44(%esp)
	comiss	44(%esp), %xmm3
	ja	L349
L266:
	cmpl	$1, %esi
	je	L272
	comiss	164(%esp), %xmm7
	movl	$2, %esi
	jbe	L272
L273:
	movl	$2, %esi
	xorl	%edx, %edx
	movl	$1, %eax
L295:
	leal	160(%esp,%eax,4), %eax
	leal	160(%esp,%edx,4), %ebx
/APP
 # 4719 "source/build/src/polymost.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
 # 4720 "source/build/src/polymost.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
L272:
	movss	64(%esp), %xmm3
	comiss	%xmm7, %xmm3
	ja	L296
L274:
	movss	%xmm4, 160(%esp,%esi,4)
	movss	80(%esp), %xmm4
	movss	LC0, %xmm2
	divss	48(%esp), %xmm2
	movss	88(%esp), %xmm3
	movss	92(%esp), %xmm5
	movl	$-1, 184(%esp,%esi,4)
	movss	%xmm4, 44(%esp)
	movss	84(%esp), %xmm4
	movss	%xmm2, 48(%esp)
	cmpl	$2, %esi
	jle	L299
	movups	160(%esp), %xmm0
	movaps	%xmm7, %xmm1
	movl	$4, %edx
	shufps	$0, %xmm1, %xmm1
	subps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	shufps	$0, %xmm1, %xmm1
	shufps	$0, %xmm2, %xmm2
	mulps	%xmm1, %xmm0
	movss	44(%esp), %xmm1
	shufps	$0, %xmm1, %xmm1
	mulps	%xmm0, %xmm1
	addps	%xmm2, %xmm1
	movups	%xmm1, 128(%esp)
	movaps	%xmm4, %xmm1
	shufps	$0, %xmm1, %xmm1
	mulps	%xmm1, %xmm0
	movaps	%xmm5, %xmm1
	shufps	$0, %xmm1, %xmm1
	addps	%xmm1, %xmm0
	movups	%xmm0, 96(%esp)
	cmpl	$3, %esi
	je	L282
L281:
	movss	44(%esp), %xmm2
	leal	160(%esp), %ebx
	leal	128(%esp), %ecx
L283:
	movss	(%ebx,%edx,4), %xmm0
	movaps	%xmm2, %xmm1
	movl	%edx, %eax
	subss	%xmm7, %xmm0
	mulss	48(%esp), %xmm0
	mulss	%xmm0, %xmm1
	mulss	%xmm4, %xmm0
	addss	%xmm3, %xmm1
	addss	%xmm5, %xmm0
	movss	%xmm1, (%ecx,%edx,4)
	movss	%xmm0, 96(%esp,%edx,4)
	addl	$1, %edx
	cmpl	%eax, %esi
	jg	L283
L282:
	movss	56(%esp), %xmm7
	xorl	%eax, %eax
	comiss	60(%esp), %xmm7
	movss	160(%esp), %xmm0
	movl	184(%esp), %edx
	ja	L284
	movss	52(%esp), %xmm2
	movss	20(%esp), %xmm3
	movss	16(%esp), %xmm4
	jmp	L289
	.p2align 4,,10
	.p2align 3
L288:
	movss	160(%esp,%eax,4), %xmm0
	movl	184(%esp,%eax,4), %edx
	cmpl	$1, %edx
	je	L286
	movaps	%xmm0, %xmm1
	movss	96(%esp,%eax,4), %xmm5
	subss	%xmm6, %xmm1
	subss	%xmm4, %xmm5
	mulss	%xmm3, %xmm1
	addss	%xmm2, %xmm1
	comiss	%xmm5, %xmm1
	jb	L235
L286:
	cmpl	%eax, %esi
	je	L245
L289:
	addl	$1, %eax
	cmpl	$1, %edx
	je	L288
	subss	%xmm6, %xmm0
	movss	92(%esp,%eax,4), %xmm1
	subss	%xmm4, %xmm1
	mulss	%xmm3, %xmm0
	addss	%xmm2, %xmm0
	comiss	%xmm1, %xmm0
	jnb	L288
L235:
	movl	$1, %edi
L232:
	leal	-12(%ebp), %esp
	movl	%edi, %eax
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
L245:
	.cfi_restore_state
	testl	%edi, %edi
	jne	L247
	jmp	L232
	.p2align 4,,10
	.p2align 3
L284:
	movss	52(%esp), %xmm1
	movss	20(%esp), %xmm2
	movss	16(%esp), %xmm3
	jmp	L294
	.p2align 4,,10
	.p2align 3
L290:
	movss	160(%esp,%eax,4), %xmm0
	movl	184(%esp,%eax,4), %edx
	testl	%edx, %edx
	je	L292
	movss	128(%esp,%eax,4), %xmm5
	movaps	%xmm0, %xmm4
	subss	%xmm6, %xmm4
	addss	%xmm3, %xmm5
	mulss	%xmm2, %xmm4
	addss	%xmm1, %xmm4
	comiss	%xmm4, %xmm5
	jb	L235
L292:
	cmpl	%esi, %eax
	je	L245
L294:
	addl	$1, %eax
	testl	%edx, %edx
	je	L290
	subss	%xmm6, %xmm0
	movss	124(%esp,%eax,4), %xmm4
	addss	%xmm3, %xmm4
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	comiss	%xmm0, %xmm4
	jb	L235
	jmp	L290
	.p2align 4,,10
	.p2align 3
L348:
	movss	%xmm0, 44(%esp)
	mulss	%xmm2, %xmm0
	xorps	%xmm3, %xmm3
	comiss	%xmm3, %xmm0
	jb	L255
	divss	44(%esp), %xmm2
	mulss	%xmm5, %xmm2
	addss	%xmm6, %xmm2
	comiss	%xmm7, %xmm2
	jbe	L255
	comiss	%xmm2, %xmm4
	jbe	L255
	movss	%xmm2, 160(%esp,%esi,4)
	flds	36(%esp)
	leal	1(%esi), %eax
	movl	$0, 184(%esp,%esi,4)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fstps	40(%esp)
	movss	%xmm1, 44(%esp)
	flds	44(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	movss	40(%esp), %xmm5
	fstps	44(%esp)
	comiss	44(%esp), %xmm5
	jbe	L345
	mulss	36(%esp), %xmm1
	comiss	%xmm3, %xmm1
	jb	L345
	movss	32(%esp), %xmm3
	comiss	%xmm7, %xmm3
	jbe	L345
	comiss	32(%esp), %xmm4
	jbe	L345
	movl	%esi, %edx
L265:
	movss	32(%esp), %xmm5
	leal	1(%eax), %esi
	movl	$1, 184(%esp,%eax,4)
	movss	%xmm5, 160(%esp,%eax,4)
L263:
	movss	160(%esp,%edx,4), %xmm0
	comiss	32(%esp), %xmm0
	ja	L295
	.p2align 4
	.p2align 3
L296:
	movss	64(%esp), %xmm5
	comiss	%xmm5, %xmm4
	jbe	L274
	movl	12(%esp), %eax
	movaps	%xmm5, %xmm0
	movss	28(%esp), %xmm1
	subss	%xmm7, %xmm0
	movss	56(%esp), %xmm5
	comiss	60(%esp), %xmm5
	mulss	80(%esp,%eax,4), %xmm0
	subss	88(%esp,%eax,4), %xmm1
	mulss	48(%esp), %xmm1
	subss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	ja	L277
	comiss	%xmm0, %xmm1
	jbe	L274
L278:
	movss	64(%esp), %xmm3
	movl	$-1, 184(%esp,%esi,4)
	movss	%xmm3, 160(%esp,%esi,4)
	addl	$1, %esi
	jmp	L274
	.p2align 4,,10
	.p2align 3
L347:
	comiss	%xmm6, %xmm4
	jbe	L248
	movl	12(%esp), %eax
	movss	32(%esp), %xmm3
	movss	52(%esp), %xmm2
	mulss	80(%esp,%eax,4), %xmm3
	subss	88(%esp,%eax,4), %xmm2
	mulss	48(%esp), %xmm2
	subss	%xmm2, %xmm3
	movss	56(%esp), %xmm2
	comiss	60(%esp), %xmm2
	xorps	%xmm2, %xmm2
	ja	L252
	comiss	%xmm3, %xmm2
	jbe	L248
L253:
	movl	$-1, 188(%esp)
	movl	$2, %esi
	movss	%xmm6, 164(%esp)
	jmp	L251
	.p2align 4,,10
	.p2align 3
L349:
	mulss	36(%esp), %xmm1
	xorps	%xmm0, %xmm0
	comiss	%xmm0, %xmm1
	jb	L266
	movss	32(%esp), %xmm5
	comiss	%xmm7, %xmm5
	jbe	L266
	comiss	%xmm5, %xmm4
	ja	L350
	cmpl	$1, %esi
	je	L296
	comiss	164(%esp), %xmm7
	movl	$2, %esi
	jbe	L296
	jmp	L273
L252:
	comiss	%xmm2, %xmm3
	ja	L253
	jmp	L248
L277:
	comiss	%xmm1, %xmm0
	ja	L278
	jmp	L274
L350:
	leal	-1(%esi), %edx
	movl	%esi, %eax
	jmp	L265
L299:
	xorl	%edx, %edx
	jmp	L281
L345:
	movl	%esi, %ecx
	leal	-1(%esi), %edx
	movss	%xmm2, 32(%esp)
	movl	%eax, %esi
	movl	%ecx, %eax
	jmp	L263
	.cfi_endproc
LFE5:
	.p2align 4
	.def	__Z16fgetceilzofslopePK13usectortypev7ff;	.scl	3;	.type	32;	.endef
__Z16fgetceilzofslopePK13usectortypev7ff:
LFB6:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	xorps	%xmm1, %xmm1
	movl	24(%esp), %edx
	cvtsi2ssl	4(%edx), %xmm1
	testb	$2, 12(%edx)
	je	L351
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
	je	L359
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
	mulss	LC7, %xmm0
	cvtsi2ssl	%edx, %xmm2
	mulss	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
L351:
	movss	%xmm1, (%esp)
	flds	(%esp)
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L359:
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
LFE6:
	.p2align 4
	.def	__Z16fgetflorzofslopePK13usectortypev7ff;	.scl	3;	.type	32;	.endef
__Z16fgetflorzofslopePK13usectortypev7ff:
LFB8:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	xorps	%xmm1, %xmm1
	movl	24(%esp), %edx
	cvtsi2ssl	8(%edx), %xmm1
	testb	$2, 14(%edx)
	je	L360
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
	je	L368
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
	mulss	LC7, %xmm0
	cvtsi2ssl	%edx, %xmm2
	mulss	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
L360:
	movss	%xmm1, (%esp)
	flds	(%esp)
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L368:
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
LFE8:
	.p2align 4
	.def	__Z13fgetzsofslopePK13usectortypev7ffPfS2_;	.scl	3;	.type	32;	.endef
__Z13fgetzsofslopePK13usectortypev7ffPfS2_:
LFB10:
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
	je	L369
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
	je	L386
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
	mulss	LC7, %xmm1
	testb	$2, 2(%esp)
	je	L371
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
L371:
	andl	$2, %edi
	je	L386
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
L369:
	movl	24(%esp), %esi
	movl	28(%esp), %edi
	addl	$36, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L386:
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
LFE10:
	.p2align 4
	.globl	__Z20uploadtextureindexedi4vec2IiES0_i
	.def	__Z20uploadtextureindexedi4vec2IiES0_i;	.scl	2;	.type	32;	.endef
__Z20uploadtextureindexedi4vec2IiES0_i:
LFB11:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	testb	$1, %al
	movl	%esi, 48(%esp)
	movl	60(%esp), %eax
	.cfi_offset 6, -8
	movl	%edx, %esi
	movl	56(%esp), %edx
	je	L388
	movl	%eax, 40(%esp)
	movl	%edx, 36(%esp)
	movl	$0, 8(%esp)
	movl	$33084, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 44
	subl	$12, %esp
	.cfi_def_cfa_offset 56
	movl	$0, 8(%esp)
	movl	$33085, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 44
	subl	$12, %esp
	.cfi_def_cfa_offset 56
	movl	$9728, 8(%esp)
	movl	$10240, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 44
	subl	$12, %esp
	.cfi_def_cfa_offset 56
	movl	$9984, 8(%esp)
	movl	$10241, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 44
	subl	$12, %esp
	.cfi_def_cfa_offset 56
	movl	$0x3f800000, 8(%esp)
	movl	$34046, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameterf
	.cfi_def_cfa_offset 44
	subl	$12, %esp
	.cfi_def_cfa_offset 56
	movl	64(%esp), %eax
	movl	36(%esp), %edx
	movl	$5121, 28(%esp)
	movl	$6403, 24(%esp)
	movl	%eax, 32(%esp)
	movl	40(%esp), %eax
	movl	$0, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$6403, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexImage2D
	.cfi_def_cfa_offset 20
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movl	48(%esp), %esi
	addl	$52, %esp
	.cfi_remember_state
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L388:
	.cfi_restore_state
	movl	%ebx, 44(%esp)
	.cfi_offset 3, -12
	movl	64(%esp), %ebx
	movl	%esi, 8(%esp)
	movl	%ebx, 32(%esp)
	movl	$5121, 28(%esp)
	movl	$6403, 24(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexSubImage2D
	.cfi_def_cfa_offset 20
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movl	44(%esp), %ebx
	.cfi_restore 3
	movl	48(%esp), %esi
	addl	$52, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE11:
	.p2align 4
	.globl	__Z17uploadbasepalettei
	.def	__Z17uploadbasepalettei;	.scl	2;	.type	32;	.endef
__Z17uploadbasepalettei:
LFB12:
	.cfi_startproc
	movl	__ZL29polymost1BasicShaderProgramID.lto_priv.0, %edx
	testl	%edx, %edx
	je	L400
	subl	$1080, %esp
	.cfi_def_cfa_offset 1084
	movl	%esi, 1068(%esp)
	movl	_basepaltable(,%eax,4), %edx
	.cfi_offset 6, -16
	movl	%eax, %esi
	testl	%edx, %edx
	je	L391
	movl	%ebx, 1064(%esp)
	movl	$1, %ecx
	movl	%edi, 1072(%esp)
	movl	%ebp, 1076(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movzbl	(%edx), %eax
	movb	%al, 40(%esp)
	movzbl	1(%edx), %eax
	movb	%al, 41(%esp)
	movzbl	2(%edx), %eax
	movb	%al, 42(%esp)
	movzbl	_PaletteIndexFullbright, %eax
	andl	$1, %eax
	negl	%eax
	movb	%al, 43(%esp)
	leal	3(%edx), %eax
	movl	%eax, 36(%esp)
	leal	44(%esp), %eax
	.p2align 4
	.p2align 3
L393:
	movl	36(%esp), %edx
	movl	%ecx, %ebx
	movl	%ecx, %edi
	andl	$7, %ebx
	sarl	$3, %edi
	movzbl	__ZL8pow2char.lto_priv.10(%ebx), %ebp
	movzbl	(%edx), %ebx
	movzbl	_PaletteIndexFullbright(%edi), %edi
	movb	%bl, (%eax)
	movzbl	1(%edx), %ebx
	andl	%ebp, %edi
	movb	%bl, 1(%eax)
	movzbl	2(%edx), %ebx
	movl	%ebp, %edx
	movb	%bl, 2(%eax)
	movl	%edi, %ebx
	cmpb	%dl, %bl
	sete	%bl
	addl	$1, %ecx
	addl	$3, 36(%esp)
	addl	$4, %eax
	negl	%ebx
	movb	%bl, -1(%eax)
	cmpl	$256, %ecx
	jne	L393
	movl	__ZL17paletteTextureIDs.lto_priv.0(,%esi,4), %eax
	testl	%eax, %eax
	jne	L403
	leal	__ZL17paletteTextureIDs.lto_priv.0(,%esi,4), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glGenTextures
	.cfi_def_cfa_offset 1076
	movl	__ZL17paletteTextureIDs.lto_priv.0(,%esi,4), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 1084
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	$0, 8(%esp)
	movl	$33084, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 1072
	subl	$12, %esp
	.cfi_def_cfa_offset 1084
	movl	$0, 8(%esp)
	movl	$33085, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 1072
	subl	$12, %esp
	.cfi_def_cfa_offset 1084
	movl	$9728, 8(%esp)
	movl	$10240, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 1072
	subl	$12, %esp
	.cfi_def_cfa_offset 1084
	movl	$9728, 8(%esp)
	movl	$10241, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 1072
	subl	$12, %esp
	.cfi_def_cfa_offset 1084
	movl	$0x3f800000, 8(%esp)
	movl	$34046, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameterf
	.cfi_def_cfa_offset 1072
	subl	$12, %esp
	.cfi_def_cfa_offset 1084
	movl	$33071, 8(%esp)
	movl	$10242, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 1072
	subl	$12, %esp
	.cfi_def_cfa_offset 1084
	movl	$33071, 8(%esp)
	movl	$10243, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 1072
	subl	$12, %esp
	.cfi_def_cfa_offset 1084
	leal	40(%esp), %eax
	movl	$5121, 28(%esp)
	movl	%eax, 32(%esp)
	movl	$6408, 24(%esp)
	movl	$0, 20(%esp)
	movl	$1, 16(%esp)
	movl	$256, 12(%esp)
	movl	$32856, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexImage2D
	.cfi_def_cfa_offset 1048
	subl	$36, %esp
	.cfi_def_cfa_offset 1084
	movl	1064(%esp), %ebx
	.cfi_restore 3
	movl	1072(%esp), %edi
	.cfi_restore 7
	movl	1076(%esp), %ebp
	.cfi_restore 5
L391:
	movl	1068(%esp), %esi
	addl	$1080, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L403:
	.cfi_def_cfa_offset 1084
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	__Z19buildgl_bindTexturejj.constprop.0
	leal	40(%esp), %eax
	movl	$5121, 28(%esp)
	movl	%eax, 32(%esp)
	movl	$6408, 24(%esp)
	movl	$1, 20(%esp)
	movl	$256, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexSubImage2D
	.cfi_def_cfa_offset 1048
	subl	$36, %esp
	.cfi_def_cfa_offset 1084
	movl	1064(%esp), %ebx
	.cfi_restore 3
	movl	1072(%esp), %edi
	.cfi_restore 7
	movl	1076(%esp), %ebp
	.cfi_restore 5
	movl	1068(%esp), %esi
	addl	$1080, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L400:
	ret
	.cfi_endproc
LFE12:
	.section .rdata,"dr"
LC8:
	.ascii "%08x\0"
	.text
	.p2align 4
	.globl	__Z13gloadtile_artiiiiiP8pthtyp_ti
	.def	__Z13gloadtile_artiiiiiP8pthtyp_ti;	.scl	2;	.type	32;	.endef
__Z13gloadtile_artiiiiiP8pthtyp_ti:
LFB13:
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
	subl	$432, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	8(%edi), %esi
	movl	(%edi), %ebx
	movl	%edx, -336(%ebp)
	movl	%ecx, -364(%ebp)
	movswl	_tilesiz+2(,%eax,4), %edx
	movl	4(%edi), %ecx
	movl	%esi, -372(%ebp)
	movswl	_tilesiz(,%eax,4), %esi
	movl	%eax, -332(%ebp)
	movl	%ecx, -368(%ebp)
	andl	$512, %ecx
	movl	%edi, -396(%ebp)
	movl	%ebx, -340(%ebp)
	movl	%esi, -320(%ebp)
	movl	%esi, -392(%ebp)
	movl	%edx, -328(%ebp)
	movl	%edx, -388(%ebp)
	movl	%esi, -300(%ebp)
	movss	-300(%ebp), %xmm0
	movss	-328(%ebp), %xmm2
	movl	%ecx, -404(%ebp)
	movl	_waloff(,%eax,4), %eax
	unpcklps	%xmm2, %xmm0
	movlps	%xmm0, -312(%ebp)
	jne	L597
	movl	$0, -296(%ebp)
	movl	%esi, %edi
	movl	%edx, %ebx
	xorl	%edx, %edx
	movl	-320(%ebp), %esi
	imull	-328(%ebp), %esi
	testl	%eax, %eax
	jne	L598
L417:
	leal	-272(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	-364(%ebp), %eax
	movl	-336(%ebp), %ecx
	movl	%eax, 4(%esp)
	movl	-368(%ebp), %edx
	sall	$24, %ecx
	orl	%esi, %ecx
	movl	%edx, %eax
	andl	$-3, %edx
	sarl	%eax
	andl	$1, %eax
	orl	%edx, %eax
	movl	-332(%ebp), %edx
	movl	%eax, -300(%ebp)
	movl	-340(%ebp), %eax
	sall	$8, %edx
	sall	$24, %eax
	orl	%eax, %edx
	movl	-300(%ebp), %eax
	orl	%edx, %eax
	leal	-272(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, %eax
	call	_texcache_calcid.isra.0
	call	_texcache_enabled
	movl	%eax, -400(%ebp)
	testl	%eax, %eax
	jne	L599
L420:
	cmpb	$0, _glinfo+29
	js	L423
	movl	-320(%ebp), %edx
	cmpl	$1, %edx
	jle	L492
	movl	$1, %eax
	.p2align 3
	.p2align 4
	.p2align 3
L425:
	addl	%eax, %eax
	cmpl	%edx, %eax
	jl	L425
	movl	%eax, -360(%ebp)
L424:
	movl	$1, -356(%ebp)
	movl	-328(%ebp), %edx
	movl	$1, %eax
	cmpl	$1, -328(%ebp)
	jle	L600
	.p2align 3
	.p2align 4
	.p2align 3
L426:
	addl	%eax, %eax
	cmpl	%edx, %eax
	jl	L426
	movl	%eax, -356(%ebp)
	imull	-360(%ebp), %eax
	leal	0(,%eax,4), %ebx
L427:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L428
	movl	-332(%ebp), %eax
	movl	_waloff(,%eax,4), %eax
	testl	%eax, %eax
	jne	L601
	movl	-332(%ebp), %eax
	movl	$16777216, (%edi)
	movl	$1, -388(%ebp)
	leal	0(,%eax,4), %eax
	movb	$0, -341(%ebp)
	movl	$1, -392(%ebp)
	movb	$1, -300(%ebp)
	movl	%eax, -408(%ebp)
L431:
	movl	-396(%ebp), %eax
	movl	12(%eax), %esi
	movl	-372(%ebp), %eax
	testl	%esi, %esi
	je	L457
	addl	$12, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glGenTextures
	movl	-372(%ebp), %eax
	subl	$8, %esp
	movl	12(%eax), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	-368(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	movl	-356(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-388(%ebp), %ecx
	movl	%edi, %eax
	movl	-392(%ebp), %edx
	call	__ZL15fixtransparencyP7coltype4vec2IiES2_i.lto_priv.0
	movl	-408(%ebp), %eax
	movl	-332(%ebp), %ecx
	movzbl	_picanm+4(%eax,%ecx), %eax
	andl	$2, %eax
	movb	%al, -316(%ebp)
	je	L602
L458:
	xorl	%eax, %eax
	movb	$0, -316(%ebp)
	movw	%ax, -304(%ebp)
L462:
	movl	-368(%ebp), %eax
	movzbl	-300(%ebp), %ecx
	movl	-392(%ebp), %ebx
	movss	-388(%ebp), %xmm4
	movl	%eax, %edx
	orb	$-112, %dh
	movl	%ebx, -312(%ebp)
	cmpl	$30463, -332(%ebp)
	cmovle	%eax, %edx
	movzbl	-341(%ebp), %eax
	negl	%ecx
	movss	-312(%ebp), %xmm1
	andl	$196608, %ecx
	sall	$19, %eax
	unpcklps	%xmm4, %xmm1
	orl	%ecx, %eax
	movlps	%xmm1, -312(%ebp)
	orl	%edx, %eax
	orl	-404(%ebp), %eax
	movl	%ebx, 8(%esp)
	orl	$262144, %eax
	movl	%eax, 16(%esp)
	movl	-388(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%esi, %eax
	movl	$32993, (%esp)
	movl	-360(%ebp), %edx
	movl	-356(%ebp), %ecx
	call	__Z13uploadtexturei4vec2IiEiP7coltypeS0_i
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L422:
	movl	-368(%ebp), %ebx
	movl	$-1, %edx
	movl	%ebx, %eax
	call	__ZL21polymost_setuptextureii
	movl	-372(%ebp), %esi
	movl	%ebx, %edx
	xorl	%eax, %eax
	notl	%edx
	sarl	$2, %ebx
	movzbl	-336(%ebp), %ecx
	movl	-332(%ebp), %edi
	movw	%ax, 36(%esi)
	movl	%edx, %eax
	sall	$7, %edx
	movlps	-312(%ebp), %xmm3
	sall	$8, %eax
	movb	%cl, 38(%esi)
	movzbl	-340(%ebp), %ecx
	andl	%edx, %eax
	movl	%ebx, %edx
	movw	%di, 32(%esi)
	andl	$1, %edx
	andw	$256, %ax
	movb	%cl, 39(%esi)
	orl	%edx, %eax
	movzbl	-300(%ebp), %edx
	orw	-304(%ebp), %ax
	movlps	%xmm3, 24(%esi)
	movl	$0, 8(%esi)
	negl	%edx
	andw	$1032, %dx
	orl	%edx, %eax
	movl	-400(%ebp), %edx
	movw	%ax, 34(%esi)
	testl	%edx, %edx
	jne	L475
	testb	$64, _glinfo+29
	je	L475
	movl	_glusetexcache, %eax
	testl	%eax, %eax
	je	L475
	cmpl	$2, _glusetexcompr
	jne	L475
	cmpl	$30463, %edi
	jle	L603
	.p2align 4
	.p2align 3
L475:
	cmpb	$0, -341(%ebp)
	je	L404
	movl	__ZZ13gloadtile_artiiiiiP8pthtyp_tiE21fullbrightloadingpass, %eax
	testl	%eax, %eax
	jne	L404
	movl	-372(%ebp), %eax
	movl	$1, __ZZ13gloadtile_artiiiiiP8pthtyp_tiE21fullbrightloadingpass
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L604
L478:
	movl	-372(%ebp), %esi
	movl	$-1, %ecx
	orw	$16, 34(%esi)
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-368(%ebp), %eax
	movl	$0, (%esp)
	andl	$-4, %eax
	orl	$1, %eax
	movl	%eax, 4(%esp)
	movl	-336(%ebp), %edx
	movl	-332(%ebp), %eax
	call	__Z13gloadtile_artiiiiiP8pthtyp_ti
	movl	$0, __ZZ13gloadtile_artiiiiiP8pthtyp_tiE21fullbrightloadingpass
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
L599:
	.cfi_restore_state
	xorl	%ecx, %ecx
	leal	-296(%ebp), %edx
	leal	-272(%ebp), %eax
	call	_texcache_readtexheader.part.0
	movl	%eax, -400(%ebp)
	testl	%eax, %eax
	je	L420
	movl	-396(%ebp), %eax
	movl	-372(%ebp), %ecx
	leal	12(%eax), %edx
	leal	-296(%ebp), %eax
	call	_texcache_loadtile
	movl	%eax, -360(%ebp)
	testl	%eax, %eax
	jne	L420
	movl	$0, -356(%ebp)
	movl	-284(%ebp), %eax
	movl	%eax, %edx
	shrl	%edx
	movl	%edx, %ecx
	movl	%eax, %edx
	shrl	$5, %eax
	andl	$1, %ecx
	shrl	$4, %edx
	movb	%cl, -300(%ebp)
	movl	%edx, %ecx
	andl	$1, %ecx
	movb	%cl, -341(%ebp)
	movl	%eax, %ecx
	andl	$1, %eax
	andl	$1, %ecx
	sall	$5, %eax
	movb	%cl, -316(%ebp)
	movw	%ax, -304(%ebp)
	jmp	L422
	.p2align 4,,10
	.p2align 3
L423:
	orw	%bx, %di
	jne	L605
	movl	$1, -356(%ebp)
	movl	$4, %ebx
	movl	$1, -360(%ebp)
	jmp	L427
	.p2align 4,,10
	.p2align 3
L457:
	movl	12(%eax), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	-368(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	movl	-356(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-388(%ebp), %ecx
	movl	%edi, %eax
	movl	-392(%ebp), %edx
	call	__ZL15fixtransparencyP7coltype4vec2IiES2_i.lto_priv.0
	movl	-408(%ebp), %eax
	movl	-332(%ebp), %ecx
	movzbl	_picanm+4(%eax,%ecx), %eax
	andl	$2, %eax
	movb	%al, -316(%ebp)
	jne	L606
	cmpl	$4, _rendmode
	je	L607
	cmpb	$0, _glinfo+29
	js	L608
	movl	-372(%ebp), %eax
	xorl	%esi, %esi
	movl	$0, -404(%ebp)
	movw	%si, -304(%ebp)
	movl	24(%eax), %ebx
	movl	28(%eax), %ecx
L482:
	movl	$1, %eax
	cmpl	$1, %ebx
	jle	L470
	.p2align 3
	.p2align 4
	.p2align 3
L471:
	addl	%eax, %eax
	cmpl	%ebx, %eax
	jl	L471
L470:
	movl	$1, %edx
	cmpl	$1, %ecx
	jle	L472
	.p2align 3
	.p2align 4
	.p2align 3
L473:
	addl	%edx, %edx
	cmpl	%ecx, %edx
	jl	L473
L472:
	cmpl	-356(%ebp), %edx
	jl	L506
	cmpl	-360(%ebp), %eax
	jge	L609
L506:
	movl	$1, %esi
	jmp	L462
	.p2align 4,,10
	.p2align 3
L601:
	movl	-332(%ebp), %eax
	movb	$0, -342(%ebp)
	leal	0(,%eax,4), %esi
	movl	%esi, -408(%ebp)
	testb	$16, _picanm+3(%eax,%eax,4)
	je	L610
L432:
	movl	-356(%ebp), %eax
	testl	%eax, %eax
	jle	L496
	movl	-368(%ebp), %eax
	movl	-328(%ebp), %ecx
	movl	$0, -324(%ebp)
	movb	$0, -341(%ebp)
	andl	$4, %eax
	movb	$0, -300(%ebp)
	negl	%ecx
	movl	%eax, -352(%ebp)
	shrl	$2, %eax
	movl	%eax, -412(%ebp)
	movl	-364(%ebp), %eax
	movl	%edi, -416(%ebp)
	notl	%eax
	movl	%ebx, -420(%ebp)
	shrl	$31, %eax
	movl	%eax, -348(%ebp)
	movl	-360(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	(%edi,%edx), %eax
	movl	%eax, -316(%ebp)
	.p2align 4
	.p2align 3
L456:
	movl	-328(%ebp), %esi
	cmpl	%esi, -324(%ebp)
	jl	L497
L455:
	movl	-360(%ebp), %eax
	testl	%eax, %eax
	jle	L434
	movl	-324(%ebp), %edi
L594:
	movl	-316(%ebp), %ebx
	movl	%ecx, -324(%ebp)
	subl	%edx, %ebx
	cmpl	-328(%ebp), %edi
	jl	L486
	testb	$1, -412(%ebp)
	je	L486
	movl	-316(%ebp), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L435:
	movb	$0, 3(%ebx)
	addl	$4, %ebx
	movb	$0, -2(%ebx)
	movb	$0, -3(%ebx)
	movb	$0, -4(%ebx)
	cmpl	%eax, %ebx
	jne	L435
	addl	$1, %edi
	cmpl	%edi, -356(%ebp)
	je	L590
	addl	%edx, -316(%ebp)
	addl	$1, %ecx
	cmpl	-328(%ebp), %edi
	jge	L594
	movl	%edi, -324(%ebp)
	jmp	L453
	.p2align 4,,10
	.p2align 3
L497:
	movl	-324(%ebp), %edi
L433:
	movl	-360(%ebp), %eax
	testl	%eax, %eax
	jle	L611
L453:
	movl	-316(%ebp), %ebx
	subl	%edx, %ebx
L486:
	movl	-320(%ebp), %eax
	movl	%edi, -376(%ebp)
	xorl	%esi, %esi
	movl	%ecx, -380(%ebp)
	negl	%eax
	movl	%edx, -384(%ebp)
	movl	%eax, -304(%ebp)
	jmp	L448
	.p2align 4,,10
	.p2align 3
L437:
	movl	-352(%ebp), %edx
	movl	-304(%ebp), %eax
	testl	%edx, %edx
	jne	L452
L438:
	movl	-332(%ebp), %ecx
	imull	-328(%ebp), %eax
	movl	$-1, %edx
	addl	-324(%ebp), %eax
	movzbl	-300(%ebp), %edi
	addl	_waloff(,%ecx,4), %eax
	xorl	%ecx, %ecx
	movzbl	(%eax), %eax
	cmpb	$-1, %al
	cmove	%ecx, %edx
	movl	$1, %ecx
	cmovne	%edi, %ecx
	movl	-336(%ebp), %edi
	movb	%dl, 3(%ebx)
	movl	-340(%ebp), %edx
	movb	%cl, -300(%ebp)
	movl	__ZZ13gloadtile_artiiiiiP8pthtyp_tiE21fullbrightloadingpass, %ecx
	sall	$8, %edx
	addl	_palookup(,%edi,4), %edx
	movzbl	(%edx,%eax), %eax
	movl	%ecx, -312(%ebp)
	movl	%eax, %edx
	movl	%eax, %edi
	andl	$7, %edx
	sarl	$3, %edi
	movzbl	__ZL8pow2char.lto_priv.10(%edx), %edx
	movzbl	_PaletteIndexFullbright(%edi), %edi
	andl	%edx, %edi
	testl	%ecx, %ecx
	jne	L612
	movl	%edi, %ecx
	cmpb	%dl, %cl
	sete	%dl
	andb	-342(%ebp), %dl
	orb	%dl, -341(%ebp)
L451:
	movl	_gammabrightness, %edi
	movzbl	_curpalette(,%eax,4), %edx
	testl	%edi, %edi
	je	L613
	movb	%dl, (%ebx)
	movzbl	_curpalette+1(,%eax,4), %edx
	movb	%dl, 1(%ebx)
	movzbl	_curpalette+2(,%eax,4), %eax
L450:
	movl	-312(%ebp), %ecx
	movb	%al, 2(%ebx)
	testl	%ecx, %ecx
	jne	L449
	cmpb	$0, -348(%ebp)
	je	L449
	movzbl	-364(%ebp), %edx
	movl	%ebx, %eax
	movl	$1, %ecx
	call	_hictinting_applypixcolor
	movzbl	2(%ebx), %eax
L449:
	movzbl	(%ebx), %edx
	addl	$1, -304(%ebp)
	addl	$1, %esi
	addl	$4, %ebx
	movb	%al, -4(%ebx)
	movb	%dl, -2(%ebx)
	cmpl	-316(%ebp), %ebx
	je	L596
L448:
	cmpl	-320(%ebp), %esi
	jge	L437
	movl	%esi, %eax
	jmp	L438
	.p2align 6
	.p2align 4,,10
	.p2align 3
L452:
	movb	$0, 3(%ebx)
	addl	$4, %ebx
	movb	$0, -2(%ebx)
	movb	$0, -3(%ebx)
	movb	$0, -4(%ebx)
	cmpl	-316(%ebp), %ebx
	je	L596
	addl	$1, %esi
	addl	$1, %eax
	cmpl	-320(%ebp), %esi
	jge	L452
	movl	%eax, -304(%ebp)
	movl	%esi, %eax
	jmp	L438
	.p2align 4,,10
	.p2align 3
L612:
	movl	%edi, %ecx
	cmpb	%dl, %cl
	je	L451
	movb	$0, 3(%ebx)
	movb	$1, -300(%ebp)
	jmp	L451
	.p2align 4,,10
	.p2align 3
L613:
	movl	_curbrightness, %edi
	sall	$8, %edi
	movzbl	_britable(%edx,%edi), %edx
	movb	%dl, (%ebx)
	movl	_curbrightness, %edx
	movzbl	_curpalette+1(,%eax,4), %edi
	sall	$8, %edx
	movzbl	_britable(%edi,%edx), %edx
	movb	%dl, 1(%ebx)
	movzbl	_curpalette+2(,%eax,4), %edx
	movl	_curbrightness, %eax
	sall	$8, %eax
	movzbl	_britable(%edx,%eax), %eax
	jmp	L450
	.p2align 4,,10
	.p2align 3
L596:
	movl	-376(%ebp), %edi
	movl	-380(%ebp), %ecx
	movl	-384(%ebp), %edx
L440:
	leal	1(%edi), %eax
	addl	%edx, -316(%ebp)
	addl	$1, %ecx
	movl	%eax, -324(%ebp)
	cmpl	-356(%ebp), %eax
	jne	L456
L590:
	movl	-416(%ebp), %edi
	movl	-420(%ebp), %ebx
	jmp	L431
	.p2align 4,,10
	.p2align 3
L598:
	movl	$4, %edx
	cmpl	%edx, %esi
	cmovle	%esi, %edx
	testl	%edx, %edx
	je	L419
	movw	%bx, -300(%ebp)
	xorl	%ecx, %ecx
L418:
	movzbl	(%eax,%ecx), %ebx
	movb	%bl, -296(%ebp,%ecx)
	addl	$1, %ecx
	cmpl	%edx, %ecx
	jb	L418
	movzwl	-300(%ebp), %ebx
L419:
	movl	-296(%ebp), %edx
	jmp	L417
L597:
	testl	%eax, %eax
	jne	L614
	movl	_tiles+12, %eax
	movl	-372(%ebp), %esi
	testl	%eax, %eax
	cmovne	_tiles, %eax
	movl	__ZL15tilesheetTexIDs.lto_priv.0(,%eax,4), %eax
	movl	%eax, 12(%esi)
L414:
	movl	-368(%ebp), %ebx
	movl	-372(%ebp), %esi
	movzwl	-332(%ebp), %eax
	movlps	-312(%ebp), %xmm5
	movl	%ebx, %edx
	sarl	$2, %ebx
	movl	$0, 36(%esi)
	notl	%edx
	movw	%ax, 32(%esi)
	movl	%edx, %eax
	sall	$7, %edx
	movl	$0, 8(%esi)
	sall	$8, %eax
	movlps	%xmm5, 24(%esi)
	andl	%edx, %eax
	movl	%ebx, %edx
	andw	$256, %ax
	andl	$1, %edx
	orl	%edx, %eax
	orw	$1544, %ax
	movw	%ax, 34(%esi)
L404:
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
L602:
	.cfi_restore_state
	cmpl	$4, _rendmode
	je	L460
	cmpb	$0, _glinfo+29
	js	L615
L460:
	xorl	%eax, %eax
	movw	%ax, -304(%ebp)
	jmp	L462
L610:
	movzbl	_globalflags, %eax
	shrb	%al
	andl	$1, %eax
	xorl	$1, %eax
	movb	%al, -342(%ebp)
	jmp	L432
L606:
	xorl	%ecx, %ecx
	movb	$0, -316(%ebp)
	movw	%cx, -304(%ebp)
L468:
	movl	-372(%ebp), %eax
	cmpb	$0, _glinfo+29
	movl	%esi, -404(%ebp)
	movl	24(%eax), %ebx
	movl	28(%eax), %ecx
	jns	L482
L469:
	movl	%ecx, %esi
	movl	$1, %eax
	orl	%ebx, %esi
	cmove	%eax, %ecx
	cmovne	%ebx, %eax
	movl	%ecx, %edx
	jmp	L472
L605:
	movl	-328(%ebp), %eax
	leal	0(,%esi,4), %ebx
	movl	%eax, -356(%ebp)
	movl	-320(%ebp), %eax
	movl	%eax, -360(%ebp)
	jmp	L427
L614:
	movl	-396(%ebp), %eax
	movl	-372(%ebp), %esi
	movl	12(%eax), %edi
	movl	-332(%ebp), %eax
	movl	12(%esi), %edx
	addl	$1, %eax
	cmpl	$30720, %eax
	ja	L407
	leal	(%eax,%eax,4), %eax
	sall	$2, %eax
	movl	_tiles+12(%eax), %ecx
	testl	%ecx, %ecx
	je	L407
	movl	_tiles+4(%eax), %ebx
	movl	_tiles(%eax), %esi
	movl	%ebx, -304(%ebp)
	movl	_tiles+8(%eax), %ebx
	movl	%ebx, -316(%ebp)
	movl	__ZL15tilesheetTexIDs.lto_priv.0(,%esi,4), %ebx
	movl	%ebx, -300(%ebp)
	cmpl	-328(%ebp), %ecx
	jb	L408
	movl	-320(%ebp), %ebx
	cmpl	%ebx, _tiles+16(%eax)
	jb	L408
	testl	%edx, %edx
	je	L409
	cmpl	%edx, -300(%ebp)
	je	L409
	movl	-372(%ebp), %eax
	movl	$1, (%esp)
	addl	$12, %eax
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteTextures
	movl	__ZL15tilesheetTexIDs.lto_priv.0(,%esi,4), %eax
	subl	$8, %esp
	movl	%eax, -300(%ebp)
L409:
	movl	-300(%ebp), %esi
	movl	-372(%ebp), %eax
	xorl	%edi, %edi
	movl	%esi, 12(%eax)
	movl	%esi, %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	-304(%ebp), %esi
	movl	-316(%ebp), %ecx
L410:
	movl	-332(%ebp), %eax
	movl	%esi, %edx
	movl	_waloff(,%eax,4), %eax
	movl	%eax, 8(%esp)
	movl	-320(%ebp), %eax
	movl	%eax, (%esp)
	movl	-328(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	call	__Z20uploadtextureindexedi4vec2IiES0_i
	jmp	L414
L408:
	movl	-304(%ebp), %esi
	movl	-316(%ebp), %ecx
	cmpl	%edx, -300(%ebp)
	je	L593
	testl	%edi, %edi
	jne	L411
	movl	%edx, %eax
	movl	%ecx, -300(%ebp)
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	-300(%ebp), %ecx
	jmp	L410
L611:
	addl	$1, -324(%ebp)
	movl	-324(%ebp), %eax
	cmpl	-356(%ebp), %eax
	je	L590
	addl	%edx, -316(%ebp)
	addl	$1, %ecx
	cmpl	-328(%ebp), %eax
	jl	L616
L434:
	movl	-324(%ebp), %edi
	addl	$1, %edi
	cmpl	%edi, -356(%ebp)
	je	L590
	addl	%edx, -316(%ebp)
	addl	$1, %ecx
	cmpl	-328(%ebp), %edi
	jl	L440
	movl	%edi, -324(%ebp)
	jmp	L455
L609:
	movl	-396(%ebp), %eax
	movl	12(%eax), %esi
	jmp	L462
L428:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L604:
	movl	$44, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L479
	movl	$0, 28(%eax)
	xorl	%edx, %edx
	movl	$0, 32(%eax)
	movl	$0, 36(%eax)
	movl	$0, 40(%eax)
L480:
	movl	$0, (%eax,%edx)
	movl	$0, 4(%eax,%edx)
	movl	$0, 8(%eax,%edx)
	movl	$0, 12(%eax,%edx)
	addl	$16, %edx
	cmpl	$32, %edx
	jb	L480
	movl	-372(%ebp), %esi
	movl	%eax, 4(%esi)
	jmp	L478
L607:
	xorl	%edx, %edx
	movw	%dx, -304(%ebp)
	jmp	L468
L616:
	movl	%eax, %edi
	jmp	L433
L407:
	movl	_tiles+12, %eax
	testl	%eax, %eax
	cmovne	_tiles, %eax
	cmpl	%edx, __ZL15tilesheetTexIDs.lto_priv.0(,%eax,4)
	je	L489
	testl	%edi, %edi
	je	L617
	xorl	%ecx, %ecx
	xorl	%esi, %esi
L411:
	movl	-372(%ebp), %ebx
	movl	%ecx, -300(%ebp)
	movl	$1, (%esp)
	leal	12(%ebx), %eax
	movl	%eax, 4(%esp)
	call	*_glad_glGenTextures
	movl	12(%ebx), %eax
	subl	$8, %esp
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	-368(%ebp), %eax
	movl	$-1, %edx
	call	__ZL21polymost_setuptextureii
	movl	-300(%ebp), %ecx
	jmp	L410
L489:
	xorl	%ecx, %ecx
	xorl	%esi, %esi
L593:
	movl	$1, %edi
	jmp	L411
L603:
	movl	-360(%ebp), %esi
	movlps	%xmm3, -292(%ebp)
	movl	$0, -280(%ebp)
	cmpl	$1, %esi
	jle	L476
	leal	-1(%esi), %eax
	testl	%eax, %esi
	je	L476
	movl	$1, -400(%ebp)
L477:
	movzbl	-316(%ebp), %eax
	movzbl	-300(%ebp), %edx
	sall	$5, %eax
	addl	%edx, %edx
	orl	%edx, %eax
	movzbl	-341(%ebp), %edx
	orl	-400(%ebp), %eax
	sall	$4, %edx
	orl	%edx, %eax
	leal	-296(%ebp), %edx
	orl	$8, %eax
	movl	%eax, -284(%ebp)
	leal	-272(%ebp), %eax
	call	_texcache_writetex_fromdriver
	jmp	L475
L479:
	movl	$44, %eax
	call	__Z13handle_memerri
L492:
	movl	$1, -360(%ebp)
	jmp	L424
L600:
	movl	-360(%ebp), %eax
	leal	0(,%eax,4), %ebx
	jmp	L427
L608:
	movl	_usehightile, %eax
	testl	%eax, %eax
	jne	L464
L461:
	cmpl	$1, _r_npotwallmode
	je	L618
L465:
	testl	%esi, %esi
	jne	L458
L464:
	movl	-372(%ebp), %eax
	movb	$0, -316(%ebp)
	movl	24(%eax), %ebx
	movl	28(%eax), %ecx
	xorl	%eax, %eax
	movw	%ax, -304(%ebp)
	jmp	L469
L615:
	movl	_usehightile, %eax
	testl	%eax, %eax
	je	L461
	jmp	L460
L496:
	movb	$0, -341(%ebp)
	movb	$0, -300(%ebp)
	jmp	L431
L617:
	movl	%edx, %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	-372(%ebp), %esi
	movl	-320(%ebp), %eax
	movl	-328(%ebp), %ebx
	cmpl	%eax, 24(%esi)
	setne	%al
	cmpl	%ebx, 28(%esi)
	setne	%dl
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	orl	%edx, %eax
	movl	%eax, %edi
	andl	$1, %edi
	jmp	L410
L618:
	testb	$32, -368(%ebp)
	je	L465
	movl	-356(%ebp), %ecx
	cmpl	$1, %ecx
	jle	L465
	leal	-1(%ecx), %eax
	movl	-392(%ebp), %edx
	testl	%eax, %ecx
	setne	-312(%ebp)
	cmpl	%edx, -360(%ebp)
	sete	%al
	testb	%al, -312(%ebp)
	je	L465
	cmpl	%ecx, -388(%ebp)
	jne	L465
	movl	-332(%ebp), %eax
	movl	-360(%ebp), %edx
	movzbl	_picsiz(%eax), %eax
	shrb	$4, %al
	leal	1(%eax), %ecx
	sall	%cl, %edx
	movb	%cl, -312(%ebp)
	sall	$2, %edx
	movl	%edx, 4(%esp)
	movl	%edx, -304(%ebp)
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	pushl	%edi
	pushl	%edi
	movl	%eax, %edi
	testl	%eax, %eax
	jne	L510
	movl	-304(%ebp), %edx
	testl	%edx, %edx
	jne	L466
L510:
	movzbl	-312(%ebp), %ecx
	movl	$1, %eax
	leal	(%edi,%ebx), %edx
	sall	%cl, %eax
	movl	%eax, -388(%ebp)
	movl	%eax, %ebx
	subl	-356(%ebp), %eax
	imull	-360(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	%edx, (%esp)
	sall	$2, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	testl	%esi, %esi
	je	L501
	movl	%ebx, -356(%ebp)
	movw	$32, -304(%ebp)
	movl	$1048576, -404(%ebp)
	movb	$1, -316(%ebp)
	jmp	L462
	.p2align 4,,10
	.p2align 3
L476:
	movl	-356(%ebp), %esi
	cmpl	$1, %esi
	jle	L477
	leal	-1(%esi), %eax
	testl	%eax, %esi
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -400(%ebp)
	jmp	L477
L466:
	movl	%edx, %eax
	call	__Z13handle_memerri
L501:
	movl	-388(%ebp), %eax
	movb	$1, -316(%ebp)
	movl	$1048576, %esi
	movw	$32, -304(%ebp)
	movl	%eax, -356(%ebp)
	jmp	L468
	.cfi_endproc
LFE13:
	.p2align 4
	.globl	__Z36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_.constprop.0
	.def	__Z36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_.constprop.0;	.scl	2;	.type	32;	.endef
__Z36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_.constprop.0:
LFB20:
	.cfi_startproc
	subl	$68, %esp
	.cfi_def_cfa_offset 72
	movl	%ebx, 52(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%esi, 56(%esp)
	.cfi_offset 6, -16
	movl	%ecx, %esi
	movl	%edi, 60(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	%ecx, 20(%esp)
	movl	$0, 44(%esp)
	call	_kpzbufload
	testl	%eax, %eax
	jne	L667
L620:
	movl	$0, 32(%esp)
L619:
	movl	32(%esp), %eax
	movl	52(%esp), %ebx
	movl	56(%esp), %esi
	movl	60(%esp), %edi
	addl	$68, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L667:
	.cfi_restore_state
	leal	44(%esp), %eax
	movl	72(%esp), %ecx
	movl	%esi, %edx
	movl	%ebp, 64(%esp)
	.cfi_offset 5, -8
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZL26gloadtile_mdloadskin_checkPciP4vec2IiES2_Pi.part.0.lto_priv.0
	testb	%al, %al
	je	L665
	movl	72(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	leal	0(,%eax,4), %esi
	movl	72(%esp), %eax
	movl	4(%eax), %ebp
	imull	%esi, %ebp
	movl	%ebp, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 68
	subl	$4, %esp
	.cfi_def_cfa_offset 72
	movl	%eax, 32(%esp)
	testl	%eax, %eax
	je	L621
	movl	%ebp, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	__ZZ36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_E7lastpic, %edx
	testl	%edx, %edx
	je	L623
	movl	__ZZ36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_E6lastfn, %eax
	testl	%eax, %eax
	je	L623
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 12(%esp)
	call	_strcmp
	movl	12(%esp), %edx
	testl	%eax, %eax
	je	L668
L623:
	movl	72(%esp), %eax
	movl	44(%esp), %ebp
	movl	_kpzbuf, %ebx
	movl	(%eax), %eax
	testl	%ebp, %ebp
	je	L625
	movl	20(%esp), %edi
	movl	4(%edi), %esi
	testl	%esi, %esi
	jle	L631
	movl	(%edi), %edi
	testl	%edi, %edi
	jle	L631
	sall	$2, %eax
	movl	%edx, 28(%esp)
	movl	32(%esp), %ecx
	xorl	%ebp, %ebp
	movl	%eax, 16(%esp)
	leal	24(%ebx), %eax
	movl	%eax, 24(%esp)
	.p2align 4
	.p2align 3
L629:
	movl	24(%esp), %eax
	xorl	%edx, %edx
	leal	(%eax,%ebp), %ebx
	movl	%ebx, 12(%esp)
	.p2align 4
	.p2align 3
L628:
	movl	12(%esp), %eax
	movzbl	(%eax), %eax
	cmpb	$-1, %al
	je	L627
	leal	(%eax,%eax,2), %eax
	movzbl	%al, %eax
	movzbl	_palette+2(%eax), %ebx
	movb	%bl, (%ecx,%edx,4)
	movzbl	_palette+1(%eax), %ebx
	movb	%bl, 1(%ecx,%edx,4)
	movzbl	_palette(%eax), %eax
	movb	$-1, 3(%ecx,%edx,4)
	movb	%al, 2(%ecx,%edx,4)
L627:
	addl	$1, %edx
	addl	%esi, 12(%esp)
	cmpl	%edx, %edi
	jne	L628
	addl	$1, %ebp
	addl	16(%esp), %ecx
	cmpl	%ebp, %esi
	jne	L629
	movl	28(%esp), %edx
L631:
	movl	$2, _gloadtile_willprint
	testl	%edx, %edx
	je	L624
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 68
	subl	$4, %esp
	.cfi_def_cfa_offset 72
	movl	$0, __ZZ36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_E7lastpic
	movl	$0, __ZZ36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_E6lastfn
	movl	$0, __ZZ36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_E8lastsize
L624:
	movl	_gammabrightness, %esi
	movl	$_britable, %edi
	testl	%esi, %esi
	jne	L633
	movl	_curbrightness, %eax
	sall	$8, %eax
	addl	%eax, %edi
L633:
	movl	20(%esp), %eax
	movl	4(%eax), %ebx
	testl	%ebx, %ebx
	jle	L666
	cmpw	$0, 80(%esp)
	jne	L642
	movl	76(%esp), %esi
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	.p2align 4
	.p2align 3
L638:
	movl	20(%esp), %eax
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	jle	L636
	movl	32(%esp), %eax
	movl	%ebx, 24(%esp)
	movl	%edx, 28(%esp)
	movl	%esi, 76(%esp)
	leal	(%eax,%edx,4), %eax
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L637:
	movzbl	2(%eax), %edx
	movl	88(%esp), %ebp
	movzbl	(%edi,%edx), %ebx
	movzbl	1(%eax), %edx
	movb	%bl, 16(%esp)
	movzbl	(%edi,%edx), %ebx
	movzbl	(%eax), %edx
	movzbl	(%edi,%edx), %edx
	movb	%dl, 12(%esp)
	movzbl	3(%eax), %edx
	andb	%dl, 0(%ebp)
	leal	-1(%edx), %ebp
	movl	%ebp, %ecx
	movl	76(%esp), %ebp
	cmpb	$-3, %cl
	seta	%cl
	andb	%cl, 0(%ebp)
	movzbl	12(%esp), %ecx
	addl	$1, %esi
	movb	%bl, 1(%eax)
	movzbl	16(%esp), %ebx
	addl	$4, %eax
	movb	%cl, -4(%eax)
	movl	20(%esp), %ecx
	movb	%bl, -2(%eax)
	movb	%dl, -1(%eax)
	cmpl	%esi, (%ecx)
	jg	L637
	movl	24(%esp), %ebx
	movl	28(%esp), %edx
	movl	%ebp, %esi
L636:
	movl	72(%esp), %eax
	addl	$1, %ebx
	addl	(%eax), %edx
	movl	20(%esp), %eax
	cmpl	4(%eax), %ebx
	jl	L638
L666:
	movl	64(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L619
L625:
	.cfi_restore_state
	movl	72(%esp), %ecx
	movl	4(%ecx), %edx
	movl	32(%esp), %ecx
	movl	%eax, 4(%esp)
	movl	%ebx, %eax
	movl	%esi, (%esp)
	movl	%edx, 8(%esp)
	movl	%edi, %edx
	call	_kprender
	testl	%eax, %eax
	jne	L630
	movl	__ZZ36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_E7lastpic, %edx
	jmp	L631
L642:
	movzbl	84(%esp), %esi
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	movl	%esi, 28(%esp)
	.p2align 4
	.p2align 3
L635:
	movl	20(%esp), %esi
	movl	(%esi), %edx
	testl	%edx, %edx
	jle	L639
	movl	32(%esp), %esi
	movl	$0, 12(%esp)
	movl	%eax, 36(%esp)
	movl	%ebp, 40(%esp)
	leal	(%esi,%ebp,4), %ebx
	.p2align 4
	.p2align 3
L640:
	movzbl	2(%ebx), %eax
	movzbl	1(%ebx), %edx
	movzbl	3(%ebx), %esi
	movzbl	(%ebx), %ecx
	movzbl	(%edi,%eax), %eax
	movl	88(%esp), %ebp
	movzbl	(%edi,%ecx), %ecx
	movb	%al, 16(%esp)
	movzbl	(%edi,%edx), %eax
	movl	76(%esp), %edx
	movb	%cl, 48(%esp)
	movb	%al, 24(%esp)
	movl	%esi, %eax
	andb	%al, 0(%ebp)
	leal	-1(%esi), %ebp
	movl	%ebp, %eax
	cmpb	$-3, %al
	seta	%al
	andb	%al, (%edx)
	movzbl	24(%esp), %eax
	xorl	%ecx, %ecx
	movl	28(%esp), %edx
	addl	$4, %ebx
	movb	%al, 49(%esp)
	movzbl	16(%esp), %eax
	movb	%al, 50(%esp)
	movl	%esi, %eax
	movb	%al, 51(%esp)
	leal	48(%esp), %eax
	call	_hictinting_applypixcolor
	movzbl	48(%esp), %eax
	addl	$1, 12(%esp)
	movb	%al, -4(%ebx)
	movzbl	49(%esp), %eax
	movb	%al, -3(%ebx)
	movzbl	50(%esp), %eax
	movb	%al, -2(%ebx)
	movl	%esi, %eax
	movl	20(%esp), %esi
	movb	%al, -1(%ebx)
	movl	12(%esp), %eax
	cmpl	(%esi), %eax
	jl	L640
	movl	36(%esp), %eax
	movl	40(%esp), %ebp
L639:
	movl	72(%esp), %esi
	addl	$1, %eax
	addl	(%esi), %ebp
	movl	20(%esp), %esi
	cmpl	4(%esi), %eax
	jl	L635
	movl	64(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L619
L668:
	.cfi_restore_state
	movl	72(%esp), %eax
	movl	72(%esp), %edi
	movl	$1, _gloadtile_willprint
	movl	(%eax), %eax
	imull	4(%edi), %eax
	movl	%edx, 4(%esp)
	sall	$2, %eax
	movl	%eax, 8(%esp)
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	jmp	L624
L621:
	movl	%esi, %eax
	call	__Z13handle_memerri
L665:
	movl	64(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L620
L630:
	.cfi_restore_state
	movl	32(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 68
	subl	$4, %esp
	.cfi_def_cfa_offset 72
	movl	64(%esp), %ebp
	.cfi_restore 5
	jmp	L620
	.cfi_endproc
LFE20:
	.section .rdata,"dr"
LC9:
	.ascii "\0"
LC10:
	.ascii "File %s not found.\0"
LC11:
	.ascii "source/build/src/polymost.cpp\0"
	.align 4
LC14:
	.ascii "Load tile %4d: p%d-m%d-e%d %s... cached... %d ms\0"
LC15:
	.ascii "Cached %s\0"
	.align 4
LC16:
	.ascii "Load tile %4d: p%d-m%d-e%d %s... %d ms\0"
	.text
	.p2align 4
	.globl	__Z12gloadtile_hiiiiP10hicreplc_tiP8pthtyp_tit
	.def	__Z12gloadtile_hiiiiP10hicreplc_tiP8pthtyp_tit;	.scl	2;	.type	32;	.endef
__Z12gloadtile_hiiiiP10hicreplc_tiP8pthtyp_tit:
LFB23:
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
	subl	$428, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	4(%edi), %ebx
	movl	(%edi), %esi
	movl	%ebx, -340(%ebp)
	movl	8(%edi), %ebx
	movl	%esi, -328(%ebp)
	movl	%ebx, -332(%ebp)
	movzwl	16(%edi), %ebx
	movw	%bx, -356(%ebp)
	testl	%ecx, %ecx
	jle	L670
	movl	8(%esi), %ebx
	testl	%ebx, %ebx
	je	L671
	cmpl	$6, %ecx
	jg	L671
	movl	-4(%ebx,%ecx,4), %esi
	movl	%esi, -344(%ebp)
	testl	%esi, %esi
	je	L671
L672:
	movl	%eax, -352(%ebp)
	movl	-344(%ebp), %eax
	movl	%edx, -364(%ebp)
	xorl	%edx, %edx
	movl	%ecx, -348(%ebp)
	movl	%edi, -368(%ebp)
	call	_kopen4load.part.0
	movl	%eax, %ebx
	cmpl	$-1, %eax
	je	L799
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	movl	%eax, %esi
	movl	%ebx, %eax
	call	_kclose
	leal	-272(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	-272(%ebp), %eax
	movl	-364(%ebp), %ecx
	movb	$1, -321(%ebp)
	movl	%eax, -372(%ebp)
	movl	-268(%ebp), %eax
	sall	$8, %ecx
	addl	%esi, %ecx
	movl	%eax, -376(%ebp)
	movl	-356(%ebp), %eax
	andl	$199, %eax
	movl	%eax, 4(%esp)
	movl	-340(%ebp), %edi
	movl	%edi, %eax
	andl	$-3, %edi
	sarl	%eax
	andl	$1, %eax
	orl	%edi, %eax
	movl	%eax, (%esp)
	movl	-344(%ebp), %edx
	leal	-272(%ebp), %eax
	call	_texcache_calcid.isra.0
	call	_texcache_enabled
	testl	%eax, %eax
	jne	L677
	movl	$0, -320(%ebp)
	movl	-328(%ebp), %eax
	movl	$0, -316(%ebp)
	testb	$64, 33(%eax)
	je	L679
	testb	$2, -339(%ebp)
	je	L679
L681:
	movl	$0, -300(%ebp)
	movl	-344(%ebp), %eax
	call	_kpzbufload
	testl	%eax, %eax
	jne	L800
L671:
	movl	$-1, %eax
	jmp	L669
	.p2align 4,,10
	.p2align 3
L677:
	xorl	%ecx, %ecx
	leal	-292(%ebp), %edx
	leal	-272(%ebp), %eax
	call	_texcache_readtexheader.part.0
	movl	$0, -320(%ebp)
	movl	$0, -316(%ebp)
	movl	%eax, %edi
	movl	-328(%ebp), %eax
	testb	$64, 33(%eax)
	je	L680
	testb	$2, -339(%ebp)
	jne	L681
L680:
	testl	%edi, %edi
	je	L679
	movl	-368(%ebp), %eax
	movl	-332(%ebp), %ecx
	leal	12(%eax), %edx
	leal	-292(%ebp), %eax
	call	_texcache_loadtile
	movl	%eax, -360(%ebp)
	testl	%eax, %eax
	je	L801
L679:
	leal	-300(%ebp), %eax
	leal	-320(%ebp), %ecx
	movl	%esi, %edx
	movb	$-1, -300(%ebp)
	movl	$0, -312(%ebp)
	movl	$0, -308(%ebp)
	movl	%eax, 16(%esp)
	movl	-364(%ebp), %eax
	movl	%eax, 12(%esp)
	movzwl	-356(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-321(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-312(%ebp), %eax
	movl	%eax, (%esp)
	movl	-344(%ebp), %eax
	call	__Z36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_.constprop.0
	movl	%eax, -380(%ebp)
	testl	%eax, %eax
	je	L671
	movl	-312(%ebp), %eax
	cmpb	$-1, -300(%ebp)
	setne	-336(%ebp)
	movlps	-312(%ebp), %xmm3
	movl	%eax, -360(%ebp)
	movl	-308(%ebp), %eax
	movlps	%xmm3, -400(%ebp)
	movl	%eax, -384(%ebp)
	movzbl	-336(%ebp), %eax
	movb	%al, -392(%ebp)
	andb	-321(%ebp), %al
	movb	%al, -388(%ebp)
	movb	%al, -321(%ebp)
	testb	$4, -340(%ebp)
	je	L752
	movl	-348(%ebp), %eax
	testl	%eax, %eax
	je	L705
L752:
	movl	-320(%ebp), %edx
	movl	-360(%ebp), %edi
	movl	-316(%ebp), %eax
	cmpl	%edi, %edx
	jge	L708
	testl	%eax, %eax
	jle	L708
	leal	0(,%edi,4), %esi
	movl	-380(%ebp), %ebx
	xorl	%edi, %edi
	jmp	L709
	.p2align 4,,10
	.p2align 3
L802:
	movl	-320(%ebp), %edx
	addl	%esi, %ebx
L709:
	movl	-360(%ebp), %eax
	leal	(%ebx,%edx,4), %ecx
	movl	%ebx, 4(%esp)
	addl	$1, %edi
	movl	%ecx, (%esp)
	subl	%edx, %eax
	sall	$2, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	-316(%ebp), %eax
	cmpl	%edi, %eax
	jg	L802
L708:
	cmpl	%eax, -384(%ebp)
	jg	L803
L705:
	testb	$1, _glinfo+28
	jne	L711
	movl	-384(%ebp), %esi
	imull	-360(%ebp), %esi
	testl	%esi, %esi
	jle	L711
	movl	-380(%ebp), %eax
	xorl	%edx, %edx
	.p2align 4
	.p2align 3
L713:
	leal	2(%eax), %ebx
/APP
 # 2584 "source/build/src/polymost.cpp" 1
	movb (%eax), %cl; movb (%ebx), %ch; movb %cl, (%ebx); movb %ch, (%eax)
 # 0 "" 2
/NO_APP
	addl	$1, %edx
	addl	$4, %eax
	cmpl	%edx, %esi
	jne	L713
	movzbl	-321(%ebp), %eax
	movb	%al, -388(%ebp)
L711:
	movl	-352(%ebp), %edi
	movl	_r_downsize, %ecx
	movl	-320(%ebp), %eax
	movswl	_tilesiz(,%edi,4), %edx
	sarl	%cl, %eax
	cmpl	%edx, %eax
	jg	L804
L714:
	movl	-328(%ebp), %eax
	orb	$32, 33(%eax)
L715:
	movl	-368(%ebp), %eax
	movl	-332(%ebp), %edi
	movl	12(%eax), %ebx
	movl	%ebx, %eax
	andl	$3, %eax
	cmpl	$1, %eax
	je	L805
	movl	12(%edi), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movlps	-400(%ebp), %xmm4
	movl	-340(%ebp), %eax
	movlps	%xmm4, -312(%ebp)
	movl	%eax, 8(%esp)
	movl	-400(%ebp), %eax
	movl	-396(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	-380(%ebp), %eax
	movl	-320(%ebp), %edx
	movl	-316(%ebp), %ecx
	call	__ZL15fixtransparencyP7coltype4vec2IiES2_i.lto_priv.0
	movzbl	_glinfo+28, %eax
	andl	$1, %eax
	cmpb	$1, %al
	sbbl	%esi, %esi
	andl	$-26585, %esi
	addl	$32993, %esi
	testl	%ebx, %ebx
	jne	L717
	cmpb	$0, _glinfo+29
	js	L719
	movl	24(%edi), %edx
	movl	$1, %eax
	cmpl	$1, %edx
	jle	L720
	.p2align 3
	.p2align 4
	.p2align 3
L721:
	addl	%eax, %eax
	cmpl	%edx, %eax
	jl	L721
L720:
	movl	-332(%ebp), %edi
	movl	$1, %edx
	movl	28(%edi), %ecx
	cmpl	$1, %ecx
	jle	L722
	.p2align 3
	.p2align 4
	.p2align 3
L723:
	addl	%edx, %edx
	cmpl	%ecx, %edx
	jl	L723
L722:
	movl	$1, %ebx
	cmpl	-360(%ebp), %eax
	jl	L717
	xorl	%ebx, %ebx
	cmpl	%edx, -384(%ebp)
	setg	%bl
L717:
	movl	-328(%ebp), %eax
	movzbl	-388(%ebp), %edx
	movzbl	33(%eax), %ecx
	movzbl	-336(%ebp), %eax
	sall	$17, %edx
	movl	%ecx, %edi
	sall	$16, %eax
	sall	$8, %edi
	orl	%eax, %edx
	orl	-340(%ebp), %edx
	movl	%edi, %eax
	movl	%ecx, %edi
	sall	$13, %ecx
	andl	$4096, %eax
	sall	$15, %edi
	andl	$262144, %ecx
	orl	%eax, %edx
	movzwl	%di, %eax
	orl	%edx, %eax
	orl	%ecx, %eax
	orb	$96, %ah
	movl	%eax, 16(%esp)
	movl	-320(%ebp), %edx
	movl	%ebx, %eax
	movl	-316(%ebp), %ecx
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	-380(%ebp), %edi
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	movl	-312(%ebp), %edx
	movl	-308(%ebp), %ecx
	call	__Z13uploadtexturei4vec2IiEiP7coltypeS0_i
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movzbl	-336(%ebp), %eax
	movzwl	-388(%ebp), %edx
	subl	$4, %esp
	movb	$0, -380(%ebp)
	sall	$3, %eax
	sall	$10, %edx
	orl	%eax, %edx
	xorl	%eax, %eax
	movw	%dx, -336(%ebp)
	movw	%ax, -368(%ebp)
L704:
	movl	-320(%ebp), %ebx
	movl	-316(%ebp), %esi
	xorl	%edi, %edi
L687:
	movl	-376(%ebp), %eax
	movl	$1000, %edx
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	imull	$1000, -372(%ebp), %edx
	cvtsi2ssl	%ebx, %xmm1
	cvtsi2ssl	%esi, %xmm0
	addl	%edx, %eax
	movl	%eax, -372(%ebp)
	movl	-348(%ebp), %eax
	testl	%eax, %eax
	jle	L724
	movss	LC13, %xmm2
	mulss	%xmm2, %xmm1
	mulss	%xmm2, %xmm0
L725:
	movl	-332(%ebp), %eax
	movss	%xmm1, 16(%eax)
	movss	%xmm0, 20(%eax)
	cmpb	$0, -380(%ebp)
	jne	L726
	movl	-328(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$2, %eax
	cmpb	$1, %al
	movl	-340(%ebp), %eax
	sbbl	%edx, %edx
	orl	$5, %edx
	call	__ZL21polymost_setuptextureii
	movl	-320(%ebp), %ebx
L726:
	movl	_r_downsize, %ecx
	movl	%ebx, %esi
	sarl	%cl, %esi
	movl	%esi, -376(%ebp)
	movl	%esi, %edx
	movl	-352(%ebp), %esi
	movswl	_tilesiz(,%esi,4), %eax
	cmpl	%eax, %edx
	jle	L728
	movl	-316(%ebp), %eax
	movswl	_tilesiz+2(,%esi,4), %edx
	sarl	%cl, %eax
	cmpl	%edx, %eax
	jg	L729
L728:
	movl	-328(%ebp), %eax
	orb	$32, 33(%eax)
L729:
	movl	-332(%ebp), %edx
	movzwl	-352(%ebp), %eax
	movl	-348(%ebp), %esi
	movw	%ax, 32(%edx)
	movzwl	-356(%ebp), %eax
	movw	%ax, 36(%edx)
	movl	-340(%ebp), %eax
	notl	%eax
	movl	%eax, %edx
	sall	$7, %eax
	sall	$8, %edx
	andl	%eax, %edx
	movl	-340(%ebp), %eax
	andw	$256, %dx
	sarl	$2, %eax
	andl	$1, %eax
	orw	-336(%ebp), %ax
	orl	%edx, %eax
	xorl	%edx, %edx
	testl	%esi, %esi
	movl	-328(%ebp), %esi
	setg	%dl
	sall	$2, %edx
	orl	%edx, %eax
	movzbl	33(%esi), %edx
	sall	$5, %edx
	andl	$64, %edx
	orl	%edx, %eax
	movl	-332(%ebp), %edx
	orl	$2, %eax
	orw	-368(%ebp), %ax
	movw	%ax, 34(%edx)
	movzbl	-348(%ebp), %eax
	movl	%esi, 8(%edx)
	movl	%edx, %esi
	movb	%al, 40(%edx)
	movl	-320(%ebp), %eax
	movl	-316(%ebp), %edx
	movl	%eax, 24(%esi)
	movl	%edx, 28(%esi)
	testl	%edi, %edi
	jne	L730
	testb	$64, _glinfo+29
	je	L730
	movl	_glusetexcache, %eax
	testl	%eax, %eax
	je	L730
	movl	-328(%ebp), %esi
	movzbl	33(%esi), %edx
	testb	$1, %dl
	jne	L730
	movl	_glusetexcompr, %eax
	cmpl	$2, %eax
	je	L731
	testl	%eax, %eax
	je	L730
	testb	$32, %dl
	jne	L730
L731:
	movl	-360(%ebp), %esi
	cmpl	$1, %esi
	jle	L732
	leal	-1(%esi), %eax
	movl	$1, %edi
	testl	%eax, %esi
	jne	L733
L732:
	movl	-384(%ebp), %eax
	xorl	%edi, %edi
	cmpl	$1, %eax
	jle	L733
	movl	%eax, %edi
	leal	-1(%eax), %eax
	testl	%eax, %edi
	setne	%al
	movzbl	%al, %eax
	movl	%eax, %edi
L733:
	andl	$48, %edx
	movl	$0, %eax
	cmove	-376(%ebp), %ebx
	cmovne	%eax, %ecx
	movl	-316(%ebp), %eax
	movl	%ebx, -288(%ebp)
	sarl	%cl, %eax
	testb	%dl, %dl
	movl	%ecx, -276(%ebp)
	setne	%dl
	movl	%eax, -284(%ebp)
	movzbl	-392(%ebp), %eax
	movzbl	%dl, %edx
	addl	%eax, %eax
	sall	$3, %edx
	orl	%eax, %edx
	leal	-272(%ebp), %eax
	orl	%edi, %edx
	movl	%edx, -280(%ebp)
	leal	-292(%ebp), %edx
	call	_texcache_writetex_fromdriver
	movl	_gloadtile_willprint, %eax
	testl	%eax, %eax
	je	L735
	leal	-300(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	$1000, %eax
	imull	-296(%ebp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	%eax, %edx
	imull	$1000, -300(%ebp), %eax
	addl	%edx, %eax
	subl	-372(%ebp), %eax
	cmpl	$9, %eax
	jg	L806
L736:
	movl	$0, _gloadtile_willprint
	xorl	%eax, %eax
	jmp	L669
L735:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L669
	movl	-344(%ebp), %eax
	movl	$LC15, 12(%esp)
	movl	$2680, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC11, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	.p2align 4
	.p2align 3
L730:
	movl	_gloadtile_willprint, %eax
	testl	%eax, %eax
	jne	L807
L669:
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
L670:
	.cfi_restore_state
	movl	-328(%ebp), %esi
	movl	4(%esi), %esi
	movl	%esi, -344(%ebp)
	testl	%esi, %esi
	jne	L672
	jmp	L671
	.p2align 4,,10
	.p2align 3
L724:
	movl	-352(%ebp), %ecx
	xorps	%xmm2, %xmm2
	movswl	_tilesiz(,%ecx,4), %eax
	cvtsi2ssl	%eax, %xmm2
	movswl	_tilesiz+2(,%ecx,4), %eax
	divss	%xmm2, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm0
	jmp	L725
	.p2align 4,,10
	.p2align 3
L807:
	leal	-300(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	$1000, %eax
	imull	-296(%ebp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	%eax, %edx
	imull	$1000, -300(%ebp), %eax
	addl	%edx, %eax
	subl	-372(%ebp), %eax
	cmpl	$9, %eax
	jg	L808
L738:
	xorl	%eax, %eax
L811:
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
L804:
	.cfi_restore_state
	movl	-316(%ebp), %eax
	movswl	_tilesiz+2(,%edi,4), %edx
	sarl	%cl, %eax
	cmpl	%edx, %eax
	jg	L715
	jmp	L714
	.p2align 4,,10
	.p2align 3
L800:
	leal	-300(%ebp), %eax
	leal	-312(%ebp), %ecx
	movl	$0, -312(%ebp)
	movl	$0, -308(%ebp)
	leal	-320(%ebp), %edx
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__ZL26gloadtile_mdloadskin_checkPciP4vec2IiES2_Pi.part.0.lto_priv.0
	movb	%al, -380(%ebp)
	testb	%al, %al
	je	L671
	movl	-316(%ebp), %edi
	movl	-320(%ebp), %ebx
	movl	-312(%ebp), %eax
	imull	%edi, %ebx
	movl	%eax, -360(%ebp)
	movl	-308(%ebp), %eax
	movl	%eax, -384(%ebp)
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -388(%ebp)
	testl	%eax, %eax
	je	L688
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-300(%ebp), %ecx
	movl	-320(%ebp), %ebx
	movl	-316(%ebp), %eax
	testl	%ecx, %ecx
	je	L809
	imull	%eax, %ebx
	movl	_kpzbuf, %eax
	addl	$24, %eax
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-388(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
L691:
	movl	-368(%ebp), %eax
	movl	$2, _gloadtile_willprint
	movl	12(%eax), %ebx
	movl	%ebx, %eax
	andl	$3, %eax
	cmpl	$1, %eax
	je	L810
	movl	-332(%ebp), %eax
	movl	12(%eax), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	testl	%ebx, %ebx
	jne	L701
	movl	-332(%ebp), %eax
	movl	-360(%ebp), %edi
	cmpl	%edi, 24(%eax)
	jne	L741
	movl	-384(%ebp), %edi
	cmpl	%edi, 28(%eax)
	jne	L741
L703:
	movl	-388(%ebp), %edi
	xorl	%ecx, %ecx
	movl	%edi, 8(%esp)
	movl	-320(%ebp), %eax
	movl	-316(%ebp), %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	movl	%edx, 4(%esp)
	xorl	%edx, %edx
	call	__Z20uploadtextureindexedi4vec2IiES0_i
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	$512, %eax
	subl	$4, %esp
	movw	%ax, -368(%ebp)
	movl	$1032, %eax
	movw	%ax, -336(%ebp)
	movb	$1, -392(%ebp)
	jmp	L704
	.p2align 4,,10
	.p2align 3
L801:
	movzbl	-280(%ebp), %eax
	movl	-288(%ebp), %ebx
	movl	$0, -384(%ebp)
	movl	-284(%ebp), %esi
	movb	$0, -380(%ebp)
	shrb	%al
	movl	%ebx, -320(%ebp)
	movl	%eax, %ecx
	andl	$1, %eax
	movl	%esi, -316(%ebp)
	sall	$3, %eax
	andl	$1, %ecx
	orb	$4, %ah
	movb	%cl, -392(%ebp)
	movw	%ax, -336(%ebp)
	xorl	%eax, %eax
	movw	%ax, -368(%ebp)
	jmp	L687
	.p2align 4,,10
	.p2align 3
L808:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L738
	cmpl	$2, _gloadtile_willprint
	movl	$LC9, %edx
	cmove	-344(%ebp), %edx
	movl	%eax, 36(%esp)
	movl	%edx, 32(%esp)
	movzwl	-356(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-340(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-364(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-352(%ebp), %eax
	movl	$LC16, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2688, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	xorl	%eax, %eax
	jmp	L811
	.p2align 4,,10
	.p2align 3
L803:
	movl	-360(%ebp), %edi
	movl	-380(%ebp), %esi
	movl	%edi, %edx
	imull	%eax, %edx
	leal	(%esi,%edx,4), %ecx
	movl	-384(%ebp), %edx
	movl	%esi, 4(%esp)
	movl	%ecx, (%esp)
	subl	%eax, %edx
	imull	%edi, %edx
	sall	$2, %edx
	movl	%edx, 8(%esp)
	call	_memcpy
	jmp	L705
	.p2align 4,,10
	.p2align 3
L805:
	leal	12(%edi), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glGenTextures
	movl	12(%edi), %eax
	subl	$8, %esp
	call	__Z19buildgl_bindTexturejj.constprop.0
	movlps	-400(%ebp), %xmm5
	movl	-340(%ebp), %eax
	movlps	%xmm5, -312(%ebp)
	movl	%eax, 8(%esp)
	movl	-400(%ebp), %eax
	movl	-396(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	-380(%ebp), %eax
	movl	-320(%ebp), %edx
	movl	-316(%ebp), %ecx
	call	__ZL15fixtransparencyP7coltype4vec2IiES2_i.lto_priv.0
	movzbl	_glinfo+28, %eax
	andl	$1, %eax
	cmpb	$1, %al
	sbbl	%esi, %esi
	andl	$-26585, %esi
	addl	$32993, %esi
	jmp	L717
	.p2align 4,,10
	.p2align 3
L809:
	sall	$2, %ebx
	imull	%ebx, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, %edi
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -392(%ebp)
	testl	%eax, %eax
	je	L692
	movl	%edi, 8(%esp)
	movl	%eax, %edi
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-316(%ebp), %eax
	movl	%edi, %ecx
	movl	%esi, %edx
	movl	%eax, 8(%esp)
	movl	-320(%ebp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	movl	_kpzbuf, %eax
	call	_kprender
	testl	%eax, %eax
	jne	L812
	movl	$16384, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL15colmatchresults.lto_priv.0, (%esp)
	call	_memset
	movl	-316(%ebp), %edx
	movl	$0, __ZL18numcolmatchresults.lto_priv.0
	testl	%edx, %edx
	jle	L695
	movss	LC12, %xmm0
	movl	-328(%ebp), %eax
	movss	20(%eax), %xmm1
	movl	$255, %eax
	mulss	%xmm0, %xmm1
	subss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %edi
	cmpl	%eax, %edi
	cmovg	%eax, %edi
	xorl	%eax, %eax
	testl	%edi, %edi
	cmovns	%edi, %eax
	xorl	%edx, %edx
	movl	%eax, -336(%ebp)
	.p2align 4
	.p2align 3
L699:
	movl	-320(%ebp), %eax
	testl	%eax, %eax
	jle	L696
	imull	%edx, %eax
	movl	-392(%ebp), %edi
	movl	%edx, -400(%ebp)
	xorl	%ebx, %ebx
	leal	(%edi,%eax,4), %esi
	movl	-388(%ebp), %eax
	leal	(%eax,%edx), %edi
	jmp	L698
	.p2align 6
	.p2align 4,,10
	.p2align 3
L697:
	movl	-316(%ebp), %edx
	imull	%ebx, %edx
	addl	$1, %ebx
	movb	%al, (%edi,%edx)
	cmpl	-320(%ebp), %ebx
	jge	L813
L698:
	movzbl	3(%esi,%ebx,4), %edx
	movl	$-1, %eax
	cmpl	%edx, -336(%ebp)
	jg	L697
	movzbl	(%esi,%ebx,4), %ecx
	movzbl	1(%esi,%ebx,4), %edx
	movzbl	2(%esi,%ebx,4), %eax
	movl	$0, 4(%esp)
	movl	$254, (%esp)
	call	_paletteGetClosestColorWithBlacklist
	jmp	L697
	.p2align 4,,10
	.p2align 3
L813:
	movl	-400(%ebp), %edx
L696:
	addl	$1, %edx
	cmpl	-316(%ebp), %edx
	jl	L699
L695:
	movl	-392(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L691
	.p2align 4,,10
	.p2align 3
L810:
	movl	-332(%ebp), %edi
	movl	$1, (%esp)
	leal	12(%edi), %eax
	movl	%eax, 4(%esp)
	call	*_glad_glGenTextures
	movl	12(%edi), %eax
	subl	$8, %esp
	call	__Z19buildgl_bindTexturejj.constprop.0
L701:
	movl	-340(%ebp), %eax
	movl	$-1, %edx
	call	__ZL21polymost_setuptextureii
	jmp	L703
	.p2align 4,,10
	.p2align 3
L741:
	movl	$1, %ebx
	jmp	L703
	.p2align 4,,10
	.p2align 3
L799:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L674
L676:
	movl	$-2, %eax
	jmp	L669
	.p2align 4,,10
	.p2align 3
L719:
	movl	-320(%ebp), %eax
	movl	-316(%ebp), %edx
	jmp	L722
L674:
	movl	-344(%ebp), %eax
	movl	$LC10, 12(%esp)
	movl	$2509, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L676
L688:
	movl	%edi, %eax
	call	__Z13handle_memerri
L812:
	movl	-388(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-392(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L671
L692:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L806:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L736
	cmpl	$2, _gloadtile_willprint
	movl	$LC9, %edx
	cmove	-344(%ebp), %edx
	movl	%eax, 36(%esp)
	movl	%edx, 32(%esp)
	movzwl	-356(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-340(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-364(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-352(%ebp), %eax
	movl	$LC14, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2675, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L736
	.cfi_endproc
LFE23:
	.p2align 4
	.globl	__Z27polymost_setupdetailtextureiii
	.def	__Z27polymost_setupdetailtextureiii;	.scl	2;	.type	32;	.endef
__Z27polymost_setupdetailtextureiii:
LFB33:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	cmpl	_gl+4, %eax
	je	L815
	movl	%eax, _gl+4
	movl	%eax, (%esp)
	call	*_glad_glActiveTexture
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
L815:
	movl	%esi, %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	testb	$8, _glinfo+29
	je	L816
	movl	_r_usesamplerobjects, %eax
	testl	%eax, %eax
	jne	L822
L816:
	movl	$10497, 8(%esp)
	movl	$10242, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	$10497, 8(%esp)
	movl	$10243, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
L817:
	movl	%ebx, (%esp)
	call	*_glad_glClientActiveTexture
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	movl	$32888, (%esp)
	call	*_glad_glEnableClientState
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	addl	$12, %esp
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
L822:
	.cfi_restore_state
	leal	-33984(%ebx), %eax
	movl	%edi, %edx
	call	__Z25buildgl_bindSamplerObjectii
	jmp	L817
	.cfi_endproc
LFE33:
	.globl	__Z25polymost_setupglowtextureiii
	.def	__Z25polymost_setupglowtextureiii;	.scl	2;	.type	32;	.endef
	.set	__Z25polymost_setupglowtextureiii,__Z27polymost_setupdetailtextureiii
	.p2align 4
	.globl	__Z29polymost_spriteIsModelOrVoxelPK11tspritetype
	.def	__Z29polymost_spriteIsModelOrVoxelPK11tspritetype;	.scl	2;	.type	32;	.endef
__Z29polymost_spriteIsModelOrVoxelPK11tspritetype:
LFB36:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, (%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movswl	30(%eax), %eax
	cmpl	$16383, %eax
	ja	L824
	sall	$6, %eax
	addl	_spriteext, %eax
	testb	$1, 12(%eax)
	jne	L836
L824:
	movl	_usemodels, %eax
	movl	%esi, 4(%esp)
	.cfi_offset 6, -16
	movswl	14(%ebx), %esi
	testl	%eax, %eax
	je	L826
	movl	%edi, 8(%esp)
	.cfi_offset 7, -12
	movswl	%si, %edi
	movl	%ebp, 12(%esp)
	.cfi_offset 5, -8
	movl	%edi, %eax
	movzbl	17(%ebx), %ecx
	leal	0(,%edi,4), %edx
	jmp	L827
	.p2align 6
	.p2align 4,,10
	.p2align 3
L829:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %ebp
	cmpb	_tile2model+17(,%ebp,4), %cl
	je	L842
L827:
	addl	%eax, %edx
	movswl	_tile2model+4(,%edx,4), %eax
	cmpl	$-1, %eax
	jne	L829
L828:
	leal	(%edi,%edi,4), %eax
	movl	12(%esp), %ebp
	.cfi_restore 5
	movl	8(%esp), %edi
	.cfi_restore 7
	sall	$2, %eax
	cmpw	$0, _tile2model(%eax)
	js	L826
	cmpw	$0, _tile2model+2(%eax)
	jns	L830
	.p2align 4
	.p2align 3
L826:
	testb	$16, 18(%ebx)
	je	L831
	cmpl	$2047, %esi
	ja	L831
	movl	_voxmodels(,%esi,4), %eax
	testl	%eax, %eax
	je	L862
L838:
	testl	%eax, %eax
	movl	4(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	(%esp), %ebx
	setne	%al
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	movzbl	%al, %eax
	ret
	.p2align 4,,10
	.p2align 3
L831:
	.cfi_restore_state
	movl	_usevoxels, %eax
	testl	%eax, %eax
	je	L857
	movswl	_tiletovox(%esi,%esi), %eax
	cmpl	$2047, %eax
	jbe	L835
	movl	4(%esp), %esi
	.cfi_restore 6
L836:
	xorl	%eax, %eax
L823:
	movl	(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L842:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%eax, %edi
	jmp	L828
	.p2align 4,,10
	.p2align 3
L857:
	.cfi_restore 5
	.cfi_restore 7
	movl	4(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L862:
	.cfi_restore_state
	movl	_usevoxels, %ebx
	testl	%ebx, %ebx
	je	L838
	movswl	_tiletovox(%esi,%esi), %edx
	cmpl	$2047, %edx
	ja	L838
	movl	_voxmodels(,%edx,4), %edx
	testl	%edx, %edx
	je	L838
L830:
	movl	4(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	(%esp), %ebx
	movl	$1, %eax
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L835:
	.cfi_restore_state
	movl	_voxmodels(,%eax,4), %ecx
	xorl	%eax, %eax
	movl	4(%esp), %esi
	.cfi_restore 6
	testl	%ecx, %ecx
	setne	%al
	jmp	L823
	.cfi_endproc
LFE36:
	.p2align 4
	.globl	__Z22polymost_updatePalettev
	.def	__Z22polymost_updatePalettev;	.scl	2;	.type	32;	.endef
__Z22polymost_updatePalettev:
LFB41:
	.cfi_startproc
	cmpl	$3, _rendmode
	je	L878
	ret
	.p2align 4,,10
	.p2align 3
L878:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	subl	$12, %esp
	.cfi_offset 7, -12
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L865
	movl	_globalpal, %eax
	cmpl	__ZZL19polymost_setPalswapjE16lastPalswapIndex, %eax
	je	L868
	movzwl	%ax, %edx
	movl	%eax, __ZZL19polymost_setPalswapjE16lastPalswapIndex
	xorps	%xmm0, %xmm0
	shrl	$16, %eax
	movss	LC21, %xmm3
	cvtsi2ssl	%eax, %xmm0
	xorps	%xmm1, %xmm1
	movss	LC18, %xmm4
	mulss	LC17, %xmm0
	cvtsi2ssl	%edx, %xmm1
	addss	%xmm1, %xmm0
	mulss	__ZL20polymost1PalswapSize.lto_priv.0, %xmm0
	movaps	%xmm0, %xmm2
	movaps	%xmm0, %xmm1
	andps	%xmm3, %xmm2
	ucomiss	%xmm2, %xmm4
	jbe	L867
	cvttss2sil	%xmm0, %eax
	xorps	%xmm2, %xmm2
	andnps	%xmm0, %xmm3
	movss	LC0, %xmm4
	cvtsi2ssl	%eax, %xmm2
	movaps	%xmm2, %xmm1
	cmpnless	%xmm0, %xmm1
	andps	%xmm4, %xmm1
	subss	%xmm1, %xmm2
	orps	%xmm3, %xmm2
	movaps	%xmm2, %xmm1
L867:
	subss	%xmm1, %xmm0
	movl	__ZL22polymost1PalswapPosLoc.lto_priv.0, %eax
	mulss	__ZL20polymost1PalswapSize.lto_priv.0+4, %xmm1
	movss	LC20, %xmm2
	movl	%eax, (%esp)
	addss	%xmm2, %xmm0
	addss	%xmm2, %xmm1
	movss	%xmm0, __ZL19polymost1PalswapPos.lto_priv.0
	movss	%xmm0, 4(%esp)
	movss	%xmm1, __ZL19polymost1PalswapPos.lto_priv.0+4
	movss	%xmm1, 8(%esp)
	call	*_glad_glUniform2f
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	subl	$12, %esp
	cmpl	%eax, _gl
	jne	L865
	cmpl	$3, _rendmode
	je	L868
L870:
	xorl	%eax, %eax
L869:
	cmpl	%eax, __ZZL17polymost_setShadeiE9lastShade
	je	L871
	xorps	%xmm0, %xmm0
	movl	%eax, __ZZL17polymost_setShadeiE9lastShade
	cvtsi2ssl	%eax, %xmm0
	movl	__ZL17polymost1ShadeLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	movss	%xmm0, __ZL14polymost1Shade.lto_priv.0
	movss	%xmm0, 4(%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L871:
	movswl	_numshades, %eax
	cmpl	__ZZL17polymost_setShadeiE13lastNumShades, %eax
	je	L865
	xorps	%xmm1, %xmm1
	movl	%eax, __ZZL17polymost_setShadeiE13lastNumShades
	movss	LC0, %xmm0
	cvtsi2ssl	%eax, %xmm1
	movl	__ZL21polymost1NumShadesLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	divss	%xmm1, %xmm0
	movss	%xmm1, 4(%esp)
	movss	%xmm1, __ZL18polymost1NumShades.lto_priv.0
	movss	%xmm0, __ZL18polymost1NumShades.lto_priv.0+4
	movss	%xmm0, 8(%esp)
	call	*_glad_glUniform2f
	subl	$12, %esp
L865:
	movzbl	_curbasepal, %eax
	cmpl	__ZL11lastbasepal.lto_priv.0, %eax
	jne	L879
L863:
	movl	-4(%ebp), %edi
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L879:
	.cfi_restore_state
	cmpl	$33986, _gl+4
	je	L872
	movl	$33986, _gl+4
	movl	$33986, (%esp)
	call	*_glad_glActiveTexture
	movzbl	_curbasepal, %eax
	subl	$4, %esp
L872:
	movl	__ZL17paletteTextureIDs.lto_priv.0(,%eax,4), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movzbl	_curbasepal, %eax
	movl	%eax, __ZL11lastbasepal.lto_priv.0
	cmpl	$33984, _gl+4
	je	L863
	movl	$33984, _gl+4
	movl	$33984, (%esp)
	call	*_glad_glActiveTexture
	movl	-4(%ebp), %edi
	subl	$4, %esp
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L868:
	.cfi_restore_state
	movl	_r_useindexedcolortextures, %edi
	movl	_globalshade, %eax
	testl	%edi, %edi
	je	L870
	movl	_gltexfiltermode, %ecx
	xorl	%edx, %edx
	testl	%ecx, %ecx
	cmovne	%edx, %eax
	jmp	L869
	.cfi_endproc
LFE41:
	.p2align 4
	.globl	__ZL23polymost_identityrotmatv.lto_priv.0
	.def	__ZL23polymost_identityrotmatv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL23polymost_identityrotmatv.lto_priv.0:
LFB46:
	.cfi_startproc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	je	L886
	ret
	.p2align 4,,10
	.p2align 3
L886:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	subl	$16, %esp
	.cfi_offset 7, -12
	movl	__ZL21polymost1RotMatrixLoc.lto_priv.0, %eax
	movss	LC22, %xmm0
	movups	%xmm0, __ZL18polymost1RotMatrix.lto_priv.0
	movups	LC23, %xmm0
	movl	$__ZL18polymost1RotMatrix.lto_priv.0, 12(%esp)
	movl	$0, 8(%esp)
	movups	%xmm0, __ZL18polymost1RotMatrix.lto_priv.0+16
	movups	LC24, %xmm0
	movl	$1, 4(%esp)
	movups	%xmm0, __ZL18polymost1RotMatrix.lto_priv.0+32
	movups	LC25, %xmm0
	movl	%eax, (%esp)
	movups	%xmm0, __ZL18polymost1RotMatrix.lto_priv.0+48
	call	*_glad_glUniformMatrix4fv
	movl	-4(%ebp), %edi
	subl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE46:
	.section .rdata,"dr"
	.align 4
LC26:
	.ascii "Error 0x%X waiting for OpenGL stream buffer.\0"
	.align 4
LC27:
	.ascii "Unable to set video mode! Please ensure r_persistentStreamBuffer is disabled (= 0) and try restarting the game.\0"
	.align 4
LC28:
	.ascii "Timed out waiting for OpenGL Stream buffer. For performance, try increasing the buffer size with r_drawpolyVertsBufferLength.\0"
	.text
	.p2align 4
	.globl	__Z29polymost_startBufferedDrawingi
	.def	__Z29polymost_startBufferedDrawingi;	.scl	2;	.type	32;	.endef
__Z29polymost_startBufferedDrawingi:
LFB48:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	leal	(%eax,%eax,4), %edx
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	__ZL27drawpolyVertsSubBufferIndex.lto_priv.0, %ecx
	movl	__ZL25drawpolyVertsBufferLength.lto_priv.0, %ebx
	addl	__ZL19drawpolyVertsOffset.lto_priv.0, %edx
	leal	1(%ecx), %eax
	imull	%ebx, %eax
	cmpl	%eax, %edx
	jle	L887
	cmpb	$0, __ZL22persistentStreamBuffer.lto_priv.0
	jne	L918
	leal	(%ebx,%ebx,4), %eax
	movl	$35040, 12(%esp)
	sall	$2, %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$34962, (%esp)
	call	*_glad_glBufferData
	.cfi_def_cfa_offset 16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	$0, __ZL19drawpolyVertsOffset.lto_priv.0
L887:
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L918:
	.cfi_restore_state
	movl	__ZL17drawpolyVertsSync.lto_priv.0(,%ecx,4), %eax
	testl	%eax, %eax
	je	L890
	movl	%ecx, 20(%esp)
	movl	%eax, (%esp)
	call	*_glad_glDeleteSync
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	movl	20(%esp), %ecx
L890:
	movl	%ecx, 20(%esp)
	movl	$0, 4(%esp)
	movl	$37143, (%esp)
	call	*_glad_glFenceSync
	.cfi_def_cfa_offset 24
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	movl	20(%esp), %ecx
	movl	%eax, __ZL17drawpolyVertsSync.lto_priv.0(,%ecx,4)
	movl	__ZL27drawpolyVertsSubBufferIndex.lto_priv.0, %eax
	leal	1(%eax), %ecx
	movl	$1431655766, %eax
	imull	%ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	leal	(%ebx,%ebx,2), %eax
	subl	%eax, %ecx
	movl	__ZL25drawpolyVertsBufferLength.lto_priv.0, %eax
	movl	%ecx, __ZL27drawpolyVertsSubBufferIndex.lto_priv.0
	movl	%ecx, %ebx
	imull	%ecx, %eax
	movl	%eax, __ZL19drawpolyVertsOffset.lto_priv.0
	movl	__ZL17drawpolyVertsSync.lto_priv.0(,%ecx,4), %eax
	testl	%eax, %eax
	je	L887
L891:
	movl	$500000, 8(%esp)
	movl	$0, 12(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glClientWaitSync
	.cfi_def_cfa_offset 16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	cmpl	$37148, %eax
	je	L887
	ja	L892
	cmpl	$37146, %eax
	je	L887
	cmpl	$37147, %eax
	jne	L894
	cmpb	$0, __ZZL25polymost_waitForSubBufferjE14loggedLongWait
	je	L919
L894:
	movl	__ZL17drawpolyVertsSync.lto_priv.0(,%ebx,4), %eax
	jmp	L891
	.p2align 4,,10
	.p2align 3
L892:
	cmpl	$37149, %eax
	jne	L894
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L920
L895:
	movl	_upscalefactor, %edx
	movzbl	_fullscreen, %eax
	movl	$0, _r_persistentStreamBuffer
	movl	_yres, %ecx
	movb	$1, _videomodereset
	movl	%edx, 4(%esp)
	movl	_bpp, %edx
	movb	$0, __ZL12modeschecked.lto_priv.0
	movl	%edx, (%esp)
	movl	_xres, %edx
	call	_videoSetGameMode
	testl	%eax, %eax
	je	L887
	call	__ZN6loguru24current_verbosity_cutoffEv
	cmpl	$-2, %eax
	jge	L921
L896:
	cmpl	$0, _g_sm_heap
	je	L897
	call	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	movl	_g_sm_heap, %eax
	testl	%eax, %eax
	je	L897
	call	__sm_allocator_destroy.part.0.lto_priv.1
L897:
	movl	$1, (%esp)
	call	_exit
	.p2align 4,,10
	.p2align 3
L920:
	call	*_glad_glGetError
	movl	$LC26, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3032, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L895
	.p2align 4,,10
	.p2align 3
L919:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L898
	movl	$LC28, 12(%esp)
	movl	$3047, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L898:
	movb	$1, __ZZL25polymost_waitForSubBufferjE14loggedLongWait
	jmp	L894
L921:
	movl	$LC27, 12(%esp)
	movl	$3037, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L896
	.cfi_endproc
LFE48:
	.p2align 4
	.globl	__Z19polymost_bufferVert4vec3IfE4vec2IfE
	.def	__Z19polymost_bufferVert4vec3IfE4vec2IfE;	.scl	2;	.type	32;	.endef
__Z19polymost_bufferVert4vec3IfE4vec2IfE:
LFB52:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movzbl	__ZL22persistentStreamBuffer.lto_priv.0, %eax
	movl	__ZL16drawpolyVertsCnt, %esi
	negl	%eax
	andl	__ZL19drawpolyVertsOffset.lto_priv.0, %eax
	leal	1(%esi), %edi
	addl	%esi, %eax
	movl	%edi, __ZL16drawpolyVertsCnt
	leal	(%eax,%eax,4), %esi
	movl	__ZL13drawpolyVerts.lto_priv.0, %eax
	movl	%edx, 4(%eax,%esi,4)
	movl	28(%esp), %edx
	movl	%ecx, 8(%eax,%esi,4)
	movl	32(%esp), %ecx
	movl	%ebx, (%eax,%esi,4)
	movl	%edx, 12(%eax,%esi,4)
	movl	%ecx, 16(%eax,%esi,4)
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
LFE52:
	.p2align 4
	.globl	__Z30polymost_finishBufferedDrawingi
	.def	__Z30polymost_finishBufferedDrawingi;	.scl	2;	.type	32;	.endef
__Z30polymost_finishBufferedDrawingi:
LFB53:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	cmpb	$0, __ZL22persistentStreamBuffer.lto_priv.0
	jne	L925
	movl	__ZL13drawpolyVerts.lto_priv.0, %edx
	movl	%eax, 16(%esp)
	movl	$34962, (%esp)
	movl	%edx, 12(%esp)
	movl	__ZL16drawpolyVertsCnt, %edx
	leal	(%edx,%edx,4), %edx
	sall	$2, %edx
	movl	%edx, 8(%esp)
	movl	__ZL19drawpolyVertsOffset.lto_priv.0, %edx
	leal	(%edx,%edx,4), %edx
	sall	$2, %edx
	movl	%edx, 4(%esp)
	call	*_glad_glBufferSubData
	.cfi_def_cfa_offset 8
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	movl	16(%esp), %eax
L925:
	movl	__ZL16drawpolyVertsCnt, %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	__ZL19drawpolyVertsOffset.lto_priv.0, %edx
	movl	%edx, 4(%esp)
	call	*_glad_glDrawArrays
	.cfi_def_cfa_offset 12
	movl	__ZL16drawpolyVertsCnt, %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 24
	addl	%eax, __ZL19drawpolyVertsOffset.lto_priv.0
	movl	$0, __ZL16drawpolyVertsCnt
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE53:
	.section .rdata,"dr"
	.align 4
LC38:
	.ascii "polymost_drawpoly(dpxy:%p, n:%d, method_:%X), method: %X\0"
	.align 4
LC39:
	.ascii "pth==NULL! (bad pal?) pic=%d pal=%d\0"
	.text
	.p2align 4
	.globl	__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0
	.def	__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0:
LFB54:
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
	je	L928
	cmpw	$0, _editstatus
	je	L928
	cmpl	$2, %edx
	jg	L1264
L928:
	cmpl	$-1, -568(%ebp)
	je	L927
	movl	_g_nodraw, %eax
	movl	%eax, -512(%ebp)
	testl	%eax, %eax
	jne	L927
	movswl	_globalpicnum, %edi
	cmpl	$30719, %edi
	ja	L927
	cmpl	$3, -508(%ebp)
	je	L1265
	jle	L927
	movl	-508(%ebp), %ecx
	movl	%edi, -496(%ebp)
	xorl	%eax, %eax
	xorps	%xmm1, %xmm1
	leal	-2(%ecx), %ebx
	leal	-1(%ecx), %edx
	movl	%ecx, %edi
	jmp	L932
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1125:
	movl	%ecx, %eax
L932:
	movss	(%esi,%ebx,8), %xmm0
	subss	(%esi,%eax,8), %xmm0
	leal	1(%eax), %ecx
	movl	%edx, %ebx
	mulss	4(%esi,%edx,8), %xmm0
	movl	%eax, %edx
	addss	%xmm0, %xmm1
	cmpl	%ecx, %edi
	jne	L1125
	xorps	%xmm0, %xmm0
	movl	-496(%ebp), %edi
	comiss	%xmm1, %xmm0
	jnb	L927
L931:
	movl	__ZL13flatskyrender, %eax
	testl	%eax, %eax
	je	L933
	movl	__ZZL17polymost_drawpolyPK4vec2IfEiiE19skyzbufferhack_pass, %eax
	testl	%eax, %eax
	je	L1266
L933:
	movl	_globalpal, %eax
	movl	_palookup(,%eax,4), %ebx
	testl	%ebx, %ebx
	je	L1267
L964:
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
	je	L1268
L965:
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
L966:
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
	jnb	L1294
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
	jl	L966
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
	jmp	L967
	.p2align 4,,10
	.p2align 3
L1269:
	ucomiss	(%ecx,%eax,4), %xmm1
	jp	L1259
	jne	L1259
	cmpl	$2, %eax
	je	L927
L967:
	movl	%eax, %edx
	subl	$1, %eax
	ucomiss	(%ebx,%eax,4), %xmm0
	jp	L1259
	je	L1269
L1259:
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
	movl	$LC38, 4(%esp)
	movl	$3, (%esp)
	call	__Z26buildgl_outputDebugMessagehPKcz.constprop.0
	cmpl	$3, _rendmode
	je	L1270
L974:
	movl	-496(%ebp), %edx
L973:
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
	je	L1271
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %ecx
	testl	%ecx, %ecx
	je	L976
	movswl	-560(%ebp), %eax
	movl	%eax, -628(%ebp)
	movswl	-580(%ebp), %eax
	movl	%eax, -520(%ebp)
L977:
	movl	-632(%ebp), %eax
	testb	$16, 34(%eax)
	je	L979
	movl	_r_fullbrights, %edx
	testl	%edx, %edx
	je	L979
	movl	__ZZL17polymost_drawpolyPK4vec2IfEiiE15fullbright_pass, %eax
	testl	%eax, %eax
	jne	L981
	movl	$1, __ZZL17polymost_drawpolyPK4vec2IfEiiE15fullbright_pass
	.p2align 4
	.p2align 3
L979:
	movl	-632(%ebp), %eax
	cmpl	$3, _rendmode
	je	L1272
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L1261
	movl	_drawingskybox, %ecx
	testl	%ecx, %ecx
	jne	L1261
L1122:
	movss	LC0, %xmm7
	ucomiss	12(%eax), %xmm7
	movss	%xmm7, -560(%ebp)
	jp	L998
	jne	L998
	ucomiss	16(%eax), %xmm7
	jp	L998
	je	L997
L998:
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
L997:
	cmpl	$3, _rendmode
	je	L1273
L1001:
	movl	$33984, -648(%ebp)
L1121:
	movl	_r_detailmapping, %eax
	testl	%eax, %eax
	je	L1003
	movl	_usehightile, %eax
	testl	%eax, %eax
	je	L1018
	movl	_drawingskybox, %eax
	testl	%eax, %eax
	je	L1274
L1005:
	movl	_r_glowmapping, %eax
	testl	%eax, %eax
	je	L1018
L1017:
	movl	_globalclipdist, %eax
	andl	$32, %eax
	orl	_drawingskybox, %eax
	je	L1275
	.p2align 4
	.p2align 3
L1018:
	cmpl	$33984, _gl+4
	je	L1022
	movl	$33984, _gl+4
	movl	$33984, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L1022:
	cmpb	$0, _glinfo+29
	jns	L1023
	cmpl	$2, _r_npotwallmode
	je	L1276
L1023:
	movss	-560(%ebp), %xmm0
	xorps	%xmm1, %xmm1
	xorl	%eax, %eax
	call	__Z22polymost_npotEmulationcff
L1027:
	movl	-632(%ebp), %edx
	movzwl	34(%edx), %eax
	movl	%eax, %ecx
	andw	$2, %cx
	movw	%cx, -528(%ebp)
	je	L1133
	movss	16(%edx), %xmm7
	movl	24(%edx), %ecx
	movss	%xmm7, -504(%ebp)
	movss	20(%edx), %xmm7
	movl	28(%edx), %edx
	movl	%ecx, -628(%ebp)
	movl	%edx, -520(%ebp)
	movss	%xmm7, -580(%ebp)
L1028:
	cmpb	$0, _glinfo+29
	js	L1134
	movl	-628(%ebp), %ecx
	cmpl	$1, %ecx
	jle	L1135
	movl	$1, %edx
	.p2align 3
	.p2align 4
	.p2align 3
L1031:
	addl	%edx, %edx
	cmpl	%ecx, %edx
	jl	L1031
	movl	%edx, -640(%ebp)
L1030:
	movl	-640(%ebp), %ecx
	cmpl	%ecx, -628(%ebp)
	movl	-520(%ebp), %ecx
	setne	-552(%ebp)
	cmpl	$1, %ecx
	jle	L1136
	movl	$1, %edx
	.p2align 3
	.p2align 4
	.p2align 3
L1032:
	addl	%edx, %edx
	cmpl	%ecx, %edx
	jl	L1032
	movl	%edx, -644(%ebp)
L1029:
	movl	-496(%ebp), %ecx
	andl	$3, %ecx
	movl	%ecx, -520(%ebp)
	jne	L1033
	cmpl	$2, __ZZL17polymost_drawpolyPK4vec2IfEiiE15fullbright_pass
	je	L1033
L1034:
	movl	_rendmode, %ecx
	movl	_globalpal, %edx
	movl	%ecx, -496(%ebp)
	movzwl	_hictinting(,%edx,8), %ecx
	movw	%cx, -536(%ebp)
	cmpl	$4, -496(%ebp)
	je	L1277
	testb	$2, %ah
	je	L1045
	cmpl	$3, -496(%ebp)
	jne	L1044
	movl	_r_useindexedcolortextures, %ecx
	testl	%ecx, %ecx
	je	L1046
	movl	_gltexfiltermode, %eax
	testl	%eax, %eax
	je	L1047
L1046:
	movl	_globalshade, %eax
	movl	%eax, -544(%ebp)
L1048:
	movl	_r_usetileshades, %eax
	testl	%eax, %eax
	je	L1039
	testb	$1, _globalflags
	jne	L1039
L1050:
	movl	_usehightile, %eax
	testl	%eax, %eax
	jne	L1053
L1047:
	movss	-560(%ebp), %xmm3
	.p2align 4
	.p2align 3
L1054:
	movzbl	_hictinting+5(,%edx,8), %eax
	xorps	%xmm1, %xmm1
	xorps	%xmm4, %xmm4
	movss	LC40, %xmm2
	movss	-560(%ebp), %xmm7
	cvtsi2ssl	%eax, %xmm1
	movzbl	_hictinting+6(,%edx,8), %eax
	movaps	%xmm7, %xmm0
	cvtsi2ssl	%eax, %xmm4
	movzbl	_hictinting+7(,%edx,8), %eax
	mulss	%xmm2, %xmm1
	mulss	%xmm2, %xmm4
	subss	%xmm1, %xmm0
	mulss	%xmm3, %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm7, %xmm1
	subss	%xmm4, %xmm1
	mulss	%xmm3, %xmm1
	addss	%xmm4, %xmm1
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%eax, %xmm4
	mulss	%xmm2, %xmm4
	subss	%xmm4, %xmm7
	movaps	%xmm7, %xmm2
	mulss	%xmm3, %xmm2
	addss	%xmm4, %xmm2
L1043:
	movl	-520(%ebp), %eax
	movss	-560(%ebp), %xmm5
	subl	$2, %eax
	cmpl	$1, %eax
	ja	L1063
	movzbl	__ZL14drawpoly_blend.lto_priv.0, %ecx
	leal	(%eax,%ecx,2), %eax
	movss	_glblend(,%eax,8), %xmm5
L1063:
	movzwl	-536(%ebp), %ecx
	testb	$-60, %cl
	jne	L1064
	cmpw	$0, -528(%ebp)
	je	L1065
	movl	-632(%ebp), %eax
	movzbl	38(%eax), %eax
	cmpl	%edx, %eax
	jne	L1066
	movl	-632(%ebp), %eax
	andl	$32, %ecx
	movzwl	36(%eax), %eax
	movw	%ax, -496(%ebp)
	andw	$199, %ax
	orw	%cx, %ax
	je	L1068
L1066:
	movzbl	_hictinting+2(,%edx,8), %eax
	xorps	%xmm3, %xmm3
	movss	LC40, %xmm4
	cvtsi2ssl	%eax, %xmm3
	movzbl	_hictinting+3(,%edx,8), %eax
	mulss	%xmm4, %xmm3
	mulss	%xmm3, %xmm0
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	movzbl	_hictinting+4(,%edx,8), %eax
	mulss	%xmm4, %xmm3
	mulss	%xmm3, %xmm1
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	mulss	%xmm4, %xmm3
	mulss	%xmm3, %xmm2
L1068:
	movzbl	_hictinting+2044, %eax
	cmpw	$-1, _hictinting+2042
	je	L1278
L1071:
	movzbl	_hictinting+2042, %edx
	xorps	%xmm3, %xmm3
	movss	LC40, %xmm4
	cvtsi2ssl	%edx, %xmm3
	movzbl	_hictinting+2043, %edx
	mulss	%xmm4, %xmm3
	mulss	%xmm3, %xmm0
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%edx, %xmm3
	mulss	%xmm4, %xmm3
	mulss	%xmm3, %xmm1
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	mulss	%xmm4, %xmm3
	mulss	%xmm3, %xmm2
L1070:
	movss	LC3, %xmm3
	movl	__ZZL17polymost_drawpolyPK4vec2IfEiiE19skyzbufferhack_pass, %ecx
	testl	%ecx, %ecx
	jne	L1072
	movss	-560(%ebp), %xmm3
	subss	__ZL14drawpoly_alpha.lto_priv.0, %xmm3
	mulss	%xmm5, %xmm3
L1072:
	movss	%xmm3, 12(%esp)
	movss	%xmm2, 8(%esp)
	movss	%xmm1, 4(%esp)
	movss	%xmm0, (%esp)
	call	*_glad_glColor4f
	movl	__ZL10pow2xsplit.lto_priv.0, %edx
	subl	$16, %esp
	testl	%edx, %edx
	je	L1073
	cmpb	$0, -552(%ebp)
	je	L1073
	movss	-164(%ebp), %xmm0
	movss	-160(%ebp), %xmm1
	movss	-588(%ebp), %xmm6
	movss	-232(%ebp), %xmm3
	movaps	%xmm0, %xmm5
	subss	%xmm1, %xmm5
	movss	%xmm5, -496(%ebp)
	movss	-592(%ebp), %xmm5
	subss	%xmm5, %xmm1
	movaps	%xmm5, %xmm7
	subss	LC41, %xmm5
	subss	%xmm0, %xmm7
	movss	-88(%ebp), %xmm0
	movss	%xmm1, -500(%ebp)
	movss	-92(%ebp), %xmm1
	movaps	%xmm0, %xmm4
	movss	%xmm5, -652(%ebp)
	movss	-292(%ebp), %xmm5
	movaps	%xmm1, %xmm2
	subss	%xmm1, %xmm4
	subss	%xmm6, %xmm2
	mulss	-500(%ebp), %xmm1
	movss	%xmm4, -596(%ebp)
	movaps	%xmm6, %xmm4
	movss	%xmm2, -616(%ebp)
	movaps	%xmm6, %xmm2
	subss	%xmm0, %xmm4
	subss	LC41, %xmm2
	mulss	%xmm7, %xmm0
	movss	%xmm2, -620(%ebp)
	movss	-496(%ebp), %xmm2
	movss	%xmm4, -612(%ebp)
	mulss	%xmm6, %xmm2
	movaps	%xmm7, %xmm6
	movss	-560(%ebp), %xmm7
	movss	%xmm6, -584(%ebp)
	addss	%xmm2, %xmm1
	movss	-224(%ebp), %xmm2
	addss	%xmm1, %xmm0
	movss	-496(%ebp), %xmm1
	mulss	%xmm3, %xmm1
	divss	%xmm0, %xmm7
	movss	-228(%ebp), %xmm0
	movaps	%xmm1, %xmm4
	movss	-500(%ebp), %xmm1
	mulss	%xmm0, %xmm1
	addss	%xmm4, %xmm1
	movaps	%xmm6, %xmm4
	mulss	%xmm2, %xmm4
	addss	%xmm4, %xmm1
	movaps	%xmm1, %xmm6
	movss	-496(%ebp), %xmm1
	mulss	-296(%ebp), %xmm1
	mulss	%xmm7, %xmm6
	movaps	%xmm1, %xmm4
	movss	-500(%ebp), %xmm1
	movss	%xmm6, -528(%ebp)
	movss	-288(%ebp), %xmm6
	mulss	%xmm5, %xmm1
	addss	%xmm4, %xmm1
	movss	-584(%ebp), %xmm4
	mulss	%xmm6, %xmm4
	addss	%xmm4, %xmm1
	mulss	%xmm7, %xmm1
	mulss	-504(%ebp), %xmm1
	movss	-596(%ebp), %xmm4
	mulss	-612(%ebp), %xmm0
	movl	-640(%ebp), %eax
	mulss	%xmm3, %xmm4
	subl	-628(%ebp), %eax
	movl	-556(%ebp), %edx
	mulss	-612(%ebp), %xmm5
	addss	%xmm4, %xmm0
	movss	-616(%ebp), %xmm4
	mulss	%xmm4, %xmm2
	mulss	%xmm4, %xmm6
	movss	-620(%ebp), %xmm4
	addss	%xmm2, %xmm0
	movaps	%xmm4, %xmm2
	mulss	%xmm7, %xmm0
	movss	%xmm0, -520(%ebp)
	movss	-596(%ebp), %xmm0
	mulss	-296(%ebp), %xmm0
	addss	%xmm0, %xmm5
	addss	%xmm6, %xmm5
	movss	-528(%ebp), %xmm6
	mulss	%xmm6, %xmm2
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
	movss	LC41, %xmm3
	mulss	%xmm2, %xmm3
	mulss	%xmm3, %xmm6
	movss	%xmm3, -604(%ebp)
	movaps	%xmm6, %xmm2
	movaps	%xmm1, %xmm6
	subss	%xmm2, %xmm6
	movss	-520(%ebp), %xmm2
	mulss	%xmm4, %xmm1
	xorps	%xmm4, %xmm4
	mulss	%xmm3, %xmm2
	movss	%xmm6, -544(%ebp)
	movaps	%xmm0, %xmm6
	mulss	%xmm5, %xmm0
	movaps	%xmm4, %xmm5
	subss	%xmm2, %xmm6
	movss	-296(%ebp), %xmm2
	subss	%xmm1, %xmm2
	movss	%xmm6, -552(%ebp)
	subss	%xmm0, %xmm2
	movss	-536(%ebp), %xmm0
	mulss	-504(%ebp), %xmm2
	mulss	%xmm3, %xmm0
	subss	%xmm0, %xmm2
	movss	%xmm2, -512(%ebp)
	.p2align 4
	.p2align 3
L1077:
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
	je	L1141
	comiss	%xmm1, %xmm5
	ja	L1142
	maxss	%xmm4, %xmm1
	movaps	%xmm1, %xmm4
L1075:
	addl	$1, %eax
	cmpl	%eax, -576(%ebp)
	jne	L1077
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
	jl	L1078
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
L1092:
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
	jmp	L1089
	.p2align 4,,10
	.p2align 3
L1280:
	cmpb	-500(%ebp), %bl
	je	L1086
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
	xorps	LC1, %xmm3
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
L1086:
	movl	%edi, %ebx
	cmpb	-556(%ebp), %bl
	je	L1087
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
	xorps	LC1, %xmm2
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
L1087:
	testl	%eax, %eax
	je	L1279
L1144:
	movl	%eax, %edx
	movaps	%xmm0, %xmm3
L1089:
	leal	1(%edx), %eax
	cmpl	%eax, -576(%ebp)
	je	L1143
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
L1079:
	comiss	-496(%ebp), %xmm3
	jb	L1081
	movss	-504(%ebp), %xmm5
	comiss	%xmm3, %xmm5
	jb	L1081
	movss	-96(%ebp,%edx,4), %xmm4
	movss	%xmm4, -296(%ebp,%esi,4)
	movss	-168(%ebp,%edx,4), %xmm4
	movss	%xmm4, -360(%ebp,%esi,4)
	addl	$1, %esi
L1081:
	movss	-496(%ebp), %xmm5
	movss	-504(%ebp), %xmm6
	comiss	%xmm5, %xmm0
	seta	%bl
	comiss	%xmm5, %xmm3
	movl	%ebx, %edi
	seta	-556(%ebp)
	comiss	%xmm6, %xmm0
	seta	%bl
	comiss	%xmm6, %xmm3
	seta	-500(%ebp)
	comiss	%xmm0, %xmm3
	jnb	L1280
	movl	%edi, %ecx
	cmpb	-556(%ebp), %cl
	je	L1088
	movss	-496(%ebp), %xmm7
	movss	-528(%ebp), %xmm3
	movaps	%xmm1, %xmm4
	movss	-544(%ebp), %xmm6
	movss	-552(%ebp), %xmm5
	mulss	%xmm7, %xmm3
	subss	-96(%ebp,%edx,4), %xmm4
	subss	%xmm3, %xmm6
	movss	-520(%ebp), %xmm3
	mulss	%xmm7, %xmm3
	movss	-168(%ebp,%edx,4), %xmm7
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
	xorps	LC1, %xmm3
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
L1088:
	cmpb	-500(%ebp), %bl
	je	L1087
	movss	-528(%ebp), %xmm3
	mulss	-504(%ebp), %xmm3
	movss	-544(%ebp), %xmm7
	movss	-96(%ebp,%edx,4), %xmm5
	movss	-168(%ebp,%edx,4), %xmm6
	subss	%xmm5, %xmm1
	movss	%xmm6, -500(%ebp)
	subss	%xmm3, %xmm7
	movaps	%xmm7, %xmm4
	movss	-520(%ebp), %xmm7
	mulss	-504(%ebp), %xmm7
	movaps	%xmm7, %xmm6
	movss	-552(%ebp), %xmm7
	subss	%xmm6, %xmm7
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
	xorps	LC1, %xmm2
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
	jne	L1144
L1279:
	cmpl	$2, %esi
	jg	L1281
L1090:
	movl	-636(%ebp), %edi
	cmpl	%edi, -624(%ebp)
	jle	L1092
	movl	-656(%ebp), %esi
L1078:
	cmpl	$3, _rendmode
	je	L1094
	movl	-648(%ebp), %eax
	cmpl	$33984, %eax
	je	L1119
	movl	%eax, %ebx
	.p2align 4
	.p2align 3
L1097:
	cmpl	%ebx, _gl+4
	je	L1096
	movl	%ebx, _gl+4
	movl	%ebx, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L1096:
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
	jne	L1097
L1119:
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	testl	%eax, %eax
	jne	L927
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glColorMask
	subl	$16, %esp
	jmp	L927
	.p2align 4,,10
	.p2align 3
L1294:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
L927:
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
L1264:
	.cfi_restore_state
	movl	%esi, %eax
	call	__ZL23polymost_polyeditorfuncPK4vec2IfEi.part.0.lto_priv.0
	jmp	L928
	.p2align 4,,10
	.p2align 3
L1265:
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
	jb	L931
	jmp	L927
	.p2align 4,,10
	.p2align 3
L1268:
	call	_tileLoad
	jmp	L965
	.p2align 4,,10
	.p2align 3
L1267:
	movl	$0, _globalpal
	jmp	L964
	.p2align 4,,10
	.p2align 3
L1270:
	movl	_r_useindexedcolortextures, %edx
	testl	%edx, %edx
	je	L974
	movl	_gltexfiltermode, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	sete	%dl
	sall	$9, %edx
	orl	-496(%ebp), %edx
	jmp	L973
	.p2align 4,,10
	.p2align 3
L1143:
	movss	-584(%ebp), %xmm0
	movss	-592(%ebp), %xmm2
	xorl	%eax, %eax
	movss	-588(%ebp), %xmm1
	jmp	L1079
	.p2align 4,,10
	.p2align 3
L1142:
	movaps	%xmm1, %xmm5
	jmp	L1075
	.p2align 4,,10
	.p2align 3
L1141:
	movaps	%xmm1, %xmm4
	movaps	%xmm1, %xmm5
	movl	$1, %eax
	jmp	L1077
	.p2align 4,,10
	.p2align 3
L1281:
	movl	%esi, %eax
	xorl	%ebx, %ebx
	call	__Z29polymost_startBufferedDrawingi
	xorps	%xmm0, %xmm0
	movss	-560(%ebp), %xmm7
	movl	%esi, -500(%ebp)
	cvtsi2ssl	-640(%ebp), %xmm0
	movl	-600(%ebp), %esi
	movss	LC42, %xmm6
	movaps	%xmm7, %xmm5
	movl	-652(%ebp), %edi
	divss	%xmm0, %xmm5
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-644(%ebp), %xmm0
	divss	%xmm0, %xmm7
	movss	%xmm5, -496(%ebp)
	.p2align 4
	.p2align 3
L1091:
	movss	(%edi,%ebx,4), %xmm1
	movss	(%esi,%ebx,4), %xmm4
	addl	$1, %ebx
	movss	-528(%ebp), %xmm0
	movss	-520(%ebp), %xmm2
	movss	-560(%ebp), %xmm3
	movss	-612(%ebp), %xmm5
	mulss	%xmm1, %xmm0
	mulss	%xmm4, %xmm2
	mulss	%xmm4, %xmm5
	addss	%xmm2, %xmm0
	addss	-536(%ebp), %xmm0
	movss	-552(%ebp), %xmm2
	mulss	%xmm4, %xmm2
	divss	%xmm0, %xmm3
	movss	-544(%ebp), %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	movss	-608(%ebp), %xmm2
	addss	-512(%ebp), %xmm0
	mulss	%xmm1, %xmm2
	subss	_ghalfx, %xmm1
	addss	%xmm5, %xmm2
	addss	-616(%ebp), %xmm2
	mulss	%xmm3, %xmm1
	mulss	_grhalfxdown10x, %xmm1
	mulss	%xmm3, %xmm2
	mulss	%xmm3, %xmm0
	subss	-596(%ebp), %xmm0
	addss	-604(%ebp), %xmm0
	mulss	-496(%ebp), %xmm0
	movss	%xmm1, -488(%ebp)
	movss	_ghalfy, %xmm1
	mulss	%xmm7, %xmm2
	subss	%xmm4, %xmm1
	mulss	%xmm3, %xmm1
	mulss	_grhalfxdown10, %xmm1
	mulss	%xmm6, %xmm3
	movss	%xmm1, -484(%ebp)
	movss	%xmm3, -480(%ebp)
	movss	%xmm0, (%esp)
	movss	%xmm2, 4(%esp)
	movl	-488(%ebp), %eax
	movl	-484(%ebp), %edx
	movl	-480(%ebp), %ecx
	call	__Z19polymost_bufferVert4vec3IfE4vec2IfE
	cmpl	%ebx, -500(%ebp)
	jne	L1091
	movl	$6, %eax
	call	__Z30polymost_finishBufferedDrawingi
	jmp	L1090
	.p2align 4,,10
	.p2align 3
L1044:
	movl	_globalshade, %eax
	movl	%eax, -544(%ebp)
L1039:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-544(%ebp), %xmm0
	mulss	_shadescale, %xmm0
	cmpl	$4, _r_usenewshading
	je	L1282
	movswl	_numshades, %eax
	movl	_shadescale_unbounded, %ecx
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	testl	%ecx, %ecx
	jne	L1060
	cmpl	-544(%ebp), %eax
	jle	L1060
	subl	$1, %eax
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
L1059:
	movaps	%xmm0, %xmm1
	xorps	%xmm4, %xmm4
	cmpnltss	%xmm4, %xmm1
	andps	%xmm0, %xmm1
	minss	%xmm1, %xmm3
	movaps	%xmm3, %xmm0
	movaps	%xmm2, %xmm3
	subss	%xmm0, %xmm3
	divss	%xmm2, %xmm3
	jmp	L1054
	.p2align 4,,10
	.p2align 3
L1033:
	movswl	_globalpicnum, %eax
	movzbl	_alphahackarray(%eax), %eax
	testb	%al, %al
	je	L1035
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	LC40, %xmm0
L1036:
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
	jmp	L1034
	.p2align 4,,10
	.p2align 3
L1073:
	movl	-576(%ebp), %eax
	call	__Z29polymost_startBufferedDrawingi
	xorps	%xmm0, %xmm0
	movss	-560(%ebp), %xmm6
	movl	%esi, -496(%ebp)
	cvtsi2ssl	-640(%ebp), %xmm0
	movl	-512(%ebp), %esi
	movss	LC42, %xmm5
	movaps	%xmm6, %xmm4
	movaps	%xmm6, %xmm3
	divss	%xmm0, %xmm4
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-644(%ebp), %xmm0
	divss	%xmm0, %xmm3
	mulss	-504(%ebp), %xmm4
	mulss	-580(%ebp), %xmm3
	.p2align 4
	.p2align 3
L1093:
	movss	(%ebx,%esi,4), %xmm7
	movl	-500(%ebp), %eax
	movaps	%xmm6, %xmm0
	subss	_ghalfx, %xmm7
	movss	(%edi,%esi,4), %xmm2
	divss	(%eax,%esi,4), %xmm0
	movl	-600(%ebp), %eax
	mulss	%xmm0, %xmm2
	mulss	%xmm0, %xmm7
	movss	(%eax,%esi,4), %xmm1
	movl	-556(%ebp), %eax
	mulss	_grhalfxdown10x, %xmm7
	mulss	%xmm0, %xmm1
	mulss	%xmm4, %xmm2
	movss	%xmm7, -456(%ebp)
	movss	_ghalfy, %xmm7
	subss	(%eax,%esi,4), %xmm7
	addl	$1, %esi
	mulss	%xmm3, %xmm1
	mulss	%xmm0, %xmm7
	mulss	_grhalfxdown10, %xmm7
	mulss	%xmm5, %xmm0
	movss	%xmm7, -452(%ebp)
	movss	%xmm0, -448(%ebp)
	movss	%xmm2, (%esp)
	movss	%xmm1, 4(%esp)
	movl	-456(%ebp), %eax
	movl	-452(%ebp), %edx
	movl	-448(%ebp), %ecx
	call	__Z19polymost_bufferVert4vec3IfE4vec2IfE
	cmpl	%esi, -576(%ebp)
	jne	L1093
	movl	$6, %eax
	movl	-496(%ebp), %esi
	call	__Z30polymost_finishBufferedDrawingi
	jmp	L1078
L1274:
	movswl	_globalpicnum, %eax
	movl	$1, %ecx
	movl	$255, %edx
	movl	%eax, -504(%ebp)
	call	_hicfindsubst
	testl	%eax, %eax
	je	L1005
	movl	-496(%ebp), %edx
	xorl	%ecx, %ecx
	andl	$-4, %edx
	movl	%edx, (%esp)
	movl	-504(%ebp), %eax
	movl	$255, %edx
	call	_texcache_fetch
	movl	%eax, -504(%ebp)
	testl	%eax, %eax
	je	L1003
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L1003
	cmpb	$-1, 32(%eax)
	jne	L1003
	movl	$1, %eax
	call	__Z25polymost_useDetailMappingc
	cmpl	$3, _rendmode
	je	L1130
	addl	$1, -648(%ebp)
	movl	-648(%ebp), %eax
L1007:
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
	je	L1008
	movss	12(%eax), %xmm0
	movss	-560(%ebp), %xmm7
	movss	16(%eax), %xmm1
	ucomiss	%xmm7, %xmm0
	jp	L1009
	jne	L1009
	ucomiss	%xmm7, %xmm1
	jp	L1009
	je	L1008
L1009:
	movss	-560(%ebp), %xmm7
	movss	%xmm1, 4(%esp)
	movss	%xmm0, (%esp)
	movss	%xmm7, 8(%esp)
	call	*_glad_glScalef
	subl	$12, %esp
L1008:
	movl	-504(%ebp), %eax
	movss	-560(%ebp), %xmm7
	movl	8(%eax), %eax
	movss	12(%eax), %xmm0
	movss	16(%eax), %xmm1
	ucomiss	%xmm7, %xmm0
	jp	L1012
	jne	L1012
	ucomiss	%xmm7, %xmm1
	jp	L1012
	je	L1014
L1012:
	movss	-560(%ebp), %xmm7
	movss	%xmm1, 4(%esp)
	movss	%xmm0, (%esp)
	movss	%xmm7, 8(%esp)
	call	*_glad_glScalef
	subl	$12, %esp
L1014:
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	pushl	%edx
	.p2align 4
	.p2align 3
L1003:
	movl	_r_glowmapping, %eax
	testl	%eax, %eax
	je	L1018
	movl	_usehightile, %eax
	testl	%eax, %eax
	jne	L1017
	jmp	L1018
	.p2align 4,,10
	.p2align 3
L1261:
	movss	LC0, %xmm7
	movss	%xmm7, -560(%ebp)
	jmp	L1001
	.p2align 4,,10
	.p2align 3
L976:
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	*_glad_glColorMask
	subl	$16, %esp
	movl	$1, -520(%ebp)
	movl	$1, -628(%ebp)
	jmp	L977
	.p2align 4,,10
	.p2align 3
L1133:
	movss	-560(%ebp), %xmm7
	movss	%xmm7, -580(%ebp)
	movss	%xmm7, -504(%ebp)
	jmp	L1028
	.p2align 4,,10
	.p2align 3
L1064:
	cmpw	$0, -528(%ebp)
	je	L1070
	jmp	L1068
	.p2align 4,,10
	.p2align 3
L1060:
	movaps	%xmm2, %xmm3
	jmp	L1059
	.p2align 4,,10
	.p2align 3
L1134:
	movl	-520(%ebp), %edx
	movb	$0, -552(%ebp)
	movl	%edx, -644(%ebp)
	movl	-628(%ebp), %edx
	movl	%edx, -640(%ebp)
	jmp	L1029
	.p2align 4,,10
	.p2align 3
L1266:
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
L934:
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
	jg	L934
	fstp	%st(0)
	fstp	%st(0)
	xorps	%xmm0, %xmm0
	movl	_pskynummultis, %ebx
	movss	LC29, %xmm1
	cvtsi2ssl	_qglobalang, %xmm0
	movl	_multipsky, %eax
	movl	_multipskytile, %ecx
	leal	-1(%ebx), %edx
	mulss	%xmm1, %xmm0
	movss	%xmm0, -580(%ebp)
	testl	%edx, %edx
	jg	L937
	jmp	L936
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1284:
	subl	$1, %edx
	je	L1283
L937:
	cmpl	(%ecx,%edx,4), %edi
	jne	L1284
L936:
	xorps	%xmm0, %xmm0
	sall	$5, %edx
	xorps	%xmm2, %xmm2
	xorps	%xmm3, %xmm3
	cvtsi2ssl	_qglobalhoriz, %xmm0
	addl	%edx, %eax
	xorps	%xmm7, %xmm7
	movl	_ydimen, %edx
	movsbl	8(%eax), %ebx
	cvtsi2ssl	(%eax), %xmm3
	leal	9(%eax), %esi
	movl	$0, __ZL12skyclamphack.lto_priv.0
	sarl	%edx
	movl	%esi, -608(%ebp)
	movzbl	_picsiz(%edi), %esi
	cvtsi2ssl	%edx, %xmm2
	movl	$1, %edx
	movl	%ebx, -500(%ebp)
	mulss	%xmm1, %xmm0
	movl	%esi, %ecx
	movl	%edx, %ebx
	andl	$15, %ecx
	sall	%cl, %ebx
	movzbl	-500(%ebp), %ecx
	movl	%ebx, -596(%ebp)
	sall	%cl, %ebx
	cvtsi2ssl	%ebx, %xmm7
	subss	%xmm2, %xmm0
	movzwl	_tilesiz+2(,%edi,4), %ebx
	movl	%ebx, %ecx
	mulss	%xmm3, %xmm0
	xorps	%xmm3, %xmm3
	sarw	%cx
	cvtsi2ssl	28(%eax), %xmm3
	movss	%xmm7, -604(%ebp)
	movswl	%cx, %ecx
	movss	LC0, %xmm7
	mulss	LC17, %xmm3
	addl	4(%eax), %ecx
	movl	$2, %eax
	movl	$0, __ZL4xtex.lto_priv.0+16
	movaps	%xmm7, %xmm4
	movl	$0, __ZL4xtex.lto_priv.0+20
	movl	$0, __ZL4xtex.lto_priv.0
	mulss	%xmm1, %xmm0
	movss	LC30, %xmm1
	movl	$0, __ZL4xtex.lto_priv.0+4
	mulss	_fxdimen, %xmm1
	movl	$0, __ZL4ytex.lto_priv.0+8
	divss	%xmm3, %xmm4
	xorps	%xmm3, %xmm3
	movl	$0, __ZL4ytex.lto_priv.0+12
	cvtsi2ssl	%ecx, %xmm3
	movl	%esi, %ecx
	movswl	%bx, %esi
	movl	$0, __ZL4ytex.lto_priv.0
	shrb	$4, %cl
	movss	%xmm7, -560(%ebp)
	addss	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	sall	%cl, %edx
	addss	__ZL13ghorizcorrect.lto_priv.0, %xmm0
	cvtsi2ssl	_xdimscale, %xmm2
	sall	%cl, %eax
	cmpl	%esi, %edx
	movl	$0, __ZL4ytex.lto_priv.0+4
	movss	%xmm1, -496(%ebp)
	mulss	%xmm1, %xmm3
	cmovne	%eax, %esi
	movss	%xmm0, __ZL6ghoriz.lto_priv.0
	mulss	_fviewingrange, %xmm2
	flds	-496(%ebp)
	movl	_xdimscale, %eax
	movl	_viewingrange, %ebx
	imull	_yxaspect
	sarl	$31, %ebx
	fstl	__ZL4otex.lto_priv.0
	mulss	%xmm1, %xmm2
	movl	%eax, -496(%ebp)
	movl	%edx, -492(%ebp)
	movl	%ebx, %edx
	movl	-496(%ebp), %ebx
	movl	-492(%ebp), %ecx
	imull	_viewingrange, %ecx
	imull	%ebx, %edx
	movl	%ebx, %eax
	mulss	%xmm4, %xmm2
	addl	%edx, %ecx
	mull	_viewingrange
	addl	%ecx, %edx
	movl	%eax, -496(%ebp)
	mulss	%xmm2, %xmm0
	movl	%edx, -492(%ebp)
	fildq	-496(%ebp)
	subss	%xmm0, %xmm3
	jns	L939
	fadds	LC31
L939:
	fstpl	-496(%ebp)
	fldl	-496(%ebp)
	fmuls	-604(%ebp)
	movss	%xmm2, -496(%ebp)
	movl	_r_parallaxskypanning, %edx
	fmulp	%st, %st(1)
	fmull	LC32
	fstpl	__ZL4xtex.lto_priv.0+8
	flds	-496(%ebp)
	fstpl	__ZL4ytex.lto_priv.0+16
	testl	%edx, %edx
	je	L940
	mulss	__ZL18global_cf_ypanning, %xmm1
	movaps	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%esi, %xmm1
	mulss	%xmm1, %xmm0
	mulss	LC33, %xmm0
	addss	%xmm0, %xmm3
L940:
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
L943:
	movss	-8(%eax), %xmm1
	subl	$8, %eax
	movaps	%xmm1, %xmm0
	maxss	%xmm2, %xmm1
	minss	%xmm4, %xmm0
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm4
	cmpl	%ecx, %eax
	jne	L943
	movswl	_tilesiz(,%edi,4), %eax
	cmpl	%eax, -596(%ebp)
	movss	%xmm1, -612(%ebp)
	movl	%eax, -616(%ebp)
	setne	%al
	movzbl	%al, %eax
	testl	%edx, %edx
	je	L944
	cvttss2sil	__ZL18global_cf_xpanning, %edx
	orl	%edx, %eax
L944:
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
	movss	LC34, %xmm2
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
L963:
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
	je	L945
	andl	$2047, %eax
	xorps	%xmm1, %xmm1
	subss	-580(%ebp), %xmm0
	cvtsi2ssl	%eax, %xmm1
	mulss	-604(%ebp), %xmm1
	mulss	LC35, %xmm1
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
L946:
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
	movss	LC36, %xmm3
	movl	%eax, -404(%ebp)
	movl	__ZL4ytex.lto_priv.0+8, %eax
	mulss	%xmm5, %xmm3
	movss	%xmm5, -500(%ebp)
	movl	%eax, -400(%ebp)
	movl	__ZL4ytex.lto_priv.0+12, %eax
	movl	%eax, -396(%ebp)
	movl	__ZL4ytex.lto_priv.0+16, %eax
	movss	%xmm3, -496(%ebp)
	movss	LC37, %xmm3
	movl	%eax, -392(%ebp)
	movl	__ZL4ytex.lto_priv.0+20, %eax
	mulss	%xmm5, %xmm3
	movss	LC36, %xmm5
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
	movss	LC37, %xmm5
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
L948:
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
	jne	L948
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
	jmp	L953
	.p2align 4,,10
	.p2align 3
L1286:
	movl	%eax, -496(%ebp)
	movss	(%edi,%eax,8), %xmm2
L949:
	movss	-8(%edi,%eax,8), %xmm1
	comiss	%xmm4, %xmm1
	jb	L950
	movl	-8(%edi,%eax,8), %ebx
	movl	-4(%edi,%eax,8), %esi
	movl	%ebx, -296(%ebp,%ecx,8)
	movl	%esi, -292(%ebp,%ecx,8)
	addl	$1, %ecx
L950:
	comiss	%xmm4, %xmm1
	setnb	%bl
	comiss	%xmm4, %xmm2
	setnb	%dl
	cmpb	%dl, %bl
	je	L952
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
L952:
	cmpl	%eax, -508(%ebp)
	jle	L1285
L953:
	movl	%eax, %edx
	addl	$1, %eax
	cmpl	%edx, -536(%ebp)
	jg	L1286
	movl	$0, -496(%ebp)
	movss	-512(%ebp), %xmm2
	jmp	L949
	.p2align 4,,10
	.p2align 3
L1285:
	movl	-520(%ebp), %ebx
	movss	-528(%ebp), %xmm0
	movss	-568(%ebp), %xmm5
	movl	-576(%ebp), %esi
	testl	%ecx, %ecx
	jle	L1128
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
L959:
	movl	%eax, %ecx
	addl	$1, %eax
	cmpl	%ecx, -520(%ebp)
	movl	$0, %ecx
	movss	-8(%esi,%eax,8), %xmm2
	cmovg	%eax, %ecx
	comiss	%xmm2, %xmm0
	movl	%ecx, -496(%ebp)
	jb	L956
	movl	-8(%esi,%eax,8), %ecx
	movl	-4(%esi,%eax,8), %ebx
	movl	%ecx, -232(%ebp,%edx,8)
	movl	%ebx, -228(%ebp,%edx,8)
	addl	$1, %edx
L956:
	movl	-496(%ebp), %edi
	comiss	%xmm2, %xmm0
	movss	-296(%ebp,%edi,8), %xmm4
	setnb	%bl
	comiss	%xmm4, %xmm0
	movl	%ebx, %ecx
	setnb	%bl
	cmpb	%bl, %cl
	je	L958
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
L958:
	cmpl	%eax, -528(%ebp)
	jne	L959
	movl	-568(%ebp), %ebx
	movss	-576(%ebp), %xmm5
	movl	-588(%ebp), %edi
	testl	%edx, %edx
	jle	L1295
	movss	-544(%ebp), %xmm4
	xorl	%eax, %eax
	leal	-232(%ebp), %ecx
	movss	%xmm0, -520(%ebp)
	.p2align 4
	.p2align 3
L961:
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
	jne	L961
	fstp	%st(0)
	fstp	%st(0)
	movss	-520(%ebp), %xmm0
	jmp	L954
L1295:
	fstp	%st(0)
	fstp	%st(0)
	.p2align 4
	.p2align 3
L954:
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
	js	L962
	movss	-496(%ebp), %xmm0
	movss	_ghalfx, %xmm7
	movss	%xmm0, -588(%ebp)
	jmp	L963
	.p2align 4,,10
	.p2align 3
L945:
	fstp	%st(2)
	fxch	%st(1)
	movss	-580(%ebp), %xmm1
	fld	%st(2)
	subss	%xmm0, %xmm1
	mulss	-604(%ebp), %xmm1
	movss	LC35, %xmm0
	mulss	%xmm1, %xmm0
	addss	-628(%ebp), %xmm0
	movss	%xmm0, -496(%ebp)
	fmuls	-496(%ebp)
	fsub	%st(1), %st
	fxch	%st(1)
	fxch	%st(2)
	fxch	%st(1)
	jmp	L946
	.p2align 4,,10
	.p2align 3
L1128:
	fstp	%st(0)
	fstp	%st(0)
	xorl	%edx, %edx
	jmp	L954
	.p2align 4,,10
	.p2align 3
L962:
	movl	-632(%ebp), %eax
	movzwl	-636(%ebp), %esi
	movl	%eax, _globalclipdist
	xorl	%eax, %eax
	movw	%si, _globalpicnum
	call	__Z17polymost_setClampc
	movl	$1, __ZL13flatskyrender
	jmp	L927
	.p2align 4,,10
	.p2align 3
L1277:
	movl	_pr_artmapping, %eax
	testl	%eax, %eax
	je	L1044
	movl	_gltexfiltermode, %eax
	testl	%eax, %eax
	jne	L1044
	testb	$1, _globalflags
	jne	L1044
	movl	-632(%ebp), %ecx
	movl	8(%ecx), %eax
	testl	%eax, %eax
	jne	L1044
	cmpw	$30463, _globalpicnum
	jg	L1044
	movss	-560(%ebp), %xmm0
	movaps	%xmm0, %xmm2
	movaps	%xmm0, %xmm1
	jmp	L1043
	.p2align 4,,10
	.p2align 3
L1035:
	movl	-632(%ebp), %eax
	xorps	%xmm0, %xmm0
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L1036
	movss	20(%eax), %xmm1
	cmpless	%xmm1, %xmm0
	andps	%xmm1, %xmm0
	jmp	L1036
L1094:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L1098
	xorps	%xmm0, %xmm0
	ucomiss	__ZL25polymost1UseDetailMapping.lto_priv.0, %xmm0
	jp	L1155
	je	L1099
L1155:
	movl	$0x00000000, __ZL25polymost1UseDetailMapping.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL28polymost1UseDetailMappingLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	subl	$8, %esp
	cmpl	%eax, _gl
	jne	L1098
L1099:
	xorps	%xmm0, %xmm0
	ucomiss	__ZL23polymost1UseGlowMapping.lto_priv.0, %xmm0
	jp	L1156
	je	L1098
L1156:
	movl	$0x00000000, __ZL23polymost1UseGlowMapping.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL26polymost1UseGlowMappingLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L1098:
	movss	-560(%ebp), %xmm0
	xorl	%eax, %eax
	xorps	%xmm1, %xmm1
	call	__Z22polymost_npotEmulationcff
	movl	-632(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L1102
	movl	$5890, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glLoadIdentity
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	movl	_r_detailmapping, %eax
	subl	$4, %esp
	testl	%eax, %eax
	je	L1103
	movl	$33987, (%esp)
	call	*_glad_glClientActiveTexture
	subl	$4, %esp
	movl	$32888, (%esp)
	call	*_glad_glDisableClientState
	subl	$4, %esp
L1103:
	movl	_r_glowmapping, %eax
	testl	%eax, %eax
	je	L1104
	movl	$33988, (%esp)
	call	*_glad_glClientActiveTexture
	subl	$4, %esp
	movl	$32888, (%esp)
	call	*_glad_glDisableClientState
	subl	$4, %esp
L1104:
	movl	$33984, (%esp)
	call	*_glad_glClientActiveTexture
	subl	$4, %esp
L1102:
	movl	-632(%ebp), %eax
	testb	$2, 35(%eax)
	je	L1287
	movl	_nofog, %eax
	testl	%eax, %eax
	je	L1288
L1106:
	testb	$8, _glinfo+29
	je	L1109
	movl	_r_usesamplerobjects, %eax
	testl	%eax, %eax
	jne	L1110
L1109:
	movl	__ZL16drawpoly_srepeat.lto_priv.0, %edi
	testl	%edi, %edi
	je	L1111
	movl	$33071, 8(%esp)
	movl	$10242, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
L1111:
	movl	__ZL16drawpoly_trepeat.lto_priv.0, %ebx
	testl	%ebx, %ebx
	je	L1110
	movl	$33071, 8(%esp)
	movl	$10243, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
L1110:
	cmpl	$1, __ZZL17polymost_drawpolyPK4vec2IfEiiE15fullbright_pass
	je	L1289
L1112:
	movl	_r_skyzbufferhack, %eax
	testl	%eax, %eax
	je	L1119
	movl	__ZL14skyzbufferhack, %eax
	testl	%eax, %eax
	je	L1119
	movl	__ZZL17polymost_drawpolyPK4vec2IfEiiE19skyzbufferhack_pass, %eax
	testl	%eax, %eax
	jne	L1119
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
	jmp	L1119
L1282:
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
	jmp	L1054
L1065:
	testw	$264, -536(%ebp)
	je	L1070
	movzbl	_hictinting+2(,%edx,8), %eax
	xorps	%xmm3, %xmm3
	movss	LC40, %xmm4
	cvtsi2ssl	%eax, %xmm3
	movzbl	_hictinting+3(,%edx,8), %eax
	mulss	%xmm4, %xmm3
	mulss	%xmm3, %xmm0
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	movzbl	_hictinting+4(,%edx,8), %eax
	mulss	%xmm4, %xmm3
	mulss	%xmm3, %xmm1
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	mulss	%xmm4, %xmm3
	mulss	%xmm3, %xmm2
	jmp	L1070
L1271:
	cmpw	$0, _editstatus
	je	L927
	movl	_globalpal, %eax
	movl	%eax, 12(%esp)
	movswl	_globalpicnum, %eax
	movl	$LC39, 4(%esp)
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
	jmp	L927
L1045:
	movl	_globalshade, %eax
	movl	%eax, -544(%ebp)
	cmpl	$3, -496(%ebp)
	jne	L1039
	movl	_r_useindexedcolortextures, %eax
	testl	%eax, %eax
	je	L1048
	movl	_gltexfiltermode, %eax
	testl	%eax, %eax
	je	L1050
	jmp	L1048
L1273:
	call	__Z22polymost_updatePalettev
	movl	$33988, -648(%ebp)
	jmp	L1121
L1272:
	call	__ZL16polymost_bindPthPK8pthtyp_t.lto_priv.0
	movl	-632(%ebp), %eax
	testb	$2, 35(%eax)
	je	L1290
	cmpl	$3, _rendmode
	je	L1291
L986:
	movl	_r_usetileshades, %eax
	testl	%eax, %eax
	je	L987
	testb	$1, _globalflags
	je	L984
L987:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L984
	xorps	%xmm0, %xmm0
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm0
	jp	L1149
	je	L984
L1149:
	movl	$0x00000000, __ZL19polymost1FogEnabled.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L984:
	testb	$8, _glinfo+29
	je	L989
	movl	_r_usesamplerobjects, %eax
	testl	%eax, %eax
	je	L989
	movl	-632(%ebp), %eax
	movzwl	34(%eax), %edx
	cmpl	$3, _rendmode
	je	L1292
L994:
	andb	$-3, %dh
	orl	$2, %edx
L996:
	xorl	%eax, %eax
	call	__Z25buildgl_bindSamplerObjectii
L995:
	movss	LC0, %xmm7
	movl	-632(%ebp), %eax
	movl	8(%eax), %eax
	movss	%xmm7, -560(%ebp)
	testl	%eax, %eax
	je	L997
	movl	_drawingskybox, %edx
	testl	%edx, %edx
	jne	L997
	jmp	L1122
L1276:
	testb	$32, -496(%ebp)
	je	L1023
	movswl	_globalpicnum, %ecx
	testb	$2, _picanm+4(%ecx,%ecx,4)
	jne	L1023
	movswl	_tilesiz+2(,%ecx,4), %edx
	movl	$1, %eax
	cmpl	$1, %edx
	jle	L1024
	.p2align 3
	.p2align 4
	.p2align 3
L1025:
	addl	%eax, %eax
	cmpl	%eax, %edx
	jg	L1025
L1024:
	cmpl	%eax, %edx
	je	L1023
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
	jmp	L1027
L1283:
	xorl	%edx, %edx
	jmp	L936
L989:
	movl	__ZL16drawpoly_srepeat.lto_priv.0, %eax
	testl	%eax, %eax
	je	L992
	movl	$10497, 8(%esp)
	movl	$10242, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
L992:
	movl	__ZL16drawpoly_trepeat.lto_priv.0, %ecx
	testl	%ecx, %ecx
	je	L995
	movl	$10497, 8(%esp)
	movl	$10243, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	jmp	L995
L981:
	cmpl	$2, %eax
	jne	L979
	movl	-632(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -632(%ebp)
	jmp	L979
L1287:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L1106
	movss	-560(%ebp), %xmm7
	ucomiss	__ZL19polymost1UsePalette.lto_priv.0, %xmm7
	jp	L1157
	je	L1106
L1157:
	movss	-560(%ebp), %xmm7
	movss	%xmm7, __ZL19polymost1UsePalette.lto_priv.0
	movss	%xmm7, 4(%esp)
	movl	__ZL22polymost1UsePaletteLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
	jmp	L1106
L1288:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L1106
	movss	-560(%ebp), %xmm7
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm7
	jp	L1158
	je	L1106
L1158:
	movss	-560(%ebp), %xmm7
	movss	%xmm7, __ZL19polymost1FogEnabled.lto_priv.0
	movss	%xmm7, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
	jmp	L1106
L1290:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L984
	xorps	%xmm0, %xmm0
	ucomiss	__ZL19polymost1UsePalette.lto_priv.0, %xmm0
	jp	L1148
	je	L984
L1148:
	movl	$0x00000000, __ZL19polymost1UsePalette.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL22polymost1UsePaletteLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
	jmp	L984
L1289:
	movl	_globalshade, %ebx
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$-128, _globalshade
	movl	$2, __ZZL17polymost_drawpolyPK4vec2IfEiiE15fullbright_pass
	cmpl	%eax, _gl
	jne	L1113
	xorps	%xmm0, %xmm0
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm0
	jp	L1159
	je	L1113
L1159:
	movl	$0x00000000, __ZL19polymost1FogEnabled.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L1113:
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1115
	movl	$3008, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1115:
	movl	-508(%ebp), %edx
	movl	-568(%ebp), %ecx
	movl	%esi, %eax
	call	__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1116
	movl	$3008, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1116:
	movl	_nofog, %ecx
	testl	%ecx, %ecx
	je	L1293
L1117:
	movl	%ebx, _globalshade
	movl	$0, __ZZL17polymost_drawpolyPK4vec2IfEiiE15fullbright_pass
	jmp	L1112
L1135:
	movl	$1, -640(%ebp)
	jmp	L1030
L1136:
	movl	$1, -644(%ebp)
	jmp	L1029
L1278:
	cmpb	$-1, %al
	jne	L1071
	jmp	L1070
L1053:
	movl	-536(%ebp), %ecx
	movswl	_globalpicnum, %eax
	movl	%edx, -496(%ebp)
	andl	$256, %ecx
	call	_hicfindsubst
	movl	-496(%ebp), %edx
	testl	%eax, %eax
	jne	L1039
	jmp	L1047
L1291:
	movl	_r_useindexedcolortextures, %eax
	testl	%eax, %eax
	je	L986
	movl	_gltexfiltermode, %eax
	testl	%eax, %eax
	je	L987
	jmp	L986
L1275:
	movswl	_globalpicnum, %eax
	movl	$1, %ecx
	movl	$254, %edx
	movl	%eax, -504(%ebp)
	call	_hicfindsubst
	testl	%eax, %eax
	je	L1018
	movl	-496(%ebp), %ecx
	movl	$254, %edx
	andl	$-4, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	orl	$1, %eax
	movl	%eax, (%esp)
	movl	-504(%ebp), %eax
	call	_texcache_fetch
	movl	%eax, %edx
	testl	%eax, %eax
	je	L1018
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L1018
	cmpb	$-2, 32(%eax)
	jne	L1018
	movl	$1, %eax
	movl	%edx, -504(%ebp)
	call	__Z23polymost_useGlowMappingc
	cmpl	$3, _rendmode
	movl	-504(%ebp), %edx
	je	L1131
	addl	$1, -648(%ebp)
	movl	-648(%ebp), %eax
L1021:
	movzwl	34(%edx), %ecx
	movl	12(%edx), %edx
	call	__Z25polymost_setupglowtextureiii
	jmp	L1018
	.p2align 4,,10
	.p2align 3
L1293:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L1117
	movss	-560(%ebp), %xmm7
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm7
	jp	L1160
	je	L1117
L1160:
	movss	-560(%ebp), %xmm7
	movss	%xmm7, __ZL19polymost1FogEnabled.lto_priv.0
	movss	%xmm7, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	pushl	%edx
	pushl	%edx
	jmp	L1117
L1292:
	cmpl	$0, _r_useindexedcolortextures
	je	L994
	cmpl	$0, _gltexfiltermode
	je	L996
	jmp	L994
L1130:
	movl	$33987, %eax
	jmp	L1007
L1131:
	movl	$33988, %eax
	jmp	L1021
	.cfi_endproc
LFE54:
	.section .rdata,"dr"
	.align 4
LC43:
	.ascii "polymost_domost(x0:%f, y0:%f, x1:%f, y1:%f, y0top:%f, y0bot:%f, y1top:%f, y1bot:%f)\0"
	.text
	.p2align 4
	.globl	__ZL15polymost_domostffffffff.lto_priv.0
	.def	__ZL15polymost_domostffffffff.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL15polymost_domostffffffff.lto_priv.0:
LFB73:
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
	movl	$LC43, 4(%esp)
	movl	$3, (%esp)
	call	__Z26buildgl_outputDebugMessagehPKcz.constprop.0
	movss	12(%ebp), %xmm0
	subss	LC3, %xmm0
	movss	156(%esp), %xmm7
	comiss	164(%esp), %xmm7
	movss	%xmm0, 12(%ebp)
	movss	20(%ebp), %xmm0
	subss	LC3, %xmm0
	movss	%xmm0, 20(%ebp)
	movss	LC3, %xmm0
	addss	16(%ebp), %xmm0
	movss	%xmm0, 16(%ebp)
	movss	LC3, %xmm0
	addss	24(%ebp), %xmm0
	movss	%xmm0, 24(%ebp)
	jbe	L1571
	movss	172(%esp), %xmm0
	subss	LC3, %xmm0
	movss	%xmm0, 172(%esp)
	movss	8(%ebp), %xmm0
	subss	LC3, %xmm0
	movss	%xmm0, 136(%esp)
L1299:
	movss	168(%esp), %xmm2
	movss	__ZL3xbl.lto_priv.0, %xmm0
	movss	136(%esp), %xmm7
	comiss	%xmm2, %xmm0
	movss	%xmm7, 8(%ebp)
	ja	L1302
	movss	176(%esp), %xmm3
	movss	__ZL3xbr.lto_priv.0, %xmm1
	comiss	%xmm1, %xmm3
	ja	L1302
	movss	LC3, %xmm7
	movaps	%xmm3, %xmm6
	subss	LC3, %xmm6
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
	jbe	L1305
	movaps	%xmm0, %xmm2
	subss	%xmm6, %xmm2
	movaps	%xmm0, %xmm6
	mulss	%xmm7, %xmm2
	addss	%xmm5, %xmm2
	movss	%xmm2, 144(%esp)
L1305:
	movss	160(%esp), %xmm7
	comiss	%xmm1, %xmm7
	ja	L1591
L1307:
	movswl	__ZL3vsp.lto_priv.0+24, %edi
	movb	$0, __ZL14drawpoly_blend.lto_priv.0
	movl	$0x00000000, __ZL14drawpoly_alpha.lto_priv.0
	testl	%edi, %edi
	je	L1483
	movss	156(%esp), %xmm7
	comiss	164(%esp), %xmm7
	movl	%edi, 104(%esp)
	movaps	%xmm6, %xmm7
	movl	%edi, 152(%esp)
	ja	L1310
	.p2align 4
	.p2align 3
L1395:
	movl	152(%esp), %esi
	movl	%esi, %eax
	sall	$5, %eax
	movswl	__ZL3vsp.lto_priv.0+24(%eax), %eax
	movl	%eax, 152(%esp)
	sall	$5, %eax
	movss	__ZL3vsp.lto_priv.0(%eax), %xmm5
	comiss	%xmm5, %xmm7
	jnb	L1485
	movl	%esi, %eax
	sall	$5, %eax
	movss	__ZL3vsp.lto_priv.0(%eax), %xmm4
	comiss	160(%esp), %xmm4
	jnb	L1309
	cmpw	$0, __ZL3vsp.lto_priv.0+28(%eax)
	jle	L1311
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
	ja	L1314
	movss	144(%esp), %xmm0
	subss	%xmm2, %xmm0
	movss	156(%esp), %xmm2
	mulss	%xmm3, %xmm2
	movaps	%xmm0, %xmm6
	movss	%xmm2, 112(%esp)
L1391:
	xorl	%eax, %eax
L1394:
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
	jbe	L1573
	movss	140(%esp), %xmm0
	xorps	%xmm1, %xmm1
	mulss	%xmm2, %xmm0
	comiss	%xmm1, %xmm0
	jb	L1573
	divss	140(%esp), %xmm2
	mulss	112(%esp), %xmm2
	addss	%xmm7, %xmm2
	comiss	%xmm4, %xmm2
	jbe	L1573
	comiss	%xmm2, %xmm5
	jbe	L1583
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
	jbe	L1379
	movaps	%xmm6, %xmm0
	mulss	%xmm3, %xmm0
	comiss	%xmm1, %xmm0
	jnb	L1592
L1375:
	cmpl	$2, 148(%esp)
	je	L1319
	movl	$1, 148(%esp)
	jmp	L1318
	.p2align 4,,10
	.p2align 3
L1571:
	movss	176(%esp), %xmm0
	ucomiss	168(%esp), %xmm0
	jp	L1495
	je	L1296
L1495:
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
	movss	LC3, %xmm0
	movss	LC3, %xmm7
	addss	172(%esp), %xmm0
	addss	8(%ebp), %xmm7
	movss	%xmm0, 172(%esp)
	movss	%xmm7, 136(%esp)
	jmp	L1299
	.p2align 4,,10
	.p2align 3
L1302:
	addl	$1, _domost_rejectcount
L1296:
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
L1489:
	.cfi_restore_state
	movl	%esi, 104(%esp)
L1396:
	movl	152(%esp), %eax
	testl	%eax, %eax
	je	L1309
L1310:
	movl	152(%esp), %esi
	movl	%esi, %eax
	sall	$5, %eax
	movswl	__ZL3vsp.lto_priv.0+24(%eax), %eax
	movl	%eax, 152(%esp)
	sall	$5, %eax
	movss	__ZL3vsp.lto_priv.0(%eax), %xmm5
	comiss	%xmm5, %xmm7
	jnb	L1489
	movl	%esi, %eax
	sall	$5, %eax
	movss	__ZL3vsp.lto_priv.0(%eax), %xmm6
	comiss	160(%esp), %xmm6
	jnb	L1309
	cmpw	$0, __ZL3vsp.lto_priv.0+28(%eax)
	jle	L1396
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
	ja	L1509
	mulss	%xmm1, %xmm3
	movss	%xmm3, 100(%esp)
	movss	144(%esp), %xmm3
	subss	%xmm2, %xmm3
	movss	%xmm3, 112(%esp)
L1398:
	xorl	%eax, %eax
L1401:
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
	ja	L1403
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
	ja	L1404
L1405:
	movl	%eax, 148(%esp)
L1418:
	movss	160(%esp), %xmm3
	comiss	%xmm6, %xmm3
	ja	L1475
L1421:
	movl	152(%esp), %eax
	movl	%esi, 156(%esp)
	movss	LC0, %xmm5
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
	je	L1426
L1596:
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
	je	L1446
	movss	__ZL3vsp.lto_priv.0(%edx), %xmm3
	comiss	%xmm3, %xmm7
	ja	L1446
	movl	%esi, %ebx
L1480:
	movl	%esi, %eax
	sall	$5, %eax
	movss	__ZL3vsp.lto_priv.0(%eax), %xmm6
	comiss	160(%esp), %xmm6
	ja	L1428
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
	je	L1491
	movss	LC3, %xmm0
	addss	__ZL3vsp.lto_priv.0+4(%eax), %xmm0
	xorl	%eax, %eax
	ucomiss	%xmm5, %xmm0
	setb	%al
	addl	$3, %eax
	cmpl	$1, %edx
	jne	L1429
L1431:
	sall	$5, %esi
	addl	$1, %eax
	movl	__ZL3vsp.lto_priv.0+20(%esi), %edx
	testl	%edx, %edx
	jne	L1434
L1599:
	subl	$3, %eax
L1435:
	movl	156(%esp), %edx
	sall	$5, %edx
	movss	__ZL3vsp.lto_priv.0+16(%edx), %xmm0
	subss	LC3, %xmm0
	comiss	%xmm0, %xmm4
	jb	L1439
L1438:
	addl	$3, %eax
L1439:
	cmpl	$7, %eax
	ja	L1428
	jmp	*L1442(,%eax,4)
	.section .rdata,"dr"
	.align 4
L1442:
	.long	L1445
	.long	L1444
	.long	L1443
	.long	L1444
	.long	L1444
	.long	L1443
	.long	L1441
	.long	L1441
	.text
	.p2align 4,,10
	.p2align 3
L1403:
	movss	140(%esp), %xmm1
	xorps	%xmm4, %xmm4
	mulss	%xmm2, %xmm1
	comiss	%xmm4, %xmm1
	jnb	L1406
L1589:
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
	jbe	L1405
L1404:
	movaps	%xmm3, %xmm1
	xorps	%xmm4, %xmm4
	mulss	%xmm0, %xmm1
	comiss	%xmm4, %xmm1
	jb	L1405
	divss	%xmm3, %xmm0
	mulss	112(%esp), %xmm0
	addss	%xmm7, %xmm0
	comiss	%xmm6, %xmm0
	jbe	L1405
	comiss	%xmm0, %xmm5
	jbe	L1409
	movl	$1, 184(%esp,%eax,4)
	leal	1(%eax), %edi
	movl	%edi, 148(%esp)
	movss	%xmm0, 200(%esp,%eax,4)
L1417:
	cmpl	$2, 148(%esp)
	jne	L1593
L1416:
	movl	148(%esp), %edi
	movss	192(%esp,%edi,4), %xmm0
	leal	-1(%edi), %eax
	comiss	196(%esp,%edi,4), %xmm0
	jbe	L1418
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
	jbe	L1421
L1475:
	movss	160(%esp), %xmm4
	comiss	%xmm4, %xmm5
	jbe	L1421
	movss	136(%esp), %xmm1
	movaps	%xmm4, %xmm0
	subss	96(%esp), %xmm1
	mulss	164(%esp), %xmm1
	subss	%xmm6, %xmm0
	mulss	132(%esp), %xmm0
	subss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	jbe	L1421
	movl	148(%esp), %eax
	movl	$-1, 184(%esp,%eax,4)
	movss	%xmm4, 200(%esp,%eax,4)
	addl	$1, %eax
	movl	%eax, 148(%esp)
	jmp	L1421
	.p2align 4,,10
	.p2align 3
L1573:
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
	jbe	L1390
L1388:
	movaps	%xmm6, %xmm0
	xorps	%xmm2, %xmm2
	mulss	%xmm3, %xmm0
	comiss	%xmm2, %xmm0
	jb	L1390
	divss	%xmm3, %xmm6
	mulss	112(%esp), %xmm6
	addss	%xmm7, %xmm6
	comiss	%xmm4, %xmm6
	jbe	L1390
	comiss	%xmm6, %xmm5
	jbe	L1389
	movl	$1, 184(%esp,%eax,4)
	leal	1(%eax), %edi
	movl	%edi, 148(%esp)
	movss	%xmm6, 200(%esp,%eax,4)
L1379:
	cmpl	$2, 148(%esp)
	jne	L1594
L1319:
	movl	148(%esp), %edi
	movss	192(%esp,%edi,4), %xmm0
	leal	-1(%edi), %eax
	comiss	196(%esp,%edi,4), %xmm0
	jbe	L1318
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
	jbe	L1372
L1320:
	movss	160(%esp), %xmm6
	comiss	%xmm6, %xmm5
	jbe	L1372
	movss	136(%esp), %xmm1
	movaps	%xmm6, %xmm0
	subss	100(%esp), %xmm1
	mulss	164(%esp), %xmm1
	subss	%xmm4, %xmm0
	mulss	132(%esp), %xmm0
	subss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	comiss	%xmm0, %xmm1
	jbe	L1372
	movl	148(%esp), %eax
	movl	$-1, 184(%esp,%eax,4)
	movss	%xmm6, 200(%esp,%eax,4)
	addl	$1, %eax
	movl	%eax, 148(%esp)
	jmp	L1372
	.p2align 4,,10
	.p2align 3
L1443:
	movl	164(%esp), %edi
	xorl	%eax, %eax
L1455:
	movl	$0, 240(%esp,%eax)
	movl	$0, 244(%esp,%eax)
	movl	$0, 248(%esp,%eax)
	movl	$0, 252(%esp,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L1455
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
	je	L1457
	movl	__ZL10yax_drawcf, %eax
	cmpl	$-1, %eax
	je	L1458
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
L1458:
	cmpw	$0, _editstatus
	je	L1459
	movl	_doeditorcheck, %eax
	testl	%eax, %eax
	jne	L1595
L1459:
	movl	156(%esp), %eax
	movl	__ZL4gtag.lto_priv.0, %edx
	sall	$5, %eax
	movw	%dx, __ZL3vsp.lto_priv.0+30(%eax)
	movss	%xmm4, __ZL3vsp.lto_priv.0+16(%eax)
	.p2align 4
	.p2align 3
L1428:
	movl	%ebx, %esi
L1446:
	addl	$1, 164(%esp)
	movl	164(%esp), %eax
	cmpl	%eax, 148(%esp)
	jl	L1396
	movl	%esi, 156(%esp)
	movl	164(%esp), %eax
	cmpl	%eax, 148(%esp)
	jne	L1596
L1426:
	movl	156(%esp), %eax
	sall	$5, %eax
	movswl	__ZL3vsp.lto_priv.0+24(%eax), %edx
	testl	%edx, %edx
	je	L1396
	movss	__ZL3vsp.lto_priv.0(%eax), %xmm3
	comiss	%xmm3, %xmm7
	ja	L1396
	movl	%esi, %ebx
	movl	%edx, %esi
	jmp	L1480
	.p2align 4,,10
	.p2align 3
L1485:
	movl	%esi, 104(%esp)
L1311:
	movl	152(%esp), %esi
	testl	%esi, %esi
	jne	L1395
L1309:
	movl	__ZL17viewportNodeCount.lto_priv.0, %esi
	movl	104(%esp), %eax
	addl	$1, __ZL4gtag.lto_priv.0
	movss	LC44, %xmm2
	movss	160(%esp), %xmm3
	movl	%esi, 164(%esp)
	.p2align 4
	.p2align 3
L1473:
	movl	%eax, %edx
	sall	$5, %edx
	movss	__ZL3vsp.lto_priv.0(%edx), %xmm0
	comiss	%xmm3, %xmm0
	jnb	L1296
	movss	__ZL3vsp.lto_priv.0+4(%edx), %xmm1
	addss	%xmm2, %xmm1
	comiss	__ZL3vsp.lto_priv.0+12(%edx), %xmm1
	jb	L1464
	movss	__ZL3vsp.lto_priv.0+8(%edx), %xmm1
	addss	%xmm2, %xmm1
	comiss	__ZL3vsp.lto_priv.0+16(%edx), %xmm1
	jb	L1464
	movl	$-1, __ZL3vsp.lto_priv.0+28(%edx)
L1464:
	movl	%eax, %ecx
	sall	$5, %ecx
	movswl	__ZL3vsp.lto_priv.0+24(%ecx), %edx
	movl	%edx, %ebx
	cmpl	%edx, 164(%esp)
	jg	L1471
	movl	%edx, %edi
	sall	$5, %edi
	leal	__ZL3vsp.lto_priv.0(%edi), %esi
	movzwl	__ZL3vsp.lto_priv.0+28(%edi), %edi
	cmpw	%di, __ZL3vsp.lto_priv.0+28(%ecx)
	je	L1597
L1469:
	movss	LC3, %xmm7
	movl	%edx, %ecx
	sall	$5, %ecx
	movss	__ZL3vsp.lto_priv.0(%ecx), %xmm1
	movaps	%xmm1, %xmm4
	subss	%xmm0, %xmm4
	comiss	%xmm4, %xmm7
	ja	L1598
L1471:
	movl	%edx, %eax
L1468:
	testl	%eax, %eax
	jne	L1473
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
L1598:
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
	jmp	L1468
	.p2align 4,,10
	.p2align 3
L1597:
	movzwl	30(%esi), %edi
	cmpw	%di, __ZL3vsp.lto_priv.0+30(%ecx)
	jne	L1469
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
	jmp	L1468
	.p2align 4,,10
	.p2align 3
L1491:
	movl	$3, %eax
L1429:
	movl	156(%esp), %edx
	sall	$5, %edx
	movss	__ZL3vsp.lto_priv.0+12(%edx), %xmm0
	subss	LC3, %xmm0
	comiss	%xmm0, %xmm5
	jnb	L1431
	sall	$5, %esi
	movl	__ZL3vsp.lto_priv.0+20(%esi), %edx
	testl	%edx, %edx
	je	L1599
L1434:
	movss	LC3, %xmm0
	movl	156(%esp), %ecx
	sall	$5, %ecx
	addss	__ZL3vsp.lto_priv.0+8(%ecx), %xmm0
	leal	-3(%eax), %ecx
	comiss	%xmm4, %xmm0
	cmovnb	%ecx, %eax
	cmpl	$1, %edx
	je	L1438
	jmp	L1435
	.p2align 4,,10
	.p2align 3
L1509:
	movss	132(%esp), %xmm3
	comiss	%xmm7, %xmm5
	mulss	%xmm1, %xmm3
	movss	%xmm3, 100(%esp)
	jbe	L1600
	movss	144(%esp), %xmm2
	subss	96(%esp), %xmm2
	movss	%xmm2, 112(%esp)
	mulss	164(%esp), %xmm2
	subss	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	comiss	%xmm2, %xmm3
	jbe	L1398
	movl	$-1, 184(%esp)
	movl	$1, %eax
	movss	%xmm7, 200(%esp)
	jmp	L1401
	.p2align 4,,10
	.p2align 3
L1314:
	comiss	%xmm7, %xmm5
	jbe	L1601
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
	jbe	L1391
	movl	$-1, 184(%esp)
	movl	$1, %eax
	movss	%xmm7, 200(%esp)
	jmp	L1394
	.p2align 4,,10
	.p2align 3
L1390:
	movl	%eax, 148(%esp)
L1318:
	movss	160(%esp), %xmm6
	comiss	%xmm4, %xmm6
	ja	L1320
L1372:
	movl	152(%esp), %eax
	movl	%esi, 156(%esp)
	movss	LC0, %xmm5
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
	je	L1602
L1321:
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
	je	L1324
	movss	__ZL3vsp.lto_priv.0(%edx), %xmm3
	comiss	%xmm3, %xmm7
	ja	L1324
	movl	%esi, %ebx
L1477:
	movl	%esi, %eax
	sall	$5, %eax
	movss	__ZL3vsp.lto_priv.0(%eax), %xmm6
	comiss	160(%esp), %xmm6
	ja	L1323
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
	jne	L1603
	movl	$3, %eax
L1327:
	movl	156(%esp), %edx
	sall	$5, %edx
	movss	__ZL3vsp.lto_priv.0+12(%edx), %xmm0
	subss	LC3, %xmm0
	comiss	%xmm0, %xmm5
	jb	L1365
L1366:
	addl	$1, %eax
L1365:
	sall	$5, %esi
	movl	__ZL3vsp.lto_priv.0+20(%esi), %edx
	testl	%edx, %edx
	jne	L1604
	subl	$3, %eax
L1363:
	movl	156(%esp), %edx
	sall	$5, %edx
	movss	__ZL3vsp.lto_priv.0+16(%edx), %xmm0
	subss	LC3, %xmm0
	comiss	%xmm0, %xmm4
	jb	L1360
L1361:
	addl	$3, %eax
L1360:
	cmpl	$8, %eax
	ja	L1323
	jmp	*L1332(,%eax,4)
	.section .rdata,"dr"
	.align 4
L1332:
	.long	L1323
	.long	L1335
	.long	L1335
	.long	L1334
	.long	L1333
	.long	L1333
	.long	L1334
	.long	L1333
	.long	L1331
	.text
	.p2align 4,,10
	.p2align 3
L1335:
	movl	164(%esp), %edi
	xorl	%eax, %eax
L1348:
	movl	$0, 240(%esp,%eax)
	movl	$0, 244(%esp,%eax)
	movl	$0, 248(%esp,%eax)
	movl	$0, 252(%esp,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L1348
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
	je	L1605
	movl	__ZL10yax_drawcf, %eax
	cmpl	$-1, %eax
	je	L1354
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
L1354:
	cmpw	$0, _editstatus
	je	L1352
	movl	_doeditorcheck, %eax
	testl	%eax, %eax
	jne	L1606
L1352:
	movl	156(%esp), %eax
	movl	__ZL4gtag.lto_priv.0, %edx
	sall	$5, %eax
	movw	%dx, __ZL3vsp.lto_priv.0+28(%eax)
	movss	%xmm5, __ZL3vsp.lto_priv.0+4(%eax)
	.p2align 4
	.p2align 3
L1323:
	movl	%ebx, %esi
L1324:
	addl	$1, 164(%esp)
	movl	148(%esp), %eax
	cmpl	%eax, 164(%esp)
	jg	L1311
	movl	%esi, 156(%esp)
	movl	148(%esp), %eax
	cmpl	%eax, 164(%esp)
	jne	L1321
L1602:
	movl	156(%esp), %eax
	sall	$5, %eax
	movswl	__ZL3vsp.lto_priv.0+24(%eax), %edx
	testl	%edx, %edx
	je	L1311
	movss	__ZL3vsp.lto_priv.0(%eax), %xmm3
	comiss	%xmm3, %xmm7
	ja	L1311
	movl	%esi, %ebx
	movl	%edx, %esi
	jmp	L1477
	.p2align 4,,10
	.p2align 3
L1604:
	movss	LC3, %xmm0
	movl	156(%esp), %ecx
	sall	$5, %ecx
	addss	__ZL3vsp.lto_priv.0+8(%ecx), %xmm0
	leal	-3(%eax), %ecx
	comiss	%xmm4, %xmm0
	cmovnb	%ecx, %eax
	cmpl	$1, %edx
	je	L1361
	jmp	L1363
	.p2align 4,,10
	.p2align 3
L1603:
	movss	LC3, %xmm0
	addss	__ZL3vsp.lto_priv.0+4(%eax), %xmm0
	xorl	%eax, %eax
	ucomiss	%xmm5, %xmm0
	setb	%al
	addl	$3, %eax
	cmpl	$1, %edx
	je	L1366
	jmp	L1327
	.p2align 4,,10
	.p2align 3
L1333:
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
	je	L1607
	movl	__ZL10yax_drawcf, %eax
	cmpl	$-1, %eax
	je	L1359
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
L1359:
	cmpw	$0, _editstatus
	je	L1357
	movl	_doeditorcheck, %eax
	testl	%eax, %eax
	je	L1357
	movl	180(%esp), %edx
	cmpl	$2, %edx
	jle	L1357
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
L1357:
	movl	156(%esp), %eax
	movl	__ZL4gtag.lto_priv.0, %edx
	movl	%ebx, %esi
	sall	$5, %eax
	movw	%dx, __ZL3vsp.lto_priv.0+28(%eax)
	movss	%xmm5, __ZL3vsp.lto_priv.0+4(%eax)
	movss	%xmm4, __ZL3vsp.lto_priv.0+8(%eax)
	jmp	L1324
	.p2align 4,,10
	.p2align 3
L1444:
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
	je	L1447
	movl	__ZL10yax_drawcf, %eax
	cmpl	$-1, %eax
	je	L1448
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
L1448:
	cmpw	$0, _editstatus
	je	L1449
	movl	_doeditorcheck, %edi
	testl	%edi, %edi
	je	L1449
	movl	180(%esp), %edx
	cmpl	$2, %edx
	jle	L1449
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
L1449:
	movl	156(%esp), %eax
	movl	__ZL4gtag.lto_priv.0, %edx
	movl	%ebx, %esi
	sall	$5, %eax
	movw	%dx, __ZL3vsp.lto_priv.0+30(%eax)
	movss	%xmm5, __ZL3vsp.lto_priv.0+12(%eax)
	movss	%xmm4, __ZL3vsp.lto_priv.0+16(%eax)
	jmp	L1446
	.p2align 4,,10
	.p2align 3
L1334:
	movl	164(%esp), %edi
	xorl	%eax, %eax
L1341:
	movl	$0, 240(%esp,%eax)
	movl	$0, 244(%esp,%eax)
	movl	$0, 248(%esp,%eax)
	movl	$0, 252(%esp,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L1341
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
	je	L1608
	movl	__ZL10yax_drawcf, %eax
	cmpl	$-1, %eax
	je	L1347
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
L1347:
	cmpw	$0, _editstatus
	je	L1345
	movl	_doeditorcheck, %eax
	testl	%eax, %eax
	jne	L1609
L1345:
	movl	156(%esp), %eax
	movl	__ZL4gtag.lto_priv.0, %edx
	movl	%ebx, %esi
	sall	$5, %eax
	movw	%dx, __ZL3vsp.lto_priv.0+28(%eax)
	movss	%xmm4, __ZL3vsp.lto_priv.0+8(%eax)
	jmp	L1324
	.p2align 4,,10
	.p2align 3
L1441:
	movl	164(%esp), %edi
	xorl	%eax, %eax
L1450:
	movl	$0, 240(%esp,%eax)
	movl	$0, 244(%esp,%eax)
	movl	$0, 248(%esp,%eax)
	movl	$0, 252(%esp,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L1450
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
	je	L1452
	movl	__ZL10yax_drawcf, %eax
	cmpl	$-1, %eax
	je	L1453
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
L1453:
	cmpw	$0, _editstatus
	je	L1454
	movl	_doeditorcheck, %edx
	testl	%edx, %edx
	jne	L1610
L1454:
	movl	156(%esp), %eax
	movl	__ZL4gtag.lto_priv.0, %edx
	movl	%ebx, %esi
	sall	$5, %eax
	movw	%dx, __ZL3vsp.lto_priv.0+30(%eax)
	movss	%xmm5, __ZL3vsp.lto_priv.0+12(%eax)
	jmp	L1446
	.p2align 4,,10
	.p2align 3
L1406:
	divss	140(%esp), %xmm2
	mulss	112(%esp), %xmm2
	addss	%xmm7, %xmm2
	comiss	%xmm6, %xmm2
	jbe	L1589
	comiss	%xmm2, %xmm5
	jbe	L1611
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
	jbe	L1417
	movaps	%xmm3, %xmm1
	xorps	%xmm4, %xmm4
	mulss	%xmm0, %xmm1
	comiss	%xmm4, %xmm1
	jnb	L1612
L1412:
	cmpl	$2, 148(%esp)
	je	L1416
	movl	$1, 148(%esp)
	jmp	L1418
	.p2align 4,,10
	.p2align 3
L1591:
	movss	%xmm1, 160(%esp)
	movaps	%xmm1, %xmm0
	subss	%xmm7, %xmm0
	mulss	108(%esp), %xmm0
	addss	136(%esp), %xmm0
	movss	%xmm0, 136(%esp)
	jmp	L1307
	.p2align 4,,10
	.p2align 3
L1600:
	movss	144(%esp), %xmm3
	subss	96(%esp), %xmm3
	movss	%xmm3, 112(%esp)
	jmp	L1398
	.p2align 4,,10
	.p2align 3
L1601:
	movss	156(%esp), %xmm3
	mulss	132(%esp), %xmm3
	movss	144(%esp), %xmm6
	subss	100(%esp), %xmm6
	movss	%xmm3, 112(%esp)
	jmp	L1391
	.p2align 4,,10
	.p2align 3
L1445:
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
	je	L1460
	movl	__ZL10yax_drawcf, %eax
	cmpl	$-1, %eax
	je	L1461
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
L1461:
	cmpw	$0, _editstatus
	je	L1462
	movl	_doeditorcheck, %eax
	testl	%eax, %eax
	je	L1462
	movl	180(%esp), %edx
	cmpl	$2, %edx
	jle	L1462
	movss	%xmm7, 140(%esp)
	movl	%esi, %eax
	call	__ZL23polymost_polyeditorfuncPK4vec2IfEi.part.0.lto_priv.0
	movss	140(%esp), %xmm7
	.p2align 4
	.p2align 3
L1462:
	movl	156(%esp), %eax
	movl	%ebx, %esi
	sall	$5, %eax
	movl	$-1, __ZL3vsp.lto_priv.0+28(%eax)
	jmp	L1446
	.p2align 4,,10
	.p2align 3
L1331:
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
	je	L1613
	movl	__ZL10yax_drawcf, %eax
	cmpl	$-1, %eax
	je	L1340
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
L1340:
	cmpw	$0, _editstatus
	je	L1338
	movl	_doeditorcheck, %ecx
	testl	%ecx, %ecx
	je	L1338
	movl	180(%esp), %edx
	cmpl	$2, %edx
	jle	L1338
	movss	%xmm7, 140(%esp)
	movl	%esi, %eax
	call	__ZL23polymost_polyeditorfuncPK4vec2IfEi.part.0.lto_priv.0
	movss	140(%esp), %xmm7
	.p2align 4
	.p2align 3
L1338:
	movl	156(%esp), %eax
	movl	%ebx, %esi
	sall	$5, %eax
	movl	$-1, __ZL3vsp.lto_priv.0+28(%eax)
	jmp	L1324
L1611:
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
	ja	L1404
L1409:
	movl	%eax, 148(%esp)
	jmp	L1475
L1583:
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
	ja	L1388
L1389:
	movl	%eax, 148(%esp)
	jmp	L1320
L1613:
	movl	__ZL16domostpolymethod, %ecx
	movl	180(%esp), %edx
	movl	%esi, %eax
	movss	%xmm7, 140(%esp)
	call	__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0
	movss	140(%esp), %xmm7
	jmp	L1338
L1460:
	movl	__ZL16domostpolymethod, %ecx
	movl	180(%esp), %edx
	movl	%esi, %eax
	movss	%xmm7, 140(%esp)
	call	__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0
	movss	140(%esp), %xmm7
	jmp	L1462
L1447:
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
	jmp	L1449
L1607:
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
	jmp	L1357
L1608:
	movl	__ZL16domostpolymethod, %ecx
	movl	180(%esp), %edx
	movl	%esi, %eax
	movss	%xmm7, 100(%esp)
	movss	%xmm4, 140(%esp)
	call	__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0
	movss	100(%esp), %xmm7
	movss	140(%esp), %xmm4
	jmp	L1345
L1605:
	movl	__ZL16domostpolymethod, %ecx
	movl	180(%esp), %edx
	movl	%esi, %eax
	movss	%xmm7, 100(%esp)
	movss	%xmm5, 140(%esp)
	call	__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0
	movss	100(%esp), %xmm7
	movss	140(%esp), %xmm5
	jmp	L1352
L1457:
	movl	__ZL16domostpolymethod, %ecx
	movl	180(%esp), %edx
	movl	%esi, %eax
	movss	%xmm7, 100(%esp)
	movss	%xmm4, 140(%esp)
	call	__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0
	movss	100(%esp), %xmm7
	movss	140(%esp), %xmm4
	jmp	L1459
L1452:
	movl	__ZL16domostpolymethod, %ecx
	movl	180(%esp), %edx
	movl	%esi, %eax
	movss	%xmm7, 100(%esp)
	movss	%xmm5, 140(%esp)
	call	__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0
	movss	100(%esp), %xmm7
	movss	140(%esp), %xmm5
	jmp	L1454
L1483:
	movl	$0, 104(%esp)
	jmp	L1309
L1606:
	movl	180(%esp), %edx
	cmpl	$2, %edx
	jle	L1352
	movl	%esi, %eax
	movss	%xmm7, 100(%esp)
	movss	%xmm5, 140(%esp)
	call	__ZL23polymost_polyeditorfuncPK4vec2IfEi.part.0.lto_priv.0
	movss	100(%esp), %xmm7
	movss	140(%esp), %xmm5
	jmp	L1352
L1610:
	movl	180(%esp), %edx
	cmpl	$2, %edx
	jle	L1454
	movl	%esi, %eax
	movss	%xmm7, 100(%esp)
	movss	%xmm5, 140(%esp)
	call	__ZL23polymost_polyeditorfuncPK4vec2IfEi.part.0.lto_priv.0
	movss	100(%esp), %xmm7
	movss	140(%esp), %xmm5
	jmp	L1454
L1609:
	movl	180(%esp), %edx
	cmpl	$2, %edx
	jle	L1345
	movl	%esi, %eax
	movss	%xmm7, 100(%esp)
	movss	%xmm4, 140(%esp)
	call	__ZL23polymost_polyeditorfuncPK4vec2IfEi.part.0.lto_priv.0
	movss	100(%esp), %xmm7
	movss	140(%esp), %xmm4
	jmp	L1345
L1595:
	movl	180(%esp), %edx
	cmpl	$2, %edx
	jle	L1459
	movl	%esi, %eax
	movss	%xmm7, 100(%esp)
	movss	%xmm4, 140(%esp)
	call	__ZL23polymost_polyeditorfuncPK4vec2IfEi.part.0.lto_priv.0
	movss	100(%esp), %xmm7
	movss	140(%esp), %xmm4
	jmp	L1459
L1594:
	movl	$1, 148(%esp)
	jmp	L1320
L1593:
	movl	$1, 148(%esp)
	jmp	L1475
L1592:
	divss	%xmm3, %xmm6
	mulss	112(%esp), %xmm6
	addss	%xmm7, %xmm6
	comiss	%xmm4, %xmm6
	jbe	L1375
	comiss	%xmm6, %xmm5
	jbe	L1379
	movl	148(%esp), %edi
	addl	$2, %eax
	movl	%eax, 148(%esp)
	movl	$1, 184(%esp,%edi,4)
	movss	%xmm6, 200(%esp,%edi,4)
	jmp	L1319
L1612:
	divss	%xmm3, %xmm0
	mulss	112(%esp), %xmm0
	addss	%xmm7, %xmm0
	comiss	%xmm6, %xmm0
	jbe	L1412
	comiss	%xmm0, %xmm5
	jbe	L1417
	movl	$1, 184(%esp,%edi,4)
	addl	$2, %eax
	movl	%eax, 148(%esp)
	movss	%xmm0, 200(%esp,%edi,4)
	jmp	L1416
	.cfi_endproc
LFE73:
	.section .rdata,"dr"
	.align 4
LC45:
	.ascii "polymost_internal_nonparallaxed(n0:{x:%f, y:%f}, n1:{x:%f, y:%f}, ryp0:%f, ryp1:%f, x0:%f, x1:%f, y0:%f, y1:%f, sectnum:%d)\0"
	.text
	.p2align 4
	.def	__ZL31polymost_internal_nonparallaxed4vec2IfES0_ffffffi;	.scl	3;	.type	32;	.endef
__ZL31polymost_internal_nonparallaxed4vec2IfES0_ffffffi:
LFB78:
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
	movl	$LC45, 4(%esp)
	movl	$3, (%esp)
	fstpl	8(%esp)
	call	__Z26buildgl_outputDebugMessagehPKcz.constprop.0
	movss	-56(%ebp), %xmm0
	movss	-64(%ebp), %xmm1
	movl	_globalorientation, %edi
	movss	-120(%ebp), %xmm3
	movss	-128(%ebp), %xmm4
	testl	$64, %edi
	je	L1615
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
	je	L1616
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
	mulss	LC46, %xmm1
	movswl	(%ebx), %eax
	sall	$5, %eax
	addl	_wall, %eax
	movl	(%eax), %ebx
	movl	4(%eax), %eax
	movl	%ebx, -56(%ebp)
	movl	%eax, -64(%ebp)
L1617:
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
L1615:
	fldl	_gxyaspect
	movl	%edi, %edx
	movl	$0, __ZL4xtex.lto_priv.0
	movl	$0, __ZL4xtex.lto_priv.0+4
	fstl	__ZL4ytex.lto_priv.0
	andl	$2, %edx
	jne	L1628
	movl	__ZL11global_cf_z, %eax
	movl	_globalposz, %ecx
	cmpl	%ecx, %eax
	je	L1628
	subl	%ecx, %eax
	movl	%eax, -56(%ebp)
	fildl	-56(%ebp)
	fdivrp	%st, %st(1)
	fstl	__ZL4ytex.lto_priv.0
L1628:
	movss	__ZL6ghoriz.lto_priv.0, %xmm2
	fld	%st(0)
	xorps	LC1, %xmm2
	movss	%xmm2, -56(%ebp)
	fmuls	-56(%ebp)
	fstl	__ZL4otex.lto_priv.0
	testl	$8, %edi
	je	L1629
	movss	LC49, %xmm2
	mulss	LC7, %xmm4
	mulss	LC48, %xmm3
	mulss	%xmm2, %xmm1
	mulss	%xmm2, %xmm0
	movss	%xmm4, -56(%ebp)
	flds	-56(%ebp)
	movss	%xmm3, -56(%ebp)
L1630:
	movaps	%xmm0, %xmm7
	fildl	_viewingrange
	movss	%xmm1, -120(%ebp)
	movss	LC53, %xmm2
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
	je	L1631
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
L1631:
	testl	$16, %edi
	je	L1632
	fldl	__ZL4xtex.lto_priv.0+8
	fchs
	fstpl	__ZL4xtex.lto_priv.0+8
	fxch	%st(1)
	fchs
	fxch	%st(2)
	fchs
	fxch	%st(2)
	fxch	%st(1)
L1632:
	testl	$32, %edi
	je	L1633
	fldl	__ZL4xtex.lto_priv.0+16
	fchs
	fstpl	__ZL4xtex.lto_priv.0+16
	fxch	%st(3)
	fchs
	fxch	%st(3)
	fchs
L1633:
	movswl	_globalpicnum, %eax
	xorps	%xmm0, %xmm0
	movss	LC33, %xmm1
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
	je	L1707
L1634:
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
	jne	L1708
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	jmp	L1636
	.p2align 4,,10
	.p2align 3
L1714:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
L1636:
	sarl	$7, %edi
	movb	$0, __ZL14drawpoly_blend.lto_priv.0
	movl	$0, __ZL10pow2xsplit.lto_priv.0
	andl	$3, %edi
	movl	%edi, __ZL16domostpolymethod
	movl	$0x00000000, __ZL14drawpoly_alpha.lto_priv.0
	cmpl	$3, _rendmode
	je	L1709
L1640:
	movl	-44(%ebp), %eax
	movl	__ZL16global_cf_fogpal, %ecx
	movl	__ZL13global_cf_pal, %ebx
	movzbl	32(%eax), %edx
	movl	_globalflags, %eax
	testl	%ecx, %ecx
	cmove	%ebx, %ecx
	andl	$4, %eax
	je	L1710
	xorl	%eax, %eax
L1643:
	call	_calc_and_apply_fog
L1641:
	movl	-48(%ebp), %eax
	movl	_globalposy, %ecx
	movl	_globalposx, %edx
	addl	_sector, %eax
	testb	$16, -107(%ebp)
	je	L1644
	testb	$2, 14(%eax)
	je	L1711
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_getflorzofslopeptr.part.0
L1646:
	cmpl	%eax, _globalposz
	jle	L1647
	movl	$-1, __ZL16domostpolymethod
L1648:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1649
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1649:
	movss	LC55, %xmm0
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
	jne	L1712
L1656:
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
L1629:
	.cfi_restore_state
	mulss	LC50, %xmm4
	movss	LC52, %xmm2
	mulss	LC51, %xmm3
	mulss	%xmm2, %xmm1
	mulss	%xmm2, %xmm0
	movss	%xmm4, -56(%ebp)
	flds	-56(%ebp)
	movss	%xmm3, -56(%ebp)
	jmp	L1630
	.p2align 4,,10
	.p2align 3
L1710:
	testb	$2, _hictinting+1(,%ebx,8)
	cmove	__ZL15global_cf_shade, %eax
	jmp	L1643
	.p2align 4,,10
	.p2align 3
L1616:
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
	movss	LC42, %xmm1
	movl	%eax, -112(%ebp)
	testl	%eax, %eax
	je	L1617
	movl	%eax, %esi
	cmpl	%eax, _lastd_s32
	je	L1618
	cmpl	$16383, %eax
	jbe	L1618
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
	jne	L1619
	movl	%esi, %eax
	sarl	$24, %eax
	andl	$-128, %eax
	orl	%ecx, %eax
L1620:
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
L1618:
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
	jne	L1623
	sarb	$7, %cl
	movl	$1048576, %eax
	xorps	%xmm1, %xmm1
	movsbl	%cl, %edx
	movl	%ebx, %ecx
	sarl	%cl, %eax
	xorl	%edx, %eax
	subl	%edx, %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	LC47, %xmm1
	jmp	L1617
	.p2align 4,,10
	.p2align 3
L1644:
	testb	$2, 12(%eax)
	je	L1713
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_getceilzofslopeptr.part.0
L1652:
	cmpl	%eax, _globalposz
	jge	L1653
	movl	$-1, __ZL16domostpolymethod
L1654:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1655
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1655:
	movss	LC55, %xmm0
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
	je	L1656
L1712:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1656
	movl	$3042, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
	jmp	L1656
	.p2align 4,,10
	.p2align 3
L1709:
	movl	_r_useindexedcolortextures, %ecx
	testl	%ecx, %ecx
	je	L1640
	movl	_gltexfiltermode, %edx
	testl	%edx, %edx
	jne	L1640
	movl	_usehightile, %eax
	testl	%eax, %eax
	je	L1641
	movl	_globalpal, %edx
	movswl	_globalpicnum, %eax
	movzwl	_hictinting(,%edx,8), %ecx
	andl	$256, %ecx
	call	_hicfindsubst
	testl	%eax, %eax
	jne	L1640
	jmp	L1641
	.p2align 4,,10
	.p2align 3
L1653:
	testb	$3, __ZL16domostpolymethod
	je	L1655
	jmp	L1654
	.p2align 4,,10
	.p2align 3
L1647:
	testb	$3, __ZL16domostpolymethod
	je	L1649
	jmp	L1648
	.p2align 4,,10
	.p2align 3
L1708:
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
	movss	LC0, %xmm1
	sqrtss	%xmm2, %xmm2
	divss	%xmm2, %xmm1
	mulss	LC54, %xmm1
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
	movss	LC0, %xmm5
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
	fdivrl	LC4
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
	je	L1714
	movss	LC20, %xmm0
	mulss	__ZL16global_cf_heinum, %xmm0
	mulss	%xmm0, %xmm0
	addss	LC0, %xmm0
	sqrtss	%xmm0, %xmm0
	movss	%xmm0, -40(%ebp)
	flds	-40(%ebp)
	testl	$4, %edi
	jne	L1638
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
	jmp	L1636
	.p2align 4,,10
	.p2align 3
L1707:
	movss	LC20, %xmm0
	mulss	__ZL16global_cf_heinum, %xmm0
	movss	LC0, %xmm1
	mulss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	sqrtss	%xmm0, %xmm0
	divss	%xmm0, %xmm1
	testl	$4, %edi
	jne	L1635
	mulss	-56(%ebp), %xmm1
	movss	%xmm1, -56(%ebp)
	jmp	L1634
	.p2align 4,,10
	.p2align 3
L1635:
	fstps	-64(%ebp)
	movss	-64(%ebp), %xmm5
	mulss	%xmm1, %xmm5
	movss	%xmm5, -64(%ebp)
	flds	-64(%ebp)
	jmp	L1634
	.p2align 4,,10
	.p2align 3
L1713:
	movl	4(%eax), %eax
	jmp	L1652
	.p2align 4,,10
	.p2align 3
L1711:
	movl	8(%eax), %eax
	jmp	L1646
	.p2align 4,,10
	.p2align 3
L1638:
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
	jmp	L1636
	.p2align 4,,10
	.p2align 3
L1623:
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
	mulss	LC47, %xmm1
	jmp	L1617
	.p2align 4,,10
	.p2align 3
L1619:
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
	jnb	L1621
	movzbl	-56(%ebp), %eax
	subl	$1, %eax
L1622:
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
	jmp	L1620
	.p2align 4,,10
	.p2align 3
L1621:
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
	jmp	L1622
	.cfi_endproc
LFE78:
	.p2align 4
	.globl	__ZL13calc_ypanningiffffhhi.lto_priv.0
	.def	__ZL13calc_ypanningiffffhhi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL13calc_ypanningiffffhhi.lto_priv.0:
LFB82:
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
	mulss	LC56, %xmm3
	divss	%xmm3, %xmm0
	movss	%xmm0, 52(%esp)
	flds	52(%esp)
	testb	$2, _picanm+4(%eax,%eax,4)
	jne	L1717
	movl	%ecx, %edi
	cmpb	$0, _glinfo+29
	js	L1724
L1718:
	movl	12(%ebp), %eax
	movl	%edx, %ecx
	testl	%eax, %eax
	jne	L1725
L1717:
	imull	%ebx, %ecx
	movaps	%xmm2, %xmm6
	xorps	%xmm0, %xmm0
	subss	%xmm1, %xmm6
	cvtsi2ssl	%ecx, %xmm0
	mulss	LC33, %xmm0
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
L1724:
	.cfi_restore_state
	movl	_r_npotwallmode, %eax
	cmpl	$0, _usehightile
	jne	L1719
	cmpl	$1, %eax
	je	L1726
L1719:
	cmpl	$2, %eax
	jne	L1718
L1720:
	movl	%edx, %ecx
	jmp	L1717
	.p2align 4,,10
	.p2align 3
L1725:
	xorps	%xmm5, %xmm5
	movl	%esi, %eax
	xorps	%xmm0, %xmm0
	fstps	28(%esp)
	cvtsi2ssl	%edx, %xmm5
	movb	%al, 15(%esp)
	movl	%edx, %eax
	movss	LC12, %xmm3
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
	jge	L1720
	movzbl	15(%esp), %ebx
	movl	%esi, %eax
	movl	8(%esp), %ecx
	subl	%eax, %ebx
	movzbl	%bl, %ebx
	jmp	L1717
	.p2align 4,,10
	.p2align 3
L1726:
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
	jmp	L1717
	.cfi_endproc
LFE82:
	.section .rdata,"dr"
LC60:
	.ascii "polymost_drawalls(bunch:%d)\0"
	.align 4
LC62:
	.ascii "Tried to draw wall %d twice in a frame\0"
	.text
	.p2align 4
	.globl	__ZL17polymost_drawallsi.lto_priv.0
	.def	__ZL17polymost_drawallsi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL17polymost_drawallsi.lto_priv.0:
LFB83:
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
	subl	$340, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movswl	_bunchfirst(%eax,%eax), %eax
	movl	$0x00000000, __ZL14drawpoly_alpha.lto_priv.0
	movb	$0, __ZL14drawpoly_blend.lto_priv.0
	movl	_sector, %esi
	movzwl	_thesector(%eax,%eax), %eax
	movl	_qglobalang, %ebx
	movw	%ax, -144(%ebp)
	movl	%edi, 8(%esp)
	movl	$LC60, 4(%esp)
	movl	$3, (%esp)
	call	__Z26buildgl_outputDebugMessagehPKcz.constprop.0
	movswl	_bunchfirst(%edi,%edi), %eax
	movl	%eax, -52(%ebp)
	testl	%eax, %eax
	js	L1727
	movswl	-144(%ebp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebx, %xmm0
	mulss	LC29, %xmm0
	movl	%eax, -192(%ebp)
	leal	(%eax,%eax,4), %eax
	sall	$3, %eax
	leal	(%esi,%eax), %edi
	movl	%eax, -80(%ebp)
	movl	%edi, -56(%ebp)
	movss	%xmm0, -68(%ebp)
	.p2align 4
	.p2align 3
L1998:
	movl	-52(%ebp), %eax
	movl	$0, -76(%ebp)
	movswl	_thewall(%eax,%eax), %edi
	movl	_wall, %eax
	movw	%di, -72(%ebp)
	movl	%edi, -64(%ebp)
	sall	$5, %edi
	leal	(%eax,%edi), %esi
	movl	%edi, -152(%ebp)
	movswl	8(%esi), %edx
	movswl	12(%esi), %edi
	movl	%esi, -44(%ebp)
	sall	$5, %edx
	movw	%di, -124(%ebp)
	movl	%edi, -60(%ebp)
	addl	%edx, %eax
	testl	%edi, %edi
	js	L1729
	movl	_sector, %ecx
	leal	(%edi,%edi,4), %edx
	leal	(%ecx,%edx,8), %esi
	movl	%esi, -76(%ebp)
L1729:
	movl	-44(%ebp), %edi
	movl	_globalposx, %esi
	xorps	%xmm1, %xmm1
	xorps	%xmm6, %xmm6
	movss	_gcosang, %xmm0
	movl	(%eax), %ebx
	xorps	%xmm7, %xmm7
	movl	(%edi), %ecx
	movl	4(%eax), %eax
	movss	_gsinang, %xmm5
	movss	_gsinang2, %xmm4
	movl	%ecx, %edx
	subl	%esi, %edx
	cvtsi2ssl	%edx, %xmm1
	movl	4(%edi), %edx
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
	movss	LC61, %xmm4
	subss	%xmm5, %xmm0
	comiss	%xmm1, %xmm4
	jbe	L2217
	comiss	%xmm3, %xmm4
	ja	L1732
	movss	LC0, %xmm7
	movaps	%xmm4, %xmm5
	movaps	%xmm3, %xmm4
	movl	%ebx, %esi
	subss	%xmm1, %xmm5
	subss	%xmm1, %xmm4
	movaps	%xmm0, %xmm1
	subl	%ecx, %esi
	subss	%xmm2, %xmm1
	movss	%xmm7, -88(%ebp)
	movaps	%xmm5, %xmm6
	divss	%xmm4, %xmm6
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%ecx, %xmm4
	movl	%eax, %ecx
	subl	%edx, %ecx
	mulss	%xmm6, %xmm1
	movss	%xmm6, -140(%ebp)
	addss	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%esi, %xmm1
	mulss	%xmm6, %xmm1
	addss	%xmm4, %xmm1
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%edx, %xmm4
	movss	%xmm1, -104(%ebp)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	mulss	%xmm6, %xmm1
	addss	%xmm4, %xmm1
	movss	LC57, %xmm4
	movss	%xmm1, -108(%ebp)
L1733:
	xorps	%xmm7, %xmm7
	cvtsi2ssl	%ebx, %xmm7
	movss	%xmm7, -112(%ebp)
	xorps	%xmm7, %xmm7
	cvtsi2ssl	%eax, %xmm7
	movss	%xmm7, -120(%ebp)
	movss	-88(%ebp), %xmm7
	movaps	%xmm7, %xmm5
	movss	%xmm7, -136(%ebp)
	divss	%xmm3, %xmm5
L1735:
	movss	_ghalfx, %xmm1
	mulss	%xmm1, %xmm2
	mulss	%xmm1, %xmm0
	mulss	%xmm4, %xmm2
	mulss	%xmm5, %xmm0
	movaps	%xmm2, %xmm7
	movaps	%xmm0, %xmm6
	addss	%xmm1, %xmm7
	addss	%xmm1, %xmm6
	movss	%xmm7, -40(%ebp)
	comiss	%xmm6, %xmm7
	movss	%xmm6, -48(%ebp)
	jnb	L1732
	movl	-64(%ebp), %esi
	movl	-72(%ebp), %eax
	movl	%esi, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.10(%eax), %eax
	movzbl	_didwall(%edx), %ecx
	movl	%ecx, %ebx
	notl	%ebx
	testb	%al, %bl
	je	L2262
	movaps	%xmm4, %xmm7
	orl	%ecx, %eax
	movl	-80(%ebp), %ebx
	movss	-108(%ebp), %xmm1
	movss	_gyxscale, %xmm0
	movb	%al, _didwall(%edx)
	leal	-36(%ebp), %ecx
	leal	-32(%ebp), %edx
	addl	_sector, %ebx
	xorps	%xmm4, %xmm4
	mulss	%xmm0, %xmm7
	movl	%ebx, %eax
	mulss	%xmm5, %xmm0
	movss	%xmm7, -72(%ebp)
	movaps	%xmm0, %xmm5
	movss	%xmm0, -128(%ebp)
	movss	-104(%ebp), %xmm0
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
	movss	%xmm0, -96(%ebp)
	movss	-36(%ebp), %xmm0
	subss	%xmm4, %xmm0
	mulss	%xmm7, %xmm0
	addss	%xmm3, %xmm0
	movss	%xmm0, -92(%ebp)
	movss	-112(%ebp), %xmm0
	call	__Z13fgetzsofslopePK13usectortypev7ffPfS2_
	movss	-32(%ebp), %xmm0
	subss	%xmm5, %xmm7
	movl	$0, __ZL5ytex2
	movl	$0, __ZL5ytex2+4
	movl	$0, __ZL5otex2+8
	subss	%xmm4, %xmm0
	movss	%xmm7, -160(%ebp)
	flds	-160(%ebp)
	movl	$0, __ZL5otex2+12
	movl	$0, __ZL5ytex2+8
	mulss	%xmm5, %xmm0
	fstl	-200(%ebp)
	movl	$0, __ZL5ytex2+12
	movl	$0, __ZL5xtex2+8
	movl	$0, __ZL5xtex2+12
	addss	%xmm3, %xmm0
	movl	$0, __ZL5otex2+16
	movl	$0, __ZL5otex2+20
	movss	%xmm0, -168(%ebp)
	movss	-36(%ebp), %xmm0
	subss	%xmm4, %xmm0
	movss	-40(%ebp), %xmm4
	subss	-48(%ebp), %xmm4
	movss	%xmm4, -160(%ebp)
	flds	-160(%ebp)
	mulss	%xmm5, %xmm0
	fstl	-224(%ebp)
	fldl	_gxyaspect
	addss	%xmm3, %xmm0
	fmulp	%st, %st(2)
	movss	%xmm0, -164(%ebp)
	fdivrp	%st, %st(1)
	fstl	__ZL5xtex2
	flds	-72(%ebp)
	fstpl	-232(%ebp)
	flds	-40(%ebp)
	fstpl	-240(%ebp)
	fldl	_gxyaspect
	fmuls	-72(%ebp)
	fxch	%st(1)
	fmuls	-40(%ebp)
	fsubrp	%st, %st(1)
	fstpl	__ZL5otex2
	movl	$0, __ZL5ytex2+16
	movl	$0, __ZL5ytex2+20
	movl	$0, __ZL5xtex2+16
	movl	$0, __ZL5xtex2+20
	cmpw	$2, _searchit
	je	L2263
L1737:
	movl	_g_nodraw, %eax
	movl	$0, -28(%ebp)
	movl	%eax, -180(%ebp)
	testl	%eax, %eax
	jne	L2264
L1739:
	movl	-56(%ebp), %esi
	movl	$0, __ZL11yax_holencf+4
	movl	$1, __ZL10yax_drawcf
	movl	_globalcisibility2, %ebx
	movl	$0, _globalclipdist
	movzwl	24(%esi), %eax
	movw	%ax, _globalpicnum
	movsbl	28(%esi), %eax
	movl	%eax, _globalshade
	movzbl	29(%esi), %eax
	movl	%eax, _globalpal
	movzwl	14(%esi), %eax
	movl	-80(%ebp), %esi
	movl	%eax, _globalorientation
	movl	_sector, %eax
	movzbl	32(%eax,%esi), %ecx
	movl	_globalcisibility, %esi
	testb	%cl, %cl
	je	L1740
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
L1740:
	xorps	%xmm0, %xmm0
	movl	%ebx, _globvis2
	cvtsi2ssl	%ebx, %xmm0
	movl	%esi, _globvis
	call	__Z22polymost_setVisibilityf
	movswl	_globalpicnum, %eax
	movl	%eax, %ebx
	cmpb	$63, _picanm+3(%eax,%eax,4)
	ja	L2265
L1741:
	testb	$64, -143(%ebp)
	je	L1743
	testb	$16, _globalorientation+1
	je	L1743
	movzwl	_rottile(,%eax,4), %edx
	cmpw	$-1, %dx
	je	L1743
	movw	%dx, _globalpicnum
	movswl	%dx, %eax
	.p2align 4
	.p2align 3
L1743:
	movl	_pskynummultis, %esi
	movl	_multipsky, %ebx
	movl	_multipskytile, %ecx
	leal	-1(%esi), %edx
	testl	%edx, %edx
	jg	L1747
	jmp	L1746
	.p2align 4
	.p2align 4,,10
	.p2align 3
L2267:
	subl	$1, %edx
	je	L2266
L1747:
	cmpl	%eax, (%ecx,%edx,4)
	jne	L2267
L1746:
	sall	$5, %edx
	xorps	%xmm0, %xmm0
	movl	_g_nodraw, %ecx
	movl	$__Z16fgetflorzofslopePK13usectortypev7ff, __ZL23global_getzofslope_func
	leal	(%ebx,%edx), %esi
	movzbl	8(%esi), %ebx
	movb	%bl, -176(%ebp)
	movl	(%esi), %ebx
	movl	%ebx, -244(%ebp)
	movl	4(%esi), %ebx
	movl	%ebx, -252(%ebp)
	movl	28(%esi), %ebx
	movl	%ebx, -184(%ebp)
	movl	-56(%ebp), %ebx
	movzbl	33(%ebx), %edx
	movsbl	28(%ebx), %edi
	movl	%edx, __ZL16global_cf_fogpal
	movl	8(%ebx), %edx
	movl	%edi, -188(%ebp)
	movl	%edx, __ZL11global_cf_z
	movzbl	30(%ebx), %edx
	movl	%edi, __ZL15global_cf_shade
	movzbl	29(%ebx), %edi
	cvtsi2ssl	%edx, %xmm0
	movzbl	31(%ebx), %edx
	movl	%edi, __ZL13global_cf_pal
	movss	%xmm0, __ZL18global_cf_xpanning
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movswl	26(%ebx), %edx
	movss	%xmm0, __ZL18global_cf_ypanning
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movss	%xmm0, __ZL16global_cf_heinum
	testl	%ecx, %ecx
	jne	L1748
	movl	_r_tror_nomaskpass, %edx
	testl	%edx, %edx
	je	L1748
	cmpl	$8, _yax_globallev
	je	L1748
	testb	$1, 15(%ebx)
	je	L1748
	cmpl	$1, _yax_nomaskpass
	je	L1748
	movl	-144(%ebp), %edx
	movl	-192(%ebp), %ecx
	andl	$7, %edx
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.10(%edx), %edx
	movzbl	_yax_gotsector(%ecx), %ebx
	andl	%edx, %ebx
	cmpb	%bl, %dl
	je	L2268
	.p2align 4
	.p2align 3
L1748:
	testb	$1, _globalorientation
	je	L2269
	movl	-60(%ebp), %ebx
	testl	%ebx, %ebx
	js	L1757
	movl	_sector, %ecx
	leal	(%ebx,%ebx,4), %edx
	movss	LC70, %xmm7
	leal	(%ecx,%edx,8), %edx
	movss	%xmm7, -160(%ebp)
	testb	$1, 14(%edx)
	je	L1757
L1752:
	movl	$0, _doeditorcheck
	cmpw	$2, _searchit
	je	L2270
L1824:
	movl	-56(%ebp), %edi
	movl	-80(%ebp), %esi
	movl	$0, __ZL11yax_holencf
	movl	$0, __ZL10yax_drawcf
	movl	_globalcisibility2, %ebx
	movl	$0, _globalclipdist
	movzwl	16(%edi), %eax
	movw	%ax, _globalpicnum
	movsbl	20(%edi), %eax
	movl	%eax, _globalshade
	movzbl	21(%edi), %eax
	movl	%eax, _globalpal
	movzwl	12(%edi), %eax
	movl	%eax, _globalorientation
	movl	_sector, %eax
	movzbl	32(%eax,%esi), %ecx
	movl	_globalcisibility, %esi
	testb	%cl, %cl
	je	L1826
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
L1826:
	xorps	%xmm0, %xmm0
	movl	%ebx, _globvis2
	cvtsi2ssl	%ebx, %xmm0
	movl	%esi, _globvis
	call	__Z22polymost_setVisibilityf
	movswl	_globalpicnum, %eax
	movl	%eax, %ebx
	cmpb	$63, _picanm+3(%eax,%eax,4)
	ja	L2271
L1827:
	testb	$64, -143(%ebp)
	je	L1829
	testb	$16, _globalorientation+1
	je	L1829
	movzwl	_rottile(,%eax,4), %edx
	cmpw	$-1, %dx
	je	L1829
	movw	%dx, _globalpicnum
	movswl	%dx, %eax
	.p2align 4
	.p2align 3
L1829:
	movl	_pskynummultis, %esi
	movl	_multipsky, %ebx
	movl	_multipskytile, %ecx
	leal	-1(%esi), %edx
	testl	%edx, %edx
	jg	L1833
	jmp	L1832
	.p2align 4
	.p2align 4,,10
	.p2align 3
L2273:
	subl	$1, %edx
	je	L2272
L1833:
	cmpl	%eax, (%ecx,%edx,4)
	jne	L2273
L1832:
	sall	$5, %edx
	xorps	%xmm0, %xmm0
	movl	$__Z16fgetceilzofslopePK13usectortypev7ff, __ZL23global_getzofslope_func
	addl	%edx, %ebx
	movzbl	8(%ebx), %ecx
	movl	(%ebx), %esi
	movl	28(%ebx), %edi
	movb	%cl, -184(%ebp)
	movl	-56(%ebp), %ecx
	movl	%esi, -248(%ebp)
	movl	4(%ebx), %esi
	movzbl	33(%ecx), %edx
	movl	%edi, -188(%ebp)
	movl	%esi, -216(%ebp)
	movsbl	20(%ecx), %edi
	movl	%edx, __ZL16global_cf_fogpal
	movl	4(%ecx), %edx
	movzbl	21(%ecx), %esi
	movl	%edi, __ZL15global_cf_shade
	movl	%edx, __ZL11global_cf_z
	movzbl	22(%ecx), %edx
	movl	%esi, __ZL13global_cf_pal
	cvtsi2ssl	%edx, %xmm0
	movzbl	23(%ecx), %edx
	movss	%xmm0, __ZL18global_cf_xpanning
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movswl	18(%ecx), %edx
	movss	%xmm0, __ZL18global_cf_ypanning
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movl	_g_nodraw, %edx
	movl	%edx, -176(%ebp)
	movss	%xmm0, __ZL16global_cf_heinum
	testl	%edx, %edx
	jne	L1834
	movl	_r_tror_nomaskpass, %edx
	testl	%edx, %edx
	je	L1834
	cmpl	$8, _yax_globallev
	je	L1834
	testb	$1, 13(%ecx)
	je	L1834
	cmpl	$1, _yax_nomaskpass
	je	L1834
	movl	-144(%ebp), %ecx
	movl	-192(%ebp), %edx
	andl	$7, %ecx
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.10(%ecx), %ecx
	movb	%cl, -244(%ebp)
	movl	%edx, %ecx
	movzbl	-244(%ebp), %edx
	andb	_yax_gotsector(%ecx), %dl
	cmpb	%dl, -244(%ebp)
	je	L2274
	.p2align 4
	.p2align 3
L1834:
	testb	$1, _globalorientation
	je	L2275
	movl	-60(%ebp), %ecx
	testl	%ecx, %ecx
	js	L1846
	movl	_sector, %edx
	leal	(%ecx,%ecx,4), %ecx
	leal	(%edx,%ecx,8), %ecx
	testb	$1, 12(%ecx)
	je	L1846
L1838:
	movl	-176(%ebp), %edi
	movl	$0, _doeditorcheck
	testl	%edi, %edi
	jne	L1845
L1915:
	fldl	-200(%ebp)
	fmull	_gxyaspect
	movl	$-1, __ZL10yax_drawcf
	fldl	-224(%ebp)
	movss	-140(%ebp), %xmm0
	movl	$0, __ZL4ytex.lto_priv.0
	mulss	-72(%ebp), %xmm0
	movl	-44(%ebp), %eax
	movl	$0, __ZL4ytex.lto_priv.0+4
	movss	-136(%ebp), %xmm1
	mulss	-128(%ebp), %xmm1
	fdivr	%st, %st(1)
	fxch	%st(1)
	movzbl	22(%eax), %esi
	movzbl	24(%eax), %eax
	movl	%eax, -136(%ebp)
	movaps	%xmm0, %xmm4
	subss	%xmm1, %xmm4
	movss	%xmm4, -88(%ebp)
	fstl	__ZL4xtex.lto_priv.0
	fldl	-232(%ebp)
	fmull	_gxyaspect
	fldl	-240(%ebp)
	fld	%st(0)
	fmul	%st(3), %st
	fsubrp	%st, %st(2)
	fxch	%st(1)
	fstl	__ZL4otex.lto_priv.0
	fldl	_gxyaspect
	fmuls	-88(%ebp)
	movl	%esi, -88(%ebp)
	fildl	-88(%ebp)
	fmulp	%st, %st(1)
	fmuls	-160(%ebp)
	fdivp	%st, %st(4)
	fildl	-136(%ebp)
	movss	%xmm0, -136(%ebp)
	fldl	_gxyaspect
	fmuls	-136(%ebp)
	fildl	-88(%ebp)
	fmulp	%st, %st(1)
	fmuls	-160(%ebp)
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
	movl	_yax_nomaskpass, %ebx
	movl	$0, __ZL4ytex.lto_priv.0+8
	movl	$0, __ZL4ytex.lto_priv.0+12
	movl	$32, __ZL16domostpolymethod
	testl	%ebx, %ebx
	jne	L2276
L1925:
	movl	-60(%ebp), %eax
	testl	%eax, %eax
	jns	L2277
	fstp	%st(0)
	fstp	%st(0)
L1928:
	cmpw	$2, _searchit
	je	L2278
L1973:
	movl	-44(%ebp), %eax
	movl	$1, %esi
	movzwl	16(%eax), %eax
L1976:
	movl	-44(%ebp), %ebx
	movl	-80(%ebp), %edi
	movw	%ax, _globalpicnum
	movl	$0, _globalclipdist
	movsbl	20(%ebx), %eax
	movl	%eax, _globalshade
	movzbl	21(%ebx), %eax
	movl	_globalvisibility2, %ebx
	movl	%eax, _globalpal
	movl	_sector, %eax
	movzbl	32(%eax,%edi), %ecx
	movl	_globalvisibility, %edi
	testb	%cl, %cl
	je	L1977
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
L1977:
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
	ja	L2279
L1978:
	andb	$64, %dh
	je	L1979
	testb	$16, %bh
	je	L1979
	movswl	_globalpicnum, %eax
	movzwl	_rottile(,%eax,4), %eax
	cmpw	$-1, %ax
	je	L1979
	movw	%ax, _globalpicnum
	.p2align 4
	.p2align 3
L1979:
	movl	-60(%ebp), %edi
	andl	$4, %ebx
	testl	%edi, %edi
	js	L1980
	testw	%bx, %bx
	jne	L1981
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
L1982:
	shrw	$2, %bx
	movl	-44(%ebp), %edi
	xorl	$1, %ebx
	andl	%esi, %ebx
	movzbl	23(%edi), %ecx
	movzbl	25(%edi), %edx
	movzbl	%bl, %ebx
	movl	%ebx, 4(%esp)
	movss	-48(%ebp), %xmm7
	movss	%xmm7, (%esp)
	movss	-40(%ebp), %xmm2
	movss	-128(%ebp), %xmm1
	movss	-72(%ebp), %xmm0
	call	__ZL13calc_ypanningiffffhhi.lto_priv.0
	movzwl	14(%edi), %eax
	testb	$8, %al
	je	L1984
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
L1984:
	testb	$1, %ah
	je	L1985
	fldl	__ZL4xtex.lto_priv.0+16
	fchs
	fstpl	__ZL4xtex.lto_priv.0+16
	fldl	__ZL4ytex.lto_priv.0+16
	fchs
	fstpl	__ZL4ytex.lto_priv.0+16
	fldl	__ZL4otex.lto_priv.0+16
	fchs
	fstpl	__ZL4otex.lto_priv.0+16
L1985:
	cmpl	$3, _rendmode
	je	L2280
L1986:
	movl	-56(%ebp), %eax
	movzbl	33(%eax), %ecx
	testb	%cl, %cl
	jne	L1988
	movzbl	29(%eax), %ecx
L1988:
	movl	-56(%ebp), %eax
	movzbl	32(%eax), %edx
	movl	_globalflags, %eax
	andl	$4, %eax
	jne	L2018
	movl	-44(%ebp), %edi
	movzbl	21(%edi), %ebx
	testb	$2, _hictinting+1(,%ebx,8)
	je	L2281
L1989:
	call	_calc_and_apply_fog
L1987:
	movl	-56(%ebp), %eax
	movl	_globalposz, %esi
	movl	$1, __ZL10pow2xsplit.lto_priv.0
	cmpl	%esi, 8(%eax)
	jge	L1990
	movl	-64(%ebp), %eax
	movl	$1, %edx
	call	_yax_vnextsec
	testw	%ax, %ax
	jns	L1991
L1990:
	movss	-164(%ebp), %xmm7
	movss	%xmm7, 16(%esp)
	movss	-168(%ebp), %xmm2
	movss	%xmm2, 12(%esp)
	movss	-92(%ebp), %xmm5
	movss	%xmm5, 8(%esp)
	movss	-96(%ebp), %xmm1
	movss	%xmm2, (%esp)
	movss	%xmm1, 4(%esp)
	movss	-48(%ebp), %xmm2
	movss	-40(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
L1992:
	movl	$0, _doeditorcheck
	movl	-60(%ebp), %eax
	movl	$0, __ZL16domostpolymethod
	testl	%eax, %eax
	jns	L1970
	.p2align 4
	.p2align 3
L1732:
	movl	-52(%ebp), %eax
	movswl	_bunchp2(%eax,%eax), %eax
	movl	%eax, -52(%ebp)
	testl	%eax, %eax
	jns	L1998
L1727:
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
L2217:
	.cfi_restore_state
	movss	LC61, %xmm5
	xorps	%xmm7, %xmm7
	xorps	%xmm6, %xmm6
	movss	LC0, %xmm4
	cvtsi2ssl	%ecx, %xmm7
	movl	$0x3f800000, -88(%ebp)
	cvtsi2ssl	%edx, %xmm6
	comiss	%xmm3, %xmm5
	divss	%xmm1, %xmm4
	movss	%xmm7, -104(%ebp)
	movss	%xmm6, -108(%ebp)
	jbe	L2218
	subss	%xmm1, %xmm5
	subss	%xmm1, %xmm3
	subl	%ecx, %ebx
	subl	%edx, %eax
	xorps	%xmm1, %xmm1
	subss	%xmm2, %xmm0
	movl	$0x00000000, -140(%ebp)
	cvtsi2ssl	%ebx, %xmm1
	divss	%xmm3, %xmm5
	mulss	%xmm5, %xmm1
	movss	%xmm5, -136(%ebp)
	mulss	%xmm5, %xmm0
	addss	%xmm7, %xmm1
	addss	%xmm2, %xmm0
	movss	%xmm1, -112(%ebp)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm5, %xmm1
	movss	LC57, %xmm5
	addss	%xmm6, %xmm1
	movss	%xmm1, -120(%ebp)
	jmp	L1735
	.p2align 4,,10
	.p2align 3
L2262:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L1732
	movl	%esi, 16(%esp)
	movl	$LC62, 12(%esp)
	movl	$5424, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1732
	.p2align 4,,10
	.p2align 3
L2277:
	movl	_sector, %esi
	leal	(%eax,%eax,4), %eax
	leal	-36(%ebp), %ecx
	xorps	%xmm4, %xmm4
	movss	-108(%ebp), %xmm1
	movss	-104(%ebp), %xmm0
	fstps	-140(%ebp)
	leal	-32(%ebp), %edx
	leal	(%esi,%eax,8), %ebx
	movl	%eax, -136(%ebp)
	movl	%ebx, %eax
	fstps	-160(%ebp)
	call	__Z13fgetzsofslopePK13usectortypev7ffPfS2_
	movss	-32(%ebp), %xmm0
	movl	%ebx, %eax
	leal	-36(%ebp), %ecx
	movss	-72(%ebp), %xmm5
	movss	-120(%ebp), %xmm1
	leal	-32(%ebp), %edx
	cvtsi2ssl	_globalposz, %xmm4
	movss	__ZL6ghoriz.lto_priv.0, %xmm3
	subss	%xmm4, %xmm0
	mulss	%xmm5, %xmm0
	addss	%xmm3, %xmm0
	movss	%xmm0, -88(%ebp)
	movss	-36(%ebp), %xmm0
	subss	%xmm4, %xmm0
	mulss	%xmm5, %xmm0
	addss	%xmm3, %xmm0
	movss	%xmm0, -104(%ebp)
	movss	-112(%ebp), %xmm0
	call	__Z13fgetzsofslopePK13usectortypev7ffPfS2_
	movss	-32(%ebp), %xmm0
	movss	-128(%ebp), %xmm7
	movl	-44(%ebp), %eax
	subss	%xmm4, %xmm0
	movzwl	14(%eax), %eax
	mulss	%xmm7, %xmm0
	movw	%ax, -108(%ebp)
	andl	$48, %eax
	addss	%xmm3, %xmm0
	movss	%xmm0, -112(%ebp)
	movss	-36(%ebp), %xmm0
	subss	%xmm4, %xmm0
	mulss	%xmm7, %xmm0
	addss	%xmm3, %xmm0
	movss	%xmm0, -120(%ebp)
	cmpw	$16, %ax
	jne	L1929
	movswl	_maskwallcnt, %eax
	movzwl	-52(%ebp), %edi
	leal	1(%eax), %edx
	movw	%di, _maskwall(%eax,%eax)
	movw	%dx, _maskwallcnt
L1929:
	movss	-88(%ebp), %xmm2
	comiss	-96(%ebp), %xmm2
	jbe	L2282
	movl	-56(%ebp), %eax
	movzwl	12(%eax), %eax
	andw	12(%ebx), %ax
	testb	$1, %al
	je	L1932
L2259:
	movl	-44(%ebp), %eax
	movzwl	14(%eax), %eax
L1931:
	movss	-92(%ebp), %xmm2
	comiss	-104(%ebp), %xmm2
	jbe	L2283
L1947:
	movl	-136(%ebp), %esi
	movl	_sector, %edx
	movzwl	14(%edx,%esi,8), %ecx
	movl	-56(%ebp), %esi
	andw	14(%esi), %cx
	andl	$1, %ecx
	je	L2284
L1927:
	testb	$32, %al
	jne	L1969
L1975:
	movl	$0, __ZL16domostpolymethod
L1970:
	movl	-124(%ebp), %eax
	movl	-60(%ebp), %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.10(%eax), %eax
	movzbl	_gotsector(%edx), %ebx
	andl	%eax, %ebx
	cmpb	%bl, %al
	je	L1732
	movswl	__ZL3vsp.lto_priv.0+24, %edx
	testl	%edx, %edx
	je	L1732
	movss	-40(%ebp), %xmm1
	movss	-48(%ebp), %xmm2
	jmp	L1997
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1993:
	testl	%edx, %edx
	je	L1732
L1997:
	movl	%edx, %eax
	sall	$5, %edx
	movswl	__ZL3vsp.lto_priv.0+24(%edx), %edx
	movl	%edx, %ecx
	sall	$5, %ecx
	movss	__ZL3vsp.lto_priv.0(%ecx), %xmm0
	comiss	%xmm1, %xmm0
	jbe	L1993
	sall	$5, %eax
	comiss	__ZL3vsp.lto_priv.0(%eax), %xmm2
	jbe	L1993
	cmpw	$0, __ZL3vsp.lto_priv.0+28(%eax)
	js	L1993
	movzwl	-124(%ebp), %eax
	movw	%ax, _sectorborder
	call	_polymost_scansector.part.0
	jmp	L1732
	.p2align 4,,10
	.p2align 3
L2266:
	xorl	%edx, %edx
	jmp	L1746
	.p2align 4,,10
	.p2align 3
L2272:
	xorl	%edx, %edx
	jmp	L1832
	.p2align 4,,10
	.p2align 3
L2018:
	xorl	%eax, %eax
	jmp	L1989
	.p2align 4,,10
	.p2align 3
L2276:
	movl	_yax_globalcf, %ecx
	xorl	%edx, %edx
	movl	-64(%ebp), %eax
	fstpl	-136(%ebp)
	fstpl	-88(%ebp)
	testl	%ecx, %ecx
	sete	%dl
	call	_yax_vnextsec
	fldl	-88(%ebp)
	fldl	-136(%ebp)
	testw	%ax, %ax
	js	L1925
	fstp	%st(0)
	fstp	%st(0)
	movl	$1, _yax_nomaskdidit
	movl	-60(%ebp), %edx
	testl	%edx, %edx
	js	L1928
	movl	-44(%ebp), %eax
	movzwl	14(%eax), %eax
	jmp	L1927
	.p2align 4,,10
	.p2align 3
L2264:
	movl	-192(%ebp), %edi
	movl	_yax_globallev, %ebx
	movl	%edi, %eax
	call	_yax_getbunch.constprop.1
	movw	%ax, -28(%ebp)
	movswl	%ax, %esi
	movl	%edi, %eax
	call	_yax_getbunch.constprop.0
	notl	%esi
	movw	%ax, -26(%ebp)
	cwtl
	shrl	$31, %esi
	notl	%eax
	shrl	$31, %eax
	leal	(%esi,%eax,2), %esi
	movl	%esi, -180(%ebp)
	cmpl	$8, %ebx
	je	L1739
	movl	_yax_globalcf, %ecx
	movl	$1, %eax
	sall	%cl, %eax
	andl	%eax, %esi
	movl	%esi, -180(%ebp)
	jmp	L1739
	.p2align 4,,10
	.p2align 3
L2265:
	call	_animateoffs
	addl	%eax, %ebx
	movw	%bx, _globalpicnum
	movswl	%bx, %eax
	jmp	L1741
	.p2align 4,,10
	.p2align 3
L2271:
	call	_animateoffs
	addl	%eax, %ebx
	movw	%bx, _globalpicnum
	movswl	%bx, %eax
	jmp	L1827
	.p2align 4,,10
	.p2align 3
L2275:
	movl	-80(%ebp), %eax
	addl	_sector, %eax
	testb	$2, 12(%eax)
	je	L2285
	movl	_globalposy, %edx
	movl	%edx, 8(%esp)
	movl	_globalposx, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_getceilzofslopeptr.part.0
	cmpl	%eax, _globalposz
	jge	L2286
L1842:
	movl	_g_nodraw, %ecx
	testl	%ecx, %ecx
	je	L1843
	testb	$1, -180(%ebp)
	jne	L1844
	movl	$0, _doeditorcheck
L1845:
	movl	$__ZL10yax_holecf, -244(%ebp)
	testb	$1, -180(%ebp)
	jne	L2287
L2153:
	movl	-180(%ebp), %eax
	sarl	%eax
	movl	%eax, -216(%ebp)
	je	L1915
	addl	$49152, -244(%ebp)
L1924:
	movl	-216(%ebp), %eax
	movswl	-28(%ebp,%eax,2), %eax
	movl	%eax, %ecx
	movl	%eax, %ebx
	sarl	$3, %ecx
	andl	$7, %ebx
	movzbl	_haveymost(%ecx), %edi
	movzbl	__ZL8pow2char.lto_priv.10(%ebx), %ebx
	movl	%edi, %esi
	notl	%esi
	movl	%esi, %edx
	testb	%bl, %dl
	je	L1917
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
L1918:
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
	jne	L1918
	movl	__ZL7yax_vsp.lto_priv.0(,%eax,8), %edx
	xorl	%ebx, %ebx
	movl	$2, %esi
	movl	$72, %ecx
	movw	%bx, 64(%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%eax,8), %edx
	movw	%si, 18(%edx)
	movl	$4, %edx
	.p2align 6
	.p2align 4
	.p2align 3
L1919:
	movl	__ZL7yax_vsp.lto_priv.0(,%eax,8), %ebx
	leal	-2(%edx), %esi
	movw	%dx, 16(%ebx,%ecx)
	movl	__ZL7yax_vsp.lto_priv.0(,%eax,8), %ebx
	addl	$1, %edx
	movw	%si, 18(%ebx,%ecx)
	addl	$24, %ecx
	cmpl	$2049, %edx
	jne	L1919
	movl	__ZL7yax_vsp.lto_priv.0(,%eax,8), %edx
	movl	$3, %edi
	movl	$2047, %ecx
	xorl	%ebx, %ebx
	movss	__ZL3xbt.lto_priv.0, %xmm0
	movw	%di, 49144(%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%eax,8), %edx
	movw	%cx, 90(%edx)
	leal	1(%eax,%eax), %ecx
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
L1920:
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
	jne	L1920
	movl	__ZL7yax_vsp.lto_priv.0(,%ecx,4), %edx
	xorl	%ebx, %ebx
	movl	$2, %esi
	movw	%bx, 64(%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%ecx,4), %edx
	movl	$72, %ebx
	movw	%si, 18(%edx)
	movl	$4, %edx
	.p2align 6
	.p2align 4
	.p2align 3
L1921:
	movl	__ZL7yax_vsp.lto_priv.0(,%ecx,4), %esi
	leal	-2(%edx), %edi
	movw	%dx, 16(%esi,%ebx)
	movl	__ZL7yax_vsp.lto_priv.0(,%ecx,4), %esi
	addl	$1, %edx
	movw	%di, 18(%esi,%ebx)
	addl	$24, %ebx
	cmpl	$2049, %edx
	jne	L1921
	movl	__ZL7yax_vsp.lto_priv.0(,%ecx,4), %edx
	movl	$3, %esi
	movl	$2047, %edi
	movw	%si, 49144(%edx)
	movl	__ZL7yax_vsp.lto_priv.0(,%ecx,4), %edx
	movw	%di, 90(%edx)
L1917:
	movl	-216(%ebp), %esi
	movl	__ZL11yax_holencf(,%esi,4), %edx
	testl	%edx, %edx
	jle	L1916
	leal	(%eax,%eax), %esi
	movl	-244(%ebp), %ebx
	movl	%edx, %edi
	leal	1(%esi), %eax
	movl	%esi, -188(%ebp)
	movl	%eax, -184(%ebp)
	movl	%ebx, %esi
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L1923:
	movss	12(%esi), %xmm1
	movss	4(%esi), %xmm3
	addl	$1, %ebx
	addl	$24, %esi
	movss	-24(%esi), %xmm0
	movss	%xmm1, (%esp)
	movss	-16(%esi), %xmm1
	movl	-188(%ebp), %eax
	movaps	%xmm3, %xmm2
	movss	%xmm3, -176(%ebp)
	movss	%xmm0, -88(%ebp)
	call	__ZL19yax_polymost_domostiffff
	movss	-8(%esi), %xmm1
	movss	%xmm1, (%esp)
	movss	-4(%esi), %xmm1
	movss	-88(%ebp), %xmm2
	movss	-176(%ebp), %xmm0
	movl	-184(%ebp), %eax
	call	__ZL19yax_polymost_domostiffff
	cmpl	%edi, %ebx
	jne	L1923
L1916:
	cmpl	$1, -216(%ebp)
	jne	L2153
	jmp	L1915
	.p2align 4,,10
	.p2align 3
L2269:
	movl	-80(%ebp), %eax
	addl	_sector, %eax
	testb	$2, 14(%eax)
	je	L2288
	movl	_globalposy, %edx
	movl	%edx, 8(%esp)
	movl	_globalposx, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_getflorzofslopeptr.part.0
	cmpl	%eax, _globalposz
	jle	L2289
L1756:
	movss	LC70, %xmm7
	movl	_g_nodraw, %ebx
	movss	%xmm7, -160(%ebp)
	testl	%ebx, %ebx
	je	L1752
	testb	$2, -180(%ebp)
	je	L1752
	movss	LC55, %xmm7
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	-164(%ebp), %xmm4
	movss	%xmm4, (%esp)
	movss	-48(%ebp), %xmm2
	movss	-92(%ebp), %xmm1
	movss	-40(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	jmp	L1752
	.p2align 4,,10
	.p2align 3
L1980:
	movl	-56(%ebp), %eax
	testw	%bx, %bx
	jne	L1983
	movl	4(%eax), %eax
	jmp	L1982
	.p2align 4,,10
	.p2align 3
L1757:
	movsbl	-176(%ebp), %ebx
	movl	%ebx, -264(%ebp)
	movl	-56(%ebp), %ebx
	movzbl	32(%ebx), %ebx
	cmpl	$3, _rendmode
	je	L2290
L1758:
	movl	_nofog, %eax
	testl	%eax, %eax
	jne	L1760
	movl	-188(%ebp), %eax
	movzbl	%bl, %edx
	movl	%edi, %ecx
	call	_calc_and_apply_fog_factor.part.0.constprop.0
	movl	-56(%ebp), %eax
	movzbl	32(%eax), %ebx
L1760:
	movl	_globalpisibility, %eax
	movl	%eax, %edx
	testb	%bl, %bl
	jne	L2291
L1762:
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movl	%edx, _globvis2
	cvtsi2ssl	_xdimscale, %xmm0
	mulss	_fxdimen, %xmm0
	mulss	LC63, %xmm0
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	call	__Z22polymost_setVisibilityf
	movzbl	-176(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	leal	-1(%eax), %edi
	movl	%edi, -216(%ebp)
	testl	%edi, %edi
	jle	L1763
	movzbl	8(%esi,%eax), %edx
	movl	%edi, %eax
	jmp	L1765
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1764:
	subl	$1, %eax
	je	L1763
L1765:
	movl	%edx, %ecx
	movzbl	8(%esi,%eax), %edx
	cmpb	%cl, %dl
	je	L1764
	movl	_r_parallaxskyclamping, %eax
	movl	%eax, __ZL12skyclamphack.lto_priv.0
L1763:
	movl	_usehightile, %ecx
	movl	$1, __ZL14skyzbufferhack
	testl	%ecx, %ecx
	jne	L2292
L1766:
	movss	__ZL6ghoriz.lto_priv.0, %xmm5
	movl	_r_flatsky, %edx
	movl	_r_yshearing, %eax
	movl	_xdimscale, %edi
	movss	_fviewingrange, %xmm2
	movss	%xmm5, -268(%ebp)
	testl	%edx, %edx
	je	L1768
	testl	%eax, %eax
	jne	L1769
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
	mulss	LC64, %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	xorps	%xmm0, %xmm0
	movl	%eax, _globalshade
	call	__Z22polymost_setVisibilityf
	movl	$0x00000000, 12(%esp)
	movss	LC55, %xmm7
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	-164(%ebp), %xmm2
	movss	%xmm2, (%esp)
	movss	-48(%ebp), %xmm2
	movss	-92(%ebp), %xmm1
	movss	-40(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movl	$0, __ZL13flatskyrender
L1770:
	movss	-268(%ebp), %xmm5
	movss	LC70, %xmm7
	movss	%xmm5, __ZL6ghoriz.lto_priv.0
	movss	%xmm7, -160(%ebp)
L1788:
	movl	_nofog, %ecx
	movl	$0, __ZL12skyclamphack.lto_priv.0
	movl	$0, __ZL14skyzbufferhack
	testl	%ecx, %ecx
	jne	L1752
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L1752
	movss	-88(%ebp), %xmm5
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm5
	jp	L2037
	je	L1752
L2037:
	movss	-88(%ebp), %xmm5
	movss	%xmm5, __ZL19polymost1FogEnabled.lto_priv.0
	movss	%xmm5, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
	jmp	L1752
	.p2align 4,,10
	.p2align 3
L1846:
	movsbl	-184(%ebp), %ecx
	movl	%ecx, -268(%ebp)
	movl	-56(%ebp), %ecx
	movzbl	32(%ecx), %ecx
	movb	%cl, -176(%ebp)
	cmpl	$3, _rendmode
	je	L2293
L1847:
	movl	_nofog, %ecx
	testl	%ecx, %ecx
	jne	L1849
	movzbl	-176(%ebp), %edx
	movl	%edi, %eax
	movl	%esi, %ecx
	call	_calc_and_apply_fog_factor.part.0.constprop.0
	movl	-56(%ebp), %eax
	movzbl	32(%eax), %eax
	movb	%al, -176(%ebp)
L1849:
	movl	_globalpisibility, %eax
	movzbl	-176(%ebp), %ecx
	movl	%eax, %edx
	testb	%cl, %cl
	jne	L2294
L1851:
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movl	%edx, _globvis2
	cvtsi2ssl	_xdimscale, %xmm0
	mulss	_fxdimen, %xmm0
	mulss	LC63, %xmm0
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	call	__Z22polymost_setVisibilityf
	movzbl	-184(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	leal	-1(%eax), %esi
	movl	%esi, -244(%ebp)
	testl	%esi, %esi
	jle	L1852
	movzbl	8(%ebx,%eax), %edx
	movl	%esi, %eax
	jmp	L1854
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1853:
	subl	$1, %eax
	je	L1852
L1854:
	movl	%edx, %ecx
	movzbl	8(%ebx,%eax), %edx
	cmpb	%cl, %dl
	je	L1853
	movl	_r_parallaxskyclamping, %eax
	movl	%eax, __ZL12skyclamphack.lto_priv.0
L1852:
	movl	_usehightile, %edx
	movl	$1, __ZL14skyzbufferhack
	testl	%edx, %edx
	jne	L2295
L1855:
	movss	__ZL6ghoriz.lto_priv.0, %xmm2
	movl	_r_flatsky, %eax
	movl	_r_yshearing, %edi
	movl	_xdimscale, %esi
	movss	%xmm2, -272(%ebp)
	movss	_fviewingrange, %xmm2
	testl	%eax, %eax
	je	L1857
	testl	%edi, %edi
	jne	L1858
	movl	_globvis2, %eax
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movl	$0, __ZL10pow2xsplit.lto_priv.0
	cvtsi2ssl	_globalshade, %xmm1
	movl	$0, __ZL12skyclamphack.lto_priv.0
	movl	$1, __ZL13flatskyrender
	imull	%esi, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm2, %xmm0
	mulss	LC64, %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	xorps	%xmm0, %xmm0
	movl	%eax, _globalshade
	call	__Z22polymost_setVisibilityf
	movl	$0x00000000, 12(%esp)
	movss	LC55, %xmm7
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	-96(%ebp), %xmm2
	movss	%xmm2, (%esp)
	movss	-40(%ebp), %xmm2
	movss	-48(%ebp), %xmm0
	movss	-168(%ebp), %xmm1
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movl	$0, __ZL13flatskyrender
L1859:
	movss	-272(%ebp), %xmm5
	movss	%xmm5, __ZL6ghoriz.lto_priv.0
L1877:
	movl	_nofog, %eax
	movl	$0, __ZL12skyclamphack.lto_priv.0
	movl	$0, __ZL14skyzbufferhack
	testl	%eax, %eax
	je	L1912
L2258:
	movl	_g_nodraw, %eax
	movl	%eax, -176(%ebp)
	jmp	L1838
	.p2align 4,,10
	.p2align 3
L2280:
	movl	_r_useindexedcolortextures, %ebx
	testl	%ebx, %ebx
	je	L1986
	movl	_gltexfiltermode, %ecx
	testl	%ecx, %ecx
	jne	L1986
	movl	_usehightile, %edx
	testl	%edx, %edx
	je	L1987
	movl	_globalpal, %edx
	movswl	_globalpicnum, %eax
	movzwl	_hictinting(,%edx,8), %ecx
	andl	$256, %ecx
	call	_hicfindsubst
	testl	%eax, %eax
	jne	L1986
	jmp	L1987
	.p2align 4,,10
	.p2align 3
L2279:
	movl	%edx, -88(%ebp)
	call	_animateoffs
	movl	-88(%ebp), %edx
	addl	%eax, %edi
	movw	%di, _globalpicnum
	jmp	L1978
	.p2align 4,,10
	.p2align 3
L2218:
	movl	$0x00000000, -140(%ebp)
	jmp	L1733
	.p2align 4,,10
	.p2align 3
L1981:
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	jmp	L1982
	.p2align 4,,10
	.p2align 3
L2263:
	movl	-192(%ebp), %eax
	call	_yax_getbunch.constprop.0
	testw	%ax, %ax
	js	L1738
	cmpb	$0, _showinvisibility
	jne	L1738
	movl	-56(%ebp), %eax
	testw	$384, 14(%eax)
	jne	L1738
	movl	_yax_globallev, %eax
	subl	$8, %eax
/APP
 # 5451 "source/build/src/polymost.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	$8, %eax
	jne	L1737
	.p2align 4
	.p2align 3
L1738:
	movl	-192(%ebp), %eax
	movl	$2, _psearchstat
	movl	$1, _doeditorcheck
	movl	%eax, _psectnum
	movl	-64(%ebp), %eax
	movl	%eax, _pwallnum
	jmp	L1737
	.p2align 4,,10
	.p2align 3
L2270:
	movl	-192(%ebp), %eax
	call	_yax_getbunch.constprop.1
	testw	%ax, %ax
	js	L1825
	cmpb	$0, _showinvisibility
	jne	L1825
	movl	-56(%ebp), %eax
	testw	$384, 14(%eax)
	jne	L1825
	movl	_yax_globallev, %eax
	subl	$8, %eax
/APP
 # 5884 "source/build/src/polymost.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	$8, %eax
	jne	L1824
	.p2align 4
	.p2align 3
L1825:
	movl	-192(%ebp), %eax
	movl	$1, _psearchstat
	movl	$1, _doeditorcheck
	movl	%eax, _psectnum
	movl	-64(%ebp), %eax
	movl	%eax, _pwallnum
	jmp	L1824
	.p2align 4,,10
	.p2align 3
L2281:
	movsbl	20(%edi), %eax
	jmp	L1989
	.p2align 4,,10
	.p2align 3
L2283:
	movss	-164(%ebp), %xmm2
	comiss	-120(%ebp), %xmm2
	jbe	L1927
	jmp	L1947
	.p2align 4,,10
	.p2align 3
L2282:
	movss	-112(%ebp), %xmm2
	comiss	-168(%ebp), %xmm2
	jbe	L2259
	movl	-56(%ebp), %eax
	movzwl	12(%eax), %eax
	andw	12(%ebx), %ax
	testb	$1, %al
	je	L1932
	jmp	L2259
	.p2align 4,,10
	.p2align 3
L1983:
	movl	8(%eax), %eax
	jmp	L1982
	.p2align 4,,10
	.p2align 3
L1969:
	cmpw	$2, _searchit
	jne	L1971
	movl	-192(%ebp), %eax
	movl	$4, _psearchstat
	movl	$1, _doeditorcheck
	movl	%eax, _psectnum
	movl	-64(%ebp), %eax
	movl	%eax, _pwallnum
	movl	%eax, _pbottomwall
L1971:
	movl	_globalposy, %eax
	movl	-152(%ebp), %edx
	movl	_globalposx, %ecx
	movl	%eax, -140(%ebp)
	movl	_wall, %eax
	movl	%ecx, -136(%ebp)
	addl	%eax, %edx
	movl	(%edx), %ebx
	movl	4(%edx), %esi
	movswl	8(%edx), %edx
	movl	%ebx, -108(%ebp)
	sall	$5, %edx
	movl	%esi, -112(%ebp)
	addl	%edx, %eax
	movl	(%eax), %edi
	subl	%ebx, %edi
	movl	4(%eax), %ebx
	movl	%ecx, %eax
	movl	-108(%ebp), %ecx
	movl	%edi, -88(%ebp)
	cltd
	subl	%esi, %ebx
	movl	%edi, %esi
	sarl	$31, %edi
	movl	%ebx, -104(%ebp)
	movl	%ebx, -160(%ebp)
	sarl	$31, %ebx
	movl	%ebx, -156(%ebp)
	movl	%ecx, %ebx
	sarl	$31, %ebx
	subl	%ecx, %eax
	movl	%edi, -148(%ebp)
	sbbl	%ebx, %edx
	movl	%eax, -120(%ebp)
	movl	-88(%ebp), %eax
	movl	%edx, -116(%ebp)
	movl	-148(%ebp), %edx
	movl	%esi, -152(%ebp)
	movl	-116(%ebp), %ecx
	movl	-120(%ebp), %esi
	imull	%eax, %ecx
	imull	%esi, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	movl	%esi, %eax
	mull	%edx
	movl	%edx, %edi
	movl	%eax, %esi
	movl	-140(%ebp), %eax
	addl	%ecx, %edi
	movl	-112(%ebp), %ecx
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
	movl	-156(%ebp), %edx
	movl	-104(%ebp), %eax
	movl	%ebx, -104(%ebp)
	imull	%eax, %edx
	addl	%edx, %ecx
	mull	%ebx
	addl	%ecx, %edx
	addl	%eax, %esi
	adcl	%edx, %edi
	js	L1974
	movl	-88(%ebp), %eax
	imull	%eax
	movl	%eax, %ecx
	movl	-104(%ebp), %eax
	movl	%edx, %ebx
	imull	%eax
	addl	%ecx, %eax
	adcl	%ebx, %edx
	cmpl	%esi, %eax
	movl	%edx, %ebx
	sbbl	%edi, %ebx
	jl	L1974
	movl	%esi, %ebx
	movl	%edi, %esi
	movl	%eax, 8(%esp)
	shldl	$15, %ebx, %esi
	sall	$15, %ebx
	movl	%edx, 12(%esp)
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	call	_tabledivide64.lto_priv.7
	movl	%eax, %ebx
	movl	%edx, %esi
	movl	-148(%ebp), %edx
	shldl	$15, %eax, %esi
	sall	$15, %ebx
	movl	-88(%ebp), %eax
	imull	%ebx, %edx
	movl	%esi, %edi
	movl	%ebx, %esi
	imull	%edi, %eax
	movl	%edx, %ecx
	addl	%eax, %ecx
	movl	-88(%ebp), %eax
	mull	%ebx
	addl	%ecx, %edx
	movl	-108(%ebp), %ecx
	shrdl	$30, %edx, %eax
	leal	(%ecx,%eax), %edx
	movl	-136(%ebp), %ecx
	subl	%edx, %ecx
	movl	%ecx, %eax
/APP
 # 6490 "source/build/src/polymost.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	-156(%ebp), %edx
	movl	%eax, %ecx
	movl	-104(%ebp), %eax
	imull	%ebx, %edx
	imull	%edi, %eax
	movl	%edx, %ebx
	addl	%eax, %ebx
	movl	-104(%ebp), %eax
	mull	%esi
	movl	-112(%ebp), %esi
	addl	%ebx, %edx
	shrdl	$30, %edx, %eax
	leal	(%esi,%eax), %edx
	movl	-140(%ebp), %eax
	subl	%edx, %eax
/APP
 # 6490 "source/build/src/polymost.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	cmpl	$128, %ecx
	jle	L1975
L1974:
	movl	-44(%ebp), %eax
	xorl	%esi, %esi
	movzwl	18(%eax), %eax
	jmp	L1976
	.p2align 4,,10
	.p2align 3
L2291:
	leal	16(%ebx), %edx
	movzbl	%dl, %edx
/APP
 # 5527 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	jmp	L1762
	.p2align 4,,10
	.p2align 3
L2294:
	leal	16(%ecx), %edx
	movzbl	%dl, %edx
/APP
 # 5946 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	jmp	L1851
	.p2align 4,,10
	.p2align 3
L1932:
	cmpw	$2, _searchit
	jne	L1933
	movl	-192(%ebp), %eax
	movl	$0, _pisbottomwall
	movl	$0, _psearchstat
	movl	%eax, _psectnum
	movl	-64(%ebp), %eax
	movl	$1, _doeditorcheck
	movl	%eax, _pwallnum
	movl	%eax, _pbottomwall
L1933:
	movl	$0, _globalclipdist
	movl	-44(%ebp), %ebx
	movzwl	16(%ebx), %eax
	movw	%ax, _globalpicnum
	movsbl	20(%ebx), %eax
	movl	%eax, _globalshade
	movzbl	21(%ebx), %eax
	movl	_globalvisibility, %ebx
	movl	%eax, _globalpal
	movl	-80(%ebp), %eax
	movzbl	32(%esi,%eax), %eax
	movl	_globalvisibility2, %esi
	testb	%al, %al
	jne	L2296
L1934:
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
	leal	16384(%eax), %edi
	movswl	_globalpicnum, %eax
	movl	%eax, %esi
	cmpb	$63, _picanm+3(%eax,%eax,4)
	ja	L2297
L1935:
	andl	$16384, %edi
	je	L1936
	testb	$16, %bh
	je	L1936
	movswl	_globalpicnum, %eax
	movzwl	_rottile(,%eax,4), %eax
	cmpw	$-1, %ax
	je	L1936
	movw	%ax, _globalpicnum
	.p2align 4
	.p2align 3
L1936:
	andw	$4, %bx
	je	L2298
	movl	-56(%ebp), %eax
	movl	4(%eax), %esi
L1938:
	movl	-44(%ebp), %edi
	movzwl	%bx, %eax
	movzbl	23(%edi), %ecx
	movzbl	25(%edi), %edx
	movl	%eax, 4(%esp)
	movl	%esi, %eax
	movss	-48(%ebp), %xmm7
	movss	%xmm7, (%esp)
	movss	-40(%ebp), %xmm2
	movss	-128(%ebp), %xmm1
	movss	-72(%ebp), %xmm0
	call	__ZL13calc_ypanningiffffhhi.lto_priv.0
	movzwl	14(%edi), %eax
	testb	$8, %al
	je	L1939
	movzbl	22(%edi), %edx
	movzbl	24(%edi), %eax
	leal	(%eax,%edx,4), %eax
	addl	%eax, %eax
	movl	%eax, -108(%ebp)
	fildl	-108(%ebp)
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
L1939:
	testb	$1, %ah
	je	L1940
	fldl	__ZL4xtex.lto_priv.0+16
	fchs
	fstpl	__ZL4xtex.lto_priv.0+16
	fldl	__ZL4ytex.lto_priv.0+16
	fchs
	fstpl	__ZL4ytex.lto_priv.0+16
	fldl	__ZL4otex.lto_priv.0+16
	fchs
	fstpl	__ZL4otex.lto_priv.0+16
L1940:
	cmpl	$3, _rendmode
	je	L2299
L1941:
	movl	-56(%ebp), %eax
	movzbl	33(%eax), %ecx
	testb	%cl, %cl
	jne	L1943
	movzbl	29(%eax), %ecx
L1943:
	movl	-56(%ebp), %eax
	movzbl	32(%eax), %edx
	movl	_globalflags, %eax
	andl	$4, %eax
	jne	L2016
	movl	-44(%ebp), %edi
	movzbl	21(%edi), %ebx
	testb	$2, _hictinting+1(,%ebx,8)
	jne	L1944
	movsbl	20(%edi), %eax
L1944:
	call	_calc_and_apply_fog
L1942:
	movl	$1, __ZL10pow2xsplit.lto_priv.0
	movss	-96(%ebp), %xmm2
	movss	%xmm2, (%esp)
	movss	-40(%ebp), %xmm2
	movss	-48(%ebp), %xmm0
	movss	-168(%ebp), %xmm1
	call	__ZL18should_clip_cfwallffff
	testl	%eax, %eax
	jne	L2300
L1945:
	movl	-44(%ebp), %esi
	movzwl	14(%esi), %eax
	testb	$8, %al
	je	L1946
	flds	-140(%ebp)
	movl	$0, __ZL4ytex.lto_priv.0+8
	movl	$0, __ZL4ytex.lto_priv.0+12
	fstpl	__ZL4xtex.lto_priv.0+8
	flds	-160(%ebp)
	fstpl	__ZL4otex.lto_priv.0+8
	movzwl	14(%esi), %eax
L1946:
	movl	$0, _doeditorcheck
	jmp	L1931
	.p2align 4,,10
	.p2align 3
L2284:
	cmpw	$2, _searchit
	je	L2301
	testb	$2, %al
	je	L1955
	movl	-44(%ebp), %eax
	movswl	10(%eax), %eax
L1954:
	movl	-44(%ebp), %esi
	sall	$5, %eax
	addl	_wall, %eax
	movl	%eax, %edi
	movzbl	24(%eax), %eax
	movzbl	24(%esi), %ecx
	subl	%ecx, %eax
	movl	%eax, -88(%ebp)
	fildl	-88(%ebp)
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
	jmp	L1953
	.p2align 4,,10
	.p2align 3
L1843:
	movl	$0, _doeditorcheck
	jmp	L1915
	.p2align 4,,10
	.p2align 3
L2290:
	movl	_r_useindexedcolortextures, %edx
	testl	%edx, %edx
	je	L1758
	movl	_gltexfiltermode, %ecx
	testl	%ecx, %ecx
	jne	L1758
	movl	_usehightile, %edx
	testl	%edx, %edx
	je	L1760
	movl	_globalpal, %edx
	movzwl	_hictinting(,%edx,8), %ecx
	andl	$256, %ecx
	call	_hicfindsubst
	testl	%eax, %eax
	jne	L1758
	jmp	L1760
	.p2align 4,,10
	.p2align 3
L2293:
	movl	_r_useindexedcolortextures, %edx
	testl	%edx, %edx
	je	L1847
	movl	_gltexfiltermode, %ecx
	testl	%ecx, %ecx
	jne	L1847
	movl	_usehightile, %edx
	testl	%edx, %edx
	je	L1849
	movl	_globalpal, %edx
	movzwl	_hictinting(,%edx,8), %ecx
	andl	$256, %ecx
	call	_hicfindsubst
	testl	%eax, %eax
	jne	L1847
	jmp	L1849
	.p2align 4,,10
	.p2align 3
L2295:
	movswl	_globalpicnum, %eax
	movl	_globalpal, %edx
	call	_hicfindskybox.constprop.0
	testl	%eax, %eax
	je	L1855
	movss	_ghalfx, %xmm2
	movl	$1, %ebx
	movss	LC55, %xmm7
	movl	$0, __ZL10pow2xsplit.lto_priv.0
	movss	LC67, %xmm4
	movss	LC68, %xmm6
	movl	$1, __ZL12skyclamphack.lto_priv.0
	movss	%xmm2, -176(%ebp)
	movss	LC1, %xmm2
	movss	LC58, %xmm5
	movss	LC59, %xmm1
	movups	%xmm2, -216(%ebp)
	movss	LC53, %xmm2
	movss	%xmm4, -248(%ebp)
	movss	%xmm2, -244(%ebp)
	movss	%xmm6, -252(%ebp)
	movss	%xmm7, -184(%ebp)
L1856:
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
	movss	LC61, %xmm5
	addss	%xmm6, %xmm2
	addss	%xmm3, %xmm1
	comiss	%xmm2, %xmm5
	jbe	L2235
	comiss	%xmm1, %xmm5
	ja	L1885
	movaps	%xmm5, %xmm4
	movaps	%xmm1, %xmm3
	movss	-88(%ebp), %xmm6
	subss	%xmm2, %xmm4
	subss	%xmm2, %xmm3
	movaps	%xmm0, %xmm2
	subss	%xmm7, %xmm2
	movss	%xmm6, -264(%ebp)
	movaps	%xmm4, %xmm5
	divss	%xmm3, %xmm5
	mulss	%xmm5, %xmm2
	movss	%xmm5, -272(%ebp)
	movss	LC57, %xmm5
	addss	%xmm2, %xmm7
	movaps	%xmm6, %xmm2
	divss	%xmm1, %xmm2
L1881:
	movss	-176(%ebp), %xmm6
	mulss	%xmm6, %xmm7
	mulss	%xmm6, %xmm0
	movaps	%xmm7, %xmm3
	mulss	%xmm5, %xmm3
	movaps	%xmm0, %xmm4
	mulss	%xmm2, %xmm4
	addss	%xmm6, %xmm3
	addss	%xmm6, %xmm4
	comiss	%xmm4, %xmm3
	jnb	L1885
	comiss	-48(%ebp), %xmm3
	jnb	L1885
	movss	-40(%ebp), %xmm6
	comiss	%xmm4, %xmm6
	jnb	L1885
	movss	_gyxscale, %xmm1
	comiss	%xmm3, %xmm6
	movss	LC66, %xmm7
	movss	__ZL6ghoriz.lto_priv.0, %xmm0
	mulss	%xmm1, %xmm5
	mulss	%xmm2, %xmm1
	mulss	%xmm5, %xmm7
	movss	%xmm5, -280(%ebp)
	movaps	%xmm0, %xmm5
	movss	%xmm1, -300(%ebp)
	subss	%xmm7, %xmm5
	movaps	%xmm7, %xmm2
	movss	%xmm7, -288(%ebp)
	movss	LC66, %xmm7
	addss	%xmm0, %xmm2
	mulss	%xmm1, %xmm7
	movss	%xmm5, -268(%ebp)
	movss	%xmm7, -292(%ebp)
	movaps	%xmm7, %xmm5
	addss	%xmm0, %xmm7
	movss	%xmm7, -188(%ebp)
	movaps	%xmm0, %xmm7
	subss	%xmm5, %xmm7
	movss	%xmm7, -260(%ebp)
	jbe	L2236
	movaps	%xmm4, %xmm1
	movss	%xmm6, -256(%ebp)
	subss	%xmm3, %xmm1
	movaps	%xmm1, %xmm5
	movss	%xmm1, -284(%ebp)
	movaps	%xmm6, %xmm1
	subss	%xmm3, %xmm1
	divss	%xmm5, %xmm1
	movss	-188(%ebp), %xmm5
	subss	%xmm2, %xmm5
	mulss	%xmm1, %xmm5
	addss	%xmm5, %xmm2
	movaps	%xmm7, %xmm5
	movss	-268(%ebp), %xmm7
	subss	%xmm7, %xmm5
	mulss	%xmm1, %xmm5
	addss	%xmm7, %xmm5
	movss	%xmm5, -268(%ebp)
	movss	-96(%ebp), %xmm5
L1888:
	movss	-48(%ebp), %xmm7
	comiss	%xmm7, %xmm4
	jbe	L2238
	movaps	%xmm7, %xmm1
	movaps	%xmm4, %xmm6
	subss	-256(%ebp), %xmm6
	movss	%xmm7, -276(%ebp)
	subss	%xmm4, %xmm1
	divss	%xmm6, %xmm1
	movss	-188(%ebp), %xmm6
	subss	%xmm2, %xmm6
	mulss	%xmm1, %xmm6
	addss	-188(%ebp), %xmm6
	movss	%xmm6, -188(%ebp)
	movss	-260(%ebp), %xmm6
	subss	-268(%ebp), %xmm6
	mulss	%xmm1, %xmm6
	addss	-260(%ebp), %xmm6
	movss	%xmm6, -260(%ebp)
	movss	-168(%ebp), %xmm6
L1892:
	movss	-248(%ebp), %xmm7
	xorps	-216(%ebp), %xmm0
	comiss	%xmm2, %xmm5
	movl	$5, _drawingskybox
	movss	_fcosglobalang, %xmm1
	flds	LC71
	movl	$0, __ZL4xtex.lto_priv.0
	fmull	_gxyaspect
	movss	%xmm0, -304(%ebp)
	movss	_fviewingrange, %xmm0
	movl	$0, __ZL4xtex.lto_priv.0+4
	mulss	%xmm7, %xmm1
	mulss	_fsinglobalang, %xmm7
	fstl	__ZL4ytex.lto_priv.0
	fld	%st(0)
	fmuls	-304(%ebp)
	movss	%xmm7, -296(%ebp)
	mulss	%xmm0, %xmm7
	mulss	%xmm1, %xmm0
	fstl	__ZL4otex.lto_priv.0
	movss	%xmm7, -304(%ebp)
	flds	-304(%ebp)
	flds	-244(%ebp)
	movss	%xmm0, -304(%ebp)
	fmul	%st, %st(1)
	fxch	%st(1)
	fstl	__ZL4xtex.lto_priv.0+8
	fxch	%st(1)
	fmuls	-304(%ebp)
	movss	%xmm1, -304(%ebp)
	fstl	__ZL4xtex.lto_priv.0+16
	flds	-252(%ebp)
	fmul	%st, %st(4)
	fxch	%st(4)
	fstl	__ZL4ytex.lto_priv.0+8
	fstpl	__ZL4ytex.lto_priv.0+16
	fxch	%st(2)
	fmulp	%st, %st(3)
	fsubrs	-304(%ebp)
	fmuls	-176(%ebp)
	fadd	%st(2), %st
	fstpl	__ZL4otex.lto_priv.0+8
	fadds	-296(%ebp)
	fmuls	-176(%ebp)
	fsubrp	%st, %st(1)
	fstpl	__ZL4otex.lto_priv.0+16
	jbe	L2240
	comiss	-188(%ebp), %xmm6
	ja	L2302
	movaps	%xmm6, %xmm0
	movaps	%xmm2, %xmm1
	movss	-256(%ebp), %xmm7
	subss	%xmm5, %xmm0
	subss	-188(%ebp), %xmm0
	subss	%xmm5, %xmm1
	addss	%xmm2, %xmm0
	divss	%xmm0, %xmm1
	movss	-276(%ebp), %xmm0
	subss	%xmm7, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm7, %xmm0
	movss	-188(%ebp), %xmm7
	subss	%xmm2, %xmm7
	movss	%xmm0, -176(%ebp)
	mulss	%xmm7, %xmm1
	addss	%xmm2, %xmm1
L1901:
	movss	-184(%ebp), %xmm7
	movss	%xmm4, -312(%ebp)
	movss	%xmm3, -308(%ebp)
	movss	%xmm5, -304(%ebp)
	movss	%xmm6, -296(%ebp)
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	%xmm2, (%esp)
	movss	-256(%ebp), %xmm2
	movss	-176(%ebp), %xmm0
	movss	%xmm1, -188(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-184(%ebp), %xmm7
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	-188(%ebp), %xmm1
	movss	%xmm1, (%esp)
	movss	-296(%ebp), %xmm6
	movss	-176(%ebp), %xmm2
	movss	-276(%ebp), %xmm0
	movaps	%xmm6, %xmm1
	movss	%xmm6, -176(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-176(%ebp), %xmm6
	movss	-304(%ebp), %xmm5
	movss	-308(%ebp), %xmm3
	movss	-312(%ebp), %xmm4
L1898:
	movaps	%xmm3, %xmm2
	movss	-280(%ebp), %xmm7
	movss	-272(%ebp), %xmm0
	movl	%ebx, _drawingskybox
	subss	%xmm4, %xmm2
	movss	-300(%ebp), %xmm4
	movss	-264(%ebp), %xmm1
	movl	$0, __ZL4ytex.lto_priv.0
	movl	$0, __ZL4ytex.lto_priv.0+4
	mulss	%xmm7, %xmm0
	movl	$0, __ZL4ytex.lto_priv.0+8
	mulss	%xmm4, %xmm1
	movss	%xmm2, -176(%ebp)
	movss	-280(%ebp), %xmm2
	flds	-176(%ebp)
	fldl	_gxyaspect
	subss	%xmm4, %xmm2
	movss	%xmm2, -176(%ebp)
	fmuls	-176(%ebp)
	movaps	%xmm0, %xmm2
	flds	LC69
	movss	%xmm3, -176(%ebp)
	subss	%xmm1, %xmm2
	fmul	%st, %st(1)
	fxch	%st(1)
	fdiv	%st(2), %st
	fstl	__ZL4xtex.lto_priv.0
	fmuls	-176(%ebp)
	fldl	_gxyaspect
	fmuls	-280(%ebp)
	movss	%xmm2, -176(%ebp)
	fmulp	%st, %st(2)
	fsubr	%st, %st(1)
	fxch	%st(1)
	fstl	__ZL4otex.lto_priv.0
	fldl	_gxyaspect
	fmuls	-176(%ebp)
	flds	LC7
	movss	%xmm0, -176(%ebp)
	fmul	%st, %st(1)
	fxch	%st(1)
	fdivp	%st, %st(4)
	fxch	%st(3)
	fstl	__ZL4xtex.lto_priv.0+8
	fldl	_gxyaspect
	fmuls	-176(%ebp)
	movss	%xmm3, -176(%ebp)
	fmulp	%st, %st(4)
	fmuls	-176(%ebp)
	fsubrp	%st, %st(3)
	fxch	%st(2)
	fstpl	__ZL4otex.lto_priv.0+8
	movl	$0, __ZL4ytex.lto_priv.0+12
	faddp	%st, %st(1)
	mulss	-284(%ebp), %xmm7
	movss	LC56, %xmm0
	fmuls	-160(%ebp)
	movss	__ZL6ghoriz.lto_priv.0, %xmm2
	movss	-288(%ebp), %xmm4
	comiss	-268(%ebp), %xmm5
	addss	%xmm2, %xmm4
	addss	-292(%ebp), %xmm2
	mulss	%xmm7, %xmm0
	movaps	%xmm4, %xmm7
	subss	%xmm2, %xmm7
	movss	%xmm0, -176(%ebp)
	fdivs	-176(%ebp)
	movaps	%xmm7, %xmm2
	fstps	-176(%ebp)
	movss	-176(%ebp), %xmm0
	mulss	%xmm0, %xmm2
	mulss	-284(%ebp), %xmm0
	movss	%xmm2, -176(%ebp)
	flds	-176(%ebp)
	movss	%xmm0, -176(%ebp)
	fld	%st(0)
	fstpl	__ZL4xtex.lto_priv.0+16
	flds	-176(%ebp)
	movss	%xmm3, -176(%ebp)
	fstl	__ZL4ytex.lto_priv.0+16
	fxch	%st(1)
	fchs
	fmuls	-176(%ebp)
	fxch	%st(1)
	movss	%xmm4, -176(%ebp)
	fmuls	-176(%ebp)
	fsubrp	%st, %st(1)
	fstpl	__ZL4otex.lto_priv.0+16
	jbe	L2243
	comiss	-260(%ebp), %xmm6
	ja	L2303
	movaps	%xmm6, %xmm0
	movss	-260(%ebp), %xmm3
	movss	-268(%ebp), %xmm4
	subss	%xmm5, %xmm0
	movss	-256(%ebp), %xmm7
	movaps	%xmm4, %xmm2
	subss	%xmm5, %xmm2
	subss	%xmm3, %xmm0
	subss	%xmm4, %xmm3
	addss	%xmm4, %xmm0
	movaps	%xmm3, %xmm1
	divss	%xmm0, %xmm2
	movss	-276(%ebp), %xmm0
	subss	%xmm7, %xmm0
	mulss	%xmm2, %xmm1
	mulss	%xmm2, %xmm0
	addss	%xmm4, %xmm1
	addss	%xmm7, %xmm0
L1909:
	movss	-184(%ebp), %xmm5
	movss	%xmm6, -260(%ebp)
	movl	$0x00000000, 12(%esp)
	movss	%xmm5, 16(%esp)
	movss	%xmm5, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movss	-268(%ebp), %xmm3
	movss	%xmm3, (%esp)
	movss	-256(%ebp), %xmm2
	movss	%xmm1, -188(%ebp)
	movss	%xmm0, -176(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-184(%ebp), %xmm5
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm5, 16(%esp)
	movss	%xmm5, 8(%esp)
	movss	-188(%ebp), %xmm1
	movss	%xmm1, (%esp)
	movss	-176(%ebp), %xmm2
	movss	-260(%ebp), %xmm1
	movss	-276(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	_ghalfx, %xmm4
	movss	%xmm4, -176(%ebp)
	.p2align 4
	.p2align 3
L1885:
	addl	$1, %ebx
	cmpl	$5, %ebx
	je	L2304
	movl	%ebx, %eax
	andl	$3, %eax
	movss	__ZZL17polymost_drawallsiE6skywal_0(,%eax,8), %xmm1
	movss	__ZZL17polymost_drawallsiE6skywal_0+4(,%eax,8), %xmm5
	jmp	L1856
L2292:
	movswl	_globalpicnum, %eax
	movl	_globalpal, %edx
	call	_hicfindskybox.constprop.0
	testl	%eax, %eax
	je	L1766
	movss	LC1, %xmm6
	movups	%xmm6, -216(%ebp)
	movss	LC67, %xmm6
	movss	_ghalfx, %xmm5
	movss	LC55, %xmm7
	movl	$1, %ebx
	movss	LC68, %xmm4
	movl	$0, __ZL10pow2xsplit.lto_priv.0
	movss	%xmm6, -248(%ebp)
	movss	LC53, %xmm6
	movss	LC59, %xmm2
	movl	$1, __ZL12skyclamphack.lto_priv.0
	movss	%xmm6, -244(%ebp)
	movss	LC70, %xmm6
	movss	%xmm5, -176(%ebp)
	movss	LC58, %xmm5
	movss	%xmm4, -252(%ebp)
	movss	%xmm6, -160(%ebp)
	movss	%xmm7, -184(%ebp)
L1767:
	movss	__ZZL17polymost_drawallsiE6skywal-8(,%ebx,8), %xmm6
	movss	__ZZL17polymost_drawallsiE6skywal-4(,%ebx,8), %xmm1
	movss	_gcosang, %xmm0
	movss	_gsinang, %xmm4
	movaps	%xmm1, %xmm7
	movaps	%xmm6, %xmm3
	mulss	%xmm4, %xmm3
	mulss	%xmm0, %xmm7
	mulss	_gcosang2, %xmm6
	mulss	%xmm5, %xmm0
	mulss	%xmm2, %xmm4
	mulss	_gcosang2, %xmm2
	subss	%xmm3, %xmm7
	movss	_gsinang2, %xmm3
	mulss	%xmm3, %xmm1
	mulss	%xmm5, %xmm3
	subss	%xmm4, %xmm0
	movss	LC61, %xmm5
	addss	%xmm6, %xmm1
	addss	%xmm3, %xmm2
	comiss	%xmm1, %xmm5
	jbe	L2222
	comiss	%xmm2, %xmm5
	ja	L1796
	movaps	%xmm5, %xmm4
	movaps	%xmm2, %xmm3
	movss	-88(%ebp), %xmm6
	subss	%xmm1, %xmm4
	subss	%xmm1, %xmm3
	movaps	%xmm0, %xmm1
	subss	%xmm7, %xmm1
	movss	%xmm6, -264(%ebp)
	movaps	%xmm4, %xmm5
	divss	%xmm3, %xmm5
	mulss	%xmm5, %xmm1
	movss	%xmm5, -268(%ebp)
	movss	LC57, %xmm5
	addss	%xmm1, %xmm7
	movaps	%xmm6, %xmm1
	divss	%xmm2, %xmm1
L1792:
	movss	-176(%ebp), %xmm2
	mulss	%xmm2, %xmm7
	mulss	%xmm2, %xmm0
	movaps	%xmm7, %xmm3
	mulss	%xmm5, %xmm3
	movaps	%xmm0, %xmm4
	mulss	%xmm1, %xmm4
	addss	%xmm2, %xmm3
	addss	%xmm2, %xmm4
	comiss	%xmm4, %xmm3
	jnb	L1796
	comiss	-48(%ebp), %xmm3
	jnb	L1796
	movss	-40(%ebp), %xmm7
	comiss	%xmm4, %xmm7
	jnb	L1796
	movss	_gyxscale, %xmm0
	movaps	%xmm5, %xmm2
	comiss	%xmm3, %xmm7
	movss	LC66, %xmm5
	movss	__ZL6ghoriz.lto_priv.0, %xmm6
	mulss	%xmm0, %xmm2
	movss	%xmm6, -188(%ebp)
	movaps	%xmm0, %xmm6
	mulss	%xmm1, %xmm6
	movss	-188(%ebp), %xmm1
	mulss	%xmm2, %xmm5
	movss	%xmm2, -284(%ebp)
	movss	%xmm6, -300(%ebp)
	movaps	%xmm5, %xmm2
	movss	%xmm5, -292(%ebp)
	addss	%xmm1, %xmm5
	subss	%xmm2, %xmm1
	movss	LC66, %xmm2
	mulss	%xmm6, %xmm2
	movss	-188(%ebp), %xmm6
	movss	%xmm5, -280(%ebp)
	movaps	%xmm2, %xmm0
	movss	%xmm2, -296(%ebp)
	addss	%xmm6, %xmm2
	subss	%xmm0, %xmm6
	movaps	%xmm7, %xmm0
	movss	%xmm2, -272(%ebp)
	jbe	L2223
	movaps	%xmm4, %xmm7
	subss	%xmm3, %xmm0
	subss	%xmm5, %xmm2
	subss	%xmm3, %xmm7
	divss	%xmm7, %xmm0
	movss	%xmm7, -304(%ebp)
	mulss	%xmm0, %xmm2
	addss	%xmm5, %xmm2
	movss	-92(%ebp), %xmm5
	movss	%xmm2, -280(%ebp)
	movaps	%xmm6, %xmm2
	subss	%xmm1, %xmm2
	mulss	%xmm0, %xmm2
	movss	-40(%ebp), %xmm0
	movss	%xmm0, -256(%ebp)
	addss	%xmm2, %xmm1
L1799:
	movss	-48(%ebp), %xmm0
	comiss	%xmm0, %xmm4
	jbe	L2225
	subss	%xmm4, %xmm0
	movaps	%xmm4, %xmm2
	subss	-256(%ebp), %xmm2
	movss	-272(%ebp), %xmm7
	divss	%xmm2, %xmm0
	movaps	%xmm7, %xmm2
	subss	-280(%ebp), %xmm2
	mulss	%xmm0, %xmm2
	addss	%xmm7, %xmm2
	movss	%xmm2, -272(%ebp)
	movaps	%xmm6, %xmm2
	subss	%xmm1, %xmm2
	mulss	%xmm0, %xmm2
	movss	-48(%ebp), %xmm0
	movss	%xmm0, -276(%ebp)
	addss	%xmm2, %xmm6
	movss	-164(%ebp), %xmm2
	movss	%xmm2, -260(%ebp)
L1803:
	movss	-248(%ebp), %xmm0
	movss	-188(%ebp), %xmm7
	comiss	%xmm5, %xmm1
	movl	$6, _drawingskybox
	movss	_fcosglobalang, %xmm2
	xorps	-216(%ebp), %xmm7
	movl	$0, __ZL4xtex.lto_priv.0
	flds	LC52
	fmull	_gxyaspect
	movl	$0, __ZL4xtex.lto_priv.0+4
	mulss	%xmm0, %xmm2
	movss	%xmm7, -188(%ebp)
	mulss	_fsinglobalang, %xmm0
	fstl	__ZL4ytex.lto_priv.0
	fld	%st(0)
	fmuls	-188(%ebp)
	movss	%xmm0, -288(%ebp)
	movss	-288(%ebp), %xmm7
	movss	_fviewingrange, %xmm0
	mulss	%xmm0, %xmm7
	fstl	__ZL4otex.lto_priv.0
	mulss	%xmm2, %xmm0
	movss	%xmm7, -188(%ebp)
	flds	-188(%ebp)
	flds	-244(%ebp)
	movss	%xmm0, -188(%ebp)
	fmul	%st, %st(1)
	fxch	%st(1)
	fstl	__ZL4xtex.lto_priv.0+8
	fxch	%st(1)
	fmuls	-188(%ebp)
	movss	%xmm2, -188(%ebp)
	flds	-252(%ebp)
	fmul	%st, %st(4)
	fxch	%st(4)
	fstl	__ZL4ytex.lto_priv.0+8
	fxch	%st(3)
	fmulp	%st, %st(4)
	fxch	%st(1)
	fsubrs	-188(%ebp)
	fmuls	-176(%ebp)
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
	fadds	-288(%ebp)
	fmuls	-176(%ebp)
	fsubrp	%st, %st(1)
	fchs
	fstpl	__ZL4otex.lto_priv.0+16
	jbe	L2227
	comiss	-260(%ebp), %xmm6
	ja	L2305
	movss	-260(%ebp), %xmm0
	movaps	%xmm1, %xmm2
	movss	-256(%ebp), %xmm7
	subss	%xmm5, %xmm2
	subss	%xmm5, %xmm0
	subss	%xmm6, %xmm0
	subss	%xmm1, %xmm6
	addss	%xmm1, %xmm0
	divss	%xmm0, %xmm2
	movss	-276(%ebp), %xmm0
	subss	%xmm7, %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm7, %xmm0
	movss	%xmm0, -176(%ebp)
	movaps	%xmm6, %xmm0
	mulss	%xmm2, %xmm0
	movaps	%xmm0, %xmm7
	addss	%xmm1, %xmm7
L1812:
	movss	%xmm3, -308(%ebp)
	movss	-184(%ebp), %xmm3
	movss	%xmm4, -312(%ebp)
	movss	%xmm5, -288(%ebp)
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm3, 16(%esp)
	movss	%xmm3, 8(%esp)
	movss	%xmm7, (%esp)
	movss	-176(%ebp), %xmm2
	movss	-256(%ebp), %xmm0
	movss	%xmm7, -188(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-184(%ebp), %xmm3
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm3, 16(%esp)
	movss	%xmm3, 8(%esp)
	movss	-260(%ebp), %xmm5
	movss	%xmm5, (%esp)
	movss	-276(%ebp), %xmm2
	movss	-188(%ebp), %xmm1
	movss	-176(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-288(%ebp), %xmm5
	movss	-308(%ebp), %xmm3
	movss	-312(%ebp), %xmm4
L1809:
	movaps	%xmm3, %xmm2
	movss	-284(%ebp), %xmm7
	movss	-268(%ebp), %xmm0
	movl	%ebx, _drawingskybox
	subss	%xmm4, %xmm2
	movss	-300(%ebp), %xmm4
	movss	-264(%ebp), %xmm1
	movl	$0, __ZL4ytex.lto_priv.0
	movl	$0, __ZL4ytex.lto_priv.0+4
	mulss	%xmm7, %xmm0
	movl	$0, __ZL4ytex.lto_priv.0+8
	mulss	%xmm4, %xmm1
	movss	%xmm2, -176(%ebp)
	movss	-284(%ebp), %xmm2
	flds	-176(%ebp)
	fldl	_gxyaspect
	subss	%xmm4, %xmm2
	movss	%xmm2, -176(%ebp)
	fmuls	-176(%ebp)
	movaps	%xmm0, %xmm2
	flds	LC69
	movss	%xmm3, -176(%ebp)
	subss	%xmm1, %xmm2
	fmul	%st, %st(1)
	fxch	%st(1)
	fdiv	%st(2), %st
	fstl	__ZL4xtex.lto_priv.0
	fmuls	-176(%ebp)
	fldl	_gxyaspect
	fmuls	-284(%ebp)
	movss	%xmm2, -176(%ebp)
	fmulp	%st, %st(2)
	fsubr	%st, %st(1)
	fxch	%st(1)
	fstl	__ZL4otex.lto_priv.0
	fldl	_gxyaspect
	fmuls	-176(%ebp)
	flds	LC7
	movss	%xmm0, -176(%ebp)
	fmul	%st, %st(1)
	fxch	%st(1)
	fdivp	%st, %st(4)
	fxch	%st(3)
	fstl	__ZL4xtex.lto_priv.0+8
	fldl	_gxyaspect
	fmuls	-176(%ebp)
	movss	%xmm3, -176(%ebp)
	fmulp	%st, %st(4)
	fmuls	-176(%ebp)
	fsubrp	%st, %st(3)
	fxch	%st(2)
	fstpl	__ZL4otex.lto_priv.0+8
	movl	$0, __ZL4ytex.lto_priv.0+12
	faddp	%st, %st(1)
	movss	-304(%ebp), %xmm6
	movss	LC56, %xmm0
	fmuls	-160(%ebp)
	mulss	%xmm6, %xmm7
	movss	-292(%ebp), %xmm4
	movss	__ZL6ghoriz.lto_priv.0, %xmm2
	addss	%xmm2, %xmm4
	addss	-296(%ebp), %xmm2
	mulss	%xmm7, %xmm0
	movaps	%xmm4, %xmm1
	movss	-280(%ebp), %xmm7
	subss	%xmm2, %xmm1
	comiss	%xmm5, %xmm7
	movss	%xmm0, -176(%ebp)
	fdivs	-176(%ebp)
	fstps	-176(%ebp)
	movss	-176(%ebp), %xmm0
	mulss	%xmm0, %xmm1
	mulss	%xmm6, %xmm0
	movss	%xmm1, -176(%ebp)
	flds	-176(%ebp)
	movss	%xmm0, -176(%ebp)
	fld	%st(0)
	fstpl	__ZL4xtex.lto_priv.0+16
	flds	-176(%ebp)
	movss	%xmm3, -176(%ebp)
	fstl	__ZL4ytex.lto_priv.0+16
	fxch	%st(1)
	fchs
	fmuls	-176(%ebp)
	fxch	%st(1)
	movss	%xmm4, -176(%ebp)
	fmuls	-176(%ebp)
	fsubrp	%st, %st(1)
	fstpl	__ZL4otex.lto_priv.0+16
	jbe	L2230
	movss	-272(%ebp), %xmm4
	comiss	-260(%ebp), %xmm4
	ja	L2306
	movss	-260(%ebp), %xmm0
	movss	-272(%ebp), %xmm2
	movss	-280(%ebp), %xmm1
	movss	-256(%ebp), %xmm6
	subss	%xmm5, %xmm0
	subss	%xmm5, %xmm1
	movss	-280(%ebp), %xmm5
	subss	%xmm2, %xmm0
	subss	%xmm5, %xmm2
	addss	%xmm5, %xmm0
	movaps	%xmm2, %xmm3
	divss	%xmm0, %xmm1
	movss	-276(%ebp), %xmm0
	subss	%xmm6, %xmm0
	mulss	%xmm1, %xmm0
	mulss	%xmm1, %xmm3
	movaps	%xmm0, %xmm4
	addss	%xmm6, %xmm4
	addss	%xmm5, %xmm3
L1820:
	movss	-184(%ebp), %xmm5
	movss	%xmm3, (%esp)
	movaps	%xmm4, %xmm2
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm5, 16(%esp)
	movss	%xmm5, 8(%esp)
	movss	-280(%ebp), %xmm1
	movss	-256(%ebp), %xmm0
	movss	%xmm4, -176(%ebp)
	movss	%xmm3, -188(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-184(%ebp), %xmm5
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm5, 16(%esp)
	movss	%xmm5, 8(%esp)
	movss	-260(%ebp), %xmm3
	movss	%xmm3, (%esp)
	movss	-276(%ebp), %xmm2
	movss	-188(%ebp), %xmm1
	movss	-176(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	_ghalfx, %xmm4
	movss	%xmm4, -176(%ebp)
	.p2align 4
	.p2align 3
L1796:
	addl	$1, %ebx
	cmpl	$5, %ebx
	je	L2307
	movl	%ebx, %eax
	andl	$3, %eax
	movss	__ZZL17polymost_drawallsiE6skywal(,%eax,8), %xmm2
	movss	__ZZL17polymost_drawallsiE6skywal+4(,%eax,8), %xmm5
	jmp	L1767
	.p2align 4,,10
	.p2align 3
L1991:
	movss	-92(%ebp), %xmm2
	movss	%xmm2, 16(%esp)
	movss	-96(%ebp), %xmm5
	movss	%xmm5, 12(%esp)
	movss	-164(%ebp), %xmm1
	movss	%xmm1, 8(%esp)
	movss	-168(%ebp), %xmm7
	movss	%xmm2, (%esp)
	movss	%xmm7, 4(%esp)
	movss	-40(%ebp), %xmm2
	movss	-48(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	jmp	L1992
	.p2align 4,,10
	.p2align 3
L2278:
	movl	-192(%ebp), %eax
	movl	$0, _psearchstat
	movl	$1, _doeditorcheck
	movl	%eax, _psectnum
	movl	-64(%ebp), %eax
	movl	%eax, _pwallnum
	movl	%eax, _pbottomwall
	jmp	L1973
	.p2align 4,,10
	.p2align 3
L2285:
	movl	4(%eax), %eax
	cmpl	%eax, _globalposz
	jl	L1842
L2286:
	movl	-192(%ebp), %esi
	movl	-104(%ebp), %eax
	movss	-112(%ebp), %xmm1
	movss	-120(%ebp), %xmm0
	movl	-108(%ebp), %edx
	movl	%esi, 20(%esp)
	movss	-168(%ebp), %xmm7
	movss	%xmm7, 16(%esp)
	movss	-96(%ebp), %xmm2
	movss	%xmm2, 12(%esp)
	movss	-48(%ebp), %xmm5
	movss	%xmm1, (%esp)
	movss	%xmm5, 8(%esp)
	movss	%xmm0, 4(%esp)
	movss	-40(%ebp), %xmm2
	movss	-128(%ebp), %xmm1
	movss	-72(%ebp), %xmm0
	call	__ZL31polymost_internal_nonparallaxed4vec2IfES0_ffffffi
	movl	_g_nodraw, %eax
	movl	%eax, -176(%ebp)
	jmp	L1838
	.p2align 4,,10
	.p2align 3
L2288:
	movl	8(%eax), %eax
	cmpl	%eax, _globalposz
	jg	L1756
L2289:
	movzwl	-144(%ebp), %ecx
	movss	-112(%ebp), %xmm1
	movss	-120(%ebp), %xmm0
	movl	-104(%ebp), %eax
	orb	$16, %ch
	movl	-108(%ebp), %edx
	movswl	%cx, %ecx
	movl	%ecx, 20(%esp)
	movss	-164(%ebp), %xmm2
	movss	%xmm2, 16(%esp)
	movss	-92(%ebp), %xmm2
	movss	%xmm2, 12(%esp)
	movss	-48(%ebp), %xmm7
	movss	%xmm1, (%esp)
	movss	%xmm7, 8(%esp)
	movss	%xmm0, 4(%esp)
	movss	-40(%ebp), %xmm2
	movss	-128(%ebp), %xmm1
	movss	-72(%ebp), %xmm0
	call	__ZL31polymost_internal_nonparallaxed4vec2IfES0_ffffffi
L2255:
	movss	LC70, %xmm2
	movss	%xmm2, -160(%ebp)
	jmp	L1752
L1912:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L2258
	movss	-88(%ebp), %xmm5
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm5
	jp	L2053
	je	L2258
L2053:
	movss	-88(%ebp), %xmm2
	movss	%xmm2, __ZL19polymost1FogEnabled.lto_priv.0
	movss	%xmm2, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
	jmp	L2258
L1857:
	testl	%edi, %edi
	jne	L1858
	movss	-272(%ebp), %xmm0
	movss	LC17, %xmm1
L1860:
	xorps	%xmm4, %xmm4
	leal	9(%ebx), %eax
	xorps	%xmm3, %xmm3
	movl	$1, %edx
	cvtsi2ssl	%esi, %xmm3
	movl	%eax, -260(%ebp)
	xorps	%xmm7, %xmm7
	movswl	_globalpicnum, %eax
	cvtsi2ssl	-188(%ebp), %xmm4
	movss	LC30, %xmm6
	mulss	_fxdimen, %xmm6
	movl	%eax, -264(%ebp)
	movzbl	_picsiz(%eax), %eax
	mulss	%xmm2, %xmm3
	movl	%eax, %ecx
	movb	%al, -176(%ebp)
	mulss	%xmm4, %xmm1
	movss	-88(%ebp), %xmm4
	andl	$15, %ecx
	sall	%cl, %edx
	movzbl	-184(%ebp), %ecx
	movl	%edx, -252(%ebp)
	sall	%cl, %edx
	movzbl	-176(%ebp), %ecx
	cvtsi2ssl	%edx, %xmm7
	mulss	%xmm6, %xmm3
	movl	-264(%ebp), %edx
	divss	%xmm1, %xmm4
	shrb	$4, %cl
	movswl	_tilesiz+2(,%edx,4), %eax
	movl	%eax, %edx
	movss	%xmm7, -248(%ebp)
	sarw	%dx
	movswl	%dx, %edx
	addl	-216(%ebp), %edx
	mulss	%xmm4, %xmm3
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%edx, %xmm4
	movl	$1, %edx
	sall	%cl, %edx
	movl	%edx, -184(%ebp)
	movl	$2, %edx
	sall	%cl, %edx
	movl	-184(%ebp), %ecx
	mulss	%xmm6, %xmm4
	movaps	%xmm3, %xmm1
	mulss	%xmm0, %xmm1
	cmpl	%ecx, %eax
	cmove	%ecx, %edx
	imull	-188(%ebp), %eax
	movl	%edx, -184(%ebp)
	subss	%xmm1, %xmm4
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	mulss	LC29, %xmm1
	comiss	LC34, %xmm1
	jbe	L1862
	testl	%edi, %edi
	je	L2308
L1862:
	movl	$0, __ZL12skyclamphack.lto_priv.0
	movss	-48(%ebp), %xmm5
	movss	LC55, %xmm7
	subss	-40(%ebp), %xmm5
	movss	%xmm5, -276(%ebp)
	movss	-168(%ebp), %xmm5
	subss	-96(%ebp), %xmm5
L1867:
	movl	_yxaspect, %eax
	imull	_viewingrange
	movss	%xmm6, -176(%ebp)
	flds	-176(%ebp)
	movl	$0, __ZL4xtex.lto_priv.0+16
	movl	$0, __ZL4xtex.lto_priv.0+20
	movl	%eax, -176(%ebp)
	movl	%esi, %eax
	movl	-176(%ebp), %edi
	movl	%edx, -172(%ebp)
	cltd
	movl	-172(%ebp), %ecx
	imull	%edi, %edx
	movl	%edi, %eax
	fstl	__ZL4otex.lto_priv.0
	movl	$0, __ZL4xtex.lto_priv.0
	imull	%esi, %ecx
	movl	$0, __ZL4xtex.lto_priv.0+4
	movl	$0, __ZL4ytex.lto_priv.0+8
	movl	$0, __ZL4ytex.lto_priv.0+12
	addl	%edx, %ecx
	mull	%esi
	movl	$0, __ZL4ytex.lto_priv.0
	movl	$0, __ZL4ytex.lto_priv.0+4
	addl	%ecx, %edx
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	fildq	-176(%ebp)
	jns	L1869
	fadds	LC31
L1869:
	fstpl	-176(%ebp)
	fldl	-176(%ebp)
	fmuls	-248(%ebp)
	movl	-264(%ebp), %eax
	movss	%xmm3, -176(%ebp)
	movzwl	_tilesiz(,%eax,4), %edx
	movl	_r_parallaxskypanning, %eax
	fmul	%st(1), %st
	fmull	LC32
	fstl	__ZL4xtex.lto_priv.0+8
	flds	-176(%ebp)
	fstpl	__ZL4ytex.lto_priv.0+16
	testl	%eax, %eax
	je	L1870
	movl	-56(%ebp), %esi
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	xorps	%xmm3, %xmm3
	cvtsi2ssl	-184(%ebp), %xmm1
	movzbl	23(%esi), %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm6, %xmm0
	mulss	%xmm1, %xmm0
	mulss	LC33, %xmm0
	addss	%xmm4, %xmm0
	movss	%xmm0, -176(%ebp)
	flds	-176(%ebp)
	fstpl	__ZL4otex.lto_priv.0+16
	movzbl	22(%esi), %eax
	cvtsi2ssl	%eax, %xmm3
L1871:
	movss	-88(%ebp), %xmm6
	movl	$11, %esi
	movswl	%dx, %eax
	movss	_ghalfx, %xmm1
	movss	LC34, %xmm0
	subl	-268(%ebp), %esi
	movl	%eax, -256(%ebp)
	divss	-276(%ebp), %xmm5
	movl	%esi, %ecx
	mulss	%xmm1, %xmm0
	divss	%xmm0, %xmm2
	movss	-40(%ebp), %xmm0
	subss	%xmm1, %xmm0
	divss	%xmm2, %xmm6
	mulss	%xmm2, %xmm0
	addss	-68(%ebp), %xmm0
	cvttss2sil	%xmm0, %edi
	sarl	%cl, %edi
	movl	-264(%ebp), %ecx
	movl	%ecx, %eax
	movss	%xmm6, -176(%ebp)
	testl	%ecx, %ecx
	js	L2309
	movss	LC35, %xmm4
	movss	-40(%ebp), %xmm2
	movl	%esi, %ebx
	movss	%xmm3, -264(%ebp)
	movl	%ecx, %esi
	movss	%xmm4, -268(%ebp)
	.p2align 4
	.p2align 3
L1872:
	movl	-244(%ebp), %edx
	movl	-260(%ebp), %eax
	movl	%ebx, %ecx
	xorps	%xmm0, %xmm0
	andl	%edi, %edx
	movsbw	(%eax,%edx), %dx
	addl	%esi, %edx
	movw	%dx, _globalpicnum
	movl	%edi, %edx
	sall	%cl, %edx
	movl	-252(%ebp), %ecx
	cvtsi2ssl	%edx, %xmm0
	cmpl	%ecx, -256(%ebp)
	je	L1875
	fxch	%st(1)
	subss	-68(%ebp), %xmm0
	mulss	-176(%ebp), %xmm0
	andl	$2047, %edx
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%edx, %xmm3
	mulss	-248(%ebp), %xmm3
	mulss	-268(%ebp), %xmm3
	addss	-264(%ebp), %xmm3
	addss	%xmm1, %xmm0
	movss	%xmm3, -184(%ebp)
	fmuls	-184(%ebp)
	fxch	%st(1)
	movss	%xmm0, -184(%ebp)
	fmuls	-184(%ebp)
	fsubrp	%st, %st(1)
L1876:
	addl	$1, %edi
	movss	-40(%ebp), %xmm4
	movl	%ebx, %ecx
	xorps	%xmm0, %xmm0
	movl	%edi, %edx
	movaps	%xmm2, %xmm6
	movss	-96(%ebp), %xmm3
	fstpl	__ZL4otex.lto_priv.0+8
	sall	%cl, %edx
	subss	%xmm4, %xmm6
	cvtsi2ssl	%edx, %xmm0
	subss	-68(%ebp), %xmm0
	mulss	-176(%ebp), %xmm0
	mulss	%xmm5, %xmm6
	addss	%xmm1, %xmm0
	comiss	-48(%ebp), %xmm0
	addss	%xmm3, %xmm6
	jbe	L2310
L1874:
	movss	-276(%ebp), %xmm1
	movl	$0, __ZL10pow2xsplit.lto_priv.0
	movl	$0x00000000, 12(%esp)
	mulss	%xmm5, %xmm1
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	%xmm6, (%esp)
	addss	-96(%ebp), %xmm1
	movss	-48(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	jmp	L1859
L1768:
	testl	%eax, %eax
	jne	L1769
	movss	-268(%ebp), %xmm0
	movss	LC17, %xmm1
L1771:
	xorps	%xmm4, %xmm4
	xorps	%xmm3, %xmm3
	leal	9(%esi), %eax
	movss	LC30, %xmm5
	cvtsi2ssl	%edi, %xmm3
	movl	%eax, -256(%ebp)
	xorps	%xmm7, %xmm7
	movswl	_globalpicnum, %eax
	cvtsi2ssl	-184(%ebp), %xmm4
	mulss	_fxdimen, %xmm5
	movzbl	_picsiz(%eax), %edx
	movl	%eax, %ebx
	movl	%eax, -260(%ebp)
	movl	$1, %eax
	mulss	%xmm2, %xmm3
	movl	%edx, %ecx
	mulss	%xmm4, %xmm1
	movss	-88(%ebp), %xmm4
	andl	$15, %ecx
	sall	%cl, %eax
	movzbl	-176(%ebp), %ecx
	movss	%xmm5, -188(%ebp)
	movl	%eax, -248(%ebp)
	sall	%cl, %eax
	mulss	%xmm5, %xmm3
	cvtsi2ssl	%eax, %xmm7
	movswl	_tilesiz+2(,%ebx,4), %eax
	divss	%xmm1, %xmm4
	movl	%eax, %ecx
	sarw	%cx
	movss	%xmm7, -244(%ebp)
	movswl	%cx, %ecx
	addl	-252(%ebp), %ecx
	movaps	%xmm3, %xmm7
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%ecx, %xmm3
	movl	%edx, %ecx
	movl	$1, %edx
	shrb	$4, %cl
	sall	%cl, %edx
	movl	%edx, %ebx
	movl	$2, %edx
	mulss	%xmm5, %xmm3
	sall	%cl, %edx
	cmpl	%ebx, %eax
	cmove	%ebx, %edx
	movl	%edx, -252(%ebp)
	movl	-184(%ebp), %edx
	imull	%eax, %edx
	mulss	%xmm4, %xmm7
	movaps	%xmm7, %xmm1
	movss	%xmm7, -176(%ebp)
	mulss	%xmm0, %xmm1
	subss	%xmm1, %xmm3
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edx, %xmm1
	mulss	LC29, %xmm1
	comiss	LC34, %xmm1
	jbe	L2219
	xorps	%xmm4, %xmm4
	flds	LC65
	fmull	_gxyaspect
	leal	-1(%eax), %edx
	cvtsi2ssl	%eax, %xmm4
	movl	%edx, -160(%ebp)
	xorps	LC1, %xmm0
	movl	$0, __ZL4xtex.lto_priv.0+16
	movl	$0, __ZL4xtex.lto_priv.0+20
	fstl	__ZL4ytex.lto_priv.0
	fildl	-160(%ebp)
	mulss	%xmm5, %xmm4
	movss	%xmm0, -160(%ebp)
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
	fmuls	-160(%ebp)
	movl	$0, __ZL4otex.lto_priv.0+8
	divss	%xmm7, %xmm4
	movl	$0, __ZL4otex.lto_priv.0+12
	fstl	__ZL4otex.lto_priv.0
	fmulp	%st, %st(1)
	fstpl	__ZL4otex.lto_priv.0+16
	comiss	-92(%ebp), %xmm4
	jbe	L2220
	comiss	-164(%ebp), %xmm4
	ja	L2311
	movss	-40(%ebp), %xmm0
	movss	-48(%ebp), %xmm7
	movaps	%xmm4, %xmm6
	movaps	%xmm4, %xmm1
	movss	%xmm3, -280(%ebp)
	movss	-92(%ebp), %xmm3
	movss	-164(%ebp), %xmm5
	subss	%xmm0, %xmm7
	subss	%xmm3, %xmm6
	subss	%xmm3, %xmm5
	movss	%xmm7, -272(%ebp)
	mulss	%xmm7, %xmm6
	movss	%xmm5, -276(%ebp)
	movss	LC55, %xmm7
	movl	$0x00000000, 12(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	%xmm7, -184(%ebp)
	divss	%xmm5, %xmm6
	movl	$0x00000000, 4(%esp)
	movss	%xmm4, (%esp)
	movss	%xmm4, -160(%ebp)
	addss	%xmm0, %xmm6
	movaps	%xmm6, %xmm2
	movss	%xmm6, -248(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-184(%ebp), %xmm7
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	-164(%ebp), %xmm5
	movss	%xmm5, (%esp)
	movss	-48(%ebp), %xmm2
	movss	-160(%ebp), %xmm1
	movss	-248(%ebp), %xmm0
L2253:
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movswl	_globalpicnum, %eax
	movl	$1, %ebx
	movl	_xdimscale, %edi
	movss	-184(%ebp), %xmm7
	movss	-276(%ebp), %xmm5
	movl	%eax, -260(%ebp)
	movzbl	_picsiz(%eax), %ecx
	movss	_fviewingrange, %xmm2
	movss	-280(%ebp), %xmm3
	andl	$15, %ecx
	sall	%cl, %ebx
	movl	%ebx, -248(%ebp)
L1779:
	movl	_yxaspect, %eax
	imull	_viewingrange
	movl	$0, __ZL4xtex.lto_priv.0+16
	flds	-188(%ebp)
	movl	$0, __ZL4xtex.lto_priv.0+20
	movl	$0, __ZL4xtex.lto_priv.0
	movl	%eax, -160(%ebp)
	movl	%edi, %eax
	movl	-160(%ebp), %ebx
	movl	%edx, -156(%ebp)
	cltd
	movl	-156(%ebp), %ecx
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
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
	fildq	-160(%ebp)
	jns	L1781
	fadds	LC31
L1781:
	fstpl	-160(%ebp)
	fldl	-160(%ebp)
	fmuls	-244(%ebp)
	xorps	%xmm6, %xmm6
	movl	-260(%ebp), %eax
	movl	_r_parallaxskypanning, %edi
	movzwl	_tilesiz(,%eax,4), %ebx
	fmul	%st(1), %st
	fmull	LC32
	fstl	__ZL4xtex.lto_priv.0+8
	flds	-176(%ebp)
	fstpl	__ZL4ytex.lto_priv.0+16
	testl	%edi, %edi
	je	L1782
	movl	-56(%ebp), %edi
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	xorps	%xmm6, %xmm6
	cvtsi2ssl	-252(%ebp), %xmm1
	movzbl	31(%edi), %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	-188(%ebp), %xmm0
	movzbl	30(%edi), %eax
	cvtsi2ssl	%eax, %xmm6
	mulss	%xmm1, %xmm0
	mulss	LC33, %xmm0
	addss	%xmm0, %xmm3
L1782:
	movss	-88(%ebp), %xmm4
	movswl	%bx, %eax
	movl	$11, %edi
	movss	_ghalfx, %xmm1
	movss	LC34, %xmm0
	movl	%eax, -252(%ebp)
	divss	-272(%ebp), %xmm5
	subl	-264(%ebp), %edi
	movss	%xmm3, -160(%ebp)
	flds	-160(%ebp)
	mulss	%xmm1, %xmm0
	movl	%edi, %ecx
	fstpl	__ZL4otex.lto_priv.0+16
	divss	%xmm0, %xmm2
	movss	-40(%ebp), %xmm0
	subss	%xmm1, %xmm0
	divss	%xmm2, %xmm4
	mulss	%xmm2, %xmm0
	addss	-68(%ebp), %xmm0
	cvttss2sil	%xmm0, %eax
	sarl	%cl, %eax
	movl	-260(%ebp), %ecx
	movl	%eax, %ebx
	movl	%ecx, %eax
	movss	%xmm4, -160(%ebp)
	testl	%ecx, %ecx
	js	L2312
	movss	LC35, %xmm4
	movss	-40(%ebp), %xmm0
	movl	%edi, %esi
	movss	%xmm6, -260(%ebp)
	movl	%ebx, %edi
	movl	%ecx, %ebx
	movss	%xmm4, -264(%ebp)
	.p2align 4
	.p2align 3
L1783:
	movl	-216(%ebp), %edx
	movl	-256(%ebp), %eax
	movl	%esi, %ecx
	xorps	%xmm2, %xmm2
	andl	%edi, %edx
	movsbw	(%eax,%edx), %dx
	addl	%ebx, %edx
	movw	%dx, _globalpicnum
	movl	%edi, %edx
	sall	%cl, %edx
	movl	-248(%ebp), %ecx
	cvtsi2ssl	%edx, %xmm2
	cmpl	%ecx, -252(%ebp)
	je	L1786
	fxch	%st(1)
	subss	-68(%ebp), %xmm2
	mulss	-160(%ebp), %xmm2
	andl	$2047, %edx
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%edx, %xmm3
	mulss	-244(%ebp), %xmm3
	mulss	-264(%ebp), %xmm3
	addss	-260(%ebp), %xmm3
	addss	%xmm1, %xmm2
	movss	%xmm3, -176(%ebp)
	fmuls	-176(%ebp)
	fxch	%st(1)
	movss	%xmm2, -176(%ebp)
	fmuls	-176(%ebp)
	fsubrp	%st, %st(1)
L1787:
	addl	$1, %edi
	movl	%esi, %ecx
	xorps	%xmm2, %xmm2
	movss	-40(%ebp), %xmm4
	movl	%edi, %edx
	movss	-92(%ebp), %xmm6
	fstpl	__ZL4otex.lto_priv.0+8
	sall	%cl, %edx
	cvtsi2ssl	%edx, %xmm2
	subss	-68(%ebp), %xmm2
	mulss	-160(%ebp), %xmm2
	addss	%xmm1, %xmm2
	comiss	-48(%ebp), %xmm2
	movaps	%xmm0, %xmm1
	subss	%xmm4, %xmm1
	mulss	%xmm5, %xmm1
	addss	%xmm6, %xmm1
	jbe	L2313
	movaps	%xmm0, %xmm3
L1785:
	movl	$0, __ZL10pow2xsplit.lto_priv.0
	movaps	%xmm3, %xmm0
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	-272(%ebp), %xmm7
	mulss	%xmm5, %xmm7
	addss	-92(%ebp), %xmm7
	movss	%xmm7, (%esp)
	movss	-48(%ebp), %xmm2
	call	__ZL15polymost_domostffffffff.lto_priv.0
	jmp	L1770
L2298:
	movl	_sector, %eax
	movl	-136(%ebp), %esi
	movl	4(%eax,%esi,8), %esi
	jmp	L1938
L2296:
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
	jmp	L1934
L2301:
	movl	-64(%ebp), %esi
	movl	-192(%ebp), %edi
	movl	$1, _pisbottomwall
	movl	%edi, _psectnum
	movl	%esi, _pwallnum
	movl	%esi, _pbottomwall
	testb	$2, %al
	jne	L1952
	movl	$0, _psearchstat
	movl	$1, _doeditorcheck
L1955:
	movl	-44(%ebp), %edi
L1953:
	movzwl	16(%edi), %eax
	movl	_globalvisibility, %esi
	movl	$0, _globalclipdist
	movl	_globalvisibility2, %ebx
	movw	%ax, _globalpicnum
	movsbl	20(%edi), %eax
	movl	%eax, _globalshade
	movzbl	21(%edi), %eax
	movl	%eax, _globalpal
	movl	-80(%ebp), %eax
	movzbl	32(%edx,%eax), %eax
	testb	%al, %al
	je	L1956
	addl	$16, %eax
	movzbl	%al, %ecx
	movl	%esi, %eax
	movl	%ecx, %edx
/APP
 # 6438 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%ecx, %edx
	movl	%ebx, %eax
/APP
 # 6440 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
L1956:
	xorps	%xmm0, %xmm0
	movl	%esi, _globvis
	cvtsi2ssl	%ebx, %xmm0
	movl	%ebx, _globvis2
	call	__Z22polymost_setVisibilityf
	movzwl	14(%edi), %eax
	movl	%eax, _globalorientation
	movl	%eax, %ebx
	movl	-64(%ebp), %eax
	leal	16384(%eax), %edx
	movswl	_globalpicnum, %eax
	movl	%eax, %esi
	cmpb	$63, _picanm+3(%eax,%eax,4)
	ja	L2314
L1957:
	andb	$64, %dh
	je	L1958
	testb	$16, %bh
	je	L1958
	movswl	_globalpicnum, %eax
	movzwl	_rottile(,%eax,4), %eax
	cmpw	$-1, %ax
	je	L1958
	movw	%ax, _globalpicnum
	.p2align 4
	.p2align 3
L1958:
	movl	%ebx, %eax
	andw	$4, %ax
	jne	L1959
	movl	_sector, %edx
	movl	-136(%ebp), %esi
	movl	8(%edx,%esi,8), %esi
L1960:
	shrw	$2, %ax
	movl	-44(%ebp), %ebx
	movzbl	25(%edi), %edx
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	23(%ebx), %ecx
	movl	%eax, 4(%esp)
	movss	-48(%ebp), %xmm7
	movl	%esi, %eax
	movss	%xmm7, (%esp)
	movss	-40(%ebp), %xmm2
	movss	-128(%ebp), %xmm1
	movss	-72(%ebp), %xmm0
	call	__ZL13calc_ypanningiffffhhi.lto_priv.0
	testb	$8, 14(%ebx)
	je	L1961
	movzbl	22(%ebx), %edx
	movzbl	24(%edi), %eax
	leal	(%eax,%edx,4), %eax
	addl	%eax, %eax
	movl	%eax, -88(%ebp)
	fildl	-88(%ebp)
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
L1961:
	testb	$1, 15(%edi)
	je	L1962
	fldl	__ZL4xtex.lto_priv.0+16
	fchs
	fstpl	__ZL4xtex.lto_priv.0+16
	fldl	__ZL4ytex.lto_priv.0+16
	fchs
	fstpl	__ZL4ytex.lto_priv.0+16
	fldl	__ZL4otex.lto_priv.0+16
	fchs
	fstpl	__ZL4otex.lto_priv.0+16
L1962:
	cmpl	$3, _rendmode
	je	L2315
L1963:
	movl	-56(%ebp), %eax
	movzbl	33(%eax), %ecx
	testb	%cl, %cl
	jne	L1965
	movzbl	29(%eax), %ecx
L1965:
	movl	-56(%ebp), %eax
	movzbl	32(%eax), %edx
	movl	_globalflags, %eax
	andl	$4, %eax
	jne	L2017
	movzbl	21(%edi), %ebx
	testb	$2, _hictinting+1(,%ebx,8)
	jne	L1966
	movsbl	20(%edi), %eax
L1966:
	call	_calc_and_apply_fog
L1964:
	movss	-164(%ebp), %xmm2
	movl	$1, __ZL10pow2xsplit.lto_priv.0
	movss	%xmm2, (%esp)
	movss	-48(%ebp), %xmm2
	movss	-92(%ebp), %xmm1
	movss	-40(%ebp), %xmm0
	call	__ZL18should_clip_cfwallffff
	testl	%eax, %eax
	jne	L2316
L1967:
	movl	-44(%ebp), %edi
	movzwl	14(%edi), %eax
	testb	$10, %al
	je	L1968
	flds	-160(%ebp)
	movl	$0, __ZL4ytex.lto_priv.0+8
	movl	$0, __ZL4ytex.lto_priv.0+12
	fstpl	__ZL4otex.lto_priv.0+8
	flds	-140(%ebp)
	fstpl	__ZL4xtex.lto_priv.0+8
	movzwl	14(%edi), %eax
L1968:
	movl	$0, _doeditorcheck
	testb	$32, %al
	jne	L1969
	jmp	L1975
L1844:
	movss	LC55, %xmm7
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	-96(%ebp), %xmm5
	movss	%xmm5, (%esp)
	movss	-40(%ebp), %xmm2
	movss	-48(%ebp), %xmm0
	movss	-168(%ebp), %xmm1
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movl	_g_nodraw, %eax
	movl	%eax, -176(%ebp)
	jmp	L1838
	.p2align 4,,10
	.p2align 3
L2313:
	movl	$0, __ZL10pow2xsplit.lto_priv.0
	movaps	%xmm2, %xmm3
	subss	%xmm4, %xmm3
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movl	$0x00000000, 12(%esp)
	mulss	%xmm5, %xmm3
	movss	%xmm7, -188(%ebp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm5, -184(%ebp)
	addss	%xmm6, %xmm3
	movss	%xmm3, (%esp)
	movss	%xmm2, -176(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-176(%ebp), %xmm0
	fldl	__ZL4otex.lto_priv.0
	movss	_ghalfx, %xmm1
	fldl	__ZL4xtex.lto_priv.0+8
	movss	-184(%ebp), %xmm5
	movss	-188(%ebp), %xmm7
	jmp	L1783
	.p2align 4,,10
	.p2align 3
L2310:
	movaps	%xmm0, %xmm1
	movss	%xmm5, -216(%ebp)
	movl	$0, __ZL10pow2xsplit.lto_priv.0
	subss	%xmm4, %xmm1
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	mulss	%xmm5, %xmm1
	movl	$0x00000000, 12(%esp)
	movss	%xmm7, -188(%ebp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm6, (%esp)
	movss	%xmm0, -184(%ebp)
	addss	%xmm3, %xmm1
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-184(%ebp), %xmm2
	fldl	__ZL4otex.lto_priv.0
	movss	_ghalfx, %xmm1
	fldl	__ZL4xtex.lto_priv.0+8
	movss	-188(%ebp), %xmm7
	movss	-216(%ebp), %xmm5
	jmp	L1872
	.p2align 4,,10
	.p2align 3
L1875:
	fxch	%st(1)
	movss	-68(%ebp), %xmm3
	subss	%xmm0, %xmm3
	mulss	-248(%ebp), %xmm3
	movss	-268(%ebp), %xmm0
	mulss	%xmm3, %xmm0
	addss	-264(%ebp), %xmm0
	movss	%xmm0, -184(%ebp)
	fmuls	-184(%ebp)
	fxch	%st(1)
	movss	%xmm1, -184(%ebp)
	fmuls	-184(%ebp)
	fsubrp	%st, %st(1)
	jmp	L1876
	.p2align 4,,10
	.p2align 3
L1786:
	fxch	%st(1)
	movss	-68(%ebp), %xmm3
	subss	%xmm2, %xmm3
	movss	-244(%ebp), %xmm2
	mulss	%xmm3, %xmm2
	mulss	-264(%ebp), %xmm2
	addss	-260(%ebp), %xmm2
	movss	%xmm2, -176(%ebp)
	fmuls	-176(%ebp)
	fxch	%st(1)
	movss	%xmm1, -176(%ebp)
	fmuls	-176(%ebp)
	fsubrp	%st, %st(1)
	jmp	L1787
L2235:
	movss	LC61, %xmm6
	movss	-88(%ebp), %xmm5
	divss	%xmm2, %xmm5
	comiss	%xmm1, %xmm6
	jbe	L2317
	movss	LC61, %xmm3
	subss	%xmm2, %xmm1
	subss	%xmm7, %xmm0
	movl	$0x00000000, -272(%ebp)
	subss	%xmm2, %xmm3
	movaps	%xmm3, %xmm2
	divss	%xmm1, %xmm2
	mulss	%xmm2, %xmm0
	movss	%xmm2, -264(%ebp)
	movss	LC57, %xmm2
	addss	%xmm7, %xmm0
	jmp	L1881
L2222:
	movss	LC61, %xmm6
	movss	-88(%ebp), %xmm5
	divss	%xmm1, %xmm5
	comiss	%xmm2, %xmm6
	jbe	L2318
	movss	LC61, %xmm3
	subss	%xmm1, %xmm2
	subss	%xmm7, %xmm0
	movl	$0x00000000, -268(%ebp)
	subss	%xmm1, %xmm3
	movss	LC57, %xmm1
	divss	%xmm2, %xmm3
	mulss	%xmm3, %xmm0
	movss	%xmm3, -264(%ebp)
	addss	%xmm7, %xmm0
	jmp	L1792
L2287:
	movl	$0, -216(%ebp)
	jmp	L1924
L2219:
	movss	-48(%ebp), %xmm7
	subss	-40(%ebp), %xmm7
	movl	$0, __ZL12skyclamphack.lto_priv.0
	movss	-164(%ebp), %xmm5
	subss	-92(%ebp), %xmm5
	movss	%xmm7, -272(%ebp)
	movss	LC55, %xmm7
	jmp	L1779
L1870:
	movss	%xmm4, -176(%ebp)
	flds	-176(%ebp)
	xorps	%xmm3, %xmm3
	fstpl	__ZL4otex.lto_priv.0+16
	jmp	L1871
L1769:
	movl	_ydimen, %eax
	xorps	%xmm0, %xmm0
	xorps	%xmm3, %xmm3
	xorps	%xmm4, %xmm4
	cvtsi2ssl	_qglobalhoriz, %xmm0
	mulss	LC29, %xmm0
	movss	LC17, %xmm1
	sarl	%eax
	cvtsi2ssl	-244(%ebp), %xmm4
	cvtsi2ssl	%eax, %xmm3
	subss	%xmm1, %xmm4
	subss	%xmm3, %xmm0
	mulss	%xmm4, %xmm0
	mulss	LC29, %xmm0
	addss	%xmm3, %xmm0
	movss	%xmm0, __ZL6ghoriz.lto_priv.0
	jmp	L1771
L1858:
	movl	_ydimen, %eax
	xorps	%xmm0, %xmm0
	xorps	%xmm3, %xmm3
	xorps	%xmm4, %xmm4
	cvtsi2ssl	_qglobalhoriz, %xmm0
	mulss	LC29, %xmm0
	movss	LC17, %xmm1
	sarl	%eax
	cvtsi2ssl	-248(%ebp), %xmm4
	cvtsi2ssl	%eax, %xmm3
	subss	%xmm1, %xmm4
	subss	%xmm3, %xmm0
	mulss	%xmm4, %xmm0
	mulss	LC29, %xmm0
	addss	%xmm3, %xmm0
	movss	%xmm0, __ZL6ghoriz.lto_priv.0
	jmp	L1860
L1959:
	movl	-56(%ebp), %ebx
	movl	4(%ebx), %esi
	jmp	L1960
L2017:
	xorl	%eax, %eax
	jmp	L1966
L2016:
	xorl	%eax, %eax
	jmp	L1944
L2299:
	movl	_r_useindexedcolortextures, %eax
	testl	%eax, %eax
	je	L1941
	movl	_gltexfiltermode, %eax
	testl	%eax, %eax
	jne	L1941
	movl	_usehightile, %eax
	testl	%eax, %eax
	je	L1942
	movl	_globalpal, %edx
	movswl	_globalpicnum, %eax
	movzwl	_hictinting(,%edx,8), %ecx
	andl	$256, %ecx
	call	_hicfindsubst
	testl	%eax, %eax
	jne	L1941
	jmp	L1942
	.p2align 4,,10
	.p2align 3
L2315:
	movl	_r_useindexedcolortextures, %eax
	testl	%eax, %eax
	je	L1963
	movl	_gltexfiltermode, %eax
	testl	%eax, %eax
	jne	L1963
	movl	_usehightile, %esi
	testl	%esi, %esi
	je	L1964
	movl	_globalpal, %edx
	movswl	_globalpicnum, %eax
	movzwl	_hictinting(,%edx,8), %ecx
	andl	$256, %ecx
	call	_hicfindsubst
	testl	%eax, %eax
	jne	L1963
	jmp	L1964
	.p2align 4,,10
	.p2align 3
L2304:
	movss	-248(%ebp), %xmm5
	flds	LC52
	movl	$6, _drawingskybox
	movss	_fcosglobalang, %xmm1
	fmull	_gxyaspect
	movl	$0, __ZL4xtex.lto_priv.0
	movss	__ZL6ghoriz.lto_priv.0, %xmm2
	xorps	-216(%ebp), %xmm2
	movl	$0, __ZL4xtex.lto_priv.0+4
	mulss	%xmm5, %xmm1
	movss	-184(%ebp), %xmm7
	mulss	_fsinglobalang, %xmm5
	movss	%xmm2, -184(%ebp)
	movss	_fviewingrange, %xmm2
	fstl	__ZL4ytex.lto_priv.0
	fld	%st(0)
	fmuls	-184(%ebp)
	movaps	%xmm5, %xmm0
	mulss	%xmm2, %xmm5
	fstl	__ZL4otex.lto_priv.0
	mulss	%xmm1, %xmm2
	movss	%xmm5, -184(%ebp)
	flds	-184(%ebp)
	flds	-244(%ebp)
	movss	%xmm2, -184(%ebp)
	fmul	%st, %st(1)
	fxch	%st(1)
	fstl	__ZL4xtex.lto_priv.0+8
	fxch	%st(1)
	fmuls	-184(%ebp)
	movss	%xmm1, -184(%ebp)
	flds	-252(%ebp)
	fmul	%st, %st(4)
	fxch	%st(4)
	fstl	__ZL4ytex.lto_priv.0+8
	fxch	%st(3)
	fmulp	%st, %st(4)
	fxch	%st(1)
	fsubrs	-184(%ebp)
	movss	%xmm0, -184(%ebp)
	fmuls	-176(%ebp)
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
	fadds	-184(%ebp)
	fmuls	-176(%ebp)
	fsubrp	%st, %st(1)
	fchs
	fstpl	__ZL4otex.lto_priv.0+16
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	-96(%ebp), %xmm2
	movss	%xmm2, (%esp)
	movss	-40(%ebp), %xmm2
	movss	-48(%ebp), %xmm0
	movss	-168(%ebp), %xmm1
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movl	$0, _drawingskybox
	jmp	L1877
L2307:
	movss	-248(%ebp), %xmm5
	flds	LC71
	movl	$5, _drawingskybox
	movss	_fcosglobalang, %xmm0
	fmull	_gxyaspect
	movl	$0, __ZL4xtex.lto_priv.0
	movss	__ZL6ghoriz.lto_priv.0, %xmm2
	xorps	-216(%ebp), %xmm2
	movl	$0, __ZL4xtex.lto_priv.0+4
	mulss	%xmm5, %xmm0
	movss	-184(%ebp), %xmm7
	mulss	_fsinglobalang, %xmm5
	movss	%xmm2, -184(%ebp)
	movss	_fviewingrange, %xmm2
	fstl	__ZL4ytex.lto_priv.0
	fld	%st(0)
	fmuls	-184(%ebp)
	movaps	%xmm5, %xmm1
	mulss	%xmm2, %xmm5
	fstl	__ZL4otex.lto_priv.0
	mulss	%xmm0, %xmm2
	movss	%xmm5, -184(%ebp)
	flds	-184(%ebp)
	flds	-244(%ebp)
	movss	%xmm2, -184(%ebp)
	fmul	%st, %st(1)
	fxch	%st(1)
	fstl	__ZL4xtex.lto_priv.0+8
	fxch	%st(1)
	fmuls	-184(%ebp)
	movss	%xmm0, -184(%ebp)
	fstl	__ZL4xtex.lto_priv.0+16
	flds	-252(%ebp)
	fmul	%st, %st(4)
	fxch	%st(4)
	fstl	__ZL4ytex.lto_priv.0+8
	fstpl	__ZL4ytex.lto_priv.0+16
	fxch	%st(2)
	fmulp	%st, %st(3)
	fsubrs	-184(%ebp)
	movss	%xmm1, -184(%ebp)
	fmuls	-176(%ebp)
	fadd	%st(2), %st
	fstpl	__ZL4otex.lto_priv.0+8
	fadds	-184(%ebp)
	fmuls	-176(%ebp)
	fsubrp	%st, %st(1)
	fstpl	__ZL4otex.lto_priv.0+16
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	-164(%ebp), %xmm5
	movss	%xmm5, (%esp)
	movss	-48(%ebp), %xmm2
	movss	-92(%ebp), %xmm1
	movss	-40(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movl	$0, _drawingskybox
	jmp	L1788
L2300:
	movss	-88(%ebp), %xmm5
	movss	%xmm5, 16(%esp)
	movss	-96(%ebp), %xmm7
	movss	%xmm7, 12(%esp)
	movss	-112(%ebp), %xmm1
	movss	%xmm1, 8(%esp)
	movss	-168(%ebp), %xmm3
	movss	%xmm5, (%esp)
	movss	%xmm3, 4(%esp)
	movss	-40(%ebp), %xmm2
	movss	-48(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	jmp	L1945
L2297:
	call	_animateoffs
	addl	%eax, %esi
	movw	%si, _globalpicnum
	jmp	L1935
L2316:
	movss	-164(%ebp), %xmm2
	movss	%xmm2, 16(%esp)
	movss	-120(%ebp), %xmm5
	movss	%xmm5, 12(%esp)
	movss	-92(%ebp), %xmm6
	movss	%xmm6, 8(%esp)
	movss	-104(%ebp), %xmm1
	movss	%xmm5, (%esp)
	movss	%xmm1, 4(%esp)
	movss	-48(%ebp), %xmm2
	movss	-40(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	jmp	L1967
L2314:
	movl	%edx, -88(%ebp)
	call	_animateoffs
	movl	-88(%ebp), %edx
	addl	%eax, %esi
	movw	%si, _globalpicnum
	jmp	L1957
L2220:
	comiss	-164(%ebp), %xmm4
	jbe	L2319
	movss	-40(%ebp), %xmm0
	movss	-92(%ebp), %xmm1
	movaps	%xmm4, %xmm6
	movss	%xmm3, -280(%ebp)
	movss	-48(%ebp), %xmm7
	movss	-164(%ebp), %xmm5
	subss	%xmm1, %xmm6
	subss	%xmm0, %xmm7
	subss	%xmm1, %xmm5
	mulss	%xmm7, %xmm6
	movss	%xmm7, -272(%ebp)
	movss	LC55, %xmm7
	movss	%xmm5, -276(%ebp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movl	$0x00000000, 12(%esp)
	divss	%xmm5, %xmm6
	movss	%xmm7, -184(%ebp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm4, (%esp)
	movss	%xmm4, -248(%ebp)
	addss	%xmm0, %xmm6
	movaps	%xmm6, %xmm2
	movss	%xmm6, -160(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-184(%ebp), %xmm7
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	-248(%ebp), %xmm4
	movss	%xmm4, (%esp)
	movaps	%xmm4, %xmm1
	movss	-48(%ebp), %xmm2
	movss	-160(%ebp), %xmm0
	jmp	L2253
L2308:
	movaps	%xmm4, %xmm1
	xorps	LC1, %xmm1
	movss	-96(%ebp), %xmm5
	movl	$0, __ZL4xtex.lto_priv.0+16
	flds	LC72
	fmull	_gxyaspect
	movl	$0, __ZL4xtex.lto_priv.0+20
	divss	%xmm3, %xmm1
	xorps	LC1, %xmm0
	movl	$0, __ZL4xtex.lto_priv.0+8
	movl	$0, __ZL4xtex.lto_priv.0+12
	movss	%xmm0, -176(%ebp)
	fstl	__ZL4ytex.lto_priv.0
	fmuls	-176(%ebp)
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
	ja	L2320
	movss	-168(%ebp), %xmm2
	comiss	%xmm1, %xmm2
	jbe	L2321
	movss	-48(%ebp), %xmm7
	movss	%xmm4, -284(%ebp)
	movss	-40(%ebp), %xmm4
	movss	%xmm6, -288(%ebp)
	movss	-96(%ebp), %xmm6
	movss	-168(%ebp), %xmm5
	subss	%xmm4, %xmm7
	movss	%xmm3, -280(%ebp)
	subss	%xmm6, %xmm5
	movss	%xmm7, -276(%ebp)
	movaps	%xmm7, %xmm2
	movaps	%xmm1, %xmm7
	subss	%xmm6, %xmm7
	movss	%xmm5, -256(%ebp)
	movl	$0x00000000, 12(%esp)
	movaps	%xmm7, %xmm0
	movss	LC55, %xmm7
	mulss	%xmm2, %xmm0
	movaps	%xmm4, %xmm2
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	%xmm7, -188(%ebp)
	movl	$0x00000000, 4(%esp)
	divss	%xmm5, %xmm0
	movss	%xmm6, (%esp)
	movss	%xmm1, -216(%ebp)
	addss	%xmm4, %xmm0
	movss	%xmm0, -176(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-188(%ebp), %xmm7
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	-216(%ebp), %xmm1
	movss	%xmm1, (%esp)
	movss	-176(%ebp), %xmm2
L2256:
	movss	-48(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movswl	_globalpicnum, %eax
	movl	_xdimscale, %esi
	movss	-188(%ebp), %xmm7
	movss	-256(%ebp), %xmm5
	movl	%eax, -264(%ebp)
	movzbl	_picsiz(%eax), %ecx
	movl	$1, %eax
	movss	-280(%ebp), %xmm3
	movss	-284(%ebp), %xmm4
	andl	$15, %ecx
	movss	-288(%ebp), %xmm6
	movss	_fviewingrange, %xmm2
	sall	%cl, %eax
	movl	%eax, -252(%ebp)
	jmp	L1867
L2240:
	movss	-188(%ebp), %xmm7
	comiss	%xmm7, %xmm6
	jbe	L2242
	movaps	%xmm6, %xmm0
	comiss	%xmm5, %xmm2
	movaps	%xmm2, %xmm1
	subss	%xmm5, %xmm0
	subss	%xmm5, %xmm1
	subss	%xmm7, %xmm0
	movss	-276(%ebp), %xmm7
	subss	-256(%ebp), %xmm7
	addss	%xmm2, %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm7, %xmm0
	movss	-256(%ebp), %xmm7
	mulss	%xmm1, %xmm0
	addss	%xmm0, %xmm7
	movss	-188(%ebp), %xmm0
	subss	%xmm2, %xmm0
	movss	%xmm7, -176(%ebp)
	mulss	%xmm0, %xmm1
	addss	%xmm2, %xmm1
	jbe	L1901
	movss	%xmm4, -316(%ebp)
	movss	-184(%ebp), %xmm4
	movaps	%xmm7, %xmm0
	movss	%xmm3, -312(%ebp)
	movss	%xmm6, -308(%ebp)
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm5, (%esp)
	movss	%xmm4, 16(%esp)
	movss	%xmm4, 8(%esp)
	movss	-256(%ebp), %xmm2
	movss	%xmm5, -304(%ebp)
	movss	%xmm1, -296(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-184(%ebp), %xmm4
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm4, 16(%esp)
	movss	%xmm4, 8(%esp)
	movss	-296(%ebp), %xmm1
	movss	%xmm1, (%esp)
	movss	-176(%ebp), %xmm2
	movss	-188(%ebp), %xmm1
	movss	-276(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-304(%ebp), %xmm5
	movss	-308(%ebp), %xmm6
	movss	-312(%ebp), %xmm3
	movss	-316(%ebp), %xmm4
	jmp	L1898
L1952:
	movl	$0, _psearchstat
	movl	-44(%ebp), %eax
	movl	$1, _doeditorcheck
	movswl	10(%eax), %eax
	movl	%eax, _pbottomwall
	jmp	L1954
L2227:
	movss	-260(%ebp), %xmm7
	comiss	%xmm7, %xmm6
	jbe	L2229
	subss	%xmm5, %xmm7
	comiss	%xmm1, %xmm5
	movaps	%xmm1, %xmm0
	subss	%xmm5, %xmm0
	movaps	%xmm7, %xmm2
	movss	-276(%ebp), %xmm7
	subss	-256(%ebp), %xmm7
	subss	%xmm6, %xmm2
	addss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movaps	%xmm7, %xmm2
	movaps	%xmm6, %xmm7
	subss	%xmm1, %xmm7
	mulss	%xmm0, %xmm7
	mulss	%xmm0, %xmm2
	addss	-256(%ebp), %xmm2
	addss	%xmm1, %xmm7
	movss	%xmm2, -176(%ebp)
	jbe	L1812
	movss	%xmm4, -312(%ebp)
	movss	-184(%ebp), %xmm4
	movaps	%xmm5, %xmm1
	movss	%xmm3, -308(%ebp)
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm4, 16(%esp)
	movss	%xmm4, 8(%esp)
	movss	%xmm7, (%esp)
	movss	-256(%ebp), %xmm0
	movss	%xmm5, -188(%ebp)
	movss	%xmm7, -288(%ebp)
	movss	%xmm6, -316(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-184(%ebp), %xmm4
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm4, 16(%esp)
	movss	%xmm4, 8(%esp)
	movss	-316(%ebp), %xmm6
	movss	%xmm6, (%esp)
	movss	-276(%ebp), %xmm2
	movss	-288(%ebp), %xmm1
	movss	-176(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-188(%ebp), %xmm5
	movss	-308(%ebp), %xmm3
	movss	-312(%ebp), %xmm4
	jmp	L1809
L2225:
	movss	-48(%ebp), %xmm7
	movss	-164(%ebp), %xmm2
	comiss	%xmm4, %xmm7
	jbe	L2226
	movaps	%xmm4, %xmm0
	subss	-92(%ebp), %xmm2
	movss	%xmm4, -276(%ebp)
	subss	%xmm7, %xmm0
	mulss	%xmm2, %xmm0
	movaps	%xmm7, %xmm2
	subss	-40(%ebp), %xmm2
	divss	%xmm2, %xmm0
	addss	-164(%ebp), %xmm0
	movss	%xmm0, -260(%ebp)
	jmp	L1803
L2223:
	movss	-40(%ebp), %xmm2
	comiss	%xmm2, %xmm3
	jbe	L2224
	movss	-92(%ebp), %xmm7
	movss	-164(%ebp), %xmm0
	movaps	%xmm3, %xmm5
	movss	%xmm3, -256(%ebp)
	subss	%xmm2, %xmm5
	subss	%xmm7, %xmm0
	mulss	%xmm0, %xmm5
	movss	-48(%ebp), %xmm0
	subss	%xmm2, %xmm0
	movaps	%xmm4, %xmm2
	subss	%xmm3, %xmm2
	divss	%xmm0, %xmm5
	movss	%xmm2, -304(%ebp)
	addss	%xmm7, %xmm5
	jmp	L1799
L2238:
	movss	-48(%ebp), %xmm7
	movss	-168(%ebp), %xmm6
	comiss	%xmm4, %xmm7
	jbe	L2239
	movaps	%xmm4, %xmm1
	subss	-96(%ebp), %xmm6
	movss	%xmm4, -276(%ebp)
	subss	%xmm7, %xmm1
	mulss	%xmm6, %xmm1
	movaps	%xmm7, %xmm6
	subss	-40(%ebp), %xmm6
	divss	%xmm6, %xmm1
	addss	-168(%ebp), %xmm1
	movaps	%xmm1, %xmm6
	jmp	L1892
L2236:
	movss	-40(%ebp), %xmm6
	comiss	%xmm6, %xmm3
	jbe	L2237
	movss	-96(%ebp), %xmm7
	movss	-168(%ebp), %xmm5
	movaps	%xmm3, %xmm1
	movss	%xmm3, -256(%ebp)
	subss	%xmm6, %xmm1
	subss	%xmm7, %xmm5
	mulss	%xmm5, %xmm1
	movss	-48(%ebp), %xmm5
	subss	%xmm6, %xmm5
	movaps	%xmm4, %xmm6
	subss	%xmm3, %xmm6
	divss	%xmm5, %xmm1
	movss	%xmm6, -284(%ebp)
	movaps	%xmm1, %xmm5
	addss	%xmm7, %xmm5
	jmp	L1888
L2320:
	movss	-168(%ebp), %xmm5
	comiss	%xmm1, %xmm5
	ja	L2322
	movss	%xmm6, -288(%ebp)
	movss	-96(%ebp), %xmm6
	movss	-40(%ebp), %xmm7
	movss	-48(%ebp), %xmm2
	movss	%xmm3, -280(%ebp)
	movaps	%xmm1, %xmm3
	movss	-168(%ebp), %xmm5
	subss	%xmm6, %xmm3
	movss	%xmm4, -284(%ebp)
	subss	%xmm7, %xmm2
	subss	%xmm6, %xmm5
	movaps	%xmm3, %xmm0
	mulss	%xmm2, %xmm0
	movss	%xmm2, -276(%ebp)
	movaps	%xmm7, %xmm2
	movss	%xmm5, -256(%ebp)
	movl	$0x00000000, 12(%esp)
	divss	%xmm5, %xmm0
	addss	%xmm7, %xmm0
	movss	LC55, %xmm7
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	%xmm7, -188(%ebp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm1, (%esp)
	movss	%xmm1, -216(%ebp)
	movss	%xmm0, -176(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-188(%ebp), %xmm7
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	-216(%ebp), %xmm1
	movss	%xmm1, (%esp)
	movss	-176(%ebp), %xmm2
	movss	-168(%ebp), %xmm1
	jmp	L2256
L2268:
	movl	-80(%ebp), %eax
	addl	_sector, %eax
	testb	$2, 14(%eax)
	je	L2323
	movl	_globalposy, %edx
	movl	%edx, 8(%esp)
	movl	_globalposx, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_getflorzofslopeptr.part.0
L1750:
	cmpl	%eax, _globalposz
	jg	L2255
	movss	LC55, %xmm7
	movl	$1, _g_nodraw
	movl	$-1, __ZL10yax_drawcf
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	-164(%ebp), %xmm3
	movss	%xmm3, (%esp)
	movss	-48(%ebp), %xmm2
	movss	-92(%ebp), %xmm1
	movss	-40(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	LC70, %xmm4
	movl	$0, _g_nodraw
	movss	%xmm4, -160(%ebp)
	jmp	L1752
L2274:
	movl	-80(%ebp), %eax
	addl	_sector, %eax
	testb	$2, 12(%eax)
	je	L2324
	movl	_globalposy, %edx
	movl	%edx, 8(%esp)
	movl	_globalposx, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_getceilzofslopeptr.part.0
L1836:
	cmpl	%eax, _globalposz
	jl	L2258
	movss	LC55, %xmm7
	movl	$1, _g_nodraw
	movl	$-1, __ZL10yax_drawcf
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	-96(%ebp), %xmm6
	movss	%xmm6, (%esp)
	movss	-40(%ebp), %xmm2
	movss	-48(%ebp), %xmm0
	movss	-168(%ebp), %xmm1
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movl	$0, _g_nodraw
	movl	$0, _doeditorcheck
	jmp	L1915
L2224:
	movaps	%xmm4, %xmm2
	movss	-92(%ebp), %xmm5
	movss	%xmm3, -256(%ebp)
	subss	%xmm3, %xmm2
	movss	%xmm2, -304(%ebp)
	jmp	L1799
L2226:
	movss	%xmm2, -260(%ebp)
	movss	%xmm4, -276(%ebp)
	jmp	L1803
L2237:
	movaps	%xmm4, %xmm7
	movss	-96(%ebp), %xmm5
	movss	%xmm3, -256(%ebp)
	subss	%xmm3, %xmm7
	movss	%xmm7, -284(%ebp)
	jmp	L1888
L2239:
	movss	%xmm4, -276(%ebp)
	jmp	L1892
L2302:
	movss	%xmm5, -296(%ebp)
	movss	-184(%ebp), %xmm5
	movss	%xmm4, -308(%ebp)
	movss	%xmm3, -304(%ebp)
	movss	%xmm6, -176(%ebp)
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm5, 16(%esp)
	movss	%xmm5, 8(%esp)
	movss	%xmm2, (%esp)
	movss	-256(%ebp), %xmm2
	movss	-188(%ebp), %xmm1
	movss	-276(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-176(%ebp), %xmm6
	movss	-296(%ebp), %xmm5
	movss	-304(%ebp), %xmm3
	movss	-308(%ebp), %xmm4
	jmp	L1898
L2229:
	movss	-184(%ebp), %xmm2
	movss	%xmm4, -288(%ebp)
	movaps	%xmm5, %xmm1
	movss	%xmm3, -188(%ebp)
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm2, 16(%esp)
	movss	%xmm2, 8(%esp)
	movss	-260(%ebp), %xmm3
	movss	%xmm3, (%esp)
	movss	-276(%ebp), %xmm2
	movss	-256(%ebp), %xmm0
	movss	%xmm5, -176(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-288(%ebp), %xmm4
	movss	-188(%ebp), %xmm3
	movss	-176(%ebp), %xmm5
	jmp	L1809
L2242:
	movss	-184(%ebp), %xmm2
	movss	%xmm4, -304(%ebp)
	movaps	%xmm6, %xmm1
	movss	%xmm3, -296(%ebp)
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm5, (%esp)
	movss	%xmm2, 16(%esp)
	movss	%xmm2, 8(%esp)
	movss	-256(%ebp), %xmm2
	movss	-276(%ebp), %xmm0
	movss	%xmm5, -188(%ebp)
	movss	%xmm6, -176(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-304(%ebp), %xmm4
	movss	-296(%ebp), %xmm3
	movss	-188(%ebp), %xmm5
	movss	-176(%ebp), %xmm6
	jmp	L1898
L2305:
	movss	%xmm5, -176(%ebp)
	movss	-184(%ebp), %xmm5
	movss	%xmm4, -288(%ebp)
	movss	%xmm3, -188(%ebp)
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm5, 16(%esp)
	movss	%xmm5, 8(%esp)
	movss	%xmm6, (%esp)
	movss	-276(%ebp), %xmm2
	movss	-256(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-176(%ebp), %xmm5
	movss	-188(%ebp), %xmm3
	movss	-288(%ebp), %xmm4
	jmp	L1809
L2243:
	movss	-260(%ebp), %xmm4
	comiss	%xmm4, %xmm6
	jbe	L2245
	movaps	%xmm6, %xmm0
	movss	-268(%ebp), %xmm7
	movss	-256(%ebp), %xmm1
	subss	%xmm5, %xmm0
	movss	-276(%ebp), %xmm3
	movaps	%xmm7, %xmm2
	comiss	%xmm5, %xmm7
	subss	%xmm5, %xmm2
	subss	%xmm1, %xmm3
	subss	%xmm4, %xmm0
	addss	%xmm7, %xmm0
	divss	%xmm0, %xmm2
	movaps	%xmm3, %xmm0
	movaps	%xmm4, %xmm3
	subss	%xmm7, %xmm3
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm3, %xmm1
	mulss	%xmm2, %xmm1
	addss	%xmm7, %xmm1
	jbe	L1909
	movss	-184(%ebp), %xmm3
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm5, (%esp)
	movss	%xmm3, 16(%esp)
	movss	%xmm3, 8(%esp)
	movss	-256(%ebp), %xmm2
	movss	%xmm1, -188(%ebp)
	movss	%xmm0, -176(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-184(%ebp), %xmm3
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm3, 16(%esp)
	movss	%xmm3, 8(%esp)
	movss	-188(%ebp), %xmm1
	movss	%xmm1, (%esp)
	movss	-176(%ebp), %xmm2
	movss	-260(%ebp), %xmm1
	movss	-276(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	_ghalfx, %xmm5
	movss	%xmm5, -176(%ebp)
	jmp	L1885
L2230:
	movss	-272(%ebp), %xmm7
	movss	-260(%ebp), %xmm3
	comiss	%xmm3, %xmm7
	jbe	L2232
	subss	%xmm5, %xmm3
	movss	-280(%ebp), %xmm6
	movaps	%xmm6, %xmm0
	comiss	%xmm6, %xmm5
	movaps	%xmm3, %xmm1
	subss	%xmm5, %xmm0
	movss	-256(%ebp), %xmm3
	subss	%xmm7, %xmm1
	addss	%xmm6, %xmm1
	divss	%xmm1, %xmm0
	movss	-276(%ebp), %xmm1
	subss	%xmm3, %xmm1
	mulss	%xmm0, %xmm1
	movaps	%xmm1, %xmm4
	addss	%xmm3, %xmm4
	movaps	%xmm7, %xmm3
	subss	%xmm6, %xmm3
	mulss	%xmm0, %xmm3
	addss	%xmm6, %xmm3
	jbe	L1820
	movss	-184(%ebp), %xmm6
	movss	%xmm3, (%esp)
	movaps	%xmm5, %xmm1
	movaps	%xmm4, %xmm2
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm6, 16(%esp)
	movss	%xmm6, 8(%esp)
	movss	-256(%ebp), %xmm0
	movss	%xmm3, -188(%ebp)
	movss	%xmm4, -176(%ebp)
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-184(%ebp), %xmm6
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm6, 16(%esp)
	movss	%xmm6, 8(%esp)
	movss	-272(%ebp), %xmm7
	movss	%xmm7, (%esp)
	movss	-276(%ebp), %xmm2
	movss	-188(%ebp), %xmm1
	movss	-176(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	_ghalfx, %xmm5
	movss	%xmm5, -176(%ebp)
	jmp	L1796
L2318:
	movl	$0x00000000, -268(%ebp)
	movss	-88(%ebp), %xmm4
	movaps	%xmm4, %xmm1
	movss	%xmm4, -264(%ebp)
	divss	%xmm2, %xmm1
	jmp	L1792
L2317:
	movl	$0x00000000, -272(%ebp)
	movss	-88(%ebp), %xmm4
	movaps	%xmm4, %xmm2
	movss	%xmm4, -264(%ebp)
	divss	%xmm1, %xmm2
	jmp	L1881
L2319:
	movss	LC55, %xmm7
	movss	%xmm3, -276(%ebp)
	movl	$0x00000000, 12(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	%xmm7, -184(%ebp)
	movl	$0x00000000, 4(%esp)
	movss	-164(%ebp), %xmm5
	movss	%xmm5, (%esp)
	movss	-48(%ebp), %xmm2
	movss	-92(%ebp), %xmm1
	movss	-40(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-48(%ebp), %xmm3
	subss	-40(%ebp), %xmm3
	movss	-164(%ebp), %xmm5
	subss	-92(%ebp), %xmm5
	movss	_fviewingrange, %xmm2
	movl	_xdimscale, %edi
	movss	%xmm3, -272(%ebp)
L2254:
	movswl	_globalpicnum, %eax
	movl	$1, %ebx
	movss	-184(%ebp), %xmm7
	movss	-276(%ebp), %xmm3
	movl	%eax, -260(%ebp)
	movzbl	_picsiz(%eax), %ecx
	andl	$15, %ecx
	sall	%cl, %ebx
	movl	%ebx, -248(%ebp)
	jmp	L1779
L2311:
	movss	LC55, %xmm7
	movss	%xmm3, -276(%ebp)
	movaps	%xmm4, %xmm1
	movl	$0x00000000, 12(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	%xmm7, -184(%ebp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm4, (%esp)
	movss	-48(%ebp), %xmm2
	movss	-40(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-48(%ebp), %xmm4
	subss	-40(%ebp), %xmm4
	movss	-164(%ebp), %xmm5
	movl	_xdimscale, %edi
	movss	_fviewingrange, %xmm2
	subss	-92(%ebp), %xmm5
	movss	%xmm4, -272(%ebp)
	jmp	L2254
L2306:
	movss	-184(%ebp), %xmm4
	movl	$0x00000000, 12(%esp)
	movaps	%xmm7, %xmm1
	movl	$0x00000000, 4(%esp)
	movss	%xmm4, 16(%esp)
	movss	%xmm4, 8(%esp)
	movss	-272(%ebp), %xmm5
	movss	%xmm5, (%esp)
	movss	-276(%ebp), %xmm2
	movss	-256(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	_ghalfx, %xmm4
	movss	%xmm4, -176(%ebp)
	jmp	L1796
L2245:
	movss	-184(%ebp), %xmm4
	movss	%xmm5, (%esp)
	movaps	%xmm6, %xmm1
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm4, 16(%esp)
	movss	%xmm4, 8(%esp)
	movss	-256(%ebp), %xmm2
	movss	-276(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	_ghalfx, %xmm5
	movss	%xmm5, -176(%ebp)
	jmp	L1885
L2303:
	movss	-184(%ebp), %xmm3
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm3, 16(%esp)
	movss	%xmm3, 8(%esp)
	movss	-268(%ebp), %xmm5
	movss	%xmm5, (%esp)
	movss	-256(%ebp), %xmm2
	movss	-260(%ebp), %xmm1
	movss	-276(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	_ghalfx, %xmm3
	movss	%xmm3, -176(%ebp)
	jmp	L1885
L2232:
	movss	-184(%ebp), %xmm7
	movl	$0x00000000, 12(%esp)
	movaps	%xmm5, %xmm1
	movl	$0x00000000, 4(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	-260(%ebp), %xmm2
	movss	%xmm2, (%esp)
	movss	-276(%ebp), %xmm2
	movss	-256(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	_ghalfx, %xmm5
	movss	%xmm5, -176(%ebp)
	jmp	L1796
L2322:
	movss	LC55, %xmm7
	movss	%xmm6, -280(%ebp)
	movss	%xmm4, -256(%ebp)
	movss	%xmm3, -216(%ebp)
	movl	$0x00000000, 12(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	%xmm7, -188(%ebp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm1, (%esp)
	movss	-40(%ebp), %xmm2
L2257:
	movss	-48(%ebp), %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	movss	-48(%ebp), %xmm5
	subss	-40(%ebp), %xmm5
	movswl	_globalpicnum, %eax
	movl	_xdimscale, %esi
	movss	-188(%ebp), %xmm7
	movss	-216(%ebp), %xmm3
	movl	%eax, -264(%ebp)
	movss	-256(%ebp), %xmm4
	movss	%xmm5, -276(%ebp)
	movzbl	_picsiz(%eax), %ecx
	movl	$1, %eax
	movss	-168(%ebp), %xmm5
	movss	_fviewingrange, %xmm2
	subss	-96(%ebp), %xmm5
	andl	$15, %ecx
	movss	-280(%ebp), %xmm6
	sall	%cl, %eax
	movl	%eax, -252(%ebp)
	jmp	L1867
L2321:
	movss	LC55, %xmm7
	movss	%xmm6, -280(%ebp)
	movss	%xmm4, -256(%ebp)
	movss	%xmm3, -216(%ebp)
	movl	$0x00000000, 12(%esp)
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	%xmm7, -188(%ebp)
	movl	$0x00000000, 4(%esp)
	movss	-96(%ebp), %xmm5
	movss	%xmm5, (%esp)
	movss	-40(%ebp), %xmm2
	movss	-168(%ebp), %xmm1
	jmp	L2257
L2323:
	movl	8(%eax), %eax
	jmp	L1750
L2324:
	movl	4(%eax), %eax
	jmp	L1836
L2309:
	movl	-252(%ebp), %edx
	cmpl	%edx, -256(%ebp)
	movl	-244(%ebp), %edx
	je	L2325
	fxch	%st(1)
	andl	%edi, %edx
	movl	%esi, %ecx
	xorps	%xmm0, %xmm0
	movss	-68(%ebp), %xmm2
	movsbw	9(%ebx,%edx), %dx
	movss	-176(%ebp), %xmm6
	movss	LC35, %xmm4
	addl	%eax, %edx
	movl	%edi, %eax
	addl	$1, %edi
	sall	%cl, %eax
	movw	%dx, _globalpicnum
	sall	%cl, %edi
	movl	%eax, %edx
	andl	$2047, %edx
	cvtsi2ssl	%edx, %xmm0
	mulss	-248(%ebp), %xmm0
	mulss	%xmm4, %xmm0
	movss	-96(%ebp), %xmm4
	addss	%xmm3, %xmm0
	movss	-40(%ebp), %xmm3
	movss	%xmm0, -184(%ebp)
	xorps	%xmm0, %xmm0
	fmuls	-184(%ebp)
	fxch	%st(1)
	cvtsi2ssl	%eax, %xmm0
	subss	%xmm2, %xmm0
	mulss	%xmm6, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -176(%ebp)
	xorps	%xmm0, %xmm0
	fmuls	-176(%ebp)
	cvtsi2ssl	%edi, %xmm0
	fsubrp	%st, %st(1)
	subss	%xmm2, %xmm0
	fstpl	__ZL4otex.lto_priv.0+8
	mulss	%xmm6, %xmm0
	movaps	%xmm3, %xmm6
	subss	%xmm3, %xmm6
	mulss	%xmm5, %xmm6
	addss	%xmm1, %xmm0
	comiss	-48(%ebp), %xmm0
	addss	%xmm4, %xmm6
	ja	L2013
	movaps	%xmm0, %xmm1
	xorl	%eax, %eax
	movaps	%xmm3, %xmm2
	subss	%xmm3, %xmm1
	movl	%eax, __ZL10pow2xsplit.lto_priv.0
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	mulss	%xmm5, %xmm1
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	%xmm6, (%esp)
	addss	%xmm4, %xmm1
	call	__ZL15polymost_domostffffffff.lto_priv.0
	jmp	L1859
L2312:
	movl	-216(%ebp), %ecx
	movl	-248(%ebp), %edx
	andl	%ebx, %ecx
	movsbw	9(%esi,%ecx), %cx
	addl	%eax, %ecx
	cmpl	%edx, -252(%ebp)
	movl	%ebx, %edx
	movw	%cx, _globalpicnum
	movl	%edi, %ecx
	je	L2326
	fxch	%st(1)
	sall	%cl, %edx
	xorps	%xmm0, %xmm0
	leal	1(%ebx), %eax
	movss	-68(%ebp), %xmm3
	movss	LC35, %xmm4
	movl	%edx, %ecx
	xorps	%xmm2, %xmm2
	andl	$2047, %ecx
	cvtsi2ssl	%ecx, %xmm0
	mulss	-244(%ebp), %xmm0
	movl	%edi, %ecx
	sall	%cl, %eax
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm4, %xmm0
	movss	-40(%ebp), %xmm4
	subss	%xmm3, %xmm2
	addss	%xmm6, %xmm0
	movss	-160(%ebp), %xmm6
	mulss	%xmm6, %xmm2
	movss	%xmm0, -176(%ebp)
	xorps	%xmm0, %xmm0
	fmuls	-176(%ebp)
	fxch	%st(1)
	cvtsi2ssl	%edx, %xmm0
	addss	%xmm1, %xmm2
	comiss	-48(%ebp), %xmm2
	subss	%xmm3, %xmm0
	movss	-92(%ebp), %xmm3
	mulss	%xmm6, %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm4, %xmm1
	subss	%xmm4, %xmm1
	movss	%xmm0, -160(%ebp)
	fmuls	-160(%ebp)
	mulss	%xmm5, %xmm1
	fsubrp	%st, %st(1)
	addss	%xmm3, %xmm1
	fstpl	__ZL4otex.lto_priv.0+8
	ja	L2006
	movaps	%xmm2, %xmm0
	xorl	%ebx, %ebx
	subss	%xmm4, %xmm0
	movl	%ebx, __ZL10pow2xsplit.lto_priv.0
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	mulss	%xmm5, %xmm0
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	addss	%xmm3, %xmm0
	movss	%xmm0, (%esp)
	movaps	%xmm4, %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	jmp	L1770
L2013:
	movss	-40(%ebp), %xmm2
	jmp	L1874
L2325:
	fxch	%st(1)
	andl	%edi, %edx
	movl	%esi, %ecx
	xorps	%xmm2, %xmm2
	movss	-68(%ebp), %xmm6
	movss	LC35, %xmm4
	movsbw	9(%ebx,%edx), %dx
	movaps	%xmm6, %xmm0
	addl	%eax, %edx
	movl	%edi, %eax
	addl	$1, %edi
	sall	%cl, %eax
	sall	%cl, %edi
	movw	%dx, _globalpicnum
	cvtsi2ssl	%eax, %xmm2
	subss	%xmm2, %xmm0
	mulss	-248(%ebp), %xmm0
	mulss	%xmm4, %xmm0
	movss	-40(%ebp), %xmm4
	addss	%xmm3, %xmm0
	movss	-96(%ebp), %xmm3
	movss	%xmm0, -184(%ebp)
	xorps	%xmm0, %xmm0
	fmuls	-184(%ebp)
	fxch	%st(1)
	cvtsi2ssl	%edi, %xmm0
	movss	%xmm1, -184(%ebp)
	fmuls	-184(%ebp)
	fsubrp	%st, %st(1)
	subss	%xmm6, %xmm0
	movaps	%xmm4, %xmm6
	mulss	-176(%ebp), %xmm0
	subss	%xmm4, %xmm6
	fstpl	__ZL4otex.lto_priv.0+8
	mulss	%xmm5, %xmm6
	addss	%xmm1, %xmm0
	comiss	-48(%ebp), %xmm0
	addss	%xmm3, %xmm6
	ja	L2013
	movaps	%xmm0, %xmm1
	xorl	%eax, %eax
	movaps	%xmm4, %xmm2
	subss	%xmm4, %xmm1
	movl	%eax, __ZL10pow2xsplit.lto_priv.0
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	mulss	%xmm5, %xmm1
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	movss	%xmm6, (%esp)
	addss	%xmm3, %xmm1
	call	__ZL15polymost_domostffffffff.lto_priv.0
	jmp	L1859
L2006:
	movss	-40(%ebp), %xmm3
	jmp	L1785
L2326:
	fxch	%st(1)
	sall	%cl, %edx
	xorps	%xmm2, %xmm2
	movss	-68(%ebp), %xmm3
	leal	1(%ebx), %eax
	movss	LC35, %xmm4
	cvtsi2ssl	%edx, %xmm2
	sall	%cl, %eax
	movaps	%xmm3, %xmm0
	subss	%xmm2, %xmm0
	mulss	-244(%ebp), %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm4, %xmm0
	subss	%xmm3, %xmm2
	movss	-40(%ebp), %xmm3
	movss	-92(%ebp), %xmm4
	mulss	-160(%ebp), %xmm2
	addss	%xmm6, %xmm0
	addss	%xmm1, %xmm2
	comiss	-48(%ebp), %xmm2
	movss	%xmm0, -176(%ebp)
	fmuls	-176(%ebp)
	fxch	%st(1)
	movss	%xmm1, -176(%ebp)
	movaps	%xmm3, %xmm1
	fmuls	-176(%ebp)
	subss	%xmm3, %xmm1
	mulss	%xmm5, %xmm1
	fsubrp	%st, %st(1)
	fstpl	__ZL4otex.lto_priv.0+8
	addss	%xmm4, %xmm1
	ja	L2006
	movaps	%xmm2, %xmm0
	xorl	%esi, %esi
	subss	%xmm3, %xmm0
	movl	%esi, __ZL10pow2xsplit.lto_priv.0
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 4(%esp)
	mulss	%xmm5, %xmm0
	movss	%xmm7, 16(%esp)
	movss	%xmm7, 8(%esp)
	addss	%xmm4, %xmm0
	movss	%xmm0, (%esp)
	movaps	%xmm3, %xmm0
	call	__ZL15polymost_domostffffffff.lto_priv.0
	jmp	L1770
	.cfi_endproc
LFE83:
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
.lcomm __ZL16drawpolyVertsCnt,4,4
	.globl	_glad_glFenceSync
	.align 4
_glad_glFenceSync:
	.space 4
.lcomm __ZZL25polymost_waitForSubBufferjE14loggedLongWait,1,1
	.globl	_glad_glClientWaitSync
	.align 4
_glad_glClientWaitSync:
	.space 4
.lcomm __ZZL19polymost_setPalswapjE16lastPalswapIndex,4,4
.lcomm __ZZL17polymost_setShadeiE13lastNumShades,4,4
.lcomm __ZZL17polymost_setShadeiE9lastShade,4,4
.lcomm __ZZ36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_E8lastsize,4,4
	.globl	_hicprecaching
	.section .rdata,"dr"
	.align 4
_hicprecaching:
	.space 4
.lcomm __ZZ36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_E6lastfn,4,4
.lcomm __ZZ36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_E7lastpic,4,4
.lcomm __ZZ13gloadtile_artiiiiiP8pthtyp_tiE21fullbrightloadingpass,4,4
	.set	LC0,LC22
	.align 16
LC1:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
LC3:
	.long	1008981770
	.align 8
LC4:
	.long	0
	.long	1072693248
	.align 4
LC7:
	.long	1040187392
	.align 4
LC12:
	.long	1132396544
	.align 4
LC13:
	.long	1015021568
	.align 4
LC17:
	.long	1199570944
	.align 4
LC18:
	.long	1258291200
	.align 4
LC20:
	.long	964689920
	.align 4
LC21:
	.long	2147483647
	.align 16
LC22:
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.align 16
LC23:
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.align 16
LC24:
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.align 16
LC25:
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.align 4
LC29:
	.long	931135488
	.align 4
LC30:
	.long	869711765
	.align 4
LC31:
	.long	1602224128
	.align 8
LC32:
	.long	-1717986918
	.long	1011456409
	.align 4
LC33:
	.long	998244352
	.align 4
LC34:
	.long	1132462080
	.align 4
LC35:
	.long	973078528
	.align 4
LC36:
	.long	1061158912
	.align 4
LC37:
	.long	1067450368
	.align 4
LC40:
	.long	998277249
	.align 4
LC41:
	.long	1056964608
	.align 4
LC42:
	.long	981467136
	.align 4
LC44:
	.long	1017370378
	.align 4
LC46:
	.long	813694976
	.align 4
LC47:
	.long	897581056
	.align 4
LC48:
	.long	-1107296256
	.align 4
LC49:
	.long	889192448
	.align 4
LC50:
	.long	1031798784
	.align 4
LC51:
	.long	-1115684864
	.align 4
LC52:
	.long	880803840
	.align 4
LC53:
	.long	-1216348160
	.align 4
LC54:
	.long	1166016512
	.align 4
LC55:
	.long	-1082130432
	.align 4
LC56:
	.long	1157627904
	.align 4
LC57:
	.long	1092616192
	.align 4
LC58:
	.long	-1006632960
	.align 4
LC59:
	.long	1140850688
	.align 4
LC61:
	.long	1036831949
	.align 4
LC63:
	.long	802602901
	.align 4
LC64:
	.long	729808896
	.align 4
LC65:
	.long	914358272
	.align 4
LC66:
	.long	-973078528
	.align 4
LC67:
	.long	805306368
	.align 4
LC68:
	.long	1107296256
	.align 4
LC69:
	.long	989855744
	.align 4
LC70:
	.long	1090519040
	.align 4
LC71:
	.long	-1266679808
	.align 4
LC72:
	.long	-1233125376
	.def	___udivdi3;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__Z19buildgl_bindTexturejj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	_texcache_calcid.isra.0;	.scl	2;	.type	32;	.endef
	.def	_texcache_enabled;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL15fixtransparencyP7coltype4vec2IiES2_i.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z13uploadtexturei4vec2IiEiP7coltypeS0_i;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_texcache_readtexheader.part.0;	.scl	2;	.type	32;	.endef
	.def	_texcache_loadtile;	.scl	2;	.type	32;	.endef
	.def	_hictinting_applypixcolor;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_texcache_writetex_fromdriver;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_kpzbufload;	.scl	2;	.type	32;	.endef
	.def	__ZL26gloadtile_mdloadskin_checkPciP4vec2IiES2_Pi.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_kprender;	.scl	2;	.type	32;	.endef
	.def	_kopen4load.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z20kfilelength_internaliPKhPiS1_.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_kclose;	.scl	2;	.type	32;	.endef
	.def	_enet_gettime.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_paletteGetClosestColorWithBlacklist;	.scl	2;	.type	32;	.endef
	.def	__Z25buildgl_bindSamplerObjectii;	.scl	2;	.type	32;	.endef
	.def	_videoSetGameMode;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru24current_verbosity_cutoffEv;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0;	.scl	2;	.type	32;	.endef
	.def	__sm_allocator_destroy.part.0.lto_priv.1;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	__Z26buildgl_outputDebugMessagehPKcz.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_texcache_fetch;	.scl	2;	.type	32;	.endef
	.def	__Z22polymost_npotEmulationcff;	.scl	2;	.type	32;	.endef
	.def	_floorf;	.scl	2;	.type	32;	.endef
	.def	__ZL23polymost_polyeditorfuncPK4vec2IfEi.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_tileLoad;	.scl	2;	.type	32;	.endef
	.def	__Z20buildgl_setAlphaFuncjf.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_handle_blend;	.scl	2;	.type	32;	.endef
	.def	_hicfindsubst;	.scl	2;	.type	32;	.endef
	.def	__Z25polymost_useDetailMappingc;	.scl	2;	.type	32;	.endef
	.def	__Z17polymost_setClampc;	.scl	2;	.type	32;	.endef
	.def	__Z21polymost_printtext256iissPKcc;	.scl	2;	.type	32;	.endef
	.def	__ZL16polymost_bindPthPK8pthtyp_t.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_inthash_find;	.scl	2;	.type	32;	.endef
	.def	_inthash_add;	.scl	2;	.type	32;	.endef
	.def	__Z23polymost_useGlowMappingc;	.scl	2;	.type	32;	.endef
	.def	_calc_and_apply_fog;	.scl	2;	.type	32;	.endef
	.def	_getflorzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	_getceilzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	_lrintf;	.scl	2;	.type	32;	.endef
	.def	__Z22polymost_setVisibilityf;	.scl	2;	.type	32;	.endef
	.def	_yax_vnextsec;	.scl	2;	.type	32;	.endef
	.def	_polymost_scansector.part.0;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.1;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_animateoffs;	.scl	2;	.type	32;	.endef
	.def	_calc_and_apply_fog_factor.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.7;	.scl	2;	.type	32;	.endef
	.def	_hicfindskybox.constprop.0;	.scl	2;	.type	32;	.endef
