	.file	"<artificial>"
	.text
	.p2align 4
	.def	__Z10ResCheatOnP12PLAYERstructPc;	.scl	3;	.type	32;	.endef
__Z10ResCheatOnP12PLAYERstructPc:
LFB0:
	.cfi_startproc
	movb	$1, _ResCheat
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.def	__Z12RestartCheatP12PLAYERstructPc;	.scl	3;	.type	32;	.endef
__Z12RestartCheatP12PLAYERstructPc:
LFB1:
	.cfi_startproc
	movb	$1, _ExitLevel
	ret
	.cfi_endproc
LFE1:
	.p2align 4
	.def	__Z9RoomCheatP12PLAYERstructPc;	.scl	3;	.type	32;	.endef
__Z9RoomCheatP12PLAYERstructPc:
LFB2:
	.cfi_startproc
	xorb	$1, _FAF_DebugView
	ret
	.cfi_endproc
LFE2:
	.p2align 4
	.def	__Z8LocCheatP12PLAYERstructPc;	.scl	3;	.type	32;	.endef
__Z8LocCheatP12PLAYERstructPc:
LFB3:
	.cfi_startproc
	movzbl	_LocationInfo, %eax
	xorl	%edx, %edx
	addl	$1, %eax
	cmpb	$3, %al
	cmovnb	%edx, %eax
	movb	%al, _LocationInfo
	ret
	.cfi_endproc
LFE3:
	.section .rdata,"dr"
LC0:
	.ascii "Pachinko Win Cheat Enabled\0"
LC1:
	.ascii "Pachinko Win Cheat Disabled\0"
	.text
	.p2align 4
	.globl	__Z15CON_WinPachinkov
	.def	__Z15CON_WinPachinkov;	.scl	2;	.type	32;	.endef
__Z15CON_WinPachinkov:
LFB4:
	.cfi_startproc
	cmpb	$0, _CommEnabled
	jne	L8
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	cmpb	$0, _Pachinko_Win_Cheat
	sete	_Pachinko_Win_Cheat
	jne	L10
	movl	$LC0, %edx
	jmp	__Z13PutStringInfoP12PLAYERstructPKc
	.p2align 4,,10
	.p2align 3
L10:
	movl	$LC1, %edx
	jmp	__Z13PutStringInfoP12PLAYERstructPKc
	.p2align 4,,10
	.p2align 3
L8:
	ret
	.cfi_endproc
LFE4:
	.section .rdata,"dr"
LC2:
	.ascii "Bunny rockets enabled!\0"
LC3:
	.ascii "Bunny rockets disabled!\0"
	.text
	.p2align 4
	.globl	__Z9CON_Bunnyv
	.def	__Z9CON_Bunnyv;	.scl	2;	.type	32;	.endef
__Z9CON_Bunnyv:
LFB5:
	.cfi_startproc
	cmpb	$0, _CommEnabled
	jne	L11
	imull	$24124, _myconnectindex, %eax
	cmpb	$0, _Player+24111(%eax)
	sete	_Player+24111(%eax)
	jne	L13
	movl	$LC2, %edx
	addl	$_Player, %eax
	jmp	__Z13PutStringInfoP12PLAYERstructPKc
	.p2align 4,,10
	.p2align 3
L13:
	movl	$LC3, %edx
	addl	$_Player, %eax
	jmp	__Z13PutStringInfoP12PLAYERstructPKc
	.p2align 4,,10
	.p2align 3
L11:
	ret
	.cfi_endproc
LFE5:
	.p2align 4
	.globl	__Z11CoolgCommons
	.def	__Z11CoolgCommons;	.scl	2;	.type	32;	.endef
__Z11CoolgCommons:
LFB6:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	_sprite, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movswl	16(%esp), %edx
	movl	$-1171354717, %ebx
	imull	$44, %edx, %eax
	movl	_User(,%edx,4), %edi
	leal	(%esi,%eax), %ecx
	addl	$18, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ecx), %edx
	movb	$50, 18(%ecx)
	subl	%esi, %edx
	movl	$268440576, 96(%edi)
	movl	8(%ecx), %eax
	movl	%eax, 256(%edi)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	%esi, %edx
	movb	$42, 20(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	42(%ecx), %edx
	subl	%esi, %edx
	movb	$42, 21(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$2048, 42(%ecx)
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
LFE6:
	.p2align 4
	.globl	__Z17DoCoolieWaitBirths
	.def	__Z17DoCoolieWaitBirths;	.scl	2;	.type	32;	.endef
__Z17DoCoolieWaitBirths:
LFB7:
	.cfi_startproc
	movswl	4(%esp), %ecx
	movl	_User(,%ecx,4), %edx
	movzwl	176(%edx), %eax
	subl	$6, %eax
	movw	%ax, 176(%edx)
	testw	%ax, %ax
	jle	L24
L17:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L24:
	movl	_User(,%ecx,4), %eax
	testl	%eax, %eax
	je	L17
	movl	$0, 76(%eax)
	movl	$_s_CoolieDie+144, 24(%eax)
	movl	$_s_CoolieDie+144, 16(%eax)
	movswl	_s_CoolieDie+144, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L17
	andl	$63, %eax
	movb	%al, 3(%edx)
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE7:
	.section .rdata,"dr"
LC4:
	.ascii "ON\0"
LC5:
	.ascii "OFF\0"
LC6:
	.ascii "GOD MODE %s\0"
	.text
	.p2align 4
	.def	__Z8GodCheatP12PLAYERstructPc;	.scl	3;	.type	32;	.endef
__Z8GodCheatP12PLAYERstructPc:
LFB9:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$LC4, %edx
	movl	$LC5, %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	xorl	$1, _GodMode
	movl	$LC6, 4(%esp)
	movl	20(%esp), %ebx
	movl	$_ds, (%esp)
	cmovne	%edx, %eax
	movl	%eax, 8(%esp)
	call	_sprintf
	addl	$12, %esp
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	movl	$_ds, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z13PutStringInfoP12PLAYERstructPKc
	.cfi_endproc
LFE9:
	.section .rdata,"dr"
LC7:
	.ascii "NO CLIP MODE %s\0"
	.text
	.p2align 4
	.def	__Z9ClipCheatP12PLAYERstructPc;	.scl	3;	.type	32;	.endef
__Z9ClipCheatP12PLAYERstructPc:
LFB11:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$LC4, %edx
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	movl	20(%esp), %ebx
	movl	22968(%ebx), %eax
	xorl	$16777216, %eax
	movl	%eax, 22968(%ebx)
	testl	$16777216, %eax
	movl	$LC5, %eax
	cmovne	%edx, %eax
	movl	$LC7, 4(%esp)
	movl	$_ds, (%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	addl	$12, %esp
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	movl	$_ds, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z13PutStringInfoP12PLAYERstructPKc
	.cfi_endproc
LFE11:
	.section .rdata,"dr"
LC8:
	.ascii "AUTOMAPPING %s\0"
	.text
	.p2align 4
	.def	__Z8MapCheatP12PLAYERstructPc;	.scl	3;	.type	32;	.endef
__Z8MapCheatP12PLAYERstructPc:
LFB12:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	xorl	$1, _automapping
	movl	20(%esp), %ebx
	je	L34
	xorl	%eax, %eax
	call	__Z11MapSetAll2Dh
	movl	$LC4, %eax
L35:
	movl	%eax, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	movl	$_ds, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z13PutStringInfoP12PLAYERstructPKc
	.p2align 4,,10
	.p2align 3
L34:
	.cfi_restore_state
	movl	$255, %eax
	call	__Z11MapSetAll2Dh
	movl	$LC5, %eax
	jmp	L35
	.cfi_endproc
LFE12:
	.p2align 4
	.def	__Z11WeaponCheatP12PLAYERstructPc.isra.0;	.scl	3;	.type	32;	.endef
__Z11WeaponCheatP12PLAYERstructPc.isra.0:
LFB14:
	.cfi_startproc
	movl	_connecthead, %eax
	cmpw	$-1, %ax
	je	L47
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movswl	%ax, %ebx
	.p2align 4
	.p2align 3
L42:
	imull	$24124, %ebx, %ecx
	movswl	_Player+348(%ecx), %eax
	leal	_Player(%ecx), %esi
	movl	_User(,%eax,4), %edi
	movl	22968(%esi), %eax
	testl	$524288, %eax
	jne	L39
	orl	$532480, %eax
	movl	%eax, 22968(%esi)
L39:
	movzbl	_SW_GameFlags, %eax
	andl	$1, %eax
	cmpb	$1, %al
	sbbl	%eax, %eax
	imull	$24124, %ebx, %edx
	orl	$8319, %eax
	movl	%eax, _Player+23012(%edx)
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L41:
	movl	%eax, %edx
	sall	$5, %edx
	movzwl	_DamageData+12(%edx), %edx
	movw	%dx, _Player+23016(%ecx,%eax,2)
	addl	$1, %eax
	cmpl	$14, %eax
	jne	L41
	movsbl	273(%edi), %edx
	movl	%esi, %eax
	call	__Z18PlayerUpdateWeaponP12PLAYERstructs
	movl	_connectpoint2(,%ebx,4), %eax
	movswl	%ax, %ebx
	cmpw	$-1, %ax
	jne	L42
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
L47:
	ret
	.cfi_endproc
LFE14:
	.section .rdata,"dr"
LC9:
	.ascii "ENTERING %1d\0"
	.text
	.p2align 4
	.def	__Z9WarpCheatP12PLAYERstructPc;	.scl	3;	.type	32;	.endef
__Z9WarpCheatP12PLAYERstructPc:
LFB15:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	movl	24(%esp), %eax
	movl	20(%esp), %ebx
	addl	$6, %eax
	movl	%eax, (%esp)
	call	_atol
	leal	-1(%eax), %edx
	testb	$1, _SW_GameFlags
	jne	L51
	cmpl	$27, %edx
	ja	L50
L53:
	movl	%eax, 8(%esp)
	movl	$LC9, 4(%esp)
	movl	$_ds, (%esp)
	movw	%ax, _Level
	movb	$1, _ExitLevel
	call	_sprintf
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	movl	$_ds, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z13PutStringInfoP12PLAYERstructPKc
	.p2align 4,,10
	.p2align 3
L51:
	.cfi_restore_state
	cmpl	$3, %edx
	jbe	L53
L50:
	addl	$12, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE15:
	.section .rdata,"dr"
LC10:
	.ascii "ITEMS\0"
	.text
	.p2align 4
	.def	__Z9ItemCheatP12PLAYERstructPc;	.scl	3;	.type	32;	.endef
__Z9ItemCheatP12PLAYERstructPc:
LFB16:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	$LC10, %edx
	movl	%esi, 4(%esp)
	.cfi_offset 6, -16
	movl	20(%esp), %esi
	movl	%esi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movl	_connecthead, %eax
	cmpw	$-1, %ax
	je	L56
	movl	%ebx, (%esp)
	movl	%ebp, 12(%esp)
	movl	%edi, 8(%esp)
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movswl	%ax, %edi
	.p2align 4
	.p2align 3
L58:
	imull	$24124, %edi, %ebp
	movl	$100, %ebx
	movl	$261, %eax
	movl	$_InventoryData+18, %edx
	movl	$16843009, _Player+22996(%ebp)
	movl	$16843009, _Player+23000(%ebp)
	movb	$50, _Player+24094(%ebp)
	movw	%bx, _Player+23258(%ebp)
	movw	%ax, _Player+23113(%ebp)
	xorl	%eax, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L57:
	movzbl	(%edx), %ebx
	movl	$100, %ecx
	addl	$28, %edx
	movw	%cx, _Player+23202(%ebp,%eax,2)
	movb	%bl, _Player+23216(%ebp,%eax)
	addl	$1, %eax
	cmpl	$7, %eax
	jne	L57
	imull	$24124, %edi, %eax
	movswl	_Player+23120(%eax), %edx
	leal	_Player(%ebp), %eax
	call	__Z21PlayerUpdateInventoryP12PLAYERstructs
	movl	_connectpoint2(,%edi,4), %eax
	movswl	%ax, %edi
	cmpw	$-1, %ax
	jne	L58
	movl	(%esp), %ebx
	.cfi_restore 3
	movl	8(%esp), %edi
	.cfi_restore 7
	movl	12(%esp), %ebp
	.cfi_restore 5
L56:
	movswl	_numsectors, %ecx
	testw	%cx, %cx
	jle	L59
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L61:
	movl	_SectUser(,%eax,4), %edx
	testl	%edx, %edx
	je	L60
	cmpw	$29, 12(%edx)
	jne	L60
	movw	$0, 22(%edx)
L60:
	addl	$1, %eax
	cmpl	%ecx, %eax
	jne	L61
L59:
	call	__Z11WeaponCheatP12PLAYERstructPc.isra.0
	movl	%esi, %eax
	movl	4(%esp), %esi
	addl	$16, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z16PlayerUpdateKeysP12PLAYERstruct
	.cfi_endproc
LFE16:
	.section .rdata,"dr"
LC12:
	.ascii "EVERY CHEAT %s\0"
	.text
	.p2align 4
	.globl	__Z16EveryCheatToggleP12PLAYERstructPc
	.def	__Z16EveryCheatToggleP12PLAYERstructPc;	.scl	2;	.type	32;	.endef
__Z16EveryCheatToggleP12PLAYERstructPc:
LFB17:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	$LC4, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	xorb	$1, _EveryCheat
	movl	28(%esp), %ebx
	movl	32(%esp), %edi
	call	__Z11WeaponCheatP12PLAYERstructPc.isra.0
	movl	_GodMode, %eax
	movl	$LC6, 4(%esp)
	movl	$_ds, (%esp)
	movl	%eax, %edx
	xorl	$1, %edx
	cmpl	$1, %eax
	movl	$LC5, %eax
	cmovne	%esi, %eax
	movl	%edx, _GodMode
	movl	%eax, 8(%esp)
	call	_sprintf
	movl	$_ds, %edx
	movl	%ebx, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z9ItemCheatP12PLAYERstructPc
	cmpb	$0, _EveryCheat
	movl	$LC5, %eax
	movl	$LC12, 4(%esp)
	cmovne	%esi, %eax
	movl	$_ds, (%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	addl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax
	movl	$_ds, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__Z13PutStringInfoP12PLAYERstructPKc
	.cfi_endproc
LFE17:
	.p2align 4
	.globl	__Z8NewCoolgs
	.def	__Z8NewCoolgs;	.scl	2;	.type	32;	.endef
__Z8NewCoolgs:
LFB18:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$_s_CoolgBirth, %ecx
	movl	$4277, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$40, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movswl	8(%ebp), %eax
	movl	_User(,%eax,4), %edi
	movl	140(%edi), %ebx
	movl	$50, 20(%esp)
	movswl	28(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	movl	$2, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %edx
	cwtl
	imull	$44, %eax, %esi
	movl	_User(,%eax,4), %ecx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	addl	%edx, %esi
	testl	%ecx, %ecx
	je	L76
	movswl	_s_CoolgBirth, %eax
	movl	$0, 76(%ecx)
	movl	$_s_CoolgBirth, 24(%ecx)
	movl	$_s_CoolgBirth, 16(%ecx)
	movzbl	_picanm+3(%eax,%eax,4), %edx
	movb	%dl, 36(%esp)
	shrb	$6, %dl
	je	L76
	movzbl	36(%esp), %edx
	andl	$63, %edx
	movb	%dl, _picanm+3(%eax,%eax,4)
L76:
	movl	$_s_CoolgDie, 28(%ecx)
	movl	$-1171354717, %edx
	movss	LC13, %xmm0
	movl	$_sg_CoolgRun, 20(%ecx)
	movzbl	262(%edi), %edi
	movl	$_CoolgAttrib, 36(%esp)
	movss	36(%esp), %xmm1
	addw	$1, _TotalKillable
	movl	%edi, %eax
	movb	%al, 262(%ecx)
	leal	17(%esi), %eax
	subl	32(%esp), %eax
	unpcklps	%xmm1, %xmm0
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%edi, %eax
	movb	%al, 17(%esi)
	movl	$_CoolgActionSet, 40(%ecx)
	movzbl	16(%ebx), %eax
	movb	%al, 16(%esi)
	movl	28(%esp), %eax
	movlps	%xmm0, 44(%ecx)
	movl	%eax, (%esp)
	call	__Z11CoolgCommons
	leal	-12(%ebp), %esp
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.p2align 4
	.globl	__Z19DoCoolgMatchPlayerZs
	.def	__Z19DoCoolgMatchPlayerZs;	.scl	2;	.type	32;	.endef
__Z19DoCoolgMatchPlayerZs:
LFB19:
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
	movl	_sprite, %eax
	movswl	32(%esp), %ebp
	movl	%eax, 4(%esp)
	imull	$44, %ebp, %esi
	movl	_User(,%ebp,4), %ebx
	movl	200(%ebx), %edi
	addl	%eax, %esi
	movzwl	12(%esi), %eax
	notl	%eax
	testw	$257, %ax
	je	L85
	movl	$105, %ecx
	movl	$1, %edx
	movl	%ebp, %eax
	call	__Z14InitBloodSprayshs.isra.0
	movl	$105, %ecx
	movl	$1, %edx
	movl	%ebp, %eax
	call	__Z14InitBloodSprayshs.isra.0
	cmpw	$1, _gNet+12
	je	L86
	movl	%ebp, %eax
	call	__Z21UpdateSinglePlayKillss.part.0
L86:
	movl	%ebp, (%esp)
	call	__Z10SetSuicides
	movl	_sprite, %eax
	movl	%eax, 4(%esp)
L85:
	movswl	14(%edi), %ebp
	movl	8(%edi), %eax
	movzbl	21(%edi), %edx
	movswl	_tilesiz+2(,%ebp,4), %ecx
	testb	$-128, 12(%edi)
	je	L87
	movsbl	_picanm+2(%ebp,%ebp,4), %edi
	sall	$8, %edi
	cmpb	$64, %dl
	je	L116
	imull	%ecx, %edx
	movl	%eax, %ebp
	addl	%edx, %edx
	leal	(%edx,%edi), %ecx
	subl	%ecx, %ebp
L89:
	subl	%edi, %edx
	addl	%edx, %eax
	jmp	L92
	.p2align 4,,10
	.p2align 3
L87:
	cmpb	$64, %dl
	je	L117
	imull	%ecx, %edx
	leal	0(,%edx,4), %ecx
L91:
	movl	%eax, %ebp
	subl	%ecx, %ebp
L92:
	leal	(%eax,%ebp), %edi
	movl	_randomseed, %eax
	movl	256(%ebx), %ecx
	sarl	%edi
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	subl	%ecx, %edi
	leal	1(%eax,%edx,4), %eax
	movl	$30464, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L93
	sall	$14, %eax
	movl	$1677747263, %ebp
	mull	%ebp
	shrl	$22, %edx
	addl	$20, %edx
	sall	$8, %edx
L93:
	movl	%edi, %eax
	negl	%eax
	cmovs	%edi, %eax
	cmpl	%edx, %eax
	jle	L94
	testl	%edi, %edi
	jle	L95
	addl	$1020, %ecx
	movl	%ecx, 256(%ebx)
L94:
	movl	120(%ebx), %edx
	movl	108(%ebx), %eax
	movl	104(%ebx), %ebp
	testl	%edx, %edx
	je	L98
	subl	_sector, %edx
	sarl	$3, %edx
	imull	$-858993459, %edx, %edx
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	je	L98
	movswl	10(%edx), %edx
	movl	%eax, %edi
	movw	%dx, 10(%esp)
	sall	$8, %edx
	subl	$2048, %edx
	subl	%edx, %edi
	cmpw	$0, 10(%esp)
	cmovne	%edi, %eax
L98:
	movswl	98(%ebx), %edx
	subl	%edx, %eax
	movl	128(%ebx), %edx
	leal	-2048(%eax), %edi
	testl	%edx, %edx
	cmovne	%eax, %edi
	cmpl	%ecx, %edi
	cmovg	%ecx, %edi
	movswl	96(%ebx), %ecx
	addl	%ebp, %ecx
	movl	124(%ebx), %ebp
	leal	2048(%ecx), %edx
	testl	%ebp, %ebp
	cmovne	%ecx, %edx
	cmpl	%edi, %edx
	cmovl	%edi, %edx
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	movzwl	176(%ebx), %ecx
	leal	48(%ecx), %edx
	movl	%eax, 256(%ebx)
	andl	$2047, %edx
	movw	%dx, 176(%ebx)
	movswl	_sintable(%edx,%edx), %ecx
	leal	8(%esi), %edx
	subl	4(%esp), %edx
	sarl	$3, %ecx
	addl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, 8(%esi)
	movswl	96(%ebx), %edi
	addl	104(%ebx), %edi
	leal	2048(%edi), %eax
	cmpl	%eax, %ecx
	jge	L101
	addl	$4096, %edi
	movl	%edi, 256(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, 8(%esi)
L101:
	addl	$12, %esp
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
L95:
	.cfi_restore_state
	subl	$1020, %ecx
	movl	%ecx, 256(%ebx)
	jmp	L94
	.p2align 4,,10
	.p2align 3
L116:
	sall	$7, %ecx
	movl	%eax, %ebp
	movl	%ecx, %edx
	leal	(%ecx,%edi), %ecx
	subl	%ecx, %ebp
	jmp	L89
	.p2align 4,,10
	.p2align 3
L117:
	sall	$8, %ecx
	jmp	L91
	.cfi_endproc
LFE19:
	.p2align 4
	.globl	__Z9NullCoolgs
	.def	__Z9NullCoolgs;	.scl	2;	.type	32;	.endef
__Z9NullCoolgs:
LFB22:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %ebx
	movl	_User(,%ebx,4), %eax
	subl	$6, 276(%eax)
	testb	$32, 70(%eax)
	jne	L124
L119:
	movl	%ebx, (%esp)
	call	__Z19DoCoolgMatchPlayerZs
	movl	%ebx, (%esp)
	call	__Z19DoActorSectorDamages
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L124:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	__Z12DoActorSlides
	jmp	L119
	.cfi_endproc
LFE22:
	.p2align 4
	.globl	__Z11DoCoolgPains
	.def	__Z11DoCoolgPains;	.scl	2;	.type	32;	.endef
__Z11DoCoolgPains:
LFB24:
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
	subl	$6, 276(%ebx)
	testb	$32, 70(%ebx)
	jne	L132
L126:
	movl	%esi, (%esp)
	call	__Z19DoCoolgMatchPlayerZs
	movl	%esi, (%esp)
	call	__Z19DoActorSectorDamages
	movzwl	216(%ebx), %eax
	subl	$6, %eax
	movw	%ax, 216(%ebx)
	testw	%ax, %ax
	jle	L133
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
L132:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z12DoActorSlides
	jmp	L126
	.p2align 4,,10
	.p2align 3
L133:
	movl	_User(,%esi,4), %eax
	movl	$__Z13DoActorDecides, 36(%eax)
	movl	%esi, 16(%esp)
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z13DoActorDecides
	.cfi_endproc
LFE24:
	.p2align 4
	.globl	__Z15InitCoolgCircles
	.def	__Z15InitCoolgCircles;	.scl	2;	.type	32;	.endef
__Z15InitCoolgCircles:
LFB26:
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
	movswl	32(%esp), %esi
	movl	_User(,%esi,4), %ebx
	imull	$44, %esi, %edi
	addl	_sprite, %edi
	movl	40(%ebx), %eax
	movl	$__Z13DoCoolgCircles, 36(%ebx)
	movl	4(%eax), %edx
	movl	%esi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	$3, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15DoActorSetSpeedsh
	leal	32(%edi), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	movl	$400, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 32(%edi)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	andl	$512, %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andw	$-266, %ax
	addw	$133, %ax
	movw	%ax, 178(%ebx)
	leal	(%edx,%edx,4), %eax
	leal	1(%edx,%eax,4), %edx
	movl	256(%ebx), %eax
	movzwl	%dx, %ecx
	movzbl	%dl, %edx
	movl	%eax, %edi
	subl	104(%ebx), %edi
	movl	%edi, %ebp
	negl	%ebp
	cmovs	%edi, %ebp
	subl	108(%ebx), %eax
	movl	%eax, %edi
	negl	%edi
	cmovs	%eax, %edi
	leal	400(%edx), %eax
	movw	%ax, 10(%esp)
	movl	$-400, %eax
	subl	%edx, %eax
	cmpl	%edi, %ebp
	cmovge	10(%esp), %ax
	movl	$360, %edx
	addl	$3, _krandcount
	movw	%ax, 92(%ebx)
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L138
	sall	$14, %eax
	movl	$-1073692671, %edx
	mull	%edx
	shrl	$28, %edx
	addl	$1, %edx
	imull	$120, %edx, %edx
L138:
	movw	%dx, 216(%ebx)
	movl	%esi, (%esp)
	call	*36(%ebx)
	addl	$12, %esp
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
	.cfi_endproc
LFE26:
	.p2align 4
	.globl	__Z16InitCoolieCharges
	.def	__Z16InitCoolieCharges;	.scl	2;	.type	32;	.endef
__Z16InitCoolieCharges:
LFB28:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	_randomseed, %eax
	addl	$1, _krandcount
	movl	%ebx, 8(%esp)
	movl	_sprite, %ecx
	leal	(%eax,%eax,4), %edx
	movl	%esi, 12(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movswl	28(%esp), %ebx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	andl	$1023, %eax
	movl	%edx, _randomseed
	cmpl	$950, %eax
	jg	L150
L145:
	movl	$3, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z15DoActorSetSpeedsh
	movl	_User(,%ebx,4), %esi
	movl	40(%esi), %eax
	movl	$__Z17DoActorMoveClosers, 36(%esi)
	movl	4(%eax), %edx
	movl	$__Z17DoActorMoveClosers, %eax
	cmpl	%edx, 20(%esi)
	je	L146
	movl	%ebx, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	36(%esi), %eax
L146:
	movl	%ebx, (%esp)
	call	*%eax
	movl	%ebx, %eax
	movl	$_sg_CoolieCharge, %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	xorl	%eax, %eax
	addl	$24, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L150:
	.cfi_restore_state
	imull	$44, %ebx, %esi
	movl	%edi, 16(%esp)
	movl	$-1171354717, %eax
	movl	%ebp, 20(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	leal	8(%ecx,%esi), %edi
	leal	4(%ecx,%esi), %ebp
	movl	%edi, %edx
	subl	%ecx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	%ecx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%esi
	movl	$76, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	(%esi,%ecx), %edx
	movl	%ebp, %ecx
	movl	%edi, (%esp)
	movl	$1, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	16(%esp), %edi
	.cfi_restore 7
	movl	20(%esp), %ebp
	.cfi_restore 5
	jmp	L145
	.cfi_endproc
LFE28:
	.p2align 4
	.globl	__Z13DoCoolgCircles
	.def	__Z13DoCoolgCircles;	.scl	2;	.type	32;	.endef
__Z13DoCoolgCircles:
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
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	_sprite, %eax
	movswl	24(%esp), %esi
	imull	$44, %esi, %edi
	movl	_User(,%esi,4), %ebx
	movzwl	178(%ebx), %ecx
	addl	%eax, %edi
	leal	28(%edi), %edx
	addw	28(%edi), %cx
	subl	%eax, %edx
	movl	$-1171354717, %eax
	andl	$2047, %ecx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	32(%edi), %eax
	movw	%cx, 28(%edi)
	movswl	_sintable(%ecx,%ecx), %edi
	addl	$512, %ecx
	andl	$2047, %ecx
	movswl	_sintable(%ecx,%ecx), %edx
	imull	%eax, %edi
	imull	%eax, %edx
	movl	%esi, %eax
	sarl	$14, %edi
	movl	%edi, %ecx
	sarl	$14, %edx
	call	__Z10move_actorsiii.constprop.0
	testl	%eax, %eax
	je	L156
	movswl	92(%ebx), %eax
	leal	0(,%eax,4), %edx
	subl	%edx, %eax
	movl	256(%ebx), %edx
	leal	(%edx,%eax,2), %edx
	movswl	96(%ebx), %eax
	addl	104(%ebx), %eax
	addl	$2048, %eax
	movl	%edx, 256(%ebx)
	cmpl	%eax, %edx
	jl	L157
	subw	$6, 216(%ebx)
	js	L158
L154:
	addl	$4, %esp
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
L157:
	.cfi_restore_state
	movl	%eax, 256(%ebx)
L156:
	movl	%esi, 24(%esp)
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
	jmp	__Z19InitActorRepositions
	.p2align 4,,10
	.p2align 3
L158:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z19InitActorRepositions
	xorl	%eax, %eax
	movw	%ax, 216(%ebx)
	jmp	L154
	.cfi_endproc
LFE30:
	.p2align 4
	.globl	__Z12DoCoolgDeaths
	.def	__Z12DoCoolgDeaths;	.scl	2;	.type	32;	.endef
__Z12DoCoolgDeaths:
LFB31:
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
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movl	_sprite, %ecx
	movswl	44(%esp), %edi
	imull	$44, %edi, %ebx
	movl	_User(,%edi,4), %esi
	addl	%ecx, %ebx
	leal	12(%ebx), %eax
	movl	%eax, %edx
	movl	%eax, 20(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-3, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	andw	$32767, 12(%ebx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	%ecx, %edx
	movb	$42, 20(%ebx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-10, 16(%ebx)
	testb	$64, 68(%esi)
	movl	%edi, (%esp)
	jne	L168
	call	__Z17DoFindGroundPoints
	xorl	%eax, %eax
	movl	$8, %ecx
	movw	%ax, 98(%esi)
	movl	_User(,%edi,4), %edx
	movl	68(%edx), %eax
	movw	%cx, 94(%edx)
	andl	$-33, %eax
	orl	$64, %eax
	movl	%eax, 68(%edx)
	movl	%edi, (%esp)
L168:
	call	__Z6DoFalls
	testb	$32, 70(%esi)
	jne	L169
L162:
	movswl	28(%ebx), %eax
	movswl	32(%ebx), %edx
	movswl	_sintable(%eax,%eax), %ecx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %ecx
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	imull	%edx, %eax
	sarl	$14, %ecx
	sarl	$14, %eax
	movl	%eax, %edx
	movswl	98(%esi), %eax
	movl	%eax, 8(%esp)
	movswl	96(%esi), %eax
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	call	__Z11move_spritesiiiiiji
	movl	%eax, 264(%esi)
	movl	%edi, (%esp)
	call	__Z17DoFindGroundPoints
	movl	8(%ebx), %eax
	cmpl	%eax, 108(%esi)
	jle	L170
	addl	$24, %esp
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
L169:
	.cfi_restore_state
	movl	%edi, (%esp)
	call	__Z12DoActorSlides
	jmp	L162
	.p2align 4,,10
	.p2align 3
L170:
	movl	20(%esp), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	andl	$-2097217, 68(%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-9, 12(%ebx)
	movl	40(%esi), %eax
	movl	56(%eax), %edx
	movl	%edi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	addl	$24, %esp
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
	.cfi_endproc
LFE31:
	.p2align 4
	.globl	__Z11DoCoolgMoves
	.def	__Z11DoCoolgMoves;	.scl	2;	.type	32;	.endef
__Z11DoCoolgMoves:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	_sprite, %ebp
	movswl	32(%esp), %edi
	movl	_User(,%edi,4), %esi
	imull	$44, %edi, %ebx
	movl	276(%esi), %eax
	movzwl	280(%esi), %edx
	addl	%ebp, %ebx
	subl	$6, %eax
	movl	%eax, 276(%esi)
	testl	%eax, %eax
	jle	L202
L172:
	cmpw	$1, %dx
	je	L203
	cmpw	$3, %dx
	jne	L187
	leal	40(%ebx), %edx
	subl	_sprite, %edx
	leal	20(%ebx), %ecx
	movl	$-1171354717, %ebp
	movl	%edx, %eax
	subl	_sprite, %ecx
	mull	%ebp
	movl	%ecx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 40(%ebx)
	mull	%ebp
	movl	%edx, %ecx
	leal	16(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	shrl	$5, %ecx
	mull	%ebp
	addl	$1, _spritechanged(,%ecx,4)
	addb	$1, 20(%ebx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	16(%ebx), %eax
	subl	$1, %eax
	movb	%al, 16(%ebx)
	cmpb	$42, 20(%ebx)
	jbe	L188
	addl	$1, _spritechanged(,%ecx,4)
	movzbl	16(%ebx), %eax
	movb	$42, 20(%ebx)
L188:
	cmpb	$-10, %al
	jl	L204
	.p2align 4
	.p2align 3
L186:
	testb	$32, 70(%esi)
	jne	L205
L189:
	cmpw	$0, 218(%esi)
	jns	L206
L190:
	movl	%edi, (%esp)
	call	*36(%esi)
L191:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	movl	%edx, _randomseed
	testl	$992, %eax
	jne	L192
	cmpw	$0, 12(%ebx)
	js	L192
	movl	%edi, (%esp)
	call	__Z13InitCoolgDrips
L192:
	movl	%edi, (%esp)
	call	__Z19DoCoolgMatchPlayerZs
	movl	%edi, (%esp)
	call	__Z19DoActorSectorDamages
	addl	$12, %esp
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
L203:
	.cfi_restore_state
	movl	_sprite, %ebp
L181:
	leal	20(%ebx), %ecx
	movl	$-1171354717, %eax
	subl	%ebp, %ecx
	mull	%ecx
	movl	$-1171354717, %eax
	movl	%edx, %ecx
	leal	16(%ebx), %edx
	subl	%ebp, %edx
	shrl	$5, %ecx
	mull	%edx
	addl	$1, _spritechanged(,%ecx,4)
	subb	$1, 20(%ebx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	16(%ebx), %eax
	addl	$1, %eax
	movb	%al, 16(%ebx)
	cmpb	$3, 20(%ebx)
	jbe	L207
L185:
	cmpb	$127, %al
	jne	L186
	addl	$1, _spritechanged(,%edx,4)
	leal	40(%ebx), %edx
	movl	$-1171354717, %eax
	movl	$9998, %ecx
	subl	%ebp, %edx
	movb	$127, 16(%ebx)
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 40(%ebx)
	testb	$32, 70(%esi)
	je	L189
	.p2align 4
	.p2align 3
L205:
	movl	%edi, (%esp)
	call	__Z12DoActorSlides
	cmpw	$0, 218(%esi)
	js	L190
L206:
	movl	%edi, %eax
	call	__Z16ActorFollowTrackss.constprop.0.isra.0
	jmp	L191
	.p2align 4,,10
	.p2align 3
L202:
	cmpw	$2, %dx
	je	L173
	jg	L174
	testw	%dx, %dx
	je	L175
	cmpw	$1, %dx
	jne	L177
	leal	8(%ebx), %eax
	leal	4(%ebx), %ecx
	movl	%eax, %edx
	movl	%eax, 8(%esp)
	movl	$-1171354717, %eax
	subl	%ebp, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	subl	%ebp, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%ebp, %edx
	mull	%edx
	movl	$213, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	8(%esp), %edx
	movl	$1, 4(%esp)
	movl	%edx, (%esp)
	movl	%ebx, %edx
	call	__Z9PlaySoundiPiS_S_i
	movl	$-1171354717, %eax
	leal	12(%ebx), %edx
	subl	_sprite, %edx
	mull	%edx
	movl	_randomseed, %eax
	addl	$1, _krandcount
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-3, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	orw	$-32768, 12(%ebx)
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L179
	sall	$14, %eax
	movl	$-2147450879, %edx
	mull	%edx
	shrl	$28, %edx
	leal	1(%edx), %ecx
	imull	$120, %ecx, %ecx
	.p2align 4
	.p2align 3
L180:
	movzwl	280(%esi), %eax
	movl	%ecx, 276(%esi)
	leal	1(%eax), %edx
	cmpw	$3, %dx
	jle	L208
	xorl	%ebp, %ebp
	movw	%bp, 280(%esi)
L183:
	movl	_sprite, %ebp
	leal	20(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	%ebp, %edx
	movb	$42, 20(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	40(%ebx), %edx
	subl	%ebp, %edx
	movb	$-10, 16(%ebx)
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 40(%ebx)
	jmp	L186
	.p2align 4,,10
	.p2align 3
L187:
	testw	%dx, %dx
	jne	L186
	jmp	L183
	.p2align 4,,10
	.p2align 3
L207:
	addl	$1, _spritechanged(,%ecx,4)
	movzbl	16(%ebx), %eax
	movb	$4, 20(%ebx)
	jmp	L185
	.p2align 4,,10
	.p2align 3
L204:
	addl	$1, _spritechanged(,%edx,4)
	movb	$-10, 16(%ebx)
	jmp	L186
	.p2align 4,,10
	.p2align 3
L175:
	leal	12(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ebp, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$2, 12(%ebx)
L179:
	movl	$240, %ecx
	jmp	L180
	.p2align 4,,10
	.p2align 3
L208:
	movw	%dx, 280(%esi)
	jmp	L172
	.p2align 4,,10
	.p2align 3
L174:
	cmpw	$3, %dx
	jne	L177
	leal	8(%ebx), %eax
	leal	4(%ebx), %ecx
	movl	%eax, %edx
	movl	%eax, 8(%esp)
	movl	$-1171354717, %eax
	subl	%ebp, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	subl	%ebp, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%ebp, %edx
	mull	%edx
	movl	$213, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	8(%esp), %edx
	movl	$1, 4(%esp)
	movl	%edx, (%esp)
	movl	%ebx, %edx
	call	__Z9PlaySoundiPiS_S_i
	movl	$-1171354717, %eax
	leal	12(%ebx), %edx
	subl	_sprite, %edx
	mull	%edx
	movl	_randomseed, %eax
	addl	$1, _krandcount
	movl	$480, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-3, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	andw	$32767, 12(%ebx)
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L180
	sall	$14, %eax
	movl	$-1073692671, %edx
	mull	%edx
	shrl	$28, %edx
	imull	$120, %edx, %edx
	leal	240(%edx), %ecx
	jmp	L180
	.p2align 4,,10
	.p2align 3
L177:
	movl	$1, %eax
	movw	%ax, 280(%esi)
	jmp	L181
	.p2align 4,,10
	.p2align 3
L173:
	leal	12(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ebp, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$2, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	andw	$32767, 12(%ebx)
	jmp	L179
	.cfi_endproc
LFE33:
	.p2align 4
	.globl	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	.def	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct;	.scl	2;	.type	32;	.endef
__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct:
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
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	_sprite, %edi
	movswl	28(%esp), %ebp
	movl	_User(,%ebp,4), %esi
	imull	$44, %ebp, %ebx
	movzwl	82(%esi), %eax
	addl	%edi, %ebx
	cmpw	$4604, %ax
	jg	L210
	cmpw	$4589, %ax
	jg	L211
	cmpw	$2540, %ax
	je	L212
	cmpw	$4550, %ax
	je	L212
	cmpw	$623, %ax
	je	L212
L213:
	addw	$1, _TotalKillable
L212:
	leal	12(%ebx), %ecx
	movl	$-1171354717, %eax
	subl	%edi, %ecx
	mull	%ecx
	movl	%edx, %ecx
	leal	18(%ebx), %edx
	shrl	$5, %ecx
	subl	%edi, %edx
	addl	$1, _spritechanged(,%ecx,4)
	movzbl	17(%ebx), %eax
	andw	$-4097, 12(%ebx)
	movb	%al, 262(%esi)
	movl	$5, %eax
	movw	%ax, 80(%esi)
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$64, 18(%ebx)
	movl	$12288, 112(%esi)
	movl	$536875008, 98(%esi)
	movswl	14(%ebx), %eax
	movzbl	21(%ebx), %edx
	movzwl	_tilesiz+2(,%eax,4), %eax
	cmpb	$64, %dl
	je	L279
	imull	%edx, %eax
	sall	$2, %eax
L216:
	subw	$12288, %ax
	leal	42(%ebx), %edx
	movl	$400, 188(%esi)
	movw	%ax, 96(%esi)
	movzwl	84(%esi), %eax
	subl	%edi, %edx
	movw	%ax, 86(%esi)
	sarw	$4, %ax
	subl	$1, %eax
	movw	%ax, 90(%esi)
	movl	%edx, %eax
	addl	$1, _spritechanged(,%ecx,4)
	movl	$-1171354717, %ecx
	mull	%ecx
	orw	$257, 12(%ebx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	14(%ebx), %edx
	orw	$2048, 42(%ebx)
	movl	16(%esi), %eax
	subl	%edi, %edx
	movzwl	(%eax), %eax
	movw	%ax, 6(%esp)
	movl	%edx, %eax
	mull	%ecx
	movzwl	6(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$2, %edx
	movw	%ax, 14(%ebx)
	movl	%ebp, %eax
	call	__Z18change_sprite_statss
	movl	36(%esp), %eax
	movl	%eax, 44(%esi)
	movl	32(%esp), %eax
	movl	%eax, 40(%esi)
	movl	%ebp, (%esp)
	call	__Z13DoActorZranges
	movl	120(%esi), %edx
	testl	%edx, %edx
	je	L217
	movl	%edx, %eax
	subl	_sector, %eax
	sarl	$3, %eax
	imull	$-858993459, %eax, %eax
	cwtl
	movl	_SectUser(,%eax,4), %ecx
	testl	%ecx, %ecx
	je	L218
	testb	$1, 38(%edx)
	je	L218
	movswl	10(%ecx), %ecx
L219:
	testw	%cx, %cx
	je	L217
	movl	8(%ebx), %eax
	subl	108(%esi), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	cmpl	$2047, %eax
	jle	L280
	.p2align 4
	.p2align 3
L217:
	movl	32(%esp), %ebx
	testl	%ebx, %ebx
	je	L209
	movl	40(%esi), %eax
	movl	4(%eax), %edx
	movl	%ebp, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	$__Z13DoActorDecides, 36(%esi)
	movl	40(%esi), %edx
	xorl	%eax, %eax
L226:
	movl	80(%edx,%eax,4), %ecx
	testl	%ecx, %ecx
	je	L227
	addl	$1, %eax
	cmpl	$6, %eax
	jne	L226
L227:
	movb	%al, 273(%esi)
L209:
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
L211:
	.cfi_restore_state
	subw	$4590, %ax
	movl	$17425, %edx
	btl	%eax, %edx
	jnc	L213
	jmp	L212
	.p2align 4,,10
	.p2align 3
L218:
	movzwl	_headspritesect(%eax,%eax), %edx
	cmpw	$-1, %dx
	je	L217
	movl	_sprite, %edi
	xorl	%ecx, %ecx
	jmp	L220
	.p2align 5
	.p2align 4,,10
	.p2align 3
L223:
	cmpw	$-1, %dx
	je	L219
L220:
	movswl	%dx, %eax
	movzwl	_nextspritesect(%eax,%eax), %edx
	imull	$44, %eax, %eax
	addl	%edi, %eax
	cmpw	$2307, 14(%eax)
	jne	L223
	cmpw	$0, 40(%eax)
	jne	L223
	movswl	38(%eax), %ecx
	jmp	L223
	.p2align 4,,10
	.p2align 3
L210:
	cmpw	$4840, %ax
	je	L212
	jg	L214
	cmpw	$4792, %ax
	je	L212
	cmpw	$4816, %ax
	je	L212
	cmpw	$4768, %ax
	jne	L213
	jmp	L212
	.p2align 4,,10
	.p2align 3
L279:
	sall	$8, %eax
	jmp	L216
	.p2align 4,,10
	.p2align 3
L280:
	leal	8(%ebx), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	sall	$8, %ecx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	8(%ebx), %ecx
	movl	%ecx, 8(%ebx)
	movl	%ecx, 108(%esi)
	movl	%ecx, 64(%esi)
	jmp	L217
	.p2align 4,,10
	.p2align 3
L214:
	cmpw	$5023, %ax
	je	L212
	cmpw	$5032, %ax
	jne	L213
	jmp	L212
	.cfi_endproc
LFE34:
	.p2align 4
	.globl	__Z10SetupCoolgs
	.def	__Z10SetupCoolgs;	.scl	2;	.type	32;	.endef
__Z10SetupCoolgs:
LFB35:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$12, %esp
	.cfi_def_cfa_offset 24
	movswl	24(%esp), %esi
	imull	$44, %esi, %eax
	addl	_sprite, %eax
	testb	$16, 13(%eax)
	je	L282
	movl	_User(,%esi,4), %ebx
	movl	%ebx, %eax
L283:
	testl	%eax, %eax
	je	L284
	movl	$0, 76(%eax)
	movl	$_s_CoolgRun, 24(%eax)
	movl	$_s_CoolgRun, 16(%eax)
	movswl	_s_CoolgRun, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L284
	andl	$63, %eax
	movb	%al, 3(%edx)
L284:
	movl	$_CoolgAttrib, 48(%ebx)
	movl	%esi, (%esp)
	movl	$1, 4(%esp)
	call	__Z15DoActorSetSpeedsh
	movl	$_s_CoolgDie, 28(%ebx)
	movl	$_sg_CoolgRun, 20(%ebx)
	movl	%esi, (%esp)
	movl	$_CoolgPersonality, 8(%esp)
	movl	$_CoolgActionSet, 4(%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	orl	$50331648, 68(%ebx)
	movl	%esi, (%esp)
	call	__Z11CoolgCommons
	addl	$12, %esp
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
L282:
	.cfi_restore_state
	movl	$_s_CoolgRun, %ecx
	movl	$4277, %edx
	movl	%esi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%eax, _User(,%esi,4)
	movl	%eax, %ebx
	movl	$65, %eax
	movw	%ax, 84(%ebx)
	movl	_User(,%esi,4), %eax
	jmp	L283
	.cfi_endproc
LFE35:
	.p2align 4
	.globl	__Z12DoCoolgBirths
	.def	__Z12DoCoolgBirths;	.scl	2;	.type	32;	.endef
__Z12DoCoolgBirths:
LFB36:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	$65, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$12, %esp
	.cfi_def_cfa_offset 24
	movswl	24(%esp), %esi
	movl	_User(,%esi,4), %ebx
	movw	%ax, 84(%ebx)
	movl	$_CoolgAttrib, 48(%ebx)
	movl	$1, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15DoActorSetSpeedsh
	movl	_User(,%esi,4), %eax
	testl	%eax, %eax
	je	L293
	movl	$0, 76(%eax)
	movl	$_s_CoolgRun, 24(%eax)
	movl	$_s_CoolgRun, 16(%eax)
	movswl	_s_CoolgRun, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L293
	andl	$63, %eax
	movb	%al, 3(%edx)
L293:
	movl	$_s_CoolgDie, 28(%ebx)
	movl	$_sg_CoolgRun, 20(%ebx)
	movl	%esi, (%esp)
	movl	$_CoolgPersonality, 8(%esp)
	movl	$_CoolgActionSet, 4(%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	orl	$50331648, 68(%ebx)
	movl	%esi, (%esp)
	subw	$1, _TotalKillable
	call	__Z11CoolgCommons
	addl	$12, %esp
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
LFE36:
	.p2align 4
	.globl	__Z11SetupCoolies
	.def	__Z11SetupCoolies;	.scl	2;	.type	32;	.endef
__Z11SetupCoolies:
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
	je	L302
	movl	_User(,%edi,4), %esi
	movl	%esi, %eax
L303:
	testl	%eax, %eax
	je	L304
	movl	$0, 76(%eax)
	movl	$_s_CoolieRun, 24(%eax)
	movl	$_s_CoolieRun, 16(%eax)
	movswl	_s_CoolieRun, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L304
	andl	$63, %eax
	movb	%al, 3(%edx)
L304:
	movl	$_CoolieAttrib, 48(%esi)
	movl	%edi, (%esp)
	movl	$1, 4(%esp)
	call	__Z15DoActorSetSpeedsh
	movl	$_s_CoolieDie, 28(%esi)
	movl	$_sg_CoolieRun, 20(%esi)
	movl	%edi, (%esp)
	movl	$_CooliePersonality, 8(%esp)
	movl	$_CoolieActionSet, 4(%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	movl	_sprite, %edi
	leal	20(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%edi, %edx
	movb	$42, 20(%ebx)
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$42, 21(%ebx)
	orl	$16777216, 68(%esi)
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
L302:
	.cfi_restore_state
	movl	$_s_CoolieRun, %ecx
	movl	$1400, %edx
	movl	%edi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%eax, _User(,%edi,4)
	movl	%eax, %esi
	movl	$120, %eax
	movw	%ax, 84(%esi)
	movl	_User(,%edi,4), %eax
	jmp	L303
	.cfi_endproc
LFE37:
	.p2align 4
	.globl	__Z10SpawnCoolgs
	.def	__Z10SpawnCoolgs;	.scl	2;	.type	32;	.endef
__Z10SpawnCoolgs:
LFB38:
	.cfi_startproc
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L318
	sall	$14, %eax
	cmpl	$752681224, %eax
	ja	L318
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %ebx
	movl	%ebx, (%esp)
	call	__Z8NewCoolgs
	movl	%ebx, %eax
	movl	$1, %ecx
	movl	$5, %edx
	call	__Z15PlaySpriteSoundsii
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L318:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE38:
	.p2align 4
	.globl	__Z10CooliePains
	.def	__Z10CooliePains;	.scl	2;	.type	32;	.endef
__Z10CooliePains:
LFB40:
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
	jne	L329
	testb	$-128, %al
	je	L330
L323:
	movl	%esi, (%esp)
	call	__Z19DoActorSectorDamages
	movzwl	216(%ebx), %eax
	subl	$6, %eax
	movw	%ax, 216(%ebx)
	testw	%ax, %ax
	jle	L331
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
L329:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z12DoActorSlides
	movl	68(%ebx), %eax
	testb	$-128, %al
	jne	L323
L330:
	movl	%esi, (%esp)
	call	__Z16KeepActorOnFloors
	jmp	L323
	.p2align 4,,10
	.p2align 3
L331:
	movl	_User(,%esi,4), %eax
	movl	$__Z13DoActorDecides, 36(%eax)
	movl	%esi, 16(%esp)
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z13DoActorDecides
	.cfi_endproc
LFE40:
	.p2align 4
	.globl	__Z10NullCoolies
	.def	__Z10NullCoolies;	.scl	2;	.type	32;	.endef
__Z10NullCoolies:
LFB41:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %ebx
	movl	_User(,%ebx,4), %edx
	movl	68(%edx), %eax
	testl	$2097152, %eax
	jne	L339
	testb	$-128, %al
	je	L340
L334:
	movl	%ebx, (%esp)
	call	__Z19DoActorSectorDamages
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
L339:
	.cfi_restore_state
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	__Z12DoActorSlides
	movl	4(%esp), %edx
	movl	68(%edx), %eax
	testb	$-128, %al
	jne	L334
L340:
	movl	%ebx, (%esp)
	call	__Z16KeepActorOnFloors
	movl	%ebx, (%esp)
	call	__Z19DoActorSectorDamages
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
	.globl	__Z12DoCoolieMoves
	.def	__Z12DoCoolieMoves;	.scl	2;	.type	32;	.endef
__Z12DoCoolieMoves:
LFB42:
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
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	_sprite, %edi
	movswl	24(%esp), %ebx
	movl	_User(,%ebx,4), %esi
	testb	$32, 70(%esi)
	jne	L351
L342:
	cmpw	$0, 218(%esi)
	jns	L352
	movl	%ebx, (%esp)
	call	*36(%esi)
L344:
	movl	%ebx, (%esp)
	call	__Z16KeepActorOnFloors
	movl	%ebx, (%esp)
	call	__Z19DoActorSectorDamages
	testl	%eax, %eax
	je	L353
L345:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
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
L353:
	.cfi_restore_state
	imull	$44, %ebx, %eax
	movl	200(%esi), %ecx
	movl	(%ecx), %edx
	movl	4(%ecx), %ecx
	addl	%eax, %edi
	subl	(%edi), %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	subl	4(%edi), %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovs	%ecx, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %ecx
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ecx
	cmpl	$1199, %ecx
	jg	L345
	cmpw	$1, _gNet+12
	je	L346
	movl	%ebx, %eax
	call	__Z21UpdateSinglePlayKillss.part.0
L346:
	movl	%ebx, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z10DoActorDiess
	jmp	L345
	.p2align 4,,10
	.p2align 3
L352:
	movl	%ebx, %eax
	call	__Z16ActorFollowTrackss.constprop.0.isra.0
	jmp	L344
	.p2align 4,,10
	.p2align 3
L351:
	movl	%ebx, (%esp)
	call	__Z12DoActorSlides
	jmp	L342
	.cfi_endproc
LFE42:
	.p2align 4
	.def	__Z16DemoSyncFileNamev;	.scl	3;	.type	32;	.endef
__Z16DemoSyncFileNamev:
LFB44:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	$_DemoFileName, 4(%esp)
	movl	$__ZZ16DemoSyncFileNamevE9file_name, (%esp)
	call	_strcpy
	movl	$46, 4(%esp)
	movl	$__ZZ16DemoSyncFileNamevE9file_name, (%esp)
	call	_strchr
	testl	%eax, %eax
	je	L358
	movb	$0, (%eax)
L358:
	movl	$__ZZ16DemoSyncFileNamevE9file_name, (%esp)
	call	_strlen
	movl	$1936548910, __ZZ16DemoSyncFileNamevE9file_name(%eax)
	movb	$0, __ZZ16DemoSyncFileNamevE9file_name+4(%eax)
	movl	$__ZZ16DemoSyncFileNamevE9file_name, %eax
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE44:
	.section .rdata,"dr"
LC14:
	.ascii "rb\0"
LC15:
	.ascii "wb\0"
	.text
	.p2align 4
	.def	__ZL16DemoAutoCopyFilePKcS0_;	.scl	3;	.type	32;	.endef
__ZL16DemoAutoCopyFilePKcS0_:
LFB46:
	.cfi_startproc
	pushl	%eax
	.cfi_def_cfa_offset 8
	movl	$4124, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	.cfi_def_cfa_offset 4132
	movl	(%esp,%eax), %eax
	movl	$LC14, 4(%esp)
	movl	%eax, (%esp)
	movl	%ebx, 4112(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	call	_fopen
	testl	%eax, %eax
	je	L360
	movl	$LC15, 4(%esp)
	movl	%ebx, (%esp)
	movl	%esi, 4116(%esp)
	.cfi_offset 6, -16
	leal	16(%esp), %esi
	movl	%edi, 4120(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	%ebp, 4124(%esp)
	.cfi_offset 5, -8
	call	_fopen
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	L361
	jmp	L372
	.p2align 4,,10
	.p2align 3
L364:
	movl	%ebp, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$1, 4(%esp)
	movl	%esi, (%esp)
	call	_fwrite
	cmpl	%ebx, %eax
	jne	L365
L361:
	movl	%edi, 12(%esp)
	movl	$4096, 8(%esp)
	movl	$1, 4(%esp)
	movl	%esi, (%esp)
	call	_fread
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L364
	movl	$1, %ebx
L363:
	movl	%edi, (%esp)
	call	_ferror
	movl	%edi, (%esp)
	movl	%eax, %esi
	call	_fclose
	movl	%ebp, (%esp)
	orl	%eax, %esi
	call	_fclose
	movl	4120(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	4124(%esp), %ebp
	.cfi_restore 5
	orl	%eax, %esi
	movl	4116(%esp), %esi
	.cfi_restore 6
	sete	%al
	andl	%ebx, %eax
	movl	4112(%esp), %ebx
	addl	$4128, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L372:
	.cfi_restore_state
	movl	%edi, (%esp)
	call	_fclose
	movl	4116(%esp), %esi
	.cfi_restore 6
	movl	4120(%esp), %edi
	.cfi_restore 7
	movl	4124(%esp), %ebp
	.cfi_restore 5
L360:
	movl	4112(%esp), %ebx
	xorl	%eax, %eax
	addl	$4128, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L365:
	.cfi_def_cfa_offset 4132
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	xorl	%ebx, %ebx
	jmp	L363
	.cfi_endproc
LFE46:
	.p2align 4
	.globl	__Z10DoTheCachev
	.def	__Z10DoTheCachev;	.scl	2;	.type	32;	.endef
__Z10DoTheCachev:
LFB47:
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
	movswl	_headspritestat+136, %ebx
	cmpl	$-1, %ebx
	je	L374
	.p2align 4
	.p2align 3
L375:
	imull	$44, %ebx, %eax
	addl	_sprite, %eax
	movswl	_nextspritestat(%ebx,%ebx), %ebx
	movswl	38(%eax), %eax
	leal	(%eax,%eax,2), %eax
	movswl	_ambarray+2(,%eax,4), %eax
	call	__Z10CacheSoundii.isra.0
	cmpl	$-1, %ebx
	jne	L375
L374:
	movswl	_headspritestat+130, %ebx
	movl	$-1171354717, %esi
	cmpl	$-1, %ebx
	jne	L376
	jmp	L377
	.p2align 4,,10
	.p2align 3
L382:
	movswl	32(%edi), %eax
	leal	-1(%eax), %edx
	cmpl	$624, %edx
	jbe	L564
L378:
	movswl	34(%edi), %edi
	leal	-1(%edi), %eax
	cmpl	$624, %eax
	jbe	L565
L379:
	movl	%edi, %eax
	call	__Z10CacheSoundii.isra.0
	cmpl	$-1, %ebx
	je	L377
L376:
	imull	$44, %ebx, %eax
	movl	_sprite, %edi
	movswl	_nextspritestat(%ebx,%ebx), %ebx
	addl	%eax, %edi
	addl	$22, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	22(%edi), %eax
	leal	-1(%eax), %edx
	cmpl	$624, %edx
	ja	L382
	call	__Z10CacheSoundii.isra.0
	movswl	32(%edi), %eax
	leal	-1(%eax), %edx
	cmpl	$624, %edx
	ja	L378
L564:
	call	__Z10CacheSoundii.isra.0
	movswl	34(%edi), %edi
	leal	-1(%edi), %eax
	cmpl	$624, %eax
	ja	L379
L565:
	movl	%edi, %eax
	call	__Z10CacheSoundii.isra.0
	movl	%edi, %eax
	call	__Z10CacheSoundii.isra.0
	cmpl	$-1, %ebx
	jne	L376
L377:
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	jmp	L380
	.p2align 4,,10
	.p2align 3
L568:
	cmpw	$1367, %ax
	je	L388
	jg	L389
	cmpw	$820, %ax
	je	L390
	jg	L391
	cmpw	$800, %ax
	je	L392
	cmpw	$817, %ax
	jne	L566
	orb	$14, _gotpic+102
	.p2align 5
	.p2align 4
	.p2align 3
L383:
	addl	$1, %ebx
	addl	$44, %esi
	cmpl	$16384, %ebx
	je	L567
L380:
	movl	_sprite, %eax
	addl	%esi, %eax
	cmpw	$1023, 26(%eax)
	jg	L383
	movl	_User(,%ebx,4), %edx
	testl	%edx, %edx
	je	L384
	movzwl	82(%edx), %eax
	cmpw	$4096, %ax
	je	L386
L572:
	jle	L568
	cmpw	$4600, %ax
	je	L404
	jle	L569
	cmpw	$5032, %ax
	je	L411
	jg	L412
	cmpw	$4816, %ax
	je	L394
	jg	L413
	movl	$_Toilet_SCTable, %edi
	cmpw	$4604, %ax
	jne	L570
	.p2align 4
	.p2align 3
L440:
	movswl	(%edi), %eax
	addl	$2, %edi
	call	__Z10CacheSoundii.isra.0
	cmpl	$_Toilet_SCTable+18, %edi
	jne	L440
	addl	$1, %ebx
	orb	$16, _gotpic+575
	addl	$44, %esi
	cmpl	$16384, %ebx
	jne	L380
L567:
	movswl	_headspritestat+104, %ecx
	movl	_sprite, %ebx
	cmpl	$-1, %ecx
	je	L464
	.p2align 6
	.p2align 4
	.p2align 3
L463:
	imull	$44, %ecx, %eax
	movswl	_nextspritestat(%ecx,%ecx), %ecx
	movswl	38(%ebx,%eax), %eax
	movl	%eax, %edx
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.1(%edx), %edx
	orb	%dl, _gotpic(%eax)
	cmpl	$-1, %ecx
	jne	L463
L464:
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	jmp	L462
	.p2align 6
	.p2align 4,,10
	.p2align 3
L466:
	addl	$1, %ebx
	cmpl	$30720, %ebx
	je	L571
L462:
	movl	%ebx, %eax
	sarl	$3, %eax
	movzbl	_gotpic(%eax), %edx
	movl	%ebx, %eax
	andl	$7, %eax
	btl	%eax, %edx
	jnc	L466
	movl	_waloff(,%ebx,4), %eax
	testl	%eax, %eax
	jne	L466
	movswl	%bx, %eax
	addl	$1, %esi
	call	_tileLoad.isra.0
	testl	$7, %esi
	jne	L466
	call	_handleevents.isra.0
	addl	$1, %ebx
	call	__Z10getpacketsv
	cmpl	$30720, %ebx
	jne	L462
L571:
	movl	$3840, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_gotpic, (%esp)
	call	_memset
	movl	$_LevelName, 4(%esp)
	movl	$_CacheLastLevel, (%esp)
	call	_strcpy
	addl	$12, %esp
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
L384:
	.cfi_restore_state
	movzwl	14(%eax), %eax
	cmpw	$4096, %ax
	jne	L572
	.p2align 4
	.p2align 3
L386:
	movl	$_Ninja_SCTable, %edi
	.p2align 4
	.p2align 3
L424:
	movswl	(%edi), %eax
	addl	$2, %edi
	call	__Z10CacheSoundii.isra.0
	cmpl	$_Ninja_SCTable+20, %edi
	jne	L424
	orb	$1, _gotpic+512
	movl	$4097, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L425:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$4240, %eax
	jne	L425
	jmp	L383
	.p2align 4,,10
	.p2align 3
L389:
	cmpw	$1580, %ax
	je	L397
	jg	L398
	cmpw	$1441, %ax
	je	L399
	cmpw	$1469, %ax
	je	L400
	movl	$_Ghost_SCTable, %edi
	cmpw	$1400, %ax
	jne	L383
	.p2align 4
	.p2align 3
L419:
	movswl	(%edi), %eax
	addl	$2, %edi
	call	__Z10CacheSoundii.isra.0
	cmpl	$_Ghost_SCTable+18, %edi
	jne	L419
	orb	$32, _gotpic+534
	movl	$4278, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L420:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$4313, %eax
	jne	L420
	movl	$_Coolie_SCTable, %ebp
	movl	$_Coolie_SCTable+10, %edi
	.p2align 4
	.p2align 3
L421:
	movswl	0(%ebp), %eax
	addl	$2, %ebp
	call	__Z10CacheSoundii.isra.0
	cmpl	%ebp, %edi
	jne	L421
	orb	$1, _gotpic+175
	movl	$1401, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L422:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$1441, %eax
	jne	L422
	orb	$16, _gotpic+532
	movl	$4261, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L423:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$4277, %eax
	jne	L423
	jmp	L383
	.p2align 4,,10
	.p2align 3
L569:
	cmpw	$4550, %ax
	je	L406
	jg	L407
	cmpw	$4277, %ax
	je	L399
	movl	$_Ripper2_SCTable, %edi
	cmpw	$4320, %ax
	jne	L573
	.p2align 4
	.p2align 3
L445:
	movswl	(%edi), %eax
	addl	$2, %edi
	call	__Z10CacheSoundii.isra.0
	cmpl	$_Ripper2_SCTable+14, %edi
	jne	L445
	orb	$1, _gotpic+540
	movl	$4321, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L446:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$4428, %eax
	jne	L446
	jmp	L383
	.p2align 4,,10
	.p2align 3
L407:
	movl	$_Toilet_SCTable, %edi
	cmpw	$4590, %ax
	je	L438
	cmpw	$4594, %ax
	jne	L383
	.p2align 4
	.p2align 3
L437:
	movswl	(%edi), %eax
	addl	$2, %edi
	call	__Z10CacheSoundii.isra.0
	cmpl	$_Toilet_SCTable+18, %edi
	jne	L437
	orb	$60, _gotpic+574
	jmp	L383
	.p2align 4,,10
	.p2align 3
L438:
	movswl	(%edi), %eax
	addl	$2, %edi
	call	__Z10CacheSoundii.isra.0
	cmpl	$_Toilet_SCTable+18, %edi
	jne	L438
	orw	$960, _gotpic+573
	jmp	L383
	.p2align 4,,10
	.p2align 3
L412:
	cmpw	$5162, %ax
	je	L416
	movl	$_Sumo_SCTable, %edi
	cmpw	$5426, %ax
	jne	L383
	.p2align 4
	.p2align 3
L433:
	movswl	(%edi), %eax
	addl	$2, %edi
	call	__Z10CacheSoundii.isra.0
	cmpl	$_Sumo_SCTable+8, %edi
	jne	L433
	orb	$4, _gotpic+561
	movl	$4491, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L434:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$4545, %eax
	jne	L434
	jmp	L383
	.p2align 4,,10
	.p2align 3
L398:
	cmpw	$2540, %ax
	je	L402
	cmpw	$3780, %ax
	jne	L383
	orb	$64, _gotpic+553
	movl	$4431, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L430:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$4480, %eax
	jne	L430
	jmp	L383
	.p2align 4,,10
	.p2align 3
L391:
	cmpw	$1210, %ax
	je	L395
	movl	$_Serpent_SCTable, %edi
	cmpw	$1300, %ax
	jne	L383
	.p2align 4
	.p2align 3
L447:
	movswl	(%edi), %eax
	addl	$2, %edi
	call	__Z10CacheSoundii.isra.0
	cmpl	$_Serpent_SCTable+18, %edi
	jne	L447
	orb	$1, _gotpic+120
	movl	$961, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L448:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$1017, %eax
	jne	L448
	orb	$16, _gotpic+162
	movl	$1301, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L449:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$1315, %eax
	jne	L449
	jmp	L383
	.p2align 4,,10
	.p2align 3
L413:
	cmpw	$4840, %ax
	je	L394
	movl	$_Toilet_SCTable, %edi
	cmpw	$5023, %ax
	jne	L383
	.p2align 4
	.p2align 3
L435:
	movswl	(%edi), %eax
	addl	$2, %edi
	call	__Z10CacheSoundii.isra.0
	movl	$_Toilet_SCTable+18, %eax
	cmpl	%edi, %eax
	jne	L435
	movzwl	_gotpic+627, %eax
	movl	$384, %edx
	orl	%eax, %edx
	movzbl	%ah, %eax
	orl	$15, %eax
	movw	%dx, _gotpic+627
	movb	%al, _gotpic+628
	jmp	L383
	.p2align 4,,10
	.p2align 3
L406:
	movl	$_Bunny_SCTable, %edi
	.p2align 4
	.p2align 3
L441:
	movswl	(%edi), %eax
	addl	$2, %edi
	call	__Z10CacheSoundii.isra.0
	cmpl	$_Bunny_SCTable+10, %edi
	jne	L441
	orb	$64, _gotpic+568
	movl	$4551, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L442:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$4585, %eax
	jne	L442
	jmp	L383
	.p2align 4,,10
	.p2align 3
L411:
	movl	$_Toilet_SCTable, %edi
	.p2align 4
	.p2align 3
L436:
	movswl	(%edi), %eax
	addl	$2, %edi
	call	__Z10CacheSoundii.isra.0
	cmpl	$_Toilet_SCTable+18, %edi
	jne	L436
	orb	$15, _gotpic+629
	jmp	L383
	.p2align 4,,10
	.p2align 3
L395:
	movl	$_Sumo_SCTable, %ebp
	movl	$_Sumo_SCTable+8, %edi
	.p2align 4
	.p2align 3
L431:
	movswl	0(%ebp), %eax
	addl	$2, %ebp
	call	__Z10CacheSoundii.isra.0
	cmpl	%ebp, %edi
	jne	L431
	orb	$4, _gotpic+561
	movl	$4491, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L432:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$4545, %eax
	jne	L432
	jmp	L383
L566:
	cmpw	$623, %ax
	jne	L383
L394:
	orb	$-4, _gotpic+77
	movl	$4769, %eax
	orb	$1, _gotpic+596
	.p2align 6
	.p2align 4
	.p2align 3
L456:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$4791, %eax
	jne	L456
	orb	$1, _gotpic+599
	movl	$4793, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L457:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$4815, %eax
	jne	L457
	orb	$1, _gotpic+602
	movl	$4817, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L458:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$4839, %eax
	jne	L458
	orb	$1, _gotpic+605
	movl	$4841, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L459:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$4864, %eax
	jne	L459
	movl	$_Pachinko_SCTable, %edi
	.p2align 4
	.p2align 3
L460:
	movswl	(%edi), %eax
	addl	$2, %edi
	call	__Z10CacheSoundii.isra.0
	movl	$_Pachinko_SCTable+10, %eax
	cmpl	%edi, %eax
	jne	L460
	jmp	L383
	.p2align 4,,10
	.p2align 3
L400:
	movl	$_Guardian_SCTable, %ebp
	movl	$_Guardian_SCTable+14, %edi
	.p2align 4
	.p2align 3
L426:
	movswl	0(%ebp), %eax
	addl	$2, %ebp
	call	__Z10CacheSoundii.isra.0
	cmpl	%ebp, %edi
	jne	L426
	orb	$32, _gotpic+183
	movl	$1470, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L427:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$1498, %eax
	jne	L427
	jmp	L383
	.p2align 4,,10
	.p2align 3
L399:
	movl	$_Ghost_SCTable, %edi
	.p2align 4
	.p2align 3
L428:
	movswl	(%edi), %eax
	addl	$2, %edi
	call	__Z10CacheSoundii.isra.0
	cmpl	$_Ghost_SCTable+18, %edi
	jne	L428
	orb	$32, _gotpic+534
	movl	$4278, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L429:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$4313, %eax
	jne	L429
	jmp	L383
	.p2align 4,,10
	.p2align 3
L404:
	movl	$_Toilet_SCTable, %edi
	.p2align 4
	.p2align 3
L439:
	movswl	(%edi), %eax
	addl	$2, %edi
	call	__Z10CacheSoundii.isra.0
	cmpl	$_Toilet_SCTable+18, %edi
	jne	L439
	orb	$7, _gotpic+575
	jmp	L383
	.p2align 4,,10
	.p2align 3
L416:
	orb	$4, _gotpic+645
	movl	$5163, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L455:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$5261, %eax
	jne	L455
	jmp	L383
	.p2align 4,,10
	.p2align 3
L397:
	movl	$_Ripper_SCTable, %ebp
	movl	$_Ripper_SCTable+14, %edi
	.p2align 4
	.p2align 3
L443:
	movswl	0(%ebp), %eax
	addl	$2, %ebp
	call	__Z10CacheSoundii.isra.0
	cmpl	%ebp, %edi
	jne	L443
	orb	$16, _gotpic+197
	movl	$1581, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L444:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$1645, %eax
	jne	L444
	jmp	L383
	.p2align 4,,10
	.p2align 3
L388:
	orb	$1, _gotpic+165
	movl	$1321, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L450:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$1397, %eax
	jne	L450
	jmp	L383
	.p2align 4,,10
	.p2align 3
L390:
	movl	$_Head_SCTable, %ebp
	movl	$_Head_SCTable+8, %edi
	.p2align 4
	.p2align 3
L453:
	movswl	0(%ebp), %eax
	addl	$2, %ebp
	call	__Z10CacheSoundii.isra.0
	cmpl	%ebp, %edi
	jne	L453
	orb	$16, _gotpic+102
	movl	$821, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L454:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$855, %eax
	jne	L454
	jmp	L383
	.p2align 4,,10
	.p2align 3
L392:
	movl	$_Hornet_SCTable, %edi
	.p2align 4
	.p2align 3
L451:
	movswl	(%edi), %eax
	addl	$2, %edi
	call	__Z10CacheSoundii.isra.0
	cmpl	$_Hornet_SCTable+8, %edi
	jne	L451
	orb	$1, _gotpic+100
	movl	$801, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L452:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$812, %eax
	jne	L452
	jmp	L383
	.p2align 4,,10
	.p2align 3
L402:
	movswl	_Trash_SCTable, %eax
	call	__Z10CacheSoundii.isra.0
	orb	$16, _gotpic+317
	movl	$2541, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L418:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$2547, %eax
	jne	L418
	jmp	L383
	.p2align 4,,10
	.p2align 3
L573:
	cmpw	$4162, %ax
	je	L386
	jmp	L383
	.p2align 4,,10
	.p2align 3
L570:
	cmpw	$4603, %ax
	jle	L383
	cmpw	$4768, %ax
	je	L394
	cmpw	$4792, %ax
	je	L394
	jmp	L383
	.cfi_endproc
LFE47:
	.p2align 4
	.globl	__Z13SetupPreCachev.part.0
	.def	__Z13SetupPreCachev.part.0;	.scl	2;	.type	32;	.endef
__Z13SetupPreCachev.part.0:
LFB74:
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
	movl	$3840, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_gotpic, (%esp)
	call	_memset
	movswl	_numsectors, %eax
	movl	_sector, %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %ebp
	cmpl	%ebp, %ecx
	jb	L580
	jmp	L575
	.p2align 4,,10
	.p2align 3
L576:
	movswl	24(%ecx), %eax
	movzbl	_picanm+3(%eax,%eax,4), %ebx
	movl	%eax, %edx
	movl	%eax, %esi
	sarl	$3, %esi
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.1(%edx), %edx
	orb	%dl, _gotpic(%esi)
	shrb	$6, %bl
	jne	L677
L578:
	addl	$40, %ecx
	cmpl	%ebp, %ecx
	jnb	L575
L580:
	movswl	16(%ecx), %eax
	movzbl	_picanm+3(%eax,%eax,4), %ebx
	movl	%eax, %edx
	movl	%eax, %esi
	sarl	$3, %esi
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.1(%edx), %edx
	orb	%dl, _gotpic(%esi)
	shrb	$6, %bl
	je	L576
	movzbl	_picanm(%eax,%eax,4), %edx
	testb	%dl, %dl
	je	L576
	addl	$1, %eax
	movzbl	%dl, %edi
	addl	%eax, %edi
	.p2align 5
	.p2align 4
	.p2align 3
L577:
	movl	%eax, %edx
	movl	%eax, %esi
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %esi
	movzbl	__ZL8pow2char.lto_priv.1(%esi), %ebx
	orb	%bl, _gotpic(%edx)
	cmpl	%eax, %edi
	jne	L577
	jmp	L576
	.p2align 4,,10
	.p2align 3
L677:
	movzbl	_picanm(%eax,%eax,4), %edx
	testb	%dl, %dl
	je	L578
	addl	$1, %eax
	movzbl	%dl, %edi
	addl	%eax, %edi
	.p2align 5
	.p2align 4
	.p2align 3
L579:
	movl	%eax, %edx
	movl	%eax, %esi
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %esi
	movzbl	__ZL8pow2char.lto_priv.1(%esi), %ebx
	orb	%bl, _gotpic(%edx)
	cmpl	%eax, %edi
	jne	L579
	addl	$40, %ecx
	cmpl	%ebp, %ecx
	jb	L580
L575:
	movswl	_numwalls, %ebx
	movl	_wall, %ecx
	sall	$5, %ebx
	leal	(%ecx,%ebx), %ebp
	cmpl	%ebp, %ecx
	jb	L586
	jmp	L581
	.p2align 4,,10
	.p2align 3
L584:
	addl	$32, %ecx
	cmpl	%ebp, %ecx
	jnb	L581
L586:
	movswl	16(%ecx), %eax
	movzbl	_picanm+3(%eax,%eax,4), %ebx
	movl	%eax, %edx
	movl	%eax, %esi
	sarl	$3, %esi
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.1(%edx), %edx
	orb	%dl, _gotpic(%esi)
	shrb	$6, %bl
	jne	L678
L582:
	movzwl	18(%ecx), %eax
	leal	-1(%eax), %edx
	cmpw	$30718, %dx
	ja	L584
	movswl	%ax, %edx
	movl	%eax, %edi
	movl	%edx, %esi
	andl	$7, %edi
	sarl	$3, %esi
	movzbl	__ZL8pow2char.lto_priv.1(%edi), %ebx
	orb	%bl, _gotpic(%esi)
	movzbl	_picanm+3(%edx,%edx,4), %ebx
	shrb	$6, %bl
	je	L584
	movzbl	_picanm(%edx,%edx,4), %edx
	testb	%dl, %dl
	je	L584
	addl	$1, %eax
	cwtl
	leal	(%edx,%eax), %edi
	.p2align 5
	.p2align 4
	.p2align 3
L585:
	movl	%eax, %edx
	movl	%eax, %esi
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %esi
	movzbl	__ZL8pow2char.lto_priv.1(%esi), %ebx
	orb	%bl, _gotpic(%edx)
	cmpl	%eax, %edi
	jne	L585
	addl	$32, %ecx
	cmpl	%ebp, %ecx
	jb	L586
L581:
	movl	_sprite, %eax
	leal	720896(%eax), %ebx
	.p2align 6
	.p2align 4
	.p2align 3
L588:
	cmpw	$1023, 26(%eax)
	jg	L587
	movswl	14(%eax), %edx
	movl	%edx, %ecx
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
L587:
	addl	$44, %eax
	cmpl	%ebx, %eax
	jne	L588
	movl	$_Player_SCTable, %ebx
	movl	$_Player_SCTable+324, %esi
	.p2align 4
	.p2align 3
L589:
	movswl	(%ebx), %eax
	addl	$2, %ebx
	call	__Z10CacheSoundii.isra.0
	cmpl	%ebx, %esi
	jne	L589
	orb	$1, _gotpic+250
	movl	$2001, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L590:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$2228, %eax
	jne	L590
	orb	$60, _gotpic+511
	movl	$3073, %eax
	orb	$1, _gotpic+384
	.p2align 6
	.p2align 4
	.p2align 3
L591:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$3226, %eax
	jne	L591
	orb	$1, _gotpic+128
	movl	$1025, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L592:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$1176, %eax
	jne	L592
	orb	$16, _gotpic+297
	movl	$2381, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L593:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$2410, %eax
	jne	L593
	orb	$1, _gotpic+450
	movl	$3601, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L594:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$3646, %eax
	jne	L594
	orb	$12, _gotpic+304
	movl	$4609, %eax
	orw	$496, _gotpic+25
	orb	$1, _gotpic+576
	.p2align 6
	.p2align 4
	.p2align 3
L595:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$4702, %eax
	jne	L595
	orb	$64, _gotpic+143
	movl	$1151, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L596:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$1569, %eax
	jne	L596
	orb	$32, _gotpic+210
	movl	$1686, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L597:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$1691, %eax
	jne	L597
	orb	$16, _gotpic+112
	movl	$901, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L598:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$945, %eax
	jne	L598
	orb	$64, _gotpic+208
	movl	$1671, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L599:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$1682, %eax
	jne	L599
	orb	$64, _gotpic+213
	movl	$1711, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L600:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$1716, %eax
	jne	L600
	orb	$4, _gotpic+301
	movl	$2411, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L601:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$2426, %eax
	jne	L601
	orb	$32, _gotpic+48
	movl	$3841, %eax
	orb	$-16, _gotpic+312
	orb	$1, _gotpic+480
	.p2align 6
	.p2align 4
	.p2align 3
L602:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$3912, %eax
	jne	L602
	orb	$16, _gotpic+490
	movl	$3925, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L603:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$3948, %eax
	jne	L603
	orb	$96, _gotpic+174
	movl	$562, %eax
	orb	$2, _gotpic+70
	.p2align 6
	.p2align 4
	.p2align 3
L604:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$585, %eax
	jne	L604
	orw	$384, _gotpic+68
	movl	$1851, %eax
	orw	$1216, _gotpic+230
	.p2align 6
	.p2align 4
	.p2align 3
L605:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$1860, %eax
	jne	L605
	orb	$16, _gotpic+218
	movl	$1749, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L606:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$1754, %eax
	jne	L606
	orb	$4, _gotpic+366
	movl	$2931, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L607:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$3024, %eax
	jne	L607
	orw	$1984, _gotpic+379
	movl	$3241, %eax
	orb	$1, _gotpic+405
	.p2align 6
	.p2align 4
	.p2align 3
L608:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$3278, %eax
	jne	L608
	orb	$1, _gotpic+410
	movl	$3281, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L609:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$3301, %eax
	jne	L609
	orw	$960, _gotpic+214
	movl	$3949, %eax
	orb	$16, _gotpic+493
	.p2align 6
	.p2align 4
	.p2align 3
L610:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$3969, %eax
	jne	L610
	orb	$28, _gotpic+311
	movl	$4071, %eax
	orb	$64, _gotpic+508
	.p2align 6
	.p2align 4
	.p2align 3
L611:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$4078, %eax
	jne	L611
	orb	$12, _gotpic+506
	movl	$3761, %eax
	orb	$60, _gotpic+511
	orb	$1, _gotpic+470
	.p2align 6
	.p2align 4
	.p2align 3
L612:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$3772, %eax
	jne	L612
	orb	$16, _gotpic+472
	movl	$3781, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L613:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$3796, %eax
	jne	L613
	orb	$56, _gotpic+316
	movl	$2441, %eax
	orb	$1, _gotpic+305
	.p2align 6
	.p2align 4
	.p2align 3
L614:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$2468, %eax
	jne	L614
	orb	$2, _gotpic+67
	movl	$538, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L615:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$549, %eax
	jne	L615
	orb	$2, _gotpic+65
	movl	$522, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L616:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	orb	%cl, _gotpic(%edx)
	cmpl	$529, %eax
	jne	L616
	orb	$15, _gotpic+64
	orb	$-16, _gotpic+49
	orb	$120, _gotpic+55
	orw	$496, _gotpic+89
	orw	$496, _gotpic+96
	addl	$12, %esp
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
	movzbl	_picanm(%eax,%eax,4), %edx
	testb	%dl, %dl
	je	L582
	addl	$1, %eax
	movzbl	%dl, %edi
	addl	%eax, %edi
	.p2align 5
	.p2align 4
	.p2align 3
L583:
	movl	%eax, %edx
	movl	%eax, %esi
	addl	$1, %eax
	sarl	$3, %edx
	andl	$7, %esi
	movzbl	__ZL8pow2char.lto_priv.1(%esi), %ebx
	orb	%bl, _gotpic(%edx)
	cmpl	%eax, %edi
	jne	L583
	jmp	L582
	.cfi_endproc
LFE74:
	.p2align 4
	.globl	__Z24SetDefaultKeyDefinitionsi
	.def	__Z24SetDefaultKeyDefinitionsi;	.scl	2;	.type	32;	.endef
__Z24SetDefaultKeyDefinitionsi:
LFB76:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$__ZL11keydefaults, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	testl	%eax, %eax
	movl	$__ZL18keydefaults_modern, %eax
	cmovne	%eax, %edi
	xorl	%eax, %eax
L681:
	movl	$-1, _KeyboardKeys(%eax)
	addl	$16, %eax
	movl	$-1, _KeyboardKeys-12(%eax)
	movl	$-1, _KeyboardKeys-8(%eax)
	movl	$-1, _KeyboardKeys-4(%eax)
	cmpl	$96, %eax
	jb	L681
	movl	$-1, _KeyboardKeys(%eax)
	movl	$-1, _KeyboardKeys+4(%eax)
	movl	$-1, _KeyboardKeys+8(%eax)
	movl	%edi, 12(%esp)
	movl	$__ZL18CONTROL_KeyMapping.lto_priv.0, 8(%esp)
	.p2align 4
	.p2align 3
L695:
	movl	12(%esp), %eax
	movl	(%eax), %esi
	testl	%esi, %esi
	je	L683
	xorl	%ebx, %ebx
	jmp	L685
	.p2align 4,,10
	.p2align 3
L710:
	addl	$1, %ebx
	cmpl	$54, %ebx
	je	L683
L685:
	movl	_gamefunctions(,%ebx,4), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L710
	movl	12(%esp), %eax
	movl	$_sctokeylut, %edi
	movl	%edi, %ebp
	movl	4(%eax), %esi
	jmp	L688
	.p2align 4,,10
	.p2align 3
L686:
	addl	$8, %ebp
	cmpl	$_sctokeylut+816, %ebp
	je	L711
L688:
	movl	%esi, 4(%esp)
	movl	0(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L686
	movzbl	4(%ebp), %ebp
L687:
	movl	12(%esp), %eax
	movl	8(%eax), %esi
	jmp	L692
	.p2align 4,,10
	.p2align 3
L689:
	addl	$8, %edi
	cmpl	$_sctokeylut+816, %edi
	je	L712
L692:
	movl	%esi, 4(%esp)
	movl	(%edi), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L689
	movl	%ebp, %ecx
	movl	$127, %edx
	movzbl	4(%edi), %eax
	testb	%cl, %cl
	movl	8(%esp), %ecx
	cmovne	%ebp, %edx
	testb	%al, %al
	movb	%dl, (%ecx)
	movl	$127, %edx
	cmovne	%eax, %edx
L694:
	movl	8(%esp), %ecx
	movb	%al, _KeyboardKeys+1(%ebx,%ebx)
	movb	%dl, 1(%ecx)
	movl	%ebp, %ecx
	movb	%cl, _KeyboardKeys(%ebx,%ebx)
L683:
	addl	$12, 12(%esp)
	addl	$2, 8(%esp)
	cmpl	$__ZL18CONTROL_KeyMapping.lto_priv.0+108, 8(%esp)
	jne	L695
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
L712:
	.cfi_restore_state
	movl	%ebp, %eax
	testb	%al, %al
	jne	L696
	movl	8(%esp), %eax
	movl	$127, %edx
	movb	$127, (%eax)
	xorl	%eax, %eax
	jmp	L694
L711:
	xorl	%ebp, %ebp
	jmp	L687
L696:
	movl	8(%esp), %ecx
	movl	%ebp, %eax
	movl	$127, %edx
	movb	%al, (%ecx)
	xorl	%eax, %eax
	jmp	L694
	.cfi_endproc
LFE76:
	.p2align 4
	.globl	__Z16SetMouseDefaultsi
	.def	__Z16SetMouseDefaultsi;	.scl	2;	.type	32;	.endef
__Z16SetMouseDefaultsi:
LFB81:
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
	testl	%eax, %eax
	je	L727
	movl	$__ZL27mouseclickeddefaults_modern, 16(%esp)
	movl	$__ZL20mousedefaults_modern, 8(%esp)
	movl	$6, 12(%esp)
L714:
	movl	$-1, _MouseButtons
	movl	$__ZL12mouseButtons.lto_priv.0, %edi
	xorl	%ebp, %ebp
	movl	$-1, _MouseButtons+4
	movl	$-1, _MouseButtons+8
	movl	$-1, _MouseButtons+12
	movl	$-1, _MouseButtons+16
	movl	$-1, _MouseButtons+20
	movl	$-1, _MouseButtons+24
	movl	$-1, _MouseButtons+28
	movl	$-1, _MouseButtons+32
	movl	$-1, _MouseButtons+36
	movl	$-1, _MouseButtonsClicked
	movl	$-1, _MouseButtonsClicked+4
	movl	$-1, _MouseButtonsClicked+8
	movl	$-1, _MouseButtonsClicked+12
	movl	$-1, _MouseButtonsClicked+16
	movl	$-1, _MouseButtonsClicked+20
	movl	$-1, _MouseButtonsClicked+24
	movl	$-1, _MouseButtonsClicked+28
	movl	$-1, _MouseButtonsClicked+32
	movl	$-1, _MouseButtonsClicked+36
	.p2align 4
	.p2align 3
L724:
	movl	8(%esp), %eax
	movl	(%eax,%ebp,4), %esi
	testl	%esi, %esi
	je	L715
	xorl	%ebx, %ebx
	jmp	L717
	.p2align 4,,10
	.p2align 3
L737:
	addl	$1, %ebx
	cmpl	$54, %ebx
	je	L715
L717:
	movl	_gamefunctions(,%ebx,4), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L737
	movl	%ebx, %eax
	movl	%ebx, _MouseButtons(,%ebp,4)
	movb	%al, (%edi)
	cmpl	$3, %ebp
	jle	L738
L718:
	movl	16(%esp), %eax
	movl	(%eax,%ebp,4), %esi
	testl	%esi, %esi
	je	L720
	xorl	%ebx, %ebx
	jmp	L722
	.p2align 4,,10
	.p2align 3
L739:
	addl	$1, %ebx
	cmpl	$54, %ebx
	je	L720
L722:
	movl	_gamefunctions(,%ebx,4), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L739
	movl	%ebx, %eax
L725:
	movl	%ebx, _MouseButtonsClicked(,%ebp,4)
	addl	$1, %ebp
	movb	%al, 1(%edi)
	cmpl	%ebp, 12(%esp)
	je	L713
	addl	$24, %edi
	jmp	L724
	.p2align 4,,10
	.p2align 3
L715:
	movl	$-1, %ebx
	movl	$127, %eax
	movl	%ebx, _MouseButtons(,%ebp,4)
	movb	%al, (%edi)
	cmpl	$3, %ebp
	jg	L718
L738:
	addl	$1, %ebp
	addl	$24, %edi
	jmp	L724
	.p2align 4,,10
	.p2align 3
L720:
	movl	$-1, %ebx
	movl	$127, %eax
	jmp	L725
	.p2align 4,,10
	.p2align 3
L713:
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
L727:
	.cfi_restore_state
	movl	$__ZL20mouseclickeddefaults, 16(%esp)
	movl	$__ZL13mousedefaults, 8(%esp)
	movl	$5, 12(%esp)
	jmp	L714
	.cfi_endproc
LFE81:
	.align 2
	.p2align 4
	.globl	__ZN2sm9Allocator8AllocateILb1EEEPvjj
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj;	.scl	2;	.type	32;	.endef
__ZN2sm9Allocator8AllocateILb1EEEPvjj:
LFB83:
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
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %eax
	movl	12(%ebp), %edi
	testl	%eax, %eax
	je	L740
	movl	12(%ebp), %eax
	cmpl	%eax, 8(%ebp)
	movl	%ecx, %ebx
	cmovnb	8(%ebp), %eax
	subl	$1, %eax
	shrl	$4, %eax
	movl	%eax, %ecx
	cmpl	(%ebx), %eax
	jb	L759
L743:
	lock addl	$1, 380(%ebx)
	movl	__tls_index, %edx
	movl	%fs:44, %eax
	movl	(%eax,%edx,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %eax
	movl	$0, (%esp)
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	call	__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0
	movl	%eax, %edi
L740:
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
	ret	$8
	.p2align 4,,10
	.p2align 3
L759:
	.cfi_restore_state
	movl	%fs:44, %eax
	movl	__tls_index, %edx
	movl	%ecx, %edi
	sall	$6, %edi
	movl	(%eax,%edx,4), %esi
	leal	(%edi,%esi), %eax
	movzbl	_tlsCacheBuckets@secrel32+60(%eax), %edx
	testb	%dl, %dl
	jne	L760
	movl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	testl	%edx, %edx
	je	L746
	movl	_tlsCacheBuckets@secrel32+4(%eax), %esi
	subl	$1, %edx
	movl	%edx, _tlsCacheBuckets@secrel32+56(%eax)
	movl	(%esi,%edx,4), %edi
	addl	_tlsCacheBuckets@secrel32(%eax), %edi
L745:
	testl	%edi, %edi
	je	L761
	movl	%ecx, %eax
	andl	$7, %eax
	leal	(%eax,%eax,4), %eax
	lock addl	$1, 68(%ebx,%eax,8)
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
	ret	$8
	.p2align 4,,10
	.p2align 3
L760:
	.cfi_restore_state
	subl	$1, %edx
	leal	_tlsCacheBuckets@secrel32(%esi,%edi), %esi
	movb	%dl, _tlsCacheBuckets@secrel32+60(%eax)
	movzbl	%dl, %edx
	movl	12(%esi,%edx,4), %edi
	addl	_tlsCacheBuckets@secrel32(%eax), %edi
	jmp	L745
	.p2align 4,,10
	.p2align 3
L761:
	cmpl	(%ebx), %ecx
	jnb	L743
L746:
	leal	(%ecx,%ecx,4), %eax
	leal	48(%ebx,%eax,8), %esi
	.p2align 4
	.p2align 3
L752:
	movlps	(%esi), %xmm0
	movlps	%xmm0, 12(%esp)
	movl	12(%esp), %eax
	movl	16(%esp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	%ecx, 8(%esp)
	movl	%ebx, 4(%esp)
L751:
	andl	%edx, %eax
	cmpl	$-1, %eax
	je	L748
	movl	24(%esp), %edi
	addl	12(%esi), %edi
	movl	(%edi), %ebx
	movl	4(%edi), %ecx
	movl	20(%esp), %eax
	movl	24(%esp), %edx
	lock cmpxchg8b	(%esi)
	jne	L762
	movl	8(%esp), %ecx
	movl	4(%esp), %ebx
	andl	$7, %ecx
	leal	(%ecx,%ecx,4), %eax
	lock addl	$1, 72(%ebx,%eax,8)
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
	ret	$8
	.p2align 4,,10
	.p2align 3
L748:
	.cfi_restore_state
	movl	8(%esp), %ecx
	movl	4(%esp), %ebx
	movl	%ecx, %eax
	andl	$7, %eax
	leal	(%eax,%eax,4), %eax
	lock addl	$1, 76(%ebx,%eax,8)
	addl	$1, %ecx
	addl	$40, %esi
	cmpl	(%ebx), %ecx
	jb	L752
	jmp	L743
	.p2align 4,,10
	.p2align 3
L762:
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	jmp	L751
	.cfi_endproc
LFE83:
	.align 2
	.p2align 4
	.globl	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0:
LFB84:
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
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	L775
	movl	$8, %eax
	cmpl	%eax, 8(%ebp)
	cmovnb	8(%ebp), %eax
	movl	%ecx, %ebx
	subl	$1, %eax
	shrl	$4, %eax
	movl	%eax, %ecx
	cmpl	(%ebx), %eax
	jb	L782
L765:
	lock addl	$1, 380(%ebx)
	movl	__tls_index, %edx
	movl	%fs:44, %eax
	movl	$8, %ecx
	movl	(%eax,%edx,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %eax
	movl	$0, (%esp)
	movl	8(%ebp), %edx
	call	__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0
	leal	-12(%ebp), %esp
	movl	%eax, %edi
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	movl	%edi, %eax
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.p2align 4,,10
	.p2align 3
L782:
	.cfi_restore_state
	movl	__tls_index, %edx
	movl	%fs:44, %eax
	movl	%ecx, %edi
	sall	$6, %edi
	movl	(%eax,%edx,4), %eax
	movl	%eax, 8(%esp)
	addl	%edi, %eax
	movzbl	_tlsCacheBuckets@secrel32+60(%eax), %esi
	movl	%esi, %edx
	testb	%dl, %dl
	jne	L783
	movl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	testl	%edx, %edx
	je	L768
	movl	_tlsCacheBuckets@secrel32+4(%eax), %esi
	subl	$1, %edx
	movl	%edx, _tlsCacheBuckets@secrel32+56(%eax)
	movl	(%esi,%edx,4), %edi
	addl	_tlsCacheBuckets@secrel32(%eax), %edi
L767:
	testl	%edi, %edi
	je	L784
	movl	%ecx, %eax
	andl	$7, %eax
	leal	(%eax,%eax,4), %eax
	lock addl	$1, 68(%ebx,%eax,8)
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
	ret	$4
	.p2align 4,,10
	.p2align 3
L783:
	.cfi_restore_state
	leal	-1(%esi), %edx
	movb	%dl, _tlsCacheBuckets@secrel32+60(%eax)
	movl	8(%esp), %edx
	leal	_tlsCacheBuckets@secrel32(%edx,%edi), %edi
	leal	-1(%esi), %edx
	movzbl	%dl, %esi
	movl	12(%edi,%esi,4), %edi
	addl	_tlsCacheBuckets@secrel32(%eax), %edi
	jmp	L767
	.p2align 4,,10
	.p2align 3
L784:
	cmpl	(%ebx), %ecx
	jnb	L765
L768:
	leal	(%ecx,%ecx,4), %eax
	leal	48(%ebx,%eax,8), %esi
	.p2align 4
	.p2align 3
L774:
	movlps	(%esi), %xmm0
	movlps	%xmm0, 12(%esp)
	movl	12(%esp), %eax
	movl	16(%esp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	%ecx, 8(%esp)
	movl	%ebx, 4(%esp)
L773:
	andl	%edx, %eax
	cmpl	$-1, %eax
	je	L770
	movl	24(%esp), %edi
	addl	12(%esi), %edi
	movl	(%edi), %ebx
	movl	4(%edi), %ecx
	movl	20(%esp), %eax
	movl	24(%esp), %edx
	lock cmpxchg8b	(%esi)
	jne	L785
	movl	8(%esp), %ecx
	movl	4(%esp), %ebx
	andl	$7, %ecx
	leal	(%ecx,%ecx,4), %eax
	lock addl	$1, 72(%ebx,%eax,8)
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
	ret	$4
	.p2align 4,,10
	.p2align 3
L770:
	.cfi_restore_state
	movl	8(%esp), %ecx
	movl	4(%esp), %ebx
	movl	%ecx, %eax
	andl	$7, %eax
	leal	(%eax,%eax,4), %eax
	lock addl	$1, 76(%ebx,%eax,8)
	addl	$1, %ecx
	addl	$40, %esi
	cmpl	(%ebx), %ecx
	jb	L774
	jmp	L765
	.p2align 4,,10
	.p2align 3
L785:
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	jmp	L773
	.p2align 4,,10
	.p2align 3
L775:
	leal	-12(%ebp), %esp
	movl	$8, %edi
	popl	%ebx
	.cfi_restore 3
	movl	%edi, %eax
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE84:
	.section .rdata,"dr"
	.align 4
LC20:
	.ascii "Map error: sprite #%d(%d,%d) with illegal statnum (%d)\0"
LC21:
	.ascii "source/build/src/engine.cpp\0"
	.align 4
LC22:
	.ascii "Map error: sprite #%d(%d,%d) with illegal sectnum (%d)\0"
LC23:
	.ascii "swsave.map\0"
	.align 4
LC24:
	.ascii "Couldn't open file %s for writing: %s.\0"
	.text
	.p2align 4
	.def	__Z9SaveCheatP12PLAYERstructPc;	.scl	3;	.type	32;	.endef
__Z9SaveCheatP12PLAYERstructPc:
LFB94:
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
	xorl	%esi, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	subl	$56, %esp
	.cfi_def_cfa_offset 76
	movl	_sprite, %ebp
	movl	76(%esp), %eax
	movzwl	268(%eax), %eax
	movw	%ax, 36(%esp)
	movl	76(%esp), %eax
	movl	300(%eax), %eax
	movl	%eax, %edi
	movl	%eax, 40(%esp)
	sarl	$31, %edi
	xorw	%di, %di
	addl	$32768, %edi
	movl	%edi, 32(%esp)
	jmp	L792
	.p2align 4,,10
	.p2align 3
L788:
	movswl	24(%eax), %ecx
	movl	%ecx, %edx
	cmpl	$4096, %ecx
	ja	L845
L790:
	addl	$1, %ebx
	addl	$44, %esi
	cmpl	$16384, %ebx
	je	L846
L792:
	leal	0(%ebp,%esi), %eax
	movswl	26(%eax), %ecx
	movl	%ecx, %edx
	cmpl	$1024, %ecx
	jbe	L788
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edi
	cmpl	%edi, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %edi
	cmpl	$-2, %edi
	jge	L847
L789:
	testw	$-1025, %dx
	je	L788
	movswl	%bx, %eax
	call	_do_deletespritestat
	xorl	%edx, %edx
	movswl	%bx, %eax
	call	_do_insertsprite_at_headofstat
	movl	_sprite, %ebp
	leal	0(%ebp,%esi), %eax
	movswl	24(%eax), %ecx
	movl	%ecx, %edx
	cmpl	$4096, %ecx
	jbe	L790
L845:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edi
	cmpl	%edi, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %edi
	cmpl	$-2, %edi
	jge	L848
L791:
	testw	$-4097, %dx
	je	L790
	movswl	%bx, %eax
	addl	$44, %esi
	call	_do_deletespritesect
	movswl	%bx, %eax
	xorl	%edx, %edx
	addl	$1, %ebx
	call	_do_insertsprite_at_headofsect
	movl	_sprite, %ebp
	cmpl	$16384, %ebx
	jne	L792
L846:
	movl	32(%esp), %edi
	leal	26(%ebp), %eax
	leal	720922(%ebp), %edx
	xorl	%ebx, %ebx
	.p2align 5
	.p2align 4
	.p2align 3
L794:
	cmpw	$1024, (%eax)
	leal	1(%ebx), %ecx
	cmovne	%ecx, %ebx
	addl	$44, %eax
	cmpl	%eax, %edx
	jne	L794
	movl	_numyaxbunches, %edx
	movl	$9, %eax
	testl	%edx, %edx
	jg	L795
	cmpw	$1024, _numsectors
	jg	L796
	cmpw	$8192, _numwalls
	jg	L796
	xorl	%eax, %eax
	cmpl	$4096, _Numsprites
	setg	%al
	addl	$7, %eax
L795:
	movl	$384, 8(%esp)
	movl	$33537, 4(%esp)
	movl	$LC23, (%esp)
	movl	%eax, _mapversion
	call	_open
	movl	%eax, 32(%esp)
	cmpl	$-1, %eax
	je	L849
	movl	32(%esp), %ebp
	leal	52(%esp), %esi
	movl	$4, 8(%esp)
	movl	%esi, 4(%esp)
	movl	_mapversion, %eax
	movl	%ebp, (%esp)
	movl	%eax, 52(%esp)
	call	_write
	movl	76(%esp), %eax
	movl	(%eax), %eax
	movl	%esi, 4(%esp)
	movl	$4, 8(%esp)
	movl	%ebp, (%esp)
	movl	%eax, 52(%esp)
	call	_write
	movl	76(%esp), %eax
	movl	4(%eax), %eax
	movl	%esi, 4(%esp)
	movl	$4, 8(%esp)
	movl	%ebp, (%esp)
	movl	%eax, 52(%esp)
	call	_write
	movl	76(%esp), %eax
	movl	8(%eax), %eax
	movl	%esi, 4(%esp)
	movl	$4, 8(%esp)
	movl	%ebp, (%esp)
	movl	%eax, 52(%esp)
	call	_write
	movl	40(%esp), %eax
	movl	$2, 8(%esp)
	movl	%ebp, (%esp)
	addl	%edi, %eax
	leal	65535(%eax), %edx
	cmovs	%edx, %eax
	sarl	$16, %eax
	movw	%ax, 50(%esp)
	leal	50(%esp), %eax
	movl	%eax, 4(%esp)
	call	_write
	movzwl	36(%esp), %eax
	movl	$2, 8(%esp)
	movl	%ebp, (%esp)
	movw	%ax, 50(%esp)
	leal	50(%esp), %eax
	movl	%eax, 4(%esp)
	call	_write
	movzwl	_numsectors, %eax
	movl	$2, 8(%esp)
	movl	%ebp, (%esp)
	movw	%ax, 50(%esp)
	leal	50(%esp), %eax
	movl	%eax, 4(%esp)
	call	_write
	movswl	_numsectors, %eax
	movl	_g_sm_heap, %ecx
	leal	(%eax,%eax,4), %esi
	sall	$3, %esi
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 72
	subl	$4, %esp
	.cfi_def_cfa_offset 76
	movl	%eax, %edi
	testl	%eax, %eax
	je	L809
	movswl	_numsectors, %eax
	movl	%edi, (%esp)
	xorl	%ebp, %ebp
	leal	(%eax,%eax,4), %eax
	sall	$3, %eax
	movl	%eax, 8(%esp)
	movl	_sector, %eax
	movl	%eax, 4(%esp)
	call	_memcpy
	movzwl	_numsectors, %ecx
	movswl	%cx, %edx
	testw	%cx, %cx
	jle	L802
	movl	%edi, 44(%esp)
	addl	$22, %edi
	movw	%bx, 40(%esp)
	jmp	L808
	.p2align 5
	.p2align 4,,10
	.p2align 3
L803:
	addl	$1, %ebp
	movswl	%cx, %edx
	addl	$40, %edi
	cmpl	%edx, %ebp
	jge	L850
L808:
	cmpw	$0, _editstatus
	jne	L803
	movzwl	_yax_bunchnum(,%ebp,4), %edx
	leal	-22(%edi), %esi
	xorl	%ecx, %ecx
	movswl	%bp, %ebx
	leal	0(,%ebp,4), %eax
	movl	%eax, 36(%esp)
	movl	%edx, %eax
	testw	%ax, %ax
	js	L805
L807:
	movb	%al, 22(%esi,%ecx,8)
L805:
	cmpl	$1, %ecx
	je	L843
L839:
	cmpw	$0, _editstatus
	je	L851
	movl	$1, %edx
	movl	%ebx, %eax
	call	_yax_getbunch.part.0
	movl	$1, %ecx
	testw	%ax, %ax
	jns	L807
	cmpl	$1, %ecx
	jne	L839
L843:
	movzwl	_numsectors, %ecx
L854:
	addl	$1, %ebp
	movswl	%cx, %edx
	addl	$40, %edi
	cmpl	%edx, %ebp
	jl	L808
L850:
	movzwl	40(%esp), %ebx
	movl	44(%esp), %edi
L802:
	movl	32(%esp), %esi
	leal	(%edx,%edx,4), %eax
	movl	%edi, 4(%esp)
	sall	$3, %eax
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	_write
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 72
	movzwl	_numwalls, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 76
	movw	%ax, 50(%esp)
	leal	50(%esp), %eax
	movl	%esi, (%esp)
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	call	_write
	movswl	_numwalls, %esi
	movl	_g_sm_heap, %ecx
	sall	$5, %esi
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 72
	subl	$4, %esp
	.cfi_def_cfa_offset 76
	movl	%eax, %ebp
	testl	%eax, %eax
	je	L809
	movswl	_numwalls, %eax
	movl	%ebp, (%esp)
	sall	$5, %eax
	movl	%eax, 8(%esp)
	movl	_wall, %eax
	movl	%eax, 4(%esp)
	call	_memcpy
	movswl	_numwalls, %eax
	testw	%ax, %ax
	jle	L811
	cmpw	$0, _editstatus
	je	L852
L811:
	movl	32(%esp), %esi
	sall	$5, %eax
	movl	%ebp, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	call	_write
	movl	%ebp, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 72
	subl	$4, %esp
	.cfi_def_cfa_offset 76
	leal	50(%esp), %eax
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movw	%bx, 50(%esp)
	call	_write
	testw	%bx, %bx
	jle	L816
	movswl	%bx, %ebx
	movl	_g_sm_heap, %ecx
	imull	$44, %ebx, %ebx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 72
	xorl	%ecx, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 76
	movl	%eax, %esi
	movl	%eax, %edx
	testl	%eax, %eax
	je	L853
	.p2align 4
	.p2align 3
L817:
	movl	_sprite, %eax
	addl	%ecx, %eax
	cmpw	$1024, 26(%eax)
	je	L818
	movl	(%eax), %edi
	addl	$44, %edx
	movl	%edi, -44(%edx)
	movl	4(%eax), %edi
	movl	%edi, -40(%edx)
	movl	8(%eax), %edi
	movl	%edi, -36(%edx)
	movl	12(%eax), %edi
	movl	%edi, -32(%edx)
	movl	16(%eax), %edi
	movl	%edi, -28(%edx)
	movl	20(%eax), %edi
	movl	%edi, -24(%edx)
	movl	24(%eax), %edi
	movl	%edi, -20(%edx)
	movl	28(%eax), %edi
	movl	%edi, -16(%edx)
	movl	32(%eax), %edi
	movl	%edi, -12(%edx)
	movl	36(%eax), %edi
	movl	%edi, -8(%edx)
	movl	40(%eax), %eax
	movl	%eax, -4(%edx)
L818:
	addl	$44, %ecx
	cmpl	$720896, %ecx
	jne	L817
	movl	32(%esp), %eax
	movl	%ebx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_write
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 72
	subl	$4, %esp
	.cfi_def_cfa_offset 76
L816:
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	_close
L786:
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
L847:
	.cfi_restore_state
	movl	%ecx, 28(%esp)
	movl	4(%eax), %edx
	movl	%edx, 24(%esp)
	movl	(%eax), %eax
	movl	%ebx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$LC20, 12(%esp)
	movl	$11631, 8(%esp)
	movl	$LC21, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_sprite, %ebp
	leal	0(%ebp,%esi), %eax
	movzwl	26(%eax), %edx
	jmp	L789
	.p2align 4,,10
	.p2align 3
L848:
	movl	%ecx, 28(%esp)
	movl	4(%eax), %edx
	movl	%edx, 24(%esp)
	movl	(%eax), %eax
	movl	%ebx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$LC22, 12(%esp)
	movl	$11638, 8(%esp)
	movl	$LC21, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_sprite, %ebp
	movzwl	24(%ebp,%esi), %edx
	jmp	L791
L851:
	movl	36(%esp), %eax
	movl	$1, %ecx
	movzwl	_yax_bunchnum+2(%eax), %eax
	testw	%ax, %ax
	jns	L807
	movzwl	_numsectors, %ecx
	jmp	L854
L852:
	movw	%bx, 36(%esp)
	leal	26(%ebp), %edi
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L815:
	xorl	%edx, %edx
	movswl	%bx, %eax
	movl	%ebx, %esi
	call	_yax_getnextwall
	testw	%ax, %ax
	js	L813
	movw	%ax, (%edi)
L813:
	movswl	%si, %eax
	movl	$1, %edx
	call	_yax_getnextwall
	testw	%ax, %ax
	js	L814
	movw	%ax, 4(%edi)
L814:
	movswl	_numwalls, %eax
	addl	$1, %ebx
	addl	$32, %edi
	cmpl	%eax, %ebx
	jl	L815
	movzwl	36(%esp), %ebx
	jmp	L811
L796:
	movl	$8, %eax
	jmp	L795
L809:
	movl	%esi, %eax
	call	__Z13handle_memerri
L853:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L849:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L786
	call	*__imp___errno
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*__imp__strerror
	movl	$LC23, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$LC24, 12(%esp)
	movl	$11672, 8(%esp)
	movl	$LC21, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L786
	.cfi_endproc
LFE94:
	.section .rdata,"dr"
LC26:
	.ascii "\0"
LC34:
	.ascii "MapCopy\0"
LC35:
	.ascii "Kuro\0"
LC36:
	.ascii "ZeroKillDemos\0"
LC37:
	.ascii "ScoreShot\0"
LC38:
	.ascii "MinHUDArmor\0"
LC39:
	.ascii "DemoTime\0"
LC40:
	.ascii "ShowHeat\0"
LC41:
	.ascii "ShowNuke\0"
LC42:
	.ascii "ScreenMode\0"
LC43:
	.ascii "Screen Setup\0"
LC44:
	.ascii "ScreenWidth\0"
LC45:
	.ascii "ScreenHeight\0"
LC46:
	.ascii "ScreenBPP\0"
LC47:
	.ascii "MaxRefreshFreq\0"
LC48:
	.ascii "GLTextureMode\0"
LC49:
	.ascii "GLAnisotropy\0"
LC50:
	.ascii "GLUseTextureCompr\0"
LC51:
	.ascii "FXToggle\0"
LC52:
	.ascii "Sound Setup\0"
LC53:
	.ascii "MusicToggle\0"
LC54:
	.ascii "FXDevice\0"
LC55:
	.ascii "MusicDevice\0"
LC56:
	.ascii "FXVolume\0"
LC57:
	.ascii "MusicVolume\0"
LC58:
	.ascii "NumVoices\0"
LC59:
	.ascii "NumChannels\0"
LC60:
	.ascii "NumBits\0"
LC61:
	.ascii "MixRate\0"
LC62:
	.ascii "ReverseStereo\0"
LC63:
	.ascii "WaveformTrackName\0"
LC64:
	.ascii "ForceSetup\0"
LC65:
	.ascii "Setup\0"
LC66:
	.ascii "SelectedGRP\0"
LC67:
	.ascii "UseMouse\0"
LC68:
	.ascii "Controls\0"
LC69:
	.ascii "UseJoystick\0"
LC70:
	.ascii "RTSName\0"
LC71:
	.ascii "Comm Setup\0"
LC72:
	.ascii "PlayerName\0"
LC73:
	.ascii "CommbatMacro#%d\0"
LC74:
	.ascii "Rooster\0"
LC75:
	.ascii "Options\0"
LC76:
	.ascii "BorderNum\0"
LC77:
	.ascii "Brightness\0"
LC78:
	.ascii "BorderTile\0"
LC79:
	.ascii "Bobbing\0"
LC80:
	.ascii "Tilting\0"
LC81:
	.ascii "Shadows\0"
LC82:
	.ascii "AutoRun\0"
LC83:
	.ascii "Crosshair\0"
LC84:
	.ascii "AutoAim\0"
LC85:
	.ascii "InterpolateSO\0"
LC86:
	.ascii "Messages\0"
LC87:
	.ascii "Talking\0"
LC88:
	.ascii "Ambient\0"
LC89:
	.ascii "AltReverb\0"
LC90:
	.ascii "FxOn\0"
LC91:
	.ascii "MusicOn\0"
LC92:
	.ascii "MouseAiming\0"
LC93:
	.ascii "NetGameType\0"
LC94:
	.ascii "NetLevel\0"
LC95:
	.ascii "NetMonsters\0"
LC96:
	.ascii "NetHurtTeammate\0"
LC97:
	.ascii "NetSpawnMarkers\0"
LC98:
	.ascii "NetTeamPlay\0"
LC99:
	.ascii "NetKillLimit\0"
LC100:
	.ascii "NetTimeLimit\0"
LC101:
	.ascii "NetColor\0"
LC102:
	.ascii "Voxels\0"
LC103:
	.ascii "Stats\0"
LC104:
	.ascii "Darts\0"
LC105:
	.ascii "WeaponAutoSwitch\0"
LC106:
	.ascii "FOV\0"
LC107:
	.ascii "MouseAimingOn\0"
LC108:
	.ascii "MouseInvert\0"
LC109:
	.ascii "Kiwi\0"
LC110:
	.ascii "PlayCD\0"
LC111:
	.ascii "CDDevice\0"
LC112:
	.ascii "Chickens\0"
	.align 4
LC113:
	.ascii "\12You have played Shadow Warrior %d times.  Please call and order the full\12version at 1(800)-3DREALMS or see the ORDER.FRM file.\12\0"
LC114:
	.ascii "source/sw/src/swconfig.cpp\0"
LC115:
	.ascii "KeyDefinitions\0"
	.text
	.p2align 4
	.globl	__Z16CONFIG_ReadSetupv
	.def	__Z16CONFIG_ReadSetupv;	.scl	2;	.type	32;	.endef
__Z16CONFIG_ReadSetupv:
LFB107:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	xorl	%eax, %eax
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
	subl	$480, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	$1, _MapCopyEnabled
	movl	$1, _ZeroKillDemosEnabled
	movl	$1, _ScoreShotEnabled
	movl	$1, _MinHUDArmorEnabled
	movl	$1, _DemoTimeEnabled
	movl	$1, _ShowHeatEnabled
	movl	$1, _ShowNukeEnabled
L856:
	movl	$0, -272(%ebp,%eax)
	movl	$0, -268(%ebp,%eax)
	movl	$0, -264(%ebp,%eax)
	movl	$0, -260(%ebp,%eax)
	addl	$16, %eax
	cmpl	$256, %eax
	jb	L856
	movl	$288, 8(%esp)
	movl	$__ZL10joyButtons.lto_priv.0, %ebx
	movl	$32639, %esi
	movl	$0, 4(%esp)
	movl	$__ZL7joyAxes.lto_priv.0, (%esp)
	call	_memset
	movl	$768, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL10joyButtons.lto_priv.0, (%esp)
	call	_memset
	movl	%ebx, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L858:
	movw	%si, (%eax)
	addl	$192, %eax
	movw	%si, -168(%eax)
	movw	%si, -144(%eax)
	movw	%si, -120(%eax)
	movw	%si, -96(%eax)
	movw	%si, -72(%eax)
	movw	%si, -48(%eax)
	movw	%si, -24(%eax)
	cmpl	$__ZL10joyButtons.lto_priv.0+768, %eax
	jne	L858
	xorl	%eax, %eax
L859:
	movl	$0, __ZL12mouseButtons.lto_priv.0(%eax)
	addl	$16, %eax
	movl	$0, __ZL12mouseButtons.lto_priv.0-12(%eax)
	movl	$0, __ZL12mouseButtons.lto_priv.0-8(%eax)
	movl	$0, __ZL12mouseButtons.lto_priv.0-4(%eax)
	cmpl	$240, %eax
	jb	L859
	movw	%si, __ZL12mouseButtons.lto_priv.0
	xorl	%eax, %eax
	movw	%si, __ZL12mouseButtons.lto_priv.0+24
	movw	%si, __ZL12mouseButtons.lto_priv.0+48
	movw	%si, __ZL12mouseButtons.lto_priv.0+72
	movw	%si, __ZL12mouseButtons.lto_priv.0+96
	movw	%si, __ZL12mouseButtons.lto_priv.0+120
	movw	%si, __ZL12mouseButtons.lto_priv.0+144
	movw	%si, __ZL12mouseButtons.lto_priv.0+168
	movw	%si, __ZL12mouseButtons.lto_priv.0+192
	movw	%si, __ZL12mouseButtons.lto_priv.0+216
L861:
	movl	$2139062143, __ZL18CONTROL_KeyMapping.lto_priv.0(%eax)
	addl	$16, %eax
	movl	$2139062143, __ZL18CONTROL_KeyMapping.lto_priv.0-12(%eax)
	movl	$2139062143, __ZL18CONTROL_KeyMapping.lto_priv.0-8(%eax)
	movl	$2139062143, __ZL18CONTROL_KeyMapping.lto_priv.0-4(%eax)
	cmpl	$128, %eax
	jb	L861
	movl	$0x41c80000, _CONTROL_MouseAxesSensitivity
	movl	$__ZL7joyAxes.lto_priv.0+20, %eax
	movl	$__ZL7joyAxes.lto_priv.0+308, %edx
	movss	LC29, %xmm0
	movl	$0x41c80000, _CONTROL_MouseAxesSensitivity+4
	.p2align 5
	.p2align 4
	.p2align 3
L863:
	movss	%xmm0, (%eax)
	addl	$96, %eax
	movss	%xmm0, -64(%eax)
	movss	%xmm0, -32(%eax)
	cmpl	%eax, %edx
	jne	L863
	movl	$1, _ud_setup+8
	movl	$32, (%esp)
	call	_SDL_WasInit
	testl	%eax, %eax
	je	L1540
	testb	$32, %al
	je	L1541
L865:
	leal	-352(%ebp), %eax
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	call	_SDL_GetDesktopDisplayMode
	testl	%eax, %eax
	jne	L1155
	movl	-348(%ebp), %eax
	movl	-344(%ebp), %edx
L866:
	movl	%edx, _ud_setup+16
	movl	%eax, _ud_setup+12
	movl	$32, _ud_setup+20
	movl	$1, _FXToggle
	movl	$1, _MusicToggle
	movl	$0, _FXDevice
	movl	$-2, _MusicDevice
	movl	$32, _NumVoices
	movl	$2, _NumChannels
	movl	$16, _NumBits
	movl	$44100, _MixRate
	movl	$332, 8(%esp)
	movl	$_gs_defaults, 4(%esp)
	movl	$_gs, (%esp)
	call	_memcpy
	movl	$46, %eax
	movl	$1915647859, _RTSName
	movw	%ax, _WangBangMacro+16
	movl	$46, %eax
	movw	%ax, _WangBangMacro+92
	movl	$33, %eax
	movl	$1767991137, _WangBangMacro+152
	movl	$7566450, _RTSName+3
	movl	$1330921803, _CommPlayerName
	movb	$0, _CommPlayerName+4
	movl	$1852994882, _WangBangMacro
	movl	$1650549280, _WangBangMacro+4
	movl	$1969365113, _WangBangMacro+8
	movl	$774794866, _WangBangMacro+12
	movl	$544567129, _WangBangMacro+64
	movl	$1701536109, _WangBangMacro+68
	movl	$1869504800, _WangBangMacro+72
	movl	$1919248500, _WangBangMacro+76
	movl	$1970565920, _WangBangMacro+80
	movl	$543451504, _WangBangMacro+84
	movl	$1702260589, _WangBangMacro+88
	movl	$1668246594, _WangBangMacro+128
	movl	$1735289195, _WangBangMacro+132
	movl	$1953068832, _WangBangMacro+136
	movl	$1870209128, _WangBangMacro+140
	movl	$1746956917, _WangBangMacro+144
	movl	$543449445, _WangBangMacro+148
	movl	$4157033, _WangBangMacro+155
	movl	$544567129, _WangBangMacro+192
	movl	$544501614, _WangBangMacro+196
	movl	$1751607654, _WangBangMacro+200
	movl	$1702305908, _WangBangMacro+204
	movl	$1998613612, _WangBangMacro+208
	movl	$543716457, _WangBangMacro+212
	movl	$1684955496, _WangBangMacro+216
	movl	$2192228, _WangBangMacro+219
	movl	$1768977780, _WangBangMacro+264
	movl	$544567129, _WangBangMacro+256
	movl	$1931505523, _WangBangMacro+260
	movl	$2188393, _WangBangMacro+267
	movl	$1953068369, _WangBangMacro+320
	movl	$1919248928, _WangBangMacro+324
	movl	$1735289195, _WangBangMacro+328
	movl	$1717989152, _WangBangMacro+332
	movl	$1866670126, _WangBangMacro+336
	movl	$1713399149, _WangBangMacro+340
	movl	$1952999273, _WangBangMacro+344
	movl	$560295200, _WangBangMacro+348
	movb	$0, _WangBangMacro+352
	movl	$1952540759, _WangBangMacro+384
	movl	$1701344288, _WangBangMacro+388
	movl	$1952541984, _WangBangMacro+392
	movl	$544367988, _WangBangMacro+396
	movl	$544567161, _WangBangMacro+400
	movl	$1918985075, _WangBangMacro+404
	movl	$544826469, _WangBangMacro+408
	movl	$1064591715, _WangBangMacro+412
	movb	$0, _WangBangMacro+416
	movl	$543451460, _WangBangMacro+448
	movl	$1919033417, _WangBangMacro+452
	movl	$543908197, _WangBangMacro+456
	movl	$1920298873, _WangBangMacro+460
	movl	$1852793632, _WangBangMacro+464
	movl	$1953391971, _WangBangMacro+468
	movl	$1769234802, _WangBangMacro+472
	movl	$4157039, _WangBangMacro+476
	movl	$1701867336, _WangBangMacro+512
	movl	$1970239776, _WangBangMacro+516
	movl	$1919252256, _WangBangMacro+520
	movw	%ax, _WangBangMacro+588
	movl	$1, %eax
	movl	$1634738277, _WangBangMacro+524
	movl	$1735289209, _WangBangMacro+528
	movl	$1953784096, _WangBangMacro+532
	movl	$1769238117, _WangBangMacro+536
	movl	$3042927, _WangBangMacro+540
	movl	$1096045641, _WangBangMacro+576
	movl	$1430866249, _WangBangMacro+580
	movl	$555832661, _WangBangMacro+584
	call	__Z24SetDefaultKeyDefinitionsi
	movl	$1, %eax
	call	__Z16SetMouseDefaultsi
	xorl	%eax, %eax
L867:
	movl	$-1, _JoystickButtons(%eax)
	addl	$16, %eax
	movl	$-1, _JoystickButtons-12(%eax)
	movl	$-1, _JoystickButtons-8(%eax)
	movl	$-1, _JoystickButtons-4(%eax)
	cmpl	$144, %eax
	jb	L867
	xorl	%eax, %eax
	jmp	L871
	.p2align 4
	.p2align 4,,10
	.p2align 3
L869:
	movw	%si, (%ebx)
	addl	$1, %eax
L1482:
	addl	$24, %ebx
L871:
	cmpl	$31, %eax
	jle	L869
	addl	$1, %eax
	cmpl	$36, %eax
	jne	L1482
	xorl	%eax, %eax
L873:
	movl	$-1, _JoystickButtonsClicked(%eax)
	addl	$16, %eax
	movl	$-1, _JoystickButtonsClicked-12(%eax)
	movl	$-1, _JoystickButtonsClicked-8(%eax)
	movl	$-1, _JoystickButtonsClicked-4(%eax)
	cmpl	$144, %eax
	jb	L873
	movl	$-1, %ecx
	xorl	%eax, %eax
	movl	$32767, %edx
	movss	LC30, %xmm0
	movl	%ecx, %ebx
	.p2align 4
	.p2align 3
L875:
	movl	$65536, _JoystickAnalogScale(%eax)
	movb	$0, __ZL7joyAxes.lto_priv.0+28(,%eax,8)
	movl	$1000, _JoystickAnalogDead(%eax)
	movl	$9500, _JoystickAnalogSaturate(%eax)
	movl	$622593000, __ZL7joyAxes.lto_priv.0+24(,%eax,8)
	movl	%ecx, _JoystickDigitalAxes(%eax,%eax)
	movl	%ebx, _JoystickDigitalAxes+4(%eax,%eax)
	movb	$127, __ZL7joyAxes.lto_priv.0+2(,%eax,8)
	movw	%dx, __ZL7joyAxes.lto_priv.0(,%eax,8)
	movss	%xmm0, __ZL7joyAxes.lto_priv.0+20(,%eax,8)
	addl	$4, %eax
	cmpl	$36, %eax
	jne	L875
	movlps	LC33, %xmm2
	movl	$__ZZL34CONFIG_SetGameControllerAxesModernvE10analogAxes, %eax
	movl	$-1, _JoystickAnalogAxes
	movl	$__ZZL34CONFIG_SetGameControllerAxesModernvE10analogAxes+32, %esi
	movl	$-1, _JoystickAnalogAxes+4
	movl	$-1, _JoystickAnalogAxes+8
	movl	$-1, _JoystickAnalogAxes+12
	movl	$-1, _JoystickAnalogAxes+16
	movl	$-1, _JoystickAnalogAxes+20
	movl	$-1, _JoystickAnalogAxes+24
	movl	$-1, _JoystickAnalogAxes+28
	movl	$-1, _JoystickAnalogAxes+32
	movss	%xmm0, __ZL7joyAxes.lto_priv.0+84
	movlps	%xmm2, _JoystickAnalogScale+8
	movss	%xmm0, __ZL7joyAxes.lto_priv.0+116
L877:
	movl	4(%eax), %ecx
	movl	(%eax), %edx
	leal	1(%ecx), %ebx
	movl	%ecx, _JoystickAnalogAxes(,%edx,4)
	cmpl	$6, %ebx
	ja	L876
	sall	$5, %edx
	movb	%cl, __ZL7joyAxes.lto_priv.0(%edx)
L876:
	addl	$8, %eax
	cmpl	%eax, %esi
	jne	L877
	movl	$__ZZ25SetGameControllerDefaultsvE7buttons, %edx
	movl	$127, %ebx
	.p2align 6
	.p2align 4
	.p2align 3
L880:
	movl	4(%edx), %eax
	movl	(%edx), %ecx
	cmpl	$64, %eax
	movl	%eax, _JoystickButtons(,%ecx,4)
	cmovnb	%ebx, %eax
	cmpl	$31, %ecx
	ja	L879
	leal	(%ecx,%ecx,2), %ecx
	movb	%al, __ZL10joyButtons.lto_priv.0(,%ecx,8)
L879:
	addl	$8, %edx
	cmpl	$__ZZ25SetGameControllerDefaultsvE7buttons+64, %edx
	jne	L880
	movl	$__ZZ25SetGameControllerDefaultsvE11buttonsDuke, %ecx
	movl	$__ZZ25SetGameControllerDefaultsvE11buttonsDuke+24, %esi
	movl	$127, %ebx
L883:
	movl	4(%ecx), %eax
	movl	(%ecx), %edx
	cmpl	$64, %eax
	movl	%eax, _JoystickButtons(,%edx,4)
	cmovnb	%ebx, %eax
	cmpl	$31, %edx
	ja	L882
	leal	(%edx,%edx,2), %edx
	movb	%al, __ZL10joyButtons.lto_priv.0(,%edx,8)
L882:
	addl	$8, %ecx
	cmpl	%ecx, %esi
	jne	L883
	movl	$__ZZ25SetGameControllerDefaultsvE11digitalAxes, %eax
	movl	$__ZZ25SetGameControllerDefaultsvE11digitalAxes+24, %edi
L889:
	movl	4(%eax), %ecx
	movl	(%eax), %ebx
	movl	8(%eax), %edx
	leal	(%ecx,%ebx,2), %esi
	movl	%edx, _JoystickDigitalAxes(,%esi,4)
	cmpl	$64, %edx
	movl	$127, %esi
	cmovnb	%esi, %edx
	cmpl	$2, %ecx
	je	L885
	jg	L886
	testl	%ecx, %ecx
	je	L885
	cmpl	$1, %ecx
	jne	L888
L887:
	sall	$5, %ebx
	movb	%dl, __ZL7joyAxes.lto_priv.0+2(%ebx)
L888:
	addl	$12, %eax
	cmpl	%eax, %edi
	jne	L889
	movb	$1, _gs+64
	movb	$1, _gs+21
	movl	$204800, _gs
	movl	$0x41c80000, _CONTROL_MouseSensitivity
	movlps	%xmm2, _MouseAnalogScale
	movl	$_setupfilename, (%esp)
	call	*__imp__GetFileAttributesA@4
	subl	$4, %esp
	cmpl	$-1, %eax
	jne	L890
	movl	__ZL12scripthandle.lto_priv.0, %esi
	testl	%esi, %esi
	js	L1542
	movl	__ZL11scriptfiles.lto_priv.0(,%esi,4), %eax
	testl	%eax, %eax
	je	L1543
L944:
	movl	(%eax), %edi
	testl	%edi, %edi
	je	L1544
	movl	$_MapCopyEnabled, (%esp)
	movl	%esi, %eax
	movl	$LC34, %ecx
	movl	$LC35, %edx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	_MapCopyEnabled, %ecx
	movl	__ZL12scripthandle.lto_priv.0, %esi
	xorl	%edx, %edx
	movl	__ZL11scriptfiles.lto_priv.0(,%esi,4), %eax
	testl	%ecx, %ecx
	setne	%dl
	movl	%edx, _MapCopyEnabled
	testl	%eax, %eax
	je	L945
	movl	(%eax), %edi
	testl	%edi, %edi
	je	L1545
L949:
	movl	$_ZeroKillDemosEnabled, (%esp)
	movl	%esi, %eax
	movl	$LC36, %ecx
	movl	$LC35, %edx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	_ZeroKillDemosEnabled, %ecx
	movl	__ZL12scripthandle.lto_priv.0, %esi
	xorl	%edx, %edx
	movl	__ZL11scriptfiles.lto_priv.0(,%esi,4), %eax
	testl	%ecx, %ecx
	setne	%dl
	movl	%edx, _ZeroKillDemosEnabled
	testl	%eax, %eax
	je	L948
L950:
	movl	(%eax), %edi
	testl	%edi, %edi
	je	L1546
	movl	$_ScoreShotEnabled, (%esp)
	movl	%esi, %eax
	movl	$LC37, %ecx
	movl	$LC35, %edx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	_ScoreShotEnabled, %ecx
	movl	__ZL12scripthandle.lto_priv.0, %esi
	xorl	%edx, %edx
	movl	__ZL11scriptfiles.lto_priv.0(,%esi,4), %eax
	testl	%ecx, %ecx
	setne	%dl
	movl	%edx, _ScoreShotEnabled
	testl	%eax, %eax
	je	L951
	movl	(%eax), %edi
	testl	%edi, %edi
	je	L1547
L955:
	movl	$_MinHUDArmorEnabled, (%esp)
	movl	%esi, %eax
	movl	$LC38, %ecx
	movl	$LC35, %edx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	_MinHUDArmorEnabled, %ecx
	movl	__ZL12scripthandle.lto_priv.0, %esi
	xorl	%edx, %edx
	movl	__ZL11scriptfiles.lto_priv.0(,%esi,4), %eax
	testl	%ecx, %ecx
	setne	%dl
	movl	%edx, _MinHUDArmorEnabled
	testl	%eax, %eax
	je	L954
L956:
	movl	(%eax), %edi
	testl	%edi, %edi
	je	L1548
	movl	$_DemoTimeEnabled, (%esp)
	movl	%esi, %eax
	movl	$LC39, %ecx
	movl	$LC35, %edx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	_DemoTimeEnabled, %ecx
	movl	__ZL12scripthandle.lto_priv.0, %esi
	xorl	%edx, %edx
	movl	__ZL11scriptfiles.lto_priv.0(,%esi,4), %eax
	testl	%ecx, %ecx
	setne	%dl
	movl	%edx, _DemoTimeEnabled
	testl	%eax, %eax
	je	L957
	movl	(%eax), %edi
	testl	%edi, %edi
	je	L1549
L961:
	movl	$_ShowHeatEnabled, (%esp)
	movl	%esi, %eax
	movl	$LC40, %ecx
	movl	$LC35, %edx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	_ShowHeatEnabled, %ecx
	movl	__ZL12scripthandle.lto_priv.0, %esi
	xorl	%edx, %edx
	movl	__ZL11scriptfiles.lto_priv.0(,%esi,4), %eax
	testl	%ecx, %ecx
	setne	%dl
	movl	%edx, _ShowHeatEnabled
	testl	%eax, %eax
	je	L960
	movl	(%eax), %ebx
	testl	%ebx, %ebx
	je	L1550
L964:
	movl	$_ShowNukeEnabled, (%esp)
	movl	%esi, %eax
	movl	$LC35, %edx
	movl	$LC41, %ecx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	_ShowNukeEnabled, %edi
	movl	__ZL12scripthandle.lto_priv.0, %esi
	xorl	%edx, %edx
	movl	__ZL11scriptfiles.lto_priv.0(,%esi,4), %eax
	testl	%edi, %edi
	setne	%dl
	movl	%edx, _ShowNukeEnabled
	testl	%eax, %eax
	je	L1537
	movl	(%eax), %ebx
	movl	__ZL12scripthandle.lto_priv.0, %eax
	testl	%ebx, %ebx
	je	L969
L1564:
	movl	$_ud_setup+8, (%esp)
	movl	%esi, %eax
	movl	$LC43, %edx
	movl	$LC42, %ecx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	__ZL12scripthandle.lto_priv.0, %esi
	movl	__ZL11scriptfiles.lto_priv.0(,%esi,4), %edx
	movl	%esi, %eax
	testl	%edx, %edx
	je	L1537
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	je	L969
	movl	$_ud_setup+12, (%esp)
	movl	$LC43, %edx
	movl	$LC44, %ecx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	__ZL12scripthandle.lto_priv.0, %esi
	movl	__ZL11scriptfiles.lto_priv.0(,%esi,4), %edx
	movl	%esi, %eax
	testl	%edx, %edx
	je	L1537
	movl	(%edx), %edx
	testl	%edx, %edx
	je	L976
L1565:
	movl	$_ud_setup+16, (%esp)
	movl	$LC43, %edx
	movl	$LC45, %ecx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	__ZL12scripthandle.lto_priv.0, %esi
	movl	__ZL11scriptfiles.lto_priv.0(,%esi,4), %edx
	movl	%esi, %eax
	testl	%edx, %edx
	je	L1537
	movl	(%edx), %edi
	testl	%edi, %edi
	je	L980
L1566:
	movl	$_ud_setup+20, (%esp)
	movl	$LC43, %edx
	movl	$LC46, %ecx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	__ZL12scripthandle.lto_priv.0, %eax
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %edx
	movl	%eax, %esi
	cmpl	$7, _ud_setup+20
	jg	L981
L1143:
	movl	$8, _ud_setup+20
L981:
	testl	%edx, %edx
	je	L1493
L982:
	movl	(%edx), %esi
	testl	%esi, %esi
	je	L984
	movl	$_maxrefreshfreq, (%esp)
	movl	$LC43, %edx
	movl	$LC47, %ecx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	__ZL12scripthandle.lto_priv.0, %esi
	movl	__ZL11scriptfiles.lto_priv.0(,%esi,4), %edx
	movl	%esi, %eax
	testl	%edx, %edx
	je	L1493
L985:
	movl	(%edx), %ebx
	testl	%ebx, %ebx
	je	L986
	movl	$_gltexfiltermode, (%esp)
	movl	$LC43, %edx
	movl	$LC48, %ecx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	__ZL12scripthandle.lto_priv.0, %esi
	movl	__ZL11scriptfiles.lto_priv.0(,%esi,4), %edx
	movl	%esi, %eax
	testl	%edx, %edx
	je	L1493
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	je	L988
L1568:
	movl	$_glanisotropy, (%esp)
	movl	$LC43, %edx
	movl	$LC49, %ecx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	__ZL12scripthandle.lto_priv.0, %esi
	movl	__ZL11scriptfiles.lto_priv.0(,%esi,4), %edx
	movl	%esi, %eax
	testl	%edx, %edx
	je	L1493
	movl	(%edx), %edx
	testl	%edx, %edx
	je	L990
L1569:
	movl	$_glusetexcompr, (%esp)
	movl	$LC43, %edx
	movl	$LC50, %ecx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	__ZL12scripthandle.lto_priv.0, %esi
	movl	__ZL11scriptfiles.lto_priv.0(,%esi,4), %edx
	movl	%esi, %eax
	testl	%edx, %edx
	je	L1493
	movl	(%edx), %edi
	testl	%edi, %edi
	je	L992
L1570:
	movl	$_FXToggle, (%esp)
	movl	$LC52, %edx
	movl	$LC51, %ecx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	__ZL12scripthandle.lto_priv.0, %esi
	movl	__ZL11scriptfiles.lto_priv.0(,%esi,4), %edx
	movl	%esi, %eax
	testl	%edx, %edx
	je	L1493
	movl	(%edx), %esi
	testl	%esi, %esi
	je	L994
L1571:
	movl	$_MusicToggle, (%esp)
	movl	$LC52, %edx
	movl	$LC53, %ecx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	__ZL12scripthandle.lto_priv.0, %esi
	movl	__ZL11scriptfiles.lto_priv.0(,%esi,4), %edx
	movl	%esi, %eax
	testl	%edx, %edx
	je	L1493
L995:
	movl	(%edx), %ebx
	testl	%ebx, %ebx
	je	L996
	movl	$_FXDevice, (%esp)
	movl	$LC52, %edx
	movl	$LC54, %ecx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	__ZL12scripthandle.lto_priv.0, %esi
	movl	__ZL11scriptfiles.lto_priv.0(,%esi,4), %edx
	movl	%esi, %eax
	testl	%edx, %edx
	je	L1493
L997:
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	je	L998
	movl	$_MusicDevice, (%esp)
	movl	$LC52, %edx
	movl	$LC55, %ecx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	__ZL12scripthandle.lto_priv.0, %esi
	movl	__ZL11scriptfiles.lto_priv.0(,%esi,4), %edx
	movl	%esi, %eax
	testl	%edx, %edx
	je	L1493
L999:
	movl	(%edx), %edx
	testl	%edx, %edx
	je	L1491
	leal	-444(%ebp), %edx
	movl	$LC56, %ecx
	movl	%edx, (%esp)
	movl	$LC52, %edx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	__ZL12scripthandle.lto_priv.0, %eax
L1491:
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %edx
	movl	-444(%ebp), %ebx
	movl	%eax, %esi
	movl	%ebx, _gs+8
	testl	%edx, %edx
	je	L983
	movl	(%edx), %edi
	testl	%edi, %edi
	je	L1551
	leal	-444(%ebp), %edx
	movl	$LC57, %ecx
	movl	%edx, (%esp)
	movl	$LC52, %edx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	__ZL12scripthandle.lto_priv.0, %eax
	movl	-444(%ebp), %ebx
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %edx
	movl	%ebx, _gs+4
	movl	%eax, %esi
	testl	%edx, %edx
	je	L1003
L1005:
	movl	(%edx), %esi
	testl	%esi, %esi
	je	L1006
	movl	$_NumVoices, (%esp)
	movl	$LC52, %edx
	movl	$LC58, %ecx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	__ZL12scripthandle.lto_priv.0, %eax
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %edx
	movl	%eax, %esi
	testl	%edx, %edx
	je	L1003
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	je	L1006
	movl	$_NumChannels, (%esp)
	movl	$LC52, %edx
	movl	$LC59, %ecx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	__ZL12scripthandle.lto_priv.0, %eax
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %edx
	movl	%eax, %esi
	testl	%edx, %edx
	je	L1003
L1142:
	movl	(%edx), %edx
	testl	%edx, %edx
	je	L1007
	movl	$_NumBits, (%esp)
	movl	$LC52, %edx
	movl	$LC60, %ecx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	__ZL12scripthandle.lto_priv.0, %eax
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %edx
	movl	%eax, %esi
	testl	%edx, %edx
	je	L1003
L1141:
	movl	(%edx), %edi
	testl	%edi, %edi
	je	L1008
	movl	$_MixRate, (%esp)
	movl	$LC52, %edx
	movl	$LC61, %ecx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	__ZL12scripthandle.lto_priv.0, %eax
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %edx
	movl	%eax, %esi
	testl	%edx, %edx
	je	L1003
L1140:
	movl	(%edx), %esi
	testl	%esi, %esi
	je	L1552
	leal	-444(%ebp), %edx
	movl	$LC62, %ecx
	movl	%edx, (%esp)
	movl	$LC52, %edx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-444(%ebp), %ebx
	movl	__ZL12scripthandle.lto_priv.0, %esi
L1003:
	testb	%bl, %bl
	leal	-272(%ebp), %ebx
	movl	$LC63, %ecx
	movl	%esi, %eax
	setne	_gs+30
	movl	$LC52, %edx
	movl	%ebx, (%esp)
	call	_SCRIPT_GetString
	cmpb	$0, -272(%ebp)
	je	L1010
	movl	-32(%ebp), %eax
	movl	%eax, _gs+306
	movl	-28(%ebp), %eax
	movl	%eax, _gs+310
	movl	-24(%ebp), %eax
	movl	%eax, _gs+314
	movl	-20(%ebp), %eax
	movl	%eax, _gs+318
	xorl	%eax, %eax
L1011:
	movl	(%ebx,%eax), %edi
	movl	4(%ebx,%eax), %esi
	movl	8(%ebx,%eax), %ecx
	movl	12(%ebx,%eax), %edx
	addl	$16, %eax
	movl	%edi, _gs+50(%eax)
	movl	%esi, _gs+54(%eax)
	movl	%ecx, _gs+58(%eax)
	movl	%edx, _gs+62(%eax)
	cmpl	$240, %eax
	jb	L1011
L1010:
	movl	__ZL12scripthandle.lto_priv.0, %eax
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %edx
	movl	%eax, %ebx
	testl	%edx, %edx
	je	L1013
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	je	L1014
	movl	$_ud_setup+24, (%esp)
	movl	$LC64, %ecx
	movl	$LC65, %edx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	__ZL12scripthandle.lto_priv.0, %eax
	movl	_g_grpNamePtr, %edi
	movl	%eax, %ebx
	testl	%edi, %edi
	je	L1154
L1015:
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %edx
	testl	%edx, %edx
	je	L1019
L1151:
	movl	(%edx), %esi
	testl	%esi, %esi
	je	L1020
	movl	$_ud_setup+4, (%esp)
	movl	$LC68, %edx
	movl	$LC67, %ecx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	__ZL12scripthandle.lto_priv.0, %eax
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %edx
	movl	%eax, %ebx
	testl	%edx, %edx
	je	L1019
	movl	(%edx), %ebx
	testl	%ebx, %ebx
	je	L1553
L1021:
	movl	$_ud_setup, (%esp)
	movl	$LC69, %ecx
	movl	$LC68, %edx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	__ZL12scripthandle.lto_priv.0, %ebx
L1019:
	movl	$_RTSName, (%esp)
	movl	$LC70, %ecx
	movl	%ebx, %eax
	xorl	%esi, %esi
	movl	$LC71, %edx
	call	_SCRIPT_GetString
	movl	$LC72, %ecx
	movl	$LC71, %edx
	movl	$_CommPlayerName, (%esp)
	movl	__ZL12scripthandle.lto_priv.0, %eax
	call	_SCRIPT_GetString
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	.p2align 4
	.p2align 3
L1022:
	movl	%esi, 8(%esp)
	movl	$LC73, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	%esi, %eax
	movl	$_ds, %ecx
	addl	$1, %esi
	sall	$6, %eax
	movl	$LC71, %edx
	addl	$_WangBangMacro, %eax
	movl	%eax, -352(%ebp)
	leal	-352(%ebp), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetStringPtr
	cmpl	$10, %esi
	jne	L1022
	movl	$_gs+41, (%esp)
	movl	$LC74, %ecx
	movl	$LC75, %edx
	movl	%ebx, %eax
	call	_SCRIPT_GetString
	call	__Z14DecodePasswordPc.constprop.0
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1023
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	L1024
	leal	-352(%ebp), %eax
	movl	$LC76, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1495
	movb	%al, _gs+12
L1495:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1023
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L1024
	leal	-352(%ebp), %eax
	movl	$LC77, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1496
	movb	%al, _gs+13
L1496:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1023
	movl	(%eax), %edi
	testl	%edi, %edi
	je	L1024
	leal	-352(%ebp), %eax
	movl	$LC78, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1497
	movb	%al, _gs+14
L1497:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1023
	movl	(%eax), %esi
	testl	%esi, %esi
	je	L1024
	leal	-352(%ebp), %eax
	movl	$LC79, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1498
	movb	%al, _gs+18
L1498:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1023
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	L1024
	leal	-352(%ebp), %eax
	movl	$LC80, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1499
	movb	%al, _gs+19
L1499:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1023
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L1024
	leal	-352(%ebp), %eax
	movl	$LC81, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1500
	movb	%al, _gs+20
L1500:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1023
	movl	(%eax), %edi
	testl	%edi, %edi
	je	L1024
	leal	-352(%ebp), %eax
	movl	$LC82, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1501
	movb	%al, _gs+21
L1501:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1023
	movl	(%eax), %esi
	testl	%esi, %esi
	je	L1024
	leal	-352(%ebp), %eax
	movl	$LC83, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1502
	movb	%al, _gs+22
L1502:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1023
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	L1024
	leal	-352(%ebp), %eax
	movl	$LC84, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1554
	movb	%al, _gs+23
	movzbl	%al, %edx
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
L1047:
	movl	%edx, __ZL18AutoAimConfigValue
	movl	_AutoAimCommandLineOverride, %edx
	cmpl	$1, %edx
	ja	L1048
	movb	%dl, _gs+23
L1048:
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1042
L1045:
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L1044
	leal	-352(%ebp), %eax
	movl	$LC85, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1503
	movb	%al, _gs+24
L1503:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1042
L1050:
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1042
	leal	-352(%ebp), %eax
	movl	$LC86, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1504
	movb	%al, _gs+25
L1504:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1042
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1042
	leal	-352(%ebp), %eax
	movl	$LC87, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1505
	movb	%al, _gs+28
L1505:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1042
	movl	(%eax), %edi
	testl	%edi, %edi
	je	L1042
	leal	-352(%ebp), %eax
	movl	$LC88, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1506
	movb	%al, _gs+29
L1506:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1042
	movl	(%eax), %esi
	testl	%esi, %esi
	je	L1042
	leal	-352(%ebp), %eax
	movl	$LC89, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1507
	movb	%al, _gs+328
L1507:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1042
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	L1042
	leal	-352(%ebp), %eax
	movl	$LC90, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1508
	movb	%al, _gs+26
L1508:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1042
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L1042
	leal	-352(%ebp), %eax
	movl	$LC91, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1509
	movb	%al, _gs+27
L1509:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1042
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1042
	leal	-352(%ebp), %eax
	movl	$LC92, %ecx
	movl	$LC68, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1510
	movb	%al, _gs+15
L1510:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1042
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1042
	leal	-352(%ebp), %eax
	movl	$LC93, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1511
	movb	%al, _gs+31
L1511:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1042
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1042
	leal	-352(%ebp), %eax
	movl	$LC94, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1512
	movb	%al, _gs+32
L1512:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1042
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1042
	leal	-352(%ebp), %eax
	movl	$LC95, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1513
	movb	%al, _gs+33
L1513:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1042
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1042
	leal	-352(%ebp), %eax
	movl	$LC96, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1514
	movb	%al, _gs+34
L1514:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1042
	movl	(%eax), %edi
	testl	%edi, %edi
	je	L1042
	leal	-352(%ebp), %eax
	movl	$LC97, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1515
	movb	%al, _gs+35
L1515:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1042
	movl	(%eax), %esi
	testl	%esi, %esi
	je	L1042
	leal	-352(%ebp), %eax
	movl	$LC98, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1516
	movb	%al, _gs+36
L1516:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1042
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	L1042
	leal	-352(%ebp), %eax
	movl	$LC99, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1517
	movb	%al, _gs+37
L1517:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1042
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L1042
	leal	-352(%ebp), %eax
	movl	$LC100, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1518
	movb	%al, _gs+38
L1518:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1042
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1042
	leal	-352(%ebp), %eax
	movl	$LC101, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1519
	movb	%al, _gs+39
L1519:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1042
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1042
	leal	-352(%ebp), %eax
	movl	$LC102, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1520
	movb	%al, _gs+62
L1520:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1042
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1042
	leal	-352(%ebp), %eax
	movl	$LC103, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1521
	movb	%al, _gs+63
L1521:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1042
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1042
	leal	-352(%ebp), %eax
	movl	$LC104, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1522
	movb	%al, _gs+322
L1522:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1042
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1042
	leal	-352(%ebp), %eax
	movl	$LC105, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1523
	movb	%al, _gs+323
L1523:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1042
	movl	(%eax), %edi
	testl	%edi, %edi
	je	L1042
	leal	-352(%ebp), %eax
	movl	$LC106, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1524
	movl	$145, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$60, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, _gs+324
L1524:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1042
	movl	(%eax), %esi
	testl	%esi, %esi
	je	L1042
	leal	-352(%ebp), %eax
	movl	$LC107, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1525
	movb	%al, _gs+64
L1525:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1042
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	L1042
	leal	-352(%ebp), %eax
	movl	$LC108, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1526
	movb	%al, _gs+17
L1526:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1042
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L1042
	leal	-352(%ebp), %eax
	movl	$LC109, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1527
	movb	%al, _gs+40
L1527:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1042
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1042
	leal	-352(%ebp), %eax
	movl	$LC110, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %eax
	cmpl	$-1, %eax
	je	L1528
	movb	%al, _gs+65
L1528:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1042
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1042
	leal	-352(%ebp), %eax
	movl	$LC111, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
L1042:
	testb	$1, _SW_GameFlags
	jne	L1555
L1103:
	movl	__ZL12scripthandle.lto_priv.0, %eax
	movl	%eax, -452(%ebp)
	testl	%eax, %eax
	js	L1137
	movl	-452(%ebp), %edi
	movl	__ZL11scriptfiles.lto_priv.0(,%edi,4), %eax
	testl	%eax, %eax
	je	L1110
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1110
	movl	$LC115, %edx
	movl	%edi, %eax
	call	_SCRIPT_SectionExists
	testl	%eax, %eax
	je	L1110
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L1110
	xorl	%ecx, %ecx
	.p2align 4
	.p2align 4
	.p2align 3
L1111:
	movl	%eax, %edx
	movl	8(%eax), %eax
	addl	$1, %ecx
	cmpl	%eax, %edx
	jne	L1111
	movl	$0, -448(%ebp)
	leal	-432(%ebp), %esi
	movl	%ecx, -456(%ebp)
	.p2align 4
	.p2align 3
L1132:
	movl	-448(%ebp), %ecx
	movl	-452(%ebp), %eax
	movl	$LC115, %edx
	call	_SCRIPT_Entry
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1112
	xorl	%ebx, %ebx
	jmp	L1114
	.p2align 4,,10
	.p2align 3
L1556:
	addl	$1, %ebx
	cmpl	$54, %ebx
	je	L1112
L1114:
	movl	_gamefunctions(,%ebx,4), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1556
	xorl	%eax, %eax
L1145:
	movl	$0, (%esi,%eax)
	movl	$0, 4(%esi,%eax)
	movl	$0, 8(%esi,%eax)
	movl	$0, 12(%esi,%eax)
	addl	$16, %eax
	cmpl	$80, %eax
	jb	L1145
	xorl	%eax, %eax
L1147:
	movl	$0, -352(%ebp,%eax)
	movl	$0, -348(%ebp,%eax)
	movl	$0, -344(%ebp,%eax)
	movl	$0, -340(%ebp,%eax)
	addl	$16, %eax
	cmpl	$80, %eax
	jb	L1147
	movl	-452(%ebp), %edi
	movl	-448(%ebp), %ecx
	movl	$LC115, %edx
	movl	%edi, %eax
	call	_SCRIPT_Entry
	movl	%esi, -440(%ebp)
	movl	%eax, -464(%ebp)
	leal	-352(%ebp), %eax
	movl	%eax, -436(%ebp)
	movl	__ZL11scriptfiles.lto_priv.0(,%edi,4), %eax
	testl	%eax, %eax
	je	L1115
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1115
	movl	-452(%ebp), %eax
	movl	$LC115, %edx
	call	_SCRIPT_SectionExists
	testl	%eax, %eax
	je	L1115
	movl	-464(%ebp), %edi
	testl	%edi, %edi
	je	L1115
	movl	4(%eax), %edi
	testl	%edi, %edi
	je	L1115
	movl	%ebx, -460(%ebp)
	movl	%edi, %ebx
	movl	-464(%ebp), %edi
	jmp	L1120
	.p2align 4,,10
	.p2align 3
L1161:
	movl	%eax, %ebx
L1120:
	movl	%edi, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1121
	movl	8(%ebx), %eax
	cmpl	%eax, %ebx
	jne	L1161
	movl	-460(%ebp), %ebx
L1115:
	movl	$-1, %edx
	movl	$-1, %eax
L1119:
	movb	%dl, _KeyboardKeys(%ebx,%ebx)
	movb	%al, _KeyboardKeys+1(%ebx,%ebx)
L1112:
	movl	-448(%ebp), %eax
	addl	$1, %eax
	cmpl	%eax, -456(%ebp)
	je	L1110
	movl	%eax, -448(%ebp)
	jmp	L1132
L1121:
	movl	%ebx, %edi
	leal	-440(%ebp), %eax
	movl	-460(%ebp), %ebx
	movl	4(%edi), %edx
	call	__ZL18SCRIPT_ParseStringPPcS_.lto_priv.0
	movl	%eax, %edx
	cmpb	$34, -1(%eax)
	jne	L1126
	movzbl	(%edx), %eax
	cmpb	$9, %al
	je	L1363
	cmpb	$32, %al
	jne	L1123
	.p2align 4
	.p2align 4
	.p2align 3
L1363:
	movzbl	1(%edx), %eax
	addl	$1, %edx
	cmpb	$32, %al
	je	L1363
	cmpb	$9, %al
	je	L1363
L1123:
	testb	%al, %al
	je	L1126
	leal	-436(%ebp), %eax
	call	__ZL18SCRIPT_ParseStringPPcS_.lto_priv.0
	movzbl	-352(%ebp), %eax
	movb	%al, -460(%ebp)
	cmpb	$0, -432(%ebp)
	je	L1557
L1122:
	movl	$_sctokeylut, %edi
	jmp	L1129
	.p2align 4,,10
	.p2align 3
L1128:
	addl	$8, %edi
	cmpl	$_sctokeylut+816, %edi
	je	L1558
L1129:
	movl	%esi, 4(%esp)
	movl	(%edi), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1128
	movzbl	4(%edi), %edx
L1127:
	cmpb	$0, -460(%ebp)
	je	L1164
	movl	%ebx, -460(%ebp)
	movl	%edx, %edi
	movl	$_sctokeylut, %ebx
	jmp	L1131
	.p2align 4,,10
	.p2align 3
L1130:
	addl	$8, %ebx
	cmpl	$_sctokeylut+816, %ebx
	je	L1559
L1131:
	leal	-352(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1130
	movl	%edi, %edx
	movl	%ebx, %edi
	movl	-460(%ebp), %ebx
	movzbl	4(%edi), %eax
	jmp	L1119
	.p2align 4,,10
	.p2align 3
L1137:
	xorl	%esi, %esi
L855:
	leal	-12(%ebp), %esp
	movl	%esi, %eax
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
L1126:
	.cfi_restore_state
	cmpb	$0, -432(%ebp)
	je	L1115
	movb	$0, -460(%ebp)
	jmp	L1122
	.p2align 4,,10
	.p2align 3
L886:
	cmpl	$3, %ecx
	je	L887
	jmp	L888
	.p2align 4,,10
	.p2align 3
L885:
	sall	$5, %ebx
	movb	%dl, __ZL7joyAxes.lto_priv.0+1(%ebx)
	jmp	L888
	.p2align 4,,10
	.p2align 3
L1110:
	movl	_osd, %edi
	movzbl	_KeyboardKeys+100, %esi
	xorl	%eax, %eax
	movl	$127, %ebx
	jmp	L1136
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1133:
	movzbl	_KeyboardKeys(%eax,%eax), %ecx
	movzbl	_KeyboardKeys+1(%eax,%eax), %edx
	testb	%cl, %cl
	cmove	%ebx, %ecx
	testb	%dl, %dl
	cmove	%ebx, %edx
	movb	%cl, __ZL18CONTROL_KeyMapping.lto_priv.0(%eax,%eax)
	movb	%dl, __ZL18CONTROL_KeyMapping.lto_priv.0+1(%eax,%eax)
	addl	$1, %eax
	cmpl	$54, %eax
	je	L1137
L1136:
	cmpl	$50, %eax
	jne	L1133
	movl	%esi, 3244(%edi)
	movl	$51, %eax
	jmp	L1133
L1155:
	movl	$1024, %eax
	movl	$768, %edx
	jmp	L866
L890:
	movl	$32768, 4(%esp)
	movl	$_setupfilename, (%esp)
	call	_open
	movl	%eax, (%esp)
	movl	%eax, %esi
	call	_filelength
	leal	1(%eax), %ebx
	movl	%eax, -448(%ebp)
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L893
	movl	-448(%ebp), %eax
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	call	_read
	movl	-448(%ebp), %eax
	movb	$10, (%edi,%eax)
	movl	%esi, (%esp)
	call	_close
	call	_SCRIPT_Init.constprop.0
	movl	%eax, %esi
	cmpl	$-1, %eax
	je	L1560
	movl	$LC26, -460(%ebp)
	movl	-448(%ebp), %eax
	testl	%eax, %eax
	js	L1489
	movl	%edi, -456(%ebp)
	movl	%esi, -448(%ebp)
	movl	%edi, %esi
L896:
	movzbl	(%esi), %eax
	leal	-1(%ebx), %ecx
	leal	1(%esi), %edx
	movl	%esi, %ebx
	movb	%al, -452(%ebp)
L943:
	movzbl	-452(%ebp), %eax
	cmpb	$32, %al
	ja	L899
L1561:
	cmpb	$8, %al
	jbe	L900
	movl	$8388627, %edi
	subl	$9, %eax
	btl	%eax, %edi
	jnc	L900
	testl	%ecx, %ecx
	je	L1478
	movzbl	(%edx), %eax
	movl	%edx, %ebx
	subl	$1, %ecx
	addl	$1, %edx
	movb	%al, -452(%ebp)
	movzbl	-452(%ebp), %eax
	cmpb	$32, %al
	jbe	L1561
L899:
	movzbl	-452(%ebp), %eax
	cmpb	$59, %al
	je	L902
	cmpb	$91, %al
	jne	L900
	testl	%ecx, %ecx
	je	L1478
	movzbl	(%edx), %eax
	leal	1(%edx), %ebx
	subl	$1, %ecx
	movl	%edx, %esi
	cmpb	$13, %al
	je	L1531
L914:
	cmpb	$93, %al
	je	L916
	cmpb	$10, %al
	je	L1531
	testl	%ecx, %ecx
	je	L1478
	movzbl	(%ebx), %eax
	addl	$1, %esi
	subl	$1, %ecx
	addl	$1, %ebx
	cmpb	$13, %al
	jne	L914
L1531:
	testl	%ecx, %ecx
	je	L1478
	movzbl	(%ebx), %eax
	movl	%edx, -460(%ebp)
	subl	$1, %ecx
	leal	1(%ebx), %edx
	movb	%al, -452(%ebp)
	jmp	L943
L916:
	movl	%ecx, %eax
	movl	%esi, %ecx
	movl	%ebx, %esi
	movb	$0, (%ecx)
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1478
L918:
	movzbl	(%esi), %eax
	cmpb	$10, %al
	je	L919
	cmpb	$13, %al
	je	L919
	addl	$1, %esi
	subl	$1, %ebx
	jne	L918
L1478:
	movl	-448(%ebp), %esi
	movl	-456(%ebp), %edi
L1489:
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	__ZL11scriptfiles.lto_priv.0(,%esi,4), %eax
	subl	$4, %esp
	movl	%esi, __ZL12scripthandle.lto_priv.0
	testl	%eax, %eax
	jne	L944
L1543:
	movl	_MapCopyEnabled, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	setne	%al
	movl	%eax, _MapCopyEnabled
L945:
	movl	_ZeroKillDemosEnabled, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	setne	%al
	movl	%eax, _ZeroKillDemosEnabled
L948:
	movl	_ScoreShotEnabled, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	setne	%al
	movl	%eax, _ScoreShotEnabled
L951:
	movl	_MinHUDArmorEnabled, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	setne	%al
	movl	%eax, _MinHUDArmorEnabled
L954:
	movl	_DemoTimeEnabled, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	setne	%al
	movl	%eax, _DemoTimeEnabled
L957:
	movl	_ShowHeatEnabled, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	setne	%al
	movl	%eax, _ShowHeatEnabled
L960:
	movl	_ShowNukeEnabled, %edi
	xorl	%eax, %eax
	testl	%edi, %edi
	setne	%al
	movl	%eax, _ShowNukeEnabled
L1537:
	cmpl	$7, _ud_setup+20
	jg	L1493
	movl	$8, _ud_setup+20
L1493:
	movl	-444(%ebp), %ebx
	movl	%ebx, _gs+8
L983:
	movl	%ebx, _gs+4
	jmp	L1003
L1540:
	movl	$32, (%esp)
	call	_SDL_Init
	jmp	L865
L1555:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	movl	$-1, -352(%ebp)
	testl	%eax, %eax
	je	L1529
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1529
	leal	-352(%ebp), %eax
	movl	$LC75, %edx
	movl	$LC112, %ecx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	-352(%ebp), %edx
	cmpl	$-1, %edx
	je	L1529
	movw	%dx, _GamePlays
	movswl	%dx, %eax
L1105:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L1108
	movl	%eax, 16(%esp)
	movl	$LC113, 12(%esp)
	movl	$282, 8(%esp)
	movl	$LC114, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movzwl	_GamePlays, %eax
L1108:
	addl	$1, %eax
	movw	%ax, _GamePlays
	jmp	L1103
L1013:
	movl	_g_grpNamePtr, %edx
	testl	%edx, %edx
	jne	L1019
L1154:
	cmpl	$-1, _g_addonNum
	jne	L1015
L1152:
	movl	$_g_grpNamePtr, (%esp)
	movl	$LC66, %ecx
	movl	$LC65, %edx
	call	_SCRIPT_GetStringPtr
	movl	_g_grpNamePtr, %eax
	testl	%eax, %eax
	je	L1494
	cmpb	$0, (%eax)
	je	L1562
L1494:
	movl	__ZL12scripthandle.lto_priv.0, %eax
	movl	%eax, %ebx
	jmp	L1015
L1541:
	movl	$32, (%esp)
	call	_SDL_InitSubSystem
	jmp	L865
L1023:
	movzbl	_gs+23, %eax
	movl	%eax, __ZL18AutoAimConfigValue
	movl	_AutoAimCommandLineOverride, %eax
	cmpl	$1, %eax
	ja	L1042
	movb	%al, _gs+23
	jmp	L1042
L1014:
	movl	_g_grpNamePtr, %ecx
	testl	%ecx, %ecx
	je	L1563
L1020:
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %edx
	movl	(%edx), %ebx
	testl	%ebx, %ebx
	jne	L1021
L1553:
	movl	%eax, %ebx
	jmp	L1019
L1548:
	movl	_DemoTimeEnabled, %ebx
	xorl	%edx, %edx
	testl	%ebx, %ebx
	setne	%dl
	movl	%edx, _DemoTimeEnabled
	movl	(%eax), %edi
	testl	%edi, %edi
	jne	L961
L1549:
	movl	_ShowHeatEnabled, %ebx
	xorl	%edx, %edx
	testl	%ebx, %ebx
	setne	%dl
	movl	%edx, _ShowHeatEnabled
	movl	(%eax), %ebx
	testl	%ebx, %ebx
	jne	L964
L1550:
	movl	_ShowNukeEnabled, %ecx
	xorl	%edx, %edx
	testl	%ecx, %ecx
	setne	%dl
	movl	%edx, _ShowNukeEnabled
	movl	(%eax), %ebx
	movl	__ZL12scripthandle.lto_priv.0, %eax
	testl	%ebx, %ebx
	jne	L1564
L969:
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %edx
	movl	(%edx), %edx
	testl	%edx, %edx
	jne	L1565
L976:
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %edx
	movl	(%edx), %edi
	testl	%edi, %edi
	jne	L1566
L980:
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %edx
	movl	%eax, %esi
	cmpl	$7, _ud_setup+20
	jle	L1143
	jmp	L982
L1552:
	movl	%eax, %esi
	jmp	L1003
L1008:
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %edx
	jmp	L1140
L1007:
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %edx
	jmp	L1141
L1006:
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %edx
	jmp	L1142
L998:
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %edx
	jmp	L999
L996:
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %edx
	jmp	L997
L1024:
	movzbl	_gs+23, %edx
	movl	%edx, __ZL18AutoAimConfigValue
	movl	_AutoAimCommandLineOverride, %edx
	cmpl	$1, %edx
	jbe	L1567
L1044:
	movl	$-1, -352(%ebp)
	jmp	L1050
L1546:
	movl	_ScoreShotEnabled, %ebx
	xorl	%edx, %edx
	testl	%ebx, %ebx
	setne	%dl
	movl	%edx, _ScoreShotEnabled
	movl	(%eax), %edi
	testl	%edi, %edi
	jne	L955
L1547:
	movl	_MinHUDArmorEnabled, %ebx
	xorl	%edx, %edx
	testl	%ebx, %ebx
	setne	%dl
	movl	%edx, _MinHUDArmorEnabled
	jmp	L956
L1544:
	movl	_MapCopyEnabled, %ebx
	xorl	%edx, %edx
	testl	%ebx, %ebx
	setne	%dl
	movl	%edx, _MapCopyEnabled
	movl	(%eax), %edi
	testl	%edi, %edi
	jne	L949
L1545:
	movl	_ZeroKillDemosEnabled, %ebx
	xorl	%edx, %edx
	testl	%ebx, %ebx
	setne	%dl
	movl	%edx, _ZeroKillDemosEnabled
	jmp	L950
L1551:
	movl	%ebx, _gs+4
	jmp	L1005
L986:
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %edx
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	jne	L1568
L988:
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %edx
	movl	(%edx), %edx
	testl	%edx, %edx
	jne	L1569
L990:
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %edx
	movl	(%edx), %edi
	testl	%edi, %edi
	jne	L1570
L992:
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %edx
	movl	(%edx), %esi
	testl	%esi, %esi
	jne	L1571
L994:
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %edx
	jmp	L995
L984:
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %edx
	jmp	L985
L919:
	movl	%edx, -460(%ebp)
L913:
	testl	%ebx, %ebx
	jg	L896
	jmp	L1478
	.p2align 4,,10
	.p2align 3
L1529:
	movswl	_GamePlays, %eax
	jmp	L1105
L1558:
	xorl	%edx, %edx
	jmp	L1127
L1559:
	movl	-460(%ebp), %ebx
	movl	%edi, %edx
	xorl	%eax, %eax
	jmp	L1119
L900:
	movzbl	-452(%ebp), %eax
	movl	%ecx, -468(%ebp)
	movl	%edx, -464(%ebp)
	movl	%eax, (%esp)
	call	*__imp__isalpha
	movl	-464(%ebp), %edx
	movl	-468(%ebp), %ecx
	testl	%eax, %eax
	je	L908
	testl	%ecx, %ecx
	je	L1478
	leal	1(%edx), %edi
	movzbl	(%edx), %edx
	subl	$1, %ecx
	movl	%ebx, %eax
L909:
	cmpb	$59, %dl
	je	L921
	ja	L922
	cmpb	$10, %dl
	je	L1533
	cmpb	$13, %dl
	jne	L924
L1533:
	testl	%ecx, %ecx
	je	L1478
	movzbl	(%edi), %eax
	leal	1(%edi), %edx
	subl	$1, %ecx
	movl	%edi, %ebx
	movb	%al, -452(%ebp)
	jmp	L943
L922:
	cmpb	$61, %dl
	je	L1487
	jmp	L924
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1360:
	subl	$1, %eax
L1487:
	movzbl	(%eax), %edx
	cmpb	$32, %dl
	je	L1360
	cmpb	$9, %dl
	je	L1360
	movb	$0, 1(%eax)
	testl	%ecx, %ecx
	je	L1478
	movzbl	(%edi), %edx
	leal	1(%edi), %eax
	subl	$1, %ecx
	movl	%edi, -464(%ebp)
	movl	%ecx, -452(%ebp)
	movl	%eax, %esi
	movl	%edi, %ecx
	movl	-452(%ebp), %edi
	cmpb	$10, %dl
	je	L932
L1572:
	cmpb	$13, %dl
	je	L932
	testl	%edi, %edi
	je	L1478
	movzbl	(%esi), %edx
	addl	$1, %ecx
	subl	$1, %edi
	addl	$1, %esi
	cmpb	$10, %dl
	jne	L1572
L932:
	movzbl	(%ecx), %edx
	movl	%edi, -452(%ebp)
	movl	-464(%ebp), %edi
	cmpb	$9, %dl
	je	L1361
	cmpb	$32, %dl
	jne	L934
	.p2align 4
	.p2align 4
	.p2align 3
L1361:
	movzbl	-1(%ecx), %edx
	subl	$1, %ecx
	cmpb	$32, %dl
	je	L1361
	cmpb	$9, %dl
	je	L1361
L934:
	movb	$0, (%ecx)
	movzbl	(%edi), %edx
	cmpb	$32, %dl
	je	L1362
	cmpb	$9, %dl
	je	L1362
	jmp	L937
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1488:
	addl	$1, %eax
L1362:
	movzbl	(%eax), %edx
	movl	%eax, %edi
	cmpb	$9, %dl
	je	L1488
	cmpb	$32, %dl
	je	L1488
L937:
	movl	-460(%ebp), %edx
	movl	-448(%ebp), %eax
	call	_SCRIPT_AddSection
	cmpl	$19, -448(%ebp)
	ja	L942
	movl	-460(%ebp), %eax
	testl	%eax, %eax
	je	L942
	movl	-448(%ebp), %eax
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %ecx
	testl	%ecx, %ecx
	je	L942
	movl	%edi, (%esp)
	movl	-460(%ebp), %edx
	movl	%ebx, %ecx
	call	_SCRIPT_AddEntry.part.0
	movl	-452(%ebp), %eax
	testl	%eax, %eax
	je	L1478
L1483:
	movzbl	(%esi), %ecx
	leal	1(%esi), %edx
	movl	%esi, %ebx
	movb	%cl, -452(%ebp)
	leal	-1(%eax), %ecx
	jmp	L943
L942:
	movl	-452(%ebp), %eax
	testl	%eax, %eax
	jne	L1483
	jmp	L1478
	.p2align 4,,10
	.p2align 3
L921:
	movl	%ecx, %ebx
	testl	%ecx, %ecx
	jne	L927
	jmp	L1478
	.p2align 4,,10
	.p2align 3
L928:
	cmpb	$13, %al
	je	L930
	addl	$1, %edi
	subl	$1, %ebx
	je	L1478
L927:
	movzbl	(%edi), %eax
	cmpb	$10, %al
	jne	L928
L930:
	movl	%edi, %esi
	jmp	L913
L924:
	testl	%ecx, %ecx
	je	L1478
	movzbl	(%edi), %edx
	addl	$1, %eax
	subl	$1, %ecx
	addl	$1, %edi
	jmp	L909
L902:
	movl	%ecx, %ebx
	testl	%ecx, %ecx
	je	L1478
L905:
	movzbl	(%edx), %eax
	cmpb	$10, %al
	je	L906
	cmpb	$13, %al
	je	L906
	addl	$1, %edx
	subl	$1, %ebx
	jne	L905
	jmp	L1478
L1567:
	movb	%dl, _gs+23
	movl	$-1, -352(%ebp)
	jmp	L1045
L906:
	movl	%edx, %esi
	jmp	L913
L893:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L1563:
	cmpl	$-1, _g_addonNum
	jne	L1151
	jmp	L1152
L908:
	movl	%ecx, %ebx
	testl	%ecx, %ecx
	je	L1478
L910:
	movzbl	(%edx), %eax
	cmpb	$10, %al
	je	L906
	cmpb	$13, %al
	je	L906
	addl	$1, %edx
	subl	$1, %ebx
	jne	L910
	jmp	L1478
	.p2align 4,,10
	.p2align 3
L1164:
	movl	$-1, %eax
	jmp	L1119
L1557:
	movl	$-1, %edx
	jmp	L1127
L1554:
	movzbl	_gs+23, %edx
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	jmp	L1047
L1562:
	movl	$256, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1018
	movl	$1194219347, (%eax)
	movb	$0, 255(%eax)
	movl	$5263943, 3(%eax)
	movl	%eax, _g_grpNamePtr
	jmp	L1494
L1542:
	movl	$-1, %esi
	jmp	L855
L1560:
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$-1, __ZL12scripthandle.lto_priv.0
	jmp	L855
L1018:
	movl	$256, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE107:
	.p2align 4
	.globl	__Z14CON_CommandCmpPKcS0_i
	.def	__Z14CON_CommandCmpPKcS0_i;	.scl	2;	.type	32;	.endef
__Z14CON_CommandCmpPKcS0_i:
LFB150:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	leal	(%eax,%ecx), %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%edx, %ebx
	jmp	L1579
	.p2align 4,,10
	.p2align 3
L1583:
	cmpb	$35, %cl
	jne	L1578
	subl	$48, %edx
	cmpl	$9, %edx
	ja	L1578
L1574:
	addl	$1, %eax
	addl	$1, %ebx
	cmpl	%esi, %eax
	je	L1582
L1579:
	movzbl	(%eax), %edx
	movzbl	(%ebx), %ecx
	cmpb	%cl, %dl
	je	L1574
	cmpb	$35, %dl
	jne	L1583
	subl	$48, %ecx
	cmpl	$9, %ecx
	jbe	L1574
L1578:
	xorl	%eax, %eax
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
L1582:
	.cfi_restore_state
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE150:
	.p2align 4
	.globl	__Z11CON_MessagePKcz
	.def	__Z11CON_MessagePKcz;	.scl	2;	.type	32;	.endef
__Z11CON_MessagePKcz:
LFB151:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	leal	24(%esp), %eax
	movl	$_con_message, (%esp)
	movl	%eax, 12(%esp)
	movl	%eax, 8(%esp)
	movl	20(%esp), %eax
	movl	%eax, 4(%esp)
	call	_vsprintf
	movl	$_con_message, %eax
	call	__Z12adduserquotePKc
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE151:
	.p2align 4
	.globl	__Z14CON_ConMessagePKcz
	.def	__Z14CON_ConMessagePKcz;	.scl	2;	.type	32;	.endef
__Z14CON_ConMessagePKcz:
LFB152:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	$_con_quote, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	$_con_quote+3072, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 28
	leal	32(%esp), %eax
	movl	$_con_message, (%esp)
	movl	%eax, 12(%esp)
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	call	_vsprintf
	.p2align 4
	.p2align 3
L1587:
	movl	%ebx, %eax
	subl	$256, %ebx
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	cmpl	%ebx, %esi
	jne	L1587
	movl	$_con_message, 4(%esp)
	movl	$_con_quote, (%esp)
	call	_strcpy
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
LFE152:
	.section .rdata,"dr"
LC116:
	.ascii "You're too skillful to cheat\12\0"
LC117:
	.ascii "%s\0"
	.text
	.p2align 4
	.globl	__Z10CheatInputv
	.def	__Z10CheatInputv;	.scl	2;	.type	32;	.endef
__Z10CheatInputv:
LFB155:
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
	movl	$_MessageInputString, 4(%esp)
	movl	$_CheatInputString, (%esp)
	call	_strcpy
	movl	$_CheatInputString, (%esp)
	call	_strlwr
	movl	$_CheatInputString, (%esp)
	call	_strlen
	movl	$0, 8(%esp)
	movl	%eax, %ecx
	.p2align 4
	.p2align 3
L1600:
	movl	8(%esp), %eax
	leal	(%eax,%eax), %esi
	addl	%esi, %eax
	movl	_ci(,%eax,4), %edi
	xorl	%eax, %eax
	jmp	L1594
	.p2align 4,,10
	.p2align 3
L1592:
	cmpb	$35, %bl
	jne	L1593
	subl	$48, %edx
	cmpl	$9, %edx
	ja	L1593
L1591:
	addl	$1, %eax
	cmpl	%eax, %ecx
	je	L1610
L1594:
	movzbl	_CheatInputString(%eax), %edx
	movzbl	(%edi,%eax), %ebx
	cmpb	%bl, %dl
	je	L1591
	cmpb	$35, %dl
	jne	L1592
	movzbl	%bl, %ebp
	subl	$48, %ebp
	cmpl	$9, %ebp
	jbe	L1591
L1593:
	addl	$1, 8(%esp)
	cmpl	$11, 8(%esp)
	jne	L1600
	movb	$0, _CheatInputMode
L1590:
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
L1610:
	.cfi_restore_state
	movl	%edi, (%esp)
	movl	%ecx, 12(%esp)
	call	_strlen
	cmpl	%eax, 12(%esp)
	jne	L1590
	movl	8(%esp), %eax
	movb	$0, _CheatInputMode
	addl	%esi, %eax
	movzbl	_ci+8(,%eax,4), %eax
	testb	$2, %al
	je	L1596
	testb	$1, _SW_GameFlags
	jne	L1590
L1596:
	testb	$1, %al
	jne	L1597
	cmpb	$0, _CommEnabled
	jne	L1590
	cmpw	$2, _Skill
	jle	L1597
	movl	_myconnectindex, %eax
	cmpb	$0, _DemoPlaying
	je	L1599
	movswl	_screenpeek, %eax
L1599:
	testl	%eax, %eax
	jne	L1590
	cmpb	$0, _gs+25
	je	L1590
	movl	$LC116, 4(%esp)
	movl	$LC117, (%esp)
	call	__Z14CON_ConMessagePKcz
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$LC116, %edx
	movl	$_Player, %eax
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
	jmp	__Z17PutStringInfoLineP12PLAYERstructPKc
	.p2align 4,,10
	.p2align 3
L1597:
	.cfi_restore_state
	addl	8(%esp), %esi
	movl	_ci+4(,%esi,4), %eax
	testl	%eax, %eax
	je	L1590
	movl	$_CheatInputString, 4(%esp)
	movl	$_Player, (%esp)
	call	*%eax
	jmp	L1590
	.cfi_endproc
LFE155:
	.section .rdata,"dr"
LC118:
	.ascii "%s %hd\0"
LC119:
	.ascii "%s %s\0"
LC120:
	.ascii "Usage: help [keyword]\0"
LC121:
	.ascii "xrepeat\0"
	.align 4
LC122:
	.ascii "Usage: xrepeat [repeat value 0-255],\0"
	.align 4
LC123:
	.ascii "   [User ID (-1 for all ID's)], [SpriteNum (-1 for all of type ID)]\0"
LC124:
	.ascii "yrepeat\0"
	.align 4
LC125:
	.ascii "Usage: yrepeat [repeat value 0-255],\0"
LC126:
	.ascii "translucent\0"
	.align 4
LC127:
	.ascii "Usage: translucent [OFF/ON 0-1],\0"
	.align 4
LC128:
	.ascii "No help was located on that subject.\0"
LC129:
	.ascii "Sound number out of range.\0"
	.text
	.p2align 4
	.globl	__Z13CON_SoundTestv
	.def	__Z13CON_SoundTestv;	.scl	2;	.type	32;	.endef
__Z13CON_SoundTestv:
LFB160:
	.cfi_startproc
	subl	$264, %esp
	.cfi_def_cfa_offset 268
	xorl	%eax, %eax
	movw	%ax, 18(%esp)
	leal	18(%esp), %eax
	movl	%eax, 12(%esp)
	leal	24(%esp), %eax
	movl	%eax, 8(%esp)
	movl	$LC118, 4(%esp)
	movl	$_MessageInputString, (%esp)
	movl	$0, 20(%esp)
	call	_sscanf
	cmpl	$1, %eax
	jle	L1627
	movswl	18(%esp), %eax
	cmpw	$625, %ax
	ja	L1628
	leal	20(%esp), %edx
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
L1611:
	addl	$264, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1628:
	.cfi_restore_state
	movl	$LC129, (%esp)
	call	__Z14CON_ConMessagePKcz
	addl	$264, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1627:
	.cfi_restore_state
	leal	184(%esp), %edx
	leal	104(%esp), %eax
	movl	$LC119, 4(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$_MessageInputString, (%esp)
	movl	$1970238240, _MessageInputString+4
	movl	$1886152040, _MessageInputString
	movl	$6581877, _MessageInputString+7
	call	_sscanf
	leal	184(%esp), %edx
	cmpl	$1, %eax
	jle	L1629
	movl	%edx, (%esp)
	call	_strlwr
	cmpl	$1885696632, 184(%esp)
	je	L1630
L1615:
	cmpl	$1885696633, 184(%esp)
	je	L1631
L1618:
	cmpl	$1851880052, 184(%esp)
	je	L1632
L1621:
	movl	$LC128, (%esp)
	call	__Z14CON_ConMessagePKcz
	jmp	L1611
	.p2align 4,,10
	.p2align 3
L1629:
	movl	$LC120, (%esp)
	call	__Z14CON_ConMessagePKcz
	jmp	L1611
	.p2align 4,,10
	.p2align 3
L1630:
	cmpl	$7627109, 188(%esp)
	jne	L1615
	movl	$LC122, (%esp)
	call	__Z14CON_ConMessagePKcz
	movl	$LC123, (%esp)
	call	__Z14CON_ConMessagePKcz
	jmp	L1611
	.p2align 4,,10
	.p2align 3
L1631:
	cmpl	$7627109, 188(%esp)
	jne	L1618
	movl	$LC125, (%esp)
	call	__Z14CON_ConMessagePKcz
	movl	$LC123, (%esp)
	call	__Z14CON_ConMessagePKcz
	jmp	L1611
	.p2align 4,,10
	.p2align 3
L1632:
	cmpl	$1668639859, 188(%esp)
	jne	L1621
	cmpl	$7630437, 192(%esp)
	jne	L1621
	movl	$LC127, (%esp)
	call	__Z14CON_ConMessagePKcz
	movl	$LC123, (%esp)
	call	__Z14CON_ConMessagePKcz
	jmp	L1611
	.cfi_endproc
LFE160:
	.section .rdata,"dr"
LC130:
	.ascii "JonoF: Maybe later\0"
	.text
	.p2align 4
	.globl	__Z13CON_LoadSetupv
	.def	__Z13CON_LoadSetupv;	.scl	2;	.type	32;	.endef
__Z13CON_LoadSetupv:
LFB162:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	$LC130, (%esp)
	call	__Z14CON_ConMessagePKcz
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE162:
	.p2align 4
	.globl	__Z18CON_CommandHistorya
	.def	__Z18CON_CommandHistorya;	.scl	2;	.type	32;	.endef
__Z18CON_CommandHistorya:
LFB163:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movsbl	%al, %ebx
	movl	%ebx, %ecx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movswl	_curr_history, %eax
	movl	%eax, %edx
	addl	%ebx, %eax
	movswl	_numhistory, %ebx
	cmpl	%ebx, %eax
	jge	L1636
	addl	%ecx, %edx
	movw	%dx, _curr_history
L1636:
	testw	%dx, %dx
	js	L1641
	cmpw	$19, %dx
	jle	L1642
	movl	$19, %eax
	movl	$_command_history+4864, %edx
	movw	%ax, _curr_history
L1638:
	movl	%edx, 4(%esp)
	movl	$_MessageInputString, (%esp)
	call	_strcpy
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1641:
	.cfi_restore_state
	xorl	%edx, %edx
	movw	%dx, _curr_history
	movl	$_command_history, %edx
	jmp	L1638
	.p2align 4,,10
	.p2align 3
L1642:
	movswl	%dx, %edx
	sall	$8, %edx
	addl	$_command_history, %edx
	jmp	L1638
	.cfi_endproc
LFE163:
	.p2align 4
	.globl	__Z22CON_ProcessUserCommandv
	.def	__Z22CON_ProcessUserCommandv;	.scl	2;	.type	32;	.endef
__Z22CON_ProcessUserCommandv:
LFB164:
	.cfi_startproc
	subl	$540, %esp
	.cfi_def_cfa_offset 544
	movl	%ebx, 524(%esp)
	.cfi_offset 3, -20
	leal	268(%esp), %ebx
	movl	$_MessageInputString, 4(%esp)
	movl	%ebx, (%esp)
	movl	%edi, 532(%esp)
	.cfi_offset 7, -12
	call	_strcpy
	movl	%ebx, (%esp)
	call	_strlwr
	leal	12(%esp), %ecx
	movl	$LC117, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	_sscanf
	movswl	_numcommands, %edi
	testw	%di, %di
	jle	L1643
	leal	12(%esp), %eax
	movl	%esi, 528(%esp)
	sall	$3, %edi
	xorl	%ebx, %ebx
	movl	%eax, (%esp)
	movl	%ebp, 536(%esp)
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	call	_strlen
	movl	%eax, %esi
	.p2align 4
	.p2align 3
L1648:
	movl	_commandlist(%ebx), %ebp
	movl	%ebp, (%esp)
	call	_strlen
	cmpl	%eax, %esi
	jne	L1645
	movl	%esi, %ecx
	movl	%ebp, %edx
	leal	12(%esp), %eax
	call	__Z14CON_CommandCmpPKcS0_i
	testb	%al, %al
	je	L1645
	movl	_commandlist+4(%ebx), %eax
	testl	%eax, %eax
	jne	L1658
L1645:
	addl	$8, %ebx
	cmpl	%ebx, %edi
	jne	L1648
	movl	528(%esp), %esi
	.cfi_restore 6
	movl	536(%esp), %ebp
	.cfi_restore 5
L1643:
	movl	524(%esp), %ebx
	movl	532(%esp), %edi
	addl	$540, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1658:
	.cfi_def_cfa_offset 544
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	*%eax
	movswl	_add_history_pos, %eax
	movl	$256, 8(%esp)
	movl	$_MessageInputString, 4(%esp)
	movl	%eax, %ebx
	sall	$8, %eax
	addl	$_command_history, %eax
	movl	%eax, (%esp)
	call	_strncpy
	leal	1(%ebx), %eax
	xorl	%edx, %edx
	movl	528(%esp), %esi
	.cfi_restore 6
	cmpw	$20, %ax
	movl	536(%esp), %ebp
	.cfi_restore 5
	cmovge	%edx, %eax
	movl	$20, %edx
	movw	%ax, _add_history_pos
	movzwl	_numhistory, %eax
	addl	$1, %eax
	cmpw	%dx, %ax
	cmovg	%edx, %eax
	movw	%ax, _numhistory
	jmp	L1643
	.cfi_endproc
LFE164:
	.p2align 4
	.globl	_snprintf
	.def	_snprintf;	.scl	2;	.type	32;	.endef
_snprintf:
LFB167:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	leal	32(%esp), %eax
	movl	%eax, 12(%esp)
	movl	28(%esp), %eax
	movl	%eax, 8(%esp)
	movl	24(%esp), %eax
	movl	%eax, 4(%esp)
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	___ms_vsnprintf
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE167:
	.section .rdata,"dr"
LC131:
	.ascii "%d\0"
LC132:
	.ascii "MouseSensitivity\0"
LC138:
	.ascii "MouseButton%d\0"
LC139:
	.ascii "MouseButtonClicked%d\0"
LC140:
	.ascii "MouseAnalogScale%d\0"
LC141:
	.ascii "JoystickButton%d\0"
LC142:
	.ascii "JoystickButtonClicked%d\0"
LC143:
	.ascii "JoystickAnalogAxes%d\0"
LC144:
	.ascii "JoystickDigitalAxes%d_0\0"
LC145:
	.ascii "JoystickDigitalAxes%d_1\0"
LC146:
	.ascii "JoystickAnalogScale%d\0"
LC147:
	.ascii "JoystickAnalogDead%d\0"
LC148:
	.ascii "JoystickAnalogSaturate%d\0"
LC149:
	.ascii "w\0"
LC150:
	.ascii "]\12\0"
LC151:
	.ascii " = \0"
LC152:
	.ascii "Error writing %s: %s\12\0"
	.align 4
LC153:
	.ascii "// this file is automatically generated by \0"
LC154:
	.ascii "\12\0"
LC155:
	.ascii "alias \"\0"
LC156:
	.ascii "\" \"\0"
LC157:
	.ascii "\"\12\0"
LC158:
	.ascii " \"%f\"\12\0"
LC159:
	.ascii " \"%d\"\12\0"
LC160:
	.ascii " \"%u\"\12\0"
LC161:
	.ascii " \"\0"
LC162:
	.ascii "Wrote %s\12\0"
	.text
	.p2align 4
	.globl	__Z17CONFIG_WriteSetupv
	.def	__Z17CONFIG_WriteSetupv;	.scl	2;	.type	32;	.endef
__Z17CONFIG_WriteSetupv:
LFB168:
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
	subl	$200, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	testl	%ebx, %ebx
	js	L1989
L1662:
	movl	_MapCopyEnabled, %edx
	xorl	%eax, %eax
	movl	$LC131, 4(%esp)
	testl	%edx, %edx
	setne	%al
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1663
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %edi
	testl	%edi, %edi
	je	L1663
	leal	-96(%ebp), %eax
	movl	$LC34, %ecx
	movl	$LC35, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1663:
	movl	_ZeroKillDemosEnabled, %esi
	xorl	%eax, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	testl	%esi, %esi
	setne	%al
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1664
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %ecx
	testl	%ecx, %ecx
	je	L1664
	leal	-96(%ebp), %eax
	movl	$LC36, %ecx
	movl	$LC35, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1664:
	movl	_ScoreShotEnabled, %edx
	xorl	%eax, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	testl	%edx, %edx
	setne	%al
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1665
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %edi
	testl	%edi, %edi
	je	L1665
	leal	-96(%ebp), %eax
	movl	$LC37, %ecx
	movl	$LC35, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1665:
	movl	_MinHUDArmorEnabled, %esi
	xorl	%eax, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	testl	%esi, %esi
	setne	%al
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1666
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %ecx
	testl	%ecx, %ecx
	je	L1666
	leal	-96(%ebp), %eax
	movl	$LC38, %ecx
	movl	$LC35, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1666:
	movl	_DemoTimeEnabled, %edx
	xorl	%eax, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	testl	%edx, %edx
	setne	%al
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1667
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %edi
	testl	%edi, %edi
	je	L1667
	leal	-96(%ebp), %eax
	movl	$LC39, %ecx
	movl	$LC35, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1667:
	movl	_ShowHeatEnabled, %esi
	xorl	%eax, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	testl	%esi, %esi
	setne	%al
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1668
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %ecx
	testl	%ecx, %ecx
	je	L1668
	leal	-96(%ebp), %eax
	movl	$LC40, %ecx
	movl	$LC35, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1668:
	movl	_ShowNukeEnabled, %edx
	xorl	%eax, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	testl	%edx, %edx
	setne	%al
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1669
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1669
	leal	-96(%ebp), %eax
	movl	$LC41, %ecx
	movl	$LC35, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1669:
	movl	_ud_setup+12, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1670
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1670
	leal	-96(%ebp), %eax
	movl	$LC44, %ecx
	movl	$LC43, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1670:
	movl	_ud_setup+16, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1671
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1671
	leal	-96(%ebp), %eax
	movl	$LC45, %ecx
	movl	$LC43, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1671:
	movl	_ud_setup+8, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1672
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1672
	leal	-96(%ebp), %eax
	movl	$LC42, %ecx
	movl	$LC43, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1672:
	movl	_ud_setup+20, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1673
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %edi
	testl	%edi, %edi
	je	L1673
	leal	-96(%ebp), %eax
	movl	$LC46, %ecx
	movl	$LC43, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1673:
	movl	_maxrefreshfreq, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1674
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %esi
	testl	%esi, %esi
	je	L1674
	leal	-96(%ebp), %eax
	movl	$LC47, %ecx
	movl	$LC43, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1674:
	movl	_gltexfiltermode, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1675
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %ecx
	testl	%ecx, %ecx
	je	L1675
	leal	-96(%ebp), %eax
	movl	$LC48, %ecx
	movl	$LC43, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1675:
	movl	_glanisotropy, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1676
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %edx
	testl	%edx, %edx
	je	L1676
	leal	-96(%ebp), %eax
	movl	$LC49, %ecx
	movl	$LC43, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1676:
	movl	_glusetexcompr, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1677
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1677
	leal	-96(%ebp), %eax
	movl	$LC50, %ecx
	movl	$LC43, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1677:
	movl	_FXToggle, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1678
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1678
	leal	-96(%ebp), %eax
	movl	$LC51, %ecx
	movl	$LC52, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1678:
	movl	_MusicToggle, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1679
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1679
	leal	-96(%ebp), %eax
	movl	$LC53, %ecx
	movl	$LC52, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1679:
	movl	_FXDevice, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1680
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1680
	leal	-96(%ebp), %eax
	movl	$LC54, %ecx
	movl	$LC52, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1680:
	movl	_MusicDevice, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1681
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1681
	leal	-96(%ebp), %eax
	movl	$LC55, %ecx
	movl	$LC52, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1681:
	movl	_NumVoices, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1682
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %edi
	testl	%edi, %edi
	je	L1682
	leal	-96(%ebp), %eax
	movl	$LC58, %ecx
	movl	$LC52, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1682:
	movl	_NumChannels, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1683
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %esi
	testl	%esi, %esi
	je	L1683
	leal	-96(%ebp), %eax
	movl	$LC59, %ecx
	movl	$LC52, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1683:
	movl	_NumBits, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1684
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %ecx
	testl	%ecx, %ecx
	je	L1684
	leal	-96(%ebp), %eax
	movl	$LC60, %ecx
	movl	$LC52, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1684:
	movl	_MixRate, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1685
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %edx
	testl	%edx, %edx
	je	L1685
	leal	-96(%ebp), %eax
	movl	$LC61, %ecx
	movl	$LC52, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1685:
	movl	_gs+8, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1686
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1686
	leal	-96(%ebp), %eax
	movl	$LC56, %ecx
	movl	$LC52, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1686:
	movl	_gs+4, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1687
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1687
	leal	-96(%ebp), %eax
	movl	$LC57, %ecx
	movl	$LC52, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1687:
	movzbl	_gs+30, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1688
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1688
	leal	-96(%ebp), %eax
	movl	$LC62, %ecx
	movl	$LC52, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1688:
	movl	$_gs+66, (%esp)
	movl	__ZL12scripthandle.lto_priv.0, %eax
	movl	$LC63, %ecx
	movl	$LC52, %edx
	call	_SCRIPT_PutString
	movl	_ud_setup+24, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1689
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1689
	leal	-96(%ebp), %eax
	movl	$LC64, %ecx
	movl	$LC65, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1689:
	movl	_g_grpNamePtr, %eax
	testl	%eax, %eax
	je	L1690
	cmpl	$-1, _g_addonNum
	je	L1990
L1690:
	movl	_ud_setup+4, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1691
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1691
	leal	-96(%ebp), %eax
	movl	$LC67, %ecx
	movl	$LC68, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1691:
	movl	_ud_setup, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1692
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %edi
	testl	%edi, %edi
	je	L1692
	leal	-96(%ebp), %eax
	movl	$LC69, %ecx
	movl	$LC68, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1692:
	movl	_gs, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1693
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %esi
	testl	%esi, %esi
	je	L1693
	leal	-96(%ebp), %eax
	movl	$LC132, %ecx
	movl	$LC68, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1693:
	movl	$_CommPlayerName, (%esp)
	movl	__ZL12scripthandle.lto_priv.0, %eax
	movl	$LC72, %ecx
	movl	$LC71, %edx
	call	_SCRIPT_PutString
	movsbl	_gs+12, %eax
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1991
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %ecx
	testl	%ecx, %ecx
	je	L1696
	leal	-96(%ebp), %eax
	movl	$LC76, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1696:
	movsbl	_gs+13, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %edx
	testl	%edx, %edx
	je	L1698
	leal	-96(%ebp), %eax
	movl	$LC77, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1698:
	movsbl	_gs+14, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1700
	leal	-96(%ebp), %eax
	movl	$LC78, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1700:
	movzbl	_gs+18, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1702
	leal	-96(%ebp), %eax
	movl	$LC79, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1702:
	movzbl	_gs+19, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1704
	leal	-96(%ebp), %eax
	movl	$LC80, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1704:
	movzbl	_gs+20, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1706
	leal	-96(%ebp), %eax
	movl	$LC81, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1706:
	movzbl	_gs+21, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1708
	leal	-96(%ebp), %eax
	movl	$LC82, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1708:
	movzbl	_gs+22, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %edi
	testl	%edi, %edi
	je	L1695
	leal	-96(%ebp), %eax
	movl	$LC83, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1695:
	movl	__ZL18AutoAimConfigValue, %eax
	cmpl	$1, _AutoAimCommandLineOverride
	jbe	L1711
	movzbl	_gs+23, %eax
L1711:
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	$LC131, 4(%esp)
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1712
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %esi
	testl	%esi, %esi
	je	L1713
	leal	-96(%ebp), %eax
	movl	$LC84, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1713:
	movzbl	_gs+24, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %ecx
	testl	%ecx, %ecx
	je	L1716
	leal	-96(%ebp), %eax
	movl	$LC85, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1716:
	movzbl	_gs+25, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %edx
	testl	%edx, %edx
	je	L1718
	leal	-96(%ebp), %eax
	movl	$LC86, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1718:
	movzbl	_gs+28, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1720
	leal	-96(%ebp), %eax
	movl	$LC87, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1720:
	movzbl	_gs+29, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1722
	leal	-96(%ebp), %eax
	movl	$LC88, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1722:
	movzbl	_gs+328, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1724
	leal	-96(%ebp), %eax
	movl	$LC89, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1724:
	movzbl	_gs+26, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1726
	leal	-96(%ebp), %eax
	movl	$LC90, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1726:
	movzbl	_gs+15, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1728
	leal	-96(%ebp), %eax
	movl	$LC92, %ecx
	movl	$LC68, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1728:
	movzbl	_gs+27, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %edi
	testl	%edi, %edi
	je	L1730
	leal	-96(%ebp), %eax
	movl	$LC91, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1730:
	movzbl	_gs+31, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %esi
	testl	%esi, %esi
	je	L1732
	leal	-96(%ebp), %eax
	movl	$LC93, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1732:
	movzbl	_gs+32, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %ecx
	testl	%ecx, %ecx
	je	L1734
	leal	-96(%ebp), %eax
	movl	$LC94, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1734:
	movzbl	_gs+33, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %edx
	testl	%edx, %edx
	je	L1736
	leal	-96(%ebp), %eax
	movl	$LC95, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1736:
	movzbl	_gs+34, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1738
	leal	-96(%ebp), %eax
	movl	$LC96, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1738:
	movzbl	_gs+35, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1740
	leal	-96(%ebp), %eax
	movl	$LC97, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1740:
	movzbl	_gs+36, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1742
	leal	-96(%ebp), %eax
	movl	$LC98, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1742:
	movzbl	_gs+37, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1744
	leal	-96(%ebp), %eax
	movl	$LC99, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1744:
	movzbl	_gs+38, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1746
	leal	-96(%ebp), %eax
	movl	$LC100, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1746:
	movzbl	_gs+39, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %edi
	testl	%edi, %edi
	je	L1748
	leal	-96(%ebp), %eax
	movl	$LC101, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1748:
	movzbl	_gs+62, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %esi
	testl	%esi, %esi
	je	L1750
	leal	-96(%ebp), %eax
	movl	$LC102, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1750:
	movzbl	_gs+64, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %ecx
	testl	%ecx, %ecx
	je	L1752
	leal	-96(%ebp), %eax
	movl	$LC107, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1752:
	movzbl	_gs+17, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %edx
	testl	%edx, %edx
	je	L1754
	leal	-96(%ebp), %eax
	movl	$LC108, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1754:
	movzbl	_gs+63, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1756
	leal	-96(%ebp), %eax
	movl	$LC103, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1756:
	movzbl	_gs+322, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1758
	leal	-96(%ebp), %eax
	movl	$LC104, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1758:
	movzbl	_gs+323, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1760
	leal	-96(%ebp), %eax
	movl	$LC105, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1760:
	movl	_gs+324, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1715
	leal	-96(%ebp), %eax
	movl	$LC106, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1715:
	movzbl	_DrawScreen, %eax
	movb	$0, _DrawScreen
	movb	%al, -164(%ebp)
	movl	_randomseed, %eax
	movl	$1234, _randomseed
	movl	%eax, -168(%ebp)
	movl	$_gs+41, (%esp)
	call	_strupr
	movl	$_gs+41, (%esp)
	call	_strlen
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1762
	movl	_krandcount, %eax
	movl	_randomseed, %ecx
	xorl	%esi, %esi
	movl	%eax, -172(%ebp)
	.p2align 6
	.p2align 4
	.p2align 3
L1764:
	leal	(%ecx,%ecx,4), %eax
	movl	$25, %edx
	leal	1(%ecx,%eax,4), %ecx
	movzwl	%cx, %ecx
	cmpl	$65535, %ecx
	je	L1763
	movl	%ecx, %edx
	movl	$-805253093, %eax
	sall	$14, %edx
	mull	%edx
	shrl	$25, %edx
L1763:
	addb	%dl, _gs+41(%esi)
	addl	$1, %esi
	cmpl	%edi, %esi
	jne	L1764
	movl	-172(%ebp), %eax
	addl	%esi, %eax
	movl	%eax, _krandcount
L1762:
	movl	-168(%ebp), %eax
	movl	$LC74, %ecx
	movl	$LC75, %edx
	movl	%eax, _randomseed
	movzbl	-164(%ebp), %eax
	movb	%al, _DrawScreen
	movl	%ebx, %eax
	movl	$_gs+41, (%esp)
	call	_SCRIPT_PutString
	call	__Z14DecodePasswordPc.constprop.0
	movzbl	_gs+40, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %ebx
	ja	L1765
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1766
	leal	-96(%ebp), %eax
	movl	$LC109, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1766:
	movzbl	_gs+65, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %edi
	testl	%edi, %edi
	je	L1770
	leal	-96(%ebp), %eax
	movl	$LC110, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1770:
	leal	-96(%ebp), %eax
	movl	$0, 8(%esp)
	movl	$LC131, 4(%esp)
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %esi
	testl	%esi, %esi
	je	L1772
	leal	-96(%ebp), %eax
	movl	$LC111, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
L1772:
	testb	$1, _SW_GameFlags
	jne	L1992
L1769:
	movl	$0, -168(%ebp)
	.p2align 4
	.p2align 3
L1813:
	movl	-168(%ebp), %eax
	movzbl	_KeyboardKeys+1(%eax), %ecx
	movl	$_sctokeylut, %eax
	movl	%eax, %edx
	jmp	L1775
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1773:
	addl	$8, %edx
	movl	$_sctokeylut+816, %edi
	cmpl	%edx, %edi
	je	L1993
L1775:
	cmpb	4(%edx), %cl
	jne	L1773
	movl	(%edx), %edx
L1774:
	movl	-168(%ebp), %esi
	movzbl	_KeyboardKeys(%esi), %ecx
	jmp	L1779
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1776:
	addl	$8, %eax
	movl	$_sctokeylut+816, %esi
	cmpl	%eax, %esi
	je	L1994
L1779:
	cmpb	4(%eax), %cl
	jne	L1776
	movl	(%eax), %ebx
	movl	-168(%ebp), %eax
	movl	_gamefunctions(%eax,%eax), %eax
	movl	%eax, -184(%ebp)
	movl	__ZL12scripthandle.lto_priv.0, %eax
	movl	%eax, -172(%ebp)
	testl	%ebx, %ebx
	je	L1995
L1778:
	movzbl	(%ebx), %eax
	testl	%edx, %edx
	movl	$LC26, %ecx
	cmove	%ecx, %edx
	testb	%al, %al
	je	L1782
	movl	%ebx, -164(%ebp)
	movl	$6, %esi
	movl	%ebx, -176(%ebp)
	movl	%edx, -180(%ebp)
	jmp	L1787
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1891:
	addl	$2, %esi
L1786:
	addl	$1, -164(%ebp)
	movl	-164(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L1996
L1787:
	leal	-9(%eax), %ebx
	movl	$-33554452, %edi
	xorl	%edx, %edx
	btl	%ebx, %edi
	setnc	%cl
	cmpb	$25, %bl
	cmovbe	%ecx, %edx
	cmpb	$92, %al
	je	L1891
	testb	%dl, %dl
	jne	L1891
	cmpb	$32, %al
	sbbl	$-1, %esi
	jmp	L1786
	.p2align 4,,10
	.p2align 3
L1996:
	movl	-180(%ebp), %edx
	movl	-176(%ebp), %ebx
	movzbl	(%edx), %eax
L1788:
	testb	%al, %al
	je	L1789
	movl	%ebx, -176(%ebp)
	movl	%edx, -180(%ebp)
	movl	%edx, -164(%ebp)
	jmp	L1794
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1892:
	addl	$2, %esi
L1793:
	addl	$1, -164(%ebp)
	movl	-164(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L1997
L1794:
	leal	-9(%eax), %ebx
	movl	$-33554452, %edi
	xorl	%edx, %edx
	btl	%ebx, %edi
	setnc	%cl
	cmpb	$25, %bl
	cmovbe	%ecx, %edx
	cmpb	$92, %al
	je	L1892
	testb	%dl, %dl
	jne	L1892
	cmpb	$32, %al
	sbbl	$-1, %esi
	jmp	L1793
	.p2align 4,,10
	.p2align 3
L1997:
	movl	-176(%ebp), %ebx
	movl	-180(%ebp), %edx
L1789:
	movl	%edx, -164(%ebp)
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1795
	movb	$34, (%edi)
	movzbl	(%ebx), %ecx
	leal	1(%eax), %eax
	movl	$28252, %esi
	movl	-164(%ebp), %edx
	testb	%cl, %cl
	jne	L1796
	jmp	L1797
	.p2align 4,,10
	.p2align 3
L1798:
	cmpb	$10, %cl
	je	L1998
	cmpb	$9, %cl
	je	L1999
	cmpb	$34, %cl
	je	L1893
	cmpb	$92, %cl
	je	L1893
	cmpb	$31, %cl
	jbe	L1799
	movb	%cl, (%eax)
	addl	$1, %eax
	.p2align 4
	.p2align 3
L1799:
	movzbl	1(%ebx), %ecx
	addl	$1, %ebx
	testb	%cl, %cl
	je	L1797
L1796:
	cmpb	$13, %cl
	jne	L1798
	movl	$29276, %ecx
	addl	$1, %ebx
	addl	$2, %eax
	movw	%cx, -2(%eax)
	movzbl	(%ebx), %ecx
	testb	%cl, %cl
	jne	L1796
L1797:
	movl	$8226, %ecx
	movb	$34, 2(%eax)
	movw	%cx, (%eax)
	leal	3(%eax), %ecx
	movzbl	(%edx), %eax
	testb	%al, %al
	je	L1804
	movl	$29788, %esi
	movl	$28252, %ebx
	jmp	L1811
	.p2align 4,,10
	.p2align 3
L1805:
	cmpb	$10, %al
	je	L2000
	cmpb	$9, %al
	je	L2001
	cmpb	$34, %al
	je	L1894
	cmpb	$92, %al
	je	L1894
	cmpb	$31, %al
	jbe	L1806
	movb	%al, (%ecx)
	addl	$1, %ecx
	.p2align 4
	.p2align 3
L1806:
	movzbl	1(%edx), %eax
	addl	$1, %edx
	testb	%al, %al
	je	L1804
L1811:
	cmpb	$13, %al
	jne	L1805
	movl	$29276, %eax
	addl	$1, %edx
	addl	$2, %ecx
	movw	%ax, -2(%ecx)
	movzbl	(%edx), %eax
	testb	%al, %al
	jne	L1811
L1804:
	movl	-172(%ebp), %eax
	movl	$34, %esi
	movw	%si, (%ecx)
	cmpl	$19, %eax
	ja	L1812
	movl	-184(%ebp), %ecx
	testl	%ecx, %ecx
	je	L1812
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %ebx
	testl	%ebx, %ebx
	je	L1812
	movl	%edi, (%esp)
	movl	$LC115, %edx
	call	_SCRIPT_AddEntry.part.0
L1812:
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	addl	$2, -168(%ebp)
	cmpl	$108, -168(%ebp)
	jne	L1813
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L1819:
	leal	-96(%ebp), %eax
	movl	%ebx, 8(%esp)
	movl	$LC138, 4(%esp)
	movl	%eax, (%esp)
	call	_sprintf
	movl	_MouseButtons(,%ebx,4), %edx
	xorl	%eax, %eax
	cmpl	$53, %edx
	ja	L1814
	movl	_gamefunctions(,%edx,4), %eax
L1814:
	movl	%eax, (%esp)
	movl	__ZL12scripthandle.lto_priv.0, %eax
	leal	-96(%ebp), %ecx
	movl	$LC68, %edx
	call	_SCRIPT_PutString
	cmpl	$7, %ebx
	jg	L1815
	leal	-96(%ebp), %eax
	movl	%ebx, 8(%esp)
	movl	$LC139, 4(%esp)
	movl	%eax, (%esp)
	call	_sprintf
	movl	_MouseButtonsClicked(,%ebx,4), %edx
	xorl	%eax, %eax
	cmpl	$53, %edx
	ja	L1816
	movl	_gamefunctions(,%edx,4), %eax
L1816:
	movl	%eax, (%esp)
	movl	__ZL12scripthandle.lto_priv.0, %eax
	leal	-96(%ebp), %ecx
	addl	$1, %ebx
	movl	$LC68, %edx
	call	_SCRIPT_PutString
	jmp	L1819
	.p2align 4,,10
	.p2align 3
L1998:
	movw	%si, (%eax)
	addl	$2, %eax
	jmp	L1799
	.p2align 4,,10
	.p2align 3
L1893:
	movb	$92, (%eax)
	movzbl	(%ebx), %ecx
	addl	$2, %eax
	movb	%cl, -1(%eax)
	jmp	L1799
	.p2align 4,,10
	.p2align 3
L1999:
	movl	$29788, %ecx
	addl	$2, %eax
	movw	%cx, -2(%eax)
	jmp	L1799
	.p2align 4,,10
	.p2align 3
L2000:
	movw	%bx, (%ecx)
	addl	$2, %ecx
	jmp	L1806
	.p2align 4,,10
	.p2align 3
L1894:
	movb	$92, (%ecx)
	movzbl	(%edx), %eax
	addl	$2, %ecx
	movb	%al, -1(%ecx)
	jmp	L1806
	.p2align 4,,10
	.p2align 3
L2001:
	movw	%si, (%ecx)
	addl	$2, %ecx
	jmp	L1806
	.p2align 4,,10
	.p2align 3
L1995:
	movl	$LC26, %ebx
	testl	%edx, %edx
	je	L2002
L1782:
	movzbl	(%edx), %eax
	movl	$6, %esi
	jmp	L1788
L1993:
	movl	$LC26, %edx
	jmp	L1774
L1994:
	movl	-168(%ebp), %eax
	movl	$LC26, %ebx
	movl	_gamefunctions(%eax,%eax), %eax
	movl	%eax, -184(%ebp)
	movl	__ZL12scripthandle.lto_priv.0, %eax
	movl	%eax, -172(%ebp)
	jmp	L1778
L2003:
	movl	$6, %esi
L1795:
	movl	%esi, %eax
	call	__Z13handle_memerri
L2002:
	movl	$6, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L2003
	movb	$34, (%edi)
	leal	1(%edi), %eax
	movl	$LC26, %edx
	jmp	L1797
L1992:
	movswl	_GamePlays, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1769
	leal	-96(%ebp), %eax
	movl	$LC112, %ecx
	movl	$LC75, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_SCRIPT_AddEntry.part.0
	jmp	L1769
L1712:
	movzbl	_gs+24, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+25, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+28, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+29, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+328, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+26, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+15, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+27, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+31, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+32, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+33, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+34, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+35, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+36, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+37, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+38, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+39, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+62, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+64, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+17, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+63, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+322, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+323, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	_gs+324, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	jmp	L1715
L1765:
	movzbl	_gs+65, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	leal	-96(%ebp), %eax
	movl	$0, 8(%esp)
	movl	$LC131, 4(%esp)
	movl	%eax, (%esp)
	call	_sprintf
	testb	$1, _SW_GameFlags
	je	L1769
	movswl	_GamePlays, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	jmp	L1769
L1991:
	movsbl	_gs+13, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movsbl	_gs+14, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+18, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+19, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+20, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+21, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	_gs+22, %eax
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	jmp	L1695
L1989:
	call	_SCRIPT_Init.constprop.0
	movl	%eax, __ZL12scripthandle.lto_priv.0
	movl	%eax, %ebx
	jmp	L1662
L1815:
	cmpl	$9, %ebx
	je	L1882
	movl	$9, %ebx
	jmp	L1819
L1882:
	xorl	%ebx, %ebx
L1818:
	leal	-96(%ebp), %eax
	movl	%ebx, 8(%esp)
	movl	$LC140, 4(%esp)
	movl	%eax, (%esp)
	call	_sprintf
	movl	_MouseAnalogScale(,%ebx,4), %eax
	movl	__ZL12scripthandle.lto_priv.0, %esi
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %esi
	ja	L1820
	movl	__ZL11scriptfiles.lto_priv.0(,%esi,4), %edx
	testl	%edx, %edx
	je	L1820
	leal	-160(%ebp), %eax
	leal	-96(%ebp), %ecx
	movl	$LC68, %edx
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	_SCRIPT_AddEntry.part.0
L1820:
	cmpl	$1, %ebx
	jne	L1883
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L1823:
	leal	-96(%ebp), %eax
	movl	%ebx, 8(%esp)
	movl	$LC141, 4(%esp)
	movl	%eax, (%esp)
	call	_sprintf
	movl	_JoystickButtons(,%ebx,4), %edx
	xorl	%eax, %eax
	cmpl	$53, %edx
	ja	L1821
	movl	_gamefunctions(,%edx,4), %eax
L1821:
	movl	%eax, (%esp)
	movl	__ZL12scripthandle.lto_priv.0, %eax
	movl	$LC68, %edx
	leal	-96(%ebp), %ecx
	call	_SCRIPT_PutString
	leal	-96(%ebp), %eax
	movl	%ebx, 8(%esp)
	movl	$LC142, 4(%esp)
	movl	%eax, (%esp)
	call	_sprintf
	movl	_JoystickButtonsClicked(,%ebx,4), %edx
	xorl	%eax, %eax
	cmpl	$53, %edx
	ja	L1822
	movl	_gamefunctions(,%edx,4), %eax
L1822:
	movl	%eax, (%esp)
	movl	__ZL12scripthandle.lto_priv.0, %eax
	leal	-96(%ebp), %ecx
	addl	$1, %ebx
	movl	$LC68, %edx
	call	_SCRIPT_PutString
	cmpl	$32, %ebx
	jne	L1823
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L1830:
	leal	-96(%ebp), %eax
	movl	%ebx, 8(%esp)
	movl	$LC143, 4(%esp)
	movl	%eax, (%esp)
	call	_sprintf
	movl	_JoystickAnalogAxes(,%ebx,4), %edx
	xorl	%eax, %eax
	cmpl	$5, %edx
	ja	L1824
	movl	_CSWTCH.196.lto_priv.0(,%edx,4), %eax
L1824:
	movl	%eax, (%esp)
	movl	__ZL12scripthandle.lto_priv.0, %eax
	movl	$LC68, %edx
	leal	-96(%ebp), %ecx
	call	_SCRIPT_PutString
	leal	-96(%ebp), %eax
	movl	%ebx, 8(%esp)
	movl	$LC144, 4(%esp)
	movl	%eax, (%esp)
	call	_sprintf
	movl	_JoystickDigitalAxes(,%ebx,8), %edx
	xorl	%eax, %eax
	cmpl	$53, %edx
	ja	L1825
	movl	_gamefunctions(,%edx,4), %eax
L1825:
	movl	%eax, (%esp)
	movl	__ZL12scripthandle.lto_priv.0, %eax
	movl	$LC68, %edx
	leal	-96(%ebp), %ecx
	call	_SCRIPT_PutString
	leal	-96(%ebp), %eax
	movl	%ebx, 8(%esp)
	movl	$LC145, 4(%esp)
	movl	%eax, (%esp)
	call	_sprintf
	movl	_JoystickDigitalAxes+4(,%ebx,8), %edx
	xorl	%eax, %eax
	cmpl	$53, %edx
	ja	L1826
	movl	_gamefunctions(,%edx,4), %eax
L1826:
	movl	%eax, (%esp)
	movl	__ZL12scripthandle.lto_priv.0, %eax
	leal	-96(%ebp), %ecx
	movl	$LC68, %edx
	call	_SCRIPT_PutString
	leal	-96(%ebp), %eax
	movl	%ebx, 8(%esp)
	movl	$LC146, 4(%esp)
	movl	%eax, (%esp)
	call	_sprintf
	movl	_JoystickAnalogScale(,%ebx,4), %eax
	movl	__ZL12scripthandle.lto_priv.0, %esi
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %esi
	ja	L1827
	movl	__ZL11scriptfiles.lto_priv.0(,%esi,4), %eax
	testl	%eax, %eax
	je	L1827
	leal	-160(%ebp), %eax
	leal	-96(%ebp), %ecx
	movl	$LC68, %edx
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	_SCRIPT_AddEntry.part.0
L1827:
	leal	-96(%ebp), %eax
	movl	%ebx, 8(%esp)
	movl	$LC147, 4(%esp)
	movl	%eax, (%esp)
	call	_sprintf
	movl	_JoystickAnalogDead(,%ebx,4), %eax
	movl	__ZL12scripthandle.lto_priv.0, %esi
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %esi
	ja	L1828
	movl	__ZL11scriptfiles.lto_priv.0(,%esi,4), %eax
	testl	%eax, %eax
	je	L1828
	leal	-160(%ebp), %eax
	leal	-96(%ebp), %ecx
	movl	$LC68, %edx
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	_SCRIPT_AddEntry.part.0
L1828:
	leal	-96(%ebp), %eax
	movl	%ebx, 8(%esp)
	movl	$LC148, 4(%esp)
	movl	%eax, (%esp)
	call	_sprintf
	movl	_JoystickAnalogSaturate(,%ebx,4), %eax
	movl	__ZL12scripthandle.lto_priv.0, %esi
	movl	$LC131, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	cmpl	$19, %esi
	ja	L1829
	movl	__ZL11scriptfiles.lto_priv.0(,%esi,4), %eax
	testl	%eax, %eax
	je	L1829
	leal	-160(%ebp), %eax
	leal	-96(%ebp), %ecx
	movl	$LC68, %edx
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	_SCRIPT_AddEntry.part.0
L1829:
	addl	$1, %ebx
	cmpl	$9, %ebx
	jne	L1830
	movl	__ZL12scripthandle.lto_priv.0, %esi
	movl	__ZL11scriptfiles.lto_priv.0(,%esi,4), %eax
	movl	%esi, -164(%ebp)
	testl	%eax, %eax
	je	L1831
	movl	$LC149, 4(%esp)
	movl	$_setupfilename, (%esp)
	call	_fopen
	movl	%eax, -188(%ebp)
	testl	%eax, %eax
	je	L1832
	movl	__ZL11scriptfiles.lto_priv.0(,%esi,4), %eax
	testl	%eax, %eax
	je	L1833
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	L1833
	movl	%ecx, %eax
	xorl	%edx, %edx
L1834:
	movl	%eax, %ebx
	movl	12(%eax), %eax
	addl	$1, %edx
	cmpl	%ebx, %eax
	jne	L1834
	movl	(%ecx), %eax
	movl	-188(%ebp), %edi
	movl	%edx, -180(%ebp)
	xorl	%ebx, %ebx
	movl	%eax, -172(%ebp)
L1835:
	movl	-172(%ebp), %eax
	cmpb	$0, (%eax)
	je	L1984
	movl	%edi, 4(%esp)
	movl	$91, (%esp)
	call	_fputc
	movl	-172(%ebp), %esi
	movl	%esi, (%esp)
	call	_strlen
	movl	%edi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	%esi, (%esp)
	call	_fwrite
	movl	%edi, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC150, (%esp)
	call	_fwrite
L1984:
	movl	-164(%ebp), %eax
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %esi
	testl	%esi, %esi
	je	L1840
	movl	(%esi), %eax
	testl	%eax, %eax
	je	L1840
	movl	-172(%ebp), %edx
	movl	-164(%ebp), %eax
	call	_SCRIPT_SectionExists
	testl	%eax, %eax
	je	L1840
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L1840
	xorl	%edx, %edx
	.p2align 4
	.p2align 4
	.p2align 3
L1841:
	movl	%eax, %ecx
	movl	8(%eax), %eax
	addl	$1, %edx
	cmpl	%ecx, %eax
	jne	L1841
	movl	$0, -168(%ebp)
	movl	%ebx, -184(%ebp)
	movl	%edx, -176(%ebp)
	.p2align 4
	.p2align 3
L1846:
	movl	-168(%ebp), %ecx
	movl	-172(%ebp), %edx
	movl	-164(%ebp), %eax
	call	_SCRIPT_Entry
	movl	%eax, %ebx
	testl	%esi, %esi
	je	L1842
	movl	(%esi), %esi
	testl	%esi, %esi
	je	L1842
	movl	-172(%ebp), %edx
	movl	-164(%ebp), %eax
	call	_SCRIPT_SectionExists
	testl	%eax, %eax
	je	L1843
	testl	%ebx, %ebx
	je	L1843
	movl	4(%eax), %esi
	testl	%esi, %esi
	jne	L1844
	jmp	L1843
	.p2align 4,,10
	.p2align 3
L1889:
	movl	%eax, %esi
L1844:
	movl	%ebx, 4(%esp)
	movl	(%esi), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1845
	movl	8(%esi), %eax
	cmpl	%esi, %eax
	jne	L1889
L1843:
	movl	$LC26, %esi
L1842:
	movl	%ebx, (%esp)
	call	_strlen
	movl	%edi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	%ebx, (%esp)
	call	_fwrite
	movl	%edi, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC151, (%esp)
	call	_fwrite
	movl	%esi, (%esp)
	call	_strlen
	movl	%edi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	%esi, (%esp)
	call	_fwrite
	movl	%edi, 4(%esp)
	movl	$10, (%esp)
	call	_fputc
	movl	-168(%ebp), %eax
	addl	$1, %eax
	cmpl	%eax, -176(%ebp)
	je	L1981
	movl	%eax, -168(%ebp)
	movl	-164(%ebp), %eax
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %esi
	jmp	L1846
	.p2align 4,,10
	.p2align 3
L1845:
	movl	4(%esi), %esi
	jmp	L1842
L1981:
	movl	-184(%ebp), %ebx
L1840:
	leal	1(%ebx), %eax
	cmpl	-180(%ebp), %eax
	je	L1833
	movl	%eax, %ebx
	movl	-164(%ebp), %eax
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %eax
	testl	%eax, %eax
	je	L1849
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1849
	movl	%ebx, %edx
	jmp	L1836
	.p2align 4
	.p2align 4,,10
	.p2align 3
L2004:
	cmpl	%ecx, %eax
	je	L1895
L1836:
	movl	%eax, %ecx
	movl	12(%eax), %eax
	subl	$1, %edx
	jne	L2004
L1895:
	movl	(%eax), %eax
	movl	%eax, -172(%ebp)
L1848:
	movl	%edi, 4(%esp)
	movl	$10, (%esp)
	call	_fputc
	jmp	L1835
L1849:
	movl	$LC26, -172(%ebp)
	jmp	L1848
L1833:
	movl	-188(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
L1832:
	movl	__ZL12scripthandle.lto_priv.0, %ebx
	cmpl	$19, %ebx
	ja	L1831
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %edx
	movl	%edx, %ecx
	testl	%edx, %edx
	je	L1831
	movl	(%edx), %eax
	testl	%eax, %eax
	jne	L1985
	jmp	L1850
	.p2align 4,,10
	.p2align 3
L1853:
	movl	4(%eax), %ecx
	testl	%ecx, %ecx
	je	L1852
	call	_SCRIPT_FreeSection.part.0
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %edx
L1852:
	movl	(%edx), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	subl	$4, %esp
	movl	%esi, (%eax)
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %edx
	movl	(%edx), %eax
L1985:
	movl	12(%eax), %esi
	cmpl	%esi, %eax
	jne	L1853
	movl	4(%esi), %edi
	testl	%edi, %edi
	je	L1854
	movl	%esi, %eax
	call	_SCRIPT_FreeSection.part.0
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %edx
L1854:
	movl	(%edx), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %ecx
	subl	$4, %esp
L1850:
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, __ZL11scriptfiles.lto_priv.0(,%ebx,4)
L1831:
	movl	$LC15, 4(%esp)
	movl	$__ZZL17CONFIG_WriteCvarsvE8filename, (%esp)
	call	_fopen
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L2005
	movl	%eax, 12(%esp)
	movl	$43, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC153, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$4, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC35, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC154, (%esp)
	call	_fwrite
	movl	_osd, %edi
	leal	1188(%edi), %esi
	addl	$3236, %edi
	jmp	L1861
	.p2align 4,,10
	.p2align 3
L1860:
	addl	$4, %esi
	cmpl	%esi, %edi
	je	L1862
L1861:
	movl	(%esi), %eax
	testl	%eax, %eax
	je	L1862
	cmpl	$4919, 12(%eax)
	jne	L1860
	movl	%ebx, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC155, (%esp)
	call	_fwrite
	movl	(%esi), %eax
	movl	(%eax), %edx
	movl	%edx, (%esp)
	movl	%edx, -164(%ebp)
	call	_strlen
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-164(%ebp), %edx
	movl	%edx, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC156, (%esp)
	call	_fwrite
	movl	(%esi), %eax
	movl	8(%eax), %edx
	movl	%edx, (%esp)
	movl	%edx, -164(%ebp)
	call	_strlen
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-164(%ebp), %edx
	movl	%edx, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC157, (%esp)
	call	_fwrite
	jmp	L1860
L1883:
	movl	$1, %ebx
	jmp	L1818
L1990:
	movl	%eax, (%esp)
	movl	__ZL12scripthandle.lto_priv.0, %eax
	movl	$LC66, %ecx
	movl	$LC65, %edx
	call	_SCRIPT_PutString
	jmp	L1690
L1862:
	movl	_osd, %edx
	xorl	%esi, %esi
	movl	1176(%edx), %ecx
	testl	%ecx, %ecx
	jle	L1859
L1858:
	movl	%esi, %eax
	sall	$4, %eax
	addl	1180(%edx), %eax
	movl	(%eax), %edi
	movl	12(%edi), %ecx
	testb	$1, %ch
	jne	L1863
	movl	%edx, -164(%ebp)
	movl	%ecx, -168(%ebp)
	call	__ZL16OSD_CvarModifiedPK9osdcvar_t.lto_priv.0
	movl	-164(%ebp), %edx
	testl	%eax, %eax
	je	L1863
	movl	-168(%ebp), %ecx
	andl	$63, %ecx
	jmp	*L1866(,%ecx,4)
	.section .rdata,"dr"
	.align 4
L1866:
	.long	L1865
	.long	L1870
	.long	L1868
	.long	L1865
	.long	L1869
	.long	L1865
	.long	L1865
	.long	L1865
	.long	L1868
	.long	L1865
	.long	L1865
	.long	L1865
	.long	L1865
	.long	L1865
	.long	L1865
	.long	L1865
	.long	L1867
	.long	L1865
	.long	L1865
	.long	L1865
	.long	L1865
	.long	L1865
	.long	L1865
	.long	L1865
	.long	L1865
	.long	L1865
	.long	L1865
	.long	L1865
	.long	L1865
	.long	L1865
	.long	L1865
	.long	L1865
	.long	L1865
	.text
L1868:
	movl	(%edi), %edx
	movl	%edx, (%esp)
	movl	%edx, -164(%ebp)
	call	_strlen
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-164(%ebp), %edx
	movl	%edx, (%esp)
	call	_fwrite
	movl	8(%edi), %eax
	movl	(%eax), %eax
	movl	$LC159, 8(%esp)
	movl	%eax, 12(%esp)
L1987:
	leal	-160(%ebp), %eax
	movl	$64, 4(%esp)
	movl	%eax, (%esp)
	call	_snprintf
L1986:
	leal	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	-160(%ebp), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	_fwrite
	movl	_osd, %edx
L1863:
	addl	$1, %esi
	cmpl	1176(%edx), %esi
	jl	L1858
L1859:
	movl	%ebx, (%esp)
	call	_fclose
	movl	$__ZZL17CONFIG_WriteCvarsvE8filename, 4(%esp)
	movl	$LC162, (%esp)
	call	__Z10OSD_PrintfPKcz
L1661:
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
L1865:
	.cfi_restore_state
	movl	(%edi), %edx
	movl	%edx, (%esp)
	movl	%edx, -164(%ebp)
	call	_strlen
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-164(%ebp), %edx
	movl	%edx, (%esp)
	call	_fwrite
	movl	8(%edi), %eax
	fldl	(%eax)
	fstpl	12(%esp)
L1988:
	leal	-160(%ebp), %eax
	movl	$LC158, 8(%esp)
	movl	$64, 4(%esp)
	movl	%eax, (%esp)
	call	_snprintf
	jmp	L1986
L1870:
	movl	(%edi), %edx
	movl	%edx, (%esp)
	movl	%edx, -164(%ebp)
	call	_strlen
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-164(%ebp), %edx
	movl	%edx, (%esp)
	call	_fwrite
	movl	8(%edi), %eax
	flds	(%eax)
	fstpl	12(%esp)
	jmp	L1988
L1867:
	movl	8(%edi), %eax
	testl	%eax, %eax
	je	L1863
	cmpb	$0, (%eax)
	je	L1863
	movl	(%edi), %edx
	movl	%edx, (%esp)
	movl	%edx, -164(%ebp)
	call	_strlen
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-164(%ebp), %edx
	movl	%edx, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC161, (%esp)
	call	_fwrite
	movl	8(%edi), %edi
	movl	%edi, (%esp)
	call	_strlen
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edi, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC157, (%esp)
	call	_fwrite
	movl	_osd, %edx
	jmp	L1863
L1869:
	movl	(%edi), %edx
	movl	%edx, (%esp)
	movl	%edx, -164(%ebp)
	call	_strlen
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-164(%ebp), %edx
	movl	%edx, (%esp)
	call	_fwrite
	movl	8(%edi), %eax
	movl	(%eax), %eax
	movl	$LC160, 8(%esp)
	movl	%eax, 12(%esp)
	jmp	L1987
L2005:
	call	*__imp___errno
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*__imp__strerror
	movl	$__ZZL17CONFIG_WriteCvarsvE8filename, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$LC152, (%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L1661
	.cfi_endproc
LFE168:
	.section .rdata,"dr"
LC164:
	.ascii "DEMOS/%02d%02d%02d%02d.DMO\0"
LC165:
	.ascii "DEMOS/%02d%02d%02d%c%d.DMO\0"
	.text
	.p2align 4
	.def	__ZL24DemoAutoSetDailyFilenamePK2tmi;	.scl	3;	.type	32;	.endef
__ZL24DemoAutoSetDailyFilenamePK2tmi:
LFB195:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	%ebx, 32(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%esi, 36(%esp)
	movl	%edi, 40(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	20(%eax), %eax
	leal	1900(%eax), %esi
	movl	$1374389535, %eax
	imull	%esi
	movl	%esi, %eax
	sarl	$31, %eax
	sarl	$5, %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	imull	$100, %ecx, %eax
	subl	%eax, %esi
	movl	16(%edi), %eax
	movl	12(%edi), %edi
	movl	%esi, %ecx
	leal	1(%eax), %esi
	cmpl	$99, %ebx
	jg	L2007
	movl	%ebx, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 12(%esp)
	movl	$LC164, 8(%esp)
	movl	$166, 4(%esp)
	movl	$_DemoFileName, (%esp)
	call	_snprintf
L2008:
	cmpl	$165, %eax
	movl	32(%esp), %ebx
	movl	36(%esp), %esi
	setbe	%al
	movl	40(%esp), %edi
	addl	$48, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2007:
	.cfi_restore_state
	movl	%ebp, 44(%esp)
	.cfi_offset 5, -8
	movl	$-858993459, %eax
	leal	-100(%ebx), %ebp
	mull	%ebp
	movl	%ebp, %eax
	movl	%ecx, 20(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 12(%esp)
	shrl	$3, %edx
	movl	$LC165, 8(%esp)
	leal	(%edx,%edx,4), %edx
	movl	$166, 4(%esp)
	addl	%edx, %edx
	movl	$_DemoFileName, (%esp)
	subl	%edx, %eax
	movl	%eax, 28(%esp)
	movl	$-858993459, %eax
	mull	%ebx
	shrl	$3, %edx
	addl	$55, %edx
	movl	%edx, 24(%esp)
	call	_snprintf
	movl	44(%esp), %ebp
	.cfi_restore 5
	jmp	L2008
	.cfi_endproc
LFE195:
	.section .rdata,"dr"
	.align 4
LC166:
	.ascii "Could not create demo file %s; recording disabled.\12\0"
	.text
	.p2align 4
	.globl	__Z15DemoRecordSetupv
	.def	__Z15DemoRecordSetupv;	.scl	2;	.type	32;	.endef
__Z15DemoRecordSetupv:
LFB197:
	.cfi_startproc
	cmpb	$0, _DemoRecording
	je	L2032
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$80, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	cmpb	$0, _DemoSyncRecord
	jne	L2036
L2012:
	movl	$LC15, 4(%esp)
	movl	$_DemoFileName, (%esp)
	call	_fopen
	movl	%eax, _DemoFileOut
	movl	%eax, %edi
	testl	%eax, %eax
	je	L2037
	movzwl	_Level, %eax
	movzbl	_FakeMultiNumPlayers, %ebx
	movw	%ax, 18(%esp)
	cmpb	$0, __ZL17DemoAutoRecording.lto_priv.0
	je	L2015
	movzbl	_DemoMDRActive, %edx
	leal	45(%esp), %esi
	movl	$0, 60(%esp)
	movl	$0, 64(%esp)
	testb	%dl, %dl
	movb	%dl, 17(%esp)
	setne	__ZL15DemoOutExtended.lto_priv.0
	movl	$15, 8(%esp)
	movl	$_LevelName, 4(%esp)
	movl	%esi, (%esp)
	movl	$0, 68(%esp)
	movl	$0, 72(%esp)
	movl	$0, 76(%esp)
	call	_strncpy
	testb	%bl, %bl
	movl	%ebx, %eax
	movzbl	_numplayers, %ebx
	movl	$15, 8(%esp)
	cmovne	%eax, %ebx
	movzbl	18(%esp), %eax
	movl	$_LevelSong, 4(%esp)
	movb	%al, 63(%esp)
	leal	64(%esp), %eax
	movl	%eax, (%esp)
	movb	%bl, 61(%esp)
	call	_strncpy
	cmpb	$0, 17(%esp)
	je	L2017
	movl	_DemoMDRFeatures, %eax
	movl	%edi, 12(%esp)
	leal	24(%esp), %edi
	movl	$1330795851, 24(%esp)
	sall	$16, %eax
	movl	$441404740, 28(%esp)
	andl	$196608, %eax
	movl	$20643842, 32(%esp)
	movl	%eax, 36(%esp)
	movl	$1, 8(%esp)
	movl	$16, 4(%esp)
	movl	%edi, (%esp)
	call	_fwrite
	movl	_DemoFileOut, %eax
	movl	%esi, (%esp)
	movl	$1, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$35, 4(%esp)
	call	_fwrite
	movl	_DemoFileOut, %eax
	movl	$1, 8(%esp)
	movl	$256, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL19DemoAutoPlayerNames, (%esp)
	call	_fwrite
	movl	_DemoFileOut, %eax
	movl	$1, 8(%esp)
	movl	$8, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL20DemoAutoPlayerColors.lto_priv.0, (%esp)
	call	_fwrite
L2018:
	movzbl	61(%esp), %eax
	leal	22(%esp), %esi
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	cmpl	$_Player, %eax
	jbe	L2019
	movl	$_Player, %ebx
	leal	24(%esp), %edi
	leal	22(%esp), %esi
	.p2align 4
	.p2align 3
L2021:
	movl	8(%ebx), %eax
	movlps	(%ebx), %xmm0
	movl	%eax, 32(%esp)
	movl	_DemoFileOut, %eax
	movl	$1, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$12, 4(%esp)
	movl	%edi, (%esp)
	movlps	%xmm0, 24(%esp)
	call	_fwrite
	movl	_DemoFileOut, %eax
	movl	$1, 8(%esp)
	movl	$4, 4(%esp)
	movl	%eax, 12(%esp)
	leal	22968(%ebx), %eax
	movl	%eax, (%esp)
	call	_fwrite
	movl	300(%ebx), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	addl	$24124, %ebx
	sarl	$16, %eax
	movw	%ax, 22(%esp)
	movl	_DemoFileOut, %eax
	movl	$1, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$2, 4(%esp)
	movl	%esi, (%esp)
	call	_fwrite
	movzbl	61(%esp), %eax
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	cmpl	%eax, %ebx
	jb	L2021
L2019:
	movzwl	_Skill, %eax
	movw	%ax, 22(%esp)
	cmpb	$0, _DebugActor
	je	L2022
	cmpl	$1, _numplayers
	je	L2038
L2022:
	movl	_DemoFileOut, %eax
	movl	$1, 8(%esp)
	movl	$2, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%esi, (%esp)
	call	_fwrite
	movl	_DemoFileOut, %eax
	movl	$1, 8(%esp)
	movl	$20, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$_gNet, (%esp)
	call	_fwrite
	cmpb	$0, _DemoDebugMode
	jne	L2039
L2014:
	movl	$49152, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$_DemoBuffer, (%esp)
	call	_memset
	leal	-12(%ebp), %esp
	popl	%ebx
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
L2032:
	ret
	.p2align 4,,10
	.p2align 3
L2015:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	45(%esp), %esi
	movb	$0, __ZL15DemoOutExtended.lto_priv.0
	movl	$15, 8(%esp)
	movl	$_LevelName, 4(%esp)
	movl	%esi, (%esp)
	movl	$0, 60(%esp)
	movl	$0, 64(%esp)
	movl	$0, 68(%esp)
	movl	$0, 72(%esp)
	movl	$0, 76(%esp)
	call	_strncpy
	testb	%bl, %bl
	je	L2040
	movb	%bl, 61(%esp)
L2035:
	movzbl	18(%esp), %eax
	movl	$15, 8(%esp)
	movl	$_LevelSong, 4(%esp)
	movb	%al, 63(%esp)
	leal	64(%esp), %eax
	movl	%eax, (%esp)
	call	_strncpy
L2017:
	movl	%edi, 12(%esp)
	movl	$1, 8(%esp)
	movl	$35, 4(%esp)
	movl	%esi, (%esp)
	call	_fwrite
	jmp	L2018
	.p2align 4,,10
	.p2align 3
L2036:
	call	__Z16DemoSyncFileNamev
	movl	$LC15, 4(%esp)
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, _DemoSyncFile
	jmp	L2012
	.p2align 4,,10
	.p2align 3
L2040:
	movl	_numplayers, %eax
	movb	%al, 61(%esp)
	jmp	L2035
	.p2align 4,,10
	.p2align 3
L2038:
	movl	$-1, %eax
	movw	%ax, 22(%esp)
	jmp	L2022
	.p2align 4,,10
	.p2align 3
L2039:
	movl	_numplayers, %eax
	movw	%ax, _DemoDebugBufferMax
	movl	_DemoFileOut, %eax
	movl	%eax, (%esp)
	call	_fclose
	jmp	L2014
	.p2align 4,,10
	.p2align 3
L2037:
	movb	$0, _DemoRecording
	movb	$0, __ZL17DemoAutoRecording.lto_priv.0
	movb	$0, __ZL15DemoOutExtended.lto_priv.0
	movl	$_DemoFileName, 4(%esp)
	movl	$LC166, (%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L2014
	.cfi_endproc
LFE197:
	.p2align 4
	.globl	__Z13DemoPlaySetupv
	.def	__Z13DemoPlaySetupv;	.scl	2;	.type	32;	.endef
__Z13DemoPlaySetupv:
LFB201:
	.cfi_startproc
	cmpb	$0, _DemoPlaying
	je	L2041
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	cmpb	$0, _DemoSyncRecord
	jne	L2048
	cmpb	$0, _DemoSyncTest
	jne	L2049
L2044:
	call	__Z14DemoReadHeaderv
	movl	$49152, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$_DemoBuffer, (%esp)
	call	_memset
	movl	_DemoFileIn, %eax
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	jmp	__ZL15DemoReadPacketsP9SW_PACKETii.constprop.0
	.p2align 4,,10
	.p2align 3
L2041:
	ret
	.p2align 4,,10
	.p2align 3
L2049:
	.cfi_def_cfa_offset 16
	call	__Z16DemoSyncFileNamev
	movl	$LC14, 4(%esp)
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, _DemoSyncFile
	jmp	L2044
	.p2align 4,,10
	.p2align 3
L2048:
	call	__Z16DemoSyncFileNamev
	movl	$LC15, 4(%esp)
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, _DemoSyncFile
	cmpb	$0, _DemoSyncTest
	je	L2044
	jmp	L2049
	.cfi_endproc
LFE201:
	.section .rdata,"dr"
LC167:
	.ascii "DEMOS\0"
	.align 4
LC168:
	.ascii "Automatic demo recording disabled: cannot create DEMOS directory.\12\0"
	.align 4
LC169:
	.ascii "Automatic demo recording disabled: could not read the system date.\12\0"
	.align 4
LC170:
	.ascii "Automatic demo recording disabled: daily demo number limit (359) has been reached.\12\0"
LC171:
	.ascii "Automatic demo recording: %s\12\0"
	.text
	.p2align 4
	.globl	__Z19DemoAutoRecordStartv
	.def	__Z19DemoAutoRecordStartv;	.scl	2;	.type	32;	.endef
__Z19DemoAutoRecordStartv:
LFB204:
	.cfi_startproc
	movzbl	_DemoRecording, %eax
	orb	_DemoPlaying, %al
	orb	_DemoMode, %al
	je	L2102
	ret
	.p2align 4,,10
	.p2align 3
L2102:
	subl	$112, %esp
	.cfi_def_cfa_offset 116
	leal	64(%esp), %eax
	movl	$LC167, (%esp)
	movl	%eax, 4(%esp)
	call	_stat32
	testl	%eax, %eax
	jne	L2053
	testb	$64, 71(%esp)
	je	L2053
L2054:
	movl	$0, (%esp)
	call	__time32
	movl	%eax, 24(%esp)
	leal	24(%esp), %eax
	movl	%eax, (%esp)
	call	__localtime32
	testl	%eax, %eax
	je	L2057
	movl	12(%eax), %edx
	leal	-1(%edx), %ecx
	cmpl	$30, %ecx
	ja	L2057
	cmpl	$11, 16(%eax)
	jbe	L2058
L2057:
	movl	$LC169, (%esp)
	call	__Z10OSD_PrintfPKcz
	addl	$112, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2053:
	.cfi_restore_state
	movl	$LC167, (%esp)
	call	*__imp___mkdir
	testl	%eax, %eax
	je	L2054
	call	*__imp___errno
	cmpl	$17, (%eax)
	je	L2103
L2055:
	movl	$LC168, (%esp)
	call	__Z10OSD_PrintfPKcz
L2050:
	addl	$112, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2058:
	.cfi_restore_state
	movl	%ebx, 100(%esp)
	.cfi_offset 3, -16
	movl	$1, %ebx
	movl	%esi, 104(%esp)
	movl	(%eax), %ecx
	.cfi_offset 6, -12
	xorl	%esi, %esi
	movl	%edx, 40(%esp)
	movl	16(%eax), %edx
	movl	%ecx, 28(%esp)
	movl	4(%eax), %ecx
	movl	%edx, 44(%esp)
	movl	20(%eax), %edx
	movl	%ecx, 32(%esp)
	movl	8(%eax), %ecx
	movl	%edx, 48(%esp)
	movl	24(%eax), %edx
	movl	%ecx, 36(%esp)
	movl	%edx, 52(%esp)
	movl	28(%eax), %edx
	movl	32(%eax), %eax
	movl	%edx, 56(%esp)
	movl	%eax, 60(%esp)
	jmp	L2060
	.p2align 4,,10
	.p2align 3
L2105:
	leal	64(%esp), %eax
	movl	$_DemoFileName, (%esp)
	movl	%eax, 4(%esp)
	call	_stat32
	testl	%eax, %eax
	movl	%esi, %eax
	cmove	%ebx, %eax
	addl	$1, %ebx
	movl	%eax, %esi
	cmpl	$360, %ebx
	je	L2104
L2060:
	movl	%ebx, %edx
	leal	28(%esp), %eax
	call	__ZL24DemoAutoSetDailyFilenamePK2tmi
	testb	%al, %al
	jne	L2105
L2101:
	movl	100(%esp), %ebx
	.cfi_restore 3
	movl	104(%esp), %esi
	.cfi_restore 6
	jmp	L2050
	.p2align 4,,10
	.p2align 3
L2103:
	leal	64(%esp), %eax
	movl	$LC167, (%esp)
	movl	%eax, 4(%esp)
	call	_stat32
	testl	%eax, %eax
	jne	L2055
	testb	$64, 71(%esp)
	jne	L2054
	jmp	L2055
L2104:
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	cmpl	$358, %eax
	jg	L2106
	leal	1(%eax), %edx
	leal	28(%esp), %eax
	call	__ZL24DemoAutoSetDailyFilenamePK2tmi
	testb	%al, %al
	je	L2101
	movl	%edi, 108(%esp)
	.cfi_offset 7, -8
	movl	$0, _DemoRecCnt
	movb	$0, _DemoDebugMode
	cmpb	$0, _DemoMDRActive
	jne	L2062
	movb	$1, _PedanticMode
L2062:
	movl	_numplayers, %eax
	movw	%ax, __ZL19DemoAutoPlayerCount.lto_priv.0
	testw	%ax, %ax
	jle	L2107
	cwtl
	testb	$1, _SW_GameFlags
	jne	L2065
	movl	$8, %edx
	cmpl	$8, %eax
	jle	L2064
L2066:
	movw	%dx, __ZL19DemoAutoPlayerCount.lto_priv.0
L2064:
	cmpb	$0, _UserMapName
	je	L2108
	movl	$_UserMapName, 12(%esp)
	xorl	%ecx, %ecx
	movl	$LC117, 8(%esp)
	movl	$160, 4(%esp)
	movl	$__ZL15DemoAutoMapName.lto_priv.0, (%esp)
	movw	%cx, __ZL13DemoAutoLevel
	call	_snprintf
L2068:
	movzbl	_FakeMultiNumPlayers, %eax
	movl	__ZL17DemoAutoChatLines.lto_priv.0+4, %ecx
	movb	$0, __ZL12DemoAutoBots
	movb	%al, __ZL16DemoAutoBotCount
	movl	__ZL17DemoAutoChatLines.lto_priv.0, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	cmpl	%ecx, %eax
	je	L2069
	movl	%eax, %ebx
	.p2align 4
	.p2align 3
L2071:
	movl	(%ebx), %eax
	leal	8(%ebx), %edx
	cmpl	%edx, %eax
	je	L2070
	call	_mi_free
L2070:
	addl	$24, %ebx
	cmpl	%ebx, %esi
	jne	L2071
	movl	%edi, __ZL17DemoAutoChatLines.lto_priv.0+4
L2069:
	movl	__ZL11DemoOutChat.lto_priv.0, %eax
	movl	__ZL11DemoOutChat.lto_priv.0+4, %ecx
	movl	%eax, %edi
	movl	%ecx, %esi
	cmpl	%ecx, %eax
	je	L2072
	movl	%eax, %ebx
	.p2align 4
	.p2align 3
L2074:
	movl	4(%ebx), %eax
	leal	12(%ebx), %edx
	cmpl	%edx, %eax
	je	L2073
	call	_mi_free
L2073:
	addl	$28, %ebx
	cmpl	%ebx, %esi
	jne	L2074
	movl	%edi, __ZL11DemoOutChat.lto_priv.0+4
L2072:
	xorl	%edx, %edx
	movb	$0, __ZL14DemoShotFolder.lto_priv.0
	movzbl	_SW_GameFlags, %esi
	movl	$_Player+23262, %ecx
	movw	%dx, __ZL23DemoAutoScoreboardCount
	xorl	%ebx, %ebx
	movl	$__ZL19DemoAutoPlayerNames, %edx
	movl	$0, __ZL18DemoOutChatLastTic
	movb	$0, __ZL12DemoShotBase.lto_priv.0
	movb	$0, __ZL27DemoAutoScoreboardAvailable
	jmp	L2075
	.p2align 4,,10
	.p2align 3
L2076:
	addl	$1, %ebx
	addl	$32, %edx
	addl	$24124, %ecx
L2075:
	movl	%esi, %eax
	andl	$1, %eax
	cmpb	$1, %al
	sbbl	%eax, %eax
	andl	$4, %eax
	addl	$4, %eax
	cmpl	%eax, %ebx
	jge	L2109
	xorl	%eax, %eax
	movb	$0, (%edx)
	movw	%ax, __ZL19DemoAutoPlayerKills(%ebx,%ebx)
	movswl	__ZL19DemoAutoPlayerCount.lto_priv.0, %eax
	movb	$0, __ZL20DemoAutoPlayerColors.lto_priv.0(%ebx)
	movb	$0, __ZL22DemoAutoPlayerCaptured(%ebx)
	cmpl	%ebx, %eax
	jle	L2076
	movl	%ecx, 12(%esp)
	movl	%edx, (%esp)
	movl	$LC117, 8(%esp)
	movl	$32, 4(%esp)
	movl	%ecx, 20(%esp)
	movl	%edx, 16(%esp)
	call	_snprintf
	movl	20(%esp), %ecx
	movl	16(%esp), %edx
	movzbl	_SW_GameFlags, %esi
	movzbl	34(%ecx), %eax
	movb	%al, __ZL20DemoAutoPlayerColors.lto_priv.0(%ebx)
	jmp	L2076
	.p2align 4,,10
	.p2align 3
L2109:
	movl	$_DemoFileName, 4(%esp)
	movl	$LC171, (%esp)
	movb	$1, _DemoRecording
	movb	$1, __ZL17DemoAutoRecording.lto_priv.0
	call	__Z10OSD_PrintfPKcz
	movl	100(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	104(%esp), %esi
	.cfi_restore 6
	movl	108(%esp), %edi
	.cfi_restore 7
	addl	$112, %esp
	.cfi_def_cfa_offset 4
	ret
L2108:
	.cfi_restore_state
	movl	$_LevelName, 12(%esp)
	movzwl	_Level, %eax
	movl	$LC117, 8(%esp)
	movl	$160, 4(%esp)
	movl	$__ZL15DemoAutoMapName.lto_priv.0, (%esp)
	movw	%ax, __ZL13DemoAutoLevel
	call	_snprintf
	jmp	L2068
L2106:
	.cfi_restore 7
	movl	$LC170, (%esp)
	call	__Z10OSD_PrintfPKcz
	movl	100(%esp), %ebx
	.cfi_restore 3
	movl	104(%esp), %esi
	.cfi_restore 6
	movb	$0, _DemoFileName
	jmp	L2050
L2107:
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movw	$1, __ZL19DemoAutoPlayerCount.lto_priv.0
	jmp	L2064
L2065:
	cmpl	$4, %eax
	jle	L2064
	movl	$4, %edx
	jmp	L2066
	.cfi_endproc
LFE204:
	.p2align 4
	.globl	__Z30DemoAutoRecordUpdatePlayerNamesPKc
	.def	__Z30DemoAutoRecordUpdatePlayerNamesPKc;	.scl	2;	.type	32;	.endef
__Z30DemoAutoRecordUpdatePlayerNamesPKc:
LFB217:
	.cfi_startproc
	cmpb	$0, __ZL15DemoOutExtended.lto_priv.0
	je	L2113
	cmpw	$7, %ax
	ja	L2113
	cmpw	%ax, __ZL19DemoAutoPlayerCount.lto_priv.0
	jg	L2116
L2113:
	ret
	.p2align 4,,10
	.p2align 3
L2116:
	cwtl
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	sall	$5, %eax
	movl	%edx, 12(%esp)
	addl	$__ZL19DemoAutoPlayerNames, %eax
	movl	$LC117, 8(%esp)
	movl	$32, 4(%esp)
	movl	%eax, (%esp)
	call	_snprintf
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE217:
	.section .rdata,"dr"
LC172:
	.ascii "%6s %12s\0"
	.text
	.p2align 4
	.globl	__Z19CON_MultiNameChangev
	.def	__Z19CON_MultiNameChangev;	.scl	2;	.type	32;	.endef
__Z19CON_MultiNameChangev:
LFB219:
	.cfi_startproc
	subl	$96, %esp
	.cfi_def_cfa_offset 100
	movl	%ebx, 84(%esp)
	leal	35(%esp), %eax
	.cfi_offset 3, -16
	leal	19(%esp), %ebx
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC172, 4(%esp)
	movl	$_MessageInputString, (%esp)
	call	_sscanf
	cmpl	$1, %eax
	jle	L2117
	cmpb	$0, _CommEnabled
	jne	L2121
L2117:
	movl	84(%esp), %ebx
	addl	$96, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2121:
	.cfi_restore_state
	imull	$24124, _myconnectindex, %eax
	movl	%ebx, (%esp)
	movl	%edi, 92(%esp)
	movl	%esi, 88(%esp)
	.cfi_offset 7, -8
	.cfi_offset 6, -12
	leal	_Player(%eax), %edi
	call	_strupr
	leal	23262(%edi), %esi
	movl	%ebx, 4(%esp)
	movl	%esi, (%esp)
	call	_strcpy
	movl	%ebx, 4(%esp)
	movl	$_CommPlayerName, (%esp)
	call	_strcpy
	movswl	_myconnectindex, %eax
	movl	%esi, %edx
	call	__Z30DemoAutoRecordUpdatePlayerNamesPKc
	movl	%edi, %eax
	call	__Z15SetRedrawScreenP12PLAYERstruct
	leal	52(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movb	$36, 51(%esp)
	call	_strcpy
	leal	51(%esp), %eax
	movl	$33, %edx
	call	__Z18netbroadcastpacketPhi
	movl	88(%esp), %esi
	.cfi_restore 6
	movl	92(%esp), %edi
	.cfi_restore 7
	movl	84(%esp), %ebx
	addl	$96, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE219:
	.section .rdata,"dr"
	.align 4
LC173:
	.ascii "MDR demo: could not update the player names in %s.\12\0"
	.align 4
LC174:
	.ascii "MDR demo: could not return to the end of %s after updating it.\12\0"
	.text
	.p2align 4
	.globl	__Z26DemoAutoRecordSyncMetadatav
	.def	__Z26DemoAutoRecordSyncMetadatav;	.scl	2;	.type	32;	.endef
__Z26DemoAutoRecordSyncMetadatav:
LFB221:
	.cfi_startproc
	cmpb	$0, __ZL15DemoOutExtended.lto_priv.0
	je	L2130
	movl	_DemoFileOut, %eax
	testl	%eax, %eax
	je	L2130
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	movl	%eax, (%esp)
	call	_ftell
	movl	%eax, %ebx
	cmpl	$314, %eax
	jle	L2124
	movl	_DemoFileOut, %eax
	movl	$0, 8(%esp)
	movl	$51, 4(%esp)
	movl	%eax, (%esp)
	call	_fseek
	testl	%eax, %eax
	je	L2133
L2124:
	movl	$_DemoFileName, 4(%esp)
	movl	$LC173, (%esp)
	call	__Z10OSD_PrintfPKcz
L2122:
	addl	$16, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2130:
	ret
	.p2align 4,,10
	.p2align 3
L2133:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -8
	movl	_DemoFileOut, %eax
	movl	$1, 8(%esp)
	movl	$256, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL19DemoAutoPlayerNames, (%esp)
	call	_fwrite
	movl	_DemoFileOut, %eax
	movl	$1, 8(%esp)
	movl	$8, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL20DemoAutoPlayerColors.lto_priv.0, (%esp)
	call	_fwrite
	movl	_DemoFileOut, %eax
	movl	%ebx, 4(%esp)
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	call	_fseek
	testl	%eax, %eax
	je	L2122
	movl	$_DemoFileName, 4(%esp)
	movl	$LC174, (%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L2122
	.cfi_endproc
LFE221:
	.section .rdata,"dr"
LC175:
	.ascii "vector::_M_realloc_append\0"
	.section	.text.unlikely,"x"
LCOLDB176:
	.text
LHOTB176:
	.p2align 4
	.globl	__Z22DemoAutoRecordChatLinePKc
	.def	__Z22DemoAutoRecordChatLinePKc;	.scl	2;	.type	32;	.endef
__Z22DemoAutoRecordChatLinePKc:
LFB222:
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
	leal	-88(%ebp), %edx
	pushl	%ebx
	subl	$132, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%edx, -96(%ebp)
	movb	$0, -88(%ebp)
	movl	$0, -92(%ebp)
	cmpb	$0, __ZL17DemoAutoRecording.lto_priv.0
	je	L2134
	cmpb	$0, (%eax)
	jne	L2235
L2134:
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
L2235:
	.cfi_restore_state
	movl	%eax, -100(%ebp)
	movl	%eax, %esi
	movl	%eax, (%esp)
	call	_strlen
	leal	-96(%ebp), %ecx
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEj
	movzbl	(%esi), %ebx
	movl	-92(%ebp), %edx
	subl	$4, %esp
	testb	%bl, %bl
	je	L2136
	movl	%edx, %esi
	jmp	L2141
	.p2align 4,,10
	.p2align 3
L2140:
	movb	%bl, (%eax,%esi)
	movl	-96(%ebp), %eax
	movb	$0, (%eax,%edi)
	movl	-100(%ebp), %eax
	movl	%edi, -92(%ebp)
	subl	%edx, %eax
	movzbl	(%eax,%edi), %ebx
	testb	%bl, %bl
	je	L2142
	movl	%edi, %esi
L2141:
	cmpb	$10, %bl
	je	L2193
	cmpb	$13, %bl
	je	L2193
L2137:
	movl	-96(%ebp), %eax
	leal	-88(%ebp), %ecx
	leal	1(%esi), %edi
	cmpl	%ecx, %eax
	movl	$15, %ecx
	cmovne	-88(%ebp), %ecx
	cmpl	%edi, %ecx
	jnb	L2140
	movl	%edx, -104(%ebp)
	leal	-96(%ebp), %ecx
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEjjPKcj
	movl	-96(%ebp), %eax
	movl	-104(%ebp), %edx
	subl	$16, %esp
	jmp	L2140
	.p2align 4,,10
	.p2align 3
L2193:
	movl	$32, %ebx
	jmp	L2137
	.p2align 4,,10
	.p2align 3
L2136:
	testl	%edx, %edx
	jne	L2236
L2143:
	movl	-96(%ebp), %eax
	leal	-88(%ebp), %edx
	cmpl	%edx, %eax
	je	L2134
	call	_mi_free
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
L2236:
	.cfi_restore_state
	movl	%edx, %edi
	.p2align 4
	.p2align 3
L2142:
	movl	__ZL17DemoAutoChatLines.lto_priv.0+4, %ebx
	cmpl	__ZL17DemoAutoChatLines.lto_priv.0+8, %ebx
	je	L2144
	leal	8(%ebx), %eax
	movl	%ebx, %ecx
	movl	%eax, (%ebx)
	movl	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcj
	subl	$8, %esp
	addl	$24, __ZL17DemoAutoChatLines.lto_priv.0+4
L2145:
	cmpb	$0, __ZL15DemoOutExtended.lto_priv.0
	je	L2143
	movl	__ZL11DemoOutChat.lto_priv.0+4, %eax
	subl	__ZL11DemoOutChat.lto_priv.0, %eax
	cmpl	$114660, %eax
	jg	L2143
	leal	-36(%ebp), %edi
	movb	$0, -36(%ebp)
	movl	-92(%ebp), %ebx
	movl	%edi, -44(%ebp)
	movl	__ZL18DemoOutChatLastTic, %edx
	movl	$0, -40(%ebp)
	cmpb	$0, _ready2send
	je	L2189
	movl	_totalsynctics, %ecx
	movl	$1431655766, %eax
	imull	%ecx
	sarl	$31, %ecx
	subl	%ecx, %edx
	movl	%edx, __ZL18DemoOutChatLastTic
L2189:
	movl	%edx, -48(%ebp)
	movl	$255, %edx
	movl	-96(%ebp), %eax
	leal	-64(%ebp), %esi
	cmpl	%edx, %ebx
	movl	%esi, -72(%ebp)
	leal	-72(%ebp), %ecx
	cmova	%edx, %ebx
	movl	%eax, (%esp)
	addl	%eax, %ebx
	movl	%ebx, 4(%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
	movl	-44(%ebp), %eax
	subl	$8, %esp
	movl	%eax, %ebx
	cmpl	%edi, %eax
	je	L2237
	movl	-68(%ebp), %edx
	movl	-72(%ebp), %ecx
	movl	%edx, -100(%ebp)
	cmpl	%esi, %ecx
	je	L2186
	movss	-100(%ebp), %xmm0
	movss	-64(%ebp), %xmm1
	movl	%ecx, -44(%ebp)
	movl	-36(%ebp), %ebx
	unpcklps	%xmm1, %xmm0
	movlps	%xmm0, -40(%ebp)
	testl	%eax, %eax
	je	L2178
	movl	%eax, -72(%ebp)
	movl	%ebx, -64(%ebp)
L2177:
	movb	$0, (%eax)
	movl	-72(%ebp), %eax
	movl	$0, -68(%ebp)
	cmpl	%esi, %eax
	je	L2234
	call	_mi_free
L2234:
	movl	__ZL11DemoOutChat.lto_priv.0+4, %eax
	cmpl	__ZL11DemoOutChat.lto_priv.0+8, %eax
	je	L2180
	movl	-48(%ebp), %edx
	leal	4(%eax), %ecx
	movl	%edx, (%eax)
	leal	12(%eax), %edx
	movl	%edx, 4(%eax)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcj
	subl	$8, %esp
	addl	$28, __ZL11DemoOutChat.lto_priv.0+4
L2181:
	movl	-44(%ebp), %eax
	cmpl	%edi, %eax
	je	L2143
	call	_mi_free
	jmp	L2143
L2237:
	movl	-72(%ebp), %eax
	cmpl	%esi, %eax
	je	L2238
	movlps	-68(%ebp), %xmm2
	movl	%eax, -44(%ebp)
	movlps	%xmm2, -40(%ebp)
L2178:
	movl	%esi, -72(%ebp)
	leal	-64(%ebp), %esi
	movl	%esi, %eax
	jmp	L2177
	.p2align 4,,10
	.p2align 3
L2144:
	movl	-96(%ebp), %eax
	movl	%ebx, %esi
	movl	%eax, -100(%ebp)
	movl	__ZL17DemoAutoChatLines.lto_priv.0, %eax
	subl	%eax, %esi
	movl	%eax, -116(%ebp)
	movl	%esi, %edx
	sarl	$3, %edx
	imull	$-1431655765, %edx, %edx
	cmpl	$89478485, %edx
	je	L2221
	testl	%edx, %edx
	movl	$1, %eax
	movl	%fs:44, %ecx
	cmovne	%edx, %eax
	addl	%edx, %eax
	movl	$89478485, %edx
	cmpl	%edx, %eax
	cmova	%edx, %eax
	leal	(%eax,%eax,2), %eax
	leal	0(,%eax,8), %edx
	movl	__tls_index, %eax
	movl	(%ecx,%eax,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %eax
	movl	%eax, -104(%ebp)
	cmpl	$512, %edx
	ja	L2147
	movl	184(%eax,%edx), %eax
	movl	8(%eax), %ecx
	movl	%ecx, -108(%ebp)
	testl	%ecx, %ecx
	je	L2239
	movl	-108(%ebp), %ecx
	movl	(%ecx), %ecx
	addw	$1, 16(%eax)
	movl	%ecx, 8(%eax)
L2150:
	movl	-108(%ebp), %eax
	movl	%edx, -104(%ebp)
	leal	(%eax,%esi), %ecx
	leal	8(%ecx), %eax
	movl	%eax, (%ecx)
	movl	%edi, 4(%esp)
	movl	-100(%ebp), %edx
	movl	%edx, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcj
	movl	-116(%ebp), %esi
	movl	-108(%ebp), %edi
	subl	$8, %esp
	movl	-104(%ebp), %edx
	cmpl	%esi, %ebx
	je	L2151
	movl	%ebx, -104(%ebp)
	movl	%edx, -120(%ebp)
	jmp	L2161
	.p2align 6
	.p2align 4,,10
	.p2align 3
L2152:
	movl	%eax, (%edi)
	movl	8(%esi), %eax
	movl	%eax, 8(%edi)
L2231:
	movl	4(%esi), %eax
	movl	%eax, -100(%ebp)
L2160:
	movl	-100(%ebp), %eax
	addl	$24, %esi
	addl	$24, %edi
	movl	%eax, -20(%edi)
	cmpl	%esi, -104(%ebp)
	je	L2240
L2161:
	leal	8(%edi), %ebx
	leal	8(%esi), %edx
	movl	%ebx, (%edi)
	movl	(%esi), %eax
	cmpl	%edx, %eax
	jne	L2152
	movl	4(%esi), %edx
	movl	%edx, -100(%ebp)
	addl	$1, %edx
	movl	%edx, -112(%ebp)
	cmpl	$16, %edx
	jnb	L2153
	andl	$8, %edx
	jne	L2241
	testb	$4, -112(%ebp)
	jne	L2242
	movl	-112(%ebp), %ecx
	testl	%ecx, %ecx
	je	L2160
	movzbl	(%eax), %edx
	andl	$2, %ecx
	movb	%dl, (%ebx)
	je	L2231
	movl	-112(%ebp), %edx
	movzwl	-2(%eax,%edx), %eax
	movw	%ax, -2(%ebx,%edx)
	movl	4(%esi), %eax
	movl	%eax, -100(%ebp)
	jmp	L2160
	.p2align 4,,10
	.p2align 3
L2240:
	movl	-120(%ebp), %edx
L2151:
	movl	-116(%ebp), %eax
	addl	$24, %edi
	testl	%eax, %eax
	je	L2162
	movl	%edx, -100(%ebp)
	call	_mi_free
	movl	-100(%ebp), %edx
L2162:
	movl	-108(%ebp), %eax
	movl	%edi, __ZL17DemoAutoChatLines.lto_priv.0+4
	leal	(%eax,%edx), %ebx
	movl	%eax, __ZL17DemoAutoChatLines.lto_priv.0
	movl	%ebx, __ZL17DemoAutoChatLines.lto_priv.0+8
	jmp	L2145
L2153:
	movl	-112(%ebp), %edx
	movl	-16(%eax,%edx), %ecx
	movl	%ecx, -16(%ebx,%edx)
	movl	-12(%eax,%edx), %ecx
	movl	%ecx, -12(%ebx,%edx)
	movl	-8(%eax,%edx), %ecx
	movl	%ecx, -8(%ebx,%edx)
	movl	-4(%eax,%edx), %ecx
	movl	%ecx, -4(%ebx,%edx)
	cmpl	$16, -100(%ebp)
	jb	L2231
	movl	-100(%ebp), %edx
	movl	%esi, -124(%ebp)
	movl	%edi, -128(%ebp)
	andl	$-16, %edx
	movl	%edx, -100(%ebp)
	xorl	%edx, %edx
L2158:
	movl	12(%eax,%edx), %ecx
	movl	8(%eax,%edx), %esi
	movl	4(%eax,%edx), %edi
	movl	%ecx, -112(%ebp)
	movl	(%eax,%edx), %ecx
	movl	%edi, 4(%ebx,%edx)
	movl	%ecx, (%ebx,%edx)
	movl	%esi, 8(%ebx,%edx)
	movl	-112(%ebp), %esi
	movl	%esi, 12(%ebx,%edx)
	addl	$16, %edx
	cmpl	-100(%ebp), %edx
	jb	L2158
	movl	-124(%ebp), %esi
	movl	-128(%ebp), %edi
	movl	4(%esi), %eax
	movl	%eax, -100(%ebp)
	jmp	L2160
L2180:
	leal	-48(%ebp), %eax
	movl	$__ZL11DemoOutChat.lto_priv.0, %ecx
	movl	%eax, (%esp)
	call	__ZNSt6vectorI13DemoChatEntrySaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_
	subl	$4, %esp
	jmp	L2181
L2238:
	movl	-68(%ebp), %eax
	movl	%eax, -100(%ebp)
L2186:
	movl	-100(%ebp), %eax
	testl	%eax, %eax
	je	L2167
	cmpl	$1, %eax
	je	L2243
	movl	-100(%ebp), %eax
	cmpl	$16, %eax
	jnb	L2170
	testb	$8, %al
	jne	L2244
	testb	$4, -100(%ebp)
	jne	L2245
	movl	-100(%ebp), %edx
	testl	%edx, %edx
	je	L2167
	movzbl	-64(%ebp), %eax
	andb	$2, %dl
	movb	%al, (%ebx)
	jne	L2225
L2232:
	movl	-68(%ebp), %eax
	movl	-44(%ebp), %ebx
	movl	%eax, -100(%ebp)
L2167:
	movl	-100(%ebp), %eax
	movb	$0, (%ebx,%eax)
	movl	%eax, -40(%ebp)
	movl	-72(%ebp), %eax
	jmp	L2177
L2147:
	movl	$0, (%esp)
	xorl	%ecx, %ecx
L2230:
	movl	%edx, -112(%ebp)
	movl	-104(%ebp), %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	-112(%ebp), %edx
	movl	%eax, -108(%ebp)
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	jne	L2150
	movl	-104(%ebp), %eax
	xorl	%ecx, %ecx
	movl	%edx, -112(%ebp)
	call	__Z15mi_heap_try_newP9mi_heap_sjb
	movl	-112(%ebp), %edx
	movl	%eax, -108(%ebp)
	jmp	L2150
L2239:
	movl	$0, (%esp)
	jmp	L2230
L2241:
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, (%ebx)
	movl	%ecx, 4(%ebx)
	movl	-112(%ebp), %ecx
	movl	-4(%eax,%ecx), %edx
	movl	-8(%eax,%ecx), %eax
	movl	%edx, -4(%ebx,%ecx)
	movl	%eax, -8(%ebx,%ecx)
	movl	4(%esi), %eax
	movl	%eax, -100(%ebp)
	jmp	L2160
L2242:
	movl	(%eax), %edx
	movl	%edx, (%ebx)
	movl	-112(%ebp), %edx
	movl	-4(%eax,%edx), %eax
	movl	%eax, -4(%ebx,%edx)
	movl	4(%esi), %eax
	movl	%eax, -100(%ebp)
	jmp	L2160
L2243:
	movzbl	-64(%ebp), %eax
	movb	%al, (%ebx)
	movl	-68(%ebp), %eax
	movl	-44(%ebp), %ebx
	movl	%eax, -100(%ebp)
	jmp	L2167
L2170:
	movl	-100(%ebp), %edx
	movl	-80(%ebp,%edx), %eax
	movl	%eax, -16(%ebx,%edx)
	movl	-76(%ebp,%edx), %eax
	movl	%eax, -12(%ebx,%edx)
	movl	-72(%ebp,%edx), %eax
	movl	%eax, -8(%ebx,%edx)
	movl	-68(%ebp,%edx), %eax
	movl	%eax, -4(%ebx,%edx)
	subl	$1, %edx
	cmpl	$16, %edx
	jb	L2232
	andl	$-16, %edx
	xorl	%eax, %eax
	movl	%edx, -108(%ebp)
L2175:
	movl	8(%esi,%eax), %edx
	movl	4(%esi,%eax), %ecx
	movl	%edx, -100(%ebp)
	movl	12(%esi,%eax), %edx
	movl	%edx, -104(%ebp)
	movl	(%esi,%eax), %edx
	movl	%ecx, 4(%ebx,%eax)
	movl	%edx, (%ebx,%eax)
	movl	-100(%ebp), %edx
	movl	%edx, 8(%ebx,%eax)
	movl	-104(%ebp), %edx
	movl	%edx, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	-108(%ebp), %eax
	jb	L2175
	jmp	L2232
L2225:
	movl	-100(%ebp), %edx
	movzwl	-66(%ebp,%edx), %eax
	movw	%ax, -2(%ebx,%edx)
	movl	-68(%ebp), %eax
	movl	-44(%ebp), %ebx
	movl	%eax, -100(%ebp)
	jmp	L2167
L2245:
	movl	-64(%ebp), %eax
	movl	%eax, (%ebx)
	movl	-100(%ebp), %edx
	movl	-68(%ebp,%edx), %eax
	movl	%eax, -4(%ebx,%edx)
	movl	-68(%ebp), %eax
	movl	-44(%ebp), %ebx
	movl	%eax, -100(%ebp)
	jmp	L2167
L2244:
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, (%ebx)
	movl	%edx, 4(%ebx)
	movl	-100(%ebp), %ecx
	movl	-72(%ebp,%ecx), %eax
	movl	-68(%ebp,%ecx), %edx
	movl	%eax, -8(%ebx,%ecx)
	movl	%edx, -4(%ebx,%ecx)
	movl	-68(%ebp), %eax
	movl	-44(%ebp), %ebx
	movl	%eax, -100(%ebp)
	jmp	L2167
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__Z22DemoAutoRecordChatLinePKc.cold;	.scl	3;	.type	32;	.endef
__Z22DemoAutoRecordChatLinePKc.cold:
LFSB222:
L2221:
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	.cfi_escape 0x10,0x5,0x2,0x75,0
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_offset 7, -8
	movl	$LC175, (%esp)
	call	__ZSt20__throw_length_errorPKc
	.cfi_endproc
LFE222:
	.text
	.section	.text.unlikely,"x"
LCOLDE176:
	.text
LHOTE176:
	.p2align 4
	.globl	__Z27DemoAutoRecordCapturePlayersPKcs
	.def	__Z27DemoAutoRecordCapturePlayersPKcs;	.scl	2;	.type	32;	.endef
__Z27DemoAutoRecordCapturePlayersPKcs:
LFB254:
	.cfi_startproc
	cmpb	$0, __ZL17DemoAutoRecording.lto_priv.0
	je	L2251
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%edx, %ebx
	movswl	%ax, %edx
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movzbl	_SW_GameFlags, %eax
	andl	$1, %eax
	cmpb	$1, %al
	sbbl	%eax, %eax
	andl	$4, %eax
	addl	$4, %eax
	cmpl	%eax, %edx
	jge	L2246
	movl	%edx, %eax
	movl	%ebx, 12(%esp)
	sall	$5, %eax
	movl	$LC117, 8(%esp)
	addl	$__ZL19DemoAutoPlayerNames, %eax
	movl	$32, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 20(%esp)
	movl	%edx, 16(%esp)
	call	_snprintf
	movl	16(%esp), %edx
	movl	20(%esp), %ecx
	movb	$1, __ZL22DemoAutoPlayerCaptured(%edx)
	movw	%cx, __ZL19DemoAutoPlayerKills(%edx,%edx)
L2246:
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2251:
	ret
	.cfi_endproc
LFE254:
	.p2align 4
	.globl	__Z32DemoAutoRecordScoreboardCompletes
	.def	__Z32DemoAutoRecordScoreboardCompletes;	.scl	2;	.type	32;	.endef
__Z32DemoAutoRecordScoreboardCompletes:
LFB255:
	.cfi_startproc
	movl	%eax, %ecx
	cmpb	$0, __ZL17DemoAutoRecording.lto_priv.0
	je	L2254
	testw	%ax, %ax
	jle	L2254
	cmpw	$4, %ax
	jle	L2257
	testb	$1, _SW_GameFlags
	je	L2257
L2254:
	ret
	.p2align 4,,10
	.p2align 3
L2257:
	movswl	%cx, %edx
	xorl	%eax, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L2258:
	cmpb	$0, __ZL22DemoAutoPlayerCaptured(%eax)
	je	L2254
	addl	$1, %eax
	cmpl	%eax, %edx
	jg	L2258
	movw	%cx, __ZL23DemoAutoScoreboardCount
	movb	$1, __ZL27DemoAutoScoreboardAvailable
	ret
	.cfi_endproc
LFE255:
	.section .rdata,"dr"
LC177:
	.ascii "Unknown\0"
LC178:
	.ascii "SCOREBOARD\0"
LC179:
	.ascii "SCORE UNAVAILABLE\0"
	.align 4
LC180:
	.ascii "Automatic demo archive skipped: demo filename is too long.\12\0"
	.align 4
LC181:
	.ascii "Automatic demo archive skipped: invalid demo filename.\12\0"
LC182:
	.ascii "L%d\0"
LC183:
	.ascii "UNKNOWN\0"
	.align 4
LC184:
	.ascii "Automatic demo archive skipped: nobody got a kill (ZeroKillDemos is 0).\12\0"
LC185:
	.ascii "%02d.%02d.%04d\0"
LC186:
	.ascii "%02d.%02d.%02d\0"
LC187:
	.ascii "00.00.0000\0"
LC188:
	.ascii "00.00.00\0"
LC189:
	.ascii "basic_string::append\0"
LC190:
	.ascii "x\0"
LC191:
	.ascii "[%d]\0"
LC192:
	.ascii "[?]\0"
LC193:
	.ascii "%s%s_%s_%s.%c\0"
	.align 4
LC194:
	.ascii "Automatic demo archive skipped: could not create a unique folder for %s.\12\0"
LC195:
	.ascii "-%u\0"
LC196:
	.ascii "DEMOS/%s\0"
LC197:
	.ascii "%s_%s_%s.%c\0"
LC198:
	.ascii "~\0"
	.align 4
LC199:
	.ascii "Automatic demo archive warning: could not create %s; using %s.DMO.\12\0"
LC200:
	.ascii "%s/%s.DMO\0"
LC201:
	.ascii "%s/%s.TXT\0"
	.align 4
LC202:
	.ascii "Automatic demo archive warning: could not copy %s.\12\0"
LC203:
	.ascii "%s/%s\0"
	.align 4
LC204:
	.ascii "Automatic demo archive warning: could not copy user map %s.\12\0"
LC205:
	.ascii "wt\0"
LC206:
	.ascii "PLAYERS = %d\12---\12\0"
LC207:
	.ascii ".map\0"
LC208:
	.ascii "Player\0"
	.align 4
LC209:
	.ascii "INSTANCE%d = MOUNT C . & C: & \0"
	.align 4
LC210:
	.ascii "vcommit sw.exe -dp%s.DMO -bots%d \0"
LC211:
	.ascii "ipxnet startserver & \0"
LC212:
	.ascii "ipxnet connect localhost & \0"
	.align 4
LC213:
	.ascii "ipxsetup -player %d -nodes %d vcommit sw.exe -dp%s.DMO \0"
LC214:
	.ascii "-level%d \0"
LC215:
	.ascii "-map %s \0"
	.align 4
LC216:
	.ascii "-autonet 0,3,0,1,1,0,20,0,%d,0 -name %s\12\0"
	.align 4
LC217:
	.ascii "Automatic demo archive warning: could not write %s.\12\0"
LC218:
	.ascii "%s\12\0"
LC219:
	.ascii "DEMO: %s.DMO\12\0"
LC220:
	.ascii "LEVEL: %d\12\0"
LC221:
	.ascii "MAP: %s | SIZE: UNAVAILABLE\12\0"
LC222:
	.ascii "MAP: %s | SIZE: %llu BYTES\12\0"
LC223:
	.ascii "PLAYNUM: %d\12---\12\0"
LC224:
	.ascii "PLAYER %d: %s | KILLS: %d\12\0"
	.align 4
LC225:
	.ascii "PLAYER %d: %s | KILLS: UNAVAILABLE\12\0"
LC226:
	.ascii "\12FLAG CAPTURES\12---\12\0"
LC227:
	.ascii "RED: %d\12\0"
LC228:
	.ascii "RED: UNAVAILABLE\12\0"
LC229:
	.ascii "BLUE: %d\12\0"
LC230:
	.ascii "BLUE: UNAVAILABLE\12\0"
LC231:
	.ascii "CAPTURE LIMIT: %d\12\0"
	.align 4
LC232:
	.ascii "SUBMIT YOUR DEMO TO WANGBANG DEMO ARCHIVE! https://desomorphine.ru/sw/demos\12\0"
LC233:
	.ascii "\12CHAT LOG\12---\12\0"
LC234:
	.ascii "HMMM... NO POWER\12\0"
LC235:
	.ascii "%s/PLAYDEMO.BAT\0"
LC236:
	.ascii "@echo off\15\12\0"
	.align 4
LC237:
	.ascii "setlocal DisableDelayedExpansion\15\12\0"
	.align 4
LC238:
	.ascii "rem Copy demo files; reuse existing byte-identical destination files.\15\12\0"
LC239:
	.ascii "set \"DEMODIR=%%~dp0\"\15\12\0"
	.align 4
LC240:
	.ascii "for %%%%I in (\"%%~dp0..\\..\") do set \"KURODIR=%%%%~fI\"\15\12\0"
	.align 4
LC241:
	.ascii "if not exist \"%%KURODIR%%\\kuro.exe\" goto no_kuro\15\12\0"
LC242:
	.ascii "set \"DEMOBASE=\0"
LC243:
	.ascii "\"\15\12\0"
LC244:
	.ascii "set \"MAPFILE=\0"
	.align 4
LC245:
	.ascii "if not exist \"%%DEMODIR%%%%DEMOBASE%%.DMO\" goto no_demo\15\12\0"
LC246:
	.ascii "set \"COPY_DMO=1\"\15\12\0"
LC247:
	.ascii "set \"COPY_WANG=0\"\15\12\0"
LC248:
	.ascii "set \"COPY_WB=0\"\15\12\0"
LC249:
	.ascii "set \"COPY_MAP=0\"\15\12\0"
	.align 4
LC250:
	.ascii "if exist \"%%DEMODIR%%%%DEMOBASE%%.WANG\" set \"COPY_WANG=1\"\15\12\0"
	.align 4
LC251:
	.ascii "if exist \"%%DEMODIR%%%%DEMOBASE%%.WB\" set \"COPY_WB=1\"\15\12\0"
	.align 4
LC252:
	.ascii "if defined MAPFILE if not exist \"%%DEMODIR%%%%MAPFILE%%\" goto no_map\15\12\0"
	.align 4
LC253:
	.ascii "if defined MAPFILE set \"COPY_MAP=1\"\15\12\0"
	.align 4
LC254:
	.ascii "\15\12rem Check the DMO destination.\15\12\0"
	.align 4
LC255:
	.ascii "if not exist \"%%KURODIR%%\\%%DEMOBASE%%.DMO\" goto dmo_checked\15\12\0"
	.align 4
LC256:
	.ascii "fc /b \"%%DEMODIR%%%%DEMOBASE%%.DMO\" \"%%KURODIR%%\\%%DEMOBASE%%.DMO\" >nul\15\12\0"
	.align 4
LC257:
	.ascii "if errorlevel 1 goto collision\15\12\0"
LC258:
	.ascii "set \"COPY_DMO=0\"\15\12\0"
LC259:
	.ascii ":dmo_checked\15\12\0"
	.align 4
LC260:
	.ascii "\15\12rem Check the WANG destination, if a WANG file is present.\15\12\0"
	.align 4
LC261:
	.ascii "if not \"%%COPY_WANG%%\"==\"1\" goto wang_checked\15\12\0"
	.align 4
LC262:
	.ascii "if not exist \"%%KURODIR%%\\%%DEMOBASE%%.WANG\" goto wang_checked\15\12\0"
	.align 4
LC263:
	.ascii "fc /b \"%%DEMODIR%%%%DEMOBASE%%.WANG\" \"%%KURODIR%%\\%%DEMOBASE%%.WANG\" >nul\15\12\0"
LC264:
	.ascii ":wang_checked\15\12\0"
	.align 4
LC265:
	.ascii "\15\12rem Check the WB destination, if a WB file is present.\15\12\0"
	.align 4
LC266:
	.ascii "if not \"%%COPY_WB%%\"==\"1\" goto wb_checked\15\12\0"
	.align 4
LC267:
	.ascii "if not exist \"%%KURODIR%%\\%%DEMOBASE%%.WB\" goto wb_checked\15\12\0"
	.align 4
LC268:
	.ascii "fc /b \"%%DEMODIR%%%%DEMOBASE%%.WB\" \"%%KURODIR%%\\%%DEMOBASE%%.WB\" >nul\15\12\0"
LC269:
	.ascii ":wb_checked\15\12\0"
	.align 4
LC270:
	.ascii "\15\12rem Reuse an installed map only when byte-identical.\15\12\0"
	.align 4
LC271:
	.ascii "if not \"%%COPY_MAP%%\"==\"1\" goto map_checked\15\12\0"
	.align 4
LC272:
	.ascii "if not exist \"%%KURODIR%%\\%%MAPFILE%%\" goto map_checked\15\12\0"
	.align 4
LC273:
	.ascii "fc /b \"%%DEMODIR%%%%MAPFILE%%\" \"%%KURODIR%%\\%%MAPFILE%%\" >nul\15\12\0"
	.align 4
LC274:
	.ascii "if errorlevel 1 goto map_conflict\15\12\0"
LC275:
	.ascii ":map_checked\15\12\0"
	.align 4
LC276:
	.ascii "\15\12rem All destinations have been checked. Copy only missing files.\15\12\0"
	.align 4
LC277:
	.ascii "if not \"%%COPY_WANG%%\"==\"1\" goto skip_wang_copy\15\12\0"
	.align 4
LC278:
	.ascii "if exist \"%%KURODIR%%\\%%DEMOBASE%%.WANG\" goto late_collision\15\12\0"
	.align 4
LC279:
	.ascii "copy /B /-Y \"%%DEMODIR%%%%DEMOBASE%%.WANG\" \"%%KURODIR%%\\%%DEMOBASE%%.WANG\" >nul\15\12\0"
	.align 4
LC280:
	.ascii "if errorlevel 1 goto copy_failed\15\12\0"
LC281:
	.ascii ":skip_wang_copy\15\12\0"
	.align 4
LC282:
	.ascii "if not \"%%COPY_WB%%\"==\"1\" goto skip_wb_copy\15\12\0"
	.align 4
LC283:
	.ascii "if exist \"%%KURODIR%%\\%%DEMOBASE%%.WB\" goto late_collision\15\12\0"
	.align 4
LC284:
	.ascii "copy /B /-Y \"%%DEMODIR%%%%DEMOBASE%%.WB\" \"%%KURODIR%%\\%%DEMOBASE%%.WB\" >nul\15\12\0"
LC285:
	.ascii ":skip_wb_copy\15\12\0"
	.align 4
LC286:
	.ascii "if not \"%%COPY_MAP%%\"==\"1\" goto skip_map_copy\15\12\0"
	.align 4
LC287:
	.ascii "if exist \"%%KURODIR%%\\%%MAPFILE%%\" goto late_collision\15\12\0"
	.align 4
LC288:
	.ascii "copy /B /-Y \"%%DEMODIR%%%%MAPFILE%%\" \"%%KURODIR%%\\%%MAPFILE%%\" >nul\15\12\0"
LC289:
	.ascii ":skip_map_copy\15\12\0"
	.align 4
LC290:
	.ascii "if not \"%%COPY_DMO%%\"==\"1\" goto skip_dmo_copy\15\12\0"
	.align 4
LC291:
	.ascii "if exist \"%%KURODIR%%\\%%DEMOBASE%%.DMO\" goto late_collision\15\12\0"
	.align 4
LC292:
	.ascii "copy /B /-Y \"%%DEMODIR%%%%DEMOBASE%%.DMO\" \"%%KURODIR%%\\%%DEMOBASE%%.DMO\" >nul\15\12\0"
LC293:
	.ascii ":skip_dmo_copy\15\12\0"
	.align 4
LC294:
	.ascii "echo Required files are ready. Original archive files were preserved.\15\12\0"
	.align 4
LC295:
	.ascii "echo Launching demo playback...\15\12\0"
	.align 4
LC296:
	.ascii "start \"\" /D \"%%KURODIR%%\" \"%%KURODIR%%\\kuro.exe\" \"-dp%%DEMOBASE%%.DMO\"\15\12\0"
	.align 4
LC297:
	.ascii "start \"\" /D \"%%KURODIR%%\" \"%%KURODIR%%\\kuro.exe\" -dp%%DEMOBASE%%.DMO\15\12\0"
LC298:
	.ascii "exit /b 0\15\12\15\12\0"
LC299:
	.ascii ":collision\15\12\0"
	.align 4
LC300:
	.ascii "echo ERROR: A destination filename exists, but its contents differ from the archived file.\15\12\0"
	.align 4
LC301:
	.ascii "echo Nothing was overwritten. Resolve the conflicting file before playing this demo.\15\12\0"
LC302:
	.ascii "pause\15\12exit /b 2\15\12\15\12\0"
LC303:
	.ascii ":map_conflict\15\12\0"
	.align 4
LC304:
	.ascii "echo ERROR: The installed map has the same filename but different contents.\15\12\0"
	.align 4
LC305:
	.ascii "echo Neither map was overwritten. Nothing was copied during the preflight checks.\15\12\0"
LC306:
	.ascii "pause\15\12exit /b 7\15\12\15\12\0"
LC307:
	.ascii ":late_collision\15\12\0"
	.align 4
LC308:
	.ascii "echo ERROR: A destination file appeared after the checks. No overwrite was attempted.\15\12\0"
	.align 4
LC309:
	.ascii "echo Some earlier files may already have been copied; originals remain in this folder.\15\12\0"
LC310:
	.ascii "pause\15\12exit /b 8\15\12\15\12\0"
LC311:
	.ascii ":copy_failed\15\12\0"
	.align 4
LC312:
	.ascii "echo ERROR: A file copy or byte-verification step failed.\15\12\0"
	.align 4
LC313:
	.ascii "echo Originals remain in this folder. Check the Kuro folder for partial copies.\15\12\0"
LC314:
	.ascii "pause\15\12exit /b 3\15\12\15\12\0"
LC315:
	.ascii ":no_kuro\15\12\0"
	.align 4
LC316:
	.ascii "echo ERROR: kuro.exe was not found two directories above this demo folder.\15\12\0"
LC317:
	.ascii "pause\15\12exit /b 4\15\12\15\12\0"
LC318:
	.ascii ":no_map\15\12\0"
	.align 4
LC319:
	.ascii "echo ERROR: The expected archived map is missing. No files were copied.\15\12\0"
LC320:
	.ascii "pause\15\12exit /b 6\15\12\15\12\0"
LC321:
	.ascii ":no_demo\15\12\0"
	.align 4
LC322:
	.ascii "echo ERROR: The expected DMO file is missing from this folder.\15\12\0"
LC323:
	.ascii "pause\15\12exit /b 5\15\12\0"
	.align 4
LC324:
	.ascii "Double-click playback helper: %s\12\0"
LC325:
	.ascii "Automatic demo archive: %s\12\0"
LC326:
	.ascii "WANGEN-style name: %s\12\0"
LC327:
	.ascii "%s/%s.WANG\0"
	.section	.text.unlikely,"x"
LCOLDB328:
	.text
LHOTB328:
	.p2align 4
	.globl	__ZL20DemoAutoRecordFinishv.lto_priv.0
	.def	__ZL20DemoAutoRecordFinishv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL20DemoAutoRecordFinishv.lto_priv.0:
LFB256:
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
	leal	-3788(%ebp), %eax
	pushl	%ebx
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	leal	-3184(%ebp), %ebx
	subl	$3868, %esp
	movl	%eax, -3796(%ebp)
	movb	$0, -3788(%ebp)
	movl	$0, -3792(%ebp)
	movl	$_DemoFileName, 12(%esp)
	movl	$LC117, 8(%esp)
	movl	$192, 4(%esp)
	movl	%ebx, (%esp)
	call	_snprintf
	movl	$47, 4(%esp)
	movl	%ebx, (%esp)
	call	_strrchr
	movl	$92, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, %esi
	call	_strrchr
	testl	%esi, %esi
	je	L2266
	testl	%eax, %eax
	je	L2518
	cmpl	%esi, %eax
	jb	L2518
L2267:
	leal	1(%eax), %ebx
L2269:
	movl	%ebx, (%esp)
	call	_strlen
	cmpl	$31, %eax
	ja	L2702
L2270:
	leal	1(%eax), %edx
	cmpl	$16, %edx
	jb	L2703
	movl	-16(%ebx,%edx), %ecx
	movl	%ecx, -3724(%ebp,%edx)
	movl	-12(%ebx,%edx), %ecx
	movl	%ecx, -3720(%ebp,%edx)
	movl	-8(%ebx,%edx), %ecx
	movl	%ecx, -3716(%ebp,%edx)
	movl	-4(%ebx,%edx), %ecx
	movl	%ecx, -3712(%ebp,%edx)
	cmpl	$16, %eax
	jb	L2273
	andl	$-16, %eax
	xorl	%edx, %edx
	movl	%eax, -3804(%ebp)
L2277:
	movl	4(%ebx,%edx), %edi
	movl	8(%ebx,%edx), %esi
	movl	12(%ebx,%edx), %ecx
	movl	(%ebx,%edx), %eax
	movl	%edi, -3704(%ebp,%edx)
	movl	%eax, -3708(%ebp,%edx)
	movl	%esi, -3700(%ebp,%edx)
	movl	%ecx, -3696(%ebp,%edx)
	addl	$16, %edx
	cmpl	-3804(%ebp), %edx
	jb	L2277
	.p2align 4
	.p2align 3
L2273:
	leal	-3708(%ebp), %eax
	movl	$46, 4(%esp)
	movl	%eax, (%esp)
	call	_strrchr
	testl	%eax, %eax
	je	L2279
	movb	$0, (%eax)
L2279:
	cmpb	$0, -3708(%ebp)
	je	L2704
	cmpb	$0, __ZL27DemoAutoScoreboardAvailable
	jne	L2281
	cmpw	$1, _gNet+12
	je	L2705
L2282:
	movl	_ZeroKillDemosEnabled, %edx
	testl	%edx, %edx
	jne	L2294
L2295:
	movl	$LC184, (%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L2271
	.p2align 4,,10
	.p2align 3
L2703:
	testb	$8, %dl
	jne	L2706
	testb	$4, %dl
	jne	L2707
	testl	%edx, %edx
	je	L2273
	movzbl	(%ebx), %eax
	movb	%al, -3708(%ebp)
	testb	$2, %dl
	je	L2273
	movzwl	-2(%ebx,%edx), %eax
	movw	%ax, -3710(%ebp,%edx)
	jmp	L2273
	.p2align 4,,10
	.p2align 3
L2518:
	leal	1(%esi), %ebx
	movl	%ebx, (%esp)
	call	_strlen
	cmpl	$31, %eax
	jbe	L2270
L2702:
	movl	$LC180, (%esp)
	call	__Z10OSD_PrintfPKcz
L2271:
	movl	-3796(%ebp), %eax
	leal	-3788(%ebp), %edi
	cmpl	%edi, %eax
	je	L2265
	call	_mi_free
L2265:
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
L2281:
	.cfi_restore_state
	movl	_ZeroKillDemosEnabled, %eax
	testl	%eax, %eax
	jne	L2294
L2495:
	movswl	__ZL23DemoAutoScoreboardCount, %edx
	testw	%dx, %dx
	jle	L2295
	xorl	%eax, %eax
	jmp	L2296
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2708:
	addl	$1, %eax
	cmpl	%edx, %eax
	je	L2295
L2296:
	cmpw	$0, __ZL19DemoAutoPlayerKills(%eax,%eax)
	jle	L2708
L2294:
	movswl	__ZL13DemoAutoLevel, %eax
	testw	%ax, %ax
	jg	L2709
	leal	-784(%ebp), %ebx
	movl	$__ZL15DemoAutoMapName.lto_priv.0, 12(%esp)
	movl	$LC117, 8(%esp)
	movl	$160, 4(%esp)
	movl	%ebx, (%esp)
	call	_snprintf
	movl	$47, 4(%esp)
	movl	%ebx, (%esp)
	call	_strrchr
	movl	$92, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, %esi
	call	_strrchr
	testl	%esi, %esi
	je	L2299
	testl	%eax, %eax
	je	L2519
	cmpl	%esi, %eax
	jb	L2519
L2300:
	leal	1(%eax), %ebx
L2302:
	movl	$46, 4(%esp)
	movl	%ebx, (%esp)
	call	_strrchr
	testl	%eax, %eax
	je	L2303
	movb	$0, (%eax)
L2303:
	cmpb	$0, (%ebx)
	je	L2710
	movl	%ebx, 12(%esp)
	movl	$LC117, 8(%esp)
L2695:
	leal	-3536(%ebp), %eax
	movl	$160, 4(%esp)
	movl	%eax, -3820(%ebp)
	movl	%eax, (%esp)
	call	_snprintf
L2298:
	leal	-3676(%ebp), %eax
	movl	$_DemoFileName, (%esp)
	movl	%eax, 4(%esp)
	call	_stat32
	testl	%eax, %eax
	movl	-3648(%ebp), %eax
	jne	L2711
L2307:
	movl	%eax, -3800(%ebp)
	leal	-3800(%ebp), %eax
	movl	%eax, (%esp)
	call	__localtime32
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L2308
	movl	20(%eax), %eax
	addl	$1900, %eax
	movl	%eax, 20(%esp)
	movl	16(%ebx), %eax
	addl	$1, %eax
	movl	%eax, 16(%esp)
	movl	12(%ebx), %eax
	movl	$LC185, 8(%esp)
	movl	%eax, 12(%esp)
	leal	-3740(%ebp), %eax
	movl	$32, 4(%esp)
	movl	%eax, -3816(%ebp)
	movl	%eax, (%esp)
	call	_snprintf
	movl	(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	$LC186, 8(%esp)
	movl	%eax, 12(%esp)
	leal	-3772(%ebp), %eax
	movl	$32, 4(%esp)
	movl	%eax, -3812(%ebp)
	movl	%eax, (%esp)
	call	_snprintf
L2309:
	movzwl	__ZL23DemoAutoScoreboardCount, %eax
	cmpb	$0, __ZL27DemoAutoScoreboardAvailable
	cmove	__ZL19DemoAutoPlayerCount.lto_priv.0, %ax
	cwtl
	movl	%eax, -3804(%ebp)
	testl	%eax, %eax
	jle	L2312
	movl	$__ZL19DemoAutoPlayerNames, %ebx
	movl	-3792(%ebp), %edx
	xorl	%esi, %esi
	movl	%ebx, %edi
	cmpb	$0, (%ebx)
	je	L2501
L2714:
	movl	%edx, -3808(%ebp)
	movl	%ebx, (%esp)
	call	_strlen
	movl	-3808(%ebp), %edx
	movl	%eax, %ecx
L2314:
	movl	$2147483646, %eax
	subl	%edx, %eax
	cmpl	%ecx, %eax
	jb	L2315
	movl	%ecx, 4(%esp)
	leal	-3796(%ebp), %ecx
	movl	%edi, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	subl	$8, %esp
	cmpb	$0, __ZL27DemoAutoScoreboardAvailable
	je	L2316
	movswl	__ZL23DemoAutoScoreboardCount, %eax
	cmpl	%esi, %eax
	jg	L2712
L2316:
	leal	-1104(%ebp), %edi
	movl	$LC192, 8(%esp)
	movl	$24, 4(%esp)
	movl	%edi, (%esp)
	call	_snprintf
L2317:
	movl	%edi, (%esp)
	call	_strlen
	movl	%eax, %edx
	movl	$2147483646, %eax
	subl	-3792(%ebp), %eax
	cmpl	%edx, %eax
	jb	L2315
	movl	%edx, 4(%esp)
	leal	-3796(%ebp), %ecx
	addl	$1, %esi
	movl	%edi, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	subl	$8, %esp
	cmpl	%esi, -3804(%ebp)
	je	L2312
	addl	$32, %ebx
	cmpl	$2147483646, -3792(%ebp)
	je	L2713
	movl	$1, 4(%esp)
	leal	-3796(%ebp), %ecx
	movl	%ebx, %edi
	movl	$LC190, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	movl	-3792(%ebp), %edx
	subl	$8, %esp
	cmpb	$0, (%ebx)
	jne	L2714
L2501:
	movl	$7, %ecx
	movl	$LC177, %edi
	jmp	L2314
	.p2align 4,,10
	.p2align 3
L2266:
	testl	%eax, %eax
	jne	L2267
	jmp	L2269
L2299:
	testl	%eax, %eax
	jne	L2300
	jmp	L2302
	.p2align 4,,10
	.p2align 3
L2712:
	movswl	__ZL19DemoAutoPlayerKills(%esi,%esi), %eax
	leal	-1104(%ebp), %edi
	movl	$LC191, 8(%esp)
	movl	$24, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%edi, (%esp)
	call	_snprintf
	jmp	L2317
	.p2align 4,,10
	.p2align 3
L2312:
	call	__ZNSt6chrono3_V212system_clock3nowEv
	movl	$0, (%esp)
	movl	%edx, %esi
	movl	%eax, %ebx
	call	__time32
	xorl	%eax, __ZZL20DemoAutoRandomLettervE5state
	call	_clock
	xorl	__ZZL20DemoAutoRandomLettervE5state, %ebx
	imull	$-1640531527, %eax, %eax
	xorl	%esi, %ebx
	xorl	%eax, %ebx
	movl	__ZZL20DemoAutoRandomLettervE8sequence, %eax
	addl	$1, %eax
	movl	%eax, __ZZL20DemoAutoRandomLettervE8sequence
	imull	$-2048144789, %eax, %eax
	addl	%ebx, %eax
	je	L2502
	movl	%eax, %edx
	sall	$13, %edx
	xorl	%eax, %edx
	movl	%edx, %eax
	shrl	$17, %eax
	xorl	%edx, %eax
	movl	%eax, %ecx
	sall	$5, %ecx
	xorl	%eax, %ecx
	movl	$1321528399, %eax
	mull	%ecx
	movl	%ecx, %eax
	shrl	$3, %edx
	imull	$26, %edx, %edx
	subl	%edx, %eax
	addl	$97, %eax
	movzbl	%al, %esi
L2319:
	movl	%ecx, __ZZL20DemoAutoRandomLettervE5state
	movl	%esi, 28(%esp)
	movl	-3812(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-3816(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-3820(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-3796(%ebp), %eax
	movl	$LC193, 8(%esp)
	movl	%eax, 12(%esp)
	leal	-784(%ebp), %eax
	movl	$768, 4(%esp)
	movl	%eax, (%esp)
	call	_snprintf
	leal	-784(%ebp), %ecx
	movl	$221, %edx
	leal	-2797(%ebp), %eax
	call	__ZL26DemoAutoSanitizeFolderNamePcjPKc.part.0.lto_priv.0
	cmpb	$0, -2797(%ebp)
	je	L2349
	leal	-2797(%ebp), %eax
	leal	-1424(%ebp), %edi
	movl	$LC117, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$221, 4(%esp)
	movl	%edi, (%esp)
	call	_snprintf
	leal	-1104(%ebp), %eax
	movl	$1, -3808(%ebp)
	movl	%eax, -3804(%ebp)
	movl	%esi, -3824(%ebp)
L2321:
	movl	%edi, 12(%esp)
	movl	$LC196, 8(%esp)
	movl	$256, 4(%esp)
	movl	-3804(%ebp), %esi
	movl	%esi, (%esp)
	call	_snprintf
	cmpl	$255, %eax
	ja	L2349
	leal	-1744(%ebp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_stat32
	testl	%eax, %eax
	je	L2351
	movl	%esi, (%esp)
	call	*__imp___mkdir
	testl	%eax, %eax
	je	L2715
	call	*__imp___errno
	cmpl	$17, (%eax)
	je	L2351
L2349:
	leal	-784(%ebp), %eax
	movl	$LC194, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L2271
	.p2align 4,,10
	.p2align 3
L2351:
	addl	$1, -3808(%ebp)
	cmpl	$1000000, -3808(%ebp)
	je	L2349
	movl	-3808(%ebp), %eax
	movl	$LC195, 8(%esp)
	movl	$16, 4(%esp)
	movl	%eax, 12(%esp)
	leal	-2064(%ebp), %eax
	movl	%eax, -3828(%ebp)
	movl	%eax, %esi
	movl	%eax, (%esp)
	call	_snprintf
	movl	%esi, (%esp)
	call	_strlen
	movl	%eax, %esi
	leal	-2797(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, %ecx
	leal	1(%esi), %eax
	leal	(%esi,%ecx), %edx
	cmpl	$220, %edx
	jbe	L2322
	movl	$220, %edx
	subl	%esi, %edx
	movl	-2813(%ebp,%edx), %ecx
	leal	-1(%edx), %esi
	movl	%ecx, -16(%edi,%edx)
	movl	-2809(%ebp,%edx), %ecx
	movl	%ecx, -12(%edi,%edx)
	movl	-2805(%ebp,%edx), %ecx
	movl	%ecx, -8(%edi,%edx)
	movl	-2801(%ebp,%edx), %ecx
	movl	%ecx, -4(%edi,%edx)
	movl	%esi, %ecx
	andl	$-16, %ecx
	movl	%ecx, -3832(%ebp)
	xorl	%ecx, %ecx
L2323:
	movl	-2797(%ebp,%ecx), %ebx
	movl	%ebx, (%edi,%ecx)
	movl	-2793(%ebp,%ecx), %ebx
	movl	%ebx, 4(%edi,%ecx)
	movl	-2789(%ebp,%ecx), %ebx
	movl	%ebx, 8(%edi,%ecx)
	movl	-2785(%ebp,%ecx), %ebx
	movl	%ebx, 12(%edi,%ecx)
	addl	$16, %ecx
	cmpl	-3832(%ebp), %ecx
	jb	L2323
	addl	%edi, %edx
	cmpl	$16, %eax
	jnb	L2325
	testb	$8, %al
	jne	L2716
	testb	$4, %al
	jne	L2717
	testl	%eax, %eax
	je	L2332
	movzbl	-2064(%ebp), %ecx
	movb	%cl, (%edx)
	testb	$2, %al
	jne	L2718
L2332:
	movzbl	-1424(%ebp,%esi), %eax
	cmpb	$46, %al
	je	L2520
	cmpb	$32, %al
	jne	L2321
L2520:
	movb	$45, -1424(%ebp,%esi)
	jmp	L2321
L2715:
	movl	-3804(%ebp), %eax
	movl	-3824(%ebp), %esi
	movl	$LC117, 8(%esp)
	movl	$256, 4(%esp)
	movl	%eax, 12(%esp)
	leal	-2320(%ebp), %eax
	movl	%eax, (%esp)
	call	_snprintf
	movl	%esi, 24(%esp)
	movl	-3812(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-3816(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-3820(%ebp), %eax
	movl	$LC197, 8(%esp)
	movl	%eax, 12(%esp)
	leal	-2576(%ebp), %eax
	movl	$256, 4(%esp)
	movl	%eax, (%esp)
	call	_snprintf
	leal	-2320(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	leal	10(%eax), %ecx
	cmpl	$199, %ecx
	ja	L2357
	leal	-2576(%ebp), %eax
	movl	%ecx, -3808(%ebp)
	movl	%eax, (%esp)
	call	_strlen
	movl	$200, %edx
	subl	-3808(%ebp), %edx
	movb	$0, -2984(%ebp)
	movl	$0, -2988(%ebp)
	movl	%eax, %esi
	leal	-2984(%ebp), %eax
	movl	%eax, -2992(%ebp)
	movl	$100, %eax
	cmpl	%eax, %edx
	cmova	%eax, %edx
	leal	8(%esi), %eax
	cmpl	%eax, %edx
	jb	L2357
	movl	-3792(%ebp), %eax
	movl	-3796(%ebp), %ebx
	leal	(%esi,%eax), %ecx
	cmpl	%ecx, %edx
	jb	L2358
	movl	%eax, -3812(%ebp)
	leal	-2056(%ebp), %edx
	leal	-2064(%ebp), %eax
	movl	%edx, -3808(%ebp)
	movl	%edx, -2064(%ebp)
	movb	$0, -2056(%ebp)
	movl	$0, -2060(%ebp)
	movl	%ecx, (%esp)
	movl	%eax, %ecx
	movl	%eax, -3828(%ebp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEj
	movl	$2147483646, %eax
	subl	-2060(%ebp), %eax
	movl	%eax, %ecx
	movl	-3812(%ebp), %eax
	subl	$4, %esp
	cmpl	%eax, %ecx
	jb	L2315
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	movl	-3828(%ebp), %ebx
	movl	%ebx, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	movl	$2147483646, %edx
	subl	-2060(%ebp), %edx
	subl	$8, %esp
	cmpl	%esi, %edx
	jb	L2315
	leal	-2576(%ebp), %eax
	movl	%esi, 4(%esp)
	movl	%ebx, %ecx
	leal	-2984(%ebp), %esi
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	movl	-2992(%ebp), %eax
	subl	$8, %esp
	movl	%eax, %ebx
	cmpl	%esi, %eax
	je	L2719
	movl	-2064(%ebp), %ecx
	movl	-2060(%ebp), %edx
	cmpl	-3808(%ebp), %ecx
	je	L2489
	movl	%edx, -3812(%ebp)
	movss	-2056(%ebp), %xmm1
	movss	-3812(%ebp), %xmm0
	movl	-2984(%ebp), %esi
	movl	%ecx, -2992(%ebp)
	unpcklps	%xmm1, %xmm0
	movlps	%xmm0, -2988(%ebp)
	testl	%eax, %eax
	je	L2372
	movl	%eax, -2064(%ebp)
	movl	%esi, -2056(%ebp)
L2371:
	movb	$0, (%ebx)
	movl	-2064(%ebp), %eax
	movl	$0, -2060(%ebp)
	cmpl	-3808(%ebp), %eax
	je	L2374
	call	_mi_free
L2374:
	movl	-2992(%ebp), %ecx
	leal	-3637(%ebp), %eax
	movl	$101, %edx
	leal	-2984(%ebp), %esi
	call	__ZL26DemoAutoSanitizeFolderNamePcjPKc.part.0.lto_priv.0
	movl	-2992(%ebp), %eax
	cmpl	%esi, %eax
	je	L2410
	call	_mi_free
L2410:
	cmpb	$0, __ZL15DemoOutExtended.lto_priv.0
	jne	L2411
	movb	$1, -3836(%ebp)
L2412:
	leal	-3708(%ebp), %eax
	movl	%edi, (%esp)
	movl	%eax, 16(%esp)
	leal	-2320(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$LC200, 8(%esp)
	movl	$320, 4(%esp)
	call	_snprintf
	leal	-3708(%ebp), %eax
	movl	$LC327, 8(%esp)
	movl	%eax, 16(%esp)
	leal	-2320(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-1744(%ebp), %eax
	movl	$320, 4(%esp)
	movl	%eax, (%esp)
	call	_snprintf
	leal	-3708(%ebp), %eax
	movl	$LC201, 8(%esp)
	movl	%eax, 16(%esp)
	leal	-2320(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$320, 4(%esp)
	movl	-3828(%ebp), %eax
	movl	%eax, (%esp)
	call	_snprintf
	movl	%edi, %edx
	movl	$_DemoFileName, %eax
	leal	-3708(%ebp), %edi
	call	__ZL16DemoAutoCopyFilePKcS0_
	movl	%edi, -3832(%ebp)
	testb	%al, %al
	je	L2486
L2413:
	movb	$0, -3376(%ebp)
	cmpw	$0, __ZL13DemoAutoLevel
	jle	L2720
L2414:
	cmpb	$0, __ZL15DemoOutExtended.lto_priv.0
	jne	L2424
L2423:
	movl	$0, -3840(%ebp)
	xorl	%ebx, %ebx
L2421:
	leal	-1744(%ebp), %eax
	movl	$LC205, 4(%esp)
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, -3844(%ebp)
	testl	%eax, %eax
	je	L2425
	movl	$1, -3812(%ebp)
	cmpb	$0, __ZL12DemoAutoBots
	jne	L2426
	movswl	__ZL19DemoAutoPlayerCount.lto_priv.0, %eax
	movl	$1, %edx
	testw	%ax, %ax
	cmovle	%edx, %eax
	movl	%eax, -3812(%ebp)
L2426:
	movl	-3812(%ebp), %eax
	movl	$LC206, 4(%esp)
	movl	%eax, 8(%esp)
	movl	-3844(%ebp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	movb	$0, -1104(%ebp)
	cmpw	$0, __ZL13DemoAutoLevel
	jle	L2721
L2427:
	leal	-2992(%ebp), %eax
	movl	-3844(%ebp), %ebx
	xorl	%edi, %edi
	movl	%eax, -3824(%ebp)
	.p2align 4
	.p2align 3
L2446:
	cmpb	$0, __ZL12DemoAutoBots
	jne	L2508
	movl	%edi, %edx
	movl	%edi, %eax
	sall	$5, %edx
	addl	$__ZL19DemoAutoPlayerNames, %edx
L2430:
	movzbl	__ZL20DemoAutoPlayerColors.lto_priv.0(%eax), %eax
	xorl	%ecx, %ecx
	cmpb	$8, %al
	cmovnb	%ecx, %eax
	movl	%eax, -3808(%ebp)
	movzbl	(%edx), %eax
	testb	%al, %al
	je	L2432
	movl	%ebx, -3820(%ebp)
	leal	-10(%eax), %ebx
	movl	$1, %ecx
	xorl	%esi, %esi
	movl	%edi, -3816(%ebp)
	addl	$1, %edx
	cmpb	$28, %bl
	ja	L2433
	.p2align 4
	.p2align 3
L2723:
	movl	$285212681, %edi
	btl	%ebx, %edi
	jnc	L2433
	movzbl	(%edx), %eax
	testb	%al, %al
	je	L2722
	leal	1(%esi), %ebx
	movl	%ebx, %ecx
L2724:
	leal	-10(%eax), %ebx
	addl	$1, %edx
	cmpb	$28, %bl
	jbe	L2723
L2433:
	movb	%al, -2992(%ebp,%esi)
	movzbl	(%edx), %eax
	testb	%al, %al
	je	L2691
	leal	1(%ecx), %ebx
	cmpl	$63, %ecx
	je	L2436
	movl	%ecx, %esi
	movl	%ebx, %ecx
	jmp	L2724
	.p2align 4,,10
	.p2align 3
L2508:
	xorl	%eax, %eax
	movl	$__ZL19DemoAutoPlayerNames, %edx
	jmp	L2430
	.p2align 4,,10
	.p2align 3
L2436:
	movb	$0, -2929(%ebp)
	movl	-3820(%ebp), %ebx
	movl	-3816(%ebp), %edi
L2439:
	leal	1(%edi), %esi
	movl	$LC209, 4(%esp)
	movl	%esi, 8(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	cmpb	$0, __ZL12DemoAutoBots
	jne	L2725
	movl	%ebx, 12(%esp)
	testl	%edi, %edi
	je	L2726
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC212, (%esp)
	call	_fwrite
L2443:
	leal	-3708(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-3812(%ebp), %eax
	movl	%esi, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$LC213, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
L2441:
	movswl	__ZL13DemoAutoLevel, %eax
	testw	%ax, %ax
	jg	L2727
	cmpb	$0, -1104(%ebp)
	jne	L2728
L2445:
	movl	-3824(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-3808(%ebp), %eax
	movl	$LC216, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	cmpl	%esi, -3812(%ebp)
	je	L2729
	movl	%esi, %edi
	jmp	L2446
	.p2align 4,,10
	.p2align 3
L2727:
	movl	%eax, 8(%esp)
	movl	$LC214, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	jmp	L2445
	.p2align 4,,10
	.p2align 3
L2725:
	movzbl	__ZL16DemoAutoBotCount, %eax
	movl	$LC210, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 12(%esp)
	leal	-3708(%ebp), %eax
	movl	%eax, 8(%esp)
	call	_fprintf
	jmp	L2441
	.p2align 4,,10
	.p2align 3
L2691:
	movl	-3820(%ebp), %ebx
	movl	-3816(%ebp), %edi
L2435:
	movb	$0, -2992(%ebp,%ecx)
	testl	%ecx, %ecx
	jne	L2439
L2438:
	movl	$LC208, 8(%esp)
	movl	$64, 4(%esp)
	movl	-3824(%ebp), %eax
	movl	%eax, (%esp)
	call	_snprintf
	jmp	L2439
	.p2align 4,,10
	.p2align 3
L2322:
	cmpl	$16, %ecx
	jnb	L2333
	testb	$8, %cl
	jne	L2730
	testb	$4, %cl
	jne	L2731
	testl	%ecx, %ecx
	jne	L2732
L2334:
	leal	(%edi,%ecx), %edx
	cmpl	$16, %eax
	jnb	L2340
	testb	$8, %al
	jne	L2733
	testb	$4, %al
	jne	L2734
	testl	%eax, %eax
	je	L2341
	movzbl	-2064(%ebp), %ebx
	movb	%bl, (%edx)
	testb	$2, %al
	je	L2341
	movzwl	-2066(%ebp,%eax), %esi
	movw	%si, -2(%edx,%eax)
	.p2align 4
	.p2align 3
L2341:
	testl	%ecx, %ecx
	je	L2321
	leal	-1(%ecx), %esi
	jmp	L2332
	.p2align 4,,10
	.p2align 3
L2726:
	movl	$21, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC211, (%esp)
	call	_fwrite
	jmp	L2443
	.p2align 4,,10
	.p2align 3
L2502:
	movl	$109, %esi
	movl	$686983322, %ecx
	jmp	L2319
	.p2align 4,,10
	.p2align 3
L2709:
	movl	%eax, 12(%esp)
	movl	$LC182, 8(%esp)
	jmp	L2695
	.p2align 4,,10
	.p2align 3
L2728:
	movl	-3804(%ebp), %eax
	movl	$LC215, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	call	_fprintf
	jmp	L2445
	.p2align 4,,10
	.p2align 3
L2357:
	leal	-2064(%ebp), %eax
	movb	$0, -3836(%ebp)
	movl	%eax, -3828(%ebp)
	jmp	L2412
	.p2align 4,,10
	.p2align 3
L2722:
	movl	-3820(%ebp), %ebx
	movl	-3816(%ebp), %edi
	movl	%esi, %ecx
	jmp	L2435
	.p2align 4,,10
	.p2align 3
L2711:
	movl	$0, (%esp)
	call	__time32
	jmp	L2307
	.p2align 4,,10
	.p2align 3
L2308:
	leal	-3740(%ebp), %eax
	movl	$LC187, 8(%esp)
	movl	$32, 4(%esp)
	movl	%eax, -3816(%ebp)
	movl	%eax, (%esp)
	call	_snprintf
	leal	-3772(%ebp), %eax
	movl	$LC188, 8(%esp)
	movl	$32, 4(%esp)
	movl	%eax, -3812(%ebp)
	movl	%eax, (%esp)
	call	_snprintf
	jmp	L2309
L2740:
	movb	$0, -3376(%ebp)
L2415:
	movl	$__ZL15DemoAutoMapName.lto_priv.0, 4(%esp)
	movl	$LC204, (%esp)
	call	__Z10OSD_PrintfPKcz
	cmpb	$0, __ZL15DemoOutExtended.lto_priv.0
	je	L2423
	.p2align 4
	.p2align 3
L2424:
	movl	$0, -3840(%ebp)
L2422:
	movl	$LC205, 4(%esp)
	movl	-3828(%ebp), %eax
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, %edi
	testl	%eax, %eax
	je	L2449
	leal	-784(%ebp), %eax
	movl	$LC218, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	call	_fprintf
	movl	-3832(%ebp), %eax
	movl	%edi, (%esp)
	movl	$LC219, 4(%esp)
	movl	%eax, 8(%esp)
	call	_fprintf
	movswl	__ZL13DemoAutoLevel, %eax
	testw	%ax, %ax
	jle	L2450
	movl	%eax, 8(%esp)
	movl	$LC220, 4(%esp)
	movl	%edi, (%esp)
	call	_fprintf
L2451:
	movswl	__ZL19DemoAutoPlayerCount.lto_priv.0, %eax
	movl	$LC223, 4(%esp)
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	call	_fprintf
	movl	$LC178, %edx
	movl	$LC179, %eax
	cmpb	$0, __ZL27DemoAutoScoreboardAvailable
	cmovne	%edx, %eax
	movl	$LC218, 4(%esp)
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	call	_fprintf
	movzbl	__ZL27DemoAutoScoreboardAvailable, %edx
	movzwl	__ZL23DemoAutoScoreboardCount, %eax
	testb	%dl, %dl
	cmove	__ZL19DemoAutoPlayerCount.lto_priv.0, %ax
	cwtl
	movl	%eax, -3808(%ebp)
	testl	%eax, %eax
	jle	L2457
	movl	$__ZL19DemoAutoPlayerNames, %esi
	movl	$1, %ebx
	jmp	L2462
	.p2align 4,,10
	.p2align 3
L2735:
	movswl	__ZL23DemoAutoScoreboardCount, %ecx
	leal	-1(%ebx), %edx
	cmpl	%edx, %ecx
	jle	L2458
	testb	%al, %al
	movl	$LC177, %eax
	movswl	__ZL19DemoAutoPlayerKills-2(%ebx,%ebx), %edx
	movl	%ebx, 8(%esp)
	cmovne	%esi, %eax
	movl	$LC224, 4(%esp)
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	%edi, (%esp)
	call	_fprintf
	cmpl	%ebx, -3808(%ebp)
	jle	L2457
L2736:
	movzbl	__ZL27DemoAutoScoreboardAvailable, %edx
	addl	$32, %esi
	addl	$1, %ebx
L2462:
	movzbl	(%esi), %eax
	testb	%dl, %dl
	jne	L2735
L2458:
	testb	%al, %al
	movl	$LC177, %eax
	movl	%ebx, 8(%esp)
	cmovne	%esi, %eax
	movl	$LC225, 4(%esp)
	movl	%edi, (%esp)
	movl	%eax, 12(%esp)
	call	_fprintf
	cmpl	%ebx, -3808(%ebp)
	jg	L2736
L2457:
	movl	-3804(%ebp), %edx
	leal	-2992(%ebp), %eax
	movl	$-1, -2992(%ebp)
	call	__Z26GetCompactCTFCaptureScoresPiS_.part.0
	testb	%al, %al
	jne	L2737
L2463:
	movl	%edi, 12(%esp)
	xorl	%ebx, %ebx
	movl	$76, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC232, (%esp)
	call	_fwrite
	movl	%edi, 12(%esp)
	movl	$14, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC233, (%esp)
	call	_fwrite
	movl	__ZL17DemoAutoChatLines.lto_priv.0, %edx
	cmpl	%edx, __ZL17DemoAutoChatLines.lto_priv.0+4
	je	L2738
	.p2align 4
	.p2align 3
L2468:
	leal	(%ebx,%ebx,2), %eax
	addl	$1, %ebx
	movl	(%edx,%eax,8), %eax
	movl	$LC218, 4(%esp)
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	call	_fprintf
	movl	__ZL17DemoAutoChatLines.lto_priv.0, %edx
	movl	__ZL17DemoAutoChatLines.lto_priv.0+4, %eax
	subl	%edx, %eax
	sarl	$3, %eax
	imull	$-1431655765, %eax, %eax
	cmpl	%eax, %ebx
	jb	L2468
L2469:
	movl	%edi, (%esp)
	call	_fclose
	testl	%eax, %eax
	jne	L2449
L2470:
	leal	-2320(%ebp), %eax
	movl	$LC235, 8(%esp)
	leal	-3376(%ebp), %edi
	movl	%eax, 12(%esp)
	movl	$320, 4(%esp)
	movl	-3804(%ebp), %ebx
	movl	%ebx, (%esp)
	call	_snprintf
	movl	-3840(%ebp), %esi
	movl	-3832(%ebp), %edx
	xorl	%eax, %eax
	testl	%esi, %esi
	cmove	%eax, %edi
	cmpb	$0, (%edx)
	je	L2472
	movzbl	__ZL15DemoOutExtended.lto_priv.0, %esi
	movl	%ebx, (%esp)
	movl	$LC205, 4(%esp)
	call	_fopen
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L2472
	movl	%eax, 12(%esp)
	movl	$11, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC236, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$34, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC237, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$71, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC238, (%esp)
	call	_fwrite
	movl	$LC239, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	$LC240, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	$LC241, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	%ebx, 12(%esp)
	movl	$14, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC242, (%esp)
	call	_fwrite
	movl	-3832(%ebp), %edx
	movzbl	(%edx), %eax
	testb	%al, %al
	je	L2473
	movl	%edi, -3808(%ebp)
	movl	%edx, %edi
	jmp	L2475
	.p2align 4,,10
	.p2align 3
L2474:
	addl	$1, %edi
	movl	%ebx, 4(%esp)
	movzbl	-1(%edi), %eax
	movl	%eax, (%esp)
	call	_fputc
	movzbl	(%edi), %eax
	testb	%al, %al
	je	L2739
L2475:
	cmpb	$37, %al
	jne	L2474
	movl	%ebx, 4(%esp)
	movl	$37, (%esp)
	call	_fputc
	jmp	L2474
	.p2align 4,,10
	.p2align 3
L2472:
	movl	-3804(%ebp), %eax
	movl	$LC217, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
L2481:
	leal	-2320(%ebp), %eax
	movl	$LC325, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	leal	-784(%ebp), %eax
	movl	$LC326, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	movl	_ScoreShotEnabled, %ecx
	testl	%ecx, %ecx
	je	L2271
	leal	-2320(%ebp), %eax
	movl	$LC117, 8(%esp)
	leal	-3708(%ebp), %edi
	movl	%eax, 12(%esp)
	movl	$256, 4(%esp)
	movl	$__ZL14DemoShotFolder.lto_priv.0, (%esp)
	call	_snprintf
	cmpb	$0, -3836(%ebp)
	leal	-3637(%ebp), %eax
	movl	$LC117, 8(%esp)
	cmove	%edi, %eax
	movl	$101, 4(%esp)
	movl	$__ZL12DemoShotBase.lto_priv.0, (%esp)
	movl	%eax, 12(%esp)
	call	_snprintf
	jmp	L2271
	.p2align 4,,10
	.p2align 3
L2704:
	movl	$LC181, (%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L2271
	.p2align 4,,10
	.p2align 3
L2729:
	movl	-3844(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
	testl	%eax, %eax
	je	L2422
L2425:
	leal	-1744(%ebp), %eax
	movl	$LC217, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L2422
	.p2align 4,,10
	.p2align 3
L2720:
	movl	_MapCopyEnabled, %edi
	testl	%edi, %edi
	je	L2414
	cmpb	$0, __ZL15DemoAutoMapName.lto_priv.0
	je	L2415
	leal	-2992(%ebp), %edi
	movl	%edi, %eax
	movl	%edi, -3824(%ebp)
	call	__ZL22DemoAutoResolveMapFilePcj.part.0.constprop.0
	testb	%al, %al
	je	L2415
	movl	$47, 4(%esp)
	movl	%edi, (%esp)
	call	_strrchr
	movl	$92, 4(%esp)
	movl	%edi, (%esp)
	movl	%eax, %esi
	call	_strrchr
	testl	%esi, %esi
	je	L2416
	testl	%eax, %eax
	je	L2521
	cmpl	%esi, %eax
	jb	L2521
L2417:
	leal	1(%eax), %esi
L2419:
	cmpb	$0, (%esi)
	je	L2415
	movl	%esi, (%esp)
	call	_strlen
	cmpl	$191, %eax
	ja	L2415
	leal	-3376(%ebp), %ebx
	movl	%esi, 12(%esp)
	movl	$LC117, 8(%esp)
	movl	$192, 4(%esp)
	movl	%ebx, (%esp)
	call	_snprintf
	leal	-2320(%ebp), %eax
	movl	%esi, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC203, 8(%esp)
	movl	$320, 4(%esp)
	movl	-3804(%ebp), %edi
	movl	%edi, (%esp)
	call	_snprintf
	movl	-3824(%ebp), %eax
	movl	%edi, %edx
	call	__ZL16DemoAutoCopyFilePKcS0_
	testb	%al, %al
	je	L2740
	cmpb	$0, __ZL15DemoOutExtended.lto_priv.0
	movl	$1, -3840(%ebp)
	je	L2421
	jmp	L2422
	.p2align 4,,10
	.p2align 3
L2333:
	movl	-2813(%ebp,%ecx), %edx
	leal	-1(%ecx), %esi
	movl	%edx, -16(%edi,%ecx)
	movl	-2809(%ebp,%ecx), %edx
	movl	%edx, -12(%edi,%ecx)
	movl	-2805(%ebp,%ecx), %edx
	movl	%edx, -8(%edi,%ecx)
	movl	-2801(%ebp,%ecx), %edx
	movl	%edx, -4(%edi,%ecx)
	cmpl	$16, %esi
	jb	L2334
	andl	$-16, %esi
	xorl	%edx, %edx
L2338:
	movl	-2797(%ebp,%edx), %ebx
	movl	%ebx, (%edi,%edx)
	movl	-2793(%ebp,%edx), %ebx
	movl	%ebx, 4(%edi,%edx)
	movl	-2789(%ebp,%edx), %ebx
	movl	%ebx, 8(%edi,%edx)
	movl	-2785(%ebp,%edx), %ebx
	movl	%ebx, 12(%edi,%edx)
	addl	$16, %edx
	cmpl	%esi, %edx
	jb	L2338
	jmp	L2334
L2411:
	leal	-3637(%ebp), %eax
	movl	$LC200, 8(%esp)
	movl	%eax, 16(%esp)
	leal	-2320(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$320, 4(%esp)
	movl	%edi, (%esp)
	call	_snprintf
	leal	-3708(%ebp), %eax
	movl	$LC327, 8(%esp)
	movl	%eax, 16(%esp)
	leal	-2320(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-1744(%ebp), %eax
	movl	$320, 4(%esp)
	movl	%eax, (%esp)
	call	_snprintf
	leal	-3637(%ebp), %eax
	movl	$LC201, 8(%esp)
	movl	%eax, 16(%esp)
	leal	-2320(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$320, 4(%esp)
	movl	-3828(%ebp), %eax
	movl	%eax, (%esp)
	call	_snprintf
	movl	%edi, %edx
	movl	$_DemoFileName, %eax
	call	__ZL16DemoAutoCopyFilePKcS0_
	movb	%al, -3836(%ebp)
	testb	%al, %al
	jne	L2741
	leal	-3708(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$LC199, (%esp)
	call	__Z10OSD_PrintfPKcz
	leal	-3708(%ebp), %eax
	movl	%edi, (%esp)
	movl	%eax, 16(%esp)
	leal	-2320(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$LC200, 8(%esp)
	movl	$320, 4(%esp)
	call	_snprintf
	leal	-3708(%ebp), %eax
	movl	$LC201, 8(%esp)
	movl	%eax, 16(%esp)
	leal	-2320(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$320, 4(%esp)
	movl	-3828(%ebp), %eax
	movl	%eax, (%esp)
	call	_snprintf
	movl	%edi, %edx
	movl	$_DemoFileName, %eax
	leal	-3708(%ebp), %edi
	call	__ZL16DemoAutoCopyFilePKcS0_
	movl	%edi, -3832(%ebp)
	movb	%al, -3836(%ebp)
	testb	%al, %al
	jne	L2413
	movb	$1, -3836(%ebp)
L2486:
	movl	$_DemoFileName, 4(%esp)
	movl	$LC202, (%esp)
	call	__Z10OSD_PrintfPKcz
	leal	-3708(%ebp), %eax
	movl	%eax, -3832(%ebp)
	jmp	L2413
	.p2align 4,,10
	.p2align 3
L2358:
	subl	$1, %edx
	leal	-1416(%ebp), %ecx
	subl	%esi, %edx
	movl	%ecx, -1424(%ebp)
	movl	%edi, %ecx
	cmpl	%eax, %edx
	movl	%ebx, (%esp)
	cmova	%eax, %edx
	addl	%ebx, %edx
	movl	%edx, 4(%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
	subl	$8, %esp
	cmpl	$2147483646, -1420(%ebp)
	je	L2315
	movl	$1, 4(%esp)
	movl	%edi, %ecx
	leal	-1736(%ebp), %esi
	movl	$LC198, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	subl	$8, %esp
	movl	%esi, -1744(%ebp)
	movl	(%eax), %ecx
	leal	8(%eax), %edx
	cmpl	%edx, %ecx
	je	L2742
	movl	%ecx, -1744(%ebp)
	movl	8(%eax), %ecx
	movl	%ecx, -1736(%ebp)
L2697:
	movl	4(%eax), %ecx
L2383:
	movl	%edx, (%eax)
	movl	%ecx, -1740(%ebp)
	movl	$0, 4(%eax)
	movb	$0, 8(%eax)
	leal	-2576(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, %edx
	movl	$2147483646, %eax
	subl	-1740(%ebp), %eax
	cmpl	%edx, %eax
	jb	L2315
	leal	-2576(%ebp), %eax
	movl	%edx, 4(%esp)
	leal	-1744(%ebp), %ecx
	movl	%eax, (%esp)
	leal	-1096(%ebp), %esi
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	subl	$8, %esp
	movl	%esi, -1104(%ebp)
	movl	(%eax), %ecx
	leal	8(%eax), %edx
	movl	%edx, -3812(%ebp)
	cmpl	%edx, %ecx
	je	L2743
	movl	%ecx, -1104(%ebp)
	movl	8(%eax), %ecx
	movl	%ecx, -1096(%ebp)
L2698:
	movl	4(%eax), %edx
	movl	%edx, -3808(%ebp)
L2392:
	movl	-3808(%ebp), %edx
	movl	$0, 4(%eax)
	movl	%edx, -1100(%ebp)
	movl	-3812(%ebp), %edx
	movb	$0, 8(%eax)
	movl	%edx, (%eax)
	movl	-2992(%ebp), %ecx
	leal	-2984(%ebp), %edx
	movl	%ecx, %eax
	cmpl	%edx, %ecx
	je	L2744
	movl	-1104(%ebp), %ebx
	movl	-1100(%ebp), %edx
	cmpl	%esi, %ebx
	je	L2493
	movl	%edx, -3808(%ebp)
	movss	-1096(%ebp), %xmm2
	movss	-3808(%ebp), %xmm0
	movl	-2984(%ebp), %eax
	movl	%ebx, -2992(%ebp)
	unpcklps	%xmm2, %xmm0
	movlps	%xmm0, -2988(%ebp)
	testl	%ecx, %ecx
	je	L2406
	movl	%ecx, -1104(%ebp)
	movl	%eax, -1096(%ebp)
L2405:
	movb	$0, (%ecx)
	movl	-1104(%ebp), %eax
	movl	$0, -1100(%ebp)
	cmpl	%esi, %eax
	je	L2407
	call	_mi_free
L2407:
	movl	-1744(%ebp), %eax
	leal	-1736(%ebp), %esi
	cmpl	%esi, %eax
	je	L2408
	call	_mi_free
L2408:
	movl	-1424(%ebp), %eax
	leal	-1416(%ebp), %esi
	cmpl	%esi, %eax
	je	L2700
	call	_mi_free
L2700:
	leal	-2064(%ebp), %eax
	movl	%eax, -3828(%ebp)
	jmp	L2374
	.p2align 4,,10
	.p2align 3
L2449:
	movl	-3828(%ebp), %eax
	movl	$LC217, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L2470
	.p2align 4,,10
	.p2align 3
L2519:
	leal	1(%esi), %ebx
	jmp	L2302
	.p2align 4,,10
	.p2align 3
L2710:
	leal	-3536(%ebp), %eax
	movl	$LC183, 8(%esp)
	movl	$160, 4(%esp)
	movl	%eax, -3820(%ebp)
	movl	%eax, (%esp)
	call	_snprintf
	jmp	L2298
	.p2align 4,,10
	.p2align 3
L2450:
	cmpb	$0, __ZL15DemoAutoMapName.lto_priv.0
	je	L2453
	movl	-3804(%ebp), %esi
	movl	%esi, %eax
	call	__ZL22DemoAutoResolveMapFilePcj.part.0.constprop.0
	testb	%al, %al
	jne	L2745
L2453:
	movl	$__ZL15DemoAutoMapName.lto_priv.0, 8(%esp)
	movl	$LC221, 4(%esp)
	movl	%edi, (%esp)
	call	_fprintf
	jmp	L2451
	.p2align 4,,10
	.p2align 3
L2340:
	movl	-2080(%ebp,%eax), %esi
	movl	%esi, -16(%edx,%eax)
	movl	-2076(%ebp,%eax), %esi
	movl	%esi, -12(%edx,%eax)
	movl	-2072(%ebp,%eax), %esi
	movl	%esi, -8(%edx,%eax)
	movl	-2068(%ebp,%eax), %esi
	movl	%esi, -4(%edx,%eax)
	subl	$1, %eax
	cmpl	$16, %eax
	jb	L2341
	andl	$-16, %eax
	movl	%ecx, -3840(%ebp)
	movl	-3828(%ebp), %ecx
	movl	%eax, -3832(%ebp)
	xorl	%eax, %eax
L2345:
	movl	8(%ecx,%eax), %ebx
	movl	4(%ecx,%eax), %esi
	movl	%ebx, -3828(%ebp)
	movl	12(%ecx,%eax), %ebx
	movl	%ebx, -3836(%ebp)
	movl	(%ecx,%eax), %ebx
	movl	%esi, 4(%edx,%eax)
	movl	%ebx, (%edx,%eax)
	movl	-3828(%ebp), %ebx
	movl	%ebx, 8(%edx,%eax)
	movl	-3836(%ebp), %ebx
	movl	%ebx, 12(%edx,%eax)
	addl	$16, %eax
	cmpl	-3832(%ebp), %eax
	jb	L2345
	movl	-3840(%ebp), %ecx
	jmp	L2341
L2737:
	movl	%edi, 12(%esp)
	movl	$19, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC226, (%esp)
	call	_fwrite
	movl	-2992(%ebp), %eax
	testl	%eax, %eax
	js	L2464
	movl	%eax, 8(%esp)
	movl	$LC227, 4(%esp)
	movl	%edi, (%esp)
	call	_fprintf
L2465:
	movl	-1104(%ebp), %eax
	testl	%eax, %eax
	js	L2466
	movl	%eax, 8(%esp)
	movl	$LC229, 4(%esp)
	movl	%edi, (%esp)
	call	_fprintf
L2467:
	movl	_FlagCaptureLimit, %eax
	testl	%eax, %eax
	jle	L2463
	movl	%eax, 8(%esp)
	movl	$LC231, 4(%esp)
	movl	%edi, (%esp)
	call	_fprintf
	jmp	L2463
L2739:
	movl	-3808(%ebp), %edi
L2473:
	movl	%ebx, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC243, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$13, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC244, (%esp)
	call	_fwrite
	testl	%edi, %edi
	je	L2476
	movzbl	(%edi), %eax
	testb	%al, %al
	je	L2476
	jmp	L2478
	.p2align 4,,10
	.p2align 3
L2477:
	addl	$1, %edi
	movl	%ebx, 4(%esp)
	movzbl	-1(%edi), %eax
	movl	%eax, (%esp)
	call	_fputc
	movzbl	(%edi), %eax
	testb	%al, %al
	je	L2476
L2478:
	cmpb	$37, %al
	jne	L2477
	movl	%ebx, 4(%esp)
	movl	$37, (%esp)
	call	_fputc
	jmp	L2477
L2476:
	movl	%ebx, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC243, (%esp)
	call	_fwrite
	movl	$LC245, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	%ebx, 12(%esp)
	movl	$18, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC246, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$19, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC247, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$17, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC248, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$18, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC249, (%esp)
	call	_fwrite
	movl	$LC250, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	$LC251, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	$LC252, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	%ebx, 12(%esp)
	movl	$37, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC253, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$34, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC254, (%esp)
	call	_fwrite
	movl	$LC255, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	$LC256, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	%ebx, 12(%esp)
	movl	$32, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC257, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$18, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC258, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$14, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC259, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$62, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC260, (%esp)
	call	_fwrite
	movl	$LC261, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	$LC262, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	$LC263, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	%ebx, 12(%esp)
	movl	$32, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC257, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$19, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC247, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$15, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC264, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$58, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC265, (%esp)
	call	_fwrite
	movl	$LC266, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	$LC267, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	$LC268, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	%ebx, 12(%esp)
	movl	$32, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC257, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$17, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC248, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$13, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC269, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$56, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC270, (%esp)
	call	_fwrite
	movl	$LC271, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	$LC272, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	$LC273, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	%ebx, 12(%esp)
	movl	$35, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC274, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$18, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC249, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$14, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC275, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$68, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC276, (%esp)
	call	_fwrite
	movl	$LC277, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	$LC278, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	$LC279, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	%ebx, 12(%esp)
	movl	$34, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC280, (%esp)
	call	_fwrite
	movl	$LC263, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	%ebx, 12(%esp)
	movl	$34, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC280, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$17, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC281, (%esp)
	call	_fwrite
	movl	$LC282, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	$LC283, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	$LC284, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	%ebx, 12(%esp)
	movl	$34, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC280, (%esp)
	call	_fwrite
	movl	$LC268, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	%ebx, 12(%esp)
	movl	$34, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC280, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$15, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC285, (%esp)
	call	_fwrite
	movl	$LC286, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	$LC287, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	$LC288, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	%ebx, 12(%esp)
	movl	$34, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC280, (%esp)
	call	_fwrite
	movl	$LC273, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	%ebx, 12(%esp)
	movl	$34, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC280, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$16, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC289, (%esp)
	call	_fwrite
	movl	$LC290, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	$LC291, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	$LC292, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	%ebx, 12(%esp)
	movl	$34, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC280, (%esp)
	call	_fwrite
	movl	$LC256, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	%ebx, 12(%esp)
	movl	$34, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC280, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$16, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC293, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$71, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC294, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$33, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC295, (%esp)
	call	_fwrite
	movl	%esi, %eax
	testb	%al, %al
	jne	L2746
	movl	$LC297, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
L2480:
	movl	%ebx, 12(%esp)
	movl	$13, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC298, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$12, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC299, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$92, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC300, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$86, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC301, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$20, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC302, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$15, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC303, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$77, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC304, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$83, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC305, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$20, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC306, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$17, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC307, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$87, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC308, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$88, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC309, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$20, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC310, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$14, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC311, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$59, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC312, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$81, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC313, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$20, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC314, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$10, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC315, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$76, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC316, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$20, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC317, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$9, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC318, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$73, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC319, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$20, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC320, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$10, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC321, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$64, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC322, (%esp)
	call	_fwrite
	movl	%ebx, 12(%esp)
	movl	$18, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC323, (%esp)
	call	_fwrite
	movl	%ebx, (%esp)
	call	_fclose
	testl	%eax, %eax
	jne	L2472
	movl	-3804(%ebp), %eax
	movl	$LC324, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L2481
L2432:
	movb	$0, -2992(%ebp)
	jmp	L2438
L2705:
	movswl	_OrigCommPlayers, %edi
	movl	%edi, -3804(%ebp)
	testl	%edi, %edi
	jle	L2282
	movzbl	_SW_GameFlags, %eax
	andl	$1, %eax
	cmpb	$1, %al
	sbbl	%eax, %eax
	andl	$4, %eax
	addl	$4, %eax
	cmpl	%eax, %edi
	jg	L2282
	movl	$_Player+23262, -3808(%ebp)
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L2293:
	movl	-3808(%ebp), %eax
	leal	-23262(%eax), %esi
	cmpb	$0, _gNet+14
	jne	L2284
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L2287:
	movswl	23240(%esi,%eax,2), %edx
	leal	(%ecx,%edx), %ebx
	subl	%edx, %ecx
	cmpl	%eax, %edi
	cmovne	%ebx, %ecx
	addl	$1, %eax
	cmpl	%eax, -3804(%ebp)
	jne	L2287
L2288:
	movl	-3808(%ebp), %esi
	movswl	%di, %eax
	movswl	%cx, %ecx
	addl	$1, %edi
	movl	%esi, %edx
	call	__Z27DemoAutoRecordCapturePlayersPKcs
	leal	24124(%esi), %eax
	movl	%eax, -3808(%ebp)
	cmpl	%edi, -3804(%ebp)
	jne	L2293
	movl	-3804(%ebp), %eax
	call	__Z32DemoAutoRecordScoreboardCompletes
	movl	_ZeroKillDemosEnabled, %eax
	testl	%eax, %eax
	jne	L2294
	cmpb	$0, __ZL27DemoAutoScoreboardAvailable
	jne	L2495
	jmp	L2295
	.p2align 4,,10
	.p2align 3
L2721:
	testl	%ebx, %ebx
	je	L2507
	cmpb	$0, (%ebx)
	movl	$__ZL15DemoAutoMapName.lto_priv.0, %eax
	cmove	%eax, %ebx
L2428:
	movl	%ebx, 12(%esp)
	movl	$LC117, 8(%esp)
	movl	$224, 4(%esp)
	movl	-3804(%ebp), %edi
	movl	%edi, (%esp)
	call	_snprintf
	movl	$46, 4(%esp)
	movl	%edi, (%esp)
	call	_strrchr
	testl	%eax, %eax
	je	L2429
	movl	$LC207, 4(%esp)
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L2427
L2429:
	movl	-3804(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	leal	4(%eax), %edx
	cmpl	$223, %edx
	ja	L2427
	addl	-3804(%ebp), %eax
	movl	$1885433134, (%eax)
	movb	$0, 4(%eax)
	jmp	L2427
L2732:
	movzbl	-2797(%ebp), %edx
	movb	%dl, (%edi)
	testb	$2, %cl
	je	L2334
	movzwl	-2799(%ebp,%ecx), %edx
	movw	%dx, -2(%edi,%ecx)
	jmp	L2334
L2746:
	movl	$LC296, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	jmp	L2480
L2464:
	movl	%edi, 12(%esp)
	movl	$17, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC228, (%esp)
	call	_fwrite
	jmp	L2465
L2745:
	xorl	%edx, %edx
	movl	%esi, %eax
	call	_kopen4load.part.0
	movl	%eax, %ebx
	cmpl	$-1, %eax
	je	L2453
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	movl	%eax, %esi
	movl	%ebx, %eax
	call	_kclose
	testl	%esi, %esi
	js	L2453
	movl	%esi, 12(%esp)
	sarl	$31, %esi
	movl	%esi, 16(%esp)
	movl	$__ZL15DemoAutoMapName.lto_priv.0, 8(%esp)
	movl	$LC222, 4(%esp)
	movl	%edi, (%esp)
	call	_fprintf
	jmp	L2451
L2507:
	movl	$__ZL15DemoAutoMapName.lto_priv.0, %ebx
	jmp	L2428
	.p2align 4,,10
	.p2align 3
L2284:
	movl	%edi, -3812(%ebp)
	movl	$_Player+23296, %ebx
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%esi, -3816(%ebp)
	jmp	L2292
	.p2align 6
	.p2align 4,,10
	.p2align 3
L2289:
	movl	-3808(%ebp), %edi
	movl	%ecx, %esi
	subl	%eax, %esi
	addl	%ecx, %eax
	movzbl	(%ebx), %ecx
	cmpb	%cl, 34(%edi)
	cmovne	%eax, %esi
	movl	%esi, %ecx
L2290:
	addl	$1, %edx
	addl	$24124, %ebx
	cmpl	%edx, -3804(%ebp)
	je	L2747
L2292:
	movl	-3816(%ebp), %eax
	movswl	23240(%eax,%edx,2), %eax
	cmpl	%edx, -3812(%ebp)
	jne	L2289
	subl	%eax, %ecx
	jmp	L2290
	.p2align 4,,10
	.p2align 3
L2747:
	movl	-3812(%ebp), %edi
	jmp	L2288
L2738:
	movl	%edi, 12(%esp)
	movl	$17, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC234, (%esp)
	call	_fwrite
	jmp	L2469
L2706:
	movl	(%ebx), %esi
	movl	4(%ebx), %edi
	movl	%esi, -3708(%ebp)
	movl	%edi, -3704(%ebp)
	movl	-8(%ebx,%edx), %esi
	movl	-4(%ebx,%edx), %edi
	movl	%esi, -3716(%ebp,%edx)
	movl	%edi, -3712(%ebp,%edx)
	jmp	L2273
L2707:
	movl	(%ebx), %eax
	movl	%eax, -3708(%ebp)
	movl	-4(%ebx,%edx), %eax
	movl	%eax, -3712(%ebp,%edx)
	jmp	L2273
L2466:
	movl	%edi, 12(%esp)
	movl	$18, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC230, (%esp)
	call	_fwrite
	jmp	L2467
L2744:
	movl	-1104(%ebp), %edx
	cmpl	%esi, %edx
	je	L2748
	movlps	-1100(%ebp), %xmm4
	movl	%edx, -2992(%ebp)
	movlps	%xmm4, -2988(%ebp)
L2406:
	movl	%esi, -1104(%ebp)
	leal	-1096(%ebp), %esi
	movl	%esi, %ecx
	jmp	L2405
L2719:
	movl	-2064(%ebp), %edx
	cmpl	-3808(%ebp), %edx
	je	L2749
	movlps	-2060(%ebp), %xmm3
	movl	%edx, -2992(%ebp)
	movlps	%xmm3, -2988(%ebp)
L2372:
	movl	-3808(%ebp), %eax
	movl	%eax, -2064(%ebp)
	leal	-2056(%ebp), %eax
	movl	%eax, -3808(%ebp)
	movl	%eax, %ebx
	jmp	L2371
L2325:
	movl	-2080(%ebp,%eax), %ecx
	movl	%ecx, -16(%edx,%eax)
	movl	-2076(%ebp,%eax), %ecx
	movl	%ecx, -12(%edx,%eax)
	movl	-2072(%ebp,%eax), %ecx
	movl	%ecx, -8(%edx,%eax)
	movl	-2068(%ebp,%eax), %ecx
	movl	%ecx, -4(%edx,%eax)
	subl	$1, %eax
	cmpl	$16, %eax
	jb	L2332
	andl	$-16, %eax
	movl	-3828(%ebp), %ecx
	movl	%eax, -3832(%ebp)
	xorl	%eax, %eax
L2330:
	movl	4(%ecx,%eax), %ebx
	movl	%ebx, -3828(%ebp)
	movl	8(%ecx,%eax), %ebx
	movl	%ebx, -3836(%ebp)
	movl	12(%ecx,%eax), %ebx
	movl	%ebx, -3840(%ebp)
	movl	(%ecx,%eax), %ebx
	movl	%ebx, (%edx,%eax)
	movl	-3828(%ebp), %ebx
	movl	%ebx, 4(%edx,%eax)
	movl	-3836(%ebp), %ebx
	movl	%ebx, 8(%edx,%eax)
	movl	-3840(%ebp), %ebx
	movl	%ebx, 12(%edx,%eax)
	addl	$16, %eax
	cmpl	-3832(%ebp), %eax
	jb	L2330
	jmp	L2332
L2749:
	movl	-2060(%ebp), %edx
L2489:
	testl	%edx, %edx
	je	L2361
	cmpl	$1, %edx
	je	L2750
	cmpl	$16, %edx
	jnb	L2364
	testb	$8, %dl
	jne	L2751
	testb	$4, %dl
	jne	L2752
	testl	%edx, %edx
	je	L2361
	movzbl	-2056(%ebp), %ecx
	movb	%cl, (%eax)
	testb	$2, %dl
	jne	L2676
L2696:
	movl	-2992(%ebp), %eax
	movl	-2060(%ebp), %edx
L2361:
	movb	$0, (%eax,%edx)
	movl	-2064(%ebp), %ebx
	movl	%edx, -2988(%ebp)
	jmp	L2371
L2748:
	movl	-1100(%ebp), %edx
L2493:
	testl	%edx, %edx
	je	L2395
	cmpl	$1, %edx
	je	L2753
	cmpl	$16, %edx
	jnb	L2398
	testb	$8, %dl
	jne	L2754
	testb	$4, %dl
	jne	L2755
	testl	%edx, %edx
	je	L2395
	movzbl	-1096(%ebp), %ecx
	movb	%cl, (%eax)
	testb	$2, %dl
	jne	L2683
L2699:
	movl	-2992(%ebp), %eax
	movl	-1100(%ebp), %edx
L2395:
	movb	$0, (%eax,%edx)
	movl	-1104(%ebp), %ecx
	movl	%edx, -2988(%ebp)
	jmp	L2405
L2743:
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%edx, -3808(%ebp)
	movl	%ecx, %edx
	cmpl	$16, %ecx
	jnb	L2385
	andl	$8, %ecx
	jne	L2756
	testb	$4, %dl
	jne	L2757
	testl	%edx, %edx
	je	L2392
	movzbl	8(%eax), %ecx
	movb	%cl, -1096(%ebp)
	testb	$2, %dl
	je	L2698
	movl	%edx, %ebx
	movl	-3812(%ebp), %edx
	movzwl	-2(%edx,%ebx), %ecx
	movw	%cx, -1098(%ebp,%ebx)
	movl	4(%eax), %edx
	movl	%edx, -3808(%ebp)
	jmp	L2392
	.p2align 4,,10
	.p2align 3
L2742:
	movl	4(%eax), %ecx
	leal	1(%ecx), %esi
	cmpl	$16, %esi
	jnb	L2376
	testl	$8, %esi
	jne	L2758
	testl	$4, %esi
	jne	L2759
	testl	%esi, %esi
	je	L2383
	movzbl	8(%eax), %ecx
	movb	%cl, -1736(%ebp)
	testl	$2, %esi
	je	L2697
	movzwl	-2(%edx,%esi), %ecx
	movw	%cx, -1738(%ebp,%esi)
	movl	4(%eax), %ecx
	jmp	L2383
	.p2align 4,,10
	.p2align 3
L2730:
	movl	-2797(%ebp), %ebx
	movl	-2793(%ebp), %esi
	movl	%ebx, (%edi)
	movl	%esi, 4(%edi)
	movl	-2805(%ebp,%ecx), %ebx
	movl	-2801(%ebp,%ecx), %esi
	movl	%ebx, -8(%edi,%ecx)
	movl	%esi, -4(%edi,%ecx)
	jmp	L2334
L2731:
	movl	-2797(%ebp), %edx
	movl	%edx, (%edi)
	movl	-2801(%ebp,%ecx), %edx
	movl	%edx, -4(%edi,%ecx)
	jmp	L2334
L2385:
	movl	-3812(%ebp), %edx
	movl	-16(%edx,%ecx), %ebx
	movl	%ebx, -1112(%ebp,%ecx)
	movl	-3812(%ebp), %edx
	movl	-12(%edx,%ecx), %ebx
	movl	%ebx, -1108(%ebp,%ecx)
	movl	-3812(%ebp), %edx
	movl	-8(%edx,%ecx), %ebx
	movl	%ebx, -1104(%ebp,%ecx)
	movl	-3812(%ebp), %edx
	movl	-4(%edx,%ecx), %ebx
	movl	%ebx, -1100(%ebp,%ecx)
	cmpl	$16, -3808(%ebp)
	jb	L2698
	movl	-3808(%ebp), %ecx
	movl	%eax, -3820(%ebp)
	movl	-3812(%ebp), %edx
	andl	$-16, %ecx
	movl	%ecx, -3808(%ebp)
	xorl	%ecx, %ecx
L2390:
	movl	8(%edx,%ecx), %eax
	movl	4(%edx,%ecx), %ebx
	movl	%eax, -3812(%ebp)
	movl	12(%edx,%ecx), %eax
	movl	%eax, -3816(%ebp)
	movl	(%edx,%ecx), %eax
	movl	%ebx, 4(%esi,%ecx)
	movl	%eax, (%esi,%ecx)
	movl	-3812(%ebp), %eax
	movl	%eax, 8(%esi,%ecx)
	movl	-3816(%ebp), %eax
	movl	%eax, 12(%esi,%ecx)
	addl	$16, %ecx
	cmpl	-3808(%ebp), %ecx
	jb	L2390
	movl	-3820(%ebp), %eax
	movl	%edx, -3812(%ebp)
	movl	4(%eax), %edx
	movl	%edx, -3808(%ebp)
	jmp	L2392
L2376:
	movl	-16(%edx,%esi), %ebx
	movl	%ebx, -1752(%ebp,%esi)
	movl	-12(%edx,%esi), %ebx
	movl	%ebx, -1748(%ebp,%esi)
	movl	-8(%edx,%esi), %ebx
	movl	%ebx, -1744(%ebp,%esi)
	movl	-4(%edx,%esi), %ebx
	movl	%ebx, -1740(%ebp,%esi)
	cmpl	$16, %ecx
	jb	L2697
	movl	%eax, -3816(%ebp)
	andl	$-16, %ecx
	movl	%ecx, -3808(%ebp)
	xorl	%ecx, %ecx
L2381:
	movl	12(%edx,%ecx), %eax
	movl	4(%edx,%ecx), %esi
	movl	8(%edx,%ecx), %ebx
	movl	%eax, -3812(%ebp)
	movl	(%edx,%ecx), %eax
	movl	%esi, -1732(%ebp,%ecx)
	movl	%eax, -1736(%ebp,%ecx)
	movl	%ebx, -1728(%ebp,%ecx)
	movl	-3812(%ebp), %eax
	movl	%eax, -1724(%ebp,%ecx)
	addl	$16, %ecx
	cmpl	-3808(%ebp), %ecx
	jb	L2381
	movl	-3816(%ebp), %eax
	movl	4(%eax), %ecx
	jmp	L2383
L2733:
	movl	-2064(%ebp), %ebx
	movl	-2060(%ebp), %esi
	movl	%ebx, (%edx)
	movl	%esi, 4(%edx)
	movl	-2072(%ebp,%eax), %ebx
	movl	-2068(%ebp,%eax), %esi
	movl	%ebx, -8(%edx,%eax)
	movl	%esi, -4(%edx,%eax)
	jmp	L2341
L2734:
	movl	-2064(%ebp), %esi
	movl	%esi, (%edx)
	movl	-2068(%ebp,%eax), %esi
	movl	%esi, -4(%edx,%eax)
	jmp	L2341
L2750:
	movzbl	-2056(%ebp), %edx
	movb	%dl, (%eax)
	movl	-2992(%ebp), %eax
	movl	-2060(%ebp), %edx
	jmp	L2361
L2753:
	movzbl	-1096(%ebp), %edx
	movb	%dl, (%eax)
	movl	-2992(%ebp), %eax
	movl	-1100(%ebp), %edx
	jmp	L2395
L2398:
	movl	-1112(%ebp,%edx), %ecx
	movl	%ecx, -16(%eax,%edx)
	movl	-1108(%ebp,%edx), %ecx
	movl	%ecx, -12(%eax,%edx)
	movl	-1104(%ebp,%edx), %ecx
	movl	%ecx, -8(%eax,%edx)
	movl	-1100(%ebp,%edx), %ecx
	movl	%ecx, -4(%eax,%edx)
	subl	$1, %edx
	cmpl	$16, %edx
	jb	L2699
	andl	$-16, %edx
	movl	%edx, -3808(%ebp)
	xorl	%edx, %edx
L2403:
	movl	4(%esi,%edx), %ebx
	movl	%ebx, -3812(%ebp)
	movl	8(%esi,%edx), %ebx
	movl	%ebx, -3816(%ebp)
	movl	(%esi,%edx), %ebx
	movl	12(%esi,%edx), %ecx
	movl	%ebx, (%eax,%edx)
	movl	-3812(%ebp), %ebx
	movl	%ebx, 4(%eax,%edx)
	movl	-3816(%ebp), %ebx
	movl	%ecx, 12(%eax,%edx)
	movl	%ebx, 8(%eax,%edx)
	addl	$16, %edx
	cmpl	-3808(%ebp), %edx
	jb	L2403
	jmp	L2699
L2521:
	addl	$1, %esi
	jmp	L2419
L2416:
	movl	-3824(%ebp), %esi
	testl	%eax, %eax
	jne	L2417
	jmp	L2419
L2364:
	movl	-2072(%ebp,%edx), %ecx
	movl	%ecx, -16(%eax,%edx)
	movl	-2068(%ebp,%edx), %ecx
	movl	%ecx, -12(%eax,%edx)
	movl	-2064(%ebp,%edx), %ecx
	movl	%ecx, -8(%eax,%edx)
	movl	-2060(%ebp,%edx), %ecx
	movl	%ecx, -4(%eax,%edx)
	subl	$1, %edx
	cmpl	$16, %edx
	jb	L2696
	andl	$-16, %edx
	movl	-3808(%ebp), %ecx
	movl	%edx, -3812(%ebp)
	xorl	%edx, %edx
L2369:
	movl	4(%ecx,%edx), %esi
	movl	%esi, -3816(%ebp)
	movl	8(%ecx,%edx), %esi
	movl	%esi, -3820(%ebp)
	movl	(%ecx,%edx), %esi
	movl	12(%ecx,%edx), %ebx
	movl	%esi, (%eax,%edx)
	movl	-3816(%ebp), %esi
	movl	%esi, 4(%eax,%edx)
	movl	-3820(%ebp), %esi
	movl	%ebx, 12(%eax,%edx)
	movl	%esi, 8(%eax,%edx)
	addl	$16, %edx
	cmpl	-3812(%ebp), %edx
	jb	L2369
	jmp	L2696
L2717:
	movl	-2064(%ebp), %ecx
	movl	%ecx, (%edx)
	movl	-2068(%ebp,%eax), %ecx
	movl	%ecx, -4(%edx,%eax)
	jmp	L2332
L2716:
	movl	-2064(%ebp), %ecx
	movl	-2060(%ebp), %ebx
	movl	%ecx, (%edx)
	movl	%ebx, 4(%edx)
	movl	-2072(%ebp,%eax), %ecx
	movl	-2068(%ebp,%eax), %ebx
	movl	%ecx, -8(%edx,%eax)
	movl	%ebx, -4(%edx,%eax)
	jmp	L2332
L2756:
	movl	8(%eax), %ecx
	movl	12(%eax), %ebx
	movl	%ecx, -1096(%ebp)
	movl	-3812(%ebp), %ecx
	movl	%ebx, -1092(%ebp)
	movl	-4(%ecx,%edx), %ebx
	movl	-8(%ecx,%edx), %ecx
	movl	%ebx, -1100(%ebp,%edx)
	movl	%ecx, -1104(%ebp,%edx)
	movl	4(%eax), %edx
	movl	%edx, -3808(%ebp)
	jmp	L2392
L2758:
	movl	8(%eax), %ecx
	movl	12(%eax), %ebx
	movl	%ecx, -1736(%ebp)
	movl	%ebx, -1732(%ebp)
	movl	-8(%edx,%esi), %ecx
	movl	-4(%edx,%esi), %ebx
	movl	%ecx, -1744(%ebp,%esi)
	movl	%ebx, -1740(%ebp,%esi)
	movl	4(%eax), %ecx
	jmp	L2383
L2759:
	movl	8(%eax), %ecx
	movl	%ecx, -1736(%ebp)
	movl	-4(%edx,%esi), %ecx
	movl	%ecx, -1740(%ebp,%esi)
	movl	4(%eax), %ecx
	jmp	L2383
L2718:
	movzwl	-2066(%ebp,%eax), %ecx
	movw	%cx, -2(%edx,%eax)
	jmp	L2332
L2757:
	movl	8(%eax), %ecx
	movl	%edx, %ebx
	movl	-3812(%ebp), %edx
	movl	%ecx, -1096(%ebp)
	movl	-4(%edx,%ebx), %ecx
	movl	%ecx, -1100(%ebp,%ebx)
	movl	4(%eax), %edx
	movl	%edx, -3808(%ebp)
	jmp	L2392
L2755:
	movl	-1096(%ebp), %ecx
	movl	%ecx, (%eax)
	movl	-1100(%ebp,%edx), %ecx
	movl	%ecx, -4(%eax,%edx)
	movl	-2992(%ebp), %eax
	movl	-1100(%ebp), %edx
	jmp	L2395
L2754:
	movl	-1096(%ebp), %ecx
	movl	-1092(%ebp), %ebx
	movl	%ecx, (%eax)
	movl	%ebx, 4(%eax)
	movl	-1104(%ebp,%edx), %ecx
	movl	-1100(%ebp,%edx), %ebx
	movl	%ecx, -8(%eax,%edx)
	movl	%ebx, -4(%eax,%edx)
	movl	-2992(%ebp), %eax
	movl	-1100(%ebp), %edx
	jmp	L2395
L2752:
	movl	-2056(%ebp), %ecx
	movl	%ecx, (%eax)
	movl	-2060(%ebp,%edx), %ecx
	movl	%ecx, -4(%eax,%edx)
	movl	-2992(%ebp), %eax
	movl	-2060(%ebp), %edx
	jmp	L2361
L2751:
	movl	-2056(%ebp), %ecx
	movl	-2052(%ebp), %ebx
	movl	%ecx, (%eax)
	movl	%ebx, 4(%eax)
	movl	-2064(%ebp,%edx), %ecx
	movl	-2060(%ebp,%edx), %ebx
	movl	%ecx, -8(%eax,%edx)
	movl	%ebx, -4(%eax,%edx)
	movl	-2992(%ebp), %eax
	movl	-2060(%ebp), %edx
	jmp	L2361
L2683:
	movzwl	-1098(%ebp,%edx), %ecx
	movw	%cx, -2(%eax,%edx)
	movl	-2992(%ebp), %eax
	movl	-1100(%ebp), %edx
	jmp	L2395
L2676:
	movzwl	-2058(%ebp,%edx), %ecx
	movw	%cx, -2(%eax,%edx)
	movl	-2992(%ebp), %eax
	movl	-2060(%ebp), %edx
	jmp	L2361
L2741:
	leal	-3637(%ebp), %eax
	movl	%eax, -3832(%ebp)
	jmp	L2413
L2713:
	jmp	L2315
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZL20DemoAutoRecordFinishv.lto_priv.0.cold;	.scl	3;	.type	32;	.endef
__ZL20DemoAutoRecordFinishv.lto_priv.0.cold:
LFSB256:
L2315:
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	.cfi_escape 0x10,0x5,0x2,0x75,0
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_offset 7, -8
	movl	$LC189, (%esp)
	call	__ZSt20__throw_length_errorPKc
	.cfi_endproc
LFE256:
	.text
	.section	.text.unlikely,"x"
LCOLDE328:
	.text
LHOTE328:
	.globl	_s_CoolieCharge
	.data
	.align 32
_s_CoolieCharge:
	.word	1420
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieCharge+16
	.word	1421
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieCharge+32
	.word	1422
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieCharge+48
	.word	1423
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieCharge
	.word	1424
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieCharge+80
	.word	1425
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieCharge+96
	.word	1426
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieCharge+112
	.word	1427
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieCharge+64
	.word	1428
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieCharge+144
	.word	1429
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieCharge+160
	.word	1430
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieCharge+176
	.word	1431
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieCharge+128
	.word	1432
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieCharge+208
	.word	1433
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieCharge+224
	.word	1434
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieCharge+240
	.word	1435
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieCharge+192
	.word	1436
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieCharge+272
	.word	1437
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieCharge+288
	.word	1438
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieCharge+304
	.word	1439
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieCharge+256
	.globl	_s_CoolieDead
	.align 4
_s_CoolieDead:
	.word	4268
	.space 2
	.long	30
	.long	__Z13DoActorDebriss
	.long	_s_CoolieDead
	.globl	_s_CooliePain
	.align 32
_s_CooliePain:
	.word	1420
	.space 2
	.long	60
	.long	__Z10CooliePains
	.long	_s_CooliePain
	.word	1420
	.space 2
	.long	60
	.long	__Z10CooliePains
	.long	_s_CooliePain+16
	.word	1420
	.space 2
	.long	60
	.long	__Z10CooliePains
	.long	_s_CooliePain+32
	.word	1420
	.space 2
	.long	60
	.long	__Z10CooliePains
	.long	_s_CooliePain+48
	.word	1420
	.space 2
	.long	60
	.long	__Z10CooliePains
	.long	_s_CooliePain+64
	.globl	_s_CoolieStand
	.align 32
_s_CoolieStand:
	.word	1400
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieStand
	.space 80
	.word	1404
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieStand+96
	.space 80
	.word	1408
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieStand+192
	.space 80
	.word	1412
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieStand+288
	.space 80
	.word	1416
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieStand+384
	.space 80
	.globl	_CoolieCloseRange
	.align 4
_CoolieCloseRange:
	.word	400
	.space 2
	.long	__Z16InitCoolieCharges
	.word	1024
	.space 2
	.long	__Z19InitActorRepositions
	.globl	_CoolieLostTarget
	.align 4
_CoolieLostTarget:
	.word	900
	.space 2
	.long	__Z19InitActorFindPlayers
	.word	1024
	.space 2
	.long	__Z21InitActorWanderArounds
	.globl	_CoolieEvasive
	.align 4
_CoolieEvasive:
	.word	10
	.space 2
	.long	__Z14InitActorEvades
	.word	1024
	.space 2
	.long	0
	.globl	_CoolieSurprised
	.align 4
_CoolieSurprised:
	.word	700
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	703
	.space 2
	.long	__Z21InitActorAmbientNoises
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.globl	_CoolieBroadcast
	.align 4
_CoolieBroadcast:
	.word	16
	.space 2
	.long	__Z21InitActorAmbientNoises
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.globl	_CoolieOffense
	.align 4
_CoolieOffense:
	.word	700
	.space 2
	.long	__Z16InitCoolieCharges
	.word	1015
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	1024
	.space 2
	.long	__Z20InitActorAttackNoises
	.globl	_CoolieBattle
	.align 32
_CoolieBattle:
	.word	700
	.space 2
	.long	__Z16InitCoolieCharges
	.word	990
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	1000
	.space 2
	.long	__Z20InitActorAttackNoises
	.word	1024
	.space 2
	.long	__Z16InitActorRunAways
	.globl	_sg_CoolieDead
	.align 4
_sg_CoolieDead:
	.long	_s_CoolieDead
	.globl	_sg_CoolieDie
	.align 4
_sg_CoolieDie:
	.long	_s_CoolieDie
	.globl	_sg_CooliePain
	.align 4
_sg_CooliePain:
	.long	_s_CooliePain
	.long	_s_CooliePain+16
	.long	_s_CooliePain+32
	.long	_s_CooliePain+48
	.long	_s_CooliePain+64
	.globl	_sg_CoolieStand
	.align 4
_sg_CoolieStand:
	.long	_s_CoolieStand
	.long	_s_CoolieStand+96
	.long	_s_CoolieStand+192
	.long	_s_CoolieStand+288
	.long	_s_CoolieStand+384
	.globl	_s_CoolgAttack
	.align 32
_s_CoolgAttack:
	.word	4297
	.space 2
	.long	24
	.long	__Z9NullCoolgs
	.long	_s_CoolgAttack+16
	.word	4298
	.space 2
	.long	24
	.long	__Z9NullCoolgs
	.long	_s_CoolgAttack+32
	.word	4299
	.space 2
	.long	24
	.long	__Z9NullCoolgs
	.long	_s_CoolgAttack+48
	.word	4299
	.space 2
	.long	65536
	.long	__Z13InitCoolgFires
	.long	_s_CoolgAttack+64
	.word	4299
	.space 2
	.long	12
	.long	__Z9NullCoolgs
	.long	_s_CoolgAttack+80
	.word	4299
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_CoolgAttack+96
	.word	4279
	.space 2
	.long	12
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgAttack+96
	.word	4300
	.space 2
	.long	24
	.long	__Z9NullCoolgs
	.long	_s_CoolgAttack+128
	.word	4301
	.space 2
	.long	24
	.long	__Z9NullCoolgs
	.long	_s_CoolgAttack+144
	.word	4302
	.space 2
	.long	24
	.long	__Z9NullCoolgs
	.long	_s_CoolgAttack+160
	.word	4302
	.space 2
	.long	65536
	.long	__Z13InitCoolgFires
	.long	_s_CoolgAttack+176
	.word	4302
	.space 2
	.long	12
	.long	__Z9NullCoolgs
	.long	_s_CoolgAttack+192
	.word	4302
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_CoolgAttack+208
	.word	4279
	.space 2
	.long	12
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgAttack+208
	.word	4303
	.space 2
	.long	24
	.long	__Z9NullCoolgs
	.long	_s_CoolgAttack+240
	.word	4304
	.space 2
	.long	24
	.long	__Z9NullCoolgs
	.long	_s_CoolgAttack+256
	.word	4305
	.space 2
	.long	24
	.long	__Z9NullCoolgs
	.long	_s_CoolgAttack+272
	.word	4305
	.space 2
	.long	65536
	.long	__Z13InitCoolgFires
	.long	_s_CoolgAttack+288
	.word	4305
	.space 2
	.long	12
	.long	__Z9NullCoolgs
	.long	_s_CoolgAttack+304
	.word	4305
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_CoolgAttack+320
	.word	4279
	.space 2
	.long	12
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgAttack+320
	.word	4289
	.space 2
	.long	24
	.long	__Z9NullCoolgs
	.long	_s_CoolgAttack+352
	.word	4290
	.space 2
	.long	24
	.long	__Z9NullCoolgs
	.long	_s_CoolgAttack+368
	.word	4291
	.space 2
	.long	24
	.long	__Z9NullCoolgs
	.long	_s_CoolgAttack+384
	.word	4291
	.space 2
	.long	65536
	.long	__Z13InitCoolgFires
	.long	_s_CoolgAttack+400
	.word	4291
	.space 2
	.long	12
	.long	__Z9NullCoolgs
	.long	_s_CoolgAttack+416
	.word	4291
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_CoolgAttack+432
	.word	4279
	.space 2
	.long	12
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgAttack+432
	.word	4293
	.space 2
	.long	24
	.long	__Z9NullCoolgs
	.long	_s_CoolgAttack+464
	.word	4294
	.space 2
	.long	24
	.long	__Z9NullCoolgs
	.long	_s_CoolgAttack+480
	.word	4295
	.space 2
	.long	24
	.long	__Z9NullCoolgs
	.long	_s_CoolgAttack+496
	.word	4295
	.space 2
	.long	65536
	.long	__Z13InitCoolgFires
	.long	_s_CoolgAttack+512
	.word	4295
	.space 2
	.long	12
	.long	__Z9NullCoolgs
	.long	_s_CoolgAttack+528
	.word	4295
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_CoolgAttack+544
	.word	4279
	.space 2
	.long	12
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgAttack+544
	.globl	_s_CoolgDead
	.align 32
_s_CoolgDead:
	.word	4312
	.space 2
	.long	65536
	.long	__Z15QueueFloorBloods
	.space 4
	.word	4312
	.space 2
	.long	20
	.long	__Z13DoActorDebriss
	.space 4
	.globl	_s_CoolgPain
	.align 32
_s_CoolgPain:
	.word	4306
	.space 2
	.long	15
	.long	__Z11DoCoolgPains
	.long	_s_CoolgPain+16
	.word	4306
	.space 2
	.long	15
	.long	__Z11DoCoolgPains
	.long	_s_CoolgPain+16
	.word	4281
	.space 2
	.long	15
	.long	__Z11DoCoolgPains
	.long	_s_CoolgPain+48
	.word	4281
	.space 2
	.long	15
	.long	__Z11DoCoolgPains
	.long	_s_CoolgPain+48
	.word	4285
	.space 2
	.long	15
	.long	__Z11DoCoolgPains
	.long	_s_CoolgPain+80
	.word	4285
	.space 2
	.long	15
	.long	__Z11DoCoolgPains
	.long	_s_CoolgPain+80
	.word	4289
	.space 2
	.long	15
	.long	__Z11DoCoolgPains
	.long	_s_CoolgPain+112
	.word	4289
	.space 2
	.long	15
	.long	__Z11DoCoolgPains
	.long	_s_CoolgPain+112
	.word	4293
	.space 2
	.long	15
	.long	__Z11DoCoolgPains
	.long	_s_CoolgPain+144
	.word	4293
	.space 2
	.long	15
	.long	__Z11DoCoolgPains
	.long	_s_CoolgPain+144
	.globl	_s_CoolgStand
	.align 32
_s_CoolgStand:
	.word	4277
	.space 2
	.long	40
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgStand
	.word	4281
	.space 2
	.long	40
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgStand+16
	.word	4285
	.space 2
	.long	40
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgStand+32
	.word	4289
	.space 2
	.long	40
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgStand+48
	.word	4293
	.space 2
	.long	40
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgStand+64
	.globl	_CoolgTouchTarget
	.align 4
_CoolgTouchTarget:
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.globl	_CoolgCloseRange
	.align 4
_CoolgCloseRange:
	.word	800
	.space 2
	.long	__Z15InitActorAttacks
	.word	1024
	.space 2
	.long	__Z19InitActorRepositions
	.globl	_CoolgLostTarget
	.align 4
_CoolgLostTarget:
	.word	900
	.space 2
	.long	__Z19InitActorFindPlayers
	.word	1024
	.space 2
	.long	__Z21InitActorWanderArounds
	.globl	_CoolgEvasive
	.align 4
_CoolgEvasive:
	.word	20
	.space 2
	.long	__Z15InitCoolgCircles
	.word	1024
	.space 2
	.long	__Z16InitActorRunAways
	.globl	_CoolgSurprised
	.align 4
_CoolgSurprised:
	.word	100
	.space 2
	.long	__Z15InitCoolgCircles
	.word	701
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.globl	_CoolgBroadcast
	.align 4
_CoolgBroadcast:
	.word	1
	.space 2
	.long	__Z21InitActorAmbientNoises
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.globl	_CoolgOffense
	.align 4
_CoolgOffense:
	.word	449
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.globl	_CoolgBattle
	.align 4
_CoolgBattle:
	.word	50
	.space 2
	.long	__Z15InitCoolgCircles
	.word	450
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.globl	_sg_CoolgAttack
	.align 4
_sg_CoolgAttack:
	.long	_s_CoolgAttack
	.long	_s_CoolgAttack+112
	.long	_s_CoolgAttack+224
	.long	_s_CoolgAttack+336
	.long	_s_CoolgAttack+448
	.globl	_sg_CoolgDead
	.align 4
_sg_CoolgDead:
	.long	_s_CoolgDead
	.globl	_sg_CoolgDie
	.align 4
_sg_CoolgDie:
	.long	_s_CoolgDie
	.globl	_sg_CoolgPain
	.align 4
_sg_CoolgPain:
	.long	_s_CoolgPain
	.long	_s_CoolgPain+32
	.long	_s_CoolgPain+64
	.long	_s_CoolgPain+96
	.long	_s_CoolgPain+128
	.globl	_sg_CoolgStand
	.align 4
_sg_CoolgStand:
	.long	_s_CoolgStand
	.long	_s_CoolgStand+16
	.long	_s_CoolgStand+32
	.long	_s_CoolgStand+48
	.long	_s_CoolgStand+64
	.globl	__mi_page_empty
	.section .rdata,"dr"
	.align 64
__mi_page_empty:
	.space 48
	.globl	__mi_heap_empty
	.align 64
__mi_heap_empty:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 60
	.long	0
	.byte	1
	.space 3
	.long	0
	.long	74
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	0
	.long	0
	.long	4
	.long	0
	.long	0
	.long	4
	.long	0
	.long	0
	.long	8
	.long	0
	.long	0
	.long	12
	.long	0
	.long	0
	.long	16
	.long	0
	.long	0
	.long	20
	.long	0
	.long	0
	.long	24
	.long	0
	.long	0
	.long	28
	.long	0
	.long	0
	.long	32
	.long	0
	.long	0
	.long	40
	.long	0
	.long	0
	.long	48
	.long	0
	.long	0
	.long	56
	.long	0
	.long	0
	.long	64
	.long	0
	.long	0
	.long	80
	.long	0
	.long	0
	.long	96
	.long	0
	.long	0
	.long	112
	.long	0
	.long	0
	.long	128
	.long	0
	.long	0
	.long	160
	.long	0
	.long	0
	.long	192
	.long	0
	.long	0
	.long	224
	.long	0
	.long	0
	.long	256
	.long	0
	.long	0
	.long	320
	.long	0
	.long	0
	.long	384
	.long	0
	.long	0
	.long	448
	.long	0
	.long	0
	.long	512
	.long	0
	.long	0
	.long	640
	.long	0
	.long	0
	.long	768
	.long	0
	.long	0
	.long	896
	.long	0
	.long	0
	.long	1024
	.long	0
	.long	0
	.long	1280
	.long	0
	.long	0
	.long	1536
	.long	0
	.long	0
	.long	1792
	.long	0
	.long	0
	.long	2048
	.long	0
	.long	0
	.long	2560
	.long	0
	.long	0
	.long	3072
	.long	0
	.long	0
	.long	3584
	.long	0
	.long	0
	.long	4096
	.long	0
	.long	0
	.long	5120
	.long	0
	.long	0
	.long	6144
	.long	0
	.long	0
	.long	7168
	.long	0
	.long	0
	.long	8192
	.long	0
	.long	0
	.long	10240
	.long	0
	.long	0
	.long	12288
	.long	0
	.long	0
	.long	14336
	.long	0
	.long	0
	.long	16384
	.long	0
	.long	0
	.long	20480
	.long	0
	.long	0
	.long	24576
	.long	0
	.long	0
	.long	28672
	.long	0
	.long	0
	.long	32768
	.long	0
	.long	0
	.long	40960
	.long	0
	.long	0
	.long	49152
	.long	0
	.long	0
	.long	57344
	.long	0
	.long	0
	.long	65536
	.long	0
	.long	0
	.long	81920
	.long	0
	.long	0
	.long	98304
	.long	0
	.long	0
	.long	114688
	.long	0
	.long	0
	.long	131072
	.long	0
	.long	0
	.long	163840
	.long	0
	.long	0
	.long	196608
	.long	0
	.long	0
	.long	229376
	.long	0
	.long	0
	.long	262144
	.long	0
	.long	0
	.long	327680
	.long	0
	.long	0
	.long	393216
	.long	0
	.long	0
	.long	458752
	.long	0
	.long	0
	.long	524288
	.long	0
	.long	0
	.long	655360
	.long	0
	.long	0
	.long	786432
	.long	0
	.long	0
	.long	917504
	.long	0
	.long	0
	.long	1048576
	.long	0
	.long	0
	.long	1310720
	.long	0
	.long	0
	.long	1572864
	.long	0
	.long	0
	.long	1835008
	.long	0
	.long	0
	.long	2097152
	.long	0
	.long	0
	.long	1048580
	.long	0
	.long	0
	.long	1048584
	.globl	_ps_PanelCaltrops
	.data
	.align 4
_ps_PanelCaltrops:
	.word	2409
	.space 2
	.long	10
	.long	__Z19PanelInvTestSuicideP18PANEL_SPRITEstruct
	.long	_ps_PanelCaltrops
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_PanelFlashBomb
	.align 4
_ps_PanelFlashBomb:
	.word	2408
	.space 2
	.long	10
	.long	__Z19PanelInvTestSuicideP18PANEL_SPRITEstruct
	.long	_ps_PanelFlashBomb
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_PanelChemBomb
	.align 4
_ps_PanelChemBomb:
	.word	2407
	.space 2
	.long	10
	.long	__Z19PanelInvTestSuicideP18PANEL_SPRITEstruct
	.long	_ps_PanelChemBomb
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_PanelNightVision
	.align 4
_ps_PanelNightVision:
	.word	2398
	.space 2
	.long	10
	.long	__Z19PanelInvTestSuicideP18PANEL_SPRITEstruct
	.long	_ps_PanelNightVision
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_PanelCloak
	.align 4
_ps_PanelCloak:
	.word	2397
	.space 2
	.long	10
	.long	__Z19PanelInvTestSuicideP18PANEL_SPRITEstruct
	.long	_ps_PanelCloak
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_PanelRepairKit
	.align 4
_ps_PanelRepairKit:
	.word	2399
	.space 2
	.long	10
	.long	__Z19PanelInvTestSuicideP18PANEL_SPRITEstruct
	.long	_ps_PanelRepairKit
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_PanelMedkit
	.align 4
_ps_PanelMedkit:
	.word	2396
	.space 2
	.long	10
	.long	__Z19PanelInvTestSuicideP18PANEL_SPRITEstruct
	.long	_ps_PanelMedkit
	.long	0
	.byte	0
	.byte	0
	.space 2
.lcomm __ZZL20DemoAutoRandomLettervE8sequence,4,4
.lcomm __ZZL20DemoAutoRandomLettervE5state,4,4
	.globl	_FlagCaptureLimit
	.bss
	.align 4
_FlagCaptureLimit:
	.space 4
	.globl	__mi_cpu_has_fsrm
	.align 64
__mi_cpu_has_fsrm:
	.space 1
	.globl	_totalsynctics
	.align 4
_totalsynctics:
	.space 4
	.globl	_ready2send
_ready2send:
	.space 1
.lcomm __ZL22DemoAutoPlayerCaptured,8,4
.lcomm __ZL19DemoAutoPlayerKills,16,4
.lcomm __ZL27DemoAutoScoreboardAvailable,1,1
.lcomm __ZL23DemoAutoScoreboardCount,2,2
	.globl	__ZL12DemoShotBase.lto_priv.0
	.align 32
__ZL12DemoShotBase.lto_priv.0:
	.space 101
	.globl	__ZL14DemoShotFolder.lto_priv.0
	.align 32
__ZL14DemoShotFolder.lto_priv.0:
	.space 256
.lcomm __ZL18DemoOutChatLastTic,4,4
	.globl	__ZL11DemoOutChat.lto_priv.0
	.align 4
__ZL11DemoOutChat.lto_priv.0:
	.space 12
	.globl	__ZL17DemoAutoChatLines.lto_priv.0
	.align 4
__ZL17DemoAutoChatLines.lto_priv.0:
	.space 12
.lcomm __ZL16DemoAutoBotCount,1,1
.lcomm __ZL12DemoAutoBots,1,1
	.globl	__ZL15DemoAutoMapName.lto_priv.0
	.align 32
__ZL15DemoAutoMapName.lto_priv.0:
	.space 160
.lcomm __ZL13DemoAutoLevel,2,2
	.globl	_UserMapName
	.align 32
_UserMapName:
	.space 80
	.globl	__ZL19DemoAutoPlayerCount.lto_priv.0
	.align 2
__ZL19DemoAutoPlayerCount.lto_priv.0:
	.space 2
	.globl	_PedanticMode
_PedanticMode:
	.space 1
	.globl	_DemoRecCnt
	.align 4
_DemoRecCnt:
	.space 4
	.globl	_DemoMode
_DemoMode:
	.space 1
	.globl	_DemoFileIn
	.data
	.align 4
_DemoFileIn:
	.long	-1
	.globl	_DemoSyncTest
	.bss
_DemoSyncTest:
	.space 1
	.globl	__ZL20DemoAutoPlayerColors.lto_priv.0
	.align 4
__ZL20DemoAutoPlayerColors.lto_priv.0:
	.space 8
.lcomm __ZL19DemoAutoPlayerNames,256,32
	.globl	_DemoMDRFeatures
	.align 4
_DemoMDRFeatures:
	.space 4
	.globl	_DemoDebugBufferMax
	.data
	.align 2
_DemoDebugBufferMax:
	.word	1
	.globl	_DemoDebugMode
	.bss
_DemoDebugMode:
	.space 1
	.globl	_DebugActor
_DebugActor:
	.space 1
	.globl	_LevelSong
	.align 4
_LevelSong:
	.space 16
	.globl	_FakeMultiNumPlayers
_FakeMultiNumPlayers:
	.space 1
	.globl	_DemoMDRActive
_DemoMDRActive:
	.space 1
	.globl	__ZL15DemoOutExtended.lto_priv.0
__ZL15DemoOutExtended.lto_priv.0:
	.space 1
	.globl	__ZL17DemoAutoRecording.lto_priv.0
__ZL17DemoAutoRecording.lto_priv.0:
	.space 1
	.globl	_DemoFileOut
	.align 4
_DemoFileOut:
	.space 4
	.globl	_DemoBuffer
	.align 32
_DemoBuffer:
	.space 49152
	.globl	_DemoSyncFile
	.align 4
_DemoSyncFile:
	.space 4
	.globl	_DemoSyncRecord
_DemoSyncRecord:
	.space 1
	.globl	_DemoRecording
_DemoRecording:
	.space 1
	.globl	_DemoFileName
	.data
	.align 32
_DemoFileName:
	.ascii "demo.dmo\0"
	.space 157
.lcomm __ZZ16DemoSyncFileNamevE9file_name,32,32
	.globl	_sg_CoolieCharge
	.align 4
_sg_CoolieCharge:
	.long	_s_CoolieCharge
	.long	_s_CoolieCharge+64
	.long	_s_CoolieCharge+128
	.long	_s_CoolieCharge+192
	.long	_s_CoolieCharge+256
	.globl	_CooliePersonality
	.align 32
_CooliePersonality:
	.long	_CoolieBattle
	.long	_CoolieOffense
	.long	_CoolieBroadcast
	.long	_CoolieSurprised
	.long	_CoolieEvasive
	.long	_CoolieLostTarget
	.long	_CoolieCloseRange
	.long	_CoolieCloseRange
	.globl	_CoolieActionSet
	.align 32
_CoolieActionSet:
	.long	_sg_CoolieStand
	.long	_sg_CoolieRun
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	_sg_CooliePain
	.long	_sg_CoolieDie
	.long	0
	.long	_sg_CoolieDead
	.long	0
	.long	0
	.long	_sg_CoolieCharge
	.space 4
	.word	1024
	.space 2
	.long	_sg_CoolieCharge
	.space 20
	.word	1024
	.space 10
	.long	0
	.space 4
	.long	0
	.long	0
	.globl	_sg_CoolieRun
	.align 4
_sg_CoolieRun:
	.long	_s_CoolieRun
	.long	_s_CoolieRun+64
	.long	_s_CoolieRun+128
	.long	_s_CoolieRun+192
	.long	_s_CoolieRun+256
	.globl	_s_CoolieDie
	.align 32
_s_CoolieDie:
	.word	4260
	.space 2
	.long	30
	.long	__Z10NullCoolies
	.space 4
	.word	4260
	.space 2
	.long	65536
	.long	__Z14SpawnCoolieExps
	.space 4
	.word	4261
	.space 2
	.long	30
	.long	__Z10NullCoolies
	.space 4
	.word	4262
	.space 2
	.long	30
	.long	__Z10NullCoolies
	.space 4
	.word	4263
	.space 2
	.long	30
	.long	__Z10NullCoolies
	.space 4
	.word	4264
	.space 2
	.long	30
	.long	__Z10NullCoolies
	.space 4
	.word	4265
	.space 2
	.long	30
	.long	__Z10NullCoolies
	.space 4
	.word	4266
	.space 2
	.long	30
	.long	__Z10NullCoolies
	.space 4
	.word	4267
	.space 2
	.long	30
	.long	__Z17DoCoolieWaitBirths
	.space 4
	.word	4267
	.space 2
	.long	150
	.long	__Z13DoActorDebriss
	.space 4
	.word	4267
	.space 2
	.long	65536
	.long	__Z10SpawnCoolgs
	.space 4
	.word	1440
	.space 2
	.long	65536
	.long	__Z15QueueFloorBloods
	.space 4
	.word	1440
	.space 2
	.long	30
	.long	__Z13DoActorDebriss
	.space 4
	.globl	_CoolieAttrib
	.align 32
_CoolieAttrib:
	.word	60
	.word	80
	.word	100
	.word	200
	.ascii "\3\0\376\375"
	.byte	3
	.space 3
	.long	78
	.long	77
	.long	77
	.long	79
	.long	0
	.long	80
	.long	75
	.long	0
	.long	0
	.long	0
	.space 4
	.globl	_s_CoolieRun
	.align 32
_s_CoolieRun:
	.word	1400
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieRun+16
	.word	1401
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieRun+32
	.word	1402
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieRun+48
	.word	1403
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieRun
	.word	1404
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieRun+80
	.word	1405
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieRun+96
	.word	1406
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieRun+112
	.word	1407
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieRun+64
	.word	1408
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieRun+144
	.word	1409
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieRun+160
	.word	1410
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieRun+176
	.word	1411
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieRun+128
	.word	1412
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieRun+208
	.word	1413
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieRun+224
	.word	1414
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieRun+240
	.word	1415
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieRun+192
	.word	1416
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieRun+272
	.word	1417
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieRun+288
	.word	1418
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieRun+304
	.word	1419
	.space 2
	.long	12
	.long	__Z12DoCoolieMoves
	.long	_s_CoolieRun+256
	.globl	_nextspritesect
	.bss
	.align 32
_nextspritesect:
	.space 32768
	.globl	_headspritesect
	.align 32
_headspritesect:
	.space 8194
	.globl	_TotalKillable
	.align 2
_TotalKillable:
	.space 2
	.globl	_s_CoolgBirth
	.data
	.align 32
_s_CoolgBirth:
	.word	4268
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.space 4
	.word	4269
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.space 4
	.word	4270
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.space 4
	.word	4271
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.space 4
	.word	4272
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.space 4
	.word	4273
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.space 4
	.word	4274
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.space 4
	.word	4275
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.space 4
	.word	4276
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.space 4
	.word	4276
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.space 4
	.word	4276
	.space 2
	.long	65536
	.long	__Z12DoCoolgBirths
	.space 4
	.globl	_CoolgPersonality
	.align 32
_CoolgPersonality:
	.long	_CoolgBattle
	.long	_CoolgOffense
	.long	_CoolgBroadcast
	.long	_CoolgSurprised
	.long	_CoolgEvasive
	.long	_CoolgLostTarget
	.long	_CoolgCloseRange
	.long	_CoolgTouchTarget
	.globl	_CoolgActionSet
	.align 32
_CoolgActionSet:
	.long	_sg_CoolgStand
	.long	_sg_CoolgRun
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	_sg_CoolgPain
	.long	_sg_CoolgDie
	.long	0
	.long	_sg_CoolgDead
	.long	0
	.long	0
	.long	_sg_CoolgAttack
	.space 4
	.word	1024
	.space 2
	.long	_sg_CoolgAttack
	.space 20
	.word	1024
	.space 10
	.long	0
	.long	0
	.long	0
	.long	0
	.globl	_sg_CoolgRun
	.align 4
_sg_CoolgRun:
	.long	_s_CoolgRun
	.long	_s_CoolgRun+64
	.long	_s_CoolgRun+128
	.long	_s_CoolgRun+192
	.long	_s_CoolgRun+256
	.globl	_s_CoolgDie
	.align 32
_s_CoolgDie:
	.word	4307
	.space 2
	.long	20
	.long	__Z12DoCoolgDeaths
	.space 4
	.word	4308
	.space 2
	.long	20
	.long	__Z12DoCoolgDeaths
	.space 4
	.word	4309
	.space 2
	.long	20
	.long	__Z12DoCoolgDeaths
	.space 4
	.word	4310
	.space 2
	.long	20
	.long	__Z12DoCoolgDeaths
	.space 4
	.word	4311
	.space 2
	.long	20
	.long	__Z12DoCoolgDeaths
	.space 4
	.word	4312
	.space 2
	.long	20
	.long	__Z12DoCoolgDeaths
	.space 4
	.globl	_CoolgAttrib
	.align 32
_CoolgAttrib:
	.word	60
	.word	80
	.word	150
	.word	190
	.ascii "\3\0\376\375"
	.byte	3
	.space 3
	.long	83
	.long	81
	.long	0
	.long	84
	.long	87
	.long	80
	.long	82
	.long	85
	.long	86
	.long	0
	.space 4
	.globl	_s_CoolgRun
	.align 32
_s_CoolgRun:
	.word	4277
	.space 2
	.long	40
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgRun+16
	.word	4278
	.space 2
	.long	40
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgRun+32
	.word	4279
	.space 2
	.long	40
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgRun+48
	.word	4280
	.space 2
	.long	40
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgRun
	.word	4281
	.space 2
	.long	40
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgRun+80
	.word	4282
	.space 2
	.long	40
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgRun+96
	.word	4283
	.space 2
	.long	40
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgRun+112
	.word	4284
	.space 2
	.long	40
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgRun+64
	.word	4285
	.space 2
	.long	40
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgRun+144
	.word	4286
	.space 2
	.long	40
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgRun+160
	.word	4287
	.space 2
	.long	40
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgRun+176
	.word	4288
	.space 2
	.long	40
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgRun+128
	.word	4289
	.space 2
	.long	40
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgRun+208
	.word	4290
	.space 2
	.long	40
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgRun+224
	.word	4291
	.space 2
	.long	40
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgRun+240
	.word	4292
	.space 2
	.long	40
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgRun+192
	.word	4293
	.space 2
	.long	40
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgRun+272
	.word	4294
	.space 2
	.long	40
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgRun+288
	.word	4295
	.space 2
	.long	40
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgRun+304
	.word	4296
	.space 2
	.long	40
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgRun+256
	.globl	_Pachinko_Win_Cheat
	.bss
_Pachinko_Win_Cheat:
	.space 1
.lcomm _add_history_pos,2,2
	.globl	_numcommands
	.align 2
_numcommands:
	.space 2
	.globl	_commandlist
	.align 32
_commandlist:
	.space 800
.lcomm _command_history,5120,32
.lcomm _numhistory,2,2
.lcomm _curr_history,2,2
	.globl	_con_quote
	.align 32
_con_quote:
	.space 3328
.lcomm _con_message,80,32
	.globl	__mi_heap_default
	.section	.tls$,"dw"
	.align 4
__mi_heap_default:
	.long	__mi_heap_empty
	.globl	_tlsCacheBuckets
	.align 4
_tlsCacheBuckets:
	.space 512
	.globl	_DrawScreen
	.bss
_DrawScreen:
	.space 1
	.section .rdata,"dr"
	.align 4
__ZZL17CONFIG_WriteCvarsvE8filename:
	.ascii "kuro_cvars.cfg\0"
	.globl	_CSWTCH.196.lto_priv.0
LC329:
	.ascii "analog_turning\0"
LC330:
	.ascii "analog_strafing\0"
LC331:
	.ascii "analog_lookingupanddown\0"
LC332:
	.ascii "analog_moving\0"
	.align 4
_CSWTCH.196.lto_priv.0:
	.long	LC329
	.long	LC330
	.long	LC331
	.long	0
	.long	0
	.long	LC332
	.globl	_JoystickAnalogSaturate
	.bss
	.align 32
_JoystickAnalogSaturate:
	.space 36
	.globl	_JoystickAnalogDead
	.align 32
_JoystickAnalogDead:
	.space 36
	.globl	_JoystickButtonsClicked
	.align 32
_JoystickButtonsClicked:
	.space 144
	.globl	_CONTROL_MouseAxesSensitivity
	.data
	.align 4
_CONTROL_MouseAxesSensitivity:
	.long	1103626240
	.long	1103626240
	.globl	_JoystickAnalogAxes
	.bss
	.align 32
_JoystickAnalogAxes:
	.space 36
	.section .rdata,"dr"
	.align 32
__ZZL34CONFIG_SetGameControllerAxesModernvE10analogAxes:
	.long	0
	.long	1
	.long	1
	.long	5
	.long	2
	.long	0
	.long	3
	.long	2
	.globl	_JoystickAnalogScale
	.bss
	.align 32
_JoystickAnalogScale:
	.space 36
	.globl	_JoystickButtons
	.align 32
_JoystickButtons:
	.space 144
	.globl	__ZL7joyAxes.lto_priv.0
	.align 32
__ZL7joyAxes.lto_priv.0:
	.space 288
	.globl	_JoystickDigitalAxes
	.align 32
_JoystickDigitalAxes:
	.space 72
	.section .rdata,"dr"
	.align 4
__ZZ25SetGameControllerDefaultsvE11digitalAxes:
	.long	4
	.long	1
	.long	9
	.long	5
	.long	1
	.long	5
	.align 4
__ZZ25SetGameControllerDefaultsvE11buttonsDuke:
	.long	2
	.long	27
	.long	13
	.long	28
	.long	14
	.long	29
	.align 32
__ZZ25SetGameControllerDefaultsvE7buttons:
	.long	0
	.long	6
	.long	4
	.long	38
	.long	7
	.long	7
	.long	8
	.long	10
	.long	11
	.long	48
	.long	12
	.long	47
	.long	9
	.long	10
	.long	10
	.long	51
	.globl	_CONTROL_MouseSensitivity
	.data
	.align 4
_CONTROL_MouseSensitivity:
	.long	1103626240
	.globl	_MouseAnalogScale
	.bss
	.align 8
_MouseAnalogScale:
	.space 8
	.section .rdata,"dr"
	.align 32
_gs_defaults:
	.long	32768
	.long	128
	.long	192
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.ascii "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.ascii "Track??\0"
	.space 248
	.byte	0
	.byte	1
	.long	90
	.byte	0
	.space 3
	.globl	__ZL18defaultgrpfilename.lto_priv.0
LC333:
	.ascii "SW.GRP\0"
	.align 4
__ZL18defaultgrpfilename.lto_priv.0:
	.long	LC333
.lcomm _GamePlays,2,2
	.globl	_AutoAimCommandLineOverride
	.data
	.align 4
_AutoAimCommandLineOverride:
	.long	-1
	.align 4
__ZL18AutoAimConfigValue:
	.long	-1
	.globl	_WangBangMacro
	.bss
	.align 32
_WangBangMacro:
	.space 640
	.globl	_osd
	.align 4
_osd:
	.space 4
	.globl	__ZL11scriptfiles.lto_priv.0
	.align 32
__ZL11scriptfiles.lto_priv.0:
	.space 80
	.globl	_CommPlayerName
	.align 32
_CommPlayerName:
	.space 32
	.globl	_RTSName
	.align 4
_RTSName:
	.space 15
	.globl	_g_addonNum
	.data
	.align 4
_g_addonNum:
	.long	-1
	.globl	_g_grpNamePtr
	.bss
	.align 4
_g_grpNamePtr:
	.space 4
	.globl	_MixRate
	.data
	.align 4
_MixRate:
	.long	44100
	.align 4
_NumBits:
	.long	16
	.globl	_NumChannels
	.align 4
_NumChannels:
	.long	2
	.globl	_NumVoices
	.align 4
_NumVoices:
	.long	32
	.globl	_MusicDevice
	.align 4
_MusicDevice:
	.long	-2
.lcomm _FXDevice,4,4
	.globl	_MusicToggle
	.align 4
_MusicToggle:
	.long	1
	.globl	_FXToggle
	.align 4
_FXToggle:
	.long	1
	.globl	_glusetexcompr
	.align 4
_glusetexcompr:
	.long	1
	.globl	_glanisotropy
	.align 4
_glanisotropy:
	.long	16
	.globl	_gltexfiltermode
	.bss
	.align 4
_gltexfiltermode:
	.space 4
	.globl	_maxrefreshfreq
	.align 4
_maxrefreshfreq:
	.space 4
	.globl	_ud_setup
	.data
	.align 32
_ud_setup:
	.long	0
	.long	1
	.long	1
	.long	640
	.long	480
	.long	32
	.long	1
	.long	0
	.globl	__ZL12scripthandle.lto_priv.0
	.align 4
__ZL12scripthandle.lto_priv.0:
	.long	-1
	.globl	_setupfilename
	.align 32
_setupfilename:
	.ascii "kuro.cfg\0"
	.space 247
	.globl	_ShowNukeEnabled
	.align 4
_ShowNukeEnabled:
	.long	1
	.globl	_ShowHeatEnabled
	.align 4
_ShowHeatEnabled:
	.long	1
	.globl	_DemoTimeEnabled
	.align 4
_DemoTimeEnabled:
	.long	1
	.globl	_MinHUDArmorEnabled
	.align 4
_MinHUDArmorEnabled:
	.long	1
	.globl	_ScoreShotEnabled
	.align 4
_ScoreShotEnabled:
	.long	1
	.globl	_ZeroKillDemosEnabled
	.align 4
_ZeroKillDemosEnabled:
	.long	1
	.globl	_MapCopyEnabled
	.align 4
_MapCopyEnabled:
	.long	1
	.globl	__ZL10joyButtons.lto_priv.0
	.bss
	.align 32
__ZL10joyButtons.lto_priv.0:
	.space 768
	.globl	__ZL12mouseButtons.lto_priv.0
	.align 32
__ZL12mouseButtons.lto_priv.0:
	.space 240
	.section .rdata,"dr"
LC334:
	.ascii "Open\0"
	.data
	.align 4
__ZL20mouseclickeddefaults:
	.long	LC26
	.long	LC334
	.long	LC26
	.long	LC26
	.long	LC26
	.align 4
__ZL27mouseclickeddefaults_modern:
	.long	LC26
	.long	LC26
	.long	LC26
	.long	LC26
	.long	LC26
	.long	LC26
	.section .rdata,"dr"
LC335:
	.ascii "Fire\0"
LC336:
	.ascii "Strafe\0"
LC337:
	.ascii "Move_Forward\0"
	.data
	.align 4
__ZL13mousedefaults:
	.long	LC335
	.long	LC336
	.long	LC337
	.long	LC26
	.long	LC26
	.section .rdata,"dr"
LC338:
	.ascii "Alt_Weapon_Mode\0"
LC339:
	.ascii "Next_Weapon\0"
LC340:
	.ascii "Previous_Weapon\0"
	.data
	.align 4
__ZL20mousedefaults_modern:
	.long	LC335
	.long	LC334
	.long	LC338
	.long	LC26
	.long	LC339
	.long	LC340
	.globl	_MouseButtonsClicked
	.bss
	.align 32
_MouseButtonsClicked:
	.space 40
	.globl	_MouseButtons
	.align 32
_MouseButtons:
	.space 40
	.globl	_gamefunctions
	.section .rdata,"dr"
LC341:
	.ascii "Move_Backward\0"
LC342:
	.ascii "Turn_Left\0"
LC343:
	.ascii "Turn_Right\0"
LC344:
	.ascii "Run\0"
LC345:
	.ascii "Jump\0"
LC346:
	.ascii "Crouch\0"
LC347:
	.ascii "Look_Up\0"
LC348:
	.ascii "Look_Down\0"
LC349:
	.ascii "Strafe_Left\0"
LC350:
	.ascii "Strafe_Right\0"
LC351:
	.ascii "Aim_Up\0"
LC352:
	.ascii "Aim_Down\0"
LC353:
	.ascii "Weapon_1\0"
LC354:
	.ascii "Weapon_2\0"
LC355:
	.ascii "Weapon_3\0"
LC356:
	.ascii "Weapon_4\0"
LC357:
	.ascii "Weapon_5\0"
LC358:
	.ascii "Weapon_6\0"
LC359:
	.ascii "Weapon_7\0"
LC360:
	.ascii "Weapon_8\0"
LC361:
	.ascii "Weapon_9\0"
LC362:
	.ascii "Weapon_10\0"
LC363:
	.ascii "Inventory\0"
LC364:
	.ascii "Inventory_Left\0"
LC365:
	.ascii "Inventory_Right\0"
LC366:
	.ascii "Med_Kit\0"
LC367:
	.ascii "Smoke_Bomb\0"
LC368:
	.ascii "Night_Vision\0"
LC369:
	.ascii "Gas_Bomb\0"
LC370:
	.ascii "Flash_Bomb\0"
LC371:
	.ascii "Caltrops\0"
LC372:
	.ascii "TurnAround\0"
LC373:
	.ascii "SendMessage\0"
LC374:
	.ascii "Map\0"
LC375:
	.ascii "Shrink_Screen\0"
LC376:
	.ascii "Enlarge_Screen\0"
LC377:
	.ascii "Center_View\0"
LC378:
	.ascii "Holster_Weapon\0"
LC379:
	.ascii "Map_Follow_Mode\0"
LC380:
	.ascii "See_Co_Op_View\0"
LC381:
	.ascii "Mouse_Aiming\0"
LC382:
	.ascii "Toggle_Crosshair\0"
LC383:
	.ascii "Show_Menu\0"
LC384:
	.ascii "Show_Console\0"
LC385:
	.ascii "Quick_Save\0"
LC386:
	.ascii "Quick_Load\0"
	.align 32
_gamefunctions:
	.long	LC337
	.long	LC341
	.long	LC342
	.long	LC343
	.long	LC336
	.long	LC335
	.long	LC334
	.long	LC344
	.long	LC82
	.long	LC345
	.long	LC346
	.long	LC347
	.long	LC348
	.long	LC349
	.long	LC350
	.long	LC351
	.long	LC352
	.long	LC353
	.long	LC354
	.long	LC355
	.long	LC356
	.long	LC357
	.long	LC358
	.long	LC359
	.long	LC360
	.long	LC361
	.long	LC362
	.long	LC363
	.long	LC364
	.long	LC365
	.long	LC366
	.long	LC367
	.long	LC368
	.long	LC369
	.long	LC370
	.long	LC371
	.long	LC372
	.long	LC373
	.long	LC374
	.long	LC375
	.long	LC376
	.long	LC377
	.long	LC378
	.long	LC379
	.long	LC380
	.long	LC381
	.long	LC382
	.long	LC339
	.long	LC340
	.long	LC383
	.long	LC384
	.long	LC338
	.long	LC385
	.long	LC386
LC387:
	.ascii "Escape\0"
LC388:
	.ascii "1\0"
LC389:
	.ascii "2\0"
LC390:
	.ascii "3\0"
LC391:
	.ascii "4\0"
LC392:
	.ascii "5\0"
LC393:
	.ascii "6\0"
LC394:
	.ascii "7\0"
LC395:
	.ascii "8\0"
LC396:
	.ascii "9\0"
LC397:
	.ascii "0\0"
LC398:
	.ascii "-\0"
LC399:
	.ascii "=\0"
LC400:
	.ascii "BakSpc\0"
LC401:
	.ascii "Tab\0"
LC402:
	.ascii "Q\0"
LC403:
	.ascii "W\0"
LC404:
	.ascii "E\0"
LC405:
	.ascii "R\0"
LC406:
	.ascii "T\0"
LC407:
	.ascii "Y\0"
LC408:
	.ascii "U\0"
LC409:
	.ascii "I\0"
LC410:
	.ascii "O\0"
LC411:
	.ascii "P\0"
LC412:
	.ascii "[\0"
LC413:
	.ascii "]\0"
LC414:
	.ascii "Enter\0"
LC415:
	.ascii "LCtrl\0"
LC416:
	.ascii "A\0"
LC417:
	.ascii "S\0"
LC418:
	.ascii "D\0"
LC419:
	.ascii "F\0"
LC420:
	.ascii "G\0"
LC421:
	.ascii "H\0"
LC422:
	.ascii "J\0"
LC423:
	.ascii "K\0"
LC424:
	.ascii "L\0"
LC425:
	.ascii ";\0"
LC426:
	.ascii "'\0"
LC427:
	.ascii "`\0"
LC428:
	.ascii "LShift\0"
LC429:
	.ascii "Backslash\0"
LC430:
	.ascii "Z\0"
LC431:
	.ascii "X\0"
LC432:
	.ascii "C\0"
LC433:
	.ascii "V\0"
LC434:
	.ascii "B\0"
LC435:
	.ascii "N\0"
LC436:
	.ascii "M\0"
LC437:
	.ascii ",\0"
LC438:
	.ascii ".\0"
LC439:
	.ascii "/\0"
LC440:
	.ascii "RShift\0"
LC441:
	.ascii "Kpad*\0"
LC442:
	.ascii "LAlt\0"
LC443:
	.ascii "Space\0"
LC444:
	.ascii "CapLck\0"
LC445:
	.ascii "F1\0"
LC446:
	.ascii "F2\0"
LC447:
	.ascii "F3\0"
LC448:
	.ascii "F4\0"
LC449:
	.ascii "F5\0"
LC450:
	.ascii "F6\0"
LC451:
	.ascii "F7\0"
LC452:
	.ascii "F8\0"
LC453:
	.ascii "F9\0"
LC454:
	.ascii "F10\0"
LC455:
	.ascii "NumLck\0"
LC456:
	.ascii "ScrLck\0"
LC457:
	.ascii "Kpad7\0"
LC458:
	.ascii "Kpad8\0"
LC459:
	.ascii "Kpad9\0"
LC460:
	.ascii "Kpad-\0"
LC461:
	.ascii "Kpad4\0"
LC462:
	.ascii "Kpad5\0"
LC463:
	.ascii "Kpad6\0"
LC464:
	.ascii "Kpad+\0"
LC465:
	.ascii "Kpad1\0"
LC466:
	.ascii "Kpad2\0"
LC467:
	.ascii "Kpad3\0"
LC468:
	.ascii "Kpad0\0"
LC469:
	.ascii "Kpad.\0"
LC470:
	.ascii "LessThan\0"
LC471:
	.ascii "F11\0"
LC472:
	.ascii "F12\0"
LC473:
	.ascii "KpdEnt\0"
LC474:
	.ascii "RCtrl\0"
LC475:
	.ascii "Kpad/\0"
LC476:
	.ascii "RAlt\0"
LC477:
	.ascii "PrtScn\0"
LC478:
	.ascii "Pause\0"
LC479:
	.ascii "Home\0"
LC480:
	.ascii "Up\0"
LC481:
	.ascii "PgUp\0"
LC482:
	.ascii "Left\0"
LC483:
	.ascii "Right\0"
LC484:
	.ascii "End\0"
LC485:
	.ascii "Down\0"
LC486:
	.ascii "PgDn\0"
LC487:
	.ascii "Insert\0"
LC488:
	.ascii "Delete\0"
	.align 32
_sctokeylut:
	.long	LC387
	.byte	1
	.space 3
	.long	LC388
	.byte	2
	.space 3
	.long	LC389
	.byte	3
	.space 3
	.long	LC390
	.byte	4
	.space 3
	.long	LC391
	.byte	5
	.space 3
	.long	LC392
	.byte	6
	.space 3
	.long	LC393
	.byte	7
	.space 3
	.long	LC394
	.byte	8
	.space 3
	.long	LC395
	.byte	9
	.space 3
	.long	LC396
	.byte	10
	.space 3
	.long	LC397
	.byte	11
	.space 3
	.long	LC398
	.byte	12
	.space 3
	.long	LC399
	.byte	13
	.space 3
	.long	LC400
	.byte	14
	.space 3
	.long	LC401
	.byte	15
	.space 3
	.long	LC402
	.byte	16
	.space 3
	.long	LC403
	.byte	17
	.space 3
	.long	LC404
	.byte	18
	.space 3
	.long	LC405
	.byte	19
	.space 3
	.long	LC406
	.byte	20
	.space 3
	.long	LC407
	.byte	21
	.space 3
	.long	LC408
	.byte	22
	.space 3
	.long	LC409
	.byte	23
	.space 3
	.long	LC410
	.byte	24
	.space 3
	.long	LC411
	.byte	25
	.space 3
	.long	LC412
	.byte	26
	.space 3
	.long	LC413
	.byte	27
	.space 3
	.long	LC414
	.byte	28
	.space 3
	.long	LC415
	.byte	29
	.space 3
	.long	LC416
	.byte	30
	.space 3
	.long	LC417
	.byte	31
	.space 3
	.long	LC418
	.byte	32
	.space 3
	.long	LC419
	.byte	33
	.space 3
	.long	LC420
	.byte	34
	.space 3
	.long	LC421
	.byte	35
	.space 3
	.long	LC422
	.byte	36
	.space 3
	.long	LC423
	.byte	37
	.space 3
	.long	LC424
	.byte	38
	.space 3
	.long	LC425
	.byte	39
	.space 3
	.long	LC426
	.byte	40
	.space 3
	.long	LC427
	.byte	41
	.space 3
	.long	LC428
	.byte	42
	.space 3
	.long	LC429
	.byte	43
	.space 3
	.long	LC430
	.byte	44
	.space 3
	.long	LC431
	.byte	45
	.space 3
	.long	LC432
	.byte	46
	.space 3
	.long	LC433
	.byte	47
	.space 3
	.long	LC434
	.byte	48
	.space 3
	.long	LC435
	.byte	49
	.space 3
	.long	LC436
	.byte	50
	.space 3
	.long	LC437
	.byte	51
	.space 3
	.long	LC438
	.byte	52
	.space 3
	.long	LC439
	.byte	53
	.space 3
	.long	LC440
	.byte	54
	.space 3
	.long	LC441
	.byte	55
	.space 3
	.long	LC442
	.byte	56
	.space 3
	.long	LC443
	.byte	57
	.space 3
	.long	LC444
	.byte	58
	.space 3
	.long	LC445
	.byte	59
	.space 3
	.long	LC446
	.byte	60
	.space 3
	.long	LC447
	.byte	61
	.space 3
	.long	LC448
	.byte	62
	.space 3
	.long	LC449
	.byte	63
	.space 3
	.long	LC450
	.byte	64
	.space 3
	.long	LC451
	.byte	65
	.space 3
	.long	LC452
	.byte	66
	.space 3
	.long	LC453
	.byte	67
	.space 3
	.long	LC454
	.byte	68
	.space 3
	.long	LC455
	.byte	69
	.space 3
	.long	LC456
	.byte	70
	.space 3
	.long	LC457
	.byte	71
	.space 3
	.long	LC458
	.byte	72
	.space 3
	.long	LC459
	.byte	73
	.space 3
	.long	LC460
	.byte	74
	.space 3
	.long	LC461
	.byte	75
	.space 3
	.long	LC462
	.byte	76
	.space 3
	.long	LC463
	.byte	77
	.space 3
	.long	LC464
	.byte	78
	.space 3
	.long	LC465
	.byte	79
	.space 3
	.long	LC466
	.byte	80
	.space 3
	.long	LC467
	.byte	81
	.space 3
	.long	LC468
	.byte	82
	.space 3
	.long	LC469
	.byte	83
	.space 3
	.long	LC470
	.byte	86
	.space 3
	.long	LC471
	.byte	87
	.space 3
	.long	LC472
	.byte	88
	.space 3
	.long	LC473
	.byte	-100
	.space 3
	.long	LC474
	.byte	-99
	.space 3
	.long	LC475
	.byte	-75
	.space 3
	.long	LC476
	.byte	-72
	.space 3
	.long	LC477
	.byte	-73
	.space 3
	.long	LC478
	.byte	-59
	.space 3
	.long	LC479
	.byte	-57
	.space 3
	.long	LC480
	.byte	-56
	.space 3
	.long	LC481
	.byte	-55
	.space 3
	.long	LC482
	.byte	-53
	.space 3
	.long	LC483
	.byte	-51
	.space 3
	.long	LC484
	.byte	-49
	.space 3
	.long	LC485
	.byte	-48
	.space 3
	.long	LC486
	.byte	-47
	.space 3
	.long	LC487
	.byte	-46
	.space 3
	.long	LC488
	.byte	-45
	.space 3
	.globl	__ZL18CONTROL_KeyMapping.lto_priv.0
	.bss
	.align 32
__ZL18CONTROL_KeyMapping.lto_priv.0:
	.space 128
	.section .rdata,"dr"
LC489:
	.ascii "KPad6\0"
LC490:
	.ascii "KPad7\0"
LC491:
	.ascii "KPad5\0"
	.data
	.align 32
__ZL11keydefaults:
	.long	LC337
	.long	LC480
	.long	LC458
	.long	LC341
	.long	LC485
	.long	LC466
	.long	LC342
	.long	LC482
	.long	LC461
	.long	LC343
	.long	LC483
	.long	LC489
	.long	LC336
	.long	LC442
	.long	LC476
	.long	LC335
	.long	LC415
	.long	LC474
	.long	LC334
	.long	LC443
	.long	LC26
	.long	LC344
	.long	LC428
	.long	LC440
	.long	LC82
	.long	LC444
	.long	LC26
	.long	LC345
	.long	LC416
	.long	LC439
	.long	LC346
	.long	LC430
	.long	LC26
	.long	LC347
	.long	LC481
	.long	LC459
	.long	LC348
	.long	LC486
	.long	LC467
	.long	LC349
	.long	LC437
	.long	LC26
	.long	LC350
	.long	LC438
	.long	LC26
	.long	LC351
	.long	LC479
	.long	LC490
	.long	LC352
	.long	LC484
	.long	LC465
	.long	LC353
	.long	LC388
	.long	LC26
	.long	LC354
	.long	LC389
	.long	LC26
	.long	LC355
	.long	LC390
	.long	LC26
	.long	LC356
	.long	LC391
	.long	LC26
	.long	LC357
	.long	LC392
	.long	LC26
	.long	LC358
	.long	LC393
	.long	LC26
	.long	LC359
	.long	LC394
	.long	LC26
	.long	LC360
	.long	LC395
	.long	LC26
	.long	LC361
	.long	LC396
	.long	LC26
	.long	LC362
	.long	LC397
	.long	LC26
	.long	LC363
	.long	LC414
	.long	LC473
	.long	LC364
	.long	LC412
	.long	LC26
	.long	LC365
	.long	LC413
	.long	LC26
	.long	LC366
	.long	LC436
	.long	LC26
	.long	LC367
	.long	LC417
	.long	LC26
	.long	LC368
	.long	LC435
	.long	LC26
	.long	LC369
	.long	LC420
	.long	LC26
	.long	LC370
	.long	LC419
	.long	LC26
	.long	LC371
	.long	LC432
	.long	LC26
	.long	LC372
	.long	LC400
	.long	LC26
	.long	LC373
	.long	LC406
	.long	LC26
	.long	LC374
	.long	LC401
	.long	LC26
	.long	LC375
	.long	LC398
	.long	LC460
	.long	LC376
	.long	LC399
	.long	LC464
	.long	LC377
	.long	LC491
	.long	LC26
	.long	LC378
	.long	LC456
	.long	LC26
	.long	LC379
	.long	LC419
	.long	LC26
	.long	LC380
	.long	LC423
	.long	LC26
	.long	LC381
	.long	LC408
	.long	LC26
	.long	LC382
	.long	LC409
	.long	LC26
	.long	LC339
	.long	LC426
	.long	LC26
	.long	LC340
	.long	LC425
	.long	LC26
	.long	LC383
	.long	LC26
	.long	LC26
	.long	LC384
	.long	LC455
	.long	LC26
	.long	LC338
	.long	LC26
	.long	LC26
	.long	LC385
	.long	LC450
	.long	LC26
	.long	LC386
	.long	LC453
	.long	LC26
	.align 32
__ZL18keydefaults_modern:
	.long	LC337
	.long	LC403
	.long	LC480
	.long	LC341
	.long	LC417
	.long	LC485
	.long	LC342
	.long	LC482
	.long	LC26
	.long	LC343
	.long	LC483
	.long	LC26
	.long	LC336
	.long	LC442
	.long	LC476
	.long	LC335
	.long	LC474
	.long	LC26
	.long	LC334
	.long	LC404
	.long	LC26
	.long	LC344
	.long	LC428
	.long	LC440
	.long	LC82
	.long	LC444
	.long	LC26
	.long	LC345
	.long	LC443
	.long	LC439
	.long	LC346
	.long	LC415
	.long	LC26
	.long	LC347
	.long	LC481
	.long	LC26
	.long	LC348
	.long	LC486
	.long	LC26
	.long	LC349
	.long	LC416
	.long	LC437
	.long	LC350
	.long	LC418
	.long	LC438
	.long	LC351
	.long	LC479
	.long	LC26
	.long	LC352
	.long	LC484
	.long	LC26
	.long	LC353
	.long	LC388
	.long	LC26
	.long	LC354
	.long	LC389
	.long	LC26
	.long	LC355
	.long	LC390
	.long	LC26
	.long	LC356
	.long	LC391
	.long	LC26
	.long	LC357
	.long	LC392
	.long	LC26
	.long	LC358
	.long	LC393
	.long	LC26
	.long	LC359
	.long	LC394
	.long	LC26
	.long	LC360
	.long	LC395
	.long	LC26
	.long	LC361
	.long	LC396
	.long	LC26
	.long	LC362
	.long	LC397
	.long	LC26
	.long	LC363
	.long	LC414
	.long	LC26
	.long	LC364
	.long	LC412
	.long	LC26
	.long	LC365
	.long	LC413
	.long	LC26
	.long	LC366
	.long	LC436
	.long	LC26
	.long	LC367
	.long	LC434
	.long	LC26
	.long	LC368
	.long	LC435
	.long	LC26
	.long	LC369
	.long	LC420
	.long	LC26
	.long	LC370
	.long	LC419
	.long	LC26
	.long	LC371
	.long	LC432
	.long	LC26
	.long	LC372
	.long	LC400
	.long	LC26
	.long	LC373
	.long	LC406
	.long	LC26
	.long	LC374
	.long	LC401
	.long	LC26
	.long	LC375
	.long	LC398
	.long	LC26
	.long	LC376
	.long	LC399
	.long	LC26
	.long	LC377
	.long	LC491
	.long	LC26
	.long	LC378
	.long	LC456
	.long	LC26
	.long	LC379
	.long	LC419
	.long	LC26
	.long	LC380
	.long	LC423
	.long	LC26
	.long	LC381
	.long	LC26
	.long	LC26
	.long	LC382
	.long	LC26
	.long	LC26
	.long	LC339
	.long	LC426
	.long	LC26
	.long	LC340
	.long	LC425
	.long	LC26
	.long	LC383
	.long	LC26
	.long	LC26
	.long	LC384
	.long	LC427
	.long	LC26
	.long	LC338
	.long	LC26
	.long	LC26
	.long	LC385
	.long	LC450
	.long	LC26
	.long	LC386
	.long	LC453
	.long	LC26
	.globl	_KeyboardKeys
	.bss
	.align 32
_KeyboardKeys:
	.space 108
	.globl	_Skill
	.data
	.align 2
_Skill:
	.word	2
	.globl	_CommEnabled
	.bss
_CommEnabled:
	.space 1
	.globl	_CheatInputMode
_CheatInputMode:
	.space 1
	.section .rdata,"dr"
LC492:
	.ascii "swchan\0"
LC493:
	.ascii "swgimme\0"
LC494:
	.ascii "swtrek##\0"
LC495:
	.ascii "swgreed\0"
LC496:
	.ascii "swghost\0"
LC497:
	.ascii "swstart\0"
LC498:
	.ascii "swres\0"
LC499:
	.ascii "swloc\0"
LC500:
	.ascii "swmap\0"
LC501:
	.ascii "swsave\0"
LC502:
	.ascii "swroom\0"
	.align 32
_ci:
	.long	LC492
	.long	__Z8GodCheatP12PLAYERstructPc
	.byte	0
	.space 3
	.long	LC493
	.long	__Z9ItemCheatP12PLAYERstructPc
	.byte	0
	.space 3
	.long	LC494
	.long	__Z9WarpCheatP12PLAYERstructPc
	.byte	0
	.space 3
	.long	LC495
	.long	__Z16EveryCheatToggleP12PLAYERstructPc
	.byte	0
	.space 3
	.long	LC496
	.long	__Z9ClipCheatP12PLAYERstructPc
	.byte	0
	.space 3
	.long	LC497
	.long	__Z12RestartCheatP12PLAYERstructPc
	.byte	0
	.space 3
	.long	LC498
	.long	__Z10ResCheatOnP12PLAYERstructPc
	.byte	0
	.space 3
	.long	LC499
	.long	__Z8LocCheatP12PLAYERstructPc
	.byte	0
	.space 3
	.long	LC500
	.long	__Z8MapCheatP12PLAYERstructPc
	.byte	0
	.space 3
	.long	LC501
	.long	__Z9SaveCheatP12PLAYERstructPc
	.byte	1
	.space 3
	.long	LC502
	.long	__Z9RoomCheatP12PLAYERstructPc
	.byte	2
	.space 3
	.globl	_MessageInputString
	.bss
	.align 32
_MessageInputString:
	.space 256
.lcomm _CheatInputString,256,32
	.globl	_Numsprites
	.align 4
_Numsprites:
	.space 4
	.globl	_numyaxbunches
	.align 4
_numyaxbunches:
	.space 4
	.globl	_yax_bunchnum
	.align 32
_yax_bunchnum:
	.space 16384
	.globl	_editstatus
	.align 2
_editstatus:
	.space 2
	.globl	_mapversion
	.data
	.align 4
_mapversion:
	.long	7
.lcomm _EveryCheat,1,1
	.globl	_InventoryData
	.section .rdata,"dr"
LC503:
	.ascii "PORTABLE MEDKIT\0"
LC504:
	.ascii "REPAIR KIT\0"
LC505:
	.ascii "SMOKE BOMB\0"
LC506:
	.ascii "NIGHT VISION\0"
LC507:
	.ascii "GAS BOMB\0"
LC508:
	.ascii "FLASH BOMB\0"
LC509:
	.ascii "CALTROPS\0"
	.data
	.align 32
_InventoryData:
	.long	LC503
	.long	__Z18UseInventoryMedkitP12PLAYERstruct
	.long	0
	.long	_ps_PanelMedkit
	.word	0
	.word	1
	.long	65536
	.word	0
	.space 2
	.long	LC504
	.long	0
	.long	0
	.long	_ps_PanelRepairKit
	.word	100
	.word	1
	.long	65536
	.word	1
	.space 2
	.long	LC505
	.long	__Z17UseInventoryCloakP12PLAYERstruct
	.long	__Z18StopInventoryCloakP12PLAYERstructs
	.long	_ps_PanelCloak
	.word	4
	.word	1
	.long	65536
	.word	2
	.space 2
	.long	LC506
	.long	__Z23UseInventoryNightVisionP12PLAYERstruct
	.long	__Z24StopInventoryNightVisionP12PLAYERstructs
	.long	_ps_PanelNightVision
	.word	3
	.word	1
	.long	65536
	.word	2
	.space 2
	.long	LC507
	.long	__Z20UseInventoryChemBombP12PLAYERstruct
	.long	0
	.long	_ps_PanelChemBomb
	.word	0
	.word	1
	.long	65536
	.word	4
	.space 2
	.long	LC508
	.long	__Z21UseInventoryFlashBombP12PLAYERstruct
	.long	0
	.long	_ps_PanelFlashBomb
	.word	0
	.word	2
	.long	65536
	.word	4
	.space 2
	.long	LC509
	.long	__Z20UseInventoryCaltropsP12PLAYERstruct
	.long	0
	.long	_ps_PanelCaltrops
	.word	0
	.word	3
	.long	65536
	.word	4
	.space 2
	.long	0
	.long	0
	.long	0
	.long	0
	.word	0
	.word	0
	.long	0
	.word	0
	.space 2
	.globl	_Level
	.bss
	.align 2
_Level:
	.space 2
	.globl	_GodMode
	.align 4
_GodMode:
	.space 4
	.globl	_DamageData
	.section .rdata,"dr"
LC510:
	.ascii "Shurikens\0"
LC511:
	.ascii "Riot Gun\0"
LC512:
	.ascii "Shotshells\0"
LC513:
	.ascii "UZI Submachine Gun\0"
LC514:
	.ascii "UZI Clip\0"
LC515:
	.ascii "Missile Launcher\0"
LC516:
	.ascii "Missiles\0"
LC517:
	.ascii "Grenade Launcher\0"
LC518:
	.ascii "Grenade Shells\0"
LC519:
	.ascii "Sticky Bombs\0"
LC520:
	.ascii "Rail Gun\0"
LC521:
	.ascii "Rail Gun Rods\0"
LC522:
	.ascii "Guardian Head\0"
LC523:
	.ascii "Firebursts\0"
LC524:
	.ascii "Ripper Heart\0"
LC525:
	.ascii "Deathcoils\0"
LC526:
	.ascii "Nuclear Warhead\0"
LC527:
	.ascii "Heat Seeker Card\0"
	.data
	.align 32
_DamageData:
	.long	__Z14InitWeaponFistP12PLAYERstruct
	.word	10
	.word	40
	.long	0
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	__Z14InitWeaponStarP12PLAYERstruct
	.word	5
	.word	10
	.long	0
	.word	99
	.word	3
	.word	-1
	.space 2
	.long	LC510
	.long	0
	.word	9
	.word	-1
	.long	__Z17InitWeaponShotgunP12PLAYERstruct
	.word	4
	.word	4
	.long	0
	.word	52
	.word	1
	.word	-1
	.space 2
	.long	LC511
	.long	LC512
	.word	8
	.word	24
	.long	__Z13InitWeaponUziP12PLAYERstruct
	.word	5
	.word	7
	.long	0
	.word	200
	.word	1
	.word	-1
	.space 2
	.long	LC513
	.long	LC514
	.word	50
	.word	50
	.long	__Z15InitWeaponMicroP12PLAYERstruct
	.word	15
	.word	30
	.long	0
	.word	50
	.word	1
	.word	-1
	.space 2
	.long	LC515
	.long	LC516
	.word	5
	.word	5
	.long	__Z17InitWeaponGrenadeP12PLAYERstruct
	.word	15
	.word	30
	.long	0
	.word	50
	.word	1
	.word	-1
	.space 2
	.long	LC517
	.long	LC518
	.word	6
	.word	8
	.long	__Z14InitWeaponMineP12PLAYERstruct
	.word	5
	.word	10
	.long	0
	.word	20
	.word	1
	.word	-1
	.space 2
	.long	LC519
	.long	0
	.word	5
	.word	-1
	.long	__Z14InitWeaponRailP12PLAYERstruct
	.word	40
	.word	60
	.long	0
	.word	20
	.word	1
	.word	-1
	.space 2
	.long	LC520
	.long	LC521
	.word	10
	.word	10
	.long	__Z17InitWeaponHotheadP12PLAYERstruct
	.word	10
	.word	25
	.long	0
	.word	80
	.word	1
	.word	-1
	.space 2
	.long	LC522
	.long	LC523
	.word	30
	.word	60
	.long	__Z15InitWeaponHeartP12PLAYERstruct
	.word	75
	.word	100
	.long	0
	.word	5
	.word	1
	.word	-1
	.space 2
	.long	LC524
	.long	LC525
	.word	1
	.word	6
	.long	__Z17InitWeaponHotheadP12PLAYERstruct
	.word	50
	.word	100
	.long	0
	.word	100
	.word	40
	.word	8
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	__Z17InitWeaponHotheadP12PLAYERstruct
	.word	15
	.word	50
	.long	0
	.word	100
	.word	20
	.word	8
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	__Z15InitWeaponMicroP12PLAYERstruct
	.word	30
	.word	60
	.long	0
	.word	100
	.word	1
	.word	4
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	__Z15InitWeaponSwordP12PLAYERstruct
	.word	50
	.word	80
	.long	0
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	90
	.word	150
	.long	0
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	35
	.word	65
	.long	0
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	7
	.word	15
	.long	0
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	2
	.word	6
	.long	0
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	50
	.word	100
	.long	3200
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	80
	.word	160
	.long	3200
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	80
	.word	200
	.long	4500
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	-1
	.word	-1
	.long	1000
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	60
	.word	90
	.long	3200
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	40
	.word	75
	.long	4500
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	10
	.word	25
	.long	1000
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	70
	.word	140
	.long	6500
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	85
	.word	115
	.long	6500
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	15
	.word	30
	.long	0
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	50
	.word	100
	.long	4500
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	0
	.word	800
	.long	30000
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	LC526
	.long	LC527
	.word	1
	.word	5
	.long	0
	.word	2
	.word	6
	.long	5000
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	100
	.word	150
	.long	16384
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	2
	.word	6
	.long	300
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	10
	.word	30
	.long	0
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	10
	.word	20
	.long	0
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	10
	.word	20
	.long	0
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	15
	.word	30
	.long	0
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	20
	.word	40
	.long	0
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	5
	.word	20
	.long	0
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	75
	.word	75
	.long	0
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	100
	.word	100
	.long	0
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	25
	.word	25
	.long	0
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	5
	.word	10
	.long	0
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	10
	.word	40
	.long	3400
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	15
	.word	20
	.long	0
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	5
	.word	15
	.long	0
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	10
	.word	20
	.long	0
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.long	0
	.word	10
	.word	20
	.long	0
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.long	0
	.long	0
	.word	-1
	.word	-1
	.globl	_LocationInfo
	.bss
_LocationInfo:
	.space 1
	.globl	_automapping
	.align 4
_automapping:
	.space 4
	.globl	_FAF_DebugView
_FAF_DebugView:
	.space 1
	.globl	_ExitLevel
_ExitLevel:
	.space 1
	.globl	_ResCheat
_ResCheat:
	.space 1
	.data
	.align 32
_Player_SCTable:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	14
	.word	16
	.word	18
	.word	20
	.word	22
	.word	23
	.word	24
	.word	25
	.word	26
	.word	27
	.word	28
	.word	30
	.word	31
	.word	32
	.word	33
	.word	34
	.word	35
	.word	40
	.word	145
	.word	291
	.word	445
	.word	362
	.word	269
	.word	158
	.word	476
	.word	47
	.word	359
	.word	48
	.word	50
	.word	196
	.word	52
	.word	53
	.word	54
	.word	55
	.word	56
	.word	57
	.word	58
	.word	73
	.word	74
	.word	410
	.word	484
	.word	442
	.word	417
	.word	418
	.word	238
	.word	239
	.word	240
	.word	241
	.word	242
	.word	243
	.word	244
	.word	181
	.word	182
	.word	183
	.word	184
	.word	187
	.word	216
	.word	272
	.word	273
	.word	274
	.word	275
	.word	486
	.word	276
	.word	277
	.word	278
	.word	279
	.word	477
	.word	280
	.word	281
	.word	282
	.word	283
	.word	284
	.word	288
	.word	289
	.word	290
	.word	450
	.word	295
	.word	312
	.word	324
	.word	325
	.word	209
	.word	395
	.word	396
	.word	411
	.word	175
	.word	435
	.word	436
	.word	311
	.word	221
	.word	220
	.word	227
	.word	246
	.word	247
	.word	248
	.word	249
	.word	250
	.word	251
	.word	252
	.word	253
	.word	254
	.word	255
	.word	256
	.word	257
	.word	258
	.word	259
	.word	260
	.word	261
	.word	262
	.word	263
	.word	264
	.word	266
	.word	267
	.word	438
	.word	439
	.word	440
	.word	441
	.word	326
	.word	330
	.word	331
	.word	332
	.word	333
	.word	334
	.word	335
	.word	336
	.word	337
	.word	338
	.word	339
	.word	340
	.word	341
	.word	342
	.word	343
	.word	344
	.word	345
	.word	346
	.word	347
	.word	348
	.word	376
	.word	377
	.word	378
	.word	379
	.word	380
	.word	381
	.word	382
	.word	383
	.word	384
	.word	385
	.word	386
	.word	387
	.word	370
	.word	443
	.globl	_ambarray
	.section .rdata,"dr"
	.align 32
_ambarray:
	.word	0
	.word	158
	.long	8
	.long	0
	.word	1
	.word	161
	.long	8
	.long	0
	.word	2
	.word	173
	.long	0
	.long	0
	.word	3
	.word	174
	.long	32
	.long	120
	.word	4
	.word	175
	.long	40
	.long	240
	.word	5
	.word	176
	.long	0
	.long	0
	.word	6
	.word	177
	.long	0
	.long	0
	.word	7
	.word	178
	.long	0
	.long	0
	.word	8
	.word	179
	.long	0
	.long	0
	.word	9
	.word	185
	.long	0
	.long	0
	.word	10
	.word	186
	.long	0
	.long	0
	.word	11
	.word	190
	.long	32
	.long	1440
	.word	12
	.word	191
	.long	0
	.long	0
	.word	13
	.word	193
	.long	0
	.long	0
	.word	14
	.word	194
	.long	0
	.long	0
	.word	15
	.word	195
	.long	0
	.long	0
	.word	16
	.word	197
	.long	0
	.long	0
	.word	17
	.word	198
	.long	0
	.long	0
	.word	18
	.word	200
	.long	0
	.long	0
	.word	19
	.word	206
	.long	40
	.long	720
	.word	20
	.word	208
	.long	8
	.long	0
	.word	21
	.word	211
	.long	0
	.long	0
	.word	22
	.word	212
	.long	0
	.long	0
	.word	23
	.word	213
	.long	0
	.long	0
	.word	24
	.word	214
	.long	0
	.long	0
	.word	25
	.word	215
	.long	0
	.long	0
	.word	26
	.word	216
	.long	0
	.long	0
	.word	27
	.word	217
	.long	0
	.long	0
	.word	28
	.word	218
	.long	0
	.long	0
	.word	29
	.word	219
	.long	40
	.long	240
	.word	30
	.word	220
	.long	32
	.long	1440
	.word	31
	.word	221
	.long	0
	.long	0
	.word	32
	.word	0
	.long	0
	.long	0
	.word	33
	.word	0
	.long	0
	.long	0
	.word	34
	.word	0
	.long	0
	.long	0
	.word	35
	.word	0
	.long	0
	.long	0
	.word	36
	.word	0
	.long	0
	.long	0
	.word	37
	.word	0
	.long	0
	.long	0
	.word	38
	.word	0
	.long	0
	.long	0
	.word	39
	.word	0
	.long	0
	.long	0
	.word	40
	.word	156
	.long	0
	.long	0
	.word	41
	.word	157
	.long	0
	.long	0
	.word	42
	.word	172
	.long	0
	.long	0
	.word	43
	.word	189
	.long	0
	.long	0
	.word	44
	.word	192
	.long	0
	.long	0
	.word	45
	.word	222
	.long	0
	.long	0
	.word	46
	.word	223
	.long	0
	.long	0
	.word	47
	.word	224
	.long	0
	.long	0
	.word	48
	.word	225
	.long	0
	.long	0
	.word	49
	.word	226
	.long	0
	.long	0
	.word	50
	.word	229
	.long	0
	.long	0
	.word	51
	.word	230
	.long	0
	.long	0
	.word	52
	.word	231
	.long	0
	.long	0
	.word	53
	.word	232
	.long	0
	.long	0
	.word	54
	.word	234
	.long	0
	.long	0
	.word	55
	.word	235
	.long	0
	.long	0
	.word	56
	.word	296
	.long	32
	.long	540
	.word	57
	.word	297
	.long	32
	.long	720
	.word	58
	.word	298
	.long	32
	.long	720
	.word	59
	.word	299
	.long	32
	.long	720
	.word	60
	.word	300
	.long	32
	.long	720
	.word	61
	.word	301
	.long	32
	.long	720
	.word	62
	.word	302
	.long	32
	.long	360
	.word	63
	.word	303
	.long	32
	.long	720
	.word	64
	.word	304
	.long	32
	.long	1440
	.word	65
	.word	305
	.long	32
	.long	1440
	.word	66
	.word	306
	.long	32
	.long	540
	.word	67
	.word	307
	.long	32
	.long	720
	.word	68
	.word	308
	.long	32
	.long	60
	.word	69
	.word	309
	.long	32
	.long	360
	.word	70
	.word	310
	.long	32
	.long	1440
	.word	71
	.word	397
	.long	32
	.long	120
	.word	72
	.word	398
	.long	32
	.long	120
	.word	73
	.word	409
	.long	0
	.long	0
	.word	74
	.word	413
	.long	32
	.long	1440
	.word	75
	.word	415
	.long	32
	.long	1440
	.word	76
	.word	432
	.long	0
	.long	0
	.word	77
	.word	475
	.long	0
	.long	0
	.word	78
	.word	479
	.long	0
	.long	0
	.word	79
	.word	491
	.long	32
	.long	120
	.word	80
	.word	509
	.long	32
	.long	120
	.word	81
	.word	512
	.long	32
	.long	360
	.word	82
	.word	513
	.long	32
	.long	1440
	.data
	.align 4
_Coolie_SCTable:
	.word	75
	.word	76
	.word	77
	.word	78
	.word	79
	.align 4
_Ninja_SCTable:
	.word	88
	.word	89
	.word	90
	.word	91
	.word	92
	.word	93
	.word	94
	.word	412
	.word	319
	.word	430
	.align 4
_Guardian_SCTable:
	.word	101
	.word	102
	.word	103
	.word	104
	.word	105
	.word	106
	.word	107
	.align 4
_Ghost_SCTable:
	.word	80
	.word	81
	.word	82
	.word	83
	.word	84
	.word	85
	.word	86
	.word	87
	.word	213
	.align 4
_Sumo_SCTable:
	.word	320
	.word	321
	.word	322
	.word	323
	.align 4
_Toilet_SCTable:
	.word	388
	.word	389
	.word	390
	.word	391
	.word	392
	.word	393
	.word	488
	.word	489
	.word	490
	.align 2
_Trash_SCTable:
	.word	416
	.align 4
_Bunny_SCTable:
	.word	424
	.word	425
	.word	426
	.word	427
	.word	428
	.align 4
_Ripper_SCTable:
	.word	95
	.word	96
	.word	97
	.word	98
	.word	99
	.word	100
	.word	431
	.align 4
_Ripper2_SCTable:
	.word	313
	.word	314
	.word	315
	.word	316
	.word	317
	.word	318
	.word	431
	.align 4
_Serpent_SCTable:
	.word	123
	.word	124
	.word	125
	.word	126
	.word	127
	.word	128
	.word	129
	.word	130
	.word	131
	.align 4
_Hornet_SCTable:
	.word	119
	.word	120
	.word	121
	.word	122
	.align 4
_Head_SCTable:
	.word	115
	.word	116
	.word	117
	.word	118
	.align 4
_Pachinko_SCTable:
	.word	419
	.word	420
	.word	421
	.word	422
	.word	423
	.globl	_LevelName
	.bss
	.align 32
_LevelName:
	.space 80
	.globl	_CacheLastLevel
	.align 32
_CacheLastLevel:
	.space 32
	.section .rdata,"dr"
	.align 4
LC13:
	.long	_CoolgPersonality
	.align 4
LC29:
	.long	1082130432
	.align 4
LC30:
	.long	1076538027
	.align 8
LC33:
	.long	65536
	.long	65536
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__Z13PutStringInfoP12PLAYERstructPKc;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	__Z11MapSetAll2Dh;	.scl	2;	.type	32;	.endef
	.def	__Z18PlayerUpdateWeaponP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	_atol;	.scl	2;	.type	32;	.endef
	.def	__Z21PlayerUpdateInventoryP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	__Z16PlayerUpdateKeysP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnSpritessP11STATEstructsiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z14InitBloodSprayshs.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z21UpdateSinglePlayKillss.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z10SetSuicides;	.scl	2;	.type	32;	.endef
	.def	__Z19DoActorSectorDamages;	.scl	2;	.type	32;	.endef
	.def	__Z12DoActorSlides;	.scl	2;	.type	32;	.endef
	.def	__Z13DoActorDecides;	.scl	2;	.type	32;	.endef
	.def	__Z13NewStateGroupsPP11STATEstruct.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z15DoActorSetSpeedsh;	.scl	2;	.type	32;	.endef
	.def	__Z17DoActorMoveClosers;	.scl	2;	.type	32;	.endef
	.def	__Z9PlaySoundiPiS_S_i;	.scl	2;	.type	32;	.endef
	.def	__Z10move_actorsiii.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorRepositions;	.scl	2;	.type	32;	.endef
	.def	__Z17DoFindGroundPoints;	.scl	2;	.type	32;	.endef
	.def	__Z6DoFalls;	.scl	2;	.type	32;	.endef
	.def	__Z11move_spritesiiiiiji;	.scl	2;	.type	32;	.endef
	.def	__Z13InitCoolgDrips;	.scl	2;	.type	32;	.endef
	.def	__Z16ActorFollowTrackss.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z18change_sprite_statss;	.scl	2;	.type	32;	.endef
	.def	__Z13DoActorZranges;	.scl	2;	.type	32;	.endef
	.def	__Z9SpawnUserssP11STATEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15PlaySpriteSoundsii;	.scl	2;	.type	32;	.endef
	.def	__Z16KeepActorOnFloors;	.scl	2;	.type	32;	.endef
	.def	__Z10DoActorDiess;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_fwrite;	.scl	2;	.type	32;	.endef
	.def	_fread;	.scl	2;	.type	32;	.endef
	.def	_ferror;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	__Z10CacheSoundii.isra.0;	.scl	2;	.type	32;	.endef
	.def	_tileLoad.isra.0;	.scl	2;	.type	32;	.endef
	.def	_handleevents.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z10getpacketsv;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_strcasecmp;	.scl	2;	.type	32;	.endef
	.def	__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_do_deletespritestat;	.scl	2;	.type	32;	.endef
	.def	_do_insertsprite_at_headofstat;	.scl	2;	.type	32;	.endef
	.def	_do_deletespritesect;	.scl	2;	.type	32;	.endef
	.def	_do_insertsprite_at_headofsect;	.scl	2;	.type	32;	.endef
	.def	_open;	.scl	2;	.type	32;	.endef
	.def	_write;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_close;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_yax_getnextwall;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_SDL_WasInit;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetDesktopDisplayMode;	.scl	2;	.type	32;	.endef
	.def	_SCRIPT_GetNumber.part.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_SCRIPT_GetString;	.scl	2;	.type	32;	.endef
	.def	_SCRIPT_GetStringPtr;	.scl	2;	.type	32;	.endef
	.def	__Z14DecodePasswordPc.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_SCRIPT_SectionExists;	.scl	2;	.type	32;	.endef
	.def	_SCRIPT_Entry;	.scl	2;	.type	32;	.endef
	.def	__ZL18SCRIPT_ParseStringPPcS_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_filelength;	.scl	2;	.type	32;	.endef
	.def	_read;	.scl	2;	.type	32;	.endef
	.def	_SCRIPT_Init.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_SDL_Init;	.scl	2;	.type	32;	.endef
	.def	_SDL_InitSubSystem;	.scl	2;	.type	32;	.endef
	.def	_SCRIPT_AddSection;	.scl	2;	.type	32;	.endef
	.def	_SCRIPT_AddEntry.part.0;	.scl	2;	.type	32;	.endef
	.def	_vsprintf;	.scl	2;	.type	32;	.endef
	.def	__Z12adduserquotePKc;	.scl	2;	.type	32;	.endef
	.def	_strlwr;	.scl	2;	.type	32;	.endef
	.def	__Z17PutStringInfoLineP12PLAYERstructPKc;	.scl	2;	.type	32;	.endef
	.def	_sscanf;	.scl	2;	.type	32;	.endef
	.def	_strncpy;	.scl	2;	.type	32;	.endef
	.def	___ms_vsnprintf;	.scl	2;	.type	32;	.endef
	.def	_SCRIPT_PutString;	.scl	2;	.type	32;	.endef
	.def	_strupr;	.scl	2;	.type	32;	.endef
	.def	_fputc;	.scl	2;	.type	32;	.endef
	.def	_SCRIPT_FreeSection.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZL16OSD_CvarModifiedPK9osdcvar_t.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z10OSD_PrintfPKcz;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	__Z14DemoReadHeaderv;	.scl	2;	.type	32;	.endef
	.def	__ZL15DemoReadPacketsP9SW_PACKETii.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	__Z15SetRedrawScreenP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z18netbroadcastpacketPhi;	.scl	2;	.type	32;	.endef
	.def	_ftell;	.scl	2;	.type	32;	.endef
	.def	_fseek;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEj;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEjjPKcj;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcj;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZNSt6vectorI13DemoChatEntrySaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_;	.scl	2;	.type	32;	.endef
	.def	__Z18_mi_malloc_genericP9mi_heap_sjbj;	.scl	2;	.type	32;	.endef
	.def	__Z15mi_heap_try_newP9mi_heap_sjb;	.scl	2;	.type	32;	.endef
	.def	__ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj;	.scl	2;	.type	32;	.endef
	.def	__ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_clock;	.scl	2;	.type	32;	.endef
	.def	__ZL26DemoAutoSanitizeFolderNamePcjPKc.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_fprintf;	.scl	2;	.type	32;	.endef
	.def	__Z26GetCompactCTFCaptureScoresPiS_.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZL22DemoAutoResolveMapFilePcj.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_kopen4load.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z20kfilelength_internaliPKhPiS1_.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_kclose;	.scl	2;	.type	32;	.endef
	.def	__Z13DoActorDebriss;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorFindPlayers;	.scl	2;	.type	32;	.endef
	.def	__Z21InitActorWanderArounds;	.scl	2;	.type	32;	.endef
	.def	__Z14InitActorEvades;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorMoveClosers;	.scl	2;	.type	32;	.endef
	.def	__Z21InitActorAmbientNoises;	.scl	2;	.type	32;	.endef
	.def	__Z15InitActorDecides;	.scl	2;	.type	32;	.endef
	.def	__Z20InitActorAttackNoises;	.scl	2;	.type	32;	.endef
	.def	__Z16InitActorRunAways;	.scl	2;	.type	32;	.endef
	.def	__Z13InitCoolgFires;	.scl	2;	.type	32;	.endef
	.def	__Z15QueueFloorBloods;	.scl	2;	.type	32;	.endef
	.def	__Z15InitActorAttacks;	.scl	2;	.type	32;	.endef
	.def	__Z19PanelInvTestSuicideP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z14SpawnCoolieExps;	.scl	2;	.type	32;	.endef
	.def	__Z12NullAnimators;	.scl	2;	.type	32;	.endef
	.def	__Z18UseInventoryMedkitP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17UseInventoryCloakP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z18StopInventoryCloakP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	__Z23UseInventoryNightVisionP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z24StopInventoryNightVisionP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	__Z20UseInventoryChemBombP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z21UseInventoryFlashBombP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z20UseInventoryCaltropsP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z14InitWeaponFistP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z14InitWeaponStarP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17InitWeaponShotgunP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13InitWeaponUziP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15InitWeaponMicroP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17InitWeaponGrenadeP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z14InitWeaponMineP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z14InitWeaponRailP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17InitWeaponHotheadP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15InitWeaponHeartP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15InitWeaponSwordP12PLAYERstruct;	.scl	2;	.type	32;	.endef
