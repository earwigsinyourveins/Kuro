	.file	"<artificial>"
	.text
	.p2align 4
	.globl	__Z14BloodSprayFalls
	.def	__Z14BloodSprayFalls;	.scl	2;	.type	32;	.endef
__Z14BloodSprayFalls:
LFB0:
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
	addl	$1500, 8(%ecx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.def	__Z11DoFlagScores;	.scl	3;	.type	32;	.endef
__Z11DoFlagScores:
LFB1:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -20
	movswl	_headspritestat, %ebx
	movl	%esi, 8(%esp)
	.cfi_offset 6, -16
	movl	_sprite, %esi
	movw	%ax, 2(%esp)
	cmpl	$-1, %ebx
	je	L6
	movl	%edi, 12(%esp)
	.cfi_offset 7, -12
	movl	$-1171354717, %edi
	movl	%ebp, 16(%esp)
	.cfi_offset 5, -8
	movswl	%ax, %ebp
	jmp	L8
	.p2align 5
	.p2align 4,,10
	.p2align 3
L7:
	cmpl	$-1, %ebx
	je	L21
L8:
	imull	$44, %ebx, %ecx
	movswl	_nextspritestat(%ebx,%ebx), %ebx
	addl	%esi, %ecx
	movzwl	14(%ecx), %eax
	subw	$1900, %ax
	cmpw	$99, %ax
	ja	L7
	movzbl	17(%ecx), %eax
	cmpl	%ebp, %eax
	jne	L7
	leal	14(%ecx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	14(%ecx), %eax
	addl	$1, %eax
	movw	%ax, 14(%ecx)
	cmpw	$1999, %ax
	jle	L7
	movl	$1900, %eax
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 14(%ecx)
	cmpl	$-1, %ebx
	jne	L8
L21:
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	16(%esp), %ebp
	.cfi_restore 5
L6:
	movl	_FlagCaptureLimit, %eax
	testl	%eax, %eax
	jle	L4
	movl	_FlagCaptureWinner, %edx
	testl	%edx, %edx
	jne	L4
	cmpw	$1, _gNet+12
	je	L22
L4:
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
L22:
	.cfi_restore_state
	cmpb	$0, _gNet+14
	je	L4
	cmpw	$19, 2(%esp)
	je	L23
	cmpw	$23, 2(%esp)
	jne	L4
	movl	%edi, 12(%esp)
	.cfi_offset 7, -12
	movl	_FlagCaptureBlueCount, %edi
	leal	1(%edi), %edx
	movl	%edx, _FlagCaptureBlueCount
	cmpl	%edx, %eax
	jg	L20
	movl	$2, _FlagCaptureWinner
	movl	12(%esp), %edi
	.cfi_restore 7
	jmp	L4
L23:
	movl	%edi, 12(%esp)
	.cfi_offset 7, -12
	movl	_FlagCaptureRedCount, %edi
	leal	1(%edi), %edx
	movl	%edx, _FlagCaptureRedCount
	cmpl	%edx, %eax
	jg	L20
	movl	$1, _FlagCaptureWinner
	movl	12(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L4
L20:
	.cfi_restore_state
	movl	12(%esp), %edi
	.cfi_restore 7
	jmp	L4
	.cfi_endproc
LFE1:
	.p2align 4
	.def	__ZL26MNU_MouseButtonPostProcessP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__ZL26MNU_MouseButtonPostProcessP9MENU_ITEM:
LFB2:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	%eax, __ZL17mouse_button_item
	movl	$1, %eax
	ret
	.cfi_endproc
LFE2:
	.p2align 4
	.globl	__ZL29MNU_JoystickButtonPostProcessP9MENU_ITEM.lto_priv.0
	.def	__ZL29MNU_JoystickButtonPostProcessP9MENU_ITEM.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL29MNU_JoystickButtonPostProcessP9MENU_ITEM.lto_priv.0:
LFB3:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	%eax, __ZL20joystick_button_item.lto_priv.0
	movl	$1, %eax
	ret
	.cfi_endproc
LFE3:
	.p2align 4
	.def	__ZL26MNU_JoystickButtonNextPagev;	.scl	3;	.type	32;	.endef
__ZL26MNU_JoystickButtonNextPagev:
LFB4:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xorl	%edx, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	__ZL18JoystickButtonPage, %eax
	movl	_joystick+28, %ecx
	leal	1(%eax), %ebx
	movl	_joystick+24, %eax
	testl	%ecx, %ecx
	setg	%dl
	addl	%eax, %eax
	leal	(%eax,%edx,4), %ecx
	movl	$715827883, %eax
	imull	%ecx
	sarl	$31, %ecx
	movl	%ebx, %eax
	sarl	%edx
	subl	%ecx, %edx
	leal	1(%edx), %ecx
	cltd
	idivl	%ecx
	xorl	%eax, %eax
	movw	%ax, _joybuttonssetupgroup+32
	movl	%edx, __ZL18JoystickButtonPage
	imull	$1512, %edx, %edx
	movl	_joybuttons_i(%edx), %eax
	leal	_joybuttons_i(%edx), %ebx
	movl	%ebx, _joybuttonssetupgroup+12
	testl	%eax, %eax
	je	L27
	.p2align 4
	.p2align 3
L29:
	movl	48(%ebx), %eax
	testl	%eax, %eax
	je	L28
	movl	%ebx, (%esp)
	call	*%eax
L28:
	movl	56(%ebx), %eax
	addl	$56, %ebx
	testl	%eax, %eax
	jne	L29
L27:
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE4:
	.p2align 4
	.def	__ZL27MNU_JoystickAxisPostProcessP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__ZL27MNU_JoystickAxisPostProcessP9MENU_ITEM:
LFB7:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	%eax, __ZL18joystick_axis_item
	movl	$1, %eax
	ret
	.cfi_endproc
LFE7:
	.p2align 4
	.def	__Z17MNU_EpisodeCustomv;	.scl	3;	.type	32;	.endef
__Z17MNU_EpisodeCustomv:
LFB8:
	.cfi_startproc
	movl	_currentmenu, %eax
	movzwl	32(%eax), %eax
	movw	%ax, _EpisodeMenuSelection
	movl	$1, %eax
	ret
	.cfi_endproc
LFE8:
	.p2align 4
	.def	__Z18MNU_ShareWareCheckP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__Z18MNU_ShareWareCheckP9MENU_ITEM:
LFB9:
	.cfi_startproc
	movl	4(%esp), %eax
	testb	$1, _SW_GameFlags
	je	L38
	orl	$8, 4(%eax)
L38:
	movl	$1, %eax
	ret
	.cfi_endproc
LFE9:
	.p2align 4
	.def	__Z16MNU_CheckUserMapP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__Z16MNU_CheckUserMapP9MENU_ITEM:
LFB10:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	4(%edx), %eax
	movl	%eax, %ecx
	orl	$8, %eax
	andl	$-9, %ecx
	cmpb	$0, _UserMapName
	cmove	%ecx, %eax
	movl	%eax, 4(%edx)
	movl	$1, %eax
	ret
	.cfi_endproc
LFE10:
	.p2align 4
	.def	__Z17MNU_SaveGameCheckP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__Z17MNU_SaveGameCheckP9MENU_ITEM:
LFB11:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %edx
	movl	4(%edx), %eax
	cmpl	$1, _numplayers
	jg	L46
	movzbl	_CommEnabled, %ecx
	orb	_DemoMode, %cl
	orb	_InMenuLevel, %cl
	je	L47
L46:
	orl	$8, %eax
	movl	%eax, 4(%edx)
	movl	$1, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L47:
	.cfi_restore_state
	imull	$24124, _myconnectindex, %ecx
	movl	%eax, %ebx
	andl	$-9, %eax
	orl	$8, %ebx
	testb	$2, _Player+22968(%ecx)
	cmovne	%ebx, %eax
	movl	%eax, 4(%edx)
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE11:
	.p2align 4
	.def	__Z17MNU_LoadGameCheckP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__Z17MNU_LoadGameCheckP9MENU_ITEM:
LFB13:
	.cfi_startproc
	movl	4(%esp), %eax
	cmpb	$0, _CommEnabled
	jne	L52
	cmpl	$1, _numplayers
	jg	L52
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
L52:
	orl	$8, 4(%eax)
	movl	$1, %eax
	ret
	.cfi_endproc
LFE13:
	.p2align 4
	.def	__Z13MNU_StatCheckP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__Z13MNU_StatCheckP9MENU_ITEM:
LFB14:
	.cfi_startproc
	movl	4(%esp), %eax
	cmpb	$0, _CommEnabled
	jne	L55
	cmpl	$1, _numplayers
	jg	L55
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
L55:
	orl	$8, 4(%eax)
	movl	$1, %eax
	ret
	.cfi_endproc
LFE14:
	.p2align 4
	.def	__Z21MNU_HurtTeammateCheckP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__Z21MNU_HurtTeammateCheckP9MENU_ITEM:
LFB15:
	.cfi_startproc
	movzbl	_gs+31, %eax
	movl	4(%esp), %edx
	addl	$1, %eax
	cmpl	$2, %eax
	jle	L58
	cmpl	$3, %eax
	jne	L60
	andl	$-9, 4(%edx)
L60:
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
L58:
	movl	4(%edx), %eax
	movl	%eax, %ecx
	andl	$-9, %eax
	orl	$8, %ecx
	cmpb	$0, _gs+36
	cmove	%ecx, %eax
	movl	%eax, 4(%edx)
	movl	$1, %eax
	ret
	.cfi_endproc
LFE15:
	.p2align 4
	.def	__Z17MNU_TeamPlayCheckP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__Z17MNU_TeamPlayCheckP9MENU_ITEM:
LFB17:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	4(%edx), %eax
	movl	%eax, %ecx
	andl	$-9, %eax
	orl	$8, %ecx
	cmpb	$2, _gs+31
	cmove	%ecx, %eax
	movl	%eax, 4(%edx)
	movl	$1, %eax
	ret
	.cfi_endproc
LFE17:
	.p2align 4
	.def	__Z17MNU_CoopPlayCheckP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__Z17MNU_CoopPlayCheckP9MENU_ITEM:
LFB19:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	4(%edx), %eax
	movl	%eax, %ecx
	andl	$-9, %eax
	orl	$8, %ecx
	cmpb	$2, _gs+31
	cmove	%ecx, %eax
	movl	%eax, 4(%edx)
	movl	$1, %eax
	ret
	.cfi_endproc
LFE19:
	.p2align 4
	.def	__Z18MNU_TeamPlayChangev;	.scl	3;	.type	32;	.endef
__Z18MNU_TeamPlayChangev:
LFB20:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	_currentmenu, %eax
	movl	12(%eax), %ebx
	testl	%ebx, %ebx
	jne	L80
	jmp	L69
	.p2align 4,,10
	.p2align 3
L71:
	movl	48(%ebx), %eax
	testl	%eax, %eax
	je	L70
	movl	%ebx, (%esp)
	call	*%eax
L70:
	addl	$56, %ebx
L80:
	movl	(%ebx), %eax
	testl	%eax, %eax
	jne	L71
L69:
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE20:
	.p2align 4
	.def	__Z14MNU_MouseCheckP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__Z14MNU_MouseCheckP9MENU_ITEM:
LFB21:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	4(%eax), %ecx
	cmpb	$0, _CONTROL_MousePresent
	je	L82
	movl	%ecx, %edx
	andl	$-9, %edx
	cmpb	$0, _DemoPlaying
	je	L84
L82:
	movl	%ecx, %edx
	orl	$8, %edx
L84:
	movl	%edx, 4(%eax)
	movl	$1, %eax
	ret
	.cfi_endproc
LFE21:
	.p2align 4
	.def	__Z17MNU_JoystickCheckP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__Z17MNU_JoystickCheckP9MENU_ITEM:
LFB22:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	4(%edx), %eax
	movl	%eax, %ecx
	andl	$-9, %eax
	orl	$8, %ecx
	cmpb	$0, _CONTROL_JoyPresent
	cmove	%ecx, %eax
	movl	%eax, 4(%edx)
	movl	$1, %eax
	ret
	.cfi_endproc
LFE22:
	.p2align 4
	.def	__Z14MNU_MusicCheckP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__Z14MNU_MusicCheckP9MENU_ITEM:
LFB23:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	_MusicToggle, %edx
	movl	4(%eax), %ecx
	testl	%edx, %edx
	je	L89
	movl	%ecx, %edx
	andl	$-9, %edx
	cmpb	$0, _MusicInitialized
	jne	L91
L89:
	movl	%ecx, %edx
	orl	$8, %edx
L91:
	movl	%edx, 4(%eax)
	movl	$1, %eax
	ret
	.cfi_endproc
LFE23:
	.p2align 4
	.def	__ZL16MNU_TryMusicInitv;	.scl	3;	.type	32;	.endef
__ZL16MNU_TryMusicInitv:
LFB25:
	.cfi_startproc
	movl	_currentmenu, %eax
	cmpw	$0, 32(%eax)
	je	L96
L93:
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
L96:
	movl	12(%eax), %edx
	movl	_MusicToggle, %ecx
	movl	60(%edx), %eax
	testl	%ecx, %ecx
	je	L94
	cmpb	$0, _MusicInitialized
	je	L94
	andl	$-9, %eax
	movl	%eax, 60(%edx)
	jmp	L93
	.p2align 4,,10
	.p2align 3
L94:
	orl	$8, %eax
	movl	%eax, 60(%edx)
	movl	$1, %eax
	ret
	.cfi_endproc
LFE25:
	.p2align 4
	.def	__Z11MNU_FxCheckP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__Z11MNU_FxCheckP9MENU_ITEM:
LFB26:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	_FXToggle, %edx
	movl	4(%eax), %ecx
	testl	%edx, %edx
	je	L98
	movl	%ecx, %edx
	andl	$-9, %edx
	cmpb	$0, _FxInitialized
	jne	L100
L98:
	movl	%ecx, %edx
	orl	$8, %edx
L100:
	movl	%edx, 4(%eax)
	movl	$1, %eax
	ret
	.cfi_endproc
LFE26:
	.p2align 4
	.def	__Z16MNU_MusicFxCheckP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__Z16MNU_MusicFxCheckP9MENU_ITEM:
LFB27:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %edx
	movl	_FXToggle, %ecx
	movl	4(%edx), %eax
	movl	%eax, %ebx
	andl	$-9, %eax
	orl	$8, %ebx
	orl	_MusicToggle, %ecx
	cmove	%ebx, %eax
	movl	%eax, 4(%edx)
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE27:
	.p2align 4
	.def	__Z19SpawnRadiationClouds.isra.0;	.scl	3;	.type	32;	.endef
__Z19SpawnRadiationClouds.isra.0:
LFB29:
	.cfi_startproc
	cmpb	$0, _MoveSkip4
	je	L118
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	cwtl
	movl	%ebx, 32(%esp)
	.cfi_offset 3, -20
	movl	_sprite, %ebx
	movl	%esi, 36(%esp)
	movl	%edi, 40(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	_User(,%eax,4), %edi
	movzwl	178(%edi), %edx
	movzwl	82(%edi), %ecx
	leal	1(%edx), %esi
	movw	%si, 178(%edi)
	cmpw	$3280, %cx
	je	L115
	cmpw	$3121, %cx
	je	L115
	cmpw	$2, %dx
	jle	L122
L111:
	xorl	%edx, %edx
	movw	%dx, 178(%edi)
L110:
	testb	$64, 71(%edi)
	jne	L105
	imull	$44, %eax, %eax
	movl	%ebp, 44(%esp)
	.cfi_offset 5, -8
	movl	$-1171354717, %ebp
	addl	$1, _krandcount
	addl	%eax, %ebx
	movl	_randomseed, %eax
	movl	8(%ebx), %edx
	movswl	28(%ebx), %ecx
	movl	$0, 20(%esp)
	leal	(%eax,%eax,4), %esi
	leal	1(%eax,%esi,4), %eax
	movl	%ecx, 16(%esp)
	movl	$_s_RadiationCloud, %ecx
	movzwl	%ax, %esi
	andl	$2047, %eax
	subl	%eax, %edx
	movl	%esi, _randomseed
	movl	%edx, 12(%esp)
	movl	4(%ebx), %eax
	movl	$3258, %edx
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %edx
	movswl	30(%ebx), %eax
	movl	_User(,%edx,4), %esi
	imull	$44, %edx, %ecx
	addl	_sprite, %ecx
	movl	%ecx, 28(%esp)
	call	__Z8SetOwnerss
	movl	$120, %ecx
	movl	%esi, 24(%esp)
	movw	%cx, 216(%esi)
	movl	28(%esp), %ecx
	movl	_sprite, %esi
	leal	16(%ecx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ecx), %edx
	subl	%esi, %edx
	movb	$-40, 16(%ecx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	%esi, %edx
	movb	$32, 20(%ecx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$32, 21(%ecx)
	movzbl	18(%ebx), %eax
	leal	12(%ecx), %ebx
	subl	%esi, %ebx
	movb	%al, 18(%ecx)
	movl	%ebx, %eax
	mull	%ebp
	movl	%edx, %ebx
	leal	17(%ecx), %edx
	subl	%esi, %edx
	shrl	$5, %ebx
	movl	%edx, %eax
	addl	$1, _spritechanged(,%ebx,4)
	mull	%ebp
	orw	$128, 12(%ecx)
	movl	24(%esp), %eax
	addl	$1, _spritechanged(,%ebx,4)
	andw	$-258, 12(%ecx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	40(%ecx), %edx
	subl	%esi, %edx
	movb	$22, 17(%ecx)
	movb	$22, 262(%eax)
	movl	%edx, %eax
	mull	%ebp
	movl	_krandcount, %eax
	movl	$8, %ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%bp, 40(%ecx)
	movl	%eax, 28(%esp)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %edx
	movzwl	%dx, %eax
	andb	$2, %dh
	jne	L112
	addl	$1, _spritechanged(,%ebx,4)
	orw	$4, 12(%ecx)
L112:
	leal	(%eax,%eax,4), %edx
	movl	$-1171354717, %ebp
	leal	1(%eax,%edx,4), %ebx
	leal	28(%ecx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebp
	movl	%ebx, %eax
	movzwl	%bx, %ebx
	andl	$2047, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32(%ecx), %edx
	movw	%ax, 28(%ecx)
	subl	%esi, %edx
	leal	(%ebx,%ebx,4), %eax
	leal	1(%ebx,%eax,4), %ebx
	movl	%edx, %eax
	mull	%ebp
	movl	%ebx, %eax
	movzwl	%bx, %ebx
	andl	$31, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ecx), %edx
	movw	%ax, 32(%ecx)
	movl	24(%esp), %eax
	subl	%esi, %edx
	movl	$0, 176(%eax)
	movl	%edx, %eax
	movzwl	82(%edi), %edi
	mull	%ebp
	movl	28(%esp), %ebp
	leal	(%ebx,%ebx,4), %eax
	leal	1(%ebx,%eax,4), %eax
	addl	$4, %ebp
	movzwl	%ax, %esi
	shrl	$5, %edx
	cmpw	$3121, %di
	je	L116
	cmpw	$3280, %di
	je	L116
	movswl	28(%ecx), %ebx
	movswl	32(%ecx), %edi
	andl	$1023, %eax
	movl	%ebp, _krandcount
	addl	$1024, %eax
	movl	%esi, _randomseed
	addl	$512, %ebx
	andl	$2047, %ebx
	movswl	_sintable(%ebx,%ebx), %ebx
	imull	%edi, %ebx
	movl	24(%esp), %edi
	sarl	$14, %ebx
	movl	%ebx, 152(%edi)
	movzwl	28(%ecx), %ebx
	movswl	32(%ecx), %edi
	andl	$2047, %ebx
	movswl	_sintable(%ebx,%ebx), %ebx
	imull	%edi, %ebx
	movl	24(%esp), %edi
	sarl	$14, %ebx
	movl	%ebx, 156(%edi)
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 36(%ecx)
	movl	$4000, 188(%edi)
	movl	44(%esp), %ebp
	.cfi_restore 5
	movl	32(%esp), %ebx
	movl	36(%esp), %esi
	movl	40(%esp), %edi
	addl	$48, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L115:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpw	$16, %dx
	jg	L111
L122:
	testw	%si, %si
	je	L110
L105:
	movl	32(%esp), %ebx
	movl	36(%esp), %esi
	movl	40(%esp), %edi
	addl	$48, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L116:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	24(%esp), %edi
	andl	$511, %eax
	movl	%ebp, _krandcount
	addl	$256, %eax
	movl	%esi, _randomseed
	movl	$2000, 188(%edi)
	movswl	28(%ecx), %ebx
	movzwl	32(%ecx), %edi
	addl	$512, %ebx
	andl	$2047, %ebx
	sarw	$2, %di
	movswl	_sintable(%ebx,%ebx), %ebx
	movswl	%di, %edi
	imull	%edi, %ebx
	movl	24(%esp), %edi
	sarl	$14, %ebx
	movl	%ebx, 152(%edi)
	movzwl	28(%ecx), %ebx
	movzwl	32(%ecx), %edi
	andl	$2047, %ebx
	movswl	_sintable(%ebx,%ebx), %ebx
	sarw	$2, %di
	movswl	%di, %edi
	imull	%edi, %ebx
	movl	24(%esp), %edi
	sarl	$14, %ebx
	movl	%ebx, 156(%edi)
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 36(%ecx)
	movl	44(%esp), %ebp
	.cfi_restore 5
	movl	32(%esp), %ebx
	movl	36(%esp), %esi
	movl	40(%esp), %edi
	addl	$48, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L118:
	ret
	.cfi_endproc
LFE29:
	.p2align 4
	.globl	__Z10DoChemBombs
	.def	__Z10DoChemBombs;	.scl	2;	.type	32;	.endef
__Z10DoChemBombs:
LFB31:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movswl	8(%ebp), %esi
	movl	_User(,%esi,4), %edi
	imull	$44, %esi, %eax
	movl	%esi, 36(%esp)
	addl	_sprite, %eax
	movl	152(%edi), %ebx
	movl	156(%edi), %esi
	movl	%eax, 32(%esp)
	movzwl	176(%edi), %eax
	leal	20(%eax), %ecx
	movl	160(%edi), %eax
	movswl	%cx, %edx
	movl	%eax, 28(%esp)
	addl	%edx, %eax
	movl	%edx, 24(%esp)
	testb	$64, 71(%edi)
	jne	L200
L125:
	movw	%cx, 176(%edi)
	movl	%esi, %ecx
	movl	%eax, 160(%edi)
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%edi), %edx
	movl	%edx, 8(%esp)
	movswl	96(%edi), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%ebx, %edx
	movl	36(%esp), %ebx
	movl	%ebx, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%edi)
	movl	%ebx, (%esp)
	call	__Z18MissileHitDiveAreas
	testb	$64, 71(%edi)
	jne	L201
L126:
	movl	264(%edi), %eax
	testl	%eax, %eax
	je	L127
	movl	%eax, %edx
	andl	$114688, %edx
	cmpl	$49152, %edx
	je	L128
	jg	L129
	cmpl	$16384, %edx
	je	L130
	cmpl	$32768, %edx
	jne	L127
	movl	_wall, %edx
	andl	$16383, %eax
	sall	$5, %eax
	leal	(%edx,%eax), %ebx
	movl	%eax, %esi
	cmpw	$307, 26(%ebx)
	je	L202
	movl	32(%esp), %ecx
	movl	%ebx, %eax
	cmpw	$0, 12(%ecx)
	jns	L203
L143:
	movswl	8(%eax), %eax
	sall	$5, %eax
	addl	%edx, %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%ebx), %edx
	subl	(%ebx), %ecx
	call	@getangle@8
	leal	512(%eax), %edx
L192:
	movl	36(%esp), %ebx
	andl	$2047, %edx
	movl	%ebx, %eax
	call	__Z10WallBouncess
	movl	_User(,%ebx,4), %ecx
L190:
	movl	152(%ecx), %eax
	movl	$32000, %edx
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$32000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$32000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%ecx)
	.p2align 4
	.p2align 3
L127:
	movl	68(%edi), %ebx
	andl	$1610612736, %ebx
	je	L204
	xorl	%ebx, %ebx
L123:
	addl	$44, %esp
	movl	%ebx, %eax
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
L204:
	.cfi_restore_state
	movl	32(%esp), %ecx
	cmpw	$0, 12(%ecx)
	js	L123
	movl	$100, 20(%esp)
	movswl	28(%ecx), %eax
	movl	$1748, %edx
	movl	%eax, 16(%esp)
	movl	8(%ecx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ecx), %eax
	movl	%eax, 8(%esp)
	movl	(%ecx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ecx), %eax
	movl	$_s_Puff, %ecx
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	cwtl
	movl	_User(,%eax,4), %edx
	imull	$44, %eax, %esi
	movl	%eax, 28(%esp)
	addl	_sprite, %esi
	movl	%edx, 32(%esp)
	movl	%eax, %edx
	movl	36(%esp), %eax
	call	__Z8SetOwnerss
	leal	16(%esi), %edx
	subl	_sprite, %edx
	movl	$-1171354717, %ecx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$-40, 16(%esi)
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$40, 20(%esi)
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	32(%esp), %edx
	movb	$40, 21(%esi)
	movl	56(%edi), %eax
	movl	%eax, 56(%edx)
	movl	60(%edi), %eax
	movl	%eax, 60(%edx)
	movl	64(%edi), %eax
	movl	%eax, 64(%edx)
	leal	12(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%esi)
	addl	$1, _spritechanged(,%edx,4)
	movl	32(%esp), %edx
	andw	$-258, 12(%esi)
	movl	152(%edi), %eax
	movl	%eax, 152(%edx)
	movl	156(%edi), %eax
	movl	%eax, 156(%edx)
	movl	160(%edi), %eax
	movl	%eax, 160(%edx)
	movl	%ecx, %eax
	leal	17(%esi), %edx
	subl	_sprite, %edx
	mull	%edx
	movl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$20000, %edx
	movb	$22, 17(%esi)
	movl	32(%esp), %esi
	movb	$22, 262(%esi)
	movl	_User(,%eax,4), %ecx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$20000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$20000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%ecx)
	testb	$64, 71(%edi)
	je	L123
	orl	$1073741824, 68(%esi)
	jmp	L123
	.p2align 4,,10
	.p2align 3
L201:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	movl	%edx, _randomseed
	testb	$48, %ah
	jne	L126
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	call	__Z11SpawnBubbles
	jmp	L126
	.p2align 4,,10
	.p2align 3
L200:
	movl	%ebx, %eax
	movl	$50000, %edx
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$50000, %edx
	movl	%eax, 152(%edi)
	movl	%eax, %ebx
	movl	%esi, %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$50000, %edx
	movl	%eax, 156(%edi)
	movl	%eax, %esi
	movl	28(%esp), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	24(%esp), %eax
	jmp	L125
	.p2align 4,,10
	.p2align 3
L128:
	movl	32(%esp), %ebx
	cmpw	$0, 12(%ebx)
	js	L133
	leal	8(%ebx), %esi
	movl	$-1171354717, %ecx
	movl	%esi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	32(%esp), %eax
	subl	_sprite, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	%ecx, %eax
	mull	%edx
	leal	4(%ebx), %ecx
	movl	$277, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	32(%esp), %edx
	movl	$8, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	264(%edi), %eax
L133:
	andl	$16383, %eax
	movl	_sprite, %ecx
	imull	$44, %eax, %eax
	addl	%ecx, %eax
	testb	$16, 12(%eax)
	jne	L205
	movzwl	216(%edi), %eax
	cmpw	$4800, %ax
	je	L206
L135:
	movl	$0, 152(%edi)
	subl	$12, %eax
	movl	$0, 156(%edi)
	movw	%ax, 216(%edi)
	testw	%ax, %ax
	jg	L132
	jmp	L165
	.p2align 4,,10
	.p2align 3
L130:
	movl	36(%esp), %eax
	leal	43(%esp), %edx
	call	__Z11SlopeBouncesPh
	testb	%al, %al
	je	L144
	cmpb	$0, 43(%esp)
	jne	L207
	movl	32(%esp), %ebx
	movl	108(%edi), %eax
	addl	104(%edi), %eax
	sarl	%eax
	cmpl	8(%ebx), %eax
	jge	L191
	movl	68(%edi), %eax
	testl	$536870912, %eax
	jne	L156
	cmpw	$0, 12(%ebx)
	js	L149
	leal	8(%ebx), %esi
	movl	$-1171354717, %ecx
	movl	%esi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	32(%esp), %eax
	subl	_sprite, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	leal	4(%ebx), %ecx
	movl	$277, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	32(%esp), %edx
	movl	$8, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	68(%edi), %eax
L149:
	orl	$536870912, %eax
	movl	$32000, %edx
	movl	%eax, 68(%edi)
	movl	36(%esp), %eax
	movl	_User(,%eax,4), %ecx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$32000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$32000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%ecx)
	movl	160(%edi), %ecx
	movl	$715827883, %eax
	xorl	%ebx, %ebx
	movl	$0, 264(%edi)
	imull	%ecx
	sarl	$31, %ecx
	movw	%bx, 176(%edi)
	subl	%ecx, %edx
	movl	%edx, 160(%edi)
	jmp	L127
	.p2align 4,,10
	.p2align 3
L129:
	cmpl	$65536, %edx
	jne	L127
L165:
	movl	36(%esp), %eax
	call	__Z10KillSprites
L132:
	addl	$44, %esp
	movl	$1, %ebx
	movl	%ebx, %eax
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
L144:
	.cfi_restore_state
	movl	32(%esp), %ebx
	movl	108(%edi), %eax
	addl	104(%edi), %eax
	sarl	%eax
	cmpl	8(%ebx), %eax
	jge	L154
	movl	68(%edi), %eax
	testl	$1073741824, %eax
	je	L155
	movl	120(%edi), %ecx
	orl	$536870912, %eax
	movl	%eax, 68(%edi)
	testl	%ecx, %ecx
	je	L156
	movswl	24(%ebx), %edx
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	je	L156
L157:
	cmpw	$0, 10(%edx)
	je	L189
	orl	$536870912, %eax
	movl	%eax, 68(%edi)
L156:
	cmpw	$4800, 216(%edi)
	je	L208
L150:
	movl	36(%esp), %eax
	call	__Z19SpawnRadiationClouds.isra.0
	movzwl	216(%edi), %eax
	movl	$0, 152(%edi)
	movl	$0, 156(%edi)
	subl	$12, %eax
	movw	%ax, 216(%edi)
	testw	%ax, %ax
	jg	L132
	jmp	L165
	.p2align 4,,10
	.p2align 3
L203:
	leal	8(%ecx), %eax
	addl	$4, %ecx
	movl	%eax, 28(%esp)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	subl	_sprite, %edx
	mull	%edx
	movl	32(%esp), %eax
	subl	_sprite, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$277, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	28(%esp), %edx
	movl	$8, 4(%esp)
	movl	%edx, (%esp)
	movl	32(%esp), %edx
	call	__Z9PlaySoundiPiS_S_i
	movl	_wall, %edx
	leal	(%edx,%esi), %eax
	jmp	L143
	.p2align 4,,10
	.p2align 3
L206:
	movl	32(%esp), %eax
	cmpw	$0, 12(%eax)
	jns	L136
	movl	$0, 152(%edi)
	movl	$4788, %eax
	movl	$0, 156(%edi)
	movw	%ax, 216(%edi)
	jmp	L132
	.p2align 4,,10
	.p2align 3
L154:
	negl	160(%edi)
L191:
	movl	36(%esp), %eax
	movl	_User(,%eax,4), %ecx
	jmp	L190
	.p2align 4,,10
	.p2align 3
L207:
	movl	36(%esp), %eax
	movl	$28000, %edx
	movl	_User(,%eax,4), %ecx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$28000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$28000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	xorl	%esi, %esi
	movl	%eax, 160(%ecx)
	movl	$0, 264(%edi)
	movw	%si, 176(%edi)
	jmp	L127
	.p2align 4,,10
	.p2align 3
L205:
	movzwl	28(%eax), %edx
	jmp	L192
	.p2align 4,,10
	.p2align 3
L202:
	movl	32(%esp), %esi
	movswl	82(%edi), %eax
	movl	4(%esi), %ecx
	movl	(%esi), %edx
	movl	%eax, 8(%esp)
	movswl	28(%esi), %eax
	movl	%eax, 4(%esp)
	movl	8(%esi), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__Z12HitBreakWallP10walltypev7iiiss.isra.0
	movl	$0, 264(%edi)
	jmp	L127
	.p2align 4,,10
	.p2align 3
L155:
	movl	120(%edi), %edx
	testl	%edx, %edx
	je	L189
	movl	32(%esp), %ebx
	movswl	24(%ebx), %edx
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	jne	L157
L189:
	movl	%eax, %edx
	andl	$536870912, %edx
	testl	%edx, %edx
	jne	L156
	movl	32(%esp), %ebx
	cmpw	$0, 12(%ebx)
	js	L161
	leal	8(%ebx), %esi
	movl	$-1171354717, %ecx
	movl	%esi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	32(%esp), %eax
	subl	_sprite, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	leal	4(%ebx), %ecx
	movl	$277, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	32(%esp), %edx
	movl	$8, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	68(%edi), %eax
L161:
	orl	$536870912, %eax
	negl	160(%edi)
	movl	$32000, %edx
	movl	%eax, 68(%edi)
	xorl	%eax, %eax
	movw	%ax, 176(%edi)
	movl	36(%esp), %eax
	movl	$0, 264(%edi)
	movl	_User(,%eax,4), %ecx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$32000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$32000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%ecx)
	movl	160(%edi), %ecx
	movl	$715827883, %eax
	imull	%ecx
	sarl	$31, %ecx
	subl	%ecx, %edx
	movl	%edx, 160(%edi)
	jmp	L127
L136:
	movl	32(%esp), %eax
	movl	$-1171354717, %ebx
	leal	8(%eax), %esi
	movl	%esi, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	movl	32(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%eax), %edx
	movl	%edx, 28(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	32(%esp), %edx
	subl	%ecx, %edx
	movl	28(%esp), %ecx
	movl	%edx, %eax
	mull	%ebx
	movl	$283, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	32(%esp), %edx
	movl	$12, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_sprite, %ecx
	movl	%esi, %eax
	subl	%ecx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	28(%esp), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	movl	32(%esp), %eax
	subl	%ecx, %eax
	movl	28(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebx
	movl	$276, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	32(%esp), %edx
	movl	$12, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_voc3dend, %eax
	testl	%eax, %eax
	je	L187
	cmpl	$-1, 32(%eax)
	je	L209
L138:
	movzwl	8(%ebp), %ebx
	movw	%bx, 48(%eax)
	movzwl	216(%edi), %eax
	jmp	L135
L208:
	movl	32(%esp), %eax
	cmpw	$0, 12(%eax)
	js	L150
	movl	_sprite, %ecx
	leal	8(%eax), %esi
	movl	%esi, %ebx
	subl	%ecx, %ebx
	movl	%ebx, %eax
	movl	$-1171354717, %ebx
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	32(%esp), %eax
	leal	4(%eax), %edx
	movl	%edx, 28(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	32(%esp), %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	$283, %eax
	movl	%edx, %ecx
	shrl	$5, %ecx
	addl	$1, _spritechanged(,%ecx,4)
	movl	28(%esp), %ecx
	movl	$12, 4(%esp)
	movl	32(%esp), %edx
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_sprite, %ecx
	movl	%esi, %eax
	subl	%ecx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	28(%esp), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	32(%esp), %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	$276, %eax
	movl	%edx, %ebx
	shrl	$5, %ebx
	addl	$1, _spritechanged(,%ebx,4)
	movl	28(%esp), %ecx
	movl	$12, 4(%esp)
	movl	32(%esp), %edx
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_voc3dend, %eax
	testl	%eax, %eax
	je	L150
	cmpl	$-1, 32(%eax)
	je	L210
L163:
	movzwl	8(%ebp), %ebx
	movw	%bx, 48(%eax)
	jmp	L150
L209:
	testb	$16, 28(%eax)
	jne	L138
	movb	$1, 68(%eax)
	movl	$2, 28(%eax)
L187:
	movzwl	216(%edi), %eax
	jmp	L135
L210:
	testb	$16, 28(%eax)
	jne	L163
	movb	$1, 68(%eax)
	movl	$2, 28(%eax)
	jmp	L150
	.cfi_endproc
LFE31:
	.p2align 4
	.globl	__Z10DoCaltropss
	.def	__Z10DoCaltropss;	.scl	2;	.type	32;	.endef
__Z10DoCaltropss:
LFB34:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movswl	8(%ebp), %esi
	movl	_sprite, %eax
	movl	_User(,%esi,4), %ebx
	movl	%eax, 20(%esp)
	movl	160(%ebx), %eax
	movzwl	176(%ebx), %ecx
	movl	156(%ebx), %edi
	movl	%eax, 24(%esp)
	movl	152(%ebx), %eax
	movl	%eax, 28(%esp)
	testb	$64, 71(%ebx)
	jne	L258
	addl	$70, %ecx
	movswl	%cx, %edx
	addl	24(%esp), %edx
L213:
	movw	%cx, 176(%ebx)
	movl	%edi, %ecx
	movl	%edx, 160(%ebx)
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%ebx), %eax
	movl	%eax, 8(%esp)
	movswl	96(%ebx), %eax
	movl	%edx, (%esp)
	movl	28(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%esi, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%ebx)
	movl	%esi, (%esp)
	call	__Z18MissileHitDiveAreas
	movl	264(%ebx), %eax
	testl	%eax, %eax
	je	L211
	imull	$44, %esi, %edx
	movl	20(%esp), %edi
	addl	%edx, %edi
	movl	%eax, %edx
	andl	$114688, %edx
	cmpl	$49152, %edx
	je	L215
	jg	L216
	cmpl	$16384, %edx
	je	L217
	cmpl	$32768, %edx
	jne	L219
	andl	$16383, %eax
	sall	$5, %eax
	movl	%eax, 20(%esp)
	addl	_wall, %eax
	movl	%eax, 28(%esp)
	cmpw	$307, 26(%eax)
	je	L259
	leal	8(%edi), %eax
	movl	$-1171354717, %ebx
	leal	4(%edi), %ecx
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%eax, 24(%esp)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ebx
	movl	%ebx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	subl	_sprite, %edx
	mull	%edx
	movl	$288, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	24(%esp), %edx
	movl	$8, 4(%esp)
	movl	%edx, (%esp)
	movl	%edi, %edx
	call	__Z9PlaySoundiPiS_S_i
	movl	_wall, %eax
	movl	20(%esp), %edi
	movswl	8(%eax,%edi), %edx
	movl	28(%esp), %edi
	sall	$5, %edx
	addl	%edx, %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%edi), %edx
	subl	(%edi), %ecx
	call	@getangle@8
	leal	512(%eax), %edx
	movl	%esi, %eax
	andl	$2047, %edx
	call	__Z10WallBouncess
L254:
	movl	_User(,%esi,4), %ecx
	movl	$1000, %edx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$1000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$1000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%ecx)
L219:
	xorl	%eax, %eax
L211:
	addl	$36, %esp
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
L258:
	.cfi_restore_state
	movl	$50000, %edx
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$50000, %edx
	movl	%eax, 28(%esp)
	movl	%eax, 152(%ebx)
	movl	%edi, %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$50000, %edx
	movl	%eax, 156(%ebx)
	movl	%eax, %edi
	movl	24(%esp), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	$20, %ecx
	movswl	%cx, %edx
	addl	%eax, %edx
	jmp	L213
	.p2align 4,,10
	.p2align 3
L215:
	leal	8(%edi), %eax
	movl	$-1171354717, %ecx
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%eax, 24(%esp)
	movl	%edx, %eax
	mull	%ecx
	leal	4(%edi), %eax
	movl	%eax, 28(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%edi, %eax
	subl	_sprite, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	%ecx, %eax
	movl	28(%esp), %ecx
	mull	%edx
	movl	$288, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	24(%esp), %edx
	movl	$8, 4(%esp)
	movl	%edx, (%esp)
	movl	%edi, %edx
	call	__Z9PlaySoundiPiS_S_i
	movl	264(%ebx), %eax
	andl	$16383, %eax
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	testb	$16, 12(%eax)
	jne	L260
	movl	$0, 152(%ebx)
	xorl	%eax, %eax
	movl	$0, 156(%ebx)
	jmp	L211
	.p2align 4,,10
	.p2align 3
L217:
	leal	35(%esp), %edx
	movl	%esi, %eax
	call	__Z11SlopeBouncesPh
	testb	%al, %al
	je	L224
	cmpb	$0, 35(%esp)
	jne	L255
	movl	108(%ebx), %eax
	addl	104(%ebx), %eax
	sarl	%eax
	cmpl	8(%edi), %eax
	jge	L254
	movl	_sprite, %ecx
	testb	$32, 71(%ebx)
	jne	L228
	leal	8(%edi), %eax
	movl	%eax, %edx
	movl	%eax, 24(%esp)
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	leal	4(%edi), %eax
	movl	%eax, 28(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	%edi, %eax
	subl	%ecx, %eax
	movl	28(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$288, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	24(%esp), %edx
	movl	$8, 4(%esp)
	movl	%edx, (%esp)
	movl	%edi, %edx
	call	__Z9PlaySoundiPiS_S_i
	orl	$536870912, 68(%ebx)
L255:
	movl	_User(,%esi,4), %ecx
	movl	$1000, %edx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$1000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$1000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	xorl	%esi, %esi
	movl	%eax, 160(%ecx)
	xorl	%eax, %eax
	movl	$0, 264(%ebx)
	movw	%si, 176(%ebx)
	jmp	L211
	.p2align 4,,10
	.p2align 3
L216:
	cmpl	$65536, %edx
	jne	L219
	movl	%esi, %eax
	call	__Z10KillSprites
L221:
	addl	$36, %esp
	movl	$1, %eax
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
L224:
	.cfi_restore_state
	movl	108(%ebx), %eax
	addl	104(%ebx), %eax
	sarl	%eax
	cmpl	8(%edi), %eax
	jge	L230
	movl	68(%ebx), %eax
	testl	$1073741824, %eax
	je	L231
	movl	120(%ebx), %ecx
	orl	$536870912, %eax
	movl	%eax, 68(%ebx)
	testl	%ecx, %ecx
	je	L257
	movswl	24(%edi), %edx
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	je	L257
L233:
	cmpw	$0, 10(%edx)
	je	L256
	orl	$536870912, %eax
	movl	%eax, 68(%ebx)
L257:
	movl	_sprite, %ecx
L234:
	movl	$0, 152(%ebx)
	leal	42(%edi), %edx
	movl	$0, 156(%ebx)
	subl	%ecx, %edx
	movl	$-1171354717, %ebx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%edi), %edx
	subl	%ecx, %edx
	orw	$8192, 42(%edi)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$16640, 12(%edi)
	movl	_User(,%esi,4), %eax
	testl	%eax, %eax
	je	L221
	movl	$0, 76(%eax)
	movl	$_s_CaltropsStick, 24(%eax)
	movl	$_s_CaltropsStick, 16(%eax)
	movswl	_s_CaltropsStick, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L221
	andl	$63, %eax
	movb	%al, 3(%edx)
	jmp	L221
	.p2align 4,,10
	.p2align 3
L231:
	movl	120(%ebx), %edx
	testl	%edx, %edx
	je	L256
	movswl	24(%edi), %edx
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	jne	L233
L256:
	andl	$536870912, %eax
	movl	_sprite, %ecx
	testl	%eax, %eax
	jne	L234
	leal	8(%edi), %eax
	movl	%eax, %edx
	movl	%eax, 24(%esp)
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	leal	4(%edi), %eax
	movl	%eax, 28(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	%edi, %eax
	subl	%ecx, %eax
	movl	28(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$288, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	24(%esp), %edx
	movl	$8, 4(%esp)
	movl	%edx, (%esp)
	movl	%edi, %edx
	call	__Z9PlaySoundiPiS_S_i
	xorl	%eax, %eax
	orl	$536870912, 68(%ebx)
	movl	$0, 264(%ebx)
	movw	%ax, 176(%ebx)
L230:
	negl	160(%ebx)
	jmp	L254
	.p2align 4,,10
	.p2align 3
L259:
	movswl	82(%ebx), %eax
	movl	4(%edi), %ecx
	movl	(%edi), %edx
	movl	%eax, 8(%esp)
	movswl	28(%edi), %eax
	movl	%eax, 4(%esp)
	movl	8(%edi), %eax
	movl	%eax, (%esp)
	movl	28(%esp), %eax
	call	__Z12HitBreakWallP10walltypev7iiiss.isra.0
	xorl	%eax, %eax
	movl	$0, 264(%ebx)
	jmp	L211
	.p2align 4,,10
	.p2align 3
L260:
	movzwl	28(%eax), %edx
	movl	%esi, %eax
	andl	$2047, %edx
	call	__Z10WallBouncess
	movl	_User(,%esi,4), %ecx
	movl	$10000, %edx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$10000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$10000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%ecx)
	xorl	%eax, %eax
	jmp	L211
L228:
	movl	$0, 152(%ebx)
	leal	42(%edi), %edx
	movl	$0, 156(%ebx)
	subl	%ecx, %edx
	movl	$-1171354717, %ebx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%edi), %edx
	subl	%ecx, %edx
	orw	$8192, 42(%edi)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$16640, 12(%edi)
	movl	_User(,%esi,4), %eax
	testl	%eax, %eax
	je	L221
	movl	$0, 76(%eax)
	movl	$_s_CaltropsStick, 24(%eax)
	movl	$_s_CaltropsStick, 16(%eax)
	movswl	_s_CaltropsStick, %eax
	movzbl	_picanm+3(%eax,%eax,4), %edx
	movl	%edx, %ecx
	shrb	$6, %cl
	je	L221
	andl	$63, %edx
	movb	%dl, _picanm+3(%eax,%eax,4)
	jmp	L221
	.cfi_endproc
LFE34:
	.p2align 4
	.def	__Z15DoCaltropsSticks;	.scl	3;	.type	32;	.endef
__Z15DoCaltropsSticks:
LFB36:
	.cfi_startproc
	movswl	4(%esp), %edx
	xorl	%ecx, %ecx
	movl	_User(,%edx,4), %eax
	cmpw	$0, 176(%eax)
	sete	%cl
	movw	%cx, 176(%eax)
	je	L263
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L263:
	movl	%edx, 4(%esp)
	jmp	__Z18DoFlamesDamageTests
	.cfi_endproc
LFE36:
	.p2align 4
	.def	__Z16DoRadiationClouds;	.scl	3;	.type	32;	.endef
__Z16DoRadiationClouds:
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
	movl	$-1171354717, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movswl	20(%esp), %edi
	imull	$44, %edi, %ecx
	addl	_sprite, %ecx
	movl	_User(,%edi,4), %ebx
	leal	8(%ecx), %edx
	subl	_sprite, %edx
	movswl	36(%ecx), %ebp
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	subl	%ebp, 8(%ecx)
	movl	152(%ebx), %ebp
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
	addl	%ebp, 4(%ecx)
	cmpw	$0, 82(%ebx)
	jne	L267
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
L267:
	.cfi_restore_state
	movl	%edi, 20(%esp)
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
	.cfi_endproc
LFE37:
	.p2align 4
	.def	__Z11DoCarryFlags;	.scl	3;	.type	32;	.endef
__Z11DoCarryFlags:
LFB38:
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
	subl	$60, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movswl	8(%ebp), %edi
	movl	_sprite, %ecx
	imull	$44, %edi, %eax
	movl	_User(,%edi,4), %ebx
	movl	%ecx, 32(%esp)
	movswl	138(%ebx), %esi
	addl	%ecx, %eax
	movl	%eax, 40(%esp)
	movswl	280(%ebx), %eax
	movl	%eax, 28(%esp)
	movl	_User(,%eax,4), %eax
	movl	%eax, 24(%esp)
	testw	%si, %si
	js	L269
	imull	$44, %esi, %esi
	addl	%ecx, %esi
	movswl	14(%esi), %edx
	movzbl	21(%esi), %ecx
	movswl	_tilesiz+2(,%edx,4), %eax
	movl	%eax, 36(%esp)
	movl	8(%esi), %eax
	testb	$-128, 12(%esi)
	je	L270
	movsbl	_picanm+2(%edx,%edx,4), %edx
	sall	$8, %edx
	movl	%edx, 20(%esp)
	cmpb	$64, %cl
	je	L323
	imull	36(%esp), %ecx
	addl	%ecx, %ecx
	movl	%ecx, 16(%esp)
	addl	20(%esp), %ecx
	movl	%ecx, %edx
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, 36(%esp)
L272:
	movl	16(%esp), %edx
	subl	20(%esp), %edx
	addl	%edx, %eax
L275:
	addl	36(%esp), %eax
	movlps	(%esi), %xmm0
	movl	%edi, (%esp)
	sarl	%eax
	movl	%eax, 52(%esp)
	leal	44(%esp), %eax
	movl	%eax, 4(%esp)
	movlps	%xmm0, 44(%esp)
	call	_setspritez
	movl	40(%esp), %eax
	movswl	28(%esi), %ecx
	leal	28(%eax), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	addl	$1536, %ecx
	mull	%edx
	movl	40(%esp), %eax
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%eax)
L269:
	movl	68(%ebx), %eax
	testb	$8, %al
	je	L276
	movzwl	176(%ebx), %esi
	movzwl	178(%ebx), %eax
	leal	1(%esi), %edx
	movw	%dx, 176(%ebx)
	cmpw	$1, %dx
	jle	L324
	xorl	%edx, %edx
	movw	%dx, 176(%ebx)
L304:
	cmpw	$98, %ax
	jle	L282
	movl	$99, %edi
	movl	$48, %eax
	movw	%di, 178(%ebx)
	movw	%ax, 216(%ebx)
L293:
	movl	40(%esp), %esi
	movl	$-1171354717, %ecx
	leal	8(%esi), %edi
	movl	%edi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	40(%esp), %eax
	subl	_sprite, %eax
	mull	%ecx
	leal	4(%esi), %ecx
	movl	$26, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	40(%esp), %edx
	movl	%edi, (%esp)
	movl	$8, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	addw	$1, 178(%ebx)
	leal	-12(%ebp), %esp
	xorl	%eax, %eax
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
L276:
	.cfi_restore_state
	movzwl	216(%ebx), %esi
	leal	-12(%esi), %edx
	testw	%dx, %dx
	jg	L325
	orl	$8, %eax
	movl	$3600, %edx
	xorl	%ecx, %ecx
	movl	%eax, 68(%ebx)
	movzwl	176(%ebx), %eax
	movw	%dx, 216(%ebx)
	addl	$1, %eax
	movw	%cx, 178(%ebx)
	movw	%ax, 176(%ebx)
	cmpw	$1, %ax
	jle	L326
	xorl	%ecx, %ecx
	movw	%cx, 176(%ebx)
L282:
	movswl	138(%ebx), %eax
	imull	$44, %eax, %esi
	movl	_User(,%eax,4), %eax
	addl	_sprite, %esi
	testl	%eax, %eax
	je	L286
	cmpw	$0, 84(%eax)
	jle	L286
L287:
	movswl	24(%esi), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	cmpw	$9000, 36(%eax)
	je	L288
L322:
	movzwl	178(%ebx), %eax
	jmp	L284
	.p2align 4,,10
	.p2align 3
L270:
	cmpb	$64, %cl
	je	L327
	imull	36(%esp), %ecx
	leal	0(,%ecx,4), %edx
L274:
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, 36(%esp)
	jmp	L275
	.p2align 4,,10
	.p2align 3
L325:
	movw	%dx, 216(%ebx)
L309:
	leal	-12(%ebp), %esp
	xorl	%eax, %eax
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
L324:
	.cfi_restore_state
	testw	%dx, %dx
	je	L304
L284:
	movzwl	216(%ebx), %esi
	leal	-12(%esi), %edx
	movw	%dx, 216(%ebx)
	cmpw	$6, %ax
	jg	L294
	testw	%ax, %ax
	js	L309
	cmpw	$6, %ax
	ja	L295
	jmp	*L297(,%eax,4)
	.section .rdata,"dr"
	.align 4
L297:
	.long	L295
	.long	L302
	.long	L301
	.long	L300
	.long	L299
	.long	L298
	.long	L296
	.text
	.p2align 4,,10
	.p2align 3
L326:
	testw	%ax, %ax
	je	L282
	movl	$3588, %eax
	movw	%ax, 216(%ebx)
	jmp	L293
	.p2align 4,,10
	.p2align 3
L327:
	movl	36(%esp), %edx
	sall	$8, %edx
	jmp	L274
	.p2align 4,,10
	.p2align 3
L323:
	movl	36(%esp), %edx
	movl	20(%esp), %ecx
	sall	$7, %edx
	movl	%edx, 16(%esp)
	addl	%ecx, %edx
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, 36(%esp)
	jmp	L272
	.p2align 4,,10
	.p2align 3
L298:
	cmpw	$359, %dx
	jg	L309
	jmp	L293
	.p2align 4,,10
	.p2align 3
L299:
	cmpw	$479, %dx
	jg	L309
	jmp	L293
	.p2align 4,,10
	.p2align 3
L300:
	cmpw	$599, %dx
	jg	L309
	jmp	L293
	.p2align 4,,10
	.p2align 3
L301:
	cmpw	$1199, %dx
	jg	L309
	jmp	L293
	.p2align 4,,10
	.p2align 3
L302:
	cmpw	$2399, %dx
	jg	L309
	jmp	L293
	.p2align 4,,10
	.p2align 3
L296:
	cmpw	$239, %dx
	jg	L309
	movl	40(%esp), %esi
	movl	$-1171354717, %ecx
	leal	8(%esi), %edi
	movl	%edi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	40(%esp), %eax
	subl	_sprite, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	leal	4(%esi), %ecx
	movl	$26, %eax
	movl	$99, %esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	40(%esp), %edx
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movw	%si, 178(%ebx)
	jmp	L309
	.p2align 4,,10
	.p2align 3
L294:
	cmpw	$99, %ax
	je	L293
	cmpw	$100, %ax
	jne	L309
	movl	%edi, (%esp)
	call	__Z15SpawnGrenadeExps
	movl	%edi, 8(%ebp)
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
	jmp	__Z10SetSuicides
	.p2align 4,,10
	.p2align 3
L286:
	.cfi_restore_state
	movl	$99, %eax
	movw	%ax, 178(%ebx)
	movl	$60, %eax
	movw	%ax, 216(%ebx)
	jmp	L287
	.p2align 4,,10
	.p2align 3
L288:
	movzbl	17(%esi), %ecx
	movswl	34(%eax), %edx
	movzbl	%cl, %eax
	cmpl	%eax, %edx
	jne	L322
	movl	40(%esp), %eax
	cmpb	17(%eax), %cl
	je	L322
	imull	$44, 28(%esp), %eax
	movl	32(%esp), %ecx
	addl	%eax, %ecx
	movl	%ecx, 36(%esp)
	cmpw	$0, 280(%ebx)
	js	L291
	movswl	38(%ecx), %eax
	testw	%ax, %ax
	jne	L328
L291:
	movl	36(%esp), %eax
	testb	$64, 42(%eax)
	je	L329
L292:
	movl	%edi, (%esp)
	call	__Z10SetSuicides
	jmp	L322
L295:
	cmpw	$3599, %dx
	jg	L309
	jmp	L293
L329:
	leal	8(%esi), %eax
	movl	$-1171354717, %ecx
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%eax, 28(%esp)
	movl	%edx, %eax
	mull	%ecx
	leal	4(%esi), %eax
	movl	%eax, 32(%esp)
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
	movl	32(%esp), %ecx
	movl	$55, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	28(%esp), %edx
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%esi, %edx
	call	__Z9PlaySoundiPiS_S_i
	movzbl	17(%esi), %eax
	call	__Z11DoFlagScores
	movl	36(%esp), %esi
	cmpw	$0, 32(%esi)
	jle	L292
	movl	24(%esp), %ecx
	movzbl	288(%ecx), %eax
	movb	%al, 32(%esp)
	addl	$1, %eax
	movb	%al, 288(%ecx)
	movswl	32(%esi), %edx
	movzbl	%al, %eax
	cmpl	%edx, %eax
	jl	L292
	movb	$0, 288(%ecx)
	movl	$1, 8(%esp)
	movswl	34(%esi), %eax
	movl	%eax, 4(%esp)
	xorl	%eax, %eax
	movl	%eax, (%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	jmp	L292
L328:
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	jmp	L291
	.cfi_endproc
LFE38:
	.p2align 4
	.def	__Z16DoCarryFlagNoDets;	.scl	3;	.type	32;	.endef
__Z16DoCarryFlagNoDets:
LFB39:
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
	subl	$60, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movswl	8(%ebp), %esi
	movl	_sprite, %edi
	imull	$44, %esi, %eax
	movl	%esi, 32(%esp)
	movl	_User(,%esi,4), %esi
	movl	%edi, 36(%esp)
	movswl	280(%esi), %ecx
	movl	%esi, 20(%esp)
	addl	%edi, %eax
	movl	%eax, 40(%esp)
	movswl	138(%esi), %eax
	movl	_User(,%ecx,4), %edi
	movl	%ecx, 12(%esp)
	movl	%eax, 24(%esp)
	movl	%eax, %ebx
	movl	_User(,%eax,4), %eax
	movl	%edi, 16(%esp)
	movl	%eax, 28(%esp)
	testw	%cx, %cx
	js	L331
	movl	$3600, %ebx
	movw	%bx, 216(%edi)
	movswl	138(%esi), %ebx
L331:
	testw	%bx, %bx
	js	L332
	imull	$44, %ebx, %ebx
	addl	36(%esp), %ebx
	movswl	14(%ebx), %edi
	movl	8(%ebx), %eax
	movzbl	21(%ebx), %ecx
	movswl	_tilesiz+2(,%edi,4), %edx
	testb	$-128, 12(%ebx)
	je	L333
	movsbl	_picanm+2(%edi,%edi,4), %edi
	sall	$8, %edi
	cmpb	$64, %cl
	je	L355
	imull	%edx, %ecx
	leal	(%ecx,%ecx), %edx
	movl	%eax, %ecx
	leal	(%edx,%edi), %esi
	subl	%esi, %ecx
L335:
	subl	%edi, %edx
	addl	%edx, %eax
L338:
	addl	%ecx, %eax
	movlps	(%ebx), %xmm0
	sarl	%eax
	movl	%eax, 52(%esp)
	leal	44(%esp), %eax
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax
	movlps	%xmm0, 44(%esp)
	movl	%eax, (%esp)
	call	_setspritez
	movl	40(%esp), %eax
	movl	_sprite, %edi
	movswl	28(%ebx), %ecx
	leal	28(%eax), %edx
	subl	%edi, %edx
	addl	$1536, %ecx
	movl	%edx, %eax
	movl	$-1171354717, %edx
	andl	$2047, %ecx
	mull	%edx
	movl	40(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%eax)
	movswl	14(%ebx), %eax
	movzbl	21(%ebx), %edx
	movl	8(%ebx), %ecx
	movswl	_tilesiz+2(,%eax,4), %eax
	cmpb	$64, %dl
	je	L356
	movzbl	%dl, %ebx
	imull	%eax, %ebx
	addl	%ebx, %ebx
L340:
	movl	40(%esp), %eax
	subl	%ebx, %ecx
	leal	8(%eax), %edx
	movl	$-1171354717, %eax
	subl	%edi, %edx
	mull	%edx
	movl	40(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, 8(%eax)
L332:
	movl	28(%esp), %eax
	testl	%eax, %eax
	je	L341
	cmpw	$0, 84(%eax)
	jle	L341
	imull	$44, 24(%esp), %ebx
	addl	36(%esp), %ebx
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %edx
	cmpw	$9000, 36(%edx)
	je	L357
L344:
	leal	-12(%ebp), %esp
	xorl	%eax, %eax
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
L333:
	.cfi_restore_state
	cmpb	$64, %cl
	je	L358
	imull	%edx, %ecx
	leal	0(,%ecx,4), %edx
L337:
	movl	%eax, %ecx
	subl	%edx, %ecx
	jmp	L338
	.p2align 4,,10
	.p2align 3
L357:
	movzbl	17(%ebx), %eax
	movswl	34(%edx), %ecx
	movzbl	%al, %edx
	cmpl	%edx, %ecx
	jne	L344
	movl	40(%esp), %esi
	cmpb	17(%esi), %al
	je	L344
	imull	$44, 12(%esp), %eax
	movl	36(%esp), %edi
	addl	%eax, %edi
	movl	20(%esp), %eax
	cmpw	$0, 280(%eax)
	js	L345
	movswl	38(%edi), %eax
	testw	%ax, %ax
	jne	L359
L346:
	movl	16(%esp), %eax
	xorl	%edx, %edx
	movw	%dx, 216(%eax)
L345:
	testb	$64, 42(%edi)
	jne	L343
	leal	8(%ebx), %eax
	movl	$-1171354717, %esi
	leal	4(%ebx), %ecx
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%eax, 40(%esp)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%esi
	movl	$55, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	40(%esp), %edx
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ebx, %edx
	call	__Z9PlaySoundiPiS_S_i
	movzbl	17(%ebx), %eax
	call	__Z11DoFlagScores
	cmpw	$0, 32(%edi)
	jle	L343
	movl	16(%esp), %esi
	movzbl	288(%esi), %eax
	movb	%al, 40(%esp)
	addl	$1, %eax
	movb	%al, 288(%esi)
	movswl	32(%edi), %edx
	movzbl	%al, %eax
	cmpl	%edx, %eax
	jl	L343
	movb	$0, 288(%esi)
	movl	$1, 8(%esp)
	movswl	34(%edi), %eax
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	jmp	L343
	.p2align 4,,10
	.p2align 3
L341:
	movl	20(%esp), %eax
	cmpw	$0, 280(%eax)
	js	L343
	movl	16(%esp), %eax
	xorl	%ecx, %ecx
	movw	%cx, 216(%eax)
L343:
	movl	32(%esp), %eax
	movl	%eax, 8(%ebp)
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
	jmp	__Z10SetSuicides
	.p2align 4,,10
	.p2align 3
L358:
	.cfi_restore_state
	sall	$8, %edx
	jmp	L337
	.p2align 4,,10
	.p2align 3
L355:
	sall	$7, %edx
	movl	%eax, %ecx
	leal	(%edx,%edi), %esi
	subl	%esi, %ecx
	jmp	L335
	.p2align 4,,10
	.p2align 3
L356:
	sall	$7, %eax
	movl	%eax, %ebx
	jmp	L340
L359:
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	jmp	L346
	.cfi_endproc
LFE39:
	.p2align 4
	.globl	__Z6DoFlags
	.def	__Z6DoFlags;	.scl	2;	.type	32;	.endef
__Z6DoFlags:
LFB40:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$_StatDamageList, %ecx
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
	movl	_sprite, %ebp
	movswl	88(%esp), %eax
	imull	$44, %eax, %edx
	movl	%eax, 44(%esp)
	movl	_User(,%eax,4), %eax
	movl	%eax, 48(%esp)
	movl	%edx, 52(%esp)
	addl	%edx, %ebp
L367:
	movswl	(%ecx), %eax
	movzwl	_headspritestat(%eax,%eax), %esi
	cmpw	$-1, %si
	je	L362
	movl	%ecx, 40(%esp)
	movl	%ebp, %edi
	.p2align 4
	.p2align 3
L361:
	movswl	%si, %eax
	movl	(%edi), %ecx
	movw	%si, 34(%esp)
	imull	$44, %eax, %ebx
	addl	_sprite, %ebx
	movl	%eax, 36(%esp)
	movzwl	_nextspritestat(%eax,%eax), %esi
	movl	(%ebx), %eax
	movl	%ecx, %edx
	movl	4(%ebx), %ebp
	subl	%eax, %edx
	movl	%eax, 20(%esp)
	movl	%edx, %eax
	movl	%ebp, 24(%esp)
	negl	%eax
	cmovs	%edx, %eax
	movl	4(%edi), %edx
	movl	%edx, 28(%esp)
	subl	%ebp, %edx
	movl	%edx, %ebp
	negl	%ebp
	cmovns	%ebp, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %ebp
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ebp
	cmpl	$1000, %ebp
	jg	L363
	cmpl	%ebx, %edi
	je	L363
	testb	$1, 12(%ebx)
	je	L363
	testb	$8, 43(%ebx)
	je	L363
	movswl	24(%edi), %eax
	movl	8(%ebx), %edx
	movl	%eax, 16(%esp)
	movl	8(%edi), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, %ecx
	movl	24(%esp), %edx
	movl	%eax, 12(%esp)
	movl	28(%esp), %eax
	movl	%eax, 8(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	movl	20(%esp), %eax
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	je	L363
	movl	8(%edi), %edx
	movl	4(%edi), %ecx
	movl	(%edi), %eax
	subl	8(%ebx), %edx
	subl	4(%ebx), %ecx
	subl	(%ebx), %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 56(%esp)
	movl	%eax, %ebx
	movl	%ecx, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 60(%esp)
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$4, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 64(%esp)
	cmpl	%ecx, %ebx
	jge	L364
	leal	56(%esp), %eax
	leal	60(%esp), %ebx
/APP
 # 128 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	56(%esp), %ebx
	movl	64(%esp), %eax
L364:
	cmpl	%eax, %ebx
	jge	L365
	leal	56(%esp), %eax
	leal	64(%esp), %ebx
/APP
 # 131 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	64(%esp), %eax
	movl	56(%esp), %ebx
L365:
	movl	%ebx, %edx
	addl	60(%esp), %eax
	sarl	$4, %edx
	subl	%edx, %ebx
	movl	%eax, %edx
	sarl	$3, %eax
	sarl	$2, %edx
	addl	%edx, %ebx
	addl	%eax, %ebx
	cmpl	$1000, %ebx
	jg	L363
	movswl	34(%esp), %ecx
	movl	52(%esp), %edx
	movl	$-1171354717, %esi
	movl	%edi, %ebp
	movl	_sprite, %eax
	movl	36(%esp), %edi
	imull	$44, %ecx, %ecx
	leal	(%eax,%edx), %ebx
	addl	%eax, %ecx
	leal	12(%edx), %eax
	mull	%esi
	movl	%ecx, 20(%esp)
	movl	44(%esp), %ecx
	xorl	%eax, %eax
	movl	44(%esp), %esi
	movl	_User(,%ecx,4), %ecx
	shrl	$5, %edx
	orl	$536870912, 68(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	movl	$10, %edx
	orw	$257, 12(%ebx)
	movw	%ax, 176(%ecx)
	movl	%esi, %eax
	call	__Z18change_sprite_statss
	movl	_User(,%esi,4), %eax
	cmpw	$1, 40(%ebx)
	je	L409
	testl	%eax, %eax
	je	L370
	movl	$0, 76(%eax)
	movl	$_s_CarryFlag, 24(%eax)
	movl	$_s_CarryFlag, 16(%eax)
	movswl	_s_CarryFlag, %eax
L408:
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L370
	andl	$63, %eax
	movb	%al, 3(%edx)
L370:
	movl	20(%esp), %eax
	testb	$8, 43(%eax)
	jne	L410
L383:
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
L363:
	.cfi_restore_state
	cmpw	$-1, %si
	jne	L361
	movl	40(%esp), %ecx
	movl	%edi, %ebp
L362:
	addl	$2, %ecx
	movl	$_StatDamageList+40, %eax
	cmpl	%ecx, %eax
	jne	L367
	jmp	L383
	.p2align 4,,10
	.p2align 3
L409:
	testl	%eax, %eax
	je	L370
	movl	$0, 76(%eax)
	movl	$_s_CarryFlagNoDet, 24(%eax)
	movl	$_s_CarryFlagNoDet, 16(%eax)
	movswl	_s_CarryFlagNoDet, %eax
	jmp	L408
	.p2align 4,,10
	.p2align 3
L410:
	movl	$-1171354717, %eax
	leal	12(%ebp), %edx
	subl	_sprite, %edx
	mull	%edx
	movl	44(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebp)
	movl	_User(,%eax,4), %edx
	movl	_User(,%edi,4), %eax
	movl	20(%esp), %edi
	orl	$1048576, 72(%eax)
	movzwl	34(%esp), %eax
	movw	%ax, 138(%edx)
	movswl	14(%edi), %edx
	movzbl	21(%edi), %ecx
	movl	8(%edi), %eax
	movswl	_tilesiz+2(,%edx,4), %edx
	cmpb	$64, %cl
	je	L411
	imull	%edx, %ecx
	leal	(%ecx,%ecx), %edx
L372:
	movl	48(%esp), %edi
	subl	%edx, %eax
	movl	%eax, 256(%edi)
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
L411:
	.cfi_restore_state
	sall	$7, %edx
	jmp	L372
	.cfi_endproc
LFE40:
	.p2align 4
	.globl	__Z9SetupLavas
	.def	__Z9SetupLavas;	.scl	2;	.type	32;	.endef
__Z9SetupLavas:
LFB48:
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
	je	L413
	movl	_User(,%edi,4), %esi
	movl	%esi, %eax
L414:
	testl	%eax, %eax
	je	L415
	movl	$0, 76(%eax)
	movl	$_s_LavaRun, 24(%eax)
	movl	$_s_LavaRun, 16(%eax)
	movswl	_s_LavaRun, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L415
	andl	$63, %eax
	movb	%al, 3(%edx)
L415:
	movl	$_LavaAttrib, 48(%esi)
	movl	%edi, (%esp)
	movl	$1, 4(%esp)
	call	__Z15DoActorSetSpeedsh
	movl	$_s_LavaDie, 28(%esi)
	movl	$_sg_LavaRun, 20(%esi)
	movl	%edi, (%esp)
	movl	$_LavaPersonality, 8(%esp)
	movl	$_LavaActionSet, 4(%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	movl	_sprite, %edi
	leal	21(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%edi, %edx
	movb	$110, 21(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%edi, %edx
	movb	$110, 20(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-128, 18(%ebx)
	orl	$16777232, 68(%esi)
	movl	8(%ebx), %eax
	movl	%eax, 108(%esi)
	addl	$12, %esp
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
L413:
	.cfi_restore_state
	movl	$_s_LavaRun, %ecx
	movl	$2355, %edx
	movl	%edi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%eax, _User(,%edi,4)
	movl	%eax, %esi
	movl	$100, %eax
	movw	%ax, 84(%esi)
	movl	_User(,%edi,4), %eax
	jmp	L414
	.cfi_endproc
LFE48:
	.p2align 4
	.globl	__Z8NullLavas
	.def	__Z8NullLavas;	.scl	2;	.type	32;	.endef
__Z8NullLavas:
LFB49:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %ebx
	movl	_User(,%ebx,4), %eax
	testb	$32, 70(%eax)
	jne	L429
L424:
	movl	%ebx, (%esp)
	call	__Z16KeepActorOnFloors
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
L429:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	__Z12DoActorSlides
	jmp	L424
	.cfi_endproc
LFE49:
	.p2align 4
	.globl	__Z10DoLavaMoves
	.def	__Z10DoLavaMoves;	.scl	2;	.type	32;	.endef
__Z10DoLavaMoves:
LFB51:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	%eax, 4(%esp)
	jmp	__Z10DoGoroMoves
	.cfi_endproc
LFE51:
	.p2align 4
	.def	__ZL17ApplyModeSettingsv;	.scl	3;	.type	32;	.endef
__ZL17ApplyModeSettingsv:
LFB52:
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
	subl	$40, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	_ydim, %eax
	movl	_fullscreen, %ebx
	movswl	_buttonsettings+60, %edi
	movl	_xdim, %esi
	movl	%eax, 36(%esp)
	movl	_bpp, %eax
	movl	%ebx, 28(%esp)
	movl	%eax, 32(%esp)
	movl	_slidersettings+52, %eax
	movl	%edi, 16(%esp)
	movl	__ZL16validresolutions.lto_priv.0(,%eax,8), %edx
	movl	__ZL16validresolutions.lto_priv.0+4(,%eax,8), %ecx
	movl	_slidersettings+56, %eax
	movl	__ZL9validbpps.lto_priv.0(,%eax,4), %ebx
	movl	%edi, %eax
	cmpl	%edx, %esi
	jne	L432
	cmpl	%ecx, 36(%esp)
	jne	L432
	cmpl	%ebx, 32(%esp)
	jne	L432
	cmpl	%edi, 28(%esp)
	jne	L432
	leal	-12(%ebp), %esp
	xorl	%eax, %eax
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
L432:
	.cfi_restore_state
	movl	_upscalefactor, %edi
	movl	%ebx, (%esp)
	movzbl	%al, %eax
	movl	%ecx, 20(%esp)
	movl	%edi, 4(%esp)
	movl	%edx, 24(%esp)
	call	_videoSetGameMode
	movl	24(%esp), %edx
	movl	20(%esp), %ecx
	testl	%eax, %eax
	je	L435
	movl	_upscalefactor, %edx
	movl	32(%esp), %edi
	movzbl	28(%esp), %eax
	movl	36(%esp), %ecx
	movl	%edx, 4(%esp)
	movl	%esi, %edx
	movl	%edi, (%esp)
	call	_videoSetGameMode
	leal	-12(%ebp), %esp
	xorl	%eax, %eax
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
L435:
	.cfi_restore_state
	movl	%ecx, 36(%esp)
	movss	36(%esp), %xmm0
	movl	$1717986919, %eax
	movl	%ebx, 36(%esp)
	movl	_xdim, %ebx
	movss	36(%esp), %xmm2
	movss	16(%esp), %xmm1
	movl	%edx, 36(%esp)
	sall	$16, %ebx
	movl	_ydim, %ecx
	movss	36(%esp), %xmm3
	imull	%ebx
	movl	%ebx, _f_xdim
	sarl	$31, %ebx
	movl	$1374389535, %eax
	sall	$16, %ecx
	unpcklps	%xmm2, %xmm0
	unpcklps	%xmm3, %xmm1
	movl	%ecx, _f_ydim
	movlhps	%xmm0, %xmm1
	sarl	$7, %edx
	movups	%xmm1, _ud_setup+8
	subl	%ebx, %edx
	movl	%edx, _x_aspect_mul
	imull	%ecx
	sarl	$31, %ecx
	imull	$24124, _myconnectindex, %eax
	sarl	$6, %edx
	subl	%ecx, %edx
	addl	$_Player, %eax
	movl	%edx, _y_aspect_mul
	call	__Z15SetRedrawScreenP12PLAYERstruct
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
LFE52:
	.p2align 4
	.def	__ZL27MNU_SetMouseButtonFunctionsP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__ZL27MNU_SetMouseButtonFunctionsP9MENU_ITEM:
LFB54:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %eax
	movl	40(%eax), %ecx
	movl	$715827883, %eax
	imull	%ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	leal	(%edx,%edx,2), %eax
	movl	%ecx, %edx
	addl	%eax, %eax
	subl	%eax, %edx
	cmpl	$5, %ecx
	jle	L447
	imull	$30, %ecx, %ecx
	movl	_MouseButtonsClicked(,%edx,4), %eax
	leal	__ZL20MouseButtonFunctions(%ecx), %ebx
	testl	%eax, %eax
	js	L460
L449:
	xorl	%edx, %edx
	cmpl	$53, %eax
	ja	L451
	movl	_gamefunctions(,%eax,4), %edx
L451:
	movl	%edx, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcpy
	movl	16(%esp), %eax
	imull	$30, 40(%eax), %edx
	leal	__ZL20MouseButtonFunctions(%edx), %eax
	movzbl	__ZL20MouseButtonFunctions(%edx), %edx
	testb	%dl, %dl
	je	L450
	.p2align 5
	.p2align 4
	.p2align 3
L453:
	cmpb	$95, %dl
	jne	L452
	movb	$32, (%eax)
L452:
	movzbl	1(%eax), %edx
	addl	$1, %eax
	testb	%dl, %dl
	jne	L453
L450:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L447:
	.cfi_restore_state
	imull	$30, %ecx, %ecx
	movl	_MouseButtons(,%edx,4), %eax
	leal	__ZL20MouseButtonFunctions(%ecx), %ebx
	testl	%eax, %eax
	jns	L449
L460:
	movl	$2957344, __ZL20MouseButtonFunctions(%ecx)
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE54:
	.p2align 4
	.def	__ZL30MNU_SetJoystickButtonFunctionsP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__ZL30MNU_SetJoystickButtonFunctionsP9MENU_ITEM:
LFB56:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	movl	20(%esp), %eax
	movl	40(%eax), %ecx
	movl	%ecx, %edx
	andl	$127, %ecx
	andl	$128, %edx
	movl	%edx, %eax
	shrb	$7, %al
	testl	%edx, %edx
	je	L462
	movl	_JoystickButtonsClicked(,%ecx,4), %edx
L463:
	movzbl	%al, %esi
	sall	$5, %esi
	addl	%ecx, %esi
	imull	$30, %esi, %esi
	leal	__ZL23JoystickButtonFunctions(%esi), %ebx
	testl	%edx, %edx
	js	L475
	xorl	%eax, %eax
	cmpl	$53, %edx
	ja	L466
	movl	_gamefunctions(,%edx,4), %eax
L466:
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcpy
	movzbl	__ZL23JoystickButtonFunctions(%esi), %eax
	testb	%al, %al
	je	L465
	.p2align 5
	.p2align 4
	.p2align 3
L468:
	cmpb	$95, %al
	jne	L467
	movb	$32, (%ebx)
L467:
	movzbl	1(%ebx), %eax
	addl	$1, %ebx
	testb	%al, %al
	jne	L468
L465:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L462:
	.cfi_restore_state
	movl	_JoystickButtons(,%ecx,4), %edx
	jmp	L463
	.p2align 4,,10
	.p2align 3
L475:
	movl	$2957344, __ZL23JoystickButtonFunctions(%esi)
	addl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE56:
	.p2align 4
	.def	__ZL28MNU_SetJoystickAxisFunctionsP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__ZL28MNU_SetJoystickAxisFunctionsP9MENU_ITEM:
LFB57:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	__ZL16JoystickAxisPage.lto_priv.0, %edx
	movl	16(%esp), %ebx
	movl	40(%ebx), %eax
	leal	(%eax,%edx,2), %edx
	movl	_JoystickDigitalAxes(,%edx,4), %edx
	imull	$30, %eax, %eax
	testl	%edx, %edx
	js	L488
	leal	__ZL21JoystickAxisFunctions(%eax), %ecx
	xorl	%eax, %eax
	cmpl	$53, %edx
	ja	L479
	movl	_gamefunctions(,%edx,4), %eax
L479:
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_strcpy
	imull	$30, 40(%ebx), %edx
	leal	__ZL21JoystickAxisFunctions(%edx), %eax
	movzbl	__ZL21JoystickAxisFunctions(%edx), %edx
	testb	%dl, %dl
	je	L478
	.p2align 5
	.p2align 4
	.p2align 3
L481:
	cmpb	$95, %dl
	jne	L480
	movb	$32, (%eax)
L480:
	movzbl	1(%eax), %edx
	addl	$1, %eax
	testb	%dl, %dl
	jne	L481
L478:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L488:
	.cfi_restore_state
	movl	$2957344, __ZL21JoystickAxisFunctions(%eax)
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE57:
	.section .rdata,"dr"
LC0:
	.ascii " Up\0"
LC1:
	.ascii " Right\0"
LC2:
	.ascii " Down\0"
LC3:
	.ascii " Left\0"
LC4:
	.ascii "Next...\0"
LC5:
	.ascii "Button %d\0"
LC6:
	.ascii "Hat %d\0"
LC7:
	.ascii "Page %d / %d\0"
	.text
	.p2align 4
	.def	__ZL29MNU_JoystickButtonsInitialiseP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__ZL29MNU_JoystickButtonsInitialiseP9MENU_ITEM:
LFB58:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%eax, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$144, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
L490:
	movl	$0, 88(%esp,%eax)
	movl	$0, 92(%esp,%eax)
	movl	$0, 96(%esp,%eax)
	movl	$0, 100(%esp,%eax)
	addl	$16, %eax
	cmpl	$48, %eax
	jb	L490
	movl	$LC3, 60(%esp)
	movss	60(%esp), %xmm0
	movss	LC10, %xmm1
	movl	$LC1, 60(%esp)
	movss	60(%esp), %xmm2
	movl	_joybuttonssetupgroup+12, %edi
	movl	$0, 88(%esp,%eax)
	unpcklps	%xmm0, %xmm1
	movl	$0, 92(%esp,%eax)
	movss	LC11, %xmm0
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 64(%esp)
	testl	%edi, %edi
	je	L514
L492:
	leal	-12(%ebp), %esp
	movl	$1, %eax
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
L514:
	.cfi_restore_state
	movl	_joystick+24, %edx
	movl	$__ZL26MNU_JoystickButtonNextPagev, %eax
	movl	$__ZL30MNU_SetJoystickButtonFunctionsP9MENU_ITEM, 60(%esp)
	movl	$_joybuttons_i, %edi
	movss	60(%esp), %xmm0
	movd	%eax, %mm0
	movss	_joybuttonssetupgroup+12, %xmm7
	movl	$LC4, %eax
	movl	%edx, 56(%esp)
	movd	%eax, %mm1
	leal	(%edx,%edx), %ebx
	movl	_joystick+28, %eax
	movl	$0, 52(%esp)
	unpcklps	%xmm0, %xmm7
	movq	%mm0, 16(%esp)
	movq	%mm1, 24(%esp)
	movl	$_joybuttons_i, _joybuttonssetupgroup+12
	movl	$0, 48(%esp)
	movl	$0, 60(%esp)
	movlps	%xmm7, 40(%esp)
L493:
	testl	%eax, %eax
	jle	L515
L504:
	leal	4(%ebx), %eax
	cmpl	60(%esp), %eax
	jle	L492
	cmpl	60(%esp), %ebx
	jg	L505
	movl	52(%esp), %esi
	movl	60(%esp), %edx
	movl	$0, 8(%esp)
	addl	$112, %edi
	movl	$LC6, 4(%esp)
	leal	(%esi,%esi,4), %eax
	addl	$1, %esi
	subl	%ebx, %edx
	movl	$__ZZ10joyGetNameE3tmp.lto_priv.0, (%esp)
	movl	%esi, 52(%esp)
	movl	56(%esp), %esi
	leal	30(%eax,%eax), %ecx
	movl	%ecx, 36(%esp)
	addl	%edx, %esi
	movl	%edx, 56(%esp)
	call	___mingw_sprintf
	movl	%esi, %ebx
	movl	$__ZZ10joyGetNameE3tmp.lto_priv.0, 4(%esp)
	sall	$6, %ebx
	addl	$__ZL19JoystickButtonNames, %ebx
	movl	%ebx, (%esp)
	call	_strcpy
	movl	56(%esp), %edx
	movl	64(%esp,%edx,4), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_strcat
	imull	$30, %esi, %eax
	movl	36(%esp), %ecx
	movl	%ebx, -92(%edi)
	movlps	40(%esp), %xmm2
	movl	$1, %ebx
	movl	$5, -112(%edi)
	movl	$1, -108(%edi)
	addl	$__ZL23JoystickButtonFunctions, %eax
	movl	$0, -104(%edi)
	movl	%eax, -36(%edi)
	movl	$1, %eax
	movw	%ax, -20(%edi)
	movl	$0, -100(%edi)
	movb	$0, -96(%edi)
	movl	$_joybuttonsgroup, -88(%edi)
	movl	$30, -84(%edi)
	movl	%ecx, -80(%edi)
	movw	%bx, -76(%edi)
	movb	$2, -74(%edi)
	movl	%esi, -72(%edi)
	movl	$0, -68(%edi)
	movl	$0, -64(%edi)
	movl	$__ZL29MNU_JoystickButtonPostProcessP9MENU_ITEM.lto_priv.0, -60(%edi)
	movl	$1, -56(%edi)
	movl	$1, -52(%edi)
	movl	$0, -48(%edi)
	movl	$0, -44(%edi)
	movb	$0, -40(%edi)
	movl	$0, -32(%edi)
	movl	$150, -28(%edi)
	movl	%ecx, -24(%edi)
	movb	$2, -18(%edi)
	movl	%esi, -16(%edi)
	movlps	%xmm2, -12(%edi)
	movl	$0, -4(%edi)
	addl	$1, 60(%esp)
	movl	_joystick+24, %eax
	movl	%eax, 56(%esp)
L501:
	movl	_joystick+28, %eax
	movl	56(%esp), %ecx
	xorl	%edx, %edx
	testl	%eax, %eax
	leal	(%ecx,%ecx), %ebx
	setg	%dl
	leal	(%ebx,%edx,4), %ecx
	cmpl	$12, 52(%esp)
	je	L502
	cmpl	%ecx, 60(%esp)
	jne	L493
L502:
	movl	48(%esp), %eax
	movl	$LC7, 4(%esp)
	leal	1(%eax), %esi
	sall	$6, %eax
	leal	__ZL22JoystickButtonPageName(%eax), %ebx
	movl	$715827883, %eax
	movl	%esi, 8(%esp)
	imull	%ecx
	sarl	$31, %ecx
	movl	%ebx, (%esp)
	sarl	%edx
	subl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, 12(%esp)
	call	_sprintf
	movl	$1, %eax
	movl	%ebx, 20(%edi)
	movlps	LC8, %xmm3
	movw	%ax, 36(%edi)
	movlps	24(%esp), %xmm4
	movl	$1, %edx
	movlps	LC9, %xmm5
	movlps	16(%esp), %xmm6
	movl	$1, (%edi)
	movl	88(%esp), %eax
	movl	$1, 4(%edi)
	movl	$0, 8(%edi)
	movl	$0, 12(%edi)
	movb	$0, 16(%edi)
	movl	$0, 24(%edi)
	movb	$2, 38(%edi)
	movl	$0, 40(%edi)
	movl	$0, 44(%edi)
	movl	$0, 48(%edi)
	movl	$0, 52(%edi)
	movl	$4, 56(%edi)
	movl	$1, 60(%edi)
	movl	$0, 64(%edi)
	movl	$0, 68(%edi)
	movb	$0, 72(%edi)
	movw	%dx, 92(%edi)
	movb	$2, 94(%edi)
	movl	$0, 96(%edi)
	movl	$0, 108(%edi)
	movl	%eax, 112(%edi)
	movlps	%xmm3, 28(%edi)
	movlps	%xmm4, 76(%edi)
	movlps	%xmm5, 84(%edi)
	movlps	%xmm6, 100(%edi)
	movl	92(%esp), %eax
	movl	_joystick+24, %ecx
	movl	%esi, 48(%esp)
	movl	%eax, 116(%edi)
	movl	96(%esp), %eax
	leal	(%ecx,%ecx), %ebx
	movl	%ecx, 56(%esp)
	movl	%eax, 120(%edi)
	movl	100(%esp), %eax
	movl	$0, 52(%esp)
	movl	%eax, 124(%edi)
	movl	104(%esp), %eax
	movl	%eax, 128(%edi)
	movl	108(%esp), %eax
	movl	%eax, 132(%edi)
	movl	112(%esp), %eax
	movl	%eax, 136(%edi)
	movl	116(%esp), %eax
	movl	%eax, 140(%edi)
	movl	120(%esp), %eax
	movl	%eax, 144(%edi)
	movl	124(%esp), %eax
	movl	%eax, 148(%edi)
	movl	128(%esp), %eax
	movl	%eax, 152(%edi)
	movl	132(%esp), %eax
	movl	%eax, 156(%edi)
	movl	136(%esp), %eax
	movl	%eax, 160(%edi)
	movl	140(%esp), %eax
	movl	%eax, 164(%edi)
	imull	$1512, %esi, %edi
	movl	_joystick+28, %eax
	addl	$_joybuttons_i, %edi
	testl	%eax, %eax
	jg	L504
L515:
	cmpl	60(%esp), %ebx
	jle	L492
L505:
	movl	60(%esp), %eax
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	cmpl	%ebx, 56(%esp)
	jb	L507
	movl	__ZL10controller.lto_priv.0, %esi
	testl	%esi, %esi
	je	L496
	cmpl	$41, %eax
	jg	L497
	movl	__ZZ10joyGetNameE13buttonStrings.lto_priv.0(,%ebx,4), %eax
L495:
	movl	%ebx, %ecx
	movl	%eax, 4(%esp)
	sall	$6, %ecx
	leal	__ZL19JoystickButtonNames(%ecx), %esi
	movl	%ecx, 32(%esp)
	movl	%esi, (%esp)
	call	_strcpy
	movl	52(%esp), %eax
	movl	%esi, 20(%edi)
	imull	$30, %ebx, %esi
	movlps	40(%esp), %xmm7
	movl	$1, %edx
	movl	%ebx, 40(%edi)
	movl	$1, %ecx
	leal	(%eax,%eax,4), %eax
	movw	%dx, 36(%edi)
	addl	%eax, %eax
	leal	__ZL23JoystickButtonFunctions(%esi), %edx
	movl	$5, (%edi)
	movl	%eax, 36(%esp)
	addl	$30, %eax
	movl	%edx, 76(%edi)
	movl	$1, 4(%edi)
	movl	$0, 8(%edi)
	movl	$0, 12(%edi)
	movb	$0, 16(%edi)
	movl	$_joybuttonsgroup, 24(%edi)
	movl	$30, 28(%edi)
	movl	%eax, 32(%edi)
	movb	$2, 38(%edi)
	movl	$0, 44(%edi)
	movl	$0, 48(%edi)
	movl	$__ZL29MNU_JoystickButtonPostProcessP9MENU_ITEM.lto_priv.0, 52(%edi)
	movl	$1, 56(%edi)
	movl	$1, 60(%edi)
	movl	$0, 64(%edi)
	movl	$0, 68(%edi)
	movb	$0, 72(%edi)
	movl	$0, 80(%edi)
	movl	$150, 84(%edi)
	movl	%eax, 88(%edi)
	movw	%cx, 92(%edi)
	movb	$2, 94(%edi)
	movl	%ebx, 96(%edi)
	movl	$0, 108(%edi)
	movlps	%xmm7, 100(%edi)
	movl	32(%esp), %ecx
	movl	$1651863364, __ZL19JoystickButtonNames+2048(%ecx)
	leal	__ZL19JoystickButtonNames+2048(%ecx), %edx
	movl	$2123116, 4(%edx)
	cmpl	%ebx, 56(%esp)
	jb	L508
	movl	__ZL10controller.lto_priv.0, %eax
	testl	%eax, %eax
	je	L499
	cmpl	$41, 60(%esp)
	jg	L500
	movl	__ZZ10joyGetNameE13buttonStrings.lto_priv.0(,%ebx,4), %eax
L498:
	movl	%edx, (%esp)
	orb	$-128, %bl
	addl	$__ZL23JoystickButtonFunctions+960, %esi
	addl	$224, %edi
	movl	%eax, 4(%esp)
	movl	%edx, 32(%esp)
	call	_strcat
	movl	32(%esp), %edx
	movl	36(%esp), %eax
	movl	%ebx, -72(%edi)
	movlps	40(%esp), %xmm1
	movl	$1, %ecx
	movl	$5, -112(%edi)
	movl	%edx, -92(%edi)
	addl	$40, %eax
	movl	$1, %edx
	movl	$1, -108(%edi)
	movl	$0, -104(%edi)
	movl	$0, -100(%edi)
	movb	$0, -96(%edi)
	movl	$_joybuttonsgroup, -88(%edi)
	movl	$30, -84(%edi)
	movl	%eax, -80(%edi)
	movw	%dx, -76(%edi)
	movb	$2, -74(%edi)
	movl	$0, -68(%edi)
	movl	$0, -64(%edi)
	movl	$__ZL29MNU_JoystickButtonPostProcessP9MENU_ITEM.lto_priv.0, -60(%edi)
	movl	$1, -56(%edi)
	movl	$1, -52(%edi)
	movl	$0, -48(%edi)
	movl	$0, -44(%edi)
	movb	$0, -40(%edi)
	movl	%esi, -36(%edi)
	movl	$0, -32(%edi)
	movl	$150, -28(%edi)
	movl	%eax, -24(%edi)
	movw	%cx, -20(%edi)
	movb	$2, -18(%edi)
	movl	%ebx, -16(%edi)
	movlps	%xmm1, -12(%edi)
	movl	$0, -4(%edi)
	addl	$2, 52(%esp)
	addl	$2, 60(%esp)
	jmp	L501
	.p2align 4,,10
	.p2align 3
L500:
	movl	%ebx, (%esp)
	movl	%edx, 32(%esp)
	call	_SDL_GameControllerGetStringForButton
	movl	_joystick+24, %ecx
	movl	32(%esp), %edx
	movl	%ecx, 56(%esp)
	jmp	L498
	.p2align 4,,10
	.p2align 3
L497:
	movl	%ebx, (%esp)
	call	_SDL_GameControllerGetStringForButton
	movl	_joystick+24, %ecx
	movl	%ecx, 56(%esp)
	jmp	L495
	.p2align 4,,10
	.p2align 3
L508:
	xorl	%eax, %eax
	jmp	L498
	.p2align 4,,10
	.p2align 3
L507:
	xorl	%eax, %eax
	jmp	L495
	.p2align 4,,10
	.p2align 3
L499:
	movl	%ebx, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$__ZZ10joyGetNameE3tmp.lto_priv.0, (%esp)
	movl	%edx, 32(%esp)
	call	___mingw_sprintf
	movl	_joystick+24, %eax
	movl	32(%esp), %edx
	movl	%eax, 56(%esp)
	movl	$__ZZ10joyGetNameE3tmp.lto_priv.0, %eax
	jmp	L498
	.p2align 4,,10
	.p2align 3
L496:
	movl	%ebx, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$__ZZ10joyGetNameE3tmp.lto_priv.0, (%esp)
	call	___mingw_sprintf
	movl	_joystick+24, %eax
	movl	%eax, 56(%esp)
	movl	$__ZZ10joyGetNameE3tmp.lto_priv.0, %eax
	jmp	L495
	.cfi_endproc
LFE58:
	.p2align 4
	.def	__ZL26MNU_JoystickAxesInitialiseP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__ZL26MNU_JoystickAxesInitialiseP9MENU_ITEM:
LFB60:
	.cfi_startproc
	cmpb	$0, _CONTROL_JoyPresent
	je	L517
	call	__ZL26MNU_JoystickAxesInitialiseP9MENU_ITEM.part.0.lto_priv.0
L517:
	movl	$1, %eax
	ret
	.cfi_endproc
LFE60:
	.p2align 4
	.def	__ZL24MNU_JoystickAxisNextPagev;	.scl	3;	.type	32;	.endef
__ZL24MNU_JoystickAxisNextPagev:
LFB61:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	__ZL16JoystickAxisPage.lto_priv.0, %eax
	movl	_joyaxessetupgroup+12, %ebx
	addl	$1, %eax
	cltd
	shrl	$30, %edx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	movl	$1, %edx
	movl	%eax, __ZL16JoystickAxisPage.lto_priv.0
	movw	%dx, _joyaxessetupgroup+32
	testl	%ebx, %ebx
	jne	L531
	jmp	L519
	.p2align 4,,10
	.p2align 3
L521:
	movl	48(%ebx), %eax
	testl	%eax, %eax
	je	L520
	movl	%ebx, (%esp)
	call	*%eax
L520:
	addl	$56, %ebx
L531:
	movl	(%ebx), %eax
	testl	%eax, %eax
	jne	L521
L519:
	cmpb	$0, _CONTROL_JoyPresent
	je	L522
	call	__ZL26MNU_JoystickAxesInitialiseP9MENU_ITEM.part.0.lto_priv.0
L522:
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE61:
	.p2align 4
	.def	__Z22MNU_LoadModernDefaultsv;	.scl	3;	.type	32;	.endef
__Z22MNU_LoadModernDefaultsv:
LFB62:
	.cfi_startproc
	movl	$1, %eax
	call	__Z24SetDefaultKeyDefinitionsi
	movl	$1, %eax
	call	__Z16SetMouseDefaultsi
	movl	$1, %eax
	ret
	.cfi_endproc
LFE62:
	.p2align 4
	.def	__Z23MNU_LoadClassicDefaultsv;	.scl	3;	.type	32;	.endef
__Z23MNU_LoadClassicDefaultsv:
LFB63:
	.cfi_startproc
	xorl	%eax, %eax
	call	__Z24SetDefaultKeyDefinitionsi
	xorl	%eax, %eax
	call	__Z16SetMouseDefaultsi
	movl	$1, %eax
	ret
	.cfi_endproc
LFE63:
	.p2align 4
	.def	__ZL26MNU_DrawStringLargeColoredssPKcss;	.scl	3;	.type	32;	.endef
__ZL26MNU_DrawStringLargeColoredssPKcss:
LFB64:
	.cfi_startproc
	subl	$64, %esp
	.cfi_def_cfa_offset 68
	movl	%ebx, 48(%esp)
	.cfi_offset 3, -20
	movzbl	(%ecx), %ebx
	testb	%bl, %bl
	je	L534
	movl	%esi, 52(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%edx, %eax
	sall	$16, %eax
	movl	%edi, 56(%esp)
	.cfi_offset 7, -12
	movswl	%si, %edi
	movl	%ebp, 60(%esp)
	.cfi_offset 5, -8
	leal	1(%ecx), %ebp
	movl	%eax, 44(%esp)
	jmp	L541
	.p2align 4,,10
	.p2align 3
L550:
	movl	%esi, (%esp)
	call	*__imp__toupper
	leal	3641(%eax), %ebx
L548:
	movl	_ydim, %eax
	movl	%edi, %edx
	movzbl	72(%esp), %ecx
	movswl	%bx, %ebx
	sall	$16, %edx
	movzbl	68(%esp), %esi
	subl	$1, %eax
	movl	%edx, 40(%esp)
	movl	%eax, 36(%esp)
	movl	_xdim, %eax
	movl	36(%esp), %edx
	subl	$1, %eax
	orl	%eax, %edx
	js	L540
	movl	36(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%esi, %eax
	movsbl	%al, %eax
	movl	%ecx, 12(%esp)
	movl	$65536, %ecx
	movl	%edx, 32(%esp)
	movl	44(%esp), %edx
	movl	%eax, 8(%esp)
	movl	40(%esp), %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$26, 16(%esp)
	movl	%ebx, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L540:
	addl	$1, %ebp
	movswl	_tilesiz(,%ebx,4), %eax
	movzbl	-1(%ebp), %ebx
	leal	1(%edi,%eax), %edi
	testb	%bl, %bl
	je	L549
L541:
	movzbl	%bl, %esi
	movl	%esi, (%esp)
	call	*__imp__isalpha
	testl	%eax, %eax
	jne	L550
	leal	-48(%esi), %eax
	cmpl	$9, %eax
	ja	L538
	movzbl	__ZL11lg_xlat_num-48(%esi), %ebx
	addw	$3732, %bx
	jmp	L548
	.p2align 4,,10
	.p2align 3
L538:
	cmpb	$32, %bl
	leal	10(%edi), %eax
	cmove	%eax, %edi
	movzbl	0(%ebp), %ebx
	addl	$1, %ebp
	testb	%bl, %bl
	jne	L541
L549:
	movl	52(%esp), %esi
	.cfi_restore 6
	movl	56(%esp), %edi
	.cfi_restore 7
	movl	60(%esp), %ebp
	.cfi_restore 5
L534:
	movl	48(%esp), %ebx
	addl	$64, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE64:
	.p2align 4
	.globl	__Z16MNU_LoadSaveMove8UserCallP9MENU_ITEM
	.def	__Z16MNU_LoadSaveMove8UserCallP9MENU_ITEM;	.scl	2;	.type	32;	.endef
__Z16MNU_LoadSaveMove8UserCallP9MENU_ITEM:
LFB67:
	.cfi_startproc
	cmpb	$0, _UsingMenus
	je	L552
	call	__Z16MNU_LoadSaveMove8UserCallP9MENU_ITEM.part.0
L552:
	movl	$1, %eax
	ret
	.cfi_endproc
LFE67:
	.p2align 4
	.globl	__Z18InitSpriteChemBombs.isra.0
	.def	__Z18InitSpriteChemBombs.isra.0;	.scl	2;	.type	32;	.endef
__Z18InitSpriteChemBombs.isra.0:
LFB69:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movswl	%ax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$-1171354717, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	imull	$44, %edi, %ebx
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movl	_sprite, %ecx
	movl	_User(,%edi,4), %eax
	addl	%ecx, %ebx
	movl	%eax, 28(%esp)
	leal	8(%ebx), %ebp
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	leal	4(%ebx), %eax
	movl	%eax, 24(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	24(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%esi
	movl	$278, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	%ebp, (%esp)
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	$_s_ChemBomb, %ecx
	movl	$3038, %edx
	movl	$420, 20(%esp)
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
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %edx
	movl	%edi, %eax
	movl	_User(,%edx,4), %ebp
	imull	$44, %edx, %ebx
	addl	_sprite, %ebx
	orl	$16777216, 68(%ebp)
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	21(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	movb	$32, 21(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	%ecx, %edx
	movb	$32, 20(%ebx)
	movl	%edx, %eax
	mull	%esi
	movl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movb	$-15, 16(%ebx)
	movzbl	273(%eax), %eax
	movw	%dx, 176(%ebp)
	leal	12(%ebx), %edx
	subl	%ecx, %edx
	movb	%al, 273(%ebp)
	movl	%edx, %eax
	movl	$50332416, 96(%ebp)
	mull	%esi
	movl	_randomseed, %eax
	movl	$200, 188(%ebp)
	movl	$-25472, %esi
	addl	$1, _krandcount
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	orw	$1, 12(%ebx)
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L554
	sall	$14, %eax
	movl	$1677747263, %edx
	movl	$-100, %esi
	mull	%edx
	shrl	$22, %edx
	subl	%edx, %esi
	sall	$7, %esi
L554:
	leal	36(%ebx), %edx
	movl	$-1171354717, %edi
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ecx, %edx
	movw	%si, 36(%ebx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ebx), %eax
	movb	$20, 18(%ebx)
	movswl	32(%ebx), %edx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 152(%ebp)
	movzwl	28(%ebx), %eax
	movswl	32(%ebx), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%ebp)
	movzwl	36(%ebx), %eax
	sarw	%ax
	cwtl
	movl	%eax, 160(%ebp)
	movl	$4800, %eax
	movw	%ax, 216(%ebp)
	addl	$32, %esp
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
LFE69:
	.p2align 4
	.globl	__Z12InitChemBombs.isra.0
	.def	__Z12InitChemBombs.isra.0;	.scl	2;	.type	32;	.endef
__Z12InitChemBombs.isra.0:
LFB72:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	cwtl
	movl	$_s_ChemBomb, %ecx
	movl	$3280, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	imull	$44, %eax, %edi
	pushl	%esi
	pushl	%ebx
	subl	$32, %esp
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	_User(,%eax,4), %eax
	addl	_sprite, %edi
	movl	$420, 20(%esp)
	movl	%eax, 24(%esp)
	movswl	28(%edi), %eax
	movl	%eax, 16(%esp)
	movl	8(%edi), %eax
	movl	%eax, 12(%esp)
	movl	4(%edi), %eax
	movl	%eax, 8(%esp)
	movl	(%edi), %eax
	movl	%eax, 4(%esp)
	movswl	24(%edi), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %edx
	movl	_User(,%edx,4), %esi
	imull	$44, %edx, %ebx
	addl	_sprite, %ebx
	orl	$16777216, 68(%esi)
	movswl	30(%edi), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %edi
	leal	21(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%edi, %edx
	movb	$32, 21(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	%edi, %edx
	movb	$32, 20(%ebx)
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%edi, %edx
	movb	$-15, 16(%ebx)
	movw	%ax, 176(%esi)
	movl	%edx, %eax
	mull	%ecx
	movl	$50332416, 96(%esi)
	movl	$200, 188(%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$-32640, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	movswl	24(%ebx), %eax
	movl	_sector, %edx
	andw	$-2, 12(%ebx)
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$3, 39(%eax)
	je	L560
	orl	$1073741824, 68(%esi)
L560:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$-25472, %edx
	movzwl	%ax, %eax
	movw	%dx, 30(%esp)
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L561
	sall	$14, %eax
	movl	$1677747263, %ecx
	mull	%ecx
	movl	$-100, %eax
	shrl	$22, %edx
	subl	%edx, %eax
	sall	$7, %eax
	movw	%ax, 30(%esp)
L561:
	leal	36(%ebx), %ecx
	movl	$-1171354717, %eax
	subl	%edi, %ecx
	mull	%ecx
	movzwl	30(%esp), %eax
	movl	%edx, %ecx
	leal	18(%ebx), %edx
	shrl	$5, %ecx
	subl	%edi, %edx
	addl	$1, _spritechanged(,%ecx,4)
	movw	%ax, 36(%ebx)
	movl	$-1171354717, %eax
	mull	%edx
	movl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$0, 18(%ebx)
	movzwl	82(%eax), %edx
	cmpw	$3280, %dx
	sete	30(%esp)
	cmpw	$3121, %dx
	sete	%al
	orb	30(%esp), %al
	jne	L566
	cmpw	$1210, %dx
	jne	L562
L566:
	movl	$0, 152(%esi)
	leal	34(%ebx), %edx
	xorl	%eax, %eax
	movl	$0, 156(%esi)
	subl	%edi, %edx
	movl	$0, 160(%esi)
	addl	$1, _spritechanged(,%ecx,4)
	movl	$-1171354717, %ecx
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
	xorl	%ecx, %ecx
	movl	$4800, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 32(%ebx)
	movw	%ax, 216(%esi)
	addl	$32, %esp
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
L562:
	.cfi_restore_state
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
	movzwl	36(%ebx), %eax
	sarw	%ax
	cwtl
	movl	%eax, 160(%esi)
	movl	$360, %eax
	movw	%ax, 216(%esi)
	addl	$32, %esp
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
LFE72:
	.p2align 4
	.globl	__Z21SpawnFlashBombOnActors.isra.0
	.def	__Z21SpawnFlashBombOnActors.isra.0;	.scl	2;	.type	32;	.endef
__Z21SpawnFlashBombOnActors.isra.0:
LFB74:
	.cfi_startproc
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movl	_sprite, %edx
	movl	%edi, 48(%esp)
	.cfi_offset 7, -12
	movswl	%ax, %edi
	movl	%esi, 44(%esp)
	.cfi_offset 6, -16
	imull	$44, %edi, %esi
	movl	%ebx, 40(%esp)
	addl	%edx, %esi
	.cfi_offset 3, -20
	movzwl	42(%esi), %ebx
	andw	$16384, %bx
	jne	L572
	movl	%ebp, 52(%esp)
	.cfi_offset 5, -8
	movw	%ax, 26(%esp)
	testw	%ax, %ax
	js	L574
	movl	_User(,%edi,4), %eax
	movzwl	196(%eax), %ecx
	movl	%eax, 32(%esp)
	testw	%cx, %cx
	jns	L587
	movl	$0, 20(%esp)
	movswl	28(%esi), %eax
	movl	$_s_FireballFlames, %ecx
	movl	$3212, %edx
	movl	%eax, 16(%esp)
	movl	8(%esi), %eax
	movl	%eax, 12(%esp)
	movl	4(%esi), %eax
	movl	%eax, 8(%esp)
	movl	(%esi), %eax
	movl	%eax, 4(%esp)
	movswl	24(%esi), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ebp
	movswl	%ax, %edx
	imull	$44, %edx, %ecx
	movl	%edx, 36(%esp)
	movl	_User(,%edx,4), %edx
	movl	%edx, 28(%esp)
	movl	32(%esp), %edx
	addl	%ebp, %ecx
	movw	%ax, 196(%edx)
L583:
	leal	20(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%ebp, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	%ebp, %edx
	movb	$16, 20(%ecx)
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$16, 21(%ecx)
	cmpw	$0, 26(%esp)
	js	L580
	movswl	14(%esi), %eax
	movzbl	21(%esi), %edx
	movswl	_tilesiz+2(,%eax,4), %esi
	movl	%esi, %eax
	sall	$7, %eax
	cmpb	$64, %dl
	je	L582
	imull	%esi, %edx
	leal	(%edx,%edx), %eax
L582:
	movswl	14(%ecx), %edx
	movswl	_tilesiz+2(,%edx,4), %esi
	cltd
	sall	$2, %esi
	idivl	%esi
	leal	0(,%eax,4), %ebx
L580:
	movl	28(%esp), %esi
	leal	16(%ecx), %edx
	subl	%ebp, %edx
	movw	%bx, 176(%esi)
	movl	%edx, %eax
	movl	$-1171354717, %ebx
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ecx), %edx
	subl	%ebp, %edx
	movb	$-40, 16(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$-32640, 12(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ecx)
	movzwl	26(%esp), %ecx
	movl	$200, 188(%esi)
	testw	%cx, %cx
	jns	L588
L586:
	movl	52(%esp), %ebp
	.cfi_restore 5
L572:
	movl	40(%esp), %ebx
	movl	44(%esp), %esi
	movl	48(%esp), %edi
	addl	$56, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L587:
	.cfi_def_cfa_offset 60
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movzbl	21(%esi), %ebx
	movswl	14(%esi), %eax
	movswl	_tilesiz+2(,%eax,4), %esi
	cmpb	$64, %bl
	je	L589
	movzbl	%bl, %eax
	imull	%esi, %eax
	leal	0(,%eax,4), %edi
L577:
	movswl	%cx, %ebx
	addl	%edi, %eax
	movl	_User(,%ebx,4), %ecx
	imull	$44, %ebx, %ebx
	movzwl	176(%ecx), %esi
	movswl	14(%edx,%ebx), %edx
	movswl	_tilesiz+2(,%edx,4), %ebx
	cltd
	sall	$2, %ebx
	idivl	%ebx
	movswl	%si, %edx
	cmpl	%eax, %edx
	jl	L578
	addl	%eax, %eax
L579:
	movl	$230, %edx
	cmpw	%dx, %ax
	cmovg	%edx, %eax
	movw	%ax, 176(%ecx)
	cmpw	$239, 216(%ecx)
	jg	L586
	movl	$240, %eax
	movw	%ax, 216(%ecx)
	movl	52(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	movl	40(%esp), %ebx
	movl	44(%esp), %esi
	movl	48(%esp), %edi
	addl	$56, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L574:
	.cfi_restore_state
	movl	$0, 20(%esp)
	movswl	28(%esi), %eax
	movl	$_s_FireballFlames, %ecx
	movl	$3212, %edx
	movl	%eax, 16(%esp)
	movl	8(%esi), %eax
	movl	%eax, 12(%esp)
	movl	4(%esi), %eax
	movl	%eax, 8(%esp)
	movl	(%esi), %eax
	movl	%eax, 4(%esp)
	movswl	24(%esi), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ebp
	cwtl
	imull	$44, %eax, %ecx
	movl	%eax, 36(%esp)
	movl	_User(,%eax,4), %eax
	movl	%eax, 28(%esp)
	addl	%ebp, %ecx
	jmp	L583
	.p2align 4,,10
	.p2align 3
L589:
	movl	%esi, %edi
	movl	%esi, %eax
	sall	$8, %edi
	sall	$6, %eax
	jmp	L577
	.p2align 4,,10
	.p2align 3
L588:
	movl	36(%esp), %eax
	movl	_User(,%eax,4), %edx
	movl	_User(,%edi,4), %eax
	orl	$1048576, 72(%eax)
	movw	%cx, 138(%edx)
	movl	52(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	movl	40(%esp), %ebx
	movl	44(%esp), %esi
	movl	48(%esp), %edi
	addl	$56, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L578:
	.cfi_restore_state
	movl	$2048, %eax
	xorl	%edx, %edx
	idivl	%ebx
	leal	(%esi,%eax,2), %eax
	jmp	L579
	.cfi_endproc
LFE74:
	.section .rdata,"dr"
LC12:
	.ascii "source/sw/src/jweapon.cpp\0"
	.text
	.p2align 4
	.globl	__Z13InitFlashBombs
	.def	__Z13InitFlashBombs;	.scl	2;	.type	32;	.endef
__Z13InitFlashBombs:
LFB75:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$-1171354717, %ecx
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	_sprite, %esi
	movswl	80(%esp), %eax
	movl	%eax, 44(%esp)
	imull	$44, %eax, %eax
	leal	(%esi,%eax), %edi
	movswl	_screenpeek, %eax
	leal	8(%edi), %ebp
	imull	$24124, %eax, %eax
	movl	%ebp, %edx
	subl	%esi, %edx
	addl	$_Player, %eax
	movl	%eax, 52(%esp)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%edi), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	subl	%esi, %edx
	movl	$_StatDamageList, %esi
	movl	%edx, %eax
	mull	%ecx
	leal	4(%edi), %ecx
	movl	$283, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movl	%ebp, (%esp)
	movl	%edi, %ebp
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	52(%esp), %eax
	addl	$4, %eax
	movl	%eax, 56(%esp)
	.p2align 4
	.p2align 3
L602:
	movswl	(%esi), %eax
	movzwl	_headspritestat(%eax,%eax), %edi
	cmpw	$-1, %di
	je	L592
	movl	%esi, 48(%esp)
	movl	%edi, %esi
	movl	%ebp, %edi
	jmp	L591
	.p2align 4,,10
	.p2align 3
L594:
	imull	%ebp, %eax
	sall	$2, %eax
L595:
	subl	%eax, %edx
	movl	24(%esp), %eax
	movl	8(%ecx), %ebp
	movl	%ebx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	20(%esp), %edx
	movl	%eax, 8(%esp)
	movl	32(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ecx), %eax
	movl	%ebp, %ecx
	movl	%eax, (%esp)
	movl	28(%esp), %eax
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	je	L593
	movl	44(%esp), %eax
	movswl	38(%esp), %ebp
	movl	$31, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9GetDamagesss
	movl	40(%esp), %ebx
	movl	%eax, 20(%esp)
	movl	52(%ebx), %edx
	testl	%edx, %edx
	jne	L619
	movl	144(%ebx), %ebx
	testl	%ebx, %ebx
	je	L596
	cmpw	$-70, %ax
	jl	L621
L598:
	movswl	20(%esp), %edx
	movl	$1, %ecx
	movl	%ebx, %eax
	call	__Z10SetFadeAmtP12PLAYERstructsh
	.p2align 4
	.p2align 3
L593:
	cmpw	$-1, %si
	je	L619
L591:
	movswl	%si, %ebx
	movl	(%edi), %edx
	movw	%si, 38(%esp)
	imull	$44, %ebx, %ecx
	addl	_sprite, %ecx
	movzwl	_nextspritestat(%ebx,%ebx), %esi
	movl	(%ecx), %eax
	movl	4(%ecx), %ebp
	movl	%edx, 32(%esp)
	subl	%eax, %edx
	movl	%eax, 28(%esp)
	movl	%edx, %eax
	movl	%ebp, 20(%esp)
	negl	%eax
	cmovs	%edx, %eax
	movl	4(%edi), %edx
	movl	%edx, 24(%esp)
	subl	%ebp, %edx
	movl	%edx, %ebp
	negl	%ebp
	cmovns	%ebp, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %ebp
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ebp
	cmpl	$16384, %ebp
	jg	L593
	testb	$1, 12(%edi)
	je	L593
	movl	_User(,%ebx,4), %eax
	movswl	14(%edi), %ebp
	movswl	24(%edi), %ebx
	movl	8(%edi), %edx
	movl	%eax, 40(%esp)
	movzbl	21(%edi), %eax
	movswl	_tilesiz+2(,%ebp,4), %ebp
	cmpb	$64, %al
	jne	L594
	movl	%ebp, %eax
	sall	$8, %eax
	jmp	L595
	.p2align 4,,10
	.p2align 3
L619:
	movl	48(%esp), %esi
	movl	%edi, %ebp
L592:
	addl	$2, %esi
	movl	$_StatDamageList+40, %eax
	cmpl	%esi, %eax
	jne	L602
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
L596:
	.cfi_restore_state
	movzwl	38(%esp), %eax
	cmpw	%ax, 80(%esp)
	je	L593
	movl	%ebp, (%esp)
	call	__Z9ActorPains
	movl	%ebp, %eax
	call	__Z21SpawnFlashBombOnActors.isra.0
	jmp	L593
	.p2align 4,,10
	.p2align 3
L621:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	movl	$387, %ecx
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L599
	sall	$14, %eax
	movl	$-1610571775, %edx
	mull	%edx
	shrl	$27, %edx
	movl	_PlayerLowHealthPainVocs(,%edx,4), %ecx
L599:
	cmpb	$0, _Prediction
	jne	L598
	movl	52(%esp), %eax
	movl	56(%esp), %ebx
	movl	$1699, %edx
	movl	$13, 12(%esp)
	movl	%eax, 16(%esp)
	movl	%ebx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	$LC12, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	movl	40(%esp), %eax
	movl	144(%eax), %ebx
	jmp	L598
	.cfi_endproc
LFE75:
	.p2align 4
	.globl	__Z12InitCaltropss.isra.0
	.def	__Z12InitCaltropss.isra.0;	.scl	2;	.type	32;	.endef
__Z12InitCaltropss.isra.0:
LFB80:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movswl	%ax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$-1171354717, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	imull	$44, %edi, %ebx
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movl	_sprite, %ecx
	movl	_User(,%edi,4), %eax
	addl	%ecx, %ebx
	movl	%eax, 28(%esp)
	leal	8(%ebx), %ebp
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	leal	4(%ebx), %eax
	movl	%eax, 24(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	24(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%esi
	movl	$278, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	%ebp, (%esp)
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	$_s_Caltrops, %ecx
	movl	$2218, %edx
	movl	$210, 20(%esp)
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
	movl	$3, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %edx
	movl	%edi, %eax
	movl	_User(,%edx,4), %ecx
	imull	$44, %edx, %ebp
	addl	_sprite, %ebp
	orl	$16777216, 68(%ecx)
	movl	%ecx, 24(%esp)
	call	__Z8SetOwnerss
	movl	_sprite, %edi
	leal	21(%ebp), %edx
	movl	24(%esp), %ecx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebp), %edx
	subl	%edi, %edx
	movb	$64, 21(%ebp)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebp), %edx
	subl	%edi, %edx
	movb	$64, 20(%ebp)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-15, 16(%ebp)
	movzbl	18(%ebx), %eax
	movl	$-25472, %ebx
	addl	$1, _krandcount
	movb	%al, 18(%ebp)
	movl	28(%esp), %eax
	movzbl	273(%eax), %eax
	movl	$50332416, 96(%ecx)
	movl	$200, 188(%ecx)
	movb	%al, 273(%ecx)
	xorl	%eax, %eax
	movw	%ax, 176(%ecx)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L623
	sall	$14, %eax
	movl	$1677747263, %edx
	movl	$-100, %ebx
	mull	%edx
	shrl	$22, %edx
	subl	%edx, %ebx
	sall	$7, %ebx
L623:
	leal	36(%ebp), %edx
	movl	$-1171354717, %eax
	subl	%edi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ebp), %eax
	movw	%bx, 36(%ebp)
	movswl	32(%ebp), %edx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 152(%ecx)
	movzwl	28(%ebp), %eax
	movswl	32(%ebp), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%ecx)
	movzwl	36(%ebp), %eax
	sarw	%ax
	cwtl
	movl	%eax, 160(%ecx)
	addl	$32, %esp
	.cfi_def_cfa_offset 20
	movl	%ebp, %eax
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
	jmp	__Z19SetupSpriteForBreakP12spritetypev7.isra.0
	.cfi_endproc
LFE80:
	.p2align 4
	.globl	__Z14InitPhosphoruss.isra.0
	.def	__Z14InitPhosphoruss.isra.0;	.scl	2;	.type	32;	.endef
__Z14InitPhosphoruss.isra.0:
LFB82:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	cwtl
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
	imull	$44, %eax, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	_sprite, %ecx
	movl	_User(,%eax,4), %eax
	addl	%ecx, %ebx
	movl	%eax, 24(%esp)
	leal	8(%ebx), %ebp
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%ecx, %edx
	leal	4(%ebx), %ecx
	movl	%edx, %eax
	mull	%esi
	movl	$187, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$1, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_randomseed, %eax
	movl	(%ebx), %ecx
	movl	4(%ebx), %esi
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	movl	8(%ebx), %edi
	leal	1(%eax,%edx,4), %eax
	movl	$2047, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L629
	sall	$14, %eax
	movl	$-2147450879, %edx
	mull	%edx
	shrl	$18, %edx
L629:
	movl	%edx, 16(%esp)
	movl	$2010, %edx
	movl	%edi, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$_s_Phosphorus, %ecx
	movl	$140, 20(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	movl	$6, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ebp
	cwtl
	imull	$44, %eax, %edx
	movl	_User(,%eax,4), %edi
	movl	$-1171354717, %eax
	leal	0(%ebp,%edx), %ecx
	addl	$40, %edx
	mull	%edx
	movl	$-1171354717, %eax
	leal	16(%ecx), %esi
	subl	%ebp, %esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$9999, %edx
	movw	%dx, 40(%ecx)
	leal	12(%ecx), %edx
	subl	%ebp, %edx
	orl	$16777216, 68(%edi)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%esi
	movl	$-1171354717, %eax
	orw	$128, 12(%ecx)
	movl	%edx, %esi
	leal	21(%ecx), %edx
	subl	%ebp, %edx
	shrl	$5, %esi
	mull	%edx
	addl	$1, _spritechanged(,%esi,4)
	movl	$-1171354717, %eax
	movb	$-128, 16(%ecx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ecx), %edx
	subl	%ebp, %edx
	movb	$64, 21(%ecx)
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$64, 20(%ecx)
	addl	$1, _spritechanged(,%esi,4)
	movb	$-15, 16(%ecx)
	movzbl	18(%ebx), %ebx
	testb	%bl, %bl
	je	L630
	leal	18(%ecx), %edx
	movl	$-1171354717, %eax
	subl	$1, %ebx
	subl	%ebp, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%bl, 18(%ecx)
L631:
	movl	24(%esp), %eax
	addl	$1, _krandcount
	movl	$-25472, %ebx
	movzbl	273(%eax), %eax
	movl	$50332416, 96(%edi)
	movl	$600, 188(%edi)
	movb	%al, 273(%edi)
	xorl	%eax, %eax
	movw	%ax, 176(%edi)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L632
	sall	$14, %eax
	movl	$1677747263, %edx
	movl	$-100, %ebx
	mull	%edx
	shrl	$22, %edx
	subl	%edx, %ebx
	sall	$7, %ebx
L632:
	leal	36(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%ebp, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ecx), %eax
	movw	%bx, 36(%ecx)
	movswl	32(%ecx), %edx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 152(%edi)
	movzwl	28(%ecx), %eax
	movswl	32(%ecx), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%edi)
	movzwl	36(%ecx), %eax
	sarw	%ax
	cwtl
	movl	%eax, 160(%edi)
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
L630:
	.cfi_restore_state
	movb	$0, 18(%ecx)
	jmp	L631
	.cfi_endproc
LFE82:
	.p2align 4
	.globl	__Z14InitBloodSprayshs.isra.0
	.def	__Z14InitBloodSprayshs.isra.0;	.scl	2;	.type	32;	.endef
__Z14InitBloodSprayshs.isra.0:
LFB84:
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
	movswl	%ax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	imull	$44, %esi, %eax
	subl	$64, %esp
	.cfi_def_cfa_offset 84
	movl	_sprite, %ebp
	movl	_krandcount, %ebx
	movw	%cx, 60(%esp)
	movl	_randomseed, %ecx
	leal	0(%ebp,%eax), %edi
	movl	_User(,%esi,4), %eax
	movb	%dl, 49(%esp)
	movl	%esi, 56(%esp)
	movl	%eax, 52(%esp)
	movl	$1, %eax
	movw	%ax, 50(%esp)
	testb	%dl, %dl
	jne	L717
L640:
	leal	(%ecx,%ecx,4), %eax
	addl	$1, %ebx
	leal	1(%ecx,%eax,4), %ecx
	leal	8(%edi), %eax
	movl	%ebx, _krandcount
	movl	%eax, %ebx
	movl	%eax, 24(%esp)
	movl	$-1171354717, %eax
	movzwl	%cx, %ecx
	subl	%ebp, %ebx
	movl	%ecx, _randomseed
	mull	%ebx
	movl	%edx, %ebx
	shrl	$5, %ebx
	movl	_spritechanged(,%ebx,4), %eax
	addl	$1, %eax
	movl	%eax, 28(%esp)
	leal	4(%edi), %eax
	movl	%eax, %esi
	movl	%eax, 32(%esp)
	movl	$-1171354717, %eax
	subl	%ebp, %esi
	mull	%esi
	movl	$-1171354717, %eax
	movl	%edx, %esi
	movl	%edi, %edx
	subl	%ebp, %edx
	shrl	$5, %esi
	mull	%edx
	movl	28(%esp), %eax
	movl	%eax, _spritechanged(,%ebx,4)
	movl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%esi,4)
	addl	$1, _spritechanged(,%edx,4)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	cmpl	$65535, %ecx
	je	L641
	sall	$14, %ecx
	cmpl	$698994974, %ecx
	ja	L641
	cmpl	$376877474, %ecx
	movl	%edi, %edx
	movl	32(%esp), %ecx
	ja	L718
	movl	$411, %eax
	call	__Z9PlaySoundiPiS_S_i
L643:
	movzwl	28(%edi), %eax
	movw	%ax, 32(%esp)
	movzwl	60(%esp), %eax
	cmpw	$-1, %ax
	je	L694
	xorl	%ebp, %ebp
	movw	%ax, 62(%esp)
	movw	%bp, 28(%esp)
	movl	%edi, %ebp
	jmp	L669
	.p2align 4,,10
	.p2align 3
L722:
	movzbl	%cl, %ebx
	sall	$8, %esi
	imull	%edi, %ebx
	sall	$2, %ebx
	cmpb	$64, %cl
	cmovne	%ebx, %esi
	subl	%esi, %eax
	subl	$20, %eax
L658:
	movl	%eax, 12(%esp)
	movl	36(%esp), %eax
	movl	$_s_BloodSprayChunk, %ecx
	movl	24(%esp), %esi
	movl	%edx, 16(%esp)
	movl	$1562, %edx
	movl	%eax, 8(%esp)
	movl	40(%esp), %eax
	movl	%esi, 20(%esp)
	movl	%eax, 4(%esp)
	movswl	24(%ebp), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ecx
	movswl	%ax, %edi
	imull	$44, %edi, %eax
	movl	%edi, 36(%esp)
	movl	_User(,%edi,4), %edi
	orl	$16777216, 68(%edi)
	leal	(%ecx,%eax), %ebx
	leal	12(%eax), %edx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	cmpb	$0, 49(%esp)
	movl	%eax, _spritechanged(,%edx,4)
	movzwl	12(%ebx), %eax
	jne	L663
	orw	$-32640, %ax
L664:
	leal	16(%ebx), %esi
	movw	%ax, 12(%ebx)
	movl	$-1171354717, %eax
	movl	%esi, %edx
	subl	%ecx, %edx
	mull	%edx
	movl	56(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	36(%esp), %edx
	movb	$-12, 16(%ebx)
	call	__Z8SetOwnerss
	movl	_krandcount, %eax
	movl	%eax, 44(%esp)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	movl	_sprite, %eax
	leal	21(%ebx), %edx
	movzwl	%cx, %ecx
	movl	%eax, 24(%esp)
	subl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	cmpl	$65535, %ecx
	je	L665
	movl	%ecx, %eax
	movl	$293605767, %edx
	movb	$30, 40(%esp)
	sall	$14, %eax
	imull	%edx
	movl	$64, %eax
	sarl	$21, %edx
	subl	%edx, %eax
	movb	%al, 21(%ebx)
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %ecx
	movzwl	%cx, %ecx
	cmpl	$65535, %ecx
	je	L666
L690:
	movl	%ecx, %eax
	movl	$293605767, %edx
	sall	$14, %eax
	imull	%edx
	movl	$64, %eax
	sarl	$21, %edx
	subl	%edx, %eax
	movb	%al, 40(%esp)
L666:
	movl	$-1171354717, %eax
	leal	20(%ebx), %edx
	subl	24(%esp), %edx
	subl	24(%esp), %esi
	mull	%edx
	movzbl	40(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 20(%ebx)
	movl	$-1171354717, %eax
	mull	%esi
	xorl	%esi, %esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-15, 16(%ebx)
	movzbl	18(%ebp), %eax
	movb	%al, 18(%ebx)
	movl	52(%esp), %eax
	movzbl	273(%eax), %eax
	movl	$50332416, 96(%edi)
	movl	$600, 188(%edi)
	movb	%al, 273(%edi)
	movl	44(%esp), %eax
	movw	%si, 176(%edi)
	addl	$3, %eax
	movl	%eax, _krandcount
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %eax
	movl	$-7552, %ecx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L667
	sall	$14, %eax
	movl	$1677747263, %esi
	movl	$-10, %ecx
	mull	%esi
	shrl	$23, %edx
	subl	%edx, %ecx
	sall	$7, %ecx
L667:
	movl	$-1171354717, %eax
	leal	36(%ebx), %edx
	subl	24(%esp), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ebx), %eax
	movw	%cx, 36(%ebx)
	movswl	32(%ebx), %edx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 152(%edi)
	movzwl	28(%ebx), %eax
	movswl	32(%ebx), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%edi)
	movzwl	36(%ebx), %eax
	sarw	%ax
	cwtl
	movl	%eax, 160(%edi)
	cmpb	$0, _GlobalSkipZrange
	je	L719
L668:
	addw	$1, 28(%esp)
	movzwl	28(%esp), %eax
	cmpw	%ax, 50(%esp)
	je	L639
L669:
	movswl	62(%esp), %eax
	movl	_krandcount, %ebx
	movl	_randomseed, %ecx
	addl	%eax, %eax
	movl	%eax, 24(%esp)
	cmpw	$-2, 60(%esp)
	je	L720
L650:
	leal	(%ecx,%ecx,4), %eax
	addl	$1, %ebx
	leal	1(%ecx,%eax,4), %ecx
	movzwl	%cx, %ecx
	movl	%ecx, %eax
	cmpb	$0, 49(%esp)
	jne	L651
	cmpl	$65535, %ecx
	je	L721
L649:
	sall	$14, %eax
	movl	$-2147450879, %esi
	mull	%esi
	shrl	$21, %edx
L653:
	movzwl	32(%esp), %eax
	addw	$1280, %ax
	subl	%edx, %eax
	andw	$2047, %ax
	movzwl	%ax, %edx
L652:
	movl	%ebx, _krandcount
	movswl	14(%ebp), %ebx
	movl	%ecx, _randomseed
	movl	0(%ebp), %eax
	movswl	_tilesiz+2(,%ebx,4), %edi
	movzbl	21(%ebp), %ecx
	movw	%dx, 32(%esp)
	movl	%eax, 40(%esp)
	movl	4(%ebp), %eax
	movl	%edi, %esi
	movl	%eax, 36(%esp)
	movl	8(%ebp), %eax
	testb	$-128, 12(%ebp)
	je	L722
	sall	$7, %esi
	movl	%esi, 44(%esp)
	movzbl	%cl, %esi
	imull	%edi, %esi
	addl	%esi, %esi
	cmpb	$64, %cl
	movsbl	_picanm+2(%ebx,%ebx,4), %ecx
	cmove	44(%esp), %esi
	sall	$8, %ecx
	addl	%esi, %ecx
	subl	%ecx, %eax
	subl	$20, %eax
	jmp	L658
	.p2align 4,,10
	.p2align 3
L718:
	movl	$396, %eax
	call	__Z9PlaySoundiPiS_S_i
	jmp	L643
	.p2align 4,,10
	.p2align 3
L663:
	orb	$-128, %al
	jmp	L664
	.p2align 4,,10
	.p2align 3
L651:
	cmpl	$65535, %ecx
	je	L723
L648:
	sall	$14, %eax
	movl	$1677747263, %edi
	mull	%edi
	shrl	$21, %edx
	movl	%edx, %eax
L654:
	movzwl	32(%esp), %edi
	leal	512(%edi,%eax), %edx
	andl	$2047, %edx
	jmp	L652
	.p2align 4,,10
	.p2align 3
L665:
	movb	$30, 21(%ebx)
	movl	$65516, %ecx
	jmp	L690
	.p2align 4,,10
	.p2align 3
L719:
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	call	__Z13DoActorZranges
	jmp	L668
	.p2align 4,,10
	.p2align 3
L721:
	movl	$255, %edx
	jmp	L653
	.p2align 4,,10
	.p2align 3
L723:
	movl	$199, %eax
	jmp	L654
	.p2align 4,,10
	.p2align 3
L720:
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %ecx
	movzwl	%cx, %ecx
	cmpl	$65535, %ecx
	je	L724
	movl	%ecx, %edx
	movl	$1677747263, %eax
	addl	$1, %ebx
	sall	$14, %edx
	mull	%edx
	shrl	$22, %edx
	leal	105(%edx), %eax
	movw	%ax, 62(%esp)
	leal	210(%edx,%edx), %eax
	movl	%eax, 24(%esp)
	jmp	L650
	.p2align 4,,10
	.p2align 3
L639:
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
L724:
	.cfi_restore_state
	addl	$2, %ebx
	movl	$204, %edi
	cmpb	$0, 49(%esp)
	movl	$408, 24(%esp)
	movw	%di, 62(%esp)
	movl	$65516, %ecx
	movl	$65516, %eax
	jne	L648
	jmp	L649
	.p2align 4,,10
	.p2align 3
L641:
	movl	32(%esp), %ecx
	movl	%edi, %edx
	movl	$395, %eax
	call	__Z9PlaySoundiPiS_S_i
	jmp	L643
	.p2align 4,,10
	.p2align 3
L717:
	leal	(%ecx,%ecx,4), %eax
	addl	$1, %ebx
	leal	1(%ecx,%eax,4), %ecx
	movl	$3, %eax
	movzwl	%cx, %ecx
	movw	%ax, 50(%esp)
	cmpl	$65535, %ecx
	je	L640
	movl	%ecx, %edx
	movl	$-1073692671, %eax
	sall	$14, %edx
	mull	%edx
	shrl	$28, %edx
	leal	1(%edx), %eax
	movw	%ax, 50(%esp)
	jmp	L640
	.p2align 4,,10
	.p2align 3
L694:
	xorl	%edx, %edx
	movl	%edi, %ebp
	movw	%dx, 28(%esp)
	jmp	L645
	.p2align 4,,10
	.p2align 3
L728:
	cmpb	$64, %al
	je	L725
	imull	%ecx, %eax
	addl	%eax, %eax
L680:
	movsbl	_picanm+2(%ebx,%ebx,4), %ebx
	movl	36(%esp), %ecx
	sall	$8, %ebx
	addl	%eax, %ebx
	subl	%ebx, %ecx
	subl	$20, %ecx
L681:
	movl	24(%esp), %eax
	movl	%edx, 16(%esp)
	movl	$1562, %edx
	movl	%ecx, 12(%esp)
	movl	$_s_BloodSprayChunk, %ecx
	movl	%esi, 4(%esp)
	movl	%eax, 20(%esp)
	movl	%edi, 8(%esp)
	movswl	24(%ebp), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ecx
	movswl	%ax, %esi
	imull	$44, %esi, %eax
	movl	%esi, 36(%esp)
	movl	_User(,%esi,4), %esi
	orl	$16777216, 68(%esi)
	leal	(%ecx,%eax), %ebx
	leal	12(%eax), %edx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	cmpb	$0, 49(%esp)
	movl	%eax, _spritechanged(,%edx,4)
	movzwl	12(%ebx), %eax
	je	L684
	orb	$-128, %al
L685:
	leal	16(%ebx), %edi
	movw	%ax, 12(%ebx)
	movl	$-1171354717, %eax
	movl	%edi, %edx
	subl	%ecx, %edx
	mull	%edx
	movl	56(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	36(%esp), %edx
	movb	$-12, 16(%ebx)
	call	__Z8SetOwnerss
	movl	_krandcount, %eax
	movl	%eax, 44(%esp)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	movl	_sprite, %eax
	leal	21(%ebx), %edx
	movzwl	%cx, %ecx
	movl	%eax, 24(%esp)
	subl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	cmpl	$65535, %ecx
	je	L686
	movl	%ecx, %eax
	movl	$293605767, %edx
	movb	$30, 40(%esp)
	sall	$14, %eax
	imull	%edx
	movl	$64, %eax
	sarl	$21, %edx
	subl	%edx, %eax
	movb	%al, 21(%ebx)
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %ecx
	movzwl	%cx, %ecx
	cmpl	$65535, %ecx
	je	L687
L691:
	movl	%ecx, %eax
	movl	$293605767, %edx
	sall	$14, %eax
	imull	%edx
	movl	$64, %eax
	sarl	$21, %edx
	subl	%edx, %eax
	movb	%al, 40(%esp)
L687:
	movl	$-1171354717, %eax
	leal	20(%ebx), %edx
	subl	24(%esp), %edx
	subl	24(%esp), %edi
	mull	%edx
	movzbl	40(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 20(%ebx)
	movl	$-1171354717, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-15, 16(%ebx)
	movzbl	18(%ebp), %eax
	movb	%al, 18(%ebx)
	movl	52(%esp), %eax
	movzbl	273(%eax), %eax
	movl	$50332416, 96(%esi)
	movl	$600, 188(%esi)
	movb	%al, 273(%esi)
	xorl	%eax, %eax
	movw	%ax, 176(%esi)
	movl	44(%esp), %eax
	addl	$3, %eax
	movl	%eax, _krandcount
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %eax
	movl	$-7552, %ecx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L688
	movl	$1677747263, %ecx
	sall	$14, %eax
	mull	%ecx
	movl	$-10, %ecx
	shrl	$23, %edx
	subl	%edx, %ecx
	sall	$7, %ecx
L688:
	movl	$-1171354717, %eax
	leal	36(%ebx), %edx
	subl	24(%esp), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ebx), %eax
	movw	%cx, 36(%ebx)
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
	movzwl	36(%ebx), %eax
	sarw	%ax
	cwtl
	movl	%eax, 160(%esi)
	cmpb	$0, _GlobalSkipZrange
	je	L726
L689:
	addw	$1, 28(%esp)
	movzwl	28(%esp), %eax
	cmpw	50(%esp), %ax
	je	L639
L645:
	movl	_randomseed, %eax
	movl	_krandcount, %ebx
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	movzwl	%cx, %ecx
	cmpl	$65535, %ecx
	je	L727
	movl	%ecx, %edx
	movl	$-1610571775, %eax
	addl	$2, %ebx
	sall	$14, %edx
	mull	%edx
	shrl	$21, %edx
	leal	210(%edx,%edx), %eax
	movl	%eax, 24(%esp)
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %ecx
	movzwl	%cx, %ecx
	movl	%ecx, %eax
	cmpb	$0, 49(%esp)
	je	L674
	movl	$199, %edx
	cmpl	$65535, %ecx
	je	L675
L672:
	sall	$14, %eax
	movl	$1677747263, %esi
	mull	%esi
	shrl	$21, %edx
L675:
	movzwl	32(%esp), %eax
	leal	512(%eax,%edx), %edx
	andl	$2047, %edx
L676:
	movl	8(%ebp), %eax
	movl	4(%ebp), %edi
	movl	%ebx, _krandcount
	movswl	14(%ebp), %ebx
	movl	%ecx, _randomseed
	movl	%eax, 36(%esp)
	movl	0(%ebp), %esi
	movw	%dx, 32(%esp)
	movzbl	21(%ebp), %eax
	movswl	_tilesiz+2(,%ebx,4), %ecx
	testb	$-128, 12(%ebp)
	jne	L728
	cmpb	$64, %al
	je	L729
	imull	%ecx, %eax
	sall	$2, %eax
L683:
	movl	36(%esp), %ecx
	subl	%eax, %ecx
	subl	$20, %ecx
	jmp	L681
	.p2align 4,,10
	.p2align 3
L684:
	orw	$-32640, %ax
	jmp	L685
	.p2align 4,,10
	.p2align 3
L686:
	movb	$30, 21(%ebx)
	movl	$65516, %ecx
	jmp	L691
	.p2align 4,,10
	.p2align 3
L727:
	addl	$2, %ebx
	cmpb	$0, 49(%esp)
	movl	$65516, %eax
	movl	$848, 24(%esp)
	movl	$65516, %ecx
	jne	L672
L673:
	sall	$14, %eax
	movl	$-2147450879, %edi
	mull	%edi
	shrl	$21, %edx
	movl	%edx, %esi
L677:
	movzwl	32(%esp), %edx
	addw	$1280, %dx
	subl	%esi, %edx
	andl	$2047, %edx
	jmp	L676
	.p2align 4,,10
	.p2align 3
L674:
	movl	$255, %esi
	cmpl	$65535, %ecx
	je	L677
	jmp	L673
	.p2align 4,,10
	.p2align 3
L726:
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	call	__Z13DoActorZranges
	jmp	L689
	.p2align 4,,10
	.p2align 3
L729:
	movl	%ecx, %eax
	sall	$8, %eax
	jmp	L683
	.p2align 4,,10
	.p2align 3
L725:
	movl	%ecx, %eax
	sall	$7, %eax
	jmp	L680
	.cfi_endproc
LFE84:
	.p2align 4
	.globl	__Z9InitShellss.isra.0
	.def	__Z9InitShellss.isra.0;	.scl	2;	.type	32;	.endef
__Z9InitShellss.isra.0:
LFB86:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	cwtl
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
	movl	_User(,%eax,4), %edi
	movl	%eax, 32(%esp)
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	(%eax), %ebp
	movl	4(%eax), %ebx
	movl	%edi, 28(%esp)
	movl	%eax, %edi
	movswl	14(%edi), %esi
	movl	8(%eax), %eax
	movw	%dx, 36(%esp)
	movzbl	21(%edi), %ecx
	movswl	_tilesiz+2(,%esi,4), %edx
	testb	$-128, 12(%edi)
	je	L731
	movsbl	_picanm+2(%esi,%esi,4), %esi
	sall	$8, %esi
	cmpb	$64, %cl
	je	L759
	imull	%edx, %ecx
	addl	%ecx, %ecx
	leal	(%ecx,%esi), %edx
	movl	%ecx, 24(%esp)
	movl	%eax, %ecx
	subl	%edx, %ecx
L733:
	movl	24(%esp), %edx
	subl	%esi, %edx
	addl	%edx, %eax
	addl	%eax, %ecx
	sarl	%ecx
	cmpw	$-4, 36(%esp)
	jne	L760
L737:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L750
	movl	$524296215, %esi
	sall	$14, %eax
	mull	%esi
	movl	$_s_ShotgunShellShrap, %esi
	shrl	$17, %edx
	addw	$2000, %dx
	negl	%edx
	movw	%dx, 38(%esp)
	movl	$2180, %edx
	jmp	L739
	.p2align 4,,10
	.p2align 3
L731:
	cmpb	$64, %cl
	je	L761
	imull	%edx, %ecx
	leal	0(,%ecx,4), %edx
L735:
	movl	%eax, %ecx
	subl	%edx, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	cmpw	$-4, 36(%esp)
	je	L737
L760:
	jl	L740
	movzwl	36(%esp), %eax
	addl	$3, %eax
	cmpw	$1, %ax
	ja	L740
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L749
	movl	$524296215, %esi
	sall	$14, %eax
	mull	%esi
	movl	$_s_UziShellShrap, %esi
	shrl	$17, %edx
	addw	$1500, %dx
	negl	%edx
	movw	%dx, 38(%esp)
	movl	$2152, %edx
L739:
	movl	$64, 20(%esp)
	movswl	28(%edi), %eax
	movl	%ecx, 12(%esp)
	movl	%esi, %ecx
	movl	%ebx, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%eax, 16(%esp)
	movswl	24(%edi), %eax
	movl	%eax, (%esp)
	movl	$6, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ebx
	movzwl	38(%esp), %ecx
	movswl	%ax, %ebp
	imull	$44, %ebp, %eax
	movl	%ebx, 24(%esp)
	movl	_User(,%ebp,4), %esi
	addl	%eax, %ebx
	leal	36(%eax), %edx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 36(%ebx)
	movl	28(%esp), %ecx
	movl	144(%ecx), %eax
	testl	%eax, %eax
	je	L741
	movl	288(%eax), %ecx
	leal	8(%ebx), %edx
	movl	$-1171354717, %eax
	subl	24(%esp), %edx
	mull	%edx
	movl	%ecx, 28(%esp)
	sarl	$31, %ecx
	movl	28(%esp), %eax
	xorw	%cx, %cx
	leal	32768(%eax,%ecx), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	testl	%eax, %eax
	leal	65535(%eax), %edx
	cmovns	%eax, %edx
	movl	$100, %eax
	sarl	$16, %edx
	subl	%edx, %eax
	imull	$42, %eax, %eax
	addl	%eax, 8(%ebx)
L741:
	movzwl	82(%esi), %eax
	cmpw	$2152, %ax
	je	L743
	cmpw	$2180, %ax
	jne	L745
	movl	$-1171354717, %eax
	leal	8(%ebx), %edx
	subl	24(%esp), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	subl	$3328, 8(%ebx)
	movzwl	28(%edi), %eax
	leal	28(%ebx), %edi
	movw	%ax, 28(%ebx)
	movl	$2500, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z18HelpMissileLateralsi
	movl	%edi, %edx
	movl	$-1171354717, %eax
	movswl	28(%ebx), %ecx
	subl	_sprite, %edx
	mull	%edx
	addl	$512, %ecx
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	movl	$1300, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z18HelpMissileLateralsi
	subl	_sprite, %edi
	movl	$-1171354717, %eax
	movswl	28(%ebx), %ecx
	mull	%edi
	movl	_randomseed, %eax
	addl	$1, _krandcount
	subl	$192, %ecx
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %eax
	addl	$1, _spritechanged(,%edx,4)
	movzwl	28(%ebx), %ecx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	sarl	$5, %eax
	andl	$127, %eax
	leal	-64(%ecx,%eax), %ecx
	movl	$-1171354717, %eax
	movw	%cx, 28(%ebx)
	andw	$2047, %cx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	_sprite, %edx
	mull	%edx
	movw	%cx, 28(%ebx)
	movl	$-1171354717, %eax
	movl	$0, 276(%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	_sprite, %edx
	mull	%edx
	movb	$18, 20(%ebx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$18, 21(%ebx)
L745:
	movl	32(%esp), %eax
	movl	%ebp, %edx
	call	__Z8SetOwnerss
	movl	_sprite, %edi
	leal	16(%ebx), %edx
	movl	$-1171354717, %ecx
	addl	$1, _krandcount
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%edi, %edx
	movb	$-15, 16(%ebx)
	movw	%ax, 176(%esi)
	movl	%edx, %eax
	mull	%ecx
	movl	$16777472, 96(%esi)
	movl	$-599, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebx)
	andl	$-1610612737, 68(%esi)
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
	movswl	36(%ebx), %eax
	movl	%eax, 160(%esi)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L748
	sall	$14, %eax
	movl	$-939472145, %edx
	movl	$-200, %ecx
	mull	%edx
	shrl	$21, %edx
	subl	%edx, %ecx
L748:
	movw	%cx, 92(%esi)
	movl	_User(,%ebp,4), %edx
	movl	68(%edx), %eax
	andl	$-65, %eax
	orl	$32, %eax
	movl	%eax, 68(%edx)
	movl	$8, %eax
	movw	%ax, 94(%edx)
	movl	%ebp, (%esp)
	call	__Z6DoJumps
	movl	$8, %edx
	movw	%dx, 94(%esi)
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
L743:
	.cfi_restore_state
	movl	$-1171354717, %eax
	leal	8(%ebx), %edx
	subl	24(%esp), %edx
	mull	%edx
	leal	28(%ebx), %eax
	movl	%eax, 24(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	subl	$3328, 8(%ebx)
	movzwl	28(%edi), %eax
	cmpw	$-3, 36(%esp)
	movw	%ax, 28(%ebx)
	movl	$2500, 4(%esp)
	movl	%ebp, (%esp)
	je	L762
	call	__Z18HelpMissileLateralsi
	movl	24(%esp), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	movswl	28(%ebx), %ecx
	addl	$512, %ecx
	shrl	$5, %edx
	andl	$2047, %ecx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	movl	$1500, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z18HelpMissileLateralsi
	movswl	28(%ebx), %ecx
	addl	$-128, %ecx
L758:
	movl	_sprite, %edi
	movl	24(%esp), %edx
	movl	$-1171354717, %eax
	andl	$2047, %ecx
	subl	%edi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	_randomseed, %eax
	movw	%cx, 28(%ebx)
	leal	(%eax,%eax,4), %ecx
	addl	$1, _spritechanged(,%edx,4)
	leal	1(%eax,%ecx,4), %eax
	movzwl	28(%ebx), %ecx
	addl	$1, _krandcount
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	sarl	$5, %eax
	andl	$127, %eax
	leal	-64(%ecx,%eax), %ecx
	movw	%cx, 28(%ebx)
	andw	$2047, %cx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%edi, %edx
	movw	%cx, 28(%ebx)
	movl	$-1171354717, %ecx
	movl	$0, 276(%esi)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%edi, %edx
	movb	$13, 20(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$13, 21(%ebx)
	jmp	L745
	.p2align 4,,10
	.p2align 3
L740:
	xorl	%eax, %eax
	xorl	%esi, %esi
	xorl	%edx, %edx
	movw	%ax, 38(%esp)
	jmp	L739
	.p2align 4,,10
	.p2align 3
L759:
	sall	$7, %edx
	movl	%eax, %ecx
	movl	%edx, 24(%esp)
	addl	%esi, %edx
	subl	%edx, %ecx
	jmp	L733
	.p2align 4,,10
	.p2align 3
L761:
	sall	$8, %edx
	jmp	L735
	.p2align 4,,10
	.p2align 3
L750:
	movl	$-2999, %eax
	movl	$_s_ShotgunShellShrap, %esi
	movl	$2180, %edx
	movw	%ax, 38(%esp)
	jmp	L739
	.p2align 4,,10
	.p2align 3
L749:
	movl	$-2499, %eax
	movl	$_s_UziShellShrap, %esi
	movl	$2152, %edx
	movw	%ax, 38(%esp)
	jmp	L739
	.p2align 4,,10
	.p2align 3
L762:
	call	__Z18HelpMissileLateralsi
	movswl	28(%ebx), %eax
	movl	24(%esp), %edx
	subl	_sprite, %edx
	subl	$512, %eax
	andl	$2047, %eax
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	movl	$1000, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z18HelpMissileLateralsi
	movswl	28(%ebx), %ecx
	addl	$712, %ecx
	jmp	L758
	.cfi_endproc
LFE86:
	.p2align 4
	.globl	__Z16SectorLightShadeP12spritetypev7s
	.def	__Z16SectorLightShadeP12spritetypev7s;	.scl	2;	.type	32;	.endef
__Z16SectorLightShadeP12spritetypev7s:
LFB88:
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
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movzwl	42(%eax), %edx
	movl	%esi, %eax
	negl	%eax
	testb	$32, %dh
	cmovne	%eax, %esi
	testb	$-128, %dl
	jne	L765
	movl	_sector, %edi
	andb	$8, %dh
	je	L780
L766:
	movsbl	22(%ebx), %ecx
	movswl	%si, %eax
	movl	$-858993459, %edx
	addl	%eax, %ecx
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %ebp
	leal	28(,%ebp,8), %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movb	%cl, 28(%edi,%ebp,8)
	movzwl	42(%ebx), %edx
L765:
	testb	$1, %dh
	jne	L767
	movl	_sector, %edi
	andb	$8, %dh
	je	L781
L768:
	movsbl	23(%ebx), %ecx
	movswl	%si, %eax
	movl	$-858993459, %edx
	addl	%eax, %ecx
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %ebp
	leal	20(,%ebp,8), %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movb	%cl, 20(%edi,%ebp,8)
	movzwl	42(%ebx), %edx
L767:
	andw	$512, %dx
	jne	L763
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %ecx
	movl	_sector, %eax
	leal	(%eax,%ecx,8), %eax
	movzwl	(%eax), %ecx
	movzwl	2(%eax), %edi
	addl	%ecx, %edi
	leal	-1(%edi), %eax
	movw	%ax, 10(%esp)
	cmpw	%cx, %ax
	jl	L763
	movl	%ebx, %eax
	subl	_sprite, %eax
	movl	_wall, %ebp
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	movl	_User(,%eax,4), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movswl	%si, %eax
	movl	%edx, %esi
	movl	%eax, (%esp)
	.p2align 4
	.p2align 3
L775:
	movl	4(%esp), %edi
	movswl	%si, %eax
	movsbl	(%edi,%eax), %edx
	movswl	%cx, %eax
	addl	(%esp), %edx
	sall	$5, %eax
	leal	0(%ebp,%eax), %edi
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movb	%dl, 20(%edi)
	movzwl	42(%ebx), %eax
	testb	$8, %ah
	jne	L770
	leal	21(%edi), %eax
	movzbl	17(%ebx), %edx
	subl	%ebp, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movb	%dl, 21(%edi)
	movzwl	42(%ebx), %eax
L770:
	movl	%esi, %edx
	leal	1(%edx), %esi
	testb	$4, %ah
	je	L772
	movswl	10(%edi), %eax
	cmpw	$16383, %ax
	ja	L772
	movl	4(%esp), %edi
	sall	$5, %eax
	movswl	%si, %esi
	movsbl	(%edi,%esi), %esi
	leal	0(%ebp,%eax), %edi
	addl	(%esp), %esi
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%esi, %eax
	movb	%al, 20(%edi)
	testb	$8, 43(%ebx)
	jne	L774
	leal	21(%edi), %eax
	movzbl	17(%ebx), %esi
	subl	%ebp, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%esi, %eax
	movb	%al, 21(%edi)
L774:
	leal	2(%edx), %esi
L772:
	addl	$1, %ecx
	cmpw	%cx, 10(%esp)
	jge	L775
L763:
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
L781:
	.cfi_restore_state
	movswl	24(%ebx), %eax
	movl	$-858993459, %edx
	movzbl	17(%ebx), %ebp
	leal	(%eax,%eax,4), %ecx
	leal	21(,%ecx,8), %eax
	mull	%edx
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movb	%al, 21(%edi,%ecx,8)
	jmp	L768
	.p2align 4,,10
	.p2align 3
L780:
	movswl	24(%ebx), %eax
	movl	$-858993459, %edx
	movzbl	17(%ebx), %ebp
	leal	(%eax,%eax,4), %ecx
	leal	29(,%ecx,8), %eax
	mull	%edx
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movb	%al, 29(%edi,%ecx,8)
	jmp	L766
	.cfi_endproc
LFE88:
	.p2align 4
	.globl	__Z15DiffuseLightingP12spritetypev7
	.def	__Z15DiffuseLightingP12spritetypev7;	.scl	2;	.type	32;	.endef
__Z15DiffuseLightingP12spritetypev7:
LFB89:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movzwl	_headspritestat+168, %ebx
	cmpw	$-1, %bx
	je	L782
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movl	%eax, %esi
	.p2align 4
	.p2align 3
L783:
	movswl	%bx, %eax
	movzwl	38(%esi), %ecx
	movzwl	_nextspritestat(%eax,%eax), %ebx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	%cx, 38(%eax)
	jne	L786
	movzbl	18(%eax), %edx
	movsbw	16(%esi), %cx
	addl	$1, %edx
	imulw	28(%eax), %dx
	addl	%ecx, %edx
	movzwl	34(%esi), %ecx
	cmpw	%cx, %dx
	cmovg	%ecx, %edx
	testb	$8, 43(%eax)
	jne	L785
	movzbl	17(%esi), %ecx
	movb	%cl, 17(%eax)
L785:
	movswl	%dx, %edx
	call	__Z16SectorLightShadeP12spritetypev7s
L786:
	cmpw	$-1, %bx
	jne	L783
	movl	4(%esp), %esi
	.cfi_restore 6
L782:
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE89:
	.p2align 4
	.globl	__Z15DoLightingMatchss
	.def	__Z15DoLightingMatchss;	.scl	2;	.type	32;	.endef
__Z15DoLightingMatchss:
LFB90:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	movzwl	_headspritestat+166, %edi
	movw	%dx, (%esp)
	cmpw	$-1, %di
	je	L794
	movl	%ebx, 12(%esp)
	movl	%esi, 16(%esp)
	movl	%ebp, 24(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	movl	%eax, %ebp
	.p2align 4
	.p2align 3
L795:
	movswl	%di, %ecx
	movl	_sprite, %esi
	movzwl	_nextspritestat(%ecx,%ecx), %edi
	imull	$44, %ecx, %ecx
	leal	(%esi,%ecx), %ebx
	cmpw	38(%ebx), %bp
	jne	L803
	movzbl	18(%ebx), %eax
	cmpb	$3, %al
	je	L797
	ja	L798
	leal	42(%ebx), %edx
	subl	%esi, %edx
	testb	%al, %al
	movl	$-1171354717, %eax
	je	L799
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	42(%ebx), %eax
	movl	%eax, %ecx
	orb	$64, %ch
	movw	%cx, 42(%ebx)
	cmpw	$-1, (%esp)
	je	L838
	cmpw	$1, (%esp)
	jne	L809
L814:
	addl	$1, _spritechanged(,%edx,4)
	orw	$64, 42(%ebx)
L807:
	movl	$1, %eax
	movw	%ax, (%esp)
	.p2align 4
	.p2align 3
L803:
	cmpw	$-1, %di
	jne	L795
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %ebp
	.cfi_restore 5
L794:
	movl	20(%esp), %edi
	addl	$28, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L798:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpb	$4, %al
	jne	L803
	leal	42(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%esi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	42(%ebx), %ecx
	orb	$64, %ch
	movw	%cx, 42(%ebx)
	movl	_spritechanged(,%edx,4), %eax
	leal	1(%eax), %esi
	cmpw	$1, (%esp)
	je	L839
	testw	%cx, %cx
	js	L811
	cmpw	$0, (%esp)
	je	L837
L811:
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	orw	$64, 42(%ebx)
	jmp	L803
	.p2align 4,,10
	.p2align 3
L799:
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	42(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%eax, %edx
	orb	$64, %dh
	movw	%dx, 42(%ebx)
	cmpw	$-1, (%esp)
	je	L840
	cmpw	$1, (%esp)
	je	L805
L806:
	movl	4(%esp), %eax
	leal	16(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%esi, %edx
	addl	$1, _spritechanged(,%eax,4)
	movzwl	34(%ebx), %eax
	andw	$-65, 42(%ebx)
	movw	%ax, 4(%esp)
	movl	%edx, %eax
	mull	%ecx
	movzbl	4(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ebx), %edx
	subl	%esi, %edx
	movb	%al, 16(%ebx)
	movl	%edx, %eax
	mull	%ecx
	movl	%ebx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movsbl	16(%ebx), %edx
	movb	$0, 17(%ebx)
	call	__Z16SectorLightShadeP12spritetypev7s
	movl	%ebx, %eax
	call	__Z15DiffuseLightingP12spritetypev7
	jmp	L803
	.p2align 4,,10
	.p2align 3
L797:
	leal	42(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%esi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	42(%ebx), %eax
	movl	%eax, %ecx
	orb	$64, %ch
	movw	%cx, 42(%ebx)
	cmpw	$-1, (%esp)
	je	L841
	cmpw	$1, (%esp)
	je	L814
L815:
	movzbl	17(%ebx), %eax
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ebx), %edx
	movl	%edx, 4(%esp)
	subl	%esi, %edx
	movb	%al, 11(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	andw	$-65, 42(%ebx)
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	movzwl	34(%ebx), %ecx
	subl	%esi, %edx
	movb	$0, 17(%ebx)
	mull	%edx
	movl	%ebx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movsbl	%cl, %edx
	movb	%cl, 16(%ebx)
	call	__Z16SectorLightShadeP12spritetypev7s
	movl	%ebx, %eax
	call	__Z15DiffuseLightingP12spritetypev7
	movl	$-1171354717, %eax
	movl	4(%esp), %edx
	subl	_sprite, %edx
	mull	%edx
	movzbl	11(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 17(%ebx)
	jmp	L803
	.p2align 4,,10
	.p2align 3
L838:
	testb	$64, %al
	je	L814
	xorl	%eax, %eax
	movw	%ax, (%esp)
L809:
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	movzwl	34(%ebx), %ecx
	movl	$-1171354717, %eax
	subl	%esi, %edx
	andw	$-65, 42(%ebx)
	mull	%edx
	movl	%ebx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movsbl	%cl, %edx
	movb	%cl, 16(%ebx)
	call	__Z16SectorLightShadeP12spritetypev7s
	movl	%ebx, %eax
	call	__Z15DiffuseLightingP12spritetypev7
	jmp	L803
	.p2align 4,,10
	.p2align 3
L840:
	testb	$64, %al
	jne	L842
L805:
	movl	4(%esp), %eax
	leal	16(%ebx), %edx
	sarl	$2, %ecx
	subl	%esi, %edx
	imull	$-1171354717, %ecx, %ecx
	addl	$1, _spritechanged(,%eax,4)
	movswl	32(%ebx), %eax
	orw	$64, 42(%ebx)
	negl	%eax
	movl	%eax, (%esp)
	movl	$-1171354717, %eax
	mull	%edx
	movzbl	(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ebx), %edx
	movb	%al, 16(%ebx)
	movl	_User(,%ecx,4), %eax
	subl	%esi, %edx
	movzbl	262(%eax), %ecx
	movl	$-1171354717, %eax
	mull	%edx
	movl	%ebx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movsbl	16(%ebx), %edx
	movb	%cl, 17(%ebx)
	call	__Z16SectorLightShadeP12spritetypev7s
	movl	%ebx, %eax
	call	__Z15DiffuseLightingP12spritetypev7
	jmp	L807
	.p2align 4,,10
	.p2align 3
L839:
	testw	%cx, %cx
	jns	L811
L837:
	movl	%esi, _spritechanged(,%edx,4)
	addw	$-32768, 42(%ebx)
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	orw	$64, 42(%ebx)
	jmp	L803
	.p2align 4,,10
	.p2align 3
L841:
	testb	$64, %al
	je	L814
	xorl	%ecx, %ecx
	movw	%cx, (%esp)
	jmp	L815
	.p2align 4,,10
	.p2align 3
L842:
	xorl	%eax, %eax
	movw	%ax, (%esp)
	jmp	L806
	.cfi_endproc
LFE90:
	.p2align 4
	.globl	__Z14testquadinsectPiPK4vec2IiEs
	.def	__Z14testquadinsectPiPK4vec2IiEs;	.scl	2;	.type	32;	.endef
__Z14testquadinsectPiPK4vec2IiEs:
LFB91:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movswl	%cx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movl	$-1, (%eax)
L846:
	movl	4(%esi,%ebx,8), %edx
	movl	(%esi,%ebx,8), %eax
	movl	%edi, %ecx
	call	_inside
	testl	%eax, %eax
	je	L855
	addl	$1, %ebx
	cmpl	$4, %ebx
	jne	L846
	xorl	%ebx, %ebx
L848:
	addl	$1, %ebx
	movl	%ebx, %eax
	movl	-8(%esi,%ebx,8), %ebp
	movl	-4(%esi,%ebx,8), %edx
	movl	%edi, 16(%esp)
	andl	$3, %eax
	movl	$1073741823, 12(%esp)
	leal	(%esi,%eax,8), %eax
	movl	4(%eax), %ecx
	movl	%ecx, 8(%esp)
	movl	(%eax), %eax
	movl	$1073741823, %ecx
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	movl	%ebp, %eax
	call	_cansee.constprop.0
	testl	%eax, %eax
	je	L843
	cmpl	$4, %ebx
	jne	L848
L843:
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
L855:
	.cfi_restore_state
	movl	%ebx, 0(%ebp)
	addl	$20, %esp
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
LFE91:
	.p2align 4
	.globl	__Z15testpointinquadiiPiS_
	.def	__Z15testpointinquadiiPiS_;	.scl	2;	.type	32;	.endef
__Z15testpointinquadiiPiS_:
LFB95:
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
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movl	%ecx, (%esp)
	movl	40(%esp), %ebp
	movl	$0, 8(%esp)
	movl	%eax, 16(%esp)
	xorl	%eax, %eax
L859:
	movl	0(%ebp,%eax,4), %ecx
	addl	$1, %eax
	movl	%eax, %ebx
	andl	$3, %ebx
	subl	%edi, %ecx
	movl	0(%ebp,%ebx,4), %edx
	movl	%ecx, %esi
	movl	%ecx, 12(%esp)
	subl	%edi, %edx
	xorl	%edx, %esi
	jns	L857
	movl	(%esp), %esi
	movl	16(%esp), %ecx
	movl	-4(%esi,%eax,4), %esi
	subl	%ecx, %esi
	movl	%esi, 4(%esp)
	movl	(%esp), %esi
	movl	(%esi,%ebx,4), %ebx
	subl	%ecx, %ebx
	movl	4(%esp), %ecx
	movl	%ecx, %esi
	xorl	%ebx, %esi
	js	L858
	xorl	%ecx, 8(%esp)
L857:
	cmpl	$4, %eax
	jne	L859
	movl	8(%esp), %eax
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	sarl	$31, %eax
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L858:
	.cfi_restore_state
	movl	8(%esp), %esi
	movl	12(%esp), %ecx
	xorl	%edx, %esi
	imull	%ebx, %ecx
	imull	4(%esp), %edx
	subl	%ecx, %edx
	xorl	%edx, %esi
	movl	%esi, 8(%esp)
	jmp	L857
	.cfi_endproc
LFE95:
	.p2align 4
	.globl	__ZL16UpdateValidModesii.lto_priv.0
	.def	__ZL16UpdateValidModesii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL16UpdateValidModesii.lto_priv.0:
LFB96:
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
	subl	$16, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	_validmodecnt, %esi
	movl	$0, __ZL12numvalidbpps.lto_priv.0
	movl	%eax, 8(%esp)
	movl	$0, __ZL19numvalidresolutions.lto_priv.0
	testl	%esi, %esi
	jle	L862
	movl	%edx, %edi
	sall	$4, %esi
	movl	$_validmode, %edx
	movb	$0, 7(%esp)
	movl	$0, 12(%esp)
	addl	%edx, %esi
	xorl	%ecx, %ecx
	movb	$0, 6(%esp)
	jmp	L869
	.p2align 5
	.p2align 4,,10
	.p2align 3
L864:
	addl	$16, %edx
	cmpl	%edx, %esi
	je	L882
L869:
	movzbl	9(%edx), %eax
	andl	$1, %eax
	cmpl	%edi, %eax
	jne	L864
	movzbl	8(%edx), %ebx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jg	L866
	jmp	L865
	.p2align 4
	.p2align 4,,10
	.p2align 3
L883:
	addl	$1, %eax
	cmpl	%ecx, %eax
	je	L867
L866:
	cmpl	%ebx, __ZL9validbpps.lto_priv.0(,%eax,4)
	jne	L883
L865:
	cmpl	%eax, %ecx
	je	L867
L868:
	cmpl	%ebx, 8(%esp)
	jne	L864
	movl	12(%esp), %eax
	movlps	(%edx), %xmm0
	addl	$16, %edx
	movb	$1, 7(%esp)
	movlps	%xmm0, __ZL16validresolutions.lto_priv.0(,%eax,8)
	addl	$1, %eax
	movl	%eax, 12(%esp)
	cmpl	%edx, %esi
	jne	L869
	.p2align 4
	.p2align 3
L882:
	cmpb	$0, 7(%esp)
	je	L870
	movl	12(%esp), %eax
	movl	%eax, __ZL19numvalidresolutions.lto_priv.0
L870:
	cmpb	$0, 6(%esp)
	je	L862
	movl	%ecx, __ZL12numvalidbpps.lto_priv.0
L862:
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
L867:
	.cfi_restore_state
	movl	%ebx, __ZL9validbpps.lto_priv.0(,%ecx,4)
	addl	$1, %ecx
	movb	$1, 6(%esp)
	jmp	L868
	.cfi_endproc
LFE96:
	.p2align 4
	.globl	__Z9ExitMenusv
	.def	__Z9ExitMenusv;	.scl	2;	.type	32;	.endef
__Z9ExitMenusv:
LFB97:
	.cfi_startproc
	movl	$0, _ControlPanelType
	movb	$0, _UsingMenus
	cmpb	$0, _LoadGameOutsideMoveLoop
	je	L887
	ret
	.p2align 4,,10
	.p2align 3
L887:
	movzbl	_PauseKeySet, %eax
	orb	_DemoPlaying, %al
	orb	_DemoRecording, %al
	jne	L886
	cmpl	$1, _numplayers
	jle	L888
L886:
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	jmp	__Z15SetRedrawScreenP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L888:
	movb	$0, _GamePaused
	jmp	L886
	.cfi_endproc
LFE97:
	.p2align 4
	.def	__Z13MNU_StartGamev;	.scl	3;	.type	32;	.endef
__Z13MNU_StartGamev:
LFB101:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	_currentmenu, %eax
	movb	$0, _ready2send
	movl	$0, 8(%esp)
	movzwl	32(%eax), %eax
	movw	%ax, _Skill
	xorl	%eax, %eax
	cmpw	$0, _EpisodeMenuSelection
	setg	%al
	leal	1(,%eax,4), %eax
	movw	%ax, _Level
	call	__Z9ExitMenusv
	movzwl	_Skill, %eax
	movb	$0, _DemoPlaying
	movb	$1, _ExitLevel
	movb	$1, _NewGame
	movb	$0, _DemoMode
	movb	$0, _CameraTestMode
	testw	%ax, %ax
	je	L905
	cmpw	$1, %ax
	je	L906
	cmpw	$2, %ax
	je	L907
	cmpw	$3, %ax
	je	L908
L895:
	movl	$1, %eax
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L905:
	.cfi_restore_state
	leal	8(%esp), %edx
	movl	$0, 4(%esp)
	movl	$248, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
L892:
	testl	%eax, %eax
	jle	L895
	movl	_MV_Installed, %edx
	testl	%edx, %edx
	je	L895
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	addl	$1073741823, %eax
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -8
	leal	0(,%eax,4), %ebx
	movl	(%edx,%eax,4), %eax
	.p2align 4
	.p2align 3
L896:
	testl	%eax, %eax
	je	L904
	movl	112(%eax), %ecx
	testl	%ecx, %ecx
	jne	L904
	call	_handleevents.isra.0
	movl	__ZL10MV_Handles.lto_priv.0, %eax
	movl	_MV_Installed, %edx
	movl	(%eax,%ebx), %eax
	testl	%edx, %edx
	jne	L896
L904:
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	$1, %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L907:
	.cfi_def_cfa_offset 20
	leal	8(%esp), %edx
	movl	$0, 4(%esp)
	movl	$349, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	jmp	L892
	.p2align 4,,10
	.p2align 3
L906:
	leal	8(%esp), %edx
	movl	$0, 4(%esp)
	movl	$368, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	jmp	L892
	.p2align 4,,10
	.p2align 3
L908:
	leal	8(%esp), %edx
	movl	$0, 4(%esp)
	movl	$369, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	jmp	L892
	.cfi_endproc
LFE101:
	.p2align 4
	.globl	__Z16MNU_StartNetGamev
	.def	__Z16MNU_StartNetGamev;	.scl	2;	.type	32;	.endef
__Z16MNU_StartNetGamev:
LFB103:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movzbl	_gs+33, %eax
	movb	$0, _ready2send
	subl	$1, %eax
	movw	%ax, _Skill
	movzbl	_gs+32, %eax
	addl	$1, %eax
	movw	%ax, _Level
	call	__Z9ExitMenusv
	movb	$0, _DemoPlaying
	movb	$1, _ExitLevel
	movb	$1, _NewGame
	movb	$0, _DemoInitOnce
	movl	$0, _cust_callback
	movb	$0, _InputMode
	cmpb	$0, _AutoNet
	jne	L910
	cmpb	$0, _FirstTimeIntoGame
	jne	L911
L910:
	movzbl	_gs+23, %eax
	movl	%ebx, 20(%esp)
	movl	%edi, 28(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movzbl	_gs+37, %ebx
	movb	%al, _gNet+17
	movl	%eax, %edi
	movzwl	_gs+34, %eax
	movzwl	_gs+37, %ecx
	movzbl	_gs+61, %edx
	movl	%esi, 24(%esp)
	movw	%ax, _gNet+15
	leal	(%ebx,%ebx,4), %eax
	addl	%eax, %eax
	movl	%ebp, 32(%esp)
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	movzwl	_gs+34, %ebp
	movl	%eax, _gNet
	movzbl	%ch, %eax
	movswl	_TimeLimitTable(%eax,%eax), %esi
	movb	%dl, _gNet+19
	imull	$7200, %esi, %eax
	movl	%eax, _gNet+4
	cmpb	$0, _ShortGameMode
	jne	L917
L912:
	movl	%eax, _gNet+8
	movzbl	_gs+31, %eax
	movl	$1, %esi
	movzbl	_gs+36, %ebx
	movb	%al, 3(%esp)
	addl	$1, %eax
	cmpw	$2, %ax
	movb	%bl, _gNet+14
	cmove	%esi, %eax
	sete	_gNet+18
	movw	%ax, _gNet+12
	cmpb	$0, _CommEnabled
	jne	L918
	movl	20(%esp), %ebx
	.cfi_restore 3
	movl	24(%esp), %esi
	.cfi_restore 6
	movl	28(%esp), %edi
	.cfi_restore 7
	movl	32(%esp), %ebp
	.cfi_restore 5
L911:
	movl	$1, %eax
	addl	$36, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L917:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	imull	$3600, %esi, %eax
	movl	%ebx, _gNet
	movl	%eax, _gNet+4
	jmp	L912
	.p2align 4,,10
	.p2align 3
L918:
	movzwl	_Level, %eax
	movb	%dl, 18(%esp)
	movl	$13, %edx
	movb	%bl, 15(%esp)
	movb	%al, 9(%esp)
	movzwl	_Skill, %eax
	movw	%bp, 13(%esp)
	movb	%al, 11(%esp)
	movzbl	3(%esp), %eax
	movb	$30, 6(%esp)
	movb	%al, 12(%esp)
	movl	%edi, %eax
	movb	%al, 8(%esp)
	leal	6(%esp), %eax
	movw	%cx, 16(%esp)
	call	__Z18netbroadcastpacketPhi
	movl	20(%esp), %ebx
	.cfi_restore 3
	movl	24(%esp), %esi
	.cfi_restore 6
	movl	$1, %eax
	movl	28(%esp), %edi
	.cfi_restore 7
	movl	32(%esp), %ebp
	.cfi_restore 5
	addl	$36, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE103:
	.section .rdata,"dr"
LC13:
	.ascii "^How to Order\0"
LC14:
	.ascii "^Credits\0"
	.text
	.p2align 4
	.globl	__Z13MNU_InitMenusv
	.def	__Z13MNU_InitMenusv;	.scl	2;	.type	32;	.endef
__Z13MNU_InitMenusv:
LFB104:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$24, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	imull	$24124, _myconnectindex, %edx
	leal	_Player(%edx), %edi
	movl	%edi, %eax
	call	__Z15SetRedrawScreenP12PLAYERstruct
	movl	22988(%edi), %esi
	leal	22988(%edi), %edx
	cmpl	%edx, %esi
	je	L920
	movl	(%esi), %edi
	jmp	L922
	.p2align 4,,10
	.p2align 3
L921:
	movl	(%edi), %eax
	movl	%edi, %esi
	cmpl	%edi, %edx
	je	L920
L932:
	movl	%eax, %edi
L922:
	movl	208(%esi), %eax
	cmpl	$250, %eax
	jg	L920
	cmpw	$8, 176(%esi)
	jne	L921
	cmpw	$40, 42(%esi)
	jne	L921
	cmpl	$250, %eax
	jne	L921
	movl	32(%esi), %eax
	movl	%edx, 12(%esp)
	call	__Z15SetRedrawScreenP12PLAYERstruct
	movl	12(%esp), %edx
	movl	$__Z8pSuicideP18PANEL_SPRITEstruct, 172(%esi)
	movl	%edi, %esi
	movl	(%edi), %eax
	cmpl	%edi, %edx
	jne	L932
	.p2align 4
	.p2align 3
L920:
	movl	_gs, %ecx
	movl	$-1609957215, %eax
	movl	_gs+8, %esi
	imull	%ecx
	movl	%esi, %eax
	addl	%ecx, %edx
	sarl	$31, %ecx
	sarl	$11, %edx
	subl	%ecx, %edx
	movl	$-2004318071, %ecx
	movl	%edx, _slidersettings+4
	imull	%ecx
	addl	%esi, %edx
	sarl	$31, %esi
	sarl	$3, %edx
	subl	%esi, %edx
	movl	_gs+4, %esi
	movl	%edx, _slidersettings+8
	movl	%esi, %eax
	imull	%ecx
	movsbl	_gs+12, %eax
	movl	%eax, _slidersettings+16
	movsbl	_gs+13, %eax
	addl	%esi, %edx
	sarl	$31, %esi
	movl	%eax, _slidersettings+20
	movsbl	_gs+14, %eax
	sarl	$3, %edx
	subl	%esi, %edx
	movl	%eax, _slidersettings+24
	movl	_gs+324, %eax
	movl	%edx, _slidersettings+12
	leal	-60(%eax), %ecx
	movl	$1717986919, %eax
	imull	%ecx
	movl	_xdim, %eax
	sarl	$31, %ecx
	movl	%eax, 20(%esp)
	movl	_ydim, %eax
	sarl	%edx
	subl	%ecx, %edx
	movl	%eax, 16(%esp)
	movl	_bpp, %eax
	movl	%edx, _slidersettings+60
	movl	_fullscreen, %edx
	movw	%dx, _buttonsettings+60
	call	__ZL16UpdateValidModesii.lto_priv.0
	movl	__ZL12numvalidbpps.lto_priv.0, %esi
	movl	_bpp, %ecx
	testl	%esi, %esi
	jle	L923
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	$1, %edi
	.p2align 5
	.p2align 4
	.p2align 3
L925:
	cmpl	%ecx, __ZL9validbpps.lto_priv.0(,%eax,4)
	cmove	%eax, %ebx
	cmove	%edi, %edx
	addl	$1, %eax
	cmpl	%eax, %esi
	jne	L925
	testb	%dl, %dl
	je	L923
	movl	%ebx, _slidersettings+56
L923:
	movl	_fullscreen, %ebx
	movl	$1, 4(%esp)
	leal	16(%esp), %edx
	leal	20(%esp), %eax
	movl	%ebx, (%esp)
	call	_videoCheckMode
	cmpl	$2147483646, %eax
	ja	L926
	movl	__ZL19numvalidresolutions.lto_priv.0, %edx
	testl	%edx, %edx
	jle	L926
	movl	20(%esp), %eax
	movl	16(%esp), %esi
	xorl	%ebx, %ebx
	movl	%eax, 12(%esp)
	xorl	%eax, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L928:
	movl	12(%esp), %ecx
	cmpl	__ZL16validresolutions.lto_priv.0(,%eax,8), %ecx
	jne	L927
	movl	8(%esp), %edi
	cmpl	__ZL16validresolutions.lto_priv.0+4(,%eax,8), %esi
	movl	$1, %ecx
	cmove	%ecx, %ebx
	cmove	%eax, %edi
	movl	%edi, 8(%esp)
L927:
	addl	$1, %eax
	cmpl	%eax, %edx
	jne	L928
	testb	%bl, %bl
	je	L926
	movl	8(%esp), %eax
	movl	%eax, _slidersettings+52
L926:
	movzbl	_gs+21, %eax
	movl	$_networkgroup, %edx
	movw	%ax, _buttonsettings+2
	movzbl	_gs+23, %eax
	movw	%ax, _buttonsettings+6
	movzbl	_gs+25, %eax
	movw	%ax, _buttonsettings+10
	movzbl	_gs+22, %eax
	movw	%ax, _buttonsettings+4
	movzbl	_gs+20, %eax
	movw	%ax, _buttonsettings+16
	movzbl	_gs+15, %eax
	movw	%ax, _buttonsettings+8
	movzbl	_gs+17, %eax
	movw	%ax, _buttonsettings+12
	movzbl	_gs+26, %eax
	movw	%ax, _buttonsettings+18
	movzbl	_gs+27, %eax
	movw	%ax, _buttonsettings+20
	movzbl	_gs+28, %eax
	movw	%ax, _buttonsettings+22
	movzbl	_gs+62, %eax
	movw	%ax, _buttonsettings+54
	movzbl	_gs+29, %eax
	movw	%ax, _buttonsettings+24
	movzbl	_gs+328, %eax
	movw	%ax, _buttonsettings+26
	movzbl	_gs+65, %eax
	movw	%ax, _buttonsettings+58
	movzbl	_gs+30, %eax
	movw	%ax, _buttonsettings+28
	movzbl	_gs+63, %eax
	movw	%ax, _buttonsettings+56
	movzbl	_gs+322, %eax
	movw	%ax, _buttonsettings+62
	movzbl	_gs+323, %eax
	movw	%ax, _buttonsettings+64
	movzbl	_gs+24, %eax
	movw	%ax, _buttonsettings+66
	movzbl	_gs+31, %eax
	movl	%eax, _slidersettings+28
	movzbl	_gs+32, %eax
	movl	%eax, _slidersettings+32
	movzbl	_gs+33, %eax
	movl	%eax, _slidersettings+36
	movzbl	_gs+37, %eax
	movl	%eax, _slidersettings+40
	movzbl	_gs+38, %eax
	movl	%eax, _slidersettings+44
	movzbl	_gs+39, %eax
	movl	%eax, _slidersettings+48
	movzbl	_gs+61, %eax
	movw	%ax, _buttonsettings+52
	movzbl	_gs+35, %eax
	movw	%ax, _buttonsettings+44
	movzbl	_gs+36, %eax
	movw	%ax, _buttonsettings+46
	movzbl	_gs+34, %eax
	movw	%ax, _buttonsettings+48
	movzbl	_gs+40, %eax
	movw	%ax, _buttonsettings+50
	movl	_MapCopyEnabled, %eax
	movw	%ax, _buttonsettings+68
	movl	_ZeroKillDemosEnabled, %eax
	movw	%ax, _buttonsettings+70
	movl	_ScoreShotEnabled, %eax
	movl	$0, _slidersettings+72
	movw	%ax, _buttonsettings+72
	movl	_MinHUDArmorEnabled, %eax
	movl	$0, _slidersettings+76
	movw	%ax, _buttonsettings+74
	movl	_DemoTimeEnabled, %eax
	movl	$0, _slidersettings+80
	movw	%ax, _buttonsettings+76
	movl	_ShowHeatEnabled, %eax
	movl	$0, _slidersettings+84
	movw	%ax, _buttonsettings+78
	movl	_ShowNukeEnabled, %eax
	movw	%ax, _buttonsettings+80
	movl	_MouseAnalogScale, %eax
	sarl	$13, %eax
	movl	%eax, _slidersettings+64
	movl	_MouseAnalogScale+4, %eax
	sarl	$13, %eax
	cmpl	$2, _numplayers
	movl	%eax, _slidersettings+68
	movl	$_episodegroup, %eax
	cmovge	%edx, %eax
	movl	%eax, _main_i+24
	testb	$1, _SW_GameFlags
	je	L936
	movl	$LC13, %edx
	movl	$35, %eax
L930:
	movl	%edx, _main_i+244
	movb	%al, _main_i+240
	cmpb	$0, _DemoPlaying
	je	L919
	orl	$8, _main_i+4
	orl	$8, _screen_i+60
	orl	$8, _options_i+60
	orl	$8, _options_i+172
	orl	$8, _options_i+396
	orl	$8, _options_i+508
	orl	$8, _options_i+676
	orl	$8, _options_i+732
L919:
	addl	$24, %esp
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
L936:
	.cfi_restore_state
	movl	$LC14, %edx
	movl	$46, %eax
	jmp	L930
	.cfi_endproc
LFE104:
	.p2align 4
	.globl	__Z22MNU_MeasureStringLargePKcPsS1_
	.def	__Z22MNU_MeasureStringLargePKcPsS1_;	.scl	2;	.type	32;	.endef
__Z22MNU_MeasureStringLargePKcPsS1_:
LFB110:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%ebp, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movzwl	(%ecx), %edi
	movzbl	(%eax), %ebx
	movl	%eax, 8(%esp)
	movw	%di, 6(%esp)
	testb	%bl, %bl
	je	L953
	movl	%edx, 12(%esp)
	xorl	%edi, %edi
	movl	%ecx, 16(%esp)
	jmp	L958
	.p2align 4,,10
	.p2align 3
L963:
	movl	%esi, (%esp)
	call	*__imp__toupper
	addw	$3641, %ax
L955:
	cwtl
	movzwl	6(%esp), %ecx
	movzwl	_tilesiz(,%eax,4), %edx
	movzwl	_tilesiz+2(,%eax,4), %eax
	cmpw	%ax, %cx
	leal	1(%ebp,%edx), %ebp
	cmovge	%ecx, %eax
	movw	%ax, 6(%esp)
L957:
	movl	8(%esp), %edx
	addl	$1, %edi
	movswl	%di, %eax
	movzbl	(%edx,%eax), %ebx
	testb	%bl, %bl
	je	L962
L958:
	movzbl	%bl, %esi
	movl	%esi, (%esp)
	call	*__imp__isalpha
	testl	%eax, %eax
	jne	L963
	leal	-48(%esi), %eax
	cmpl	$9, %eax
	ja	L956
	movzbl	__ZL11lg_xlat_num-48(%esi), %eax
	addw	$3732, %ax
	jmp	L955
	.p2align 4,,10
	.p2align 3
L956:
	leal	10(%ebp), %eax
	cmpb	$32, %bl
	cmove	%eax, %ebp
	jmp	L957
	.p2align 4,,10
	.p2align 3
L962:
	movl	12(%esp), %edx
	movl	16(%esp), %esi
L953:
	movzwl	6(%esp), %eax
	movw	%bp, (%edx)
	movw	%ax, (%esi)
	addl	$20, %esp
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
LFE110:
	.p2align 4
	.globl	__Z17MNU_MeasureStringPKcPsS1_
	.def	__Z17MNU_MeasureStringPKcPsS1_;	.scl	2;	.type	32;	.endef
__Z17MNU_MeasureStringPKcPsS1_:
LFB111:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%esi, 12(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%ecx, %eax
	movl	%edx, (%esp)
	movzbl	(%esi), %edx
	cmpb	$94, %dl
	je	L974
	movl	%ebx, 8(%esp)
	movl	%ebp, 20(%esp)
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	movzwl	(%ecx), %ebp
	testb	%dl, %dl
	je	L970
	movl	%edi, 16(%esp)
	.cfi_offset 7, -12
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movl	%eax, 4(%esp)
	jmp	L969
	.p2align 6
	.p2align 4,,10
	.p2align 3
L975:
	addw	$4575, %ax
	movzwl	%ax, %eax
	addw	_tilesiz(,%eax,4), %bx
	movzwl	_tilesiz+2(,%eax,4), %eax
	cmpw	%ax, %bp
	cmovl	%eax, %ebp
	addl	$1, %ecx
	movswl	%cx, %eax
	movzbl	(%esi,%eax), %edx
	testb	%dl, %dl
	je	L972
L969:
	movzbl	%dl, %eax
	leal	-33(%eax), %edi
	cmpw	$93, %di
	jbe	L975
	cmpb	$32, %dl
	jne	L972
	addl	$1, %ecx
	addl	$4, %ebx
	movswl	%cx, %eax
	movzbl	(%esi,%eax), %edx
	testb	%dl, %dl
	jne	L969
L972:
	movl	4(%esp), %eax
	movl	16(%esp), %edi
	.cfi_restore 7
L966:
	movl	(%esp), %esi
	movw	%bx, (%esi)
	movw	%bp, (%eax)
	movl	8(%esp), %ebx
	.cfi_restore 3
	movl	20(%esp), %ebp
	.cfi_restore 5
	movl	12(%esp), %esi
	addl	$24, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L974:
	.cfi_def_cfa_offset 28
	.cfi_offset 6, -16
	movl	(%esp), %edx
	leal	1(%esi), %eax
	movl	12(%esp), %esi
	addl	$24, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z22MNU_MeasureStringLargePKcPsS1_
L970:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	xorl	%ebx, %ebx
	jmp	L966
	.cfi_endproc
LFE111:
	.p2align 4
	.globl	__Z14MNU_DrawStringssPKcss
	.def	__Z14MNU_DrawStringssPKcss;	.scl	2;	.type	32;	.endef
__Z14MNU_DrawStringssPKcss:
LFB112:
	.cfi_startproc
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movl	%edi, 48(%esp)
	.cfi_offset 7, -12
	movswl	%ax, %edi
	movzwl	60(%esp), %eax
	movw	%ax, 36(%esp)
	movzwl	64(%esp), %eax
	movw	%ax, 38(%esp)
	movzbl	(%ecx), %eax
	cmpb	$94, %al
	je	L989
	testb	%al, %al
	je	L976
	movl	%ebp, 52(%esp)
	.cfi_offset 5, -8
	movl	%edx, %ebp
	movl	%esi, 44(%esp)
	sall	$16, %ebp
	.cfi_offset 6, -16
	leal	1(%ecx), %esi
	movl	%ebx, 40(%esp)
	.cfi_offset 3, -20
	jmp	L982
	.p2align 4,,10
	.p2align 3
L979:
	cmpb	$32, %al
	jne	L988
	movzbl	(%esi), %eax
	addl	$1, %esi
	addl	$4, %edi
	testb	%al, %al
	je	L988
L982:
	movzbl	%al, %ebx
	leal	-33(%ebx), %edx
	cmpw	$93, %dx
	ja	L979
	movl	_xdim, %edx
	movl	_ydim, %eax
	addw	$4575, %bx
	subl	$1, %edx
	js	L980
	subl	$1, %eax
	js	L980
	movl	%edx, 28(%esp)
	movzbl	38(%esp), %edx
	movl	$65536, %ecx
	movl	%eax, 32(%esp)
	movl	%edi, %eax
	movl	%edx, 12(%esp)
	movsbl	36(%esp), %edx
	sall	$16, %eax
	movl	$0, 24(%esp)
	movl	%edx, 8(%esp)
	movswl	%bx, %edx
	movl	%edx, 4(%esp)
	movl	%ebp, %edx
	movl	$0, 20(%esp)
	movl	$10, 16(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L980:
	movzwl	%bx, %ebx
	addl	$1, %esi
	movswl	_tilesiz(,%ebx,4), %eax
	addl	%eax, %edi
	movzbl	-1(%esi), %eax
	testb	%al, %al
	jne	L982
L988:
	movl	40(%esp), %ebx
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
	movl	52(%esp), %ebp
	.cfi_restore 5
L976:
	movl	48(%esp), %edi
	addl	$56, %esp
	.cfi_remember_state
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L989:
	.cfi_restore_state
	movl	%ebx, 40(%esp)
	.cfi_offset 3, -20
	movswl	%di, %eax
	movl	48(%esp), %edi
	addl	$1, %ecx
	movswl	_MenuTextShade, %ebx
	movl	$0, 64(%esp)
	movswl	%dx, %edx
	movl	%ebx, 60(%esp)
	movl	40(%esp), %ebx
	.cfi_restore 3
	addl	$56, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__ZL26MNU_DrawStringLargeColoredssPKcss
	.cfi_endproc
LFE112:
	.p2align 4
	.def	__Z19MNU_DoEpisodeSelect8UserCallP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__Z19MNU_DoEpisodeSelect8UserCallP9MENU_ITEM:
LFB113:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	$_EpisodeSubtitles, %ecx
	movl	$63, %edx
	movl	$30, %eax
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	call	__Z14MNU_DrawStringssPKcss
	movl	$30, %eax
	movl	$_EpisodeSubtitles+41, %ecx
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	movl	$96, %edx
	call	__Z14MNU_DrawStringssPKcss
	movl	$1, %eax
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE113:
	.p2align 4
	.def	__ZL10MNU_Dialogv;	.scl	3;	.type	32;	.endef
__ZL10MNU_Dialogv:
LFB114:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	$8, %eax
	movw	%ax, 14(%esp)
	movl	_dialog, %eax
	testl	%eax, %eax
	je	L993
	movl	%edi, 28(%esp)
	.cfi_offset 7, -12
	leal	16(%esp), %edi
	leal	14(%esp), %ecx
	movl	%edi, %edx
	movl	%ebx, 20(%esp)
	movl	%esi, 24(%esp)
	movl	%ebp, 32(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	call	__Z17MNU_MeasureStringPKcPsS1_
	movl	_dialog+4, %eax
	testl	%eax, %eax
	je	L997
	leal	18(%esp), %edx
	leal	14(%esp), %ecx
	movl	$2, %esi
	call	__Z17MNU_MeasureStringPKcPsS1_
	movw	%si, 8(%esp)
	movl	$4, %edx
	movl	$2, %ecx
L994:
	movswl	14(%esp), %eax
	xorl	%esi, %esi
	movw	%ax, 10(%esp)
	imull	%ecx, %eax
	addl	%edx, %eax
	movl	$200, %edx
	subl	%eax, %edx
	movl	%edx, %ebx
	shrl	$31, %ebx
	addl	%edx, %ebx
	sarl	%ebx
L995:
	movswl	(%edi,%esi,2), %eax
	movl	$320, %ebp
	movl	_dialog(,%esi,4), %ecx
	movswl	%bx, %edx
	movl	$16, 4(%esp)
	subl	%eax, %ebp
	movl	$1, (%esp)
	movl	%ebp, %eax
	shrl	$31, %eax
	addl	%ebp, %eax
	sarl	%eax
	cwtl
	call	__Z14MNU_DrawStringssPKcss
	movzwl	10(%esp), %eax
	leal	3(%eax,%ebx), %ebx
	leal	1(%esi), %eax
	movl	$1, %esi
	cmpw	%ax, 8(%esp)
	jg	L995
	movl	20(%esp), %ebx
	.cfi_restore 3
	movl	24(%esp), %esi
	.cfi_restore 6
	movl	28(%esp), %edi
	.cfi_restore 7
	movl	32(%esp), %ebp
	.cfi_restore 5
L993:
	xorl	%eax, %eax
	movw	%ax, _mnu_input
	movl	$_mnu_input, %eax
	call	_CONTROL_ClearUserInput
	movl	$_mnu_input, %eax
	call	_CONTROL_GetUserInput.isra.0
	movzbl	_keystatus+21, %eax
	movl	$1, %edx
	orb	_keystatus+28, %al
	movzbl	_mnu_input, %eax
	cmovne	%edx, %eax
	addl	$36, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L997:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$1, %ebx
	movl	$2, %edx
	movl	$1, %ecx
	movw	%bx, 8(%esp)
	jmp	L994
	.cfi_endproc
LFE114:
	.section .rdata,"dr"
	.align 4
LC15:
	.ascii "PRESS Y TO QUIT, N TO PLAY, F TO FORCE QUIT.\0"
	.text
	.p2align 4
	.def	__Z14MNU_QuitCustom8UserCallP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__Z14MNU_QuitCustom8UserCallP9MENU_ITEM:
LFB115:
	.cfi_startproc
	cmpl	$2, 4(%esp)
	je	L1005
	movl	_cust_callback, %ecx
	testl	%ecx, %ecx
	je	L1024
	call	__ZL10MNU_Dialogv
	cmpb	$0, _DrawScreen
	jne	L1005
L1026:
	cmpb	$0, _mnu_input+1
	jne	L1008
	orb	_keystatus+49, %al
	jne	L1008
	movl	$__Z14MNU_QuitCustom8UserCallP9MENU_ITEM, _cust_callback
	movl	4(%esp), %eax
	movl	%eax, _cust_callback_call
	movl	8(%esp), %eax
	movl	%eax, _cust_callback_item
	jmp	L1009
	.p2align 4,,10
	.p2align 3
L1008:
	movl	$0, _cust_callback
	call	__Z9ExitMenusv
L1009:
	movzbl	_keystatus+21, %eax
	orb	_keystatus+28, %al
	je	L1025
L1010:
	cmpb	$0, _DemoPlaying
	je	L1012
L1016:
	call	__Z13TerminateGamev
L1013:
	movb	$0, _KB_LastScan
	xorl	%eax, %eax
L1017:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1017
	.p2align 4
	.p2align 3
L1005:
	movl	$1, %eax
L1004:
	ret
	.p2align 4,,10
	.p2align 3
L1024:
	movl	4(%esp), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	jne	L1004
	movl	$0, _dialog+4
	movl	$LC15, _dialog
	call	__ZL10MNU_Dialogv
	cmpb	$0, _DrawScreen
	je	L1026
	jmp	L1005
	.p2align 4,,10
	.p2align 3
L1025:
	cmpb	$0, _mnu_input
	jne	L1010
	cmpb	$0, _keystatus+33
	je	L1013
	jmp	L1016
	.p2align 4,,10
	.p2align 3
L1012:
	cmpb	$1, _CommPlayers
	jbe	L1014
	movb	$1, _MultiPlayQuitFlag
L1015:
	movl	_osd, %eax
	andl	$-3, 1172(%eax)
	xorl	%eax, %eax
	call	__Z16OSD_CaptureInputi
	call	__Z9ExitMenusv
	jmp	L1013
	.p2align 4,,10
	.p2align 3
L1014:
	movb	$1, _QuitFlag
	jmp	L1015
	.cfi_endproc
LFE115:
	.p2align 4
	.def	__Z11LoadSaveMsgPKc;	.scl	3;	.type	32;	.endef
__Z11LoadSaveMsgPKc:
LFB121:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	movl	$0, __ZL8permtail.lto_priv.0
	movl	$0, __ZL8permhead.lto_priv.0
	call	__Z19DrawMenuLevelScreenv
	movl	%ebx, 4(%esp)
	movl	$_ds, (%esp)
	call	_strcpy
	leal	8(%esp), %ecx
	leal	10(%esp), %edx
	movl	$_ds, %eax
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	10(%esp), %eax
	movl	$320, %edx
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	movl	$_ds, %ecx
	subl	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	movl	$170, %edx
	sarl	%eax
	cwtl
	call	__Z14MNU_DrawStringssPKcss
	addl	$12, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	_videoNextPage
	.cfi_endproc
LFE121:
	.section .rdata,"dr"
LC16:
	.ascii "Load saved game\0"
LC17:
	.ascii "\"%s\" (Y/N)?\0"
LC18:
	.ascii "Press SPACE to restart\0"
LC19:
	.ascii "Loading...\0"
	.text
	.p2align 4
	.globl	__Z19MNU_QuickLoadCustom8UserCallP9MENU_ITEM
	.def	__Z19MNU_QuickLoadCustom8UserCallP9MENU_ITEM;	.scl	2;	.type	32;	.endef
__Z19MNU_QuickLoadCustom8UserCallP9MENU_ITEM:
LFB123:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	movl	_cust_callback, %ecx
	movl	_myconnectindex, %ebx
	testl	%ecx, %ecx
	je	L1051
	cmpl	$2, 24(%esp)
	je	L1033
	call	__ZL10MNU_Dialogv
	cmpb	$0, _DrawScreen
	jne	L1033
L1054:
	testb	%al, %al
	jne	L1034
	movzbl	_keystatus+49, %eax
	orb	_keystatus+57, %al
	orb	_keystatus+28, %al
	jne	L1052
	movl	$__Z19MNU_QuickLoadCustom8UserCallP9MENU_ITEM, _cust_callback
	movl	24(%esp), %eax
	movl	%eax, _cust_callback_call
	movl	28(%esp), %eax
	movl	%eax, _cust_callback_item
L1039:
	movb	$0, _KB_LastScan
	xorl	%eax, %eax
L1042:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1042
	.p2align 4
	.p2align 3
L1033:
	movl	$1, %eax
L1029:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1052:
	.cfi_restore_state
	movl	$0, _cust_callback
	cmpb	$0, _ReloadPrompt
	jne	L1053
L1036:
	movb	$0, _KB_LastScan
	xorl	%eax, %eax
L1037:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1037
	call	__Z9ExitMenusv
	jmp	L1039
	.p2align 4,,10
	.p2align 3
L1051:
	movl	24(%esp), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	jne	L1029
	movswl	_QuickLoadNum, %eax
	movl	$LC17, 4(%esp)
	movl	$_QuickLoadDescrDialog, (%esp)
	movl	$0, _dialog+4
	leal	(%eax,%eax,4), %eax
	movl	$LC16, _dialog
	sall	$4, %eax
	addl	$_SaveGameDescr, %eax
	movl	%eax, 8(%esp)
	call	_sprintf
	movl	$_QuickLoadDescrDialog, _dialog+4
	call	__ZL10MNU_Dialogv
	cmpb	$0, _DrawScreen
	je	L1054
	jmp	L1033
	.p2align 4,,10
	.p2align 3
L1053:
	movl	$999, %eax
	movzwl	_GlobInfoStringTime, %ecx
	movl	$LC18, %edx
	movb	$0, _ReloadPrompt
	movw	%ax, _GlobInfoStringTime
	imull	$24124, %ebx, %eax
	movl	%ecx, 12(%esp)
	addl	$_Player, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movl	12(%esp), %ecx
	movw	%cx, _GlobInfoStringTime
	jmp	L1036
	.p2align 4,,10
	.p2align 3
L1034:
	movl	$0, _cust_callback
	movl	$LC19, %eax
	call	__Z11LoadSaveMsgPKc
	call	__Z11DoQuickLoadv
	testb	%al, %al
	jne	L1040
	movl	_save_totalclock, %edx
	movb	$1, _ready2send
	movl	$0, _totalclock+8
	movl	%edx, _totalclock
	movl	%edx, _totalclock+12
	jmp	L1029
	.p2align 4,,10
	.p2align 3
L1040:
	movb	%al, 12(%esp)
	call	__Z9ExitMenusv
	movzbl	12(%esp), %eax
	jmp	L1029
	.cfi_endproc
LFE123:
	.p2align 4
	.def	__Z17MNU_GetLoadCustomv;	.scl	3;	.type	32;	.endef
__Z17MNU_GetLoadCustomv:
LFB128:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	_currentmenu, %eax
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -12
	movswl	32(%eax), %ebx
	leal	(%ebx,%ebx,4), %eax
	sall	$4, %eax
	movzbl	_SaveGameDescr(%eax), %edx
	testb	%dl, %dl
	je	L1055
	movzbl	_InMenuLevel, %edx
	movl	%esi, 8(%esp)
	.cfi_offset 6, -8
	orb	_DemoMode, %dl
	orb	_DemoPlaying, %dl
	je	L1057
	movl	$LC19, %eax
	call	__Z11LoadSaveMsgPKc
	movl	%ebx, %eax
	call	__Z8LoadGames
	xorl	%edx, %edx
	cmpl	$-1, %eax
	jne	L1071
	movl	8(%esp), %esi
	.cfi_restore 6
L1055:
	movl	4(%esp), %ebx
	movl	%edx, %eax
	addl	$12, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1071:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movw	%bx, _QuickLoadNum
	movw	%bx, _SaveGameGroup+32
	call	__Z9ExitMenusv
	movzbl	_DemoMode, %eax
	orb	_DemoPlaying, %al
	movb	$1, _ExitLevel
	movb	$1, _LoadGameOutsideMoveLoop
	je	L1058
	movb	$1, _LoadGameFromDemo
L1058:
	movl	$1, %edx
	movl	8(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	4(%esp), %ebx
	addl	$12, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	movl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1057:
	.cfi_restore_state
	movl	$LC19, %eax
	movb	%dl, 3(%esp)
	call	__Z11LoadSaveMsgPKc
	movl	_totalclock, %eax
	movb	$0, _ready2send
	movl	%eax, _save_totalclock
	movl	%ebx, %eax
	call	__Z8LoadGames
	movzbl	3(%esp), %edx
	cmpl	$-1, %eax
	je	L1072
	movl	$-1, %eax
	movw	%bx, _QuickLoadNum
	movw	%bx, _SaveGameGroup+32
	movb	$1, _ready2send
	movw	%ax, _LastSaveNum
	call	__Z9ExitMenusv
	cmpb	$0, _DemoMode
	je	L1058
	movb	$1, _ExitLevel
	movb	$0, _DemoPlaying
	jmp	L1058
	.p2align 4,,10
	.p2align 3
L1072:
	movl	_save_totalclock, %eax
	movl	8(%esp), %esi
	.cfi_restore 6
	movb	$1, _ready2send
	movl	$0, _totalclock+8
	movl	%eax, _totalclock
	movl	%eax, _totalclock+12
	jmp	L1055
	.cfi_endproc
LFE128:
	.section .rdata,"dr"
LC20:
	.ascii "Saving...\0"
	.text
	.p2align 4
	.def	__Z17MNU_GetSaveCustomv;	.scl	3;	.type	32;	.endef
__Z17MNU_GetSaveCustomv:
LFB130:
	.cfi_startproc
	cmpb	$0, _InMenuLevel
	jne	L1091
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	_currentmenu, %eax
	movswl	32(%eax), %ebx
	cmpb	$0, _MenuInputMode
	jne	L1096
	leal	(%ebx,%ebx,4), %eax
	movl	$_BackupSaveGameDescr, (%esp)
	xorl	%ebx, %ebx
	sall	$4, %eax
	addl	$_SaveGameDescr, %eax
	movl	%eax, 4(%esp)
	call	_strcpy
	movzbl	_g_keyAsciiEnd, %ecx
	movzbl	_g_keyAsciiPos, %eax
	jmp	L1078
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1080:
	movzbl	%al, %edx
	addl	$1, %eax
	movl	$1, %ebx
	andl	$63, %eax
	cmpb	$0, _g_keyAsciiFIFO(%edx)
	je	L1097
L1078:
	cmpb	%al, %cl
	jne	L1080
	testb	%bl, %bl
	je	L1081
	movb	%cl, _g_keyAsciiPos
L1081:
	movb	$1, _MenuInputMode
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1096:
	.cfi_restore_state
	movl	$LC20, %eax
	call	__Z11LoadSaveMsgPKc
	movl	_totalclock, %eax
	movb	$0, _ready2send
	movl	%eax, _save_totalclock
	movswl	%bx, %eax
	call	__Z8SaveGames
	cmpl	$-1, %eax
	je	L1076
	movl	$-1, %eax
	movw	%bx, _QuickLoadNum
	movw	%ax, _LastSaveNum
	movw	%bx, _LoadGameGroup+32
L1076:
	movl	_save_totalclock, %eax
	movb	$1, _ready2send
	movl	$0, _totalclock+8
	movl	%eax, _totalclock
	movl	%eax, _totalclock+12
	call	__Z9ExitMenusv
	movb	$0, _MenuInputMode
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1091:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1097:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -8
	leal	1(%eax), %edx
	andl	$63, %edx
	cmpb	%al, %cl
	cmovne	%edx, %eax
	jmp	L1078
	.cfi_endproc
LFE130:
	.section .rdata,"dr"
LC21:
	.ascii "%s_\0"
LC22:
	.ascii "Overwrite previous\0"
LC23:
	.ascii "  saved game (Y/N)\0"
LC24:
	.ascii "Empty\0"
	.text
	.p2align 4
	.def	__Z16MNU_LoadSaveDraw8UserCallP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__Z16MNU_LoadSaveDraw8UserCallP9MENU_ITEM:
LFB133:
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
	subl	$200, %esp
	.cfi_def_cfa_offset 220
	movl	_currentmenu, %eax
	movl	_ydim, %edx
	movzwl	32(%eax), %ebp
	movl	_xdim, %eax
	subl	$1, %eax
	js	L1099
	subl	$1, %edx
	js	L1099
	movl	%edx, 32(%esp)
	movl	$65536, %ecx
	movl	$1703936, %edx
	movl	%eax, 28(%esp)
	movl	$9568256, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$26, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$2919, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
	movl	_xdim, %eax
	movl	_ydim, %edx
	subl	$1, %eax
	js	L1099
	subl	$1, %edx
	js	L1099
	movl	%edx, 32(%esp)
	movl	$65536, %ecx
	movl	$1703936, %edx
	movl	%eax, 28(%esp)
	movl	$327680, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$26, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$2924, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
	movswl	%bp, %eax
	movl	_ydim, %ecx
	leal	(%eax,%eax,2), %edx
	leal	27(%eax,%edx,4), %edx
	movl	_xdim, %eax
	sall	$16, %edx
	subl	$1, %eax
	js	L1099
	subl	$1, %ecx
	js	L1099
	movl	%ecx, 32(%esp)
	movl	$65536, %ecx
	movl	%eax, 28(%esp)
	movl	$524288, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$26, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$2918, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L1099:
	movl	$_SaveGameDescr, %esi
	movl	$28, %edi
	xorl	%ebx, %ebx
	jmp	L1106
	.p2align 4,,10
	.p2align 3
L1103:
	addl	$1, %ebx
	addl	$13, %edi
	addl	$80, %esi
	cmpw	$10, %bx
	je	L1113
L1106:
	cmpw	%bx, %bp
	je	L1114
L1100:
	cmpb	$0, (%esi)
	je	L1103
	movl	$16, 4(%esp)
	movswl	%di, %edx
	movl	%esi, %ecx
	addl	$1, %ebx
	movl	$1, (%esp)
	movl	$9, %eax
	addl	$13, %edi
	addl	$80, %esi
	call	__Z14MNU_DrawStringssPKcss
	cmpw	$10, %bx
	jne	L1106
L1113:
	movl	_ydim, %ecx
	movl	_xdim, %edx
	movswl	_screen_tile, %eax
	leal	-1(%ecx), %esi
	leal	-1(%edx), %ebx
	cmpw	$-1, %ax
	je	L1107
	cmpl	$30719, %eax
	ja	L1108
	testl	%ebx, %ebx
	js	L1108
	testl	%esi, %esi
	js	L1108
	movl	%eax, 4(%esp)
	movl	$65536, %ecx
	movl	$2031616, %edx
	movl	$9895936, %eax
	movl	%esi, 32(%esp)
	movl	%ebx, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$94, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$512, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L1108:
	movl	$__ZL13SaveGameInfo1.lto_priv.0, %ecx
	movl	$136, %edx
	movl	$159, %eax
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	call	__Z14MNU_DrawStringssPKcss
	movl	$__ZL13SaveGameInfo2.lto_priv.0, %ecx
	movl	$144, %edx
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	movl	$159, %eax
	call	__Z14MNU_DrawStringssPKcss
	cmpb	$0, _SavePrompt
	jne	L1115
	addl	$200, %esp
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
	cmpb	$0, _MenuInputMode
	je	L1100
	cmpb	$0, _SavePrompt
	jne	L1100
	testb	$32, _totalclock
	jne	L1116
	leal	40(%esp), %ecx
	movl	%esi, 4(%esp)
	movl	%ecx, (%esp)
	movl	%ecx, 36(%esp)
	call	_strcpy
	movl	36(%esp), %ecx
L1102:
	movl	$16, 4(%esp)
	movswl	%di, %edx
	movl	$9, %eax
	movl	$1, (%esp)
	call	__Z14MNU_DrawStringssPKcss
	jmp	L1103
	.p2align 4,,10
	.p2align 3
L1116:
	leal	40(%esp), %ecx
	movl	%esi, 8(%esp)
	movl	%ecx, (%esp)
	movl	$LC21, 4(%esp)
	movl	%ecx, 36(%esp)
	call	_sprintf
	movl	36(%esp), %ecx
	jmp	L1102
	.p2align 4,,10
	.p2align 3
L1115:
	movl	$LC22, %ecx
	movl	$78, %edx
	movl	$156, %eax
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	call	__Z14MNU_DrawStringssPKcss
	movl	$156, %eax
	movl	$LC23, %ecx
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	movl	$90, %edx
	call	__Z14MNU_DrawStringssPKcss
	addl	$200, %esp
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
L1107:
	.cfi_restore_state
	testl	%edx, %edx
	jle	L1110
	testl	%ecx, %ecx
	jle	L1110
	movl	%esi, 32(%esp)
	movl	$65536, %ecx
	movl	$2031616, %edx
	movl	$9895936, %eax
	movl	%ebx, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$90, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$2922, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L1110:
	movl	$211, %eax
	movl	$LC24, %ecx
	movl	$78, %edx
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	call	__Z14MNU_DrawStringssPKcss
	addl	$200, %esp
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
	.cfi_endproc
LFE133:
	.section .rdata,"dr"
	.align 4
LC25:
	.ascii "Be sure to call 800-3DREALMS today\0"
LC26:
	.ascii "and order the game.\0"
	.align 4
LC27:
	.ascii "You are only playing the first \0"
	.align 4
LC28:
	.ascii "four levels, and are missing most\0"
	.align 4
LC29:
	.ascii "of the game, weapons and monsters.\0"
LC30:
	.ascii "See the ordering information.\0"
	.text
	.p2align 4
	.def	__Z20MNU_ShareWareMessageP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__Z20MNU_ShareWareMessageP9MENU_ITEM:
LFB136:
	.cfi_startproc
	testb	$1, _SW_GameFlags
	jne	L1126
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1126:
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$LC25, %eax
	movl	$320, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	leal	10(%esp), %ecx
	leal	8(%esp), %edx
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	8(%esp), %eax
	movl	%ebx, %edx
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	movl	$LC25, %ecx
	subl	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	movl	$110, %edx
	sarl	%eax
	cwtl
	call	__Z14MNU_DrawStringssPKcss
	leal	10(%esp), %ecx
	leal	8(%esp), %edx
	movl	$LC26, %eax
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	8(%esp), %eax
	movl	%ebx, %edx
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	movl	$LC26, %ecx
	subl	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	movl	$120, %edx
	sarl	%eax
	cwtl
	call	__Z14MNU_DrawStringssPKcss
	leal	10(%esp), %ecx
	leal	8(%esp), %edx
	movl	$LC27, %eax
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	8(%esp), %eax
	movl	%ebx, %edx
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	movl	$LC27, %ecx
	subl	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	movl	$130, %edx
	sarl	%eax
	cwtl
	call	__Z14MNU_DrawStringssPKcss
	leal	10(%esp), %ecx
	leal	8(%esp), %edx
	movl	$LC28, %eax
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	8(%esp), %eax
	movl	%ebx, %edx
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	movl	$LC28, %ecx
	subl	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	movl	$140, %edx
	sarl	%eax
	cwtl
	call	__Z14MNU_DrawStringssPKcss
	leal	10(%esp), %ecx
	leal	8(%esp), %edx
	movl	$LC29, %eax
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	8(%esp), %eax
	movl	%ebx, %edx
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	movl	$LC29, %ecx
	subl	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	movl	$150, %edx
	sarl	%eax
	cwtl
	call	__Z14MNU_DrawStringssPKcss
	leal	10(%esp), %ecx
	leal	8(%esp), %edx
	movl	$LC30, %eax
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	8(%esp), %eax
	movl	$LC30, %ecx
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	movl	$160, %edx
	subl	%eax, %ebx
	movl	%ebx, %eax
	shrl	$31, %eax
	addl	%ebx, %eax
	sarl	%eax
	cwtl
	call	__Z14MNU_DrawStringssPKcss
	movl	20(%esp), %eax
	orl	$8, 4(%eax)
	addl	$12, %esp
	.cfi_def_cfa_offset 8
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE136:
	.p2align 4
	.globl	__Z19MNU_DrawSmallStringssPKcss
	.def	__Z19MNU_DrawSmallStringssPKcss;	.scl	2;	.type	32;	.endef
__Z19MNU_DrawSmallStringssPKcss:
LFB138:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	%edi, 44(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movzbl	(%ecx), %eax
	testb	%al, %al
	je	L1127
	movl	%ebp, 48(%esp)
	.cfi_offset 5, -8
	movl	%edx, %ebp
	movl	%esi, 40(%esp)
	sall	$16, %ebp
	.cfi_offset 6, -16
	leal	1(%ecx), %esi
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	jmp	L1132
	.p2align 4,,10
	.p2align 3
L1129:
	cmpb	$32, %al
	jne	L1138
	movzbl	(%esi), %eax
	addl	$1, %esi
	addl	$4, %edi
	testb	%al, %al
	je	L1138
L1132:
	movzbl	%al, %ebx
	leal	-33(%ebx), %edx
	cmpw	$93, %dx
	ja	L1129
	movl	_xdim, %edx
	movl	_ydim, %eax
	addw	$2897, %bx
	subl	$1, %edx
	js	L1130
	subl	$1, %eax
	js	L1130
	movl	%edx, 28(%esp)
	movzbl	60(%esp), %edx
	movl	$65536, %ecx
	movl	%eax, 32(%esp)
	movl	%edi, %eax
	movl	%edx, 12(%esp)
	movsbl	56(%esp), %edx
	sall	$16, %eax
	movl	$0, 24(%esp)
	movl	%edx, 8(%esp)
	movswl	%bx, %edx
	movl	%edx, 4(%esp)
	movl	%ebp, %edx
	movl	$0, 20(%esp)
	movl	$10, 16(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L1130:
	movzbl	(%esi), %eax
	movzwl	%bx, %ebx
	addl	$1, %esi
	addw	_tilesiz(,%ebx,4), %di
	testb	%al, %al
	jne	L1132
L1138:
	movl	36(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	48(%esp), %ebp
	.cfi_restore 5
L1127:
	movl	44(%esp), %edi
	addl	$52, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE138:
	.section .rdata,"dr"
LC31:
	.ascii "  -\0"
LC32:
	.ascii "Keys Setup\0"
LC33:
	.ascii "Press the key to assign to\0"
LC34:
	.ascii "\"%s\" %s\0"
LC35:
	.ascii "or ESCAPE to cancel.\0"
LC36:
	.ascii "(primary)\0"
LC37:
	.ascii "(secondary)\0"
LC38:
	.ascii "More...\0"
	.text
	.p2align 4
	.def	__Z18MNU_KeySetupCustom8UserCallP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__Z18MNU_KeySetupCustom8UserCallP9MENU_ITEM:
LFB139:
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
	subl	$84, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %eax
	cmpl	$2, %eax
	je	L1156
	movl	_cust_callback, %edx
	testl	%edx, %edx
	je	L1234
L1142:
	movl	%eax, _cust_callback_call
	movl	12(%ebp), %eax
	movl	$__Z18MNU_KeySetupCustom8UserCallP9MENU_ITEM, _cust_callback
	movl	_ydim, %edx
	movl	%eax, _cust_callback_item
	xorl	%eax, %eax
	movw	%ax, 68(%esp)
	movl	_xdim, %eax
	subl	$1, %eax
	js	L1143
	subl	$1, %edx
	js	L1143
	movl	%edx, 32(%esp)
	movl	$65536, %ecx
	movl	$131072, %edx
	movl	%eax, 28(%esp)
	movl	$655360, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$26, 16(%esp)
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	$2427, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L1143:
	leal	60(%esp), %edx
	leal	68(%esp), %ecx
	movl	$LC32, %eax
	call	__Z22MNU_MeasureStringLargePKcPsS1_
	movswl	60(%esp), %eax
	movl	$320, %edx
	movl	$0, 4(%esp)
	movl	$LC32, %ecx
	subl	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	movswl	_MenuTextShade, %edx
	sarl	%eax
	movl	%edx, (%esp)
	cwtl
	movl	$5, %edx
	call	__ZL26MNU_DrawStringLargeColoredssPKcss
	movl	__ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME11currentmode, %eax
	testl	%eax, %eax
	je	L1144
	movl	$LC34, 52(%esp)
	movss	52(%esp), %xmm1
	movl	$8, %eax
	movss	LC39, %xmm0
	movl	$LC35, 76(%esp)
	movl	$LC36, 60(%esp)
	movl	__ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentkey, %esi
	unpcklps	%xmm1, %xmm0
	movl	$LC37, 64(%esp)
	movl	__ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentcol, %edi
	movw	%ax, 58(%esp)
	movlps	%xmm0, 68(%esp)
	cmpb	$0, _keystatus+1
	je	L1145
	movb	$0, _keystatus+1
	movl	$0, __ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME11currentmode
L1146:
	leal	56(%esp), %edx
	movl	$LC33, %eax
	leal	58(%esp), %ecx
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	58(%esp), %eax
	leal	68(%esp), %ebx
	leal	9(%eax,%eax,2), %edx
	movl	$200, %eax
	subl	%edx, %eax
	movl	%esi, %edx
	shrl	%eax
	movl	%eax, %esi
L1155:
	xorl	%eax, %eax
	movw	%ax, 56(%esp)
	movl	60(%esp,%edi,4), %eax
	movl	%eax, 12(%esp)
	movl	_gamefunctions(,%edx,4), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	$_ds, (%esp)
	movl	%eax, 4(%esp)
	call	_sprintf
	movzbl	_ds, %edx
	testb	%dl, %dl
	je	L1151
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1153:
	cmpb	$95, %dl
	jne	L1152
	movb	$32, _ds(%eax)
L1152:
	movzbl	_ds+1(%eax), %edx
	addl	$1, %eax
	testb	%dl, %dl
	jne	L1153
L1151:
	leal	58(%esp), %ecx
	leal	56(%esp), %edx
	movl	$_ds, %eax
	addl	$4, %ebx
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	56(%esp), %eax
	movswl	%si, %edx
	movl	$320, %ecx
	movl	$16, 4(%esp)
	subl	%eax, %ecx
	movl	$0, (%esp)
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	movl	$_ds, %ecx
	sarl	%eax
	cwtl
	call	__Z14MNU_DrawStringssPKcss
	leal	80(%esp), %eax
	cmpl	%eax, %ebx
	je	L1156
	movswl	58(%esp), %eax
	movl	__ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentcol, %edi
	movl	__ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentkey, %edx
	leal	3(%esi,%eax), %esi
	jmp	L1155
	.p2align 4,,10
	.p2align 3
L1144:
	movl	$0, 68(%esp)
	leal	68(%esp), %eax
	movl	$0, 72(%esp)
	call	_CONTROL_GetUserInput.isra.0
	cmpb	$0, _keystatus+1
	je	L1235
L1157:
	leal	68(%esp), %eax
	movb	$0, _keystatus+1
	movl	$0, _cust_callback
	call	_CONTROL_ClearUserInput
	.p2align 4
	.p2align 3
L1156:
	movl	$1, %edx
L1139:
	leal	-12(%ebp), %esp
	movl	%edx, %eax
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
L1234:
	.cfi_restore_state
	xorl	%edx, %edx
	testl	%eax, %eax
	jne	L1139
	movl	$0, __ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentkey
	movl	$0, __ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentcol
	movl	$0, __ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME11currentmode
	jmp	L1142
	.p2align 4,,10
	.p2align 3
L1145:
	movzbl	_KB_LastScan, %eax
	testl	%eax, %eax
	je	L1146
	movb	$0, _keystatus(%eax)
	movb	%al, _KeyboardKeys(%edi,%esi,2)
	cmpl	$50, %esi
	je	L1147
	cmpl	$63, %esi
	ja	L1148
	movzbl	_KeyboardKeys(%esi,%esi), %edx
	movzbl	_KeyboardKeys+1(%esi,%esi), %eax
	movl	$127, %ecx
	testb	%dl, %dl
	cmove	%ecx, %edx
	testb	%al, %al
	cmove	%ecx, %eax
	movb	%dl, __ZL18CONTROL_KeyMapping.lto_priv.0(%esi,%esi)
	movb	%al, __ZL18CONTROL_KeyMapping.lto_priv.0+1(%esi,%esi)
L1148:
	movl	$0, __ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME11currentmode
	jmp	L1146
	.p2align 4,,10
	.p2align 3
L1235:
	cmpb	$0, 69(%esp)
	jne	L1157
	cmpb	$0, _keystatus+211
	je	L1159
	movl	__ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentkey, %eax
	movb	$0, _keystatus+211
	cmpl	$50, %eax
	jne	L1236
L1160:
	movl	$0, __ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentcol
L1161:
	leal	68(%esp), %eax
	call	_CONTROL_ClearUserInput
	movl	__ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentkey, %esi
	movl	%esi, %eax
	subl	$7, %eax
	movl	%eax, 40(%esp)
	js	L1201
	leal	7(%esi), %edi
	movl	%edi, 44(%esp)
	cmpl	$53, %edi
	jg	L1202
	movl	_gamefunctions(,%eax,4), %eax
	movzbl	(%eax), %eax
L1178:
	movl	$30, %ecx
	movl	40(%esp), %ebx
	movl	$32, %edi
	movw	%cx, 52(%esp)
	.p2align 4
	.p2align 3
L1179:
	xorl	%edx, %edx
	testb	%al, %al
	je	L1190
	movl	_gamefunctions(,%ebx,4), %ecx
	xorl	%edx, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L1181:
	cmpb	$95, %al
	cmove	%edi, %eax
	addl	$1, %edx
	movb	%al, _ds-1(%edx)
	movzbl	(%ecx,%edx), %eax
	testb	%al, %al
	jne	L1181
L1190:
	xorl	%eax, %eax
	cmpl	%esi, %ebx
	movl	$12, %esi
	movb	$0, _ds(%edx)
	cmovne	%esi, %eax
	movl	$16, 4(%esp)
	movswl	52(%esp), %esi
	movl	$_ds, %ecx
	movl	%eax, (%esp)
	movl	%esi, %edx
	movl	$30, %eax
	call	__Z19MNU_DrawSmallStringssPKcss
	movzbl	_KeyboardKeys(%ebx,%ebx), %eax
	movl	$LC31, %ecx
	leal	-1(%eax), %edx
	leal	(%eax,%eax,2), %eax
	leal	_g_keyNameTable(,%eax,8), %eax
	cmpb	$-3, %dl
	movl	$12, %edx
	cmovbe	%eax, %ecx
	movl	$16, %eax
	cmpl	__ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentkey, %ebx
	jne	L1184
	movl	__ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentcol, %edx
	testl	%edx, %edx
	movl	$14, %edx
	cmove	%edx, %eax
	movl	$-5, %edx
L1184:
	movl	%eax, 4(%esp)
	movl	$150, %eax
	movl	%edx, (%esp)
	movl	%esi, %edx
	call	__Z19MNU_DrawSmallStringssPKcss
	cmpl	$50, %ebx
	je	L1185
	movzbl	_KeyboardKeys+1(%ebx,%ebx), %eax
	movl	$LC31, %ecx
	leal	-1(%eax), %edx
	leal	(%eax,%eax,2), %eax
	leal	_g_keyNameTable(,%eax,8), %eax
	cmpb	$-3, %dl
	movl	$12, %edx
	cmovbe	%eax, %ecx
	movw	%dx, 50(%esp)
	movl	$16, %eax
	cmpl	__ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentkey, %ebx
	jne	L1187
	movl	$-5, %edx
	cmpl	$1, __ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentcol
	movw	%dx, 50(%esp)
	movl	$14, %edx
	cmove	%edx, %eax
L1187:
	movswl	50(%esp), %edx
	movl	%eax, 4(%esp)
	movl	$206, %eax
	movl	%edx, (%esp)
	movl	%esi, %edx
	call	__Z19MNU_DrawSmallStringssPKcss
L1185:
	movl	44(%esp), %eax
	addl	$1, %ebx
	cmpl	%eax, %ebx
	jg	L1210
	movl	_gamefunctions(,%ebx,4), %eax
	addw	$8, 52(%esp)
	movl	__ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentkey, %esi
	movzbl	(%eax), %eax
	jmp	L1179
L1159:
	cmpb	$0, _keystatus+199
	jne	L1237
	cmpb	$0, _keystatus+207
	je	L1165
	movl	$53, __ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentkey
	movb	$0, _keystatus+207
	jmp	L1161
L1237:
	movl	$0, __ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentkey
	movb	$0, _keystatus+199
	jmp	L1161
L1236:
	leal	_KeyboardKeys(%eax,%eax), %edx
	addl	__ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentcol, %edx
	movb	$-1, (%edx)
	cmpl	$63, %eax
	ja	L1161
	movzbl	_KeyboardKeys(%eax,%eax), %ecx
	movzbl	_KeyboardKeys+1(%eax,%eax), %edx
	movl	$127, %ebx
	testb	%cl, %cl
	cmove	%ebx, %ecx
	testb	%dl, %dl
	cmove	%ebx, %edx
	movb	%cl, __ZL18CONTROL_KeyMapping.lto_priv.0(%eax,%eax)
	movb	%dl, __ZL18CONTROL_KeyMapping.lto_priv.0+1(%eax,%eax)
	jmp	L1161
L1210:
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	movl	$77, %edx
	jmp	L1188
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1238:
	addw	$2897, %ax
	movzwl	%ax, %eax
	addw	_tilesiz(,%eax,4), %bx
L1192:
	addl	$1, %ecx
	movswl	%cx, %eax
	movzbl	LC38(%eax), %edx
	testb	%dl, %dl
	je	L1193
L1188:
	movzbl	%dl, %eax
	leal	-33(%eax), %esi
	cmpw	$93, %si
	jbe	L1238
	cmpb	$32, %dl
	jne	L1193
	addl	$4, %ebx
	jmp	L1192
L1193:
	movl	40(%esp), %eax
	testl	%eax, %eax
	jne	L1239
L1194:
	cmpl	$53, 44(%esp)
	je	L1156
	movl	$290, %eax
	movl	$LC38, %ecx
	movl	$142, %edx
	movl	$16, 4(%esp)
	movl	$8, (%esp)
	subl	%ebx, %eax
	cwtl
	call	__Z19MNU_DrawSmallStringssPKcss
	jmp	L1156
L1201:
	movl	$0, 40(%esp)
	movl	$77, %eax
	movl	$14, 44(%esp)
	jmp	L1178
L1147:
	movl	_osd, %edx
	movl	%eax, 3244(%edx)
	jmp	L1148
L1239:
	movl	$290, %eax
	movl	$LC38, %ecx
	movl	$30, %edx
	movl	$16, 4(%esp)
	movl	$8, (%esp)
	subl	%ebx, %eax
	cwtl
	call	__Z19MNU_DrawSmallStringssPKcss
	jmp	L1194
L1202:
	movl	$53, 44(%esp)
	movl	$83, %eax
	movl	$39, 40(%esp)
	jmp	L1178
L1165:
	movl	__ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentkey, %eax
	cmpb	$0, _keystatus+209
	je	L1166
	addl	$14, %eax
	cmpl	$53, %eax
	jg	L1167
	movl	%eax, __ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentkey
	movb	$0, _keystatus+209
L1168:
	cmpl	$50, %eax
	je	L1160
	jmp	L1161
	.p2align 4,,10
	.p2align 3
L1166:
	cmpb	$0, _keystatus+201
	je	L1169
	subl	$14, %eax
	js	L1170
	movl	%eax, __ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentkey
	movb	$0, _keystatus+201
	jmp	L1168
L1167:
	movl	$53, __ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentkey
	movb	$0, _keystatus+209
	jmp	L1161
L1169:
	cmpb	$0, 68(%esp)
	jne	L1240
	movl	72(%esp), %edx
	testl	%edx, %edx
	jne	L1175
	subl	$1, %eax
	cmovs	%edx, %eax
	movl	%eax, __ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentkey
	jmp	L1168
L1170:
	movl	$0, __ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentkey
	movb	$0, _keystatus+201
	jmp	L1161
L1175:
	cmpl	$4, %edx
	je	L1241
	cmpl	$2, %edx
	je	L1242
	cmpl	$6, %edx
	jne	L1168
	xorl	%ebx, %ebx
	movl	%ebx, __ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentcol
	jmp	L1168
L1240:
	movl	$1, __ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME11currentmode
	xorl	%edx, %edx
	movb	$0, _KB_LastScan
L1172:
	movl	$0, _keystatus(%edx)
	addl	$16, %edx
	movl	$0, _keystatus-12(%edx)
	movl	$0, _keystatus-8(%edx)
	movl	$0, _keystatus-4(%edx)
	cmpl	$256, %edx
	jb	L1172
	jmp	L1168
	.p2align 4,,10
	.p2align 3
L1242:
	movl	$1, __ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentcol
	jmp	L1168
L1241:
	addl	$1, %eax
	movl	$53, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	%eax, __ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentkey
	jmp	L1168
	.cfi_endproc
LFE139:
	.section .rdata,"dr"
	.align 4
LC40:
	.ascii "Select the function to assign to\0"
LC41:
	.ascii "%s\0"
	.text
	.p2align 4
	.def	__ZL24MNU_SelectButtonFunctionPKcPi;	.scl	3;	.type	32;	.endef
__ZL24MNU_SelectButtonFunctionPKcPi:
LFB146:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	andl	$-8, %esp
	subl	$60, %esp
	movss	LC42, %xmm0
	movl	$LC41, 20(%esp)
	movss	20(%esp), %xmm1
	movl	%eax, 24(%esp)
	leal	36(%esp), %eax
	unpcklps	%xmm1, %xmm0
	movl	%edx, 28(%esp)
	movl	$LC35, 52(%esp)
	movw	%bx, 32(%esp)
	movl	$0, 36(%esp)
	movl	$0, 40(%esp)
	movlps	%xmm0, 44(%esp)
	call	_CONTROL_GetUserInput.isra.0
	cmpb	$0, 37(%esp)
	je	L1244
	movb	$0, _keystatus+1
	movl	$-1, 12(%esp)
L1245:
	leal	36(%esp), %eax
	call	_CONTROL_ClearUserInput
	movl	28(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, %edi
	subl	$4, %edi
	js	L1272
	leal	5(%eax), %esi
	movl	$54, %eax
	cmpl	$54, %esi
	cmovle	%esi, %eax
	movl	%eax, 16(%esp)
	movl	$45, %eax
	cmovle	%edi, %eax
	movl	%eax, 20(%esp)
L1252:
	leal	44(%esp), %ebx
	leal	56(%esp), %edi
	movl	$30, %esi
L1256:
	movl	24(%esp), %eax
	xorl	%ecx, %ecx
	movw	%cx, 34(%esp)
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	$_ds, (%esp)
	movl	%eax, 4(%esp)
	call	_sprintf
	movzbl	_ds, %edx
	testb	%dl, %dl
	je	L1253
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1255:
	cmpb	$95, %dl
	jne	L1254
	movb	$32, _ds(%eax)
L1254:
	movzbl	_ds+1(%eax), %edx
	addl	$1, %eax
	testb	%dl, %dl
	jne	L1255
L1253:
	leal	32(%esp), %ecx
	leal	34(%esp), %edx
	movl	$_ds, %eax
	addl	$4, %ebx
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	34(%esp), %eax
	movswl	%si, %edx
	movl	$320, %ecx
	movl	$16, 4(%esp)
	subl	%eax, %ecx
	movl	$0, (%esp)
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	movl	$_ds, %ecx
	sarl	%eax
	cwtl
	call	__Z14MNU_DrawStringssPKcss
	movswl	32(%esp), %eax
	addl	%eax, %esi
	cmpl	%edi, %ebx
	jne	L1256
	movl	20(%esp), %eax
	movl	16(%esp), %edi
	cmpl	%edi, %eax
	jg	L1257
	addl	$1, %edi
	movl	%edi, 24(%esp)
	testl	%eax, %eax
	jne	L1292
	movl	28(%esp), %eax
	movb	$0, _ds+8
	movl	$1848451104, _ds
	movl	$761622127, _ds+4
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L1261
	xorl	%ebx, %ebx
	movl	$70, %esi
	movl	$12, %eax
L1262:
	movl	%eax, (%esp)
	movswl	%si, %edx
	movl	$_ds, %ecx
	movl	$130, %eax
	movl	$16, 4(%esp)
	addl	$1, %ebx
	call	__Z19MNU_DrawSmallStringssPKcss
	cmpl	%ebx, 24(%esp)
	je	L1257
	addl	$8, %esi
L1264:
	movl	_gamefunctions-4(,%ebx,4), %ecx
	xorl	%edx, %edx
	movl	$32, %edi
	movzbl	(%ecx), %eax
	testb	%al, %al
	je	L1260
	.p2align 5
	.p2align 4
	.p2align 3
L1259:
	cmpb	$95, %al
	cmove	%edi, %eax
	addl	$1, %edx
	movb	%al, _ds-1(%edx)
	movzbl	(%ecx,%edx), %eax
	testb	%al, %al
	jne	L1259
L1260:
	movl	28(%esp), %eax
	movb	$0, _ds(%edx)
	movl	$0, %edx
	cmpl	(%eax), %ebx
	movl	$12, %eax
	cmove	%edx, %eax
	jmp	L1262
	.p2align 4,,10
	.p2align 3
L1261:
	movl	$_ds, %ecx
	movl	$70, %edx
	movl	$130, %eax
	movl	$16, 4(%esp)
	movl	$0, (%esp)
	movl	$1, %ebx
	movl	$78, %esi
	call	__Z19MNU_DrawSmallStringssPKcss
	jmp	L1264
	.p2align 4,,10
	.p2align 3
L1257:
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	movl	$77, %edx
	jmp	L1268
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1293:
	addw	$2897, %ax
	movzwl	%ax, %eax
	addw	_tilesiz(,%eax,4), %bx
L1266:
	addl	$1, %ecx
	movswl	%cx, %eax
	movzbl	LC38(%eax), %edx
	testb	%dl, %dl
	je	L1267
L1268:
	movzbl	%dl, %eax
	leal	-33(%eax), %esi
	cmpw	$93, %si
	jbe	L1293
	cmpb	$32, %dl
	jne	L1267
	addl	$4, %ebx
	jmp	L1266
	.p2align 4,,10
	.p2align 3
L1267:
	movl	20(%esp), %eax
	testl	%eax, %eax
	jne	L1294
L1269:
	cmpl	$54, 16(%esp)
	je	L1243
	movl	$290, %eax
	movl	$LC38, %ecx
	movl	$142, %edx
	movl	$16, 4(%esp)
	movl	$8, (%esp)
	subl	%ebx, %eax
	cwtl
	call	__Z19MNU_DrawSmallStringssPKcss
L1243:
	movl	12(%esp), %eax
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
L1244:
	.cfi_restore_state
	cmpb	$0, _keystatus+199
	je	L1246
	movl	28(%esp), %eax
	movl	$0, (%eax)
	movb	$0, _keystatus+199
L1248:
	movl	$0, 12(%esp)
	jmp	L1245
L1246:
	cmpb	$0, _keystatus+207
	jne	L1295
	cmpb	$0, _keystatus+209
	je	L1249
	movl	28(%esp), %edi
	movl	$54, %edx
	addl	$9, (%edi)
	movl	(%edi), %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	%eax, (%edi)
	movb	$0, _keystatus+209
	jmp	L1248
L1272:
	movl	$9, 16(%esp)
	movl	$0, 20(%esp)
	jmp	L1252
L1294:
	movl	$290, %eax
	movl	$LC38, %ecx
	movl	$70, %edx
	movl	$16, 4(%esp)
	movl	$8, (%esp)
	subl	%ebx, %eax
	cwtl
	call	__Z19MNU_DrawSmallStringssPKcss
	jmp	L1269
L1292:
	movl	%eax, %ebx
	movl	$70, %esi
	jmp	L1264
L1295:
	movl	28(%esp), %eax
	movl	$54, (%eax)
	movb	$0, _keystatus+207
	jmp	L1248
L1249:
	cmpb	$0, _keystatus+201
	jne	L1296
	movl	$1, 12(%esp)
	cmpb	$0, 36(%esp)
	jne	L1245
	movl	40(%esp), %eax
	testl	%eax, %eax
	jne	L1251
	movl	28(%esp), %edi
	xorl	%edx, %edx
	subl	$1, (%edi)
	movl	(%edi), %eax
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, (%edi)
	jmp	L1248
L1296:
	movl	28(%esp), %edi
	xorl	%edx, %edx
	subl	$9, (%edi)
	movl	(%edi), %eax
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, (%edi)
	movb	$0, _keystatus+201
	jmp	L1248
L1251:
	cmpl	$4, %eax
	jne	L1248
	movl	28(%esp), %edi
	movl	$54, %edx
	addl	$1, (%edi)
	movl	(%edi), %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	%eax, (%edi)
	jmp	L1248
	.cfi_endproc
LFE146:
	.section .rdata,"dr"
LC43:
	.ascii "Mouse Setup\0"
	.text
	.p2align 4
	.def	__ZL26MNU_MouseButtonSetupCustom8UserCallP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__ZL26MNU_MouseButtonSetupCustom8UserCallP9MENU_ITEM:
LFB147:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	56(%esp), %edx
	cmpl	$2, %edx
	je	L1298
	movl	_cust_callback, %ecx
	testl	%ecx, %ecx
	je	L1316
L1299:
	xorl	%eax, %eax
	movl	_ydim, %edx
	movw	%ax, 40(%esp)
	movl	_xdim, %eax
	subl	$1, %eax
	js	L1303
	subl	$1, %edx
	js	L1303
	movl	%edx, 32(%esp)
	movl	$65536, %ecx
	movl	$131072, %edx
	movl	%eax, 28(%esp)
	movl	$655360, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$26, 16(%esp)
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	$2427, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L1303:
	leal	40(%esp), %ecx
	leal	42(%esp), %edx
	movl	$LC43, %eax
	call	__Z22MNU_MeasureStringLargePKcPsS1_
	movswl	42(%esp), %eax
	movl	$320, %edx
	movl	$0, 4(%esp)
	movl	$LC43, %ecx
	subl	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	movswl	_MenuTextShade, %edx
	sarl	%eax
	movl	%edx, (%esp)
	cwtl
	movl	$5, %edx
	call	__ZL26MNU_DrawStringLargeColoredssPKcss
	movl	__ZL17mouse_button_item, %eax
	movl	$__ZZL26MNU_MouseButtonSetupCustom8UserCallP9MENU_ITEME11currentfunc, %edx
	movl	20(%eax), %eax
	call	__ZL24MNU_SelectButtonFunctionPKcPi
	cmpl	$-1, %eax
	je	L1304
	cmpl	$1, %eax
	jne	L1298
	movl	__ZZL26MNU_MouseButtonSetupCustom8UserCallP9MENU_ITEME11currentfunc, %eax
	movl	%ebx, 44(%esp)
	movl	$715827883, %edx
	movl	%esi, 48(%esp)
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	leal	-1(%eax), %ecx
	movl	__ZL17mouse_button_item, %eax
	movl	%ecx, __ZZL26MNU_MouseButtonSetupCustom8UserCallP9MENU_ITEME11currentfunc
	movl	%eax, %esi
	movl	40(%eax), %eax
	movl	%eax, 36(%esp)
	movl	36(%esp), %ebx
	imull	%edx
	movl	%ebx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	leal	(%edx,%edx,2), %eax
	movl	%ebx, %edx
	addl	%eax, %eax
	subl	%eax, %edx
	cmpl	$5, %ebx
	jg	L1317
	cmpl	$64, %ecx
	movl	$127, %eax
	movl	%ecx, _MouseButtons(,%edx,4)
	cmovnb	%eax, %ecx
	cmpl	$9, %edx
	ja	L1308
	leal	(%edx,%edx,2), %eax
	movb	%cl, __ZL12mouseButtons.lto_priv.0(,%eax,8)
L1308:
	movl	%esi, (%esp)
	call	__ZL27MNU_SetMouseButtonFunctionsP9MENU_ITEM
	movl	44(%esp), %ebx
	.cfi_restore 3
	movl	48(%esp), %esi
	.cfi_restore 6
	movl	$0, _cust_callback
L1298:
	movl	$1, %eax
L1297:
	addl	$52, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1316:
	.cfi_restore_state
	xorl	%eax, %eax
	testl	%edx, %edx
	jne	L1297
	movl	__ZL17mouse_button_item, %eax
	movl	40(%eax), %ecx
	movl	$715827883, %eax
	imull	%ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	leal	(%edx,%edx,2), %eax
	movl	%ecx, %edx
	addl	%eax, %eax
	subl	%eax, %edx
	cmpl	$5, %ecx
	jg	L1318
	movl	_MouseButtons(,%edx,4), %eax
L1302:
	movl	$__ZL26MNU_MouseButtonSetupCustom8UserCallP9MENU_ITEM, _cust_callback
	addl	$1, %eax
	movl	%eax, __ZZL26MNU_MouseButtonSetupCustom8UserCallP9MENU_ITEME11currentfunc
	movl	60(%esp), %eax
	movl	$0, _cust_callback_call
	movl	%eax, _cust_callback_item
	jmp	L1299
	.p2align 4,,10
	.p2align 3
L1304:
	movl	$0, _cust_callback
	jmp	L1298
	.p2align 4,,10
	.p2align 3
L1318:
	movl	_MouseButtonsClicked(,%edx,4), %eax
	jmp	L1302
	.p2align 4,,10
	.p2align 3
L1317:
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	$127, %eax
	cmpl	$64, %ecx
	movl	%ecx, _MouseButtonsClicked(,%edx,4)
	cmovnb	%eax, %ecx
	leal	(%edx,%edx,2), %eax
	movb	%cl, __ZL12mouseButtons.lto_priv.0+1(,%eax,8)
	jmp	L1308
	.cfi_endproc
LFE147:
	.section .rdata,"dr"
LC44:
	.ascii "Joystick Setup\0"
	.text
	.p2align 4
	.def	__ZL29MNU_JoystickButtonSetupCustom8UserCallP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__ZL29MNU_JoystickButtonSetupCustom8UserCallP9MENU_ITEM:
LFB149:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %edx
	cmpl	$2, %edx
	je	L1320
	movl	_cust_callback, %ecx
	testl	%ecx, %ecx
	je	L1339
L1321:
	xorl	%eax, %eax
	movl	_ydim, %edx
	movw	%ax, 36(%esp)
	movl	_xdim, %eax
	subl	$1, %eax
	js	L1325
	subl	$1, %edx
	js	L1325
	movl	%edx, 32(%esp)
	movl	$65536, %ecx
	movl	$131072, %edx
	movl	%eax, 28(%esp)
	movl	$655360, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$26, 16(%esp)
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	$2427, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L1325:
	leal	36(%esp), %ecx
	leal	38(%esp), %edx
	movl	$LC44, %eax
	call	__Z22MNU_MeasureStringLargePKcPsS1_
	movswl	38(%esp), %eax
	movl	$320, %edx
	movl	$0, 4(%esp)
	movl	$LC44, %ecx
	subl	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	movswl	_MenuTextShade, %edx
	sarl	%eax
	movl	%edx, (%esp)
	cwtl
	movl	$5, %edx
	call	__ZL26MNU_DrawStringLargeColoredssPKcss
	movl	__ZL20joystick_button_item.lto_priv.0, %eax
	movl	$__ZZL29MNU_JoystickButtonSetupCustom8UserCallP9MENU_ITEME11currentfunc, %edx
	movl	20(%eax), %eax
	call	__ZL24MNU_SelectButtonFunctionPKcPi
	cmpl	$-1, %eax
	je	L1326
	cmpl	$1, %eax
	jne	L1320
	movl	__ZL20joystick_button_item.lto_priv.0, %edx
	movl	__ZZL29MNU_JoystickButtonSetupCustom8UserCallP9MENU_ITEME11currentfunc, %eax
	movl	%ebx, 40(%esp)
	.cfi_offset 3, -8
	movl	40(%edx), %ecx
	subl	$1, %eax
	movl	%eax, __ZZL29MNU_JoystickButtonSetupCustom8UserCallP9MENU_ITEME11currentfunc
	andl	$127, %ecx
	testb	$-128, 40(%edx)
	jne	L1340
	movl	%eax, _JoystickButtons(,%ecx,4)
	movl	40(%edx), %ecx
	cmpl	$64, %eax
	movl	$127, %ebx
	cmovnb	%ebx, %eax
	testb	$96, %cl
	jne	L1330
	andl	$127, %ecx
	leal	(%ecx,%ecx,2), %ecx
	movb	%al, __ZL10joyButtons.lto_priv.0(,%ecx,8)
L1330:
	movl	%edx, (%esp)
	call	__ZL30MNU_SetJoystickButtonFunctionsP9MENU_ITEM
	movl	40(%esp), %ebx
	.cfi_restore 3
	movl	$0, _cust_callback
L1320:
	movl	$1, %eax
L1319:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1339:
	.cfi_restore_state
	xorl	%eax, %eax
	testl	%edx, %edx
	jne	L1319
	movl	__ZL20joystick_button_item.lto_priv.0, %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	andl	$127, %edx
	testb	$-128, %al
	jne	L1341
	movl	_JoystickButtons(,%edx,4), %eax
L1324:
	movl	$__ZL29MNU_JoystickButtonSetupCustom8UserCallP9MENU_ITEM, _cust_callback
	addl	$1, %eax
	movl	%eax, __ZZL29MNU_JoystickButtonSetupCustom8UserCallP9MENU_ITEME11currentfunc
	movl	52(%esp), %eax
	movl	$0, _cust_callback_call
	movl	%eax, _cust_callback_item
	jmp	L1321
	.p2align 4,,10
	.p2align 3
L1326:
	movl	$0, _cust_callback
	jmp	L1320
	.p2align 4,,10
	.p2align 3
L1341:
	movl	_JoystickButtonsClicked(,%edx,4), %eax
	jmp	L1324
	.p2align 4,,10
	.p2align 3
L1340:
	.cfi_offset 3, -8
	movl	%eax, _JoystickButtonsClicked(,%ecx,4)
	movl	40(%edx), %ecx
	cmpl	$64, %eax
	movl	$127, %ebx
	cmovnb	%ebx, %eax
	testb	$96, %cl
	jne	L1330
	andl	$127, %ecx
	leal	(%ecx,%ecx,2), %ecx
	movb	%al, __ZL10joyButtons.lto_priv.0+1(,%ecx,8)
	jmp	L1330
	.cfi_endproc
LFE149:
	.section .rdata,"dr"
LC45:
	.ascii "Joystick Axes\0"
	.text
	.p2align 4
	.def	__ZL27MNU_JoystickAxisSetupCustom8UserCallP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__ZL27MNU_JoystickAxisSetupCustom8UserCallP9MENU_ITEM:
LFB150:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	52(%esp), %edx
	cmpl	$2, %edx
	je	L1343
	movl	_cust_callback, %eax
	testl	%eax, %eax
	je	L1372
L1344:
	xorl	%eax, %eax
	movl	_ydim, %edx
	movw	%ax, 38(%esp)
	movl	_xdim, %eax
	subl	$1, %eax
	js	L1346
	subl	$1, %edx
	js	L1346
	movl	%edx, 32(%esp)
	movl	$65536, %ecx
	movl	$131072, %edx
	movl	%eax, 28(%esp)
	movl	$655360, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$26, 16(%esp)
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	$2427, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L1346:
	leal	38(%esp), %ecx
	leal	36(%esp), %edx
	movl	$LC45, %eax
	call	__Z22MNU_MeasureStringLargePKcPsS1_
	movswl	36(%esp), %eax
	movl	$320, %edx
	movl	$0, 4(%esp)
	movl	$LC45, %ecx
	subl	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	movswl	_MenuTextShade, %edx
	sarl	%eax
	movl	%edx, (%esp)
	cwtl
	movl	$5, %edx
	call	__ZL26MNU_DrawStringLargeColoredssPKcss
	movl	__ZL18joystick_axis_item, %eax
	movl	$__ZZL27MNU_JoystickAxisSetupCustom8UserCallP9MENU_ITEME11currentfunc, %edx
	movl	20(%eax), %eax
	call	__ZL24MNU_SelectButtonFunctionPKcPi
	cmpl	$-1, %eax
	je	L1347
	cmpl	$1, %eax
	jne	L1343
	movl	__ZL18joystick_axis_item, %edx
	movl	__ZZL27MNU_JoystickAxisSetupCustom8UserCallP9MENU_ITEME11currentfunc, %eax
	movl	%esi, 44(%esp)
	movl	%ebx, 40(%esp)
	.cfi_offset 6, -8
	.cfi_offset 3, -12
	movl	__ZL16JoystickAxisPage.lto_priv.0, %ecx
	movl	40(%edx), %ebx
	subl	$1, %eax
	movl	%ecx, %esi
	cmpl	$64, %eax
	movl	%eax, __ZZL27MNU_JoystickAxisSetupCustom8UserCallP9MENU_ITEME11currentfunc
	leal	(%ebx,%ecx,2), %ecx
	movl	$127, %ebx
	movl	%eax, _JoystickDigitalAxes(,%ecx,4)
	movl	40(%edx), %ecx
	cmovnb	%ebx, %eax
	cmpl	$2, %ecx
	je	L1350
	jg	L1351
	testl	%ecx, %ecx
	je	L1350
	cmpl	$1, %ecx
	je	L1352
	.p2align 4
	.p2align 3
L1353:
	movl	%edx, (%esp)
	call	__ZL28MNU_SetJoystickAxisFunctionsP9MENU_ITEM
	movl	40(%esp), %ebx
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
	movl	$0, _cust_callback
L1343:
	movl	$1, %eax
L1342:
	addl	$48, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1372:
	.cfi_restore_state
	xorl	%eax, %eax
	testl	%edx, %edx
	jne	L1342
	movl	__ZL18joystick_axis_item, %eax
	movl	__ZL16JoystickAxisPage.lto_priv.0, %edx
	movl	$__ZL27MNU_JoystickAxisSetupCustom8UserCallP9MENU_ITEM, _cust_callback
	movl	$0, _cust_callback_call
	movl	40(%eax), %eax
	leal	(%eax,%edx,2), %eax
	movl	_JoystickDigitalAxes(,%eax,4), %eax
	addl	$1, %eax
	movl	%eax, __ZZL27MNU_JoystickAxisSetupCustom8UserCallP9MENU_ITEME11currentfunc
	movl	56(%esp), %eax
	movl	%eax, _cust_callback_item
	jmp	L1344
	.p2align 4,,10
	.p2align 3
L1347:
	movl	$0, _cust_callback
	jmp	L1343
	.p2align 4,,10
	.p2align 3
L1350:
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	%esi, %ecx
	sall	$5, %ecx
	movb	%al, __ZL7joyAxes.lto_priv.0+1(%ecx)
	jmp	L1353
	.p2align 4,,10
	.p2align 3
L1351:
	cmpl	$3, %ecx
	jne	L1353
L1352:
	movl	%esi, %ecx
	sall	$5, %ecx
	movb	%al, __ZL7joyAxes.lto_priv.0+2(%ecx)
	jmp	L1353
	.cfi_endproc
LFE150:
	.section .rdata,"dr"
LC46:
	.ascii "^VoidSW Credits\0"
LC47:
	.ascii "^Kuro\0"
	.text
	.p2align 4
	.def	__Z15MNU_OrderCustom8UserCallP9MENU_ITEM;	.scl	3;	.type	32;	.endef
__Z15MNU_OrderCustom8UserCallP9MENU_ITEM:
LFB153:
	.cfi_startproc
	subl	$100, %esp
	.cfi_def_cfa_offset 104
	movzbl	_SW_GameFlags, %eax
	movl	%ebx, 84(%esp)
	movl	%esi, 88(%esp)
	movl	%ebp, 96(%esp)
	movl	$0, 76(%esp)
	movl	$0, 80(%esp)
	movl	$0, 72(%esp)
	andl	$1, %eax
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	je	L1374
	cmpl	$2, 104(%esp)
	je	L1373
	movl	_cust_callback, %esi
	testl	%esi, %esi
	jne	L1378
	movl	104(%esp), %ebx
	testl	%ebx, %ebx
	jne	L1505
L1378:
	movzbl	__ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME13DidOrderSound, %eax
	orb	__ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME9on_screen, %al
	movl	%edi, 92(%esp)
	.cfi_offset 7, -12
	je	L1506
L1381:
	movl	$6, %ebp
	movl	$9, %ebx
	movl	$__ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME13SWOrderScreen, %esi
L1380:
	leal	76(%esp), %eax
	call	_CONTROL_GetUserInput.isra.0
	movzbl	_keystatus+57, %eax
	orb	_keystatus+28, %al
	movl	80(%esp), %edi
	je	L1387
	movb	$0, _keystatus+57
	movl	$4, %edi
	movb	$0, _keystatus+28
	movl	$4, 80(%esp)
L1387:
	cmpb	$0, _keystatus+1
	jne	L1388
	cmpb	$0, 77(%esp)
	jne	L1388
	movl	104(%esp), %eax
	movl	108(%esp), %edx
	movl	$__Z15MNU_OrderCustom8UserCallP9MENU_ITEM, _cust_callback
	movl	%eax, _cust_callback_call
	movl	%edx, _cust_callback_item
L1389:
	testl	%edi, %edi
	je	L1393
	cmpl	$4, %edi
	je	L1394
	cmpl	$6, %edi
	je	L1393
	cmpl	$2, %edi
	je	L1394
	cmpl	$8, %edi
	je	L1395
	jmp	L1391
	.p2align 4,,10
	.p2align 3
L1393:
	subb	$1, __ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME9on_screen
L1391:
	leal	76(%esp), %eax
	call	_CONTROL_ClearUserInput
L1395:
	movzbl	__ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME9on_screen, %eax
	testb	%al, %al
	js	L1507
	movsbw	%al, %dx
	cmpw	%bx, %dx
	jge	L1397
	movsbl	%al, %edi
	cmpl	%ebp, %edi
	jl	L1401
	cmpl	%ebp, %edi
	jne	L1402
L1512:
	movl	$-1, %eax
	call	_videoClearViewableArea
	movl	_xdim, %esi
	movl	_ydim, %eax
	subl	$1, %esi
	js	L1403
	subl	$1, %eax
	movl	%eax, 36(%esp)
	js	L1403
	movl	_totalclock, %ecx
	movl	$-1431655765, %eax
	movl	%esi, 28(%esp)
	movl	$0, 24(%esp)
	shrl	$4, %ecx
	movl	$0, 20(%esp)
	mull	%ecx
	movl	$10, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, %eax
	andl	$-2, %edx
	movl	$0, (%esp)
	shrl	%eax
	addl	%eax, %edx
	subl	%edx, %ecx
	movl	$6553600, %edx
	leal	418(%ecx), %eax
	movl	36(%esp), %ecx
	movswl	%ax, %esi
	movl	$1310720, %eax
	movl	%ecx, 32(%esp)
	movl	$65536, %ecx
	movl	%esi, 4(%esp)
	call	_rotatesprite_.part.0.constprop.0
	movl	_xdim, %eax
	movl	_ydim, %edx
	subl	$1, %eax
	js	L1403
	subl	$1, %edx
	js	L1403
	movl	%edx, 32(%esp)
	movl	$65536, %ecx
	movl	$6553600, %edx
	movl	%eax, 28(%esp)
	movl	$19660800, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$10, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L1403:
	movzwl	_MenuTextShade, %esi
	movsbl	__ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME9on_screen, %eax
	movw	%si, 66(%esp)
	cmpl	%ebp, %eax
	jge	L1405
L1503:
	movl	92(%esp), %edi
	.cfi_restore 7
L1379:
	movl	$1, %eax
L1373:
	movl	84(%esp), %ebx
	movl	88(%esp), %esi
	movl	96(%esp), %ebp
	addl	$100, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1374:
	.cfi_restore_state
	cmpl	$2, 104(%esp)
	je	L1379
	movl	_cust_callback, %ecx
	testl	%ecx, %ecx
	jne	L1442
	movl	104(%esp), %edx
	testl	%edx, %edx
	jne	L1373
L1442:
	movl	%edi, 92(%esp)
	.cfi_offset 7, -12
	movl	$4, %ebp
	movl	$7, %ebx
	movl	$__ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME14RegOrderScreen, %esi
	jmp	L1380
	.p2align 4,,10
	.p2align 3
L1388:
	movb	$0, _keystatus+1
	movl	$0, _cust_callback
	movb	$0, __ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME13DidOrderSound
	movb	$0, __ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME9on_screen
	call	__Z9ExitMenusv
	jmp	L1389
	.p2align 4,,10
	.p2align 3
L1507:
	leal	-1(%ebx), %eax
	movzbl	%al, %edx
	movb	%al, __ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME9on_screen
	cmpw	%dx, %bx
	jg	L1508
L1397:
	movb	$0, __ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME9on_screen
	xorl	%edi, %edi
L1400:
	movswl	(%esi), %ecx
	cmpl	$30719, %ecx
	ja	L1503
	movl	_ydim, %eax
	movb	$0, 36(%esp)
	leal	-1(%eax), %edx
	movl	_xdim, %eax
	subl	$1, %eax
L1439:
	movl	%edx, %esi
	orl	%eax, %esi
	js	L1404
	movsbl	36(%esp), %esi
	movl	%edx, 32(%esp)
	xorl	%edx, %edx
	movl	%eax, 28(%esp)
	xorl	%eax, %eax
	movl	%ecx, 4(%esp)
	movl	$65536, %ecx
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$90, 16(%esp)
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L1404:
	movsbl	__ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME9on_screen, %eax
	cmpl	%ebp, %eax
	jl	L1503
	movzwl	_MenuTextShade, %esi
	movw	%si, 66(%esp)
	cmpl	%ebp, %edi
	je	L1405
	cmpl	%ebp, %eax
	je	L1509
L1406:
	leal	-2(%ebx), %edx
	movswl	%dx, %edx
	cmpl	%eax, %edx
	je	L1510
	xorl	%eax, %eax
	leal	68(%esp), %ecx
	movw	%ax, 68(%esp)
	leal	70(%esp), %eax
	movl	%eax, 56(%esp)
	movl	%eax, %edx
	movl	$LC46, %eax
	movl	%ecx, 60(%esp)
	call	__Z17MNU_MeasureStringPKcPsS1_
	movl	$15, 44(%esp)
	movl	$LC46, %ecx
	movl	$__ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME5text2, 40(%esp)
L1407:
	movzwl	70(%esp), %edx
	movl	$160, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	sarw	%dx
	subl	%edx, %eax
	movl	$20, %edx
	cwtl
	call	__Z14MNU_DrawStringssPKcss
L1418:
	movswl	68(%esp), %edx
	cmpl	%ebp, %edi
	sete	50(%esp)
	leal	28(%edx), %eax
	movl	%eax, 36(%esp)
	movl	40(%esp), %eax
	movl	(%eax), %ebx
	movzbl	(%ebx), %eax
	cmpb	$42, %al
	je	L1445
	cmpb	$45, %al
	jne	L1446
	leal	34(%edx), %eax
	movl	$1, %esi
	movl	%eax, 36(%esp)
	.p2align 4
	.p2align 3
L1421:
	movl	40(%esp), %eax
	movl	(%eax,%esi,4), %ebx
	movzbl	(%ebx), %eax
	cmpb	$42, %al
	je	L1419
	cmpb	$45, %al
	je	L1429
	movl	40(%esp), %eax
	movl	36(%esp), %edi
	movl	-4(%eax,%esi,4), %edx
	leal	3(%edi), %eax
	cmpb	$42, (%edx)
	cmovne	%edi, %eax
	movl	%eax, 36(%esp)
L1420:
	movzwl	50(%esp), %eax
	movzbl	1(%ebx), %edx
	leal	1(%ebx), %ebp
	sall	$15, %eax
	sarw	$15, %ax
	andl	$17, %eax
	testb	%dl, %dl
	je	L1447
	movl	%esi, 52(%esp)
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	movw	%ax, 64(%esp)
	jmp	L1427
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1511:
	addw	$2897, %ax
	movzwl	%ax, %eax
	addw	_tilesiz(,%eax,4), %bx
	movswl	_tilesiz+2(,%eax,4), %eax
	cmpw	%ax, %di
	cmovl	%eax, %edi
	addl	$1, %ecx
	movswl	%cx, %eax
	movzbl	0(%ebp,%eax), %edx
	testb	%dl, %dl
	je	L1504
L1427:
	movzbl	%dl, %eax
	leal	-33(%eax), %esi
	cmpw	$93, %si
	jbe	L1511
	cmpb	$32, %dl
	jne	L1504
	addl	$1, %ecx
	addl	$4, %ebx
	movswl	%cx, %eax
	movzbl	0(%ebp,%eax), %edx
	testb	%dl, %dl
	jne	L1427
L1504:
	sarw	%bx
	movl	$160, %ecx
	movl	52(%esp), %esi
	addl	$1, %edi
	movl	%ebx, %edx
	movzwl	64(%esp), %eax
	subl	%edx, %ecx
L1423:
	cwtl
	movl	$0, (%esp)
	movswl	36(%esp), %edx
	movl	%eax, 4(%esp)
	movswl	%cx, %eax
	movl	%ebp, %ecx
	call	__Z19MNU_DrawSmallStringssPKcss
	addl	%edi, 36(%esp)
	jmp	L1422
	.p2align 4,,10
	.p2align 3
L1508:
	movzbl	%al, %edi
	cmpl	%ebp, %edi
	je	L1512
L1402:
	movsbl	%al, %eax
	movswl	(%esi,%eax,2), %ecx
	cmpl	$30719, %ecx
	ja	L1513
	movl	_ydim, %eax
	movb	$8, 36(%esp)
	leal	-1(%eax), %edx
	movl	_xdim, %eax
	subl	$1, %eax
	jmp	L1439
	.p2align 4,,10
	.p2align 3
L1405:
	xorl	%edx, %edx
	movw	%dx, _MenuTextShade
	cmpl	%ebp, %eax
	je	L1514
	leal	-2(%ebx), %edx
	movswl	%dx, %edx
	cmpl	%eax, %edx
	je	L1515
	xorl	%eax, %eax
	leal	68(%esp), %ecx
	movw	%ax, 68(%esp)
	leal	70(%esp), %eax
	movl	%eax, 56(%esp)
	movl	%eax, %edx
	movl	$LC46, %eax
	movl	%ecx, 60(%esp)
	call	__Z17MNU_MeasureStringPKcPsS1_
	movl	$15, 44(%esp)
	cmpl	%ebp, %edi
	jne	L1444
	movl	$__ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME5text2, 40(%esp)
	movl	$LC46, %esi
L1431:
	movl	__ZL23KuroCreditsWhitePalette, %eax
	testl	%eax, %eax
	js	L1410
	movl	%eax, %ebx
	movl	_palookup(,%eax,4), %eax
	testl	%eax, %eax
	je	L1410
L1416:
	movzwl	70(%esp), %edx
	movswl	%bx, %ebx
	movl	$160, %eax
	leal	1(%esi), %ecx
	movl	%ebx, 4(%esp)
	sarw	%dx
	movl	$0, (%esp)
	subl	%edx, %eax
	movl	$20, %edx
	cwtl
	call	__ZL26MNU_DrawStringLargeColoredssPKcss
	jmp	L1418
L1410:
	cmpb	$0, __ZZL30MNU_GetKuroCreditsWhitePalettevE16remapInitialized
	je	L1516
L1412:
	movl	$251, %ebx
	jmp	L1417
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1415:
	subl	$1, %ebx
	cmpl	$63, %ebx
	je	L1517
L1417:
	movl	_palookup(,%ebx,4), %eax
	testl	%eax, %eax
	jne	L1415
	cmpb	$0, _paletteloaded
	je	L1415
	movl	$0, (%esp)
	movl	%ebx, %eax
	xorl	%ecx, %ecx
	movl	$__ZZL30MNU_GetKuroCreditsWhitePalettevE10whiteRemap, %edx
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	call	_paletteMakeLookupTable.part.0
	movl	_palookup(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1415
	movl	%ebx, __ZL23KuroCreditsWhitePalette
	jmp	L1416
	.p2align 4,,10
	.p2align 3
L1445:
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L1419:
	movl	60(%esp), %ecx
	movl	56(%esp), %edx
	xorl	%edi, %edi
	xorl	%ebp, %ebp
	leal	1(%ebx), %eax
	movw	%di, 68(%esp)
	movw	%bp, 70(%esp)
	call	__Z17MNU_MeasureStringPKcPsS1_
	movzwl	70(%esp), %ecx
	movl	36(%esp), %edi
	movl	$160, %eax
	movl	$0, (%esp)
	sarw	%cx
	movswl	%di, %edx
	subl	%ecx, %eax
	cmpb	$1, 50(%esp)
	sbbl	%ecx, %ecx
	cwtl
	addl	$17, %ecx
	movswl	%cx, %ecx
	movl	%ecx, 4(%esp)
	leal	1(%ebx), %ecx
	call	__Z14MNU_DrawStringssPKcss
	movswl	68(%esp), %eax
	leal	1(%edi,%eax), %eax
	movl	%eax, 36(%esp)
L1422:
	addl	$1, %esi
	cmpl	44(%esp), %esi
	jne	L1421
	movzwl	66(%esp), %eax
	movl	92(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movw	%ax, _MenuTextShade
	jmp	L1379
	.p2align 4,,10
	.p2align 3
L1429:
	.cfi_restore_state
	addl	$6, 36(%esp)
	jmp	L1422
	.p2align 4,,10
	.p2align 3
L1394:
	addb	$1, __ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME9on_screen
	jmp	L1391
	.p2align 4,,10
	.p2align 3
L1446:
	xorl	%esi, %esi
	jmp	L1420
L1509:
	leal	70(%esp), %eax
	xorl	%ecx, %ecx
	movw	%cx, 68(%esp)
	movl	%eax, %edx
	leal	68(%esp), %ecx
	movl	%eax, 56(%esp)
	movl	$LC47, %eax
	movl	%ecx, 60(%esp)
	call	__Z17MNU_MeasureStringPKcPsS1_
	movl	$11, 44(%esp)
	movl	$LC47, %ecx
	movl	$__ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME5text3, 40(%esp)
	jmp	L1407
	.p2align 4,,10
	.p2align 3
L1506:
	imull	$1103515245, _wrandomseed, %eax
	movl	$32766, %edx
	movb	$1, __ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME13DidOrderSound
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	shrl	$16, %eax
	andl	$32767, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	sall	$14, %eax
	cmpl	$268963853, %eax
	movl	__ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME10wanghandle, %eax
	ja	L1494
L1382:
	testl	%eax, %eax
	jg	L1518
L1385:
	leal	72(%esp), %edx
	movl	$8, 4(%esp)
	movl	$501, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME10wanghandle
	jmp	L1381
L1447:
	movl	$1, %edi
	movl	$160, %ecx
	jmp	L1423
L1510:
	leal	70(%esp), %eax
	xorl	%edx, %edx
	leal	68(%esp), %ecx
	movw	%dx, 68(%esp)
	movl	%eax, %edx
	movl	%eax, 56(%esp)
	movl	$LC46, %eax
	movl	%ecx, 60(%esp)
	call	__Z17MNU_MeasureStringPKcPsS1_
	movl	$18, 44(%esp)
	movl	$LC46, %ecx
	movl	$__ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME5text1, 40(%esp)
	jmp	L1407
L1516:
	movzbl	_whitecol, %edx
	xorl	%eax, %eax
	imull	$16843009, %edx, %edx
L1413:
	movl	%edx, __ZZL30MNU_GetKuroCreditsWhitePalettevE10whiteRemap(%eax)
	addl	$16, %eax
	movl	%edx, __ZZL30MNU_GetKuroCreditsWhitePalettevE10whiteRemap-12(%eax)
	movl	%edx, __ZZL30MNU_GetKuroCreditsWhitePalettevE10whiteRemap-8(%eax)
	movl	%edx, __ZZL30MNU_GetKuroCreditsWhitePalettevE10whiteRemap-4(%eax)
	cmpl	$256, %eax
	jb	L1413
	movb	$1, __ZZL30MNU_GetKuroCreditsWhitePalettevE16remapInitialized
	jmp	L1412
	.p2align 4,,10
	.p2align 3
L1505:
	.cfi_restore 7
	xorl	%eax, %eax
	jmp	L1373
L1518:
	.cfi_offset 7, -12
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	_MV_Installed, %esi
	movl	-4(%edx,%eax,4), %eax
	testl	%esi, %esi
	je	L1385
	testl	%eax, %eax
	je	L1385
	movl	112(%eax), %ebx
	testl	%ebx, %ebx
	je	L1381
	jmp	L1385
	.p2align 4,,10
	.p2align 3
L1517:
	movl	$17, %ebx
	jmp	L1416
L1514:
	leal	70(%esp), %eax
	leal	68(%esp), %ecx
	xorl	%ebx, %ebx
	movl	$LC47, %esi
	movl	%eax, 56(%esp)
	movl	%eax, %edx
	movl	$LC47, %eax
	movw	%bx, 68(%esp)
	movl	%ecx, 60(%esp)
	call	__Z17MNU_MeasureStringPKcPsS1_
	movl	$11, 44(%esp)
	movl	$__ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME5text3, 40(%esp)
	jmp	L1431
L1513:
	movzwl	_MenuTextShade, %eax
	movw	%ax, 66(%esp)
	movl	%edi, %eax
	jmp	L1406
L1494:
	testl	%eax, %eax
	jg	L1519
L1383:
	leal	72(%esp), %edx
	movl	$8, 4(%esp)
	movl	$500, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME10wanghandle
	jmp	L1381
L1515:
	leal	70(%esp), %eax
	xorl	%ecx, %ecx
	movl	$LC46, %esi
	movw	%cx, 68(%esp)
	movl	%eax, %edx
	leal	68(%esp), %ecx
	movl	%eax, 56(%esp)
	movl	$LC46, %eax
	movl	%ecx, 60(%esp)
	call	__Z17MNU_MeasureStringPKcPsS1_
	movl	$18, 44(%esp)
	movl	$__ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME5text1, 40(%esp)
	jmp	L1431
L1519:
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	_MV_Installed, %ebp
	movl	-4(%edx,%eax,4), %edx
	testl	%ebp, %ebp
	je	L1383
	testl	%edx, %edx
	je	L1383
	movl	112(%edx), %edi
	testl	%edi, %edi
	jne	L1383
	jmp	L1382
L1401:
	leal	(%edi,%edi), %eax
	addl	%eax, %esi
	jmp	L1400
L1444:
	movl	$__ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME5text2, 40(%esp)
	movl	$LC46, %ecx
	jmp	L1407
	.cfi_endproc
LFE153:
	.p2align 4
	.globl	__Z20MNU_InputSmallStringPcs.constprop.0
	.def	__Z20MNU_InputSmallStringPcs.constprop.0;	.scl	2;	.type	32;	.endef
__Z20MNU_InputSmallStringPcs.constprop.0:
LFB158:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movw	%ax, 6(%esp)
	movzbl	_MoveSkip4, %eax
	orb	_MessageInputMode, %al
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -20
	je	L1558
L1521:
	movzbl	_g_keyAsciiEnd, %eax
	movzbl	_g_keyAsciiPos, %ebx
	movb	%al, 5(%esp)
	cmpb	%al, %bl
	je	L1524
	movl	%esi, 20(%esp)
	movl	%edi, 24(%esp)
	movl	%ebp, 28(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	.p2align 4
	.p2align 3
L1536:
	movzbl	%bl, %eax
	addl	$1, %ebx
	movzbl	_g_keyAsciiFIFO(%eax), %edi
	andl	$63, %ebx
	movb	%bl, _g_keyAsciiPos
	movl	%edi, %eax
	testb	%al, %al
	je	L1559
	cmpb	$8, %al
	je	L1560
	cmpb	$27, %al
	je	L1537
	cmpb	$13, %al
	je	L1525
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	*__imp__isprint
	testl	%eax, %eax
	je	L1526
	movzbl	_MessageInputString, %edx
	testb	%dl, %dl
	je	L1531
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	jmp	L1535
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1561:
	addw	$2897, %ax
	movzwl	%ax, %eax
	addw	_tilesiz(,%eax,4), %si
L1533:
	addl	$1, %ecx
	movswl	%cx, %eax
	movzbl	_MessageInputString(%eax), %edx
	testb	%dl, %dl
	je	L1534
L1535:
	movzbl	%dl, %eax
	leal	-33(%eax), %ebp
	cmpw	$93, %bp
	jbe	L1561
	cmpb	$32, %dl
	jne	L1534
	addl	$4, %esi
	jmp	L1533
	.p2align 4,,10
	.p2align 3
L1534:
	cmpw	%si, 6(%esp)
	jle	L1526
L1531:
	movl	$_MessageInputString, (%esp)
	call	_strlen
	movl	%edi, %ecx
	movb	%cl, _MessageInputString(%eax)
	movb	$0, _MessageInputString+1(%eax)
L1526:
	cmpb	5(%esp), %bl
	jne	L1536
	.p2align 4
	.p2align 3
L1556:
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
	movl	28(%esp), %ebp
	.cfi_restore 5
L1524:
	movl	16(%esp), %ebx
	movl	$1, %eax
	addl	$32, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1559:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpb	5(%esp), %bl
	je	L1556
	movzbl	%bl, %eax
	addl	$1, %ebx
	andl	$63, %ebx
	movb	%bl, _g_keyAsciiPos
	cmpb	$104, _g_keyAsciiFIFO(%eax)
	jne	L1526
L1525:
	movl	20(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
	xorl	%eax, %eax
	movl	28(%esp), %ebp
	.cfi_restore 5
	movl	16(%esp), %ebx
	addl	$32, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1560:
	.cfi_restore_state
	movl	$_MessageInputString, (%esp)
	call	_strlen
	testl	%eax, %eax
	je	L1526
	movb	$0, _MessageInputString-1(%eax)
	cmpb	5(%esp), %bl
	jne	L1536
	jmp	L1556
	.p2align 4,,10
	.p2align 3
L1537:
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
	movl	$-1, %eax
	movl	28(%esp), %ebp
	.cfi_restore 5
	movl	16(%esp), %ebx
	addl	$32, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L1558:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	leal	8(%esp), %eax
	call	_CONTROL_GetUserInput.isra.0
	movl	12(%esp), %eax
	testl	%eax, %eax
	je	L1562
	cmpl	$4, %eax
	jne	L1521
	movl	$1, %eax
	call	__Z18CON_CommandHistorya
	jmp	L1521
L1562:
	movl	$-1, %eax
	call	__Z18CON_CommandHistorya
	jmp	L1521
	.cfi_endproc
LFE158:
	.data
	.align 32
_mousebuttongroup:
	.long	0
	.long	0
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	2
	.space 3
	.long	__ZL26MNU_MouseButtonSetupCustom8UserCallP9MENU_ITEM
	.long	0
	.word	0
	.space 2
	.section .rdata,"dr"
LC48:
	.ascii "X-Axis Scale\0"
LC49:
	.ascii "Y-Axis Scale\0"
	.data
	.align 32
_advancedmouse_i:
	.long	2
	.long	1
	.long	16
	.long	0
	.byte	0
	.space 3
	.long	LC48
	.long	0
	.long	30
	.long	30
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	150
	.long	30
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	1
	.long	17
	.long	0
	.byte	0
	.space 3
	.long	LC49
	.long	0
	.long	30
	.long	40
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	150
	.long	40
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	0
	.long	0
	.word	0
	.byte	0
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.section .rdata,"dr"
LC50:
	.ascii "Left\0"
LC51:
	.ascii "Double Left\0"
LC52:
	.ascii "Right\0"
LC53:
	.ascii "Double Right\0"
LC54:
	.ascii "Middle\0"
LC55:
	.ascii "Double Middle\0"
LC56:
	.ascii "Thumb\0"
LC57:
	.ascii "Double Thumb\0"
LC58:
	.ascii "Wheel Up\0"
LC59:
	.ascii "Wheel Down\0"
	.data
	.align 32
_mousesetup_i:
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC50
	.long	_mousebuttongroup
	.long	30
	.long	30
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	__ZL26MNU_MouseButtonPostProcessP9MENU_ITEM
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	__ZL20MouseButtonFunctions
	.long	0
	.long	150
	.long	30
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	__ZL27MNU_SetMouseButtonFunctionsP9MENU_ITEM
	.long	0
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC51
	.long	_mousebuttongroup
	.long	30
	.long	40
	.word	1
	.byte	2
	.space 1
	.long	6
	.long	0
	.long	0
	.long	__ZL26MNU_MouseButtonPostProcessP9MENU_ITEM
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	__ZL20MouseButtonFunctions+180
	.long	0
	.long	150
	.long	40
	.word	1
	.byte	2
	.space 1
	.long	6
	.long	0
	.long	__ZL27MNU_SetMouseButtonFunctionsP9MENU_ITEM
	.long	0
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC52
	.long	_mousebuttongroup
	.long	30
	.long	50
	.word	1
	.byte	2
	.space 1
	.long	1
	.long	0
	.long	0
	.long	__ZL26MNU_MouseButtonPostProcessP9MENU_ITEM
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	__ZL20MouseButtonFunctions+30
	.long	0
	.long	150
	.long	50
	.word	1
	.byte	2
	.space 1
	.long	1
	.long	0
	.long	__ZL27MNU_SetMouseButtonFunctionsP9MENU_ITEM
	.long	0
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC53
	.long	_mousebuttongroup
	.long	30
	.long	60
	.word	1
	.byte	2
	.space 1
	.long	7
	.long	0
	.long	0
	.long	__ZL26MNU_MouseButtonPostProcessP9MENU_ITEM
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	__ZL20MouseButtonFunctions+210
	.long	0
	.long	150
	.long	60
	.word	1
	.byte	2
	.space 1
	.long	7
	.long	0
	.long	__ZL27MNU_SetMouseButtonFunctionsP9MENU_ITEM
	.long	0
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC54
	.long	_mousebuttongroup
	.long	30
	.long	70
	.word	1
	.byte	2
	.space 1
	.long	2
	.long	0
	.long	0
	.long	__ZL26MNU_MouseButtonPostProcessP9MENU_ITEM
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	__ZL20MouseButtonFunctions+60
	.long	0
	.long	150
	.long	70
	.word	1
	.byte	2
	.space 1
	.long	2
	.long	0
	.long	__ZL27MNU_SetMouseButtonFunctionsP9MENU_ITEM
	.long	0
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC55
	.long	_mousebuttongroup
	.long	30
	.long	80
	.word	1
	.byte	2
	.space 1
	.long	8
	.long	0
	.long	0
	.long	__ZL26MNU_MouseButtonPostProcessP9MENU_ITEM
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	__ZL20MouseButtonFunctions+240
	.long	0
	.long	150
	.long	80
	.word	1
	.byte	2
	.space 1
	.long	8
	.long	0
	.long	__ZL27MNU_SetMouseButtonFunctionsP9MENU_ITEM
	.long	0
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC56
	.long	_mousebuttongroup
	.long	30
	.long	90
	.word	1
	.byte	2
	.space 1
	.long	3
	.long	0
	.long	0
	.long	__ZL26MNU_MouseButtonPostProcessP9MENU_ITEM
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	__ZL20MouseButtonFunctions+90
	.long	0
	.long	150
	.long	90
	.word	1
	.byte	2
	.space 1
	.long	3
	.long	0
	.long	__ZL27MNU_SetMouseButtonFunctionsP9MENU_ITEM
	.long	0
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC57
	.long	_mousebuttongroup
	.long	30
	.long	100
	.word	1
	.byte	2
	.space 1
	.long	9
	.long	0
	.long	0
	.long	__ZL26MNU_MouseButtonPostProcessP9MENU_ITEM
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	__ZL20MouseButtonFunctions+270
	.long	0
	.long	150
	.long	100
	.word	1
	.byte	2
	.space 1
	.long	9
	.long	0
	.long	__ZL27MNU_SetMouseButtonFunctionsP9MENU_ITEM
	.long	0
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC58
	.long	_mousebuttongroup
	.long	30
	.long	110
	.word	1
	.byte	2
	.space 1
	.long	4
	.long	0
	.long	0
	.long	__ZL26MNU_MouseButtonPostProcessP9MENU_ITEM
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	__ZL20MouseButtonFunctions+120
	.long	0
	.long	150
	.long	110
	.word	1
	.byte	2
	.space 1
	.long	4
	.long	0
	.long	__ZL27MNU_SetMouseButtonFunctionsP9MENU_ITEM
	.long	0
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC59
	.long	_mousebuttongroup
	.long	30
	.long	120
	.word	1
	.byte	2
	.space 1
	.long	5
	.long	0
	.long	0
	.long	__ZL26MNU_MouseButtonPostProcessP9MENU_ITEM
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	__ZL20MouseButtonFunctions+150
	.long	0
	.long	150
	.long	120
	.word	1
	.byte	2
	.space 1
	.long	5
	.long	0
	.long	__ZL27MNU_SetMouseButtonFunctionsP9MENU_ITEM
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	0
	.long	0
	.word	0
	.byte	0
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.section .rdata,"dr"
LC60:
	.ascii "^Adv'd Mouse\0"
	.data
	.align 32
_mouseadvancedgroup:
	.long	65
	.long	5
	.long	LC60
	.long	_advancedmouse_i
	.word	2827
	.word	0
	.byte	2
	.space 3
	.long	0
	.long	0
	.word	0
	.space 2
	.section .rdata,"dr"
LC61:
	.ascii "^Mouse Setup\0"
	.data
	.align 32
_mousesetupgroup:
	.long	65
	.long	5
	.long	LC61
	.long	_mousesetup_i
	.word	2827
	.word	0
	.byte	2
	.space 3
	.long	0
	.long	0
	.word	0
	.space 2
	.align 32
_keysetupgroup:
	.long	0
	.long	0
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	2
	.space 3
	.long	__Z18MNU_KeySetupCustom8UserCallP9MENU_ITEM
	.long	0
	.word	0
	.space 2
	.align 32
_skill_i:
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	18
	.space 3
	.long	_SkillNames
	.long	0
	.long	30
	.long	46
	.word	2829
	.byte	2
	.space 1
	.long	0
	.long	__Z13MNU_StartGamev
	.long	0
	.long	0
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	49
	.space 3
	.long	_SkillNames+26
	.long	0
	.long	30
	.long	62
	.word	2830
	.byte	2
	.space 1
	.long	0
	.long	__Z13MNU_StartGamev
	.long	0
	.long	0
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	35
	.space 3
	.long	_SkillNames+52
	.long	0
	.long	30
	.long	78
	.word	2831
	.byte	2
	.space 1
	.long	0
	.long	__Z13MNU_StartGamev
	.long	0
	.long	0
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	23
	.space 3
	.long	_SkillNames+78
	.long	0
	.long	30
	.long	94
	.word	2832
	.byte	2
	.space 1
	.long	0
	.long	__Z13MNU_StartGamev
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	0
	.long	0
	.word	0
	.byte	0
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.section .rdata,"dr"
LC62:
	.ascii "Monsters\0"
LC63:
	.ascii "Team Play\0"
LC64:
	.ascii "Hurt Teammate\0"
LC65:
	.ascii "Play with Nuke\0"
	.data
	.align 32
_network_extra_i:
	.long	2
	.long	1
	.long	9
	.long	0
	.byte	0
	.space 3
	.long	LC62
	.long	0
	.long	30
	.long	30
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	150
	.long	30
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	1
	.long	0
	.long	23
	.byte	0
	.space 3
	.long	LC63
	.long	0
	.long	30
	.long	40
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	__Z18MNU_TeamPlayChangev
	.long	__Z17MNU_TeamPlayCheckP9MENU_ITEM
	.long	0
	.long	3
	.long	1
	.long	0
	.long	24
	.byte	0
	.space 3
	.long	LC64
	.long	0
	.long	30
	.long	50
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	__Z21MNU_HurtTeammateCheckP9MENU_ITEM
	.long	0
	.long	3
	.long	1
	.long	0
	.long	26
	.byte	0
	.space 3
	.long	LC65
	.long	0
	.long	30
	.long	60
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	0
	.long	0
	.word	0
	.byte	0
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.section .rdata,"dr"
LC66:
	.ascii "Copy Map\0"
LC67:
	.ascii "0 Kill Demos\0"
LC68:
	.ascii "Score Shot\0"
LC69:
	.ascii "Min HUD Armor\0"
LC70:
	.ascii "Demo Time\0"
LC71:
	.ascii "Show Heat\0"
LC72:
	.ascii "Show Nuke\0"
	.data
	.align 32
_kuro_i:
	.long	3
	.long	1
	.long	0
	.long	34
	.byte	0
	.space 3
	.long	LC66
	.long	0
	.long	30
	.long	30
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	1
	.long	0
	.long	35
	.byte	0
	.space 3
	.long	LC67
	.long	0
	.long	30
	.long	40
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	1
	.long	0
	.long	36
	.byte	0
	.space 3
	.long	LC68
	.long	0
	.long	30
	.long	50
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	1
	.long	0
	.long	37
	.byte	0
	.space 3
	.long	LC69
	.long	0
	.long	30
	.long	60
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	1
	.long	0
	.long	38
	.byte	0
	.space 3
	.long	LC70
	.long	0
	.long	30
	.long	70
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	1
	.long	0
	.long	39
	.byte	0
	.space 3
	.long	LC71
	.long	0
	.long	30
	.long	80
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	1
	.long	0
	.long	40
	.byte	0
	.space 3
	.long	LC72
	.long	0
	.long	30
	.long	90
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	0
	.long	0
	.word	0
	.byte	0
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.section .rdata,"dr"
LC73:
	.ascii "Joystick Buttons Setup\0"
LC74:
	.ascii "Joystick Axes Setup\0"
LC75:
	.ascii "Advanced Mouse Setup\0"
LC76:
	.ascii "Apply Modern Defaults\0"
LC77:
	.ascii "Apply Classic Defaults\0"
	.data
	.align 32
_inputsetup_i:
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC32
	.long	_keysetupgroup
	.long	30
	.long	30
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC43
	.long	_mousesetupgroup
	.long	30
	.long	40
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC73
	.long	_joybuttonssetupgroup
	.long	30
	.long	50
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	__Z17MNU_JoystickCheckP9MENU_ITEM
	.long	__ZL29MNU_JoystickButtonsInitialiseP9MENU_ITEM
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC74
	.long	_joyaxessetupgroup
	.long	30
	.long	60
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	__Z17MNU_JoystickCheckP9MENU_ITEM
	.long	__ZL26MNU_JoystickAxesInitialiseP9MENU_ITEM
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC75
	.long	_mouseadvancedgroup
	.long	30
	.long	80
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC76
	.long	0
	.long	30
	.long	100
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	__Z22MNU_LoadModernDefaultsv
	.long	0
	.long	0
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC77
	.long	0
	.long	30
	.long	110
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	__Z23MNU_LoadClassicDefaultsv
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	0
	.long	0
	.word	0
	.byte	0
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.section .rdata,"dr"
LC78:
	.ascii "Music\0"
LC79:
	.ascii "Music Volume\0"
LC80:
	.ascii "Sounds\0"
LC81:
	.ascii "Sound Volume\0"
LC82:
	.ascii "Ambience\0"
LC83:
	.ascii "Alt Reverb\0"
	.data
	.align 32
_sound_i:
	.long	3
	.long	1
	.long	0
	.long	10
	.byte	0
	.space 3
	.long	LC78
	.long	0
	.long	30
	.long	30
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	__ZL16MNU_TryMusicInitv
	.long	__Z14MNU_MusicCheckP9MENU_ITEM
	.long	0
	.long	2
	.long	1
	.long	3
	.long	0
	.byte	0
	.space 3
	.long	LC79
	.long	0
	.long	30
	.long	40
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	__ZL16MNU_TryMusicInitv
	.long	__Z14MNU_MusicCheckP9MENU_ITEM
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	150
	.long	40
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	1
	.long	0
	.long	9
	.byte	0
	.space 3
	.long	LC80
	.long	0
	.long	30
	.long	50
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	__Z11MNU_FxCheckP9MENU_ITEM
	.long	0
	.long	2
	.long	1
	.long	2
	.long	0
	.byte	0
	.space 3
	.long	LC81
	.long	0
	.long	30
	.long	60
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	__Z11MNU_FxCheckP9MENU_ITEM
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	150
	.long	60
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	1
	.long	0
	.long	12
	.byte	0
	.space 3
	.long	LC82
	.long	0
	.long	30
	.long	70
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	__Z11MNU_FxCheckP9MENU_ITEM
	.long	0
	.long	3
	.long	1
	.long	0
	.long	13
	.byte	0
	.space 3
	.long	LC83
	.long	0
	.long	30
	.long	80
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	__Z11MNU_FxCheckP9MENU_ITEM
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	0
	.long	0
	.word	0
	.byte	0
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.section .rdata,"dr"
LC84:
	.ascii "Mouse Speed\0"
LC85:
	.ascii "Mouse Aiming\0"
LC86:
	.ascii "Invert Mouse\0"
	.data
	.align 32
_mouse_i:
	.long	2
	.long	1
	.long	1
	.long	0
	.byte	0
	.space 3
	.long	LC84
	.long	0
	.long	30
	.long	30
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	__Z14MNU_MouseCheckP9MENU_ITEM
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	150
	.long	30
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	1
	.long	0
	.long	4
	.byte	0
	.space 3
	.long	LC85
	.long	0
	.long	30
	.long	40
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	__Z14MNU_MouseCheckP9MENU_ITEM
	.long	0
	.long	3
	.long	1
	.long	0
	.long	6
	.byte	0
	.space 3
	.long	LC86
	.long	0
	.long	30
	.long	50
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	__Z14MNU_MouseCheckP9MENU_ITEM
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	0
	.long	0
	.word	0
	.byte	0
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.section .rdata,"dr"
LC87:
	.ascii "^Skill\0"
	.data
	.align 32
_skillgroup:
	.long	100
	.long	5
	.long	LC87
	.long	_skill_i
	.word	2827
	.word	0
	.byte	2
	.space 3
	.long	0
	.long	0
	.word	2
	.space 2
	.section .rdata,"dr"
LC88:
	.ascii "^Net Options\0"
	.data
	.align 32
_networkextragroup:
	.long	50
	.long	5
	.long	LC88
	.long	_network_extra_i
	.word	2827
	.word	0
	.byte	2
	.space 3
	.long	0
	.long	0
	.word	0
	.space 2
	.align 32
_save_i:
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	5
	.long	26
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	__Z17MNU_GetSaveCustomv
	.long	0
	.long	0
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	5
	.long	39
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	__Z17MNU_GetSaveCustomv
	.long	0
	.long	0
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	5
	.long	52
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	__Z17MNU_GetSaveCustomv
	.long	0
	.long	0
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	5
	.long	65
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	__Z17MNU_GetSaveCustomv
	.long	0
	.long	0
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	5
	.long	78
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	__Z17MNU_GetSaveCustomv
	.long	0
	.long	0
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	5
	.long	91
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	__Z17MNU_GetSaveCustomv
	.long	0
	.long	0
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	5
	.long	104
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	__Z17MNU_GetSaveCustomv
	.long	0
	.long	0
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	5
	.long	117
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	__Z17MNU_GetSaveCustomv
	.long	0
	.long	0
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	5
	.long	130
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	__Z17MNU_GetSaveCustomv
	.long	0
	.long	0
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	5
	.long	143
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	__Z17MNU_GetSaveCustomv
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	0
	.long	0
	.word	0
	.byte	0
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.align 32
_load_i:
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	5
	.long	26
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	__Z17MNU_GetLoadCustomv
	.long	0
	.long	0
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	5
	.long	39
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	__Z17MNU_GetLoadCustomv
	.long	0
	.long	0
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	5
	.long	52
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	__Z17MNU_GetLoadCustomv
	.long	0
	.long	0
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	5
	.long	65
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	__Z17MNU_GetLoadCustomv
	.long	0
	.long	0
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	5
	.long	78
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	__Z17MNU_GetLoadCustomv
	.long	0
	.long	0
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	5
	.long	91
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	__Z17MNU_GetLoadCustomv
	.long	0
	.long	0
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	5
	.long	104
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	__Z17MNU_GetLoadCustomv
	.long	0
	.long	0
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	5
	.long	117
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	__Z17MNU_GetLoadCustomv
	.long	0
	.long	0
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	5
	.long	130
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	__Z17MNU_GetLoadCustomv
	.long	0
	.long	0
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	5
	.long	143
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	__Z17MNU_GetLoadCustomv
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	0
	.long	0
	.word	0
	.byte	0
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.align 32
_kurogroup:
	.long	110
	.long	5
	.long	LC47
	.long	_kuro_i
	.word	2833
	.word	0
	.byte	2
	.space 3
	.long	0
	.long	0
	.word	0
	.space 2
	.section .rdata,"dr"
LC89:
	.ascii "^Input Setup\0"
	.data
	.align 32
_inputsetupgroup:
	.long	65
	.long	5
	.long	LC89
	.long	_inputsetup_i
	.word	2827
	.word	0
	.byte	2
	.space 3
	.long	0
	.long	0
	.word	0
	.space 2
	.globl	_soundgroup
	.section .rdata,"dr"
LC90:
	.ascii "^Sound\0"
	.data
	.align 32
_soundgroup:
	.long	110
	.long	5
	.long	LC90
	.long	_sound_i
	.word	2833
	.word	0
	.byte	2
	.space 3
	.long	0
	.long	0
	.word	0
	.space 2
	.section .rdata,"dr"
LC91:
	.ascii "^Mouse\0"
	.data
	.align 32
_mousegroup:
	.long	65
	.long	5
	.long	LC91
	.long	_mouse_i
	.word	2827
	.word	0
	.byte	2
	.space 3
	.long	0
	.long	0
	.word	0
	.space 2
	.section .rdata,"dr"
LC92:
	.ascii "^Screen\0"
	.data
	.align 32
_screengroup:
	.long	65
	.long	5
	.long	LC92
	.long	_screen_i
	.word	2827
	.word	0
	.byte	2
	.space 3
	.long	0
	.long	0
	.word	0
	.space 2
	.align 32
_episode_i:
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	31
	.space 3
	.long	_EpisodeNames
	.long	_skillgroup
	.long	30
	.long	46
	.word	2873
	.byte	2
	.space 1
	.long	0
	.long	__Z17MNU_EpisodeCustomv
	.long	0
	.long	0
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	33
	.space 3
	.long	_EpisodeNames+26
	.long	_skillgroup
	.long	30
	.long	78
	.word	2874
	.byte	2
	.space 1
	.long	0
	.long	__Z17MNU_EpisodeCustomv
	.long	__Z18MNU_ShareWareCheckP9MENU_ITEM
	.long	__Z20MNU_ShareWareMessageP9MENU_ITEM
	.long	0
	.long	0
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	0
	.long	0
	.word	0
	.byte	0
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.section .rdata,"dr"
LC93:
	.ascii "Game Type\0"
LC94:
	.ascii "Level\0"
LC95:
	.ascii " \0"
LC96:
	.ascii "Markers\0"
LC97:
	.ascii "Kill Limit\0"
LC98:
	.ascii "Time Limit\0"
LC99:
	.ascii "Player Color\0"
LC100:
	.ascii "Other Options\0"
LC101:
	.ascii "Start Game\0"
	.data
	.align 32
_network_i:
	.long	2
	.long	1
	.long	7
	.long	0
	.byte	0
	.space 3
	.long	LC93
	.long	0
	.long	30
	.long	30
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	112
	.long	30
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	1
	.long	8
	.long	0
	.byte	0
	.space 3
	.long	LC94
	.long	0
	.long	30
	.long	40
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	__Z16MNU_CheckUserMapP9MENU_ITEM
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	80
	.long	40
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	__Z16MNU_CheckUserMapP9MENU_ITEM
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC95
	.long	0
	.long	30
	.long	50
	.word	2873
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	__Z16MNU_CheckUserMapP9MENU_ITEM
	.long	0
	.long	3
	.long	1
	.long	0
	.long	22
	.byte	0
	.space 3
	.long	LC96
	.long	0
	.long	30
	.long	60
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	1
	.long	10
	.long	0
	.byte	0
	.space 3
	.long	LC97
	.long	0
	.long	30
	.long	70
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	__Z17MNU_CoopPlayCheckP9MENU_ITEM
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	150
	.long	70
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	__Z17MNU_CoopPlayCheckP9MENU_ITEM
	.long	0
	.long	2
	.long	1
	.long	11
	.long	0
	.byte	0
	.space 3
	.long	LC98
	.long	0
	.long	30
	.long	80
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	__Z17MNU_CoopPlayCheckP9MENU_ITEM
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	150
	.long	80
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	__Z17MNU_CoopPlayCheckP9MENU_ITEM
	.long	0
	.long	2
	.long	1
	.long	12
	.long	0
	.byte	0
	.space 3
	.long	LC99
	.long	0
	.long	30
	.long	90
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	150
	.long	90
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC100
	.long	_networkextragroup
	.long	30
	.long	100
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	_UserMapName
	.long	0
	.long	150
	.long	110
	.word	2873
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	31
	.space 3
	.long	LC101
	.long	0
	.long	30
	.long	110
	.word	2873
	.byte	2
	.space 1
	.long	0
	.long	__Z16MNU_StartNetGamev
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	0
	.long	0
	.word	0
	.byte	0
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.globl	_quitgroup
	.align 32
_quitgroup:
	.long	0
	.long	0
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	2
	.space 3
	.long	__Z14MNU_QuitCustom8UserCallP9MENU_ITEM
	.long	0
	.word	0
	.space 2
	.globl	_ordergroup
	.align 32
_ordergroup:
	.long	0
	.long	0
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	2
	.space 3
	.long	__Z15MNU_OrderCustom8UserCallP9MENU_ITEM
	.long	0
	.word	0
	.space 2
	.globl	_optiongroup
	.section .rdata,"dr"
LC102:
	.ascii "^Options\0"
	.data
	.align 32
_optiongroup:
	.long	100
	.long	5
	.long	LC102
	.long	_options_i
	.word	2833
	.word	0
	.byte	2
	.space 3
	.long	0
	.long	0
	.word	0
	.space 2
	.globl	__ZL20JoystickAxisPageName.lto_priv.0
	.bss
	.align 32
__ZL20JoystickAxisPageName.lto_priv.0:
	.space 64
	.data
	.align 32
_joyaxesgroup:
	.long	0
	.long	0
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	2
	.space 3
	.long	__ZL27MNU_JoystickAxisSetupCustom8UserCallP9MENU_ITEM
	.long	0
	.word	0
	.space 2
	.globl	__ZL16JoystickAxisName.lto_priv.0
	.bss
	.align 32
__ZL16JoystickAxisName.lto_priv.0:
	.space 64
	.section .rdata,"dr"
LC103:
	.ascii "Axis Scale\0"
LC104:
	.ascii "Analog\0"
LC105:
	.ascii "Digital +ve\0"
LC106:
	.ascii "Digital -ve\0"
LC107:
	.ascii "Dead Zone\0"
LC108:
	.ascii "Saturate\0"
	.data
	.align 32
_joyaxes_i:
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	__ZL16JoystickAxisName.lto_priv.0
	.long	0
	.long	30
	.long	30
	.word	1
	.byte	20
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	1
	.long	18
	.long	0
	.byte	0
	.space 3
	.long	LC103
	.long	0
	.long	30
	.long	50
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	150
	.long	50
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	1
	.long	19
	.long	0
	.byte	0
	.space 3
	.long	LC104
	.long	0
	.long	30
	.long	70
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	150
	.long	70
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC105
	.long	_joyaxesgroup
	.long	30
	.long	80
	.word	1
	.byte	2
	.space 1
	.long	1
	.long	0
	.long	0
	.long	__ZL27MNU_JoystickAxisPostProcessP9MENU_ITEM
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	__ZL21JoystickAxisFunctions+30
	.long	0
	.long	150
	.long	80
	.word	1
	.byte	2
	.space 1
	.long	1
	.long	0
	.long	__ZL28MNU_SetJoystickAxisFunctionsP9MENU_ITEM
	.long	0
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC106
	.long	_joyaxesgroup
	.long	30
	.long	90
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	__ZL27MNU_JoystickAxisPostProcessP9MENU_ITEM
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	__ZL21JoystickAxisFunctions
	.long	0
	.long	150
	.long	90
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	__ZL28MNU_SetJoystickAxisFunctionsP9MENU_ITEM
	.long	0
	.long	2
	.long	1
	.long	20
	.long	0
	.byte	0
	.space 3
	.long	LC107
	.long	0
	.long	30
	.long	110
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	150
	.long	110
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	1
	.long	21
	.long	0
	.byte	0
	.space 3
	.long	LC108
	.long	0
	.long	30
	.long	120
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	150
	.long	120
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	__ZL20JoystickAxisPageName.lto_priv.0
	.long	0
	.long	30
	.long	140
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC4
	.long	0
	.long	150
	.long	140
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	__ZL24MNU_JoystickAxisNextPagev
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	0
	.long	0
	.word	0
	.byte	0
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.globl	_s_LavaThrow
	.align 32
_s_LavaThrow:
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+16
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+32
	.word	2355
	.space 2
	.long	18
	.long	__Z8NullLavas
	.long	_s_LavaThrow+48
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+64
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+80
	.word	2355
	.space 2
	.long	65536
	.long	__Z13InitLavaThrows
	.long	_s_LavaThrow+96
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+112
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+128
	.word	2355
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_LavaThrow+144
	.word	2355
	.space 2
	.long	9
	.long	__Z10DoLavaMoves
	.long	_s_LavaThrow+144
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+176
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+192
	.word	2355
	.space 2
	.long	18
	.long	__Z8NullLavas
	.long	_s_LavaThrow+208
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+224
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+240
	.word	2355
	.space 2
	.long	65536
	.long	__Z13InitLavaThrows
	.long	_s_LavaThrow+256
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+272
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+288
	.word	2355
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_LavaThrow+304
	.word	2355
	.space 2
	.long	9
	.long	__Z10DoLavaMoves
	.long	_s_LavaThrow+304
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+336
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+352
	.word	2355
	.space 2
	.long	18
	.long	__Z8NullLavas
	.long	_s_LavaThrow+368
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+384
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+400
	.word	2355
	.space 2
	.long	65536
	.long	__Z13InitLavaThrows
	.long	_s_LavaThrow+416
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+432
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+448
	.word	2355
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_LavaThrow+464
	.word	2355
	.space 2
	.long	9
	.long	__Z10DoLavaMoves
	.long	_s_LavaThrow+464
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+496
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+512
	.word	2355
	.space 2
	.long	18
	.long	__Z8NullLavas
	.long	_s_LavaThrow+528
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+544
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+560
	.word	2355
	.space 2
	.long	65536
	.long	__Z13InitLavaThrows
	.long	_s_LavaThrow+576
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+592
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+608
	.word	2355
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_LavaThrow+624
	.word	2355
	.space 2
	.long	9
	.long	__Z10DoLavaMoves
	.long	_s_LavaThrow+624
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+656
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+672
	.word	2355
	.space 2
	.long	18
	.long	__Z8NullLavas
	.long	_s_LavaThrow+688
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+704
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+720
	.word	2355
	.space 2
	.long	65536
	.long	__Z13InitLavaThrows
	.long	_s_LavaThrow+736
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+752
	.word	2355
	.space 2
	.long	9
	.long	__Z8NullLavas
	.long	_s_LavaThrow+768
	.word	2355
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_LavaThrow+784
	.word	2355
	.space 2
	.long	9
	.long	__Z10DoLavaMoves
	.long	_s_LavaThrow+784
	.globl	_s_LavaFlame
	.align 32
_s_LavaFlame:
	.word	2355
	.space 2
	.long	36
	.long	__Z8NullLavas
	.long	_s_LavaFlame+16
	.word	2355
	.space 2
	.long	18
	.long	__Z8NullLavas
	.long	_s_LavaFlame+32
	.word	2355
	.space 2
	.long	36
	.long	__Z8NullLavas
	.long	_s_LavaFlame+48
	.word	2355
	.space 2
	.long	65536
	.long	__Z13InitLavaFlames
	.long	_s_LavaFlame+64
	.word	2355
	.space 2
	.long	18
	.long	__Z8NullLavas
	.long	_s_LavaFlame+80
	.word	2355
	.space 2
	.long	18
	.long	__Z8NullLavas
	.long	_s_LavaFlame+96
	.word	2355
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_LavaFlame+112
	.word	2355
	.space 2
	.long	18
	.long	__Z10DoLavaMoves
	.long	_s_LavaFlame+112
	.word	2355
	.space 2
	.long	36
	.long	__Z8NullLavas
	.long	_s_LavaFlame+144
	.word	2355
	.space 2
	.long	18
	.long	__Z8NullLavas
	.long	_s_LavaFlame+160
	.word	2355
	.space 2
	.long	36
	.long	__Z8NullLavas
	.long	_s_LavaFlame+176
	.word	2355
	.space 2
	.long	65536
	.long	__Z13InitLavaFlames
	.long	_s_LavaFlame+192
	.word	2355
	.space 2
	.long	18
	.long	__Z8NullLavas
	.long	_s_LavaFlame+208
	.word	2355
	.space 2
	.long	18
	.long	__Z8NullLavas
	.long	_s_LavaFlame+224
	.word	2355
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_LavaFlame+240
	.word	2355
	.space 2
	.long	18
	.long	__Z10DoLavaMoves
	.long	_s_LavaFlame+240
	.word	2355
	.space 2
	.long	36
	.long	__Z8NullLavas
	.long	_s_LavaFlame+272
	.word	2355
	.space 2
	.long	18
	.long	__Z8NullLavas
	.long	_s_LavaFlame+288
	.word	2355
	.space 2
	.long	36
	.long	__Z8NullLavas
	.long	_s_LavaFlame+304
	.word	2355
	.space 2
	.long	65536
	.long	__Z13InitLavaFlames
	.long	_s_LavaFlame+320
	.word	2355
	.space 2
	.long	18
	.long	__Z8NullLavas
	.long	_s_LavaFlame+336
	.word	2355
	.space 2
	.long	18
	.long	__Z8NullLavas
	.long	_s_LavaFlame+352
	.word	2355
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_LavaFlame+368
	.word	2355
	.space 2
	.long	18
	.long	__Z10DoLavaMoves
	.long	_s_LavaFlame+368
	.word	2355
	.space 2
	.long	36
	.long	__Z8NullLavas
	.long	_s_LavaFlame+400
	.word	2355
	.space 2
	.long	18
	.long	__Z8NullLavas
	.long	_s_LavaFlame+416
	.word	2355
	.space 2
	.long	36
	.long	__Z8NullLavas
	.long	_s_LavaFlame+432
	.word	2355
	.space 2
	.long	65536
	.long	__Z13InitLavaFlames
	.long	_s_LavaFlame+448
	.word	2355
	.space 2
	.long	18
	.long	__Z8NullLavas
	.long	_s_LavaFlame+464
	.word	2355
	.space 2
	.long	18
	.long	__Z8NullLavas
	.long	_s_LavaFlame+480
	.word	2355
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_LavaFlame+496
	.word	2355
	.space 2
	.long	18
	.long	__Z10DoLavaMoves
	.long	_s_LavaFlame+496
	.word	2355
	.space 2
	.long	36
	.long	__Z8NullLavas
	.long	_s_LavaFlame+528
	.word	2355
	.space 2
	.long	18
	.long	__Z8NullLavas
	.long	_s_LavaFlame+544
	.word	2355
	.space 2
	.long	36
	.long	__Z8NullLavas
	.long	_s_LavaFlame+560
	.word	2355
	.space 2
	.long	65536
	.long	__Z13InitLavaFlames
	.long	_s_LavaFlame+576
	.word	2355
	.space 2
	.long	18
	.long	__Z8NullLavas
	.long	_s_LavaFlame+592
	.word	2355
	.space 2
	.long	18
	.long	__Z8NullLavas
	.long	_s_LavaFlame+608
	.word	2355
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_LavaFlame+624
	.word	2355
	.space 2
	.long	18
	.long	__Z10DoLavaMoves
	.long	_s_LavaFlame+624
	.globl	_s_LavaDead
	.align 4
_s_LavaDead:
	.word	2355
	.space 2
	.long	20
	.long	__Z13DoActorDebriss
	.long	_s_LavaDead
	.globl	_s_LavaStand
	.align 32
_s_LavaStand:
	.word	2355
	.space 2
	.long	12
	.long	__Z10DoLavaMoves
	.long	_s_LavaStand
	.word	2355
	.space 2
	.long	12
	.long	__Z10DoLavaMoves
	.long	_s_LavaStand+16
	.word	2355
	.space 2
	.long	12
	.long	__Z10DoLavaMoves
	.long	_s_LavaStand+32
	.word	2355
	.space 2
	.long	12
	.long	__Z10DoLavaMoves
	.long	_s_LavaStand+48
	.word	2355
	.space 2
	.long	12
	.long	__Z10DoLavaMoves
	.long	_s_LavaStand+64
	.globl	_LavaCloseRange
	.align 4
_LavaCloseRange:
	.word	700
	.space 2
	.long	__Z15InitActorAttacks
	.word	1024
	.space 2
	.long	__Z19InitActorRepositions
	.globl	_LavaLostTarget
	.align 4
_LavaLostTarget:
	.word	900
	.space 2
	.long	__Z19InitActorFindPlayers
	.word	1024
	.space 2
	.long	__Z21InitActorWanderArounds
	.globl	_LavaEvasive
	.align 4
_LavaEvasive:
	.word	10
	.space 2
	.long	__Z14InitActorEvades
	.word	1024
	.space 2
	.long	0
	.globl	_LavaSurprised
	.align 4
_LavaSurprised:
	.word	701
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.globl	_LavaBroadcast
	.align 4
_LavaBroadcast:
	.word	21
	.space 2
	.long	__Z19InitActorAlertNoises
	.word	51
	.space 2
	.long	__Z21InitActorAmbientNoises
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.globl	_LavaOffense
	.align 4
_LavaOffense:
	.word	700
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	800
	.space 2
	.long	__Z19InitActorAlertNoises
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.globl	_LavaBattle
	.align 32
_LavaBattle:
	.word	600
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	700
	.space 2
	.long	__Z19InitActorAlertNoises
	.word	710
	.space 2
	.long	__Z16InitActorRunAways
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.globl	_sg_LavaThrow
	.align 4
_sg_LavaThrow:
	.long	_s_LavaThrow
	.long	_s_LavaThrow+160
	.long	_s_LavaThrow+320
	.long	_s_LavaThrow+480
	.long	_s_LavaThrow+640
	.globl	_sg_LavaFlame
	.align 4
_sg_LavaFlame:
	.long	_s_LavaFlame
	.long	_s_LavaFlame+128
	.long	_s_LavaFlame+256
	.long	_s_LavaFlame+384
	.long	_s_LavaFlame+512
	.globl	_sg_LavaDead
	.align 4
_sg_LavaDead:
	.long	_s_LavaDead
	.globl	_sg_LavaDie
	.align 4
_sg_LavaDie:
	.long	_s_LavaDie
	.globl	_sg_LavaStand
	.align 4
_sg_LavaStand:
	.long	_s_LavaStand
	.long	_s_LavaStand+16
	.long	_s_LavaStand+32
	.long	_s_LavaStand+48
	.long	_s_LavaStand+64
	.globl	_CONTROL_MousePresent
	.bss
_CONTROL_MousePresent:
	.space 1
	.globl	__ZL13SaveGameInfo2.lto_priv.0
	.align 32
__ZL13SaveGameInfo2.lto_priv.0:
	.space 80
	.globl	__ZL13SaveGameInfo1.lto_priv.0
	.align 32
__ZL13SaveGameInfo1.lto_priv.0:
	.space 80
	.globl	_screen_tile
	.data
	.align 2
_screen_tile:
	.word	-1
	.globl	_SavePrompt
	.bss
_SavePrompt:
	.space 1
	.globl	_BackupSaveGameDescr
	.align 32
_BackupSaveGameDescr:
	.space 80
	.globl	_LoadGameGroup
	.section .rdata,"dr"
LC109:
	.ascii "^Load Game\0"
	.data
	.align 32
_LoadGameGroup:
	.long	100
	.long	5
	.long	LC109
	.long	_load_i
	.word	2915
	.word	0
	.byte	2
	.space 3
	.long	__Z16MNU_LoadSaveDraw8UserCallP9MENU_ITEM
	.long	__Z16MNU_LoadSaveMove8UserCallP9MENU_ITEM
	.word	0
	.space 2
	.globl	_SaveGameGroup
	.section .rdata,"dr"
LC110:
	.ascii "^Save Game\0"
	.data
	.align 32
_SaveGameGroup:
	.long	100
	.long	5
	.long	LC110
	.long	_save_i
	.word	2916
	.word	0
	.byte	2
	.space 3
	.long	__Z16MNU_LoadSaveDraw8UserCallP9MENU_ITEM
	.long	__Z16MNU_LoadSaveMove8UserCallP9MENU_ITEM
	.word	0
	.space 2
	.section .rdata,"dr"
	.align 4
__ZL11lg_xlat_num:
	.ascii "\0\1\2\3\4\5\6\7\10\11"
LC111:
	.ascii "Screen Menu\0"
LC112:
	.ascii "Mouse Menu\0"
LC113:
	.ascii "Sound Menu\0"
LC114:
	.ascii "Input Setup\0"
LC115:
	.ascii "Kuro Menu\0"
LC116:
	.ascii "Messages\0"
LC117:
	.ascii "Shadows\0"
LC118:
	.ascii "Auto Run\0"
LC119:
	.ascii "Crosshair\0"
LC120:
	.ascii "Auto-Aiming\0"
LC121:
	.ascii "Voxel Sprites\0"
LC122:
	.ascii "Level Stats\0"
LC123:
	.ascii "Use Darts\0"
LC124:
	.ascii "Equip Pickups\0"
LC125:
	.ascii "Interpolate SO\0"
	.data
	.align 32
_options_i:
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC111
	.long	_screengroup
	.long	30
	.long	30
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC112
	.long	_mousegroup
	.long	30
	.long	40
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	__Z14MNU_MouseCheckP9MENU_ITEM
	.long	0
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC113
	.long	_soundgroup
	.long	30
	.long	50
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	__ZL16MNU_TryMusicInitv
	.long	__Z16MNU_MusicFxCheckP9MENU_ITEM
	.long	0
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC114
	.long	_inputsetupgroup
	.long	30
	.long	60
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC115
	.long	_kurogroup
	.long	30
	.long	70
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	1
	.long	0
	.long	5
	.byte	0
	.space 3
	.long	LC116
	.long	0
	.long	30
	.long	80
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	1
	.long	0
	.long	8
	.byte	0
	.space 3
	.long	LC117
	.long	0
	.long	30
	.long	90
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	1
	.long	0
	.long	1
	.byte	0
	.space 3
	.long	LC118
	.long	0
	.long	30
	.long	100
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	1
	.long	0
	.long	2
	.byte	0
	.space 3
	.long	LC119
	.long	0
	.long	30
	.long	110
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	1
	.long	0
	.long	3
	.byte	0
	.space 3
	.long	LC120
	.long	0
	.long	30
	.long	120
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	1
	.long	0
	.long	27
	.byte	0
	.space 3
	.long	LC121
	.long	0
	.long	30
	.long	130
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	1
	.long	0
	.long	28
	.byte	0
	.space 3
	.long	LC122
	.long	0
	.long	30
	.long	140
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	__Z13MNU_StatCheckP9MENU_ITEM
	.long	0
	.long	3
	.long	1
	.long	0
	.long	31
	.byte	0
	.space 3
	.long	LC123
	.long	0
	.long	30
	.long	150
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	1
	.long	0
	.long	32
	.byte	0
	.space 3
	.long	LC124
	.long	0
	.long	30
	.long	160
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	1
	.long	0
	.long	33
	.byte	0
	.space 3
	.long	LC125
	.long	0
	.long	30
	.long	170
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	0
	.long	0
	.word	0
	.byte	0
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.section .rdata,"dr"
LC126:
	.ascii "Screen Size\0"
LC127:
	.ascii "Border Tile\0"
LC128:
	.ascii "Brightness\0"
LC129:
	.ascii "FOV\0"
LC130:
	.ascii "Fullscreen\0"
LC131:
	.ascii "Colour\0"
LC132:
	.ascii "Resolution\0"
LC133:
	.ascii "Apply Settings\0"
	.data
	.align 32
_screen_i:
	.long	2
	.long	1
	.long	4
	.long	0
	.byte	0
	.space 3
	.long	LC126
	.long	0
	.long	30
	.long	30
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	150
	.long	30
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	1
	.long	6
	.long	0
	.byte	0
	.space 3
	.long	LC127
	.long	0
	.long	30
	.long	40
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	150
	.long	40
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	1
	.long	5
	.long	0
	.byte	48
	.space 3
	.long	LC128
	.long	0
	.long	30
	.long	50
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	150
	.long	50
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	1
	.long	15
	.long	0
	.byte	0
	.space 3
	.long	LC129
	.long	0
	.long	30
	.long	60
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	150
	.long	60
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	1
	.long	0
	.long	30
	.byte	0
	.space 3
	.long	LC130
	.long	0
	.long	30
	.long	80
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	1
	.long	14
	.long	0
	.byte	0
	.space 3
	.long	LC131
	.long	0
	.long	30
	.long	90
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	150
	.long	90
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	1
	.long	13
	.long	0
	.byte	0
	.space 3
	.long	LC132
	.long	0
	.long	30
	.long	100
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	150
	.long	100
	.word	0
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4
	.long	1
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	LC133
	.long	0
	.long	150
	.long	120
	.word	1
	.byte	2
	.space 1
	.long	0
	.long	__ZL17ApplyModeSettingsv
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	0
	.long	0
	.word	0
	.byte	0
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.globl	_episodegroup
	.section .rdata,"dr"
LC134:
	.ascii "^Episode\0"
	.data
	.align 32
_episodegroup:
	.long	100
	.long	5
	.long	LC134
	.long	_episode_i
	.word	2827
	.word	0
	.byte	2
	.space 3
	.long	__Z19MNU_DoEpisodeSelect8UserCallP9MENU_ITEM
	.long	0
	.word	0
	.space 2
	.section .rdata,"dr"
LC135:
	.ascii "^Network Game\0"
	.data
	.align 32
_networkgroup:
	.long	50
	.long	5
	.long	LC135
	.long	_network_i
	.word	2827
	.word	0
	.byte	2
	.space 3
	.long	0
	.long	0
	.word	0
	.space 2
	.globl	_main_i
	.section .rdata,"dr"
LC136:
	.ascii "^New Game\0"
LC137:
	.ascii "^Oh Dear\0"
LC138:
	.ascii "^Quit\0"
	.data
	.align 32
_main_i:
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	49
	.space 3
	.long	LC136
	.long	_episodegroup
	.long	55
	.long	32
	.word	2819
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	38
	.space 3
	.long	LC109
	.long	_LoadGameGroup
	.long	55
	.long	49
	.word	2820
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	__Z17MNU_LoadGameCheckP9MENU_ITEM
	.long	0
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	31
	.space 3
	.long	LC110
	.long	_SaveGameGroup
	.long	55
	.long	66
	.word	2821
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	__Z17MNU_SaveGameCheckP9MENU_ITEM
	.long	0
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	24
	.space 3
	.long	LC102
	.long	_optiongroup
	.long	55
	.long	83
	.word	2822
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	35
	.space 3
	.long	LC137
	.long	_ordergroup
	.long	55
	.long	100
	.word	2823
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	1
	.long	0
	.long	0
	.byte	16
	.space 3
	.long	LC138
	.long	_quitgroup
	.long	55
	.long	117
	.word	2826
	.byte	2
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	0
	.long	0
	.word	0
	.byte	0
	.space 1
	.long	0
	.long	0
	.long	0
	.long	0
	.globl	_GlobInfoStringTime
	.align 2
_GlobInfoStringTime:
	.word	3
.lcomm _QuickLoadDescrDialog,128,32
	.globl	_SaveGameDescr
	.bss
	.align 32
_SaveGameDescr:
	.space 800
	.globl	_mnu_input
	.align 4
_mnu_input:
	.space 8
.lcomm _dialog,8,4
	.globl	_TimeLimitTable
	.section .rdata,"dr"
	.align 4
_TimeLimitTable:
	.word	0
	.word	3
	.word	5
	.word	10
	.word	15
	.word	20
	.word	30
	.word	45
	.word	60
.lcomm _EpisodeMenuSelection,2,2
	.globl	_currentmenu
	.bss
	.align 4
_currentmenu:
	.space 4
.lcomm __ZZL30MNU_GetKuroCreditsWhitePalettevE10whiteRemap,256,32
.lcomm __ZZL30MNU_GetKuroCreditsWhitePalettevE16remapInitialized,1,1
	.data
	.align 4
__ZL23KuroCreditsWhitePalette:
	.long	-1
	.section .rdata,"dr"
LC139:
	.ascii "*Additional thanks to (A-Z)\0"
LC140:
	.ascii " Ben \"ProAsm\" Smit\0"
LC141:
	.ascii " Charlie Wiederhold\0"
LC142:
	.ascii " Gennadii \"termit\" Potapov\0"
	.align 4
LC143:
	.ascii " Mitchell \"mjr4077au\" Richters\0"
LC144:
	.ascii " Par \"Parkar\" Karlsson\0"
LC145:
	.ascii " Sergei Shubin\0"
LC146:
	.ascii " \"tmyqlfpir\"\0"
LC147:
	.ascii "-\0"
	.align 4
LC148:
	.ascii " This program is distributed under the terms of the\0"
	.align 4
LC149:
	.ascii " GNU General Public License version 2 as published by the\0"
	.align 4
LC150:
	.ascii " Free Software Foundation. See gpl-2.0.txt for details.\0"
	.align 4
LC151:
	.ascii " BUILD engine technology available under license. See buildlic.txt.\0"
	.align 4
LC152:
	.ascii " Visit eduke32.com for news and updates\0"
	.data
	.align 32
__ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME5text2:
	.long	LC139
	.long	LC140
	.long	LC141
	.long	LC142
	.long	LC143
	.long	LC144
	.long	LC145
	.long	LC146
	.long	LC147
	.long	LC148
	.long	LC149
	.long	LC150
	.long	LC151
	.long	LC147
	.long	LC152
	.section .rdata,"dr"
LC153:
	.ascii "*Developers (A-Z)\0"
LC154:
	.ascii " Evan \"Hendricks266\" Ramos\0"
LC155:
	.ascii " Richard \"TerminX\" Gobeille\0"
LC156:
	.ascii "*Retired developers (A-Z)\0"
LC157:
	.ascii " Alex \"pogokeen\" Dawson\0"
LC158:
	.ascii " Philipp \"Helixhorned\" Kutin\0"
	.align 4
LC159:
	.ascii " Pierre-Loup \"Plagman\" Griffais\0"
LC160:
	.ascii "*Contributors (A-Z)\0"
LC161:
	.ascii " Alexey \"Nuke.YKT\" Skrybykin\0"
LC162:
	.ascii " Barry \"sirlemonhead\" Duncan\0"
	.align 4
LC163:
	.ascii " Dino \"Doom64hunter\" Bollinger\0"
LC164:
	.ascii " Fox Martins\0"
LC165:
	.ascii " Jordon \"Striker\" Moss\0"
LC166:
	.ascii " Yoav \"NY00123\" N.\0"
LC167:
	.ascii "*Special thanks to\0"
LC168:
	.ascii " Jonathon \"JonoF\" Fowler\0"
	.align 4
LC169:
	.ascii "*Uses BUILD Engine technology by\0"
LC170:
	.ascii " Ken \"Awesoken\" Silverman\0"
	.data
	.align 32
__ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME5text1:
	.long	LC153
	.long	LC154
	.long	LC155
	.long	LC156
	.long	LC157
	.long	LC158
	.long	LC159
	.long	LC160
	.long	LC161
	.long	LC162
	.long	LC163
	.long	LC164
	.long	LC165
	.long	LC166
	.long	LC167
	.long	LC168
	.long	LC169
	.long	LC170
	.section .rdata,"dr"
	.align 4
LC171:
	.ascii " github.com/earwigsinyourveins/Kuro\0"
LC172:
	.ascii " desomorphine.ru/sw/demos\0"
LC173:
	.ascii "*by Mawxiwtz and Poda\0"
	.data
	.align 32
__ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME5text3:
	.long	LC171
	.long	LC172
	.long	LC147
	.long	LC147
	.long	LC147
	.long	LC147
	.long	LC147
	.long	LC147
	.long	LC147
	.long	LC147
	.long	LC173
.lcomm __ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME10wanghandle,4,4
.lcomm __ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME13DidOrderSound,1,1
.lcomm __ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME9on_screen,1,1
	.align 4
__ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME14RegOrderScreen:
	.word	5111
	.word	5118
	.word	4979
	.word	5113
	.word	5120
	.word	5120
	.word	5120
	.align 4
__ZZ15MNU_OrderCustom8UserCallP9MENU_ITEME13SWOrderScreen:
	.word	5110
	.word	5112
	.word	5111
	.word	5118
	.word	4979
	.word	5113
	.word	5120
	.word	5120
	.word	5120
.lcomm __ZL21JoystickAxisFunctions,60,32
	.section .rdata,"dr"
LC174:
	.ascii "^Joystick Axes\0"
	.data
	.align 32
_joyaxessetupgroup:
	.long	65
	.long	5
	.long	LC174
	.long	_joyaxes_i
	.word	2827
	.word	0
	.byte	2
	.space 3
	.long	0
	.long	0
	.word	1
	.space 2
.lcomm __ZZL27MNU_JoystickAxisSetupCustom8UserCallP9MENU_ITEME11currentfunc,4,4
	.globl	__ZL16JoystickAxisPage.lto_priv.0
	.bss
	.align 4
__ZL16JoystickAxisPage.lto_priv.0:
	.space 4
.lcomm __ZL18joystick_axis_item,4,4
	.globl	_CONTROL_JoyPresent
_CONTROL_JoyPresent:
	.space 1
.lcomm __ZL18JoystickButtonPage,4,4
.lcomm __ZZL29MNU_JoystickButtonSetupCustom8UserCallP9MENU_ITEME11currentfunc,4,4
	.globl	__ZL20joystick_button_item.lto_priv.0
	.align 4
__ZL20joystick_button_item.lto_priv.0:
	.space 4
	.globl	__ZZ10joyGetNameE13buttonStrings.lto_priv.0
	.section .rdata,"dr"
LC175:
	.ascii "A\0"
LC176:
	.ascii "B\0"
LC177:
	.ascii "X\0"
LC178:
	.ascii "Y\0"
LC179:
	.ascii "Back\0"
LC180:
	.ascii "Guide\0"
LC181:
	.ascii "Start\0"
LC182:
	.ascii "Left Stick\0"
LC183:
	.ascii "Right Stick\0"
LC184:
	.ascii "Left Shoulder\0"
LC185:
	.ascii "Right Shoulder\0"
LC186:
	.ascii "D-Pad Up\0"
LC187:
	.ascii "D-Pad Down\0"
LC188:
	.ascii "D-Pad Left\0"
LC189:
	.ascii "D-Pad Right\0"
LC190:
	.ascii "Misc\0"
LC191:
	.ascii "Paddle 1\0"
LC192:
	.ascii "Paddle 2\0"
LC193:
	.ascii "Paddle 3\0"
LC194:
	.ascii "Paddle 4\0"
LC195:
	.ascii "Touchpad\0"
	.align 32
__ZZ10joyGetNameE13buttonStrings.lto_priv.0:
	.long	LC175
	.long	LC176
	.long	LC177
	.long	LC178
	.long	LC179
	.long	LC180
	.long	LC181
	.long	LC182
	.long	LC183
	.long	LC184
	.long	LC185
	.long	LC186
	.long	LC187
	.long	LC188
	.long	LC189
	.long	LC190
	.long	LC191
	.long	LC192
	.long	LC193
	.long	LC194
	.long	LC195
	.long	0
	.globl	__ZZ10joyGetNameE3tmp.lto_priv.0
	.bss
	.align 32
__ZZ10joyGetNameE3tmp.lto_priv.0:
	.space 64
	.globl	__ZZ10joyGetNameE11axisStrings.lto_priv.0
	.section .rdata,"dr"
LC196:
	.ascii "Left Stick X-Axis\0"
LC197:
	.ascii "Left Stick Y-Axis\0"
LC198:
	.ascii "Right Stick X-Axis\0"
LC199:
	.ascii "Right Stick Y-Axis\0"
LC200:
	.ascii "Left Trigger\0"
LC201:
	.ascii "Right Trigger\0"
	.align 4
__ZZ10joyGetNameE11axisStrings.lto_priv.0:
	.long	LC196
	.long	LC197
	.long	LC198
	.long	LC199
	.long	LC200
	.long	LC201
	.long	0
	.globl	__ZL10controller.lto_priv.0
	.bss
	.align 4
__ZL10controller.lto_priv.0:
	.space 4
.lcomm __ZL22JoystickButtonPageName,320,32
	.globl	_joystick
	.align 32
_joystick:
	.space 48
.lcomm __ZL23JoystickButtonFunctions,1920,32
.lcomm __ZL19JoystickButtonNames,4096,32
.lcomm _joybuttons_i,7560,32
	.section .rdata,"dr"
LC202:
	.ascii "^Joystick Setup\0"
	.data
	.align 32
_joybuttonssetupgroup:
	.long	65
	.long	5
	.long	LC202
	.long	0
	.word	2827
	.word	0
	.byte	2
	.space 3
	.long	0
	.long	0
	.word	0
	.space 2
	.align 32
_joybuttonsgroup:
	.long	0
	.long	0
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	2
	.space 3
	.long	__ZL29MNU_JoystickButtonSetupCustom8UserCallP9MENU_ITEM
	.long	0
	.word	0
	.space 2
.lcomm __ZL20MouseButtonFunctions,300,32
.lcomm __ZZL26MNU_MouseButtonSetupCustom8UserCallP9MENU_ITEME11currentfunc,4,4
.lcomm __ZL17mouse_button_item,4,4
	.globl	_g_keyNameTable
	.bss
	.align 32
_g_keyNameTable:
	.space 6144
	.globl	_MenuTextShade
	.align 2
_MenuTextShade:
	.space 2
	.globl	_cust_callback_item
	.align 4
_cust_callback_item:
	.space 4
	.globl	_cust_callback_call
	.align 4
_cust_callback_call:
	.space 4
.lcomm __ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME11currentmode,4,4
.lcomm __ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentcol,4,4
.lcomm __ZZ18MNU_KeySetupCustom8UserCallP9MENU_ITEME10currentkey,4,4
	.globl	_cust_callback
	.align 4
_cust_callback:
	.space 4
	.globl	_buttonsettings
	.align 32
_buttonsettings:
	.space 82
	.globl	_slidersettings
	.data
	.align 32
_slidersettings:
	.long	0
	.long	10
	.long	8
	.long	8
	.long	9
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	7
	.long	7
	.space 20
	.globl	_validmodecnt
	.bss
	.align 4
_validmodecnt:
	.space 4
	.globl	__ZL16validresolutions.lto_priv.0
	.align 32
__ZL16validresolutions.lto_priv.0:
	.space 2048
	.globl	__ZL9validbpps.lto_priv.0
	.align 32
__ZL9validbpps.lto_priv.0:
	.space 32
	.globl	_validmode
	.align 32
_validmode:
	.space 4096
	.globl	__ZL19numvalidresolutions.lto_priv.0
	.align 4
__ZL19numvalidresolutions.lto_priv.0:
	.space 4
	.globl	__ZL12numvalidbpps.lto_priv.0
	.align 4
__ZL12numvalidbpps.lto_priv.0:
	.space 4
	.globl	_LavaPersonality
	.data
	.align 32
_LavaPersonality:
	.long	_LavaBattle
	.long	_LavaOffense
	.long	_LavaBroadcast
	.long	_LavaSurprised
	.long	_LavaEvasive
	.long	_LavaLostTarget
	.long	_LavaCloseRange
	.long	_LavaCloseRange
	.globl	_LavaActionSet
	.align 32
_LavaActionSet:
	.long	_sg_LavaStand
	.long	_sg_LavaRun
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	_sg_LavaDie
	.long	0
	.long	_sg_LavaDead
	.long	0
	.long	0
	.long	_sg_LavaFlame
	.space 4
	.word	1024
	.space 2
	.long	_sg_LavaFlame
	.long	_sg_LavaThrow
	.long	_sg_LavaThrow
	.long	_sg_LavaThrow
	.space 8
	.word	256
	.word	512
	.word	768
	.word	1024
	.space 4
	.long	0
	.space 4
	.long	0
	.long	0
	.globl	_sg_LavaRun
	.align 4
_sg_LavaRun:
	.long	_s_LavaRun
	.long	_s_LavaRun+64
	.long	_s_LavaRun+128
	.long	_s_LavaRun+192
	.long	_s_LavaRun+256
	.globl	_s_LavaDie
	.align 32
_s_LavaDie:
	.word	2355
	.space 2
	.long	20
	.long	__Z8NullLavas
	.space 4
	.word	2355
	.space 2
	.long	20
	.long	__Z13DoActorDebriss
	.space 4
	.globl	_LavaAttrib
	.align 32
_LavaAttrib:
	.word	200
	.word	220
	.word	240
	.word	270
	.ascii "\3\0\376\375"
	.byte	3
	.space 3
	.long	132
	.long	135
	.long	137
	.long	139
	.long	141
	.long	133
	.long	134
	.long	136
	.long	138
	.long	140
	.space 4
	.globl	_s_LavaRun
	.align 32
_s_LavaRun:
	.word	2355
	.space 2
	.long	24
	.long	__Z10DoLavaMoves
	.long	_s_LavaRun+16
	.word	2355
	.space 2
	.long	24
	.long	__Z10DoLavaMoves
	.long	_s_LavaRun+32
	.word	2355
	.space 2
	.long	24
	.long	__Z10DoLavaMoves
	.long	_s_LavaRun+48
	.word	2355
	.space 2
	.long	24
	.long	__Z10DoLavaMoves
	.long	_s_LavaRun
	.word	2355
	.space 2
	.long	24
	.long	__Z10DoLavaMoves
	.long	_s_LavaRun+80
	.word	2355
	.space 2
	.long	24
	.long	__Z10DoLavaMoves
	.long	_s_LavaRun+96
	.word	2355
	.space 2
	.long	24
	.long	__Z10DoLavaMoves
	.long	_s_LavaRun+112
	.word	2355
	.space 2
	.long	24
	.long	__Z10DoLavaMoves
	.long	_s_LavaRun+64
	.word	2355
	.space 2
	.long	24
	.long	__Z10DoLavaMoves
	.long	_s_LavaRun+144
	.word	2355
	.space 2
	.long	24
	.long	__Z10DoLavaMoves
	.long	_s_LavaRun+160
	.word	2355
	.space 2
	.long	24
	.long	__Z10DoLavaMoves
	.long	_s_LavaRun+176
	.word	2355
	.space 2
	.long	24
	.long	__Z10DoLavaMoves
	.long	_s_LavaRun+128
	.word	2355
	.space 2
	.long	24
	.long	__Z10DoLavaMoves
	.long	_s_LavaRun+208
	.word	2355
	.space 2
	.long	24
	.long	__Z10DoLavaMoves
	.long	_s_LavaRun+224
	.word	2355
	.space 2
	.long	24
	.long	__Z10DoLavaMoves
	.long	_s_LavaRun+240
	.word	2355
	.space 2
	.long	24
	.long	__Z10DoLavaMoves
	.long	_s_LavaRun+192
	.word	2355
	.space 2
	.long	24
	.long	__Z10DoLavaMoves
	.long	_s_LavaRun+272
	.word	2355
	.space 2
	.long	24
	.long	__Z10DoLavaMoves
	.long	_s_LavaRun+288
	.word	2355
	.space 2
	.long	24
	.long	__Z10DoLavaMoves
	.long	_s_LavaRun+304
	.word	2355
	.space 2
	.long	24
	.long	__Z10DoLavaMoves
	.long	_s_LavaRun+256
	.globl	_ShellCount
	.section .rdata,"dr"
	.align 4
_ShellCount:
	.space 4
	.globl	_autogray
	.set	_autogray,_ShellCount
	.globl	_setaspect_new_use_dimen
	.set	_setaspect_new_use_dimen,_ShellCount
	.globl	_scansector_retfast
	.set	_scansector_retfast,_ShellCount
	.globl	_s_ShotgunShellShrap
	.data
	.align 32
_s_ShotgunShellShrap:
	.word	2180
	.space 2
	.long	8
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	2181
	.space 2
	.long	8
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	2182
	.space 2
	.long	8
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	2183
	.space 2
	.long	8
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	2184
	.space 2
	.long	8
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	2185
	.space 2
	.long	8
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	2186
	.space 2
	.long	8
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	2187
	.space 2
	.long	8
	.long	__Z15DoShrapJumpFalls
	.long	_s_ShotgunShellShrap
	.globl	_s_UziShellShrap
	.align 32
_s_UziShellShrap:
	.word	2152
	.space 2
	.long	8
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	2153
	.space 2
	.long	8
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	2154
	.space 2
	.long	8
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	2155
	.space 2
	.long	8
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	2156
	.space 2
	.long	8
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	2157
	.space 2
	.long	8
	.long	__Z15DoShrapJumpFalls
	.long	_s_UziShellShrap
	.globl	_s_CarryFlag
	.align 32
_s_CarryFlag:
	.word	2520
	.space 2
	.long	16
	.long	__Z11DoCarryFlags
	.space 4
	.word	2521
	.space 2
	.long	16
	.long	__Z11DoCarryFlags
	.space 4
	.word	2522
	.space 2
	.long	16
	.long	__Z11DoCarryFlags
	.long	_s_CarryFlag
	.globl	_s_CarryFlagNoDet
	.align 32
_s_CarryFlagNoDet:
	.word	2520
	.space 2
	.long	16
	.long	__Z16DoCarryFlagNoDets
	.space 4
	.word	2521
	.space 2
	.long	16
	.long	__Z16DoCarryFlagNoDets
	.space 4
	.word	2522
	.space 2
	.long	16
	.long	__Z16DoCarryFlagNoDets
	.long	_s_CarryFlagNoDet
	.globl	_GlobalSkipZrange
	.bss
_GlobalSkipZrange:
	.space 1
	.globl	_s_BloodSprayChunk
	.data
	.align 32
_s_BloodSprayChunk:
	.word	1685
	.space 2
	.long	8
	.long	__Z12DoBloodSprays
	.space 4
	.word	1686
	.space 2
	.long	8
	.long	__Z12DoBloodSprays
	.space 4
	.word	1687
	.space 2
	.long	8
	.long	__Z12DoBloodSprays
	.space 4
	.word	1688
	.space 2
	.long	8
	.long	__Z12DoBloodSprays
	.space 4
	.word	1689
	.space 2
	.long	8
	.long	__Z12DoBloodSprays
	.space 4
	.word	1690
	.space 2
	.long	8
	.long	__Z12DoBloodSprays
	.long	_s_BloodSprayChunk
	.globl	_s_Phosphorus
	.align 32
_s_Phosphorus:
	.word	1397
	.space 2
	.long	8
	.long	__Z12DoPhosphoruss
	.space 4
	.word	1398
	.space 2
	.long	8
	.long	__Z12DoPhosphoruss
	.long	_s_Phosphorus
	.globl	_s_FireballFlames
	.align 32
_s_FireballFlames:
	.word	3212
	.space 2
	.long	6
	.long	__Z16DoFireballFlamess
	.space 4
	.word	3213
	.space 2
	.long	6
	.long	__Z16DoFireballFlamess
	.space 4
	.word	3214
	.space 2
	.long	6
	.long	__Z16DoFireballFlamess
	.space 4
	.word	3215
	.space 2
	.long	6
	.long	__Z16DoFireballFlamess
	.space 4
	.word	3216
	.space 2
	.long	6
	.long	__Z16DoFireballFlamess
	.space 4
	.word	3217
	.space 2
	.long	6
	.long	__Z16DoFireballFlamess
	.space 4
	.word	3218
	.space 2
	.long	6
	.long	__Z16DoFireballFlamess
	.space 4
	.word	3219
	.space 2
	.long	6
	.long	__Z16DoFireballFlamess
	.space 4
	.word	3220
	.space 2
	.long	6
	.long	__Z16DoFireballFlamess
	.space 4
	.word	3221
	.space 2
	.long	6
	.long	__Z16DoFireballFlamess
	.space 4
	.word	3222
	.space 2
	.long	6
	.long	__Z16DoFireballFlamess
	.space 4
	.word	3223
	.space 2
	.long	6
	.long	__Z16DoFireballFlamess
	.space 4
	.word	3224
	.space 2
	.long	6
	.long	__Z16DoFireballFlamess
	.space 4
	.word	3225
	.space 2
	.long	6
	.long	__Z16DoFireballFlamess
	.long	_s_FireballFlames
	.globl	_s_RadiationCloud
	.align 32
_s_RadiationCloud:
	.word	3258
	.space 2
	.long	16
	.long	__Z16DoRadiationClouds
	.space 4
	.word	3259
	.space 2
	.long	16
	.long	__Z16DoRadiationClouds
	.space 4
	.word	3260
	.space 2
	.long	16
	.long	__Z16DoRadiationClouds
	.space 4
	.word	3261
	.space 2
	.long	16
	.long	__Z16DoRadiationClouds
	.space 4
	.word	3262
	.space 2
	.long	16
	.long	__Z16DoRadiationClouds
	.space 4
	.word	3263
	.space 2
	.long	16
	.long	__Z16DoRadiationClouds
	.space 4
	.word	3264
	.space 2
	.long	16
	.long	__Z16DoRadiationClouds
	.space 4
	.word	3265
	.space 2
	.long	16
	.long	__Z16DoRadiationClouds
	.space 4
	.word	3266
	.space 2
	.long	16
	.long	__Z16DoRadiationClouds
	.space 4
	.word	3267
	.space 2
	.long	16
	.long	__Z16DoRadiationClouds
	.space 4
	.word	3268
	.space 2
	.long	16
	.long	__Z16DoRadiationClouds
	.space 4
	.word	3269
	.space 2
	.long	16
	.long	__Z16DoRadiationClouds
	.space 4
	.word	3270
	.space 2
	.long	16
	.long	__Z16DoRadiationClouds
	.space 4
	.word	3271
	.space 2
	.long	16
	.long	__Z16DoRadiationClouds
	.space 4
	.word	3272
	.space 2
	.long	16
	.long	__Z16DoRadiationClouds
	.space 4
	.word	3273
	.space 2
	.long	16
	.long	__Z16DoRadiationClouds
	.space 4
	.word	3274
	.space 2
	.long	16
	.long	__Z16DoRadiationClouds
	.space 4
	.word	3275
	.space 2
	.long	16
	.long	__Z16DoRadiationClouds
	.space 4
	.word	3276
	.space 2
	.long	16
	.long	__Z16DoRadiationClouds
	.space 4
	.word	3277
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.long	_s_RadiationCloud
	.globl	_s_CaltropsStick
	.align 4
_s_CaltropsStick:
	.word	2219
	.space 2
	.long	8
	.long	__Z15DoCaltropsSticks
	.long	_s_CaltropsStick
	.globl	_s_Puff
	.align 32
_s_Puff:
	.word	1748
	.space 2
	.long	8
	.long	__Z6DoPuffs
	.space 4
	.word	1749
	.space 2
	.long	8
	.long	__Z6DoPuffs
	.space 4
	.word	1750
	.space 2
	.long	8
	.long	__Z6DoPuffs
	.space 4
	.word	1751
	.space 2
	.long	8
	.long	__Z6DoPuffs
	.space 4
	.word	1752
	.space 2
	.long	8
	.long	__Z6DoPuffs
	.space 4
	.word	1753
	.space 2
	.long	8
	.long	__Z6DoPuffs
	.space 4
	.word	1753
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.long	_s_Puff
	.section .rdata,"dr"
	.align 8
LC8:
	.long	30
	.long	160
	.align 8
LC9:
	.long	150
	.long	160
	.align 4
LC10:
	.long	LC2
	.align 4
LC11:
	.long	LC0
	.align 4
LC39:
	.long	LC33
	.align 4
LC42:
	.long	LC40
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__Z11SpawnSpritessP11STATEstructsiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z8SetOwnerss;	.scl	2;	.type	32;	.endef
	.def	__Z12move_missilesiiiiiji;	.scl	2;	.type	32;	.endef
	.def	__Z18MissileHitDiveAreas;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	__Z10WallBouncess;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnBubbles;	.scl	2;	.type	32;	.endef
	.def	__Z9PlaySoundiPiS_S_i;	.scl	2;	.type	32;	.endef
	.def	__Z11SlopeBouncesPh;	.scl	2;	.type	32;	.endef
	.def	__Z10KillSprites;	.scl	2;	.type	32;	.endef
	.def	__Z12HitBreakWallP10walltypev7iiiss.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z18DoFlamesDamageTests;	.scl	2;	.type	32;	.endef
	.def	_setspritez;	.scl	2;	.type	32;	.endef
	.def	__Z15SpawnGrenadeExps;	.scl	2;	.type	32;	.endef
	.def	__Z10SetSuicides;	.scl	2;	.type	32;	.endef
	.def	__Z17DoMatchEverythingP12PLAYERstructss;	.scl	2;	.type	32;	.endef
	.def	__Z9FAFcanseeiiisiiis;	.scl	2;	.type	32;	.endef
	.def	__Z18change_sprite_statss;	.scl	2;	.type	32;	.endef
	.def	__Z15DoActorSetSpeedsh;	.scl	2;	.type	32;	.endef
	.def	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct;	.scl	2;	.type	32;	.endef
	.def	__Z9SpawnUserssP11STATEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z16KeepActorOnFloors;	.scl	2;	.type	32;	.endef
	.def	__Z19DoActorSectorDamages;	.scl	2;	.type	32;	.endef
	.def	__Z12DoActorSlides;	.scl	2;	.type	32;	.endef
	.def	__Z10DoGoroMoves;	.scl	2;	.type	32;	.endef
	.def	_videoSetGameMode;	.scl	2;	.type	32;	.endef
	.def	__Z15SetRedrawScreenP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_strcat;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	_SDL_GameControllerGetStringForButton;	.scl	2;	.type	32;	.endef
	.def	__ZL26MNU_JoystickAxesInitialiseP9MENU_ITEM.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z24SetDefaultKeyDefinitionsi;	.scl	2;	.type	32;	.endef
	.def	__Z16SetMouseDefaultsi;	.scl	2;	.type	32;	.endef
	.def	_rotatesprite_.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z16MNU_LoadSaveMove8UserCallP9MENU_ITEM.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z9GetDamagesss;	.scl	2;	.type	32;	.endef
	.def	__Z10SetFadeAmtP12PLAYERstructsh;	.scl	2;	.type	32;	.endef
	.def	__Z9ActorPains;	.scl	2;	.type	32;	.endef
	.def	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z19SetupSpriteForBreakP12spritetypev7.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z13DoActorZranges;	.scl	2;	.type	32;	.endef
	.def	__Z18HelpMissileLateralsi;	.scl	2;	.type	32;	.endef
	.def	__Z6DoJumps;	.scl	2;	.type	32;	.endef
	.def	_inside;	.scl	2;	.type	32;	.endef
	.def	_cansee.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_handleevents.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z18netbroadcastpacketPhi;	.scl	2;	.type	32;	.endef
	.def	__Z8pSuicideP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	_videoCheckMode;	.scl	2;	.type	32;	.endef
	.def	_CONTROL_ClearUserInput;	.scl	2;	.type	32;	.endef
	.def	_CONTROL_GetUserInput.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z13TerminateGamev;	.scl	2;	.type	32;	.endef
	.def	__Z16OSD_CaptureInputi;	.scl	2;	.type	32;	.endef
	.def	__Z19DrawMenuLevelScreenv;	.scl	2;	.type	32;	.endef
	.def	_videoNextPage;	.scl	2;	.type	32;	.endef
	.def	__Z13PutStringInfoP12PLAYERstructPKc;	.scl	2;	.type	32;	.endef
	.def	__Z11DoQuickLoadv;	.scl	2;	.type	32;	.endef
	.def	__Z8LoadGames;	.scl	2;	.type	32;	.endef
	.def	__Z8SaveGames;	.scl	2;	.type	32;	.endef
	.def	_videoClearViewableArea;	.scl	2;	.type	32;	.endef
	.def	_paletteMakeLookupTable.part.0;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__Z18CON_CommandHistorya;	.scl	2;	.type	32;	.endef
	.def	__Z13InitLavaThrows;	.scl	2;	.type	32;	.endef
	.def	__Z15InitActorDecides;	.scl	2;	.type	32;	.endef
	.def	__Z13InitLavaFlames;	.scl	2;	.type	32;	.endef
	.def	__Z13DoActorDebriss;	.scl	2;	.type	32;	.endef
	.def	__Z15InitActorAttacks;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorRepositions;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorFindPlayers;	.scl	2;	.type	32;	.endef
	.def	__Z21InitActorWanderArounds;	.scl	2;	.type	32;	.endef
	.def	__Z14InitActorEvades;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorMoveClosers;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorAlertNoises;	.scl	2;	.type	32;	.endef
	.def	__Z21InitActorAmbientNoises;	.scl	2;	.type	32;	.endef
	.def	__Z16InitActorRunAways;	.scl	2;	.type	32;	.endef
	.def	__Z15DoShrapJumpFalls;	.scl	2;	.type	32;	.endef
	.def	__Z12DoBloodSprays;	.scl	2;	.type	32;	.endef
	.def	__Z12DoPhosphoruss;	.scl	2;	.type	32;	.endef
	.def	__Z16DoFireballFlamess;	.scl	2;	.type	32;	.endef
	.def	__Z9DoSuicides;	.scl	2;	.type	32;	.endef
	.def	__Z6DoPuffs;	.scl	2;	.type	32;	.endef
