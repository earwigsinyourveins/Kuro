	.file	"<artificial>"
	.text
	.p2align 4
	.globl	__Z14UserShrapSetupP5SHRAPP11STATEstructi
	.def	__Z14UserShrapSetupP5SHRAPP11STATEstructi;	.scl	2;	.type	32;	.endef
__Z14UserShrapSetupP5SHRAPP11STATEstructi:
LFB0:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	8(%esp), %edx
	movl	%edx, (%eax)
	movl	12(%esp), %edx
	movw	%dx, 6(%eax)
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.globl	__Z9SopDamageP19SECTOR_OBJECTstructs
	.def	__Z9SopDamageP19SECTOR_OBJECTstructs;	.scl	2;	.type	32;	.endef
__Z9SopDamageP19SECTOR_OBJECTstructs:
LFB1:
	.cfi_startproc
	movl	4(%esp), %ecx
	xorl	%eax, %eax
	movzwl	3204(%ecx), %edx
	cmpw	$-9999, %dx
	je	L3
	movl	176(%ecx), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	addw	8(%esp), %dx
	imull	$-1171354717, %eax, %eax
	movl	_User(,%eax,4), %eax
	movw	%dx, 3204(%ecx)
	cmpw	$0, 8(%esp)
	js	L8
	movl	$1, %eax
L3:
	ret
	.p2align 4,,10
	.p2align 3
L8:
	movzwl	8(%esp), %edx
	negl	%edx
	movw	%dx, 88(%eax)
	movl	$1, %eax
	ret
	.cfi_endproc
LFE1:
	.p2align 4
	.globl	__Z10DoUziSmokes
	.def	__Z10DoUziSmokes;	.scl	2;	.type	32;	.endef
__Z10DoUziSmokes:
LFB3:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movswl	8(%esp), %eax
	movl	$-1171354717, %ebx
	movl	_sprite, %ecx
	imull	$44, %eax, %eax
	addl	%eax, %ecx
	addl	$8, %eax
	mull	%ebx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	subl	$200, 8(%ecx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE3:
	.p2align 4
	.globl	__Z14DoShotgunSmokes
	.def	__Z14DoShotgunSmokes;	.scl	2;	.type	32;	.endef
__Z14DoShotgunSmokes:
LFB5:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movswl	8(%esp), %eax
	movl	$-1171354717, %ebx
	movl	_sprite, %ecx
	imull	$44, %eax, %eax
	addl	%eax, %ecx
	addl	$8, %eax
	mull	%ebx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	subl	$200, 8(%ecx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE5:
	.p2align 4
	.globl	__Z10SetSuicides
	.def	__Z10SetSuicides;	.scl	2;	.type	32;	.endef
__Z10SetSuicides:
LFB6:
	.cfi_startproc
	movswl	4(%esp), %edx
	movl	_User(,%edx,4), %eax
	testl	%eax, %eax
	je	L14
	xorl	%ecx, %ecx
	orl	$32768, 68(%eax)
	movw	%cx, 80(%eax)
	movl	_User(,%edx,4), %eax
	testl	%eax, %eax
	je	L14
	movl	$0, 76(%eax)
	movl	$_s_Suicide, 24(%eax)
	movl	$_s_Suicide, 16(%eax)
	movswl	_s_Suicide, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L14
	andl	$63, %eax
	movb	%al, 3(%edx)
L14:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE6:
	.p2align 4
	.globl	__Z12DoActorScales
	.def	__Z12DoActorScales;	.scl	2;	.type	32;	.endef
__Z12DoActorScales:
LFB8:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	$70, %ecx
	movl	_User(,%eax,4), %edx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movw	%cx, 204(%edx)
	movzbl	20(%eax), %ecx
	sall	$8, %ecx
	movw	%cx, 206(%edx)
	movzbl	20(%eax), %eax
	addl	$25, %eax
	movw	%ax, 208(%edx)
	cmpw	$256, %ax
	jbe	L25
	xorl	%eax, %eax
	movl	$256, %ecx
	movw	%ax, 204(%edx)
	movw	%cx, 208(%edx)
L25:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE8:
	.p2align 4
	.globl	__Z12DoRipperGrows
	.def	__Z12DoRipperGrows;	.scl	2;	.type	32;	.endef
__Z12DoRipperGrows:
LFB9:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	$70, %ecx
	movl	_User(,%eax,4), %edx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movw	%cx, 204(%edx)
	movzbl	20(%eax), %ecx
	sall	$8, %ecx
	movw	%cx, 206(%edx)
	movzbl	20(%eax), %eax
	addl	$20, %eax
	movw	%ax, 208(%edx)
	cmpw	$128, %ax
	jbe	L27
	xorl	%eax, %eax
	movl	$128, %ecx
	movw	%ax, 204(%edx)
	movw	%cx, 208(%edx)
L27:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE9:
	.p2align 4
	.globl	__Z15ActorStdMissiless
	.def	__Z15ActorStdMissiless;	.scl	2;	.type	32;	.endef
__Z15ActorStdMissiless:
LFB10:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	_sprite, %edx
	movswl	20(%esp), %eax
	movl	_User(,%eax,4), %ecx
	imull	$44, %eax, %eax
	movzwl	30(%edx,%eax), %eax
	testw	%ax, %ax
	js	L29
	movl	%ebx, (%esp)
	.cfi_offset 3, -16
	movswl	%ax, %ebx
	movl	%esi, 4(%esp)
	.cfi_offset 6, -12
	movl	_User(,%ebx,4), %esi
	movl	144(%esi), %esi
	testl	%esi, %esi
	je	L32
	movswl	16(%esp), %esi
	movl	%edi, 8(%esp)
	.cfi_offset 7, -8
	imull	$44, %esi, %edi
	cmpw	%ax, 30(%edx,%edi)
	je	L33
	imull	$44, %ebx, %ebx
	movl	_User(,%esi,4), %eax
	addl	%ebx, %edx
	movl	%edx, 200(%eax)
	movl	(%esp), %ebx
	.cfi_restore 3
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	8(%esp), %edi
	.cfi_restore 7
L29:
	movswl	186(%ecx), %eax
	testw	%ax, %ax
	js	L30
	movl	_User(,%eax,4), %eax
	andl	$-5, 68(%eax)
L30:
	xorl	%eax, %eax
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L32:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	movl	(%esp), %ebx
	.cfi_restore 3
	movl	4(%esp), %esi
	.cfi_restore 6
	jmp	L29
	.p2align 4,,10
	.p2align 3
L33:
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movl	(%esp), %ebx
	.cfi_restore 3
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	8(%esp), %edi
	.cfi_restore 7
	jmp	L29
	.cfi_endproc
LFE10:
	.p2align 4
	.globl	__Z16ActorDamageSlidesss
	.def	__Z16ActorDamageSlidesss;	.scl	2;	.type	32;	.endef
__Z16ActorDamageSlidesss:
LFB11:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movswl	8(%esp), %eax
	movl	_User(,%eax,4), %ecx
	movl	68(%ecx), %edx
	movl	%edx, %ebx
	andl	$128, %ebx
	jne	L39
	movzwl	12(%esp), %eax
	negw	%ax
	cmovs	12(%esp), %ax
	testw	%ax, %ax
	je	L34
	orl	$2097152, %edx
	cmpw	$10, %ax
	jle	L44
	cmpw	$20, %ax
	jle	L45
	movzwl	%ax, %eax
	movswl	86(%ecx), %ebx
	movl	%edx, 68(%ecx)
	leal	(%eax,%eax,2), %eax
	movzwl	16(%esp), %edx
	addl	%eax, %eax
	subl	%ebx, %eax
	movl	$-1000, %ebx
	movw	%dx, 228(%ecx)
	cmpl	%ebx, %eax
	cmovl	%ebx, %eax
	cwtl
	movl	%eax, 232(%ecx)
	movl	$5, %eax
	movw	%ax, 236(%ecx)
L38:
	movl	$1, %ebx
L34:
	movl	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L39:
	.cfi_restore_state
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L45:
	.cfi_restore_state
	movzwl	16(%esp), %eax
	movl	%edx, 68(%ecx)
	movl	$5, %edx
	movl	$128, 232(%ecx)
	movw	%ax, 228(%ecx)
	movw	%dx, 236(%ecx)
	jmp	L38
	.p2align 4,,10
	.p2align 3
L44:
	movzwl	16(%esp), %eax
	movl	$5, %ebx
	movl	%edx, 68(%ecx)
	movl	$64, 232(%ecx)
	movw	%ax, 228(%ecx)
	movw	%bx, 236(%ecx)
	jmp	L38
	.cfi_endproc
LFE11:
	.p2align 4
	.globl	__Z17PlayerDamageSlideP12PLAYERstructss
	.def	__Z17PlayerDamageSlideP12PLAYERstructss;	.scl	2;	.type	32;	.endef
__Z17PlayerDamageSlideP12PLAYERstructss:
LFB13:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movzwl	16(%esp), %edx
	movzwl	20(%esp), %eax
	movw	%ax, (%esp)
	movl	%edx, %eax
	negw	%ax
	cmovs	%edx, %eax
	xorl	%edx, %edx
	cmpw	$5, %ax
	jg	L54
	movl	%edx, %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L54:
	.cfi_restore_state
	movzwl	(%esp), %ecx
	leal	512(%ecx), %edx
	movl	(%esp), %ecx
	andl	$2047, %edx
	movswl	_sintable(%edx,%edx), %edx
	andl	$2047, %ecx
	cmpw	$10, %ax
	jle	L55
	cmpw	$20, %ax
	jle	L56
	movzwl	%ax, %eax
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -8
	movl	12(%esp), %ebx
	leal	(%eax,%eax,2), %eax
	addl	%eax, %eax
	imull	%eax, %edx
	sarl	$14, %edx
	sall	$15, %edx
	movl	%edx, 212(%ebx)
	movswl	_sintable(%ecx,%ecx), %edx
	imull	%edx, %eax
	sarl	$14, %eax
	sall	$15, %eax
	movl	%eax, 216(%ebx)
	movl	4(%esp), %ebx
	.cfi_restore 3
L50:
	movl	$1, %edx
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	movl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L56:
	.cfi_restore_state
	movl	12(%esp), %eax
	sarl	$8, %edx
	sall	$15, %edx
	movl	%edx, 212(%eax)
	movsbl	_sintable+1(%ecx,%ecx), %eax
	movl	12(%esp), %ecx
	sall	$15, %eax
	movl	%eax, 216(%ecx)
	jmp	L50
	.p2align 4,,10
	.p2align 3
L55:
	movl	12(%esp), %eax
	sarl	$10, %edx
	sall	$15, %edx
	movl	%edx, 212(%eax)
	movswl	_sintable(%ecx,%ecx), %eax
	movl	12(%esp), %ecx
	sarl	$10, %eax
	sall	$15, %eax
	movl	%eax, 216(%ecx)
	jmp	L50
	.cfi_endproc
LFE13:
	.p2align 4
	.globl	__Z9GetDamagesss
	.def	__Z9GetDamagesss;	.scl	2;	.type	32;	.endef
__Z9GetDamagesss:
LFB15:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%esi, 4(%esp)
	.cfi_offset 6, -12
	movswl	24(%esp), %esi
	movl	%ebx, (%esp)
	sall	$5, %esi
	.cfi_offset 3, -16
	movl	_DamageData+8(%esi), %ebx
	testl	%ebx, %ebx
	je	L58
	movswl	16(%esp), %edx
	movswl	20(%esp), %eax
	movl	%edi, 8(%esp)
	.cfi_offset 7, -8
	movl	_sprite, %edi
	imull	$44, %eax, %eax
	imull	$44, %edx, %edx
	addl	%edi, %edx
	addl	%eax, %edi
	movl	(%edx), %ecx
	subl	(%edi), %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovs	%ecx, %eax
	movl	4(%edx), %ecx
	subl	4(%edi), %ecx
	movl	%ecx, %edi
	negl	%edi
	cmovs	%ecx, %edi
	cmpl	%edi, %eax
	leal	(%eax,%edi), %ecx
	cmovg	%edi, %eax
	sarl	%eax
	subl	%eax, %ecx
	movzbl	18(%edx), %eax
	sall	$2, %eax
	subl	%eax, %ecx
	movl	$0, %eax
	cmovs	%eax, %ecx
	cmpl	%ebx, %ecx
	jb	L63
	movl	8(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	(%esp), %ebx
	movl	4(%esp), %esi
	addl	$12, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L63:
	.cfi_restore_state
	movswl	_DamageData+6(%esi), %eax
	xorl	%edx, %edx
	sall	$16, %eax
	divl	%ebx
	subl	%ecx, %ebx
	imull	%ebx, %eax
	sarl	$16, %eax
	negl	%eax
	movl	%eax, %edx
	sarl	%eax
	sarl	$2, %edx
	leal	(%eax,%edx), %ebx
	movl	%edx, %eax
	call	__Z11RandomRangei
	movl	8(%esp), %edi
	.cfi_restore 7
	movl	4(%esp), %esi
	addl	%ebx, %eax
	movl	(%esp), %ebx
	addl	$12, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L58:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	movswl	_DamageData+4(%esi), %ebx
	movswl	_DamageData+6(%esi), %eax
	subl	%ebx, %eax
	call	__Z11RandomRangei
	movl	4(%esp), %esi
	addl	%ebx, %eax
	movl	(%esp), %ebx
	addl	$12, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	negl	%eax
	ret
	.cfi_endproc
LFE15:
	.p2align 4
	.globl	__Z15RadiusGetDamagessi
	.def	__Z15RadiusGetDamagessi;	.scl	2;	.type	32;	.endef
__Z15RadiusGetDamagessi:
LFB16:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movswl	16(%esp), %ecx
	movswl	12(%esp), %edx
	movl	_sprite, %ebx
	imull	$44, %ecx, %eax
	imull	$44, %edx, %edx
	addl	%ebx, %edx
	addl	%eax, %ebx
	movl	(%edx), %esi
	subl	(%ebx), %esi
	movl	%esi, %eax
	negl	%eax
	cmovs	%esi, %eax
	movl	4(%edx), %esi
	subl	4(%ebx), %esi
	movl	%esi, %ebx
	negl	%ebx
	cmovs	%esi, %ebx
	cmpl	%ebx, %eax
	leal	(%eax,%ebx), %esi
	cmovg	%ebx, %eax
	sarl	%eax
	subl	%eax, %esi
	movl	_User(,%ecx,4), %eax
	movl	%esi, %ecx
	movl	188(%eax), %ebx
	movzbl	18(%edx), %eax
	sall	$2, %eax
	subl	%eax, %ecx
	movl	$0, %eax
	cmovs	%eax, %ecx
	cmpl	%ebx, %ecx
	jnb	L64
	movl	20(%esp), %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	xorl	%edx, %edx
	sall	$16, %eax
	divl	%ebx
	subl	%ecx, %ebx
	imull	%ebx, %eax
	sarl	$16, %eax
	negl	%eax
L64:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE16:
	.p2align 4
	.globl	__Z16PlayerTakeDamageP12PLAYERstructs
	.def	__Z16PlayerTakeDamageP12PLAYERstructs;	.scl	2;	.type	32;	.endef
__Z16PlayerTakeDamageP12PLAYERstructs:
LFB17:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movswl	16(%esp), %eax
	testw	%ax, %ax
	js	L72
	movl	12(%esp), %ecx
	movl	%esi, 4(%esp)
	imull	$44, %eax, %edx
	movl	%ebx, (%esp)
	.cfi_offset 6, -8
	.cfi_offset 3, -12
	addl	_sprite, %edx
	movzwl	348(%ecx), %ebx
	movl	_User(,%eax,4), %ecx
	movzwl	_gNet+12, %eax
	movl	%ebx, %esi
	testw	%ax, %ax
	je	L115
	cmpw	$3, %ax
	je	L116
	movl	_gNet+12, %eax
	andl	$-16711681, %eax
	cmpl	$1, %eax
	je	L117
L112:
	movl	(%esp), %ebx
	.cfi_restore 3
	movl	4(%esp), %esi
	.cfi_restore 6
L72:
	movl	$1, %eax
L68:
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L115:
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	cmpw	$1095, 82(%ecx)
	jne	L112
	cmpw	%bx, 30(%edx)
	movl	4(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	setne	%al
	movl	(%esp), %ebx
	.cfi_restore 3
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L117:
	.cfi_restore_state
	cmpb	$0, _gNet+14
	je	L112
	movl	144(%ecx), %ebx
	cmpl	12(%esp), %ebx
	je	L112
	movswl	%si, %eax
	movl	_User(,%eax,4), %esi
	movswl	30(%edx), %eax
	testw	%ax, %ax
	js	L79
	movl	_User(,%eax,4), %edx
	testl	%edx, %edx
	je	L79
	movl	144(%edx), %eax
	testl	%eax, %eax
	je	L81
	cmpl	12(%esp), %eax
	je	L112
	testl	%ebx, %ebx
	je	L82
	movzbl	262(%esi), %ebx
	xorl	%eax, %eax
	cmpb	%bl, 262(%ecx)
	je	L105
L82:
	movzbl	262(%esi), %eax
	cmpb	%al, 262(%edx)
	movl	(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	4(%esp), %esi
	.cfi_restore 6
	setne	%al
	jmp	L68
	.p2align 4,,10
	.p2align 3
L116:
	.cfi_restore_state
	movzbl	_gNet+15, %eax
	testb	%al, %al
	jne	L112
	movl	144(%ecx), %ecx
	cmpl	12(%esp), %ecx
	je	L112
	movswl	30(%edx), %edx
	testw	%dx, %dx
	js	L75
	movl	_User(,%edx,4), %edx
	testl	%edx, %edx
	je	L75
	movl	144(%edx), %edx
	testl	%edx, %edx
	je	L76
	cmpl	12(%esp), %edx
	je	L112
L76:
	testl	%ecx, %ecx
	je	L118
L105:
	movl	(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	4(%esp), %esi
	.cfi_restore 6
	jmp	L68
	.p2align 4,,10
	.p2align 3
L75:
	.cfi_restore_state
	testl	%ecx, %ecx
	movl	(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	4(%esp), %esi
	.cfi_restore 6
	sete	%al
	jmp	L68
	.p2align 4,,10
	.p2align 3
L79:
	.cfi_restore_state
	testl	%ebx, %ebx
	je	L112
	movzbl	262(%esi), %eax
	cmpb	%al, 262(%ecx)
	movl	(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	4(%esp), %esi
	.cfi_restore 6
	setne	%al
	jmp	L68
	.p2align 4,,10
	.p2align 3
L118:
	.cfi_restore_state
	testl	%edx, %edx
	movl	(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	4(%esp), %esi
	.cfi_restore 6
	sete	%al
	jmp	L68
L81:
	.cfi_restore_state
	testl	%ebx, %ebx
	je	L112
	movzbl	262(%ecx), %eax
	cmpb	%al, 262(%esi)
	movl	(%esp), %ebx
	.cfi_restore 3
	movl	4(%esp), %esi
	.cfi_restore 6
	setne	%al
	jmp	L68
	.cfi_endproc
LFE17:
	.p2align 4
	.globl	__Z11DoShrapMoves
	.def	__Z11DoShrapMoves;	.scl	2;	.type	32;	.endef
__Z11DoShrapMoves:
LFB18:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movswl	32(%esp), %eax
	movl	_User(,%eax,4), %ebx
	movl	156(%ebx), %ecx
	movl	152(%ebx), %edx
	movl	$12, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%ebx), %esi
	movl	%esi, 8(%esp)
	movswl	96(%ebx), %esi
	movl	$0, (%esp)
	movl	%esi, 4(%esp)
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%ebx)
	addl	$20, %esp
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
LFE18:
	.p2align 4
	.globl	__Z10SpawnShrapss
	.def	__Z10SpawnShrapss;	.scl	2;	.type	32;	.endef
__Z10SpawnShrapss:
LFB19:
	.cfi_startproc
	cmpb	$0, _Prediction
	jne	L396
	subl	$116, %esp
	.cfi_def_cfa_offset 120
	movl	_sprite, %ecx
	movl	%ebx, 100(%esp)
	.cfi_offset 3, -20
	movswl	120(%esp), %ebx
	movl	%esi, 104(%esp)
	imull	$44, %ebx, %eax
	.cfi_offset 6, -16
	leal	(%ecx,%eax), %esi
	movl	%esi, 44(%esp)
	cmpw	$4095, 24(%esi)
	jbe	L123
L122:
	movl	100(%esp), %ebx
	movl	104(%esp), %esi
	xorl	%eax, %eax
	addl	$116, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L123:
	.cfi_restore_state
	movl	44(%esp), %esi
	movl	%edi, 108(%esp)
	movl	%ebp, 112(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	_GlobBreakInfo, %edx
	movzwl	28(%esi), %esi
	movw	%si, 84(%esp)
	testl	%edx, %edx
	je	L125
	xorl	%eax, %eax
	movl	$0, 52(%esp)
	movzwl	4(%edx), %esi
	movl	$0, _GlobBreakInfo
	movzwl	8(%edx), %ebp
	movw	%ax, 40(%esp)
L126:
	cmpw	$19, %si
	ja	L403
	jmp	*L166(,%esi,4)
	.section .rdata,"dr"
	.align 4
L166:
	.long	L403
	.long	L180
	.long	L179
	.long	L403
	.long	L178
	.long	L177
	.long	L176
	.long	L175
	.long	L174
	.long	L171
	.long	L403
	.long	L173
	.long	L172
	.long	L171
	.long	L403
	.long	L170
	.long	L169
	.long	L168
	.long	L167
	.long	L165
	.text
	.p2align 4,,10
	.p2align 3
L396:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	xorl	%eax, %eax
	ret
L125:
	.cfi_def_cfa_offset 120
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	44(%esp), %edi
	movl	_User(,%ebx,4), %esi
	testb	$32, 43(%edi)
	je	L127
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	movl	_User(,%eax,4), %ebp
	testl	%ebp, %ebp
	je	L413
	cwtl
	movl	$1, %edx
	movl	$-1171354717, %edi
	call	__Z18change_sprite_statss
	movl	44(%esp), %ebp
	movl	_sprite, %ecx
	leal	42(%ebp), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebp), %edx
	subl	%ecx, %edx
	andw	$-8193, 42(%ebp)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebp)
L127:
	movzwl	82(%esi), %eax
	cmpw	$1469, %ax
	je	L274
	jg	L131
	cmpw	$666, %ax
	je	L132
	jle	L414
	cmpw	$1142, %ax
	je	L144
	jg	L145
	cmpw	$821, %ax
	jg	L146
	cmpw	$819, %ax
	jg	L275
	cmpw	$800, %ax
	jne	L415
	movl	$-1, %eax
	movl	$10, %ebp
	movl	$__ZZ10SpawnShrapssE9SmallGore, %edi
	movl	$0, 52(%esp)
	movw	%ax, 42(%esp)
	movl	$48, %eax
	movl	$0, 24(%esp)
	movw	%ax, 72(%esp)
	jmp	L130
	.p2align 4,,10
	.p2align 3
L131:
	cmpw	$2540, %ax
	je	L143
	jle	L416
	cmpw	$4277, %ax
	je	L281
	jle	L417
	cmpw	$4816, %ax
	je	L143
	jg	L159
	cmpw	$4320, %ax
	jne	L418
L160:
	cmpb	$0, 262(%esi)
	movl	$-1, %esi
	movl	$0, %ebp
	movl	$0, 52(%esp)
	movl	$0, 24(%esp)
	movw	%si, 42(%esp)
	jne	L300
	movl	$32, %ebx
	movl	$__ZZ10SpawnShrapssE8StdShrap, %edi
	movw	%bx, 72(%esp)
	.p2align 4
	.p2align 3
L130:
	cmpw	$0, 124(%esp)
	js	L221
	movswl	124(%esp), %eax
	movl	_User(,%eax,4), %edx
	movl	144(%edx), %eax
	testl	%eax, %eax
	je	L222
	movl	22980(%eax), %ebx
	testl	%ebx, %ebx
	je	L222
	movl	$__ZZ10SpawnShrapssE8StdShrap, %edi
L221:
	movl	44(%esp), %esi
	movswl	14(%esi), %ecx
	movzbl	21(%esi), %edx
	movl	8(%esi), %eax
	movswl	_tilesiz+2(,%ecx,4), %ebx
	testb	$-128, 12(%esi)
	je	L223
	movsbl	_picanm+2(%ecx,%ecx,4), %ecx
	movl	%ecx, %esi
	sall	$8, %esi
	cmpb	$64, %dl
	je	L419
	imull	%ebx, %edx
	movl	%eax, %ecx
	addl	%edx, %edx
	leal	(%edx,%esi), %ebx
	subl	%ebx, %ecx
L225:
	subl	%esi, %edx
	addl	%edx, %eax
L228:
	movl	%eax, 96(%esp)
	addl	%ecx, %eax
	sarl	%eax
	movl	%ecx, 88(%esp)
	movl	%eax, 92(%esp)
	cmpw	$0, 4(%edi)
	je	L254
	movl	52(%esp), %ecx
	testl	%ecx, %ecx
	jne	L230
	movzwl	72(%esp), %eax
	xorl	%edx, %edx
	movw	%bp, 68(%esp)
	movw	%dx, 64(%esp)
	movw	%ax, 52(%esp)
	xorl	%eax, %eax
	movw	%ax, 60(%esp)
	.p2align 4
	.p2align 3
L253:
	movzwl	6(%edi), %ecx
	cmpw	$0, 18(%edi)
	jne	L231
	movswl	20(%edi), %eax
	movzwl	84(%esp), %edx
	movl	%eax, %ebx
	sarw	%bx
	subl	%ebx, %edx
	movswl	%cx, %ebx
	andw	$2047, %dx
	movw	%dx, 60(%esp)
	cltd
	idivl	%ebx
	movl	%eax, 64(%esp)
L231:
	testw	%cx, %cx
	jle	L232
	movswl	84(%esp), %eax
	movl	%edi, %ebp
	movl	%eax, 48(%esp)
	movzbl	68(%esp), %eax
	movb	%al, 32(%esp)
	xorl	%eax, %eax
	movw	%ax, 40(%esp)
	movswl	64(%esp), %eax
	movl	%eax, 56(%esp)
	jmp	L247
	.p2align 4,,10
	.p2align 3
L423:
	cmpw	$933, %ax
	je	L302
	jg	L239
	cmpw	$903, %ax
	je	L241
	cmpw	$918, %ax
	jne	L242
L241:
	movl	$20, %eax
	movb	$20, 36(%esp)
	movl	$20, %edi
	movw	%ax, 52(%esp)
	movl	$20, %eax
	movl	$0, 24(%esp)
	movw	%ax, 72(%esp)
	.p2align 4
	.p2align 3
L238:
	leal	16(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	movb	$-15, 16(%ebx)
	mull	%edx
	movzbl	36(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	movb	%al, 20(%ebx)
	subl	%ecx, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	%edi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	movb	%al, 21(%ebx)
	subl	%ecx, %edx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$4, 18(%ebx)
	cmpw	$0, 42(%esp)
	js	L249
	movswl	42(%esp), %eax
	movl	28(%esp), %edx
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
L249:
	movzbl	32(%esp), %eax
	leal	17(%ebx), %edx
	leal	32(%ebx), %edi
	subl	%ecx, %edx
	movb	%al, 262(%esi)
	movl	$-1171354717, %eax
	mull	%edx
	movzbl	32(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movb	%al, 17(%ebx)
	movswl	14(%ebp), %eax
	subl	%ecx, %edx
	addl	%eax, %eax
	movl	%eax, 36(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	movzwl	36(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 32(%ebx)
	movswl	14(%ebp), %edx
	movswl	16(%ebp), %eax
	subl	%edx, %eax
	call	__Z11RandomRangei
	subl	_sprite, %edi
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addw	%cx, 32(%ebx)
	movl	$33554944, 96(%esi)
	movswl	10(%ebp), %edx
	movw	%dx, 92(%esi)
	movswl	12(%ebp), %eax
	subl	%edx, %eax
	call	__Z11RandomRangei
	movl	28(%esp), %edi
	addw	92(%esi), %ax
	movl	$8, %ecx
	negl	%eax
	movw	%ax, 92(%esi)
	movl	_User(,%edi,4), %edx
	movl	68(%edx), %eax
	movw	%cx, 94(%edx)
	andl	$-65, %eax
	orl	$32, %eax
	movl	%eax, 68(%edx)
	movl	%edi, (%esp)
	movl	$8, %edi
	call	__Z6DoJumps
	movw	%di, 94(%esi)
	movswl	28(%ebx), %eax
	movswl	32(%ebx), %edx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 152(%esi)
	movzwl	28(%ebx), %eax
	movswl	32(%ebx), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%esi)
	movl	24(%esp), %eax
	testl	%eax, %eax
	jne	L248
	orl	$536870912, 68(%esi)
L248:
	addw	$1, 40(%esp)
	movzwl	40(%esp), %eax
	cmpw	%ax, 6(%ebp)
	jle	L420
L247:
	movl	48(%esp), %eax
	movl	0(%ebp), %ecx
	movswl	4(%ebp), %edx
	movl	44(%esp), %esi
	movl	$512, 20(%esp)
	movl	%eax, 16(%esp)
	movswl	8(%ebp), %eax
	movl	88(%esp,%eax,4), %eax
	movl	%eax, 12(%esp)
	movl	4(%esi), %eax
	movl	%eax, 8(%esp)
	movl	(%esi), %eax
	movl	%eax, 4(%esp)
	movswl	24(%esi), %eax
	movl	%eax, (%esp)
	movl	$6, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %ebx
	imull	$44, %ebx, %eax
	movl	%ebx, 28(%esp)
	movl	_User(,%ebx,4), %esi
	movl	_sprite, %ebx
	leal	28(%eax), %edx
	addl	%eax, %ebx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	leal	1(%eax), %ecx
	cmpw	$0, 18(%ebp)
	jne	L421
	movswl	40(%esp), %eax
	imull	56(%esp), %eax
	movl	%ecx, _spritechanged(,%edx,4)
	movswl	60(%esp), %ecx
	addl	%ecx, %eax
	movw	%ax, 28(%ebx)
	movl	_spritechanged(,%edx,4), %edi
	andw	$2047, %ax
	leal	1(%edi), %ecx
L252:
	movl	%ecx, _spritechanged(,%edx,4)
	movw	%ax, 28(%ebx)
	movswl	92(%esi), %edi
	movl	%edi, %eax
	negw	%ax
	cmovs	%edi, %eax
	sall	$2, %edi
	movzwl	%ax, %eax
	sall	$3, %eax
	call	__Z11RandomRangei
	movl	%edi, %edx
	negl	%edx
	cmovs	%edi, %edx
	addl	%eax, %eax
	subl	%eax, %edx
	movl	_krandcount, %eax
	movl	%edx, 160(%esi)
	movl	%eax, 36(%esp)
	addl	$1, %eax
	movl	%eax, _krandcount
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %edi
	movzwl	%di, %edi
	movl	%edi, _randomseed
	cmpl	$65535, %edi
	je	L422
	movl	%edi, %edx
	movl	$-2147450879, %eax
	sall	$14, %edx
	mull	%edx
	shrl	$24, %edx
	addl	$64, %edx
L251:
	movzwl	82(%esi), %eax
	movw	%dx, 216(%esi)
	movl	_sprite, %ecx
	cmpw	$1562, %ax
	je	L236
	jle	L423
	cmpw	$1719, %ax
	je	L243
	cmpw	$2058, %ax
	je	L244
	cmpw	$1670, %ax
	jne	L242
	movl	$30, %edx
	movl	$26, %eax
	movb	$26, 36(%esp)
	movl	$30, %edi
	movl	$1, 24(%esp)
	movw	%dx, 52(%esp)
	movw	%ax, 72(%esp)
	jmp	L238
L416:
	cmpw	$2058, %ax
	je	L280
	jg	L148
	cmpw	$2017, %ax
	je	L149
	jg	L150
	cmpw	$1580, %ax
	je	L160
L407:
	movl	$-1, %eax
	movl	$0, 52(%esp)
	xorl	%ebp, %ebp
	movl	$__ZZ10SpawnShrapssE9SmallGore, %edi
	movw	%ax, 42(%esp)
	movl	$48, %eax
	movl	$0, 24(%esp)
	movw	%ax, 72(%esp)
	jmp	L130
L414:
	cmpw	$475, %ax
	jg	L134
	cmpw	$442, %ax
	jle	L407
	subw	$443, %ax
	cmpw	$32, %ax
	ja	L407
	movzwl	%ax, %eax
	jmp	*L138(,%eax,4)
	.section .rdata,"dr"
	.align 4
L138:
	.long	L142
	.long	L407
	.long	L407
	.long	L407
	.long	L407
	.long	L407
	.long	L407
	.long	L407
	.long	L407
	.long	L407
	.long	L141
	.long	L407
	.long	L407
	.long	L407
	.long	L407
	.long	L407
	.long	L407
	.long	L407
	.long	L407
	.long	L407
	.long	L140
	.long	L407
	.long	L407
	.long	L407
	.long	L407
	.long	L139
	.long	L407
	.long	L407
	.long	L407
	.long	L407
	.long	L407
	.long	L407
	.long	L137
	.text
L171:
	movl	44(%esp), %esi
	movl	$-1171354717, %ebx
	leal	8(%esi), %edi
	movl	%edi, %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%esi), %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	44(%esp), %eax
	subl	%ecx, %eax
	leal	4(%esi), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebx
	movl	%edx, %eax
	movl	44(%esp), %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$221, %eax
	movl	%edi, (%esp)
	movl	$__ZZ10SpawnShrapssE10StoneShrap, %edi
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	testw	%bp, %bp
	je	L184
	xorl	%eax, %eax
L185:
	movl	__ZZ10SpawnShrapssE10StoneShrap(%eax), %esi
	movl	__ZZ10SpawnShrapssE10StoneShrap+4(%eax), %ebx
	addl	$16, %eax
	movl	__ZZ10SpawnShrapssE10StoneShrap-8(%eax), %ecx
	movl	__ZZ10SpawnShrapssE10StoneShrap-4(%eax), %edx
	movl	%esi, __ZZ10SpawnShrapssE11CustomShrap-16(%eax)
	movl	%ebx, __ZZ10SpawnShrapssE11CustomShrap-12(%eax)
	movl	%ecx, __ZZ10SpawnShrapssE11CustomShrap-8(%eax)
	movl	%edx, __ZZ10SpawnShrapssE11CustomShrap-4(%eax)
	cmpl	$96, %eax
	jb	L185
	movw	%bp, __ZZ10SpawnShrapssE11CustomShrap+6
	movl	$__ZZ10SpawnShrapssE11CustomShrap, %edi
L184:
	movzwl	40(%esp), %eax
	movl	$-1, %ebp
	movl	$1, 24(%esp)
	movw	%bp, 42(%esp)
	xorl	%ebp, %ebp
	addl	$8, %eax
	movw	%ax, 72(%esp)
	jmp	L130
L417:
	cmpw	$4096, %ax
	je	L156
	jg	L157
	subw	$3100, %ax
	cmpw	$21, %ax
	ja	L407
	movl	$2097355, %edx
	btl	%eax, %edx
	jnc	L407
L403:
	movl	108(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	112(%esp), %ebp
	.cfi_restore 5
	jmp	L122
L180:
	.cfi_restore_state
	movl	44(%esp), %esi
	movl	$-1171354717, %ebx
	leal	8(%esi), %edi
	movl	%edi, %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%esi), %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	44(%esp), %eax
	subl	%ecx, %eax
	leal	4(%esi), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebx
	movl	%edx, %eax
	movl	44(%esp), %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$227, %eax
	movl	%edi, (%esp)
	movl	$__ZZ10SpawnShrapssE10GlassShrap, %edi
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	testw	%bp, %bp
	je	L208
	xorl	%eax, %eax
L182:
	movl	__ZZ10SpawnShrapssE10GlassShrap(%eax), %esi
	movl	__ZZ10SpawnShrapssE10GlassShrap+4(%eax), %ebx
	addl	$16, %eax
	movl	__ZZ10SpawnShrapssE10GlassShrap-8(%eax), %ecx
	movl	__ZZ10SpawnShrapssE10GlassShrap-4(%eax), %edx
	movl	%esi, __ZZ10SpawnShrapssE11CustomShrap-16(%eax)
	movl	%ebx, __ZZ10SpawnShrapssE11CustomShrap-12(%eax)
	movl	%ecx, __ZZ10SpawnShrapssE11CustomShrap-8(%eax)
	movl	%edx, __ZZ10SpawnShrapssE11CustomShrap-4(%eax)
	cmpl	$96, %eax
	jb	L182
L409:
	movw	%bp, __ZZ10SpawnShrapssE11CustomShrap+6
	movl	$__ZZ10SpawnShrapssE11CustomShrap, %edi
L208:
	movzwl	40(%esp), %eax
	movl	$1, 24(%esp)
	xorl	%ebp, %ebp
	addl	$16, %eax
	movw	%ax, 72(%esp)
	movl	$-1, %eax
	movw	%ax, 42(%esp)
	jmp	L130
L173:
	movl	44(%esp), %ebp
	movl	$-1171354717, %ebx
	leal	8(%ebp), %edi
	movl	%edi, %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%ebp, %eax
	subl	%ecx, %eax
	leal	4(%ebp), %ecx
	mull	%ebx
	movl	$34, %ebx
	movl	%edx, %eax
	movl	%ebp, %edx
	xorl	%ebp, %ebp
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$395, %eax
	movl	%edi, (%esp)
	movl	$__ZZ10SpawnShrapssE9SmallGore, %edi
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	$-1, %ecx
	movw	%bx, 72(%esp)
	movl	$0, 24(%esp)
	movw	%cx, 42(%esp)
	jmp	L130
L165:
	movl	44(%esp), %esi
	movl	$-1171354717, %ebx
	leal	8(%esi), %edi
	movl	%edi, %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%esi), %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	44(%esp), %eax
	subl	%ecx, %eax
	leal	4(%esi), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebx
	movl	%edx, %eax
	movl	44(%esp), %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$220, %eax
	movl	%edi, (%esp)
	movl	$__ZZ10SpawnShrapssE8PaperMix, %edi
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	testw	%bp, %bp
	je	L211
	xorl	%eax, %eax
L212:
	movl	__ZZ10SpawnShrapssE8PaperMix(%eax), %esi
	movl	__ZZ10SpawnShrapssE8PaperMix+4(%eax), %ebx
	addl	$16, %eax
	movl	__ZZ10SpawnShrapssE8PaperMix-8(%eax), %ecx
	movl	__ZZ10SpawnShrapssE8PaperMix-4(%eax), %edx
	movl	%esi, __ZZ10SpawnShrapssE11CustomShrap-16(%eax)
	movl	%ebx, __ZZ10SpawnShrapssE11CustomShrap-12(%eax)
	movl	%ecx, __ZZ10SpawnShrapssE11CustomShrap-8(%eax)
	movl	%edx, __ZZ10SpawnShrapssE11CustomShrap-4(%eax)
	cmpl	$160, %eax
	jb	L212
	movl	__ZZ10SpawnShrapssE8PaperMix(%eax), %edx
	movl	%edx, __ZZ10SpawnShrapssE11CustomShrap(%eax)
	movl	__ZZ10SpawnShrapssE8PaperMix+4(%eax), %edx
	movl	%edx, __ZZ10SpawnShrapssE11CustomShrap+4(%eax)
L410:
	movw	%bp, __ZZ10SpawnShrapssE11CustomShrap+6
	movl	$__ZZ10SpawnShrapssE11CustomShrap, %edi
L211:
	movzwl	40(%esp), %eax
	movl	$0, 24(%esp)
	xorl	%ebp, %ebp
	addl	$16, %eax
	movw	%ax, 72(%esp)
	movl	$-1, %eax
	movw	%ax, 42(%esp)
	jmp	L130
L167:
	movl	$__ZZ10SpawnShrapssE7Marbels, %edi
	testw	%bp, %bp
	je	L205
	xorl	%eax, %eax
L206:
	movl	__ZZ10SpawnShrapssE7Marbels(%eax), %esi
	movl	__ZZ10SpawnShrapssE7Marbels+4(%eax), %ebx
	addl	$16, %eax
	movl	__ZZ10SpawnShrapssE7Marbels-8(%eax), %ecx
	movl	__ZZ10SpawnShrapssE7Marbels-4(%eax), %edx
	movl	%esi, __ZZ10SpawnShrapssE11CustomShrap-16(%eax)
	movl	%ebx, __ZZ10SpawnShrapssE11CustomShrap-12(%eax)
	movl	%ecx, __ZZ10SpawnShrapssE11CustomShrap-8(%eax)
	movl	%edx, __ZZ10SpawnShrapssE11CustomShrap-4(%eax)
	cmpl	$112, %eax
	jb	L206
	movl	__ZZ10SpawnShrapssE7Marbels(%eax), %edx
	movw	%bp, __ZZ10SpawnShrapssE11CustomShrap+6
	movl	$__ZZ10SpawnShrapssE11CustomShrap, %edi
	movl	%edx, __ZZ10SpawnShrapssE11CustomShrap(%eax)
	movl	__ZZ10SpawnShrapssE7Marbels+4(%eax), %edx
	movl	%edx, __ZZ10SpawnShrapssE11CustomShrap+4(%eax)
L205:
	movzwl	40(%esp), %eax
	movl	$-1, %edx
	movl	$1, 24(%esp)
	xorl	%ebp, %ebp
	movw	%dx, 42(%esp)
	addl	$10, %eax
	movw	%ax, 72(%esp)
	jmp	L130
L168:
	movl	44(%esp), %esi
	movl	$-1171354717, %ebx
	leal	8(%esi), %edi
	movl	%edi, %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%esi), %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	44(%esp), %eax
	subl	%ecx, %eax
	leal	4(%esi), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebx
	movl	%edx, %eax
	movl	44(%esp), %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$220, %eax
	movl	%edi, (%esp)
	movl	$__ZZ10SpawnShrapssE7WoodMix, %edi
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	testw	%bp, %bp
	je	L208
	xorl	%eax, %eax
L209:
	movl	__ZZ10SpawnShrapssE7WoodMix(%eax), %esi
	movl	__ZZ10SpawnShrapssE7WoodMix+4(%eax), %ebx
	addl	$16, %eax
	movl	__ZZ10SpawnShrapssE7WoodMix-8(%eax), %ecx
	movl	__ZZ10SpawnShrapssE7WoodMix-4(%eax), %edx
	movl	%esi, __ZZ10SpawnShrapssE11CustomShrap-16(%eax)
	movl	%ebx, __ZZ10SpawnShrapssE11CustomShrap-12(%eax)
	movl	%ecx, __ZZ10SpawnShrapssE11CustomShrap-8(%eax)
	movl	%edx, __ZZ10SpawnShrapssE11CustomShrap-4(%eax)
	cmpl	$160, %eax
	jb	L209
	movl	__ZZ10SpawnShrapssE7WoodMix(%eax), %edx
	movl	%edx, __ZZ10SpawnShrapssE11CustomShrap(%eax)
	movl	__ZZ10SpawnShrapssE7WoodMix+4(%eax), %edx
	movl	%edx, __ZZ10SpawnShrapssE11CustomShrap+4(%eax)
	jmp	L409
	.p2align 4,,10
	.p2align 3
L169:
	movl	44(%esp), %esi
	movl	$-1171354717, %ebx
	leal	8(%esi), %edi
	movl	%edi, %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%esi), %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	44(%esp), %eax
	subl	%ecx, %eax
	leal	4(%esi), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebx
	movl	%edx, %eax
	movl	44(%esp), %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$435, %eax
	movl	%edi, (%esp)
	movl	$__ZZ10SpawnShrapssE8MetalMix, %edi
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	testw	%bp, %bp
	je	L208
	xorl	%eax, %eax
L203:
	movl	__ZZ10SpawnShrapssE8MetalMix(%eax), %esi
	movl	__ZZ10SpawnShrapssE8MetalMix+4(%eax), %ebx
	addl	$16, %eax
	movl	__ZZ10SpawnShrapssE8MetalMix-8(%eax), %ecx
	movl	__ZZ10SpawnShrapssE8MetalMix-4(%eax), %edx
	movl	%esi, __ZZ10SpawnShrapssE11CustomShrap-16(%eax)
	movl	%ebx, __ZZ10SpawnShrapssE11CustomShrap-12(%eax)
	movl	%ecx, __ZZ10SpawnShrapssE11CustomShrap-8(%eax)
	movl	%edx, __ZZ10SpawnShrapssE11CustomShrap-4(%eax)
	cmpl	$160, %eax
	jb	L203
	movl	__ZZ10SpawnShrapssE8MetalMix(%eax), %edx
	movl	$__ZZ10SpawnShrapssE11CustomShrap, %edi
	movl	%edx, __ZZ10SpawnShrapssE11CustomShrap(%eax)
	movl	__ZZ10SpawnShrapssE8MetalMix+4(%eax), %edx
	movl	%edx, __ZZ10SpawnShrapssE11CustomShrap+4(%eax)
	movw	%bp, __ZZ10SpawnShrapssE11CustomShrap+6
	jmp	L208
L170:
	movl	44(%esp), %esi
	movl	$-1171354717, %ebx
	leal	8(%esi), %edi
	movl	%edi, %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%esi), %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	44(%esp), %eax
	subl	%ecx, %eax
	leal	4(%esi), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebx
	movl	%edx, %eax
	movl	44(%esp), %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$311, %eax
	movl	%edi, (%esp)
	movl	$__ZZ10SpawnShrapssE9CoinShrap, %edi
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	testw	%bp, %bp
	je	L208
	xorl	%eax, %eax
L200:
	movl	__ZZ10SpawnShrapssE9CoinShrap(%eax), %esi
	movl	__ZZ10SpawnShrapssE9CoinShrap+4(%eax), %ebx
	addl	$16, %eax
	movl	__ZZ10SpawnShrapssE9CoinShrap-8(%eax), %ecx
	movl	__ZZ10SpawnShrapssE9CoinShrap-4(%eax), %edx
	movl	%esi, __ZZ10SpawnShrapssE11CustomShrap-16(%eax)
	movl	%ebx, __ZZ10SpawnShrapssE11CustomShrap-12(%eax)
	movl	%ecx, __ZZ10SpawnShrapssE11CustomShrap-8(%eax)
	movl	%edx, __ZZ10SpawnShrapssE11CustomShrap-4(%eax)
	cmpl	$112, %eax
	jb	L200
	movl	__ZZ10SpawnShrapssE9CoinShrap(%eax), %edx
	movl	$__ZZ10SpawnShrapssE11CustomShrap, %edi
	movl	%edx, __ZZ10SpawnShrapssE11CustomShrap(%eax)
	movl	__ZZ10SpawnShrapssE9CoinShrap+4(%eax), %edx
	movl	%edx, __ZZ10SpawnShrapssE11CustomShrap+4(%eax)
	movw	%bp, __ZZ10SpawnShrapssE11CustomShrap+6
	jmp	L208
L174:
	movl	44(%esp), %esi
	movl	$-1171354717, %ebx
	leal	8(%esi), %edi
	movl	%edi, %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%esi), %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	44(%esp), %eax
	subl	%ecx, %eax
	leal	4(%esi), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebx
	movl	%edx, %eax
	movl	44(%esp), %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$435, %eax
	movl	%edi, (%esp)
	movl	$__ZZ10SpawnShrapssE10MetalShrap, %edi
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	testw	%bp, %bp
	je	L208
	xorl	%eax, %eax
L197:
	movl	__ZZ10SpawnShrapssE10MetalShrap(%eax), %esi
	movl	__ZZ10SpawnShrapssE10MetalShrap+4(%eax), %ebx
	addl	$16, %eax
	movl	__ZZ10SpawnShrapssE10MetalShrap-8(%eax), %ecx
	movl	__ZZ10SpawnShrapssE10MetalShrap-4(%eax), %edx
	movl	%esi, __ZZ10SpawnShrapssE11CustomShrap-16(%eax)
	movl	%ebx, __ZZ10SpawnShrapssE11CustomShrap-12(%eax)
	movl	%ecx, __ZZ10SpawnShrapssE11CustomShrap-8(%eax)
	movl	%edx, __ZZ10SpawnShrapssE11CustomShrap-4(%eax)
	cmpl	$96, %eax
	jb	L197
	jmp	L409
	.p2align 4,,10
	.p2align 3
L172:
	movl	44(%esp), %esi
	movl	$-1171354717, %ebx
	leal	8(%esi), %edi
	movl	%edi, %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%esi), %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	44(%esp), %eax
	subl	%ecx, %eax
	leal	4(%esi), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebx
	movl	%edx, %eax
	movl	44(%esp), %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$220, %eax
	movl	%edi, (%esp)
	movl	$__ZZ10SpawnShrapssE9WoodShrap, %edi
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	testw	%bp, %bp
	je	L208
	xorl	%eax, %eax
L188:
	movl	__ZZ10SpawnShrapssE9WoodShrap(%eax), %esi
	movl	__ZZ10SpawnShrapssE9WoodShrap+4(%eax), %ebx
	addl	$16, %eax
	movl	__ZZ10SpawnShrapssE9WoodShrap-8(%eax), %ecx
	movl	__ZZ10SpawnShrapssE9WoodShrap-4(%eax), %edx
	movl	%esi, __ZZ10SpawnShrapssE11CustomShrap-16(%eax)
	movl	%ebx, __ZZ10SpawnShrapssE11CustomShrap-12(%eax)
	movl	%ecx, __ZZ10SpawnShrapssE11CustomShrap-8(%eax)
	movl	%edx, __ZZ10SpawnShrapssE11CustomShrap-4(%eax)
	cmpl	$96, %eax
	jb	L188
	jmp	L409
	.p2align 4,,10
	.p2align 3
L178:
	movl	$__ZZ10SpawnShrapssE10PaperShrap, %edi
	testw	%bp, %bp
	je	L211
	xorl	%eax, %eax
L194:
	movl	__ZZ10SpawnShrapssE10PaperShrap(%eax), %esi
	movl	__ZZ10SpawnShrapssE10PaperShrap+4(%eax), %ebx
	addl	$16, %eax
	movl	__ZZ10SpawnShrapssE10PaperShrap-8(%eax), %ecx
	movl	__ZZ10SpawnShrapssE10PaperShrap-4(%eax), %edx
	movl	%esi, __ZZ10SpawnShrapssE11CustomShrap-16(%eax)
	movl	%ebx, __ZZ10SpawnShrapssE11CustomShrap-12(%eax)
	movl	%ecx, __ZZ10SpawnShrapssE11CustomShrap-8(%eax)
	movl	%edx, __ZZ10SpawnShrapssE11CustomShrap-4(%eax)
	cmpl	$96, %eax
	jb	L194
	jmp	L410
	.p2align 4,,10
	.p2align 3
L179:
	movl	44(%esp), %esi
	movl	$-1171354717, %ebx
	leal	8(%esi), %edi
	movl	%edi, %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%esi), %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	44(%esp), %eax
	subl	%ecx, %eax
	leal	4(%esi), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebx
	movl	%edx, %eax
	movl	44(%esp), %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$220, %eax
	movl	%edi, (%esp)
	movl	$__ZZ10SpawnShrapssE9WoodShrap, %edi
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	testw	%bp, %bp
	je	L208
	xorl	%eax, %eax
L191:
	movl	__ZZ10SpawnShrapssE9WoodShrap(%eax), %esi
	movl	__ZZ10SpawnShrapssE9WoodShrap+4(%eax), %ebx
	addl	$16, %eax
	movl	__ZZ10SpawnShrapssE9WoodShrap-8(%eax), %ecx
	movl	__ZZ10SpawnShrapssE9WoodShrap-4(%eax), %edx
	movl	%esi, __ZZ10SpawnShrapssE11CustomShrap-16(%eax)
	movl	%ebx, __ZZ10SpawnShrapssE11CustomShrap-12(%eax)
	movl	%ecx, __ZZ10SpawnShrapssE11CustomShrap-8(%eax)
	movl	%edx, __ZZ10SpawnShrapssE11CustomShrap-4(%eax)
	cmpl	$96, %eax
	jb	L191
	jmp	L409
	.p2align 4,,10
	.p2align 3
L176:
	movl	%ebx, (%esp)
	movl	$-1171354717, %edi
	call	__Z13SpawnLargeExps
	movl	_sprite, %esi
	imull	$44, %eax, %ecx
	movswl	40(%esp), %eax
	addl	%esi, %ecx
	movzbl	20(%ecx), %ebx
	addl	%eax, %ebx
	leal	21(%ecx), %eax
	subl	%esi, %eax
	mull	%edi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	20(%ecx), %eax
	subl	%esi, %eax
	movb	%bl, 21(%ecx)
	mull	%edi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movb	%bl, 20(%ecx)
	movl	108(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	112(%esp), %ebp
	.cfi_restore 5
	jmp	L122
L177:
	.cfi_restore_state
	movzwl	40(%esp), %eax
	movl	$-1, %esi
	xorl	%ebp, %ebp
	movl	$__ZZ10SpawnShrapssE9SmallGore, %edi
	movl	$0, 24(%esp)
	addl	$16, %eax
	movw	%si, 42(%esp)
	movw	%ax, 72(%esp)
	jmp	L130
L175:
	movl	%ebx, (%esp)
	movl	$-1171354717, %ebp
	call	__Z13SpawnLargeExps
	movl	_sprite, %esi
	imull	$44, %eax, %ecx
	movl	%eax, %ebx
	movswl	40(%esp), %eax
	addl	%esi, %ecx
	movzbl	20(%ecx), %edi
	addl	%eax, %edi
	leal	21(%ecx), %eax
	subl	%esi, %eax
	mull	%ebp
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%edi, %eax
	movb	%al, 21(%ecx)
	leal	20(%ecx), %eax
	subl	%esi, %eax
	mull	%ebp
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%edi, %eax
	movb	%al, 20(%ecx)
	movswl	%bx, %eax
	call	__Z14InitPhosphoruss.isra.0
	movl	108(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	112(%esp), %ebp
	.cfi_restore 5
	jmp	L122
	.p2align 4,,10
	.p2align 3
L422:
	.cfi_restore_state
	movl	$95, %edx
	jmp	L251
	.p2align 4,,10
	.p2align 3
L421:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edi
	leal	1(%eax,%edi,4), %edi
	movzwl	%di, %edi
	movl	%edi, _randomseed
	movzwl	20(%ebp), %eax
	movl	%ecx, _spritechanged(,%edx,4)
	movswl	%ax, %ecx
	sarw	%ax
	sall	$5, %ecx
	subl	$1, %ecx
	andl	%edi, %ecx
	movswl	%ax, %edi
	sarl	$5, %ecx
	addl	48(%esp), %ecx
	movl	%ecx, %eax
	subl	%edi, %eax
	movw	%ax, 28(%ebx)
	movl	_spritechanged(,%edx,4), %ecx
	andw	$2047, %ax
	addl	$1, %ecx
	jmp	L252
	.p2align 4,,10
	.p2align 3
L239:
	cmpw	$1550, %ax
	jne	L242
	movl	$21, %eax
	movb	$21, 36(%esp)
	movl	$21, %edi
	movw	%ax, 52(%esp)
	movl	$21, %eax
	movl	$0, 24(%esp)
	movw	%ax, 72(%esp)
	jmp	L238
	.p2align 4,,10
	.p2align 3
L242:
	movzbl	72(%esp), %eax
	movzbl	52(%esp), %edi
	movb	%al, 36(%esp)
	jmp	L238
	.p2align 4,,10
	.p2align 3
L236:
	movzbl	72(%esp), %eax
	movl	$0, 24(%esp)
	movzbl	52(%esp), %edi
	movb	%al, 36(%esp)
	jmp	L238
	.p2align 4,,10
	.p2align 3
L302:
	movl	$24, %eax
	movb	$24, 36(%esp)
	movl	$24, %edi
	movw	%ax, 52(%esp)
	movl	$24, %eax
	movl	$1, 24(%esp)
	movw	%ax, 72(%esp)
	jmp	L238
	.p2align 4,,10
	.p2align 3
L244:
	leal	8(%ebx), %edx
	movl	$-1171354717, %eax
	movl	$0, 24(%esp)
	subl	%ecx, %edx
	mull	%edx
	leal	(%edi,%edi,4), %eax
	leal	1(%edi,%eax,4), %eax
	movl	36(%esp), %edi
	shrl	$5, %edx
	addl	$3, %edi
	addl	$1, _spritechanged(,%edx,4)
	movzwl	%ax, %edx
	movzbl	%ah, %eax
	movl	%edi, _krandcount
	leal	(%edx,%edx,4), %edi
	andl	$3, %eax
	leal	1(%edx,%edi,4), %edi
	addl	$5, %eax
	subl	$1024, 8(%ebx)
	movzwl	%di, %edi
	movl	%eax, 248(%esi)
	movl	%edi, _randomseed
	sarl	$8, %edi
	andl	$3, %edi
	movw	%ax, 72(%esp)
	addl	$5, %edi
	movb	%al, 36(%esp)
	movl	%edi, 252(%esi)
	movw	%di, 52(%esp)
	jmp	L238
	.p2align 4,,10
	.p2align 3
L243:
	leal	8(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	leal	(%edi,%edi,4), %eax
	leal	1(%edi,%eax,4), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	%ax, %edx
	movzbl	%ah, %eax
	andl	$31, %eax
	subl	$1024, 8(%ebx)
	addl	$12, %eax
	movl	%eax, 248(%esi)
	movl	%eax, 24(%esp)
	leal	(%edx,%edx,4), %eax
	movzwl	24(%esp), %ecx
	leal	1(%edx,%eax,4), %eax
	movzwl	%ax, %edx
	movw	%cx, 72(%esp)
	movzbl	%ah, %eax
	movl	36(%esp), %ecx
	andl	$31, %eax
	leal	12(%eax), %edi
	leal	4(%ecx), %eax
	movl	%eax, _krandcount
	leal	(%edx,%edx,4), %eax
	leal	1(%edx,%eax,4), %eax
	movl	%edi, 252(%esi)
	movzwl	%ax, %eax
	movw	%di, 52(%esp)
	movl	%eax, _randomseed
	sarl	$5, %eax
	movw	%ax, 176(%esi)
	movswl	28(%ebx), %eax
	movzwl	_sintable(%eax,%eax), %ecx
	addl	$512, %eax
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %edx
	movl	$6, 16(%esp)
	sarw	$6, %cx
	movl	$1090519104, 12(%esp)
	movl	28(%esp), %eax
	movswl	%cx, %ecx
	movl	$2048, 8(%esp)
	sarw	$6, %dx
	movl	$2048, 4(%esp)
	movswl	%dx, %edx
	movl	$0, (%esp)
	call	__Z12move_missilesiiiiiji
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	andl	$1023, %eax
	movl	%edx, _randomseed
	cmpl	$699, %eax
	jg	L250
	movzbl	24(%esp), %eax
	xorl	%edx, %edx
	movl	$0, 24(%esp)
	movw	%dx, 82(%esi)
	movl	_sprite, %ecx
	movb	%al, 36(%esp)
	jmp	L238
	.p2align 4,,10
	.p2align 3
L420:
	movl	%ebp, %edi
L232:
	addl	$24, %edi
	cmpw	$0, 4(%edi)
	jne	L253
L254:
	movl	108(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	112(%esp), %ebp
	.cfi_restore 5
	movl	$1, %eax
	movl	100(%esp), %ebx
	movl	104(%esp), %esi
	addl	$116, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L250:
	.cfi_restore_state
	movzbl	24(%esp), %eax
	movl	_sprite, %ecx
	movl	$0, 24(%esp)
	movb	%al, 36(%esp)
	jmp	L238
L223:
	cmpb	$64, %dl
	je	L424
	imull	%ebx, %edx
	sall	$2, %edx
L227:
	movl	%eax, %ecx
	subl	%edx, %ecx
	jmp	L228
L222:
	cmpw	$2059, 82(%edx)
	movl	$__ZZ10SpawnShrapssE16HeartAttackShrap, %eax
	cmove	%eax, %edi
	jmp	L221
L230:
	movl	52(%esp), %eax
	movw	%bp, 86(%esp)
	shrl	%eax
	negl	%eax
	movl	%eax, 60(%esp)
	movzwl	72(%esp), %eax
	movw	%ax, 64(%esp)
	xorl	%eax, %eax
	movw	%ax, 74(%esp)
	xorl	%eax, %eax
	movw	%ax, 80(%esp)
	.p2align 4
	.p2align 3
L273:
	movzwl	6(%edi), %ecx
	cmpw	$0, 18(%edi)
	jne	L255
	movswl	20(%edi), %eax
	movzwl	84(%esp), %edx
	movl	%eax, %ebx
	sarw	%bx
	subl	%ebx, %edx
	movswl	%cx, %ebx
	andw	$2047, %dx
	movw	%dx, 74(%esp)
	cltd
	idivl	%ebx
	movl	%eax, 80(%esp)
L255:
	testw	%cx, %cx
	jle	L256
	movswl	84(%esp), %eax
	movl	%edi, %ebp
	movl	%eax, 48(%esp)
	movzbl	86(%esp), %eax
	movb	%al, 56(%esp)
	xorl	%eax, %eax
	movw	%ax, 40(%esp)
	movswl	80(%esp), %eax
	movl	%eax, 68(%esp)
	jmp	L272
	.p2align 4,,10
	.p2align 3
L427:
	cmpw	$933, %ax
	je	L305
	jg	L263
	cmpw	$903, %ax
	je	L265
	cmpw	$918, %ax
	jne	L266
L265:
	movl	$20, %eax
	movb	$20, 32(%esp)
	movl	$20, %ecx
	movw	%ax, 64(%esp)
	movl	$20, %eax
	movw	%ax, 72(%esp)
	leal	8(%ebx), %eax
	movl	$0, 24(%esp)
	movl	%eax, 36(%esp)
	.p2align 4
	.p2align 3
L262:
	leal	16(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%edi, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%edi, %edx
	movb	$-15, 16(%ebx)
	mull	%edx
	movzbl	32(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	movb	%al, 20(%ebx)
	subl	%edi, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%edi, %edx
	movb	%cl, 21(%ebx)
	mull	%edx
	movswl	42(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$4, 18(%ebx)
	testw	%ax, %ax
	js	L270
	movl	28(%esp), %edx
	call	__Z8SetOwnerss
L270:
	movl	52(%esp), %eax
	leal	32(%ebx), %edi
	call	__Z11RandomRangei
	movl	36(%esp), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	addl	60(%esp), %ecx
	mull	%edx
	movl	$-1171354717, %eax
	sall	$8, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ebx), %edx
	subl	_sprite, %edx
	mull	%edx
	addl	%ecx, 8(%ebx)
	movzbl	56(%esp), %ecx
	movl	$-1171354717, %eax
	movb	%cl, 262(%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	subl	_sprite, %edx
	mull	%edx
	movb	%cl, 17(%ebx)
	movswl	14(%ebp), %ecx
	addl	%ecx, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 32(%ebx)
	movswl	14(%ebp), %edx
	movswl	16(%ebp), %eax
	subl	%edx, %eax
	call	__Z11RandomRangei
	subl	_sprite, %edi
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addw	%cx, 32(%ebx)
	movl	$33554944, 96(%esi)
	movswl	10(%ebp), %edx
	movw	%dx, 92(%esi)
	movswl	12(%ebp), %eax
	subl	%edx, %eax
	call	__Z11RandomRangei
	movl	28(%esp), %ecx
	addw	92(%esi), %ax
	negl	%eax
	movw	%ax, 92(%esi)
	movl	_User(,%ecx,4), %edx
	movl	68(%edx), %eax
	andl	$-65, %eax
	orl	$32, %eax
	movl	%eax, 68(%edx)
	movl	$8, %eax
	movw	%ax, 94(%edx)
	movl	%ecx, (%esp)
	call	__Z6DoJumps
	movl	$8, %edx
	movl	24(%esp), %ecx
	movw	%dx, 94(%esi)
	movswl	28(%ebx), %eax
	movswl	32(%ebx), %edx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 152(%esi)
	movzwl	28(%ebx), %eax
	movswl	32(%ebx), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%esi)
	testl	%ecx, %ecx
	jne	L271
	orl	$536870912, 68(%esi)
L271:
	addw	$1, 40(%esp)
	movzwl	40(%esp), %eax
	cmpw	%ax, 6(%ebp)
	jle	L425
L272:
	movl	48(%esp), %eax
	movl	0(%ebp), %ecx
	movswl	4(%ebp), %edx
	movl	44(%esp), %esi
	movl	$512, 20(%esp)
	movl	%eax, 16(%esp)
	movswl	8(%ebp), %eax
	movl	88(%esp,%eax,4), %eax
	movl	%eax, 12(%esp)
	movl	4(%esi), %eax
	movl	%eax, 8(%esp)
	movl	(%esi), %eax
	movl	%eax, 4(%esp)
	movswl	24(%esi), %eax
	movl	%eax, (%esp)
	movl	$6, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ebx
	movswl	%ax, %esi
	imull	$44, %esi, %eax
	movl	%esi, 28(%esp)
	movl	_User(,%esi,4), %esi
	leal	28(%eax), %edx
	addl	%eax, %ebx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	leal	1(%eax), %ecx
	cmpw	$0, 18(%ebp)
	jne	L426
	movswl	40(%esp), %eax
	imull	68(%esp), %eax
	movl	%ecx, _spritechanged(,%edx,4)
	movswl	74(%esp), %ecx
	addl	%ecx, %eax
	movw	%ax, 28(%ebx)
	movl	_spritechanged(,%edx,4), %ecx
	andw	$2047, %ax
	addl	$1, %ecx
L258:
	movl	%ecx, _spritechanged(,%edx,4)
	movw	%ax, 28(%ebx)
	movswl	92(%esi), %edi
	movl	%edi, %eax
	negw	%ax
	cmovs	%edi, %eax
	sall	$2, %edi
	movzwl	%ax, %eax
	sall	$3, %eax
	call	__Z11RandomRangei
	movl	%edi, %edx
	negl	%edx
	cmovs	%edi, %edx
	addl	%eax, %eax
	subl	%eax, %edx
	movl	_krandcount, %eax
	movl	%edx, 160(%esi)
	movl	%eax, 32(%esp)
	addl	$1, %eax
	movl	%eax, _krandcount
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	movl	$95, %edx
	movzwl	%cx, %ecx
	movl	%ecx, _randomseed
	cmpl	$65535, %ecx
	je	L259
	movl	%ecx, %edx
	movl	$-2147450879, %eax
	sall	$14, %edx
	mull	%edx
	shrl	$24, %edx
	addl	$64, %edx
L259:
	movzwl	82(%esi), %eax
	movw	%dx, 216(%esi)
	movl	_sprite, %edi
	cmpw	$1562, %ax
	je	L260
	jle	L427
	cmpw	$1719, %ax
	je	L267
	cmpw	$2058, %ax
	je	L268
	cmpw	$1670, %ax
	jne	L266
	movl	$30, %eax
	movb	$26, 32(%esp)
	movl	$30, %ecx
	movw	%ax, 64(%esp)
	movl	$26, %eax
	movw	%ax, 72(%esp)
	leal	8(%ebx), %eax
	movl	$1, 24(%esp)
	movl	%eax, 36(%esp)
	jmp	L262
	.p2align 4,,10
	.p2align 3
L426:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edi
	leal	1(%eax,%edi,4), %edi
	movzwl	%di, %edi
	movl	%edi, _randomseed
	movzwl	20(%ebp), %eax
	movl	%ecx, _spritechanged(,%edx,4)
	movswl	%ax, %ecx
	sarw	%ax
	sall	$5, %ecx
	subl	$1, %ecx
	andl	%edi, %ecx
	movswl	%ax, %edi
	sarl	$5, %ecx
	addl	48(%esp), %ecx
	movl	%ecx, %eax
	subl	%edi, %eax
	movw	%ax, 28(%ebx)
	movl	_spritechanged(,%edx,4), %edi
	andw	$2047, %ax
	leal	1(%edi), %ecx
	jmp	L258
	.p2align 4,,10
	.p2align 3
L263:
	cmpw	$1550, %ax
	jne	L266
	movl	$21, %eax
	movb	$21, 32(%esp)
	movl	$21, %ecx
	movw	%ax, 64(%esp)
	movl	$21, %eax
	movw	%ax, 72(%esp)
	leal	8(%ebx), %eax
	movl	$0, 24(%esp)
	movl	%eax, 36(%esp)
	jmp	L262
	.p2align 4,,10
	.p2align 3
L305:
	movl	$24, %eax
	movl	$24, %edx
	movb	$24, 32(%esp)
	movl	$24, %ecx
	movw	%ax, 64(%esp)
	leal	8(%ebx), %eax
	movl	$1, 24(%esp)
	movw	%dx, 72(%esp)
	movl	%eax, 36(%esp)
	jmp	L262
	.p2align 4,,10
	.p2align 3
L260:
	movzbl	72(%esp), %eax
	movl	$0, 24(%esp)
	movzbl	64(%esp), %ecx
	movb	%al, 32(%esp)
	leal	8(%ebx), %eax
	movl	%eax, 36(%esp)
	jmp	L262
	.p2align 4,,10
	.p2align 3
L266:
	movzbl	72(%esp), %eax
	movzbl	64(%esp), %ecx
	movb	%al, 32(%esp)
	leal	8(%ebx), %eax
	movl	%eax, 36(%esp)
	jmp	L262
	.p2align 4,,10
	.p2align 3
L268:
	leal	8(%ebx), %eax
	movl	$0, 24(%esp)
	movl	%eax, %edx
	movl	%eax, 36(%esp)
	movl	$-1171354717, %eax
	subl	%edi, %edx
	mull	%edx
	leal	(%ecx,%ecx,4), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	1(%ecx,%eax,4), %edx
	movl	32(%esp), %ecx
	movzwl	%dx, %eax
	movzbl	%dh, %edx
	subl	$1024, 8(%ebx)
	addl	$3, %ecx
	andl	$3, %edx
	movl	%ecx, _krandcount
	leal	(%eax,%eax,4), %ecx
	addl	$5, %edx
	leal	1(%eax,%ecx,4), %ecx
	movl	%edx, 248(%esi)
	movzwl	%cx, %ecx
	movw	%dx, 72(%esp)
	movl	%ecx, _randomseed
	sarl	$8, %ecx
	andl	$3, %ecx
	movb	%dl, 32(%esp)
	addl	$5, %ecx
	movl	%ecx, 252(%esi)
	movw	%cx, 64(%esp)
	jmp	L262
	.p2align 4,,10
	.p2align 3
L267:
	leal	8(%ebx), %eax
	movl	%eax, %edx
	movl	%eax, 36(%esp)
	movl	$-1171354717, %eax
	subl	%edi, %edx
	mull	%edx
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	%ax, %edx
	movzbl	%ah, %eax
	andl	$31, %eax
	subl	$1024, 8(%ebx)
	addl	$12, %eax
	movl	%eax, 248(%esi)
	movl	%eax, 24(%esp)
	leal	(%edx,%edx,4), %eax
	movzwl	24(%esp), %edi
	leal	1(%edx,%eax,4), %eax
	movzwl	%ax, %edx
	movzbl	%ah, %eax
	movw	%di, 72(%esp)
	andl	$31, %eax
	leal	12(%eax), %edi
	movl	%edi, 76(%esp)
	movzwl	76(%esp), %ecx
	movl	%edi, 252(%esi)
	movw	%cx, 64(%esp)
	movl	32(%esp), %ecx
	leal	4(%ecx), %eax
	movl	%eax, _krandcount
	leal	(%edx,%edx,4), %eax
	leal	1(%edx,%eax,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	sarl	$5, %eax
	movw	%ax, 176(%esi)
	movswl	28(%ebx), %eax
	movzwl	_sintable(%eax,%eax), %ecx
	addl	$512, %eax
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %edx
	movl	$6, 16(%esp)
	sarw	$6, %cx
	movl	$1090519104, 12(%esp)
	movl	28(%esp), %eax
	movswl	%cx, %ecx
	movl	$2048, 8(%esp)
	sarw	$6, %dx
	movl	$2048, 4(%esp)
	movswl	%dx, %edx
	movl	$0, (%esp)
	call	__Z12move_missilesiiiiiji
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	andl	$1023, %eax
	movl	%edx, _randomseed
	cmpl	$699, %eax
	jg	L408
	xorl	%ecx, %ecx
	movw	%cx, 82(%esi)
L408:
	movzbl	24(%esp), %eax
	movl	_sprite, %edi
	movl	$0, 24(%esp)
	movzbl	76(%esp), %ecx
	movb	%al, 32(%esp)
	jmp	L262
	.p2align 4,,10
	.p2align 3
L425:
	movl	%ebp, %edi
L256:
	addl	$24, %edi
	cmpw	$0, 4(%edi)
	jne	L273
	jmp	L254
L424:
	sall	$8, %ebx
	movl	%ebx, %edx
	jmp	L227
L419:
	sall	$7, %ebx
	movl	%eax, %ecx
	movl	%ebx, %edx
	leal	(%ebx,%esi), %ebx
	subl	%ebx, %ecx
	jmp	L225
L413:
	leal	36(%edi), %edx
	movl	$-1171354717, %eax
	movl	%edi, %ebp
	subl	%ecx, %edx
	mull	%edx
	movl	%edx, %edi
	shrl	$5, %edi
	movl	%edi, 24(%esp)
	addl	$1, _spritechanged(,%edi,4)
	movzbl	36(%ebp), %esi
L129:
	movl	44(%esp), %edi
	movl	$-1171354717, %ebp
	leal	30(%edi), %eax
	subl	%ecx, %eax
	mull	%ebp
	movl	%edx, %eax
	shrl	$5, %eax
	movl	_spritechanged(,%eax,4), %ebp
	leal	1(%ebp), %edx
	addl	$2, %ebp
	movl	%edx, _spritechanged(,%eax,4)
	movl	%edi, %edx
	movsbw	30(%edi), %di
	movl	%ebp, _spritechanged(,%eax,4)
	movzbl	31(%edx), %eax
	movw	%di, 40(%esp)
	movl	%eax, 52(%esp)
	movl	24(%esp), %eax
	addl	$1, _spritechanged(,%eax,4)
	movzbl	36(%edx), %ebp
	movl	$5, %eax
	cmpw	%ax, %bp
	cmovg	%eax, %ebp
	jmp	L126
L145:
	cmpw	$1300, %ax
	je	L277
	movl	$-1, %ecx
	movl	$0, 52(%esp)
	movl	$0, 24(%esp)
	movw	%cx, 42(%esp)
	cmpw	$1367, %ax
	jne	L428
	movl	$48, %edi
	movl	$10, %ebp
	movw	%di, 72(%esp)
	movl	$__ZZ10SpawnShrapssE8SkelGore, %edi
	jmp	L130
L159:
	cmpw	$5162, %ax
	je	L277
	cmpw	$5426, %ax
	je	L149
	cmpw	$4840, %ax
	jne	L407
L143:
	movl	44(%esp), %ebp
	movl	$-1171354717, %ebx
	leal	8(%ebp), %edi
	movl	%edi, %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%ebp, %eax
	subl	%ecx, %eax
	leal	4(%ebp), %ecx
	mull	%ebx
	movl	%edx, %eax
	movl	%ebp, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$227, %eax
	movl	$12, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
L149:
	movl	$-1, %eax
	movl	$0, 52(%esp)
	xorl	%ebp, %ebp
	movl	$__ZZ10SpawnShrapssE10MetalShrap, %edi
	movw	%ax, 42(%esp)
	movl	$10, %eax
	movl	$0, 24(%esp)
	movw	%ax, 72(%esp)
	jmp	L130
L148:
	cmpw	$2196, %ax
	je	L153
	cmpw	$2307, %ax
	jne	L407
	movl	44(%esp), %eax
	cmpw	$69, 40(%eax)
	jne	L163
	leal	36(%eax), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	44(%esp), %eax
	movl	%edx, %edi
	shrl	$5, %edi
	movl	%edi, 24(%esp)
	cmpw	$0, 88(%esi)
	je	L164
	movzbl	18(%eax), %esi
	jmp	L129
L277:
	movl	$-1, %ebp
	movl	$48, %eax
	movl	$0, 52(%esp)
	movl	$__ZZ10SpawnShrapssE8StdShrap, %edi
	movw	%bp, 42(%esp)
	xorl	%ebp, %ebp
	movl	$0, 24(%esp)
	movw	%ax, 72(%esp)
	jmp	L130
L150:
	subw	$2025, %ax
	cmpw	$1, %ax
	ja	L407
	movl	44(%esp), %eax
	movl	$0, 52(%esp)
	xorl	%ebp, %ebp
	movl	$__ZZ10SpawnShrapssE12ElectroShrap, %edi
	movl	$0, 24(%esp)
	movzwl	30(%eax), %eax
	movw	%ax, 42(%esp)
	movl	$20, %eax
	movw	%ax, 72(%esp)
	jmp	L130
L280:
	movl	$-1, %ebx
	movl	$8, %esi
	xorl	%ebp, %ebp
	movl	$0, 52(%esp)
	movl	$0, 24(%esp)
	movl	$__ZZ10SpawnShrapssE8EMPShrap, %edi
	movw	%bx, 42(%esp)
	movw	%si, 72(%esp)
	jmp	L130
L274:
	movl	$-1, %edx
	movl	$64, %ecx
	xorl	%ebp, %ebp
	movl	$0, 52(%esp)
	movl	$0, 24(%esp)
	movl	$__ZZ10SpawnShrapssE8StdShrap, %edi
	movw	%dx, 42(%esp)
	movw	%cx, 72(%esp)
	jmp	L130
L144:
	cmpl	$_sg_PlayerHeadHurl, 20(%esi)
	movl	$0, 52(%esp)
	je	L429
	movl	$-1, %edi
	movl	$24, %eax
	movl	$1, 24(%esp)
	xorl	%ebp, %ebp
	movw	%di, 42(%esp)
	movl	$__ZZ10SpawnShrapssE14PlayerDeadHead, %edi
	movw	%ax, 72(%esp)
	jmp	L130
L275:
	movl	$-1, %eax
	movl	$0, 52(%esp)
	xorl	%ebp, %ebp
	movl	$__ZZ10SpawnShrapssE11FlamingGore, %edi
	movw	%ax, 42(%esp)
	movl	$48, %eax
	movl	$0, 24(%esp)
	movw	%ax, 72(%esp)
	jmp	L130
L137:
	movl	44(%esp), %ebp
	movl	$-1171354717, %ebx
	leal	8(%ebp), %edi
	movl	%edi, %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%ebp, %eax
	subl	%ecx, %eax
	leal	4(%ebp), %ecx
	mull	%ebx
	movl	%edx, %eax
	movl	%ebp, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$227, %eax
	movl	$12, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	subl	_sprite, %ebp
	movl	%ebp, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L296
	movl	$0, 76(%eax)
	movl	$_s_BreakBottle2, 24(%eax)
	movl	$_s_BreakBottle2, 16(%eax)
	movswl	_s_BreakBottle2, %eax
L412:
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L296
	andl	$63, %eax
	movb	%al, 3(%edx)
L296:
	movl	$-1, %eax
	movl	$0, 52(%esp)
	xorl	%ebp, %ebp
	movl	$__ZZ10SpawnShrapssE10GlassShrap, %edi
	movw	%ax, 42(%esp)
	movl	$8, %eax
	movl	$1, 24(%esp)
	movw	%ax, 72(%esp)
	jmp	L130
L139:
	movl	44(%esp), %ebp
	movl	$-1171354717, %ebx
	leal	8(%ebp), %edi
	movl	%edi, %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%ebp, %eax
	subl	%ecx, %eax
	leal	4(%ebp), %ecx
	mull	%ebx
	movl	%edx, %eax
	movl	%ebp, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$227, %eax
	movl	$12, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	subl	_sprite, %ebp
	movl	%ebp, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L296
	movl	$0, 76(%eax)
	movl	$_s_BreakBottle1, 24(%eax)
	movl	$_s_BreakBottle1, 16(%eax)
	movswl	_s_BreakBottle1, %eax
	jmp	L412
L132:
	movl	44(%esp), %ebp
	movl	$-1171354717, %ebx
	leal	8(%ebp), %edi
	movl	%edi, %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%ebp, %eax
	subl	%ecx, %eax
	leal	4(%ebp), %ecx
	mull	%ebx
	movl	%edx, %eax
	movl	%ebp, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$436, %eax
	movl	%edi, (%esp)
	movl	$__ZZ10SpawnShrapssE10StoneShrap, %edi
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	subl	_sprite, %ebp
	movl	%ebp, %eax
	xorl	%ebp, %ebp
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	%eax, (%esp)
	call	__Z10SetSuicides
	movl	$-1, %edx
	movl	$4, %ecx
	movl	$0, 52(%esp)
	movl	$1, 24(%esp)
	movw	%dx, 42(%esp)
	movw	%cx, 72(%esp)
	jmp	L130
L281:
	movl	$-1, %edx
	movl	$48, %ecx
	xorl	%ebp, %ebp
	movl	$0, 52(%esp)
	movl	$0, 24(%esp)
	movl	$__ZZ10SpawnShrapssE9UpperGore, %edi
	movw	%dx, 42(%esp)
	movw	%cx, 72(%esp)
	jmp	L130
L300:
	movl	$64, %esi
	movw	%si, 72(%esp)
L405:
	movl	$__ZZ10SpawnShrapssE8StdShrap, %edi
	jmp	L130
L156:
	movl	144(%esi), %eax
	testl	%eax, %eax
	je	L277
	movl	$-1, %edi
	cmpw	$1, 23234(%eax)
	movl	$48, %eax
	movl	$0, 52(%esp)
	movw	%di, 42(%esp)
	movl	$0, %ebp
	movl	$__ZZ10SpawnShrapssE14PlayerGoreFall, %edi
	movl	$0, 24(%esp)
	movw	%ax, 72(%esp)
	je	L130
	movl	$__ZZ10SpawnShrapssE13PlayerGoreFly, %edi
	jmp	L130
L140:
	movl	44(%esp), %ebp
	movl	$-1171354717, %ebx
	leal	8(%ebp), %edi
	movl	%edi, %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%ebp, %eax
	subl	%ecx, %eax
	leal	4(%ebp), %ecx
	mull	%ebx
	movl	%edx, %eax
	movl	%ebp, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$221, %eax
	movl	$12, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	subl	_sprite, %ebp
	movl	%ebp, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L216
	movl	$0, 76(%eax)
	movl	$_s_BreakPedistal, 24(%eax)
	movl	$_s_BreakPedistal, 16(%eax)
	movswl	_s_BreakPedistal, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L216
	andl	$63, %eax
	movb	%al, 3(%edx)
L216:
	movl	$-1, %ebx
	movl	$24, %esi
	xorl	%ebp, %ebp
	movl	$0, 52(%esp)
	movl	$1, 24(%esp)
	movl	$__ZZ10SpawnShrapssE10StoneShrap, %edi
	movw	%bx, 42(%esp)
	movw	%si, 72(%esp)
	jmp	L130
L141:
	movl	44(%esp), %ebp
	movl	$-1171354717, %ebx
	leal	8(%ebp), %edi
	movl	%edi, %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%ebp, %eax
	subl	%ecx, %eax
	leal	4(%ebp), %ecx
	mull	%ebx
	movl	%edx, %eax
	movl	%ebp, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$436, %eax
	movl	$12, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	subl	_sprite, %ebp
	movl	%ebp, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L214
	movl	$0, 76(%eax)
	movl	$_s_BreakBarrel, 24(%eax)
	movl	$_s_BreakBarrel, 16(%eax)
	movswl	_s_BreakBarrel, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L214
	andl	$63, %eax
	movb	%al, 3(%edx)
L214:
	movl	$-1, %edi
	movl	$24, %eax
	xorl	%ebp, %ebp
	movl	$0, 52(%esp)
	movw	%di, 42(%esp)
	movl	$__ZZ10SpawnShrapssE9WoodShrap, %edi
	movl	$1, 24(%esp)
	movw	%ax, 72(%esp)
	jmp	L130
L142:
	movl	44(%esp), %ebp
	movl	$-1171354717, %ebx
	leal	8(%ebp), %edi
	movl	%edi, %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%ebp, %eax
	subl	%ecx, %eax
	leal	4(%ebp), %ecx
	mull	%ebx
	movl	%edx, %eax
	movl	%ebp, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$227, %eax
	movl	$12, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	subl	_sprite, %ebp
	movl	%ebp, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L294
	movl	$0, 76(%eax)
	movl	$_s_BreakLight, 24(%eax)
	movl	$_s_BreakLight, 16(%eax)
	movswl	_s_BreakLight, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L294
	andl	$63, %eax
	movb	%al, 3(%edx)
L294:
	movl	$-1, %eax
	movl	$0, 52(%esp)
	xorl	%ebp, %ebp
	movl	$__ZZ10SpawnShrapssE10GlassShrap, %edi
	movw	%ax, 42(%esp)
	movl	$24, %eax
	movl	$1, 24(%esp)
	movw	%ax, 72(%esp)
	jmp	L130
L428:
	movl	$48, %edx
	xorl	%ebp, %ebp
	movw	%dx, 72(%esp)
	cmpw	$1210, %ax
	je	L405
	movl	$__ZZ10SpawnShrapssE9SmallGore, %edi
	jmp	L130
L153:
	movl	44(%esp), %ebp
	movl	$-1171354717, %ebx
	leal	8(%ebp), %edi
	movl	%edi, %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%ebp, %eax
	subl	%ecx, %eax
	leal	4(%ebp), %ecx
	mull	%ebx
	movl	%edx, %eax
	movl	%ebp, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$221, %eax
	movl	%edi, (%esp)
	movl	$__ZZ10SpawnShrapssE16LavaBoulderShrap, %edi
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movzwl	30(%ebp), %eax
	xorl	%ebp, %ebp
	movl	$0, 52(%esp)
	movl	$1, 24(%esp)
	movw	%ax, 42(%esp)
	movl	$24, %eax
	movw	%ax, 72(%esp)
	jmp	L130
L163:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	xorl	%ebp, %ebp
	movl	$0, 52(%esp)
	leal	(%eax,%eax,4), %edx
	movl	$0, 24(%esp)
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	sarl	$8, %eax
	andl	$1, %eax
	movl	__ZZ10SpawnShrapssE14LavaShrapTable(,%eax,4), %edi
	movl	$-1, %eax
	movw	%ax, 42(%esp)
	movl	$48, %eax
	movw	%ax, 72(%esp)
	jmp	L130
L134:
	cmpw	$623, %ax
	je	L143
	jmp	L407
L164:
	movzwl	34(%eax), %esi
	jmp	L129
L157:
	cmpw	$4227, %ax
	je	L403
	jmp	L407
L146:
	cmpw	$822, %ax
	je	L403
	jmp	L407
L429:
	movl	$-1, %eax
	movl	$0, 24(%esp)
	xorl	%ebp, %ebp
	movl	$__ZZ10SpawnShrapssE15PlayerHeadHurl1, %edi
	movw	%ax, 42(%esp)
	movl	$48, %eax
	movw	%ax, 72(%esp)
	jmp	L130
L418:
	cmpw	$4319, %ax
	jle	L407
	cmpw	$4768, %ax
	je	L143
	cmpw	$4792, %ax
	je	L143
	jmp	L407
L415:
	cmpw	$817, %ax
	je	L143
	jmp	L407
	.cfi_endproc
LFE19:
	.p2align 4
	.globl	__Z11DoLavaErupts
	.def	__Z11DoLavaErupts;	.scl	2;	.type	32;	.endef
__Z11DoLavaErupts:
LFB23:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%esi, 24(%esp)
	.cfi_offset 6, -16
	movswl	40(%esp), %esi
	movl	%edi, 28(%esp)
	.cfi_offset 7, -12
	movl	_sprite, %edi
	imull	$44, %esi, %eax
	movl	%ebx, 20(%esp)
	movl	%esi, 12(%esp)
	movl	_User(,%esi,4), %esi
	leal	(%edi,%eax), %ecx
	testb	$64, 42(%ecx)
	.cfi_offset 3, -20
	je	L431
	movl	_connecthead, %eax
	movswl	%ax, %ebx
	cmpw	$-1, %ax
	je	L432
	movl	%ebp, 32(%esp)
	.cfi_offset 5, -8
	movl	_sector, %ebp
	movl	%esi, 16(%esp)
	jmp	L437
	.p2align 6
	.p2align 4,,10
	.p2align 3
L433:
	movl	_connectpoint2(,%ebx,4), %eax
	movswl	%ax, %ebx
	cmpw	$-1, %ax
	je	L457
L437:
	imull	$24124, %ebx, %eax
	movswl	_Player+268(%eax), %eax
	testw	%ax, %ax
	js	L433
	leal	(%eax,%eax,4), %edx
	testb	$64, 39(%ebp,%edx,8)
	je	L433
	movzwl	_headspritesect(%eax,%eax), %esi
	cmpw	$-1, %si
	je	L433
	movl	%ebp, 8(%esp)
	jmp	L434
	.p2align 5
	.p2align 4,,10
	.p2align 3
L435:
	cmpw	$-1, %si
	je	L455
L434:
	movswl	%si, %ebp
	movzwl	_nextspritesect(%ebp,%ebp), %esi
	imull	$44, %ebp, %ebp
	addl	%edi, %ebp
	cmpw	$58, 26(%ebp)
	jne	L435
	leal	36(%ebp), %edx
	movl	$-1171354717, %eax
	subl	%edi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	cmpb	$0, 37(%ebp)
	jne	L435
	cmpw	$1, 32(%ebp)
	jne	L435
	movl	16(%esp), %esi
	movl	32(%esp), %ebp
	.cfi_restore 5
L431:
	movzwl	216(%esi), %eax
	movl	68(%esi), %edx
	subl	$3, %eax
	movw	%ax, 216(%esi)
	testb	$8, %dl
	je	L458
	testw	%ax, %ax
	jg	L439
	andl	$-9, %edx
	xorl	%eax, %eax
	movl	%edx, 68(%esi)
	leal	30(%ecx), %edx
	movw	%ax, 176(%esi)
	subl	%edi, %edx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	30(%ecx), %eax
	imull	$120, %eax, %eax
	movw	%ax, 216(%esi)
L439:
	movzwl	176(%esi), %eax
	addl	$3, %eax
	movw	%ax, 176(%esi)
	movzwl	38(%ecx), %edx
	cmpw	%dx, %ax
	cmovle	%eax, %edx
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %ebx
	movw	%dx, 176(%esi)
	movswl	%dx, %edx
	leal	1(%eax,%ebx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	sarl	$6, %eax
	cmpl	%edx, %eax
	jge	L432
	movzbl	18(%ecx), %eax
	testb	%al, %al
	je	L440
	cmpb	$1, %al
	jne	L432
	movl	12(%esp), %eax
	movl	%eax, (%esp)
	call	__Z17InitVulcanBoulders
L432:
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	xorl	%eax, %eax
	movl	28(%esp), %edi
	addl	$36, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L458:
	.cfi_restore_state
	testw	%ax, %ax
	jg	L432
	orl	$8, %edx
	movl	$-1171354717, %eax
	movl	%edx, 68(%esi)
	xorl	%edx, %edx
	movw	%dx, 176(%esi)
	leal	30(%ecx), %edx
	subl	%edi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	31(%ecx), %eax
	imull	$120, %eax, %eax
	movw	%ax, 216(%esi)
	jmp	L432
	.p2align 4,,10
	.p2align 3
L455:
	.cfi_offset 5, -8
	movl	_connectpoint2(,%ebx,4), %eax
	movl	8(%esp), %ebp
	movswl	%ax, %ebx
	cmpw	$-1, %ax
	jne	L437
	.p2align 4
	.p2align 3
L457:
	movl	32(%esp), %ebp
	.cfi_restore 5
	jmp	L432
L440:
	movl	12(%esp), %eax
	movl	$-1, 4(%esp)
	movl	%eax, (%esp)
	call	__Z10SpawnShrapss
	jmp	L432
	.cfi_endproc
LFE23:
	.p2align 4
	.globl	__Z13DoVomitSplashs
	.def	__Z13DoVomitSplashs;	.scl	2;	.type	32;	.endef
__Z13DoVomitSplashs:
LFB24:
	.cfi_startproc
	movswl	4(%esp), %ecx
	movl	_User(,%ecx,4), %edx
	subw	$6, 216(%edx)
	js	L461
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L461:
	movl	%ecx, %eax
	call	__Z10KillSprites
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE24:
	.p2align 4
	.globl	__Z19DoFastShrapJumpFalls
	.def	__Z19DoFastShrapJumpFalls;	.scl	2;	.type	32;	.endef
__Z19DoFastShrapJumpFalls:
LFB25:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	_sprite, %ecx
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$-1171354717, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movswl	20(%esp), %ebp
	movl	_User(,%ebp,4), %ebx
	imull	$44, %ebp, %edx
	movl	152(%ebx), %eax
	addl	%edx, %ecx
	leal	(%eax,%eax), %esi
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ecx), %edx
	addl	%esi, (%ecx)
	movl	156(%ebx), %eax
	subl	_sprite, %edx
	leal	(%eax,%eax), %esi
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	8(%ecx), %edx
	subl	_sprite, %edx
	addl	%esi, 4(%ecx)
	movl	160(%ebx), %eax
	leal	(%eax,%eax), %esi
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	%esi, 8(%ecx)
	movzwl	216(%ebx), %eax
	subl	$6, %eax
	movw	%ax, 216(%ebx)
	testw	%ax, %ax
	jle	L465
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
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
L465:
	.cfi_restore_state
	movl	%ebp, %eax
	call	__Z10KillSprites
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
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
	.globl	__Z13DoTracerShraps
	.def	__Z13DoTracerShraps;	.scl	2;	.type	32;	.endef
__Z13DoTracerShraps:
LFB26:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	_sprite, %ecx
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$-1171354717, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movswl	20(%esp), %edi
	imull	$44, %edi, %edx
	movl	_User(,%edi,4), %ebx
	movl	152(%ebx), %ebp
	movl	%edx, %eax
	addl	%edx, %ecx
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ecx), %edx
	addl	%ebp, (%ecx)
	subl	_sprite, %edx
	movl	%edx, %eax
	movl	156(%ebx), %ebp
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	8(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	addl	%ebp, 4(%ecx)
	movl	160(%ebx), %ebp
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	%ebp, 8(%ecx)
	movzwl	216(%ebx), %eax
	subl	$6, %eax
	movw	%ax, 216(%ebx)
	testw	%ax, %ax
	jle	L469
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
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
L469:
	.cfi_restore_state
	movl	%edi, %eax
	call	__Z10KillSprites
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
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
LFE26:
	.p2align 4
	.globl	__Z15DoShrapJumpFalls
	.def	__Z15DoShrapJumpFalls;	.scl	2;	.type	32;	.endef
__Z15DoShrapJumpFalls:
LFB27:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movswl	8(%esp), %eax
	movl	_User(,%eax,4), %edx
	movl	68(%edx), %ecx
	testb	$96, %cl
	jne	L473
	andl	$536870912, %ecx
	je	L473
	cmpw	$1562, 82(%edx)
	je	L482
	movl	%eax, 8(%esp)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	jmp	__Z15ShrapKillSprites
	.p2align 4,,10
	.p2align 3
L473:
	.cfi_restore_state
	movl	%eax, (%esp)
	call	__Z15DoShrapVelocitys
L472:
	xorl	%eax, %eax
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L482:
	.cfi_restore_state
	movswl	_s_GoreFloorSplash, %eax
	movl	$0, 76(%edx)
	movl	$_s_GoreFloorSplash, 24(%edx)
	movl	$_s_GoreFloorSplash, 16(%edx)
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L472
	andl	$63, %eax
	movb	%al, 3(%edx)
	jmp	L472
	.cfi_endproc
LFE27:
	.p2align 4
	.globl	__Z10SpawnBloodsssiii
	.def	__Z10SpawnBloodsssiii;	.scl	2;	.type	32;	.endef
__Z10SpawnBloodsssiii:
LFB28:
	.cfi_startproc
	subl	$84, %esp
	.cfi_def_cfa_offset 88
	movswl	88(%esp), %eax
	movl	%edi, 76(%esp)
	.cfi_offset 7, -12
	movl	_User(,%eax,4), %edi
	movzwl	82(%edi), %edx
	movl	%edi, 56(%esp)
	cmpw	$4792, %dx
	je	L487
	jle	L576
	cmpw	$4840, %dx
	je	L487
	cmpw	$5426, %dx
	je	L487
	cmpw	$4816, %dx
	je	L487
L488:
	imull	$44, %eax, %eax
	movl	_sprite, %ecx
	movl	%ebx, 68(%esp)
	movl	%esi, 72(%esp)
	movl	%ebp, 80(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	leal	(%ecx,%eax), %edi
	movl	%edi, 36(%esp)
	cmpw	$0, 92(%esp)
	js	L489
	movswl	92(%esp), %esi
	imull	$44, %esi, %edx
	leal	(%ecx,%edx), %ebx
	movl	_User(,%esi,4), %ecx
	movl	(%edi), %esi
	movl	4(%edi), %edi
	movzwl	82(%ecx), %ecx
	movl	%esi, 100(%esp)
	movl	%edi, 104(%esp)
	cmpw	$2059, %cx
	je	L490
	jle	L577
	cmpw	$4096, %cx
	je	L497
	cmpw	$5011, %cx
	je	L495
	cmpw	$2230, %cx
	je	L496
L494:
	movzwl	28(%ebx), %eax
	movswl	14(%ebx), %edx
	movl	8(%ebx), %ebp
	addw	$1024, %ax
	movswl	_tilesiz+2(,%edx,4), %edi
	andw	$2047, %ax
	movl	%eax, %esi
	movzbl	21(%ebx), %eax
	testb	$-128, 12(%ebx)
	je	L526
	cmpb	$64, %al
	je	L578
	movl	%eax, %ecx
	movsbl	_picanm+2(%edx,%edx,4), %edx
	imull	%edi, %ecx
	sall	$8, %edx
	leal	(%edx,%ecx,2), %ecx
	movl	%ebp, %edx
	subl	%ecx, %edx
L529:
	imull	%eax, %edi
L531:
	leal	(%edx,%edi), %eax
	movl	$__ZZ10SpawnBloodsssiiiE9SomeBlood, %edi
	movl	%eax, 108(%esp)
	jmp	L505
	.p2align 4,,10
	.p2align 3
L576:
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	cmpw	$2540, %dx
	je	L487
	cmpw	$4768, %dx
	je	L487
	cmpw	$623, %dx
	jne	L488
L487:
	movl	76(%esp), %edi
	xorl	%eax, %eax
	addl	$84, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L489:
	.cfi_def_cfa_offset 88
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movzwl	96(%esp), %eax
	movl	$__ZZ10SpawnBloodsssiiiE8UziBlood, %edi
	addw	$1024, %ax
	andw	$2047, %ax
	movl	%eax, %esi
L505:
	movl	(%edi), %ebx
	xorl	%eax, %eax
	movl	$20, %edx
	xorl	%ecx, %ecx
	movw	%ax, 64(%esp)
	movw	%dx, 50(%esp)
	movw	%cx, 60(%esp)
	testl	%ebx, %ebx
	je	L541
	movw	%si, 66(%esp)
	.p2align 4
	.p2align 3
L540:
	movzwl	6(%edi), %ecx
	cmpw	$0, 18(%edi)
	jne	L532
	movzwl	20(%edi), %ebx
	movzwl	66(%esp), %eax
	movl	%ebx, %edx
	addw	$1024, %ax
	sarw	%dx
	subl	%edx, %eax
	andw	$2047, %ax
	movw	%ax, 64(%esp)
	movswl	%bx, %eax
	movswl	%cx, %ebx
	cltd
	idivl	%ebx
	movl	%eax, 60(%esp)
L532:
	testw	%cx, %cx
	jle	L533
	movswl	66(%esp), %eax
	movl	%eax, 52(%esp)
	xorl	%eax, %eax
	movw	%ax, 24(%esp)
	jmp	L539
	.p2align 4,,10
	.p2align 3
L580:
	movzwl	50(%esp), %ecx
	cmpw	$2027, %ax
	movl	$7, %eax
	cmovne	%ecx, %eax
	movb	%al, 48(%esp)
	movl	$7, %eax
	cmovne	%ecx, %eax
	movw	%ax, 50(%esp)
L535:
	leal	28(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ebp, %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, 44(%esp)
	cmpw	$0, 18(%edi)
	jne	L579
	movl	44(%esp), %eax
	movswl	60(%esp), %ecx
	movl	%eax, _spritechanged(,%edx,4)
	movswl	24(%esp), %eax
	imull	%ecx, %eax
	movswl	64(%esp), %ecx
	addl	%ecx, %eax
	movw	%ax, 28(%ebx)
	movl	_spritechanged(,%edx,4), %ecx
	andw	$2047, %ax
	addl	$1, %ecx
L538:
	movl	%ecx, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	movl	32(%esp), %ecx
	movw	%ax, 28(%ebx)
	subl	%ebp, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	28(%esp), %eax
	orl	$536870912, 68(%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	movb	$-15, 16(%ebx)
	subl	%ebp, %edx
	addl	$1, _spritechanged(,%eax,4)
	movzbl	48(%esp), %eax
	movb	%al, 20(%ebx)
	addl	$1, _spritechanged(,%ecx,4)
	movb	%al, 21(%ebx)
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ebx), %edx
	subl	%ebp, %edx
	movb	$4, 18(%ebx)
	mull	%edx
	leal	32(%ebx), %eax
	movb	$0, 262(%esi)
	movl	%eax, 28(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	subl	%ebp, %edx
	movb	$0, 17(%ebx)
	movzwl	14(%edi), %ecx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 32(%ebx)
	movswl	14(%edi), %edx
	movswl	16(%edi), %eax
	subl	%edx, %eax
	call	__Z11RandomRangei
	movl	28(%esp), %ebp
	subl	_sprite, %ebp
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%ebp
	movl	36(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addw	%cx, 32(%ebx)
	movzwl	32(%eax), %eax
	addl	$1, _spritechanged(,%edx,4)
	addw	%ax, 32(%ebx)
	movl	$33554944, 96(%esi)
	movswl	10(%edi), %edx
	movw	%dx, 92(%esi)
	movswl	12(%edi), %eax
	subl	%edx, %eax
	call	__Z11RandomRangei
	movzwl	92(%esi), %ebp
	addl	%eax, %ebp
	negl	%ebp
	movw	%bp, 92(%esi)
	movswl	28(%ebx), %eax
	movswl	32(%ebx), %edx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 152(%esi)
	movzwl	28(%ebx), %eax
	movswl	32(%ebx), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%esi)
	movl	%ebp, %eax
	negw	%ax
	cmovs	%ebp, %eax
	movswl	%bp, %ebp
	sall	$2, %ebp
	movzwl	%ax, %eax
	sall	$3, %eax
	call	__Z11RandomRangei
	movl	%ebp, %edx
	negl	%edx
	cmovs	%ebp, %edx
	movl	$8, %ebp
	addl	$1, _krandcount
	subl	%eax, %edx
	movl	_randomseed, %eax
	movl	%edx, 160(%esi)
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	andl	$31, %eax
	addl	$64, %eax
	movl	%edx, _randomseed
	movw	%ax, 216(%esi)
	movl	56(%esp), %eax
	movl	40(%esp), %esi
	orl	$536870912, 68(%eax)
	movl	_User(,%esi,4), %edx
	movl	68(%edx), %eax
	movw	%bp, 94(%edx)
	andl	$-65, %eax
	orl	$32, %eax
	movl	%eax, 68(%edx)
	movl	%esi, (%esp)
	call	__Z6DoJumps
	addw	$1, 24(%esp)
	movzwl	24(%esp), %eax
	cmpw	%ax, 6(%edi)
	jle	L533
L539:
	movl	52(%esp), %eax
	movl	(%edi), %ecx
	movswl	4(%edi), %edx
	movl	$0, 20(%esp)
	movl	%eax, 16(%esp)
	movl	108(%esp), %eax
	movl	%eax, 12(%esp)
	movl	104(%esp), %eax
	movl	%eax, 8(%esp)
	movl	100(%esp), %eax
	movl	%eax, 4(%esp)
	movl	36(%esp), %eax
	movswl	24(%eax), %eax
	movl	%eax, (%esp)
	movl	$6, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ebp
	cwtl
	movl	_User(,%eax,4), %esi
	imull	$44, %eax, %ecx
	movl	%eax, 40(%esp)
	movzwl	82(%esi), %eax
	leal	20(%ecx), %edx
	leal	0(%ebp,%ecx), %ebx
	movw	%ax, 48(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	movl	%edx, 28(%esp)
	leal	21(%ecx), %edx
	mull	%edx
	movzwl	48(%esp), %eax
	shrl	$5, %edx
	movl	%edx, 32(%esp)
	cmpw	$1562, %ax
	jne	L580
	movl	_randomseed, %eax
	movl	_krandcount, %ecx
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	andl	$1023, %eax
	cmpl	$949, %eax
	jg	L536
	movl	32(%esp), %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	28(%esp), %eax
	movb	$0, 21(%ebx)
	addl	$1, _spritechanged(,%eax,4)
	movb	$0, 20(%ebx)
L536:
	addl	$2, %ecx
	leal	(%edx,%edx,4), %eax
	movl	%ecx, _krandcount
	leal	1(%edx,%eax,4), %eax
	movzbl	50(%esp), %ecx
	movzwl	%ax, %edx
	movl	%edx, _randomseed
	movb	%cl, 48(%esp)
	testb	$2, %ah
	jne	L535
	leal	12(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ebp, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$4, 12(%ebx)
	jmp	L535
	.p2align 4,,10
	.p2align 3
L579:
	movl	_randomseed, %ecx
	addl	$1, _krandcount
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %ecx
	movl	44(%esp), %eax
	movzwl	%cx, %ecx
	movl	%eax, _spritechanged(,%edx,4)
	movswl	20(%edi), %eax
	movl	%ecx, _randomseed
	sall	$5, %eax
	subl	$1, %eax
	andl	%ecx, %eax
	movzwl	20(%edi), %ecx
	sarl	$5, %eax
	addl	52(%esp), %eax
	sarw	%cx
	movswl	%cx, %ecx
	subl	%ecx, %eax
	movw	%ax, 28(%ebx)
	movl	_spritechanged(,%edx,4), %ecx
	andw	$2047, %ax
	addl	$1, %ecx
	jmp	L538
	.p2align 4,,10
	.p2align 3
L533:
	movl	24(%edi), %esi
	addl	$24, %edi
	testl	%esi, %esi
	jne	L540
L541:
	movl	68(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	72(%esp), %esi
	.cfi_restore 6
	movl	$1, %eax
	movl	80(%esp), %ebp
	.cfi_restore 5
	movl	76(%esp), %edi
	addl	$84, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L577:
	.cfi_restore_state
	cmpw	$1300, %cx
	je	L492
	jle	L581
	cmpw	$2049, %cx
	jne	L494
L496:
	movzwl	28(%ebx), %eax
	movl	$__ZZ10SpawnBloodsssiiiE9SomeBlood, %edi
	addw	$1024, %ax
	andw	$2047, %ax
	movl	%eax, %esi
	movl	8(%ebx), %eax
	movl	%eax, 108(%esp)
	jmp	L505
L581:
	subw	$360, %cx
	cmpw	$2, %cx
	ja	L494
L495:
	movl	104(%esp), %edx
	movl	100(%esp), %ecx
	subl	4(%ebx), %edx
	subl	(%ebx), %ecx
	call	@getangle@8
	movswl	14(%ebx), %ecx
	movl	8(%ebx), %edx
	addw	$1024, %ax
	andw	$2047, %ax
	movswl	_tilesiz+2(,%ecx,4), %ecx
	movl	%eax, %esi
	movl	36(%esp), %eax
	movl	(%eax), %edi
	movl	4(%eax), %eax
	movl	%eax, 104(%esp)
	movzbl	21(%ebx), %eax
	movl	%edi, 100(%esp)
	cmpb	$64, %al
	je	L582
	imull	%ecx, %eax
	addl	%eax, %eax
L519:
	subl	%eax, %edx
	movl	$__ZZ10SpawnBloodsssiiiE10SmallBlood, %edi
	movl	%edx, 108(%esp)
	jmp	L505
L492:
	movl	36(%esp), %ecx
	movzwl	28(%ebx), %eax
	movswl	14(%ecx), %edx
	addw	$1024, %ax
	movl	8(%ecx), %edi
	andw	$2047, %ax
	movl	%eax, %esi
	movswl	_tilesiz+2(,%edx,4), %ebx
	movzbl	21(%ecx), %eax
	testb	$-128, 12(%ecx)
	je	L512
	cmpb	$64, %al
	je	L583
	movl	%eax, %ecx
	movsbl	_picanm+2(%edx,%edx,4), %edx
	imull	%ebx, %ecx
	sall	$8, %edx
	leal	(%edx,%ecx,2), %ecx
	subl	%ecx, %edi
	movl	%edi, %edx
L515:
	imull	%eax, %ebx
L517:
	leal	(%ebx,%edx), %eax
	movl	$__ZZ10SpawnBloodsssiiiE10ExtraBlood, %edi
	movl	%eax, 108(%esp)
	jmp	L505
L497:
	movswl	14(%ebx), %edi
	movzwl	12(%ebx), %esi
	movl	8(%ebx), %ebp
	movzbl	21(%ebx), %ecx
	movl	%edi, 24(%esp)
	movswl	_tilesiz+2(,%edi,4), %edi
	movw	%si, 28(%esp)
	cmpl	%edx, %eax
	je	L584
	movzwl	28(%ebx), %eax
	addw	$1024, %ax
	andw	$2047, %ax
	movl	%eax, %esi
	testb	$-128, 28(%esp)
	je	L506
	cmpb	$64, %cl
	je	L585
	movzbl	%cl, %eax
	movl	24(%esp), %ebx
	movl	%eax, %edx
	imull	%edi, %edx
	movsbl	_picanm+2(%ebx,%ebx,4), %ecx
	sall	$8, %ecx
	leal	(%ecx,%edx,2), %ecx
	movl	%ebp, %edx
	subl	%ecx, %edx
L509:
	imull	%eax, %edi
L511:
	leal	(%edi,%edx), %eax
	movl	$__ZZ10SpawnBloodsssiiiE10ExtraBlood, %edi
	movl	%eax, 108(%esp)
	jmp	L505
L490:
	movl	36(%esp), %ecx
	movzwl	28(%ebx), %esi
	movswl	14(%ecx), %edx
	movl	8(%ecx), %edi
	movzbl	21(%ecx), %eax
	movswl	_tilesiz+2(,%edx,4), %ebx
	testb	$-128, 12(%ecx)
	je	L520
	cmpb	$64, %al
	je	L586
	movl	%eax, %ecx
	movsbl	_picanm+2(%edx,%edx,4), %edx
	imull	%ebx, %ecx
	sall	$8, %edx
	leal	(%edx,%ecx,2), %ecx
	subl	%ecx, %edi
	movl	%edi, %edx
L523:
	imull	%eax, %ebx
L525:
	leal	(%ebx,%edx), %eax
	movl	$__ZZ10SpawnBloodsssiiiE19PlasmaFountainBlood, %edi
	movl	%eax, 108(%esp)
	jmp	L505
L526:
	cmpb	$64, %al
	je	L587
	movl	%eax, %ecx
	movl	%ebp, %edx
	imull	%edi, %ecx
	sall	$2, %ecx
	subl	%ecx, %edx
	jmp	L529
L512:
	cmpb	$64, %al
	je	L588
	movl	%eax, %ecx
	imull	%ebx, %ecx
	sall	$2, %ecx
	subl	%ecx, %edi
	movl	%edi, %edx
	jmp	L515
L520:
	cmpb	$64, %al
	je	L589
	movl	%eax, %ecx
	imull	%ebx, %ecx
	sall	$2, %ecx
	subl	%ecx, %edi
	movl	%edi, %edx
	jmp	L523
L582:
	movl	%ecx, %eax
	sall	$7, %eax
	jmp	L519
L506:
	cmpb	$64, %cl
	je	L590
	movzbl	%cl, %eax
	movl	%ebp, %edx
	movl	%eax, %ecx
	imull	%edi, %ecx
	sall	$2, %ecx
	subl	%ecx, %edx
	jmp	L509
L584:
	movl	36(%esp), %eax
	movzwl	28(%eax), %esi
	testb	$-128, 28(%esp)
	je	L499
	cmpb	$64, %cl
	je	L591
	movzbl	%cl, %eax
	movl	24(%esp), %ebx
	movl	%eax, %edx
	imull	%edi, %edx
	movsbl	_picanm+2(%ebx,%ebx,4), %ecx
	sall	$8, %ecx
	leal	(%ecx,%edx,2), %ecx
	movl	%ebp, %edx
	subl	%ecx, %edx
L502:
	imull	%edi, %eax
	sarl	$2, %eax
L504:
	addl	%edx, %eax
	movl	$__ZZ10SpawnBloodsssiiiE13HariKariBlood, %edi
	movl	%eax, 108(%esp)
	jmp	L505
L583:
	movsbl	_picanm+2(%edx,%edx,4), %eax
	movl	%ebx, %ecx
	sall	$7, %ecx
	sall	$8, %eax
	addl	%ecx, %eax
	subl	%eax, %edi
	movl	%edi, %edx
L514:
	sall	$6, %ebx
	jmp	L517
L587:
	movl	%edi, %eax
	movl	%ebp, %edx
	sall	$8, %eax
	subl	%eax, %edx
L528:
	sall	$6, %edi
	jmp	L531
L585:
	movl	24(%esp), %eax
	movsbl	_picanm+2(%eax,%eax,4), %edx
	movl	%edi, %eax
	sall	$7, %eax
	sall	$8, %edx
	addl	%edx, %eax
	movl	%ebp, %edx
	subl	%eax, %edx
L508:
	sall	$6, %edi
	jmp	L511
L589:
	movl	%ebx, %eax
	sall	$8, %eax
	subl	%eax, %edi
	movl	%edi, %edx
L522:
	sall	$6, %ebx
	jmp	L525
L578:
	movsbl	_picanm+2(%edx,%edx,4), %eax
	movl	%edi, %ecx
	movl	%ebp, %edx
	sall	$7, %ecx
	sall	$8, %eax
	addl	%ecx, %eax
	subl	%eax, %edx
	jmp	L528
L590:
	movl	%edi, %eax
	movl	%ebp, %edx
	sall	$8, %eax
	subl	%eax, %edx
	jmp	L508
L586:
	movsbl	_picanm+2(%edx,%edx,4), %eax
	movl	%ebx, %ecx
	sall	$7, %ecx
	sall	$8, %eax
	addl	%ecx, %eax
	subl	%eax, %edi
	movl	%edi, %edx
	jmp	L522
L588:
	movl	%ebx, %eax
	sall	$8, %eax
	subl	%eax, %edi
	movl	%edi, %edx
	jmp	L514
L499:
	cmpb	$64, %cl
	je	L592
	movzbl	%cl, %eax
	movl	%ebp, %edx
	movl	%eax, %ecx
	imull	%edi, %ecx
	sall	$2, %ecx
	subl	%ecx, %edx
	jmp	L502
L591:
	movl	24(%esp), %eax
	movl	%edi, %edx
	sall	$7, %edx
	movsbl	_picanm+2(%eax,%eax,4), %eax
	sall	$8, %eax
	addl	%edx, %eax
	movl	%ebp, %edx
	subl	%eax, %edx
L501:
	movl	%edi, %eax
	sall	$4, %eax
	jmp	L504
L592:
	movl	%edi, %eax
	movl	%ebp, %edx
	sall	$8, %eax
	subl	%eax, %edx
	jmp	L501
	.cfi_endproc
LFE28:
	.p2align 4
	.globl	__Z9StarBloodss
	.def	__Z9StarBloodss;	.scl	2;	.type	32;	.endef
__Z9StarBloodss:
LFB29:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%esi, 28(%esp)
	.cfi_offset 6, -12
	movswl	40(%esp), %esi
	movl	_User(,%esi,4), %eax
	cmpw	$0, 84(%eax)
	jle	L600
	movswl	44(%esp), %eax
	movl	%esi, (%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	call	__Z10SpawnBloodsssiii
	movl	28(%esp), %esi
	xorl	%eax, %eax
	addl	$36, %esp
	.cfi_remember_state
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L600:
	.cfi_restore_state
	movl	%edi, 32(%esp)
	.cfi_offset 7, -8
	movswl	44(%esp), %edi
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -16
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L595:
	movl	$0, 20(%esp)
	addl	$1, %ebx
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	call	__Z10SpawnBloodsssiii
	cmpw	$4, %bx
	jne	L595
	movl	24(%esp), %ebx
	.cfi_restore 3
	movl	32(%esp), %edi
	.cfi_restore 7
	xorl	%eax, %eax
	movl	28(%esp), %esi
	addl	$36, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE29:
	.section .rdata,"dr"
LC0:
	.ascii "source/sw/src/weapon.cpp\0"
	.text
	.p2align 4
	.globl	__Z16ActorChooseDeathss
	.def	__Z16ActorChooseDeathss;	.scl	2;	.type	32;	.endef
__Z16ActorChooseDeathss:
LFB31:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax
	movl	%ebx, 28(%esp)
	.cfi_offset 3, -20
	movswl	48(%esp), %ebx
	movl	%esi, 32(%esp)
	.cfi_offset 6, -16
	movl	_User(,%ebx,4), %esi
	cmpw	$0, 84(%esi)
	jg	L601
	movl	%edi, 36(%esp)
	movl	_sprite, %eax
	.cfi_offset 7, -12
	movswl	52(%esp), %edi
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	movl	%eax, 20(%esp)
	movl	_User(,%edi,4), %ebp
	cmpw	$1, _gNet+12
	je	L603
	movl	%ebx, %eax
	call	__Z21UpdateSinglePlayKillss.part.0
L603:
	movl	48(%esi), %eax
	testl	%eax, %eax
	je	L604
	movl	$1, %ecx
	movl	$4, %edx
	movl	%ebx, %eax
	call	__Z15PlaySpriteSoundsii
L604:
	movzwl	82(%esi), %eax
	cmpw	$4550, %ax
	je	L605
	jle	L756
	cmpw	$4792, %ax
	je	L609
	jg	L615
	cmpw	$4604, %ax
	jg	L616
	cmpw	$4589, %ax
	jle	L610
	leal	-4590(%eax), %edx
	movl	$17425, %ecx
	btl	%edx, %ecx
	jnc	L610
L612:
	cmpw	$4768, %ax
	je	L609
	jle	L757
	cmpw	$4840, %ax
	je	L609
	jle	L758
	cmpw	$5023, %ax
	je	L631
	cmpw	$5032, %ax
	jne	L622
	.p2align 4
	.p2align 3
L631:
	cmpw	$4096, 82(%ebp)
	je	L759
L609:
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z10SpawnShrapss
	testl	%eax, %eax
	jne	L634
L632:
	movl	36(%esp), %edi
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
	movl	$1, %eax
L601:
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	addl	$44, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L605:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	subw	$1, _Bunny_Count
L622:
	movzwl	82(%ebp), %eax
	cmpw	$4096, %ax
	je	L635
	cmpw	$3122, %ax
	jg	L636
	cmpw	$3099, %ax
	jg	L637
	cmpw	$2018, %ax
	jg	L638
	cmpw	$2015, %ax
	jg	L639
	cmpw	$817, %ax
	je	L639
	cmpw	$820, %ax
	jne	L636
	.p2align 4
	.p2align 3
L639:
	cmpl	$30000, 188(%ebp)
	je	L760
L657:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L658
	sall	$14, %eax
	cmpl	$430563724, %eax
	ja	L658
L659:
	movzwl	82(%esi), %eax
	cmpw	$4320, %ax
	je	L663
	cmpw	$1469, %ax
	je	L663
L660:
	movl	$-1, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	__Z14InitBloodSprayshs.isra.0
	movzwl	82(%esi), %eax
	cmpw	$1300, %ax
	sete	%dl
	cmpw	$1210, %ax
	sete	%cl
	orb	%cl, %dl
	jne	L636
	cmpw	$5426, %ax
	je	L636
L755:
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z10SpawnShrapss
	testl	%eax, %eax
	je	L636
	.p2align 4
	.p2align 3
L634:
	movl	%ebx, (%esp)
	call	__Z10SetSuicides
	jmp	L632
	.p2align 4,,10
	.p2align 3
L615:
	cmpw	$5023, %ax
	je	L631
	jg	L619
	cmpw	$4816, %ax
	je	L609
	cmpw	$4840, %ax
	je	L609
	.p2align 4
	.p2align 3
L610:
	movl	%ebx, %eax
	call	__Z14ActorCoughItems.isra.0
	movzwl	82(%esi), %eax
	cmpw	$820, %ax
	je	L623
	jle	L761
	cmpw	$1095, %ax
	jne	L762
	movl	$105, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	__Z14InitBloodSprayshs.isra.0
	movl	$105, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	__Z14InitBloodSprayshs.isra.0
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z10SpawnShrapss
	testl	%eax, %eax
	je	L632
	jmp	L634
	.p2align 4,,10
	.p2align 3
L756:
	cmpw	$2540, %ax
	je	L609
	jg	L608
	cmpw	$623, %ax
	je	L609
	cmpw	$1469, %ax
	jne	L610
L719:
	subw	$4590, %ax
	cmpw	$14, %ax
	ja	L622
	movl	$17425, %edx
	btl	%eax, %edx
	jc	L631
	jmp	L622
	.p2align 4,,10
	.p2align 3
L761:
	cmpw	$623, %ax
	je	L609
	cmpw	$817, %ax
	jne	L622
	movl	%ebx, (%esp)
	call	__Z17DoBettyBeginDeaths
	movl	36(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
	movl	$1, %eax
	jmp	L601
	.p2align 4,,10
	.p2align 3
L623:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	__Z17DoSkullBeginDeaths
	movl	36(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
	movl	$1, %eax
	jmp	L601
	.p2align 4,,10
	.p2align 3
L637:
	.cfi_restore_state
	subw	$3100, %ax
	movl	$6291595, %edx
	btl	%eax, %edx
	jc	L639
	.p2align 4
	.p2align 3
L636:
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z10DoActorDiess
	movl	36(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
	movl	$1, %eax
	jmp	L601
	.p2align 4,,10
	.p2align 3
L608:
	.cfi_restore_state
	cmpw	$4320, %ax
	jne	L610
	jmp	L719
	.p2align 4,,10
	.p2align 3
L759:
	movl	144(%ebp), %eax
	testl	%eax, %eax
	je	L609
	imull	$44, %ebx, %esi
	movl	20(%esp), %ecx
	addl	%ecx, %esi
	testb	$2, 22970(%eax)
	jne	L633
	movb	$1, 24097(%eax)
L633:
	leal	8(%esi), %ebp
	movl	$-1171354717, %ecx
	movl	%ebp, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	4(%esi), %eax
	movl	%eax, 20(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%esi, %eax
	subl	_sprite, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	movl	20(%esp), %ecx
	movl	$388, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L609
L757:
	cmpw	$2540, %ax
	jne	L719
	jmp	L609
	.p2align 4,,10
	.p2align 3
L635:
	movl	144(%ebp), %ecx
	testl	%ecx, %ecx
	je	L640
	movzbl	273(%ebp), %eax
	testb	%al, %al
	je	L763
	cmpb	$13, %al
	je	L764
L642:
	testb	$2, 22970(%ecx)
	jne	L640
	movb	$1, 24097(%ecx)
L640:
	cmpb	$0, 273(%esi)
	je	L636
	movzwl	82(%esi), %edx
	cmpw	$4096, %dx
	je	L636
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L656
	sall	$14, %eax
	cmpl	$536862499, %eax
	jbe	L636
L656:
	cmpw	$1300, %dx
	sete	%al
	cmpw	$1210, %dx
	sete	%cl
	orb	%cl, %al
	jne	L636
	cmpw	$5426, %dx
	je	L636
	movl	$-1, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	__Z14InitBloodSprayshs.isra.0
	jmp	L755
	.p2align 4,,10
	.p2align 3
L619:
	cmpw	$5032, %ax
	jne	L610
	jmp	L631
	.p2align 4,,10
	.p2align 3
L616:
	cmpw	$4768, %ax
	jne	L610
	jmp	L609
	.p2align 4,,10
	.p2align 3
L658:
	imull	$44, %edi, %eax
	movl	20(%esp), %ecx
	addl	%eax, %ecx
	je	L659
	movswl	30(%ecx), %eax
	testw	%ax, %ax
	js	L659
	movl	_User(,%eax,4), %eax
	movl	144(%eax), %ecx
	testl	%ecx, %ecx
	je	L659
	imull	$1103515245, _wrandomseed, %eax
	imull	$24124, _myconnectindex, %edx
	addl	$12345, %eax
	addl	$_Player, %edx
	movl	%eax, _wrandomseed
	cmpl	%edx, %ecx
	jne	L659
	cmpb	$0, _Prediction
	jne	L659
	shrl	$16, %eax
	movl	$32766, %edx
	leal	4(%ecx), %ebp
	movl	%ecx, 16(%esp)
	andl	$32767, %eax
	movl	%ebp, 20(%esp)
	movl	$63548, %ebp
	cmpl	%edx, %eax
	movl	%ecx, (%esp)
	cmova	%edx, %eax
	xorl	%edx, %edx
	movl	$9, 12(%esp)
	sall	$14, %eax
	divl	%ebp
	movl	20(%esp), %ebp
	movl	%ebp, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	$5284, %edx
	sarl	$8, %eax
	movl	_TauntAIVocs(,%eax,4), %eax
	movl	%eax, %ecx
	movl	$LC0, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L659
	.p2align 4,,10
	.p2align 3
L762:
	cmpw	$1094, %ax
	jg	L612
	jmp	L622
	.p2align 4,,10
	.p2align 3
L663:
	movl	%ebx, %eax
	call	__Z14ActorCoughItems.isra.0
	jmp	L660
L638:
	cmpw	$3072, %ax
	je	L639
	jmp	L636
L763:
	imull	$1103515245, _wrandomseed, %edx
	leal	12345(%edx), %eax
	movl	$32766, %edx
	movl	%eax, _wrandomseed
	movl	%eax, %ebp
	shrl	$16, %eax
	andl	$32767, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	sall	$14, %eax
	cmpl	$268963853, %eax
	jbe	L642
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	cmpl	%eax, %ecx
	jne	L642
	imull	$1103515245, %ebp, %eax
	leal	8(%ecx), %edx
	movl	$89475754, %ebp
	movl	%edx, 24(%esp)
	leal	4(%ecx), %edx
	movl	%edx, 20(%esp)
	movl	$32766, %edx
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	shrl	$16, %eax
	andl	$32767, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	xorl	%edx, %edx
	sall	$14, %eax
	divl	%ebp
	subl	$1, %eax
	cmpb	$4, %al
	ja	L643
	movzbl	%al, %eax
	movl	%ecx, 12(%esp)
	movl	$9, 8(%esp)
	jmp	*L645(,%eax,4)
	.section .rdata,"dr"
	.align 4
L645:
	.long	L649
	.long	L648
	.long	L647
	.long	L646
	.long	L644
	.text
L646:
	movl	24(%esp), %eax
	movl	$250, %edx
	movl	%eax, 4(%esp)
	movl	20(%esp), %eax
	movl	%ecx, 20(%esp)
	movl	%eax, (%esp)
	movl	$5178, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.0.isra.0
	movl	20(%esp), %ecx
	jmp	L642
L647:
	movl	24(%esp), %eax
	movl	$249, %edx
	movl	%eax, 4(%esp)
	movl	20(%esp), %eax
	movl	%ecx, 20(%esp)
	movl	%eax, (%esp)
	movl	$5176, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.0.isra.0
	movl	20(%esp), %ecx
	jmp	L642
L648:
	movl	24(%esp), %eax
	movl	$334, %edx
	movl	%eax, 4(%esp)
	movl	20(%esp), %eax
	movl	%ecx, 20(%esp)
	movl	%eax, (%esp)
	movl	$5174, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.0.isra.0
	movl	20(%esp), %ecx
	jmp	L642
L649:
	movl	24(%esp), %eax
	movl	$340, %edx
	movl	%eax, 4(%esp)
	movl	20(%esp), %eax
	movl	%ecx, 20(%esp)
	movl	%eax, (%esp)
	movl	$5172, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.0.isra.0
	movl	20(%esp), %ecx
	jmp	L642
L644:
	movl	24(%esp), %eax
	movl	$343, %edx
	movl	%eax, 4(%esp)
	movl	20(%esp), %eax
	movl	%ecx, 20(%esp)
	movl	%eax, (%esp)
	movl	$5180, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.0.isra.0
	movl	20(%esp), %ecx
	jmp	L642
	.p2align 4,,10
	.p2align 3
L760:
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z19SpawnFireballFlamesss
	jmp	L657
	.p2align 4,,10
	.p2align 3
L758:
	cmpw	$4792, %ax
	je	L609
	cmpw	$4816, %ax
	je	L609
	jmp	L622
	.p2align 4,,10
	.p2align 3
L764:
	imull	$1103515245, _wrandomseed, %edx
	movl	$32766, %ebp
	addl	$12345, %edx
	movl	%edx, %eax
	movl	%edx, _wrandomseed
	shrl	$16, %eax
	andl	$32767, %eax
	cmpl	$32766, %eax
	cmova	%ebp, %eax
	sall	$14, %eax
	cmpl	$268963853, %eax
	jbe	L642
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	cmpl	%eax, %ecx
	jne	L642
	imull	$1103515245, %edx, %eax
	movl	$32766, %edx
	movl	%ecx, 12(%esp)
	movl	$9, 8(%esp)
	movl	%ecx, 20(%esp)
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	shrl	$16, %eax
	andl	$32767, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	leal	4(%ecx), %edx
	movl	%edx, (%esp)
	sall	$14, %eax
	movl	%eax, %ebp
	leal	8(%ecx), %eax
	movl	%eax, 4(%esp)
	cmpl	$403177353, %ebp
	ja	L765
	cmpl	$309227903, %ebp
	ja	L766
	cmpl	$134750353, %ebp
	jbe	L653
	movl	$382, %edx
	movl	$5194, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.0.isra.0
	movl	20(%esp), %ecx
	jmp	L642
L765:
	movl	$380, %edx
	movl	$5190, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.0.isra.0
	movl	20(%esp), %ecx
	jmp	L642
L643:
	movl	24(%esp), %eax
	movl	%ecx, 12(%esp)
	movl	$342, %edx
	movl	$9, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%esp), %eax
	movl	%ecx, 20(%esp)
	movl	%eax, (%esp)
	movl	$5170, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.0.isra.0
	movl	20(%esp), %ecx
	jmp	L642
L653:
	movl	$447, %edx
	movl	$5196, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.0.isra.0
	movl	20(%esp), %ecx
	jmp	L642
L766:
	movl	$381, %edx
	movl	$5192, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.0.isra.0
	movl	20(%esp), %ecx
	jmp	L642
	.cfi_endproc
LFE31:
	.p2align 4
	.globl	__Z9ActorPains
	.def	__Z9ActorPains;	.scl	2;	.type	32;	.endef
__Z9ActorPains:
LFB36:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %ecx
	movl	%ebx, (%esp)
	movl	_User(,%ecx,4), %edx
	movzwl	82(%edx), %eax
	cmpw	$4604, %ax
	.cfi_offset 3, -12
	jg	L768
	cmpw	$4589, %ax
	jle	L769
	subw	$4590, %ax
	movl	$17425, %ebx
	btl	%eax, %ebx
	jnc	L769
L770:
	movl	$1, %eax
	movw	%ax, 280(%edx)
L769:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %ebx
	leal	1(%eax,%ebx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L771
	sall	$14, %eax
	cmpl	$939509374, %eax
	ja	L771
L773:
	xorl	%eax, %eax
L767:
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L771:
	.cfi_restore_state
	cmpw	$0, 216(%edx)
	jg	L773
	movl	68(%edx), %eax
	andl	$96, %eax
	jne	L773
	movl	40(%edx), %ebx
	testl	%ebx, %ebx
	je	L767
	cmpl	$0, 44(%ebx)
	je	L767
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movl	_User(,%ecx,4), %esi
	movswl	218(%esi), %eax
	cmpw	$-1, %ax
	je	L776
	movl	$-1, %ebx
	leal	(%eax,%eax,2), %eax
	andl	$-196737, 68(%esi)
	andw	$-2, _Track+8(,%eax,4)
	movw	%bx, 218(%esi)
	movl	40(%edx), %ebx
L776:
	movl	$60, %eax
	movw	%ax, 216(%edx)
	movl	44(%ebx), %edx
	movl	%ecx, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	$1, %eax
	jmp	L767
	.p2align 4,,10
	.p2align 3
L768:
	cmpw	$5023, %ax
	je	L770
	cmpw	$5032, %ax
	jne	L769
	jmp	L770
	.cfi_endproc
LFE36:
	.p2align 4
	.globl	__Z15ActorPainPlasmas
	.def	__Z15ActorPainPlasmas;	.scl	2;	.type	32;	.endef
__Z15ActorPainPlasmas:
LFB38:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movswl	8(%esp), %ecx
	movl	_User(,%ecx,4), %edx
	movl	68(%edx), %eax
	andl	$112, %eax
	jne	L791
	movl	40(%edx), %ebx
	testl	%ebx, %ebx
	je	L789
	cmpl	$0, 44(%ebx)
	jne	L796
L789:
	movl	$360, %ebx
	movw	%bx, 282(%edx)
	movl	_User(,%ecx,4), %edx
	movl	$__Z12DoActorPauses, 36(%edx)
	movl	_User(,%ecx,4), %ecx
	subw	$6, 282(%ecx)
	js	L797
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L791:
	.cfi_restore_state
	xorl	%eax, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L797:
	.cfi_restore_state
	andl	$-5, 68(%ecx)
	movl	$__Z13DoActorDecides, 36(%ecx)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L796:
	.cfi_restore_state
	movl	$360, %eax
	movw	%ax, 216(%edx)
	movl	44(%ebx), %edx
	movl	%ecx, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE38:
	.p2align 4
	.globl	__Z11ActorHealthss
	.def	__Z11ActorHealthss;	.scl	2;	.type	32;	.endef
__Z11ActorHealthss:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movswl	32(%esp), %edi
	movzwl	36(%esp), %ebp
	movl	_User(,%edi,4), %ebx
	imull	$44, %edi, %esi
	addl	_sprite, %esi
	movzwl	82(%ebx), %eax
	cmpw	$2540, %ax
	je	L829
	movzwl	84(%ebx), %edx
	orl	$2, 68(%ebx)
	addl	%ebp, %edx
	movw	%dx, 84(%ebx)
	cmpw	$1300, %ax
	je	L830
	cmpw	$1210, %ax
	jne	L806
	cmpw	$11, _Level
	jne	L805
	testw	%dx, %dx
	jle	L831
	.p2align 4
	.p2align 3
L805:
	movl	48(%ebx), %ecx
	testl	%ecx, %ecx
	je	L807
L802:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	andl	$1023, %eax
	movl	%edx, _randomseed
	cmpl	$850, %eax
	jg	L832
L807:
	testw	%bp, %bp
	js	L803
L809:
	movl	40(%ebx), %eax
	testl	%eax, %eax
	je	L801
	movl	52(%eax), %edx
	testl	%edx, %edx
	je	L801
	cmpw	$15, 84(%ebx)
	jg	L801
	cmpw	$4096, 82(%ebx)
	je	L833
L801:
	addl	$12, %esp
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
L830:
	.cfi_restore_state
	cmpb	$16, 17(%esi)
	je	L805
	cmpw	$4, _Level
	jne	L805
	movzwl	86(%ebx), %ecx
	movl	%ecx, %eax
	shrw	$15, %ax
	addl	%ecx, %eax
	sarw	%ax
	cmpw	%ax, %dx
	jge	L805
	movb	$1, _ExitLevel
	movb	$1, _FinishAnim
	movb	$1, _FinishedLevel
	jmp	L801
	.p2align 4,,10
	.p2align 3
L829:
	cmpw	$-74, %bp
	jge	L834
	movl	48(%ebx), %eax
	orl	$2, 68(%ebx)
	addw	%bp, 84(%ebx)
	testl	%eax, %eax
	jne	L802
L803:
	negl	%ebp
	movw	%bp, 88(%ebx)
	jmp	L809
	.p2align 4,,10
	.p2align 3
L806:
	cmpw	$5426, %ax
	jne	L805
	cmpw	$20, _Level
	jne	L805
	testw	%dx, %dx
	jg	L805
	movl	$1800, _FinishTimer
	movb	$3, _FinishAnim
	jmp	L805
	.p2align 4,,10
	.p2align 3
L833:
	movl	72(%ebx), %eax
	testl	$4194304, %eax
	jne	L801
	testb	$-32, 68(%ebx)
	jne	L801
	movl	_krandcount, %ecx
	leal	1(%ecx), %edx
	movl	%edx, _krandcount
	movl	_randomseed, %edx
	leal	(%edx,%edx,4), %ebp
	leal	1(%edx,%ebp,4), %edx
	movzwl	%dx, %edx
	movl	%edx, %ebp
	movl	%edx, _randomseed
	sarl	$4, %ebp
	andw	$1023, %bp
	cmpw	$949, %bp
	jle	L801
	orl	$4194304, %eax
	addl	$2, %ecx
	movl	%eax, 72(%ebx)
	leal	(%edx,%edx,4), %eax
	leal	1(%edx,%eax,4), %eax
	movl	%ecx, _krandcount
	movl	$240, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L810
	sall	$14, %eax
	movl	$-2147450879, %edx
	mull	%edx
	shrl	$28, %edx
	leal	1(%edx), %eax
	imull	$120, %eax, %edx
L810:
	movl	$60, %eax
	movw	%dx, 216(%ebx)
	movl	$-1171354717, %ebp
	leal	4(%esi), %ecx
	movw	%ax, 84(%ebx)
	leal	8(%esi), %eax
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%eax, 8(%esp)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ebp
	movl	$412, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	8(%esp), %edx
	movl	$1, 4(%esp)
	movl	%edx, (%esp)
	movl	%esi, %edx
	call	__Z9PlaySoundiPiS_S_i
	movl	%esi, 4(%esp)
	movl	$0, (%esp)
	call	__Z18InitPlasmaFountainP12spritetypev7S0_
	xorl	%edx, %edx
	movl	%edi, %eax
	movl	$105, %ecx
	call	__Z14InitBloodSprayshs.isra.0
	movl	200(%ebx), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%esi), %edx
	subl	(%esi), %ecx
	call	@getangle@8
	movl	_sprite, %ecx
	leal	28(%esi), %edx
	leal	1024(%eax), %ebx
	subl	%ecx, %edx
	andl	$2047, %ebx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%esi), %edx
	subl	%ecx, %edx
	movw	%bx, 28(%esi)
	movl	%edx, %eax
	mull	%ebp
	movl	%edi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$_sg_NinjaGrabThroat, %edx
	andw	$-9, 12(%esi)
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	jmp	L801
	.p2align 4,,10
	.p2align 3
L832:
	movl	$9, %ecx
	movl	$3, %edx
	movl	%edi, %eax
	call	__Z15PlaySpriteSoundsii
	jmp	L807
	.p2align 4,,10
	.p2align 3
L834:
	movl	$100, %eax
	movw	%ax, 88(%ebx)
	addl	$12, %esp
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
L831:
	.cfi_restore_state
	movl	$840, _FinishTimer
	movb	$2, _FinishAnim
	jmp	L805
	.cfi_endproc
LFE41:
	.p2align 4
	.globl	__Z12SopCheckKillP19SECTOR_OBJECTstruct
	.def	__Z12SopCheckKillP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
__Z12SopCheckKillP19SECTOR_OBJECTstruct:
LFB42:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %eax
	movl	596(%eax), %eax
	movl	%eax, %ecx
	andl	$33554432, %ecx
	jne	L840
	movl	12(%esp), %edx
	movzwl	3204(%edx), %edx
	cmpw	$-9999, %dx
	je	L835
	testw	%dx, %dx
	jle	L842
L835:
	movl	%ecx, %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L840:
	.cfi_restore_state
	xorl	%ecx, %ecx
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L842:
	.cfi_restore_state
	andl	$262144, %eax
	movl	%eax, %ecx
	jne	L839
	movl	12(%esp), %eax
	movl	$__Z17SpawnVehicleSmokes, %edx
	movl	%ecx, 4(%esp)
	call	__Z15VehicleSetSmokeP19SECTOR_OBJECTstructPFisE
	movl	12(%esp), %eax
	movl	4(%esp), %ecx
	orl	$33554432, 596(%eax)
	movl	%ecx, %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L839:
	.cfi_restore_state
	movl	12(%esp), %eax
	movswl	3574(%eax), %eax
	call	__Z24KillMatchingCrackSpritess
	movl	12(%esp), %eax
	movl	184(%eax), %ecx
	movl	180(%eax), %edx
	call	__Z20CollapseSectorObjectP19SECTOR_OBJECTstructii
	movl	12(%esp), %eax
	movswl	3574(%eax), %eax
	movl	%eax, (%esp)
	call	__Z19DoSpawnSpotsForKills
	movl	12(%esp), %eax
	call	__Z23KillSectorObjectSpritesP19SECTOR_OBJECTstruct
	movl	$1, %ecx
	jmp	L835
	.cfi_endproc
LFE42:
	.p2align 4
	.globl	__Z16PlayerCheckDeathP12PLAYERstructs
	.def	__Z16PlayerCheckDeathP12PLAYERstructs;	.scl	2;	.type	32;	.endef
__Z16PlayerCheckDeathP12PLAYERstructs:
LFB46:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	20(%esp), %eax
	movzwl	24(%esp), %edx
	movl	%ebx, 4(%esp)
	movl	%esi, 8(%esp)
	movswl	348(%eax), %ecx
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	movl	352(%eax), %esi
	movl	_User(,%ecx,4), %ebx
	movw	%dx, 24112(%eax)
	cmpw	$0, 84(%ebx)
	jle	L844
L846:
	movl	4(%esp), %ebx
	movl	8(%esp), %esi
	xorl	%eax, %eax
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L844:
	.cfi_restore_state
	testb	$2, 22968(%eax)
	jne	L846
	movzwl	88(%ebx), %edx
	movl	$2, %ecx
	cmpw	$64, %dx
	jle	L865
	movw	%cx, 23234(%eax)
	cmpw	$0, 24(%esp)
	js	L866
L848:
	movswl	24(%esp), %ecx
	movl	%edi, 12(%esp)
	.cfi_offset 7, -8
	imull	$44, %ecx, %edx
	addl	_sprite, %edx
	movl	%edx, %edi
	movl	_User(,%ecx,4), %edx
	movzwl	82(%edx), %ecx
	cmpw	$4320, %cx
	je	L857
	cmpw	$1580, %cx
	je	L857
L849:
	cmpw	$2218, %cx
	jne	L851
	xorl	%ecx, %ecx
	movw	%cx, 23234(%eax)
	movzwl	82(%edx), %ecx
L851:
	cmpw	$4096, %cx
	je	L867
L852:
	cmpw	$0, 23238(%eax)
	js	L868
L853:
	movl	%eax, (%esp)
	call	__Z16DoPlayerBeginDieP12PLAYERstruct
	movl	4(%esi), %edx
	movl	(%esi), %ecx
	subl	4(%edi), %edx
	subl	(%edi), %ecx
	call	@getangle@8
	movw	%ax, 228(%ebx)
	movswl	88(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	movl	%eax, 232(%ebx)
	movl	12(%esp), %edi
	.cfi_restore 7
L855:
	movl	4(%esp), %ebx
	movl	8(%esp), %esi
	movl	$1, %eax
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L865:
	.cfi_restore_state
	xorl	%ecx, %ecx
	cmpw	$24, %dx
	setg	%cl
	movw	%cx, 23234(%eax)
	cmpw	$0, 24(%esp)
	jns	L848
L866:
	movl	$-1, %ebx
	movw	%bx, 23238(%eax)
	movl	%eax, (%esp)
	call	__Z16DoPlayerBeginDieP12PLAYERstruct
	jmp	L855
	.p2align 4,,10
	.p2align 3
L857:
	.cfi_offset 7, -8
	movl	$3, %ecx
	movw	%cx, 23234(%eax)
	movzwl	82(%edx), %ecx
	jmp	L849
	.p2align 4,,10
	.p2align 3
L868:
	movzwl	30(%edi), %ecx
	testw	%cx, %cx
	js	L854
	movw	%cx, 23238(%eax)
	jmp	L853
	.p2align 4,,10
	.p2align 3
L867:
	movl	144(%edx), %ecx
	testl	%ecx, %ecx
	je	L852
	xorl	%ecx, %ecx
	movw	%cx, 23234(%eax)
	movl	144(%edx), %ecx
	movb	$1, 24097(%ecx)
	jmp	L852
	.p2align 4,,10
	.p2align 3
L854:
	testb	$8, 43(%edi)
	je	L853
	movzwl	24(%esp), %edx
	movw	%dx, 23238(%eax)
	jmp	L853
	.cfi_endproc
LFE46:
	.p2align 4
	.globl	__Z8DoDamagess
	.def	__Z8DoDamagess;	.scl	2;	.type	32;	.endef
__Z8DoDamagess:
LFB47:
	.cfi_startproc
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movl	%esi, 44(%esp)
	.cfi_offset 6, -16
	movswl	60(%esp), %esi
	movl	%ebx, 40(%esp)
	movzwl	64(%esp), %edx
	.cfi_offset 3, -20
	movl	_User(,%esi,4), %ebx
	movl	144(%ebx), %eax
	testl	%eax, %eax
	je	L870
	testb	$2, 22968(%eax)
	jne	L1429
L870:
	movl	68(%ebx), %eax
	testb	$-128, %ah
	jne	L1227
	movl	%ebp, 52(%esp)
	.cfi_offset 5, -8
	movswl	%dx, %ebp
	movl	%edi, 48(%esp)
	.cfi_offset 7, -12
	movl	_User(,%ebp,4), %edi
	testb	$-128, 69(%edi)
	jne	L1418
	movl	_sprite, %ecx
	movl	48(%ebx), %edx
	movl	%ecx, 28(%esp)
	testl	%edx, %edx
	je	L873
	movl	_randomseed, %edx
	addl	$1, _krandcount
	leal	(%edx,%edx,4), %ecx
	leal	1(%edx,%ecx,4), %edx
	movzwl	%dx, %ecx
	andl	$1023, %edx
	movl	%ecx, _randomseed
	cmpl	$850, %edx
	jle	L873
	movl	%esi, %eax
	movl	$1, %ecx
	movl	$3, %edx
	call	__Z15PlaySpriteSoundsii
	movl	68(%ebx), %eax
	.p2align 4
	.p2align 3
L873:
	andl	$256, %eax
	movl	%eax, 24(%esp)
	jne	L1409
	imull	$44, %esi, %eax
	movl	28(%esp), %ecx
	addl	%ecx, %eax
	movl	%eax, 32(%esp)
	cmpw	$8, 26(%eax)
	je	L1430
	imull	$44, %ebp, %eax
	movl	28(%esp), %ecx
	addl	%eax, %ecx
	movl	144(%edi), %eax
	movl	%ecx, 36(%esp)
	testl	%eax, %eax
	je	L879
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	L879
	movzwl	3214(%eax), %eax
	cmpw	$98, %ax
	je	L880
	cmpw	$99, %ax
	je	L881
	.p2align 4
	.p2align 3
L879:
	movzwl	82(%edi), %eax
	cmpw	$2146, %ax
	je	L889
	jle	L1431
	cmpw	$3122, %ax
	jg	L925
	cmpw	$3099, %ax
	jg	L926
	cmpw	$2218, %ax
	je	L927
	jg	L928
	cmpw	$2196, %ax
	je	L929
	jg	L930
	cmpw	$2147, %ax
	jne	L1432
	movl	$2, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	52(%ebx), %edx
	movl	%eax, 24(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	testl	%edx, %edx
	je	L1433
	.p2align 4
	.p2align 3
L946:
	movl	28(%esp), %eax
	testl	%eax, %eax
	je	L1418
L1123:
	cmpl	$-39, 24(%esp)
	jl	L1140
	movl	_krandcount, %edi
	movl	_randomseed, %ecx
	cmpl	$-9, 24(%esp)
	jge	L1418
L1138:
	movl	32(%esp), %ebx
	movl	$-1171354717, %ebp
	leal	8(%ebx), %esi
	addl	$4, %ebx
	movl	%esi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ebp
	movl	%ebx, %eax
	subl	_sprite, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	32(%esp), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ebp
	leal	1(%edi), %eax
	movl	%eax, _krandcount
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %eax
	movl	$260, %ecx
	shrl	$5, %edx
	movzwl	%ax, %eax
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1139
	sall	$14, %eax
	movl	$-1610571775, %edx
	mull	%edx
	shrl	$27, %edx
	movl	_PlayerPainVocs(,%edx,4), %ecx
L1139:
	cmpb	$0, _Prediction
	jne	L1418
	movl	28(%esp), %eax
	movl	%esi, 8(%esp)
	movl	$7425, %edx
	movl	$9, 12(%esp)
	movl	%eax, 16(%esp)
	movl	32(%esp), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	$LC0, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	movl	48(%esp), %edi
	.cfi_restore 7
	movl	52(%esp), %ebp
	.cfi_restore 5
L1227:
	movl	40(%esp), %ebx
	movl	44(%esp), %esi
	xorl	%eax, %eax
	addl	$56, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L1450:
	.cfi_def_cfa_offset 60
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	24(%esp), %eax
	movl	$6, %esi
	cltd
	idivl	%esi
	movl	%eax, 24(%esp)
	testl	%ecx, %ecx
	jne	L1088
	movl	144(%ebx), %edx
	testl	%edx, %edx
	jne	L1089
L1418:
	movl	48(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	52(%esp), %ebp
	.cfi_restore 5
	xorl	%eax, %eax
	movl	40(%esp), %ebx
	movl	44(%esp), %esi
	addl	$56, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1431:
	.cfi_restore_state
	cmpw	$2049, %ax
	jg	L891
	cmpw	$2009, %ax
	jg	L892
	cmpw	$1300, %ax
	je	L893
	jle	L1434
	cmpw	$1580, %ax
	je	L917
	jg	L918
	cmpw	$1562, %ax
	jne	L1435
	movl	144(%ebx), %eax
	movl	52(%ebx), %ecx
	movl	%eax, 28(%esp)
	testl	%ecx, %ecx
	jne	L946
	testl	%eax, %eax
	je	L1436
L1127:
	movl	32(%esp), %eax
	movl	%eax, 4(%esp)
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	call	__Z18InitPlasmaFountainP12spritetypev7S0_
	movl	%ebp, (%esp)
	call	__Z10SetSuicides
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
	.p2align 4,,10
	.p2align 3
L1429:
	.cfi_restore 5
	.cfi_restore 7
	movl	%ebp, 52(%esp)
	.cfi_offset 5, -8
	movswl	%dx, %ebp
L875:
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	call	__Z10SpawnBloodsssiii
	movl	52(%esp), %ebp
	.cfi_restore 5
	movl	40(%esp), %ebx
	xorl	%eax, %eax
	movl	44(%esp), %esi
	addl	$56, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1409:
	.cfi_def_cfa_offset 60
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	48(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L875
	.p2align 4,,10
	.p2align 3
L925:
	.cfi_restore_state
	cmpw	$4096, %ax
	je	L936
	jg	L937
	cmpw	$3258, %ax
	je	L938
	jle	L1437
	cmpw	$3280, %ax
	je	L902
	cmpw	$3780, %ax
	jne	L899
	movl	$33, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	%eax, %ecx
	movl	$1431655766, %eax
	imull	%ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	144(%ebx), %eax
	movl	%edx, 24(%esp)
	movl	52(%ebx), %edx
	movl	%eax, 28(%esp)
	testl	%edx, %edx
	jne	L946
	testl	%eax, %eax
	je	L967
	cmpb	$3, 24110(%eax)
	jne	L968
	movl	%ecx, %eax
	movl	$9, %edi
	cltd
	idivl	%edi
	movl	%eax, 24(%esp)
L968:
	movl	36(%esp), %eax
	movswl	24(%esp), %edx
	movswl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%edx, 36(%esp)
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %edi
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	movl	36(%esp), %edx
	testb	%al, %al
	jne	L1438
L970:
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z10SpawnBloodsssiii
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
	.p2align 4,,10
	.p2align 3
L892:
	subw	$2010, %ax
	cmpw	$39, %ax
	ja	L899
	movzwl	%ax, %eax
	jmp	*L907(,%eax,4)
	.section .rdata,"dr"
	.align 4
L907:
	.long	L914
	.long	L899
	.long	L899
	.long	L899
	.long	L913
	.long	L899
	.long	L912
	.long	L911
	.long	L910
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L909
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L908
	.long	L908
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L906
	.text
	.p2align 4,,10
	.p2align 3
L881:
	movl	52(%ebx), %ecx
	testl	%ecx, %ecx
	je	L1439
L886:
	movl	$-100, 24(%esp)
	jmp	L879
	.p2align 4,,10
	.p2align 3
L926:
	subw	$3100, %ax
	cmpw	$22, %ax
	ja	L899
	movzwl	%ax, %eax
	jmp	*L901(,%eax,4)
	.section .rdata,"dr"
	.align 4
L901:
	.long	L905
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L904
	.long	L899
	.long	L903
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L899
	.long	L902
	.long	L900
	.text
	.p2align 4,,10
	.p2align 3
L1434:
	cmpw	$817, %ax
	je	L895
	jg	L896
	cmpw	$362, %ax
	jle	L1440
	cmpw	$800, %ax
	jne	L899
	movl	32(%esp), %eax
	movl	$-1171354717, %ecx
	leal	8(%eax), %edi
	movl	%edi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	32(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%eax), %edx
	movl	%edx, 24(%esp)
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	32(%esp), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	24(%esp), %ecx
	movl	$120, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	32(%esp), %edx
	movl	$9, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	$42, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	52(%ebx), %ecx
	movl	%eax, 24(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	testl	%ecx, %ecx
	jne	L946
	testl	%eax, %eax
	je	L965
	cmpb	$3, 24110(%eax)
	jne	L966
	movl	24(%esp), %eax
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movl	%eax, 24(%esp)
L966:
	movl	36(%esp), %eax
	movswl	24(%esp), %esi
	movswl	28(%eax), %eax
	movl	%esi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 28(%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	je	L946
	movl	28(%esp), %eax
	movl	%esi, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1464:
	cmpw	$2230, %ax
	je	L906
	.p2align 4
	.p2align 3
L899:
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L936:
	cmpb	$13, 273(%edi)
	je	L1441
	movl	$0, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	%eax, 24(%esp)
	movl	144(%edi), %eax
	movzbl	24110(%eax), %eax
	cmpb	$1, %al
	je	L949
	cmpb	$2, %al
	jne	L951
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %edx
	movl	$9, %eax
	movzwl	%dx, %edx
	movl	%edx, _randomseed
	cmpl	$65535, %edx
	je	L953
	movl	%edx, %eax
	movl	$107372544, %ecx
	xorl	%edx, %edx
	sall	$14, %eax
	divl	%ecx
L953:
	movl	24(%esp), %edi
	leal	-5(%edi,%eax), %eax
	movl	%eax, 24(%esp)
L951:
	movl	36(%esp), %eax
	movl	$-1171354717, %ecx
	leal	8(%eax), %edi
	movl	%edi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	36(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%eax), %edx
	movl	%edx, 28(%esp)
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	36(%esp), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	28(%esp), %ecx
	movl	$82, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	36(%esp), %edx
	movl	$9, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
L948:
	movl	144(%ebx), %eax
	movl	52(%ebx), %edx
	movl	%eax, 28(%esp)
	testl	%edx, %edx
	jne	L946
	testl	%eax, %eax
	je	L954
	cmpb	$3, 24110(%eax)
	jne	L955
	movl	24(%esp), %eax
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movl	%eax, 24(%esp)
L955:
	movl	36(%esp), %eax
	movswl	24(%esp), %edx
	movswl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%edx, 36(%esp)
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %edi
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	movl	36(%esp), %edx
	testb	%al, %al
	jne	L1442
L956:
	cmpw	$0, 23258(%edi)
	jne	L1443
L958:
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z10SpawnBloodsssiii
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L908:
	movl	$38, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	52(%ebx), %edi
	movl	%eax, 24(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	testl	%edi, %edi
	jne	L946
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L1119
	movl	36(%esp), %eax
	movswl	24(%esp), %edi
	movswl	28(%eax), %eax
	movl	%edi, 4(%esp)
	movl	%ecx, (%esp)
	movl	%eax, 8(%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %esi
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	jne	L1444
L1120:
	movl	144(%ebx), %edx
	cmpw	$0, 23258(%edx)
	jne	L1445
L1121:
	movl	%ebp, (%esp)
	call	__Z20SpawnGoroFireballExps
	movl	%ebp, (%esp)
	call	__Z10SetSuicides
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L906:
	movl	$1, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	52(%ebx), %edx
	movl	%eax, 24(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	testl	%edx, %edx
	jne	L946
	testl	%eax, %eax
	je	L1001
	cmpb	$3, 24110(%eax)
	jne	L1002
	movl	24(%esp), %eax
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movl	%eax, 24(%esp)
L1002:
	movl	36(%esp), %eax
	movswl	24(%esp), %edx
	movswl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%edx, 36(%esp)
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 28(%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	movl	36(%esp), %edx
	testb	%al, %al
	jne	L1446
L1003:
	movl	28(%esp), %eax
	cmpw	$0, 23258(%eax)
	jne	L1447
L1005:
	movl	_User(,%esi,4), %eax
	cmpw	$0, 84(%eax)
	jle	L1448
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z10SpawnBloodsssiii
L1141:
	xorl	%ecx, %ecx
	movw	%cx, 82(%edi)
	movl	%ebp, (%esp)
	call	__Z10SetSuicides
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L902:
	cmpl	$30000, 188(%edi)
	je	L1449
	movl	$25, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	%eax, 24(%esp)
L1075:
	movl	52(%ebx), %ecx
	testl	%ecx, %ecx
	je	L1076
	testb	$8, 598(%ecx)
	je	L1077
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L900:
	movl	$26, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	52(%ebx), %ecx
	movl	%eax, 24(%esp)
	movl	36(%esp), %eax
	movswl	30(%eax), %eax
	testw	%ax, %ax
	js	L1085
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L1086
	cmpw	$1300, 82(%eax)
	je	L1450
L1086:
	testl	%ecx, %ecx
	je	L1451
L1088:
	testb	$8, 598(%ecx)
	je	L1093
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L904:
	movl	$26, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	52(%ebx), %ecx
	movl	%eax, 24(%esp)
	testl	%ecx, %ecx
	je	L1081
	testb	$8, 598(%ecx)
	je	L1082
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L905:
	movl	$19, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	52(%ebx), %ecx
	movl	%eax, 24(%esp)
	testl	%ecx, %ecx
	je	L1063
	testb	$8, 598(%ecx)
	je	L1064
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L903:
	movl	$20, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	52(%ebx), %ecx
	movl	%eax, 24(%esp)
	testl	%ecx, %ecx
	je	L1070
	testb	$8, 598(%ecx)
	je	L1071
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L911:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	movl	$-104, 24(%esp)
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1040
	sall	$14, %eax
	movl	$-1610571775, %edx
	mull	%edx
	movl	$-65, %eax
	shrl	$24, %edx
	subl	%edx, %eax
	movl	%eax, 24(%esp)
L1040:
	movl	52(%ebx), %ecx
	testl	%ecx, %ecx
	je	L1041
	testb	$8, 598(%ecx)
	je	L1452
L1042:
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	testl	%eax, %eax
	je	L1418
	.p2align 4
	.p2align 3
L1140:
	movl	_krandcount, %edx
	leal	1(%edx), %eax
	movl	%eax, _krandcount
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1135
	movl	%eax, %ecx
	sall	$14, %ecx
	cmpl	$752681224, %ecx
	ja	L1135
	leal	2(%edx), %edi
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	movl	%edi, _krandcount
	movzwl	%cx, %ecx
	movl	%ecx, _randomseed
	cmpl	$65535, %ecx
	je	L1136
	movl	%ecx, %eax
	sall	$14, %eax
	cmpl	$752681224, %eax
	jbe	L1138
	.p2align 4
	.p2align 3
L1136:
	movl	32(%esp), %ebp
	movl	_sprite, %ebx
	movl	$-1171354717, %ecx
	leal	8(%ebp), %edi
	leal	4(%ebp), %esi
	movl	%edi, %edx
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	cmpb	$0, _Prediction
	jne	L1418
	movl	28(%esp), %eax
	movl	%ebp, (%esp)
	movl	$372, %ecx
	movl	$7423, %edx
	movl	%edi, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC0, %eax
	movl	$9, 12(%esp)
	movl	%esi, 4(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	movl	48(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	52(%esp), %ebp
	.cfi_restore 5
	jmp	L1227
L909:
	.cfi_restore_state
	movl	$44, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	52(%ebx), %edx
	movl	%eax, 24(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	testl	%edx, %edx
	jne	L946
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L1009
	movl	36(%esp), %eax
	movswl	24(%esp), %edx
	movswl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 36(%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %ecx
	movl	%ebp, 4(%esp)
	movl	%ecx, (%esp)
	movl	%ecx, 28(%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	movl	36(%esp), %edx
	testb	%al, %al
	jne	L1453
L1010:
	movl	144(%ebx), %edx
	cmpw	$0, 23258(%edx)
	jne	L1454
L1011:
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z10SpawnBloodsssiii
	xorl	%ecx, %ecx
	movw	%cx, 82(%edi)
	movl	%ebp, (%esp)
	call	__Z10SetSuicides
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L910:
	movl	$12, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	52(%ebx), %edx
	movl	%eax, 24(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	testl	%edx, %edx
	jne	L946
	testl	%eax, %eax
	je	L1036
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	jne	L1455
L1037:
	cmpl	$30000, 188(%edi)
	movl	%ebp, (%esp)
	je	L1456
	call	__Z12SpawnBoltExps
L1039:
	movl	%ebp, (%esp)
	call	__Z10SetSuicides
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L913:
	movl	$25, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	52(%ebx), %ecx
	movl	%eax, 24(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	testl	%ecx, %ecx
	jne	L946
	testl	%eax, %eax
	je	L1057
	movl	36(%esp), %edi
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%edi), %edx
	subl	(%edi), %ecx
	call	@getangle@8
	movswl	24(%esp), %edi
	cwtl
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %esi
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	jne	L1457
L1058:
	movl	%ebp, (%esp)
	call	__Z13SpawnBunnyExps
	movl	%ebp, (%esp)
	call	__Z10SetSuicides
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L914:
	movl	$8, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	52(%ebx), %edx
	movl	%eax, 24(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	testl	%edx, %edx
	jne	L946
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1116
	movl	36(%esp), %eax
	movswl	24(%esp), %edx
	movswl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 28(%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %edi
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	movl	28(%esp), %edx
	testb	%al, %al
	jne	L1458
L1117:
	movl	36(%esp), %eax
	movswl	30(%eax), %eax
	testw	%ax, %ax
	js	L1118
	movl	_User(,%eax,4), %eax
	subw	$1, 176(%eax)
L1118:
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z19SpawnFireballFlamesss
	movl	%ebp, (%esp)
	call	__Z10SetSuicides
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L912:
	movl	$12, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	movl	52(%ebx), %edx
	sarl	%eax
	movl	%eax, 24(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	testl	%edx, %edx
	jne	L946
	testl	%eax, %eax
	je	L1053
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	jne	L1459
L1054:
	cmpl	$30000, 188(%edi)
	movl	%ebp, (%esp)
	je	L1460
	call	__Z12SpawnBoltExps
L1056:
	movl	%ebp, (%esp)
	call	__Z10SetSuicides
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
	.p2align 4,,10
	.p2align 3
L880:
	movl	52(%ebx), %eax
	testl	%eax, %eax
	je	L1461
L882:
	movl	$-200, 24(%esp)
	jmp	L879
	.p2align 4,,10
	.p2align 3
L1430:
	movl	%esi, (%esp)
	call	__Z12SpawnMineExps
	movl	%esi, %eax
	call	__Z10KillSprites
	movl	48(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	52(%esp), %ebp
	.cfi_restore 5
	jmp	L1227
	.p2align 4,,10
	.p2align 3
L891:
	.cfi_restore_state
	cmpw	$2099, %ax
	je	L922
	cmpw	$2106, %ax
	je	L923
	cmpw	$2098, %ax
	jne	L899
	movl	$15, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	52(%ebx), %edi
	movl	%eax, 24(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	testl	%edi, %edi
	jne	L946
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L1032
	movl	36(%esp), %eax
	movswl	24(%esp), %edi
	movswl	28(%eax), %eax
	movl	%edi, 4(%esp)
	movl	%ecx, (%esp)
	movl	%eax, 8(%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %esi
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	jne	L1462
L1033:
	movl	%ebp, (%esp)
	call	__Z10SetSuicides
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
	.p2align 4,,10
	.p2align 3
L1135:
	movl	32(%esp), %ebp
	movl	_sprite, %ebx
	movl	$-1171354717, %ecx
	leal	8(%ebp), %edi
	leal	4(%ebp), %esi
	movl	%edi, %edx
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	cmpb	$0, _Prediction
	jne	L1418
	movl	28(%esp), %eax
	movl	%ebp, (%esp)
	movl	$371, %ecx
	movl	$7421, %edx
	movl	%edi, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC0, %eax
	movl	$9, 12(%esp)
	movl	%esi, 4(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	movl	48(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	52(%esp), %ebp
	.cfi_restore 5
	jmp	L1227
	.p2align 4,,10
	.p2align 3
L937:
	.cfi_restore_state
	cmpw	$4550, %ax
	je	L942
	jg	L943
	cmpw	$4277, %ax
	je	L920
	cmpw	$4320, %ax
	jne	L899
	movl	$33, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	52(%ebx), %ecx
	movl	%eax, 24(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	testl	%ecx, %ecx
	jne	L946
	testl	%eax, %eax
	je	L977
	cmpb	$3, 24110(%eax)
	jne	L978
	movl	24(%esp), %eax
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movl	%eax, 24(%esp)
L978:
	movl	36(%esp), %eax
	movswl	24(%esp), %edx
	movswl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%edx, 36(%esp)
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %edi
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	movl	36(%esp), %edx
	testb	%al, %al
	jne	L1463
L980:
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z10SpawnBloodsssiii
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
	.p2align 4,,10
	.p2align 3
L928:
	cmpw	$2430, %ax
	je	L934
	cmpw	$3072, %ax
	jne	L1464
	movl	$22, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	%eax, 24(%esp)
	movl	36(%esp), %eax
	movswl	30(%eax), %edi
	testw	%di, %di
	js	L1101
	movswl	%di, %eax
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L1101
	cmpw	$1210, 82(%eax)
	jne	L1101
	movl	24(%esp), %eax
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movl	%eax, 24(%esp)
L1101:
	movl	52(%ebx), %ecx
	testl	%ecx, %ecx
	je	L1103
	testb	$8, 598(%ecx)
	je	L1104
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
	.p2align 4,,10
	.p2align 3
L1439:
	movl	144(%ebx), %edx
	testl	%edx, %edx
	je	L887
	movl	36(%esp), %eax
	movzwl	28(%eax), %ecx
	leal	512(%ecx), %eax
	andl	$2047, %ecx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	$600, %eax, %eax
	sarl	$14, %eax
	sall	$15, %eax
	movl	%eax, 212(%edx)
	movswl	_sintable(%ecx,%ecx), %eax
	imull	$600, %eax, %eax
	sarl	$14, %eax
	sall	$15, %eax
	movl	%eax, 216(%edx)
	movl	144(%ebx), %ecx
	movl	%ebp, 4(%esp)
	movl	%ecx, (%esp)
	movl	%ecx, 24(%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	jne	L1465
L888:
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z10SpawnBloodsssiii
	jmp	L886
	.p2align 4,,10
	.p2align 3
L1461:
	movl	144(%ebx), %edx
	testl	%edx, %edx
	je	L883
	movl	36(%esp), %eax
	movzwl	28(%eax), %ecx
	leal	512(%ecx), %eax
	andl	$2047, %ecx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	$1200, %eax, %eax
	sarl	$14, %eax
	sall	$15, %eax
	movl	%eax, 212(%edx)
	movswl	_sintable(%ecx,%ecx), %eax
	imull	$1200, %eax, %eax
	sarl	$14, %eax
	sall	$15, %eax
	movl	%eax, 216(%edx)
	movl	144(%ebx), %ecx
	movl	%ebp, 4(%esp)
	movl	%ecx, (%esp)
	movl	%ecx, 24(%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	je	L882
	movl	24(%esp), %eax
	movl	$-200, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L882
	.p2align 4,,10
	.p2align 3
L896:
	cmpw	$820, %ax
	je	L895
	cmpw	$1210, %ax
	jne	L899
	movl	$31, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	%eax, %ecx
	movl	$1431655766, %eax
	imull	%ecx
	sarl	$31, %ecx
	subl	%ecx, %edx
	movl	52(%ebx), %ecx
	movl	%edx, 24(%esp)
	testl	%ecx, %ecx
	je	L1059
	testb	$8, 598(%ecx)
	je	L1060
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1437:
	cmpw	$3212, %ax
	jne	L899
	movswl	_DamageData+1028, %eax
	movl	52(%ebx), %ecx
	negl	%eax
	movl	%eax, 24(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	testl	%ecx, %ecx
	jne	L946
	testl	%eax, %eax
	je	L1122
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	je	L1123
	movswl	24(%esp), %edx
	movl	28(%esp), %eax
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
	.p2align 4,,10
	.p2align 3
L918:
	subw	$1719, %ax
	testw	$-3, %ax
	jne	L899
	movl	$45, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	52(%ebx), %edi
	movl	%eax, 24(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	testl	%edi, %edi
	jne	L946
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L1108
	movl	36(%esp), %eax
	movswl	24(%esp), %edi
	movswl	28(%eax), %eax
	movl	%edi, 4(%esp)
	movl	%ecx, (%esp)
	movl	%eax, 8(%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %esi
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	jne	L1466
L1109:
	movl	%ebp, (%esp)
	call	__Z10SetSuicides
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L930:
	cmpw	$2197, %ax
	jne	L899
	movl	$41, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	52(%ebx), %edx
	movl	%eax, 24(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	testl	%edx, %edx
	jne	L946
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L1014
	movl	36(%esp), %eax
	movswl	24(%esp), %edx
	movswl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 36(%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %ecx
	movl	%ebp, 4(%esp)
	movl	%ecx, (%esp)
	movl	%ecx, 28(%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	movl	36(%esp), %edx
	testb	%al, %al
	jne	L1467
L1015:
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z10SpawnBloodsssiii
	xorl	%ecx, %ecx
	movw	%cx, 82(%edi)
	movl	%ebp, (%esp)
	call	__Z10SetSuicides
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L938:
	movl	$30, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	52(%ebx), %edx
	movl	%eax, 24(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	testl	%edx, %edx
	jne	L946
	testl	%eax, %eax
	je	L1124
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	jne	L1468
L1125:
	xorl	%esi, %esi
	movw	%si, 82(%edi)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L934:
	movl	$36, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	52(%ebx), %ecx
	movl	%eax, 24(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	testl	%ecx, %ecx
	jne	L946
	movl	24(%esp), %edx
	movl	%eax, %ecx
	movl	%edx, %edi
	testl	%eax, %eax
	je	L1110
	movl	36(%esp), %eax
	movswl	28(%eax), %eax
	movl	%ecx, (%esp)
	movl	%eax, 8(%esp)
	movswl	%dx, %eax
	movl	%eax, 4(%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %esi
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	jne	L1469
L1111:
	movl	%ebp, (%esp)
	call	__Z10SetSuicides
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L942:
	movl	$33, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	%eax, %ecx
	movl	$1431655766, %eax
	imull	%ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	144(%ebx), %eax
	movl	%edx, 24(%esp)
	movl	52(%ebx), %edx
	movl	%eax, 28(%esp)
	testl	%edx, %edx
	jne	L946
	testl	%eax, %eax
	je	L982
	cmpb	$3, 24110(%eax)
	jne	L983
	movl	%ecx, %eax
	movl	$9, %edi
	cltd
	idivl	%edi
	movl	%eax, 24(%esp)
L983:
	movl	36(%esp), %eax
	movswl	24(%esp), %edx
	movswl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%edx, 36(%esp)
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %edi
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	movl	36(%esp), %edx
	testb	%al, %al
	jne	L1470
L985:
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z10SpawnBloodsssiii
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1435:
	jg	L899
	cmpw	$1367, %ax
	je	L920
	cmpw	$1469, %ax
	jne	L899
L920:
	movl	$34, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	52(%ebx), %edi
	movl	%eax, 24(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	testl	%edi, %edi
	jne	L946
	testl	%eax, %eax
	je	L960
	cmpb	$3, 24110(%eax)
	jne	L961
	movl	24(%esp), %eax
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movl	%eax, 24(%esp)
L961:
	movl	36(%esp), %eax
	movswl	24(%esp), %edx
	movswl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%edx, 36(%esp)
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %edi
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	movl	36(%esp), %edx
	testb	%al, %al
	jne	L1471
L963:
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z10SpawnBloodsssiii
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L895:
	movl	$23, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	52(%ebx), %ecx
	movl	%eax, 24(%esp)
	testl	%ecx, %ecx
	je	L1112
	testb	$8, 598(%ecx)
	je	L1113
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L923:
	cmpw	$1095, 82(%ebx)
	jne	L1067
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L922:
	movl	$16, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	52(%ebx), %ecx
	movl	%eax, 24(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	testl	%ecx, %ecx
	jne	L946
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L1034
	movl	36(%esp), %eax
	movswl	24(%esp), %edi
	movswl	28(%eax), %eax
	movl	%edi, 4(%esp)
	movl	%ecx, (%esp)
	movl	%eax, 8(%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %esi
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	jne	L1472
L1035:
	movl	%ebp, (%esp)
	call	__Z10SetSuicides
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L917:
	movl	$33, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	52(%ebx), %edi
	movl	%eax, %ecx
	movl	$1431655766, %eax
	imull	%ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	144(%ebx), %eax
	movl	%edx, 24(%esp)
	movl	%eax, 28(%esp)
	testl	%edi, %edi
	jne	L946
	testl	%eax, %eax
	je	L972
	cmpb	$3, 24110(%eax)
	jne	L973
	movl	%ecx, %eax
	movl	$9, %edi
	cltd
	idivl	%edi
	movl	%eax, 24(%esp)
L973:
	movl	36(%esp), %eax
	movswl	24(%esp), %edx
	movswl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%edx, 36(%esp)
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %edi
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	movl	36(%esp), %edx
	testb	%al, %al
	jne	L1473
L975:
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z10SpawnBloodsssiii
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L927:
	movl	$27, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	52(%ebx), %edx
	movl	%eax, 24(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	testl	%edx, %edx
	jne	L946
	testl	%eax, %eax
	je	L1131
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	jne	L1474
L1132:
	movl	%ebp, (%esp)
	call	__Z10SetSuicides
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L893:
	movl	$39, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	52(%ebx), %edi
	movl	%eax, 24(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	testl	%edi, %edi
	jne	L946
	testl	%eax, %eax
	je	L987
	cmpb	$3, 24110(%eax)
	jne	L988
	movl	24(%esp), %eax
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movl	%eax, 24(%esp)
L988:
	movl	36(%esp), %eax
	movl	24(%esp), %edi
	movswl	28(%eax), %eax
	testl	%edi, %edi
	movl	%eax, 8(%esp)
	leal	3(%edi), %eax
	cmovns	%edi, %eax
	sarl	$2, %eax
	cwtl
	movl	%eax, 4(%esp)
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %edi
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	jne	L1475
L990:
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z10SpawnBloodsssiii
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z10SpawnBloodsssiii
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z10SpawnBloodsssiii
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L929:
	movl	$40, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	52(%ebx), %edx
	movl	%eax, 24(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	testl	%edx, %edx
	jne	L946
	movzwl	24(%esp), %edx
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L1012
	movl	36(%esp), %eax
	movl	%edx, 36(%esp)
	movswl	28(%eax), %eax
	movl	%ecx, (%esp)
	movl	%eax, 8(%esp)
	movswl	%dx, %eax
	movl	%eax, 4(%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %ecx
	movl	%ebp, 4(%esp)
	movl	%ecx, (%esp)
	movl	%ecx, 28(%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	jne	L1476
L1013:
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z10SpawnBloodsssiii
	xorl	%ecx, %ecx
	movw	%cx, 82(%edi)
	movl	%ebp, (%esp)
	call	__Z10SetSuicides
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L887:
	movl	$-100, 4(%esp)
	movl	%esi, (%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	jmp	L888
L883:
	movl	$-200, 4(%esp)
	movzwl	_screenpeek, %eax
	movl	%esi, (%esp)
	movw	%ax, 24(%esp)
	call	__Z11ActorHealthss
	cmpw	$0, 84(%ebx)
	jg	L882
	imull	$1103515245, _wrandomseed, %eax
	movl	$32766, %edx
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	shrl	$16, %eax
	andl	$32767, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	sall	$14, %eax
	cmpl	$268951535, %eax
	ja	L1477
L885:
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z10SpawnShrapss
	movl	%esi, 60(%esp)
	movl	48(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	52(%esp), %ebp
	.cfi_restore 5
	movl	40(%esp), %ebx
	movl	44(%esp), %esi
	addl	$56, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z10SetSuicides
L1432:
	.cfi_restore_state
	cmpw	$2148, %ax
	jne	L899
	movl	$3, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	%eax, %ecx
	movl	$1431655766, %eax
	imull	%ecx
	sarl	$31, %ecx
	subl	%ecx, %edx
	movl	%edx, 24(%esp)
L1016:
	movl	144(%ebx), %eax
	movl	52(%ebx), %edx
	movl	%eax, 28(%esp)
	testl	%edx, %edx
	jne	L946
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L1017
	movl	36(%esp), %eax
	movl	24(%esp), %esi
	movswl	28(%eax), %eax
	movl	%ecx, (%esp)
	movl	%eax, 8(%esp)
	movl	%esi, %eax
	shrl	$31, %eax
	addl	%esi, %eax
	sarl	%eax
	cwtl
	movl	%eax, 4(%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %esi
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	jne	L1478
L1018:
	movl	144(%ebx), %edx
	cmpw	$0, 23258(%edx)
	jne	L1479
L1019:
	xorl	%ecx, %ecx
	movw	%cx, 82(%edi)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L943:
	cmpw	$5011, %ax
	jne	L899
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$1023, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L992
	sall	$14, %eax
	movl	$-2147450879, %edx
	mull	%edx
	shrl	$19, %edx
L992:
	sarl	$8, %edx
	movl	$-3, %eax
	subl	%edx, %eax
	movl	%eax, 24(%esp)
L993:
	movl	144(%ebx), %eax
	movl	52(%ebx), %ecx
	movl	%eax, 28(%esp)
	testl	%ecx, %ecx
	jne	L946
	movzwl	184(%ebx), %edi
	testl	%eax, %eax
	je	L994
	cmpb	$3, 24110(%eax)
	jne	L995
	movl	24(%esp), %eax
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movl	%eax, 24(%esp)
L995:
	movl	%edi, %eax
	subw	$3, %ax
	js	L996
	movw	%ax, 184(%ebx)
L997:
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z10SpawnBloodsssiii
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1440:
	cmpw	$359, %ax
	jle	L899
	movl	$46, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	%eax, 24(%esp)
	jmp	L993
L1067:
	movl	$9, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	52(%ebx), %edx
	movl	%eax, 24(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	testl	%edx, %edx
	jne	L946
	testl	%eax, %eax
	je	L1068
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	jne	L1480
L1069:
	addw	$40, 180(%edi)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1465:
	movl	24(%esp), %eax
	movl	$-100, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L888
L1085:
	testl	%ecx, %ecx
	jne	L1088
	movl	144(%ebx), %edx
	testl	%edx, %edx
	je	L1092
L1089:
	movl	36(%esp), %esi
	movl	4(%edx), %eax
	movl	(%edx), %ecx
	subl	4(%esi), %eax
	subl	(%esi), %ecx
	movl	%eax, %edx
	call	@getangle@8
	movswl	24(%esp), %edx
	cwtl
	movl	%edx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	144(%ebx), %eax
	movl	%edx, 28(%esp)
	movl	%eax, (%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %esi
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	movl	28(%esp), %edx
	testb	%al, %al
	jne	L1481
L1096:
	xorl	%ebp, %ebp
	movw	%bp, 82(%edi)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1441:
	movl	$13, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	%eax, 24(%esp)
	jmp	L948
L889:
	movl	$3, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	%eax, 24(%esp)
	jmp	L1016
L1449:
	movl	$29, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9GetDamagesss
	movl	%eax, 24(%esp)
	jmp	L1075
L1076:
	movl	144(%ebx), %eax
	testl	%eax, %eax
	je	L1079
	movl	36(%esp), %edi
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%edi), %edx
	subl	(%edi), %ecx
	call	@getangle@8
	movswl	24(%esp), %esi
	cwtl
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 28(%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	je	L946
	movl	28(%esp), %eax
	movl	%esi, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1063:
	movl	144(%ebx), %eax
	testl	%eax, %eax
	je	L1066
	movl	36(%esp), %edi
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%edi), %edx
	subl	(%edi), %ecx
	call	@getangle@8
	movswl	24(%esp), %esi
	cwtl
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 28(%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	je	L946
	movl	28(%esp), %eax
	movl	%esi, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1112:
	movl	144(%ebx), %eax
	testl	%eax, %eax
	je	L1115
	movl	36(%esp), %edi
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%edi), %edx
	subl	(%edi), %ecx
	call	@getangle@8
	movswl	24(%esp), %esi
	cwtl
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 28(%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	je	L946
	movl	28(%esp), %eax
	movl	%esi, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1081:
	movl	144(%ebx), %eax
	testl	%eax, %eax
	je	L1084
	movl	36(%esp), %edi
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%edi), %edx
	subl	(%edi), %ecx
	call	@getangle@8
	movswl	24(%esp), %esi
	cwtl
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 28(%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	je	L946
	movl	28(%esp), %eax
	movl	%esi, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1070:
	movl	144(%ebx), %eax
	testl	%eax, %eax
	je	L1073
	movl	36(%esp), %edi
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%edi), %edx
	subl	(%edi), %ecx
	call	@getangle@8
	movswl	24(%esp), %esi
	cwtl
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 28(%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	je	L946
	movl	28(%esp), %eax
	movl	%esi, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1103:
	movl	144(%ebx), %eax
	testl	%eax, %eax
	je	L1106
	movl	36(%esp), %edi
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%edi), %edx
	subl	(%edi), %ecx
	call	@getangle@8
	movswl	24(%esp), %edi
	cwtl
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %esi
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	jne	L1482
L1107:
	movl	%ebp, (%esp)
	call	__Z10SetSuicides
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1059:
	movl	144(%ebx), %eax
	testl	%eax, %eax
	je	L1062
	movl	36(%esp), %edi
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%edi), %edx
	subl	(%edi), %ecx
	call	@getangle@8
	movswl	24(%esp), %esi
	cwtl
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 28(%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	je	L946
	movl	28(%esp), %eax
	movl	%esi, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1041:
	movl	144(%ebx), %ecx
	testl	%ecx, %ecx
	je	L1044
	movl	%ebp, 4(%esp)
	movl	%ecx, (%esp)
	movl	%ecx, 28(%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	jne	L1483
L1045:
	movl	144(%ebx), %edx
	cmpw	$0, 23258(%edx)
	jne	L1484
L1047:
	xorl	%ecx, %ecx
	movw	%cx, 82(%edi)
	movl	%ebp, (%esp)
	call	__Z14SpawnTracerExps
	movl	%ebp, (%esp)
	call	__Z10SetSuicides
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1433:
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L1025
	movl	36(%esp), %eax
	movswl	24(%esp), %edx
	movswl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 36(%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %ecx
	movl	%ebp, 4(%esp)
	movl	%ecx, (%esp)
	movl	%ecx, 28(%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	movl	36(%esp), %edx
	testb	%al, %al
	jne	L1485
L1026:
	movl	144(%ebx), %edx
	cmpw	$0, 23258(%edx)
	jne	L1486
L1027:
	movzwl	82(%ebx), %eax
	cmpw	$4792, %ax
	je	L1028
	jg	L1029
	cmpw	$2540, %ax
	je	L1028
	cmpw	$4768, %ax
	je	L1028
	cmpw	$623, %ax
	je	L1028
L1030:
	imull	$21, _randomseed, %eax
	addl	$1, _krandcount
	addl	$1, %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1031
	sall	$14, %eax
	cmpl	$1021112474, %eax
	ja	L1031
L1028:
	xorl	%ebp, %ebp
	movw	%bp, 82(%edi)
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1060:
	movzwl	3204(%ecx), %edx
	cmpw	$-9999, %dx
	je	L1061
	movl	176(%ecx), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	movl	24(%esp), %edi
	imull	$-1171354717, %eax, %eax
	addl	%edi, %edx
	movl	_User(,%eax,4), %eax
	movw	%dx, 3204(%ecx)
	testw	%di, %di
	jns	L1419
	movzwl	24(%esp), %edx
	negl	%edx
	movw	%dx, 88(%eax)
L1419:
	movl	52(%ebx), %ecx
L1061:
	movl	%ecx, (%esp)
	call	__Z12SopCheckKillP19SECTOR_OBJECTstruct
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1064:
	movzwl	3204(%ecx), %edx
	cmpw	$-9999, %dx
	je	L1065
	movl	176(%ecx), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	movl	24(%esp), %edi
	imull	$-1171354717, %eax, %eax
	addl	%edi, %edx
	movl	_User(,%eax,4), %eax
	movw	%dx, 3204(%ecx)
	testw	%di, %di
	jns	L1420
	movzwl	24(%esp), %edx
	negl	%edx
	movw	%dx, 88(%eax)
L1420:
	movl	52(%ebx), %ecx
L1065:
	movl	%ecx, (%esp)
	call	__Z12SopCheckKillP19SECTOR_OBJECTstruct
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1093:
	movzwl	3204(%ecx), %edx
	cmpw	$-9999, %dx
	je	L1094
	movl	176(%ecx), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	movl	24(%esp), %edi
	imull	$-1171354717, %eax, %eax
	addl	%edi, %edx
	movl	_User(,%eax,4), %eax
	movw	%dx, 3204(%ecx)
	testw	%di, %di
	jns	L1424
	movzwl	24(%esp), %edx
	negl	%edx
	movw	%dx, 88(%eax)
L1424:
	movl	52(%ebx), %ecx
L1094:
	movl	%ecx, (%esp)
	call	__Z12SopCheckKillP19SECTOR_OBJECTstruct
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1082:
	movzwl	3204(%ecx), %edx
	cmpw	$-9999, %dx
	je	L1083
	movl	176(%ecx), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	movl	24(%esp), %edi
	imull	$-1171354717, %eax, %eax
	addl	%edi, %edx
	movl	_User(,%eax,4), %eax
	movw	%dx, 3204(%ecx)
	testw	%di, %di
	jns	L1423
	movzwl	24(%esp), %edx
	negl	%edx
	movw	%dx, 88(%eax)
L1423:
	movl	52(%ebx), %ecx
L1083:
	movl	%ecx, (%esp)
	call	__Z12SopCheckKillP19SECTOR_OBJECTstruct
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1104:
	movzwl	3204(%ecx), %edx
	cmpw	$-9999, %dx
	je	L1105
	movl	176(%ecx), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	movl	24(%esp), %edi
	imull	$-1171354717, %eax, %eax
	addl	%edi, %edx
	movl	_User(,%eax,4), %eax
	movw	%dx, 3204(%ecx)
	testw	%di, %di
	jns	L1426
	movzwl	24(%esp), %edx
	negl	%edx
	movw	%dx, 88(%eax)
L1426:
	movl	52(%ebx), %ecx
L1105:
	movl	%ecx, (%esp)
	call	__Z12SopCheckKillP19SECTOR_OBJECTstruct
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1113:
	movzwl	3204(%ecx), %edx
	cmpw	$-9999, %dx
	je	L1114
	movl	176(%ecx), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	movl	24(%esp), %edi
	imull	$-1171354717, %eax, %eax
	addl	%edi, %edx
	movl	_User(,%eax,4), %eax
	movw	%dx, 3204(%ecx)
	testw	%di, %di
	jns	L1427
	movzwl	24(%esp), %edx
	negl	%edx
	movw	%dx, 88(%eax)
L1427:
	movl	52(%ebx), %ecx
L1114:
	movl	%ecx, (%esp)
	call	__Z12SopCheckKillP19SECTOR_OBJECTstruct
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1071:
	movzwl	3204(%ecx), %edx
	cmpw	$-9999, %dx
	je	L1072
	movl	176(%ecx), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	movl	24(%esp), %edi
	imull	$-1171354717, %eax, %eax
	addl	%edi, %edx
	movl	_User(,%eax,4), %eax
	movw	%dx, 3204(%ecx)
	testw	%di, %di
	jns	L1421
	movzwl	24(%esp), %edx
	negl	%edx
	movw	%dx, 88(%eax)
L1421:
	movl	52(%ebx), %ecx
L1072:
	movl	%ecx, (%esp)
	call	__Z12SopCheckKillP19SECTOR_OBJECTstruct
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1452:
	movzwl	3204(%ecx), %edx
	cmpw	$-9999, %dx
	je	L1043
	movl	176(%ecx), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	movl	24(%esp), %edi
	imull	$-1171354717, %eax, %eax
	addl	%edi, %edx
	movl	_User(,%eax,4), %eax
	movw	%dx, 3204(%ecx)
	movl	%edi, %edx
	negl	%edx
	movw	%dx, 88(%eax)
	movl	52(%ebx), %ecx
L1043:
	movl	%ecx, (%esp)
	call	__Z12SopCheckKillP19SECTOR_OBJECTstruct
	jmp	L1042
L1077:
	movzwl	3204(%ecx), %edx
	cmpw	$-9999, %dx
	je	L1078
	movl	176(%ecx), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	movl	24(%esp), %edi
	imull	$-1171354717, %eax, %eax
	addl	%edi, %edx
	movl	_User(,%eax,4), %eax
	movw	%dx, 3204(%ecx)
	testw	%di, %di
	jns	L1422
	movzwl	24(%esp), %edx
	negl	%edx
	movw	%dx, 88(%eax)
L1422:
	movl	52(%ebx), %ecx
L1078:
	movl	%ecx, (%esp)
	call	__Z12SopCheckKillP19SECTOR_OBJECTstruct
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L949:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %edx
	movl	$6, %eax
	movzwl	%dx, %edx
	movl	%edx, _randomseed
	cmpl	$65535, %edx
	je	L952
	movl	%edx, %eax
	movl	$153389348, %ecx
	xorl	%edx, %edx
	sall	$14, %eax
	divl	%ecx
L952:
	movl	24(%esp), %edi
	leal	-2(%edi,%eax), %eax
	movl	%eax, 24(%esp)
	jmp	L951
L1106:
	movl	_User(,%edi,4), %eax
	cmpw	$1210, 82(%eax)
	je	L1418
	movswl	24(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z11ActorHealthss
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	jmp	L1107
L1079:
	movl	36(%esp), %eax
	movswl	30(%eax), %eax
	testw	%ax, %ax
	js	L1080
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L1080
	cmpw	$1210, 82(%eax)
	je	L1418
L1080:
	movswl	24(%esp), %edi
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	32(%esp), %eax
	movl	36(%esp), %ecx
	movl	4(%eax), %edx
	subl	4(%ecx), %edx
	movl	(%eax), %ecx
	movl	36(%esp), %eax
	subl	(%eax), %ecx
	call	@getangle@8
	movl	%edi, 4(%esp)
	cwtl
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	__Z16ActorDamageSlidesss
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1436:
	movzwl	82(%ebx), %eax
	cmpw	$820, %ax
	je	L1148
	cmpw	$817, %ax
	je	L1148
	movl	%esi, (%esp)
	cmpw	$1580, %ax
	je	L1487
	call	__Z15ActorPainPlasmas
	jmp	L1127
L1029:
	cmpw	$4840, %ax
	je	L1028
	cmpw	$5426, %ax
	je	L1028
	cmpw	$4816, %ax
	jne	L1030
	jmp	L1028
L1451:
	movl	144(%ebx), %edx
	testl	%edx, %edx
	jne	L1089
	movzwl	82(%eax), %eax
	cmpw	$1210, %ax
	je	L1418
	cmpw	$1300, %ax
	je	L1418
L1092:
	movzwl	24(%esp), %eax
	movw	%ax, 28(%esp)
	cmpw	$2540, 82(%ebx)
	je	L1488
	movswl	24(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z11ActorHealthss
L1099:
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	32(%esp), %eax
	movl	36(%esp), %ecx
	movl	4(%eax), %edx
	subl	4(%ecx), %edx
	movl	(%eax), %ecx
	movl	36(%esp), %eax
	subl	(%eax), %ecx
	call	@getangle@8
	movl	%esi, (%esp)
	cwtl
	movl	%eax, 8(%esp)
	movswl	28(%esp), %eax
	movl	%eax, 4(%esp)
	call	__Z16ActorDamageSlidesss
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	jmp	L1096
L1448:
	movl	%ebx, 28(%esp)
	xorl	%ebx, %ebx
L1008:
	movl	$0, 20(%esp)
	addl	$1, %ebx
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z10SpawnBloodsssiii
	cmpw	$4, %bx
	jne	L1008
	movl	28(%esp), %ebx
	jmp	L1141
L1456:
	call	__Z15SpawnNuclearExps
	jmp	L1039
L1460:
	call	__Z15SpawnNuclearExps
	jmp	L1056
L1459:
	movl	28(%esp), %eax
	movswl	24(%esp), %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L1054
L1025:
	movswl	24(%esp), %edx
	movl	%esi, (%esp)
	movl	%edx, 4(%esp)
	movl	%edx, 28(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15ActorStdMissiless
	movl	36(%esp), %eax
	movl	28(%esp), %edx
	movswl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	__Z16ActorDamageSlidesss
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	jmp	L1027
L1447:
	movl	%eax, %edx
	leal	4(%eax), %ecx
	leal	8(%eax), %eax
	movl	$13, 4(%esp)
	movl	%eax, (%esp)
	movl	$295, %eax
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1005
L1446:
	movl	28(%esp), %eax
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L1003
L1084:
	movswl	24(%esp), %edi
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	32(%esp), %eax
	movl	36(%esp), %ecx
	movl	4(%eax), %edx
	subl	4(%ecx), %edx
	movl	(%eax), %ecx
	movl	36(%esp), %eax
	subl	(%eax), %ecx
	call	@getangle@8
	movl	%edi, 4(%esp)
	cwtl
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	__Z16ActorDamageSlidesss
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1119:
	movswl	24(%esp), %edi
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15ActorStdMissiless
	movl	36(%esp), %eax
	movswl	28(%eax), %eax
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	__Z16ActorDamageSlidesss
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	jmp	L1121
L1438:
	movl	%edi, %eax
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L970
L1473:
	movl	%edi, %eax
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	testl	%eax, %eax
	je	L975
	movl	144(%ebx), %edx
	movl	$12, 4(%esp)
	leal	8(%edx), %eax
	leal	4(%edx), %ecx
	movl	%eax, (%esp)
	movl	$100, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%ebp, (%esp)
	call	__Z16DoRipperRipHearts
	jmp	L975
L1463:
	movl	%edi, %eax
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	testl	%eax, %eax
	je	L980
	movl	144(%ebx), %edx
	movl	$12, 4(%esp)
	leal	8(%edx), %eax
	leal	4(%edx), %ecx
	movl	%eax, (%esp)
	movl	$100, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%ebp, (%esp)
	call	__Z17DoRipper2RipHearts
	jmp	L980
L1475:
	movswl	24(%esp), %edx
	movl	%edi, %eax
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L990
L1073:
	movswl	24(%esp), %edi
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	32(%esp), %eax
	movl	36(%esp), %ecx
	movl	4(%eax), %edx
	subl	4(%ecx), %edx
	movl	(%eax), %ecx
	movl	36(%esp), %eax
	subl	(%eax), %ecx
	call	@getangle@8
	movl	%edi, 4(%esp)
	cwtl
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	__Z16ActorDamageSlidesss
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1066:
	movswl	24(%esp), %edi
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	32(%esp), %eax
	movl	36(%esp), %ecx
	movl	4(%eax), %edx
	subl	4(%ecx), %edx
	movl	(%eax), %ecx
	movl	36(%esp), %eax
	subl	(%eax), %ecx
	call	@getangle@8
	movl	%edi, 4(%esp)
	cwtl
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	__Z16ActorDamageSlidesss
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1032:
	movswl	24(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15ActorStdMissiless
	jmp	L1033
L1455:
	movl	28(%esp), %eax
	movswl	24(%esp), %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L1037
L1057:
	movswl	24(%esp), %edi
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	32(%esp), %eax
	movl	36(%esp), %ecx
	movl	4(%eax), %edx
	subl	4(%ecx), %edx
	movl	(%eax), %ecx
	movl	36(%esp), %eax
	subl	(%eax), %ecx
	call	@getangle@8
	movl	%edi, 4(%esp)
	cwtl
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	__Z16ActorDamageSlidesss
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	jmp	L1058
L1116:
	movswl	24(%esp), %edi
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15ActorStdMissiless
	movl	36(%esp), %eax
	movswl	28(%eax), %eax
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	__Z16ActorDamageSlidesss
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	jmp	L1117
L1115:
	movswl	24(%esp), %edi
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	32(%esp), %eax
	movl	36(%esp), %ecx
	movl	4(%eax), %edx
	subl	4(%ecx), %edx
	movl	(%eax), %ecx
	movl	36(%esp), %eax
	subl	(%eax), %ecx
	call	@getangle@8
	movl	%edi, 4(%esp)
	cwtl
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	__Z16ActorDamageSlidesss
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1009:
	movswl	24(%esp), %edx
	movl	%esi, (%esp)
	movl	%edx, 4(%esp)
	movl	%edx, 28(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15ActorStdMissiless
	movl	36(%esp), %eax
	movl	28(%esp), %edx
	movswl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	__Z16ActorDamageSlidesss
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	jmp	L1011
L1062:
	movswl	24(%esp), %edi
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	32(%esp), %eax
	movl	36(%esp), %ecx
	movl	4(%eax), %edx
	subl	4(%ecx), %edx
	movl	(%eax), %ecx
	movl	36(%esp), %eax
	subl	(%eax), %ecx
	call	@getangle@8
	movl	%edi, 4(%esp)
	cwtl
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	__Z16ActorDamageSlidesss
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1044:
	movl	36(%esp), %eax
	movswl	30(%eax), %eax
	testw	%ax, %ax
	js	L1050
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L1050
	cmpl	$0, 144(%eax)
	je	L1489
L1050:
	movswl	24(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15ActorStdMissiless
	movl	36(%esp), %ecx
	movswl	28(%ecx), %eax
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	movl	24(%esp), %eax
	sarl	%eax
	cwtl
	movl	%eax, 4(%esp)
	call	__Z16ActorDamageSlidesss
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	jmp	L1047
L1443:
	leal	8(%edi), %eax
	movl	$13, 4(%esp)
	leal	4(%edi), %ecx
	movl	%edi, %edx
	movl	%eax, (%esp)
	movl	$295, %eax
	call	__Z9PlaySoundiPiS_S_i
	jmp	L958
L1442:
	movl	%edi, %eax
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	movl	144(%ebx), %edi
	jmp	L956
L1110:
	movswl	24(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	jmp	L1111
L1124:
	movl	36(%esp), %eax
	movswl	30(%eax), %eax
	testw	%ax, %ax
	js	L1126
	movl	_User(,%eax,4), %eax
	cmpw	$1210, 82(%eax)
	je	L1418
L1126:
	movswl	24(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	jmp	L1125
L1470:
	movl	%edi, %eax
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	testl	%eax, %eax
	je	L985
	movl	%ebp, (%esp)
	call	__Z15DoBunnyRipHearts
	jmp	L985
L1471:
	movl	%edi, %eax
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L963
L1014:
	movswl	24(%esp), %edx
	movl	%esi, (%esp)
	movl	%edx, 4(%esp)
	movl	%edx, 28(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15ActorStdMissiless
	movl	36(%esp), %eax
	movl	28(%esp), %edx
	movswl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	__Z16ActorDamageSlidesss
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	jmp	L1015
L1017:
	movswl	24(%esp), %edx
	movl	%esi, (%esp)
	movl	%edx, 4(%esp)
	movl	%edx, 28(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15ActorStdMissiless
	movl	36(%esp), %eax
	movl	28(%esp), %edx
	movswl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	__Z16ActorDamageSlidesss
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	movzwl	82(%ebx), %eax
	cmpw	$4792, %ax
	je	L1019
	jg	L1020
	cmpw	$2540, %ax
	je	L1019
	cmpw	$4768, %ax
	je	L1019
	cmpw	$623, %ax
	je	L1019
L1021:
	imull	$21, _randomseed, %eax
	addl	$1, _krandcount
	addl	$1, %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1022
	movl	%eax, %edx
	sall	$14, %edx
	cmpl	$967426224, %edx
	ja	L1022
L1023:
	imull	$21, %eax, %eax
	addl	$1, _krandcount
	addl	$1, %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1024
	sall	$14, %eax
	cmpl	$967426224, %eax
	jbe	L1019
L1024:
	movl	%esi, %eax
	call	__Z14SpawnMidSplashs
	jmp	L1019
L1034:
	movswl	24(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15ActorStdMissiless
	jmp	L1035
L1012:
	movswl	24(%esp), %edx
	movl	%esi, (%esp)
	movl	%edx, 4(%esp)
	movl	%edx, 28(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15ActorStdMissiless
	movl	36(%esp), %eax
	movl	28(%esp), %edx
	movswl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	__Z16ActorDamageSlidesss
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	jmp	L1013
L1474:
	imull	$21, _randomseed, %eax
	addl	$1, _krandcount
	addl	$1, %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	sarl	$4, %eax
	andl	$1023, %eax
	cmpl	$799, %eax
	jle	L1490
L1133:
	movl	144(%ebx), %eax
	movswl	24(%esp), %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L1132
L994:
	subw	$6, %di
	js	L999
	movw	%di, 184(%ebx)
L1000:
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	jmp	L997
L1108:
	movswl	24(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	jmp	L1109
L1472:
	movl	%esi, %eax
	movl	%edi, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L1035
L1476:
	movl	28(%esp), %eax
	movswl	36(%esp), %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L1013
L1466:
	movl	%esi, %eax
	movl	%edi, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L1109
L1454:
	leal	8(%edx), %eax
	movl	$13, 4(%esp)
	leal	4(%edx), %ecx
	movl	%eax, (%esp)
	movl	$295, %eax
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1011
L1458:
	movl	%edi, %eax
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L1117
L1457:
	movl	%esi, %eax
	movl	%edi, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L1058
L1444:
	movl	%esi, %eax
	movl	%edi, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L1120
L1462:
	movl	%esi, %eax
	movl	%edi, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L1033
L1467:
	movl	28(%esp), %eax
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L1015
L1478:
	movswl	24(%esp), %edx
	movl	%esi, %eax
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L1018
L1479:
	leal	8(%edx), %eax
	movl	$13, 4(%esp)
	leal	4(%edx), %ecx
	movl	%eax, (%esp)
	movl	$295, %eax
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1019
L1469:
	movl	%esi, %eax
	movswl	%di, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L1111
L1468:
	movl	28(%esp), %ecx
	movl	$13, 8(%esp)
	movl	$477, %edx
	leal	8(%ecx), %eax
	movl	%ecx, 12(%esp)
	movl	%eax, 4(%esp)
	leal	4(%ecx), %eax
	movl	%eax, (%esp)
	movl	$7294, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.0.isra.0
	movzwl	24(%esp), %eax
	leal	-1000(%eax), %edx
	movl	144(%ebx), %eax
	movswl	%dx, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L1125
L1486:
	leal	8(%edx), %eax
	movl	$13, 4(%esp)
	leal	4(%edx), %ecx
	movl	%eax, (%esp)
	movl	$295, %eax
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1027
L1485:
	movl	28(%esp), %eax
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L1026
L1445:
	leal	8(%edx), %eax
	movl	$13, 4(%esp)
	leal	4(%edx), %ecx
	movl	%eax, (%esp)
	movl	$295, %eax
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1121
L1453:
	movl	28(%esp), %eax
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L1010
L1484:
	leal	8(%edx), %eax
	movl	$13, 4(%esp)
	leal	4(%edx), %ecx
	movl	%eax, (%esp)
	movl	$295, %eax
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1047
L1483:
	movl	28(%esp), %eax
	movswl	24(%esp), %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L1045
L1001:
	movswl	24(%esp), %edx
	movl	%esi, (%esp)
	movl	%edx, 4(%esp)
	movl	%edx, 28(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15ActorStdMissiless
	movl	36(%esp), %eax
	movl	28(%esp), %edx
	movswl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	__Z16ActorDamageSlidesss
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	jmp	L1005
L977:
	movswl	24(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	jmp	L980
L987:
	movswl	24(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	jmp	L990
L1036:
	movswl	24(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15ActorStdMissiless
	jmp	L1037
L982:
	movswl	24(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	jmp	L985
L1481:
	movl	%esi, %eax
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L1096
L996:
	movw	$10, 184(%ebx)
	movl	36(%esp), %edi
	movl	28(%esp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%edi), %edx
	subl	(%edi), %ecx
	call	@getangle@8
	movswl	24(%esp), %edx
	cwtl
	movl	%edx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	144(%ebx), %eax
	movl	%edx, 28(%esp)
	movl	%eax, (%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%ebx), %edi
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	movl	28(%esp), %edx
	testb	%al, %al
	je	L997
	movl	%edi, %eax
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L997
L1131:
	movswl	24(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15ActorStdMissiless
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	jmp	L1132
L1148:
	movswl	24(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z11ActorHealthss
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15ActorStdMissiless
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	movl	%ebp, (%esp)
	call	__Z10SetSuicides
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L972:
	movswl	24(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	jmp	L975
L1122:
	movswl	24(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z11ActorHealthss
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L960:
	movswl	24(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	jmp	L963
L965:
	movswl	24(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1053:
	movswl	24(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15ActorStdMissiless
	jmp	L1054
L967:
	movswl	24(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	jmp	L970
L1482:
	movl	%esi, %eax
	movl	%edi, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L1107
L954:
	movswl	24(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	jmp	L958
L1477:
	imull	$24124, _myconnectindex, %eax
	movswl	24(%esp), %ebx
	imull	$24124, %ebx, %ebx
	cmpl	%eax, %ebx
	jne	L885
	movl	$33, %eax
	addl	$_Player, %ebx
	call	__Z11RandomRangei
	movl	%ebx, 12(%esp)
	movl	%ebx, %ecx
	movl	%eax, %edx
	leal	4(%ebx), %eax
	movl	$9, 8(%esp)
	movl	%eax, 4(%esp)
	movl	_TauntAIVocs(,%edx,4), %edx
	movl	%eax, (%esp)
	movl	$5986, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.0.isra.0
	jmp	L885
L1480:
	movl	28(%esp), %eax
	movswl	24(%esp), %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	%ebp, 4(%esp)
	movl	144(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	testl	%eax, %eax
	je	L1069
	addw	$80, 180(%edi)
	jmp	L1069
L1020:
	cmpw	$4840, %ax
	je	L1019
	cmpw	$5426, %ax
	je	L1019
	cmpw	$4816, %ax
	jne	L1021
	jmp	L1019
L1068:
	movswl	24(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	movl	%eax, 28(%esp)
	call	__Z11ActorHealthss
	movl	%esi, (%esp)
	call	__Z9ActorPains
	movl	32(%esp), %ecx
	movl	36(%esp), %eax
	movl	4(%ecx), %edx
	movl	(%ecx), %ecx
	subl	4(%eax), %edx
	subl	(%eax), %ecx
	call	@getangle@8
	movl	%esi, (%esp)
	cwtl
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	call	__Z16ActorDamageSlidesss
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16ActorChooseDeathss
	jmp	L1069
L1488:
	movl	$-500, 4(%esp)
	movl	%esi, (%esp)
	call	__Z11ActorHealthss
	jmp	L1099
L1031:
	movl	%esi, %eax
	call	__Z14SpawnMidSplashs
	jmp	L1028
L1487:
	call	__Z12DoRipperGrows
	movl	144(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L946
L1490:
	movl	32(%esp), %ecx
	movl	$44, %esi
	xorl	%edx, %edx
	leal	8(%ecx), %edi
	addl	$4, %ecx
	movl	%edi, %eax
	subl	_sprite, %eax
	divl	%esi
	xorl	%edx, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	%ecx, %eax
	subl	_sprite, %eax
	divl	%esi
	xorl	%edx, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	32(%esp), %eax
	subl	_sprite, %eax
	divl	%esi
	movl	28(%esp), %esi
	movl	$495, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	$7363, %eax
	movl	%ecx, (%esp)
	movl	32(%esp), %ecx
	movl	%esi, 12(%esp)
	movl	$9, 8(%esp)
	movl	%edi, 4(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.0.isra.0
	jmp	L1133
L999:
	movw	$10, 184(%ebx)
	movswl	24(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z11ActorHealthss
	jmp	L1000
L1022:
	movl	%esi, %eax
	movl	$105, %ecx
	xorl	%edx, %edx
	call	__Z14InitBloodSprayshs.isra.0
	movl	_randomseed, %eax
	jmp	L1023
L1489:
	movzwl	82(%ebx), %eax
	cmpw	$5426, %ax
	sete	%dl
	cmpw	$1300, %ax
	sete	%cl
	orb	%cl, %dl
	jne	L1147
	cmpw	$1210, %ax
	jne	L1050
L1147:
	movl	24(%esp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, 24(%esp)
	jmp	L1050
	.cfi_endproc
LFE47:
	.p2align 4
	.globl	__Z7DoVomits
	.def	__Z7DoVomits;	.scl	2;	.type	32;	.endef
__Z7DoVomits:
LFB48:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$-1171354717, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movswl	28(%esp), %esi
	movl	_User(,%esi,4), %ebx
	imull	$44, %esi, %edx
	movzwl	176(%ebx), %eax
	addw	$180, %ax
	andw	$2047, %ax
	movw	%ax, 176(%ebx)
	addw	$512, %ax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	leal	(%eax,%eax,2), %ecx
	movl	_sprite, %eax
	sarl	$12, %ecx
	addl	248(%ebx), %ecx
	leal	(%eax,%edx), %edi
	leal	20(%edx), %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%edi), %edx
	subl	_sprite, %edx
	movb	%cl, 20(%edi)
	movswl	176(%ebx), %eax
	movswl	_sintable(%eax,%eax), %eax
	leal	(%eax,%eax,2), %ecx
	movl	%edx, %eax
	mull	%ebp
	sarl	$12, %ecx
	addl	252(%ebx), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%cl, 21(%edi)
	movl	68(%ebx), %eax
	testb	$32, %al
	jne	L1507
	testb	$64, %al
	je	L1494
	movl	%esi, (%esp)
	call	__Z6DoFalls
	movl	%esi, (%esp)
	call	__Z6DoFalls
	movl	%esi, (%esp)
	call	__Z11DoShrapMoves
L1493:
	movl	264(%ebx), %eax
	movl	%eax, %edx
	andl	$114688, %edx
	cmpl	$49152, %edx
	je	L1508
L1496:
	addl	$8, %esp
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
L1494:
	.cfi_restore_state
	movl	_User(,%esi,4), %eax
	testl	%eax, %eax
	je	L1495
	movl	$0, 76(%eax)
	movl	$_s_VomitSplash, 24(%eax)
	movl	$_s_VomitSplash, 16(%eax)
	movswl	_s_VomitSplash, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L1495
	andl	$63, %eax
	movb	%al, 3(%edx)
L1495:
	movl	%esi, (%esp)
	call	__Z17DoFindGroundPoints
	movl	%esi, %eax
	call	__Z18MissileWaterAdjusts.isra.0
	leal	8(%edi), %edx
	movl	$-1171354717, %eax
	movl	108(%ebx), %ecx
	subl	_sprite, %edx
	mull	%edx
	movl	$60, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, 8(%edi)
	movw	%ax, 216(%ebx)
	movzbl	20(%edi), %eax
	movl	%eax, 248(%ebx)
	movzbl	21(%edi), %eax
	movl	%eax, 252(%ebx)
	addl	$8, %esp
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
L1507:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z6DoJumps
	movl	%esi, (%esp)
	call	__Z6DoJumps
	movl	%esi, (%esp)
	call	__Z11DoShrapMoves
	jmp	L1493
	.p2align 4,,10
	.p2align 3
L1508:
	andl	$16383, %eax
	imull	$44, %eax, %edx
	addl	_sprite, %edx
	testb	$8, 43(%edx)
	je	L1496
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	__Z8DoDamagess
	jmp	L1496
	.cfi_endproc
LFE48:
	.p2align 4
	.globl	__Z14VehicleMoveHits
	.def	__Z14VehicleMoveHits;	.scl	2;	.type	32;	.endef
__Z14VehicleMoveHits:
LFB49:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movswl	32(%esp), %ecx
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	movl	_User(,%ecx,4), %edx
	movl	264(%edx), %eax
	testl	%eax, %eax
	je	L1509
	movl	%eax, %ebx
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	movl	_sprite, %edi
	andl	$114688, %ebx
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	movl	52(%edx), %ebp
	cmpl	$32768, %ebx
	je	L1511
	cmpl	$49152, %ebx
	je	L1512
	cmpl	$16384, %ebx
	movl	20(%esp), %edi
	.cfi_restore 7
	movl	24(%esp), %ebp
	.cfi_restore 5
	sete	%bl
L1509:
	movl	%ebx, %eax
	movl	12(%esp), %ebx
	addl	$28, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1511:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	andl	$16383, %eax
	sall	$5, %eax
	addl	_wall, %eax
	testb	$64, 30(%eax)
	jne	L1516
L1514:
	movl	$1, %ebx
	movl	20(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	24(%esp), %ebp
	.cfi_restore 5
	movl	%ebx, %eax
	movl	12(%esp), %ebx
	addl	$28, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1512:
	.cfi_restore_state
	movl	%eax, %ebx
	andl	$16383, %eax
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	andw	$16383, %bx
	movw	%bx, 10(%esp)
	imull	$44, %eax, %ebx
	leal	(%edi,%ebx), %esi
	movzwl	42(%edi,%ebx), %ebx
	testb	$32, %bh
	jne	L1531
	andb	$8, %bh
	je	L1515
	movl	172(%ebp), %edx
	movzwl	10(%esp), %esi
	cmpw	30(%edx), %si
	jne	L1532
L1530:
	movl	16(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L1514
	.p2align 4,,10
	.p2align 3
L1515:
	.cfi_restore_state
	cmpw	$8, 26(%esi)
	jne	L1530
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__Z8DoDamagess
	movl	16(%esp), %esi
	.cfi_restore 6
	jmp	L1514
	.p2align 4,,10
	.p2align 3
L1516:
	call	__Z24DetectSectorObjectByWallP10walltypev7
	testl	%eax, %eax
	je	L1514
	movzwl	3204(%eax), %ecx
	cmpw	$-9999, %cx
	je	L1517
	movl	176(%eax), %edx
	movzwl	3206(%ebp), %ebx
	subl	%edi, %edx
	addl	%ebx, %ecx
	sarl	$2, %edx
	imull	$-1171354717, %edx, %edx
	movl	_User(,%edx,4), %edx
	movw	%cx, 3204(%eax)
	testw	%bx, %bx
	jns	L1518
	negl	%ebx
	movw	%bx, 88(%edx)
	movzwl	3204(%eax), %ecx
L1518:
	testw	%cx, %cx
	jle	L1517
	movswl	3574(%eax), %eax
	movl	%eax, (%esp)
	call	__Z21DoSpawnSpotsForDamages
	jmp	L1514
	.p2align 4,,10
	.p2align 3
L1532:
	.cfi_offset 6, -16
	subl	%edi, %edx
	movl	%eax, (%esp)
	sarl	$2, %edx
	imull	$-1171354717, %edx, %edx
	movswl	%dx, %edx
	movl	%edx, 4(%esp)
	call	__Z8DoDamagess
	movl	16(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L1514
	.p2align 4,,10
	.p2align 3
L1531:
	.cfi_restore_state
	movswl	82(%edx), %edx
	call	__Z14HitBreakSpritess
	movl	16(%esp), %esi
	.cfi_restore 6
	jmp	L1514
	.p2align 4,,10
	.p2align 3
L1517:
	movl	%eax, (%esp)
	call	__Z12SopCheckKillP19SECTOR_OBJECTstruct
	jmp	L1514
	.cfi_endproc
LFE49:
	.p2align 4
	.globl	__Z13WeaponMoveHits
	.def	__Z13WeaponMoveHits;	.scl	2;	.type	32;	.endef
__Z13WeaponMoveHits:
LFB50:
	.cfi_startproc
	subl	$72, %esp
	.cfi_def_cfa_offset 76
	movl	%esi, 60(%esp)
	.cfi_offset 6, -16
	movswl	76(%esp), %esi
	movl	%ebx, 56(%esp)
	.cfi_offset 3, -20
	movl	_User(,%esi,4), %ebx
	movl	264(%ebx), %eax
	testl	%eax, %eax
	je	L1540
	movl	%eax, %edx
	movl	%edi, 64(%esp)
	.cfi_offset 7, -12
	movl	140(%ebx), %edi
	andl	$114688, %edx
	cmpl	$49152, %edx
	je	L1536
	jg	L1537
	cmpl	$16384, %edx
	je	L1538
	cmpl	$32768, %edx
	jne	L1625
	andl	$16383, %eax
	movl	$0, 48(%esp)
	movw	%ax, 50(%esp)
	sall	$5, %eax
	addl	_wall, %eax
	movl	%ebp, 68(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	movl	$0, 36(%esp)
	movl	$0, 40(%esp)
	movl	$0, 44(%esp)
	movl	$0, 52(%esp)
	testb	$64, 30(%eax)
	jne	L1634
L1562:
	movswl	28(%edi), %eax
	cmpw	$307, 26(%ebp)
	je	L1635
	movl	%eax, %edx
	addl	$512, %eax
	movzwl	24(%edi), %ebp
	movswl	36(%edi), %ecx
	andl	$2047, %eax
	andl	$2047, %edx
	movswl	_sintable(%eax,%eax), %ebx
	movl	$-2, %eax
	movswl	_sintable(%edx,%edx), %edx
	movl	$1090519104, 24(%esp)
	movw	%ax, 48(%esp)
	movl	$-2, %eax
	movw	%ax, 52(%esp)
	leal	36(%esp), %eax
	movl	%eax, 20(%esp)
	movswl	%bp, %eax
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	_hitscan
	xorl	%eax, %eax
	cmpw	$0, 52(%esp)
	js	L1631
	movzwl	48(%esp), %eax
	testw	%ax, %ax
	js	L1563
	movswl	%ax, %ebx
	imull	$44, %ebx, %edi
	addl	_sprite, %edi
	cmpw	$257, 38(%edi)
	je	L1636
L1567:
	testb	$16, 12(%edi)
	je	L1563
	cmpw	$0, 38(%edi)
	jne	L1568
	cmpw	$0, 40(%edi)
	je	L1563
L1568:
	movl	%ebx, %eax
	call	__Z15ShootableSwitchs
L1563:
	movl	64(%esp), %edi
	.cfi_restore 7
	movl	68(%esp), %ebp
	.cfi_restore 5
	movl	$1, %eax
	movl	56(%esp), %ebx
	movl	60(%esp), %esi
	addl	$72, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1625:
	.cfi_def_cfa_offset 76
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	64(%esp), %edi
	.cfi_restore 7
L1540:
	xorl	%eax, %eax
L1533:
	movl	56(%esp), %ebx
	movl	60(%esp), %esi
	addl	$72, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1537:
	.cfi_def_cfa_offset 76
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpl	$65536, %edx
	jne	L1625
L1633:
	movl	%esi, (%esp)
	call	__Z10SetSuicides
L1543:
	movl	64(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	56(%esp), %ebx
	movl	$1, %eax
	movl	60(%esp), %esi
	addl	$72, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1538:
	.cfi_restore_state
	movl	108(%ebx), %ecx
	addl	104(%ebx), %ecx
	movl	_sector, %edx
	sarl	%ecx
	cmpl	8(%edi), %ecx
	jge	L1541
	movl	128(%ebx), %ecx
	testl	%ecx, %ecx
	je	L1542
	cmpw	$257, 38(%ecx)
	jne	L1543
	movl	%ecx, %eax
	subl	_sprite, %eax
	movl	$-1, 4(%esp)
	sarl	$2, %eax
	movl	%esi, (%esp)
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	%eax, 8(%esp)
	call	__Z15MissileHitMatchsss
	jmp	L1543
	.p2align 4,,10
	.p2align 3
L1536:
	movl	%eax, %ecx
	andl	$16383, %eax
	movl	%ebp, 68(%esp)
	.cfi_offset 5, -8
	imull	$44, %eax, %edx
	andw	$16383, %cx
	movl	%eax, 28(%esp)
	movl	%ecx, %ebp
	movl	_sprite, %ecx
	addl	%ecx, %edx
	movzwl	42(%edx), %eax
	testb	$32, %ah
	jne	L1637
	testb	$8, %ah
	je	L1553
	cmpw	30(%edi), %bp
	je	L1554
	cmpw	$2049, 82(%ebx)
	je	L1638
L1632:
	movl	28(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	__Z8DoDamagess
	movl	68(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1543
	.p2align 4,,10
	.p2align 3
L1553:
	.cfi_restore_state
	cmpw	$8, 26(%edx)
	je	L1632
L1554:
	cmpw	$257, 38(%edx)
	je	L1639
L1560:
	testb	$16, 12(%edx)
	je	L1629
	cmpw	$0, 38(%edx)
	jne	L1561
	cmpw	$0, 40(%edx)
	je	L1629
L1561:
	movl	28(%esp), %eax
	call	__Z15ShootableSwitchs
	movl	68(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1543
	.p2align 4,,10
	.p2align 3
L1629:
	.cfi_restore_state
	movl	68(%esp), %ebp
	.cfi_restore 5
	jmp	L1543
	.p2align 4,,10
	.p2align 3
L1541:
	movl	124(%ebx), %ecx
	andl	$4095, %eax
	movl	%eax, %ebx
	testl	%ecx, %ecx
	je	L1544
	cmpw	$257, 38(%ecx)
	jne	L1544
	subl	_sprite, %ecx
	movl	$-1, 4(%esp)
	sarl	$2, %ecx
	movl	%esi, (%esp)
	imull	$-1171354717, %ecx, %eax
	movl	%edx, 28(%esp)
	cwtl
	movl	%eax, 8(%esp)
	call	__Z15MissileHitMatchsss
	movl	28(%esp), %edx
	testb	%al, %al
	je	L1544
	movl	64(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L1533
	.p2align 4,,10
	.p2align 3
L1544:
	.cfi_restore_state
	leal	(%ebx,%ebx,4), %eax
	leal	(%edx,%eax,8), %ecx
	testb	$16, 39(%ecx)
	jne	L1640
L1545:
	testb	$1, 12(%ecx)
	je	L1543
	cmpw	$2356, 16(%ecx)
	je	L1543
	movl	8(%edi), %eax
	subl	4(%ecx), %eax
	movl	%eax, %edx
	movswl	14(%edi), %ecx
	negl	%edx
	cmovs	%eax, %edx
	movzbl	21(%edi), %eax
	movswl	_tilesiz+2(,%ecx,4), %ecx
	cmpb	$64, %al
	je	L1641
	imull	%ecx, %eax
	sall	$2, %eax
L1551:
	cmpl	%eax, %edx
	jge	L1543
	jmp	L1633
	.p2align 4,,10
	.p2align 3
L1542:
	andl	$4095, %eax
	movl	%eax, %ebx
	movl	_SectUser(,%eax,4), %eax
	testl	%eax, %eax
	je	L1544
	cmpw	$0, 10(%eax)
	jle	L1544
	movl	%esi, (%esp)
	call	__Z11SpawnSplashs
	jmp	L1543
	.p2align 4,,10
	.p2align 3
L1634:
	.cfi_offset 5, -8
	call	__Z24DetectSectorObjectByWallP10walltypev7
	testl	%eax, %eax
	je	L1562
	cmpw	$-999, 3204(%eax)
	je	L1563
	movl	%esi, 4(%esp)
	movl	176(%eax), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	%eax, (%esp)
	call	__Z8DoDamagess
	jmp	L1563
	.p2align 4,,10
	.p2align 3
L1639:
	movl	28(%esp), %eax
	movl	$-1, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 32(%esp)
	call	__Z15MissileHitMatchsss
	movl	32(%esp), %edx
	testb	%al, %al
	je	L1560
	.p2align 4
	.p2align 3
L1631:
	movl	64(%esp), %edi
	.cfi_restore 7
	movl	68(%esp), %ebp
	.cfi_restore 5
	jmp	L1533
	.p2align 4,,10
	.p2align 3
L1640:
	.cfi_offset 7, -12
	movl	$_SectorObject, %ebx
L1549:
	cmpl	$2147483647, 180(%ebx)
	je	L1546
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L1546
	movl	%ebx, %edx
	jmp	L1548
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1642:
	movl	4(%edx), %eax
	addl	$4, %edx
	testl	%eax, %eax
	je	L1546
L1548:
	cmpl	%ecx, %eax
	jne	L1642
	movl	%esi, 4(%esp)
	movl	176(%ebx), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	%eax, (%esp)
	call	__Z8DoDamagess
	jmp	L1543
	.p2align 4,,10
	.p2align 3
L1546:
	addl	$6028, %ebx
	cmpl	$_SectorObject+120560, %ebx
	jne	L1549
	jmp	L1545
	.p2align 4,,10
	.p2align 3
L1637:
	.cfi_offset 5, -8
	movswl	82(%ebx), %edx
	movl	28(%esp), %eax
	call	__Z14HitBreakSpritess
	movl	68(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1543
	.p2align 4,,10
	.p2align 3
L1635:
	.cfi_restore_state
	movswl	82(%ebx), %esi
	movl	4(%edi), %ecx
	movl	(%edi), %edx
	movl	%eax, 4(%esp)
	movl	%esi, 8(%esp)
	movl	8(%edi), %eax
	movl	%eax, (%esp)
	movl	%ebp, %eax
	call	__Z12HitBreakWallP10walltypev7iiiss.isra.0
	movl	$0, 264(%ebx)
	jmp	L1563
L1638:
	movl	28(%esp), %eax
	movl	_User(,%eax,4), %ebx
	movzwl	82(%ebx), %eax
	cmpw	$2540, %ax
	je	L1556
	jle	L1643
	cmpw	$4816, %ax
	je	L1558
	jg	L1559
	cmpw	$4768, %ax
	je	L1558
	cmpw	$4792, %ax
	jne	L1632
L1558:
	leal	8(%edi), %ebp
	movl	$-1171354717, %ebx
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	leal	4(%edi), %eax
	movl	%eax, 32(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	movl	%edi, %eax
	subl	%ecx, %eax
	movl	32(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebx
	movl	$3, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1632
L1641:
	.cfi_restore 5
	movl	%ecx, %eax
	sall	$8, %eax
	jmp	L1551
L1636:
	.cfi_offset 5, -8
	movl	%ebx, 8(%esp)
	movl	$-1, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15MissileHitMatchsss
	testb	%al, %al
	je	L1567
	jmp	L1631
L1556:
	leal	8(%edi), %ebp
	movl	$-1171354717, %eax
	movl	%ebp, %edx
	subl	%ecx, %edx
	mull	%edx
	leal	4(%edi), %eax
	movl	%eax, 32(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	subl	%ecx, %edx
	movl	32(%esp), %ecx
	mull	%edx
	movl	$416, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_sprite, %ecx
	movl	%ebp, %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	32(%esp), %edx
	subl	%ecx, %edx
	mull	%edx
	movl	%edi, %eax
	subl	%ecx, %eax
	movl	32(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$3, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	cmpw	$0, 216(%ebx)
	jg	L1632
	movw	$240, 216(%ebx)
	movl	28(%esp), %eax
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L1632
	xorl	%edx, %edx
	movl	$_s_TrashCanPain, 24(%eax)
	movl	%edx, 76(%eax)
	movl	$_s_TrashCanPain, 16(%eax)
	movswl	_s_TrashCanPain, %eax
	leal	(%eax,%eax,4), %edx
	movzbl	_picanm+3(%edx), %edx
	movl	%edx, %ecx
	shrb	$6, %cl
	je	L1632
	leal	(%eax,%eax,4), %eax
	andl	$63, %edx
	movb	%dl, _picanm+3(%eax)
	jmp	L1632
L1643:
	cmpw	$623, %ax
	jne	L1632
	jmp	L1558
L1559:
	cmpw	$4840, %ax
	je	L1558
	cmpw	$5426, %ax
	jne	L1632
	jmp	L1558
	.cfi_endproc
LFE50:
	.p2align 4
	.globl	__Z13DoShrapDamages
	.def	__Z13DoShrapDamages;	.scl	2;	.type	32;	.endef
__Z13DoShrapDamages:
LFB52:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %ebx
	movl	_User(,%ebx,4), %edx
	movl	68(%edx), %eax
	testb	$32, %al
	jne	L1655
	testb	$64, %al
	jne	L1656
	testl	$536870912, %eax
	jne	L1654
	imull	$44, %ebx, %ecx
	orl	$536870912, %eax
	movl	%eax, 68(%edx)
	movl	$-300, %eax
	movw	%ax, 92(%edx)
	movl	$-1171354717, %eax
	leal	32(%ecx), %edx
	addl	_sprite, %ecx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	32(%ecx), %eax
	sarl	$2, %eax
	movw	%ax, 32(%ecx)
	movl	_User(,%ebx,4), %edx
	movl	$8, %ecx
	movl	68(%edx), %eax
	movw	%cx, 94(%edx)
	andl	$-65, %eax
	orl	$32, %eax
	movl	%eax, 68(%edx)
	movl	%ebx, 16(%esp)
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z6DoJumps
	.p2align 4,,10
	.p2align 3
L1656:
	.cfi_restore_state
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	__Z6DoFalls
	movl	%ebx, (%esp)
	call	__Z11DoShrapMoves
	movl	4(%esp), %edx
L1646:
	movl	264(%edx), %eax
	testl	%eax, %eax
	je	L1649
	andl	$114688, %eax
	cmpl	$49152, %eax
	je	L1657
L1649:
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
L1655:
	.cfi_restore_state
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	__Z6DoJumps
	movl	%ebx, (%esp)
	call	__Z11DoShrapMoves
	movl	4(%esp), %edx
	jmp	L1646
	.p2align 4,,10
	.p2align 3
L1657:
	movl	%ebx, (%esp)
	call	__Z13WeaponMoveHits
L1654:
	movl	%ebx, %eax
	call	__Z10KillSprites
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE52:
	.p2align 4
	.globl	__ZL15DoHitscanDamagest.lto_priv.0
	.def	__ZL15DoHitscanDamagest.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL15DoHitscanDamagest.lto_priv.0:
LFB53:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movzwl	12(%esp), %ecx
	movswl	8(%esp), %ebx
	cmpw	$16383, %cx
	ja	L1659
	movzwl	%cx, %eax
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movzwl	26(%eax), %edx
	movl	$_StatDamageList, %eax
	jmp	L1661
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1660:
	addl	$2, %eax
	cmpl	$_StatDamageList+40, %eax
	je	L1659
L1661:
	cmpw	(%eax), %dx
	jne	L1660
	movswl	%cx, %ecx
	movl	%ebx, 12(%esp)
	movl	%ecx, 8(%esp)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z8DoDamagess
	.p2align 4,,10
	.p2align 3
L1659:
	.cfi_restore_state
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE53:
	.p2align 4
	.globl	__Z12DoDamageTests
	.def	__Z12DoDamageTests;	.scl	2;	.type	32;	.endef
__Z12DoDamageTests:
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
	movl	$_StatDamageList, %ebx
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movswl	80(%esp), %esi
	imull	$44, %esi, %eax
	addl	_sprite, %eax
	movl	%esi, 56(%esp)
	movl	%eax, %edi
	movl	_User(,%esi,4), %eax
	movl	%eax, 40(%esp)
	.p2align 4
	.p2align 3
L1675:
	movswl	(%ebx), %eax
	movzwl	_headspritestat(%eax,%eax), %esi
	cmpw	$-1, %si
	je	L1666
	movl	%edi, 20(%esp)
	movl	%ebx, 52(%esp)
	.p2align 4
	.p2align 3
L1665:
	movswl	%si, %ebx
	movl	20(%esp), %edi
	movw	%si, 48(%esp)
	imull	$44, %ebx, %edx
	addl	_sprite, %edx
	movzwl	_nextspritestat(%ebx,%ebx), %esi
	movl	(%edi), %ecx
	movl	(%edx), %eax
	movl	4(%edi), %edi
	movl	_User(,%ebx,4), %ebx
	movl	%ecx, 24(%esp)
	subl	%eax, %ecx
	movl	%eax, 28(%esp)
	movl	%ecx, %eax
	movl	188(%ebx), %ebp
	negl	%eax
	movl	%edi, 32(%esp)
	cmovs	%ecx, %eax
	movl	4(%edx), %ecx
	subl	%ecx, %edi
	movl	%ecx, 36(%esp)
	movl	%edi, %ecx
	negl	%ecx
	cmovs	%edi, %ecx
	movl	40(%esp), %edi
	movl	188(%edi), %edi
	leal	(%eax,%ecx), %ebx
	addl	%edi, %ebp
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	sarl	%eax
	subl	%eax, %ebx
	cmpl	%ebx, %ebp
	jb	L1667
	cmpl	%edx, 20(%esp)
	je	L1667
	movzwl	12(%edx), %eax
	testb	$1, %al
	je	L1667
	cmpl	$200, %edi
	jbe	L1668
	movl	20(%esp), %edi
	movswl	14(%edx), %ecx
	movl	8(%edi), %ebx
	movzwl	24(%edi), %ebp
	movswl	_tilesiz+2(,%ecx,4), %edi
	movl	%ebx, 44(%esp)
	movzwl	24(%edx), %ebx
	movw	%bx, 50(%esp)
	movl	8(%edx), %ebx
	movzbl	21(%edx), %edx
	testb	$-128, %al
	je	L1669
	cmpb	$64, %dl
	je	L1694
	movl	%edx, %eax
	movsbl	_picanm+2(%ecx,%ecx,4), %ecx
	imull	%edi, %eax
	sall	$8, %ecx
	leal	(%ecx,%eax,2), %eax
	subl	%eax, %ebx
L1672:
	imull	%edi, %edx
	movl	%edx, %ecx
L1674:
	movswl	%bp, %eax
	movl	36(%esp), %edx
	addl	%ebx, %ecx
	movl	%eax, 16(%esp)
	movl	44(%esp), %eax
	movl	%eax, 12(%esp)
	movl	32(%esp), %eax
	movl	%eax, 8(%esp)
	movl	24(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	50(%esp), %eax
	movl	%eax, (%esp)
	movl	28(%esp), %eax
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	je	L1667
L1668:
	movl	20(%esp), %edx
	movzwl	48(%esp), %eax
	cmpw	%ax, 30(%edx)
	je	L1667
	movswl	%ax, %ebx
	movl	56(%esp), %eax
	movl	%ebx, %edx
	call	__Z13SpriteOverlapss
	testb	%al, %al
	jne	L1695
	.p2align 4
	.p2align 3
L1667:
	cmpw	$-1, %si
	jne	L1665
	movl	20(%esp), %edi
	movl	52(%esp), %ebx
L1666:
	addl	$2, %ebx
	movl	$_StatDamageList+40, %eax
	cmpl	%ebx, %eax
	jne	L1675
	addl	$60, %esp
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
L1669:
	.cfi_restore_state
	cmpb	$64, %dl
	je	L1696
	movl	%edx, %eax
	imull	%edi, %eax
	sall	$2, %eax
	subl	%eax, %ebx
	jmp	L1672
	.p2align 4,,10
	.p2align 3
L1695:
	movl	56(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	__Z8DoDamagess
	jmp	L1667
	.p2align 4,,10
	.p2align 3
L1694:
	movsbl	_picanm+2(%ecx,%ecx,4), %eax
	movl	%edi, %edx
	sall	$7, %edx
	sall	$8, %eax
	addl	%edx, %eax
	subl	%eax, %ebx
L1671:
	sall	$6, %edi
	movl	%edi, %ecx
	jmp	L1674
	.p2align 4,,10
	.p2align 3
L1696:
	movl	%edi, %eax
	sall	$8, %eax
	subl	%eax, %ebx
	jmp	L1671
	.cfi_endproc
LFE55:
	.p2align 4
	.globl	__Z11DoMineSparks
	.def	__Z11DoMineSparks;	.scl	2;	.type	32;	.endef
__Z11DoMineSparks:
LFB56:
	.cfi_startproc
	movswl	4(%esp), %edx
	imull	$44, %edx, %eax
	addl	_sprite, %eax
	cmpw	$0, 14(%eax)
	jne	L1699
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1699:
	movl	%edx, 4(%esp)
	jmp	__Z12DoDamageTests
	.cfi_endproc
LFE56:
	.p2align 4
	.globl	__Z18DoFlamesDamageTests
	.def	__Z18DoFlamesDamageTests;	.scl	2;	.type	32;	.endef
__Z18DoFlamesDamageTests:
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
	movl	$_StatDamageList, %ebx
	subl	$68, %esp
	.cfi_def_cfa_offset 88
	movswl	88(%esp), %esi
	imull	$44, %esi, %eax
	addl	_sprite, %eax
	movl	%esi, 64(%esp)
	movl	%eax, %edi
	movl	_User(,%esi,4), %eax
	movl	%eax, 44(%esp)
	.p2align 4
	.p2align 3
L1717:
	movswl	(%ebx), %eax
	movzwl	_headspritestat(%eax,%eax), %esi
	cmpw	$-1, %si
	je	L1702
	movl	%edi, 20(%esp)
	movl	%ebx, 60(%esp)
	jmp	L1701
	.p2align 4,,10
	.p2align 3
L1758:
	cmpw	$2540, %ax
	je	L1703
	cmpw	$4768, %ax
	je	L1703
	cmpw	$623, %ax
	je	L1703
L1720:
	movswl	%dx, %eax
	movl	20(%esp), %edi
	movl	188(%ebx), %ebp
	imull	$44, %eax, %edx
	addl	_sprite, %edx
	movl	%eax, 40(%esp)
	movl	(%edi), %ecx
	movl	(%edx), %eax
	movl	4(%edi), %edi
	movl	%ecx, 28(%esp)
	subl	%eax, %ecx
	movl	%eax, 24(%esp)
	movl	%ecx, %eax
	negl	%eax
	movl	%edi, 32(%esp)
	cmovs	%ecx, %eax
	movl	4(%edx), %ecx
	subl	%ecx, %edi
	movl	%ecx, 36(%esp)
	movl	%edi, %ecx
	negl	%ecx
	cmovs	%edi, %ecx
	movl	44(%esp), %edi
	movl	188(%edi), %edi
	leal	(%eax,%ecx), %ebx
	addl	%edi, %ebp
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	sarl	%eax
	subl	%eax, %ebx
	cmpl	%ebx, %ebp
	jb	L1703
	movl	20(%esp), %ebp
	cmpl	%edx, %ebp
	je	L1703
	movzwl	12(%edx), %ecx
	testw	$257, %cx
	je	L1703
	movzwl	12(%ebp), %ebx
	testw	%bx, %bx
	js	L1703
	cmpl	$200, %edi
	jbe	L1704
	movzwl	24(%ebp), %eax
	movswl	14(%ebp), %edi
	andl	$128, %ebx
	movw	%ax, 54(%esp)
	movswl	_tilesiz+2(,%edi,4), %eax
	movl	%eax, 56(%esp)
	movzbl	21(%ebp), %eax
	movl	8(%ebp), %ebp
	movl	%ebp, 48(%esp)
	je	L1705
	movsbl	_picanm+2(%edi,%edi,4), %ebx
	sall	$8, %ebx
	movl	%ebx, %edi
	cmpb	$64, %al
	je	L1755
	imull	56(%esp), %eax
	addl	%eax, %eax
	leal	(%eax,%ebx), %ebp
	movl	48(%esp), %ebx
	subl	%ebp, %ebx
L1707:
	subl	%edi, %eax
	addl	%eax, 48(%esp)
L1710:
	movl	48(%esp), %eax
	addl	%ebx, %eax
	movswl	14(%edx), %ebx
	sarl	%eax
	andl	$128, %ecx
	movl	%eax, %ebp
	movzwl	24(%edx), %eax
	movswl	_tilesiz+2(,%ebx,4), %edi
	movw	%ax, 48(%esp)
	movzbl	21(%edx), %eax
	movl	8(%edx), %edx
	je	L1711
	movsbl	_picanm+2(%ebx,%ebx,4), %ecx
	movl	%ecx, %ebx
	sall	$8, %ebx
	cmpb	$64, %al
	je	L1756
	imull	%edi, %eax
	movl	%edx, %ecx
	addl	%eax, %eax
	leal	(%ebx,%eax), %edi
	subl	%edi, %ecx
L1713:
	subl	%ebx, %eax
	addl	%eax, %edx
L1716:
	movswl	54(%esp), %eax
	movl	%ebp, 12(%esp)
	addl	%edx, %ecx
	movl	36(%esp), %edx
	sarl	%ecx
	movl	%eax, 16(%esp)
	movl	32(%esp), %eax
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	48(%esp), %eax
	movl	%eax, (%esp)
	movl	24(%esp), %eax
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	jne	L1754
	.p2align 6
	.p2align 4
	.p2align 3
L1703:
	cmpw	$-1, %si
	je	L1757
L1701:
	movswl	%si, %eax
	movl	%esi, %edx
	movl	_User(,%eax,4), %ebx
	movzwl	_nextspritestat(%eax,%eax), %esi
	movzwl	82(%ebx), %eax
	cmpw	$4792, %ax
	je	L1703
	jle	L1758
	cmpw	$4816, %ax
	je	L1703
	cmpw	$4840, %ax
	jne	L1720
	cmpw	$-1, %si
	jne	L1701
	.p2align 4
	.p2align 3
L1757:
	movl	20(%esp), %edi
	movl	60(%esp), %ebx
L1702:
	addl	$2, %ebx
	movl	$_StatDamageList+40, %eax
	cmpl	%ebx, %eax
	jne	L1717
	addl	$68, %esp
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
L1711:
	.cfi_restore_state
	cmpb	$64, %al
	je	L1759
	imull	%edi, %eax
	sall	$2, %eax
L1715:
	movl	%edx, %ecx
	subl	%eax, %ecx
	jmp	L1716
	.p2align 4,,10
	.p2align 3
L1705:
	cmpb	$64, %al
	je	L1760
	imull	56(%esp), %eax
	sall	$2, %eax
L1709:
	movl	48(%esp), %ebx
	subl	%eax, %ebx
	jmp	L1710
	.p2align 4,,10
	.p2align 3
L1704:
	movl	40(%esp), %edx
	movl	64(%esp), %eax
	call	__Z13SpriteOverlapss
	testb	%al, %al
	je	L1703
L1754:
	movl	64(%esp), %eax
	movl	%eax, 4(%esp)
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	__Z8DoDamagess
	jmp	L1703
	.p2align 4,,10
	.p2align 3
L1756:
	movl	%edi, %eax
	movl	%edx, %ecx
	sall	$7, %eax
	leal	(%ebx,%eax), %edi
	subl	%edi, %ecx
	jmp	L1713
	.p2align 4,,10
	.p2align 3
L1760:
	movl	56(%esp), %eax
	sall	$8, %eax
	jmp	L1709
	.p2align 4,,10
	.p2align 3
L1755:
	movl	56(%esp), %eax
	sall	$7, %eax
	leal	(%eax,%ebx), %ebp
	movl	48(%esp), %ebx
	subl	%ebp, %ebx
	jmp	L1707
	.p2align 4,,10
	.p2align 3
L1759:
	movl	%edi, %eax
	sall	$8, %eax
	jmp	L1715
	.cfi_endproc
LFE57:
	.p2align 4
	.globl	__Z16DoFireballFlamess
	.def	__Z16DoFireballFlamess;	.scl	2;	.type	32;	.endef
__Z16DoFireballFlamess:
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
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	movl	_sprite, %edi
	movswl	36(%esp), %ebp
	movl	_User(,%ebp,4), %esi
	imull	$44, %ebp, %ebx
	movswl	138(%esi), %ecx
	addl	%edi, %ebx
	testw	%cx, %cx
	js	L1762
	imull	$44, %ecx, %ecx
	addl	%edi, %ecx
	movl	(%ecx), %eax
	movl	%eax, (%ebx)
	movl	4(%ecx), %eax
	movl	%eax, 4(%ebx)
	movl	8(%ecx), %eax
	movswl	14(%ecx), %edx
	movl	%eax, 4(%esp)
	movzbl	21(%ecx), %eax
	movswl	_tilesiz+2(,%edx,4), %edi
	testb	$-128, 12(%ecx)
	je	L1763
	movsbl	_picanm+2(%edx,%edx,4), %edx
	sall	$8, %edx
	cmpb	$64, %al
	je	L1786
	imull	%edi, %eax
	addl	%eax, %eax
L1785:
	movl	%eax, 12(%esp)
	leal	(%eax,%edx), %edi
	movl	4(%esp), %eax
	subl	%edi, %eax
	movl	%eax, 8(%esp)
	movl	12(%esp), %eax
	subl	%edx, %eax
	addl	%eax, 4(%esp)
L1768:
	movl	_sprite, %edi
	leal	8(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%edi, %edx
	mull	%edx
	movl	4(%esp), %eax
	addl	8(%esp), %eax
	sarl	%eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, 8(%ebx)
	testb	$64, 43(%ecx)
	je	L1769
	testb	$1, 178(%esi)
	jne	L1769
	leal	16(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%edi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	16(%ecx), %eax
	addl	$1, %eax
	movb	%al, 16(%ecx)
	cmpb	$10, %al
	jle	L1769
	addl	$1, _spritechanged(,%edx,4)
	movb	$10, 16(%ecx)
	.p2align 4
	.p2align 3
L1769:
	movzwl	216(%esi), %eax
	addl	$6, %eax
	movw	%ax, 216(%esi)
	cmpw	$480, %ax
	jle	L1776
	leal	20(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%edi, %edx
	subb	$1, 20(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	subb	$1, 21(%ebx)
	cmpb	$0, 20(%ebx)
	je	L1787
L1771:
	movzwl	178(%esi), %eax
	addl	$1, %eax
	cmpw	$9, %ax
	jg	L1777
L1791:
	movw	%ax, 178(%esi)
	addl	$16, %esp
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
L1763:
	.cfi_restore_state
	cmpb	$64, %al
	je	L1788
	imull	%edi, %eax
	leal	0(,%eax,4), %edi
L1767:
	movl	4(%esp), %eax
	subl	%edi, %eax
	movl	%eax, 8(%esp)
	jmp	L1768
	.p2align 4,,10
	.p2align 3
L1762:
	movl	68(%esi), %eax
	testb	$32, %al
	jne	L1789
	testb	$64, %al
	jne	L1790
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %ecx
	movl	_SectUser(,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%ecx,8), %ecx
	testl	%edx, %edx
	je	L1773
	cmpw	$0, 10(%edx)
	jle	L1773
	movl	8(%ecx), %eax
	subl	8(%ebx), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	cmpl	$1024, %eax
	jle	L1775
L1773:
	testw	$4160, 38(%ecx)
	je	L1769
L1775:
	movl	%ebp, %eax
	call	__Z10KillSprites
	addl	$16, %esp
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
L1786:
	.cfi_restore_state
	movl	%edi, %eax
	sall	$7, %eax
	jmp	L1785
	.p2align 4,,10
	.p2align 3
L1788:
	sall	$8, %edi
	jmp	L1767
	.p2align 4,,10
	.p2align 3
L1790:
	movl	%ebp, (%esp)
	call	__Z6DoFalls
	jmp	L1771
	.p2align 4,,10
	.p2align 3
L1776:
	movzbl	20(%ebx), %edx
	movswl	176(%esi), %eax
	cmpl	%eax, %edx
	jg	L1771
	leal	20(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%edi, %edx
	addb	$3, 20(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addb	$3, 21(%ebx)
	movzwl	178(%esi), %eax
	addl	$1, %eax
	cmpw	$9, %ax
	jle	L1791
L1777:
	xorl	%eax, %eax
	movw	%ax, 178(%esi)
	movl	%ebp, 36(%esp)
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
	jmp	__Z18DoFlamesDamageTests
	.p2align 4,,10
	.p2align 3
L1789:
	.cfi_restore_state
	movl	%ebp, (%esp)
	call	__Z6DoJumps
	jmp	L1771
	.p2align 4,,10
	.p2align 3
L1787:
	movswl	138(%esi), %eax
	testw	%ax, %ax
	js	L1775
	movl	_User(,%eax,4), %eax
	movl	$-1, %edx
	movw	%dx, 196(%eax)
	jmp	L1775
	.cfi_endproc
LFE58:
	.p2align 4
	.globl	__Z13DoBreakFlamess
	.def	__Z13DoBreakFlamess;	.scl	2;	.type	32;	.endef
__Z13DoBreakFlamess:
LFB59:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%esi, 8(%esp)
	.cfi_offset 6, -16
	movswl	24(%esp), %esi
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -20
	movl	_User(,%esi,4), %ebx
	movl	68(%ebx), %eax
	testb	$32, %al
	jne	L1808
	testb	$64, %al
	jne	L1809
	imull	$44, %esi, %ecx
	movl	%edi, 12(%esp)
	.cfi_offset 7, -12
	movl	_sprite, %edi
	movl	%ebp, 16(%esp)
	.cfi_offset 5, -8
	addl	%edi, %ecx
	movswl	24(%ecx), %eax
	leal	(%eax,%eax,4), %ebp
	movl	_SectUser(,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%ebp,8), %ebp
	testl	%edx, %edx
	je	L1796
	cmpw	$0, 10(%edx)
	jle	L1796
	movl	8(%ebp), %eax
	subl	8(%ecx), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	cmpl	$1024, %eax
	jle	L1798
L1796:
	testw	$4160, 38(%ebp)
	jne	L1798
	movzwl	216(%ebx), %eax
	addl	$6, %eax
	movw	%ax, 216(%ebx)
	cmpw	$480, %ax
	jg	L1810
	movzbl	20(%ecx), %ebp
	movswl	176(%ebx), %edx
	cmpl	%edx, %ebp
	jg	L1800
	leal	20(%ecx), %edx
	movl	$-1171354717, %ebp
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	%edi, %edx
	addb	$3, 20(%ecx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addb	$3, 21(%ecx)
	movzwl	216(%ebx), %eax
L1800:
	cmpw	$474, %ax
	jg	L1811
L1807:
	movzwl	178(%ebx), %eax
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	16(%esp), %ebp
	.cfi_restore 5
	addl	$1, %eax
	cmpw	$9, %ax
	jle	L1812
L1801:
	xorl	%eax, %eax
	movw	%ax, 178(%ebx)
	movl	4(%esp), %ebx
	movl	%esi, 24(%esp)
	movl	8(%esp), %esi
	addl	$20, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z18DoFlamesDamageTests
	.p2align 4,,10
	.p2align 3
L1809:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z6DoFalls
L1794:
	movzwl	178(%ebx), %eax
	addl	$1, %eax
	cmpw	$9, %ax
	jg	L1801
L1812:
	movw	%ax, 178(%ebx)
	xorl	%eax, %eax
	movl	4(%esp), %ebx
	movl	8(%esp), %esi
	addl	$20, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1808:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z6DoJumps
	jmp	L1794
	.p2align 4,,10
	.p2align 3
L1810:
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	leal	20(%ecx), %edx
	movl	$-1171354717, %ebp
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	%edi, %edx
	subb	$1, 20(%ecx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	subb	$1, 21(%ecx)
	cmpb	$0, 20(%ecx)
	jne	L1807
	movswl	138(%ebx), %eax
	testw	%ax, %ax
	js	L1798
	movl	_User(,%eax,4), %eax
	movl	$-1, %edx
	movw	%dx, 196(%eax)
L1798:
	movl	%esi, %eax
	call	__Z10KillSprites
	movl	12(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	16(%esp), %ebp
	.cfi_restore 5
	xorl	%eax, %eax
	movl	4(%esp), %ebx
	movl	8(%esp), %esi
	addl	$20, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1811:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z22SpawnBreakStaticFlamess
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	16(%esp), %ebp
	.cfi_restore 5
	jmp	L1794
	.cfi_endproc
LFE59:
	.section .rdata,"dr"
LC1:
	.ascii " \0"
LC2:
	.ascii "Zombie\0"
LC3:
	.ascii "Blood Worm\0"
LC4:
	.ascii "Skeletor Priest\0"
LC5:
	.ascii "Coolie Ghost\0"
LC6:
	.ascii "Guardian\0"
LC7:
	.ascii "Hornet\0"
LC8:
	.ascii "Ripper Hatchling\0"
LC9:
	.ascii "Ripper\0"
LC10:
	.ascii "Killer Rabbit\0"
LC11:
	.ascii "Serpent god\0"
LC12:
	.ascii "Girl Ninja\0"
LC13:
	.ascii "blade\0"
LC14:
	.ascii "dart\0"
LC15:
	.ascii "shuriken\0"
LC16:
	.ascii "crossbow bolt\0"
LC17:
	.ascii "spear\0"
LC18:
	.ascii "lava boulder\0"
LC19:
	.ascii "Uzi\0"
LC20:
	.ascii "Evil Ninja Uzi\0"
LC21:
	.ascii "shotgun\0"
LC22:
	.ascii "meteor\0"
LC23:
	.ascii "rocket\0"
LC24:
	.ascii "rail gun\0"
LC25:
	.ascii "enemy rocket\0"
LC26:
	.ascii "bunny rocket\0"
LC27:
	.ascii "explosion\0"
LC28:
	.ascii "tank shell\0"
LC29:
	.ascii "nuclear bomb\0"
LC30:
	.ascii "40mm grenade\0"
LC31:
	.ascii "micro missile\0"
LC32:
	.ascii "sticky bomb\0"
LC33:
	.ascii "napalm\0"
LC34:
	.ascii "vomit\0"
LC35:
	.ascii "Coolie Ghost phlem\0"
LC36:
	.ascii "Accursed Head\0"
LC37:
	.ascii "Bouncing Betty\0"
LC38:
	.ascii "Serpent god Protector\0"
LC39:
	.ascii "flames\0"
LC40:
	.ascii "radiation\0"
LC41:
	.ascii "caltrops\0"
LC42:
	.ascii "\0"
	.text
	.p2align 4
	.globl	__Z11DeathStrings
	.def	__Z11DeathStrings;	.scl	2;	.type	32;	.endef
__Z11DeathStrings:
LFB60:
	.cfi_startproc
	cwtl
	movl	_User(,%eax,4), %eax
	movzwl	82(%eax), %eax
	cmpw	$2146, %ax
	je	L1847
	jle	L1890
	cmpw	$3122, %ax
	jg	L1839
	cmpw	$3099, %ax
	jg	L1840
	cmpw	$2218, %ax
	je	L1864
	jg	L1841
	movl	$LC20, %edx
	cmpw	$2148, %ax
	je	L1813
	movl	$LC21, %edx
	jle	L1813
	subw	$2196, %ax
	movl	$LC18, %edx
	cmpw	$2, %ax
	movl	$LC42, %eax
	cmovnb	%eax, %edx
	jmp	L1813
	.p2align 4,,10
	.p2align 3
L1890:
	cmpw	$1719, %ax
	je	L1848
	jg	L1816
	cmpw	$1095, %ax
	je	L1849
	jg	L1817
	movl	$LC37, %edx
	cmpw	$817, %ax
	je	L1813
	jle	L1891
	movl	$LC36, %edx
	cmpw	$820, %ax
	je	L1813
	cmpw	$822, %ax
	movl	$LC42, %edx
	movl	$LC38, %eax
	cmove	%eax, %edx
	jmp	L1813
	.p2align 4,,10
	.p2align 3
L1816:
	cmpw	$2049, %ax
	jg	L1836
	cmpw	$2009, %ax
	jle	L1892
	subw	$2010, %ax
	cmpw	$39, %ax
	ja	L1826
	movzwl	%ax, %eax
	jmp	*L1829(,%eax,4)
	.section .rdata,"dr"
	.align 4
L1829:
	.long	L1846
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1834
	.long	L1826
	.long	L1833
	.long	L1832
	.long	L1831
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1853
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1846
	.long	L1846
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1828
	.text
	.p2align 4,,10
	.p2align 3
L1840:
	subw	$3100, %ax
	cmpw	$22, %ax
	ja	L1826
	movzwl	%ax, %eax
	jmp	*L1822(,%eax,4)
	.section .rdata,"dr"
	.align 4
L1822:
	.long	L1852
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1825
	.long	L1826
	.long	L1824
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1826
	.long	L1823
	.long	L1821
	.text
	.p2align 4,,10
	.p2align 3
L1817:
	movl	$LC6, %edx
	cmpw	$1469, %ax
	je	L1813
	jg	L1835
	movl	$LC11, %edx
	cmpw	$1300, %ax
	je	L1813
	cmpw	$1367, %ax
	movl	$LC42, %edx
	movl	$LC4, %eax
	cmove	%eax, %edx
	jmp	L1813
	.p2align 4,,10
	.p2align 3
L1826:
	movl	$LC42, %edx
L1813:
	movl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1836:
	cmpw	$2099, %ax
	jle	L1893
	cmpw	$2106, %ax
	movl	$LC42, %edx
	movl	$LC3, %eax
	cmove	%eax, %edx
	jmp	L1813
	.p2align 4,,10
	.p2align 3
L1839:
	cmpw	$4277, %ax
	je	L1871
	jg	L1842
	movl	$LC29, %edx
	cmpw	$3280, %ax
	je	L1813
	jg	L1843
	cmpw	$3212, %ax
	je	L1846
	cmpw	$3258, %ax
	movl	$LC42, %edx
	movl	$LC40, %eax
	cmove	%eax, %edx
	jmp	L1813
	.p2align 4,,10
	.p2align 3
L1842:
	movl	$LC10, %edx
	cmpw	$4550, %ax
	je	L1813
	jle	L1894
	movl	$LC13, %edx
	cmpw	$5011, %ax
	je	L1813
	cmpw	$5162, %ax
	movl	$LC42, %edx
	movl	$LC12, %eax
	cmove	%eax, %edx
	jmp	L1813
	.p2align 4,,10
	.p2align 3
L1841:
	movl	$LC35, %edx
	cmpw	$2430, %ax
	je	L1813
	movl	$LC33, %edx
	cmpw	$3072, %ax
	je	L1813
	cmpw	$2230, %ax
	movl	$LC42, %edx
	movl	$LC16, %eax
	cmove	%eax, %edx
	jmp	L1813
	.p2align 4,,10
	.p2align 3
L1893:
	cmpw	$2098, %ax
	movl	$LC42, %edx
	movl	$LC22, %eax
	cmovge	%eax, %edx
	jmp	L1813
	.p2align 4,,10
	.p2align 3
L1894:
	cmpw	$4320, %ax
	movl	$LC42, %edx
	movl	$LC9, %eax
	cmove	%eax, %edx
	jmp	L1813
	.p2align 4,,10
	.p2align 3
L1843:
	cmpw	$4096, %ax
	movl	$LC42, %edx
	movl	$LC1, %eax
	cmove	%eax, %edx
	jmp	L1813
	.p2align 4,,10
	.p2align 3
L1846:
	movl	$LC39, %edx
	jmp	L1813
L1825:
	movl	$LC31, %edx
	jmp	L1813
L1821:
	movl	$LC32, %edx
	jmp	L1813
L1823:
	movl	$LC30, %edx
	jmp	L1813
L1852:
	movl	$LC27, %edx
	jmp	L1813
L1824:
	movl	$LC28, %edx
	jmp	L1813
L1828:
	cmpb	$0, _gs+322
	movl	$LC15, %edx
	movl	$LC14, %eax
	cmovne	%eax, %edx
	jmp	L1813
L1832:
	movl	$LC24, %edx
	jmp	L1813
L1833:
	movl	$LC25, %edx
	jmp	L1813
L1834:
	movl	$LC26, %edx
	jmp	L1813
L1853:
	movl	$LC17, %edx
	jmp	L1813
L1831:
	movl	$LC23, %edx
	jmp	L1813
	.p2align 4,,10
	.p2align 3
L1891:
	cmpw	$362, %ax
	jle	L1895
	cmpw	$800, %ax
	movl	$LC42, %edx
	movl	$LC7, %eax
	cmove	%eax, %edx
	jmp	L1813
	.p2align 4,,10
	.p2align 3
L1835:
	cmpw	$1580, %ax
	movl	$LC42, %edx
	movl	$LC8, %eax
	cmove	%eax, %edx
	jmp	L1813
	.p2align 4,,10
	.p2align 3
L1871:
	movl	$LC5, %edx
	jmp	L1813
	.p2align 4,,10
	.p2align 3
L1864:
	movl	$LC41, %edx
	jmp	L1813
	.p2align 4,,10
	.p2align 3
L1849:
	movl	$LC2, %edx
	jmp	L1813
	.p2align 4,,10
	.p2align 3
L1847:
	movl	$LC19, %edx
	jmp	L1813
	.p2align 4,,10
	.p2align 3
L1892:
	cmpw	$1721, %ax
	movl	$LC42, %edx
	movl	$LC34, %eax
	cmove	%eax, %edx
	jmp	L1813
	.p2align 4,,10
	.p2align 3
L1895:
	cmpw	$360, %ax
	movl	$LC42, %edx
	movl	$LC13, %eax
	cmovge	%eax, %edx
	jmp	L1813
	.p2align 4,,10
	.p2align 3
L1848:
	movl	$LC34, %edx
	jmp	L1813
	.cfi_endproc
LFE60:
	.p2align 4
	.globl	__Z22TraverseBreakableWallssiiisi
	.def	__Z22TraverseBreakableWallssiiisi;	.scl	2;	.type	32;	.endef
__Z22TraverseBreakableWallssiiisi:
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
	pushl	%eax
	.cfi_def_cfa_offset 24
	movl	$8252, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	.cfi_def_cfa_offset 8276
	movl	(%esp,%eax), %eax
	movl	%edx, 28(%esp)
	movl	%eax, %edi
	movw	%ax, 46(%esp)
	movl	8284(%esp), %edx
	movw	%ax, 64(%esp)
	movl	$2000, %eax
	movl	%ecx, 32(%esp)
	movl	$1, %ecx
	cmpl	%eax, %edx
	movw	%cx, 40(%esp)
	cmovle	%edx, %eax
	xorl	%edx, %edx
	xorl	%esi, %esi
	movw	%dx, 44(%esp)
	movl	%eax, 36(%esp)
	movswl	%di, %eax
	leal	64(%esp), %edi
	.p2align 4
	.p2align 3
L1909:
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %ebx
	movzwl	2(%eax), %ecx
	addl	%ebx, %ecx
	movswl	%cx, %eax
	subl	$1, %eax
	movl	%eax, 20(%esp)
	cmpl	%eax, %ebx
	jge	L1897
	movw	%si, 42(%esp)
	movl	_wall, %ebp
	.p2align 4
	.p2align 3
L1908:
	movl	%ebx, %esi
	sall	$5, %esi
	leal	0(%ebp,%esi), %eax
	cmpw	$307, 26(%eax)
	je	L1921
L1898:
	movzwl	12(%eax), %edx
	testw	%dx, %dx
	js	L1899
	movswl	40(%esp), %ecx
	movl	%ecx, %eax
	subl	$1, %eax
	jns	L1907
	jmp	L1905
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1922:
	subl	$1, %eax
	jb	L1905
L1907:
	cmpw	%dx, (%edi,%eax,2)
	jne	L1922
L1899:
	addl	$1, %ebx
	cmpl	20(%esp), %ebx
	jne	L1908
L1923:
	movzwl	42(%esp), %esi
L1897:
	addl	$1, %esi
	cmpw	%si, 40(%esp)
	jle	L1896
	movswl	%si, %eax
	movswl	64(%esp,%eax,2), %eax
	jmp	L1909
	.p2align 4,,10
	.p2align 3
L1921:
	leal	32(%ebp,%esi), %ecx
	movl	%ecx, 24(%esp)
	movl	(%ecx), %edx
	movl	28(%esp), %ecx
	addl	(%eax), %edx
	sarl	%edx
	subl	%edx, %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovs	%ecx, %edx
	movl	24(%esp), %ecx
	movl	4(%ecx), %ecx
	addl	4(%eax), %ecx
	movl	32(%esp), %eax
	sarl	%ecx
	subl	%ecx, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovns	%ecx, %eax
	cmpl	%eax, %edx
	leal	(%edx,%eax), %ecx
	cmovg	%eax, %edx
	sarl	%edx
	subl	%edx, %ecx
	cmpl	%ecx, 36(%esp)
	jl	L1899
	leal	48(%esp), %ecx
	leal	50(%esp), %edx
	movswl	%bx, %eax
	movl	%ecx, 8(%esp)
	leal	52(%esp), %ecx
	movl	%ecx, 4(%esp)
	leal	56(%esp), %ecx
	movl	%ecx, (%esp)
	leal	60(%esp), %ecx
	call	__Z17WallBreakPositionsPsPiS0_S0_S_
	testl	%eax, %eax
	je	L1920
	movl	60(%esp), %eax
	cmpl	$2147483647, %eax
	je	L1920
	movswl	50(%esp), %edx
	testw	%dx, %dx
	jns	L1902
L1920:
	movl	_wall, %ebp
	leal	0(%ebp,%esi), %eax
	jmp	L1898
	.p2align 4,,10
	.p2align 3
L1905:
	addw	$1, 40(%esp)
	addl	$1, %ebx
	movw	%dx, 64(%esp,%ecx,2)
	cmpl	20(%esp), %ebx
	jne	L1908
	jmp	L1923
L1902:
	movl	%edx, 16(%esp)
	movl	52(%esp), %edx
	movl	%eax, 4(%esp)
	movswl	46(%esp), %eax
	movl	%edx, 12(%esp)
	movl	56(%esp), %edx
	movl	%eax, (%esp)
	movl	8276(%esp), %ecx
	movl	%edx, 8(%esp)
	movl	28(%esp), %eax
	movl	32(%esp), %edx
	call	__Z9FAFcanseeiiisiiis
	movl	_wall, %ebp
	movl	%eax, %edx
	leal	0(%ebp,%esi), %eax
	testb	%dl, %dl
	je	L1898
	movswl	8280(%esp), %edx
	movl	$0, 8(%esp)
	movl	$2147483647, %ecx
	movl	$2147483647, (%esp)
	movl	%edx, 4(%esp)
	movl	$2147483647, %edx
	call	__Z12HitBreakWallP10walltypev7iiiss.isra.0
	addw	$1, 44(%esp)
	cmpw	$5, 44(%esp)
	jne	L1920
L1896:
	addl	$8256, %esp
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
LFE61:
	.data
	.align 32
__ZZ10SpawnShrapssE10LavaShrap2:
	.long	_s_GoreFlameChunkB
	.word	1562
	.word	1
	.word	0
	.word	400
	.word	1400
	.word	100
	.word	400
	.word	1
	.word	2048
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnShrapssE10LavaShrap1:
	.long	_s_GoreFlame
	.word	1562
	.word	1
	.word	0
	.word	400
	.word	1400
	.word	100
	.word	400
	.word	1
	.word	2048
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.section .rdata,"dr"
	.align 32
_TauntAIVocs:
	.long	246
	.long	247
	.long	248
	.long	249
	.long	250
	.long	251
	.long	252
	.long	253
	.long	254
	.long	255
	.long	331
	.long	332
	.long	333
	.long	334
	.long	335
	.long	336
	.long	440
	.long	337
	.long	338
	.long	339
	.long	340
	.long	341
	.long	342
	.long	343
	.long	441
	.long	344
	.long	345
	.long	346
	.long	347
	.long	348
	.long	349
	.long	350
	.long	351
	.data
	.align 32
__ZZ10SpawnBloodsssiiiE13HariKariBlood:
	.long	_s_FastGoreDrip
	.word	1562
	.word	32
	.word	0
	.word	200
	.word	650
	.word	70
	.word	100
	.word	1
	.word	1024
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnBloodsssiiiE19PlasmaFountainBlood:
	.long	_s_PlasmaDrip
	.word	1562
	.word	1
	.word	0
	.word	200
	.word	500
	.word	100
	.word	300
	.word	1
	.word	16
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnBloodsssiiiE9SomeBlood:
	.long	_s_GoreDrip
	.word	1562
	.word	1
	.word	0
	.word	100
	.word	250
	.word	10
	.word	20
	.word	1
	.word	512
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnBloodsssiiiE10SmallBlood:
	.long	_s_GoreDrip
	.word	1562
	.word	1
	.word	0
	.word	100
	.word	250
	.word	10
	.word	20
	.word	1
	.word	512
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnBloodsssiiiE10ExtraBlood:
	.long	_s_GoreDrip
	.word	1562
	.word	4
	.word	0
	.word	100
	.word	250
	.word	10
	.word	20
	.word	1
	.word	512
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnBloodsssiiiE8UziBlood:
	.long	_s_GoreDrip
	.word	1562
	.word	1
	.word	1
	.word	100
	.word	250
	.word	10
	.word	20
	.word	1
	.word	512
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnShrapssE16HeartAttackShrap:
	.long	_s_GoreLung
	.word	903
	.word	2
	.word	0
	.word	500
	.word	1100
	.word	300
	.word	600
	.word	1
	.word	2048
	.space 2
	.long	_s_GoreLiver
	.word	918
	.word	1
	.word	1
	.word	500
	.word	1100
	.word	300
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_GoreArm
	.word	1550
	.word	2
	.word	1
	.word	500
	.word	1100
	.word	350
	.word	600
	.word	1
	.word	2048
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnShrapssE8EMPShrap:
	.long	_s_EMPShrap
	.word	2058
	.word	1
	.word	1
	.word	500
	.word	1100
	.word	300
	.word	600
	.word	0
	.word	128
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnShrapssE14PlayerGoreFall:
	.long	_s_GoreSkullCap
	.word	933
	.word	1
	.word	0
	.word	200
	.word	300
	.word	100
	.word	200
	.word	1
	.word	2048
	.space 2
	.long	_s_GoreLiver
	.word	918
	.word	1
	.word	1
	.word	200
	.word	300
	.word	100
	.word	200
	.word	1
	.word	2048
	.space 2
	.long	_s_GoreLung
	.word	903
	.word	1
	.word	1
	.word	200
	.word	300
	.word	100
	.word	200
	.word	1
	.word	2048
	.space 2
	.long	_s_GoreDrip
	.word	1562
	.word	10
	.word	1
	.word	200
	.word	300
	.word	100
	.word	200
	.word	0
	.word	2048
	.space 2
	.long	_s_GoreArm
	.word	1550
	.word	1
	.word	1
	.word	200
	.word	300
	.word	100
	.word	200
	.word	1
	.word	2048
	.space 2
	.long	_s_FastGoreDrip
	.word	1562
	.word	10
	.word	2
	.word	200
	.word	300
	.word	100
	.word	200
	.word	0
	.word	2048
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnShrapssE11FlamingGore:
	.long	_s_GoreFlame
	.word	1562
	.word	2
	.word	0
	.word	600
	.word	800
	.word	100
	.word	200
	.word	0
	.word	2048
	.space 2
	.long	_s_GoreFlameChunkB
	.word	1562
	.word	4
	.word	1
	.word	300
	.word	500
	.word	100
	.word	200
	.word	0
	.word	2048
	.space 2
	.long	_s_GoreFlame
	.word	1562
	.word	2
	.word	2
	.word	100
	.word	200
	.word	100
	.word	200
	.word	0
	.word	2048
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnShrapssE8SkelGore:
	.long	_s_GoreHead
	.word	1670
	.word	1
	.word	0
	.word	400
	.word	700
	.word	20
	.word	40
	.word	1
	.word	2048
	.space 2
	.long	_s_GoreLung
	.word	903
	.word	2
	.word	0
	.word	500
	.word	800
	.word	100
	.word	300
	.word	1
	.word	2048
	.space 2
	.long	_s_GoreLiver
	.word	918
	.word	1
	.word	1
	.word	300
	.word	500
	.word	100
	.word	150
	.word	1
	.word	2048
	.space 2
	.long	_s_GoreSkullCap
	.word	933
	.word	1
	.word	0
	.word	300
	.word	500
	.word	100
	.word	150
	.word	1
	.word	2048
	.space 2
	.long	_s_GoreArm
	.word	1550
	.word	1
	.word	1
	.word	300
	.word	500
	.word	250
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_GoreLeg
	.word	1689
	.word	2
	.word	2
	.word	200
	.word	400
	.word	250
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_GoreChunkS
	.word	2430
	.word	4
	.word	2
	.word	200
	.word	400
	.word	250
	.word	400
	.word	1
	.word	2048
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnShrapssE15PlayerHeadHurl1:
	.long	_s_Vomit1
	.word	1719
	.word	1
	.word	2
	.word	250
	.word	400
	.word	100
	.word	200
	.word	1
	.word	256
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnShrapssE9UpperGore:
	.long	_s_GoreHead
	.word	1670
	.word	1
	.word	0
	.word	400
	.word	700
	.word	20
	.word	40
	.word	1
	.word	2048
	.space 2
	.long	_s_GoreLung
	.word	903
	.word	2
	.word	0
	.word	500
	.word	800
	.word	100
	.word	300
	.word	1
	.word	2048
	.space 2
	.long	_s_GoreLiver
	.word	918
	.word	1
	.word	1
	.word	300
	.word	500
	.word	100
	.word	150
	.word	1
	.word	2048
	.space 2
	.long	_s_GoreSkullCap
	.word	933
	.word	1
	.word	0
	.word	300
	.word	500
	.word	100
	.word	150
	.word	1
	.word	2048
	.space 2
	.long	_s_GoreArm
	.word	1550
	.word	1
	.word	1
	.word	300
	.word	500
	.word	250
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnShrapssE13PlayerGoreFly:
	.long	_s_GoreSkullCap
	.word	933
	.word	1
	.word	0
	.word	500
	.word	1100
	.word	300
	.word	600
	.word	1
	.word	2048
	.space 2
	.long	_s_GoreTorso
	.word	1696
	.word	1
	.word	1
	.word	500
	.word	1100
	.word	300
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_GoreLiver
	.word	918
	.word	1
	.word	1
	.word	200
	.word	300
	.word	100
	.word	200
	.word	1
	.word	2048
	.space 2
	.long	_s_GoreArm
	.word	1550
	.word	1
	.word	1
	.word	500
	.word	1100
	.word	350
	.word	600
	.word	1
	.word	2048
	.space 2
	.long	_s_FastGoreDrip
	.word	1562
	.word	16
	.word	1
	.word	500
	.word	1100
	.word	350
	.word	600
	.word	0
	.word	2048
	.space 2
	.long	_s_FastGoreDrip
	.word	1562
	.word	16
	.word	2
	.word	500
	.word	1100
	.word	350
	.word	600
	.word	0
	.word	2048
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnShrapssE14PlayerDeadHead:
	.long	_s_GoreDrip
	.word	1562
	.word	2
	.word	0
	.word	150
	.word	400
	.word	40
	.word	80
	.word	1
	.word	2048
	.space 2
	.long	_s_GoreDrip
	.word	1562
	.word	2
	.word	1
	.word	150
	.word	400
	.word	40
	.word	80
	.word	1
	.word	2048
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnShrapssE12ElectroShrap:
	.long	_s_ElectroShrap
	.word	2027
	.word	12
	.word	0
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnShrapssE16LavaBoulderShrap:
	.long	_s_LavaShard
	.word	2197
	.word	16
	.word	1
	.word	400
	.word	900
	.word	200
	.word	600
	.word	1
	.word	2048
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnShrapssE8StdShrap:
	.long	_s_GoreHead
	.word	1670
	.word	1
	.word	0
	.word	400
	.word	700
	.word	20
	.word	40
	.word	1
	.word	2048
	.space 2
	.long	_s_GoreLung
	.word	903
	.word	2
	.word	0
	.word	500
	.word	800
	.word	100
	.word	300
	.word	1
	.word	2048
	.space 2
	.long	_s_GoreLiver
	.word	918
	.word	1
	.word	1
	.word	300
	.word	500
	.word	100
	.word	150
	.word	1
	.word	2048
	.space 2
	.long	_s_GoreArm
	.word	1550
	.word	1
	.word	1
	.word	300
	.word	500
	.word	250
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_GoreSkullCap
	.word	933
	.word	1
	.word	0
	.word	300
	.word	500
	.word	250
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_FastGoreDrip
	.word	1562
	.word	8
	.word	2
	.word	600
	.word	800
	.word	50
	.word	70
	.word	0
	.word	2048
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnShrapssE9SmallGore:
	.long	_s_GoreDrip
	.word	1562
	.word	3
	.word	0
	.word	600
	.word	800
	.word	50
	.word	70
	.word	0
	.word	2048
	.space 2
	.long	_s_FastGoreDrip
	.word	1562
	.word	3
	.word	2
	.word	600
	.word	800
	.word	70
	.word	100
	.word	0
	.word	2048
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.section .rdata,"dr"
	.align 4
__ZZ10SpawnShrapssE14LavaShrapTable:
	.long	__ZZ10SpawnShrapssE10LavaShrap1
	.long	__ZZ10SpawnShrapssE10LavaShrap2
	.data
	.align 32
__ZZ10SpawnShrapssE8PaperMix:
	.long	_s_WoodShrapA
	.word	3924
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_WoodShrapB
	.word	3924
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_WoodShrapC
	.word	3924
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_PaperShrapA
	.word	3924
	.word	2
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_PaperShrapB
	.word	3924
	.word	2
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_PaperShrapC
	.word	3924
	.word	2
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnShrapssE7WoodMix:
	.long	_s_WoodShrapA
	.word	3924
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_WoodShrapB
	.word	3924
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_WoodShrapC
	.word	3924
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_MetalShrapA
	.word	3888
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_MetalShrapB
	.word	3888
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_MetalShrapC
	.word	3888
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnShrapssE7Marbels:
	.long	_s_Marbel
	.word	5096
	.word	5
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_GlassShrapA
	.word	3864
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_GlassShrapB
	.word	3864
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_GlassShrapC
	.word	3864
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnShrapssE8MetalMix:
	.long	_s_GlassShrapA
	.word	3864
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_GlassShrapB
	.word	3864
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_GlassShrapC
	.word	3864
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_MetalShrapA
	.word	3888
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_MetalShrapB
	.word	3888
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_MetalShrapC
	.word	3888
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnShrapssE9CoinShrap:
	.long	_s_CoinShrap
	.word	2530
	.word	5
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_MetalShrapA
	.word	3888
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_MetalShrapB
	.word	3888
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_MetalShrapC
	.word	3888
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnShrapssE10MetalShrap:
	.long	_s_MetalShrapA
	.word	3888
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_MetalShrapB
	.word	3888
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_MetalShrapC
	.word	3888
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnShrapssE10PaperShrap:
	.long	_s_PaperShrapA
	.word	3924
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_PaperShrapB
	.word	3924
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_PaperShrapC
	.word	3924
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnShrapssE9WoodShrap:
	.long	_s_WoodShrapA
	.word	3924
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_WoodShrapB
	.word	3924
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_WoodShrapC
	.word	3924
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnShrapssE10StoneShrap:
	.long	_s_StoneShrapA
	.word	3840
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_StoneShrapB
	.word	3840
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_StoneShrapC
	.word	3840
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
	.align 32
__ZZ10SpawnShrapssE10GlassShrap:
	.long	_s_GlassShrapA
	.word	3864
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_GlassShrapB
	.word	3864
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	_s_GlassShrapC
	.word	3864
	.word	1
	.word	1
	.word	200
	.word	600
	.word	100
	.word	500
	.word	1
	.word	2048
	.space 2
	.long	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.space 2
.lcomm __ZZ10SpawnShrapssE11CustomShrap,480,32
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__Z11RandomRangei;	.scl	2;	.type	32;	.endef
	.def	__Z12move_missilesiiiiiji;	.scl	2;	.type	32;	.endef
	.def	__Z18change_sprite_statss;	.scl	2;	.type	32;	.endef
	.def	__Z8SetOwnerss;	.scl	2;	.type	32;	.endef
	.def	__Z6DoJumps;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnSpritessP11STATEstructsiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z9PlaySoundiPiS_S_i;	.scl	2;	.type	32;	.endef
	.def	__Z13SpawnLargeExps;	.scl	2;	.type	32;	.endef
	.def	__Z14InitPhosphoruss.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z17InitVulcanBoulders;	.scl	2;	.type	32;	.endef
	.def	__Z10KillSprites;	.scl	2;	.type	32;	.endef
	.def	__Z15ShrapKillSprites;	.scl	2;	.type	32;	.endef
	.def	__Z15DoShrapVelocitys;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	__Z21UpdateSinglePlayKillss.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z15PlaySpriteSoundsii;	.scl	2;	.type	32;	.endef
	.def	__Z14InitBloodSprayshs.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z14ActorCoughItems.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z17DoBettyBeginDeaths;	.scl	2;	.type	32;	.endef
	.def	__Z17DoSkullBeginDeaths;	.scl	2;	.type	32;	.endef
	.def	__Z10DoActorDiess;	.scl	2;	.type	32;	.endef
	.def	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z19SpawnFireballFlamesss;	.scl	2;	.type	32;	.endef
	.def	__Z13NewStateGroupsPP11STATEstruct.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z12DoActorPauses;	.scl	2;	.type	32;	.endef
	.def	__Z13DoActorDecides;	.scl	2;	.type	32;	.endef
	.def	__Z18InitPlasmaFountainP12spritetypev7S0_;	.scl	2;	.type	32;	.endef
	.def	__Z17SpawnVehicleSmokes;	.scl	2;	.type	32;	.endef
	.def	__Z15VehicleSetSmokeP19SECTOR_OBJECTstructPFisE;	.scl	2;	.type	32;	.endef
	.def	__Z24KillMatchingCrackSpritess;	.scl	2;	.type	32;	.endef
	.def	__Z20CollapseSectorObjectP19SECTOR_OBJECTstructii;	.scl	2;	.type	32;	.endef
	.def	__Z19DoSpawnSpotsForKills;	.scl	2;	.type	32;	.endef
	.def	__Z23KillSectorObjectSpritesP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
	.def	__Z16DoPlayerBeginDieP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z18PlayerUpdateHealthP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	__Z20SpawnGoroFireballExps;	.scl	2;	.type	32;	.endef
	.def	__Z12SpawnBoltExps;	.scl	2;	.type	32;	.endef
	.def	__Z13SpawnBunnyExps;	.scl	2;	.type	32;	.endef
	.def	__Z12SpawnMineExps;	.scl	2;	.type	32;	.endef
	.def	__Z14SpawnTracerExps;	.scl	2;	.type	32;	.endef
	.def	__Z15SpawnNuclearExps;	.scl	2;	.type	32;	.endef
	.def	__Z16DoRipperRipHearts;	.scl	2;	.type	32;	.endef
	.def	__Z17DoRipper2RipHearts;	.scl	2;	.type	32;	.endef
	.def	__Z15DoBunnyRipHearts;	.scl	2;	.type	32;	.endef
	.def	__Z14SpawnMidSplashs;	.scl	2;	.type	32;	.endef
	.def	__Z6DoFalls;	.scl	2;	.type	32;	.endef
	.def	__Z17DoFindGroundPoints;	.scl	2;	.type	32;	.endef
	.def	__Z18MissileWaterAdjusts.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z24DetectSectorObjectByWallP10walltypev7;	.scl	2;	.type	32;	.endef
	.def	__Z21DoSpawnSpotsForDamages;	.scl	2;	.type	32;	.endef
	.def	__Z14HitBreakSpritess;	.scl	2;	.type	32;	.endef
	.def	_hitscan;	.scl	2;	.type	32;	.endef
	.def	__Z15ShootableSwitchs;	.scl	2;	.type	32;	.endef
	.def	__Z15MissileHitMatchsss;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnSplashs;	.scl	2;	.type	32;	.endef
	.def	__Z12HitBreakWallP10walltypev7iiiss.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z9FAFcanseeiiisiiis;	.scl	2;	.type	32;	.endef
	.def	__Z13SpriteOverlapss;	.scl	2;	.type	32;	.endef
	.def	__Z22SpawnBreakStaticFlamess;	.scl	2;	.type	32;	.endef
	.def	__Z17WallBreakPositionsPsPiS0_S0_S_;	.scl	2;	.type	32;	.endef
