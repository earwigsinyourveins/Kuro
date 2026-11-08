	.file	"<artificial>"
	.text
	.p2align 4
	.globl	__Z20PachinkoLightOperates
	.def	__Z20PachinkoLightOperates;	.scl	2;	.type	32;	.endef
__Z20PachinkoLightOperates:
LFB0:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %ecx
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	_sprite, %ebx
	movl	_User(,%ecx,4), %edx
	movzwl	216(%edx), %eax
	subl	$6, %eax
	movw	%ax, 216(%edx)
	testw	%ax, %ax
	jle	L13
	movl	(%esp), %ebx
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L13:
	.cfi_restore_state
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	imull	$44, %ecx, %esi
	movl	$-1171354717, %eax
	leal	16(%esi), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-2, 16(%ebx,%esi)
	movl	_User(,%ecx,4), %eax
	testl	%eax, %eax
	je	L11
	movl	$0, 76(%eax)
	movl	$_s_PachinkoLightStand, 24(%eax)
	movl	$_s_PachinkoLightStand, 16(%eax)
	movswl	_s_PachinkoLightStand, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L11
	andl	$63, %eax
	movb	%al, 3(%edx)
	xorl	%eax, %eax
	movl	4(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L11:
	.cfi_restore_state
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	(%esp), %ebx
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.def	__ZL12MNU_DrawItemP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__ZL12MNU_DrawItemP9MENU_ITEM:
LFB2:
	.cfi_startproc
	subl	$64, %esp
	.cfi_def_cfa_offset 68
	movl	_currentmenu, %edx
	movl	%ebx, 48(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	12(%edx), %eax
	testl	%eax, %eax
	je	L15
	movswl	32(%edx), %edx
	imull	$56, %edx, %edx
	addl	%edx, %eax
	movl	52(%eax), %edx
	testl	%edx, %edx
	je	L15
	cmpl	$__ZL29MNU_JoystickButtonPostProcessP9MENU_ITEM.lto_priv.0, %edx
	jne	L16
	movl	%eax, __ZL20joystick_button_item.lto_priv.0
L15:
	cmpw	$0, 36(%ebx)
	jne	L44
L14:
	movl	48(%esp), %ebx
	addl	$64, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L44:
	.cfi_restore_state
	movswl	_tilesiz+11480, %eax
	movl	%esi, 52(%esp)
	movl	$2870, %ecx
	movl	%edi, 56(%esp)
	movl	%ebp, 60(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	28(%ebx), %edi
	movl	32(%ebx), %esi
	testw	%ax, %ax
	jne	L18
	movswl	_tilesiz+11400, %eax
	cmpw	$1, %ax
	sbbl	%ecx, %ecx
	andl	$20, %ecx
	addw	$2850, %cx
L18:
	movl	20(%ebx), %ebp
	testl	%ebp, %ebp
	je	L19
	movl	$32768, %edx
/APP
 # 4368 "source/sw/src/menus.cpp" 1
	imull %edx; shrdl $17, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	2(%eax), %edx
	movl	$32768, 36(%esp)
	movl	%edi, %eax
	subl	%edx, %eax
	leal	4(%esi), %edx
	movl	%eax, %ebp
L20:
	movl	_xdim, %esi
	movl	_ydim, %eax
	subl	$1, %esi
	js	L21
	subl	$1, %eax
	js	L21
	movl	%eax, 32(%esp)
	movswl	%cx, %ecx
	movl	%ebp, %eax
	sall	$16, %edx
	movl	%esi, 28(%esp)
	sall	$16, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$10, 16(%esp)
	movl	$0, 12(%esp)
	movsbl	38(%ebx), %edi
	movl	%ecx, 4(%esp)
	movl	36(%esp), %ecx
	movl	%edi, 8(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L21:
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	call	__Z15SetRedrawScreenP12PLAYERstruct
	movl	20(%ebx), %edx
	testl	%edx, %edx
	je	L45
L43:
	movl	52(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	56(%esp), %edi
	.cfi_restore 7
	movl	60(%esp), %ebp
	.cfi_restore 5
	movl	48(%esp), %ebx
	addl	$64, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L45:
	.cfi_restore_state
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	andl	$12, %edx
	cmpl	$4, %edx
	je	L46
	cmpl	$3, %eax
	jne	L43
	movswl	36(%ebx), %edx
	cmpl	$30719, %edx
	ja	L43
	movl	_xdim, %edi
	movl	_ydim, %ecx
	subl	$1, %edi
	js	L43
	subl	$1, %ecx
	js	L43
	movl	32(%ebx), %esi
	movswl	_tilesiz+11264, %eax
	addl	28(%ebx), %eax
	movl	%edi, 28(%esp)
	movl	%ecx, 32(%esp)
	sall	$16, %esi
	addl	$4, %eax
	movl	$0, 24(%esp)
	sall	$16, %eax
	movl	$0, 20(%esp)
	movl	$10, 16(%esp)
	movl	$0, 12(%esp)
	movsbl	38(%ebx), %ecx
	movl	%edx, 4(%esp)
	movl	%esi, %edx
	movl	%ecx, 8(%esp)
	movl	$65536, %ecx
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
	movl	52(%esp), %esi
	.cfi_restore 6
	movl	56(%esp), %edi
	.cfi_restore 7
	movl	60(%esp), %ebp
	.cfi_restore 5
	jmp	L14
	.p2align 4,,10
	.p2align 3
L16:
	movl	%eax, (%esp)
	call	*%edx
	jmp	L15
	.p2align 4,,10
	.p2align 3
L46:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	_ydim, %edi
	movl	28(%ebx), %ecx
	movl	_xdim, %edx
	movl	%edi, 40(%esp)
	leal	-1(%edi), %ebp
	movl	32(%ebx), %edi
	movl	%ecx, 36(%esp)
	leal	-1(%edx), %esi
	movswl	36(%ebx), %ecx
	sall	$16, %edi
	movl	%edi, 44(%esp)
	cmpl	$3, %eax
	je	L23
	imull	$1103515245, _wrandomseed, %eax
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	cmpl	$30719, %ecx
	ja	L43
	testl	%esi, %esi
	js	L43
	testl	%ebp, %ebp
	js	L43
	movl	36(%esp), %ebx
	shrl	$16, %eax
	movl	$32766, %edx
	movl	%ebp, 32(%esp)
	andl	$32767, %eax
	movl	%esi, 28(%esp)
	sall	$16, %ebx
	cmpl	%edx, %eax
	movl	%ecx, 4(%esp)
	movl	$65536, %ecx
	cmova	%edx, %eax
	movl	$-939421517, %edx
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	sall	$13, %eax
	movl	$10, 16(%esp)
	mull	%edx
	movl	$2, 12(%esp)
	movl	$0, (%esp)
	shrl	$22, %edx
	leal	-30(%edx), %eax
	movl	%edi, %edx
	movsbl	%al, %eax
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	call	_rotatesprite_.part.0.constprop.0
	movl	52(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	56(%esp), %edi
	.cfi_restore 7
	movl	60(%esp), %ebp
	.cfi_restore 5
	jmp	L14
	.p2align 4,,10
	.p2align 3
L19:
	.cfi_restore_state
	movl	%eax, %edx
	movl	$57344, 36(%esp)
	shrw	$15, %dx
	addl	%eax, %edx
	movl	%edi, %eax
	sarw	%dx
	subl	$3, %edx
	movswl	%dx, %edx
	subl	%edx, %eax
	leal	8(%esi), %edx
	movl	%eax, %ebp
	jmp	L20
	.p2align 4,,10
	.p2align 3
L23:
	cmpl	$30719, %ecx
	ja	L43
	testl	%edx, %edx
	jle	L43
	movl	40(%esp), %eax
	testl	%eax, %eax
	jle	L43
	movl	%ebp, 32(%esp)
	movl	36(%esp), %edi
	movl	%esi, 28(%esp)
	movswl	_tilesiz+11264, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	leal	4(%edi,%eax), %eax
	movl	$10, 16(%esp)
	sall	$16, %eax
	movl	$2, 12(%esp)
	movsbl	38(%ebx), %edx
	movl	%ecx, 4(%esp)
	movl	$65536, %ecx
	movl	%edx, 8(%esp)
	movl	44(%esp), %edx
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
	movl	52(%esp), %esi
	.cfi_restore 6
	movl	56(%esp), %edi
	.cfi_restore 7
	movl	60(%esp), %ebp
	.cfi_restore 5
	jmp	L14
	.cfi_endproc
LFE2:
	.section .rdata,"dr"
LC0:
	.ascii "analog_turning\0"
LC2:
	.ascii "L%02d: %s\0"
LC3:
	.ascii "%d\0"
LC4:
	.ascii "%d Minutes\12\0"
LC5:
	.ascii "%dx%d\0"
LC6:
	.ascii "%d bpp\0"
LC9:
	.ascii "%.2f\0"
LC12:
	.ascii "%.2f%%\0"
	.text
	.p2align 4
	.def	__Z12MNU_DoSlidersP9MENU_ITEMh;	.scl	3;	.type	32;	.endef
__Z12MNU_DoSlidersP9MENU_ITEMh:
LFB12:
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
	movl	%edx, %esi
	xorl	%edx, %edx
	pushl	%ebx
	.cfi_offset 3, -20
	movl	%ecx, %ebx
	andl	$-8, %esp
	subl	$332, %esp
	leal	76(%esp), %ecx
L48:
	movl	$0, (%ecx,%edx)
	movl	$0, 4(%ecx,%edx)
	movl	$0, 8(%ecx,%edx)
	movl	$0, 12(%ecx,%edx)
	addl	$16, %edx
	cmpl	$256, %edx
	jb	L48
	movl	4(%esi), %edx
	andl	$8, %edx
	movl	%edx, 68(%esp)
	jne	L135
	xorl	%edx, %edx
	movw	%dx, 74(%esp)
L50:
	movl	8(%esi), %edx
	cmpl	$21, %edx
	ja	L47
	jmp	*L53(,%edx,4)
	.section .rdata,"dr"
	.align 4
L53:
	.long	L47
	.long	L71
	.long	L70
	.long	L69
	.long	L68
	.long	L67
	.long	L66
	.long	L65
	.long	L64
	.long	L63
	.long	L62
	.long	L61
	.long	L60
	.long	L59
	.long	L58
	.long	L57
	.long	L56
	.long	L56
	.long	L55
	.long	L54
	.long	L52
	.long	L52
	.text
L135:
	movl	$20, %eax
	movw	%ax, 74(%esp)
	xorl	%eax, %eax
	jmp	L50
	.p2align 4,,10
	.p2align 3
L52:
	movl	_slidersettings(,%edx,4), %edi
	movl	%edi, 64(%esp)
	addw	64(%esp), %ax
	movl	$33, %edi
	movw	%ax, 72(%esp)
	cmpl	$0, 68(%esp)
	jne	L72
	movl	%eax, %edi
	xorl	%eax, %eax
	testw	%di, %di
	cmovs	%eax, %edi
	movw	%di, 72(%esp)
	cmpw	$32, %di
	movl	$32, %edi
	cmovle	72(%esp), %di
	movw	%di, 72(%esp)
	movswl	%di, %eax
	cmpl	%eax, 64(%esp)
	je	L118
	movl	%eax, _slidersettings(,%edx,4)
	sall	$10, %eax
	movl	$32767, %edx
	movl	__ZL16JoystickAxisPage.lto_priv.0, %edi
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	cmpl	$20, 8(%esi)
	je	L186
	movl	%eax, _JoystickAnalogSaturate(,%edi,4)
	movl	_JoystickAnalogDead(,%edi,4), %edx
L120:
	sall	$5, %edi
	movw	%dx, __ZL7joyAxes.lto_priv.0+24(%edi)
	movw	%ax, __ZL7joyAxes.lto_priv.0+26(%edi)
	movl	8(%esi), %eax
	movl	_slidersettings(,%eax,4), %eax
L118:
	sall	$10, %eax
	xorps	%xmm0, %xmm0
	movl	%ecx, (%esp)
	cvtsi2ssl	%eax, %xmm0
	movl	$LC12, 4(%esp)
	divss	LC11, %xmm0
	movss	%xmm0, 68(%esp)
	flds	68(%esp)
	fstpl	8(%esp)
	call	_sprintf
	movzwl	32(%esi), %eax
	leal	76(%esp), %ecx
	leal	4(%eax), %edx
	movzwl	_tilesiz+11392, %eax
	addw	_tilesiz+11384, %ax
	movl	%eax, %edi
	movzwl	_tilesiz+11388, %eax
	movswl	%dx, %edx
	sall	$4, %eax
	addw	_tilesiz+11388, %ax
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	leal	150(%edi,%eax), %eax
	movl	$33, %edi
	cwtl
	call	__Z19MNU_DrawSmallStringssPKcss
	.p2align 4
	.p2align 3
L72:
	testb	%bl, %bl
	je	L47
	movl	84(%esi), %ebx
	movl	88(%esi), %esi
	movl	_ydim, %ecx
	movzbl	74(%esp), %eax
	movl	_xdim, %edx
	movl	%esi, 48(%esp)
	sall	$16, %esi
	movb	%al, 56(%esp)
	subl	$1, %ecx
	movl	%esi, 64(%esp)
	subl	$1, %edx
	js	L157
	testl	%ecx, %ecx
	js	L157
	movsbl	74(%esp), %esi
	movl	%ecx, 32(%esp)
	movl	%ebx, %eax
	movl	$65536, %ecx
	movl	%edx, 28(%esp)
	movl	64(%esp), %edx
	sall	$16, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$10, 16(%esp)
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$2846, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
	movswl	_tilesiz+11384, %eax
	movl	_xdim, %edx
	movl	_ydim, %ecx
	addl	%ebx, %eax
	movl	%eax, 52(%esp)
	testw	%di, %di
	jle	L124
	subl	$1, %ecx
	subl	$1, %edx
L123:
	movl	$16, %eax
	movw	%di, 44(%esp)
	movl	52(%esp), %esi
	cmpw	%ax, %di
	cmovle	%edi, %eax
	movw	%ax, 68(%esp)
	movsbl	56(%esp), %eax
	movl	%eax, 60(%esp)
	xorl	%eax, %eax
	movw	%ax, 74(%esp)
	.p2align 4
	.p2align 3
L126:
	movl	%edx, %edi
	movl	%ecx, %eax
	shrl	$31, %edi
	shrl	$31, %eax
	movl	%edi, %ebx
	orb	%bl, %al
	jne	L125
	movl	60(%esp), %ebx
	movl	%ecx, 32(%esp)
	movl	%esi, %eax
	movl	$65536, %ecx
	movl	%edx, 28(%esp)
	movl	64(%esp), %edx
	sall	$16, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$10, 16(%esp)
	movl	$0, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$2847, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
	movl	_ydim, %ecx
	movl	_xdim, %edx
	subl	$1, %ecx
	subl	$1, %edx
	movl	%edx, %edi
	movl	%ecx, %eax
	shrl	$31, %edi
	shrl	$31, %eax
	orl	%edi, %eax
L125:
	movswl	_tilesiz+11388, %edi
	addw	$1, 74(%esp)
	addl	%edi, %esi
	movzwl	68(%esp), %edi
	cmpw	%di, 74(%esp)
	jl	L126
	movzwl	44(%esp), %edi
	testb	%al, %al
	jne	L47
	movl	%edx, 28(%esp)
	movsbl	56(%esp), %edx
	movl	%esi, %eax
	movl	%ecx, 32(%esp)
	sall	$16, %eax
	movl	$65536, %ecx
	movl	%edx, 8(%esp)
	movl	64(%esp), %edx
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$10, 16(%esp)
	movl	$0, 12(%esp)
	movl	$2848, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
	movl	_ydim, %eax
	movswl	_tilesiz+11388, %edx
	leal	-1(%eax), %ebx
	movl	_xdim, %eax
	leal	-1(%eax), %ecx
	movl	%ebx, %eax
	movl	%ecx, %esi
	shrl	$31, %eax
	shrl	$31, %esi
	orl	%eax, %esi
	cmpw	$16, %di
	jle	L127
	movswl	_tilesiz+11396, %eax
	sall	$4, %edx
	subl	$1, %edi
	movswl	%di, %edi
	subl	%eax, %edx
	movswl	72(%esp), %eax
	imull	%edx, %eax
	cltd
	idivl	%edi
	addl	52(%esp), %eax
L128:
	movl	%esi, %edx
	testb	%dl, %dl
	jne	L47
	movl	%ecx, 28(%esp)
	movsbl	56(%esp), %ecx
	sall	$16, %eax
	movl	48(%esp), %edx
	movl	%ebx, 32(%esp)
	movl	%ecx, 8(%esp)
	movl	$65536, %ecx
	movl	$0, 24(%esp)
	addl	$2, %edx
	movl	$0, 20(%esp)
	sall	$16, %edx
	movl	$10, 16(%esp)
	movl	$0, 12(%esp)
	movl	$2849, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L47:
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
L56:
	.cfi_restore_state
	movl	_slidersettings(,%edx,4), %edi
	movl	%edi, 64(%esp)
	addw	64(%esp), %ax
	movl	$17, %edi
	movw	%ax, 72(%esp)
	cmpl	$0, 68(%esp)
	jne	L72
	movl	%eax, %edi
	xorl	%eax, %eax
	testw	%di, %di
	cmovs	%eax, %edi
	movw	%di, 72(%esp)
	cmpw	$16, %di
	movl	$16, %edi
	cmovle	72(%esp), %di
	movw	%di, 72(%esp)
	movswl	%di, %eax
	cmpl	%eax, 64(%esp)
	je	L104
	movl	%eax, _slidersettings(,%edx,4)
	sall	$13, %eax
	movl	%eax, %edi
	movl	8(%esi), %eax
	movl	%edi, _MouseAnalogScale-64(,%eax,4)
	movl	8(%esi), %edx
	leal	-16(%edx), %eax
	cmpl	$1, %eax
	ja	L187
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edi, %xmm0
	mulss	LC7, %xmm0
	movss	%xmm0, _CONTROL_MouseAxesSensitivity(,%eax,4)
	movl	8(%esi), %eax
	movl	_slidersettings(,%eax,4), %eax
L104:
	sall	$13, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	divss	LC8, %xmm0
	movss	%xmm0, 68(%esp)
	flds	68(%esp)
	fstpl	8(%esp)
L185:
	movl	%ecx, (%esp)
	movl	$LC9, 4(%esp)
	call	_sprintf
	movzwl	32(%esi), %eax
	leal	76(%esp), %ecx
	leal	4(%eax), %edx
	movzwl	_tilesiz+11392, %eax
	addw	_tilesiz+11384, %ax
	movl	%eax, %edi
	movzwl	_tilesiz+11388, %eax
	movswl	%dx, %edx
	sall	$4, %eax
	addw	_tilesiz+11388, %ax
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	leal	150(%edi,%eax), %eax
	movl	$17, %edi
	cwtl
	call	__Z19MNU_DrawSmallStringssPKcss
	jmp	L72
	.p2align 4,,10
	.p2align 3
L54:
	movl	_slidersettings+76, %edx
	movl	$4, %edi
	leal	(%eax,%edx), %ecx
	movl	68(%esp), %eax
	movw	%cx, 72(%esp)
	testl	%eax, %eax
	jne	L72
	xorl	%eax, %eax
	testw	%cx, %cx
	cmovs	%eax, %ecx
	movl	$3, %eax
	cmpw	%ax, %cx
	cmovle	%ecx, %eax
	movw	%ax, 72(%esp)
	cwtl
	leal	-1(%eax), %ecx
	cmpl	%eax, %edx
	je	L108
	movl	%eax, _slidersettings+76
	movl	__ZL16JoystickAxisPage.lto_priv.0, %eax
	cmpl	$2, %ecx
	jbe	L109
	movl	$0, _JoystickAnalogAxes(,%eax,4)
	sall	$5, %eax
	movb	$0, __ZL7joyAxes.lto_priv.0(%eax)
L110:
	movl	$97, %eax
	movl	$LC0, %ecx
	jmp	L115
	.p2align 4
	.p2align 4,,10
	.p2align 3
L116:
	movzbl	1(%ecx), %eax
	addl	$1, %ecx
	testb	%al, %al
	je	L114
L115:
	cmpb	$95, %al
	jne	L116
	addl	$1, %ecx
L114:
	movzwl	32(%esi), %eax
	movzwl	_tilesiz+11388, %edi
	leal	4(%eax), %edx
	leal	(%edi,%edi,4), %edi
	movzwl	_tilesiz+11392, %eax
	addw	_tilesiz+11384, %ax
	movl	$16, 4(%esp)
	leal	150(%eax,%edi), %eax
	movswl	%dx, %edx
	movl	$4, %edi
	movl	$1, (%esp)
	cwtl
	call	__Z19MNU_DrawSmallStringssPKcss
	jmp	L72
	.p2align 4,,10
	.p2align 3
L55:
	movl	_slidersettings+72, %edi
	movl	%edi, 64(%esp)
	addw	64(%esp), %ax
	movl	$17, %edi
	movw	%ax, 72(%esp)
	cmpl	$0, 68(%esp)
	jne	L72
	movl	%eax, %edi
	xorl	%eax, %eax
	testw	%di, %di
	cmovs	%eax, %edi
	movw	%di, 72(%esp)
	cmpw	$16, %di
	movl	$16, %edi
	cmovle	72(%esp), %di
	movw	%di, 72(%esp)
	movswl	%di, %eax
	cmpl	%eax, 64(%esp)
	je	L106
	movl	__ZL16JoystickAxisPage.lto_priv.0, %edx
	movl	%eax, _slidersettings+72
	sall	$13, %eax
	movl	%eax, _JoystickAnalogScale(,%edx,4)
	cmpl	$8, %edx
	ja	L184
	sall	$5, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	divss	LC10, %xmm0
	movss	%xmm0, __ZL7joyAxes.lto_priv.0+20(%edx)
L184:
	movl	8(%esi), %edx
L106:
	movl	_slidersettings(,%edx,4), %eax
	xorps	%xmm0, %xmm0
	sall	$13, %eax
	cvtsi2ssl	%eax, %xmm0
	divss	LC8, %xmm0
	movss	%xmm0, 68(%esp)
	flds	68(%esp)
	fstpl	8(%esp)
	jmp	L185
	.p2align 4,,10
	.p2align 3
L64:
	cwtl
	addl	_slidersettings+32, %eax
	movw	%ax, 72(%esp)
	testb	$1, _SW_GameFlags
	je	L188
	movl	%eax, _slidersettings+32
	movl	$4, %edi
	testb	$8, 4(%esi)
	jne	L72
	xorl	%edx, %edx
	testw	%ax, %ax
	cmovs	%edx, %eax
	movl	$3, %edx
L132:
	cmpw	%ax, %dx
	cmovle	%edx, %eax
	movw	%ax, 72(%esp)
	cwtl
	movl	%eax, _slidersettings+32
	addl	$1, %eax
	leal	(%eax,%eax,4), %edx
	movl	_LevelInfo+8(,%edx,4), %edx
	movl	%ecx, (%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$LC2, 4(%esp)
	call	_sprintf
	movzwl	32(%esi), %ecx
	movl	$1, (%esp)
	movl	$30, %eax
	movl	$16, 4(%esp)
	leal	10(%ecx), %edx
	leal	76(%esp), %ecx
	movswl	%dx, %edx
	call	__Z14MNU_DrawStringssPKcss
	movzbl	72(%esp), %eax
	movb	%al, _gs+32
	jmp	L72
	.p2align 4,,10
	.p2align 3
L65:
	cwtl
	addl	_slidersettings+28, %eax
	movl	$3, %edi
	movl	%eax, _slidersettings+28
	movw	%ax, 72(%esp)
	testb	$8, 4(%esi)
	jne	L72
	xorl	%edx, %edx
	testw	%ax, %ax
	cmovns	%eax, %edx
	movl	$2, %eax
	cmpw	%ax, %dx
	cmovle	%edx, %eax
	movswl	32(%esi), %edx
	movw	%ax, 72(%esp)
	cwtl
	movl	%eax, _slidersettings+28
	movl	_gametype(,%eax,4), %ecx
	movl	$150, %eax
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	call	__Z14MNU_DrawStringssPKcss
	movzbl	72(%esp), %eax
	movb	%al, _gs+31
	movl	_currentmenu, %eax
	movl	12(%eax), %edx
	testl	%edx, %edx
	je	L85
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L72
	movl	%edx, %edi
	.p2align 4
	.p2align 3
L84:
	movl	48(%edi), %eax
	testl	%eax, %eax
	je	L83
	movl	%edi, (%esp)
	call	*%eax
L83:
	movl	56(%edi), %eax
	addl	$56, %edi
	testl	%eax, %eax
	jne	L84
L85:
	movl	$3, %edi
	jmp	L72
	.p2align 4,,10
	.p2align 3
L66:
	cwtl
	addl	_slidersettings+24, %eax
	movw	%ax, 72(%esp)
	testb	$1, _SW_GameFlags
	je	L189
	movl	%eax, _slidersettings+24
	movl	$21, %edi
	testb	$8, 4(%esi)
	jne	L72
	xorl	%edx, %edx
	testw	%ax, %ax
	cmovs	%edx, %eax
	movl	$20, %edx
L129:
	cmpw	%ax, %dx
	cmovle	%edx, %eax
	movsbl	_gs+14, %edx
	movw	%ax, 72(%esp)
	movl	%eax, %ecx
	cwtl
	movl	%eax, _slidersettings+24
	cmpl	%edx, %eax
	je	L72
	movb	%cl, _gs+14
	movl	_myconnectindex, %eax
	cmpb	$0, _DemoPlaying
	je	L80
	movswl	_screenpeek, %eax
L80:
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	call	__Z15SetRedrawScreenP12PLAYERstruct
	jmp	L72
	.p2align 4,,10
	.p2align 3
L67:
	cwtl
	addl	_slidersettings+20, %eax
	movl	$8, %edi
	movl	%eax, _slidersettings+20
	movw	%ax, 72(%esp)
	testb	$8, 4(%esi)
	jne	L72
	xorl	%edx, %edx
	testw	%ax, %ax
	cmovns	%eax, %edx
	movl	$7, %eax
	cmpw	%ax, %dx
	cmovle	%edx, %eax
	movsbl	_gs+13, %edx
	movw	%ax, 72(%esp)
	cwtl
	movl	%eax, _slidersettings+20
	cmpl	%edx, %eax
	je	L72
	movzbl	72(%esp), %eax
	movl	$_palette_data, %edx
	movb	%al, _gs+13
	xorl	%eax, %eax
	call	_paletteSetColorTable
	movzbl	72(%esp), %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	call	_videoSetPalette
	jmp	L72
	.p2align 4,,10
	.p2align 3
L68:
	movsbl	_gs+12, %edx
	cwtl
	movl	$14, %edi
	subl	%eax, %edx
	movl	%edx, _slidersettings+16
	movw	%dx, 72(%esp)
	testb	$8, 4(%esi)
	jne	L72
	xorl	%eax, %eax
	testw	%dx, %dx
	cmovs	%eax, %edx
	movl	$13, %eax
	cmpw	%ax, %dx
	cmovg	%eax, %edx
	subl	%edx, %eax
	movw	%ax, 72(%esp)
	movzwl	%ax, %eax
	movl	%eax, _slidersettings+16
	cmpb	$0, _BorderAdjust
	jne	L73
	movb	%dl, _gs+12
L73:
	movl	_myconnectindex, %eax
	movswl	%dx, %edx
	cmpb	$0, _DemoPlaying
	je	L75
	movswl	_screenpeek, %eax
L75:
	imull	$24124, %eax, %eax
	movl	$14, %edi
	addl	$_Player, %eax
	call	__Z9SetBorderP12PLAYERstructi
	jmp	L72
	.p2align 4,,10
	.p2align 3
L69:
	cwtl
	addl	_slidersettings+12, %eax
	movl	$16, %edi
	movl	%eax, _slidersettings+12
	movw	%ax, 72(%esp)
	testb	$8, 4(%esi)
	jne	L72
	xorl	%edx, %edx
	testw	%ax, %ax
	cmovns	%eax, %edx
	movl	$15, %eax
	cmpw	%ax, %dx
	cmovle	%edx, %eax
	movw	%ax, 72(%esp)
	cwtl
	movl	%eax, _slidersettings+12
	sall	$4, %eax
	movl	%eax, _gs+4
	call	__Z13SetSongVolumei
	jmp	L72
	.p2align 4,,10
	.p2align 3
L70:
	cwtl
	addl	_slidersettings+8, %eax
	movl	$16, %edi
	movl	%eax, _slidersettings+8
	movw	%ax, 72(%esp)
	testb	$8, 4(%esi)
	jne	L72
	xorl	%edx, %edx
	testw	%ax, %ax
	cmovns	%eax, %edx
	movl	$15, %eax
	cmpw	%ax, %dx
	cmovle	%edx, %eax
	movw	%ax, 72(%esp)
	cwtl
	movl	%eax, _slidersettings+8
	sall	$4, %eax
	movl	%eax, _gs+8
	call	_MV_SetVolume
	jmp	L72
	.p2align 4,,10
	.p2align 3
L71:
	cwtl
	addl	_slidersettings+4, %eax
	movl	$20, %edi
	movl	%eax, _slidersettings+4
	movw	%ax, 72(%esp)
	testb	$8, 4(%esi)
	jne	L72
	xorl	%edx, %edx
	testw	%ax, %ax
	xorps	%xmm0, %xmm0
	cmovns	%eax, %edx
	movl	$19, %eax
	cmpw	%ax, %dx
	cmovle	%edx, %eax
	movw	%ax, 72(%esp)
	cwtl
	movl	%eax, _slidersettings+4
	imull	$3276, %eax, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	%eax, _gs
	mulss	LC1, %xmm0
	movss	%xmm0, _CONTROL_MouseSensitivity
	jmp	L72
	.p2align 4,,10
	.p2align 3
L60:
	cwtl
	addl	_slidersettings+48, %eax
	movl	$8, %edi
	movl	%eax, _slidersettings+48
	movw	%ax, 72(%esp)
	testb	$8, 4(%esi)
	jne	L72
	xorl	%edx, %edx
	testw	%ax, %ax
	cmovns	%eax, %edx
	movl	$7, %eax
	cmpw	%ax, %dx
	cmovle	%edx, %eax
	movw	%ax, 72(%esp)
	cwtl
	movl	%eax, _slidersettings+48
	movl	_playercolors(,%eax,4), %ecx
	movzwl	72(%esp), %eax
	movswl	32(%esi), %edx
	movl	$1, (%esp)
	addl	$16, %eax
	cwtl
	movl	%eax, 4(%esp)
	movl	$228, %eax
	call	__Z14MNU_DrawStringssPKcss
	movzbl	72(%esp), %eax
	movb	%al, _gs+39
	jmp	L72
	.p2align 4,,10
	.p2align 3
L61:
	cwtl
	addl	_slidersettings+44, %eax
	movl	$9, %edi
	movl	%eax, _slidersettings+44
	movw	%ax, 72(%esp)
	testb	$8, 4(%esi)
	jne	L72
	xorl	%edi, %edi
	testw	%ax, %ax
	movl	$8, %edx
	cmovns	%eax, %edi
	cmpw	%dx, %di
	cmovg	%edx, %edi
	movswl	%di, %edx
	movl	%edx, _slidersettings+44
	testw	%ax, %ax
	jg	L90
	movl	$10, %eax
	movl	$1768320585, 76(%esp)
	movl	$1702127982, 80(%esp)
	movw	%ax, 84(%esp)
L91:
	movswl	32(%esi), %edx
	movl	$1, (%esp)
	movl	$236, %eax
	movl	$16, 4(%esp)
	call	__Z14MNU_DrawStringssPKcss
	movl	%edi, %eax
	movw	%di, 72(%esp)
	movl	$9, %edi
	movb	%al, _gs+38
	jmp	L72
	.p2align 4,,10
	.p2align 3
L62:
	cwtl
	addl	_slidersettings+40, %eax
	movl	$11, %edi
	movl	%eax, _slidersettings+40
	movw	%ax, 72(%esp)
	testb	$8, 4(%esi)
	jne	L72
	xorl	%edi, %edi
	testw	%ax, %ax
	movl	$10, %edx
	cmovns	%eax, %edi
	cmpw	%dx, %di
	cmovg	%edx, %edi
	movswl	%di, %edx
	movl	%edx, _slidersettings+40
	testw	%ax, %ax
	jg	L88
	movl	$10, %eax
	movl	$1768320585, 76(%esp)
	movl	$1702127982, 80(%esp)
	movw	%ax, 84(%esp)
L89:
	movswl	32(%esi), %edx
	movl	$1, (%esp)
	movl	$251, %eax
	movl	$16, 4(%esp)
	call	__Z14MNU_DrawStringssPKcss
	movl	%edi, %eax
	movw	%di, 72(%esp)
	movl	$11, %edi
	movb	%al, _gs+37
	jmp	L72
	.p2align 4,,10
	.p2align 3
L58:
	movl	__ZL12numvalidbpps.lto_priv.0, %edi
	movl	_slidersettings+56, %edx
	cwtl
	addl	%edx, %eax
	movl	%edx, 60(%esp)
	leal	-1(%edi), %edx
	cmpl	%eax, %edx
	movl	%edi, 56(%esp)
	cmovle	%edx, %eax
	xorl	%edx, %edx
	movl	%edi, 64(%esp)
	movzwl	64(%esp), %edi
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	68(%esp), %edx
	movw	%ax, 72(%esp)
	testl	%edx, %edx
	jne	L72
	movswl	%ax, %edx
	movl	%edx, 52(%esp)
	cmpl	%edx, 60(%esp)
	je	L95
	movl	__ZL9validbpps.lto_priv.0(,%edx,4), %eax
	movl	%edx, _slidersettings+56
	movswl	_buttonsettings+60, %edx
	movl	%eax, 60(%esp)
	movl	_slidersettings+52, %eax
	movl	__ZL16validresolutions.lto_priv.0(,%eax,8), %ecx
	movl	%ecx, 64(%esp)
	movl	__ZL16validresolutions.lto_priv.0+4(,%eax,8), %ecx
	movl	60(%esp), %eax
	movl	%ecx, 48(%esp)
	call	__ZL16UpdateValidModesii.lto_priv.0
	movl	__ZL19numvalidresolutions.lto_priv.0, %eax
	leal	76(%esp), %ecx
	testl	%eax, %eax
	movl	%eax, 60(%esp)
	jle	L96
	movl	64(%esp), %eax
	imull	48(%esp), %eax
	movl	%esi, 44(%esp)
	movw	%di, 48(%esp)
	movl	68(%esp), %edx
	movb	%bl, 43(%esp)
	movl	%eax, 64(%esp)
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L98:
	movl	__ZL16validresolutions.lto_priv.0+4(,%eax,8), %esi
	movl	64(%esp), %edi
	imull	__ZL16validresolutions.lto_priv.0(,%eax,8), %esi
	movl	%edi, %ebx
	subl	%esi, %ebx
	movl	%ebx, %esi
	negl	%esi
	cmovs	%ebx, %esi
	movl	__ZL16validresolutions.lto_priv.0+4(,%edx,8), %ebx
	imull	__ZL16validresolutions.lto_priv.0(,%edx,8), %ebx
	subl	%ebx, %edi
	movl	%edi, %ebx
	negl	%ebx
	cmovs	%edi, %ebx
	cmpl	%ebx, %esi
	cmovl	%eax, %edx
	addl	$1, %eax
	cmpl	%eax, 60(%esp)
	jne	L98
	movzwl	48(%esp), %edi
	movl	44(%esp), %esi
	movl	%edx, 68(%esp)
	movzbl	43(%esp), %ebx
L96:
	movl	68(%esp), %eax
	movl	%eax, _slidersettings+52
L95:
	movl	52(%esp), %eax
	movl	__ZL9validbpps.lto_priv.0(,%eax,4), %eax
	movl	%ecx, (%esp)
	movl	$LC6, 4(%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	movzwl	_tilesiz+11392, %eax
	movswl	32(%esi), %edx
	addw	_tilesiz+11384, %ax
	movl	%eax, %ecx
	movzwl	56(%esp), %eax
	addl	$1, %eax
	imulw	_tilesiz+11388, %ax
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	leal	150(%ecx,%eax), %eax
	leal	76(%esp), %ecx
	cwtl
	call	__Z14MNU_DrawStringssPKcss
	jmp	L72
	.p2align 4,,10
	.p2align 3
L63:
	cwtl
	addl	_slidersettings+36, %eax
	movl	$5, %edi
	movl	%eax, _slidersettings+36
	movw	%ax, 72(%esp)
	testb	$8, 4(%esi)
	jne	L72
	xorl	%edx, %edx
	testw	%ax, %ax
	cmovns	%eax, %edx
	movl	$4, %eax
	cmpw	%ax, %dx
	cmovle	%edx, %eax
	movw	%ax, 72(%esp)
	cwtl
	movl	%eax, _slidersettings+36
	movswl	32(%esi), %edx
	movl	$16, 4(%esp)
	movl	_monsterskills(,%eax,4), %ecx
	movl	$204, %eax
	movl	$1, (%esp)
	call	__Z14MNU_DrawStringssPKcss
	movzbl	72(%esp), %eax
	movb	%al, _gs+33
	jmp	L72
	.p2align 4,,10
	.p2align 3
L57:
	movl	$17, %edi
	movswl	%ax, %edx
	addl	_slidersettings+60, %edx
	cmpl	%edi, %edx
	cmovg	%edi, %edx
	xorl	%edi, %edi
	testl	%edx, %edx
	cmovs	%edi, %edx
	movl	68(%esp), %edi
	movw	%dx, 72(%esp)
	testl	%edi, %edi
	jne	L103
	testw	%ax, %ax
	jne	L101
	movl	_gs+324, %eax
L102:
	movl	%ecx, (%esp)
	movl	%eax, 8(%esp)
	movl	$LC3, 4(%esp)
	call	_sprintf
	movzwl	_tilesiz+11388, %edi
	movswl	32(%esi), %edx
	movzwl	_tilesiz+11392, %eax
	addw	_tilesiz+11384, %ax
	movl	$16, 4(%esp)
	movl	%eax, %ecx
	leal	(%edi,%edi,8), %eax
	movl	$1, (%esp)
	leal	(%edi,%eax,2), %eax
	leal	150(%ecx,%eax), %eax
	leal	76(%esp), %ecx
	cwtl
	call	__Z14MNU_DrawStringssPKcss
L103:
	movl	$18, %edi
	jmp	L72
	.p2align 4,,10
	.p2align 3
L59:
	movl	__ZL19numvalidresolutions.lto_priv.0, %edi
	cwtl
	addl	_slidersettings+52, %eax
	leal	-1(%edi), %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	68(%esp), %edx
	movw	%ax, 72(%esp)
	testl	%edx, %edx
	jne	L72
	cwtl
	movl	__ZL16validresolutions.lto_priv.0+4(,%eax,8), %edx
	movl	%eax, _slidersettings+52
	movl	%edx, 12(%esp)
	movl	__ZL16validresolutions.lto_priv.0(,%eax,8), %eax
	movl	%ecx, (%esp)
	movl	%eax, 8(%esp)
	movl	$LC5, 4(%esp)
	call	_sprintf
	movzwl	32(%esi), %eax
	movl	$1, (%esp)
	leal	76(%esp), %ecx
	movl	$16, 4(%esp)
	leal	10(%eax), %edx
	movl	$150, %eax
	movswl	%dx, %edx
	call	__Z14MNU_DrawStringssPKcss
	jmp	L72
	.p2align 4,,10
	.p2align 3
L157:
	testw	%di, %di
	jle	L47
	movswl	_tilesiz+11384, %eax
	addl	%ebx, %eax
	movl	%eax, 52(%esp)
	jmp	L123
L124:
	subl	$1, %ecx
	js	L47
	subl	$1, %edx
	js	L47
	movl	%ecx, 32(%esp)
	movl	52(%esp), %eax
	movl	$65536, %ecx
	movl	%edx, 28(%esp)
	movl	64(%esp), %edx
	movl	%esi, 8(%esp)
	sall	$16, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$10, 16(%esp)
	movl	$0, 12(%esp)
	movl	$2848, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
	movl	_ydim, %eax
	movswl	_tilesiz+11388, %edx
	leal	-1(%eax), %ebx
	movl	_xdim, %eax
	movl	%ebx, %esi
	leal	-1(%eax), %ecx
	shrl	$31, %esi
	movl	%ecx, %eax
	shrl	$31, %eax
	orl	%eax, %esi
L127:
	movswl	72(%esp), %eax
	imull	%edx, %eax
	addl	52(%esp), %eax
	jmp	L128
L189:
	movl	%eax, _slidersettings+24
	movl	$38, %edi
	testb	$8, 4(%esi)
	jne	L72
	xorl	%edx, %edx
	testw	%ax, %ax
	cmovs	%edx, %eax
	movl	$37, %edx
	jmp	L129
L188:
	movl	%eax, _slidersettings+32
	movl	$28, %edi
	testb	$8, 4(%esi)
	jne	L72
	xorl	%edx, %edx
	testw	%ax, %ax
	cmovs	%edx, %eax
	movl	$27, %edx
	jmp	L132
L90:
	movswl	_TimeLimitTable(%edx,%edx), %eax
	movl	%ecx, (%esp)
	movl	$LC4, 4(%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	leal	76(%esp), %ecx
	jmp	L91
L101:
	leal	60(%edx,%edx,4), %eax
	movl	%edx, _slidersettings+60
	movl	%eax, _gs+324
	jmp	L102
L88:
	leal	(%edx,%edx,4), %eax
	movl	%ecx, (%esp)
	addl	%eax, %eax
	movl	$LC3, 4(%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	leal	76(%esp), %ecx
	jmp	L89
L109:
	movl	_CSWTCH.799(,%ecx,4), %edx
	movl	%edx, _JoystickAnalogAxes(,%eax,4)
	sall	$5, %eax
	movb	%dl, __ZL7joyAxes.lto_priv.0(%eax)
L111:
	movl	_CSWTCH.196.lto_priv.0(,%edx,4), %ecx
	movzbl	(%ecx), %eax
	testb	%al, %al
	jne	L115
	jmp	L114
L108:
	cmpl	$2, %ecx
	ja	L110
	movl	_CSWTCH.799(,%ecx,4), %edx
	jmp	L111
L186:
	movl	%eax, _JoystickAnalogDead(,%edi,4)
	movl	%eax, %edx
	movl	_JoystickAnalogSaturate(,%edi,4), %eax
	jmp	L120
L187:
	movl	_slidersettings(,%edx,4), %eax
	jmp	L104
	.cfi_endproc
LFE12:
	.p2align 4
	.def	__ZL12MNU_PopGroupv;	.scl	3;	.type	32;	.endef
__ZL12MNU_PopGroupv:
LFB24:
	.cfi_startproc
	movzwl	_menuarrayptr, %eax
	testw	%ax, %ax
	jne	L195
L190:
	ret
	.p2align 4,,10
	.p2align 3
L195:
	subl	$1, %eax
	movw	%ax, _menuarrayptr
	cwtl
	movl	_menuarray(,%eax,4), %eax
	movl	%eax, _currentmenu
	cmpl	$1, _numplayers
	jle	L190
	cmpw	$3, _gNet+12
	je	L190
	imull	$24124, _myconnectindex, %eax
	movl	_Player+352(%eax), %edx
	testl	%edx, %edx
	je	L190
	addl	$_Player, %eax
	jmp	__Z10SetFragBarP12PLAYERstruct.part.0
	.cfi_endproc
LFE24:
	.p2align 4
	.globl	__Z16Pachinko1Operates
	.def	__Z16Pachinko1Operates;	.scl	2;	.type	32;	.endef
__Z16Pachinko1Operates:
LFB26:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	_krandcount, %edx
	movl	_sprite, %ecx
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -20
	movswl	40(%esp), %ebx
	leal	1(%edx), %eax
	movl	%esi, 24(%esp)
	movl	%eax, _krandcount
	movl	_randomseed, %eax
	imull	$44, %ebx, %ebx
	.cfi_offset 6, -16
	leal	(%eax,%eax,4), %esi
	leal	1(%eax,%esi,4), %eax
	addl	%ecx, %ebx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L207
	movl	%eax, %esi
	sall	$14, %esi
	cmpl	$967426224, %esi
	ja	L208
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	xorl	%eax, %eax
	addl	$36, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L207:
	.cfi_restore_state
	addl	$2, %edx
	movl	%edi, 28(%esp)
	movl	%ebp, 32(%esp)
	movl	%edx, _krandcount
	movl	$65516, _randomseed
	.cfi_offset 7, -12
	.cfi_offset 5, -8
L198:
	leal	8(%ebx), %edi
	movl	$-1171354717, %esi
	leal	4(%ebx), %ebp
	movl	%edi, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%ecx, %edx
	movl	%ebp, %ecx
	movl	%edx, %eax
	mull	%esi
	movl	$421, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	%edi, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	28(%esp), %edi
	.cfi_restore 7
	movl	32(%esp), %ebp
	.cfi_restore 5
	xorl	%eax, %eax
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	addl	$36, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L208:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	addl	$2, %edx
	movl	%ebp, 32(%esp)
	movl	%edx, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	.cfi_offset 5, -8
	jne	L209
L206:
	movl	%edi, 28(%esp)
	.cfi_offset 7, -12
	jmp	L198
L209:
	.cfi_restore 7
	sall	$14, %eax
	movl	%eax, 16(%esp)
	cmpl	$752681224, %eax
	ja	L206
	movl	%ebx, %edx
	movl	$-1171354717, %esi
	leal	8(%ebx), %ebp
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	movl	%edx, 8(%esp)
	leal	4(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	movl	%edx, %eax
	movl	%ebp, %edx
	subl	%ecx, %edx
	shrl	$5, %eax
	movl	%eax, 12(%esp)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	cmpl	$430563724, 16(%esp)
	movl	_spritechanged(,%edx,4), %ecx
	leal	1(%ecx), %eax
	movl	%eax, _spritechanged(,%edx,4)
	movl	12(%esp), %eax
	jbe	L201
	movl	8(%esp), %edx
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebx), %ecx
	movl	$422, %eax
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	%ebp, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	32(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	movl	20(%esp), %ebx
	xorl	%eax, %eax
	movl	24(%esp), %esi
	addl	$36, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L201:
	.cfi_restore_state
	addl	$1, _spritechanged(,%eax,4)
	movl	8(%esp), %eax
	leal	4(%ebx), %ecx
	movl	%ebx, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	$423, %eax
	movl	%ebp, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	32(%esp), %ebp
	.cfi_restore 5
	movl	20(%esp), %ebx
	xorl	%eax, %eax
	movl	24(%esp), %esi
	addl	$36, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE26:
	.p2align 4
	.globl	__Z15SetupToiletGirls
	.def	__Z15SetupToiletGirls;	.scl	2;	.type	32;	.endef
__Z15SetupToiletGirls:
LFB28:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movswl	28(%esp), %edi
	imull	$44, %edi, %ebx
	addl	_sprite, %ebx
	testb	$16, 13(%ebx)
	je	L211
	movl	_User(,%edi,4), %esi
L212:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L213
	movl	$0, 76(%eax)
	movl	$_s_ToiletGirlStand, 24(%eax)
	movl	$_s_ToiletGirlStand, 16(%eax)
	movswl	_s_ToiletGirlStand, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L213
	andl	$63, %eax
	movb	%al, 3(%edx)
L213:
	movl	_sprite, %edi
	leal	20(%ebx), %edx
	xorl	%eax, %eax
	movl	$-1171354717, %ecx
	movw	%ax, 80(%esi)
	subl	%edi, %edx
	movl	$_ToiletGirlAttrib, 48(%esi)
	movl	%edx, %eax
	movl	$_s_ToiletGirlStand, 28(%esi)
	mull	%ecx
	movl	$0, 20(%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%edi, %edx
	movb	$38, 20(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ebx), %edx
	subl	%edi, %edx
	movb	$32, 21(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 36(%ebx)
	leal	34(%ebx), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32(%ebx), %edx
	subl	%edi, %edx
	movw	%ax, 34(%ebx)
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	38(%ebx), %edx
	subl	%edi, %edx
	movw	%ax, 32(%ebx)
	movl	%edx, %eax
	mull	%ecx
	movl	$5023, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 38(%ebx)
	xorl	%eax, %eax
	movw	%ax, 280(%esi)
	movl	$5023, %eax
	movw	%ax, 82(%esi)
	xorl	%eax, %eax
	andl	$-16777217, 68(%esi)
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
L211:
	.cfi_restore_state
	movl	$5023, %edx
	movl	$_s_ToiletGirlStand, %ecx
	movl	%edi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	$60, %edx
	movl	%eax, _User(,%edi,4)
	movl	%eax, %esi
	movw	%dx, 84(%eax)
	jmp	L212
	.cfi_endproc
LFE28:
	.p2align 4
	.globl	__Z13SetupWashGirls
	.def	__Z13SetupWashGirls;	.scl	2;	.type	32;	.endef
__Z13SetupWashGirls:
LFB29:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movswl	28(%esp), %edi
	imull	$44, %edi, %ebx
	addl	_sprite, %ebx
	testb	$16, 13(%ebx)
	je	L222
	movl	_User(,%edi,4), %esi
L223:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L224
	movl	$0, 76(%eax)
	movl	$_s_WashGirlStand, 24(%eax)
	movl	$_s_WashGirlStand, 16(%eax)
	movswl	_s_WashGirlStand, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L224
	andl	$63, %eax
	movb	%al, 3(%edx)
L224:
	movl	_sprite, %edi
	leal	20(%ebx), %edx
	xorl	%eax, %eax
	movl	$-1171354717, %ecx
	movw	%ax, 80(%esi)
	subl	%edi, %edx
	movl	$_WashGirlAttrib, 48(%esi)
	movl	%edx, %eax
	movl	$_s_WashGirlStand, 28(%esi)
	mull	%ecx
	movl	$0, 20(%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%edi, %edx
	movb	$28, 20(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ebx), %edx
	subl	%edi, %edx
	movb	$24, 21(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 36(%ebx)
	leal	34(%ebx), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32(%ebx), %edx
	subl	%edi, %edx
	movw	%ax, 34(%ebx)
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	38(%ebx), %edx
	subl	%edi, %edx
	movw	%ax, 32(%ebx)
	movl	%edx, %eax
	mull	%ecx
	movl	$5032, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 38(%ebx)
	xorl	%eax, %eax
	movw	%ax, 280(%esi)
	movl	$5032, %eax
	movw	%ax, 82(%esi)
	xorl	%eax, %eax
	andl	$-16777217, 68(%esi)
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
L222:
	.cfi_restore_state
	movl	$5032, %edx
	movl	$_s_WashGirlStand, %ecx
	movl	%edi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	$60, %edx
	movl	%eax, _User(,%edi,4)
	movl	%eax, %esi
	movw	%dx, 84(%eax)
	jmp	L223
	.cfi_endproc
LFE29:
	.p2align 4
	.globl	__Z13SetupTrashCans
	.def	__Z13SetupTrashCans;	.scl	2;	.type	32;	.endef
__Z13SetupTrashCans:
LFB30:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movswl	28(%esp), %edi
	imull	$44, %edi, %ebx
	addl	_sprite, %ebx
	testb	$16, 13(%ebx)
	je	L233
	movl	_User(,%edi,4), %esi
L234:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L235
	movl	$0, 76(%eax)
	movl	$_s_TrashCanStand, 24(%eax)
	movl	$_s_TrashCanStand, 16(%eax)
	movswl	_s_TrashCanStand, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L235
	andl	$63, %eax
	movb	%al, 3(%edx)
L235:
	movl	_sprite, %edi
	leal	20(%ebx), %edx
	xorl	%eax, %eax
	movl	$-1171354717, %ecx
	movw	%ax, 80(%esi)
	subl	%edi, %edx
	movl	$_TrashCanAttrib, 48(%esi)
	movl	%edx, %eax
	movl	$_s_TrashCanStand, 28(%esi)
	mull	%ecx
	movl	$0, 20(%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%edi, %edx
	movb	$46, 20(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ebx), %edx
	subl	%edi, %edx
	movb	$42, 21(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 36(%ebx)
	leal	34(%ebx), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32(%ebx), %edx
	subl	%edi, %edx
	movw	%ax, 34(%ebx)
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	42(%ebx), %edx
	movw	%ax, 32(%ebx)
	subl	%edi, %edx
	movl	$2540, %eax
	movw	%ax, 82(%esi)
	movl	%edx, %eax
	mull	%ecx
	andl	$-16777217, 68(%esi)
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-2049, 42(%ebx)
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
L233:
	.cfi_restore_state
	movl	$_s_TrashCanStand, %ecx
	movl	$2540, %edx
	movl	%edi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%eax, _User(,%edi,4)
	movl	%eax, %esi
	movl	$60, %eax
	movw	%ax, 84(%esi)
	jmp	L234
	.cfi_endproc
LFE30:
	.p2align 4
	.globl	__Z18SetupPachinkoLights
	.def	__Z18SetupPachinkoLights;	.scl	2;	.type	32;	.endef
__Z18SetupPachinkoLights:
LFB31:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movswl	28(%esp), %edi
	imull	$44, %edi, %ebx
	addl	_sprite, %ebx
	testb	$16, 13(%ebx)
	je	L244
	movl	_User(,%edi,4), %esi
L245:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L246
	movl	$0, 76(%eax)
	movl	$_s_PachinkoLightStand, 24(%eax)
	movl	$_s_PachinkoLightStand, 16(%eax)
	movswl	_s_PachinkoLightStand, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L246
	andl	$63, %eax
	movb	%al, 3(%edx)
L246:
	movl	_sprite, %edi
	leal	36(%ebx), %edx
	movl	$-1171354717, %ecx
	movl	$_PachinkoLightAttrib, 48(%esi)
	movl	$_s_PachinkoLightStand, 28(%esi)
	subl	%edi, %edx
	movl	$0, 20(%esi)
	movl	%edx, %eax
	movl	$40828928, 80(%esi)
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	34(%ebx), %edx
	subl	%edi, %edx
	movw	%ax, 36(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 34(%ebx)
	leal	32(%ebx), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	38(%ebx), %edx
	subl	%edi, %edx
	movw	%ax, 32(%ebx)
	movl	%edx, %eax
	mull	%ecx
	movl	$9997, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	%edi, %edx
	movw	%ax, 38(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	42(%ebx), %edx
	movzbl	17(%ebx), %eax
	subl	%edi, %edx
	movb	$-2, 16(%ebx)
	movb	%al, 262(%esi)
	movl	%edx, %eax
	mull	%ecx
	andl	$-16777217, 68(%esi)
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-2049, 42(%ebx)
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
L244:
	.cfi_restore_state
	movl	$_s_PachinkoLightStand, %ecx
	movl	$623, %edx
	movl	%edi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%eax, _User(,%edi,4)
	movl	%eax, %esi
	movl	$1, %eax
	movw	%ax, 84(%esi)
	jmp	L245
	.cfi_endproc
LFE31:
	.p2align 4
	.globl	__Z14SetupPachinko1s
	.def	__Z14SetupPachinko1s;	.scl	2;	.type	32;	.endef
__Z14SetupPachinko1s:
LFB32:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movswl	28(%esp), %esi
	imull	$44, %esi, %ebx
	addl	_sprite, %ebx
	testb	$16, 13(%ebx)
	je	L255
	movl	_User(,%esi,4), %edi
L256:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	movl	_User(,%esi,4), %eax
	testl	%eax, %eax
	je	L257
	movl	$0, 76(%eax)
	movl	$_s_Pachinko1Stand, 24(%eax)
	movl	$_s_Pachinko1Stand, 16(%eax)
	movswl	_s_Pachinko1Stand, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L257
	andl	$63, %eax
	movb	%al, 3(%edx)
L257:
	movl	_sprite, %esi
	leal	36(%ebx), %edx
	movl	$-1171354717, %ecx
	movl	$_Pachinko1Attrib, 48(%edi)
	movl	$_s_Pachinko1Stand, 28(%edi)
	subl	%esi, %edx
	movl	$0, 20(%edi)
	movl	%edx, %eax
	movl	$312475648, 80(%edi)
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	34(%ebx), %edx
	subl	%esi, %edx
	movw	%ax, 36(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 34(%ebx)
	leal	38(%ebx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	$4768, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	42(%ebx), %edx
	subl	%esi, %edx
	movw	%ax, 38(%ebx)
	movl	%edx, %eax
	andl	$-16777217, 68(%edi)
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-2049, 42(%ebx)
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
L255:
	.cfi_restore_state
	movl	$_s_Pachinko1Stand, %ecx
	movl	$4768, %edx
	movl	%esi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%eax, _User(,%esi,4)
	movl	%eax, %edi
	movl	$1, %eax
	movw	%ax, 84(%edi)
	jmp	L256
	.cfi_endproc
LFE32:
	.p2align 4
	.globl	__Z14SetupPachinko2s
	.def	__Z14SetupPachinko2s;	.scl	2;	.type	32;	.endef
__Z14SetupPachinko2s:
LFB33:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movswl	28(%esp), %esi
	imull	$44, %esi, %ebx
	addl	_sprite, %ebx
	testb	$16, 13(%ebx)
	je	L266
	movl	_User(,%esi,4), %edi
L267:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	movl	_User(,%esi,4), %eax
	testl	%eax, %eax
	je	L268
	movl	$0, 76(%eax)
	movl	$_s_Pachinko2Stand, 24(%eax)
	movl	$_s_Pachinko2Stand, 16(%eax)
	movswl	_s_Pachinko2Stand, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L268
	andl	$63, %eax
	movb	%al, 3(%edx)
L268:
	movl	_sprite, %esi
	leal	36(%ebx), %edx
	movl	$-1171354717, %ecx
	movl	$_Pachinko2Attrib, 48(%edi)
	movl	$_s_Pachinko2Stand, 28(%edi)
	subl	%esi, %edx
	movl	$0, 20(%edi)
	movl	%edx, %eax
	movl	$314048512, 80(%edi)
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	34(%ebx), %edx
	subl	%esi, %edx
	movw	%ax, 36(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 34(%ebx)
	leal	38(%ebx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	$4792, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	42(%ebx), %edx
	subl	%esi, %edx
	movw	%ax, 38(%ebx)
	movl	%edx, %eax
	andl	$-16777217, 68(%edi)
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-2049, 42(%ebx)
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
L266:
	.cfi_restore_state
	movl	$_s_Pachinko2Stand, %ecx
	movl	$4792, %edx
	movl	%esi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%eax, _User(,%esi,4)
	movl	%eax, %edi
	movl	$1, %eax
	movw	%ax, 84(%edi)
	jmp	L267
	.cfi_endproc
LFE33:
	.p2align 4
	.globl	__Z14SetupPachinko3s
	.def	__Z14SetupPachinko3s;	.scl	2;	.type	32;	.endef
__Z14SetupPachinko3s:
LFB34:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movswl	28(%esp), %esi
	imull	$44, %esi, %ebx
	addl	_sprite, %ebx
	testb	$16, 13(%ebx)
	je	L277
	movl	_User(,%esi,4), %edi
L278:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	movl	_User(,%esi,4), %eax
	testl	%eax, %eax
	je	L279
	movl	$0, 76(%eax)
	movl	$_s_Pachinko3Stand, 24(%eax)
	movl	$_s_Pachinko3Stand, 16(%eax)
	movswl	_s_Pachinko3Stand, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L279
	andl	$63, %eax
	movb	%al, 3(%edx)
L279:
	movl	_sprite, %esi
	leal	36(%ebx), %edx
	movl	$-1171354717, %ecx
	movl	$_Pachinko3Attrib, 48(%edi)
	movl	$_s_Pachinko3Stand, 28(%edi)
	subl	%esi, %edx
	movl	$0, 20(%edi)
	movl	%edx, %eax
	movl	$315621376, 80(%edi)
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	34(%ebx), %edx
	subl	%esi, %edx
	movw	%ax, 36(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 34(%ebx)
	leal	38(%ebx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	$4816, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	42(%ebx), %edx
	subl	%esi, %edx
	movw	%ax, 38(%ebx)
	movl	%edx, %eax
	andl	$-16777217, 68(%edi)
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-2049, 42(%ebx)
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
L277:
	.cfi_restore_state
	movl	$_s_Pachinko3Stand, %ecx
	movl	$4816, %edx
	movl	%esi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%eax, _User(,%esi,4)
	movl	%eax, %edi
	movl	$1, %eax
	movw	%ax, 84(%edi)
	jmp	L278
	.cfi_endproc
LFE34:
	.p2align 4
	.globl	__Z14SetupPachinko4s
	.def	__Z14SetupPachinko4s;	.scl	2;	.type	32;	.endef
__Z14SetupPachinko4s:
LFB35:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movswl	28(%esp), %esi
	imull	$44, %esi, %ebx
	addl	_sprite, %ebx
	testb	$16, 13(%ebx)
	je	L288
	movl	_User(,%esi,4), %edi
L289:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	movl	_User(,%esi,4), %eax
	testl	%eax, %eax
	je	L290
	movl	$0, 76(%eax)
	movl	$_s_Pachinko4Stand, 24(%eax)
	movl	$_s_Pachinko4Stand, 16(%eax)
	movswl	_s_Pachinko4Stand, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L290
	andl	$63, %eax
	movb	%al, 3(%edx)
L290:
	movl	_sprite, %esi
	leal	36(%ebx), %edx
	movl	$-1171354717, %ecx
	movl	$_Pachinko4Attrib, 48(%edi)
	movl	$_s_Pachinko4Stand, 28(%edi)
	subl	%esi, %edx
	movl	$0, 20(%edi)
	movl	%edx, %eax
	movl	$317194240, 80(%edi)
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	34(%ebx), %edx
	subl	%esi, %edx
	movw	%ax, 36(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 34(%ebx)
	leal	38(%ebx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	$4840, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	42(%ebx), %edx
	subl	%esi, %edx
	movw	%ax, 38(%ebx)
	movl	%edx, %eax
	andl	$-16777217, 68(%edi)
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-2049, 42(%ebx)
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
L288:
	.cfi_restore_state
	movl	$_s_Pachinko4Stand, %ecx
	movl	$4840, %edx
	movl	%esi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%eax, _User(,%esi,4)
	movl	%eax, %edi
	movl	$1, %eax
	movw	%ax, 84(%edi)
	jmp	L289
	.cfi_endproc
LFE35:
	.p2align 4
	.globl	__Z12SetupCarGirls
	.def	__Z12SetupCarGirls;	.scl	2;	.type	32;	.endef
__Z12SetupCarGirls:
LFB36:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movswl	28(%esp), %edi
	imull	$44, %edi, %ebx
	addl	_sprite, %ebx
	testb	$16, 13(%ebx)
	je	L299
	movl	_User(,%edi,4), %esi
L300:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L301
	movl	$0, 76(%eax)
	movl	$_s_CarGirlStand, 24(%eax)
	movl	$_s_CarGirlStand, 16(%eax)
	movswl	_s_CarGirlStand, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L301
	andl	$63, %eax
	movb	%al, 3(%edx)
L301:
	movl	_sprite, %edi
	leal	20(%ebx), %edx
	xorl	%eax, %eax
	movl	$-1171354717, %ecx
	movw	%ax, 80(%esi)
	subl	%edi, %edx
	movl	$_CarGirlAttrib, 48(%esi)
	movl	%edx, %eax
	movl	$_s_CarGirlStand, 28(%esi)
	mull	%ecx
	movl	$0, 20(%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%edi, %edx
	movb	$29, 20(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ebx), %edx
	subl	%edi, %edx
	movb	$25, 21(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 36(%ebx)
	leal	34(%ebx), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32(%ebx), %edx
	subl	%edi, %edx
	movw	%ax, 34(%ebx)
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	38(%ebx), %edx
	subl	%edi, %edx
	movw	%ax, 32(%ebx)
	movl	%edx, %eax
	mull	%ecx
	movl	$4594, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	movw	%ax, 38(%ebx)
	xorl	%eax, %eax
	subl	%edi, %edx
	movw	%ax, 280(%esi)
	movl	$4594, %eax
	movw	%ax, 82(%esi)
	movl	%edx, %eax
	mull	%ecx
	andl	$-16777217, 68(%esi)
	shrl	$5, %edx
	xorl	%eax, %eax
	addl	$1, _spritechanged(,%edx,4)
	orw	$4, 12(%ebx)
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
L299:
	.cfi_restore_state
	movl	$4594, %edx
	movl	$_s_CarGirlStand, %ecx
	movl	%edi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	$60, %edx
	movl	%eax, _User(,%edi,4)
	movl	%eax, %esi
	movw	%dx, 84(%eax)
	jmp	L300
	.cfi_endproc
LFE36:
	.p2align 4
	.globl	__Z17SetupMechanicGirls
	.def	__Z17SetupMechanicGirls;	.scl	2;	.type	32;	.endef
__Z17SetupMechanicGirls:
LFB37:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movswl	28(%esp), %edi
	imull	$44, %edi, %ebx
	addl	_sprite, %ebx
	testb	$16, 13(%ebx)
	je	L310
	movl	_User(,%edi,4), %esi
L311:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L312
	movl	$0, 76(%eax)
	movl	$_s_MechanicGirlStand, 24(%eax)
	movl	$_s_MechanicGirlStand, 16(%eax)
	movswl	_s_MechanicGirlStand, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L312
	andl	$63, %eax
	movb	%al, 3(%edx)
L312:
	movl	_sprite, %edi
	leal	20(%ebx), %edx
	xorl	%eax, %eax
	movl	$-1171354717, %ecx
	movw	%ax, 80(%esi)
	subl	%edi, %edx
	movl	$_MechanicGirlAttrib, 48(%esi)
	movl	%edx, %eax
	movl	$_s_MechanicGirlStand, 28(%esi)
	mull	%ecx
	movl	$0, 20(%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%edi, %edx
	movb	$27, 20(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ebx), %edx
	subl	%edi, %edx
	movb	$26, 21(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 36(%ebx)
	leal	34(%ebx), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32(%ebx), %edx
	subl	%edi, %edx
	movw	%ax, 34(%ebx)
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	38(%ebx), %edx
	subl	%edi, %edx
	movw	%ax, 32(%ebx)
	movl	%edx, %eax
	mull	%ecx
	movl	$4590, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 38(%ebx)
	xorl	%eax, %eax
	movw	%ax, 280(%esi)
	movl	$4590, %eax
	movw	%ax, 82(%esi)
	xorl	%eax, %eax
	andl	$-16777217, 68(%esi)
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
L310:
	.cfi_restore_state
	movl	$4590, %edx
	movl	$_s_MechanicGirlStand, %ecx
	movl	%edi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	$60, %edx
	movl	%eax, _User(,%edi,4)
	movl	%eax, %esi
	movw	%dx, 84(%eax)
	jmp	L311
	.cfi_endproc
LFE37:
	.p2align 4
	.globl	__Z15SetupSailorGirls
	.def	__Z15SetupSailorGirls;	.scl	2;	.type	32;	.endef
__Z15SetupSailorGirls:
LFB38:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movswl	28(%esp), %edi
	imull	$44, %edi, %ebx
	addl	_sprite, %ebx
	testb	$16, 13(%ebx)
	je	L321
	movl	_User(,%edi,4), %esi
L322:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L323
	movl	$0, 76(%eax)
	movl	$_s_SailorGirlStand, 24(%eax)
	movl	$_s_SailorGirlStand, 16(%eax)
	movswl	_s_SailorGirlStand, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L323
	andl	$63, %eax
	movb	%al, 3(%edx)
L323:
	movl	_sprite, %edi
	leal	20(%ebx), %edx
	xorl	%eax, %eax
	movl	$-1171354717, %ecx
	movw	%ax, 80(%esi)
	subl	%edi, %edx
	movl	$_SailorGirlAttrib, 48(%esi)
	movl	%edx, %eax
	movl	$_s_SailorGirlStand, 28(%esi)
	mull	%ecx
	movl	$0, 20(%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%edi, %edx
	movb	$28, 20(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ebx), %edx
	subl	%edi, %edx
	movb	$26, 21(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 36(%ebx)
	leal	34(%ebx), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32(%ebx), %edx
	subl	%edi, %edx
	movw	%ax, 34(%ebx)
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	38(%ebx), %edx
	subl	%edi, %edx
	movw	%ax, 32(%ebx)
	movl	%edx, %eax
	mull	%ecx
	movl	$4600, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%ax, 38(%ebx)
	xorl	%eax, %eax
	movw	%ax, 280(%esi)
	movl	$4600, %eax
	movw	%ax, 82(%esi)
	xorl	%eax, %eax
	andl	$-16777217, 68(%esi)
	movw	%dx, _alreadythrew
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
L321:
	.cfi_restore_state
	movl	$_s_SailorGirlStand, %ecx
	movl	$4600, %edx
	movl	%edi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	$60, %ecx
	movl	%eax, _User(,%edi,4)
	movl	%eax, %esi
	movw	%cx, 84(%eax)
	jmp	L322
	.cfi_endproc
LFE38:
	.p2align 4
	.globl	__Z14SetupPruneGirls
	.def	__Z14SetupPruneGirls;	.scl	2;	.type	32;	.endef
__Z14SetupPruneGirls:
LFB39:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movswl	28(%esp), %edi
	imull	$44, %edi, %ebx
	addl	_sprite, %ebx
	testb	$16, 13(%ebx)
	je	L332
	movl	_User(,%edi,4), %esi
L333:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L334
	movl	$0, 76(%eax)
	movl	$_s_PruneGirlStand, 24(%eax)
	movl	$_s_PruneGirlStand, 16(%eax)
	movswl	_s_PruneGirlStand, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L334
	andl	$63, %eax
	movb	%al, 3(%edx)
L334:
	movl	_sprite, %edi
	leal	20(%ebx), %edx
	xorl	%eax, %eax
	movl	$-1171354717, %ecx
	movw	%ax, 80(%esi)
	subl	%edi, %edx
	movl	$_PruneGirlAttrib, 48(%esi)
	movl	%edx, %eax
	movl	$_s_PruneGirlStand, 28(%esi)
	mull	%ecx
	movl	$0, 20(%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%edi, %edx
	movb	$33, 20(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ebx), %edx
	subl	%edi, %edx
	movb	$28, 21(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 36(%ebx)
	leal	34(%ebx), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32(%ebx), %edx
	subl	%edi, %edx
	movw	%ax, 34(%ebx)
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	38(%ebx), %edx
	subl	%edi, %edx
	movw	%ax, 32(%ebx)
	movl	%edx, %eax
	mull	%ecx
	movl	$4604, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 38(%ebx)
	xorl	%eax, %eax
	movw	%ax, 280(%esi)
	movl	$4604, %eax
	movw	%ax, 82(%esi)
	xorl	%eax, %eax
	andl	$-16777217, 68(%esi)
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
L332:
	.cfi_restore_state
	movl	$4604, %edx
	movl	$_s_PruneGirlStand, %ecx
	movl	%edi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	$60, %edx
	movl	%eax, _User(,%edi,4)
	movl	%eax, %esi
	movw	%dx, 84(%eax)
	jmp	L333
	.cfi_endproc
LFE39:
	.p2align 4
	.globl	__Z13ToiletGirlUzis
	.def	__Z13ToiletGirlUzis;	.scl	2;	.type	32;	.endef
__Z13ToiletGirlUzis:
LFB40:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %ebx
	movl	_User(,%ebx,4), %ecx
	testb	$-128, 68(%ecx)
	je	L356
L343:
	movzwl	216(%ecx), %eax
	subl	$6, %eax
	movw	%ax, 216(%ecx)
	testw	%ax, %ax
	jle	L357
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L356:
	.cfi_restore_state
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	__Z16KeepActorOnFloors
	movl	4(%esp), %ecx
	jmp	L343
	.p2align 4,,10
	.p2align 3
L357:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$359, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L345
	sall	$14, %eax
	movl	$-268374015, %edx
	mull	%edx
	shrl	$22, %edx
	addl	$120, %edx
L345:
	movw	%dx, 216(%ecx)
	movl	_User(,%ebx,4), %eax
	testl	%eax, %eax
	je	L346
	movl	$0, 76(%eax)
	movl	$_s_ToiletGirlStand, 24(%eax)
	movl	$_s_ToiletGirlStand, 16(%eax)
	movswl	_s_ToiletGirlStand, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L346
	andl	$63, %eax
	movb	%al, 3(%edx)
L346:
	xorl	%eax, %eax
	movw	%ax, 280(%ecx)
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE40:
	.p2align 4
	.globl	__Z11WashGirlUzis
	.def	__Z11WashGirlUzis;	.scl	2;	.type	32;	.endef
__Z11WashGirlUzis:
LFB41:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %ebx
	movl	_User(,%ebx,4), %ecx
	testb	$-128, 68(%ecx)
	je	L372
L359:
	movzwl	216(%ecx), %eax
	subl	$6, %eax
	movw	%ax, 216(%ecx)
	testw	%ax, %ax
	jle	L373
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L372:
	.cfi_restore_state
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	__Z16KeepActorOnFloors
	movl	4(%esp), %ecx
	jmp	L359
	.p2align 4,,10
	.p2align 3
L373:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$359, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L361
	sall	$14, %eax
	movl	$-268374015, %edx
	mull	%edx
	shrl	$22, %edx
	addl	$120, %edx
L361:
	movw	%dx, 216(%ecx)
	movl	_User(,%ebx,4), %eax
	testl	%eax, %eax
	je	L362
	movl	$0, 76(%eax)
	movl	$_s_WashGirlStand, 24(%eax)
	movl	$_s_WashGirlStand, 16(%eax)
	movswl	_s_WashGirlStand, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L362
	andl	$63, %eax
	movb	%al, 3(%edx)
L362:
	xorl	%eax, %eax
	movw	%ax, 280(%ecx)
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE41:
	.p2align 4
	.globl	__Z10CarGirlUzis
	.def	__Z10CarGirlUzis;	.scl	2;	.type	32;	.endef
__Z10CarGirlUzis:
LFB42:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %ebx
	movl	_User(,%ebx,4), %ecx
	testb	$-128, 68(%ecx)
	je	L388
L375:
	movzwl	216(%ecx), %eax
	subl	$6, %eax
	movw	%ax, 216(%ecx)
	testw	%ax, %ax
	jle	L389
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L388:
	.cfi_restore_state
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	__Z16KeepActorOnFloors
	movl	4(%esp), %ecx
	jmp	L375
	.p2align 4,,10
	.p2align 3
L389:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$359, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L377
	sall	$14, %eax
	movl	$-268374015, %edx
	mull	%edx
	shrl	$22, %edx
	addl	$120, %edx
L377:
	movw	%dx, 216(%ecx)
	movl	_User(,%ebx,4), %eax
	testl	%eax, %eax
	je	L378
	movl	$0, 76(%eax)
	movl	$_s_CarGirlStand, 24(%eax)
	movl	$_s_CarGirlStand, 16(%eax)
	movswl	_s_CarGirlStand, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L378
	andl	$63, %eax
	movb	%al, 3(%edx)
L378:
	xorl	%eax, %eax
	movw	%ax, 280(%ecx)
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE42:
	.p2align 4
	.globl	__Z17MechanicGirlDrills
	.def	__Z17MechanicGirlDrills;	.scl	2;	.type	32;	.endef
__Z17MechanicGirlDrills:
LFB43:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %ebx
	movl	_User(,%ebx,4), %ecx
	testb	$-128, 68(%ecx)
	je	L404
L391:
	movzwl	216(%ecx), %eax
	subl	$6, %eax
	movw	%ax, 216(%ecx)
	testw	%ax, %ax
	jle	L405
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L404:
	.cfi_restore_state
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	__Z16KeepActorOnFloors
	movl	4(%esp), %ecx
	jmp	L391
	.p2align 4,,10
	.p2align 3
L405:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$359, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L393
	sall	$14, %eax
	movl	$-268374015, %edx
	mull	%edx
	shrl	$22, %edx
	addl	$120, %edx
L393:
	movw	%dx, 216(%ecx)
	movl	_User(,%ebx,4), %eax
	testl	%eax, %eax
	je	L394
	movl	$0, 76(%eax)
	movl	$_s_MechanicGirlStand, 24(%eax)
	movl	$_s_MechanicGirlStand, 16(%eax)
	movswl	_s_MechanicGirlStand, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L394
	andl	$63, %eax
	movb	%al, 3(%edx)
L394:
	xorl	%eax, %eax
	movw	%ax, 280(%ecx)
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE43:
	.p2align 4
	.globl	__Z15SailorGirlThrows
	.def	__Z15SailorGirlThrows;	.scl	2;	.type	32;	.endef
__Z15SailorGirlThrows:
LFB44:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %ebx
	movl	_User(,%ebx,4), %ecx
	testb	$-128, 68(%ecx)
	je	L420
L407:
	movzwl	216(%ecx), %eax
	subl	$6, %eax
	movw	%ax, 216(%ecx)
	testw	%ax, %ax
	jle	L421
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L420:
	.cfi_restore_state
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	__Z16KeepActorOnFloors
	movl	4(%esp), %ecx
	jmp	L407
	.p2align 4,,10
	.p2align 3
L421:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$359, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L409
	sall	$14, %eax
	movl	$-268374015, %edx
	mull	%edx
	shrl	$22, %edx
	addl	$120, %edx
L409:
	movw	%dx, 216(%ecx)
	movl	_User(,%ebx,4), %eax
	testl	%eax, %eax
	je	L410
	movl	$0, 76(%eax)
	movl	$_s_SailorGirlStand, 24(%eax)
	movl	$_s_SailorGirlStand, 16(%eax)
	movswl	_s_SailorGirlStand, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L410
	andl	$63, %eax
	movb	%al, 3(%edx)
L410:
	xorl	%eax, %eax
	movw	%ax, 280(%ecx)
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE44:
	.p2align 4
	.globl	__Z12DoToiletGirls
	.def	__Z12DoToiletGirls;	.scl	2;	.type	32;	.endef
__Z12DoToiletGirls:
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
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movswl	64(%esp), %eax
	movl	_User(,%eax,4), %ebp
	movl	%eax, 20(%esp)
	movl	140(%ebp), %ebx
	movl	%eax, (%esp)
	call	__Z22DoActorPickClosePlayers
	movl	200(%ebp), %eax
	movzwl	24(%eax), %edi
	movswl	14(%eax), %esi
	movl	8(%eax), %edx
	movzbl	21(%eax), %ecx
	movw	%di, 36(%esp)
	movswl	_tilesiz+2(,%esi,4), %edi
	testb	$-128, 12(%eax)
	je	L423
	movsbl	_picanm+2(%esi,%esi,4), %esi
	sall	$8, %esi
	cmpb	$64, %cl
	je	L487
	imull	%edi, %ecx
	leal	(%ecx,%ecx), %edi
	leal	(%edi,%esi), %ecx
	movl	%edi, 24(%esp)
	movl	%edx, %edi
	subl	%ecx, %edi
L425:
	movl	24(%esp), %ecx
	subl	%esi, %ecx
	addl	%ecx, %edx
	jmp	L428
	.p2align 4,,10
	.p2align 3
L423:
	cmpb	$64, %cl
	je	L488
	imull	%edi, %ecx
	sall	$2, %ecx
L427:
	movl	%edx, %edi
	subl	%ecx, %edi
L428:
	addl	%edi, %edx
	movl	4(%eax), %edi
	movl	8(%ebx), %ecx
	sarl	%edx
	movl	%edx, 24(%esp)
	movswl	14(%ebx), %edx
	movl	%edi, 28(%esp)
	movl	(%eax), %edi
	movzwl	24(%ebx), %eax
	movswl	_tilesiz+2(,%edx,4), %esi
	movw	%ax, 32(%esp)
	movzbl	21(%ebx), %eax
	testb	$-128, 12(%ebx)
	je	L429
	movsbl	_picanm+2(%edx,%edx,4), %edx
	sall	$8, %edx
	cmpb	$64, %al
	je	L489
	imull	%esi, %eax
	movl	%ecx, %esi
	addl	%eax, %eax
	movl	%eax, 40(%esp)
	addl	%edx, %eax
	subl	%eax, %esi
L431:
	movl	40(%esp), %eax
	subl	%edx, %eax
	addl	%eax, %ecx
L434:
	addl	%esi, %ecx
	movswl	36(%esp), %esi
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	movl	%edi, 4(%esp)
	sarl	%ecx
	movl	%esi, 16(%esp)
	movl	24(%esp), %esi
	movl	%esi, 12(%esp)
	movl	28(%esp), %esi
	movl	%esi, 8(%esp)
	movswl	32(%esp), %esi
	movl	%esi, (%esp)
	call	__Z9FAFcanseeiiisiiis
	movl	%eax, %edx
	cmpw	$1, 280(%ebp)
	je	L435
	movl	_krandcount, %edx
	leal	1(%edx), %eax
	movl	%eax, _krandcount
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L436
	movl	%eax, %ecx
	sall	$14, %ecx
	cmpl	$1053324224, %ecx
	ja	L436
L437:
	testb	$-32, 68(%ebp)
	je	L490
L447:
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	__Z19DoActorSectorDamages
	movl	_sprite, %esi
	leal	36(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	34(%ebx), %edx
	subl	%esi, %edx
	movw	%ax, 36(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 34(%ebx)
	leal	32(%ebx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 32(%ebx)
	addl	$44, %esp
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
L435:
	.cfi_restore_state
	movzwl	216(%ebp), %eax
	subl	$6, %eax
	movw	%ax, 216(%ebp)
	testb	%dl, %dl
	je	L437
	testw	%ax, %ax
	jg	L437
	movl	__ZZ12DoToiletGirlsE9madhandle, %eax
	testl	%eax, %eax
	jg	L491
L441:
	movl	_randomseed, %eax
	movl	_sprite, %esi
	movl	$-1171354717, %ecx
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	%ebx, %edx
	subl	%esi, %edx
	movzwl	%ax, %edi
	movl	%edx, %eax
	movl	%edi, _randomseed
	mull	%ecx
	leal	4(%ebx), %eax
	movl	%eax, 28(%esp)
	shrl	$5, %edx
	movl	%edx, 24(%esp)
	movl	%eax, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	8(%ebx), %eax
	movl	%eax, 36(%esp)
	shrl	$5, %edx
	movl	%edx, 32(%esp)
	movl	%eax, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%edx, %ecx
	shrl	$5, %ecx
	movl	_spritechanged(,%ecx,4), %eax
	leal	1(%eax), %esi
	cmpl	$65535, %edi
	je	L443
	sall	$14, %edi
	cmpl	$1073663999, %edi
	jbe	L492
L443:
	movl	32(%esp), %eax
	movl	%esi, _spritechanged(,%ecx,4)
	movl	%ebx, %edx
	movl	28(%esp), %ecx
	addl	$1, _spritechanged(,%eax,4)
	movl	24(%esp), %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	36(%esp), %eax
	movl	$8, 4(%esp)
	movl	%eax, (%esp)
	movl	$481, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ12DoToiletGirlsE9madhandle
L442:
	movl	20(%esp), %eax
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L445
	movl	$0, 76(%eax)
	movl	$_s_ToiletGirlUzi, 24(%eax)
	movl	$_s_ToiletGirlUzi, 16(%eax)
	movswl	_s_ToiletGirlUzi, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L445
	andl	$63, %eax
	movb	%al, 3(%edx)
L445:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$360, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L446
	sall	$14, %eax
	movl	$-1073692671, %edx
	mull	%edx
	shrl	$28, %edx
	addl	$1, %edx
	imull	$120, %edx, %edx
L446:
	xorl	%esi, %esi
	movw	%dx, 216(%ebp)
	movw	%si, 280(%ebp)
	testb	$-32, 68(%ebp)
	jne	L447
	.p2align 4
	.p2align 3
L490:
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	__Z16KeepActorOnFloors
	jmp	L447
	.p2align 4,,10
	.p2align 3
L429:
	cmpb	$64, %al
	je	L493
	imull	%esi, %eax
	sall	$2, %eax
L433:
	movl	%ecx, %esi
	subl	%eax, %esi
	jmp	L434
	.p2align 4,,10
	.p2align 3
L488:
	sall	$8, %edi
	movl	%edi, %ecx
	jmp	L427
	.p2align 4,,10
	.p2align 3
L487:
	sall	$7, %edi
	leal	(%edi,%esi), %ecx
	movl	%edi, 24(%esp)
	movl	%edx, %edi
	subl	%ecx, %edi
	jmp	L425
	.p2align 4,,10
	.p2align 3
L489:
	movl	%esi, %eax
	movl	%ecx, %esi
	sall	$7, %eax
	movl	%eax, 40(%esp)
	addl	%edx, %eax
	subl	%eax, %esi
	jmp	L431
	.p2align 4,,10
	.p2align 3
L493:
	movl	%esi, %eax
	sall	$8, %eax
	jmp	L433
	.p2align 4,,10
	.p2align 3
L436:
	addl	$2, %edx
	movl	%edx, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	__ZZ12DoToiletGirlsE6handle, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	testl	%edx, %edx
	jg	L494
L438:
	sarl	$4, %eax
	movl	%ebx, %edx
	leal	4(%ebx), %edi
	subl	_sprite, %edx
	andw	$1023, %ax
	movl	$-1171354717, %ecx
	movl	%edi, 28(%esp)
	movw	%ax, 24(%esp)
	movl	%edx, %eax
	mull	%ecx
	movl	%edx, %esi
	movl	%edi, %edx
	leal	8(%ebx), %edi
	subl	_sprite, %edx
	movl	%edx, %eax
	shrl	$5, %esi
	mull	%ecx
	shrl	$5, %edx
	movl	%edx, 32(%esp)
	movl	%edi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	cmpw	$750, 24(%esp)
	jg	L495
	cmpw	$350, 24(%esp)
	movl	%eax, _spritechanged(,%edx,4)
	movl	32(%esp), %eax
	jle	L440
	addl	$1, _spritechanged(,%eax,4)
	movl	28(%esp), %ecx
	movl	%ebx, %edx
	movl	$489, %eax
	addl	$1, _spritechanged(,%esi,4)
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ12DoToiletGirlsE6handle
	jmp	L437
	.p2align 4,,10
	.p2align 3
L494:
	movl	__ZL10MV_Handles.lto_priv.0, %ecx
	movl	_MV_Installed, %esi
	movl	-4(%ecx,%edx,4), %edx
	testl	%esi, %esi
	je	L438
	testl	%edx, %edx
	je	L438
	movl	112(%edx), %ecx
	testl	%ecx, %ecx
	je	L437
	jmp	L438
	.p2align 4,,10
	.p2align 3
L440:
	addl	$1, _spritechanged(,%eax,4)
	movl	28(%esp), %ecx
	movl	%ebx, %edx
	movl	$490, %eax
	addl	$1, _spritechanged(,%esi,4)
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ12DoToiletGirlsE6handle
	jmp	L437
	.p2align 4,,10
	.p2align 3
L492:
	movl	$-100359273, %eax
	mull	%edi
	cmpl	$525336575, %edx
	ja	L443
	movl	32(%esp), %eax
	movl	%esi, _spritechanged(,%ecx,4)
	movl	%ebx, %edx
	movl	28(%esp), %ecx
	addl	$1, _spritechanged(,%eax,4)
	movl	24(%esp), %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	36(%esp), %eax
	movl	$8, 4(%esp)
	movl	%eax, (%esp)
	movl	$483, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ12DoToiletGirlsE9madhandle
	jmp	L442
	.p2align 4,,10
	.p2align 3
L491:
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	-4(%edx,%eax,4), %eax
	movl	_MV_Installed, %edx
	testl	%edx, %edx
	je	L441
	testl	%eax, %eax
	je	L441
	movl	112(%eax), %edi
	testl	%edi, %edi
	je	L442
	jmp	L441
	.p2align 4,,10
	.p2align 3
L495:
	movl	%eax, _spritechanged(,%edx,4)
	movl	32(%esp), %eax
	movl	%ebx, %edx
	movl	28(%esp), %ecx
	addl	$1, _spritechanged(,%eax,4)
	movl	$488, %eax
	addl	$1, _spritechanged(,%esi,4)
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ12DoToiletGirlsE6handle
	jmp	L437
	.cfi_endproc
LFE45:
	.p2align 4
	.globl	__Z14NullToiletGirls
	.def	__Z14NullToiletGirls;	.scl	2;	.type	32;	.endef
__Z14NullToiletGirls:
LFB48:
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
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movswl	64(%esp), %ebp
	movl	_User(,%ebp,4), %esi
	movl	140(%esi), %ebx
	movl	%ebp, (%esp)
	call	__Z22DoActorPickClosePlayers
	movl	200(%esi), %eax
	movzwl	24(%eax), %ecx
	movl	8(%eax), %edi
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movw	%cx, 24(%esp)
	movl	8(%ebx), %ecx
	movl	%edx, 32(%esp)
	movswl	14(%ebx), %edx
	movl	%eax, 20(%esp)
	movzwl	24(%ebx), %eax
	movl	%edi, 28(%esp)
	movswl	_tilesiz+2(,%edx,4), %edi
	movw	%ax, 36(%esp)
	movzbl	21(%ebx), %eax
	testb	$-128, 12(%ebx)
	je	L497
	movsbl	_picanm+2(%edx,%edx,4), %edx
	sall	$8, %edx
	cmpb	$64, %al
	je	L538
	imull	%edi, %eax
	movl	%ecx, %edi
	addl	%eax, %eax
	movl	%eax, 40(%esp)
	addl	%edx, %eax
	subl	%eax, %edi
L499:
	movl	40(%esp), %eax
	subl	%edx, %eax
	addl	%eax, %ecx
	jmp	L502
	.p2align 4,,10
	.p2align 3
L497:
	cmpb	$64, %al
	je	L539
	imull	%edi, %eax
	sall	$2, %eax
L501:
	movl	%ecx, %edi
	subl	%eax, %edi
L502:
	addl	%edi, %ecx
	movswl	24(%esp), %edi
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	sarl	%ecx
	movl	%edi, 16(%esp)
	movl	28(%esp), %edi
	movl	%edi, 12(%esp)
	movl	32(%esp), %edi
	movl	%edi, 8(%esp)
	movl	20(%esp), %edi
	movl	%edi, 4(%esp)
	movswl	36(%esp), %edi
	movl	%edi, (%esp)
	call	__Z9FAFcanseeiiisiiis
	movl	%eax, %edi
	testb	$-128, 68(%esi)
	je	L540
L503:
	cmpw	$1, 280(%esi)
	je	L541
L504:
	addl	$44, %esp
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
L541:
	.cfi_restore_state
	movzwl	216(%esi), %eax
	subl	$6, %eax
	movw	%ax, 216(%esi)
	testw	%ax, %ax
	jg	L504
	movl	%edi, %eax
	testb	%al, %al
	je	L504
	movl	__ZZ14NullToiletGirlsE9madhandle, %eax
	testl	%eax, %eax
	jg	L542
L505:
	movl	_randomseed, %eax
	movl	$-1171354717, %ecx
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	%ebx, %edx
	subl	_sprite, %edx
	movzwl	%ax, %edi
	movl	%edx, %eax
	mull	%ecx
	leal	4(%ebx), %eax
	movl	%edi, _randomseed
	movl	%eax, 24(%esp)
	shrl	$5, %edx
	movl	%edx, 20(%esp)
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	8(%ebx), %eax
	movl	%eax, 32(%esp)
	shrl	$5, %edx
	movl	%edx, 28(%esp)
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%edx, %ecx
	shrl	$5, %ecx
	movl	_spritechanged(,%ecx,4), %eax
	addl	$1, %eax
	movl	%eax, 36(%esp)
	cmpl	$65535, %edi
	je	L507
	movl	%edi, %edx
	sall	$14, %edx
	cmpl	$1073663999, %edx
	ja	L507
	movl	$-100359273, %eax
	mull	%edx
	cmpl	$525336575, %edx
	ja	L507
	movl	36(%esp), %eax
	movl	%ebx, %edx
	movl	%eax, _spritechanged(,%ecx,4)
	movl	28(%esp), %eax
	movl	24(%esp), %ecx
	addl	$1, _spritechanged(,%eax,4)
	movl	20(%esp), %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	32(%esp), %eax
	movl	$8, 4(%esp)
	movl	%eax, (%esp)
	movl	$483, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ14NullToiletGirlsE9madhandle
L506:
	movl	_User(,%ebp,4), %eax
	testl	%eax, %eax
	je	L509
	movl	$0, 76(%eax)
	movl	$_s_ToiletGirlUzi, 24(%eax)
	movl	$_s_ToiletGirlUzi, 16(%eax)
	movswl	_s_ToiletGirlUzi, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L509
	andl	$63, %eax
	movb	%al, 3(%edx)
L509:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$360, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L510
	sall	$14, %eax
	movl	$-1073692671, %edx
	mull	%edx
	shrl	$28, %edx
	addl	$1, %edx
	imull	$120, %edx, %edx
L510:
	xorl	%eax, %eax
	movw	%dx, 216(%esi)
	movw	%ax, 280(%esi)
	jmp	L504
	.p2align 4,,10
	.p2align 3
L540:
	movl	%ebp, (%esp)
	call	__Z16KeepActorOnFloors
	jmp	L503
	.p2align 4,,10
	.p2align 3
L539:
	movl	%edi, %eax
	sall	$8, %eax
	jmp	L501
	.p2align 4,,10
	.p2align 3
L538:
	movl	%edi, %eax
	movl	%ecx, %edi
	sall	$7, %eax
	movl	%eax, 40(%esp)
	addl	%edx, %eax
	subl	%eax, %edi
	jmp	L499
	.p2align 4,,10
	.p2align 3
L542:
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	_MV_Installed, %ecx
	movl	-4(%edx,%eax,4), %eax
	testl	%ecx, %ecx
	je	L505
	testl	%eax, %eax
	je	L505
	movl	112(%eax), %edx
	testl	%edx, %edx
	je	L506
	jmp	L505
	.p2align 4,,10
	.p2align 3
L507:
	movl	36(%esp), %eax
	movl	%ebx, %edx
	movl	%eax, _spritechanged(,%ecx,4)
	movl	28(%esp), %eax
	movl	24(%esp), %ecx
	addl	$1, _spritechanged(,%eax,4)
	movl	20(%esp), %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	32(%esp), %eax
	movl	$8, 4(%esp)
	movl	%eax, (%esp)
	movl	$481, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ14NullToiletGirlsE9madhandle
	jmp	L506
	.cfi_endproc
LFE48:
	.p2align 4
	.globl	__Z14ToiletGirlPains
	.def	__Z14ToiletGirlPains;	.scl	2;	.type	32;	.endef
__Z14ToiletGirlPains:
LFB49:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %ebx
	movl	_User(,%ebx,4), %esi
	movl	%ebx, (%esp)
	call	__Z14NullToiletGirls
	movzwl	216(%esi), %eax
	subl	$6, %eax
	movw	%ax, 216(%esi)
	testw	%ax, %ax
	jle	L552
L544:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L552:
	.cfi_restore_state
	movl	_User(,%ebx,4), %eax
	testl	%eax, %eax
	je	L544
	movl	$0, 76(%eax)
	movl	$_s_ToiletGirlStand, 24(%eax)
	movl	$_s_ToiletGirlStand, 16(%eax)
	movswl	_s_ToiletGirlStand, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L544
	andl	$63, %eax
	movb	%al, 3(%edx)
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE49:
	.p2align 4
	.globl	__Z10DoWashGirls
	.def	__Z10DoWashGirls;	.scl	2;	.type	32;	.endef
__Z10DoWashGirls:
LFB50:
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
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movswl	64(%esp), %eax
	movl	_User(,%eax,4), %ebp
	movl	%eax, 20(%esp)
	movl	140(%ebp), %ebx
	movl	%eax, (%esp)
	call	__Z22DoActorPickClosePlayers
	movl	200(%ebp), %eax
	movzwl	24(%eax), %edi
	movswl	14(%eax), %esi
	movl	8(%eax), %edx
	movzbl	21(%eax), %ecx
	movw	%di, 36(%esp)
	movswl	_tilesiz+2(,%esi,4), %edi
	testb	$-128, 12(%eax)
	je	L554
	movsbl	_picanm+2(%esi,%esi,4), %esi
	sall	$8, %esi
	cmpb	$64, %cl
	je	L638
	imull	%edi, %ecx
	leal	(%ecx,%ecx), %edi
	leal	(%edi,%esi), %ecx
	movl	%edi, 24(%esp)
	movl	%edx, %edi
	subl	%ecx, %edi
L556:
	movl	24(%esp), %ecx
	subl	%esi, %ecx
	addl	%ecx, %edx
	jmp	L559
	.p2align 4,,10
	.p2align 3
L554:
	cmpb	$64, %cl
	je	L639
	imull	%edi, %ecx
	sall	$2, %ecx
L558:
	movl	%edx, %edi
	subl	%ecx, %edi
L559:
	addl	%edi, %edx
	movl	4(%eax), %edi
	movl	8(%ebx), %ecx
	sarl	%edx
	movl	%edx, 24(%esp)
	movswl	14(%ebx), %edx
	movl	%edi, 28(%esp)
	movl	(%eax), %edi
	movzwl	24(%ebx), %eax
	movswl	_tilesiz+2(,%edx,4), %esi
	movw	%ax, 32(%esp)
	movzbl	21(%ebx), %eax
	testb	$-128, 12(%ebx)
	je	L560
	movsbl	_picanm+2(%edx,%edx,4), %edx
	sall	$8, %edx
	cmpb	$64, %al
	je	L640
	imull	%esi, %eax
	movl	%ecx, %esi
	addl	%eax, %eax
	movl	%eax, 40(%esp)
	addl	%edx, %eax
	subl	%eax, %esi
L562:
	movl	40(%esp), %eax
	subl	%edx, %eax
	addl	%eax, %ecx
L565:
	addl	%esi, %ecx
	movswl	36(%esp), %esi
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	movl	%edi, 4(%esp)
	sarl	%ecx
	movl	%esi, 16(%esp)
	movl	24(%esp), %esi
	movl	%esi, 12(%esp)
	movl	28(%esp), %esi
	movl	%esi, 8(%esp)
	movswl	32(%esp), %esi
	movl	%esi, (%esp)
	call	__Z9FAFcanseeiiisiiis
	movl	_randomseed, %ecx
	movb	%al, 24(%esp)
	movl	_krandcount, %eax
	leal	(%ecx,%ecx,4), %edx
	leal	1(%ecx,%edx,4), %ecx
	addl	$1, %eax
	movl	276(%ebp), %edx
	movzwl	%cx, %ecx
	movl	%eax, _krandcount
	movl	%ecx, _randomseed
	movl	%ecx, %esi
	cmpl	$65535, %ecx
	je	L566
	movl	%ecx, %edi
	sall	$14, %edi
	cmpl	$1053324224, %edi
	ja	L566
	testl	%edx, %edx
	jg	L568
L571:
	cmpw	$1, 280(%ebp)
	je	L641
L580:
	testb	$-32, 68(%ebp)
	je	L642
L587:
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	__Z19DoActorSectorDamages
	movl	_sprite, %esi
	leal	36(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	34(%ebx), %edx
	subl	%esi, %edx
	movw	%ax, 36(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 34(%ebx)
	leal	32(%ebx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 32(%ebx)
	addl	$44, %esp
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
L566:
	.cfi_restore_state
	testl	%edx, %edx
	jle	L643
L568:
	subl	$6, %edx
	movl	%edx, 276(%ebp)
	jns	L571
	movl	20(%esp), %eax
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L579
	movl	$0, 76(%eax)
	movl	$_s_WashGirlStand, 24(%eax)
	movl	$_s_WashGirlStand, 16(%eax)
	movswl	_s_WashGirlStand, %eax
	leal	_picanm(%eax,%eax,4), %edi
	movzbl	3(%edi), %eax
	movl	%eax, %edx
	shrb	$6, %dl
	je	L579
	andl	$63, %eax
	movb	%al, 3(%edi)
L579:
	movl	$0, 276(%ebp)
	cmpw	$1, 280(%ebp)
	jne	L580
	.p2align 4
	.p2align 3
L641:
	movzwl	216(%ebp), %eax
	subl	$6, %eax
	movw	%ax, 216(%ebp)
	testw	%ax, %ax
	jg	L580
	cmpb	$0, 24(%esp)
	je	L580
	movl	__ZZ10DoWashGirlsE9madhandle, %eax
	testl	%eax, %eax
	jg	L644
L581:
	leal	(%ecx,%ecx,4), %eax
	movl	_sprite, %esi
	leal	8(%ebx), %edi
	addl	$1, _krandcount
	leal	1(%ecx,%eax,4), %ecx
	leal	4(%ebx), %eax
	movl	%edi, 28(%esp)
	movl	$-1171354717, %edi
	movl	%eax, 24(%esp)
	movl	%ebx, %eax
	movzwl	%cx, %ecx
	subl	%esi, %eax
	movl	%ecx, _randomseed
	mull	%edi
	movl	%edx, %eax
	movl	24(%esp), %edx
	shrl	$5, %eax
	subl	%esi, %edx
	movl	%eax, 32(%esp)
	movl	%edx, %eax
	mull	%edi
	movl	%edx, %eax
	movl	28(%esp), %edx
	shrl	$5, %eax
	subl	%esi, %edx
	movl	%eax, 36(%esp)
	movl	%edx, %eax
	mull	%edi
	movl	%edx, %esi
	shrl	$5, %esi
	movl	_spritechanged(,%esi,4), %eax
	leal	1(%eax), %edi
	cmpl	$65535, %ecx
	je	L583
	sall	$14, %ecx
	cmpl	$1073663999, %ecx
	ja	L583
	movl	$-100359273, %eax
	mull	%ecx
	cmpl	$525336575, %edx
	ja	L583
	movl	36(%esp), %eax
	movl	24(%esp), %ecx
	movl	%edi, _spritechanged(,%esi,4)
	movl	%ebx, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	32(%esp), %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	28(%esp), %eax
	movl	$8, 4(%esp)
	movl	%eax, (%esp)
	movl	$483, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	_randomseed, %ecx
	movl	%eax, __ZZ10DoWashGirlsE9madhandle
L582:
	movl	20(%esp), %eax
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L585
	movl	$0, 76(%eax)
	movl	$_s_WashGirlUzi, 24(%eax)
	movl	$_s_WashGirlUzi, 16(%eax)
	movswl	_s_WashGirlUzi, %eax
	leal	_picanm(%eax,%eax,4), %edi
	movzbl	3(%edi), %eax
	movl	%eax, %edx
	shrb	$6, %dl
	je	L585
	andl	$63, %eax
	movb	%al, 3(%edi)
L585:
	leal	(%ecx,%ecx,4), %eax
	addl	$1, _krandcount
	movl	$360, %edx
	leal	1(%ecx,%eax,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L586
	sall	$14, %eax
	movl	$-1073692671, %edx
	mull	%edx
	shrl	$28, %edx
	addl	$1, %edx
	imull	$120, %edx, %edx
L586:
	xorl	%esi, %esi
	movw	%dx, 216(%ebp)
	movw	%si, 280(%ebp)
	jmp	L580
	.p2align 4,,10
	.p2align 3
L560:
	cmpb	$64, %al
	je	L645
	imull	%esi, %eax
	sall	$2, %eax
L564:
	movl	%ecx, %esi
	subl	%eax, %esi
	jmp	L565
	.p2align 4,,10
	.p2align 3
L642:
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	__Z16KeepActorOnFloors
	jmp	L587
	.p2align 4,,10
	.p2align 3
L643:
	movl	__ZZ10DoWashGirlsE6handle, %edx
	testl	%edx, %edx
	jg	L646
L574:
	addl	$1, %eax
	movl	%ebx, %edx
	subl	_sprite, %edx
	movl	%eax, _krandcount
	leal	(%esi,%esi,4), %eax
	leal	1(%esi,%eax,4), %ecx
	movl	$-1171354717, %esi
	movl	%edx, %eax
	mull	%esi
	leal	4(%ebx), %eax
	movzwl	%cx, %ecx
	movl	%eax, 28(%esp)
	movl	%ecx, _randomseed
	sarl	$4, %ecx
	shrl	$5, %edx
	andl	$1023, %ecx
	movl	%edx, 32(%esp)
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%esi
	movl	%edx, %edi
	shrl	$5, %edi
	movl	%edi, 36(%esp)
	leal	8(%ebx), %edi
	movl	%edi, %eax
	subl	_sprite, %eax
	mull	%esi
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %esi
	leal	1(%esi), %eax
	movl	%eax, _spritechanged(,%edx,4)
	cmpl	$500, %ecx
	jle	L576
	movl	36(%esp), %ecx
	movl	32(%esp), %esi
	movl	%ebx, %edx
	movl	$480, %eax
	addl	$1, _spritechanged(,%ecx,4)
	movl	28(%esp), %ecx
	addl	$1, _spritechanged(,%esi,4)
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_randomseed, %ecx
	movl	%eax, __ZZ10DoWashGirlsE6handle
L575:
	movl	20(%esp), %eax
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L577
	movl	$0, 76(%eax)
	movl	$_s_WashGirlStandScrub, 24(%eax)
	movl	$_s_WashGirlStandScrub, 16(%eax)
	movswl	_s_WashGirlStandScrub, %eax
	leal	_picanm(%eax,%eax,4), %edi
	movzbl	3(%edi), %eax
	movl	%eax, %edx
	shrb	$6, %dl
	je	L577
	andl	$63, %eax
	movb	%al, 3(%edi)
L577:
	leal	(%ecx,%ecx,4), %eax
	addl	$1, _krandcount
	movl	$479, %edx
	leal	1(%ecx,%eax,4), %ecx
	movzwl	%cx, %ecx
	movl	%ecx, _randomseed
	cmpl	$65535, %ecx
	je	L578
	movl	%ecx, %edx
	movl	$-268374015, %eax
	sall	$14, %edx
	mull	%edx
	shrl	$22, %edx
	addl	$240, %edx
L578:
	movl	%edx, 276(%ebp)
	jmp	L571
	.p2align 4,,10
	.p2align 3
L639:
	sall	$8, %edi
	movl	%edi, %ecx
	jmp	L558
	.p2align 4,,10
	.p2align 3
L638:
	sall	$7, %edi
	leal	(%edi,%esi), %ecx
	movl	%edi, 24(%esp)
	movl	%edx, %edi
	subl	%ecx, %edi
	jmp	L556
	.p2align 4,,10
	.p2align 3
L646:
	movl	__ZL10MV_Handles.lto_priv.0, %edi
	movl	-4(%edi,%edx,4), %edx
	movl	_MV_Installed, %edi
	testl	%edi, %edi
	je	L574
	testl	%edx, %edx
	je	L574
	movl	112(%edx), %edi
	testl	%edi, %edi
	je	L575
	movl	_krandcount, %eax
	jmp	L574
	.p2align 4,,10
	.p2align 3
L645:
	movl	%esi, %eax
	sall	$8, %eax
	jmp	L564
	.p2align 4,,10
	.p2align 3
L640:
	movl	%esi, %eax
	movl	%ecx, %esi
	sall	$7, %eax
	movl	%eax, 40(%esp)
	addl	%edx, %eax
	subl	%eax, %esi
	jmp	L562
	.p2align 4,,10
	.p2align 3
L576:
	movl	36(%esp), %eax
	movl	28(%esp), %ecx
	movl	%ebx, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	32(%esp), %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$482, %eax
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_randomseed, %ecx
	movl	%eax, __ZZ10DoWashGirlsE6handle
	jmp	L575
	.p2align 4,,10
	.p2align 3
L644:
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	-4(%edx,%eax,4), %eax
	movl	_MV_Installed, %edx
	testl	%edx, %edx
	je	L581
	testl	%eax, %eax
	je	L581
	movl	112(%eax), %edi
	testl	%edi, %edi
	je	L582
	jmp	L581
	.p2align 4,,10
	.p2align 3
L583:
	movl	36(%esp), %eax
	movl	24(%esp), %ecx
	movl	%edi, _spritechanged(,%esi,4)
	movl	%ebx, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	32(%esp), %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	28(%esp), %eax
	movl	$8, 4(%esp)
	movl	%eax, (%esp)
	movl	$481, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	_randomseed, %ecx
	movl	%eax, __ZZ10DoWashGirlsE9madhandle
	jmp	L582
	.cfi_endproc
LFE50:
	.p2align 4
	.globl	__Z12NullWashGirls
	.def	__Z12NullWashGirls;	.scl	2;	.type	32;	.endef
__Z12NullWashGirls:
LFB51:
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
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movswl	64(%esp), %ebp
	movl	_User(,%ebp,4), %esi
	movl	140(%esi), %ebx
	movl	%ebp, (%esp)
	call	__Z22DoActorPickClosePlayers
	movl	200(%esi), %eax
	movzwl	24(%eax), %ecx
	movl	8(%eax), %edi
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movw	%cx, 24(%esp)
	movl	8(%ebx), %ecx
	movl	%edx, 32(%esp)
	movswl	14(%ebx), %edx
	movl	%eax, 20(%esp)
	movzwl	24(%ebx), %eax
	movl	%edi, 28(%esp)
	movswl	_tilesiz+2(,%edx,4), %edi
	movw	%ax, 36(%esp)
	movzbl	21(%ebx), %eax
	testb	$-128, 12(%ebx)
	je	L648
	movsbl	_picanm+2(%edx,%edx,4), %edx
	sall	$8, %edx
	cmpb	$64, %al
	je	L689
	imull	%edi, %eax
	movl	%ecx, %edi
	addl	%eax, %eax
	movl	%eax, 40(%esp)
	addl	%edx, %eax
	subl	%eax, %edi
L650:
	movl	40(%esp), %eax
	subl	%edx, %eax
	addl	%eax, %ecx
	jmp	L653
	.p2align 4,,10
	.p2align 3
L648:
	cmpb	$64, %al
	je	L690
	imull	%edi, %eax
	sall	$2, %eax
L652:
	movl	%ecx, %edi
	subl	%eax, %edi
L653:
	addl	%edi, %ecx
	movswl	24(%esp), %edi
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	sarl	%ecx
	movl	%edi, 16(%esp)
	movl	28(%esp), %edi
	movl	%edi, 12(%esp)
	movl	32(%esp), %edi
	movl	%edi, 8(%esp)
	movl	20(%esp), %edi
	movl	%edi, 4(%esp)
	movswl	36(%esp), %edi
	movl	%edi, (%esp)
	call	__Z9FAFcanseeiiisiiis
	movl	%eax, %edi
	testb	$-128, 68(%esi)
	je	L691
L654:
	cmpw	$1, 280(%esi)
	je	L692
L655:
	addl	$44, %esp
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
L692:
	.cfi_restore_state
	movzwl	216(%esi), %eax
	subl	$6, %eax
	movw	%ax, 216(%esi)
	testw	%ax, %ax
	jg	L655
	movl	%edi, %eax
	testb	%al, %al
	je	L655
	movl	__ZZ12NullWashGirlsE9madhandle, %eax
	testl	%eax, %eax
	jg	L693
L656:
	movl	_randomseed, %eax
	movl	$-1171354717, %ecx
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	%ebx, %edx
	subl	_sprite, %edx
	movzwl	%ax, %edi
	movl	%edx, %eax
	mull	%ecx
	leal	4(%ebx), %eax
	movl	%edi, _randomseed
	movl	%eax, 24(%esp)
	shrl	$5, %edx
	movl	%edx, 20(%esp)
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	8(%ebx), %eax
	movl	%eax, 32(%esp)
	shrl	$5, %edx
	movl	%edx, 28(%esp)
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%edx, %ecx
	shrl	$5, %ecx
	movl	_spritechanged(,%ecx,4), %eax
	addl	$1, %eax
	movl	%eax, 36(%esp)
	cmpl	$65535, %edi
	je	L658
	movl	%edi, %edx
	sall	$14, %edx
	cmpl	$1073663999, %edx
	ja	L658
	movl	$-100359273, %eax
	mull	%edx
	cmpl	$525336575, %edx
	ja	L658
	movl	36(%esp), %eax
	movl	%ebx, %edx
	movl	%eax, _spritechanged(,%ecx,4)
	movl	28(%esp), %eax
	movl	24(%esp), %ecx
	addl	$1, _spritechanged(,%eax,4)
	movl	20(%esp), %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	32(%esp), %eax
	movl	$8, 4(%esp)
	movl	%eax, (%esp)
	movl	$483, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ12NullWashGirlsE9madhandle
L657:
	movl	_User(,%ebp,4), %eax
	testl	%eax, %eax
	je	L660
	movl	$0, 76(%eax)
	movl	$_s_WashGirlUzi, 24(%eax)
	movl	$_s_WashGirlUzi, 16(%eax)
	movswl	_s_WashGirlUzi, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L660
	andl	$63, %eax
	movb	%al, 3(%edx)
L660:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$360, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L661
	sall	$14, %eax
	movl	$-1073692671, %edx
	mull	%edx
	shrl	$28, %edx
	addl	$1, %edx
	imull	$120, %edx, %edx
L661:
	xorl	%eax, %eax
	movw	%dx, 216(%esi)
	movw	%ax, 280(%esi)
	jmp	L655
	.p2align 4,,10
	.p2align 3
L691:
	movl	%ebp, (%esp)
	call	__Z16KeepActorOnFloors
	jmp	L654
	.p2align 4,,10
	.p2align 3
L690:
	movl	%edi, %eax
	sall	$8, %eax
	jmp	L652
	.p2align 4,,10
	.p2align 3
L689:
	movl	%edi, %eax
	movl	%ecx, %edi
	sall	$7, %eax
	movl	%eax, 40(%esp)
	addl	%edx, %eax
	subl	%eax, %edi
	jmp	L650
	.p2align 4,,10
	.p2align 3
L693:
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	_MV_Installed, %ecx
	movl	-4(%edx,%eax,4), %eax
	testl	%ecx, %ecx
	je	L656
	testl	%eax, %eax
	je	L656
	movl	112(%eax), %edx
	testl	%edx, %edx
	je	L657
	jmp	L656
	.p2align 4,,10
	.p2align 3
L658:
	movl	36(%esp), %eax
	movl	%ebx, %edx
	movl	%eax, _spritechanged(,%ecx,4)
	movl	28(%esp), %eax
	movl	24(%esp), %ecx
	addl	$1, _spritechanged(,%eax,4)
	movl	20(%esp), %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	32(%esp), %eax
	movl	$8, 4(%esp)
	movl	%eax, (%esp)
	movl	$481, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ12NullWashGirlsE9madhandle
	jmp	L657
	.cfi_endproc
LFE51:
	.p2align 4
	.globl	__Z12WashGirlPains
	.def	__Z12WashGirlPains;	.scl	2;	.type	32;	.endef
__Z12WashGirlPains:
LFB52:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %ebx
	movl	_User(,%ebx,4), %esi
	movl	%ebx, (%esp)
	call	__Z12NullWashGirls
	movzwl	216(%esi), %eax
	subl	$6, %eax
	movw	%ax, 216(%esi)
	testw	%ax, %ax
	jle	L703
L695:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L703:
	.cfi_restore_state
	movl	_User(,%ebx,4), %eax
	testl	%eax, %eax
	je	L695
	movl	$0, 76(%eax)
	movl	$_s_WashGirlStand, 24(%eax)
	movl	$_s_WashGirlStand, 16(%eax)
	movswl	_s_WashGirlStand, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L695
	andl	$63, %eax
	movb	%al, 3(%edx)
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE52:
	.p2align 4
	.globl	__Z9DoCarGirls
	.def	__Z9DoCarGirls;	.scl	2;	.type	32;	.endef
__Z9DoCarGirls:
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
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movswl	64(%esp), %eax
	movl	_User(,%eax,4), %ebp
	movl	%eax, 20(%esp)
	movl	140(%ebp), %ebx
	movl	%eax, (%esp)
	call	__Z22DoActorPickClosePlayers
	movl	200(%ebp), %eax
	movzwl	24(%eax), %edi
	movswl	14(%eax), %esi
	movl	8(%eax), %edx
	movzbl	21(%eax), %ecx
	movw	%di, 38(%esp)
	movswl	_tilesiz+2(,%esi,4), %edi
	testb	$-128, 12(%eax)
	je	L705
	movsbl	_picanm+2(%esi,%esi,4), %esi
	sall	$8, %esi
	cmpb	$64, %cl
	je	L754
	imull	%edi, %ecx
	leal	(%ecx,%ecx), %edi
	leal	(%edi,%esi), %ecx
	movl	%edi, 24(%esp)
	movl	%edx, %edi
	subl	%ecx, %edi
L707:
	movl	24(%esp), %ecx
	subl	%esi, %ecx
	addl	%ecx, %edx
	jmp	L710
	.p2align 4,,10
	.p2align 3
L705:
	cmpb	$64, %cl
	je	L755
	imull	%edi, %ecx
	sall	$2, %ecx
L709:
	movl	%edx, %edi
	subl	%ecx, %edi
L710:
	addl	%edi, %edx
	movl	4(%eax), %edi
	movl	8(%ebx), %ecx
	sarl	%edx
	movl	%edx, 24(%esp)
	movswl	14(%ebx), %edx
	movl	%edi, 28(%esp)
	movl	(%eax), %edi
	movzwl	24(%ebx), %eax
	movswl	_tilesiz+2(,%edx,4), %esi
	movw	%ax, 32(%esp)
	movzbl	21(%ebx), %eax
	testb	$-128, 12(%ebx)
	je	L711
	movsbl	_picanm+2(%edx,%edx,4), %edx
	sall	$8, %edx
	cmpb	$64, %al
	je	L756
	imull	%esi, %eax
	movl	%ecx, %esi
	addl	%eax, %eax
	movl	%eax, 40(%esp)
	addl	%edx, %eax
	subl	%eax, %esi
L713:
	movl	40(%esp), %eax
	subl	%edx, %eax
	addl	%eax, %ecx
L716:
	addl	%esi, %ecx
	movswl	38(%esp), %esi
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	movl	%edi, 4(%esp)
	sarl	%ecx
	movl	%esi, 16(%esp)
	movl	24(%esp), %esi
	movl	%esi, 12(%esp)
	movl	28(%esp), %esi
	movl	%esi, 8(%esp)
	movswl	32(%esp), %esi
	movl	%esi, (%esp)
	call	__Z9FAFcanseeiiisiiis
	movl	%eax, %edx
	cmpw	$1, 280(%ebp)
	je	L757
L717:
	testb	$-32, 68(%ebp)
	je	L758
L726:
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	__Z19DoActorSectorDamages
	movl	_sprite, %esi
	leal	36(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	34(%ebx), %edx
	subl	%esi, %edx
	movw	%ax, 36(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 34(%ebx)
	leal	32(%ebx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 32(%ebx)
	addl	$44, %esp
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
L711:
	.cfi_restore_state
	cmpb	$64, %al
	je	L759
	imull	%esi, %eax
	sall	$2, %eax
L715:
	movl	%ecx, %esi
	subl	%eax, %esi
	jmp	L716
	.p2align 4,,10
	.p2align 3
L757:
	movzwl	216(%ebp), %eax
	subl	$6, %eax
	movw	%ax, 216(%ebp)
	testw	%ax, %ax
	jg	L717
	testb	%dl, %dl
	je	L717
	movl	__ZZ9DoCarGirlsE9madhandle, %eax
	testl	%eax, %eax
	jg	L760
L718:
	movl	_randomseed, %eax
	movl	$-1171354717, %ecx
	leal	8(%ebx), %esi
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	%ebx, %edx
	subl	_sprite, %edx
	movzwl	%ax, %edi
	movl	%edx, %eax
	mull	%ecx
	leal	4(%ebx), %eax
	movl	%edi, _randomseed
	movl	%eax, 28(%esp)
	shrl	$5, %edx
	movl	%edx, 24(%esp)
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	movl	%edx, 32(%esp)
	movl	%esi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	28(%esp), %ecx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	movl	32(%esp), %eax
	movl	%ebx, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	24(%esp), %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$8, 4(%esp)
	movl	%esi, (%esp)
	cmpl	$65535, %edi
	je	L720
	sall	$14, %edi
	cmpl	$806367474, %edi
	ja	L720
	cmpl	$537936224, %edi
	ja	L761
	cmpl	$269504974, %edi
	jbe	L723
	movl	$557, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ9DoCarGirlsE9madhandle
L719:
	movl	20(%esp), %eax
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L724
	movl	$0, 76(%eax)
	movl	$_s_CarGirlUzi, 24(%eax)
	movl	$_s_CarGirlUzi, 16(%eax)
	movswl	_s_CarGirlUzi, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L724
	andl	$63, %eax
	movb	%al, 3(%edx)
L724:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$480, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L725
	sall	$14, %eax
	movl	$-2147450879, %edx
	mull	%edx
	shrl	$28, %edx
	imull	$120, %edx, %edx
	addw	$360, %dx
L725:
	xorl	%esi, %esi
	movw	%dx, 216(%ebp)
	movw	%si, 280(%ebp)
	jmp	L717
	.p2align 4,,10
	.p2align 3
L758:
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	__Z16KeepActorOnFloors
	jmp	L726
	.p2align 4,,10
	.p2align 3
L755:
	sall	$8, %edi
	movl	%edi, %ecx
	jmp	L709
	.p2align 4,,10
	.p2align 3
L754:
	sall	$7, %edi
	leal	(%edi,%esi), %ecx
	movl	%edi, 24(%esp)
	movl	%edx, %edi
	subl	%ecx, %edi
	jmp	L707
	.p2align 4,,10
	.p2align 3
L759:
	movl	%esi, %eax
	sall	$8, %eax
	jmp	L715
	.p2align 4,,10
	.p2align 3
L756:
	movl	%esi, %eax
	movl	%ecx, %esi
	sall	$7, %eax
	movl	%eax, 40(%esp)
	addl	%edx, %eax
	subl	%eax, %esi
	jmp	L713
	.p2align 4,,10
	.p2align 3
L760:
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	-4(%edx,%eax,4), %eax
	movl	_MV_Installed, %edx
	testl	%edx, %edx
	je	L718
	testl	%eax, %eax
	je	L718
	movl	112(%eax), %edi
	testl	%edi, %edi
	je	L719
	jmp	L718
	.p2align 4,,10
	.p2align 3
L720:
	movl	$555, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ9DoCarGirlsE9madhandle
	jmp	L719
	.p2align 4,,10
	.p2align 3
L723:
	movl	$558, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ9DoCarGirlsE9madhandle
	jmp	L719
	.p2align 4,,10
	.p2align 3
L761:
	movl	$556, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ9DoCarGirlsE9madhandle
	jmp	L719
	.cfi_endproc
LFE53:
	.p2align 4
	.globl	__Z11NullCarGirls
	.def	__Z11NullCarGirls;	.scl	2;	.type	32;	.endef
__Z11NullCarGirls:
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
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movswl	64(%esp), %ebp
	movl	_User(,%ebp,4), %esi
	movl	140(%esi), %ebx
	movl	%ebp, (%esp)
	call	__Z22DoActorPickClosePlayers
	movl	200(%esi), %eax
	movzwl	24(%eax), %ecx
	movl	8(%eax), %edi
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movw	%cx, 24(%esp)
	movl	8(%ebx), %ecx
	movl	%edx, 32(%esp)
	movswl	14(%ebx), %edx
	movl	%eax, 20(%esp)
	movzwl	24(%ebx), %eax
	movl	%edi, 28(%esp)
	movswl	_tilesiz+2(,%edx,4), %edi
	movw	%ax, 38(%esp)
	movzbl	21(%ebx), %eax
	testb	$-128, 12(%ebx)
	je	L763
	movsbl	_picanm+2(%edx,%edx,4), %edx
	sall	$8, %edx
	cmpb	$64, %al
	je	L806
	imull	%edi, %eax
	movl	%ecx, %edi
	addl	%eax, %eax
	movl	%eax, 40(%esp)
	addl	%edx, %eax
	subl	%eax, %edi
L765:
	movl	40(%esp), %eax
	subl	%edx, %eax
	addl	%eax, %ecx
	jmp	L768
	.p2align 4,,10
	.p2align 3
L763:
	cmpb	$64, %al
	je	L807
	imull	%edi, %eax
	sall	$2, %eax
L767:
	movl	%ecx, %edi
	subl	%eax, %edi
L768:
	addl	%edi, %ecx
	movswl	24(%esp), %edi
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	sarl	%ecx
	movl	%edi, 16(%esp)
	movl	28(%esp), %edi
	movl	%edi, 12(%esp)
	movl	32(%esp), %edi
	movl	%edi, 8(%esp)
	movl	20(%esp), %edi
	movl	%edi, 4(%esp)
	movswl	38(%esp), %edi
	movl	%edi, (%esp)
	call	__Z9FAFcanseeiiisiiis
	movl	%eax, %edi
	testb	$-128, 68(%esi)
	je	L808
L769:
	cmpw	$1, 280(%esi)
	je	L809
L770:
	addl	$44, %esp
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
L809:
	.cfi_restore_state
	movzwl	216(%esi), %eax
	subl	$6, %eax
	movw	%ax, 216(%esi)
	testw	%ax, %ax
	jg	L770
	movl	%edi, %eax
	testb	%al, %al
	je	L770
	movl	__ZZ11NullCarGirlsE9madhandle, %eax
	testl	%eax, %eax
	jg	L810
L771:
	movl	_randomseed, %eax
	movl	$-1171354717, %ecx
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	%ebx, %edx
	subl	_sprite, %edx
	movzwl	%ax, %edi
	movl	%edx, %eax
	mull	%ecx
	leal	4(%ebx), %eax
	movl	%edi, _randomseed
	movl	%eax, 24(%esp)
	shrl	$5, %edx
	movl	%edx, 20(%esp)
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	8(%ebx), %eax
	movl	%eax, 32(%esp)
	shrl	$5, %edx
	movl	%edx, 28(%esp)
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	movl	28(%esp), %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	20(%esp), %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	32(%esp), %eax
	movl	$8, 4(%esp)
	movl	%eax, (%esp)
	cmpl	$65535, %edi
	je	L773
	movl	%edi, %ecx
	sall	$14, %ecx
	cmpl	$806367474, %ecx
	ja	L773
	cmpl	$537936224, %ecx
	ja	L811
	cmpl	$269504974, %ecx
	movl	%ebx, %edx
	movl	24(%esp), %ecx
	jbe	L776
	movl	$557, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ11NullCarGirlsE9madhandle
L772:
	movl	_User(,%ebp,4), %eax
	testl	%eax, %eax
	je	L777
	movl	$0, 76(%eax)
	movl	$_s_CarGirlUzi, 24(%eax)
	movl	$_s_CarGirlUzi, 16(%eax)
	movswl	_s_CarGirlUzi, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L777
	andl	$63, %eax
	movb	%al, 3(%edx)
L777:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$480, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L778
	sall	$14, %eax
	movl	$-2147450879, %edx
	mull	%edx
	shrl	$28, %edx
	imull	$120, %edx, %edx
	addw	$360, %dx
L778:
	xorl	%eax, %eax
	movw	%dx, 216(%esi)
	movw	%ax, 280(%esi)
	jmp	L770
	.p2align 4,,10
	.p2align 3
L808:
	movl	%ebp, (%esp)
	call	__Z16KeepActorOnFloors
	jmp	L769
	.p2align 4,,10
	.p2align 3
L807:
	movl	%edi, %eax
	sall	$8, %eax
	jmp	L767
	.p2align 4,,10
	.p2align 3
L806:
	movl	%edi, %eax
	movl	%ecx, %edi
	sall	$7, %eax
	movl	%eax, 40(%esp)
	addl	%edx, %eax
	subl	%eax, %edi
	jmp	L765
	.p2align 4,,10
	.p2align 3
L810:
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	_MV_Installed, %ecx
	movl	-4(%edx,%eax,4), %eax
	testl	%ecx, %ecx
	je	L771
	testl	%eax, %eax
	je	L771
	movl	112(%eax), %edx
	testl	%edx, %edx
	je	L772
	jmp	L771
	.p2align 4,,10
	.p2align 3
L773:
	movl	24(%esp), %ecx
	movl	%ebx, %edx
	movl	$555, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ11NullCarGirlsE9madhandle
	jmp	L772
	.p2align 4,,10
	.p2align 3
L776:
	movl	$558, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ11NullCarGirlsE9madhandle
	jmp	L772
	.p2align 4,,10
	.p2align 3
L811:
	movl	24(%esp), %ecx
	movl	%ebx, %edx
	movl	$556, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ11NullCarGirlsE9madhandle
	jmp	L772
	.cfi_endproc
LFE54:
	.p2align 4
	.globl	__Z11CarGirlPains
	.def	__Z11CarGirlPains;	.scl	2;	.type	32;	.endef
__Z11CarGirlPains:
LFB55:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %ebx
	movl	_User(,%ebx,4), %esi
	movl	%ebx, (%esp)
	call	__Z11NullCarGirls
	movzwl	216(%esi), %eax
	subl	$6, %eax
	movw	%ax, 216(%esi)
	testw	%ax, %ax
	jle	L821
L813:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L821:
	.cfi_restore_state
	movl	_User(,%ebx,4), %eax
	testl	%eax, %eax
	je	L813
	movl	$0, 76(%eax)
	movl	$_s_CarGirlStand, 24(%eax)
	movl	$_s_CarGirlStand, 16(%eax)
	movswl	_s_CarGirlStand, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L813
	andl	$63, %eax
	movb	%al, 3(%edx)
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE55:
	.p2align 4
	.globl	__Z14DoMechanicGirls
	.def	__Z14DoMechanicGirls;	.scl	2;	.type	32;	.endef
__Z14DoMechanicGirls:
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
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movswl	64(%esp), %eax
	movl	_User(,%eax,4), %ebp
	movl	%eax, 20(%esp)
	movl	140(%ebp), %ebx
	movl	%eax, (%esp)
	call	__Z22DoActorPickClosePlayers
	movl	200(%ebp), %eax
	movzwl	24(%eax), %edi
	movswl	14(%eax), %esi
	movl	8(%eax), %edx
	movzbl	21(%eax), %ecx
	movw	%di, 38(%esp)
	movswl	_tilesiz+2(,%esi,4), %edi
	testb	$-128, 12(%eax)
	je	L823
	movsbl	_picanm+2(%esi,%esi,4), %esi
	sall	$8, %esi
	cmpb	$64, %cl
	je	L872
	imull	%edi, %ecx
	leal	(%ecx,%ecx), %edi
	leal	(%edi,%esi), %ecx
	movl	%edi, 24(%esp)
	movl	%edx, %edi
	subl	%ecx, %edi
L825:
	movl	24(%esp), %ecx
	subl	%esi, %ecx
	addl	%ecx, %edx
	jmp	L828
	.p2align 4,,10
	.p2align 3
L823:
	cmpb	$64, %cl
	je	L873
	imull	%edi, %ecx
	sall	$2, %ecx
L827:
	movl	%edx, %edi
	subl	%ecx, %edi
L828:
	addl	%edi, %edx
	movl	4(%eax), %edi
	movl	8(%ebx), %ecx
	sarl	%edx
	movl	%edx, 24(%esp)
	movswl	14(%ebx), %edx
	movl	%edi, 28(%esp)
	movl	(%eax), %edi
	movzwl	24(%ebx), %eax
	movswl	_tilesiz+2(,%edx,4), %esi
	movw	%ax, 32(%esp)
	movzbl	21(%ebx), %eax
	testb	$-128, 12(%ebx)
	je	L829
	movsbl	_picanm+2(%edx,%edx,4), %edx
	sall	$8, %edx
	cmpb	$64, %al
	je	L874
	imull	%esi, %eax
	movl	%ecx, %esi
	addl	%eax, %eax
	movl	%eax, 40(%esp)
	addl	%edx, %eax
	subl	%eax, %esi
L831:
	movl	40(%esp), %eax
	subl	%edx, %eax
	addl	%eax, %ecx
L834:
	addl	%esi, %ecx
	movswl	38(%esp), %esi
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	movl	%edi, 4(%esp)
	sarl	%ecx
	movl	%esi, 16(%esp)
	movl	24(%esp), %esi
	movl	%esi, 12(%esp)
	movl	28(%esp), %esi
	movl	%esi, 8(%esp)
	movswl	32(%esp), %esi
	movl	%esi, (%esp)
	call	__Z9FAFcanseeiiisiiis
	movl	%eax, %edx
	cmpw	$1, 280(%ebp)
	je	L875
L835:
	testb	$-32, 68(%ebp)
	je	L876
L844:
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	__Z19DoActorSectorDamages
	movl	_sprite, %esi
	leal	36(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	34(%ebx), %edx
	subl	%esi, %edx
	movw	%ax, 36(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 34(%ebx)
	leal	32(%ebx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 32(%ebx)
	addl	$44, %esp
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
L829:
	.cfi_restore_state
	cmpb	$64, %al
	je	L877
	imull	%esi, %eax
	sall	$2, %eax
L833:
	movl	%ecx, %esi
	subl	%eax, %esi
	jmp	L834
	.p2align 4,,10
	.p2align 3
L875:
	movzwl	216(%ebp), %eax
	subl	$6, %eax
	movw	%ax, 216(%ebp)
	testw	%ax, %ax
	jg	L835
	testb	%dl, %dl
	je	L835
	movl	__ZZ14DoMechanicGirlsE9madhandle, %eax
	testl	%eax, %eax
	jg	L878
L836:
	movl	_randomseed, %eax
	movl	$-1171354717, %ecx
	leal	8(%ebx), %esi
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	%ebx, %edx
	subl	_sprite, %edx
	movzwl	%ax, %edi
	movl	%edx, %eax
	mull	%ecx
	leal	4(%ebx), %eax
	movl	%edi, _randomseed
	movl	%eax, 28(%esp)
	shrl	$5, %edx
	movl	%edx, 24(%esp)
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	movl	%edx, 32(%esp)
	movl	%esi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	28(%esp), %ecx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	movl	32(%esp), %eax
	movl	%ebx, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	24(%esp), %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$8, 4(%esp)
	movl	%esi, (%esp)
	cmpl	$65535, %edi
	je	L838
	sall	$14, %edi
	cmpl	$806367474, %edi
	ja	L838
	cmpl	$537936224, %edi
	ja	L879
	cmpl	$269504974, %edi
	jbe	L841
	movl	$565, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ14DoMechanicGirlsE9madhandle
L837:
	movl	20(%esp), %eax
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L842
	movl	$0, 76(%eax)
	movl	$_s_MechanicGirlDrill, 24(%eax)
	movl	$_s_MechanicGirlDrill, 16(%eax)
	movswl	_s_MechanicGirlDrill, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L842
	andl	$63, %eax
	movb	%al, 3(%edx)
L842:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$240, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L843
	sall	$14, %eax
	movl	$-2147450879, %edx
	mull	%edx
	shrl	$28, %edx
	addl	$1, %edx
	imull	$120, %edx, %edx
L843:
	xorl	%esi, %esi
	movw	%dx, 216(%ebp)
	movw	%si, 280(%ebp)
	jmp	L835
	.p2align 4,,10
	.p2align 3
L876:
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	__Z16KeepActorOnFloors
	jmp	L844
	.p2align 4,,10
	.p2align 3
L873:
	sall	$8, %edi
	movl	%edi, %ecx
	jmp	L827
	.p2align 4,,10
	.p2align 3
L872:
	sall	$7, %edi
	leal	(%edi,%esi), %ecx
	movl	%edi, 24(%esp)
	movl	%edx, %edi
	subl	%ecx, %edi
	jmp	L825
	.p2align 4,,10
	.p2align 3
L877:
	movl	%esi, %eax
	sall	$8, %eax
	jmp	L833
	.p2align 4,,10
	.p2align 3
L874:
	movl	%esi, %eax
	movl	%ecx, %esi
	sall	$7, %eax
	movl	%eax, 40(%esp)
	addl	%edx, %eax
	subl	%eax, %esi
	jmp	L831
	.p2align 4,,10
	.p2align 3
L878:
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	-4(%edx,%eax,4), %eax
	movl	_MV_Installed, %edx
	testl	%edx, %edx
	je	L836
	testl	%eax, %eax
	je	L836
	movl	112(%eax), %edi
	testl	%edi, %edi
	je	L837
	jmp	L836
	.p2align 4,,10
	.p2align 3
L838:
	movl	$563, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ14DoMechanicGirlsE9madhandle
	jmp	L837
	.p2align 4,,10
	.p2align 3
L841:
	movl	$566, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ14DoMechanicGirlsE9madhandle
	jmp	L837
	.p2align 4,,10
	.p2align 3
L879:
	movl	$564, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ14DoMechanicGirlsE9madhandle
	jmp	L837
	.cfi_endproc
LFE56:
	.p2align 4
	.globl	__Z16NullMechanicGirls
	.def	__Z16NullMechanicGirls;	.scl	2;	.type	32;	.endef
__Z16NullMechanicGirls:
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
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movswl	64(%esp), %ebp
	movl	_User(,%ebp,4), %esi
	movl	140(%esi), %ebx
	movl	%ebp, (%esp)
	call	__Z22DoActorPickClosePlayers
	movl	200(%esi), %eax
	movzwl	24(%eax), %ecx
	movl	8(%eax), %edi
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movw	%cx, 24(%esp)
	movl	8(%ebx), %ecx
	movl	%edx, 32(%esp)
	movswl	14(%ebx), %edx
	movl	%eax, 20(%esp)
	movzwl	24(%ebx), %eax
	movl	%edi, 28(%esp)
	movswl	_tilesiz+2(,%edx,4), %edi
	movw	%ax, 38(%esp)
	movzbl	21(%ebx), %eax
	testb	$-128, 12(%ebx)
	je	L881
	movsbl	_picanm+2(%edx,%edx,4), %edx
	sall	$8, %edx
	cmpb	$64, %al
	je	L924
	imull	%edi, %eax
	movl	%ecx, %edi
	addl	%eax, %eax
	movl	%eax, 40(%esp)
	addl	%edx, %eax
	subl	%eax, %edi
L883:
	movl	40(%esp), %eax
	subl	%edx, %eax
	addl	%eax, %ecx
	jmp	L886
	.p2align 4,,10
	.p2align 3
L881:
	cmpb	$64, %al
	je	L925
	imull	%edi, %eax
	sall	$2, %eax
L885:
	movl	%ecx, %edi
	subl	%eax, %edi
L886:
	addl	%edi, %ecx
	movswl	24(%esp), %edi
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	sarl	%ecx
	movl	%edi, 16(%esp)
	movl	28(%esp), %edi
	movl	%edi, 12(%esp)
	movl	32(%esp), %edi
	movl	%edi, 8(%esp)
	movl	20(%esp), %edi
	movl	%edi, 4(%esp)
	movswl	38(%esp), %edi
	movl	%edi, (%esp)
	call	__Z9FAFcanseeiiisiiis
	movl	%eax, %edi
	testb	$-128, 68(%esi)
	je	L926
L887:
	cmpw	$1, 280(%esi)
	je	L927
L888:
	addl	$44, %esp
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
L927:
	.cfi_restore_state
	movzwl	216(%esi), %eax
	subl	$6, %eax
	movw	%ax, 216(%esi)
	testw	%ax, %ax
	jg	L888
	movl	%edi, %eax
	testb	%al, %al
	je	L888
	movl	__ZZ16NullMechanicGirlsE9madhandle, %eax
	testl	%eax, %eax
	jg	L928
L889:
	movl	_randomseed, %eax
	movl	$-1171354717, %ecx
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	%ebx, %edx
	subl	_sprite, %edx
	movzwl	%ax, %edi
	movl	%edx, %eax
	mull	%ecx
	leal	4(%ebx), %eax
	movl	%edi, _randomseed
	movl	%eax, 24(%esp)
	shrl	$5, %edx
	movl	%edx, 20(%esp)
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	8(%ebx), %eax
	movl	%eax, 32(%esp)
	shrl	$5, %edx
	movl	%edx, 28(%esp)
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	movl	28(%esp), %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	20(%esp), %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	32(%esp), %eax
	movl	$8, 4(%esp)
	movl	%eax, (%esp)
	cmpl	$65535, %edi
	je	L891
	movl	%edi, %ecx
	sall	$14, %ecx
	cmpl	$806367474, %ecx
	ja	L891
	cmpl	$537936224, %ecx
	ja	L929
	cmpl	$269504974, %ecx
	movl	%ebx, %edx
	movl	24(%esp), %ecx
	jbe	L894
	movl	$565, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ16NullMechanicGirlsE9madhandle
L890:
	movl	_User(,%ebp,4), %eax
	testl	%eax, %eax
	je	L895
	movl	$0, 76(%eax)
	movl	$_s_MechanicGirlDrill, 24(%eax)
	movl	$_s_MechanicGirlDrill, 16(%eax)
	movswl	_s_MechanicGirlDrill, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L895
	andl	$63, %eax
	movb	%al, 3(%edx)
L895:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$240, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L896
	sall	$14, %eax
	movl	$-2147450879, %edx
	mull	%edx
	shrl	$28, %edx
	addl	$1, %edx
	imull	$120, %edx, %edx
L896:
	xorl	%eax, %eax
	movw	%dx, 216(%esi)
	movw	%ax, 280(%esi)
	jmp	L888
	.p2align 4,,10
	.p2align 3
L926:
	movl	%ebp, (%esp)
	call	__Z16KeepActorOnFloors
	jmp	L887
	.p2align 4,,10
	.p2align 3
L925:
	movl	%edi, %eax
	sall	$8, %eax
	jmp	L885
	.p2align 4,,10
	.p2align 3
L924:
	movl	%edi, %eax
	movl	%ecx, %edi
	sall	$7, %eax
	movl	%eax, 40(%esp)
	addl	%edx, %eax
	subl	%eax, %edi
	jmp	L883
	.p2align 4,,10
	.p2align 3
L928:
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	_MV_Installed, %ecx
	movl	-4(%edx,%eax,4), %eax
	testl	%ecx, %ecx
	je	L889
	testl	%eax, %eax
	je	L889
	movl	112(%eax), %edx
	testl	%edx, %edx
	je	L890
	jmp	L889
	.p2align 4,,10
	.p2align 3
L891:
	movl	24(%esp), %ecx
	movl	%ebx, %edx
	movl	$563, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ16NullMechanicGirlsE9madhandle
	jmp	L890
	.p2align 4,,10
	.p2align 3
L894:
	movl	$566, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ16NullMechanicGirlsE9madhandle
	jmp	L890
	.p2align 4,,10
	.p2align 3
L929:
	movl	24(%esp), %ecx
	movl	%ebx, %edx
	movl	$564, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ16NullMechanicGirlsE9madhandle
	jmp	L890
	.cfi_endproc
LFE57:
	.p2align 4
	.globl	__Z16MechanicGirlPains
	.def	__Z16MechanicGirlPains;	.scl	2;	.type	32;	.endef
__Z16MechanicGirlPains:
LFB58:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %ebx
	movl	_User(,%ebx,4), %esi
	movl	%ebx, (%esp)
	call	__Z16NullMechanicGirls
	movzwl	216(%esi), %eax
	subl	$6, %eax
	movw	%ax, 216(%esi)
	testw	%ax, %ax
	jle	L939
L931:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L939:
	.cfi_restore_state
	movl	_User(,%ebx,4), %eax
	testl	%eax, %eax
	je	L931
	movl	$0, 76(%eax)
	movl	$_s_MechanicGirlStand, 24(%eax)
	movl	$_s_MechanicGirlStand, 16(%eax)
	movswl	_s_MechanicGirlStand, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L931
	andl	$63, %eax
	movb	%al, 3(%edx)
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE58:
	.p2align 4
	.globl	__Z10DoTrashCans
	.def	__Z10DoTrashCans;	.scl	2;	.type	32;	.endef
__Z10DoTrashCans:
LFB59:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	movswl	20(%esp), %edx
	movl	_User(,%edx,4), %esi
	movl	68(%esi), %eax
	movl	140(%esi), %ebx
	testl	$2097152, %eax
	jne	L947
	testb	$-32, %al
	je	L948
L942:
	movl	_sprite, %esi
	leal	36(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	34(%ebx), %edx
	subl	%esi, %edx
	movw	%ax, 36(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 34(%ebx)
	leal	32(%ebx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 32(%ebx)
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
L947:
	.cfi_restore_state
	movl	%edx, (%esp)
	movl	%edx, 4(%esp)
	call	__Z12DoActorSlides
	movl	68(%esi), %eax
	movl	4(%esp), %edx
	testb	$-32, %al
	jne	L942
L948:
	movl	%edx, (%esp)
	call	__Z16KeepActorOnFloors
	jmp	L942
	.cfi_endproc
LFE59:
	.p2align 4
	.globl	__Z12TrashCanPains
	.def	__Z12TrashCanPains;	.scl	2;	.type	32;	.endef
__Z12TrashCanPains:
LFB60:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %esi
	movl	_User(,%esi,4), %ebx
	movl	68(%ebx), %eax
	testl	$2097152, %eax
	jne	L963
	testb	$-128, %al
	je	L964
L951:
	movzwl	216(%ebx), %eax
	subl	$6, %eax
	movw	%ax, 216(%ebx)
	testw	%ax, %ax
	jle	L965
L952:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L963:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z12DoActorSlides
	movl	68(%ebx), %eax
	testb	$-128, %al
	jne	L951
L964:
	movl	%esi, (%esp)
	call	__Z16KeepActorOnFloors
	jmp	L951
	.p2align 4,,10
	.p2align 3
L965:
	movl	_User(,%esi,4), %eax
	testl	%eax, %eax
	je	L952
	movl	$0, 76(%eax)
	movl	$_s_TrashCanStand, 24(%eax)
	movl	$_s_TrashCanStand, 16(%eax)
	movswl	_s_TrashCanStand, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L952
	andl	$63, %eax
	movb	%al, 3(%edx)
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE60:
	.p2align 4
	.globl	__Z12DoSailorGirls
	.def	__Z12DoSailorGirls;	.scl	2;	.type	32;	.endef
__Z12DoSailorGirls:
LFB61:
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
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	movswl	60(%esp), %eax
	movl	_User(,%eax,4), %ebp
	movl	%eax, 20(%esp)
	movl	140(%ebp), %ebx
	movl	%eax, (%esp)
	call	__Z22DoActorPickClosePlayers
	movl	200(%ebp), %eax
	movzwl	24(%eax), %edi
	movswl	14(%eax), %esi
	movl	8(%eax), %edx
	movzbl	21(%eax), %ecx
	movw	%di, 34(%esp)
	movswl	_tilesiz+2(,%esi,4), %edi
	testb	$-128, 12(%eax)
	je	L967
	movsbl	_picanm+2(%esi,%esi,4), %esi
	sall	$8, %esi
	cmpb	$64, %cl
	je	L1017
	imull	%edi, %ecx
	leal	(%ecx,%ecx), %edi
	leal	(%edi,%esi), %ecx
	movl	%edi, 24(%esp)
	movl	%edx, %edi
	subl	%ecx, %edi
L969:
	movl	24(%esp), %ecx
	subl	%esi, %ecx
	addl	%ecx, %edx
	jmp	L972
	.p2align 4,,10
	.p2align 3
L967:
	cmpb	$64, %cl
	je	L1018
	imull	%edi, %ecx
	sall	$2, %ecx
L971:
	movl	%edx, %edi
	subl	%ecx, %edi
L972:
	addl	%edi, %edx
	movl	4(%eax), %edi
	movl	8(%ebx), %ecx
	sarl	%edx
	movl	%edx, 24(%esp)
	movswl	14(%ebx), %edx
	movl	%edi, 28(%esp)
	movl	(%eax), %edi
	movzwl	24(%ebx), %eax
	movswl	_tilesiz+2(,%edx,4), %esi
	movw	%ax, 32(%esp)
	movzbl	21(%ebx), %eax
	testb	$-128, 12(%ebx)
	je	L973
	movsbl	_picanm+2(%edx,%edx,4), %edx
	sall	$8, %edx
	cmpb	$64, %al
	je	L1019
	imull	%esi, %eax
	movl	%ecx, %esi
	addl	%eax, %eax
	movl	%eax, 36(%esp)
	addl	%edx, %eax
	subl	%eax, %esi
L975:
	movl	36(%esp), %eax
	subl	%edx, %eax
	addl	%eax, %ecx
L978:
	addl	%esi, %ecx
	movswl	34(%esp), %esi
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	movl	%edi, 4(%esp)
	sarl	%ecx
	movl	%esi, 16(%esp)
	movl	24(%esp), %esi
	movl	%esi, 12(%esp)
	movl	28(%esp), %esi
	movl	%esi, 8(%esp)
	movswl	32(%esp), %esi
	movl	%esi, (%esp)
	call	__Z9FAFcanseeiiisiiis
	movl	%eax, %edx
	cmpw	$1, 280(%ebp)
	je	L1020
L979:
	testb	$-32, 68(%ebp)
	je	L1021
L989:
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	__Z19DoActorSectorDamages
	movl	_sprite, %esi
	leal	36(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	34(%ebx), %edx
	subl	%esi, %edx
	movw	%ax, 36(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 34(%ebx)
	leal	32(%ebx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 32(%ebx)
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
L973:
	.cfi_restore_state
	cmpb	$64, %al
	je	L1022
	imull	%esi, %eax
	sall	$2, %eax
L977:
	movl	%ecx, %esi
	subl	%eax, %esi
	jmp	L978
	.p2align 4,,10
	.p2align 3
L1020:
	movzwl	216(%ebp), %eax
	subl	$6, %eax
	movw	%ax, 216(%ebp)
	testw	%ax, %ax
	jg	L979
	testb	%dl, %dl
	je	L979
	movl	__ZZ12DoSailorGirlsE9madhandle, %eax
	testl	%eax, %eax
	jg	L1023
L980:
	movl	_randomseed, %eax
	leal	4(%ebx), %edi
	addl	$1, _krandcount
	movl	%edi, 24(%esp)
	leal	8(%ebx), %edi
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L982
	sall	$14, %eax
	movl	%eax, %esi
	cmpl	$806367474, %eax
	ja	L982
	cmpl	$537936224, %eax
	ja	L984
	movl	$-1171354717, %eax
	movl	%ebx, %edx
	subl	_sprite, %edx
	movl	24(%esp), %ecx
	mull	%edx
	subl	_sprite, %ecx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	movl	%edx, 28(%esp)
	mull	%ecx
	movl	%edi, %eax
	subl	_sprite, %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %ecx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	addl	$1, _spritechanged(,%ecx,4)
	cmpl	$269504974, %esi
	jbe	L986
	movl	28(%esp), %edx
	movl	24(%esp), %ecx
	movl	$561, %eax
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ12DoSailorGirlsE9madhandle
L981:
	movl	20(%esp), %eax
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L987
	movl	$0, 76(%eax)
	movl	$_s_SailorGirlThrow, 24(%eax)
	movl	$_s_SailorGirlThrow, 16(%eax)
	movswl	_s_SailorGirlThrow, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L987
	andl	$63, %eax
	movb	%al, 3(%edx)
L987:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$360, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L988
	sall	$14, %eax
	movl	$-1073692671, %edx
	mull	%edx
	shrl	$28, %edx
	addl	$1, %edx
	imull	$120, %edx, %edx
L988:
	xorl	%esi, %esi
	movw	%dx, 216(%ebp)
	movw	%si, 280(%ebp)
	jmp	L979
	.p2align 4,,10
	.p2align 3
L1021:
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	__Z16KeepActorOnFloors
	jmp	L989
	.p2align 4,,10
	.p2align 3
L1018:
	sall	$8, %edi
	movl	%edi, %ecx
	jmp	L971
	.p2align 4,,10
	.p2align 3
L1017:
	sall	$7, %edi
	leal	(%edi,%esi), %ecx
	movl	%edi, 24(%esp)
	movl	%edx, %edi
	subl	%ecx, %edi
	jmp	L969
	.p2align 4,,10
	.p2align 3
L1022:
	movl	%esi, %eax
	sall	$8, %eax
	jmp	L977
	.p2align 4,,10
	.p2align 3
L1019:
	movl	%esi, %eax
	movl	%ecx, %esi
	sall	$7, %eax
	movl	%eax, 36(%esp)
	addl	%edx, %eax
	subl	%eax, %esi
	jmp	L975
	.p2align 4,,10
	.p2align 3
L1023:
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	-4(%edx,%eax,4), %eax
	movl	_MV_Installed, %edx
	testl	%edx, %edx
	je	L980
	testl	%eax, %eax
	je	L980
	movl	112(%eax), %edi
	testl	%edi, %edi
	je	L981
	jmp	L980
	.p2align 4,,10
	.p2align 3
L982:
	cmpw	$2, _alreadythrew
	jle	L1024
L984:
	movl	_sprite, %esi
	movl	%edi, %edx
	movl	$-1171354717, %ecx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	24(%esp), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%ebx, %eax
	subl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	movl	24(%esp), %ecx
	movl	$560, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ12DoSailorGirlsE9madhandle
	jmp	L981
	.p2align 4,,10
	.p2align 3
L986:
	movl	28(%esp), %eax
	movl	24(%esp), %ecx
	movl	%ebx, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	$562, %eax
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ12DoSailorGirlsE9madhandle
	jmp	L981
L1024:
	movl	20(%esp), %eax
	call	__Z14ActorCoughItems.isra.0
	movl	_sprite, %esi
	movl	%edi, %edx
	movl	$-1171354717, %ecx
	addw	$1, _alreadythrew
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	24(%esp), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%ebx, %eax
	subl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	movl	24(%esp), %ecx
	movl	$559, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ12DoSailorGirlsE9madhandle
	jmp	L981
	.cfi_endproc
LFE61:
	.p2align 4
	.globl	__Z14NullSailorGirls
	.def	__Z14NullSailorGirls;	.scl	2;	.type	32;	.endef
__Z14NullSailorGirls:
LFB62:
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
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movswl	64(%esp), %ebp
	movl	_User(,%ebp,4), %esi
	movl	140(%esi), %ebx
	movl	%ebp, (%esp)
	call	__Z22DoActorPickClosePlayers
	movl	200(%esi), %eax
	movzwl	24(%eax), %ecx
	movl	8(%eax), %edi
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movw	%cx, 24(%esp)
	movl	8(%ebx), %ecx
	movl	%edx, 32(%esp)
	movswl	14(%ebx), %edx
	movl	%eax, 20(%esp)
	movzwl	24(%ebx), %eax
	movl	%edi, 28(%esp)
	movswl	_tilesiz+2(,%edx,4), %edi
	movw	%ax, 38(%esp)
	movzbl	21(%ebx), %eax
	testb	$-128, 12(%ebx)
	je	L1026
	movsbl	_picanm+2(%edx,%edx,4), %edx
	sall	$8, %edx
	cmpb	$64, %al
	je	L1070
	imull	%edi, %eax
	movl	%ecx, %edi
	addl	%eax, %eax
	movl	%eax, 40(%esp)
	addl	%edx, %eax
	subl	%eax, %edi
L1028:
	movl	40(%esp), %eax
	subl	%edx, %eax
	addl	%eax, %ecx
	jmp	L1031
	.p2align 4,,10
	.p2align 3
L1026:
	cmpb	$64, %al
	je	L1071
	imull	%edi, %eax
	sall	$2, %eax
L1030:
	movl	%ecx, %edi
	subl	%eax, %edi
L1031:
	addl	%edi, %ecx
	movswl	24(%esp), %edi
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	sarl	%ecx
	movl	%edi, 16(%esp)
	movl	28(%esp), %edi
	movl	%edi, 12(%esp)
	movl	32(%esp), %edi
	movl	%edi, 8(%esp)
	movl	20(%esp), %edi
	movl	%edi, 4(%esp)
	movswl	38(%esp), %edi
	movl	%edi, (%esp)
	call	__Z9FAFcanseeiiisiiis
	movl	%eax, %edi
	testb	$-128, 68(%esi)
	je	L1072
L1032:
	cmpw	$1, 280(%esi)
	je	L1073
L1033:
	addl	$44, %esp
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
L1073:
	.cfi_restore_state
	movzwl	216(%esi), %eax
	subl	$6, %eax
	movw	%ax, 216(%esi)
	testw	%ax, %ax
	jg	L1033
	movl	%edi, %eax
	testb	%al, %al
	je	L1033
	movl	__ZZ14NullSailorGirlsE9madhandle, %eax
	testl	%eax, %eax
	jg	L1074
L1034:
	movl	_randomseed, %eax
	leal	4(%ebx), %ecx
	addl	$1, _krandcount
	leal	8(%ebx), %edi
	movl	%ecx, 20(%esp)
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1036
	sall	$14, %eax
	movl	%eax, %ecx
	cmpl	$806367474, %eax
	ja	L1036
	cmpl	$537936224, %eax
	ja	L1038
	movl	$-1171354717, %eax
	movl	%ebx, %edx
	subl	_sprite, %edx
	mull	%edx
	movl	20(%esp), %eax
	subl	_sprite, %eax
	shrl	$5, %edx
	movl	%edx, 24(%esp)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	%edi, %eax
	subl	_sprite, %eax
	shrl	$5, %edx
	movl	%edx, 28(%esp)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	cmpl	$269504974, %ecx
	jbe	L1040
	movl	28(%esp), %ecx
	movl	24(%esp), %edx
	movl	$561, %eax
	addl	$1, _spritechanged(,%ecx,4)
	movl	20(%esp), %ecx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ14NullSailorGirlsE9madhandle
L1035:
	movl	_User(,%ebp,4), %eax
	testl	%eax, %eax
	je	L1041
	movl	$0, 76(%eax)
	movl	$_s_SailorGirlThrow, 24(%eax)
	movl	$_s_SailorGirlThrow, 16(%eax)
	movswl	_s_SailorGirlThrow, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L1041
	andl	$63, %eax
	movb	%al, 3(%edx)
L1041:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$360, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1042
	sall	$14, %eax
	movl	$-1073692671, %edx
	mull	%edx
	shrl	$28, %edx
	addl	$1, %edx
	imull	$120, %edx, %edx
L1042:
	xorl	%eax, %eax
	movw	%dx, 216(%esi)
	movw	%ax, 280(%esi)
	jmp	L1033
	.p2align 4,,10
	.p2align 3
L1072:
	movl	%ebp, (%esp)
	call	__Z16KeepActorOnFloors
	jmp	L1032
	.p2align 4,,10
	.p2align 3
L1071:
	movl	%edi, %eax
	sall	$8, %eax
	jmp	L1030
	.p2align 4,,10
	.p2align 3
L1070:
	movl	%edi, %eax
	movl	%ecx, %edi
	sall	$7, %eax
	movl	%eax, 40(%esp)
	addl	%edx, %eax
	subl	%eax, %edi
	jmp	L1028
	.p2align 4,,10
	.p2align 3
L1074:
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	_MV_Installed, %ecx
	movl	-4(%edx,%eax,4), %eax
	testl	%ecx, %ecx
	je	L1034
	testl	%eax, %eax
	je	L1034
	movl	112(%eax), %edx
	testl	%edx, %edx
	je	L1035
	jmp	L1034
	.p2align 4,,10
	.p2align 3
L1036:
	cmpw	$2, __ZZ14NullSailorGirlsE12alreadythrew
	jle	L1075
L1038:
	movl	%edi, %edx
	subl	_sprite, %edx
	movl	$-1171354717, %ecx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	20(%esp), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%ebx, %eax
	subl	_sprite, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	movl	20(%esp), %ecx
	movl	$560, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ14NullSailorGirlsE9madhandle
	jmp	L1035
	.p2align 4,,10
	.p2align 3
L1040:
	movl	28(%esp), %eax
	movl	20(%esp), %ecx
	movl	%ebx, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	24(%esp), %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$562, %eax
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ14NullSailorGirlsE9madhandle
	jmp	L1035
L1075:
	movl	%ebp, %eax
	call	__Z14ActorCoughItems.isra.0
	movl	%edi, %edx
	subl	_sprite, %edx
	movl	$-1171354717, %ecx
	addw	$1, __ZZ14NullSailorGirlsE12alreadythrew
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	20(%esp), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%ebx, %eax
	subl	_sprite, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	movl	20(%esp), %ecx
	movl	$559, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ14NullSailorGirlsE9madhandle
	jmp	L1035
	.cfi_endproc
LFE62:
	.p2align 4
	.globl	__Z14SailorGirlPains
	.def	__Z14SailorGirlPains;	.scl	2;	.type	32;	.endef
__Z14SailorGirlPains:
LFB63:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %ebx
	movl	_User(,%ebx,4), %esi
	movl	%ebx, (%esp)
	call	__Z14NullSailorGirls
	movzwl	216(%esi), %eax
	subl	$6, %eax
	movw	%ax, 216(%esi)
	testw	%ax, %ax
	jle	L1085
L1077:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1085:
	.cfi_restore_state
	movl	_User(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1077
	movl	$0, 76(%eax)
	movl	$_s_SailorGirlStand, 24(%eax)
	movl	$_s_SailorGirlStand, 16(%eax)
	movswl	_s_SailorGirlStand, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L1077
	andl	$63, %eax
	movb	%al, 3(%edx)
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE63:
	.p2align 4
	.globl	__Z16PachinkoCheckWins
	.def	__Z16PachinkoCheckWins;	.scl	2;	.type	32;	.endef
__Z16PachinkoCheckWins:
LFB64:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	xorl	%ecx, %ecx
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -20
	movswl	36(%esp), %ebx
	movl	%esi, 20(%esp)
	movl	_User(,%ebx,4), %eax
	.cfi_offset 6, -16
	imull	$44, %ebx, %esi
	addl	_sprite, %esi
	movw	%cx, 216(%eax)
	testb	$64, 42(%esi)
	je	L1112
L1087:
	movl	16(%esp), %ebx
	movl	20(%esp), %esi
	xorl	%eax, %eax
	addl	$32, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1112:
	.cfi_restore_state
	movl	_randomseed, %eax
	addl	$2, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1088
	sall	$14, %eax
	cmpl	$967426224, %eax
	ja	L1088
	cmpb	$0, _Pachinko_Win_Cheat
	je	L1087
L1088:
	movl	%edi, 24(%esp)
	movl	%ebp, 28(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movswl	40(%esi), %eax
	call	__Z15ComboSwitchTestss.constprop.0
	testb	%al, %al
	jne	L1113
L1089:
	movl	%ebx, %eax
	leal	8(%esi), %edi
	movl	$-1171354717, %ebx
	call	__Z14ActorCoughItems.isra.0
	movl	_sprite, %ebp
	movl	%edi, %edx
	leal	4(%esi), %ecx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%ebx
	movl	$419, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movl	%edi, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_sprite, %edi
	leal	42(%esi), %edx
	movzwl	_headspritestat+4, %ebp
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$64, 42(%esi)
	cmpw	$-1, %bp
	jne	L1090
	jmp	L1111
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1091:
	cmpw	$-1, %bp
	je	L1111
L1090:
	movswl	%bp, %ebx
	imull	$44, %ebx, %ecx
	movzwl	_nextspritestat(%ebx,%ebx), %ebp
	addl	%edi, %ecx
	cmpw	$9997, 38(%ecx)
	jne	L1091
	movzwl	40(%ecx), %eax
	cmpw	%ax, 32(%esi)
	jne	L1091
	movl	_User(,%ebx,4), %eax
	movl	$-1171354717, %edx
	movl	%eax, 12(%esp)
	leal	16(%ecx), %eax
	subl	%edi, %eax
	mull	%edx
	movl	12(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$360, %edx
	movb	$-90, 16(%ecx)
	movw	%dx, 216(%eax)
	movl	_User(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1091
	movl	$0, 76(%eax)
	movl	$_s_PachinkoLightOperate, 24(%eax)
	movl	$_s_PachinkoLightOperate, 16(%eax)
	movswl	_s_PachinkoLightOperate, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L1091
	andl	$63, %eax
	movb	%al, 3(%edx)
	jmp	L1091
	.p2align 4,,10
	.p2align 3
L1111:
	movl	24(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	28(%esp), %ebp
	.cfi_restore 5
	xorl	%eax, %eax
	movl	16(%esp), %ebx
	movl	20(%esp), %esi
	addl	$32, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1113:
	.cfi_restore_state
	movl	$1, 8(%esp)
	movswl	40(%esi), %eax
	movl	%eax, 4(%esp)
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	movl	%eax, (%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	jmp	L1089
	.cfi_endproc
LFE64:
	.section .rdata,"dr"
LC14:
	.ascii "Momentary\0"
LC15:
	.ascii "Toggle\0"
	.text
	.p2align 4
	.globl	__Z12MNU_DrawMenuv
	.def	__Z12MNU_DrawMenuv;	.scl	2;	.type	32;	.endef
__Z12MNU_DrawMenuv:
LFB65:
	.cfi_startproc
	subl	$76, %esp
	.cfi_def_cfa_offset 80
	movl	_cust_callback, %eax
	testl	%eax, %eax
	je	L1115
	movl	_cust_callback_item, %edx
	movl	%edx, 4(%esp)
	movl	_cust_callback_call, %edx
	movl	%edx, (%esp)
	call	*%eax
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1115:
	.cfi_restore_state
	movl	%ebx, 60(%esp)
	.cfi_offset 3, -20
	movl	_currentmenu, %ebx
	movl	%edi, 68(%esp)
	.cfi_offset 7, -12
	movl	12(%ebx), %edi
	testl	%edi, %edi
	je	L1165
L1117:
	movl	%esi, 64(%esp)
	.cfi_offset 6, -16
	movl	8(%ebx), %esi
	testl	%esi, %esi
	je	L1118
	movl	_xdim, %eax
	movl	_ydim, %edx
	subl	$1, %eax
	js	L1119
	subl	$1, %edx
	js	L1119
	movl	4(%ebx), %esi
	movl	%edx, 32(%esp)
	movl	$65536, %ecx
	movl	%eax, 28(%esp)
	movl	$0, 24(%esp)
	subl	$3, %esi
	movl	$0, 20(%esp)
	sall	$16, %esi
	movl	$26, 16(%esp)
	movl	%esi, %edx
	movl	$0, 12(%esp)
	movsbl	20(%ebx), %eax
	movl	$2427, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$655360, %eax
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
	movl	_currentmenu, %ebx
	movl	8(%ebx), %esi
L1119:
	leal	58(%esp), %ecx
	leal	56(%esp), %edx
	movl	%esi, %eax
	call	__Z22MNU_MeasureStringLargePKcPsS1_
	movswl	56(%esp), %eax
	movl	$320, %ecx
	movswl	4(%ebx), %edx
	movl	$16, 4(%esp)
	subl	%eax, %ecx
	movl	$1, (%esp)
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	movl	%esi, %ecx
	sarl	%eax
	cwtl
	call	__Z14MNU_DrawStringssPKcss
	movl	_currentmenu, %ebx
	movl	12(%ebx), %edi
L1120:
	testl	%edi, %edi
	je	L1162
	movl	(%edi), %edx
	testl	%edx, %edx
	je	L1125
	movl	%ebp, 72(%esp)
	.cfi_offset 5, -8
	jmp	L1124
	.p2align 4,,10
	.p2align 3
L1141:
	movl	56(%edi), %edx
	addl	$56, %edi
	testl	%edx, %edx
	je	L1166
L1124:
	movswl	36(%edi), %eax
	testw	%ax, %ax
	je	L1126
	movl	20(%edi), %ecx
	movl	32(%edi), %ebx
	movl	28(%edi), %ebp
	cmpl	$3, %edx
	je	L1167
	testl	%ecx, %ecx
	je	L1138
	testb	$8, 4(%edi)
	jne	L1139
	movswl	_MenuTextShade, %eax
L1140:
	movl	%eax, (%esp)
	movswl	%bp, %ebp
	movswl	%bx, %edx
	movl	$16, 4(%esp)
	movl	%ebp, %eax
	call	__Z14MNU_DrawStringssPKcss
	xorl	%eax, %eax
	movw	%ax, _MenuTextShade
L1126:
	cmpl	$2, (%edi)
	jne	L1141
	movl	%edi, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	addl	$56, %edi
	call	__Z12MNU_DoSlidersP9MENU_ITEMh
	movl	(%edi), %edx
	testl	%edx, %edx
	jne	L1124
L1166:
	movl	_currentmenu, %ebx
	movl	72(%esp), %ebp
	.cfi_restore 5
	movl	12(%ebx), %edi
L1125:
	movswl	32(%ebx), %eax
	imull	$56, %eax, %eax
	addl	%edi, %eax
	orl	$4, 4(%eax)
	call	__ZL12MNU_DrawItemP9MENU_ITEM
	movl	_currentmenu, %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	L1162
	movl	$0, 4(%esp)
	movl	$2, (%esp)
	call	*%eax
	movl	60(%esp), %ebx
	.cfi_restore 3
	movl	64(%esp), %esi
	.cfi_restore 6
	movl	68(%esp), %edi
	.cfi_restore 7
	addl	$76, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1165:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	cmpw	$0, 16(%ebx)
	jne	L1117
	movl	60(%esp), %ebx
	.cfi_restore 3
	movl	68(%esp), %edi
	.cfi_restore 7
	addl	$76, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1118:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movswl	16(%ebx), %eax
	leal	-1(%eax), %edx
	cmpw	$30718, %dx
	ja	L1120
	movl	_xdim, %edx
	movl	_ydim, %ecx
	subl	$1, %edx
	js	L1120
	subl	$1, %ecx
	js	L1120
	movl	4(%ebx), %edi
	movl	(%ebx), %esi
	movl	%ecx, 32(%esp)
	movl	$65536, %ecx
	movl	%edx, 28(%esp)
	movl	$0, 24(%esp)
	sall	$16, %edi
	sall	$16, %esi
	movl	$0, 20(%esp)
	movl	$10, 16(%esp)
	movl	$0, 12(%esp)
	movsbl	20(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%esi, %eax
	movl	%edx, 8(%esp)
	movl	%edi, %edx
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
	movl	_currentmenu, %ebx
	movl	12(%ebx), %edi
	jmp	L1120
	.p2align 4,,10
	.p2align 3
L1139:
	.cfi_offset 5, -8
	movl	$20, %edx
	movl	$20, %eax
	movw	%dx, _MenuTextShade
	jmp	L1140
	.p2align 4,,10
	.p2align 3
L1167:
	movl	4(%edi), %eax
	movl	$0, 40(%esp)
	andl	$8, %eax
	negl	%eax
	sbbl	%eax, %eax
	andl	$20, %eax
	movw	%ax, 44(%esp)
	movl	12(%edi), %eax
	cmpl	$4, %eax
	jne	L1129
	cmpb	$0, _gs+15
	movl	$LC14, %edx
	movl	$LC15, %esi
	cmove	%esi, %edx
	movl	%edx, 40(%esp)
L1129:
	movzwl	_buttonsettings(%eax,%eax), %eax
	movl	_ydim, %esi
	movw	%ax, 46(%esp)
	leal	-1(%esi), %eax
	movl	_xdim, %esi
	movl	%eax, 52(%esp)
	leal	-1(%esi), %edx
	movl	%ebx, %esi
	sall	$16, %esi
	movl	%edx, 36(%esp)
	shrl	$31, %edx
	movl	%esi, 48(%esp)
	movl	%eax, %esi
	shrl	$31, %eax
	orl	%edx, %eax
	testl	%ecx, %ecx
	je	L1130
	movsbl	44(%esp), %edx
	cmpb	$0, 46(%esp)
	je	L1131
	testb	%al, %al
	jne	L1133
	movl	36(%esp), %eax
	movl	%esi, 32(%esp)
	movl	$0, 24(%esp)
	movl	%eax, 28(%esp)
	movsbl	%dl, %eax
	movl	$0, 20(%esp)
	movl	$10, 16(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$2817, 4(%esp)
L1163:
	movl	$0, (%esp)
	movl	48(%esp), %edx
	movl	$65536, %ecx
	movl	$9830400, %eax
	call	_rotatesprite_.part.0.constprop.0
	movl	20(%edi), %ecx
L1133:
	movswl	44(%esp), %edx
	movl	$16, 4(%esp)
	movswl	%bp, %eax
	movl	%edx, (%esp)
	movw	%dx, _MenuTextShade
	movswl	%bx, %edx
	call	__Z14MNU_DrawStringssPKcss
	movl	40(%esp), %ecx
	testl	%ecx, %ecx
	je	L1135
	movswl	_MenuTextShade, %edx
	movzwl	_tilesiz+11264, %eax
	movl	$16, 4(%esp)
	movl	%edx, (%esp)
	addw	$156, %ax
	movswl	%bx, %edx
	cwtl
	call	__Z14MNU_DrawStringssPKcss
L1135:
	xorl	%ecx, %ecx
	movw	%cx, _MenuTextShade
	jmp	L1126
	.p2align 4,,10
	.p2align 3
L1138:
	cmpl	$30719, %eax
	ja	L1126
	movl	_xdim, %ecx
	movl	_ydim, %esi
	subl	$1, %ecx
	js	L1126
	subl	$1, %esi
	js	L1126
	movl	%esi, 32(%esp)
	sall	$16, %ebx
	sall	$16, %ebp
	movl	%ecx, 28(%esp)
	movl	%ebx, %edx
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$10, 16(%esp)
	movl	$0, 12(%esp)
	movsbl	38(%edi), %ecx
	movl	%eax, 4(%esp)
	movl	%ebp, %eax
	movl	%ecx, 8(%esp)
	movl	$65536, %ecx
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
	jmp	L1126
	.p2align 4,,10
	.p2align 3
L1162:
	.cfi_restore 5
	movl	60(%esp), %ebx
	.cfi_restore 3
	movl	64(%esp), %esi
	.cfi_restore 6
	movl	68(%esp), %edi
	.cfi_restore 7
	addl	$76, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1131:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	testb	%al, %al
	jne	L1133
	movl	52(%esp), %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	%eax, 32(%esp)
	movl	36(%esp), %eax
	movl	$10, 16(%esp)
	movl	%eax, 28(%esp)
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$2816, 4(%esp)
	jmp	L1163
	.p2align 4,,10
	.p2align 3
L1130:
	movl	%ebp, %ebx
	sall	$16, %ebx
	cmpb	$0, 46(%esp)
	jne	L1168
	testb	%al, %al
	jne	L1126
	movl	52(%esp), %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	%eax, 32(%esp)
	movl	36(%esp), %eax
	movl	$10, 16(%esp)
	movl	%eax, 28(%esp)
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	$2816, 4(%esp)
L1164:
	movl	$0, (%esp)
	movl	48(%esp), %edx
	movl	$65536, %ecx
	movl	%ebx, %eax
	call	_rotatesprite_.part.0.constprop.0
	movswl	36(%edi), %ecx
	cmpl	$30719, %ecx
	ja	L1126
	movswl	_tilesiz+11264, %eax
	movl	_ydim, %edx
	leal	4(%ebp,%eax), %ebx
	movl	_xdim, %eax
	sall	$16, %ebx
	subl	$1, %eax
	js	L1126
	subl	$1, %edx
	js	L1126
	movl	%edx, 32(%esp)
	movl	48(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%ebx, %eax
	movl	%ecx, 4(%esp)
	movl	$65536, %ecx
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$10, 16(%esp)
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
	jmp	L1126
	.p2align 4,,10
	.p2align 3
L1168:
	testb	%al, %al
	jne	L1126
	movl	52(%esp), %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	%eax, 32(%esp)
	movl	36(%esp), %eax
	movl	$10, 16(%esp)
	movl	%eax, 28(%esp)
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	$2817, 4(%esp)
	jmp	L1164
	.cfi_endproc
LFE65:
	.p2align 4
	.globl	__Z10SetFadeAmtP12PLAYERstructsh
	.def	__Z10SetFadeAmtP12PLAYERstructsh;	.scl	2;	.type	32;	.endef
__Z10SetFadeAmtP12PLAYERstructsh:
LFB77:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%ebx, 28(%esp)
	cmpw	$0, 23300(%eax)
	.cfi_offset 3, -20
	je	L1170
	movzbl	23303(%eax), %ebx
	cmpb	%cl, %bl
	je	L1169
	cmpb	$1, %bl
	je	L1169
L1170:
	movl	%eax, %ebx
	movswl	_screenpeek, %eax
	movl	%esi, 32(%esp)
	.cfi_offset 6, -16
	movl	%ecx, %esi
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	movl	%edx, %ebp
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	cmpl	%eax, %ebx
	je	L1214
L1172:
	leal	999(%ebp), %eax
	cmpw	$848, %ax
	ja	L1175
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	movl	$50, %edi
	movw	%di, 23300(%ebx)
L1176:
	xorl	%edx, %edx
	movl	%esi, %eax
	leal	23304(%ebx), %esi
	movb	%al, 23303(%ebx)
	movl	%esi, %eax
	movw	%dx, 23298(%ebx)
	movl	%esi, 24(%esp)
	call	__Z18GetPaletteFromVESAPh
	movzbl	23303(%ebx), %eax
	movl	%esi, %ecx
	movl	%ebx, 12(%esp)
	movl	_rendmode, %edi
	movw	%bp, 20(%esp)
	leal	(%eax,%eax,2), %eax
	movzbl	_palette_data(%eax), %edx
	movl	%edi, 16(%esp)
	movb	%dl, 9(%esp)
	movzbl	_palette_data+1(%eax), %edx
	movb	%dl, 10(%esp)
	movzbl	_palette_data+2(%eax), %edx
	movswl	23300(%ebx), %eax
	movb	%dl, 11(%esp)
	movw	%ax, 22(%esp)
	addl	$2, %eax
	leal	(%eax,%eax), %edx
	sall	$3, %eax
	cmpl	$3, %edi
	movl	%edx, %edi
	cmovl	%eax, %edi
	leal	24072(%ebx), %eax
	xorl	%esi, %esi
	movl	%eax, 4(%esp)
	jmp	L1200
	.p2align 4,,10
	.p2align 3
L1216:
	cmpb	9(%esp), %bl
	jnb	L1184
	movzbl	9(%esp), %eax
	cmpb	%dl, %al
	cmovbe	%eax, %edx
	movb	%dl, (%ecx)
L1186:
	movl	$1, %esi
L1188:
	movl	4(%esp), %eax
	addl	$1, %ecx
	cmpl	%eax, %ecx
	je	L1215
L1200:
	movzbl	(%ecx), %eax
	movl	$255, %ebp
	leal	(%eax,%edi), %edx
	movl	%eax, %ebx
	cmpl	%ebp, %edx
	cmovg	%ebp, %edx
	subl	%edi, %eax
	movl	$0, %ebp
	cmovs	%ebp, %eax
	testl	%esi, %esi
	je	L1216
	cmpl	$1, %esi
	je	L1217
	cmpl	$2, %esi
	je	L1218
	movl	4(%esp), %eax
	addl	$1, %ecx
	addl	$1, %esi
	cmpl	%eax, %ecx
	jne	L1200
L1215:
	movswl	_screenpeek, %eax
	movl	12(%esp), %ebx
	movzwl	20(%esp), %ebp
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	cmpl	%eax, %ebx
	je	L1219
L1213:
	movl	32(%esp), %esi
	.cfi_restore 6
	movl	36(%esp), %edi
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
L1169:
	movl	28(%esp), %ebx
	addl	$44, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L1175:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	cmpw	$-1000, %bp
	jge	L1177
	leal	1000(%ebp), %eax
	negl	%eax
	movzwl	%ax, %eax
	imull	$43691, %eax, %eax
	shrl	$17, %eax
	movw	%ax, 23300(%ebx)
	cmpw	$-1002, %bp
	jl	L1220
L1178:
	xorl	%esi, %esi
	movw	%si, 23300(%ebx)
	movl	32(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	40(%esp), %ebp
	.cfi_restore 5
	movl	28(%esp), %ebx
	addl	$44, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L1214:
	.cfi_restore_state
	cmpl	$2, _rendmode
	jle	L1221
	call	_videoFadePalette.constprop.0
L1174:
	cmpw	$0, 23300(%ebx)
	jg	L1172
	movswl	_screenpeek, %eax
	leal	(%eax,%eax,2), %eax
	sall	$8, %eax
	addl	$_ppalette, %eax
	call	__Z18GetPaletteFromVESAPh
	jmp	L1172
L1177:
	movl	%ebp, %ecx
	movl	%edi, 36(%esp)
	negw	%cx
	cmovs	%ebp, %ecx
	cmpw	$-6, %bp
	.cfi_remember_state
	.cfi_offset 7, -12
	jbe	L1179
	leal	10(%ecx), %eax
	movzwl	%ax, %eax
	imull	$43691, %eax, %eax
	shrl	$17, %eax
	movw	%ax, 23300(%ebx)
	jmp	L1176
L1221:
	.cfi_restore_state
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	movzbl	_gs+13, %edi
	movl	$_palette_data, %edx
	xorl	%eax, %eax
	call	_paletteSetColorTable
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edi, %eax
	movzbl	%al, %eax
	call	_videoSetPalette
	movl	36(%esp), %edi
	.cfi_restore 7
	jmp	L1174
	.p2align 4,,10
	.p2align 3
L1184:
	.cfi_offset 7, -12
	cmpb	%bl, 9(%esp)
	jnb	L1186
	movzbl	9(%esp), %ebx
	cmpb	%al, %bl
	cmovnb	%ebx, %eax
	movb	%al, (%ecx)
	jmp	L1186
	.p2align 4,,10
	.p2align 3
L1217:
	cmpb	10(%esp), %bl
	jnb	L1191
	movzbl	10(%esp), %eax
	cmpb	%dl, %al
	cmovbe	%eax, %edx
	movb	%dl, (%ecx)
L1193:
	movl	$2, %esi
	jmp	L1188
	.p2align 4,,10
	.p2align 3
L1218:
	cmpb	11(%esp), %bl
	jnb	L1196
	movzbl	11(%esp), %eax
	cmpb	%dl, %al
	cmovbe	%eax, %edx
	movb	%dl, (%ecx)
L1198:
	xorl	%esi, %esi
	jmp	L1188
	.p2align 4,,10
	.p2align 3
L1191:
	movzbl	10(%esp), %edx
	cmpb	%bl, %dl
	jnb	L1193
	cmpb	%al, %dl
	cmovnb	%edx, %eax
	movb	%al, (%ecx)
	jmp	L1193
	.p2align 4,,10
	.p2align 3
L1196:
	movzbl	11(%esp), %edx
	cmpb	%bl, %dl
	jnb	L1198
	cmpb	%al, %dl
	cmovnb	%edx, %eax
	xorl	%esi, %esi
	movb	%al, (%ecx)
	jmp	L1188
L1219:
	cmpl	$2, 16(%esp)
	jle	L1222
	movzwl	22(%esp), %edi
	movl	%edi, %eax
	negw	%ax
	cmovs	%edi, %eax
	xorl	%edx, %edx
	cmpw	$31, %ax
	jbe	L1223
L1203:
	movzbl	__ZL8faderamp.lto_priv.0(,%edx,4), %ecx
L1204:
	movzbl	11(%esp), %esi
	movzbl	10(%esp), %edx
	movl	%ecx, (%esp)
	movzbl	9(%esp), %eax
	movl	%esi, %ecx
	call	_videoFadePalette
L1202:
	cmpw	$-1000, %bp
	jge	L1213
	movl	$1000, %eax
	movw	%ax, 23300(%ebx)
	movl	32(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	36(%esp), %edi
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
	jmp	L1169
L1222:
	.cfi_restore_state
	movl	24(%esp), %edx
	xorl	%eax, %eax
	call	_paletteSetColorTable
	movl	$6, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	_videoSetPalette
	jmp	L1202
L1223:
	movl	$16, %ecx
	cmpw	$1, %ax
	jbe	L1204
	movzwl	%ax, %eax
	movl	$32, %edx
	subl	%eax, %edx
	jmp	L1203
L1220:
	.cfi_restore 7
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	jmp	L1176
L1179:
	movl	%ecx, %edx
	movl	$3, %edi
	movl	%ecx, %eax
	sarw	$15, %dx
	idivw	%di
	movw	%ax, 23300(%ebx)
	cmpw	$2, %cx
	ja	L1180
	movl	36(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L1178
	.p2align 4,,10
	.p2align 3
L1180:
	.cfi_restore_state
	testw	%bp, %bp
	jle	L1176
	movl	$3, %ecx
	movw	%cx, 23300(%ebx)
	jmp	L1176
	.cfi_endproc
LFE77:
	.section .rdata,"dr"
LC16:
	.ascii "Axis %d\0"
LC17:
	.ascii "Page %d / %d\0"
	.text
	.p2align 4
	.globl	__ZL26MNU_JoystickAxesInitialiseP9MENU_ITEM.part.0.lto_priv.0
	.def	__ZL26MNU_JoystickAxesInitialiseP9MENU_ITEM.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL26MNU_JoystickAxesInitialiseP9MENU_ITEM.part.0.lto_priv.0:
LFB80:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$16, %esp
	.cfi_def_cfa_offset 28
	movl	__ZL16JoystickAxisPage.lto_priv.0, %ebx
	testl	%ebx, %ebx
	js	L1225
	movl	_joystick+16, %esi
	movl	%esi, %ecx
	cmpl	%esi, %ebx
	jl	L1226
L1225:
	movl	__ZL10controller.lto_priv.0, %edx
	xorl	%ebx, %ebx
	movl	$0, __ZL16JoystickAxisPage.lto_priv.0
	testl	%edx, %edx
	je	L1228
	movl	_joystick+16, %ecx
	xorl	%edx, %edx
L1227:
	movl	__ZZ10joyGetNameE11axisStrings.lto_priv.0(,%ebx,4), %eax
	movl	%ecx, %esi
	movl	%edx, %ebx
L1229:
	movl	%eax, 4(%esp)
	addl	$1, %ebx
	movl	$__ZL16JoystickAxisName.lto_priv.0, (%esp)
	call	_strcpy
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$LC17, 4(%esp)
	movl	$__ZL20JoystickAxisPageName.lto_priv.0, (%esp)
	call	_sprintf
	movl	__ZL16JoystickAxisPage.lto_priv.0, %eax
	xorl	%ecx, %ecx
	movl	_JoystickAnalogAxes(,%eax,4), %esi
	leal	-1(%esi), %edx
	cmpl	$5, %edx
	ja	L1231
	movl	_CSWTCH.797(,%edx,4), %ecx
L1231:
	movl	_JoystickAnalogScale(,%eax,4), %edx
	movl	%ecx, _slidersettings+76
	sarl	$13, %edx
	movl	%edx, _slidersettings+72
	movl	_JoystickAnalogDead(,%eax,4), %edx
	movl	_JoystickAnalogSaturate(,%eax,4), %eax
	sarl	$10, %edx
	sarl	$10, %eax
	movl	%edx, _slidersettings+80
	movl	%eax, _slidersettings+84
	addl	$16, %esp
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
L1226:
	.cfi_restore_state
	xorl	%eax, %eax
	cmpl	%ebx, %esi
	jb	L1229
	movl	__ZL10controller.lto_priv.0, %eax
	testl	%eax, %eax
	je	L1228
	movl	%ebx, %edx
	cmpl	$5, %ebx
	jle	L1227
	movl	%ebx, (%esp)
	call	_SDL_GameControllerGetStringForAxis
	movl	_joystick+16, %esi
	movl	__ZL16JoystickAxisPage.lto_priv.0, %ebx
	jmp	L1229
	.p2align 4,,10
	.p2align 3
L1228:
	movl	%ebx, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	$__ZZ10joyGetNameE3tmp.lto_priv.0, (%esp)
	call	___mingw_sprintf
	movl	_joystick+16, %esi
	movl	$__ZZ10joyGetNameE3tmp.lto_priv.0, %eax
	movl	__ZL16JoystickAxisPage.lto_priv.0, %ebx
	jmp	L1229
	.cfi_endproc
LFE80:
	.section .rdata,"dr"
LC18:
	.ascii "game%d.sav\0"
LC19:
	.ascii "Level %d, Skill %d\0"
	.text
	.p2align 4
	.globl	__Z16MNU_LoadSaveMove8UserCallP9MENU_ITEM.part.0
	.def	__Z16MNU_LoadSaveMove8UserCallP9MENU_ITEM.part.0;	.scl	2;	.type	32;	.endef
__Z16MNU_LoadSaveMove8UserCallP9MENU_ITEM.part.0:
LFB82:
	.cfi_startproc
	subl	$124, %esp
	.cfi_def_cfa_offset 128
	movl	_currentmenu, %eax
	movl	%esi, 112(%esp)
	.cfi_offset 6, -16
	movzwl	32(%eax), %esi
	movzwl	_LastSaveNum, %eax
	cmpw	$99, %ax
	je	L1286
L1237:
	cmpw	%ax, %si
	jne	L1287
L1241:
	movw	%si, _LastSaveNum
	cmpb	$0, _MenuInputMode
	je	L1236
	movl	_currentmenu, %edx
	movswl	32(%edx), %eax
	imull	$56, %eax, %eax
	addl	12(%edx), %eax
	cmpb	$0, _SavePrompt
	je	L1248
	movzbl	_keystatus+21, %edx
	orb	_keystatus+28, %dl
	je	L1249
	movl	44(%eax), %eax
	movl	112(%esp), %esi
	movb	$0, _keystatus+21
	movb	$0, _keystatus+28
	movb	$0, _SavePrompt
	addl	$124, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	*%eax
	.p2align 4,,10
	.p2align 3
L1256:
	.cfi_def_cfa_offset 128
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$_BackupSaveGameDescr, 4(%esp)
	movl	%edi, (%esp)
	call	_strcpy
	movb	$0, _MenuInputMode
	xorl	%eax, %eax
	movb	$0, _KB_LastScan
L1261:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1261
	.p2align 4
	.p2align 3
L1284:
	movl	108(%esp), %ebx
	.cfi_restore 3
	movl	116(%esp), %edi
	.cfi_restore 7
	movl	120(%esp), %ebp
	.cfi_restore 5
L1236:
	movl	112(%esp), %esi
	addl	$124, %esp
	.cfi_remember_state
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1287:
	.cfi_restore_state
	movl	%ebx, 108(%esp)
	.cfi_offset 3, -20
	leal	28(%esp), %ebx
	movl	%edi, 116(%esp)
	.cfi_offset 7, -12
	movswl	%si, %edi
	movl	%ebx, (%esp)
	movl	%edi, 8(%esp)
	movl	$LC18, 4(%esp)
	call	_sprintf
	movl	%ebx, %eax
	xorl	%edx, %edx
	call	_kopen4load.part.0
	movl	%eax, %ebx
	cmpl	$-1, %eax
	je	L1245
	movl	%ebx, (%esp)
	leal	24(%esp), %eax
	movl	$1, %ecx
	movl	$4, %edx
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	_GameVersion, %eax
	cmpl	%eax, 24(%esp)
	jne	L1288
	movl	%ebx, (%esp)
	leal	(%edi,%edi,4), %eax
	movl	$1, %ecx
	movl	$80, %edx
	sall	$4, %eax
	addl	$_SaveGameDescr, %eax
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	%ebx, (%esp)
	movl	$1, %ecx
	movl	$2, %edx
	movl	$__ZZ16MNU_LoadSaveMove8UserCallP9MENU_ITEME13SaveGameLevel, %eax
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	%ebx, (%esp)
	movl	$2, %edx
	movl	$1, %ecx
	movl	$__ZZ16MNU_LoadSaveMove8UserCallP9MENU_ITEME13SaveGameSkill, %eax
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	_waloff+24068, %edx
	movb	$-1, _walock+6017
	testl	%edx, %edx
	je	L1289
L1246:
	movl	$100, %eax
	movl	$160, %ecx
	movl	$100, %edx
	movw	%ax, _tilesiz+24068
	movl	$6017, %eax
	call	_renderSetTarget
	movl	%ebx, (%esp)
	movl	_waloff+24068, %eax
	movl	$1, %ecx
	movl	$16000, %edx
	call	_klzw_read_compressed.constprop.0.isra.0
	call	_renderRestoreTarget
	movl	%ebx, %eax
	call	_kclose
	movl	$6017, %eax
L1243:
	movw	%ax, _screen_tile
	movswl	__ZZ16MNU_LoadSaveMove8UserCallP9MENU_ITEME13SaveGameSkill, %eax
	movl	$LC19, 4(%esp)
	addl	$1, %eax
	movl	$__ZL13SaveGameInfo1.lto_priv.0, (%esp)
	movl	%eax, 12(%esp)
	movswl	__ZZ16MNU_LoadSaveMove8UserCallP9MENU_ITEME13SaveGameLevel, %eax
	movl	%eax, 8(%esp)
	call	_sprintf
	movl	108(%esp), %ebx
	.cfi_restore 3
	movl	116(%esp), %edi
	.cfi_restore 7
	movb	$0, __ZL13SaveGameInfo2.lto_priv.0
	jmp	L1241
	.p2align 4,,10
	.p2align 3
L1286:
	movl	$800, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_SaveGameDescr, (%esp)
	movl	%ebx, 108(%esp)
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	movl	%edi, 116(%esp)
	.cfi_offset 7, -12
	movl	$_SaveGameDescr, %edi
	movl	%ebp, 120(%esp)
	.cfi_offset 5, -8
	leal	28(%esp), %ebp
	call	_memset
	movw	%si, 16(%esp)
	.p2align 4
	.p2align 3
L1240:
	movl	%ebx, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	%ebp, (%esp)
	call	_sprintf
	xorl	%edx, %edx
	movl	%ebp, %eax
	call	_kopen4load.part.0
	movl	%eax, %esi
	cmpl	$-1, %eax
	je	L1238
	movl	%eax, (%esp)
	movl	$1, %ecx
	leal	24(%esp), %eax
	movl	$4, %edx
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	_GameVersion, %eax
	cmpl	%eax, 24(%esp)
	jne	L1285
	movl	%esi, (%esp)
	movl	$1, %ecx
	movl	$80, %edx
	movl	%edi, %eax
	call	_klzw_read_compressed.constprop.0.isra.0
L1285:
	movl	%esi, %eax
	call	_kclose
L1238:
	addl	$1, %ebx
	addl	$80, %edi
	cmpl	$10, %ebx
	jne	L1240
	movzwl	16(%esp), %esi
	movzwl	_LastSaveNum, %eax
	movl	108(%esp), %ebx
	.cfi_restore 3
	movl	116(%esp), %edi
	.cfi_restore 7
	movl	120(%esp), %ebp
	.cfi_restore 5
	jmp	L1237
	.p2align 4,,10
	.p2align 3
L1249:
	cmpb	$0, _keystatus+49
	je	L1236
	movswl	%si, %eax
	movl	$_BackupSaveGameDescr, 4(%esp)
	leal	(%eax,%eax,4), %eax
	movb	$0, _keystatus+49
	sall	$4, %eax
	addl	$_SaveGameDescr, %eax
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, _SavePrompt
	movb	$0, _MenuInputMode
	jmp	L1236
	.p2align 4,,10
	.p2align 3
L1248:
	movl	%ebp, 120(%esp)
	.cfi_offset 5, -8
	movzbl	_g_keyAsciiEnd, %ebp
	movl	%ebx, 108(%esp)
	.cfi_offset 3, -20
	movzbl	_g_keyAsciiPos, %ebx
	movl	%ebp, %ecx
	cmpb	%bl, %cl
	je	L1283
	movswl	%si, %edx
	movl	%edi, 116(%esp)
	.cfi_offset 7, -12
	leal	(%edx,%edx,4), %edi
	movl	%eax, 16(%esp)
	sall	$4, %edi
	movl	%edx, 20(%esp)
	addl	$_SaveGameDescr, %edi
	jmp	L1258
	.p2align 4,,10
	.p2align 3
L1251:
	cmpb	$8, %al
	je	L1290
	cmpb	$27, %al
	je	L1256
	cmpb	$13, %al
	je	L1253
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	*__imp__isprint
	testl	%eax, %eax
	je	L1254
	leal	24(%esp), %edx
	leal	28(%esp), %ecx
	movl	%edi, %eax
	call	__Z17MNU_MeasureStringPKcPsS1_
	cmpw	$113, 24(%esp)
	jg	L1254
	movl	%edi, (%esp)
	call	_strlen
	movl	%esi, %ecx
	movb	%cl, (%edi,%eax)
	movb	$0, 1(%edi,%eax)
	.p2align 4
	.p2align 3
L1254:
	movl	%ebp, %eax
	cmpb	%bl, %al
	je	L1284
L1258:
	movzbl	%bl, %eax
	addl	$1, %ebx
	movzbl	_g_keyAsciiFIFO(%eax), %esi
	andl	$63, %ebx
	movb	%bl, _g_keyAsciiPos
	movl	%esi, %eax
	testb	%al, %al
	jne	L1251
	movl	%ebp, %eax
	cmpb	%bl, %al
	je	L1284
	movzbl	%bl, %eax
	addl	$1, %ebx
	andl	$63, %ebx
	movb	%bl, _g_keyAsciiPos
	cmpb	$104, _g_keyAsciiFIFO(%eax)
	jne	L1254
L1253:
	movl	20(%esp), %edx
	movl	16(%esp), %eax
	leal	(%edx,%edx,4), %edx
	sall	$4, %edx
	cmpb	$0, _SaveGameDescr(%edx)
	je	L1291
	movb	$0, _keystatus+28
	cmpb	$0, _BackupSaveGameDescr
	je	L1292
	movl	108(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	116(%esp), %edi
	.cfi_restore 7
	movb	$1, _SavePrompt
	movl	120(%esp), %ebp
	.cfi_restore 5
	jmp	L1236
	.p2align 4,,10
	.p2align 3
L1290:
	.cfi_restore_state
	movl	%edi, (%esp)
	call	_strlen
	movb	$0, -1(%edi,%eax)
	jmp	L1254
	.p2align 4,,10
	.p2align 3
L1289:
	.cfi_restore 5
	movl	$_walock+6017, %ecx
	movl	$16000, %edx
	movl	$_waloff+24068, %eax
	call	__ZN7cache1d13allocateBlockEPiiPc.constprop.0
	jmp	L1246
L1291:
	.cfi_offset 5, -8
	movl	%edi, (%esp)
	movl	$_BackupSaveGameDescr, 4(%esp)
	call	_strcpy
	movl	108(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	116(%esp), %edi
	.cfi_restore 7
	movb	$0, _MenuInputMode
	movb	$0, _keystatus+28
	movl	120(%esp), %ebp
	.cfi_restore 5
	jmp	L1236
L1292:
	.cfi_restore_state
	movl	44(%eax), %eax
	movl	108(%esp), %ebx
	.cfi_restore 3
	movl	116(%esp), %edi
	.cfi_restore 7
	movl	120(%esp), %ebp
	.cfi_restore 5
	movl	112(%esp), %esi
	addl	$124, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	*%eax
L1288:
	.cfi_def_cfa_offset 128
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%ebx, %eax
	call	_kclose
L1245:
	movl	$-1, %eax
	jmp	L1243
L1283:
	.cfi_offset 5, -8
	.cfi_restore 7
	movl	108(%esp), %ebx
	.cfi_restore 3
	movl	120(%esp), %ebp
	.cfi_restore 5
	jmp	L1236
	.cfi_endproc
LFE82:
	.section .rdata,"dr"
LC20:
	.ascii "MNU_DownLevel() - NULL card\0"
LC21:
	.ascii "%s\0"
LC22:
	.ascii "source/sw/src/game.h\0"
	.text
	.p2align 4
	.def	__Z10MNU_DoMenu7CTLType.constprop.0;	.scl	3;	.type	32;	.endef
__Z10MNU_DoMenu7CTLType.constprop.0:
LFB97:
	.cfi_startproc
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movl	$0, 28(%esp)
	cmpb	$0, _isPaused
	jne	L1622
L1294:
	movl	_cust_callback, %eax
	testl	%eax, %eax
	je	L1297
L1623:
	movl	_cust_callback_item, %edx
	movl	%edx, 4(%esp)
	movl	_cust_callback_call, %edx
	movl	%edx, (%esp)
	call	*%eax
L1293:
	addl	$56, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1622:
	.cfi_restore_state
	movl	$120, %eax
	movb	$0, _isPaused
	call	__Z9timerIniti.isra.0
	cmpb	$0, _NoHide
	je	L1294
	movl	%ebx, 40(%esp)
	.cfi_offset 3, -20
	movl	_connecthead, %ebx
	cmpl	$-1, %ebx
	je	L1594
	.p2align 4
	.p2align 3
L1296:
	cmpb	$0, _CommEnabled
	je	L1295
	movswl	%bx, %eax
	movl	$9, %ecx
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	movb	$4, __ZL7tempbuf.lto_priv.0
	movl	$1634758261, __ZL7tempbuf.lto_priv.0+1
	movl	$6648693, __ZL7tempbuf.lto_priv.0+5
	call	__Z13netsendpacketiPhi
L1295:
	movl	_connectpoint2(,%ebx,4), %ebx
	cmpl	$-1, %ebx
	jne	L1296
L1594:
	movl	_cust_callback, %eax
	movl	40(%esp), %ebx
	.cfi_restore 3
	testl	%eax, %eax
	jne	L1623
	.p2align 4
	.p2align 3
L1297:
	cmpb	$0, _UsingMenus
	jne	L1299
	movl	_ControlPanelType, %edx
	xorl	%ecx, %ecx
	movl	%ebx, 40(%esp)
	movw	%cx, _menuarrayptr
	movl	__ZZL13MNU_SetupMenuvE12rootmenulist(,%edx,4), %eax
	movl	%eax, _currentmenu
	movl	%eax, _menuarray
	testl	%edx, %edx
	.cfi_offset 3, -20
	je	L1301
	movl	12(%eax), %ebx
	testl	%ebx, %ebx
	jne	L1608
	jmp	L1624
	.p2align 4,,10
	.p2align 3
L1308:
	movl	48(%ebx), %eax
	testl	%eax, %eax
	je	L1307
	movl	%ebx, (%esp)
	call	*%eax
L1307:
	addl	$56, %ebx
L1608:
	movl	(%ebx), %eax
	testl	%eax, %eax
	jne	L1308
L1306:
	movb	$0, _keystatus+1
	movl	40(%esp), %ebx
	.cfi_restore 3
	movb	$1, _UsingMenus
L1299:
	movl	$8, _mnu_input+4
	xorl	%ecx, %ecx
	movw	%cx, _mnu_input
	cmpb	$0, _MenuInputMode
	je	L1625
L1309:
	movl	_CONTROL_ButtonState, %eax
	movl	_CONTROL_ButtonState+4, %edx
	cmpb	$0, _mnu_input+1
	jne	L1409
	movl	%ebx, 40(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	xorl	%ecx, %ecx
	andl	$131072, %ebx
	movl	%edi, 48(%esp)
	orl	%ebx, %ecx
	movl	%ebp, 52(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	je	L1410
	movl	40(%esp), %ebx
	.cfi_restore 3
	movl	48(%esp), %edi
	.cfi_restore 7
	movl	52(%esp), %ebp
	.cfi_restore 5
L1409:
	movl	%eax, _CONTROL_ButtonState
	movl	__ZZ10MNU_DoMenu7CTLTypeE7handle3, %eax
	andl	$-131073, %edx
	movl	%edx, _CONTROL_ButtonState+4
	movl	$1, __ZL13CONTROL_Flags.lto_priv.0+396
	testl	%eax, %eax
	jg	L1626
L1411:
	leal	28(%esp), %edx
	movl	$8, 4(%esp)
	movl	$1, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ10MNU_DoMenu7CTLTypeE7handle3
L1412:
	movl	$0, 32(%esp)
	cmpw	$0, _menuarrayptr
	je	L1627
	movl	_currentmenu, %eax
	movl	12(%eax), %edx
	testl	%edx, %edx
	je	L1416
	movswl	32(%eax), %eax
	imull	$56, %eax, %eax
	andl	$-5, 4(%edx,%eax)
L1416:
	call	__ZL12MNU_PopGroupv
	movl	_currentmenu, %edx
	movswl	32(%edx), %eax
	imull	$56, %eax, %eax
	addl	12(%edx), %eax
	orl	$4, 4(%eax)
	call	__Z12MNU_DrawMenuv
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	call	__Z15SetRedrawScreenP12PLAYERstruct
	movl	_currentmenu, %ecx
L1332:
	movl	28(%ecx), %eax
	testl	%eax, %eax
	je	L1337
	cmpl	$__Z16MNU_LoadSaveMove8UserCallP9MENU_ITEM, %eax
	jne	L1430
	cmpb	$0, _UsingMenus
	je	L1337
	call	__Z16MNU_LoadSaveMove8UserCallP9MENU_ITEM.part.0
	jmp	L1337
	.p2align 4,,10
	.p2align 3
L1625:
	leal	32(%esp), %eax
	movl	%ebx, 40(%esp)
	movl	%esi, 44(%esp)
	movl	$0, 32(%esp)
	movl	$8, 36(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	call	_CONTROL_GetUserInput.isra.0
	movl	32(%esp), %eax
	movl	36(%esp), %edx
	movl	%eax, _mnu_input
	movl	%edx, _mnu_input+4
	cmpl	$8, _mnu_input+4
	je	L1628
	movl	__ZZ10MNU_DoMenu7CTLTypeE7handle2, %eax
	testl	%eax, %eax
	jg	L1629
L1312:
	leal	28(%esp), %edx
	movl	$8, 4(%esp)
	movl	$2, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ10MNU_DoMenu7CTLTypeE7handle2
L1609:
	movl	_mnu_input+4, %eax
	testl	%eax, %eax
	jne	L1314
	movl	_currentmenu, %ebx
	movzwl	32(%ebx), %eax
	movl	12(%ebx), %esi
	.p2align 6
	.p2align 4
	.p2align 3
L1542:
	testw	%ax, %ax
	je	L1316
	movswl	%ax, %edx
	leal	-1(%eax), %ecx
	imull	$56, %edx, %edx
L1317:
	andl	$-5, 4(%esi,%edx)
	movw	%cx, 32(%ebx)
	movswl	%cx, %ecx
	imull	$56, %ecx, %ecx
	addl	12(%ebx), %ecx
	orl	$4, 4(%ecx)
	movswl	32(%ebx), %edx
	movl	12(%ebx), %esi
	movl	%edx, %eax
	imull	$56, %edx, %edx
	addl	%esi, %edx
	cmpl	$1, (%edx)
	je	L1542
	cmpl	$8, 4(%edx)
	je	L1542
L1319:
	movl	28(%ebx), %eax
	testl	%eax, %eax
	je	L1603
L1336:
	cmpl	$__Z16MNU_LoadSaveMove8UserCallP9MENU_ITEM, %eax
	jne	L1424
	cmpb	$0, _UsingMenus
	je	L1603
	call	__Z16MNU_LoadSaveMove8UserCallP9MENU_ITEM.part.0
	movl	40(%esp), %ebx
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
L1337:
	movl	$_mnu_input, %eax
	call	_CONTROL_ClearUserInput
	movb	$0, _KB_LastScan
	xorl	%eax, %eax
L1427:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1427
	movl	$0, _g_mouseBits
	movl	$__ZL13CONTROL_Flags.lto_priv.0+4, %eax
	movl	$0, _CONTROL_ButtonHeldState
	movl	$0, _CONTROL_ButtonHeldState+4
	movl	$0, _CONTROL_ButtonState
	movl	$0, _CONTROL_ButtonState+4
	.p2align 5
	.p2align 4
	.p2align 3
L1429:
	movl	$1, (%eax)
	addl	$16, %eax
	movl	$1, -8(%eax)
	cmpl	$__ZL13CONTROL_Flags.lto_priv.0+516, %eax
	jne	L1429
	jmp	L1293
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1316:
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	%eax, %ecx
	addl	$1, %eax
	movswl	%ax, %edx
	movw	%ax, 32(%ebx)
	imull	$56, %edx, %edx
	cmpl	$0, (%esi,%edx)
	jne	L1316
	jmp	L1317
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1301:
	.cfi_restore 6
	movl	$0, _keystatus(%edx)
	addl	$16, %edx
	movl	$0, _keystatus-12(%edx)
	movl	$0, _keystatus-8(%edx)
	movl	$0, _keystatus-4(%edx)
	cmpl	$256, %edx
	jb	L1301
	movl	$0, _cust_callback
	movl	12(%eax), %ebx
	testl	%ebx, %ebx
	je	L1630
L1304:
	xorl	%edx, %edx
	movw	%dx, 32(%eax)
L1607:
	movl	12(%eax), %ebx
	testl	%ebx, %ebx
	jne	L1608
	jmp	L1306
L1629:
	.cfi_offset 6, -16
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	-4(%edx,%eax,4), %eax
	movl	_MV_Installed, %edx
	testl	%edx, %edx
	je	L1312
	testl	%eax, %eax
	je	L1312
	movl	112(%eax), %eax
	testl	%eax, %eax
	jne	L1312
	jmp	L1609
L1626:
	.cfi_restore 3
	.cfi_restore 6
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	-4(%edx,%eax,4), %eax
	movl	_MV_Installed, %edx
	testl	%edx, %edx
	je	L1411
	testl	%eax, %eax
	je	L1411
	movl	112(%eax), %ecx
	testl	%ecx, %ecx
	je	L1412
	jmp	L1411
L1632:
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	_currentmenu, %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	L1336
L1603:
	movl	40(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
	jmp	L1337
L1628:
	.cfi_restore_state
	cmpb	$0, _mnu_input
	jne	L1311
L1599:
	movl	40(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
	jmp	L1309
L1311:
	.cfi_restore_state
	movl	__ZZ10MNU_DoMenu7CTLTypeE7handle5, %eax
	testl	%eax, %eax
	jg	L1631
L1326:
	leal	28(%esp), %edx
	movl	$8, 4(%esp)
	movl	$1, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ10MNU_DoMenu7CTLTypeE7handle5
L1327:
	movb	$0, _KB_LastScan
	xorl	%eax, %eax
L1328:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1328
	movl	_currentmenu, %ecx
	movswl	32(%ecx), %eax
	imull	$56, %eax, %eax
	addl	12(%ecx), %eax
	movl	%eax, %esi
	je	L1612
	testb	$8, 4(%eax)
	je	L1331
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	L1612
	movl	%esi, (%esp)
	call	*%eax
	testb	$8, 4(%esi)
	jne	L1611
L1331:
	movl	(%esi), %eax
	cmpl	$4, %eax
	je	L1339
	cmpl	$5, %eax
	je	L1334
	cmpl	$3, %eax
	jne	L1632
	movl	12(%esi), %eax
	movl	$0, 32(%esp)
	xorw	$1, _buttonsettings(%eax,%eax)
	cmpl	$40, 12(%esi)
	ja	L1339
	movl	12(%esi), %eax
	jmp	*L1341(,%eax,4)
	.section .rdata,"dr"
	.align 4
L1341:
	.long	L1339
	.long	L1372
	.long	L1371
	.long	L1370
	.long	L1369
	.long	L1368
	.long	L1367
	.long	L1339
	.long	L1366
	.long	L1365
	.long	L1364
	.long	L1363
	.long	L1362
	.long	L1361
	.long	L1360
	.long	L1339
	.long	L1339
	.long	L1339
	.long	L1339
	.long	L1339
	.long	L1339
	.long	L1339
	.long	L1359
	.long	L1358
	.long	L1357
	.long	L1356
	.long	L1355
	.long	L1354
	.long	L1353
	.long	L1352
	.long	L1351
	.long	L1350
	.long	L1349
	.long	L1348
	.long	L1347
	.long	L1346
	.long	L1345
	.long	L1344
	.long	L1343
	.long	L1342
	.long	L1340
	.text
L1392:
	.cfi_offset 7, -12
	movswl	_buttonsettings+60, %edx
	movl	__ZL9validbpps.lto_priv.0, %eax
	xorl	%ecx, %ecx
	movl	%ecx, _slidersettings+56
	call	__ZL16UpdateValidModesii.lto_priv.0
L1394:
	movl	__ZL19numvalidresolutions.lto_priv.0, %eax
	movl	%eax, 20(%esp)
	testl	%eax, %eax
	jle	L1438
	movl	%edi, %eax
	movl	%ebp, 52(%esp)
	xorl	%edx, %edx
	imull	%ebx, %eax
	movl	%eax, 24(%esp)
	xorl	%eax, %eax
	.cfi_offset 5, -8
L1397:
	movl	__ZL16validresolutions.lto_priv.0+4(,%edx,8), %ebx
	movl	24(%esp), %edi
	imull	__ZL16validresolutions.lto_priv.0(,%edx,8), %ebx
	movl	%edi, %ecx
	subl	%ebx, %ecx
	movl	%ecx, %ebx
	negl	%ebx
	cmovns	%ebx, %ecx
	movl	%ecx, %ebp
	movl	__ZL16validresolutions.lto_priv.0+4(,%eax,8), %ecx
	imull	__ZL16validresolutions.lto_priv.0(,%eax,8), %ecx
	subl	%ecx, %edi
	movl	%edi, %ecx
	negl	%ecx
	cmovs	%edi, %ecx
	cmpl	%ecx, %ebp
	cmovl	%edx, %eax
	addl	$1, %edx
	cmpl	%edx, 20(%esp)
	jne	L1397
	movl	52(%esp), %ebp
	.cfi_restore 5
L1395:
	movl	%eax, _slidersettings+52
	movl	48(%esp), %edi
	.cfi_restore 7
L1339:
	movl	44(%esi), %eax
	testl	%eax, %eax
	je	L1611
	call	*%eax
	movl	_currentmenu, %ecx
	movl	40(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
	jmp	L1332
L1631:
	.cfi_restore_state
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	-4(%edx,%eax,4), %eax
	movl	_MV_Installed, %edx
	testl	%edx, %edx
	je	L1326
	testl	%eax, %eax
	je	L1326
	movl	112(%eax), %eax
	testl	%eax, %eax
	je	L1327
	jmp	L1326
L1314:
	cmpl	$4, %eax
	jne	L1320
	movl	_currentmenu, %ebx
	movswl	32(%ebx), %edx
	movl	12(%ebx), %ecx
	movl	%edx, %eax
	.p2align 4
	.p2align 3
L1543:
	leal	1(%edx), %esi
	imull	$56, %esi, %esi
	movl	(%ecx,%esi), %esi
	testl	%esi, %esi
	jne	L1321
L1633:
	testw	%ax, %ax
	je	L1322
	imull	$56, %edx, %edx
	andl	$-5, 4(%ecx,%edx)
	movl	12(%ebx), %ecx
L1322:
	xorl	%esi, %esi
	movw	%si, 32(%ebx)
	orl	$4, 4(%ecx)
L1323:
	movswl	32(%ebx), %edx
	movl	12(%ebx), %ecx
	imull	$56, %edx, %esi
	movl	%edx, %eax
	addl	%ecx, %esi
	cmpl	$1, (%esi)
	je	L1543
	cmpl	$8, 4(%esi)
	jne	L1319
	leal	1(%edx), %esi
	imull	$56, %esi, %esi
	movl	(%ecx,%esi), %esi
	testl	%esi, %esi
	je	L1633
L1321:
	imull	$56, %edx, %edx
	addl	$1, %eax
	andl	$-5, 4(%ecx,%edx)
	movw	%ax, 32(%ebx)
	cwtl
	imull	$56, %eax, %eax
	addl	12(%ebx), %eax
	orl	$4, 4(%eax)
	jmp	L1323
L1624:
	.cfi_restore 6
	movl	24(%eax), %edx
	testl	%edx, %edx
	je	L1607
L1433:
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	*%edx
	movl	_ControlPanelType, %ecx
	movl	_currentmenu, %eax
	testl	%ecx, %ecx
	je	L1304
	jmp	L1607
L1320:
	.cfi_offset 6, -16
	cmpb	$0, _mnu_input
	jne	L1311
	cmpl	$6, %eax
	je	L1634
	cmpl	$2, %eax
	jne	L1599
	movl	_currentmenu, %eax
	movswl	32(%eax), %edx
	imull	$56, %edx, %edx
	addl	12(%eax), %edx
	cmpl	$2, (%edx)
	jne	L1599
	xorl	%ecx, %ecx
	movl	$1, %eax
	call	__Z12MNU_DoSlidersP9MENU_ITEMh
L1611:
	movl	_currentmenu, %ecx
L1612:
	movl	40(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
	jmp	L1332
L1424:
	.cfi_restore_state
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	*%eax
	movl	40(%esp), %ebx
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
	jmp	L1337
L1430:
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	*%eax
	jmp	L1337
L1627:
	movl	__ZZL11MNU_UpLevelvE7handle1, %eax
	testl	%eax, %eax
	jg	L1635
L1414:
	leal	32(%esp), %edx
	movl	$8, 4(%esp)
	movl	$3, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZL11MNU_UpLevelvE7handle1
L1415:
	call	__Z9ExitMenusv
	movl	_currentmenu, %ecx
	jmp	L1332
L1410:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	_currentmenu, %ecx
	movl	%esi, 44(%esp)
	.cfi_offset 6, -16
	movl	12(%ecx), %esi
	testl	%esi, %esi
	je	L1417
	movl	(%esi), %eax
	testl	%eax, %eax
	je	L1417
	movl	%esi, %eax
	xorl	%ebx, %ebx
	movl	%ecx, %edi
	.p2align 4
	.p2align 3
L1422:
	movzbl	16(%eax), %ecx
	cmpb	$0, _keystatus(%ecx)
	je	L1418
	testb	%cl, %cl
	jne	L1636
L1418:
	movl	56(%eax), %ebp
	addl	$56, %eax
	addl	$1, %ebx
	testl	%ebp, %ebp
	jne	L1422
	movl	28(%edi), %eax
	testl	%eax, %eax
	jne	L1620
L1606:
	movl	40(%esp), %ebx
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
	movl	48(%esp), %edi
	.cfi_restore 7
	movl	52(%esp), %ebp
	.cfi_restore 5
	jmp	L1293
L1630:
	.cfi_offset 3, -20
	movl	24(%eax), %edx
	testl	%edx, %edx
	jne	L1433
	jmp	L1304
L1334:
	.cfi_offset 6, -16
	movl	44(%esi), %eax
	testl	%eax, %eax
	je	L1399
	call	*%eax
L1399:
	movl	24(%esi), %ebx
	testl	%ebx, %ebx
	je	L1637
L1400:
	movzwl	_menuarrayptr, %eax
	cmpw	$9, %ax
	je	L1402
	addl	$1, %eax
	movl	%ebx, _currentmenu
	movw	%ax, _menuarrayptr
	cwtl
	movl	%ebx, _menuarray(,%eax,4)
	cmpl	$1, _numplayers
	jle	L1402
	cmpw	$3, _gNet+12
	je	L1402
	imull	$24124, _myconnectindex, %eax
	movl	_Player+352(%eax), %edx
	testl	%edx, %edx
	je	L1402
	addl	$_Player, %eax
	call	__Z10SetFragBarP12PLAYERstruct.part.0
L1402:
	movl	12(%ebx), %eax
	testl	%eax, %eax
	je	L1638
L1403:
	movl	_currentmenu, %eax
	movl	12(%eax), %ebx
	testl	%ebx, %ebx
	je	L1406
	movl	(%ebx), %esi
	testl	%esi, %esi
	je	L1406
	.p2align 4
	.p2align 3
L1405:
	movl	48(%ebx), %eax
	testl	%eax, %eax
	je	L1407
	movl	%ebx, (%esp)
	call	*%eax
L1407:
	movl	56(%ebx), %ecx
	addl	$56, %ebx
	testl	%ecx, %ecx
	jne	L1405
	movl	_currentmenu, %eax
	movl	12(%eax), %ebx
L1406:
	movswl	32(%eax), %eax
	imull	$56, %eax, %eax
	orl	$4, 4(%ebx,%eax)
	call	__Z12MNU_DrawMenuv
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	call	__Z15SetRedrawScreenP12PLAYERstruct
	movl	_currentmenu, %ecx
	movl	40(%esp), %ebx
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
	jmp	L1332
L1635:
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	-4(%edx,%eax,4), %eax
	movl	_MV_Installed, %edx
	testl	%edx, %edx
	je	L1414
	testl	%eax, %eax
	je	L1414
	movl	112(%eax), %eax
	testl	%eax, %eax
	je	L1415
	jmp	L1414
L1638:
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	24(%ebx), %eax
	testl	%eax, %eax
	je	L1403
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	*%eax
	testb	%al, %al
	je	L1403
	call	__ZL12MNU_PopGroupv
	jmp	L1403
L1636:
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movswl	32(%edi), %eax
	movl	%edi, %ecx
	cmpw	%bx, %ax
	je	L1419
	imull	$56, %eax, %eax
	andl	$-5, 4(%esi,%eax)
	movl	12(%edi), %esi
L1419:
	movswl	%bx, %eax
	movw	%bx, 32(%ecx)
	imull	$56, %eax, %eax
	orl	$4, 4(%esi,%eax)
	movl	__ZZ10MNU_DoMenu7CTLTypeE7handle4, %eax
	testl	%eax, %eax
	jg	L1639
L1421:
	leal	28(%esp), %edx
	movl	$8, 4(%esp)
	movl	$2, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	movl	_currentmenu, %ecx
	movl	40(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
	movl	48(%esp), %edi
	.cfi_restore 7
	movl	%eax, __ZZ10MNU_DoMenu7CTLTypeE7handle4
	movl	52(%esp), %ebp
	.cfi_restore 5
	jmp	L1332
L1417:
	.cfi_restore_state
	movl	28(%ecx), %eax
	testl	%eax, %eax
	je	L1606
L1620:
	cmpl	$__Z16MNU_LoadSaveMove8UserCallP9MENU_ITEM, %eax
	jne	L1425
	cmpb	$0, _UsingMenus
	je	L1606
	call	__Z16MNU_LoadSaveMove8UserCallP9MENU_ITEM.part.0
	movl	40(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
	movl	48(%esp), %edi
	.cfi_restore 7
	movl	52(%esp), %ebp
	.cfi_restore 5
	jmp	L1293
L1639:
	.cfi_restore_state
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	_MV_Installed, %ebx
	movl	-4(%edx,%eax,4), %eax
	testl	%ebx, %ebx
	je	L1421
	testl	%eax, %eax
	je	L1421
	cmpl	$0, 112(%eax)
	jne	L1421
	movl	40(%esp), %ebx
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
	movl	48(%esp), %edi
	.cfi_restore 7
	movl	52(%esp), %ebp
	.cfi_restore 5
	jmp	L1332
L1637:
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1640
L1401:
	movl	$LC20, 8(%esp)
	movl	$LC21, 4(%esp)
	movl	$_apptitle, (%esp)
	call	_wm_msgbox.constprop.0
	call	__Z13TerminateGamev
	jmp	L1400
L1425:
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	xorl	%edx, %edx
	movl	%edx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	40(%esp), %ebx
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
	movl	48(%esp), %edi
	.cfi_restore 7
	movl	52(%esp), %ebp
	.cfi_restore 5
	jmp	L1293
L1640:
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	$LC20, 16(%esp)
	movl	$LC21, 12(%esp)
	movl	$2413, 8(%esp)
	movl	$LC22, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1401
	.p2align 4,,10
	.p2align 3
L1634:
	movl	_currentmenu, %eax
	movswl	32(%eax), %edx
	imull	$56, %edx, %edx
	addl	12(%eax), %edx
	cmpl	$2, (%edx)
	jne	L1599
	xorl	%ecx, %ecx
	movl	$-1, %eax
	call	__Z12MNU_DoSlidersP9MENU_ITEMh
	movl	_currentmenu, %ecx
	movl	40(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
	jmp	L1332
L1340:
	.cfi_restore_state
	xorl	%eax, %eax
	cmpw	$0, _buttonsettings+80
	setne	%al
	movl	%eax, _ShowNukeEnabled
	jmp	L1339
L1342:
	xorl	%eax, %eax
	cmpw	$0, _buttonsettings+78
	setne	%al
	movl	%eax, _ShowHeatEnabled
	jmp	L1339
L1371:
	movzwl	_buttonsettings+4, %eax
	movb	%al, _gs+22
	jmp	L1339
L1372:
	movzwl	_buttonsettings+2, %eax
	cmpb	%al, _gs+21
	movb	%al, _gs+21
	je	L1339
	movb	$1, _MenuButtonAutoRun
	jmp	L1339
L1367:
	movzwl	_buttonsettings+12, %eax
	movb	%al, _gs+17
	jmp	L1339
L1368:
	movzwl	_buttonsettings+10, %eax
	movb	%al, _gs+25
	jmp	L1339
L1369:
	movzwl	_buttonsettings+8, %eax
	movb	%al, _gs+15
	jmp	L1339
L1370:
	movzwl	_buttonsettings+6, %eax
	cmpb	%al, _gs+23
	movb	%al, _gs+23
	je	L1339
	movb	$1, _MenuButtonAutoAim
	jmp	L1339
L1359:
	movzwl	_buttonsettings+44, %eax
	movb	%al, _gs+35
	jmp	L1339
L1360:
	movzwl	_buttonsettings+28, %eax
	movb	%al, _gs+30
	jmp	L1339
L1361:
	movzwl	_buttonsettings+26, %eax
	movb	%al, _gs+328
	jmp	L1339
L1362:
	movzwl	_buttonsettings+24, %eax
	cmpb	%al, _gs+29
	movb	%al, _gs+29
	je	L1339
	cmpb	$0, _InMenuLevel
	jne	L1339
	testb	%al, %al
	jne	L1641
	movl	_voc3dstart, %ebx
	jmp	L1378
L1644:
	orl	$2, %eax
	movl	%eax, 28(%ebx)
L1380:
	movl	32(%ebx), %eax
	testl	%eax, %eax
	jg	L1642
L1382:
	movb	$1, 68(%ebx)
L1381:
	movl	44(%ebx), %ebx
L1378:
	testl	%ebx, %ebx
	je	L1643
	movl	28(%ebx), %eax
	testb	$16, %al
	jne	L1644
	testb	$2, %al
	je	L1381
	jmp	L1380
L1363:
	movzwl	_buttonsettings+22, %eax
	movb	%al, _gs+28
	jmp	L1339
L1364:
	movzwl	_buttonsettings+20, %eax
	cmpb	%al, _gs+27
	movb	%al, _gs+27
	je	L1339
	movzbl	_DemoMode, %ebx
	testb	%al, %al
	je	L1373
	testb	%bl, %bl
	jne	L1374
	movswl	_Level, %eax
	movl	$1, (%esp)
	movl	$1, %ecx
	movzbl	_RedBookSong(%eax), %edx
	movl	$_LevelSong, %eax
	call	__Z8PlaySongPcihh.part.0
L1374:
	movb	%bl, _DemoMode
	jmp	L1339
L1373:
	testb	%bl, %bl
	jne	L1375
	call	__Z8StopSongv.part.0
L1375:
	movb	%bl, _DemoMode
	testb	$1, _SW_GameFlags
	je	L1339
	xorl	%eax, %eax
	movl	%eax, 4(%esp)
	leal	32(%esp), %eax
	movl	%eax, (%esp)
	movl	%eax, %ecx
	movl	%eax, %edx
	movl	$366, %eax
	call	__Z9PlaySoundiPiS_S_i
	testl	%eax, %eax
	jle	L1339
	leal	-4(,%eax,4), %ebx
	jmp	L1376
L1645:
	movl	__ZL10MV_Handles.lto_priv.0, %eax
	movl	(%eax,%ebx), %eax
	testl	%eax, %eax
	je	L1339
	cmpl	$0, 112(%eax)
	jne	L1339
	call	_handleevents.isra.0
L1376:
	cmpl	$0, _MV_Installed
	je	L1339
	jmp	L1645
L1365:
	cmpb	$0, _FxInitialized
	je	L1339
	movzwl	_buttonsettings+18, %eax
	movzbl	_gs+26, %edx
	movb	%al, _gs+26
	testb	%al, %al
	jne	L1339
	cmpb	%al, %dl
	je	L1339
	call	_MV_KillAllVoices.constprop.0
	testl	%eax, %eax
	je	L1339
	movl	$2, _FX_ErrorCode
	jmp	L1339
L1366:
	movzwl	_buttonsettings+16, %eax
	movb	%al, _gs+20
	jmp	L1339
L1642:
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	-4(%edx,%eax,4), %edx
	cmpl	$0, _MV_Installed
	je	L1382
	testl	%edx, %edx
	je	L1382
	cmpl	$0, 112(%edx)
	jne	L1382
	call	_MV_Kill.constprop.0
	testl	%eax, %eax
	jne	L1646
L1383:
	xorl	%eax, %eax
	movl	%eax, 32(%ebx)
	jmp	L1382
L1646:
	movl	$2, _FX_ErrorCode
	jmp	L1383
L1643:
	call	__Z14Delete3DSoundsv
	jmp	L1339
L1641:
	call	__Z17StartAmbientSoundv
	jmp	L1339
L1343:
	xorl	%eax, %eax
	cmpw	$0, _buttonsettings+76
	setne	%al
	movl	%eax, _DemoTimeEnabled
	jmp	L1339
L1344:
	xorl	%eax, %eax
	cmpw	$0, _buttonsettings+74
	setne	%al
	movl	%eax, _MinHUDArmorEnabled
	jmp	L1339
L1345:
	xorl	%eax, %eax
	cmpw	$0, _buttonsettings+72
	setne	%al
	movl	%eax, _ScoreShotEnabled
	jmp	L1339
L1346:
	xorl	%eax, %eax
	cmpw	$0, _buttonsettings+70
	setne	%al
	movl	%eax, _ZeroKillDemosEnabled
	jmp	L1339
L1347:
	xorl	%eax, %eax
	cmpw	$0, _buttonsettings+68
	setne	%al
	movl	%eax, _MapCopyEnabled
	jmp	L1339
L1348:
	movzwl	_buttonsettings+66, %eax
	movb	%al, _gs+24
	jmp	L1339
L1349:
	movzwl	_buttonsettings+64, %eax
	movb	%al, _gs+323
	jmp	L1339
L1350:
	movzwl	_buttonsettings+62, %eax
	movb	%al, _gs+322
	jmp	L1339
L1351:
	movl	_slidersettings+52, %eax
	movl	%edi, 48(%esp)
	movswl	_buttonsettings+60, %edx
	.cfi_offset 7, -12
	movl	__ZL16validresolutions.lto_priv.0(,%eax,8), %edi
	movl	__ZL16validresolutions.lto_priv.0+4(,%eax,8), %ebx
	movl	_slidersettings+56, %eax
	movl	__ZL9validbpps.lto_priv.0(,%eax,4), %ecx
	movl	%ecx, %eax
	movl	%ecx, 20(%esp)
	call	__ZL16UpdateValidModesii.lto_priv.0
	movl	__ZL12numvalidbpps.lto_priv.0, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	jle	L1390
	movl	20(%esp), %ecx
	jmp	L1391
L1647:
	addl	$1, %eax
	cmpl	%edx, %eax
	je	L1392
L1391:
	cmpl	__ZL9validbpps.lto_priv.0(,%eax,4), %ecx
	jne	L1647
L1390:
	cmpl	%edx, %eax
	je	L1392
	movl	%eax, _slidersettings+56
	jmp	L1394
L1352:
	.cfi_restore 7
	movzwl	_buttonsettings+58, %eax
	movb	%al, _gs+65
	jmp	L1339
L1438:
	.cfi_offset 7, -12
	xorl	%eax, %eax
	jmp	L1395
L1353:
	.cfi_restore 7
	movzwl	_buttonsettings+56, %eax
	movb	%al, _gs+63
	jmp	L1339
L1354:
	movzwl	_buttonsettings+54, %eax
	movb	%al, _gs+62
	jmp	L1339
L1355:
	movzwl	_buttonsettings+52, %eax
	movb	%al, _gs+61
	jmp	L1339
L1356:
	cmpb	$0, _gs+41
	je	L1385
	cmpb	$1, _gs+40
	je	L1648
L1385:
	movzwl	_buttonsettings+50, %eax
	movb	%al, _gs+40
	cmpb	$0, _InMenuLevel
	jne	L1339
	call	__Z17JS_ToggleLockoutsv
	jmp	L1339
L1648:
	movl	%edi, 48(%esp)
	.cfi_offset 7, -12
	xorl	%eax, %eax
	movw	$1, _buttonsettings+50
	movb	$1, _MenuInputMode
L1386:
	xorl	%edi, %edi
	addl	$16, %eax
	movl	%edi, _MessageInputString-16(%eax)
	movl	%edi, _MessageInputString-12(%eax)
	movl	%edi, _MessageInputString-8(%eax)
	movl	%edi, _MessageInputString-4(%eax)
	cmpl	$256, %eax
	jb	L1386
	movb	$0, _KB_LastScan
	xorl	%eax, %eax
L1388:
	xorl	%ebx, %ebx
	addl	$16, %eax
	movl	%ebx, _keystatus-16(%eax)
	movl	%ebx, _keystatus-12(%eax)
	movl	%ebx, _keystatus-8(%eax)
	movl	%ebx, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1388
	movl	$16, %ecx
	xorl	%eax, %eax
	movl	$_g_keyAsciiFIFO, %edi
	movb	$0, _g_keyAsciiEnd
	rep stosl
	movb	$0, _g_keyAsciiPos
	movl	48(%esp), %edi
	.cfi_restore 7
	jmp	L1339
L1357:
	movzwl	_buttonsettings+48, %eax
	movb	%al, _gs+34
	jmp	L1339
L1358:
	movzwl	_buttonsettings+46, %eax
	movb	%al, _gs+36
	jmp	L1339
	.cfi_endproc
LFE97:
	.p2align 4
	.globl	__Z17MNU_CheckForMenusv
	.def	__Z17MNU_CheckForMenusv;	.scl	2;	.type	32;	.endef
__Z17MNU_CheckForMenusv:
LFB118:
	.cfi_startproc
	cmpb	$0, _UsingMenus
	jne	L1663
	cmpb	$0, _keystatus+1
	je	L1664
	cmpl	$3, _dimensionmode
	je	L1665
L1660:
	ret
	.p2align 4,,10
	.p2align 3
L1664:
	movl	_CONTROL_ButtonState+4, %edx
	xorl	%eax, %eax
	andl	$131072, %edx
	orl	%edx, %eax
	je	L1660
	cmpl	$3, _dimensionmode
	jne	L1660
	jmp	L1665
	.p2align 4,,10
	.p2align 3
L1663:
	jmp	__Z10MNU_DoMenu7CTLType.constprop.0
	.p2align 4,,10
	.p2align 3
L1665:
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movb	$0, _KB_LastScan
	xorl	%eax, %eax
	andl	$-131073, _CONTROL_ButtonState+4
	movl	$1, __ZL13CONTROL_Flags.lto_priv.0+396
L1653:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1653
	call	__Z13MNU_InitMenusv
	call	__Z10MNU_DoMenu7CTLType.constprop.0
	movl	$40, %edx
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	movl	%eax, (%esp)
	call	__Z20pMenuClearTextLineIDP12PLAYERstructsls.constprop.0.isra.0
	movl	(%esp), %eax
	movl	$50, %edx
	call	__Z20pMenuClearTextLineIDP12PLAYERstructsls.constprop.0.isra.0
	movzbl	_PauseKeySet, %eax
	orb	_DemoPlaying, %al
	orb	_DemoRecording, %al
	orb	_GamePaused, %al
	jne	L1649
	cmpl	$1, _numplayers
	jg	L1649
	movb	$1, _GamePaused
L1649:
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE118:
	.p2align 4
	.globl	__Z23MNU_CheckForMenusAnyKeyv
	.def	__Z23MNU_CheckForMenusAnyKeyv;	.scl	2;	.type	32;	.endef
__Z23MNU_CheckForMenusAnyKeyv:
LFB123:
	.cfi_startproc
	cmpb	$0, _UsingMenus
	je	L1671
	jmp	__Z10MNU_DoMenu7CTLType.constprop.0
	.p2align 4,,10
	.p2align 3
L1671:
	xorl	%eax, %eax
	jmp	L1667
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1678:
	addl	$1, %eax
	cmpl	$256, %eax
	je	L1677
L1667:
	cmpb	$0, _keystatus(%eax)
	je	L1678
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movb	$0, _KB_LastScan
	xorl	%eax, %eax
L1669:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1669
	call	__Z13MNU_InitMenusv
	call	__Z10MNU_DoMenu7CTLType.constprop.0
	movl	$40, %edx
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	movl	%eax, (%esp)
	call	__Z20pMenuClearTextLineIDP12PLAYERstructsls.constprop.0.isra.0
	movl	(%esp), %eax
	movl	$50, %edx
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	jmp	__Z20pMenuClearTextLineIDP12PLAYERstructsls.constprop.0.isra.0
L1677:
	ret
	.cfi_endproc
LFE123:
	.p2align 4
	.globl	__Z6FadeInhj.part.0.constprop.0
	.def	__Z6FadeInhj.part.0.constprop.0;	.scl	2;	.type	32;	.endef
__Z6FadeInhj.part.0.constprop.0:
LFB127:
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
	subl	$768, %esp
	.cfi_def_cfa_offset 788
	movzbl	_palette_data, %edx
	movzbl	_palette_data+1, %esi
	movzbl	_palette_data+2, %ebx
	leal	1(%esp), %eax
	movb	%dl, (%esp)
	jmp	L1681
	.p2align 4,,10
	.p2align 3
L1692:
	leal	2(%eax), %ecx
	movb	%bl, 1(%eax)
	cmpl	%edi, %ecx
	je	L1680
	movb	%dl, 2(%eax)
	addl	$3, %eax
	cmpl	%eax, %edi
	je	L1680
L1681:
	movl	%esi, %ecx
	leal	768(%esp), %edi
	movb	%cl, (%eax)
	leal	1(%eax), %ecx
	cmpl	%edi, %ecx
	jne	L1692
L1680:
	movl	$32, %ebp
	.p2align 4
	.p2align 3
L1682:
	movl	%esp, %esi
	xorl	%ecx, %ecx
	jmp	L1687
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1694:
	addl	$8, %eax
	movl	$255, %edi
	cmpl	%edi, %eax
	cmovg	%edi, %eax
	cmpb	%al, %dl
	cmovbe	%edx, %eax
	movb	%al, (%esi)
L1685:
	addl	$1, %ecx
	addl	$1, %esi
	cmpl	$768, %ecx
	je	L1693
L1687:
	movzbl	(%esi), %eax
	movzbl	_palette_data(%ecx), %edx
	cmpb	%dl, %al
	jb	L1694
	cmpb	%al, %dl
	jnb	L1685
	subl	$8, %eax
	movl	$0, %edi
	cmovs	%edi, %eax
	cmpb	%al, %dl
	cmovb	%eax, %edx
	addl	$1, %ecx
	addl	$1, %esi
	movb	%dl, -1(%esi)
	cmpl	$768, %ecx
	jne	L1687
L1693:
	xorl	%eax, %eax
	movl	%esp, %edx
	call	_paletteSetColorTable
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	$6, %ecx
	call	_videoSetPalette
	subl	$1, %ebp
	jne	L1682
	addl	$768, %esp
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
LFE127:
	.p2align 4
	.globl	__Z7FadeOuthj.part.0.constprop.0
	.def	__Z7FadeOuthj.part.0.constprop.0;	.scl	2;	.type	32;	.endef
__Z7FadeOuthj.part.0.constprop.0:
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
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	subl	$788, %esp
	.cfi_def_cfa_offset 808
	movzbl	_palette_data+1, %eax
	movzbl	_palette_data, %esi
	movl	$768, 8(%esp)
	movb	%al, 14(%esp)
	movzbl	_palette_data+2, %eax
	movl	$_palette_data, 4(%esp)
	movb	%al, 15(%esp)
	leal	20(%esp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	$32, 16(%esp)
L1696:
	leal	20(%esp), %ecx
	movl	%ebx, %edi
	jmp	L1714
	.p2align 4,,10
	.p2align 3
L1721:
	movl	%esi, %eax
	cmpb	%al, %bl
	jnb	L1698
	cmpb	%dl, %al
	cmovbe	%esi, %edx
	movb	%dl, (%ecx)
L1700:
	movl	$1, %edi
L1702:
	addl	$1, %ecx
	leal	788(%esp), %eax
	cmpl	%eax, %ecx
	je	L1720
L1714:
	movzbl	(%ecx), %eax
	movl	$255, %ebp
	leal	8(%eax), %edx
	movl	%eax, %ebx
	cmpl	%ebp, %edx
	cmovg	%ebp, %edx
	subl	$8, %eax
	movl	$0, %ebp
	cmovns	%eax, %ebp
	testl	%edi, %edi
	je	L1721
	cmpl	$1, %edi
	je	L1704
	cmpl	$2, %edi
	je	L1705
	addl	$1, %ecx
	leal	788(%esp), %eax
	addl	$1, %edi
	cmpl	%eax, %ecx
	jne	L1714
L1720:
	leal	20(%esp), %edx
	xorl	%eax, %eax
	movl	%edi, %ebx
	call	_paletteSetColorTable
	movl	$6, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	_videoSetPalette
	movl	_totalclock, %edi
	.p2align 4
	.p2align 3
L1715:
	call	_handleevents.isra.0
	movl	_totalclock, %eax
	subl	%edi, %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	cmpl	$4, %eax
	jle	L1715
	subl	$1, 16(%esp)
	jne	L1696
	addl	$788, %esp
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
L1698:
	.cfi_restore_state
	cmpb	%bl, %al
	jnb	L1700
	movl	%ebp, %eax
	movl	%esi, %ebx
	cmpb	%al, %bl
	cmovnb	%esi, %eax
	movb	%al, (%ecx)
	jmp	L1700
	.p2align 4,,10
	.p2align 3
L1704:
	movzbl	14(%esp), %eax
	cmpb	%al, %bl
	jnb	L1706
	cmpb	%dl, %al
	cmovbe	%eax, %edx
	movb	%dl, (%ecx)
L1708:
	movl	$2, %edi
	jmp	L1702
	.p2align 4,,10
	.p2align 3
L1705:
	movzbl	15(%esp), %eax
	cmpb	%al, %bl
	jnb	L1710
	cmpb	%dl, %al
	cmovbe	%eax, %edx
	movb	%dl, (%ecx)
L1712:
	xorl	%edi, %edi
	jmp	L1702
	.p2align 4,,10
	.p2align 3
L1706:
	movzbl	14(%esp), %edx
	cmpb	%bl, %dl
	jnb	L1708
	movl	%ebp, %eax
	cmpb	%al, %dl
	cmovnb	%edx, %eax
	movb	%al, (%ecx)
	jmp	L1708
	.p2align 4,,10
	.p2align 3
L1710:
	movzbl	15(%esp), %edx
	cmpb	%bl, %dl
	jnb	L1712
	movl	%ebp, %eax
	cmpb	%al, %dl
	cmovnb	%edx, %eax
	xorl	%edi, %edi
	movb	%al, (%ecx)
	jmp	L1702
	.cfi_endproc
LFE130:
	.data
	.align 32
_quickloadgroup:
	.long	0
	.long	0
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	2
	.space 3
	.long	__Z19MNU_QuickLoadCustom8UserCallP9MENU_ITEM
	.long	0
	.word	0
	.space 2
	.align 32
_maingroup:
	.long	160
	.long	15
	.long	0
	.long	_main_i
	.word	2366
	.word	0
	.byte	2
	.space 3
	.long	0
	.long	0
	.word	0
	.space 2
	.globl	_PruneGirlAttrib
	.align 32
_PruneGirlAttrib:
	.word	450
	.word	450
	.word	450
	.word	450
	.ascii "\0\0\0\0"
	.byte	3
	.space 3
	.long	0
	.long	0
	.long	388
	.long	391
	.long	388
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.space 4
	.globl	_s_PruneGirlStand
	.align 32
_s_PruneGirlStand:
	.word	4604
	.space 2
	.long	60
	.long	__Z11DoPruneGirls
	.long	_s_PruneGirlStand+16
	.word	4605
	.space 2
	.long	60
	.long	__Z11DoPruneGirls
	.long	_s_PruneGirlStand
.lcomm __ZZ14NullSailorGirlsE12alreadythrew,2,2
.lcomm __ZZ14NullSailorGirlsE9madhandle,4,4
	.globl	_s_SailorGirlThrow
	.align 4
_s_SailorGirlThrow:
	.word	4602
	.space 2
	.long	128
	.long	__Z15SailorGirlThrows
	.long	_s_SailorGirlThrow
.lcomm __ZZ12DoSailorGirlsE9madhandle,4,4
.lcomm _alreadythrew,2,2
	.globl	_SailorGirlAttrib
	.align 32
_SailorGirlAttrib:
	.word	0
	.word	0
	.word	0
	.word	0
	.ascii "\0\0\0\0"
	.byte	3
	.space 3
	.long	0
	.long	0
	.long	388
	.long	391
	.long	388
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.space 4
	.globl	_s_SailorGirlStand
	.align 32
_s_SailorGirlStand:
	.word	4600
	.space 2
	.long	60
	.long	__Z12DoSailorGirls
	.long	_s_SailorGirlStand+16
	.word	4601
	.space 2
	.long	60
	.long	__Z12DoSailorGirls
	.long	_s_SailorGirlStand
.lcomm __ZZ16NullMechanicGirlsE9madhandle,4,4
	.globl	_s_MechanicGirlDrill
	.align 32
_s_MechanicGirlDrill:
	.word	4592
	.space 2
	.long	32
	.long	__Z17MechanicGirlDrills
	.long	_s_MechanicGirlDrill+16
	.word	4593
	.space 2
	.long	32
	.long	__Z17MechanicGirlDrills
	.long	_s_MechanicGirlDrill
.lcomm __ZZ14DoMechanicGirlsE9madhandle,4,4
	.globl	_MechanicGirlAttrib
	.align 32
_MechanicGirlAttrib:
	.word	0
	.word	0
	.word	0
	.word	0
	.ascii "\0\0\0\0"
	.byte	3
	.space 3
	.long	0
	.long	0
	.long	388
	.long	391
	.long	388
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.space 4
	.globl	_s_MechanicGirlStand
	.align 32
_s_MechanicGirlStand:
	.word	4590
	.space 2
	.long	60
	.long	__Z14DoMechanicGirls
	.long	_s_MechanicGirlStand+16
	.word	4591
	.space 2
	.long	60
	.long	__Z14DoMechanicGirls
	.long	_s_MechanicGirlStand
.lcomm __ZZ11NullCarGirlsE9madhandle,4,4
	.globl	_s_CarGirlUzi
	.align 32
_s_CarGirlUzi:
	.word	4596
	.space 2
	.long	240
	.long	__Z10CarGirlUzis
	.long	_s_CarGirlUzi+16
	.word	4596
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_CarGirlUzi+32
	.word	4597
	.space 2
	.long	8
	.long	__Z10CarGirlUzis
	.long	_s_CarGirlUzi+48
	.word	4597
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_CarGirlUzi+64
	.word	4596
	.space 2
	.long	8
	.long	__Z10CarGirlUzis
	.long	_s_CarGirlUzi+80
	.word	4596
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_CarGirlUzi+96
	.word	4597
	.space 2
	.long	8
	.long	__Z10CarGirlUzis
	.long	_s_CarGirlUzi+112
	.word	4597
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_CarGirlUzi+128
	.word	4596
	.space 2
	.long	8
	.long	__Z10CarGirlUzis
	.long	_s_CarGirlUzi+144
	.word	4596
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_CarGirlUzi+160
	.word	4597
	.space 2
	.long	8
	.long	__Z10CarGirlUzis
	.long	_s_CarGirlUzi+176
	.word	4597
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_CarGirlUzi+192
	.word	4596
	.space 2
	.long	8
	.long	__Z10CarGirlUzis
	.long	_s_CarGirlUzi+208
	.word	4596
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_CarGirlUzi+224
	.word	4597
	.space 2
	.long	8
	.long	__Z10CarGirlUzis
	.long	_s_CarGirlUzi+240
	.word	4597
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_CarGirlUzi
.lcomm __ZZ9DoCarGirlsE9madhandle,4,4
	.globl	_CarGirlAttrib
	.align 32
_CarGirlAttrib:
	.word	0
	.word	0
	.word	0
	.word	0
	.ascii "\0\0\0\0"
	.byte	3
	.space 3
	.long	0
	.long	0
	.long	388
	.long	391
	.long	388
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.space 4
	.globl	_s_CarGirlStand
	.align 32
_s_CarGirlStand:
	.word	4594
	.space 2
	.long	60
	.long	__Z9DoCarGirls
	.long	_s_CarGirlStand+16
	.word	4595
	.space 2
	.long	60
	.long	__Z9DoCarGirls
	.long	_s_CarGirlStand
	.globl	_Pachinko4Attrib
	.align 32
_Pachinko4Attrib:
	.word	0
	.word	0
	.word	0
	.word	0
	.ascii "\0\0\0\0"
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	416
	.long	416
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.space 4
	.globl	_s_Pachinko4Stand
	.align 4
_s_Pachinko4Stand:
	.word	4840
	.space 2
	.long	120
	.long	__Z12NullAnimators
	.long	_s_Pachinko4Stand
	.globl	_Pachinko3Attrib
	.align 32
_Pachinko3Attrib:
	.word	0
	.word	0
	.word	0
	.word	0
	.ascii "\0\0\0\0"
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	416
	.long	416
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.space 4
	.globl	_s_Pachinko3Stand
	.align 4
_s_Pachinko3Stand:
	.word	4816
	.space 2
	.long	120
	.long	__Z12NullAnimators
	.long	_s_Pachinko3Stand
	.globl	_Pachinko2Attrib
	.align 32
_Pachinko2Attrib:
	.word	0
	.word	0
	.word	0
	.word	0
	.ascii "\0\0\0\0"
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	416
	.long	416
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.space 4
	.globl	_s_Pachinko2Stand
	.align 4
_s_Pachinko2Stand:
	.word	4792
	.space 2
	.long	120
	.long	__Z12NullAnimators
	.long	_s_Pachinko2Stand
	.globl	_s_PachinkoLightOperate
	.align 32
_s_PachinkoLightOperate:
	.word	623
	.space 2
	.long	12
	.long	__Z20PachinkoLightOperates
	.space 4
	.word	622
	.space 2
	.long	12
	.long	__Z20PachinkoLightOperates
	.space 4
	.word	621
	.space 2
	.long	12
	.long	__Z20PachinkoLightOperates
	.space 4
	.word	620
	.space 2
	.long	12
	.long	__Z20PachinkoLightOperates
	.space 4
	.word	619
	.space 2
	.long	12
	.long	__Z20PachinkoLightOperates
	.space 4
	.word	618
	.space 2
	.long	12
	.long	__Z20PachinkoLightOperates
	.long	_s_PachinkoLightOperate
	.globl	_Pachinko1Attrib
	.align 32
_Pachinko1Attrib:
	.word	0
	.word	0
	.word	0
	.word	0
	.ascii "\0\0\0\0"
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	416
	.long	416
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.space 4
	.globl	_s_Pachinko1Stand
	.align 4
_s_Pachinko1Stand:
	.word	4768
	.space 2
	.long	120
	.long	__Z12NullAnimators
	.long	_s_Pachinko1Stand
	.globl	_PachinkoLightAttrib
	.align 32
_PachinkoLightAttrib:
	.word	0
	.word	0
	.word	0
	.word	0
	.ascii "\0\0\0\0"
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	416
	.long	416
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.space 4
	.globl	_s_PachinkoLightStand
	.align 4
_s_PachinkoLightStand:
	.word	623
	.space 2
	.long	120
	.long	__Z12NullAnimators
	.long	_s_PachinkoLightStand
	.globl	_TrashCanAttrib
	.align 32
_TrashCanAttrib:
	.word	0
	.word	0
	.word	0
	.word	0
	.ascii "\0\0\0\0"
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	416
	.long	416
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.space 4
	.globl	_s_TrashCanStand
	.align 4
_s_TrashCanStand:
	.word	2540
	.space 2
	.long	120
	.long	__Z10DoTrashCans
	.long	_s_TrashCanStand
.lcomm __ZZ12NullWashGirlsE9madhandle,4,4
	.globl	_s_WashGirlUzi
	.align 32
_s_WashGirlUzi:
	.word	5034
	.space 2
	.long	8
	.long	__Z11WashGirlUzis
	.long	_s_WashGirlUzi+16
	.word	5034
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_WashGirlUzi+32
	.word	5035
	.space 2
	.long	8
	.long	__Z11WashGirlUzis
	.long	_s_WashGirlUzi+48
	.word	5035
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_WashGirlUzi+64
	.word	5034
	.space 2
	.long	8
	.long	__Z11WashGirlUzis
	.long	_s_WashGirlUzi+80
	.word	5034
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_WashGirlUzi+96
	.word	5035
	.space 2
	.long	8
	.long	__Z11WashGirlUzis
	.long	_s_WashGirlUzi+112
	.word	5035
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_WashGirlUzi+128
	.word	5034
	.space 2
	.long	8
	.long	__Z11WashGirlUzis
	.long	_s_WashGirlUzi+144
	.word	5034
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_WashGirlUzi+160
	.word	5035
	.space 2
	.long	8
	.long	__Z11WashGirlUzis
	.long	_s_WashGirlUzi+176
	.word	5035
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_WashGirlUzi+192
	.word	5034
	.space 2
	.long	8
	.long	__Z11WashGirlUzis
	.long	_s_WashGirlUzi+208
	.word	5034
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_WashGirlUzi+224
	.word	5035
	.space 2
	.long	8
	.long	__Z11WashGirlUzis
	.long	_s_WashGirlUzi+240
	.word	5035
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_WashGirlUzi
.lcomm __ZZ10DoWashGirlsE9madhandle,4,4
	.globl	_s_WashGirlStandScrub
	.align 32
_s_WashGirlStandScrub:
	.word	5032
	.space 2
	.long	20
	.long	__Z10DoWashGirls
	.long	_s_WashGirlStandScrub+16
	.word	5033
	.space 2
	.long	20
	.long	__Z10DoWashGirls
	.long	_s_WashGirlStandScrub
.lcomm __ZZ10DoWashGirlsE6handle,4,4
	.globl	_WashGirlAttrib
	.align 32
_WashGirlAttrib:
	.word	0
	.word	0
	.word	0
	.word	0
	.ascii "\0\0\0\0"
	.byte	3
	.space 3
	.long	0
	.long	0
	.long	388
	.long	391
	.long	388
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.space 4
	.globl	_s_WashGirlStand
	.align 32
_s_WashGirlStand:
	.word	5032
	.space 2
	.long	60
	.long	__Z10DoWashGirls
	.long	_s_WashGirlStand+16
	.word	5033
	.space 2
	.long	60
	.long	__Z10DoWashGirls
	.long	_s_WashGirlStand
.lcomm __ZZ14NullToiletGirlsE9madhandle,4,4
	.globl	_s_ToiletGirlUzi
	.align 32
_s_ToiletGirlUzi:
	.word	5025
	.space 2
	.long	8
	.long	__Z13ToiletGirlUzis
	.long	_s_ToiletGirlUzi+16
	.word	5025
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ToiletGirlUzi+32
	.word	5026
	.space 2
	.long	8
	.long	__Z13ToiletGirlUzis
	.long	_s_ToiletGirlUzi+48
	.word	5026
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ToiletGirlUzi+64
	.word	5025
	.space 2
	.long	8
	.long	__Z13ToiletGirlUzis
	.long	_s_ToiletGirlUzi+80
	.word	5025
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ToiletGirlUzi+96
	.word	5026
	.space 2
	.long	8
	.long	__Z13ToiletGirlUzis
	.long	_s_ToiletGirlUzi+112
	.word	5026
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ToiletGirlUzi+128
	.word	5025
	.space 2
	.long	8
	.long	__Z13ToiletGirlUzis
	.long	_s_ToiletGirlUzi+144
	.word	5025
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ToiletGirlUzi+160
	.word	5026
	.space 2
	.long	8
	.long	__Z13ToiletGirlUzis
	.long	_s_ToiletGirlUzi+176
	.word	5026
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ToiletGirlUzi+192
	.word	5025
	.space 2
	.long	8
	.long	__Z13ToiletGirlUzis
	.long	_s_ToiletGirlUzi+208
	.word	5025
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ToiletGirlUzi+224
	.word	5026
	.space 2
	.long	8
	.long	__Z13ToiletGirlUzis
	.long	_s_ToiletGirlUzi+240
	.word	5026
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ToiletGirlUzi
.lcomm __ZZ12DoToiletGirlsE9madhandle,4,4
.lcomm __ZZ12DoToiletGirlsE6handle,4,4
	.globl	_ToiletGirlAttrib
	.align 32
_ToiletGirlAttrib:
	.word	0
	.word	0
	.word	0
	.word	0
	.ascii "\0\0\0\0"
	.byte	3
	.space 3
	.long	0
	.long	0
	.long	388
	.long	391
	.long	388
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.space 4
	.globl	_s_ToiletGirlStand
	.align 32
_s_ToiletGirlStand:
	.word	5023
	.space 2
	.long	60
	.long	__Z12DoToiletGirls
	.long	_s_ToiletGirlStand+16
	.word	5024
	.space 2
	.long	60
	.long	__Z12DoToiletGirls
	.long	_s_ToiletGirlStand
.lcomm __ZZ16MNU_LoadSaveMove8UserCallP9MENU_ITEME13SaveGameSkill,2,2
.lcomm __ZZ16MNU_LoadSaveMove8UserCallP9MENU_ITEME13SaveGameLevel,2,2
	.section .rdata,"dr"
	.align 4
_CSWTCH.797:
	.long	1
	.long	3
	.long	0
	.long	0
	.long	2
	.long	4
	.globl	__ZL8faderamp.lto_priv.0
	.align 32
__ZL8faderamp.lto_priv.0:
	.long	252
	.long	240
	.long	224
	.long	208
	.long	192
	.long	176
	.long	160
	.long	156
	.long	152
	.long	152
	.long	148
	.long	144
	.long	140
	.long	136
	.long	136
	.long	132
	.long	128
	.long	124
	.long	120
	.long	120
	.long	116
	.long	112
	.long	108
	.long	104
	.long	104
	.long	100
	.long	96
	.long	80
	.long	64
	.long	48
	.long	32
	.long	16
	.globl	_ppalette
	.bss
	.align 32
_ppalette:
	.space 6144
.lcomm __ZZL11MNU_UpLevelvE7handle1,4,4
	.section .rdata,"dr"
	.align 32
__ZZL13MNU_SetupMenuvE12rootmenulist:
	.long	_maingroup
	.long	_SaveGameGroup
	.long	_LoadGameGroup
	.long	_soundgroup
	.long	_optiongroup
	.long	_quickloadgroup
	.long	_quitgroup
	.long	_ordergroup
	.long	_episodegroup
	.globl	_g_mouseBits
	.bss
	.align 4
_g_mouseBits:
	.space 4
.lcomm __ZZ10MNU_DoMenu7CTLTypeE7handle4,4,4
.lcomm __ZZ10MNU_DoMenu7CTLTypeE7handle3,4,4
.lcomm __ZZ10MNU_DoMenu7CTLTypeE7handle5,4,4
.lcomm __ZZ10MNU_DoMenu7CTLTypeE7handle2,4,4
	.globl	_voc3dstart
	.align 4
_voc3dstart:
	.space 4
.lcomm _menuarray,40,32
.lcomm _menuarrayptr,2,2
	.section .rdata,"dr"
	.align 4
_CSWTCH.799:
	.long	1
	.long	5
	.long	2
LC23:
	.ascii "Brown\0"
LC24:
	.ascii "Gray\0"
LC25:
	.ascii "Purple\0"
LC26:
	.ascii "Red\0"
LC27:
	.ascii "Yellow\0"
LC28:
	.ascii "Olive\0"
LC29:
	.ascii "Green\0"
LC30:
	.ascii "Blue\0"
	.align 32
_playercolors:
	.long	LC23
	.long	LC24
	.long	LC25
	.long	LC26
	.long	LC27
	.long	LC28
	.long	LC29
	.long	LC30
LC31:
	.ascii "No Monsters\0"
LC32:
	.ascii "Easy\0"
LC33:
	.ascii "Normal\0"
LC34:
	.ascii "Hard\0"
LC35:
	.ascii "Insane!\0"
	.align 4
_monsterskills:
	.long	LC31
	.long	LC32
	.long	LC33
	.long	LC34
	.long	LC35
LC36:
	.ascii "WangBang (spawn)\0"
LC37:
	.ascii "WangBang (no spawn)\0"
LC38:
	.ascii "Cooperative\0"
	.align 4
_gametype:
	.long	LC36
	.long	LC37
	.long	LC38
	.align 4
LC1:
	.long	981467136
	.align 4
LC7:
	.long	969723085
	.align 4
LC8:
	.long	1199570688
	.align 4
LC10:
	.long	1186988032
	.align 4
LC11:
	.long	1191181824
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__ZL29MNU_JoystickButtonPostProcessP9MENU_ITEM.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_rotatesprite_.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z15SetRedrawScreenP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	__Z19MNU_DrawSmallStringssPKcss;	.scl	2;	.type	32;	.endef
	.def	__Z14MNU_DrawStringssPKcss;	.scl	2;	.type	32;	.endef
	.def	_paletteSetColorTable;	.scl	2;	.type	32;	.endef
	.def	_videoSetPalette;	.scl	2;	.type	32;	.endef
	.def	__Z9SetBorderP12PLAYERstructi;	.scl	2;	.type	32;	.endef
	.def	__Z13SetSongVolumei;	.scl	2;	.type	32;	.endef
	.def	_MV_SetVolume;	.scl	2;	.type	32;	.endef
	.def	__ZL16UpdateValidModesii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z10SetFragBarP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z9PlaySoundiPiS_S_i;	.scl	2;	.type	32;	.endef
	.def	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct;	.scl	2;	.type	32;	.endef
	.def	__Z9SpawnUserssP11STATEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z16KeepActorOnFloors;	.scl	2;	.type	32;	.endef
	.def	__Z22DoActorPickClosePlayers;	.scl	2;	.type	32;	.endef
	.def	__Z9FAFcanseeiiisiiis;	.scl	2;	.type	32;	.endef
	.def	__Z19DoActorSectorDamages;	.scl	2;	.type	32;	.endef
	.def	__Z12DoActorSlides;	.scl	2;	.type	32;	.endef
	.def	__Z14ActorCoughItems.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z15ComboSwitchTestss.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z17DoMatchEverythingP12PLAYERstructss;	.scl	2;	.type	32;	.endef
	.def	__Z22MNU_MeasureStringLargePKcPsS1_;	.scl	2;	.type	32;	.endef
	.def	__Z18GetPaletteFromVESAPh;	.scl	2;	.type	32;	.endef
	.def	_videoFadePalette.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_videoFadePalette;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_SDL_GameControllerGetStringForAxis;	.scl	2;	.type	32;	.endef
	.def	_kopen4load.part.0;	.scl	2;	.type	32;	.endef
	.def	_klzw_read_compressed.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_renderSetTarget;	.scl	2;	.type	32;	.endef
	.def	_renderRestoreTarget;	.scl	2;	.type	32;	.endef
	.def	_kclose;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	__Z17MNU_MeasureStringPKcPsS1_;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__ZN7cache1d13allocateBlockEPiiPc.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z9timerIniti.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z13netsendpacketiPhi;	.scl	2;	.type	32;	.endef
	.def	__Z16MNU_LoadSaveMove8UserCallP9MENU_ITEM;	.scl	2;	.type	32;	.endef
	.def	_CONTROL_GetUserInput.isra.0;	.scl	2;	.type	32;	.endef
	.def	_CONTROL_ClearUserInput;	.scl	2;	.type	32;	.endef
	.def	__Z9ExitMenusv;	.scl	2;	.type	32;	.endef
	.def	_wm_msgbox.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13TerminateGamev;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	__Z8PlaySongPcihh.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z8StopSongv.part.0;	.scl	2;	.type	32;	.endef
	.def	_handleevents.isra.0;	.scl	2;	.type	32;	.endef
	.def	_MV_KillAllVoices.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_MV_Kill.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z14Delete3DSoundsv;	.scl	2;	.type	32;	.endef
	.def	__Z17StartAmbientSoundv;	.scl	2;	.type	32;	.endef
	.def	__Z17JS_ToggleLockoutsv;	.scl	2;	.type	32;	.endef
	.def	__Z13MNU_InitMenusv;	.scl	2;	.type	32;	.endef
	.def	__Z20pMenuClearTextLineIDP12PLAYERstructsls.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	__Z19MNU_QuickLoadCustom8UserCallP9MENU_ITEM;	.scl	2;	.type	32;	.endef
	.def	__Z11DoPruneGirls;	.scl	2;	.type	32;	.endef
	.def	__Z12InitEnemyUzis;	.scl	2;	.type	32;	.endef
	.def	__Z12NullAnimators;	.scl	2;	.type	32;	.endef
