	.file	"<artificial>"
	.text
	.p2align 4
	.def	__ZL27MatchQualifiesForAutoRecordv;	.scl	3;	.type	32;	.endef
__ZL27MatchQualifiesForAutoRecordv:
LFB0:
	.cfi_startproc
	movzbl	_DemoPlaying, %eax
	orb	_DemoMode, %al
	jne	L3
	cmpl	$1, _numplayers
	jle	L1
	movl	$1, %eax
	cmpb	$0, _DemoRecording
	je	L1
	cmpb	$0, __ZL21DemoRecordCommandLine.lto_priv.0
	setne	%al
	ret
	.p2align 4,,10
	.p2align 3
L3:
	xorl	%eax, %eax
L1:
	ret
	.cfi_endproc
LFE0:
	.section .rdata,"dr"
LC0:
	.ascii "Level not found: %s\0"
LC1:
	.ascii "source/sw/src/game.h\0"
	.text
	.p2align 4
	.def	__Z9LoadLevelPKc;	.scl	3;	.type	32;	.endef
__Z9LoadLevelPKc:
LFB1:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movzbl	_SW_GameFlags, %edx
	leal	22(%esp), %ecx
	andl	$1, %edx
	call	_engineLoadBoard.constprop.0
	cmpl	$-1, %eax
	je	L10
L7:
	movswl	22(%esp), %eax
	sall	$16, %eax
	movl	%eax, _Player+300
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L10:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L11
L8:
	movl	%ebx, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$_apptitle, (%esp)
	call	_wm_msgbox.constprop.0
	call	__Z13TerminateGamev
	jmp	L7
	.p2align 4,,10
	.p2align 3
L11:
	movl	%ebx, 16(%esp)
	movl	$LC0, 12(%esp)
	movl	$2413, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L8
	.cfi_endproc
LFE1:
	.section .rdata,"dr"
LC2:
	.ascii "r\0"
LC3:
	.ascii "demos.run\0"
LC4:
	.ascii "%s\0"
	.align 4
LC5:
	.ascii "demos.run is too long, ignoring remaining files\0"
LC6:
	.ascii "source/sw/src/game.cpp\0"
LC7:
	.ascii "demotxt.run\0"
LC8:
	.ascii "%d\0"
	.align 4
LC9:
	.ascii "demotxt.run is too long, trimming the text\0"
	.text
	.p2align 4
	.def	__Z11LoadDemoRunv;	.scl	3;	.type	32;	.endef
__Z11LoadDemoRunv:
LFB3:
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
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	$LC2, 4(%esp)
	movl	$LC3, (%esp)
	call	_fopen
	testl	%eax, %eax
	je	L13
	movl	%eax, %edi
	xorl	%eax, %eax
L14:
	movl	$0, _DemoName(%eax)
	addl	$16, %eax
	movl	$0, _DemoName-12(%eax)
	movl	$0, _DemoName-8(%eax)
	movl	$0, _DemoName-4(%eax)
	cmpl	$240, %eax
	jb	L14
	movl	$_DemoName, %ebx
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L17:
	movl	%ebx, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	%edi, (%esp)
	call	_fscanf
	cmpl	$-1, %eax
	je	L16
	addl	$1, %esi
	addl	$16, %ebx
	cmpw	$15, %si
	jne	L17
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L16
	movl	$LC5, 12(%esp)
	movl	$739, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	.p2align 4
	.p2align 3
L16:
	movl	%edi, (%esp)
	call	_fclose
L13:
	xorl	%eax, %eax
L19:
	movl	$0, _DemoText(%eax)
	addl	$16, %eax
	movl	$0, _DemoText-12(%eax)
	movl	$0, _DemoText-8(%eax)
	movl	$0, _DemoText-4(%eax)
	cmpl	$192, %eax
	jb	L19
	movl	$LC2, 4(%esp)
	movl	$LC7, (%esp)
	call	_fopen
	movl	%eax, %edi
	testl	%eax, %eax
	je	L12
	movl	%eax, 8(%esp)
	movl	$_DemoText, %ebx
	xorl	%esi, %esi
	movl	$6, 4(%esp)
	movl	$_ds, (%esp)
	call	_fgets
	movl	$_DemoTextYstart, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$_ds, (%esp)
	call	_sscanf
L23:
	movl	%edi, 8(%esp)
	movl	$63, 4(%esp)
	movl	%ebx, (%esp)
	call	_fgets
	testl	%eax, %eax
	je	L22
	addl	$1, %esi
	addl	$64, %ebx
	cmpw	$3, %si
	jne	L23
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L22
	movl	$LC9, 12(%esp)
	movl	$756, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L22:
	movl	%edi, (%esp)
	call	_fclose
L12:
	addl	$16, %esp
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
LFE3:
	.section .rdata,"dr"
	.align 4
LC10:
	.ascii "There was a problem initializing the engine: %s\0"
	.align 4
LC11:
	.ascii "Build Engine Initialization Error\0"
	.text
	.p2align 4
	.def	__ZL19SW_FatalEngineErrorv;	.scl	3;	.type	32;	.endef
__ZL19SW_FatalEngineErrorv:
LFB4:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	_engineerrstr, %eax
	movl	$LC10, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$LC11, (%esp)
	call	_wm_msgbox
	movl	$1, (%esp)
	call	_exit
	.cfi_endproc
LFE4:
	.p2align 4
	.def	__Z13FindLevelInfoPcPs.constprop.0;	.scl	3;	.type	32;	.endef
__Z13FindLevelInfoPcPs.constprop.0:
LFB6:
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
	movl	$_LevelInfo+20, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	$1, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movzbl	_SW_GameFlags, %eax
	andl	$1, %eax
	cmpb	$1, %al
	sbbl	%edi, %edi
	andl	$25, %edi
	addl	$5, %edi
	.p2align 4
	.p2align 3
L53:
	movl	(%esi), %eax
	testl	%eax, %eax
	je	L51
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L52
L51:
	addl	$1, %ebx
	addl	$20, %esi
	cmpw	%di, %bx
	jne	L53
	xorl	%ebx, %ebx
L52:
	movw	%bx, _Level
	addl	$8, %esp
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
LFE6:
	.p2align 4
	.def	__Z15BonusPunchSounds;	.scl	3;	.type	32;	.endef
__Z15BonusPunchSounds:
LFB7:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	imull	$24124, _myconnectindex, %eax
	movl	$0, 4(%esp)
	leal	_Player(%eax), %edx
	leal	_Player+4(%eax), %ecx
	addl	$_Player+8, %eax
	movl	%eax, (%esp)
	movl	$263, %eax
	call	__Z9PlaySoundiPiS_S_i
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE7:
	.p2align 4
	.def	__Z14BonusKickSounds;	.scl	3;	.type	32;	.endef
__Z14BonusKickSounds:
LFB8:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	imull	$24124, _myconnectindex, %eax
	movl	$0, 4(%esp)
	leal	_Player(%eax), %edx
	leal	_Player+4(%eax), %ecx
	addl	$_Player+8, %eax
	movl	%eax, (%esp)
	movl	$262, %eax
	call	__Z9PlaySoundiPiS_S_i
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE8:
	.p2align 4
	.def	__Z14BonusGrabSounds;	.scl	3;	.type	32;	.endef
__Z14BonusGrabSounds:
LFB9:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	imull	$24124, _myconnectindex, %eax
	movl	$0, 4(%esp)
	leal	_Player(%eax), %edx
	leal	_Player+4(%eax), %ecx
	addl	$_Player+8, %eax
	movl	%eax, (%esp)
	movl	$478, %eax
	call	__Z9PlaySoundiPiS_S_i
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE9:
	.p2align 4
	.def	__Z13PlayLevelSongv;	.scl	3;	.type	32;	.endef
__Z13PlayLevelSongv:
LFB10:
	.cfi_startproc
	movswl	_Level, %eax
	testw	%ax, %ax
	je	L78
	movzbl	_RedBookSong(%eax), %edx
L70:
	cmpb	$0, _gs+27
	je	L75
	cmpb	$0, _DemoMode
	jne	L75
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	$1, %ecx
	movl	$_LevelSong, %eax
	movl	$1, (%esp)
	call	__Z8PlaySongPcihh.part.0
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L75:
	ret
	.p2align 4,,10
	.p2align 3
L78:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$6, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L70
	sall	$14, %eax
	movl	$-1610571775, %edx
	mull	%edx
	shrl	$26, %edx
	movzbl	_RedBookSong+4(%edx), %edx
	jmp	L70
	.cfi_endproc
LFE10:
	.section .rdata,"dr"
LC15:
	.ascii "sine and arctangent tables\0"
LC16:
	.ascii "\0"
LC17:
	.ascii "sine table\0"
LC18:
	.ascii "s\0"
LC19:
	.ascii "arctangent table\0"
LC20:
	.ascii "sw.def\0"
LC22:
	.ascii "fullscreen\0"
LC23:
	.ascii "windowed\0"
LC24:
	.ascii "Fx ok.\0"
LC25:
	.ascii "Unknown Fx error code.\0"
	.align 4
LC34:
	.ascii "Calculated %s differ%s from original!\12\0"
LC35:
	.ascii "source/build/src/engine.cpp\0"
	.align 4
LC38:
	.ascii "r00006[/bin/sh: line 1: git: command not found]-nohash\0"
LC39:
	.ascii "Kuro %s\0"
LC40:
	.ascii "^14\0"
	.align 4
LC44:
	.ascii "CON_InitConsole: Failed to add command contained in pre_commands list.\0"
LC45:
	.ascii "Waiting for players...\0"
	.align 4
LC46:
	.ascii "To play a Network game with more than 4 players you must purchase the full version.  Read the Ordering Info screens for details.\0"
LC48:
	.ascii "cacheinfo\0"
	.align 4
LC49:
	.ascii "cacheinfo: displays cache statistics\0"
LC51:
	.ascii "Initialized %.1fM cache\0"
LC52:
	.ascii "source/build/src/cache1d.cpp\0"
LC53:
	.ascii "swvoxfil.txt\0"
LC54:
	.ascii "swplock.txt\0"
LC55:
	.ascii "swcustom.txt\0"
LC56:
	.ascii "INV_ARMOR\0"
LC57:
	.ascii "INV_KEVLAR\0"
LC58:
	.ascii "INV_SM_MEDKIT\0"
LC59:
	.ascii "INV_FORTUNE\0"
LC60:
	.ascii "INV_MEDKIT\0"
LC61:
	.ascii "INV_GAS_BOMB\0"
LC62:
	.ascii "INV_FLASH_BOMB\0"
LC63:
	.ascii "INV_CALTROPS\0"
LC64:
	.ascii "INV_NIGHT_VIS\0"
LC65:
	.ascii "INV_REPAIR_KIT\0"
LC66:
	.ascii "INV_SMOKE_BOMB\0"
	.align 4
LC67:
	.ascii "%s:%d: error: map number %d not in range 1-%d\0"
LC68:
	.ascii "source/sw/src/scrip2.cpp\0"
LC69:
	.ascii "%d : %02d\0"
LC70:
	.ascii "%s:%d: error\0"
	.align 4
LC71:
	.ascii "%s:%d: error: episode number %d not in range 1-2\0"
	.align 4
LC72:
	.ascii "%s:%d: error: skill number %d not in range 1-4\0"
LC73:
	.ascii "%s:%d: Unexpected EOF!\0"
	.align 4
LC74:
	.ascii "source/build/src/scriptfile.cpp\0"
	.align 4
LC75:
	.ascii "%s:%d: error: inventory item number not in range 1-%d\0"
	.align 4
LC76:
	.ascii "%s:%d: error: weapon number not in range 1-%d\0"
LC77:
	.ascii "Loading %s\0"
LC78:
	.ascii "source/build/src/defs.cpp\0"
	.align 4
LC79:
	.ascii "Definitions file '%s' loaded in %d ms.\0"
LC80:
	.ascii "No palette found.\0"
LC81:
	.ascii "No shade table found.\0"
LC82:
	.ascii "No translucency table found.\0"
LC83:
	.ascii "$dozer.map\0"
	.align 4
LC84:
	.ascii "Failure setting video mode %dx%dx%d %s! Attempting safer mode...\0"
LC86:
	.ascii "Sound error: %s\0"
LC87:
	.ascii "source/sw/src/sounds.cpp\0"
	.text
	.p2align 4
	.globl	__Z8InitGameiPKPKc
	.def	__Z8InitGameiPKPKc;	.scl	2;	.type	32;	.endef
__Z8InitGameiPKPKc:
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
	subl	$356, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%eax, -328(%ebp)
	movl	__ZL13preinitcalled.lto_priv.0, %eax
	movl	%edx, -332(%ebp)
	testl	%eax, %eax
	je	L544
L80:
	cmpb	$0, __ZZL16engineLoadTablesvE12tablesloaded
	je	L545
L82:
	movl	$-1, _xyaspect
	movl	$1, %ecx
	movl	$0, _rotatesprite_y_offset
	movl	$65536, _rotatesprite_yxaspect
	movb	$0, _showinvisibility
	.p2align 5
	.p2align 4
	.p2align 3
L114:
	movl	$16777215, %eax
	xorl	%edx, %edx
	idivl	%ecx
	movl	%eax, __ZL8lowrecip.lto_priv.0(,%ecx,4)
	addl	$1, %ecx
	cmpl	$1024, %ecx
	jne	L114
	movl	$40960, 8(%esp)
	movl	$_voxscale, %edi
	movl	$0, 4(%esp)
	movl	$_voxoff, (%esp)
	call	_memset
	movl	$10240, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL7voxlock.lto_priv.0, (%esp)
	call	_memset
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_voxflags, (%esp)
	call	_memset
	movl	$61440, 8(%esp)
	movl	$255, 4(%esp)
	movl	$_tiletovox, (%esp)
	call	_memset
	movl	$2048, %ecx
	movl	$65536, %eax
/APP
 # 9255 "source/build/src/engine.cpp" 1
	rep; stosl
 # 0 "" 2
/NO_APP
	xorl	%eax, %eax
	movb	$0, _paletteloaded
	movw	%ax, _searchit
	movl	$0, _totalclock
	movl	$0, _totalclock+8
	movl	$0, _totalclock+12
	movl	$512, _g_visibility
	movl	$512, _parallaxvisibility
	movl	$4096, _maxspritesonscreen
	call	_paletteLoadFromDisk
	movl	_hicinitcounter, %eax
	testl	%eax, %eax
	je	L546
L115:
	movl	_mdinited, %edi
	testl	%edi, %edi
	je	L547
L116:
	leal	-272(%ebp), %eax
	movl	$LC38, 12(%esp)
	movl	$LC39, 8(%esp)
	movl	$256, 4(%esp)
	movl	%eax, (%esp)
	call	_snprintf
	movl	_osd, %eax
	movl	1164(%eax), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	_osd, %ebx
	leal	-272(%ebp), %eax
	subl	$4, %esp
	movl	$0, 1164(%ebx)
	movl	%eax, (%esp)
	call	_strlen
	leal	1(%eax), %edi
	movl	%eax, %esi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edx
	testl	%eax, %eax
	je	L117
	leal	-272(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	movl	%edx, -312(%ebp)
	call	_strcpy
	movl	-312(%ebp), %edx
	leal	-272(%ebp), %eax
	movb	$0, (%edx,%esi)
	movl	$10, %esi
	movl	%edx, 1164(%ebx)
	movl	$4, %ebx
	movl	%eax, (%esp)
	call	_strlen
	movups	LC41, %xmm0
	movl	$2, %ecx
	movl	%eax, %edx
	movl	_osd, %eax
	movl	%ecx, 1132(%eax)
	movl	$3, %ecx
	movups	%xmm0, 1116(%eax)
	movss	LC89, %xmm0
	movb	%dl, 1168(%eax)
	movw	%si, 1169(%eax)
	unpcklps	%xmm0, %xmm0
	movl	%ebx, 1136(%eax)
	movl	%ecx, 1156(%eax)
	movl	%ecx, 1160(%eax)
	movl	$LC40, 1112(%eax)
	movlps	%xmm0, 1104(%eax)
	call	__Z9InitSetupv
	cmpb	$0, _DemoPlaying
	jne	L118
L119:
	cmpb	$0, _AutoNet
	je	L120
	movl	_Auto, %eax
	movb	%al, _gs+31
	movl	_Auto+4, %eax
	movb	%al, _gs+32
	movl	_Auto+8, %eax
	movb	%al, _gs+33
	movl	_Auto+12, %eax
	movb	%al, _gs+35
	movl	_Auto+16, %eax
	movb	%al, _gs+36
	movl	_Auto+20, %eax
	movb	%al, _gs+34
	movl	_Auto+24, %eax
	movb	%al, _gs+37
	movl	_Auto+28, %eax
	movb	%al, _gs+38
	movl	_Auto+32, %eax
	movb	%al, _gs+39
	movl	_Auto+36, %eax
	movb	%al, _gs+61
L120:
	movl	$120, %eax
	call	__Z9timerIniti.isra.0
	movl	_pre_commands, %eax
	testl	%eax, %eax
	je	L121
	movl	$_pre_commands, %ebx
	jmp	L125
L122:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L548
L124:
	movl	$LC44, 8(%esp)
	addl	$8, %ebx
	movl	$LC4, 4(%esp)
	movl	$_apptitle, (%esp)
	call	_wm_msgbox.constprop.0
	call	__Z13TerminateGamev
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L121
L125:
	movl	4(%ebx), %edx
	testl	%edx, %edx
	je	L122
	movzwl	_numcommands, %ecx
	cmpw	$99, %cx
	jg	L122
	movswl	%cx, %esi
	addl	$8, %ebx
	addl	$1, %ecx
	movl	%eax, _commandlist(,%esi,8)
	movl	(%ebx), %eax
	movl	%edx, _commandlist+4(,%esi,8)
	movw	%cx, _numcommands
	testl	%eax, %eax
	jne	L125
L121:
	movl	$768, 8(%esp)
	movl	$_palette, 4(%esp)
	movl	$_palette_data, (%esp)
	call	_memcpy
	movl	$_palette_data, (%esp)
	call	_paletteInitClosestColorMap
	call	__Z11InitPalettev
	movl	__ZL8firstnet.lto_priv.0, %edx
	testl	%edx, %edx
	jne	L126
	xorl	%eax, %eax
	call	__Z21initmultiplayersparmsiPKPKc
	testl	%eax, %eax
	jne	L128
L127:
	movl	$1, __ZL8netready.lto_priv.0
L129:
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L136:
	movl	%esi, %edx
	movl	$8, %edi
	xorl	%eax, %eax
	sall	$8, %edx
	.p2align 6
	.p2align 4
	.p2align 3
L135:
	movl	%eax, %ebx
	addl	%eax, %eax
	movzwl	%ax, %eax
	xorl	%edx, %ebx
	movl	%eax, %ecx
	xorl	$4129, %ecx
	andb	$-128, %bh
	cmovne	%ecx, %eax
	addl	%edx, %edx
	movzwl	%dx, %edx
	subl	$1, %edi
	jne	L135
	movl	%eax, __ZL8crctable.lto_priv.0(,%esi,4)
	addl	$1, %esi
	cmpl	$256, %esi
	jne	L136
	movl	_numplayers, %eax
	cmpl	$4, %eax
	jle	L137
	movzbl	_SW_GameFlags, %edx
	andl	$1, %edx
	cmpl	$1, _MovesPerPacket
	je	L549
	testb	%dl, %dl
	je	L139
L140:
	movl	$LC46, 4(%esp)
	movl	$_apptitle, (%esp)
	call	_wm_msgbox.constprop.0
	movl	__ZL6mysock.lto_priv.0, %eax
	cmpl	$-1, %eax
	je	L142
	movl	%eax, (%esp)
	call	*__imp__closesocket@4
	subl	$4, %esp
L142:
	movl	_wsainitialized, %ebx
	testl	%ebx, %ebx
	jne	L550
L143:
	movl	__ZL6pakmem.lto_priv.0, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, __ZL6pakmem.lto_priv.0
	movl	$0, _keypresscallback
	call	__Z17CONFIG_WriteSetupv
	call	__Z12RTS_Shutdownv
	movl	_FXToggle, %ecx
	testl	%ecx, %ecx
	je	L144
	cmpb	$0, _FxInitialized
	je	L144
	call	__Z13SoundShutdownv.part.0
L144:
	movl	_MusicToggle, %edx
	testl	%edx, %edx
	je	L145
	cmpb	$0, _MusicInitialized
	je	L145
	call	__Z13MusicShutdownv.part.0
L145:
	call	_engineUnInit
	movl	_foundgrps, %ebx
	testl	%ebx, %ebx
	je	L146
L147:
	movl	%ebx, %eax
	movl	8(%ebx), %ebx
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	_foundgrps, %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	%ebx, _foundgrps
	testl	%ebx, %ebx
	jne	L147
L146:
	call	_uninitgroupfile
	movl	$0, (%esp)
	call	_exit
L548:
	movl	$LC44, 16(%esp)
	movl	$LC4, 12(%esp)
	movl	$2413, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L124
L126:
	movl	-332(%ebp), %eax
	leal	(%eax,%edx,4), %ecx
	movl	-328(%ebp), %eax
	subl	%edx, %eax
	movl	%ecx, %edx
	call	__Z21initmultiplayersparmsiPKPKc
	testl	%eax, %eax
	je	L129
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	$1, _networkmode
	sete	_NetBroadcastMode
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L131
	movl	$LC45, 12(%esp)
	movl	$936, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L131
	.p2align 4,,10
	.p2align 3
L133:
	call	_handleevents.isra.0
	cmpb	$0, _quitevent
	jne	L551
L131:
	call	__Z21initmultiplayerscyclev
	testl	%eax, %eax
	jne	L133
	jmp	L129
L128:
	call	__Z21initmultiplayerscyclev
	testl	%eax, %eax
	je	L127
	call	__Z21initmultiplayerscyclev
	testl	%eax, %eax
	jne	L128
	jmp	L127
L118:
	movl	_Auto+32, %eax
	movb	%al, _gs+39
	jmp	L119
L137:
	cmpl	$1, %eax
	jle	L141
L139:
	movb	%al, _CommPlayers
	movzbl	%al, %eax
	movw	%ax, _OrigCommPlayers
	movl	$1, %eax
	movb	$1, _CommEnabled
	movw	%ax, _gNet+12
L141:
	call	__Z11LoadDemoRunv
	movb	$0, __ZL11artfilename.lto_priv.0+12
	movl	$1701603700, __ZL11artfilename.lto_priv.0
	movl	$808464499, __ZL11artfilename.lto_priv.0+4
	movl	$1953653038, __ZL11artfilename.lto_priv.0+8
	movb	$0, __ZL11artfilename.lto_priv.0+19
	movl	$122880, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_tilesiz, (%esp)
	call	_memset
	movl	$153600, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_picanm, (%esp)
	call	_memset
	movups	LC47, %xmm0
	movl	$_rottile, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L148:
	movups	%xmm0, (%eax)
	addl	$32, %eax
	movups	%xmm0, -16(%eax)
	cmpl	$_rottile+122880, %eax
	jne	L148
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L149:
	movl	%ebx, %eax
	addl	$1, %ebx
	call	__ZL18artReadIndexedFilei.lto_priv.0
	cmpl	$200, %ebx
	jne	L149
	movl	$3840, 8(%esp)
	movl	$33554432, %ebx
	movl	$0, 4(%esp)
	movl	$_gotpic, (%esp)
	call	_memset
	call	_Bgetsysmemsize
	cmpl	$33554432, %eax
	movl	$33554432, %eax
	jbe	L552
L150:
	movl	%ebx, __ZL9g_vm_size
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -320(%ebp)
	testl	%eax, %eax
	je	L151
	movl	%eax, __ZL9g_vm_data.lto_priv.0
	movl	__ZL9g_vm_size, %eax
	movl	%eax, -312(%ebp)
	cmpb	$0, __ZL11g_cacheInit
	jne	L152
	movl	$1, %esi
	.p2align 4
	.p2align 3
L153:
	movl	$200, %eax
	movl	$268435456, (%esp)
	subl	%esi, %eax
	movl	%eax, 4(%esp)
	call	_tabledivide32.lto_priv.1
	movl	%eax, __ZL9lockrecip.lto_priv.0(,%esi,4)
	addl	$1, %esi
	cmpl	$200, %esi
	jne	L153
	movl	_osd, %eax
	testl	%eax, %eax
	je	L553
L154:
	movl	$LC48, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L554
L155:
	movl	$LC49, 8(%eax)
	movl	$__ZL17osdfunc_cacheinfoPK13osdfuncparm_t.lto_priv.0, 12(%eax)
	movb	$1, __ZL11g_cacheInit
L152:
	movl	-320(%ebp), %esi
	movl	$16384, _g_cache+12
	leal	15(%esi), %eax
	andl	$15, %esi
	andl	$-16, %eax
	movl	%eax, _g_cache+4
	movl	-312(%ebp), %eax
	subl	%esi, %eax
	andl	$-16, %eax
	movl	%eax, _g_cache+8
	movl	$16, 4(%esp)
	movl	$262144, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj
	subl	$8, %esp
	testl	%eax, %eax
	je	L156
	movl	_g_cache+12, %edx
	movl	%eax, _g_cache
	movl	$0, 4(%esp)
	sall	$4, %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	call	_memset
	movl	_g_cache, %eax
	movl	_g_cache+8, %edx
	movl	$__ZL8zerochar.lto_priv.0, (%eax)
	movl	%edx, 8(%eax)
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	$1, _g_cache+16
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	jns	L555
L157:
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L159:
	movl	%ebx, %eax
	addl	$1, %ebx
	call	_tileUpdatePicSiz
	cmpl	$30720, %ebx
	jne	L159
	movl	$-1, __ZL6artfil.lto_priv.0
	movl	$-1, __ZL9artfilnum.lto_priv.0
	movl	$0, __ZL9artfilplc.lto_priv.0
	movl	$122880, 8(%esp)
	movl	$_tilesiz, 4(%esp)
	movl	$__ZL18PanelBaseTileSizes.lto_priv.0, (%esp)
	call	_memcpy
	movb	$1, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	cmpb	$0, _CommEnabled
	je	L161
	movl	_myconnectindex, %eax
	movw	%ax, _screenpeek
L161:
	movl	$__ZL16CompareBreakInfoPKvS0_.lto_priv.0, 12(%esp)
	movl	$10, 8(%esp)
	movl	$283, 4(%esp)
	movl	$_SpriteBreakInfo, (%esp)
	call	_qsort
	movl	$__ZL16CompareBreakInfoPKvS0_.lto_priv.0, 12(%esp)
	movl	$10, 8(%esp)
	movl	$71, 4(%esp)
	movl	$_WallBreakInfo, (%esp)
	call	_qsort
	movl	$-1, %eax
	movb	$1, _parallaxtype
	call	_tileSetupSky
	movb	$1, 8(%eax)
	movl	$8192, (%eax)
	movl	$1200, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_Track, (%esp)
	call	_memset
	movl	$217116, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_Player, (%esp)
	call	_memset
	movzbl	_SW_GameFlags, %edx
	movl	$_Player+22988, %eax
	andl	$1, %edx
	cmpb	$1, %dl
	sbbl	%edx, %edx
	andl	$96496, %edx
	addl	$_Player+119484, %edx
L162:
	movl	%eax, (%eax)
	movl	%eax, 4(%eax)
	addl	$24124, %eax
	cmpl	%edx, %eax
	jne	L162
	movl	$256, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L163
	movl	$122880, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$_aVoxelArray, (%esp)
	call	_memset
	movl	$LC53, %eax
	call	__Z14LoadScriptFilePKc
	testb	%al, %al
	je	L164
	movl	%edi, -312(%ebp)
	jmp	L165
L166:
	movl	$1, %eax
	call	__Z8GetTokenh.part.0
	cmpb	$0, _endofscript
	jne	L517
L558:
	movl	$_token, (%esp)
	call	_atol
	movl	%eax, %edi
	cmpb	$0, _tokenready
	jne	L556
	xorl	%eax, %eax
	call	__Z8GetTokenh.part.0
L169:
	movl	$_token, (%esp)
	call	_atol
	movl	%eax, %ebx
	cmpb	$0, _tokenready
	jne	L557
	xorl	%eax, %eax
	call	__Z8GetTokenh.part.0
L171:
	movl	$_token, 4(%esp)
	movl	%esi, (%esp)
	call	_strcpy
	movl	%esi, %edx
	movl	%ebx, %eax
	call	_qloadkvx
	testl	%eax, %eax
	jne	L172
	movw	%bx, _aVoxelArray(,%edi,4)
L172:
	cmpl	_nextvoxid, %ebx
	jl	L173
	addl	$1, %ebx
	movl	%ebx, _nextvoxid
L173:
	movl	_scriptend_p, %eax
	cmpl	%eax, _script_p
	jnb	L517
L165:
	cmpb	$0, _tokenready
	je	L166
	movb	$0, _tokenready
	cmpb	$0, _endofscript
	je	L558
L517:
	movl	-312(%ebp), %edi
L164:
	movl	_scriptbuffer, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, _script_p
	movl	$256, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L163
	movl	$LC54, %eax
	call	__Z14LoadScriptFilePKc
	testb	%al, %al
	jne	L179
L174:
	movl	_scriptbuffer, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, _script_p
	testb	$1, _SW_GameFlags
	je	L559
L180:
	movl	_g_defNamePtr, %esi
	movl	$LC20, %eax
	testl	%esi, %esi
	cmove	%eax, %esi
	leal	-272(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	-272(%ebp), %eax
	movl	%eax, -320(%ebp)
	movl	-268(%ebp), %eax
	movl	%eax, -324(%ebp)
	movl	%esi, %eax
	call	_scriptfile_fromfile
	movl	%eax, -312(%ebp)
	testl	%eax, %eax
	je	L560
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L298
	movl	%esi, 16(%esp)
	movl	$LC77, 12(%esp)
	movl	$3920, 8(%esp)
	movl	$LC78, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L298:
	movl	-312(%ebp), %eax
	call	__ZL10defsparserP10scriptfile.isra.0
	movl	_g_defModules, %ebx
	movl	_g_defModules+4, %eax
	leal	(%ebx,%eax,4), %edx
	cmpl	%edx, %ebx
	jne	L296
	jmp	L299
	.p2align 4,,10
	.p2align 3
L555:
	movl	-312(%ebp), %edx
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movzwl	%dx, %eax
	shrl	$16, %edx
	cvtsi2ssl	%edx, %xmm0
	mulss	LC31, %xmm0
	cvtsi2ssl	%eax, %xmm1
	addss	%xmm1, %xmm0
	movss	LC50, %xmm1
	mulss	%xmm1, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -312(%ebp)
	flds	-312(%ebp)
	movl	$LC51, 12(%esp)
	movl	$98, 8(%esp)
	movl	$LC52, 4(%esp)
	movl	$0, (%esp)
	fstpl	16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L157
L556:
	movb	$0, _tokenready
	jmp	L169
L557:
	movb	$0, _tokenready
	jmp	L171
L175:
	movl	$1, %eax
	call	__Z8GetTokenh.part.0
L176:
	cmpb	$0, _endofscript
	jne	L174
	movl	$_token, (%esp)
	call	_atoi
	movl	%eax, %ebx
	cmpb	$0, _tokenready
	jne	L561
	xorl	%eax, %eax
	call	__Z8GetTokenh.part.0
L178:
	movl	$_token, (%esp)
	call	_atoi
	movw	%ax, _aVoxelArray+2(,%ebx,4)
	movl	_scriptend_p, %eax
	cmpl	%eax, _script_p
	jnb	L174
L179:
	cmpb	$0, _tokenready
	je	L175
	movb	$0, _tokenready
	jmp	L176
L561:
	movb	$0, _tokenready
	jmp	L178
L547:
	call	_freeallmodels
	movl	$1, _mdinited
	jmp	L116
L546:
	call	_hicinit
	jmp	L115
L545:
	movl	$1, -312(%ebp)
	xorl	%esi, %esi
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L81:
	movl	%esi, %ebx
	movl	$536870912, %edx
	movl	$15, %ecx
	movl	$1073741824, %eax
	sall	$18, %ebx
	addl	$131072, %ebx
	.p2align 4
	.p2align 3
L84:
	subl	%edx, %eax
	shrl	%eax
	subl	$1, %ecx
	je	L562
L86:
	shrl	$2, %edx
	cmpl	%eax, %ebx
	jb	L84
	subl	%eax, %ebx
	leal	(%eax,%edx,4), %eax
	subl	%edx, %eax
	shrl	%eax
	subl	$1, %ecx
	jne	L86
L562:
	cmpl	%eax, %ebx
	sbbl	$-1, %eax
	shrl	%eax
	addl	%eax, %eax
	movw	%ax, _sqrtable(%esi,%esi)
	movl	$10, %eax
	subl	%edi, %eax
	sall	$8, %eax
	leal	(%eax,%edi,2), %eax
	movw	%ax, _shlookup(%esi,%esi)
	cmpl	$255, %esi
	jle	L563
	addl	$1, %esi
	cmpl	$4096, %esi
	je	L564
L89:
	movl	-312(%ebp), %eax
	cmpl	%esi, %eax
	jg	L81
	sall	$2, %eax
	addl	$1, %edi
	movl	%eax, -312(%ebp)
	jmp	L81
L563:
	movl	$4, %eax
	subl	%edi, %eax
	sall	$8, %eax
	leal	12(%eax,%edi,2), %eax
	movw	%ax, _shlookup+8192(%esi,%esi)
	addl	$1, %esi
	jmp	L89
L564:
	movl	$0, -312(%ebp)
	.p2align 4
	.p2align 3
L95:
	movl	-312(%ebp), %ebx
	movl	$128, %ecx
	sall	$20, %ebx
	.p2align 5
	.p2align 4
	.p2align 3
L90:
	movl	%ebx, %eax
	xorl	%edx, %edx
	divl	%ecx
	leal	(%eax,%ecx), %edx
	leal	1(%ecx), %eax
	movl	%edx, %ecx
	shrl	%ecx
	subl	%ecx, %eax
	cmpl	$2, %eax
	ja	L90
	movl	%ecx, %edi
	leal	(%ecx,%ecx), %esi
	imull	%ecx, %edi
	subl	%ebx, %edi
	movl	%edi, %eax
	movl	%edi, %ebx
	subl	%esi, %eax
	addl	$1, %eax
/APP
 # 8515 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	%edi, %eax
/APP
 # 8515 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %edx
	jge	L91
	.p2align 4
	.p2align 3
L92:
	movl	%ecx, %eax
	subl	$1, %ecx
	negl	%eax
	leal	(%ecx,%ecx), %esi
	leal	1(%ebx,%eax,2), %ebx
	movl	$1, %eax
	subl	%esi, %eax
	movl	%ebx, %edi
	addl	%ebx, %eax
/APP
 # 8515 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	%ebx, %eax
/APP
 # 8515 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %edx
	jl	L92
L91:
	leal	1(%edi,%esi), %edx
	jmp	L534
	.p2align 4,,10
	.p2align 3
L565:
	addl	$1, %ecx
	movl	%edx, %ebx
	leal	1(%edx,%ecx,2), %edx
L534:
	movl	%edx, %eax
/APP
 # 8520 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%ebx, %eax
/APP
 # 8520 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %esi
	jl	L565
	movl	-312(%ebp), %eax
	movw	%cx, _sqrtable_old(%eax,%eax)
	addl	$1, %eax
	movl	%eax, -312(%ebp)
	cmpl	$2048, %eax
	jne	L95
	movl	$2048, %esi
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L96:
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	$0, (%esp)
	movl	$512, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, _reciptable-8192(,%esi,4)
	addl	$1, %esi
	movl	%esi, %eax
	adcl	$0, %edi
	xorb	$16, %ah
	orl	%edi, %eax
	jne	L96
	movl	$-16384, %edx
	.p2align 4
	.p2align 3
L97:
	movl	%edx, %eax
/APP
 # 8664 "source/build/src/engine.cpp" 1
	movl %eax, (_fpuasm); fildl (_fpuasm); addl %eax, %eax; fstps (_fpuasm); sbbl %ebx, %ebx; movl (_fpuasm), %eax; movl %eax, %ecx; andl $0x007ff000, %eax; shrl $10, %eax; subl $0x3f800000, %ecx; shrl $23, %ecx; movl _reciptable(%eax), %eax; sarl %cl, %eax; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _sloptable+65536(,%edx,4)
	addl	$1, %edx
	cmpl	$16384, %edx
	jne	L97
	xorl	%eax, %eax
	movl	$1, %ebx
	movw	%ax, _sintable
	.p2align 4
	.p2align 3
L98:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebx, %xmm0
	mulss	LC26, %xmm0
	movss	%xmm0, (%esp)
	call	_sinf
	movss	LC27, %xmm0
	fstps	-312(%ebp)
	mulss	-312(%ebp), %xmm0
	addss	LC28, %xmm0
	cvttss2sil	%xmm0, %eax
	movw	%ax, _sintable(%ebx,%ebx)
	addl	$1, %ebx
	cmpl	$513, %ebx
	jne	L98
	movl	$_sintable, %ebx
	movl	$_sintable+1022, %eax
	movl	$_sintable+1026, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L99:
	movzwl	(%eax), %ecx
	addl	$2, %edx
	movw	%cx, -2(%edx)
	movl	%eax, %ecx
	subl	$2, %eax
	cmpl	%eax, %ebx
	jne	L99
	addl	$2046, %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L100:
	movzwl	(%eax), %edx
	addl	$2, %eax
	negl	%edx
	movw	%dx, 2046(%eax)
	cmpl	%eax, %ecx
	jne	L100
	movl	$-27653, %eax
	movl	$1, %ebx
	movw	%ax, __ZL8radarang.lto_priv.0
	.p2align 4
	.p2align 3
L101:
	movl	$640, %eax
	xorps	%xmm0, %xmm0
	subl	%ebx, %eax
	cvtsi2ssl	%eax, %xmm0
	subss	LC13, %xmm0
	mulss	LC29, %xmm0
	movss	%xmm0, (%esp)
	call	_atanf
	movss	LC30, %xmm0
	fstps	-312(%ebp)
	mulss	-312(%ebp), %xmm0
	addss	LC28, %xmm0
	cvttss2sil	%xmm0, %eax
	movw	%ax, __ZL8radarang.lto_priv.0(%ebx,%ebx)
	addl	$1, %ebx
	cmpl	$640, %ebx
	jne	L101
	movl	$__ZL8radarang.lto_priv.0, %eax
	movl	$__ZL8radarang.lto_priv.0+2558, %ecx
	movl	$__ZL8radarang.lto_priv.0+1280, %ebx
	.p2align 5
	.p2align 4
	.p2align 3
L102:
	movzwl	(%eax), %edx
	addl	$2, %eax
	subl	$2, %ecx
	negl	%edx
	movw	%dx, 2(%ecx)
	cmpl	%eax, %ebx
	jne	L102
	movss	LC12, %xmm1
	xorl	%ebx, %ebx
	jmp	L106
	.p2align 4,,10
	.p2align 3
L566:
	movl	$5120, %eax
	xorps	%xmm0, %xmm0
	subl	%ebx, %eax
	cvtsi2ssl	%eax, %xmm0
	subss	%xmm7, %xmm0
	mulss	LC33, %xmm0
	movss	%xmm0, (%esp)
	call	_atanf
	fstps	-312(%ebp)
	movss	-312(%ebp), %xmm1
L106:
	mulss	LC30, %xmm1
	xorps	%xmm0, %xmm0
	movss	LC31, %xmm2
	movss	LC13, %xmm7
	mulss	%xmm1, %xmm2
	cmpnless	%xmm1, %xmm0
	movss	LC14, %xmm1
	andps	%xmm0, %xmm1
	andnps	%xmm7, %xmm0
	orps	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, __ZL9qradarang.lto_priv.0(,%ebx,4)
	addl	$1, %ebx
	cmpl	$5120, %ebx
	jne	L566
	movl	$5120, %ebx
	xorl	%edx, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L105:
	movl	__ZL9qradarang.lto_priv.0(,%edx,4), %eax
	addl	$1, %edx
	negl	%eax
	movl	%eax, __ZL9qradarang.lto_priv.0+20476(,%ebx,4)
	subl	$1, %ebx
	jne	L105
	xorl	%ecx, %ecx
	movl	$4096, %edx
	movl	$_sintable, %eax
	call	_Bcrc32
	movl	$1280, %edx
	xorl	%ecx, %ecx
	movl	%eax, %esi
	movl	$__ZL8radarang.lto_priv.0, %eax
	call	_Bcrc32
	movl	%eax, %edx
	cmpl	$-299992390, %esi
	je	L567
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-292995694, %edx
	je	L110
	cmpl	$-1, %eax
	jl	L109
	movl	$LC15, %eax
	movl	$LC16, %edx
L111:
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC34, 12(%esp)
	movl	$8694, 8(%esp)
	movl	$LC35, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L109:
	xorl	%esi, %esi
L113:
	movss	LC36, %xmm5
	xorps	%xmm0, %xmm0
	xorl	%edi, %edi
	cvtsi2ssl	%esi, %xmm0
	addss	LC36, %xmm0
	divss	%xmm0, %xmm5
	movss	%xmm5, -312(%ebp)
	flds	-312(%ebp)
	fstl	-320(%ebp)
	movl	$0, (%esp)
	fstpl	8(%esp)
	movl	$1081073664, 4(%esp)
	call	_pow
	movss	LC37, %xmm6
	fstps	-312(%ebp)
	movss	-312(%ebp), %xmm0
	divss	%xmm0, %xmm6
	movss	%xmm6, -324(%ebp)
	.p2align 4
	.p2align 3
L112:
	xorps	%xmm3, %xmm3
	fldl	-320(%ebp)
	cvtsi2ssl	%edi, %xmm3
	fstpl	8(%esp)
	movss	%xmm3, -312(%ebp)
	flds	-312(%ebp)
	fstpl	(%esp)
	call	_pow
	fstps	-312(%ebp)
	movss	-312(%ebp), %xmm0
	mulss	-324(%ebp), %xmm0
	cvttss2sil	%xmm0, %eax
	movb	%al, _britable(%ebx,%edi)
	addl	$1, %edi
	cmpl	$256, %edi
	jne	L112
	addl	$1, %esi
	addl	$256, %ebx
	cmpl	$16, %esi
	jne	L113
	movb	$1, __ZZL16engineLoadTablesvE12tablesloaded
	jmp	L82
L544:
	call	_enginePreInit
	jmp	L80
L552:
	call	_Bgetsysmemsize
	movl	$1374389535, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	imull	$60, %eax, %eax
	movl	%eax, %ebx
	jmp	L150
L560:
	movl	_g_defModules, %ebx
	movl	_g_defModules+4, %eax
	leal	(%ebx,%eax,4), %edx
	cmpl	%ebx, %edx
	je	L297
L296:
	movl	%edi, -328(%ebp)
	movl	%edx, %edi
L300:
	movl	(%ebx), %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	addl	$4, %ebx
	call	__ZL18defsparser_includePKcPK10scriptfileS0_.lto_priv.0
	cmpl	%ebx, %edi
	jne	L300
	movl	-312(%ebp), %eax
	movl	-328(%ebp), %edi
	testl	%eax, %eax
	je	L297
L299:
	movl	-312(%ebp), %eax
	call	_scriptfile_close
L297:
	movl	__ZL7symbtab.lto_priv.0, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	__ZL14faketilebuffer.lto_priv.0, %eax
	subl	$4, %esp
	movl	$0, __ZL7symbtab.lto_priv.0
	movl	$0, __ZL13symbtablength.lto_priv.0
	movl	$0, __ZL18symbtaballoclength.lto_priv.0
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	_usermaphacks, %eax
	subl	$4, %esp
	movl	$0, __ZL14faketilebuffer.lto_priv.0
	movl	$0, __ZL17faketilebuffersiz.lto_priv.0
	testl	%eax, %eax
	je	L301
	movl	$_compare_usermaphacks, 12(%esp)
	movl	$28, 8(%esp)
	movl	_num_usermaphacks, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_qsort
L301:
	movl	-312(%ebp), %eax
	testl	%eax, %eax
	je	L302
	leal	-272(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	__ZN6loguru18g_stderr_verbosityE, %ebx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	movl	-272(%ebp), %edx
	movl	-268(%ebp), %eax
	cmpl	%ecx, %ebx
	cmovl	%ecx, %ebx
	testl	%ebx, %ebx
	jns	L568
L302:
	movl	_g_defModules, %ebx
	movl	_g_defModules+4, %eax
	leal	(%ebx,%eax,4), %esi
	cmpl	%esi, %ebx
	je	L303
L304:
	movl	(%ebx), %eax
	addl	$4, %ebx
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	cmpl	%ebx, %esi
	jne	L304
	movl	_g_defModules, %esi
L303:
	movl	$0, _g_defModules+4
	movl	$0, _g_defModules+8
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movzbl	_paletteloaded, %eax
	subl	$4, %esp
	movl	$0, _g_defModules
	testb	$1, %al
	je	L569
	testb	$2, %al
	je	L570
	testb	$4, %al
	je	L571
	movl	_palookup, %eax
	movl	$256, %esi
	movl	$0, _globalpal
	movl	%eax, _globalpalwritten
	movl	%eax, (%esp)
	call	_setpalookupaddress
	movl	_blendtable, %eax
	movl	%eax, (%esp)
	call	_fixtransluscence
	movl	_palookup, %ebx
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$0, 4(%esp)
	xorl	%eax, %eax
	movl	$255, (%esp)
	call	_paletteGetClosestColorWithBlacklist
	movl	$255, %ecx
	movl	$255, %edx
	movl	%eax, -312(%ebp)
	movb	%al, _blackcol
	movl	$255, %eax
	movl	$0, 4(%esp)
	movl	$255, (%esp)
	call	_paletteGetClosestColorWithBlacklist
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movb	%al, _whitecol
	movl	$255, %eax
	movl	$0, 4(%esp)
	movl	$255, (%esp)
	call	_paletteGetClosestColorWithBlacklist
	movswl	_numshades, %ecx
	movl	%edi, -320(%ebp)
	movl	%ecx, %edx
	sall	$8, %ecx
	movl	%edx, %edi
	.p2align 4
	.p2align 3
L313:
	movzbl	-256(%ebx,%esi), %eax
	movl	%eax, %edx
	cmpb	$0, _palette(%eax,%eax,2)
	je	L572
L309:
	cmpl	%ecx, %esi
	jnb	L311
	movl	%esi, %eax
	jmp	L312
	.p2align 4
	.p2align 4,,10
	.p2align 3
L573:
	addl	$256, %eax
	cmpl	%ecx, %eax
	jnb	L311
L312:
	cmpb	(%ebx,%eax), %dl
	je	L573
L310:
	addl	$1, %esi
	cmpl	$511, %esi
	jne	L313
L578:
	movl	_realmaxshade, %eax
	movl	%edi, %edx
	movl	-320(%ebp), %edi
	testl	%eax, %eax
	jne	L324
	cmpw	$1, %dx
	jle	L315
	subw	$2, %dx
	je	L315
	movzbl	-312(%ebp), %eax
	movl	%edi, -324(%ebp)
	movl	%ebx, %esi
	leal	-257(%ecx), %edi
	movswl	%dx, %ecx
	leal	_palette(%eax,%eax,2), %eax
	movl	%eax, -320(%ebp)
L322:
	movl	%ecx, -328(%ebp)
	movl	%ecx, %eax
	sall	$8, %eax
L321:
	movzbl	(%esi,%eax), %edx
	movl	%edx, %ecx
	movl	%edx, -312(%ebp)
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	_PaletteIndexFullbright(%edx), %edx
	movzbl	__ZL8pow2char.lto_priv.10(%ecx), %ebx
	andl	%ebx, %edx
	cmpb	%dl, %bl
	je	L318
	movl	-312(%ebp), %edx
	movl	-320(%ebp), %ebx
	movzwl	_palette(%edx,%edx,2), %ecx
	cmpw	%cx, (%ebx)
	je	L574
L319:
	movl	-328(%ebp), %edx
	xorps	%xmm0, %xmm0
	movl	-324(%ebp), %edi
	addl	$1, %edx
	cvtsi2ssl	%edx, %xmm0
L317:
	movl	%edx, _realmaxshade
	movss	%xmm0, _frealmaxshade
	.p2align 4
	.p2align 3
L324:
	cmpb	$0, _editorcolorsdef(%edi)
	jne	L323
	movzbl	_vgapal16(,%edi,4), %ecx
	movzbl	_vgapal16+1(,%edi,4), %edx
	movzbl	_vgapal16+2(,%edi,4), %eax
	movl	$_PaletteIndexFullbright, 4(%esp)
	movl	$254, (%esp)
	call	_paletteGetClosestColorWithBlacklist
	movb	%al, _editorcolors(%edi)
L323:
	addl	$1, %edi
	cmpl	$256, %edi
	jne	L324
	movl	$1, %ebx
	jmp	L325
	.p2align 4,,10
	.p2align 3
L577:
	movl	_palookup, %edx
	cmpl	%edx, %esi
	je	L327
	movswl	_numshades, %eax
	movl	%esi, 4(%esp)
	movl	%edx, (%esp)
	sall	$8, %eax
	movl	%eax, 8(%esp)
	call	_memcmp
	testl	%eax, %eax
	je	L575
L327:
	addl	$1, %ebx
	cmpl	$256, %ebx
	je	L576
L325:
	movl	_palookup(,%ebx,4), %esi
	testl	%esi, %esi
	jne	L577
L326:
	cmpb	$0, _paletteloaded
	je	L327
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%ebx, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
	jmp	L327
L110:
	cmpl	$-1, %eax
	jl	L109
	movl	$LC17, %eax
	movl	$LC18, %edx
	jmp	L111
	.p2align 4,,10
	.p2align 3
L311:
	leal	-256(%esi), %eax
	movl	%esi, %edx
	addl	$1, %esi
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.10(%edx), %edx
	orb	%dl, _PaletteIndexFullbright(%eax)
	cmpl	$511, %esi
	jne	L313
	jmp	L578
L574:
	movzbl	_palette+2(%edx,%edx,2), %ecx
	cmpb	%cl, 2(%ebx)
	jne	L319
L318:
	addl	$1, %eax
	cmpl	%edi, %eax
	jb	L321
	movl	-328(%ebp), %ecx
	subl	$256, %edi
	subl	$1, %ecx
	jne	L322
	movl	-324(%ebp), %edi
L315:
	movss	LC21, %xmm0
	movl	$1, %edx
	jmp	L317
	.p2align 4,,10
	.p2align 3
L572:
	cmpb	$0, _palette+1(%eax,%eax,2)
	jne	L309
	cmpb	$0, _palette+2(%eax,%eax,2)
	jne	L309
	jmp	L310
L575:
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, _palookup(,%ebx,4)
	jmp	L326
L163:
	movl	$256, %eax
	call	__Z13handle_memerri
L117:
	movl	%edi, %eax
	call	__Z13handle_memerri
L567:
	cmpl	$-292995694, %eax
	je	L109
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L109
	movl	$LC19, %eax
	movl	$LC18, %edx
	jmp	L111
L549:
	movl	$2, _MovesPerPacket
	testb	%dl, %dl
	jne	L140
	jmp	L139
L559:
	movl	$-1, -304(%ebp)
	movl	$LC55, %eax
	call	_scriptfile_fromfile
	movl	%eax, %esi
	testl	%eax, %eax
	je	L180
	movl	$1, %edx
	movl	$LC56, %eax
	xorl	%ebx, %ebx
	call	_scriptfile_addsymbolvalue
	movl	$2, %edx
	movl	$LC57, %eax
	call	_scriptfile_addsymbolvalue
	movl	$3, %edx
	movl	$LC58, %eax
	call	_scriptfile_addsymbolvalue
	movl	$4, %edx
	movl	$LC59, %eax
	call	_scriptfile_addsymbolvalue
	movl	$5, %edx
	movl	$LC60, %eax
	call	_scriptfile_addsymbolvalue
	movl	$6, %edx
	movl	$LC61, %eax
	call	_scriptfile_addsymbolvalue
	movl	$7, %edx
	movl	$LC62, %eax
	call	_scriptfile_addsymbolvalue
	movl	$8, %edx
	movl	$LC63, %eax
	call	_scriptfile_addsymbolvalue
	movl	$9, %edx
	movl	$LC64, %eax
	call	_scriptfile_addsymbolvalue
	movl	$10, %edx
	movl	$LC65, %eax
	call	_scriptfile_addsymbolvalue
	movl	$11, %edx
	movl	$LC66, %eax
	call	_scriptfile_addsymbolvalue
L182:
	addl	$1, %ebx
	leal	(%ebx,%ebx,2), %eax
	movl	%ebx, %edx
	movl	__ZL9weaponmap-12(,%eax,4), %eax
	call	_scriptfile_addsymbolvalue
	cmpl	$14, %ebx
	jne	L182
	movl	%edi, -324(%ebp)
L183:
	movl	%esi, %eax
	call	_scriptfile_gettoken
	movl	%eax, %edi
	testl	%eax, %eax
	je	L579
	movl	$__ZL9cm_tokens, %ebx
	.p2align 4
	.p2align 3
L195:
	movl	(%ebx), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L580
	addl	$8, %ebx
	movl	$__ZL9cm_tokens+96, %eax
	cmpl	%ebx, %eax
	jne	L195
L185:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L183
	movl	8(%esi), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC70, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$982, 8(%esp)
	movl	$LC68, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L183
L580:
	cmpl	$16, 4(%ebx)
	ja	L185
	movl	4(%ebx), %eax
	jmp	*L187(,%eax,4)
	.section .rdata,"dr"
	.align 4
L187:
	.long	L194
	.long	L193
	.long	L185
	.long	L185
	.long	L185
	.long	L185
	.long	L185
	.long	L185
	.long	L185
	.long	L192
	.long	L185
	.long	L191
	.long	L190
	.long	L189
	.long	L188
	.long	L185
	.long	L186
	.text
L186:
	leal	-272(%ebp), %edx
	movl	%esi, %eax
	movl	$0, -300(%ebp)
	movl	$0, -296(%ebp)
	movl	$-1, -292(%ebp)
	movl	$-1, -288(%ebp)
	movl	$-1, -284(%ebp)
	movl	$-1, -280(%ebp)
	movl	$-1, -276(%ebp)
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L183
	leal	-308(%ebp), %edx
	movl	%esi, %eax
	movl	8(%esi), %ebx
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L183
	movl	-272(%ebp), %eax
	movl	-308(%ebp), %edi
	subl	$1, %eax
	cmpl	$13, %eax
	jbe	L581
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L582
L272:
	movl	%edi, 12(%esi)
	jmp	L183
L188:
	leal	-280(%ebp), %edx
	movl	%esi, %eax
	movl	$0, -276(%ebp)
	movl	$-1, -272(%ebp)
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L183
	leal	-308(%ebp), %edx
	movl	%esi, %eax
	movl	8(%esi), %edi
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L183
	movl	-280(%ebp), %eax
	leal	-1(%eax), %ebx
	movl	-308(%ebp), %eax
	movl	%eax, -312(%ebp)
	cmpl	$10, %ebx
	jbe	L583
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L584
L258:
	movl	-312(%ebp), %eax
	movl	%eax, 12(%esi)
	jmp	L183
L189:
	leal	-308(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getbraces
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L183
	movl	-308(%ebp), %edi
L537:
	cmpl	%edi, 12(%esi)
	jnb	L183
L585:
	movl	%esi, %eax
	call	_scriptfile_gettoken
	testl	%eax, %eax
	je	L541
	cmpl	$8, %ebx
	je	L537
	movl	%eax, (%esp)
	movl	%eax, -328(%ebp)
	call	_strlen
	movl	%eax, -312(%ebp)
	addl	$1, %eax
	movl	%eax, -320(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L267
	movl	-328(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%eax, -320(%ebp)
	call	_strcpy
	movl	-320(%ebp), %ecx
	movl	-312(%ebp), %eax
	movb	$0, (%ecx,%eax)
	movl	%ecx, _KeyDoorMessage(,%ebx,4)
	addl	$1, %ebx
	cmpl	%edi, 12(%esi)
	jb	L585
	jmp	L183
	.p2align 4,,10
	.p2align 3
L190:
	leal	-308(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getbraces
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L183
	movl	-308(%ebp), %edi
L536:
	cmpl	%edi, 12(%esi)
	jnb	L183
L586:
	movl	%esi, %eax
	call	_scriptfile_gettoken
	testl	%eax, %eax
	je	L541
	cmpl	$8, %ebx
	je	L536
	movl	%eax, (%esp)
	movl	%eax, -328(%ebp)
	call	_strlen
	movl	%eax, -312(%ebp)
	addl	$1, %eax
	movl	%eax, -320(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L267
	movl	-328(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%eax, -320(%ebp)
	call	_strcpy
	movl	-320(%ebp), %ecx
	movl	-312(%ebp), %eax
	movb	$0, (%ecx,%eax)
	movl	%ecx, _KeyMsg(,%ebx,4)
	addl	$1, %ebx
	cmpl	%edi, 12(%esi)
	jb	L586
	jmp	L183
	.p2align 4,,10
	.p2align 3
L191:
	leal	-308(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getbraces
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L183
	movl	-308(%ebp), %edi
L535:
	cmpl	%edi, 12(%esi)
	jnb	L183
L587:
	movl	%esi, %eax
	call	_scriptfile_gettoken
	testl	%eax, %eax
	je	L541
	cmpl	$16, %ebx
	je	L535
	movl	%eax, (%esp)
	movl	%eax, -328(%ebp)
	call	_strlen
	movl	%eax, -312(%ebp)
	addl	$1, %eax
	movl	%eax, -320(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L267
	movl	-328(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%eax, -320(%ebp)
	call	_strcpy
	movl	-320(%ebp), %ecx
	movl	-312(%ebp), %eax
	movb	$0, (%ecx,%eax)
	movl	%ecx, _ReadFortune(,%ebx,4)
	addl	$1, %ebx
	cmpl	%edi, 12(%esi)
	jb	L587
	jmp	L183
	.p2align 4,,10
	.p2align 3
L192:
	leal	-304(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L183
	movl	8(%esi), %eax
	leal	-308(%ebp), %edx
	movl	%eax, -312(%ebp)
	movl	%esi, %eax
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L183
	movl	-304(%ebp), %eax
	movl	-308(%ebp), %edi
	leal	-1(%eax), %ebx
	movl	%ebx, -304(%ebp)
	cmpl	$3, %ebx
	jbe	L241
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L272
	movl	-312(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%ebx, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC72, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$755, 8(%esp)
	movl	$LC68, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L272
	.p2align 4,,10
	.p2align 3
L193:
	leal	-304(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L183
	movl	8(%esi), %eax
	leal	-308(%ebp), %edx
	movl	%eax, -312(%ebp)
	movl	%esi, %eax
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L183
	movl	-304(%ebp), %eax
	movl	-308(%ebp), %ebx
	leal	-1(%eax), %edi
	movl	%edi, -304(%ebp)
	cmpl	$1, %edi
	jbe	L231
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L588
L223:
	movl	%ebx, 12(%esi)
	jmp	L183
L194:
	leal	-304(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L183
	leal	-308(%ebp), %edx
	movl	%esi, %eax
	movl	8(%esi), %ebx
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L183
	movl	-304(%ebp), %edi
	movl	-308(%ebp), %edx
	leal	-1(%edi), %eax
	movl	%edx, -312(%ebp)
	cmpl	$28, %eax
	jbe	L589
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L258
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	$29, 28(%esp)
	movl	%edi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC67, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$611, 8(%esp)
	movl	$LC68, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L258
	.p2align 4,,10
	.p2align 3
L151:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L156:
	movl	$262144, %eax
	call	__Z13handle_memerri
L576:
	movb	$1, _DemoModeMenuInit
	cmpb	$0, _UserMapName
	je	L590
	movl	$_UserMapName, %eax
	call	__Z9LoadLevelPKc
	cmpb	$0, _PreCaching
	jne	L332
L329:
	call	__Z10DoTheCachev
	movl	_upscalefactor, %edx
	movzbl	_ud_setup+8, %eax
	movl	%edx, 4(%esp)
	movl	_ud_setup+20, %edx
	movl	%edx, (%esp)
	movl	_ud_setup+16, %ecx
	movl	_ud_setup+12, %edx
	call	_videoSetGameMode
	cmpl	$-1, %eax
	je	L591
L331:
	movl	_xdim, %ebx
	movl	$1717986919, %eax
	movl	_ydim, %ecx
	sall	$16, %ebx
	sall	$16, %ecx
	imull	%ebx
	movl	%ebx, _f_xdim
	sarl	$31, %ebx
	movl	%ecx, _f_ydim
	movl	%edx, %eax
	sarl	$7, %eax
	subl	%ebx, %eax
	movzbl	_gs+13, %ebx
	movl	%eax, _x_aspect_mul
	movl	$1374389535, %eax
	imull	%ecx
	sarl	$31, %ecx
	movl	%edx, %eax
	movl	$_palette_data, %edx
	sarl	$6, %eax
	subl	%ecx, %eax
	movl	%eax, _y_aspect_mul
	xorl	%eax, %eax
	call	_paletteSetColorTable
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movzbl	%bl, %eax
	call	_videoSetPalette
	cmpb	$0, _DisableSound
	je	L592
L338:
	movl	$19961112, _enginecompatibilitymode
	jmp	L79
L551:
	movb	$1, _QuitFlag
L79:
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
L550:
	.cfi_restore_state
	call	*__imp__WSACleanup@0
	jmp	L143
L554:
	movl	$LC48, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC48, (%eax)
	jmp	L155
L553:
	call	__Z8OSD_Initv
	jmp	L154
L267:
	movl	-320(%ebp), %eax
	call	__Z13handle_memerri
L568:
	subl	-320(%ebp), %edx
	movl	$1000, %ecx
	movl	$1000000000, 8(%esp)
	imull	$1000, %edx, %ebx
	movl	$0, 12(%esp)
	imull	%ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	$1000, %ecx
	addl	%eax, %ebx
	movl	-324(%ebp), %eax
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	imull	%ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	%esi, 16(%esp)
	subl	%eax, %ebx
	movl	$LC79, 12(%esp)
	movl	%ebx, 20(%esp)
	movl	$1005, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L302
L571:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	$LC82, _engineerrstr
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L593
L306:
	call	__ZL19SW_FatalEngineErrorv
	.p2align 4,,10
	.p2align 3
L584:
	movl	%edi, %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	$11, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC75, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$857, 8(%esp)
	movl	$LC68, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L258
L579:
	movl	%esi, %eax
	movl	-324(%ebp), %edi
	call	_scriptfile_close
	movl	__ZL7symbtab.lto_priv.0, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, __ZL7symbtab.lto_priv.0
	movl	$0, __ZL13symbtablength.lto_priv.0
	movl	$0, __ZL18symbtaballoclength.lto_priv.0
	jmp	L180
L582:
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	$14, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC76, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$909, 8(%esp)
	movl	$LC68, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L272
L581:
	movl	%eax, %ebx
	cmpl	%edi, 12(%esi)
	jnb	L271
L270:
	movl	%esi, %eax
	call	_scriptfile_gettoken
	testl	%eax, %eax
	je	L530
	cmpl	%edi, %eax
	je	L530
	movl	%edi, -312(%ebp)
	movl	%ebx, %edi
	movl	$__ZL17cm_weapons_tokens, %ebx
	movl	%esi, -320(%ebp)
	movl	%eax, %esi
L283:
	movl	(%ebx), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L594
	addl	$8, %ebx
	movl	$__ZL17cm_weapons_tokens+72, %eax
	cmpl	%ebx, %eax
	jne	L283
	movl	%edi, %ebx
	movl	-320(%ebp), %esi
	movl	-312(%ebp), %edi
L274:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L595
L284:
	cmpl	%edi, 12(%esi)
	jb	L270
L530:
	movl	%ebx, %eax
L271:
	leal	(%eax,%eax,2), %eax
	movl	__ZL9weaponmap+4(,%eax,4), %ebx
	movl	__ZL9weaponmap+8(,%eax,4), %eax
	movl	%eax, -312(%ebp)
	testb	$1, %al
	je	L285
	movl	-288(%ebp), %eax
	testl	%eax, %eax
	js	L286
	movl	%ebx, %edx
	sall	$5, %edx
	movw	%ax, _DamageData+4(%edx)
L286:
	movl	-284(%ebp), %eax
	testl	%eax, %eax
	js	L285
	movl	%ebx, %edx
	sall	$5, %edx
	movw	%ax, _DamageData+6(%edx)
L285:
	testb	$2, -312(%ebp)
	je	L287
	movl	-292(%ebp), %eax
	testl	%eax, %eax
	js	L288
	movl	%ebx, %edx
	sall	$5, %edx
	movw	%ax, _DamageData+12(%edx)
L288:
	movl	-300(%ebp), %edi
	testl	%edi, %edi
	je	L289
	movl	__ZL16customweaponname(,%ebx,4), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	%edi, (%esp)
	call	_strlen
	leal	1(%eax), %edx
	movl	%eax, -320(%ebp)
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -328(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L292
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, -328(%ebp)
	call	_strcpy
	movl	-328(%ebp), %ecx
	movl	-320(%ebp), %eax
	movb	$0, (%ecx,%eax)
	movl	%ebx, %eax
	sall	$5, %eax
	movl	%ecx, __ZL16customweaponname(,%ebx,4)
	movl	%ecx, _DamageData+20(%eax)
L289:
	movl	-276(%ebp), %eax
	testl	%eax, %eax
	js	L287
	movl	%ebx, %edx
	sall	$5, %edx
	movw	%ax, _DamageData+28(%edx)
L287:
	testb	$4, -312(%ebp)
	je	L183
	movl	-296(%ebp), %eax
	movl	%eax, -312(%ebp)
	testl	%eax, %eax
	je	L291
	leal	14(%ebx), %edi
	movl	__ZL16customweaponname(,%edi,4), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-312(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	call	_strlen
	leal	1(%eax), %edx
	movl	%eax, -320(%ebp)
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -328(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L292
	movl	-312(%ebp), %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -312(%ebp)
	call	_strcpy
	movl	-312(%ebp), %ecx
	movl	-320(%ebp), %eax
	movb	$0, (%ecx,%eax)
	movl	%ebx, %eax
	sall	$5, %eax
	movl	%ecx, __ZL16customweaponname(,%edi,4)
	movl	%ecx, _DamageData+24(%eax)
L291:
	movl	-280(%ebp), %eax
	testl	%eax, %eax
	js	L183
	sall	$5, %ebx
	movw	%ax, _DamageData+30(%ebx)
	jmp	L183
	.p2align 4,,10
	.p2align 3
L594:
	movl	%ebx, %edx
	movl	-320(%ebp), %esi
	movl	%edi, %ebx
	movl	-312(%ebp), %edi
	cmpl	$20, 4(%edx)
	ja	L274
	movl	4(%edx), %eax
	jmp	*L276(,%eax,4)
	.section .rdata,"dr"
	.align 4
L276:
	.long	L274
	.long	L274
	.long	L282
	.long	L274
	.long	L274
	.long	L274
	.long	L274
	.long	L274
	.long	L274
	.long	L274
	.long	L274
	.long	L274
	.long	L274
	.long	L274
	.long	L274
	.long	L281
	.long	L280
	.long	L279
	.long	L278
	.long	L277
	.long	L275
	.text
L595:
	movl	8(%esi), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC70, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$944, 8(%esp)
	movl	$LC68, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L284
L275:
	leal	-284(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getnumber
	jmp	L284
L277:
	leal	-288(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getnumber
	jmp	L284
L278:
	leal	-292(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getnumber
	jmp	L284
L279:
	leal	-296(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getstring
	jmp	L284
L280:
	leal	-276(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getnumber
	jmp	L284
L281:
	leal	-280(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getnumber
	jmp	L284
L282:
	leal	-300(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getstring
	jmp	L284
L292:
	movl	-328(%ebp), %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L583:
	cmpl	%eax, 12(%esi)
	jnb	L257
L256:
	movl	%esi, %eax
	call	_scriptfile_gettoken
	testl	%eax, %eax
	je	L259
	cmpl	-312(%ebp), %eax
	je	L259
	movl	%esi, -320(%ebp)
	movl	$__ZL19cm_inventory_tokens, %edi
	movl	%ebx, %esi
	movl	%eax, %ebx
L263:
	movl	(%edi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L596
	addl	$8, %edi
	movl	$__ZL19cm_inventory_tokens+32, %eax
	cmpl	%edi, %eax
	jne	L263
	movl	%esi, %ebx
	movl	-320(%ebp), %esi
L264:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L597
L266:
	movl	-312(%ebp), %eax
	cmpl	%eax, 12(%esi)
	jb	L256
L259:
	movl	-276(%ebp), %edi
	testl	%edi, %edi
	je	L257
	movl	__ZL19custominventoryname(,%ebx,4), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	%edi, (%esp)
	call	_strlen
	movl	%eax, -312(%ebp)
	addl	$1, %eax
	movl	%eax, -320(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L267
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, -320(%ebp)
	call	_strcpy
	movl	-320(%ebp), %ecx
	movl	-312(%ebp), %eax
	movl	%ecx, __ZL19custominventoryname(,%ebx,4)
	movb	$0, (%ecx,%eax)
	movl	%ecx, _InventoryDecls(,%ebx,8)
L257:
	movl	-272(%ebp), %eax
	testl	%eax, %eax
	js	L183
	movl	%eax, _InventoryDecls+4(,%ebx,8)
	jmp	L183
	.p2align 4,,10
	.p2align 3
L596:
	movl	4(%edi), %eax
	movl	%esi, %ebx
	movl	-320(%ebp), %esi
	cmpl	$2, %eax
	je	L261
	cmpl	$15, %eax
	jne	L264
	leal	-272(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getnumber
	jmp	L266
L261:
	leal	-276(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getstring
	jmp	L266
L597:
	movl	8(%esi), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC70, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$877, 8(%esp)
	movl	$LC68, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L266
L593:
	movl	$LC82, 16(%esp)
L542:
	movl	$LC4, 12(%esp)
	movl	$9146, 8(%esp)
	movl	$LC35, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L306
L541:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L183
	movl	12(%esi), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC73, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$47, 8(%esp)
	movl	$LC74, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L183
L570:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	$LC81, _engineerrstr
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L306
	movl	$LC81, 16(%esp)
	jmp	L542
L569:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	$LC80, _engineerrstr
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L306
	movl	$LC80, 16(%esp)
	jmp	L542
	.p2align 4,,10
	.p2align 3
L592:
	movl	_FXToggle, %edx
	testl	%edx, %edx
	jne	L339
	movb	$0, _gs+26
L340:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	_MV_GlobalVolume, %xmm0
	mulss	LC88, %xmm0
	mulss	LC37, %xmm0
	movss	%xmm0, (%esp)
	call	_lrintf
	movl	%eax, _gs+8
	movl	$_voc, %eax
L347:
	movb	$0, 41(%eax)
	addl	$88, %eax
	movb	$0, -3(%eax)
	cmpl	$_voc+27544, %eax
	jne	L347
	movl	_MusicToggle, %eax
	movl	$__Z13SoundCallBacki, __ZL15MV_CallBackFunc.lto_priv.0
	testl	%eax, %eax
	jne	L348
	movb	$0, _gs+27
	jmp	L338
L591:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L333
	movl	_ud_setup+8, %edi
	movl	$LC23, %eax
	movl	$LC22, %edx
	testl	%edi, %edi
	cmovne	%edx, %eax
	movl	%eax, 28(%esp)
	movl	_ud_setup+20, %eax
	movl	%eax, 24(%esp)
	movl	_ud_setup+16, %eax
	movl	%eax, 20(%esp)
	movl	_ud_setup+12, %eax
	movl	$LC84, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$785, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L333:
	movl	_upscalefactor, %eax
	movl	$480, %ecx
	movl	$640, %edx
	movups	LC85, %xmm0
	movups	%xmm0, _ud_setup+8
	movl	%eax, 4(%esp)
	xorl	%eax, %eax
	movl	$8, (%esp)
	call	_videoSetGameMode
	cmpl	$-1, %eax
	jne	L331
	movl	__ZL6mysock.lto_priv.0, %eax
	cmpl	$-1, %eax
	je	L335
	movl	%eax, (%esp)
	call	*__imp__closesocket@4
	subl	$4, %esp
L335:
	movl	_wsainitialized, %esi
	testl	%esi, %esi
	jne	L598
L336:
	movl	__ZL6pakmem.lto_priv.0, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, __ZL6pakmem.lto_priv.0
	movl	$0, _keypresscallback
	call	__Z17CONFIG_WriteSetupv
	call	__Z12RTS_Shutdownv
	movl	_FXToggle, %ebx
	testl	%ebx, %ebx
	je	L337
	cmpb	$0, _FxInitialized
	je	L337
	call	__Z13SoundShutdownv.part.0
L337:
	movl	_MusicToggle, %ecx
	testl	%ecx, %ecx
	je	L146
	cmpb	$0, _MusicInitialized
	je	L146
	call	__Z13MusicShutdownv.part.0
	jmp	L146
L598:
	call	*__imp__WSACleanup@0
	jmp	L336
	.p2align 4,,10
	.p2align 3
L590:
	movl	$LC83, %eax
	call	__Z9LoadLevelPKc
	cmpb	$0, _PreCaching
	je	L329
L332:
	call	__Z13SetupPreCachev.part.0
	jmp	L329
L339:
	movl	$0, (%esp)
	movl	_MixRate, %ecx
	movl	_NumChannels, %edx
	movl	_NumVoices, %eax
	call	_FX_Init
	testl	%eax, %eax
	jne	L599
	movl	_gs+8, %eax
	movb	$1, _FxInitialized
	call	_MV_SetVolume
	jmp	L340
L348:
	call	__Z12MusicStartupv.part.0
	jmp	L338
L599:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L340
	movl	_FX_ErrorCode, %eax
	movl	$-1, %edx
L342:
	cmpl	$-3, %edx
	jbe	L346
	testl	%eax, %eax
	je	L356
	jle	L600
	cmpl	$2, %eax
	jne	L346
	movl	$-1, %eax
	call	_MV_ErrorString
L343:
	movl	%eax, 16(%esp)
	movl	$LC86, 12(%esp)
	movl	$1216, 8(%esp)
	movl	$LC87, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L340
	.p2align 4,,10
	.p2align 3
L601:
	movl	4(%edi), %eax
	movl	%esi, %ebx
	movl	-312(%ebp), %esi
	cmpl	$2, %eax
	je	L225
	cmpl	$8, %eax
	jne	L228
	leal	-272(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getstring
	testl	%eax, %eax
	jne	L231
	movl	-304(%ebp), %eax
	movl	$40, 8(%esp)
	movl	-272(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	(%eax,%eax,4), %edx
	leal	_EpisodeSubtitles(%eax,%edx,8), %edi
	movl	%edi, (%esp)
	call	_strncpy
	movb	$0, 40(%edi)
L231:
	cmpl	%ebx, 12(%esi)
	jnb	L183
	movl	%esi, %eax
	call	_scriptfile_gettoken
	testl	%eax, %eax
	je	L183
	cmpl	%ebx, %eax
	je	L183
	movl	%esi, -312(%ebp)
	movl	$__ZL17cm_episode_tokens, %edi
	movl	%ebx, %esi
	movl	%eax, %ebx
L227:
	movl	(%edi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L601
	addl	$8, %edi
	cmpl	$__ZL17cm_episode_tokens+32, %edi
	jne	L227
	movl	%esi, %ebx
	movl	-312(%ebp), %esi
L228:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L231
	movl	8(%esi), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC70, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$736, 8(%esp)
	movl	$LC68, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L231
L603:
	movl	-312(%ebp), %esi
	cmpl	$2, 4(%ebx)
	jne	L238
	movl	%esi, %eax
	call	_scriptfile_gettoken
	testl	%eax, %eax
	je	L602
	movl	%eax, 4(%esp)
	movl	$24, 8(%esp)
	imull	$26, -304(%ebp), %ebx
	leal	_SkillNames+1(%ebx), %eax
	movl	%eax, (%esp)
	call	_strncpy
	movb	$0, _SkillNames+25(%ebx)
L241:
	cmpl	%edi, 12(%esi)
	jnb	L183
	movl	%esi, %eax
	call	_scriptfile_gettoken
	testl	%eax, %eax
	je	L183
	cmpl	%edi, %eax
	je	L183
	movl	%esi, -312(%ebp)
	movl	$__ZL15cm_skill_tokens, %ebx
	movl	%eax, %esi
L239:
	movl	(%ebx), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L603
	addl	$8, %ebx
	movl	$__ZL15cm_skill_tokens+24, %eax
	cmpl	%ebx, %eax
	jne	L239
	movl	-312(%ebp), %esi
L238:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L241
	movl	8(%esi), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC70, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$778, 8(%esp)
	movl	$LC68, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L241
L588:
	movl	-312(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%edi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC71, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$704, 8(%esp)
	movl	$LC68, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L223
L225:
	leal	-272(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getstring
	testl	%eax, %eax
	jne	L231
	movl	$24, 8(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, 4(%esp)
	imull	$26, -304(%ebp), %edi
	leal	_EpisodeNames+1(%edi), %eax
	movl	%eax, (%esp)
	call	_strncpy
	movb	$0, _EpisodeNames+25(%edi)
	jmp	L231
L602:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L241
	movl	12(%esi), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC73, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$47, 8(%esp)
	movl	$LC74, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L241
L600:
	movl	%eax, %edx
	jmp	L342
	.p2align 4,,10
	.p2align 3
L589:
	cmpl	%edx, 12(%esi)
	jnb	L183
L198:
	movl	%esi, %eax
	call	_scriptfile_gettoken
	movl	%eax, %edi
	testl	%eax, %eax
	je	L183
	cmpl	-312(%ebp), %eax
	je	L183
	movl	$__ZL13cm_map_tokens, %ebx
L209:
	movl	(%ebx), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L604
	addl	$8, %ebx
	movl	$__ZL13cm_map_tokens+112, %eax
	cmpl	%ebx, %eax
	jne	L209
L201:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L605
L212:
	movl	-312(%ebp), %eax
	cmpl	%eax, 12(%esi)
	jb	L198
	jmp	L183
	.p2align 4,,10
	.p2align 3
L604:
	cmpl	$7, 4(%ebx)
	ja	L201
	movl	4(%ebx), %eax
	jmp	*L203(,%eax,4)
	.section .rdata,"dr"
	.align 4
L203:
	.long	L201
	.long	L201
	.long	L208
	.long	L207
	.long	L206
	.long	L205
	.long	L204
	.long	L202
	.text
L605:
	movl	8(%esi), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC70, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$685, 8(%esp)
	movl	$LC68, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L212
L202:
	leal	-276(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L212
	movl	-276(%ebp), %ecx
	movl	$-2004318071, %eax
	movl	$LC69, 8(%esp)
	movl	$10, 4(%esp)
	imull	%ecx
	leal	(%edx,%ecx), %eax
	movl	%ecx, %edx
	sarl	$31, %edx
	sarl	$5, %eax
	subl	%edx, %eax
	imull	$60, %eax, %edx
	movl	%eax, 12(%esp)
	leal	-272(%ebp), %eax
	movl	%eax, (%esp)
	subl	%edx, %ecx
	movl	%ecx, 16(%esp)
	call	*__imp___snprintf
	leal	-272(%ebp), %eax
	movl	-304(%ebp), %ebx
	movl	%eax, (%esp)
	call	_strlen
	leal	1(%eax), %edx
	movl	%eax, %edi
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -320(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L267
	leal	-272(%ebp), %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -320(%ebp)
	call	_strcpy
	movl	-320(%ebp), %ecx
	leal	(%ebx,%ebx,4), %eax
	movb	$0, (%ecx,%edi)
	movl	%ecx, __ZL10custommaps+16(,%eax,4)
	movl	-304(%ebp), %eax
	leal	(%eax,%eax,4), %eax
	movl	__ZL10custommaps+16(,%eax,4), %edx
	movl	%edx, _LevelInfo+16(,%eax,4)
	jmp	L212
L204:
	leal	-276(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L212
	movl	-276(%ebp), %ecx
	movl	$-2004318071, %eax
	movl	$LC69, 8(%esp)
	movl	$10, 4(%esp)
	imull	%ecx
	leal	(%edx,%ecx), %eax
	movl	%ecx, %edx
	sarl	$31, %edx
	sarl	$5, %eax
	subl	%edx, %eax
	imull	$60, %eax, %edx
	movl	%eax, 12(%esp)
	leal	-272(%ebp), %eax
	movl	%eax, (%esp)
	subl	%edx, %ecx
	movl	%ecx, 16(%esp)
	call	*__imp___snprintf
	leal	-272(%ebp), %eax
	movl	-304(%ebp), %ebx
	movl	%eax, (%esp)
	call	_strlen
	leal	1(%eax), %edx
	movl	%eax, %edi
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -320(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L267
	leal	-272(%ebp), %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -320(%ebp)
	call	_strcpy
	movl	-320(%ebp), %ecx
	leal	(%ebx,%ebx,4), %eax
	movb	$0, (%ecx,%edi)
	movl	%ecx, __ZL10custommaps+12(,%eax,4)
	movl	-304(%ebp), %eax
	leal	(%eax,%eax,4), %eax
	movl	__ZL10custommaps+12(,%eax,4), %edx
	movl	%edx, _LevelInfo+12(,%eax,4)
	jmp	L212
L205:
	leal	-272(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getnumber
	jmp	L212
L206:
	leal	-272(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getstring
	testl	%eax, %eax
	jne	L212
	movl	-272(%ebp), %edx
	movl	-304(%ebp), %ebx
	movl	%edx, (%esp)
	movl	%edx, -328(%ebp)
	call	_strlen
	movl	%eax, %edi
	leal	1(%eax), %eax
	movl	%eax, -320(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L267
	movl	-328(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%eax, -320(%ebp)
	call	_strcpy
	movl	-320(%ebp), %ecx
	leal	(%ebx,%ebx,4), %eax
	movb	$0, (%ecx,%edi)
	movl	%ecx, __ZL10custommaps+4(,%eax,4)
	movl	-304(%ebp), %eax
	leal	(%eax,%eax,4), %eax
	movl	__ZL10custommaps+4(,%eax,4), %edx
	movl	%edx, _LevelInfo+4(,%eax,4)
	jmp	L212
L207:
	leal	-272(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getstring
	testl	%eax, %eax
	jne	L212
	movl	-272(%ebp), %edx
	movl	-304(%ebp), %ebx
	movl	%edx, (%esp)
	movl	%edx, -328(%ebp)
	call	_strlen
	movl	%eax, %edi
	leal	1(%eax), %eax
	movl	%eax, -320(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L267
	movl	-328(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%eax, -320(%ebp)
	call	_strcpy
	movl	-320(%ebp), %ecx
	leal	(%ebx,%ebx,4), %eax
	movb	$0, (%ecx,%edi)
	movl	%ecx, __ZL10custommaps(,%eax,4)
	movl	-304(%ebp), %eax
	leal	(%eax,%eax,4), %eax
	movl	__ZL10custommaps(,%eax,4), %edx
	movl	%edx, _LevelInfo(,%eax,4)
	jmp	L212
L208:
	leal	-272(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getstring
	testl	%eax, %eax
	jne	L212
	movl	-272(%ebp), %edx
	movl	-304(%ebp), %ebx
	movl	%edx, (%esp)
	movl	%edx, -328(%ebp)
	call	_strlen
	movl	%eax, %edi
	leal	1(%eax), %eax
	movl	%eax, -320(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L267
	movl	-328(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%eax, -320(%ebp)
	call	_strcpy
	movl	-320(%ebp), %ecx
	leal	(%ebx,%ebx,4), %eax
	movb	$0, (%ecx,%edi)
	movl	%ecx, __ZL10custommaps+8(,%eax,4)
	movl	-304(%ebp), %eax
	leal	(%eax,%eax,4), %eax
	movl	__ZL10custommaps+8(,%eax,4), %edx
	movl	%edx, _LevelInfo+8(,%eax,4)
	jmp	L212
L356:
	movl	$LC24, %eax
	jmp	L343
L346:
	movl	$LC25, %eax
	jmp	L343
	.cfi_endproc
LFE13:
	.p2align 4
	.globl	__Z19DrawMenuLevelScreenv
	.def	__Z19DrawMenuLevelScreenv;	.scl	2;	.type	32;	.endef
__Z19DrawMenuLevelScreenv:
LFB105:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	movl	$0, __ZL8permtail.lto_priv.0
	movl	$0, __ZL8permhead.lto_priv.0
	call	_videoClearViewableArea
	movl	_xdim, %eax
	movl	_ydim, %edx
	subl	$1, %eax
	js	L606
	subl	$1, %edx
	js	L606
	movl	%edx, 32(%esp)
	movl	$65536, %ecx
	xorl	%edx, %edx
	movl	%eax, 28(%esp)
	xorl	%eax, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$90, 16(%esp)
	movl	$0, 12(%esp)
	movl	$20, 8(%esp)
	movl	$2324, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L606:
	addl	$36, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE105:
	.def	__Z19DrawLoadLevelScreenv;	.scl	3;	.type	32;	.endef
	.set	__Z19DrawLoadLevelScreenv,__Z19DrawMenuLevelScreenv
	.section .rdata,"dr"
	.align 4
LC94:
	.ascii "Did not find first point of Track Number %d, x %d, y %d\0"
LC95:
	.ascii "source/sw/src/track.cpp\0"
	.align 4
LC96:
	.ascii "MAXMIRRORS reached! Skipping mirror wall[%d]\0"
LC97:
	.ascii "source/sw/src/jsector.cpp\0"
	.align 4
LC98:
	.ascii "Could not find the camera view sprite for match %d (Map Coordinates: x = %d, y = %d)\0"
	.align 4
LC99:
	.ascii "Did not find drawtotile for camera number %d (wall[%d].hitag == %d, Map Coordinates: x = %d, y = %d)\0"
	.align 4
LC100:
	.ascii "Sprite %d (%d, %d) placed on track %d with no points!\0"
	.text
	.p2align 4
	.globl	__Z9InitLevelv
	.def	__Z9InitLevelv;	.scl	2;	.type	32;	.endef
__Z9InitLevelv:
LFB109:
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
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	$-1, %ebx
	subl	$104, %esp
	call	__Z17Terminate3DSoundsv
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movw	%ax, _wait_active_check_offset
	movl	_myconnectindex, %eax
	movl	$1, _automapping
	movw	%ax, _screenpeek
	movl	_gNet+4, %eax
	movl	$0, _ChopTics
	movl	$3, _dimensionmode
	movl	$768, _zoom
	movb	$24, _PlayerGravity
	movl	$128000, _PlaxFloorGlobZadjust
	movl	$128000, _PlaxCeilGlobZadjust
	movb	$0, _FinishedLevel
	movw	%dx, _AnimCnt
	movb	$0, _left_foot
	movw	%cx, _short_numinterpolations
	movl	$0, _numinterpolations
	movl	%eax, _gNet+8
	movb	$0, _serpwasseen
	movb	$0, _sumowasseen
	movb	$0, _zillawasseen
	movl	$-1, _BossSpriteNum
	movw	%bx, _BossSpriteNum+4
	movl	$0, _FlagCaptureRedCount
	movl	$0, _FlagCaptureBlueCount
	movl	$0, _FlagCaptureWinner
	movb	$1, _PedanticMode
	movb	$0, _DemoMDRActive
	movl	$0, _DemoMDRFeatures
	cmpb	$0, _DemoMode
	je	L983
L610:
	cmpb	$0, _LoadGameOutsideMoveLoop
	je	L984
L609:
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
L984:
	.cfi_restore_state
	xorl	%eax, %eax
	movl	$0, _PlayClock
	movw	%ax, _TotalKillable
	xorl	%eax, %eax
	movl	$0, _totalsynctics
	movl	$0, _totalclock
	movl	$0, _totalclock+8
	movl	$0, _totalclock+12
	movl	$0, _ototalclock
	movl	$17, _randomseed
	movb	$2, _MoveSkip8
	movb	$0, _MoveSkip2
	movb	$1, _MoveSkip4
	movl	$0, _MoveThingsCount
	movw	%ax, _Bunny_Count
	movb	$0, _FinishAnim
	cmpb	$0, _DemoMode
	jne	L985
	movswl	_Level, %eax
	testw	%ax, %ax
	js	L986
	movzbl	_SW_GameFlags, %edx
	andl	$1, %edx
	cmpb	$1, %dl
	sbbl	%edx, %edx
	andl	$25, %edx
	addl	$4, %edx
	cmpl	%edx, %eax
	jle	L617
	movl	$1, %esi
	movw	%si, _Level
L617:
	movzbl	_NewGame, %esi
	movl	%esi, %eax
	testb	%al, %al
	je	L619
	movb	$0, _DemoMode
L619:
	cmpb	$0, _UserMapName
	je	L620
	movl	$_UserMapName, 4(%esp)
	xorl	%ebx, %ebx
	movl	$_LevelName, (%esp)
	call	_strcpy
	movl	$_UserMapName, %eax
	movw	%bx, _Level
	call	__Z13FindLevelInfoPcPs.constprop.0
	movzwl	_Level, %ebx
	testw	%bx, %bx
	jle	L615
	movswl	%bx, %eax
	leal	(%eax,%eax,4), %edi
	sall	$2, %edi
	movl	_LevelInfo+4(%edi), %eax
	movl	$_LevelSong, (%esp)
	movl	%eax, 4(%esp)
	call	_strcpy
	movl	_LevelInfo(%edi), %eax
	movl	$_LevelName, (%esp)
	movl	%eax, 4(%esp)
	call	_strcpy
	movb	$0, _UserMapName
L615:
	movl	%esi, %eax
	movw	%bx, _PlayingLevel
	xorl	%esi, %esi
	movl	$_Player+22988, %ebx
	testb	%al, %al
	jne	L624
	call	__Z19DrawLoadLevelScreenv
	cmpb	$0, _DemoMode
	je	L627
L990:
	movl	$1330464068, _ds
	movb	$0, _ds+4
L628:
	leal	-20(%ebp), %ecx
	leal	-24(%ebp), %edx
	movl	$_ds, %eax
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	-24(%ebp), %eax
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
	cmpb	$0, _UserMapName
	je	L629
	movl	$_UserMapName, 4(%esp)
	movl	$_ds, (%esp)
	call	_strcpy
L630:
	leal	-20(%ebp), %ecx
	leal	-24(%ebp), %edx
	movl	$_ds, %eax
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	-24(%ebp), %eax
	movl	$320, %edx
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	movl	$_ds, %ecx
	subl	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	movl	$180, %edx
	sarl	%eax
	cwtl
	call	__Z14MNU_DrawStringssPKcss
	call	_videoNextPage
	movzbl	_DemoMode, %eax
	orb	_DemoInitOnce, %al
	je	L987
L631:
	movl	$_LevelName, %eax
	call	__Z9LoadLevelPKc
	movl	$_LevelName, 4(%esp)
	movl	$_CacheLastLevel, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L632
	cmpb	$0, _PreCaching
	jne	L988
L633:
	movl	_sector, %edx
	movzwl	38(%edx), %eax
	cmpw	$-1, %ax
	je	L634
	movswl	%ax, %ecx
	addl	$1, _sectorchanged
	movl	%ecx, _g_visibility
	xorl	%ecx, %ecx
	movw	%cx, 38(%edx)
L635:
	movw	%ax, _NormalVisibility
	movl	$6553600, %eax
	movl	$_Player, %esi
	movl	%eax, _Player+288
	movl	%eax, _Player+292
	movzbl	_SW_GameFlags, %eax
	andl	$1, %eax
	cmpb	$1, %al
	sbbl	%ebx, %ebx
	andl	$96496, %ebx
	addl	$_Player+96496, %ebx
	jmp	L636
	.p2align 4,,10
	.p2align 3
L637:
	xorl	%eax, %eax
	xorl	%edi, %edi
	movb	$0, 23303(%esi)
	movw	%ax, 23298(%esi)
	leal	23304(%esi), %eax
	movw	%di, 23300(%esi)
	movl	$0, 296(%esi)
	movl	$768, 8(%esp)
	movl	$_palette_data, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	leal	22988(%esi), %eax
	addl	$24124, %esi
	movl	%eax, -1136(%esi)
	movl	%eax, -1132(%esi)
L636:
	cmpl	%ebx, %esi
	jnb	L989
	movl	_Player, %eax
	movlps	LC92, %xmm1
	movl	%eax, 12(%esi)
	movl	%eax, (%esi)
	movl	_Player+4, %eax
	movl	%eax, 16(%esi)
	movl	%eax, 4(%esi)
	movl	_Player+8, %eax
	movl	%eax, 20(%esi)
	movl	%eax, 8(%esi)
	movl	_Player+300, %eax
	movl	%eax, 28(%esi)
	movl	%eax, 300(%esi)
	movl	%eax, 308(%esi)
	movl	_Player+288, %eax
	movl	%eax, 24(%esi)
	movl	%eax, 288(%esi)
	movl	%eax, 304(%esi)
	movzwl	_Player+268, %eax
	leal	1(%eax), %edx
	sall	$16, %edx
	orl	%edx, %eax
	movl	%eax, 268(%esi)
	movl	_Player+292, %eax
	movl	$0, 320(%esi)
	movl	%eax, 292(%esi)
	xorl	%eax, %eax
	movw	%ax, 384(%esi)
	xorl	%eax, %eax
	movl	$0, 324(%esi)
	movl	$10, 128(%esi)
	movl	$-65536, 23236(%esi)
	movw	%ax, 23294(%esi)
	movl	$0, 23008(%esi)
	movl	$__Z16DoPlayerBeginRunP12PLAYERstruct, 22964(%esi)
	movl	$-1, 22976(%esi)
	movlps	%xmm1, 140(%esi)
	movl	$0, 23240(%esi)
	movl	$0, 23244(%esi)
	movl	$0, 23248(%esi)
	movl	$0, 23252(%esi)
	cmpb	$0, _NewGame
	je	L637
	movl	$0, 23202(%esi)
	movl	$0, 23206(%esi)
	movl	$0, 23210(%esi)
	movl	$0, 23214(%esi)
	movl	$0, 23218(%esi)
	movb	$0, 23222(%esi)
	jmp	L637
L983:
	call	__Z8StopSongv.part.0
	jmp	L610
L626:
	movl	-28(%ebx), %edx
	leal	-22988(%ebx), %eax
	movl	1132(%ebx), %edi
	addl	$1, %esi
	movl	%edx, -28(%ebp)
	movl	$24124, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-28(%ebp), %edx
	movl	%edi, 1132(%ebx)
	movl	%ebx, (%ebx)
	movl	%edx, -28(%ebx)
	movl	%ebx, 4(%ebx)
	addl	$24124, %ebx
L624:
	movzbl	_SW_GameFlags, %eax
	andl	$1, %eax
	cmpb	$1, %al
	sbbl	%eax, %eax
	andl	$4, %eax
	addl	$4, %eax
	cmpl	%eax, %esi
	jl	L626
	movl	$2336, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_puser, (%esp)
	call	_memset
	call	__Z19DrawLoadLevelScreenv
	cmpb	$0, _DemoMode
	jne	L990
L627:
	movl	$1163152965, _ds
	movl	$1196312914, _ds+4
	movb	$0, _ds+8
	jmp	L628
L986:
	xorl	%edi, %edi
	movw	%di, _Level
	jmp	L617
L989:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$-1, _StarQueue
	movw	%ax, _StarQueueHead
	xorl	%eax, %eax
	movw	%ax, _HoleQueueHead
	xorl	%eax, %eax
	movw	%dx, _GenericQueueHead
	movw	%cx, _LoWangsQueueHead
	movl	$-1, _StarQueue+4
	movl	$-1, _StarQueue+8
	movl	$-1, _StarQueue+12
	movl	$-1, _StarQueue+16
	movl	$-1, _StarQueue+20
	movl	$-1, _StarQueue+24
	movl	$-1, _StarQueue+28
	movl	$-1, _StarQueue+32
	movl	$-1, _StarQueue+36
	movl	$-1, _StarQueue+40
	movl	$-1, _StarQueue+44
	movl	$-1, _StarQueue+48
	movl	$-1, _StarQueue+52
	movl	$-1, _StarQueue+56
	movl	$-1, _StarQueue+60
	movw	%ax, _WallBloodQueueHead
	xorl	%eax, %eax
	movw	%ax, _FloorBloodQueueHead
	xorl	%eax, %eax
L639:
	movl	$-1, _HoleQueue(%eax)
	addl	$16, %eax
	movl	$-1, _HoleQueue-12(%eax)
	movl	$-1, _HoleQueue-8(%eax)
	movl	$-1, _HoleQueue-4(%eax)
	cmpl	$128, %eax
	jb	L639
	movl	$-1, _WallBloodQueue
	movl	$-1, _WallBloodQueue+4
	movl	$-1, _WallBloodQueue+8
	movl	$-1, _WallBloodQueue+12
	movl	$-1, _WallBloodQueue+16
	movl	$-1, _WallBloodQueue+20
	movl	$-1, _WallBloodQueue+24
	movl	$-1, _WallBloodQueue+28
	movl	$-1, _WallBloodQueue+32
	movl	$-1, _WallBloodQueue+36
	movl	$-1, _WallBloodQueue+40
	movl	$-1, _WallBloodQueue+44
	movl	$-1, _WallBloodQueue+48
	movl	$-1, _WallBloodQueue+52
	movl	$-1, _WallBloodQueue+56
	movl	$-1, _WallBloodQueue+60
	movl	$-1, _FloorBloodQueue
	movl	$-1, _FloorBloodQueue+4
	movl	$-1, _FloorBloodQueue+8
	movl	$-1, _FloorBloodQueue+12
	movl	$-1, _FloorBloodQueue+16
	movl	$-1, _FloorBloodQueue+20
	movl	$-1, _FloorBloodQueue+24
	movl	$-1, _FloorBloodQueue+28
	movl	$-1, _FloorBloodQueue+32
	movl	$-1, _FloorBloodQueue+36
	movl	$-1, _FloorBloodQueue+40
	movl	$-1, _FloorBloodQueue+44
	movl	$-1, _FloorBloodQueue+48
	movl	$-1, _FloorBloodQueue+52
	movl	$-1, _FloorBloodQueue+56
	movl	$-1, _FloorBloodQueue+60
	movl	$-1, _GenericQueue
	movl	$-1, _GenericQueue+4
	movl	$-1, _GenericQueue+8
	movl	$-1, _GenericQueue+12
	movl	$-1, _GenericQueue+16
	movl	$-1, _GenericQueue+20
	movl	$-1, _GenericQueue+24
	movl	$-1, _GenericQueue+28
	movl	$-1, _GenericQueue+32
	movl	$-1, _GenericQueue+36
	movl	$-1, _GenericQueue+40
	movl	$-1, _GenericQueue+44
	movl	$-1, _GenericQueue+48
	movl	$-1, _GenericQueue+52
	movl	$-1, _GenericQueue+56
	movl	$-1, _GenericQueue+60
	movl	$-1, _LoWangsQueue
	movl	$-1, _LoWangsQueue+4
	movl	$-1, _LoWangsQueue+8
	movl	$-1, _LoWangsQueue+12
	movl	$-1, _LoWangsQueue+16
	movl	$-1, _LoWangsQueue+20
	movl	$-1, _LoWangsQueue+24
	movl	$-1, _LoWangsQueue+28
	call	__Z19PreMapCombineFloorsv
	movzwl	_headspritestat, %ebx
	cmpw	$-1, %bx
	jne	L641
	jmp	L642
	.p2align 6
	.p2align 4,,10
	.p2align 3
L645:
	cmpw	$-1, %bx
	je	L642
L641:
	movswl	%bx, %eax
	movzwl	_nextspritestat(%eax,%eax), %ebx
	movl	%eax, %ecx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	$2307, 14(%eax)
	jne	L645
	movzwl	40(%eax), %edx
	cmpw	$42, %dx
	je	L643
	cmpw	$48, %dx
	jne	L645
	movzwl	38(%eax), %edx
	movl	%ecx, %eax
	addw	$610, %dx
	movswl	%dx, %edx
	call	__Z18change_sprite_statss
	cmpw	$-1, %bx
	jne	L641
L642:
	movl	$__ZZ19InitMultiPlayerInfovE13MultiStatList, %ebx
	movl	$__ZZ19InitMultiPlayerInfovE13MultiStatList+4, %esi
	movl	$-1171354717, %edi
L646:
	cmpw	$0, _gNet+12
	je	L648
	movswl	(%ebx), %eax
	cmpw	$0, _headspritestat(%eax,%eax)
	jns	L649
L648:
	movl	_Player+300, %ecx
	movswl	(%ebx), %eax
	movl	$0, 20(%esp)
	movl	%ecx, %edx
	sarl	$31, %edx
	xorw	%dx, %dx
	leal	32768(%ecx,%edx), %ecx
	testl	%ecx, %ecx
	leal	65535(%ecx), %edx
	cmovns	%ecx, %edx
	xorl	%ecx, %ecx
	sarl	$16, %edx
	movl	%edx, 16(%esp)
	movl	_Player+8, %edx
	movl	%edx, 12(%esp)
	movl	_Player+4, %edx
	movl	%edx, 8(%esp)
	movl	_Player, %edx
	movl	%edx, 4(%esp)
	movswl	_Player+268, %edx
	movl	%edx, (%esp)
	movl	$2307, %edx
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	cwtl
	movl	_User(,%eax,4), %edx
	testl	%edx, %edx
	je	L651
	movl	%eax, -28(%ebp)
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-28(%ebp), %eax
	subl	$4, %esp
	movl	$0, _User(,%eax,4)
L651:
	imull	$44, %eax, %eax
	movl	_sprite, %ecx
	addl	%eax, %ecx
	addl	$14, %eax
	mull	%edi
	movl	$2307, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 14(%ecx)
L649:
	addl	$2, %ebx
	cmpl	%ebx, %esi
	jne	L646
	movl	_connecthead, %edx
	movb	$0, _SpawnPositionUsed+8
	movl	$0, _SpawnPositionUsed
	movl	$0, _SpawnPositionUsed+4
	movl	%edx, %eax
	cmpw	$-1, %dx
	jne	L657
	jmp	L652
	.p2align 4,,10
	.p2align 3
L992:
	jg	L654
	testw	%dx, %dx
	je	L653
	cmpw	$1, %dx
	jne	L656
L655:
	movl	$-1, _Player+22996
	movl	$-1, _Player+23000
	movl	$-1, 22996(%eax)
	movl	$-1, 23000(%eax)
	call	__Z19PlayerSpawnPositionP12PLAYERstruct
L656:
	movl	_connectpoint2(,%ebx,4), %edx
	movl	%edx, %eax
	cmpw	$-1, %dx
	je	L991
L657:
	movswl	%ax, %ebx
	movzwl	_gNet+12, %edx
	imull	$24124, %ebx, %eax
	addl	$_Player, %eax
	cmpw	$3, %dx
	jne	L992
L653:
	call	__Z19PlayerSpawnPositionP12PLAYERstruct
	movl	_connectpoint2(,%ebx,4), %edx
	movl	%edx, %eax
	cmpw	$-1, %dx
	jne	L657
L991:
	movl	_connecthead, %edx
	movswl	%dx, %eax
	cmpw	$-1, %dx
	jne	L672
	jmp	L652
	.p2align 4,,10
	.p2align 3
L996:
	movswl	348(%edi), %eax
	imull	$44, %eax, %ecx
	movl	_User(,%eax,4), %esi
	xorl	%eax, %eax
	leal	(%edx,%ecx), %ebx
	call	__Z15COVER_SetReverbi
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movlps	LC93, %xmm2
	movw	%dx, 24114(%edi)
	movb	$13, 273(%esi)
	movw	%ax, 23256(%edi)
	movl	$30, %eax
	movlps	%xmm2, 23008(%edi)
	movw	%ax, 23042(%edi)
	movl	$1, %eax
	movb	$13, 23116(%edi)
	movl	$0, 23112(%edi)
	movl	$2, 24092(%edi)
	movb	$0, 24097(%edi)
	movw	%cx, 24104(%edi)
	movl	$0, 24100(%edi)
	movb	$0, 24106(%edi)
	movb	$0, 24111(%edi)
	movl	$1966110, 23016(%edi)
	movsbl	273(%esi), %ecx
	sall	%cl, %eax
	orl	$8193, %eax
	movl	%eax, 23012(%edi)
	movsbl	273(%esi), %edx
	andl	$-532481, 22968(%edi)
	btsl	%edx, %eax
	movl	$500, %edx
	orl	$2, %eax
	movl	%eax, 23012(%edi)
	movl	$100, %eax
	movw	%ax, 23260(%edi)
	movl	%edi, %eax
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	xorl	%eax, %eax
	movw	%ax, 23258(%edi)
	cmpb	$0, _Prediction
	jne	L662
	xorl	%edx, %edx
	movl	%edi, %eax
	call	__Z17PlayerUpdateArmorP12PLAYERstructs.part.0
L662:
	movl	$-1, %eax
	movw	%ax, 23238(%edi)
	movswl	_screenpeek, %eax
	imull	$24124, %eax, %eax
	cmpl	%eax, -36(%ebp)
	je	L993
L663:
	movl	$0, 23300(%edi)
	xorl	%eax, %eax
	movw	%ax, 23234(%edi)
	movl	%edi, %eax
	call	__Z21PlayerUpdatePanelInfoP12PLAYERstruct
	movl	$-1171354717, %eax
	leal	12(%ebx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-3, 12(%ebx)
	movl	$0, 22980(%edi)
	andl	$-129, 22968(%edi)
	movl	$0, 22984(%edi)
	movl	$0, 100(%edi)
	movl	$0, 104(%edi)
	movl	$0, 200(%edi)
	movl	$0, 192(%edi)
	movl	$0, 196(%edi)
	movl	$0, 212(%edi)
	movl	$0, 216(%edi)
	movl	$0, 228(%edi)
	movsbl	273(%esi), %eax
	movl	%edi, (%esp)
	sall	$5, %eax
	call	*_DamageData(%eax)
L666:
	movswl	_screenpeek, %eax
	xorl	%esi, %esi
	movl	$0, 23188(%edi)
	movl	$0, 23192(%edi)
	movl	$0, 23196(%edi)
	imull	$24124, %eax, %eax
	movw	%si, 23200(%edi)
	cmpl	%eax, -36(%ebp)
	je	L994
L669:
	movl	$0, 23300(%edi)
	xorl	%ebx, %ebx
	movl	%edi, %eax
	movw	%bx, 23234(%edi)
	call	__Z21PlayerUpdatePanelInfoP12PLAYERstruct
	movl	-56(%ebp), %eax
	movl	_connectpoint2(,%eax,4), %edx
	movswl	%dx, %eax
	cmpw	$-1, %dx
	je	L652
L672:
	imull	$24124, %eax, %ebx
	movl	%eax, -56(%ebp)
	movl	%ebx, %eax
	leal	_Player(%ebx), %edi
	movl	%ebx, -36(%ebp)
	sarl	$2, %eax
	imull	$-432986257, %eax, %esi
	xorl	%eax, %eax
	call	__Z15COVER_SetReverbi
	xorl	%ecx, %ecx
	movw	%cx, 24114(%edi)
	movl	300(%edi), %ecx
	movl	%esi, -32(%ebp)
	movzwl	-32(%ebp), %eax
	movl	%ecx, %edx
	movl	$0, 20(%esp)
	sarl	$31, %edx
	addl	$21, %eax
	xorw	%dx, %dx
	cwtl
	leal	32768(%ecx,%edx), %ecx
	testl	%ecx, %ecx
	leal	65535(%ecx), %edx
	cmovns	%ecx, %edx
	xorl	%ecx, %ecx
	sarl	$16, %edx
	movl	%edx, 16(%esp)
	movl	8(%edi), %edx
	movl	%edx, 12(%esp)
	movl	4(%edi), %edx
	movl	%edx, 8(%esp)
	movl	_Player(%ebx), %edx
	movl	%edx, 4(%esp)
	movswl	268(%edi), %edx
	movl	%edx, (%esp)
	movl	$4096, %edx
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %esi
	movzwl	-32(%ebp), %ebx
	movw	%ax, 348(%edi)
	cwtl
	imull	$44, %eax, %ecx
	movw	%bx, 360(%edi)
	movl	%eax, -28(%ebp)
	movl	$-1171354717, %eax
	addl	%esi, %ecx
	leal	12(%ecx), %ebx
	movl	%ecx, 352(%edi)
	subl	%esi, %ebx
	mull	%ebx
	movl	$-1171354717, %eax
	movl	%edx, %ebx
	leal	42(%ecx), %edx
	subl	%esi, %edx
	shrl	$5, %ebx
	mull	%edx
	movl	-28(%ebp), %eax
	addl	$1, _spritechanged(,%ebx,4)
	orw	$257, 12(%ecx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$2048, 42(%ecx)
	addl	$1, _spritechanged(,%ebx,4)
	andw	$-3, 12(%ecx)
	movl	_User(,%eax,4), %ebx
	testl	%ebx, %ebx
	je	L995
	movswl	_s_NinjaRun, %eax
	movl	$0, 76(%ebx)
	movl	$_s_NinjaRun, 24(%ebx)
	leal	_picanm(%eax,%eax,4), %eax
	movl	$_s_NinjaRun, 16(%ebx)
	movl	%eax, -48(%ebp)
	movzbl	3(%eax), %eax
	movl	$_s_NinjaRun, -40(%ebp)
	movl	%eax, %edx
	shrb	$6, %dl
	je	L660
	movl	-48(%ebp), %edx
	andl	$63, %eax
	movb	%al, 3(%edx)
	movl	16(%ebx), %eax
	movl	%eax, -40(%ebp)
L660:
	movl	$5, %eax
	movl	%edi, 144(%ebx)
	leal	14(%ecx), %edx
	movw	%ax, 80(%ebx)
	movl	-40(%ebp), %eax
	subl	%esi, %edx
	orl	$16777216, 68(%ebx)
	movl	$_sg_NinjaRun, 20(%ebx)
	movl	$_PlayerNinjaActionSet, 40(%ebx)
	movl	$400, 188(%ebx)
	movzwl	(%eax), %eax
	movw	%ax, -40(%ebp)
	movl	$-1171354717, %eax
	mull	%edx
	movzwl	-40(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ecx), %edx
	movw	%ax, 14(%ecx)
	subl	%esi, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ecx), %edx
	subl	%esi, %edx
	movb	$-60, 16(%ecx)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ecx), %edx
	subl	%esi, %edx
	movb	$64, 18(%ecx)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	%esi, %edx
	movb	$47, 20(%ecx)
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ecx), %edx
	movb	$33, 21(%ecx)
	movswl	360(%edi), %eax
	subl	%esi, %edx
	addl	$16, %eax
	movl	%eax, -40(%ebp)
	movl	$-1171354717, %eax
	mull	%edx
	movzbl	-40(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 17(%ecx)
	movb	%al, 262(%ebx)
	movl	40(%ebx), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	$-1, %edx
	movl	%edi, %eax
	movl	$0, 356(%edi)
	movw	%dx, 350(%edi)
	call	__Z14DoPlayerZrangeP12PLAYERstruct
	movl	_sprite, %edx
	cmpb	$0, _NewGame
	jne	L996
	imull	$292, -32(%ebp), %eax
	movzbl	_puser+273(%eax), %ecx
	movb	%cl, 273(%ebx)
	movzbl	_puser+272(%eax), %ecx
	movb	%cl, 272(%ebx)
	movzwl	_puser+84(%eax), %eax
	movw	%ax, 84(%ebx)
	cmpw	$1, _gNet+12
	je	L997
	movswl	348(%edi), %eax
	imull	$44, %eax, %esi
	movl	_User(,%eax,4), %ebx
	addl	%edx, %esi
	testb	$2, 22970(%edi)
	jne	L998
L668:
	xorl	%eax, %eax
	call	__Z15COVER_SetReverbi
	xorl	%eax, %eax
	movb	$13, 23116(%edi)
	movw	%ax, 24114(%edi)
	xorl	%eax, %eax
	movw	%ax, 23256(%edi)
	xorl	%eax, %eax
	movw	%ax, 23234(%edi)
	movl	%edi, %eax
	movl	$-65536, 23236(%edi)
	movl	$0, 23300(%edi)
	call	__Z21PlayerUpdatePanelInfoP12PLAYERstruct
	leal	12(%esi), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-129, 12(%esi)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-3, 12(%esi)
	movl	$0, 22980(%edi)
	andl	$2147479421, 22968(%edi)
	movl	$0, 22984(%edi)
	movl	$0, 100(%edi)
	movl	$0, 104(%edi)
	movl	$0, 200(%edi)
	movl	$0, 192(%edi)
	movl	$0, 196(%edi)
	movl	$0, 212(%edi)
	movl	$0, 216(%edi)
	movl	$0, 228(%edi)
	movsbl	273(%ebx), %eax
	movl	%edi, (%esp)
	sall	$5, %eax
	call	*_DamageData(%eax)
	jmp	L666
L654:
	cmpw	$4, %dx
	jne	L656
	jmp	L655
L652:
	movl	$0, _PlayClock
	movl	$0, _totalsynctics
	movl	$0, _totalclock
	movl	$0, _totalclock+8
	movl	$0, _totalclock+12
	movl	$0, _ototalclock
	movl	$17, _randomseed
	movb	$2, _MoveSkip8
	movb	$0, _MoveSkip2
	movb	$1, _MoveSkip4
	movl	$0, _MoveThingsCount
	call	__Z11SpriteSetupv
	movzwl	_headspritestat+174, %edi
	cmpw	$-1, %di
	je	L674
	.p2align 4
	.p2align 3
L673:
	movswl	%di, %edx
	movl	_sprite, %eax
	movzwl	_nextspritestat(%edx,%edx), %edi
	imull	$44, %edx, %edx
	movswl	24(%eax,%edx), %edx
	movzwl	_headspritesect(%edx,%edx), %esi
	cmpw	$-1, %si
	je	L676
	movw	%di, -28(%ebp)
	movl	%eax, %ebx
	jmp	L680
	.p2align 6
	.p2align 4,,10
	.p2align 3
L675:
	cmpw	$-1, %si
	je	L971
L999:
	movl	_sprite, %ebx
L680:
	movswl	%si, %edi
	imull	$44, %edi, %eax
	movzwl	_nextspritesect(%edi,%edi), %esi
	addl	%eax, %ebx
	cmpw	$2307, 14(%ebx)
	je	L675
	testb	$48, 12(%ebx)
	jne	L675
	movl	_User(,%edi,4), %ecx
	testl	%ecx, %ecx
	jne	L675
	leal	-20(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	8(%ebx), %eax
	subl	-20(%ebp), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	cmpl	$1024, %eax
	jg	L675
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	$41, %edx
	movl	%eax, -32(%ebp)
	movl	%edi, %eax
	call	__Z18change_sprite_statss
	movl	-32(%ebp), %ecx
	leal	12(%ebx), %edx
	movl	$-1171354717, %eax
	movl	$-33553408, 96(%ecx)
	movl	$__Z13DoActorDebriss, 36(%ecx)
	movl	_sprite, %ecx
	subl	%ecx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	42(%ebx), %edx
	subl	%ecx, %edx
	orw	$16640, 12(%ebx)
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$8192, 42(%ebx)
	cmpw	$-1, %si
	jne	L999
	.p2align 4
	.p2align 3
L971:
	movzwl	-28(%ebp), %edi
L676:
	cmpw	$-1, %di
	jne	L673
L674:
	movzwl	_headspritestat+166, %ebx
	cmpw	$-1, %bx
	jne	L678
	jmp	L679
	.p2align 6
	.p2align 4,,10
	.p2align 3
L683:
	cmpw	$-1, %bx
	je	L679
L678:
	movswl	%bx, %eax
	movzwl	_nextspritestat(%eax,%eax), %ebx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movzwl	42(%eax), %edx
	testb	$64, %dh
	jne	L683
	shrw	$6, %dx
	movswl	38(%eax), %eax
	andl	$1, %edx
	call	__Z15DoLightingMatchss
	cmpw	$-1, %bx
	jne	L678
L679:
	movl	$_Track, %edi
	xorl	%ebx, %ebx
	jmp	L681
	.p2align 4,,10
	.p2align 3
L1001:
	movl	$20, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L685
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	%eax, (%edi)
L686:
	addl	$1, %ebx
	addl	$12, %edi
	cmpl	$100, %ebx
	je	L1000
L681:
	movl	_g_sm_heap, %ecx
	cmpw	$-1, _headspritestat+400(%ebx,%ebx)
	je	L1001
	movl	$10000, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L685
	movl	$10000, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movzwl	_headspritestat+400(%ebx,%ebx), %eax
	movl	_sprite, %ecx
	movl	%esi, (%edi)
	movl	%edi, -28(%ebp)
	movl	%ecx, -32(%ebp)
	movl	%eax, %edx
	movl	%ecx, %edi
	movw	%ax, -36(%ebp)
	jmp	L687
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1002:
	movswl	%dx, %ecx
	imull	$44, %ecx, %eax
	movzwl	_nextspritestat(%ecx,%ecx), %edx
	cmpw	$700, 38(%edi,%eax)
	je	L689
L687:
	cmpw	$-1, %dx
	jne	L1002
	movl	-28(%ebp), %edi
	movswl	-36(%ebp), %eax
	cmpw	$0, 10(%edi)
	je	L1003
L690:
	cmpw	$700, 14(%esi)
	je	L1004
L976:
	movl	%ebx, -64(%ebp)
	movl	%esi, %ebx
L698:
	movswl	10(%edi), %edx
	cmpw	$-1, %ax
	je	L699
	leal	-5(%edx,%edx,4), %edx
	movw	%ax, -56(%ebp)
	leal	(%ebx,%edx,4), %edx
	movl	%edi, -72(%ebp)
	movl	4(%edx), %ecx
	movl	%ebx, -76(%ebp)
	movl	%ecx, -36(%ebp)
	movl	(%edx), %ecx
	movl	%ecx, -40(%ebp)
	.p2align 4
	.p2align 3
L700:
	movl	$-1, %edx
	movl	$999999, -28(%ebp)
	movzwl	-56(%ebp), %ebx
	movw	%dx, -48(%ebp)
	.p2align 4
	.p2align 3
L697:
	movswl	%bx, %esi
	imull	$44, %esi, %edi
	addl	-32(%ebp), %edi
	movzwl	_nextspritestat(%esi,%esi), %ecx
	movl	(%edi), %eax
	subl	-40(%ebp), %eax
	movl	%eax, %edx
	negl	%edx
	cmovs	%eax, %edx
	movl	4(%edi), %eax
	subl	-36(%ebp), %eax
	movl	%eax, %edi
	negl	%edi
	cmovns	%edi, %eax
	cmpl	%edx, %eax
	leal	(%eax,%edx), %edi
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %edi
	cmpl	%edi, -28(%ebp)
	jg	L694
	cmpw	$-1, %cx
	je	L1005
	movl	%ecx, %ebx
	jmp	L697
	.p2align 4,,10
	.p2align 3
L1005:
	cmpw	$-1, -48(%ebp)
	je	L700
	movl	-72(%ebp), %edi
	movl	-76(%ebp), %ebx
	movswl	-48(%ebp), %esi
	jmp	L696
	.p2align 4,,10
	.p2align 3
L694:
	cmpw	$-1, %cx
	je	L1006
	movw	%bx, -48(%ebp)
	movl	%ecx, %ebx
	movl	%edi, -28(%ebp)
	jmp	L697
L699:
	leal	5(%edx,%edx,4), %esi
	movl	-64(%ebp), %ebx
	sall	$2, %esi
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L685
	movl	%esi, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, -28(%ebp)
	call	_memset
	movl	(%edi), %eax
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	_memcpy
	movl	(%edi), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-28(%ebp), %edx
	subl	$4, %esp
	movl	%edx, (%edi)
	jmp	L686
L1006:
	movl	-72(%ebp), %edi
	movl	-76(%ebp), %ebx
L696:
	movl	%edi, %eax
	movl	%esi, %ecx
	movl	%ebx, %edx
	call	__Z13TrackAddPointP5TRACKP11TRACK_POINTs
	movl	_sprite, %eax
	movl	%eax, -32(%ebp)
	movl	-64(%ebp), %eax
	movzwl	_headspritestat+400(%eax,%eax), %eax
	jmp	L698
L689:
	movl	-28(%ebp), %edi
	movl	%esi, %edx
	movl	%edi, %eax
	call	__Z13TrackAddPointP5TRACKP11TRACK_POINTs
	movl	_sprite, %eax
	movl	%eax, -32(%ebp)
	movswl	_headspritestat+400(%ebx,%ebx), %eax
	cmpw	$0, 10(%edi)
	jne	L690
L1003:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-1, %edx
	jl	L691
	imull	$44, %eax, %eax
	movl	-32(%ebp), %ecx
	addl	%ecx, %eax
	movl	4(%eax), %edx
	movl	%edx, 24(%esp)
	movl	(%eax), %eax
	movl	%ebx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$LC94, 12(%esp)
	movl	$636, 8(%esp)
	movl	$LC95, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movzwl	_headspritestat+400(%ebx,%ebx), %eax
L691:
	movswl	%ax, %esi
	testl	%esi, %esi
	js	L686
	.p2align 4
	.p2align 3
L692:
	movswl	%si, %eax
	movswl	_nextspritestat(%esi,%esi), %esi
	call	_deletesprite.isra.0
	testl	%esi, %esi
	jns	L692
	jmp	L686
L685:
	movl	$1, %eax
	call	__Z13handle_memerri
L643:
	movzwl	38(%eax), %edx
	movl	%ecx, %eax
	addw	$600, %dx
	movswl	%dx, %edx
	call	__Z18change_sprite_statss
	jmp	L645
L994:
	cmpl	$2, _rendmode
	jg	L670
	movzbl	_gs+13, %ebx
	movl	$_palette_data, %edx
	xorl	%eax, %eax
	call	_paletteSetColorTable
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movzbl	%bl, %eax
	call	_videoSetPalette
L671:
	leal	23304(%edi), %eax
	movl	$768, 8(%esp)
	movl	$_palette_data, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	jmp	L669
L995:
	movl	16, %eax
	movl	%eax, -40(%ebp)
	jmp	L660
L993:
	cmpl	$2, _rendmode
	jg	L664
	movzbl	_gs+13, %eax
	movl	$_palette_data, %edx
	movb	%al, -28(%ebp)
	xorl	%eax, %eax
	call	_paletteSetColorTable
	movzbl	-28(%ebp), %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	call	_videoSetPalette
L665:
	leal	23304(%edi), %eax
	movl	$768, 8(%esp)
	movl	$_palette_data, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	jmp	L663
L670:
	call	_videoFadePalette.constprop.0
	jmp	L671
L998:
	cmpb	$0, _Prediction
	jne	L668
	movl	%edi, %eax
	call	__Z22DoPlayerStopDiveNoWarpP12PLAYERstruct.part.0
	jmp	L668
L1004:
	movzwl	16(%esi), %ecx
	testw	%cx, %cx
	je	L976
	movl	$1, %edx
	movl	%ebx, -64(%ebp)
	movl	%esi, %ebx
	sall	%cl, %edx
	orl	%edx, 4(%edi)
	jmp	L698
L664:
	call	_videoFadePalette.constprop.0
	jmp	L665
L632:
	movl	$3840, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_gotpic, (%esp)
	call	_memset
	jmp	L633
L629:
	movswl	_Level, %eax
	leal	(%eax,%eax,4), %eax
	movl	_LevelInfo+8(,%eax,4), %eax
	movl	$_ds, (%esp)
	movl	%eax, 4(%esp)
	call	_strcpy
	jmp	L630
L997:
	movl	%edi, %eax
	call	__Z16PlayerDeathResetP12PLAYERstruct
	jmp	L666
L985:
	movl	__ZZ9InitLevelvE10DemoNumber, %ebx
	xorl	%eax, %eax
	movb	$1, _NewGame
	movw	%ax, _Level
	movl	%ebx, %eax
	movb	$0, _DemoInitOnce
	sall	$4, %eax
	movl	$_DemoFileName, (%esp)
	addl	$_DemoName, %eax
	movl	%eax, 4(%esp)
	call	_strcpy
	leal	1(%ebx), %eax
	movl	%eax, %edx
	sall	$4, %edx
	cmpb	$0, _DemoName(%edx)
	movl	$0, %edx
	cmove	%edx, %eax
	movl	%eax, __ZZ9InitLevelvE10DemoNumber
	call	__Z13DemoPlaySetupv
	movl	$_DemoLevelName, 4(%esp)
	movl	$_LevelName, (%esp)
	call	_strcpy
	movl	$_LevelName, %eax
	call	__Z13FindLevelInfoPcPs.constprop.0
	movzwl	_Level, %ebx
	testw	%bx, %bx
	jle	L614
	movswl	%bx, %eax
	leal	(%eax,%eax,4), %esi
	sall	$2, %esi
	movl	_LevelInfo+4(%esi), %eax
	movl	$_LevelSong, (%esp)
	movl	%eax, 4(%esp)
	call	_strcpy
	movl	_LevelInfo(%esi), %eax
	movl	$_LevelName, (%esp)
	movl	%eax, 4(%esp)
	call	_strcpy
	movb	$0, _UserMapName
	movzbl	_NewGame, %esi
	jmp	L615
L620:
	movswl	_Level, %eax
	leal	(%eax,%eax,4), %edi
	movl	%eax, %ebx
	sall	$2, %edi
	movl	_LevelInfo(%edi), %eax
	movl	$_LevelName, (%esp)
	movl	%eax, 4(%esp)
	call	_strcpy
	movl	_LevelInfo+4(%edi), %eax
	movl	$_LevelSong, (%esp)
	movl	%eax, 4(%esp)
	call	_strcpy
	jmp	L615
L634:
	movzwl	_g_visibility, %eax
	jmp	L635
L988:
	call	__Z13SetupPreCachev.part.0
	jmp	L633
L987:
	call	__Z13DemoPlaySetupv
	jmp	L631
L614:
	movl	$_DemoLevelName, 4(%esp)
	xorl	%ebx, %ebx
	movl	$_UserMapName, (%esp)
	call	_strcpy
	xorl	%eax, %eax
	movzbl	_NewGame, %esi
	movw	%ax, _Level
	jmp	L615
L1000:
	movl	$2, %ecx
	movl	$801, %edx
	movl	$501, %eax
	call	__Z14QuickJumpSetupsss
	movl	$3, %ecx
	movl	$802, %edx
	movl	$502, %eax
	call	__Z14QuickJumpSetupsss
	movl	$503, %eax
	movl	$13, %ecx
	movl	$803, %edx
	call	__Z14QuickJumpSetupsss
	movzwl	_headspritestat+1008, %eax
	movw	%ax, -32(%ebp)
	cmpw	$-1, %ax
	je	L702
L701:
	movswl	-32(%ebp), %edi
	xorl	%esi, %esi
	movswl	%di, %eax
	movzwl	_nextspritestat(%eax,%eax), %eax
	movw	%ax, -32(%ebp)
	movl	$_Track+10, %eax
	jmp	L705
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1007:
	addl	$1, %esi
	addl	$12, %eax
	cmpl	$100, %esi
	je	L704
L705:
	cmpw	$0, (%eax)
	jne	L1007
L704:
	leal	(%esi,%esi), %edx
	leal	(%edx,%esi), %eax
	movl	%edx, -28(%ebp)
	movl	_Track(,%eax,4), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$80, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L685
	movl	$0, 64(%eax)
	movl	$0, 68(%eax)
	movl	$0, 72(%eax)
	movl	$0, 76(%eax)
	movl	-28(%ebp), %edx
	xorl	%eax, %eax
L706:
	movl	$0, (%ebx,%eax)
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	$64, %eax
	jb	L706
	addl	%esi, %edx
	leal	_Track(,%edx,4), %eax
	movl	%ebx, _Track(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 8(%eax)
	orl	$4096, 4(%eax)
	movl	%eax, -28(%ebp)
	movl	%edi, %eax
	call	__Z15TrackClonePoints
	movl	%eax, -36(%ebp)
	movl	%edi, %eax
	call	__Z15TrackClonePoints
	movl	_sprite, %esi
	movl	%eax, -40(%ebp)
	imull	$44, %eax, %eax
	leal	(%esi,%eax), %ecx
	movl	$-1171354717, %esi
	addl	$38, %eax
	mull	%esi
	movl	$700, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 38(%ecx)
	leal	40(%ecx), %eax
	subl	_sprite, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 40(%ecx)
	movswl	28(%ecx), %eax
	addl	$1536, %eax
	andl	$2047, %eax
	movsbl	_sintable+1(%eax,%eax), %edx
	movl	%edx, -48(%ebp)
	movl	%ecx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ecx), %eax
	movl	-48(%ebp), %edx
	addl	%edx, (%ecx)
	addl	$1024, %eax
	andl	$2047, %eax
	movsbl	_sintable+1(%eax,%eax), %edx
	leal	4(%ecx), %eax
	subl	_sprite, %eax
	movl	%edx, -48(%ebp)
	mull	%esi
	movl	-28(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	-48(%ebp), %edx
	addl	%edx, 4(%ecx)
	movswl	-40(%ebp), %ecx
	movl	%ebx, %edx
	call	__Z13TrackAddPointP5TRACKP11TRACK_POINTs
	imull	$44, %edi, %eax
	movl	_sprite, %ecx
	addl	%eax, %ecx
	addl	$38, %eax
	mull	%esi
	movl	$804, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movw	%ax, 38(%ecx)
	movl	-28(%ebp), %eax
	movl	%edi, %ecx
	call	__Z13TrackAddPointP5TRACKP11TRACK_POINTs
	imull	$44, -36(%ebp), %ecx
	movl	_sprite, %edx
	addl	%edx, %ecx
	movswl	28(%ecx), %eax
	addl	$512, %eax
	andl	$2047, %eax
	movsbl	_sintable+1(%eax,%eax), %edi
	movl	%ecx, %eax
	subl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ecx), %eax
	addl	%edi, (%ecx)
	movsbl	_sintable+1(%eax,%eax), %edi
	leal	4(%ecx), %eax
	subl	_sprite, %eax
	mull	%esi
	leal	38(%ecx), %eax
	subl	_sprite, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%esi
	movl	$701, %eax
	addl	%edi, 4(%ecx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 38(%ecx)
	leal	40(%ecx), %eax
	subl	_sprite, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movw	%ax, 40(%ecx)
	movswl	-36(%ebp), %ecx
	movl	-28(%ebp), %eax
	call	__Z13TrackAddPointP5TRACKP11TRACK_POINTs
	cmpw	$-1, -32(%ebp)
	jne	L701
L702:
	movzwl	_headspritestat+1012, %eax
	movw	%ax, -28(%ebp)
	cmpw	$-1, %ax
	je	L709
L708:
	movswl	-28(%ebp), %eax
	xorl	%esi, %esi
	movl	%eax, %edx
	movzwl	_nextspritestat(%eax,%eax), %eax
	movw	%ax, -28(%ebp)
	movl	$_Track+10, %eax
	jmp	L712
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1008:
	addl	$1, %esi
	addl	$12, %eax
	cmpl	$100, %esi
	je	L711
L712:
	cmpw	$0, (%eax)
	jne	L1008
L711:
	leal	(%esi,%esi), %edi
	movl	%edx, -32(%ebp)
	leal	(%edi,%esi), %eax
	movl	_Track(,%eax,4), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$80, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L685
	movl	$0, 64(%eax)
	movl	$0, 68(%eax)
	movl	$0, 72(%eax)
	movl	$0, 76(%eax)
	movl	-32(%ebp), %edx
	xorl	%eax, %eax
L713:
	movl	$0, (%ebx,%eax)
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	$64, %eax
	jb	L713
	leal	(%edi,%esi), %eax
	xorl	%ecx, %ecx
	leal	_Track(,%eax,4), %edi
	movl	%ebx, _Track(,%eax,4)
	movswl	%dx, %eax
	movl	%eax, %esi
	movw	%cx, 8(%edi)
	orl	$32, 4(%edi)
	call	__Z15TrackClonePoints
	movl	%esi, -32(%ebp)
	movl	%eax, -36(%ebp)
	movl	%esi, %eax
	movl	$-1171354717, %esi
	call	__Z15TrackClonePoints
	movl	_sprite, %edx
	movl	%eax, -40(%ebp)
	imull	$44, %eax, %eax
	leal	(%edx,%eax), %ecx
	addl	$38, %eax
	mull	%esi
	movl	$700, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 38(%ecx)
	leal	40(%ecx), %eax
	subl	_sprite, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 40(%ecx)
	movswl	28(%ecx), %eax
	addl	$1536, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	movl	%eax, %edx
	sarl	$6, %edx
	movl	%edx, -48(%ebp)
	movl	%ecx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ecx), %eax
	movl	-48(%ebp), %edx
	addl	%edx, (%ecx)
	addl	$1024, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	movl	%eax, %edx
	leal	4(%ecx), %eax
	subl	_sprite, %eax
	sarl	$6, %edx
	movl	%edx, -48(%ebp)
	mull	%esi
	movl	%edi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	-48(%ebp), %edx
	addl	%edx, 4(%ecx)
	movswl	-40(%ebp), %ecx
	movl	%ebx, %edx
	call	__Z13TrackAddPointP5TRACKP11TRACK_POINTs
	imull	$44, -32(%ebp), %eax
	movl	_sprite, %ecx
	addl	%eax, %ecx
	addl	$38, %eax
	mull	%esi
	movl	$792, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movw	%ax, 38(%ecx)
	movl	-32(%ebp), %ecx
	movl	%edi, %eax
	call	__Z13TrackAddPointP5TRACKP11TRACK_POINTs
	imull	$44, -36(%ebp), %ecx
	movl	_sprite, %edx
	addl	%edx, %ecx
	movswl	28(%ecx), %eax
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	sarl	$5, %eax
	movl	%eax, -32(%ebp)
	movl	%ecx, %eax
	subl	%edx, %eax
	mull	%esi
	movl	-32(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	%eax, (%ecx)
	movzwl	28(%ecx), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	sarl	$5, %eax
	movl	%eax, -32(%ebp)
	leal	4(%ecx), %eax
	subl	_sprite, %eax
	mull	%esi
	movl	-32(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	%eax, 4(%ecx)
	leal	38(%ecx), %eax
	subl	_sprite, %eax
	mull	%esi
	movl	$701, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 38(%ecx)
	leal	40(%ecx), %eax
	subl	_sprite, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movw	%ax, 40(%ecx)
	movswl	-36(%ebp), %ecx
	movl	%edi, %eax
	call	__Z13TrackAddPointP5TRACKP11TRACK_POINTs
	cmpw	$-1, -28(%ebp)
	jne	L708
L709:
	movzwl	_headspritestat+1010, %eax
	movw	%ax, -28(%ebp)
	cmpw	$-1, %ax
	je	L716
L715:
	movswl	-28(%ebp), %eax
	xorl	%esi, %esi
	movl	%eax, %edx
	movzwl	_nextspritestat(%eax,%eax), %eax
	movw	%ax, -28(%ebp)
	movl	$_Track+10, %eax
	jmp	L719
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1009:
	addl	$1, %esi
	addl	$12, %eax
	cmpl	$100, %esi
	je	L718
L719:
	cmpw	$0, (%eax)
	jne	L1009
L718:
	leal	(%esi,%esi), %edi
	movl	%edx, -32(%ebp)
	leal	(%edi,%esi), %eax
	movl	_Track(,%eax,4), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$80, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L685
	movl	$0, 64(%eax)
	movl	$0, 68(%eax)
	movl	$0, 72(%eax)
	movl	$0, 76(%eax)
	movl	-32(%ebp), %edx
	xorl	%eax, %eax
L720:
	movl	$0, (%ebx,%eax)
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	$64, %eax
	jb	L720
	leal	(%edi,%esi), %eax
	leal	_Track(,%eax,4), %edi
	movl	%ebx, _Track(,%eax,4)
	xorl	%eax, %eax
	movw	%ax, 8(%edi)
	movswl	%dx, %eax
	movl	%eax, %esi
	orl	$1024, 4(%edi)
	call	__Z15TrackClonePoints
	movl	%esi, -32(%ebp)
	movl	%eax, -36(%ebp)
	movl	%esi, %eax
	movl	$-1171354717, %esi
	call	__Z15TrackClonePoints
	movl	_sprite, %edx
	movl	%eax, -40(%ebp)
	imull	$44, %eax, %eax
	leal	(%edx,%eax), %ecx
	addl	$38, %eax
	mull	%esi
	movl	$700, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 38(%ecx)
	leal	40(%ecx), %eax
	subl	_sprite, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movw	%ax, 40(%ecx)
	movswl	-40(%ebp), %ecx
	movl	%edi, %eax
	call	__Z13TrackAddPointP5TRACKP11TRACK_POINTs
	movl	-32(%ebp), %eax
	call	__Z10KillSprites
	imull	$44, -36(%ebp), %ecx
	movl	_sprite, %edx
	addl	%edx, %ecx
	movswl	28(%ecx), %eax
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	sarl	$4, %eax
	movl	%eax, -32(%ebp)
	movl	%ecx, %eax
	subl	%edx, %eax
	mull	%esi
	movl	-32(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	%eax, (%ecx)
	movswl	28(%ecx), %eax
	movswl	_sintable(%eax,%eax), %eax
	sarl	$4, %eax
	movl	%eax, -32(%ebp)
	leal	4(%ecx), %eax
	subl	_sprite, %eax
	mull	%esi
	movl	-32(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	%eax, 4(%ecx)
	leal	38(%ecx), %eax
	subl	_sprite, %eax
	mull	%esi
	movl	$701, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 38(%ecx)
	leal	40(%ecx), %eax
	subl	_sprite, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movw	%ax, 40(%ecx)
	movswl	-36(%ebp), %ecx
	movl	%edi, %eax
	call	__Z13TrackAddPointP5TRACKP11TRACK_POINTs
	cmpw	$-1, -28(%ebp)
	jne	L715
L716:
	movl	$14, %ecx
	movl	$807, %edx
	movl	$507, %eax
	movl	$_orgsectorfloorlist, -28(%ebp)
	movss	-28(%ebp), %xmm0
	movl	$_orgsectorceilinglist, -28(%ebp)
	movaps	%xmm0, %xmm3
	unpcklps	%xmm0, %xmm3
	movss	-28(%ebp), %xmm0
	movl	$_orgwalloverlist, -28(%ebp)
	movlps	%xmm3, -48(%ebp)
	movaps	%xmm0, %xmm4
	unpcklps	%xmm0, %xmm4
	movss	-28(%ebp), %xmm0
	movl	$_orgwalllist, -28(%ebp)
	movlps	%xmm4, -56(%ebp)
	movaps	%xmm0, %xmm5
	unpcklps	%xmm0, %xmm5
	movss	-28(%ebp), %xmm0
	movlps	%xmm5, -64(%ebp)
	movaps	%xmm0, %xmm6
	unpcklps	%xmm0, %xmm6
	movlps	%xmm6, -72(%ebp)
	call	__Z14QuickJumpSetupsss
	movl	$8, %ecx
	movl	$808, %edx
	movl	$508, %eax
	call	__Z14QuickJumpSetupsss
	movl	$809, %edx
	movl	$509, %eax
	movl	$9, %ecx
	call	__Z14QuickJumpSetupsss
	movl	_connecthead, %edx
	movl	%edx, %eax
	cmpw	$-1, %dx
	je	L722
L723:
	movswl	%ax, %ebx
	imull	$24124, %ebx, %eax
	leal	_Player(%eax), %ecx
	movswl	_Player+348(%eax), %eax
	movl	_User(,%eax,4), %eax
	movsbl	273(%eax), %edx
	movl	%ecx, %eax
	call	__Z18PlayerUpdateWeaponP12PLAYERstructs
	movl	_connectpoint2(,%ebx,4), %edx
	movl	%edx, %eax
	cmpw	$-1, %dx
	jne	L723
L722:
	movl	$1, _automapping
	xorl	%edi, %edi
	call	__Z11SectorSetupv
	movl	$288, 8(%esp)
	movl	$255, 4(%esp)
	movl	$_mirror, (%esp)
	call	_memset
	movl	_ototalclock, %eax
	movl	$_mirror+20, %edx
	movb	$0, _mirrorinview
	movw	%di, _mirrorcnt
	movl	$0, _tilesiz+1360
	movl	%eax, _oscilationclock
	xorl	%eax, %eax
L724:
	movl	$0, _tilesiz+24000(,%eax,4)
	addl	$1, %eax
	addl	$36, %edx
	movb	$0, -36(%edx)
	cmpl	$8, %eax
	jne	L724
	cmpw	$0, _numwalls
	jle	L725
	xorl	%esi, %esi
	movl	$0, -28(%ebp)
	movw	%si, -36(%ebp)
	jmp	L756
L730:
	movswl	_numwalls, %edx
	addl	$1, -28(%ebp)
	movl	%edx, %eax
	cmpl	%edx, -28(%ebp)
	jge	L1010
L756:
	movl	-28(%ebp), %edi
	movl	_wall, %eax
	sall	$5, %edi
	leal	(%eax,%edi), %ecx
	movzwl	12(%ecx), %ebx
	movw	%bx, -40(%ebp)
	testw	%bx, %bx
	js	L730
	cmpw	$340, 18(%ecx)
	jne	L730
	testb	$32, 14(%ecx)
	je	L730
	movswl	%bx, %edx
	movl	_sector, %esi
	leal	(%edx,%edx,4), %edx
	leal	(%esi,%edx,8), %ebx
	movl	%ebx, -32(%ebp)
	testb	$1, 14(%ebx)
	jne	L727
	cmpw	$7, -36(%ebp)
	jg	L1011
	leal	18(%ecx), %edx
	movzwl	-36(%ebp), %ebx
	subl	%eax, %edx
	shrl	$5, %edx
	leal	6000(%ebx), %edi
	movl	$40, %ebx
	addl	$1, _wallchanged(,%edx,4)
	leal	16(%ecx), %edx
	subl	%eax, %edx
	movw	%di, 18(%ecx)
	movl	%edx, %eax
	xorl	%edx, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	-32(%ebp), %eax
	movw	%di, 16(%ecx)
	addl	$16, %eax
	subl	%esi, %eax
	divl	%ebx
	xorl	%edx, %edx
	addl	$1, _sectorchanged(,%eax,4)
	movl	-32(%ebp), %eax
	movw	%di, 16(%eax)
	addl	$24, %eax
	subl	%esi, %eax
	divl	%ebx
	xorl	%edx, %edx
	addl	$1, _sectorchanged(,%eax,4)
	movl	-32(%ebp), %eax
	movw	%di, 24(%eax)
	movl	%eax, %edi
	leal	14(%eax), %eax
	subl	%esi, %eax
	movzwl	-28(%ebp), %esi
	divl	%ebx
	movswl	-36(%ebp), %ebx
	imull	$36, %ebx, %edx
	addl	$1, _sectorchanged(,%eax,4)
	movl	-40(%ebp), %eax
	orw	$1, 14(%edi)
	sall	$16, %eax
	movb	$0, _mirror+20(%edx)
	movw	$0, _mirror+10(%edx)
	orl	%esi, %eax
	movl	%eax, _mirror(%edx)
	cmpw	$306, 26(%ecx)
	je	L1012
L731:
	movswl	_mirrorcnt, %eax
	xorl	%ecx, %ecx
	movl	%eax, %edx
	imull	$36, %eax, %eax
	movl	%ecx, _mirror+24(%eax)
	movl	%ecx, _mirror+32(%eax)
	leal	1(%edx), %eax
	movw	%ax, -36(%ebp)
	movw	%ax, _mirrorcnt
	jmp	L730
L725:
	movlps	-72(%ebp), %xmm7
	movlps	-48(%ebp), %xmm3
	movlps	%xmm7, _orgwalllist
	movlps	-64(%ebp), %xmm7
	movlps	%xmm3, _orgsectorfloorlist
	movlps	%xmm7, _orgwalloverlist
	movlps	-56(%ebp), %xmm7
	movlps	%xmm7, _orgsectorceilinglist
L761:
	cmpw	$0, _numsectors
	jle	L774
	xorl	%ebx, %ebx
L786:
	movl	_sector, %edx
	movswl	%bx, %edi
	leal	(%edi,%edi,4), %eax
	movswl	16(%edx,%eax,8), %ecx
	leal	0(,%eax,8), %esi
	movzwl	_aVoxelArray+2(,%ecx,4), %eax
	cmpw	$6144, %ax
	jg	L1013
L775:
	testw	%ax, %ax
	js	L1014
	movl	_orgsectorceilinglist, %eax
	cmpl	$_orgsectorceilinglist, %eax
	je	L778
L780:
	cmpw	%bx, 8(%eax)
	je	L779
	movl	(%eax), %eax
	cmpl	$_orgsectorceilinglist, %eax
	jne	L780
L778:
	movl	$_orgsectorceilinglist, %eax
	call	__Z11InitOrgTileP13ORG_TILE_LIST
L779:
	movl	_sector, %edx
	movw	%bx, 8(%eax)
	addl	%esi, %edx
	movzwl	16(%edx), %ecx
	movw	%cx, 10(%eax)
L777:
	movswl	24(%edx), %ecx
	movzwl	_aVoxelArray+2(,%ecx,4), %eax
	cmpw	$6144, %ax
	jg	L1015
L781:
	testw	%ax, %ax
	js	L782
	movl	_orgsectorfloorlist, %eax
	cmpl	$_orgsectorfloorlist, %eax
	je	L783
L785:
	cmpw	%bx, 8(%eax)
	je	L784
	movl	(%eax), %eax
	cmpl	$_orgsectorfloorlist, %eax
	jne	L785
L783:
	movl	$_orgsectorfloorlist, %eax
	call	__Z11InitOrgTileP13ORG_TILE_LIST
L784:
	movl	_sector, %edx
	movw	%bx, 8(%eax)
	movzwl	24(%edx,%esi), %edx
	movw	%dx, 10(%eax)
L782:
	addl	$1, %ebx
	cmpw	_numsectors, %bx
	jl	L786
L774:
	call	__Z17JS_ToggleLockoutsv
	movl	$0, -56(%ebp)
	movl	$_SectorObject+180, %edi
L799:
	movl	(%edi), %eax
	movl	%eax, -28(%ebp)
	cmpl	$2147483647, %eax
	je	L787
	xorl	%eax, %eax
	movw	%ax, 3032(%edi)
	movswl	420(%edi), %eax
	cmpw	$-1, %ax
	je	L788
	movl	_wall, %ecx
	movl	_sector, %esi
	xorl	%edx, %edx
	movl	%ecx, -40(%ebp)
	imull	$3014, -56(%ebp), %ecx
	movl	%ecx, -32(%ebp)
L791:
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %eax
	movzwl	(%eax), %ecx
	movzwl	2(%eax), %ebx
	addl	%ecx, %ebx
	leal	-1(%ebx), %eax
	movw	%ax, -36(%ebp)
	cmpw	%ax, %cx
	jg	L789
	movzwl	4(%edi), %eax
	movl	%esi, -64(%ebp)
	movw	%dx, -72(%ebp)
	movzwl	3032(%edi), %ebx
	movw	%ax, -48(%ebp)
L790:
	movswl	%cx, %eax
	movswl	%bx, %edx
	movzwl	-28(%ebp), %esi
	addl	-32(%ebp), %edx
	sall	$5, %eax
	addl	-40(%ebp), %eax
	addl	$1, %ebx
	addl	$1, %ecx
	subw	(%eax), %si
	movw	%si, _SectorObject+800(%edx,%edx)
	movzwl	-48(%ebp), %esi
	subw	4(%eax), %si
	movw	%si, _SectorObject+2000(%edx,%edx)
	movw	%bx, 3032(%edi)
	cmpw	%cx, -36(%ebp)
	jge	L790
	movl	-64(%ebp), %esi
	movzwl	-72(%ebp), %edx
L789:
	movl	-32(%ebp), %ecx
	addl	$1, %edx
	movswl	%dx, %eax
	leal	296(%eax,%ecx), %eax
	movswl	_SectorObject+8(%eax,%eax), %eax
	cmpw	$-1, %ax
	jne	L791
L788:
	movswl	3034(%edi), %eax
	cmpw	$89, %ax
	jbe	L1016
L787:
	addl	$1, -56(%ebp)
	addl	$6028, %edi
	cmpl	$20, -56(%ebp)
	jne	L799
	movzwl	_headspritestat+4, %eax
	movl	$0, -36(%ebp)
	movw	%ax, -28(%ebp)
	cmpw	$-1, %ax
	jne	L800
	jmp	L801
	.p2align 6
	.p2align 4,,10
	.p2align 3
L808:
	cmpw	$-1, -28(%ebp)
	je	L801
L800:
	movswl	-28(%ebp), %eax
	movswl	%ax, %edx
	movzwl	_nextspritestat(%edx,%edx), %ecx
	movw	%cx, -28(%ebp)
	imull	$44, %edx, %ecx
	addl	_sprite, %ecx
	movzwl	38(%ecx), %ecx
	subw	$30000, %cx
	cmpw	$99, %cx
	ja	L808
	movl	_User(,%edx,4), %esi
	movl	140(%esi), %ebx
	movw	%cx, 218(%esi)
	movzwl	%cx, %ecx
	leal	(%ecx,%ecx,2), %ecx
	movzwl	28(%ebx), %edi
	subw	$513, %di
	cmpw	$1023, %di
	sbbl	%edi, %edi
	sall	$2, %ecx
	orl	$1, %edi
	movl	%ecx, -40(%ebp)
	movw	%di, 222(%esi)
	movswl	32(%ebx), %edi
	sall	$8, %edi
	movl	%edi, 224(%esi)
	movl	%edi, 168(%esi)
	movl	$6, %edi
	movw	%di, 172(%esi)
	cmpw	$0, _Track+10(%ecx)
	jle	L803
	movl	$999999, -32(%ebp)
	xorl	%ecx, %ecx
	movl	%edx, -48(%ebp)
	movw	%ax, -56(%ebp)
L805:
	movl	-40(%ebp), %eax
	movl	_Track(%eax), %edx
	movswl	%cx, %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,4), %edi
	movl	%edx, -36(%ebp)
	movl	(%ebx), %edx
	subl	(%edi), %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	4(%ebx), %edx
	subl	4(%edi), %edx
	movl	%edx, %edi
	negl	%edi
	cmovns	%edi, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %edi
	cmovg	%edx, %eax
	movl	%edi, %edx
	sarl	%eax
	subl	%eax, %edx
	cmpl	-32(%ebp), %edx
	jge	L804
	movw	%cx, 220(%esi)
	movl	%edx, -32(%ebp)
L804:
	movl	-40(%ebp), %eax
	addl	$1, %ecx
	cmpw	_Track+10(%eax), %cx
	jl	L805
	movl	-48(%ebp), %edx
	movswl	-56(%ebp), %eax
L803:
	movl	%edx, -32(%ebp)
	call	__Z19NextActorTrackPoints
	movswl	218(%esi), %ecx
	movl	-32(%ebp), %edx
	leal	(%ecx,%ecx,2), %eax
	cmpw	$0, _Track+10(,%eax,4)
	je	L1017
	movswl	220(%esi), %eax
	movl	-36(%ebp), %ecx
	movl	$-1171354717, %esi
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,4), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%ebx), %edx
	subl	(%ebx), %ecx
	call	@getangle@8
	movl	%eax, %ecx
	leal	28(%ebx), %eax
	subl	_sprite, %eax
	mull	%esi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%cx, 28(%ebx)
	jmp	L808
L1015:
	movl	%edi, %eax
	movl	$2, %edx
	movl	%ecx, -28(%ebp)
	call	__Z13JS_PlockErrorss
	movl	-28(%ebp), %ecx
	movzwl	_aVoxelArray+2(,%ecx,4), %eax
	jmp	L781
L1016:
	leal	(%eax,%eax,2), %eax
	movzwl	_Track+10(,%eax,4), %ecx
	movw	%cx, -48(%ebp)
	testw	%cx, %cx
	jle	L792
	movl	_Track(,%eax,4), %eax
	movl	4(%edi), %ecx
	movb	$0, -36(%ebp)
	movl	$999999, -40(%ebp)
	movl	%eax, -64(%ebp)
	movl	%eax, %esi
	movl	%ecx, -32(%ebp)
	xorl	%ecx, %ecx
L794:
	movl	-28(%ebp), %edx
	subl	(%esi), %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	-32(%ebp), %edx
	subl	4(%esi), %edx
	movl	%edx, %ebx
	negl	%ebx
	cmovns	%ebx, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %ebx
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ebx
	cmpl	%ebx, -40(%ebp)
	jle	L793
	movw	%cx, 3036(%edi)
	movl	%ebx, -40(%ebp)
	movb	$1, -36(%ebp)
L793:
	addl	$1, %ecx
	addl	$20, %esi
	cmpw	-48(%ebp), %cx
	jne	L794
	movl	-64(%ebp), %eax
	cmpb	$0, -36(%ebp)
	je	L792
	movzwl	3040(%edi), %edx
	addw	3036(%edi), %dx
	cmpw	%dx, %cx
	jle	L829
	testw	%dx, %dx
	jns	L982
	leal	-1(%ecx), %edx
L982:
	movw	%dx, 3036(%edi)
	movswl	%dx, %edx
	leal	(%edx,%edx,4), %edx
	leal	(%eax,%edx,4), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	-32(%ebp), %edx
	subl	-28(%ebp), %ecx
	call	@getangle@8
	movw	%ax, 3042(%edi)
	movw	%ax, 3370(%edi)
	movw	%ax, 3044(%edi)
	jmp	L787
L792:
	movl	$-1, %eax
	movw	%ax, 3034(%edi)
	jmp	L787
L829:
	xorl	%edx, %edx
	jmp	L982
L1013:
	movl	%edi, %eax
	movl	$3, %edx
	movl	%ecx, -28(%ebp)
	call	__Z13JS_PlockErrorss
	movl	-28(%ebp), %ecx
	movzwl	_aVoxelArray+2(,%ecx,4), %eax
	jmp	L775
L1010:
	movswl	-36(%ebp), %edx
	testw	%dx, %dx
	jle	L757
	movl	_wall, %esi
	leal	(%edx,%edx,8), %edx
	movw	%ax, -40(%ebp)
	movl	$_mirror+2, %ecx
	leal	_mirror+2(,%edx,4), %edx
	movl	_sector, %ebx
	movl	%edx, -32(%ebp)
	leal	16(%esi), %edi
	movl	%esi, -28(%ebp)
L760:
	movswl	(%ecx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%ebx,%eax,8), %edx
	movswl	(%edx), %eax
	movzwl	2(%edx), %esi
	addl	%eax, %esi
	cmpw	%si, %ax
	jge	L758
	movswl	%si, %edx
	sall	$5, %eax
	sall	$5, %edx
	addl	%edi, %eax
	leal	(%edx,%edi), %esi
	movl	%esi, -36(%ebp)
	movl	-28(%ebp), %esi
L759:
	movl	%eax, %edx
	subl	%esi, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movl	$340, %edx
	movw	%dx, (%eax)
	leal	2(%eax), %edx
	addl	$32, %eax
	subl	%esi, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movl	$340, %edx
	movw	%dx, -30(%eax)
	cmpl	-36(%ebp), %eax
	jne	L759
	movl	%esi, -28(%ebp)
L758:
	addl	$36, %ecx
	cmpl	%ecx, -32(%ebp)
	jne	L760
	movzwl	-40(%ebp), %eax
L757:
	movlps	-72(%ebp), %xmm4
	movlps	-64(%ebp), %xmm5
	movlps	-56(%ebp), %xmm6
	movlps	-48(%ebp), %xmm7
	movlps	%xmm4, _orgwalllist
	movlps	%xmm5, _orgwalloverlist
	movlps	%xmm6, _orgsectorceilinglist
	movlps	%xmm7, _orgsectorfloorlist
	testw	%ax, %ax
	jle	L761
	xorl	%ebx, %ebx
L773:
	movswl	%bx, %edi
	movl	_wall, %eax
	movl	%edi, %esi
	sall	$5, %esi
	movswl	16(%eax,%esi), %ecx
	movzwl	_aVoxelArray+2(,%ecx,4), %eax
	cmpw	$6144, %ax
	jg	L1018
L762:
	testw	%ax, %ax
	js	L1019
	movl	_orgwalllist, %eax
	cmpl	$_orgwalllist, %eax
	je	L765
L767:
	cmpw	%bx, 8(%eax)
	je	L766
	movl	(%eax), %eax
	cmpl	$_orgwalllist, %eax
	jne	L767
L765:
	movl	$_orgwalllist, %eax
	call	__Z11InitOrgTileP13ORG_TILE_LIST
L766:
	movl	_wall, %edx
	movw	%bx, 8(%eax)
	addl	%esi, %edx
	movzwl	16(%edx), %ecx
	movw	%cx, 10(%eax)
L764:
	movswl	18(%edx), %ecx
	movzwl	_aVoxelArray+2(,%ecx,4), %eax
	cmpw	$6144, %ax
	jg	L1020
L768:
	testw	%ax, %ax
	js	L769
	movl	_orgwalloverlist, %eax
	cmpl	$_orgwalloverlist, %eax
	je	L770
L772:
	cmpw	%bx, 8(%eax)
	je	L771
	movl	(%eax), %eax
	cmpl	$_orgwalloverlist, %eax
	jne	L772
L770:
	movl	$_orgwalloverlist, %eax
	call	__Z11InitOrgTileP13ORG_TILE_LIST
L771:
	movl	_wall, %edx
	movw	%bx, 8(%eax)
	movzwl	18(%edx,%esi), %edx
	movw	%dx, 10(%eax)
L769:
	addl	$1, %ebx
	cmpw	_numwalls, %bx
	jl	L773
	jmp	L761
L1020:
	movl	%edi, %eax
	movl	$2, %edx
	movl	%ecx, -28(%ebp)
	call	__Z13JS_PlockErrorss
	movl	-28(%ebp), %ecx
	movzwl	_aVoxelArray+2(,%ecx,4), %eax
	jmp	L768
L1019:
	movl	_wall, %edx
	addl	%esi, %edx
	jmp	L764
L1018:
	movl	%edi, %eax
	movl	$1, %edx
	movl	%ecx, -28(%ebp)
	call	__Z13JS_PlockErrorss
	movl	-28(%ebp), %ecx
	movzwl	_aVoxelArray+2(,%ecx,4), %eax
	jmp	L762
L1012:
	movl	_sprite, %eax
	movb	$0, -36(%ebp)
	movzwl	_headspritestat+1000, %edi
	movl	%eax, -32(%ebp)
L732:
	cmpw	$-1, %di
	je	L1021
	movswl	%di, %eax
	movzwl	_nextspritestat(%eax,%eax), %edx
	imull	$44, %eax, %eax
	addl	-32(%ebp), %eax
	cmpw	$1000, 40(%eax)
	je	L1022
L734:
	movl	%edx, %edi
	jmp	L732
L1011:
	movl	__ZN6loguru18g_stderr_verbosityE, %ebx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %ebx
	cmovl	%ecx, %ebx
	addl	$1, %ebx
	jl	L729
	movl	-28(%ebp), %eax
	movl	%edx, -32(%ebp)
	movl	$LC96, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$352, 8(%esp)
	movl	$LC97, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_sector, %esi
	movl	_wall, %eax
	movl	-32(%ebp), %edx
L729:
	movzwl	16(%esi,%edx,8), %ecx
	movl	%edi, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movw	%cx, 18(%eax,%edi)
	movzwl	_mirrorcnt, %eax
	movw	%ax, -36(%ebp)
	jmp	L730
L727:
	movl	-32(%ebp), %ebx
	movzwl	16(%ebx), %edx
	leal	18(%ecx), %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%dx, 18(%ecx)
	jmp	L730
L1022:
	movzwl	28(%ecx), %esi
	cmpw	%si, 38(%eax)
	jne	L734
	imull	$36, %ebx, %esi
	movb	$1, -36(%ebp)
	movw	%di, _mirror+4(%esi)
	movzwl	28(%eax), %esi
	movl	%edx, %edi
	movw	%si, 32(%eax)
	jmp	L732
L1021:
	movzwl	_headspritestat+134, %edi
L736:
	cmpw	$-1, %di
	je	L1023
	movswl	%di, %eax
	movzwl	_nextspritestat(%eax,%eax), %edx
	imull	$44, %eax, %eax
	addl	-32(%ebp), %eax
	cmpw	$1000, 40(%eax)
	je	L1024
L740:
	movl	%edx, %edi
	jmp	L736
L801:
	movl	$_SectorObject+3568, %edi
	jmp	L809
	.p2align 5
	.p2align 4,,10
	.p2align 3
L811:
	addl	$6028, %edi
	movl	$_SectorObject+124128, %eax
	cmpl	%edi, %eax
	je	L1025
L809:
	movl	-3388(%edi), %esi
	cmpl	$2147483647, %esi
	je	L811
	cmpw	$0, (%edi)
	jns	L811
	movl	%edi, %ebx
	movl	-3384(%edi), %ecx
	movl	$2147483647, %edx
	movlps	LC101, %xmm3
	subl	$_SectorObject+3568, %ebx
	leal	-3568(%edi), %eax
	sarl	$2, %ebx
	movl	%ecx, -28(%ebp)
	movl	%edx, %ecx
	imull	$1048804528, %ebx, %ebx
	movlps	%xmm3, __ZL13so_interpdata.lto_priv.0+458756(%ebx)
	subl	-3384(%edi), %ecx
	subl	-3388(%edi), %edx
	movl	$0, (%esp)
	movl	%eax, -32(%ebp)
	call	__Z13RefreshPointsP19SECTOR_OBJECTstructiih
	xorl	%eax, %eax
	movw	%ax, (%edi)
	movl	%edi, 12(%esp)
	movl	-3380(%edi), %edx
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %ecx
	movl	%esi, (%esp)
	movl	%ecx, 4(%esp)
	call	_updatesectorz
	movlps	LC101, %xmm4
	movl	-28(%ebp), %ecx
	movlps	%xmm4, __ZL13so_interpdata.lto_priv.0+458756(%ebx)
	subl	-3388(%edi), %esi
	subl	-3384(%edi), %ecx
	movl	$0, (%esp)
	movl	-32(%ebp), %eax
	movl	%esi, %edx
	call	__Z13RefreshPointsP19SECTOR_OBJECTstructiih
	jmp	L811
L1025:
	movzwl	_headspritestat+120, %eax
	movw	%ax, -28(%ebp)
	cmpw	$-1, %ax
	je	L812
	movl	_sprite, %eax
	movl	_sector, %esi
	movl	$-858993459, %edi
	movl	%eax, -32(%ebp)
L813:
	movswl	-28(%ebp), %eax
	movzwl	_nextspritestat(%eax,%eax), %ecx
	imull	$44, %eax, %eax
	movw	%cx, -28(%ebp)
	movl	-32(%ebp), %ecx
	leal	(%ecx,%eax), %ebx
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %ecx
	cmpw	$341, 16(%ecx)
	jne	L818
	leal	16(%ecx), %eax
	subl	%esi, %eax
	mull	%edi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	$2356, %eax
	movw	%ax, 16(%ecx)
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %ecx
	leal	12(,%ecx,8), %eax
	mull	%edi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	orw	$1, 12(%esi,%ecx,8)
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %ecx
L818:
	cmpw	$341, 24(%ecx)
	jne	L814
	leal	24(%ecx), %eax
	subl	%esi, %eax
	mull	%edi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	$2356, %eax
	movw	%ax, 24(%ecx)
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %ecx
	leal	14(,%ecx,8), %eax
	mull	%edi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	orw	$1, 14(%esi,%ecx,8)
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %ecx
L814:
	cmpw	$342, 16(%ecx)
	jne	L815
	leal	16(%ecx), %eax
	subl	%esi, %eax
	mull	%edi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	$2357, %eax
	movw	%ax, 16(%ecx)
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %ecx
L815:
	cmpw	$342, 24(%ecx)
	jne	L816
	leal	24(%ecx), %eax
	subl	%esi, %eax
	mull	%edi
	movl	%edx, %eax
	movl	$2357, %edx
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movw	%dx, 24(%ecx)
L816:
	cmpw	$-1, -28(%ebp)
	jne	L813
L812:
	cmpb	$0, _DemoMode
	jne	L1026
L819:
	cmpb	$0, _ArgCheat
	jne	L1027
L821:
	movb	$0, _NewGame
	jmp	L609
L1017:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %esi
	cmpl	%esi, %eax
	cmovl	%esi, %eax
	cmpl	$-1, %eax
	jl	L808
	movl	%ecx, 28(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 24(%esp)
	movl	(%ebx), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$LC100, 12(%esp)
	movl	$1590, 8(%esp)
	movl	$LC95, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L808
L1027:
	xorl	%eax, %eax
	movzbl	_gs+25, %ebx
	movb	$0, _gs+25
	movl	%eax, 4(%esp)
	movl	$_Player, (%esp)
	call	__Z16EveryCheatToggleP12PLAYERstructPc
	movb	%bl, _gs+25
	movl	$1, _GodMode
	jmp	L821
L1026:
	movl	$_DemoText, %esi
	xorl	%ebx, %ebx
L820:
	movl	%esi, %eax
	leal	-20(%ebp), %ecx
	leal	-24(%ebp), %edx
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	-24(%ebp), %edx
	movl	$320, %eax
	movzwl	_DemoTextYstart, %ecx
	movl	%esi, (%esp)
	addl	$64, %esi
	subl	%edx, %eax
	movl	$999, 4(%esp)
	addl	%ebx, %ecx
	addl	$12, %ebx
	movl	%eax, %edx
	movswl	%cx, %ecx
	shrl	$31, %edx
	addl	%eax, %edx
	movl	$_Player, %eax
	sarl	%edx
	movswl	%dx, %edx
	call	__Z14PutStringTimerP12PLAYERstructssPKcs
	cmpw	$36, %bx
	jne	L820
	jmp	L819
	.p2align 4,,10
	.p2align 3
L1014:
	movl	_sector, %edx
	addl	%esi, %edx
	jmp	L777
L1024:
	movzwl	28(%ecx), %esi
	cmpw	%si, 38(%eax)
	jne	L740
	imull	$36, %ebx, %esi
	movb	$1, -36(%ebp)
	movw	%di, _mirror+4(%esi)
	movzwl	28(%eax), %esi
	movl	%edx, %edi
	movw	%si, 32(%eax)
	jmp	L736
L1023:
	cmpb	$0, -36(%ebp)
	je	L1028
	imull	$36, %ebx, %eax
	movl	-32(%ebp), %esi
	movb	$1, _mirror+20(%eax)
	movswl	_mirror+4(%eax), %eax
	imull	$44, %eax, %eax
	testb	$64, 42(%esi,%eax)
	jne	L1029
L747:
	imull	$36, %ebx, %ebx
	movl	$1800, _mirror+28(%ebx)
	jmp	L731
L1028:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	addl	$1, %eax
	jl	L731
	movl	4(%ecx), %eax
	movl	%eax, 24(%esp)
	movl	(%ecx), %eax
	movl	%eax, 20(%esp)
	movswl	28(%ecx), %eax
	movl	$LC98, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$405, 8(%esp)
	movl	$LC97, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L731
L1029:
	movl	%ebx, -40(%ebp)
	movzwl	_headspritestat, %esi
	xorl	%edi, %edi
	jmp	L748
L754:
	movzwl	-76(%ebp), %esi
L748:
	cmpw	$-1, %si
	je	L1030
	movswl	%si, %eax
	movzwl	_nextspritestat(%eax,%eax), %ebx
	imull	$44, %eax, %eax
	addl	-32(%ebp), %eax
	movzwl	14(%eax), %edx
	movw	%bx, -76(%ebp)
	leal	-3830(%edx), %ebx
	cmpw	$7, %bx
	ja	L754
	movzwl	28(%ecx), %ebx
	cmpw	%bx, 40(%eax)
	jne	L754
	imull	$36, -40(%ebp), %eax
	xorl	%ebx, %ebx
	movzbl	-36(%ebp), %edi
	movw	%dx, _mirror+8(%eax)
	movw	%si, _mirror+6(%eax)
	movswl	%dx, %eax
	movl	%ebx, _tilesiz(,%eax,4)
	jmp	L754
L1030:
	movl	%edi, %eax
	movl	-40(%ebp), %ebx
	testb	%al, %al
	jne	L747
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	addl	$1, %eax
	jl	L755
	movl	4(%ecx), %eax
	movl	%eax, 32(%esp)
	movl	(%ecx), %eax
	movl	%eax, 28(%esp)
	movswl	28(%ecx), %eax
	movl	%eax, 24(%esp)
	movl	-28(%ebp), %eax
	movl	%ebx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$LC99, 12(%esp)
	movl	$433, 8(%esp)
	movl	$LC97, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L755:
	movswl	_mirrorcnt, %ebx
	movl	_sprite, %ecx
	movl	$44, %esi
	xorl	%edx, %edx
	imull	$36, %ebx, %eax
	movswl	_mirror+4(%eax), %eax
	imull	$44, %eax, %eax
	addl	%eax, %ecx
	addl	$42, %eax
	divl	%esi
	addl	$1, _spritechanged(,%eax,4)
	andw	$-65, 42(%ecx)
	jmp	L747
	.cfi_endproc
LFE109:
	.p2align 4
	.globl	__Z7wfe_Escv
	.def	__Z7wfe_Escv;	.scl	2;	.type	32;	.endef
__Z7wfe_Escv:
LFB152:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	_ototalclock, %eax
	movl	%ebx, 12(%esp)
	addl	$3, %eax
	cmpl	_totalclock, %eax
	.cfi_offset 3, -12
	jg	L1032
	movl	%eax, _ototalclock
L1032:
	call	__Z19DrawMenuLevelScreenv
	cmpb	$0, _keystatus+1
	je	L1033
	movb	$0, _keystatus+1
	movb	$1, _wfe_Show
L1034:
	leal	8(%esp), %ecx
	leal	10(%esp), %edx
	movl	$_ds, %eax
	movl	$794370149, _ds+28
	movl	$1461743436, _ds
	movl	$543649377, _ds+4
	movl	$1629516649, _ds+8
	movl	$1767993958, _ds+12
	movl	$538976612, _ds+16
	movl	$1953069125, _ds+20
	movl	$1835099936, _ds+24
	movl	$4148783, _ds+31
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
	call	_videoNextPage
	cmpb	$0, _keystatus+21
	jne	L1042
	movzbl	_keystatus+49, %ebx
	testb	%bl, %bl
	je	L1031
	xorl	%ebx, %ebx
	movb	$0, _keystatus+49
	movl	%ebx, %eax
	movb	$0, _wfe_Show
	movl	12(%esp), %ebx
	addl	$20, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1033:
	.cfi_restore_state
	movzbl	_wfe_Show, %ebx
	testb	%bl, %bl
	jne	L1034
	leal	8(%esp), %ecx
	leal	10(%esp), %edx
	movl	$_ds, %eax
	movl	%esi, 16(%esp)
	.cfi_offset 6, -8
	movl	$1461743436, _ds
	movl	$320, %esi
	movl	$543649377, _ds+4
	movl	$1998615401, _ds+8
	movl	$1769236833, _ds+12
	movl	$1713399662, _ds+16
	movl	$1864397423, _ds+20
	movl	$1919248500, _ds+24
	movl	$1634496544, _ds+28
	movl	$1936876921, _ds+32
	movl	$3026478, _ds+36
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	10(%esp), %eax
	movl	%esi, %edx
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
	leal	8(%esp), %ecx
	leal	10(%esp), %edx
	movl	$_ds, %eax
	movl	$2036688980, _ds
	movl	$1701994784, _ds+4
	movl	$1919312160, _ds+8
	movl	$560228705, _ds+12
	movb	$0, _ds+16
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	10(%esp), %eax
	movl	$_ds, %ecx
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	movl	$180, %edx
	subl	%eax, %esi
	movl	%esi, %eax
	shrl	$31, %eax
	addl	%esi, %eax
	sarl	%eax
	cwtl
	call	__Z14MNU_DrawStringssPKcss
	call	_videoNextPage
	movl	16(%esp), %esi
	.cfi_restore 6
L1031:
	movl	%ebx, %eax
	movl	12(%esp), %ebx
	addl	$20, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1042:
	.cfi_restore_state
	movl	$1, %ebx
	movb	$0, _keystatus+21
	movl	%ebx, %eax
	movb	$0, _wfe_Show
	movl	12(%esp), %ebx
	addl	$20, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE152:
	.p2align 4
	.globl	__Z9MenuLevelv
	.def	__Z9MenuLevelv;	.scl	2;	.type	32;	.endef
__Z9MenuLevelv:
LFB155:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	cmpb	$0, _AutoNet
	jne	L1080
	cmpl	$1, _numplayers
	jle	L1081
L1049:
	xorl	%eax, %eax
	movl	%ebx, 16(%esp)
	movb	$0, _DemoMode
	movb	$0, _DemoPlaying
	.cfi_offset 3, -8
	call	_videoClearViewableArea
	call	_videoNextPage
	movb	$0, _ready2send
	movl	$0, _totalclock
	movl	$0, _totalclock+8
	movl	$0, _totalclock+12
	movl	$0, _ototalclock
	movb	$0, _ExitLevel
	movb	$1, _InMenuLevel
	call	__Z19DrawMenuLevelScreenv
	cmpb	$0, _CommEnabled
	jne	L1082
L1050:
	call	_videoNextPage
	cmpb	$0, _CommEnabled
	jne	L1083
L1051:
	movb	$0, _BorderAdjust
	xorl	%eax, %eax
L1052:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1052
	testb	$1, _SW_GameFlags
	je	L1054
	cmpb	$0, _FinishAnim
	je	L1068
	movb	$1, _keystatus+1
	movl	$7, _ControlPanelType
	movb	$0, _FinishAnim
	.p2align 4
	.p2align 3
L1068:
	call	_handleevents.isra.0
	movl	_osd, %eax
	movl	1100(%eax), %ebx
	testl	%ebx, %ebx
	je	L1056
	movl	$0, 1100(%eax)
	subl	$1, %ebx
	jns	L1057
	jmp	L1056
	.p2align 4,,10
	.p2align 3
L1084:
	movl	_osd, %eax
L1057:
	movl	60(%eax,%ebx,4), %eax
	xorl	%edx, %edx
	call	__Z12OSD_DispatchPKcb
	subl	$1, %ebx
	jnb	L1084
L1056:
	cmpb	$0, _quitevent
	jne	L1085
L1058:
	movl	_ototalclock, %eax
	addl	$3, %eax
	cmpl	_totalclock, %eax
	jle	L1086
L1061:
	cmpb	$0, _CommEnabled
	je	L1062
	cmpb	$0, _MultiPlayQuitFlag
	jne	L1087
	movswl	_PlayerQuitMenuLevel, %eax
	testw	%ax, %ax
	js	L1062
	call	__Z18MenuCommPlayerQuits.isra.0
	movl	$-1, %eax
	movw	%ax, _PlayerQuitMenuLevel
L1062:
	cmpb	$0, _ExitLevel
	jne	L1088
	cmpb	$0, _QuitFlag
	jne	L1064
	cmpb	$0, _UsingMenus
	jne	L1066
	movb	$1, _keystatus+1
	call	__Z23MNU_CheckForMenusAnyKeyv
L1066:
	movl	_totalclock+12, %eax
	movl	_totalclock+12, %edx
	movl	%eax, _totalclocklock
	movl	_totalclock+8, %eax
	movl	%edx, _totalclocklock+12
	xorw	%ax, %ax
	movl	%eax, _totalclocklock+8
	call	__Z19DrawMenuLevelScreenv
	cmpb	$0, _UsingMenus
	jne	L1089
L1067:
	call	_videoNextPage
	jmp	L1068
L1083:
	call	__Z16waitforeverybodyv.part.0
	jmp	L1051
L1081:
	.cfi_restore 3
	movzbl	_CommEnabled, %eax
	orb	_FinishAnim, %al
	orb	_NoDemoStartup, %al
	jne	L1049
	cmpb	$0, _DemoName
	je	L1049
	movb	$1, _DemoMode
	movb	$1, _DemoPlaying
	jmp	L1043
	.p2align 4,,10
	.p2align 3
L1082:
	.cfi_offset 3, -8
	leal	12(%esp), %ecx
	leal	14(%esp), %edx
	movl	$_ds, %eax
	movl	$320, %ebx
	movl	$1461743436, _ds
	movl	$543649377, _ds+4
	movl	$1998615401, _ds+8
	movl	$1769236833, _ds+12
	movl	$1713399662, _ds+16
	movl	$1864397423, _ds+20
	movl	$1919248500, _ds+24
	movl	$1634496544, _ds+28
	movl	$1936876921, _ds+32
	movl	$3026478, _ds+36
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	14(%esp), %eax
	movl	%ebx, %edx
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
	leal	12(%esp), %ecx
	leal	14(%esp), %edx
	movl	$_ds, %eax
	movl	$2036688980, _ds
	movl	$1701994784, _ds+4
	movl	$1919312160, _ds+8
	movl	$560228705, _ds+12
	movb	$0, _ds+16
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	14(%esp), %eax
	movl	$_ds, %ecx
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	movl	$180, %edx
	subl	%eax, %ebx
	movl	%ebx, %eax
	shrl	$31, %eax
	addl	%ebx, %eax
	sarl	%eax
	cwtl
	call	__Z14MNU_DrawStringssPKcss
	jmp	L1050
L1080:
	.cfi_restore 3
	call	__Z19DrawMenuLevelScreenv
	cmpb	$0, _CommEnabled
	jne	L1090
L1045:
	call	_videoNextPage
	cmpb	$0, _CommEnabled
	jne	L1091
L1046:
	movb	$1, _FirstTimeIntoGame
	call	__Z16MNU_StartNetGamev
	movb	$0, _FirstTimeIntoGame
	cmpb	$0, _CommEnabled
	jne	L1092
L1047:
	movb	$0, _ExitLevel
	movb	$0, _FinishedLevel
	movb	$1, _BorderAdjust
	movb	$0, _UsingMenus
	movb	$0, _InMenuLevel
L1043:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
L1092:
	.cfi_restore_state
	call	__Z16waitforeverybodyv.part.0
	jmp	L1047
L1091:
	call	__Z16waitforeverybodyv.part.0
	jmp	L1046
L1090:
	leal	12(%esp), %ecx
	leal	14(%esp), %edx
	movl	$_ds, %eax
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -8
	movl	$1461743436, _ds
	movl	$320, %ebx
	movl	$543649377, _ds+4
	movl	$1998615401, _ds+8
	movl	$1769236833, _ds+12
	movl	$1713399662, _ds+16
	movl	$1864397423, _ds+20
	movl	$1919248500, _ds+24
	movl	$1634496544, _ds+28
	movl	$1936876921, _ds+32
	movl	$3026478, _ds+36
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	14(%esp), %eax
	movl	%ebx, %edx
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
	leal	12(%esp), %ecx
	leal	14(%esp), %edx
	movl	$_ds, %eax
	movl	$2036688980, _ds
	movl	$1701994784, _ds+4
	movl	$1919312160, _ds+8
	movl	$560228705, _ds+12
	movb	$0, _ds+16
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	14(%esp), %eax
	movl	$_ds, %ecx
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	movl	$180, %edx
	subl	%eax, %ebx
	movl	%ebx, %eax
	shrl	$31, %eax
	addl	%ebx, %eax
	sarl	%eax
	cwtl
	call	__Z14MNU_DrawStringssPKcss
	movl	16(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	jmp	L1045
	.p2align 4,,10
	.p2align 3
L1086:
	.cfi_restore_state
	movl	%eax, _ototalclock
	call	__Z23MNU_CheckForMenusAnyKeyv
	cmpb	$0, _CommEnabled
	je	L1062
	call	__Z10getpacketsv
	jmp	L1061
	.p2align 4,,10
	.p2align 3
L1085:
	cmpb	$1, _CommPlayers
	jbe	L1059
	movb	$1, _MultiPlayQuitFlag
L1060:
	movl	_osd, %eax
	andl	$-3, 1172(%eax)
	xorl	%eax, %eax
	call	__Z16OSD_CaptureInputi
	jmp	L1058
	.p2align 4,,10
	.p2align 3
L1089:
	call	__Z12MNU_DrawMenuv
	jmp	L1067
	.p2align 4,,10
	.p2align 3
L1059:
	movb	$1, _QuitFlag
	jmp	L1060
L1088:
	movb	$0, _ExitLevel
L1064:
	movb	$1, _BorderAdjust
	xorl	%eax, %eax
	movb	$0, _KB_LastScan
L1069:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1069
	xorl	%eax, %eax
	movb	$0, _UsingMenus
	movb	$0, _InMenuLevel
	call	_videoClearViewableArea
	movl	16(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	jmp	_videoNextPage
L1054:
	.cfi_restore_state
	movb	$0, _FinishAnim
	jmp	L1068
L1087:
	leal	11(%esp), %eax
	movl	$1, %edx
	movb	$35, 11(%esp)
	movb	$1, _QuitFlag
	call	__Z18netbroadcastpacketPhi
	jmp	L1064
	.cfi_endproc
LFE155:
	.section .rdata,"dr"
LC102:
	.ascii "Your Time:  %2d : %02d\0"
LC103:
	.ascii "3D Realms Best Time:  %s\0"
LC104:
	.ascii "Par Time:  %s\0"
LC105:
	.ascii "Secrets:  %d / %d\0"
LC106:
	.ascii "Kills:  %d / %d\0"
	.text
	.p2align 4
	.globl	__Z11BonusScreenv
	.def	__Z11BonusScreenv;	.scl	2;	.type	32;	.endef
__Z11BonusScreenv:
LFB161:
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
	subl	$52, %esp
	.cfi_def_cfa_offset 72
	cmpb	$0, __ZGVZ11BonusScreenvE12s_BonusPunch
	jne	L1094
	movl	$__ZZ11BonusScreenvE12s_BonusPunch+16, __ZZ11BonusScreenvE12s_BonusPunch+12
	movl	$__ZZ11BonusScreenvE12s_BonusPunch+32, __ZZ11BonusScreenvE12s_BonusPunch+28
	movl	$__ZZ11BonusScreenvE12s_BonusPunch+48, __ZZ11BonusScreenvE12s_BonusPunch+44
	movl	$__ZZ11BonusScreenvE12s_BonusPunch+64, __ZZ11BonusScreenvE12s_BonusPunch+60
	movl	$__ZZ11BonusScreenvE12s_BonusPunch+80, __ZZ11BonusScreenvE12s_BonusPunch+76
	movl	$__ZZ11BonusScreenvE12s_BonusPunch+96, __ZZ11BonusScreenvE12s_BonusPunch+92
	movl	$__ZZ11BonusScreenvE12s_BonusPunch+112, __ZZ11BonusScreenvE12s_BonusPunch+108
	movl	$__ZZ11BonusScreenvE12s_BonusPunch+128, __ZZ11BonusScreenvE12s_BonusPunch+124
	movl	$__ZZ11BonusScreenvE12s_BonusPunch+144, __ZZ11BonusScreenvE12s_BonusPunch+140
	movl	$__ZZ11BonusScreenvE12s_BonusPunch+160, __ZZ11BonusScreenvE12s_BonusPunch+156
	movl	$__ZZ11BonusScreenvE12s_BonusPunch+176, __ZZ11BonusScreenvE12s_BonusPunch+172
	movl	$__ZZ11BonusScreenvE12s_BonusPunch+192, __ZZ11BonusScreenvE12s_BonusPunch+188
	movl	$__ZZ11BonusScreenvE12s_BonusPunch+208, __ZZ11BonusScreenvE12s_BonusPunch+204
	movl	$__ZZ11BonusScreenvE12s_BonusPunch+224, __ZZ11BonusScreenvE12s_BonusPunch+220
	movl	$__ZZ11BonusScreenvE12s_BonusPunch+240, __ZZ11BonusScreenvE12s_BonusPunch+236
	movl	$__ZZ11BonusScreenvE12s_BonusPunch+240, __ZZ11BonusScreenvE12s_BonusPunch+252
	movb	$1, __ZGVZ11BonusScreenvE12s_BonusPunch
L1094:
	cmpb	$0, __ZGVZ11BonusScreenvE11s_BonusKick
	jne	L1095
	movl	$__ZZ11BonusScreenvE11s_BonusKick+16, __ZZ11BonusScreenvE11s_BonusKick+12
	movl	$__ZZ11BonusScreenvE11s_BonusKick+32, __ZZ11BonusScreenvE11s_BonusKick+28
	movl	$__ZZ11BonusScreenvE11s_BonusKick+48, __ZZ11BonusScreenvE11s_BonusKick+44
	movl	$__ZZ11BonusScreenvE11s_BonusKick+64, __ZZ11BonusScreenvE11s_BonusKick+60
	movl	$__ZZ11BonusScreenvE11s_BonusKick+80, __ZZ11BonusScreenvE11s_BonusKick+76
	movl	$__ZZ11BonusScreenvE11s_BonusKick+96, __ZZ11BonusScreenvE11s_BonusKick+92
	movl	$__ZZ11BonusScreenvE11s_BonusKick+112, __ZZ11BonusScreenvE11s_BonusKick+108
	movl	$__ZZ11BonusScreenvE11s_BonusKick+128, __ZZ11BonusScreenvE11s_BonusKick+124
	movl	$__ZZ11BonusScreenvE11s_BonusKick+144, __ZZ11BonusScreenvE11s_BonusKick+140
	movl	$__ZZ11BonusScreenvE11s_BonusKick+160, __ZZ11BonusScreenvE11s_BonusKick+156
	movl	$__ZZ11BonusScreenvE11s_BonusKick+176, __ZZ11BonusScreenvE11s_BonusKick+172
	movl	$__ZZ11BonusScreenvE11s_BonusKick+192, __ZZ11BonusScreenvE11s_BonusKick+188
	movl	$__ZZ11BonusScreenvE11s_BonusKick+208, __ZZ11BonusScreenvE11s_BonusKick+204
	movl	$__ZZ11BonusScreenvE11s_BonusKick+224, __ZZ11BonusScreenvE11s_BonusKick+220
	movl	$__ZZ11BonusScreenvE11s_BonusKick+240, __ZZ11BonusScreenvE11s_BonusKick+236
	movl	$__ZZ11BonusScreenvE11s_BonusKick+240, __ZZ11BonusScreenvE11s_BonusKick+252
	movb	$1, __ZGVZ11BonusScreenvE11s_BonusKick
L1095:
	cmpb	$0, __ZGVZ11BonusScreenvE11s_BonusGrab
	jne	L1096
	movl	$__ZZ11BonusScreenvE11s_BonusGrab+16, __ZZ11BonusScreenvE11s_BonusGrab+12
	movl	$__ZZ11BonusScreenvE11s_BonusGrab+32, __ZZ11BonusScreenvE11s_BonusGrab+28
	movl	$__ZZ11BonusScreenvE11s_BonusGrab+48, __ZZ11BonusScreenvE11s_BonusGrab+44
	movl	$__ZZ11BonusScreenvE11s_BonusGrab+64, __ZZ11BonusScreenvE11s_BonusGrab+60
	movl	$__ZZ11BonusScreenvE11s_BonusGrab+80, __ZZ11BonusScreenvE11s_BonusGrab+76
	movl	$__ZZ11BonusScreenvE11s_BonusGrab+96, __ZZ11BonusScreenvE11s_BonusGrab+92
	movl	$__ZZ11BonusScreenvE11s_BonusGrab+112, __ZZ11BonusScreenvE11s_BonusGrab+108
	movl	$__ZZ11BonusScreenvE11s_BonusGrab+128, __ZZ11BonusScreenvE11s_BonusGrab+124
	movl	$__ZZ11BonusScreenvE11s_BonusGrab+144, __ZZ11BonusScreenvE11s_BonusGrab+140
	movl	$__ZZ11BonusScreenvE11s_BonusGrab+160, __ZZ11BonusScreenvE11s_BonusGrab+156
	movl	$__ZZ11BonusScreenvE11s_BonusGrab+176, __ZZ11BonusScreenvE11s_BonusGrab+172
	movl	$__ZZ11BonusScreenvE11s_BonusGrab+176, __ZZ11BonusScreenvE11s_BonusGrab+188
	movb	$1, __ZGVZ11BonusScreenvE11s_BonusGrab
L1096:
	cmpb	$0, __ZGVZ11BonusScreenvE11s_BonusRest
	jne	L1097
	movl	$__ZZ11BonusScreenvE11s_BonusRest+16, __ZZ11BonusScreenvE11s_BonusRest+12
	movl	$__ZZ11BonusScreenvE11s_BonusRest+32, __ZZ11BonusScreenvE11s_BonusRest+28
	movl	$__ZZ11BonusScreenvE11s_BonusRest+48, __ZZ11BonusScreenvE11s_BonusRest+44
	movb	$1, __ZGVZ11BonusScreenvE11s_BonusRest
L1097:
	movl	$0, 44(%esp)
	movl	$8, 48(%esp)
	cmpw	$0, _Level
	jns	L1098
	xorl	%ebp, %ebp
	movw	%bp, _Level
L1098:
	xorl	%eax, %eax
	call	_videoClearViewableArea
	call	_videoNextPage
	movb	$0, _KB_LastScan
	xorl	%eax, %eax
L1099:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1099
	movl	$0, _ototalclock
	movl	$0, _totalclock
	movl	$0, _totalclock+8
	movl	$0, _totalclock+12
	cmpb	$0, _gs+27
	jne	L1145
L1101:
	cmpb	$0, _FinishAnim
	jne	L1146
L1102:
	movl	$__ZZ11BonusScreenvE11s_BonusRest, %ebx
	xorl	%esi, %esi
	movl	$320, %ebp
	.p2align 4
	.p2align 3
L1122:
	call	_handleevents.isra.0
	call	__Z10getpacketsv
	movl	_ototalclock, %eax
	addl	$3, %eax
	cmpl	_totalclock, %eax
	jg	L1122
	movl	%eax, _ototalclock
	leal	44(%esp), %eax
	call	_CONTROL_GetUserInput.isra.0
	leal	44(%esp), %eax
	call	_CONTROL_ClearUserInput
	movzbl	_keystatus+57, %eax
	orb	_keystatus+28, %al
	jne	L1104
	cmpb	$0, 44(%esp)
	jne	L1104
	cmpb	$0, 45(%esp)
	je	L1127
	.p2align 4
	.p2align 3
L1104:
	cmpl	$__ZZ11BonusScreenvE11s_BonusRest, %ebx
	jb	L1127
	cmpl	$__ZZ11BonusScreenvE11s_BonusRest+64, %ebx
	jb	L1106
L1127:
	addl	$3, %esi
L1105:
	movl	4(%ebx), %eax
	cmpl	%esi, %eax
	jg	L1108
	.p2align 4
	.p2align 3
L1110:
	movl	12(%ebx), %ebx
	subl	%eax, %esi
	movl	4(%ebx), %eax
	testl	$65536, %eax
	je	L1109
	movl	$0, (%esp)
	call	*8(%ebx)
	movl	12(%ebx), %ebx
	movl	4(%ebx), %eax
L1109:
	cmpl	%eax, %esi
	jge	L1110
L1108:
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L1111
	movl	$0, (%esp)
	call	*%eax
L1111:
	xorl	%eax, %eax
	call	_videoClearViewableArea
	movl	_xdim, %eax
	movl	_ydim, %edx
	subl	$1, %eax
	js	L1112
	subl	$1, %edx
	js	L1112
	movl	%edx, 32(%esp)
	movl	$65536, %ecx
	xorl	%edx, %edx
	movl	%eax, 28(%esp)
	xorl	%eax, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$90, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$5120, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L1112:
	cmpb	$0, _UserMapName
	jne	L1147
	movswl	_PlayingLevel, %eax
	cmpw	$1, %ax
	jg	L1116
	movl	$1, %edi
	movl	$1, %eax
	movw	%di, _PlayingLevel
L1116:
	leal	(%eax,%eax,4), %eax
	movl	_LevelInfo+8(,%eax,4), %eax
	movl	%eax, 4(%esp)
L1144:
	movl	$_ds, (%esp)
	call	_strcpy
	leal	40(%esp), %ecx
	leal	42(%esp), %edx
	movl	$_ds, %eax
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	42(%esp), %eax
	movl	%ebp, %edx
	movl	$19, 4(%esp)
	movl	$1, (%esp)
	movl	$_ds, %ecx
	subl	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	movl	$20, %edx
	sarl	%eax
	cwtl
	call	__Z14MNU_DrawStringssPKcss
	movl	$100, %ecx
	leal	42(%esp), %edx
	movl	$_ds, %eax
	movw	%cx, _ds+8
	leal	40(%esp), %ecx
	movl	$1886220099, _ds
	movl	$1702126956, _ds+4
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	42(%esp), %eax
	movl	%ebp, %edx
	movl	$19, 4(%esp)
	movl	$1, (%esp)
	movl	$_ds, %ecx
	subl	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	movl	$30, %edx
	sarl	%eax
	cwtl
	call	__Z14MNU_DrawStringssPKcss
	movswl	(%ebx), %ecx
	cmpl	$30719, %ecx
	ja	L1117
	movl	_xdim, %eax
	movl	_ydim, %edx
	subl	$1, %eax
	js	L1117
	subl	$1, %edx
	js	L1117
	movl	%edx, 32(%esp)
	movl	$5636096, %edx
	movl	%eax, 28(%esp)
	movl	$10354688, %eax
	movl	%ecx, 4(%esp)
	movl	$65536, %ecx
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$90, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L1117:
	movl	_PlayClock, %edi
	movl	$-2004318071, %eax
	movl	$LC102, 4(%esp)
	movl	$_ds, (%esp)
	imull	%edi
	movl	$-2004318071, %eax
	leal	(%edx,%edi), %ecx
	sarl	$31, %edi
	sarl	$6, %ecx
	subl	%edi, %ecx
	movl	$70, %edi
	imull	%ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	addl	%ecx, %edx
	sarl	$5, %edx
	subl	%eax, %edx
	imull	$60, %edx, %eax
	movl	%edx, 8(%esp)
	subl	%eax, %ecx
	movl	%ecx, 12(%esp)
	call	_sprintf
	leal	40(%esp), %ecx
	leal	42(%esp), %edx
	movl	$_ds, %eax
	call	__Z17MNU_MeasureStringPKcPsS1_
	movl	$50, %edx
	movl	$_ds, %ecx
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	movl	$60, %eax
	call	__Z14MNU_DrawStringssPKcss
	movl	$90, %edx
	movw	%dx, 38(%esp)
	cmpb	$0, _UserMapName
	je	L1148
L1118:
	movswl	_LevelSecrets, %eax
	movl	$LC105, 4(%esp)
	movl	$_ds, (%esp)
	movl	%eax, 12(%esp)
	movswl	_Player+23256, %eax
	movl	%eax, 8(%esp)
	call	_sprintf
	leal	40(%esp), %ecx
	leal	42(%esp), %edx
	movl	$_ds, %eax
	call	__Z17MNU_MeasureStringPKcPsS1_
	movl	$16, 4(%esp)
	movswl	%di, %edx
	movl	$_ds, %ecx
	movl	$1, (%esp)
	movl	$60, %eax
	call	__Z14MNU_DrawStringssPKcss
	movswl	_TotalKillable, %eax
	movl	$LC106, 4(%esp)
	movl	$_ds, (%esp)
	movl	%eax, 12(%esp)
	movswl	_Player+23236, %eax
	movl	%eax, 8(%esp)
	call	_sprintf
	leal	40(%esp), %ecx
	leal	42(%esp), %edx
	movl	$_ds, %eax
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	38(%esp), %edx
	movl	$_ds, %ecx
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	movl	$60, %eax
	call	__Z14MNU_DrawStringssPKcss
	leal	40(%esp), %ecx
	leal	42(%esp), %edx
	movl	$_ds, %eax
	movl	$1936028240, _ds
	movl	$1347625075, _ds+4
	movl	$541410113, _ds+8
	movl	$1663070068, _ds+12
	movl	$1769238127, _ds+16
	movl	$6649198, _ds+20
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	42(%esp), %eax
	movl	%ebp, %edx
	movl	$19, 4(%esp)
	movl	$1, (%esp)
	movl	$_ds, %ecx
	subl	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	movl	$185, %edx
	sarl	%eax
	cwtl
	call	__Z14MNU_DrawStringssPKcss
	call	_videoNextPage
	cmpb	$0, _keystatus+88
	je	L1119
	call	__Z17ScreenCaptureKeysv.part.0
L1119:
	cmpl	%ebx, 12(%ebx)
	jne	L1122
	call	_MV_KillAllVoices.constprop.0
	testl	%eax, %eax
	jne	L1149
L1124:
	cmpb	$0, _DemoMode
	jne	L1125
	call	__Z8StopSongv.part.0
L1125:
	addl	$52, %esp
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
	jmp	__Z17Terminate3DSoundsv
L1145:
	.cfi_restore_state
	cmpb	$0, _DemoMode
	jne	L1101
	movl	$1, %ecx
	movl	$3, %edx
	movl	$_voc+19052, %eax
	movl	$1, (%esp)
	call	__Z8PlaySongPcihh.part.0
	cmpb	$0, _FinishAnim
	je	L1102
L1146:
	movl	_xdim, %eax
	movl	_ydim, %edx
	movl	$0, __ZL8permtail.lto_priv.0
	movl	$0, __ZL8permhead.lto_priv.0
	subl	$1, %eax
	js	L1103
	subl	$1, %edx
	js	L1103
	movl	%edx, 32(%esp)
	movl	$65536, %ecx
	xorl	%edx, %edx
	movl	%eax, 28(%esp)
	xorl	%eax, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$90, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$5120, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
	movswl	__ZZ11BonusScreenvE11s_BonusRest, %ecx
	cmpl	$30719, %ecx
	ja	L1103
	movl	_xdim, %eax
	movl	_ydim, %edx
	subl	$1, %eax
	js	L1103
	subl	$1, %edx
	js	L1103
	movl	%edx, 32(%esp)
	movl	$5636096, %edx
	movl	%eax, 28(%esp)
	movl	$10354688, %eax
	movl	%ecx, 4(%esp)
	movl	$65536, %ecx
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$90, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L1103:
	call	_videoNextPage
	cmpl	$2, _rendmode
	jg	L1102
	call	__Z6FadeInhj.part.0.constprop.0
	jmp	L1102
	.p2align 4,,10
	.p2align 3
L1148:
	movswl	_PlayingLevel, %eax
	movl	$110, %edi
	leal	(%eax,%eax,4), %eax
	movl	_LevelInfo+12(,%eax,4), %eax
	movl	$LC103, 4(%esp)
	movl	$_ds, (%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	leal	40(%esp), %ecx
	leal	42(%esp), %edx
	movl	$_ds, %eax
	call	__Z17MNU_MeasureStringPKcPsS1_
	movl	$_ds, %ecx
	movl	$70, %edx
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	movl	$40, %eax
	call	__Z14MNU_DrawStringssPKcss
	movswl	_PlayingLevel, %eax
	leal	(%eax,%eax,4), %eax
	movl	_LevelInfo+16(,%eax,4), %eax
	movl	$LC104, 4(%esp)
	movl	$_ds, (%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	leal	40(%esp), %ecx
	leal	42(%esp), %edx
	movl	$_ds, %eax
	call	__Z17MNU_MeasureStringPKcPsS1_
	movl	$40, %eax
	movl	$_ds, %ecx
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	movl	$90, %edx
	call	__Z14MNU_DrawStringssPKcss
	movl	$130, %eax
	movw	%ax, 38(%esp)
	jmp	L1118
	.p2align 4,,10
	.p2align 3
L1147:
	movl	$_UserMapName, 4(%esp)
	jmp	L1144
	.p2align 4,,10
	.p2align 3
L1106:
	imull	$1103515245, _wrandomseed, %eax
	movl	$32766, %edx
	movl	$3, %esi
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	shrl	$16, %eax
	andl	$32767, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	movl	$1610661893, %edx
	sall	$14, %eax
	imull	%edx
	sarl	$26, %edx
	movl	__ZZ11BonusScreenvE11s_BonusAnim(,%edx,4), %ebx
	jmp	L1105
L1149:
	movl	$2, _FX_ErrorCode
	jmp	L1124
	.cfi_endproc
LFE161:
	.section .rdata,"dr"
	.align 4
LC107:
	.ascii "Assertion failed: %s %s, line %u\0"
	.text
	.p2align 4
	.globl	__Z7_AssertPKcS0_j
	.def	__Z7_AssertPKcS0_j;	.scl	2;	.type	32;	.endef
__Z7_AssertPKcS0_j:
LFB170:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	subl	$32, %esp
	.cfi_def_cfa_offset 44
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1153
L1151:
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%ecx, 16(%esp)
	movl	$LC107, 4(%esp)
	movl	$_apptitle, (%esp)
	call	_wm_msgbox.constprop.0
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z13TerminateGamev
	.p2align 4,,10
	.p2align 3
L1153:
	.cfi_restore_state
	movl	%ecx, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	$LC107, 12(%esp)
	movl	$2413, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-2, (%esp)
	movl	%ecx, 28(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	28(%esp), %ecx
	jmp	L1151
	.cfi_endproc
LFE170:
	.p2align 4
	.globl	__Z14TerminateLevelv
	.def	__Z14TerminateLevelv;	.scl	2;	.type	32;	.endef
__Z14TerminateLevelv:
LFB171:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	cmpl	$1, _numplayers
	je	L1227
L1155:
	call	__Z8DemoTermv
	movl	$_Track, %ebx
	movl	$_Track+1200, %esi
	.p2align 4
	.p2align 3
L1159:
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L1158
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, (%ebx)
L1158:
	addl	$12, %ebx
	cmpl	%ebx, %esi
	jne	L1159
	movl	$1200, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_Track, (%esp)
	call	_memset
	call	_MV_KillAllVoices.constprop.0
	testl	%eax, %eax
	jne	L1228
L1160:
	call	__Z17Terminate3DSoundsv
	movl	_numplayers, %edi
	testl	%edi, %edi
	jle	L1161
	leal	21(%edi), %eax
	movl	$_puser, %ebx
	movl	$21, %esi
	movl	%eax, -16(%ebp)
L1165:
	movswl	_headspritestat(%esi,%esi), %edi
	cmpl	$-1, %edi
	je	L1163
	.p2align 4
	.p2align 3
L1164:
	movl	%edi, %eax
	movswl	_nextspritestat(%edi,%edi), %edi
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L1167
	movl	$292, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_memcpy
L1167:
	cmpl	$-1, %edi
	jne	L1164
L1163:
	addl	$1, %esi
	addl	$292, %ebx
	cmpl	-16(%ebp), %esi
	jne	L1165
L1161:
	movl	$_headspritestat, %esi
	.p2align 4
	.p2align 3
L1169:
	movswl	(%esi), %ebx
	cmpl	$-1, %ebx
	je	L1171
	.p2align 4
	.p2align 3
L1168:
	movswl	%bx, %eax
	movswl	_nextspritestat(%ebx,%ebx), %ebx
	call	__Z10KillSprites
	cmpl	$-1, %ebx
	jne	L1168
L1171:
	addl	$2, %esi
	cmpl	$_headspritestat+2048, %esi
	jne	L1169
	movl	$_SectUser, %ebx
	.p2align 4
	.p2align 3
L1170:
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L1172
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, (%ebx)
L1172:
	addl	$4, %ebx
	cmpl	$_SectUser+16384, %ebx
	jne	L1170
	movl	$16384, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_SectUser, (%esp)
	call	_memset
	movl	_connecthead, %eax
	movl	%eax, -16(%ebp)
	cmpl	$-1, %eax
	je	L1173
L1178:
	imull	$24124, -16(%ebp), %esi
	movl	_Player+22988(%esi), %eax
	leal	_Player+22988(%esi), %ebx
	cmpl	%ebx, %eax
	je	L1174
	movl	(%eax), %edi
	.p2align 4
	.p2align 3
L1175:
	movl	4(%eax), %ecx
	movl	%edi, (%ecx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edi)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	%edi, %eax
	movl	(%edi), %edi
	subl	$4, %esp
	cmpl	%eax, %ebx
	jne	L1175
L1174:
	movl	$0, _Player+22964(%esi)
	xorl	%eax, %eax
	movl	$0, _Player+352(%esi)
	movl	$0, _Player+356(%esi)
	movl	$-1, _Player+348(%esi)
	movl	$0, _Player+22996(%esi)
	movl	$0, _Player+23000(%esi)
	movl	$0, _Player+23048(%esi)
L1176:
	movl	$0, _Player+23052(%esi,%eax)
	movl	$0, _Player+23056(%esi,%eax)
	movl	$0, _Player+23060(%esi,%eax)
	movl	$0, _Player+23064(%esi,%eax)
	addl	$16, %eax
	cmpl	$48, %eax
	jb	L1176
	movl	$0, _Player+23052(%eax,%esi)
	movl	$-1, %edx
	movl	$0, _Player+23056(%eax,%esi)
	xorl	%eax, %eax
	movw	%ax, _Player+23200(%esi)
	movl	-16(%ebp), %eax
	movl	$0, _Player+23124(%esi)
	movl	_connectpoint2(,%eax,4), %eax
	movl	%ebx, _Player+22988(%esi)
	movl	$0, _Player+23128(%esi)
	movl	$0, _Player+23132(%esi)
	movl	$0, _Player+23136(%esi)
	movl	$0, _Player+23140(%esi)
	movl	$0, _Player+23144(%esi)
	movl	$0, _Player+23148(%esi)
	movl	$0, _Player+23188(%esi)
	movl	$0, _Player+23192(%esi)
	movl	$0, _Player+23196(%esi)
	movw	%dx, _Player+23238(%esi)
	movl	%ebx, _Player+22992(%esi)
	movl	%eax, -16(%ebp)
	cmpl	$-1, %eax
	jne	L1178
L1173:
	movl	_orgwalllist, %eax
	cmpl	$_orgwalllist, %eax
	je	L1179
	movl	(%eax), %ebx
L1180:
	movl	4(%eax), %edx
	movl	%ebx, (%edx)
	movl	4(%eax), %edx
	movl	%edx, 4(%ebx)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	%ebx, %eax
	movl	(%ebx), %ebx
	subl	$4, %esp
	cmpl	$_orgwalllist, %eax
	jne	L1180
L1179:
	movl	_orgwalloverlist, %eax
	cmpl	$_orgwalloverlist, %eax
	je	L1181
	movl	(%eax), %ebx
L1182:
	movl	4(%eax), %edx
	movl	%ebx, (%edx)
	movl	4(%eax), %edx
	movl	%edx, 4(%ebx)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	%ebx, %eax
	movl	(%ebx), %ebx
	subl	$4, %esp
	cmpl	$_orgwalloverlist, %eax
	jne	L1182
L1181:
	movl	_orgsectorceilinglist, %eax
	cmpl	$_orgsectorceilinglist, %eax
	je	L1183
	movl	(%eax), %ebx
L1184:
	movl	4(%eax), %edx
	movl	%ebx, (%edx)
	movl	4(%eax), %edx
	movl	%edx, 4(%ebx)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	%ebx, %eax
	movl	(%ebx), %ebx
	subl	$4, %esp
	cmpl	$_orgsectorceilinglist, %eax
	jne	L1184
L1183:
	movl	_orgsectorfloorlist, %eax
	cmpl	$_orgsectorfloorlist, %eax
	je	L1154
	movl	(%eax), %ebx
L1186:
	movl	4(%eax), %edx
	movl	%ebx, (%edx)
	movl	4(%eax), %edx
	movl	%edx, 4(%ebx)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	%ebx, %eax
	movl	(%ebx), %ebx
	subl	$4, %esp
	cmpl	$_orgsectorfloorlist, %eax
	jne	L1186
L1154:
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
L1227:
	.cfi_restore_state
	cmpb	$0, _DemoPlaying
	je	L1155
	cmpb	$1, _CommPlayers
	jbe	L1156
	movb	$1, _MultiPlayQuitFlag
L1157:
	movl	_osd, %eax
	andl	$-3, 1172(%eax)
	xorl	%eax, %eax
	call	__Z16OSD_CaptureInputi
	call	__Z13TerminateGamev
	jmp	L1155
L1156:
	movb	$1, _QuitFlag
	jmp	L1157
L1228:
	movl	$2, _FX_ErrorCode
	jmp	L1160
	.cfi_endproc
LFE171:
	.section .rdata,"dr"
LC108:
	.ascii "ON\0"
LC109:
	.ascii "off\0"
	.align 4
LC110:
	.ascii "MDR off for this match: not every player started with -mdr. Using the classic pedantic recording.\12\0"
	.align 4
LC111:
	.ascii "MDR features: weapons stay (-wpn) %s, bunny rockets (-trix) %s.\12\0"
	.align 4
LC112:
	.ascii "MDR: an option you asked for is off because not every player asked for it.\12\0"
	.align 4
LC113:
	.ascii "-wpn and -trix only work together with -mdr; ignored.\12\0"
LC114:
	.ascii "PLAYER %d\0"
	.align 4
LC115:
	.ascii "CheckVersion(): player %d has version %d, expecting %d\0"
LC116:
	.ascii "source/sw/src/network.cpp\0"
	.align 4
LC117:
	.ascii "You cannot play with different versions!\0"
	.align 4
LC118:
	.ascii "MDR: every player started with -mdr; non-pedantic simulation, extended demo format.\12\0"
	.align 4
LC119:
	.ascii "MDR demo: full input packets, non-pedantic simulation.\12\0"
	.text
	.p2align 4
	.globl	__Z12InitRunLevelv
	.def	__Z12InitRunLevelv;	.scl	2;	.type	32;	.endef
__Z12InitRunLevelv:
LFB176:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$68, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	cmpb	$0, _LoadGameOutsideMoveLoop
	jne	L1317
	cmpb	$0, _DemoMDR
	jne	L1318
L1233:
	xorl	%ebx, %ebx
	xorl	%eax, %eax
L1235:
	cmpb	$0, _CommEnabled
	je	L1237
	imull	$24124, _myconnectindex, %edx
	orl	_GameVersion, %eax
	movb	$38, 33(%esp)
	movl	%eax, 34(%esp)
	movl	%eax, _Player+24120(%edx)
	leal	33(%esp), %eax
	movl	$5, %edx
	call	__Z18netbroadcastpacketPhi
	cmpb	$0, _CommEnabled
	je	L1237
	call	__Z16waitforeverybodyv.part.0
L1237:
	movb	$0, _DemoMDRActive
	movl	$0, _DemoMDRFeatures
	cmpb	$0, _DemoPlaying
	je	L1238
	movzbl	_DemoExtendedFormat, %eax
	movb	%al, _DemoMDRActive
	testb	%al, %al
	jne	L1319
L1240:
	cmpb	$0, _DemoMode
	jne	L1249
	call	__Z8StopSongv.part.0
L1249:
	movl	$_LevelName, 4(%esp)
	movl	$_CacheLastLevel, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1320
L1250:
	movl	_myconnectindex, %edx
	cmpb	$0, _CommEnabled
	je	L1251
	movl	_connecthead, %eax
	cmpl	$-1, %eax
	je	L1256
	cmpb	$0, _gNet+17
	jne	L1254
	.p2align 5
	.p2align 4
	.p2align 3
L1255:
	imull	$24124, %eax, %ecx
	movl	_connectpoint2(,%eax,4), %eax
	andl	$-513, _Player+22968(%ecx)
	cmpl	$-1, %eax
	jne	L1255
L1256:
	imull	$24124, %edx, %eax
	movl	_Player+22968(%eax), %eax
L1253:
	movl	%eax, %ecx
	andl	$-1048577, %eax
	orl	$1048576, %ecx
	cmpb	$0, _gs+21
	cmovne	%ecx, %eax
	movl	%eax, %ecx
	andl	$-1073741825, %eax
	orl	$1073741824, %ecx
	cmpb	$0, _gs+64
	cmovne	%ecx, %eax
	imull	$24124, %edx, %ebx
	movl	%eax, _Player+22968(%ebx)
	cmpb	$0, _CommPlayerName
	je	L1321
L1262:
	movl	$_CommPlayerName, (%esp)
	call	_strupr
	leal	_Player+23262(%ebx), %eax
	movl	$_CommPlayerName, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	_Player+352(%ebx), %eax
	movl	_sprite, %esi
	movl	$-1171354717, %edx
	movzbl	_gs+39, %ecx
	addl	$17, %eax
	subl	%esi, %eax
	movb	%cl, _Player+23296(%ebx)
	addl	$16, %ecx
	mull	%edx
	movl	_Player+352(%ebx), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%cl, 17(%eax)
	movl	_Player+352(%ebx), %edx
	movl	%edx, %eax
	movzbl	17(%edx), %edx
	subl	%esi, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	movl	_User(,%eax,4), %eax
	movb	%dl, 262(%eax)
	cmpb	$0, _CommEnabled
	jne	L1322
L1263:
	call	__Z11InitNetVarsv
	call	__Z13PlayLevelSongv
	cmpb	$0, _PredictionOn
	je	L1264
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	call	__Z14InitPredictionP12PLAYERstruct.part.0
L1264:
	call	__ZL27MatchQualifiesForAutoRecordv
	cmpb	$0, _DemoInitOnce
	jne	L1265
	testb	%al, %al
	jne	L1323
L1266:
	call	__Z15DemoRecordSetupv
L1268:
	movb	$1, _DemoInitOnce
	cmpb	$0, _CommEnabled
	je	L1270
	call	__Z16waitforeverybodyv.part.0
L1270:
	call	__Z26DemoAutoRecordSyncMetadatav
	movl	_myconnectindex, %eax
	cmpb	$0, _CommEnabled
	je	L1272
	movl	_connecthead, %edx
	movswl	%dx, %ebx
	cmpw	$-1, %dx
	je	L1272
	movl	_GameVersion, %esi
	.p2align 4
	.p2align 3
L1285:
	cmpl	%eax, %ebx
	je	L1275
	imull	$24124, %ebx, %edx
	movl	_Player+24120(%edx), %edx
	andl	$-2147418113, %edx
	cmpl	%edx, %esi
	je	L1275
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jge	L1324
L1277:
	movl	$LC117, %eax
	call	__Z12adduserquotePKc
	movl	$LC117, %eax
	call	__Z12adduserquotePKc
	movl	$LC117, %eax
	call	__Z12adduserquotePKc
	movl	$LC117, %eax
	call	__Z12adduserquotePKc
	movl	$LC117, %eax
	call	__Z12adduserquotePKc
	movl	$LC117, %eax
	call	__Z12adduserquotePKc
	imull	$24124, %ebx, %eax
	movl	_Player+24120(%eax), %eax
	testl	%eax, %eax
	jne	L1316
	cmpb	$0, _CommEnabled
	je	L1316
	movl	$42, %ecx
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	movl	%ebx, %eax
	movb	$4, __ZL7tempbuf.lto_priv.0
	movl	$544567129, __ZL7tempbuf.lto_priv.0+1
	movl	$1852727651, __ZL7tempbuf.lto_priv.0+5
	movl	$1881175151, __ZL7tempbuf.lto_priv.0+9
	movl	$544825708, __ZL7tempbuf.lto_priv.0+13
	movl	$1752459639, __ZL7tempbuf.lto_priv.0+17
	movl	$1718182944, __ZL7tempbuf.lto_priv.0+21
	movl	$1701995878, __ZL7tempbuf.lto_priv.0+25
	movl	$1981838446, __ZL7tempbuf.lto_priv.0+29
	movl	$1769173605, __ZL7tempbuf.lto_priv.0+33
	movl	$561213039, __ZL7tempbuf.lto_priv.0+37
	movb	$0, __ZL7tempbuf.lto_priv.0+41
	call	__Z13netsendpacketiPhi
	cmpb	$0, _CommEnabled
	je	L1316
	movl	$42, %ecx
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	movl	%ebx, %eax
	movb	$4, __ZL7tempbuf.lto_priv.0
	movl	$544567129, __ZL7tempbuf.lto_priv.0+1
	movl	$1852727651, __ZL7tempbuf.lto_priv.0+5
	movl	$1881175151, __ZL7tempbuf.lto_priv.0+9
	movl	$544825708, __ZL7tempbuf.lto_priv.0+13
	movl	$1752459639, __ZL7tempbuf.lto_priv.0+17
	movl	$1718182944, __ZL7tempbuf.lto_priv.0+21
	movl	$1701995878, __ZL7tempbuf.lto_priv.0+25
	movl	$1981838446, __ZL7tempbuf.lto_priv.0+29
	movl	$1769173605, __ZL7tempbuf.lto_priv.0+33
	movl	$561213039, __ZL7tempbuf.lto_priv.0+37
	movb	$0, __ZL7tempbuf.lto_priv.0+41
	call	__Z13netsendpacketiPhi
	cmpb	$0, _CommEnabled
	je	L1316
	movl	$42, %ecx
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	movl	%ebx, %eax
	movb	$4, __ZL7tempbuf.lto_priv.0
	movl	$544567129, __ZL7tempbuf.lto_priv.0+1
	movl	$1852727651, __ZL7tempbuf.lto_priv.0+5
	movl	$1881175151, __ZL7tempbuf.lto_priv.0+9
	movl	$544825708, __ZL7tempbuf.lto_priv.0+13
	movl	$1752459639, __ZL7tempbuf.lto_priv.0+17
	movl	$1718182944, __ZL7tempbuf.lto_priv.0+21
	movl	$1701995878, __ZL7tempbuf.lto_priv.0+25
	movl	$1981838446, __ZL7tempbuf.lto_priv.0+29
	movl	$1769173605, __ZL7tempbuf.lto_priv.0+33
	movl	$561213039, __ZL7tempbuf.lto_priv.0+37
	movb	$0, __ZL7tempbuf.lto_priv.0+41
	call	__Z13netsendpacketiPhi
	cmpb	$0, _CommEnabled
	je	L1316
	movl	$42, %ecx
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	movl	%ebx, %eax
	movb	$4, __ZL7tempbuf.lto_priv.0
	movl	$544567129, __ZL7tempbuf.lto_priv.0+1
	movl	$1852727651, __ZL7tempbuf.lto_priv.0+5
	movl	$1881175151, __ZL7tempbuf.lto_priv.0+9
	movl	$544825708, __ZL7tempbuf.lto_priv.0+13
	movl	$1752459639, __ZL7tempbuf.lto_priv.0+17
	movl	$1718182944, __ZL7tempbuf.lto_priv.0+21
	movl	$1701995878, __ZL7tempbuf.lto_priv.0+25
	movl	$1981838446, __ZL7tempbuf.lto_priv.0+29
	movl	$1769173605, __ZL7tempbuf.lto_priv.0+33
	movl	$561213039, __ZL7tempbuf.lto_priv.0+37
	movb	$0, __ZL7tempbuf.lto_priv.0+41
	call	__Z13netsendpacketiPhi
	cmpb	$0, _CommEnabled
	je	L1316
	movl	$42, %ecx
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	movl	%ebx, %eax
	movb	$4, __ZL7tempbuf.lto_priv.0
	movl	$544567129, __ZL7tempbuf.lto_priv.0+1
	movl	$1852727651, __ZL7tempbuf.lto_priv.0+5
	movl	$1881175151, __ZL7tempbuf.lto_priv.0+9
	movl	$544825708, __ZL7tempbuf.lto_priv.0+13
	movl	$1752459639, __ZL7tempbuf.lto_priv.0+17
	movl	$1718182944, __ZL7tempbuf.lto_priv.0+21
	movl	$1701995878, __ZL7tempbuf.lto_priv.0+25
	movl	$1981838446, __ZL7tempbuf.lto_priv.0+29
	movl	$1769173605, __ZL7tempbuf.lto_priv.0+33
	movl	$561213039, __ZL7tempbuf.lto_priv.0+37
	movb	$0, __ZL7tempbuf.lto_priv.0+41
	call	__Z13netsendpacketiPhi
	cmpb	$0, _CommEnabled
	je	L1316
	movl	$42, %ecx
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	movl	%ebx, %eax
	movb	$4, __ZL7tempbuf.lto_priv.0
	movl	$544567129, __ZL7tempbuf.lto_priv.0+1
	movl	$1852727651, __ZL7tempbuf.lto_priv.0+5
	movl	$1881175151, __ZL7tempbuf.lto_priv.0+9
	movl	$544825708, __ZL7tempbuf.lto_priv.0+13
	movl	$1752459639, __ZL7tempbuf.lto_priv.0+17
	movl	$1718182944, __ZL7tempbuf.lto_priv.0+21
	movl	$1701995878, __ZL7tempbuf.lto_priv.0+25
	movl	$1981838446, __ZL7tempbuf.lto_priv.0+29
	movl	$1769173605, __ZL7tempbuf.lto_priv.0+33
	movl	$561213039, __ZL7tempbuf.lto_priv.0+37
	movb	$0, __ZL7tempbuf.lto_priv.0+41
	call	__Z13netsendpacketiPhi
L1316:
	movl	_myconnectindex, %eax
L1275:
	movl	_connectpoint2(,%ebx,4), %edx
	movswl	%dx, %ebx
	cmpw	$-1, %dx
	jne	L1285
L1272:
	imull	$24124, %eax, %eax
	movl	$0, _PlayClock
	movl	$0, _totalsynctics
	movl	$0, _totalclock
	addl	$_Player, %eax
	movl	$0, _totalclock+8
	movl	$0, _totalclock+12
	movl	$0, _ototalclock
	movl	$17, _randomseed
	movb	$2, _MoveSkip8
	movb	$0, _MoveSkip2
	movb	$1, _MoveSkip4
	movl	$0, _MoveThingsCount
	call	__Z15SetRedrawScreenP12PLAYERstruct
	movl	_gs+8, %eax
	call	_MV_SetVolume
	cmpb	$0, _gs+29
	jne	L1325
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1254:
	.cfi_restore_state
	imull	$24124, %eax, %ecx
	movl	_connectpoint2(,%eax,4), %eax
	orl	$512, _Player+22968(%ecx)
	cmpl	$-1, %eax
	jne	L1254
	jmp	L1256
	.p2align 4,,10
	.p2align 3
L1318:
	call	__ZL27MatchQualifiesForAutoRecordv
	testb	%al, %al
	je	L1233
	movl	_DemoMDRRequestedFeatures, %eax
	movl	$1, %ebx
	sall	$16, %eax
	andl	$196608, %eax
	orl	$1073741824, %eax
	jmp	L1235
	.p2align 4,,10
	.p2align 3
L1324:
	movl	%esi, 24(%esp)
	movl	%edx, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	$LC115, 12(%esp)
	movl	$589, 8(%esp)
	movl	$LC116, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1277
	.p2align 4,,10
	.p2align 3
L1317:
	movb	$0, _LoadGameOutsideMoveLoop
	cmpb	$0, _gs+29
	jne	L1326
L1231:
	call	__Z12SetCrosshairv
	call	__Z13PlayLevelSongv
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	call	__Z15SetRedrawScreenP12PLAYERstruct
	movb	$2, _MoveSkip8
	movl	$0, _totalsynctics
	movl	$0, _totalclock
	movl	$0, _totalclock+8
	movl	$0, _totalclock+12
	movl	$0, _ototalclock
	movl	$17, _randomseed
	movb	$0, _MoveSkip2
	movb	$1, _MoveSkip4
	movl	$0, _MoveThingsCount
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1238:
	.cfi_restore_state
	movl	_DemoMDRRequestedFeatures, %eax
	testb	%bl, %bl
	je	L1327
	andl	$3, %eax
	movb	$1, _DemoMDRActive
	movl	%eax, %ebx
	movl	_connecthead, %eax
	movswl	%ax, %edx
	cmpw	$-1, %ax
	je	L1243
	xorl	%esi, %esi
	.p2align 6
	.p2align 4
	.p2align 3
L1244:
	imull	$24124, %edx, %eax
	movl	_Player+24120(%eax), %ecx
	movl	%ecx, %eax
	sarl	$16, %ecx
	shrl	$30, %eax
	andl	%ecx, %ebx
	andl	$1, %eax
	xorl	$1, %eax
	orl	%eax, %esi
	movl	_connectpoint2(,%edx,4), %eax
	movswl	%ax, %edx
	cmpw	$-1, %ax
	jne	L1244
	movl	%esi, %eax
	testb	%al, %al
	je	L1243
	movb	$0, _DemoMDRActive
	movl	$LC110, (%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L1240
	.p2align 4,,10
	.p2align 3
L1251:
	imull	$24124, %edx, %eax
	movl	_Player+22968(%eax), %eax
	movl	%eax, %ecx
	andb	$-3, %ah
	orb	$2, %ch
	cmpb	$0, _gs+23
	cmovne	%ecx, %eax
	jmp	L1253
	.p2align 4,,10
	.p2align 3
L1265:
	testb	%al, %al
	je	L1268
	cmpb	$0, __ZL21DemoRecordCommandLine.lto_priv.0
	je	L1269
	movb	$0, _DemoRecording
	movb	$0, __ZL21DemoRecordCommandLine.lto_priv.0
L1269:
	call	__Z19DemoAutoRecordStartv
	cmpb	$0, _DemoRecording
	je	L1268
	jmp	L1266
	.p2align 4,,10
	.p2align 3
L1320:
	call	__Z10DoTheCachev
	jmp	L1250
	.p2align 4,,10
	.p2align 3
L1325:
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	jmp	__Z17StartAmbientSoundv
	.p2align 4,,10
	.p2align 3
L1322:
	.cfi_restore_state
	movzbl	_gs+21, %eax
	movb	$32, 33(%esp)
	movb	%al, 34(%esp)
	movzbl	_gs+39, %eax
	movl	$_CommPlayerName, 4(%esp)
	movb	%al, 35(%esp)
	leal	36(%esp), %eax
	movl	%eax, (%esp)
	call	_strcpy
	movl	$35, %edx
	leal	33(%esp), %eax
	call	__Z18netbroadcastpacketPhi
	jmp	L1263
	.p2align 4,,10
	.p2align 3
L1321:
	addl	$1, %edx
	movl	$LC114, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$_CommPlayerName, (%esp)
	call	_sprintf
	jmp	L1262
	.p2align 4,,10
	.p2align 3
L1327:
	testl	%eax, %eax
	je	L1240
	movzbl	_DemoMDR, %eax
	orb	__ZZ14DemoMDRResolvehE18ignoredNoticeShown, %al
	jne	L1240
	movb	$1, __ZZ14DemoMDRResolvehE18ignoredNoticeShown
	movl	$LC113, (%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L1240
	.p2align 4,,10
	.p2align 3
L1323:
	cmpb	$0, __ZL21DemoRecordCommandLine.lto_priv.0
	je	L1267
	movb	$0, _DemoRecording
	movb	$0, __ZL21DemoRecordCommandLine.lto_priv.0
L1267:
	call	__Z19DemoAutoRecordStartv
	jmp	L1266
	.p2align 4,,10
	.p2align 3
L1326:
	call	__Z17StartAmbientSoundv
	jmp	L1231
	.p2align 4,,10
	.p2align 3
L1243:
	imull	$24124, _myconnectindex, %eax
	movb	$0, _PedanticMode
	movl	%ebx, _DemoMDRFeatures
	movss	_Player+304(%eax), %xmm0
	movss	_Player+308(%eax), %xmm1
	unpcklps	%xmm0, %xmm0
	unpcklps	%xmm1, %xmm1
	movlps	%xmm1, __ZL9MDRCamAng.lto_priv.0
	movlps	%xmm0, __ZL11MDRCamHoriz.lto_priv.0
	movl	$LC118, (%esp)
	call	__Z10OSD_PrintfPKcz
	movl	_DemoMDRFeatures, %eax
	movl	%eax, %esi
	orl	_DemoMDRRequestedFeatures, %esi
	je	L1240
	movl	$LC108, %edx
	testb	$2, %al
	movl	$LC109, %ecx
	movl	$LC111, (%esp)
	cmovne	%edx, %ecx
	testb	$1, %al
	movl	$LC109, %eax
	cmovne	%edx, %eax
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	movl	_DemoMDRFeatures, %eax
	notl	%eax
	testl	%eax, _DemoMDRRequestedFeatures
	je	L1240
	movl	$LC112, (%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L1240
	.p2align 4,,10
	.p2align 3
L1319:
	movl	__ZL16DemoFileFeatures.lto_priv.0, %eax
	movb	$0, _PedanticMode
	andl	$3, %eax
	movl	%eax, _DemoMDRFeatures
	imull	$24124, _myconnectindex, %eax
	movss	_Player+304(%eax), %xmm0
	movss	_Player+308(%eax), %xmm1
	unpcklps	%xmm0, %xmm0
	unpcklps	%xmm1, %xmm1
	movlps	%xmm1, __ZL9MDRCamAng.lto_priv.0
	movlps	%xmm0, __ZL11MDRCamHoriz.lto_priv.0
	movl	$LC119, (%esp)
	call	__Z10OSD_PrintfPKcz
	movl	_DemoMDRFeatures, %eax
	testl	%eax, %eax
	je	L1240
	movl	$LC108, %edx
	testb	$2, %al
	movl	$LC109, %ecx
	movl	$LC111, (%esp)
	cmovne	%edx, %ecx
	testb	$1, %al
	movl	$LC109, %eax
	cmovne	%edx, %eax
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L1240
	.cfi_endproc
LFE176:
	.globl	_s_NinjaDuck
	.data
	.align 32
_s_NinjaDuck:
	.word	4162
	.space 2
	.long	10
	.long	__Z9NullNinjas
	.long	_s_NinjaDuck+16
	.word	4162
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaDuck+16
	.word	4166
	.space 2
	.long	10
	.long	__Z9NullNinjas
	.long	_s_NinjaDuck+48
	.word	4166
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaDuck+48
	.word	4170
	.space 2
	.long	10
	.long	__Z9NullNinjas
	.long	_s_NinjaDuck+80
	.word	4170
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaDuck+80
	.word	4174
	.space 2
	.long	10
	.long	__Z9NullNinjas
	.long	_s_NinjaDuck+112
	.word	4174
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaDuck+112
	.word	4178
	.space 2
	.long	10
	.long	__Z9NullNinjas
	.long	_s_NinjaDuck+144
	.word	4178
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaDuck+144
	.globl	_s_NinjaUzi
	.align 32
_s_NinjaUzi:
	.word	4116
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+16
	.word	4116
	.space 2
	.long	65536
	.long	__Z9CheckFires
	.long	_s_NinjaUzi+32
	.word	4117
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+48
	.word	4117
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+64
	.word	4116
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+80
	.word	4116
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+96
	.word	4117
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+112
	.word	4117
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+128
	.word	4116
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+144
	.word	4116
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+160
	.word	4117
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+176
	.word	4117
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+192
	.word	4116
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+208
	.word	4116
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+224
	.word	4117
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+240
	.word	4117
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+256
	.word	4116
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaUzi+256
	.word	4118
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+288
	.word	4118
	.space 2
	.long	65536
	.long	__Z9CheckFires
	.long	_s_NinjaUzi+304
	.word	4119
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+320
	.word	4119
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+336
	.word	4118
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+352
	.word	4118
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+368
	.word	4119
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+384
	.word	4119
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+400
	.word	4118
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+416
	.word	4118
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+432
	.word	4119
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+448
	.word	4119
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+464
	.word	4118
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+480
	.word	4118
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+496
	.word	4119
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+512
	.word	4119
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+528
	.word	4118
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaUzi+528
	.word	4120
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+560
	.word	4120
	.space 2
	.long	65536
	.long	__Z9CheckFires
	.long	_s_NinjaUzi+576
	.word	4121
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+592
	.word	4121
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+608
	.word	4120
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+624
	.word	4120
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+640
	.word	4121
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+656
	.word	4121
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+672
	.word	4120
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+688
	.word	4120
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+704
	.word	4121
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+720
	.word	4121
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+736
	.word	4120
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+752
	.word	4120
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+768
	.word	4121
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+784
	.word	4121
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+800
	.word	4120
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaUzi+800
	.word	4122
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+832
	.word	4122
	.space 2
	.long	65536
	.long	__Z9CheckFires
	.long	_s_NinjaUzi+848
	.word	4123
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+864
	.word	4123
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+880
	.word	4122
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+896
	.word	4122
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+912
	.word	4123
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+928
	.word	4123
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+944
	.word	4122
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+960
	.word	4122
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+976
	.word	4123
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+992
	.word	4123
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+1008
	.word	4122
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+1024
	.word	4122
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+1040
	.word	4123
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+1056
	.word	4123
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+1072
	.word	4122
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaUzi+1072
	.word	4124
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+1104
	.word	4124
	.space 2
	.long	65536
	.long	__Z9CheckFires
	.long	_s_NinjaUzi+1120
	.word	4125
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+1136
	.word	4125
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+1152
	.word	4124
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+1168
	.word	4124
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+1184
	.word	4125
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+1200
	.word	4125
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+1216
	.word	4124
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+1232
	.word	4124
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+1248
	.word	4125
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+1264
	.word	4125
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+1280
	.word	4124
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+1296
	.word	4124
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+1312
	.word	4125
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.long	_s_NinjaUzi+1328
	.word	4125
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_NinjaUzi+1344
	.word	4124
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaUzi+1344
	.globl	_s_NinjaStar
	.align 32
_s_NinjaStar:
	.word	4202
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaStar+16
	.word	4202
	.space 2
	.long	18
	.long	__Z9NullNinjas
	.long	_s_NinjaStar+32
	.word	4203
	.space 2
	.long	65536
	.long	__Z13InitEnemyStars
	.long	_s_NinjaStar+48
	.word	4203
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaStar+64
	.word	4204
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaStar+80
	.word	4204
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaStar+80
	.word	4205
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaStar+112
	.word	4205
	.space 2
	.long	18
	.long	__Z9NullNinjas
	.long	_s_NinjaStar+128
	.word	4206
	.space 2
	.long	65536
	.long	__Z13InitEnemyStars
	.long	_s_NinjaStar+144
	.word	4206
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaStar+160
	.word	4207
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaStar+176
	.word	4207
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaStar+176
	.word	4208
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaStar+208
	.word	4208
	.space 2
	.long	18
	.long	__Z9NullNinjas
	.long	_s_NinjaStar+224
	.word	4209
	.space 2
	.long	65536
	.long	__Z13InitEnemyStars
	.long	_s_NinjaStar+240
	.word	4209
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaStar+256
	.word	4210
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaStar+272
	.word	4210
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaStar+272
	.word	4208
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaStar+304
	.word	4208
	.space 2
	.long	18
	.long	__Z9NullNinjas
	.long	_s_NinjaStar+320
	.word	4209
	.space 2
	.long	65536
	.long	__Z13InitEnemyStars
	.long	_s_NinjaStar+336
	.word	4209
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaStar+352
	.word	4210
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaStar+368
	.word	4210
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaStar+368
	.word	4208
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaStar+400
	.word	4208
	.space 2
	.long	18
	.long	__Z9NullNinjas
	.long	_s_NinjaStar+416
	.word	4209
	.space 2
	.long	65536
	.long	__Z13InitEnemyStars
	.long	_s_NinjaStar+432
	.word	4209
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaStar+448
	.word	4210
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaStar+464
	.word	4210
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaStar+464
	.globl	_s_NinjaDeathFall
	.align 32
_s_NinjaDeathFall:
	.word	4222
	.space 2
	.long	14
	.long	__Z16DoActorDeathMoves
	.space 4
	.word	4223
	.space 2
	.long	14
	.long	__Z16DoActorDeathMoves
	.space 4
	.globl	_s_NinjaDeathJump
	.align 32
_s_NinjaDeathJump:
	.word	4219
	.space 2
	.long	14
	.long	__Z16DoActorDeathMoves
	.space 4
	.word	4220
	.space 2
	.long	14
	.long	__Z16DoActorDeathMoves
	.space 4
	.word	4221
	.space 2
	.long	14
	.long	__Z16DoActorDeathMoves
	.space 4
	.globl	_s_NinjaDead
	.align 32
_s_NinjaDead:
	.word	4224
	.space 2
	.long	14
	.long	__Z13DoActorDebriss
	.space 4
	.word	4225
	.space 2
	.long	65536
	.long	__Z14DoNinjaSpecials
	.space 4
	.word	4225
	.space 2
	.long	14
	.long	__Z13DoActorDebriss
	.space 4
	.word	4226
	.space 2
	.long	65536
	.long	__Z15QueueFloorBloods
	.space 4
	.word	4226
	.space 2
	.long	14
	.long	__Z13DoActorDebriss
	.space 4
	.globl	_s_NinjaHariKari
	.align 32
_s_NinjaHariKari:
	.word	4211
	.space 2
	.long	16
	.long	__Z9NullNinjas
	.space 4
	.word	4211
	.space 2
	.long	65536
	.long	__Z14DoNinjaSpecials
	.space 4
	.word	4212
	.space 2
	.long	200
	.long	__Z9NullNinjas
	.space 4
	.word	4213
	.space 2
	.long	65536
	.long	__Z15DoNinjaHariKaris
	.space 4
	.word	4213
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.space 4
	.word	4214
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.space 4
	.word	4215
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.space 4
	.word	4216
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.space 4
	.word	4217
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.space 4
	.word	4218
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.space 4
	.word	4218
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.space 4
	.globl	_s_NinjaDie
	.align 32
_s_NinjaDie:
	.word	4219
	.space 2
	.long	14
	.long	__Z9NullNinjas
	.space 4
	.word	4220
	.space 2
	.long	14
	.long	__Z9NullNinjas
	.space 4
	.word	4221
	.space 2
	.long	14
	.long	__Z9NullNinjas
	.space 4
	.word	4222
	.space 2
	.long	14
	.long	__Z9NullNinjas
	.space 4
	.word	4223
	.space 2
	.long	14
	.long	__Z9NullNinjas
	.space 4
	.word	4224
	.space 2
	.long	10
	.long	__Z9NullNinjas
	.space 4
	.word	4225
	.space 2
	.long	8
	.long	__Z9NullNinjas
	.space 4
	.word	4225
	.space 2
	.long	65536
	.long	__Z14DoNinjaSpecials
	.space 4
	.word	4225
	.space 2
	.long	4
	.long	__Z9NullNinjas
	.space 4
	.word	4226
	.space 2
	.long	65536
	.long	__Z15QueueFloorBloods
	.space 4
	.word	4226
	.space 2
	.long	2
	.long	__Z13DoActorDebriss
	.space 4
	.globl	_s_NinjaPain
	.align 32
_s_NinjaPain:
	.word	4219
	.space 2
	.long	15
	.long	__Z11DoNinjaPains
	.long	_s_NinjaPain+16
	.word	4220
	.space 2
	.long	15
	.long	__Z11DoNinjaPains
	.long	_s_NinjaPain+16
	.word	4100
	.space 2
	.long	15
	.long	__Z11DoNinjaPains
	.long	_s_NinjaPain+48
	.word	4100
	.space 2
	.long	15
	.long	__Z11DoNinjaPains
	.long	_s_NinjaPain+48
	.word	4104
	.space 2
	.long	15
	.long	__Z11DoNinjaPains
	.long	_s_NinjaPain+80
	.word	4104
	.space 2
	.long	15
	.long	__Z11DoNinjaPains
	.long	_s_NinjaPain+80
	.word	4108
	.space 2
	.long	15
	.long	__Z11DoNinjaPains
	.long	_s_NinjaPain+112
	.word	4108
	.space 2
	.long	15
	.long	__Z11DoNinjaPains
	.long	_s_NinjaPain+112
	.word	4112
	.space 2
	.long	15
	.long	__Z11DoNinjaPains
	.long	_s_NinjaPain+144
	.word	4112
	.space 2
	.long	15
	.long	__Z11DoNinjaPains
	.long	_s_NinjaPain+144
	.globl	_s_PlayerNinjaClimb
	.align 32
_s_PlayerNinjaClimb:
	.word	1024
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaClimb+16
	.word	1025
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaClimb+32
	.word	1026
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaClimb+48
	.word	1027
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaClimb
	.word	1028
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaClimb+80
	.word	1029
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaClimb+96
	.word	1030
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaClimb+112
	.word	1031
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaClimb+64
	.word	1032
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaClimb+144
	.word	1033
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaClimb+160
	.word	1034
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaClimb+176
	.word	1035
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaClimb+128
	.word	1036
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaClimb+208
	.word	1037
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaClimb+224
	.word	1038
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaClimb+240
	.word	1039
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaClimb+192
	.word	1040
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaClimb+272
	.word	1041
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaClimb+288
	.word	1042
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaClimb+304
	.word	1043
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaClimb+256
	.globl	_s_NinjaSit
	.align 32
_s_NinjaSit:
	.word	4162
	.space 2
	.long	10
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaSit
	.word	4166
	.space 2
	.long	10
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaSit+16
	.word	4170
	.space 2
	.long	10
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaSit+32
	.word	4174
	.space 2
	.long	10
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaSit+48
	.word	4178
	.space 2
	.long	10
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaSit+64
	.globl	_s_NinjaRise
	.align 32
_s_NinjaRise:
	.word	4162
	.space 2
	.long	10
	.long	__Z9NullNinjas
	.long	_s_NinjaRise+16
	.word	4096
	.space 2
	.long	10
	.long	__Z9NullNinjas
	.long	_s_NinjaRise+32
	.word	0
	.space 2
	.long	0
	.long	0
	.long	_sg_NinjaRun
	.word	4166
	.space 2
	.long	10
	.long	__Z9NullNinjas
	.long	_s_NinjaRise+64
	.word	4100
	.space 2
	.long	10
	.long	__Z9NullNinjas
	.long	_s_NinjaRise+80
	.word	0
	.space 2
	.long	0
	.long	0
	.long	_sg_NinjaRun
	.word	4170
	.space 2
	.long	10
	.long	__Z9NullNinjas
	.long	_s_NinjaRise+112
	.word	4104
	.space 2
	.long	10
	.long	__Z9NullNinjas
	.long	_s_NinjaRise+128
	.word	0
	.space 2
	.long	0
	.long	0
	.long	_sg_NinjaRun
	.word	4174
	.space 2
	.long	10
	.long	__Z9NullNinjas
	.long	_s_NinjaRise+160
	.word	4108
	.space 2
	.long	10
	.long	__Z9NullNinjas
	.long	_s_NinjaRise+176
	.word	0
	.space 2
	.long	0
	.long	0
	.long	_sg_NinjaRun
	.word	4178
	.space 2
	.long	10
	.long	__Z9NullNinjas
	.long	_s_NinjaRise+208
	.word	4112
	.space 2
	.long	10
	.long	__Z9NullNinjas
	.long	_s_NinjaRise+224
	.word	0
	.space 2
	.long	0
	.long	0
	.long	_sg_NinjaRun
	.globl	_s_NinjaFly
	.align 32
_s_NinjaFly:
	.word	4116
	.space 2
	.long	12
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaFly
	.word	4118
	.space 2
	.long	12
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaFly+16
	.word	4120
	.space 2
	.long	12
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaFly+32
	.word	4122
	.space 2
	.long	12
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaFly+48
	.word	4124
	.space 2
	.long	12
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaFly+64
	.globl	_s_PlayerNinjaSwim
	.align 32
_s_PlayerNinjaSwim:
	.word	1114
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSwim+16
	.word	1115
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSwim+32
	.word	1116
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSwim+48
	.word	1117
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSwim
	.word	1118
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSwim+80
	.word	1119
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSwim+96
	.word	1120
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSwim+112
	.word	1121
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSwim+64
	.word	1122
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSwim+144
	.word	1123
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSwim+160
	.word	1124
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSwim+176
	.word	1125
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSwim+128
	.word	1126
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSwim+208
	.word	1127
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSwim+224
	.word	1128
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSwim+240
	.word	1129
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSwim+192
	.word	1130
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSwim+272
	.word	1131
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSwim+288
	.word	1132
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSwim+304
	.word	1133
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSwim+256
	.globl	_s_PlayerNinjaCrawl
	.align 32
_s_PlayerNinjaCrawl:
	.word	1044
	.space 2
	.long	14
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaCrawl+16
	.word	1045
	.space 2
	.long	14
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaCrawl+32
	.word	1045
	.space 2
	.long	65536
	.long	__Z12DoFootPrintss
	.long	_s_PlayerNinjaCrawl+48
	.word	1046
	.space 2
	.long	14
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaCrawl+64
	.word	1045
	.space 2
	.long	14
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaCrawl+80
	.word	1045
	.space 2
	.long	65536
	.long	__Z12DoFootPrintss
	.long	_s_PlayerNinjaCrawl
	.word	1048
	.space 2
	.long	14
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaCrawl+112
	.word	1049
	.space 2
	.long	14
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaCrawl+128
	.word	1049
	.space 2
	.long	65536
	.long	__Z12DoFootPrintss
	.long	_s_PlayerNinjaCrawl+144
	.word	1050
	.space 2
	.long	14
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaCrawl+160
	.word	1049
	.space 2
	.long	14
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaCrawl+176
	.word	1049
	.space 2
	.long	65536
	.long	__Z12DoFootPrintss
	.long	_s_PlayerNinjaCrawl+96
	.word	1052
	.space 2
	.long	14
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaCrawl+208
	.word	1053
	.space 2
	.long	14
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaCrawl+224
	.word	1053
	.space 2
	.long	65536
	.long	__Z12DoFootPrintss
	.long	_s_PlayerNinjaCrawl+240
	.word	1054
	.space 2
	.long	14
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaCrawl+256
	.word	1053
	.space 2
	.long	14
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaCrawl+272
	.word	1053
	.space 2
	.long	65536
	.long	__Z12DoFootPrintss
	.long	_s_PlayerNinjaCrawl+192
	.word	1056
	.space 2
	.long	14
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaCrawl+304
	.word	1057
	.space 2
	.long	14
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaCrawl+320
	.word	1057
	.space 2
	.long	65536
	.long	__Z12DoFootPrintss
	.long	_s_PlayerNinjaCrawl+336
	.word	1058
	.space 2
	.long	14
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaCrawl+352
	.word	1057
	.space 2
	.long	14
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaCrawl+368
	.word	1057
	.space 2
	.long	65536
	.long	__Z12DoFootPrintss
	.long	_s_PlayerNinjaCrawl+288
	.word	1060
	.space 2
	.long	14
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaCrawl+400
	.word	1061
	.space 2
	.long	14
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaCrawl+416
	.word	1061
	.space 2
	.long	65536
	.long	__Z12DoFootPrintss
	.long	_s_PlayerNinjaCrawl+432
	.word	1062
	.space 2
	.long	14
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaCrawl+448
	.word	1061
	.space 2
	.long	14
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaCrawl+464
	.word	1061
	.space 2
	.long	65536
	.long	__Z12DoFootPrintss
	.long	_s_PlayerNinjaCrawl+384
	.globl	_s_PlayerNinjaFall
	.align 32
_s_PlayerNinjaFall:
	.word	1075
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaFall+16
	.word	1076
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaFall+16
	.word	1079
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaFall+48
	.word	1080
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaFall+48
	.word	1083
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaFall+80
	.word	1084
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaFall+80
	.word	1087
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaFall+112
	.word	1088
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaFall+112
	.word	1091
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaFall+144
	.word	1092
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaFall+144
	.globl	_s_PlayerNinjaJump
	.align 32
_s_PlayerNinjaJump:
	.word	1074
	.space 2
	.long	24
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaJump+16
	.word	1075
	.space 2
	.long	24
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaJump+32
	.word	1076
	.space 2
	.long	24
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaJump+48
	.word	1077
	.space 2
	.long	24
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaJump+48
	.word	1078
	.space 2
	.long	24
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaJump+80
	.word	1079
	.space 2
	.long	24
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaJump+96
	.word	1080
	.space 2
	.long	24
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaJump+112
	.word	1081
	.space 2
	.long	24
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaJump+112
	.word	1082
	.space 2
	.long	24
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaJump+144
	.word	1083
	.space 2
	.long	24
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaJump+160
	.word	1084
	.space 2
	.long	24
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaJump+176
	.word	1085
	.space 2
	.long	24
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaJump+176
	.word	1086
	.space 2
	.long	24
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaJump+208
	.word	1087
	.space 2
	.long	24
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaJump+224
	.word	1088
	.space 2
	.long	24
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaJump+240
	.word	1089
	.space 2
	.long	24
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaJump+240
	.word	1090
	.space 2
	.long	24
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaJump+272
	.word	1091
	.space 2
	.long	24
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaJump+288
	.word	1092
	.space 2
	.long	24
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaJump+304
	.word	1093
	.space 2
	.long	24
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaJump+304
	.globl	_s_PlayerNinjaRun
	.align 32
_s_PlayerNinjaRun:
	.word	1094
	.space 2
	.long	262158
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaRun+16
	.word	1095
	.space 2
	.long	262158
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaRun+32
	.word	1095
	.space 2
	.long	65536
	.long	__Z12DoFootPrintss
	.long	_s_PlayerNinjaRun+48
	.word	1096
	.space 2
	.long	262158
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaRun+64
	.word	1097
	.space 2
	.long	262158
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaRun+80
	.word	1097
	.space 2
	.long	65536
	.long	__Z12DoFootPrintss
	.long	_s_PlayerNinjaRun
	.word	1098
	.space 2
	.long	262158
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaRun+112
	.word	1099
	.space 2
	.long	262158
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaRun+128
	.word	1099
	.space 2
	.long	65536
	.long	__Z12DoFootPrintss
	.long	_s_PlayerNinjaRun+144
	.word	1100
	.space 2
	.long	262158
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaRun+160
	.word	1101
	.space 2
	.long	262158
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaRun+176
	.word	1101
	.space 2
	.long	65536
	.long	__Z12DoFootPrintss
	.long	_s_PlayerNinjaRun+96
	.word	1102
	.space 2
	.long	262158
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaRun+208
	.word	1103
	.space 2
	.long	262158
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaRun+224
	.word	1103
	.space 2
	.long	65536
	.long	__Z12DoFootPrintss
	.long	_s_PlayerNinjaRun+240
	.word	1104
	.space 2
	.long	262158
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaRun+256
	.word	1105
	.space 2
	.long	262158
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaRun+272
	.word	1105
	.space 2
	.long	65536
	.long	__Z12DoFootPrintss
	.long	_s_PlayerNinjaRun+192
	.word	1106
	.space 2
	.long	262158
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaRun+304
	.word	1107
	.space 2
	.long	262158
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaRun+320
	.word	1107
	.space 2
	.long	65536
	.long	__Z12DoFootPrintss
	.long	_s_PlayerNinjaRun+336
	.word	1108
	.space 2
	.long	262158
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaRun+352
	.word	1109
	.space 2
	.long	262158
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaRun+368
	.word	1109
	.space 2
	.long	65536
	.long	__Z12DoFootPrintss
	.long	_s_PlayerNinjaRun+288
	.word	1110
	.space 2
	.long	262158
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaRun+400
	.word	1111
	.space 2
	.long	262158
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaRun+416
	.word	1111
	.space 2
	.long	65536
	.long	__Z12DoFootPrintss
	.long	_s_PlayerNinjaRun+432
	.word	1112
	.space 2
	.long	262158
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaRun+448
	.word	1113
	.space 2
	.long	262158
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaRun+464
	.word	1113
	.space 2
	.long	65536
	.long	__Z12DoFootPrintss
	.long	_s_PlayerNinjaRun+384
	.globl	_s_PlayerNinjaStand
	.align 32
_s_PlayerNinjaStand:
	.word	1094
	.space 2
	.long	10
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaStand
	.word	1098
	.space 2
	.long	10
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaStand+16
	.word	1102
	.space 2
	.long	10
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaStand+32
	.word	1106
	.space 2
	.long	10
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaStand+48
	.word	1110
	.space 2
	.long	10
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaStand+64
	.globl	_sg_NinjaDuck
	.align 4
_sg_NinjaDuck:
	.long	_s_NinjaDuck
	.long	_s_NinjaDuck+32
	.long	_s_NinjaDuck+64
	.long	_s_NinjaDuck+96
	.long	_s_NinjaDuck+128
	.globl	_sg_NinjaUzi
	.align 4
_sg_NinjaUzi:
	.long	_s_NinjaUzi
	.long	_s_NinjaUzi+272
	.long	_s_NinjaUzi+544
	.long	_s_NinjaUzi+816
	.long	_s_NinjaUzi+1088
	.globl	_sg_NinjaStar
	.align 4
_sg_NinjaStar:
	.long	_s_NinjaStar
	.long	_s_NinjaStar+96
	.long	_s_NinjaStar+192
	.long	_s_NinjaStar+288
	.long	_s_NinjaStar+384
	.globl	_sg_NinjaDeathFall
	.align 4
_sg_NinjaDeathFall:
	.long	_s_NinjaDeathFall
	.globl	_sg_NinjaDeathJump
	.align 4
_sg_NinjaDeathJump:
	.long	_s_NinjaDeathJump
	.globl	_sg_NinjaDead
	.align 4
_sg_NinjaDead:
	.long	_s_NinjaDead
	.globl	_sg_NinjaHariKari
	.align 4
_sg_NinjaHariKari:
	.long	_s_NinjaHariKari
	.long	_s_NinjaHariKari
	.long	_s_NinjaHariKari
	.long	_s_NinjaHariKari
	.long	_s_NinjaHariKari
	.globl	_sg_NinjaDie
	.align 4
_sg_NinjaDie:
	.long	_s_NinjaDie
	.globl	_sg_NinjaPain
	.align 4
_sg_NinjaPain:
	.long	_s_NinjaPain
	.long	_s_NinjaPain+32
	.long	_s_NinjaPain+64
	.long	_s_NinjaPain+96
	.long	_s_NinjaPain+128
	.globl	_sg_PlayerNinjaClimb
	.align 4
_sg_PlayerNinjaClimb:
	.long	_s_PlayerNinjaClimb
	.long	_s_PlayerNinjaClimb+64
	.long	_s_PlayerNinjaClimb+128
	.long	_s_PlayerNinjaClimb+192
	.long	_s_PlayerNinjaClimb+256
	.globl	_sg_NinjaSit
	.align 4
_sg_NinjaSit:
	.long	_s_NinjaSit
	.long	_s_NinjaSit+16
	.long	_s_NinjaSit+32
	.long	_s_NinjaSit+48
	.long	_s_NinjaSit+64
	.globl	_sg_NinjaRise
	.align 4
_sg_NinjaRise:
	.long	_s_NinjaRise
	.long	_s_NinjaRise+48
	.long	_s_NinjaRise+96
	.long	_s_NinjaRise+144
	.long	_s_NinjaRise+192
	.globl	_sg_NinjaFly
	.align 4
_sg_NinjaFly:
	.long	_s_NinjaFly
	.long	_s_NinjaFly+16
	.long	_s_NinjaFly+32
	.long	_s_NinjaFly+48
	.long	_s_NinjaFly+64
	.globl	_sg_PlayerNinjaSwim
	.align 4
_sg_PlayerNinjaSwim:
	.long	_s_PlayerNinjaSwim
	.long	_s_PlayerNinjaSwim+64
	.long	_s_PlayerNinjaSwim+128
	.long	_s_PlayerNinjaSwim+192
	.long	_s_PlayerNinjaSwim+256
	.globl	_sg_PlayerNinjaCrawl
	.align 4
_sg_PlayerNinjaCrawl:
	.long	_s_PlayerNinjaCrawl
	.long	_s_PlayerNinjaCrawl+96
	.long	_s_PlayerNinjaCrawl+192
	.long	_s_PlayerNinjaCrawl+288
	.long	_s_PlayerNinjaCrawl+384
	.globl	_sg_PlayerNinjaFall
	.align 4
_sg_PlayerNinjaFall:
	.long	_s_PlayerNinjaFall
	.long	_s_PlayerNinjaFall+32
	.long	_s_PlayerNinjaFall+64
	.long	_s_PlayerNinjaFall+96
	.long	_s_PlayerNinjaFall+128
	.globl	_sg_PlayerNinjaJump
	.align 4
_sg_PlayerNinjaJump:
	.long	_s_PlayerNinjaJump
	.long	_s_PlayerNinjaJump+64
	.long	_s_PlayerNinjaJump+128
	.long	_s_PlayerNinjaJump+192
	.long	_s_PlayerNinjaJump+256
	.globl	_sg_PlayerNinjaRun
	.align 4
_sg_PlayerNinjaRun:
	.long	_s_PlayerNinjaRun
	.long	_s_PlayerNinjaRun+96
	.long	_s_PlayerNinjaRun+192
	.long	_s_PlayerNinjaRun+288
	.long	_s_PlayerNinjaRun+384
	.globl	_sg_PlayerNinjaStand
	.align 4
_sg_PlayerNinjaStand:
	.long	_s_PlayerNinjaStand
	.long	_s_PlayerNinjaStand+16
	.long	_s_PlayerNinjaStand+32
	.long	_s_PlayerNinjaStand+48
	.long	_s_PlayerNinjaStand+64
.lcomm __ZZ14DemoMDRResolvehE18ignoredNoticeShown,1,1
	.globl	_DemoMDRRequestedFeatures
	.bss
	.align 4
_DemoMDRRequestedFeatures:
	.space 4
	.globl	_GameVersion
	.data
	.align 4
_GameVersion:
	.long	20
	.globl	_DemoMDR
	.bss
_DemoMDR:
	.space 1
	.globl	__ZL21DemoRecordCommandLine.lto_priv.0
__ZL21DemoRecordCommandLine.lto_priv.0:
	.space 1
	.globl	_RedBookSong
	.section .rdata,"dr"
	.align 32
_RedBookSong:
	.ascii "\2\4\11\14\12\5\6\10\13\14\5\12\4\6\11\7\12\10\7\11\12\13\5\13\10\7\15\5\6\15\0"
	.space 9
	.align 4
__ZZ11BonusScreenvE11s_BonusAnim:
	.long	__ZZ11BonusScreenvE12s_BonusPunch
	.long	__ZZ11BonusScreenvE11s_BonusKick
	.long	__ZZ11BonusScreenvE11s_BonusGrab
	.data
	.align 32
__ZZ11BonusScreenvE11s_BonusRest:
	.word	5121
	.space 2
	.long	50
	.long	0
	.space 4
	.word	5122
	.space 2
	.long	50
	.long	0
	.space 4
	.word	5123
	.space 2
	.long	50
	.long	0
	.space 4
	.word	5122
	.space 2
	.long	50
	.long	0
	.long	__ZZ11BonusScreenvE11s_BonusRest
.lcomm __ZGVZ11BonusScreenvE11s_BonusRest,8,8
	.align 32
__ZZ11BonusScreenvE11s_BonusGrab:
	.word	5151
	.space 2
	.long	20
	.long	0
	.space 4
	.word	5152
	.space 2
	.long	20
	.long	0
	.space 4
	.word	5153
	.space 2
	.long	20
	.long	0
	.space 4
	.word	5153
	.space 2
	.long	65536
	.long	__Z14BonusGrabSounds
	.space 4
	.word	5154
	.space 2
	.long	20
	.long	0
	.space 4
	.word	5155
	.space 2
	.long	20
	.long	0
	.space 4
	.word	5156
	.space 2
	.long	20
	.long	0
	.space 4
	.word	5157
	.space 2
	.long	20
	.long	0
	.space 4
	.word	5158
	.space 2
	.long	20
	.long	0
	.space 4
	.word	5159
	.space 2
	.long	20
	.long	0
	.space 4
	.word	5160
	.space 2
	.long	90
	.long	0
	.space 4
	.word	5160
	.space 2
	.long	20
	.long	0
	.space 4
.lcomm __ZGVZ11BonusScreenvE11s_BonusGrab,8,8
	.align 32
__ZZ11BonusScreenvE11s_BonusKick:
	.word	5136
	.space 2
	.long	8
	.long	0
	.space 4
	.word	5137
	.space 2
	.long	8
	.long	0
	.space 4
	.word	5138
	.space 2
	.long	8
	.long	0
	.space 4
	.word	5138
	.space 2
	.long	65536
	.long	__Z14BonusKickSounds
	.space 4
	.word	5139
	.space 2
	.long	8
	.long	0
	.space 4
	.word	5140
	.space 2
	.long	8
	.long	0
	.space 4
	.word	5141
	.space 2
	.long	8
	.long	0
	.space 4
	.word	5142
	.space 2
	.long	8
	.long	0
	.space 4
	.word	5143
	.space 2
	.long	8
	.long	0
	.space 4
	.word	5144
	.space 2
	.long	8
	.long	0
	.space 4
	.word	5145
	.space 2
	.long	8
	.long	0
	.space 4
	.word	5146
	.space 2
	.long	8
	.long	0
	.space 4
	.word	5147
	.space 2
	.long	8
	.long	0
	.space 4
	.word	5148
	.space 2
	.long	8
	.long	0
	.space 4
	.word	5150
	.space 2
	.long	90
	.long	0
	.space 4
	.word	5150
	.space 2
	.long	8
	.long	0
	.space 4
.lcomm __ZGVZ11BonusScreenvE11s_BonusKick,8,8
	.align 32
__ZZ11BonusScreenvE12s_BonusPunch:
	.word	5121
	.space 2
	.long	8
	.long	0
	.space 4
	.word	5122
	.space 2
	.long	8
	.long	0
	.space 4
	.word	5123
	.space 2
	.long	8
	.long	0
	.space 4
	.word	5123
	.space 2
	.long	65536
	.long	__Z15BonusPunchSounds
	.space 4
	.word	5124
	.space 2
	.long	8
	.long	0
	.space 4
	.word	5125
	.space 2
	.long	8
	.long	0
	.space 4
	.word	5126
	.space 2
	.long	8
	.long	0
	.space 4
	.word	5127
	.space 2
	.long	8
	.long	0
	.space 4
	.word	5128
	.space 2
	.long	8
	.long	0
	.space 4
	.word	5129
	.space 2
	.long	8
	.long	0
	.space 4
	.word	5130
	.space 2
	.long	8
	.long	0
	.space 4
	.word	5131
	.space 2
	.long	8
	.long	0
	.space 4
	.word	5132
	.space 2
	.long	8
	.long	0
	.space 4
	.word	5133
	.space 2
	.long	8
	.long	0
	.space 4
	.word	5135
	.space 2
	.long	90
	.long	0
	.space 4
	.word	5135
	.space 2
	.long	8
	.long	0
	.space 4
.lcomm __ZGVZ11BonusScreenvE12s_BonusPunch,8,8
	.globl	_totalclocklock
	.bss
	.align 8
_totalclocklock:
	.space 16
	.globl	_PlayerQuitMenuLevel
	.data
	.align 2
_PlayerQuitMenuLevel:
	.word	-1
	.globl	_ControlPanelType
	.bss
	.align 4
_ControlPanelType:
	.space 4
	.globl	_NoDemoStartup
_NoDemoStartup:
	.space 1
	.globl	_InMenuLevel
_InMenuLevel:
	.space 1
	.globl	_FirstTimeIntoGame
_FirstTimeIntoGame:
	.space 1
	.globl	_wfe_Show
_wfe_Show:
	.space 1
	.globl	_MultiPlayQuitFlag
_MultiPlayQuitFlag:
	.space 1
	.globl	_FlagCaptureBlueCount
	.align 4
_FlagCaptureBlueCount:
	.space 4
	.globl	_FlagCaptureRedCount
	.align 4
_FlagCaptureRedCount:
	.space 4
	.globl	_BossSpriteNum
	.data
	.align 4
_BossSpriteNum:
	.word	-1
	.word	-1
	.word	-1
	.globl	_zillawasseen
	.bss
_zillawasseen:
	.space 1
	.globl	_sumowasseen
_sumowasseen:
	.space 1
	.globl	_serpwasseen
_serpwasseen:
	.space 1
	.globl	_left_foot
_left_foot:
	.space 1
	.globl	_AnimCnt
	.align 2
_AnimCnt:
	.space 2
	.globl	_FinishedLevel
_FinishedLevel:
	.space 1
	.globl	_PlaxCeilGlobZadjust
	.align 4
_PlaxCeilGlobZadjust:
	.space 4
	.globl	_PlaxFloorGlobZadjust
	.align 4
_PlaxFloorGlobZadjust:
	.space 4
	.globl	_wait_active_check_offset
	.align 2
_wait_active_check_offset:
	.space 2
	.globl	_PlayerGravity
	.data
_PlayerGravity:
	.byte	24
	.globl	_ChopTics
	.bss
	.align 4
_ChopTics:
	.space 4
	.globl	_orgsectorfloorlist
	.align 8
_orgsectorfloorlist:
	.space 8
	.globl	_orgsectorceilinglist
	.align 8
_orgsectorceilinglist:
	.space 8
	.globl	_orgwalloverlist
	.align 8
_orgwalloverlist:
	.space 8
	.globl	_orgwalllist
	.align 8
_orgwalllist:
	.space 8
	.globl	_oscilationclock
	.align 4
_oscilationclock:
	.space 4
	.globl	_mirrorcnt
	.align 2
_mirrorcnt:
	.space 2
	.globl	_mirrorinview
_mirrorinview:
	.space 1
	.globl	_mirror
	.align 32
_mirror:
	.space 288
	.globl	_PlayerNinjaActionSet
	.data
	.align 32
_PlayerNinjaActionSet:
	.long	_sg_PlayerNinjaStand
	.long	_sg_PlayerNinjaRun
	.long	_sg_PlayerNinjaJump
	.long	_sg_PlayerNinjaFall
	.long	_sg_PlayerNinjaCrawl
	.long	_sg_PlayerNinjaSwim
	.long	_sg_NinjaFly
	.long	_sg_NinjaRise
	.long	_sg_NinjaSit
	.long	0
	.long	_sg_PlayerNinjaClimb
	.long	_sg_NinjaPain
	.long	_sg_NinjaDie
	.long	_sg_NinjaHariKari
	.long	_sg_NinjaDead
	.long	_sg_NinjaDeathJump
	.long	_sg_NinjaDeathFall
	.long	_sg_NinjaStar
	.long	_sg_NinjaUzi
	.word	1000
	.word	1024
	.long	_sg_NinjaStar
	.long	_sg_NinjaUzi
	.space 16
	.word	800
	.word	1024
	.space 8
	.long	0
	.space 4
	.long	_sg_NinjaDuck
	.long	_sg_PlayerNinjaSwim
	.globl	_sg_NinjaRun
	.align 4
_sg_NinjaRun:
	.long	_s_NinjaRun
	.long	_s_NinjaRun+64
	.long	_s_NinjaRun+128
	.long	_s_NinjaRun+192
	.long	_s_NinjaRun+256
	.globl	_s_NinjaRun
	.align 32
_s_NinjaRun:
	.word	4096
	.space 2
	.long	262162
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaRun+16
	.word	4097
	.space 2
	.long	262162
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaRun+32
	.word	4098
	.space 2
	.long	262162
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaRun+48
	.word	4099
	.space 2
	.long	262162
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaRun
	.word	4100
	.space 2
	.long	262162
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaRun+80
	.word	4101
	.space 2
	.long	262162
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaRun+96
	.word	4102
	.space 2
	.long	262162
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaRun+112
	.word	4103
	.space 2
	.long	262162
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaRun+64
	.word	4104
	.space 2
	.long	262162
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaRun+144
	.word	4105
	.space 2
	.long	262162
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaRun+160
	.word	4106
	.space 2
	.long	262162
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaRun+176
	.word	4107
	.space 2
	.long	262162
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaRun+128
	.word	4108
	.space 2
	.long	262162
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaRun+208
	.word	4109
	.space 2
	.long	262162
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaRun+224
	.word	4110
	.space 2
	.long	262162
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaRun+240
	.word	4111
	.space 2
	.long	262162
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaRun+192
	.word	4112
	.space 2
	.long	262162
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaRun+272
	.word	4113
	.space 2
	.long	262162
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaRun+288
	.word	4114
	.space 2
	.long	262162
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaRun+304
	.word	4115
	.space 2
	.long	262162
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaRun+256
	.globl	_SpawnPositionUsed
	.bss
	.align 4
_SpawnPositionUsed:
	.space 9
	.section .rdata,"dr"
	.align 4
__ZZ19InitMultiPlayerInfovE13MultiStatList:
	.word	600
	.word	610
	.globl	_LoWangsQueue
	.bss
	.align 32
_LoWangsQueue:
	.space 32
	.globl	_GenericQueue
	.align 32
_GenericQueue:
	.space 64
	.globl	_FloorBloodQueue
	.align 32
_FloorBloodQueue:
	.space 64
	.globl	_WallBloodQueue
	.align 32
_WallBloodQueue:
	.space 64
	.globl	_HoleQueue
	.align 32
_HoleQueue:
	.space 128
	.globl	_StarQueue
	.align 32
_StarQueue:
	.space 64
	.globl	_LoWangsQueueHead
	.align 2
_LoWangsQueueHead:
	.space 2
	.globl	_GenericQueueHead
	.align 2
_GenericQueueHead:
	.space 2
	.globl	_FloorBloodQueueHead
	.align 2
_FloorBloodQueueHead:
	.space 2
	.globl	_WallBloodQueueHead
	.align 2
_WallBloodQueueHead:
	.space 2
	.globl	_HoleQueueHead
	.align 2
_HoleQueueHead:
	.space 2
	.globl	_StarQueueHead
	.align 2
_StarQueueHead:
	.space 2
	.globl	_puser
	.align 32
_puser:
	.space 2336
	.globl	_MoveThingsCount
	.align 4
_MoveThingsCount:
	.space 4
	.globl	_MoveSkip8
_MoveSkip8:
	.space 1
	.globl	_PlayClock
	.align 4
_PlayClock:
	.space 4
	.globl	_ArgCheat
_ArgCheat:
	.space 1
	.globl	_PlayingLevel
	.data
	.align 2
_PlayingLevel:
	.word	-1
.lcomm __ZZ9InitLevelvE10DemoNumber,4,4
	.globl	_DemoInitOnce
	.bss
_DemoInitOnce:
	.space 1
	.globl	_NewGame
	.data
_NewGame:
	.byte	1
	.globl	_FinishAnim
	.bss
_FinishAnim:
	.space 1
	.globl	_LoadGameOutsideMoveLoop
_LoadGameOutsideMoveLoop:
	.space 1
	.globl	_britable
	.align 32
_britable:
	.space 4096
	.globl	_sqrtable_old
	.align 32
_sqrtable_old:
	.space 4096
	.globl	_shlookup
	.align 32
_shlookup:
	.space 8704
	.globl	_sqrtable
	.align 32
_sqrtable:
	.space 8192
	.globl	__ZL9qradarang.lto_priv.0
	.align 32
__ZL9qradarang.lto_priv.0:
	.space 40960
	.globl	__ZL8radarang.lto_priv.0
	.align 32
__ZL8radarang.lto_priv.0:
	.space 2560
	.globl	_sloptable
	.align 32
_sloptable:
	.space 131072
	.globl	_reciptable
	.align 32
_reciptable:
	.space 8192
.lcomm __ZZL16engineLoadTablesvE12tablesloaded,1,1
	.globl	_hicinitcounter
	.align 4
_hicinitcounter:
	.space 4
	.globl	_maxspritesonscreen
	.align 4
_maxspritesonscreen:
	.space 4
	.globl	_parallaxvisibility
	.align 4
_parallaxvisibility:
	.space 4
	.globl	_searchstat
	.align 2
_searchstat:
	.space 2
	.globl	_searchit
	.align 2
_searchit:
	.space 2
	.globl	_voxscale
	.align 32
_voxscale:
	.space 8192
	.globl	_voxflags
	.align 32
_voxflags:
	.space 2048
	.globl	__ZL7voxlock.lto_priv.0
	.align 32
__ZL7voxlock.lto_priv.0:
	.space 10240
	.globl	_voxoff
	.align 32
_voxoff:
	.space 40960
	.globl	__ZL8lowrecip.lto_priv.0
	.align 32
__ZL8lowrecip.lto_priv.0:
	.space 4096
	.globl	_showinvisibility
_showinvisibility:
	.space 1
	.globl	_rotatesprite_yxaspect
	.align 4
_rotatesprite_yxaspect:
	.space 4
	.globl	_rotatesprite_y_offset
	.align 4
_rotatesprite_y_offset:
	.space 4
	.globl	__ZL13preinitcalled.lto_priv.0
	.align 4
__ZL13preinitcalled.lto_priv.0:
	.space 4
	.globl	_AutoNet
_AutoNet:
	.space 1
	.globl	_Auto
	.align 32
_Auto:
	.space 40
	.section .rdata,"dr"
LC120:
	.ascii "swchan\0"
LC121:
	.ascii "swgimme\0"
LC122:
	.ascii "swtrek##\0"
LC123:
	.ascii "swgreed\0"
LC124:
	.ascii "swghost\0"
LC125:
	.ascii "swstart\0"
LC126:
	.ascii "swres\0"
LC127:
	.ascii "swloc\0"
LC128:
	.ascii "swmap\0"
LC129:
	.ascii "swsave\0"
LC130:
	.ascii "sound\0"
LC131:
	.ascii "winpachinko\0"
LC132:
	.ascii "config\0"
LC133:
	.ascii "swtrix\0"
LC134:
	.ascii "swname\0"
	.data
	.align 32
_pre_commands:
	.long	LC120
	.long	__Z10CheatInputv
	.long	LC121
	.long	__Z10CheatInputv
	.long	LC122
	.long	__Z10CheatInputv
	.long	LC123
	.long	__Z10CheatInputv
	.long	LC124
	.long	__Z10CheatInputv
	.long	LC125
	.long	__Z10CheatInputv
	.long	LC126
	.long	__Z10CheatInputv
	.long	LC127
	.long	__Z10CheatInputv
	.long	LC128
	.long	__Z10CheatInputv
	.long	LC129
	.long	__Z10CheatInputv
	.long	LC130
	.long	__Z13CON_SoundTestv
	.long	LC131
	.long	__Z15CON_WinPachinkov
	.long	LC132
	.long	__Z13CON_LoadSetupv
	.long	LC133
	.long	__Z9CON_Bunnyv
	.long	LC134
	.long	__Z19CON_MultiNameChangev
	.long	0
	.long	0
	.globl	__ZL8netready.lto_priv.0
	.bss
	.align 4
__ZL8netready.lto_priv.0:
	.space 4
	.globl	__ZL8crctable.lto_priv.0
	.align 32
__ZL8crctable.lto_priv.0:
	.space 1024
	.globl	__ZL8zerochar.lto_priv.0
__ZL8zerochar.lto_priv.0:
	.space 1
	.globl	__ZL9lockrecip.lto_priv.0
	.align 32
__ZL9lockrecip.lto_priv.0:
	.space 800
.lcomm __ZL11g_cacheInit,1,1
	.globl	__ZL9artfilplc.lto_priv.0
	.align 4
__ZL9artfilplc.lto_priv.0:
	.space 4
	.globl	__ZL9artfilnum.lto_priv.0
	.align 4
__ZL9artfilnum.lto_priv.0:
	.space 4
	.globl	__ZL6artfil.lto_priv.0
	.align 4
__ZL6artfil.lto_priv.0:
	.space 4
	.globl	__ZL9g_vm_data.lto_priv.0
	.align 4
__ZL9g_vm_data.lto_priv.0:
	.space 4
.lcomm __ZL9g_vm_size,4,4
	.globl	__ZL11artfilename.lto_priv.0
	.align 4
__ZL11artfilename.lto_priv.0:
	.space 20
	.globl	__ZL23PanelBaseTileSizesSaved.lto_priv.0
__ZL23PanelBaseTileSizesSaved.lto_priv.0:
	.space 1
	.globl	__ZL18PanelBaseTileSizes.lto_priv.0
	.align 32
__ZL18PanelBaseTileSizes.lto_priv.0:
	.space 122880
	.globl	_nextvoxid
	.align 4
_nextvoxid:
	.space 4
	.globl	_tokenready
_tokenready:
	.space 1
	.globl	_scriptbuffer
	.align 4
_scriptbuffer:
	.space 4
	.globl	_scriptend_p
	.align 4
_scriptend_p:
	.space 4
	.globl	_script_p
	.align 4
_script_p:
	.space 4
	.globl	_token
	.align 32
_token:
	.space 255
	.globl	_endofscript
_endofscript:
	.space 1
.lcomm __ZL16customweaponname,112,32
	.section .rdata,"dr"
LC135:
	.ascii "title\0"
LC136:
	.ascii "name\0"
LC137:
	.ascii "description\0"
LC138:
	.ascii "ammoname\0"
LC139:
	.ascii "maxammo\0"
LC140:
	.ascii "mindamage\0"
LC141:
	.ascii "maxdamage\0"
LC142:
	.ascii "pickup\0"
LC143:
	.ascii "weaponpickup\0"
	.align 32
__ZL17cm_weapons_tokens:
	.long	LC135
	.long	2
	.long	LC136
	.long	2
	.long	LC137
	.long	2
	.long	LC138
	.long	17
	.long	LC139
	.long	18
	.long	LC140
	.long	19
	.long	LC141
	.long	20
	.long	LC142
	.long	15
	.long	LC143
	.long	16
	.globl	_InventoryDecls
LC144:
	.ascii "Armor Vest +50\0"
LC145:
	.ascii "Kevlar Armor Vest +100\0"
LC146:
	.ascii "MedKit +20\0"
LC147:
	.ascii "Fortune Cookie +50 BOOST\0"
LC148:
	.ascii "Portable MedKit\0"
LC149:
	.ascii "Gas Bomb\0"
LC150:
	.ascii "Flash Bomb\0"
LC151:
	.ascii "Caltrops\0"
LC152:
	.ascii "Night Vision Goggles\0"
LC153:
	.ascii "Repair Kit\0"
LC154:
	.ascii "Smoke Bomb\0"
	.data
	.align 32
_InventoryDecls:
	.long	LC144
	.long	50
	.long	LC145
	.long	100
	.long	LC146
	.long	20
	.long	LC147
	.long	50
	.long	LC148
	.long	100
	.long	LC149
	.long	1
	.long	LC150
	.long	2
	.long	LC151
	.long	3
	.long	LC152
	.long	100
	.long	LC153
	.long	100
	.long	LC154
	.long	100
.lcomm __ZL19custominventoryname,44,32
	.section .rdata,"dr"
LC155:
	.ascii "amount\0"
	.align 32
__ZL19cm_inventory_tokens:
	.long	LC135
	.long	2
	.long	LC136
	.long	2
	.long	LC137
	.long	2
	.long	LC155
	.long	15
	.globl	_KeyDoorMessage
	.align 4
LC156:
	.ascii "You need a RED key for this door.\0"
	.align 4
LC157:
	.ascii "You need a BLUE key for this door.\0"
	.align 4
LC158:
	.ascii "You need a GREEN key for this door.\0"
	.align 4
LC159:
	.ascii "You need a YELLOW key for this door.\0"
	.align 4
LC160:
	.ascii "You need a GOLD key for this door.\0"
	.align 4
LC161:
	.ascii "You need a SILVER key for this door.\0"
	.align 4
LC162:
	.ascii "You need a BRONZE key for this door.\0"
	.data
	.align 32
_KeyDoorMessage:
	.long	LC156
	.long	LC157
	.long	LC158
	.long	LC159
	.long	LC160
	.long	LC161
	.long	LC162
	.long	LC156
	.globl	_KeyMsg
	.section .rdata,"dr"
LC163:
	.ascii "Got the RED key!\0"
LC164:
	.ascii "Got the BLUE key!\0"
LC165:
	.ascii "Got the GREEN key!\0"
LC166:
	.ascii "Got the YELLOW key!\0"
LC167:
	.ascii "Got the GOLD master key!\0"
LC168:
	.ascii "Got the SILVER master key!\0"
LC169:
	.ascii "Got the BRONZE master key!\0"
LC170:
	.ascii "Got the RED master key!\0"
	.data
	.align 32
_KeyMsg:
	.long	LC163
	.long	LC164
	.long	LC165
	.long	LC166
	.long	LC167
	.long	LC168
	.long	LC169
	.long	LC170
	.globl	_ReadFortune
	.section .rdata,"dr"
LC171:
	.ascii "You never going to score.\0"
LC172:
	.ascii "26-31-43-82-16-29\0"
	.align 4
LC173:
	.ascii "Sorry, you no win this time, try again.\0"
	.align 4
LC174:
	.ascii "You try harder get along. Be a nice man.\0"
	.align 4
LC175:
	.ascii "No man is island, except Lo Wang.\0"
	.align 4
LC176:
	.ascii "There is much death in future.\0"
	.align 4
LC177:
	.ascii "You should kill all business associates.\0"
	.align 4
LC178:
	.ascii "(c)1997,3DRealms fortune cookie company.\0"
	.align 4
LC179:
	.ascii "Your chi attracts many chicks.\0"
	.align 4
LC180:
	.ascii "Don't you know you the scum of society!?\0"
	.align 4
LC181:
	.ascii "You should not scratch yourself there.\0"
	.align 4
LC182:
	.ascii "Man who stand on toilet, high on pot.\0"
	.align 4
LC183:
	.ascii "Man who fart in church sit in own pew.\0"
	.align 4
LC184:
	.ascii "Man trapped in pantry has ass in jam.\0"
	.align 4
LC185:
	.ascii "Baseball wrong.  Man with 4 balls cannot walk.\0"
	.align 4
LC186:
	.ascii "Man who buy drowned cat pay for wet pussy.\0"
	.data
	.align 32
_ReadFortune:
	.long	LC171
	.long	LC172
	.long	LC173
	.long	LC174
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
	.globl	_SkillNames
	.align 32
_SkillNames:
	.ascii "^Tiny Grasshopper\0"
	.space 8
	.ascii "^I Have No Fear\0"
	.space 10
	.ascii "^Who Wants Wang\0"
	.space 10
	.ascii "^No Pain, No Gain\0"
	.space 8
	.section .rdata,"dr"
	.align 4
__ZL15cm_skill_tokens:
	.long	LC135
	.long	2
	.long	LC136
	.long	2
	.long	LC137
	.long	2
	.globl	_EpisodeSubtitles
	.data
	.align 32
_EpisodeSubtitles:
	.ascii "Four levels (Shareware Version)\0"
	.space 9
	.ascii "Eighteen levels (Full Version Only)\0"
	.space 5
	.globl	_EpisodeNames
	.align 32
_EpisodeNames:
	.ascii "^Enter the Wang\0"
	.space 10
	.ascii "^Code of Honor\0"
	.space 11
	.section .rdata,"dr"
LC187:
	.ascii "subtitle\0"
	.align 32
__ZL17cm_episode_tokens:
	.long	LC135
	.long	2
	.long	LC136
	.long	2
	.long	LC137
	.long	2
	.long	LC187
	.long	8
	.globl	_LevelInfo
LC188:
	.ascii "title.map\0"
LC189:
	.ascii "theme.mid\0"
LC190:
	.ascii " \0"
LC191:
	.ascii "$bullet.map\0"
LC192:
	.ascii "e1l01.mid\0"
LC193:
	.ascii "Seppuku Station\0"
LC194:
	.ascii "0 : 55\0"
LC195:
	.ascii "5 : 00\0"
LC196:
	.ascii "e1l03.mid\0"
LC197:
	.ascii "Zilla Construction\0"
LC198:
	.ascii "4 : 59\0"
LC199:
	.ascii "8 : 00\0"
LC200:
	.ascii "$shrine.map\0"
LC201:
	.ascii "e1l02.mid\0"
LC202:
	.ascii "Master Leep's Temple\0"
LC203:
	.ascii "3 : 16\0"
LC204:
	.ascii "10 : 00\0"
LC205:
	.ascii "$woods.map\0"
LC206:
	.ascii "e1l04.mid\0"
LC207:
	.ascii "Dark Woods of the Serpent\0"
LC208:
	.ascii "7 : 06\0"
LC209:
	.ascii "16 : 00\0"
LC210:
	.ascii "$whirl.map\0"
LC211:
	.ascii "yokoha03.mid\0"
LC212:
	.ascii "Rising Son\0"
LC213:
	.ascii "5 : 30\0"
LC214:
	.ascii "$tank.map\0"
LC215:
	.ascii "nippon34.mid\0"
LC216:
	.ascii "Killing Fields\0"
LC217:
	.ascii "1 : 46\0"
LC218:
	.ascii "4 : 00\0"
LC219:
	.ascii "$boat.map\0"
LC220:
	.ascii "execut11.mid\0"
LC221:
	.ascii "Hara-Kiri Harbor\0"
LC222:
	.ascii "1 : 56\0"
LC223:
	.ascii "$garden.map\0"
LC224:
	.ascii "Zilla's Villa\0"
LC225:
	.ascii "1 : 06\0"
LC226:
	.ascii "2 : 00\0"
LC227:
	.ascii "$outpost.map\0"
LC228:
	.ascii "sanai.mid\0"
LC229:
	.ascii "Monastery\0"
LC230:
	.ascii "1 : 23\0"
LC231:
	.ascii "3 : 00\0"
LC232:
	.ascii "$hidtemp.map\0"
LC233:
	.ascii "kotec2.mid\0"
LC234:
	.ascii "Raider of the Lost Wang\0"
LC235:
	.ascii "2 : 05\0"
LC236:
	.ascii "4 : 10\0"
LC237:
	.ascii "$plax1.map\0"
LC238:
	.ascii "Sumo Sky Palace\0"
LC239:
	.ascii "6 : 32\0"
LC240:
	.ascii "12 : 00\0"
LC241:
	.ascii "$bath.map\0"
LC242:
	.ascii "Bath House\0"
LC243:
	.ascii "$airport.map\0"
LC244:
	.ascii "Unfriendly Skies\0"
LC245:
	.ascii "2 : 59\0"
LC246:
	.ascii "6 : 00\0"
LC247:
	.ascii "$refiner.map\0"
LC248:
	.ascii "kotoki12.mid\0"
LC249:
	.ascii "Crude Oil\0"
LC250:
	.ascii "2 : 40\0"
LC251:
	.ascii "$newmine.map\0"
LC252:
	.ascii "hoshia02.mid\0"
LC253:
	.ascii "Coolie Mines\0"
LC254:
	.ascii "2 : 48\0"
LC255:
	.ascii "$subbase.map\0"
LC256:
	.ascii "Subpen 7\0"
LC257:
	.ascii "2 : 02\0"
LC258:
	.ascii "$rock.map\0"
LC259:
	.ascii "The Great Escape\0"
LC260:
	.ascii "3 : 18\0"
LC261:
	.ascii "$yamato.map\0"
LC262:
	.ascii "Floating Fortress\0"
LC263:
	.ascii "11 : 38\0"
LC264:
	.ascii "20 : 00\0"
LC265:
	.ascii "$seabase.map\0"
LC266:
	.ascii "Water Torture\0"
LC267:
	.ascii "5 : 07\0"
LC268:
	.ascii "$volcano.map\0"
LC269:
	.ascii "Stone Rain\0"
LC270:
	.ascii "9 : 15\0"
LC271:
	.ascii "$shore.map\0"
LC272:
	.ascii "Shanghai Shipwreck\0"
LC273:
	.ascii "3 : 58\0"
LC274:
	.ascii "$auto.map\0"
LC275:
	.ascii "Auto Maul\0"
LC276:
	.ascii "4 : 07\0"
LC277:
	.ascii "tank.map\0"
LC278:
	.ascii "Heavy Metal (DM only)\0"
LC279:
	.ascii "$dmwoods.map\0"
LC280:
	.ascii "Ripper Valley (DM only)\0"
LC281:
	.ascii "$dmshrin.map\0"
LC282:
	.ascii "House of Wang (DM only)\0"
LC283:
	.ascii "$rush.map\0"
LC284:
	.ascii "Lo Wang Rally (DM only)\0"
LC285:
	.ascii "shotgun.map\0"
LC286:
	.ascii "Ruins of the Ronin (CTF)\0"
LC287:
	.ascii "$dmdrop.map\0"
LC288:
	.ascii "Killing Fields (CTF)\0"
	.data
	.align 32
_LevelInfo:
	.long	LC188
	.long	LC189
	.long	LC190
	.long	LC190
	.long	LC190
	.long	LC191
	.long	LC192
	.long	LC193
	.long	LC194
	.long	LC195
	.long	LC83
	.long	LC196
	.long	LC197
	.long	LC198
	.long	LC199
	.long	LC200
	.long	LC201
	.long	LC202
	.long	LC203
	.long	LC204
	.long	LC205
	.long	LC206
	.long	LC207
	.long	LC208
	.long	LC209
	.long	LC210
	.long	LC211
	.long	LC212
	.long	LC213
	.long	LC204
	.long	LC214
	.long	LC215
	.long	LC216
	.long	LC217
	.long	LC218
	.long	LC219
	.long	LC220
	.long	LC221
	.long	LC222
	.long	LC218
	.long	LC223
	.long	LC220
	.long	LC224
	.long	LC225
	.long	LC226
	.long	LC227
	.long	LC228
	.long	LC229
	.long	LC230
	.long	LC231
	.long	LC232
	.long	LC233
	.long	LC234
	.long	LC235
	.long	LC236
	.long	LC237
	.long	LC233
	.long	LC238
	.long	LC239
	.long	LC240
	.long	LC241
	.long	LC211
	.long	LC242
	.long	LC204
	.long	LC204
	.long	LC243
	.long	LC215
	.long	LC244
	.long	LC245
	.long	LC246
	.long	LC247
	.long	LC248
	.long	LC249
	.long	LC250
	.long	LC195
	.long	LC251
	.long	LC252
	.long	LC253
	.long	LC254
	.long	LC246
	.long	LC255
	.long	LC252
	.long	LC256
	.long	LC257
	.long	LC218
	.long	LC258
	.long	LC248
	.long	LC259
	.long	LC260
	.long	LC246
	.long	LC261
	.long	LC228
	.long	LC262
	.long	LC263
	.long	LC264
	.long	LC265
	.long	LC233
	.long	LC266
	.long	LC267
	.long	LC204
	.long	LC268
	.long	LC233
	.long	LC269
	.long	LC270
	.long	LC264
	.long	LC271
	.long	LC233
	.long	LC272
	.long	LC273
	.long	LC199
	.long	LC274
	.long	LC233
	.long	LC275
	.long	LC276
	.long	LC199
	.long	LC277
	.long	LC233
	.long	LC278
	.long	LC204
	.long	LC204
	.long	LC279
	.long	LC233
	.long	LC280
	.long	LC204
	.long	LC204
	.long	LC281
	.long	LC233
	.long	LC282
	.long	LC204
	.long	LC204
	.long	LC283
	.long	LC233
	.long	LC284
	.long	LC204
	.long	LC204
	.long	LC285
	.long	LC233
	.long	LC286
	.long	LC204
	.long	LC204
	.long	LC287
	.long	LC233
	.long	LC288
	.long	LC204
	.long	LC204
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.space 20
.lcomm __ZL10custommaps,580,32
	.section .rdata,"dr"
LC289:
	.ascii "filename\0"
LC290:
	.ascii "file\0"
LC291:
	.ascii "fn\0"
LC292:
	.ascii "levelname\0"
LC293:
	.ascii "song\0"
LC294:
	.ascii "music\0"
LC295:
	.ascii "songname\0"
LC296:
	.ascii "cdatrack\0"
LC297:
	.ascii "cdtrack\0"
LC298:
	.ascii "besttime\0"
LC299:
	.ascii "partime\0"
	.align 32
__ZL13cm_map_tokens:
	.long	LC135
	.long	2
	.long	LC136
	.long	2
	.long	LC137
	.long	2
	.long	LC289
	.long	3
	.long	LC290
	.long	3
	.long	LC291
	.long	3
	.long	LC292
	.long	3
	.long	LC293
	.long	4
	.long	LC294
	.long	4
	.long	LC295
	.long	4
	.long	LC296
	.long	5
	.long	LC297
	.long	5
	.long	LC298
	.long	6
	.long	LC299
	.long	7
LC300:
	.ascii "map\0"
LC301:
	.ascii "level\0"
LC302:
	.ascii "episode\0"
LC303:
	.ascii "skill\0"
LC304:
	.ascii "cookie\0"
LC305:
	.ascii "fortune\0"
LC306:
	.ascii "gotkey\0"
LC307:
	.ascii "inventory\0"
LC308:
	.ascii "weapon\0"
LC309:
	.ascii "needkey\0"
LC310:
	.ascii "secret\0"
LC311:
	.ascii "quit\0"
	.align 32
__ZL9cm_tokens:
	.long	LC300
	.long	0
	.long	LC301
	.long	0
	.long	LC302
	.long	1
	.long	LC303
	.long	9
	.long	LC304
	.long	11
	.long	LC305
	.long	11
	.long	LC306
	.long	12
	.long	LC307
	.long	14
	.long	LC308
	.long	16
	.long	LC309
	.long	13
	.long	LC310
	.long	21
	.long	LC311
	.long	22
LC312:
	.ascii "WPN_FIST\0"
LC313:
	.ascii "WPN_SWORD\0"
LC314:
	.ascii "WPN_SHURIKEN\0"
LC315:
	.ascii "WPN_STICKYBOMB\0"
LC316:
	.ascii "WPN_UZI\0"
LC317:
	.ascii "WPN_MISSILE\0"
LC318:
	.ascii "WPN_NUKE\0"
LC319:
	.ascii "WPN_GRENADE\0"
LC320:
	.ascii "WPN_RAILGUN\0"
LC321:
	.ascii "WPN_SHOTGUN\0"
LC322:
	.ascii "WPN_HOTHEAD\0"
LC323:
	.ascii "WPN_HEART\0"
LC324:
	.ascii "WPN_HOTHEAD_NAPALM\0"
LC325:
	.ascii "WPN_HOTHEAD_RING\0"
	.align 32
__ZL9weaponmap:
	.long	LC312
	.long	0
	.long	1
	.long	LC313
	.long	13
	.long	1
	.long	LC314
	.long	1
	.long	3
	.long	LC315
	.long	6
	.long	3
	.long	LC316
	.long	3
	.long	7
	.long	LC317
	.long	4
	.long	7
	.long	LC318
	.long	29
	.long	7
	.long	LC319
	.long	5
	.long	7
	.long	LC320
	.long	7
	.long	7
	.long	LC321
	.long	2
	.long	7
	.long	LC322
	.long	8
	.long	3
	.long	LC323
	.long	9
	.long	3
	.long	LC324
	.long	10
	.long	1
	.long	LC325
	.long	11
	.long	1
	.globl	__ZL18defaultdeffilename.lto_priv.0
	.align 4
__ZL18defaultdeffilename.lto_priv.0:
	.long	LC20
	.globl	_g_defNamePtr
	.bss
	.align 4
_g_defNamePtr:
	.space 4
	.globl	__ZL18symbtaballoclength.lto_priv.0
	.align 4
__ZL18symbtaballoclength.lto_priv.0:
	.space 4
	.globl	__ZL13symbtablength.lto_priv.0
	.align 4
__ZL13symbtablength.lto_priv.0:
	.space 4
	.globl	__ZL7symbtab.lto_priv.0
	.align 4
__ZL7symbtab.lto_priv.0:
	.space 4
	.globl	_num_usermaphacks
	.align 4
_num_usermaphacks:
	.space 4
	.globl	_usermaphacks
	.align 4
_usermaphacks:
	.space 4
	.globl	__ZL17faketilebuffersiz.lto_priv.0
	.align 4
__ZL17faketilebuffersiz.lto_priv.0:
	.space 4
	.globl	__ZL14faketilebuffer.lto_priv.0
	.align 4
__ZL14faketilebuffer.lto_priv.0:
	.space 4
	.globl	_editorcolors
	.align 32
_editorcolors:
	.space 256
	.globl	_vgapal16
	.data
	.align 32
_vgapal16:
	.ascii "\0\0\0\0\252\0\0\0\0\252\0\0\252\252\0\0\0\0\252\0\252\0\252\0\0U\252\0\252\252\252\0UUU\0\377UU\0U\377U\0\377\377U\0UU\377\0\377U\377\0U\377\377\0\377\377\377\0\0"
	.space 959
	.globl	_editorcolorsdef
	.bss
	.align 32
_editorcolorsdef:
	.space 256
	.globl	_frealmaxshade
	.align 4
_frealmaxshade:
	.space 4
	.globl	_realmaxshade
	.align 4
_realmaxshade:
	.space 4
	.globl	_PaletteIndexFullbright
	.align 32
_PaletteIndexFullbright:
	.space 32
	.globl	_whitecol
_whitecol:
	.space 1
	.globl	_blackcol
_blackcol:
	.space 1
	.globl	_paletteloaded
_paletteloaded:
	.space 1
	.globl	_PreCaching
	.data
_PreCaching:
	.byte	1
	.globl	_upscalefactor
	.bss
	.align 4
_upscalefactor:
	.space 4
	.globl	_y_pix_size
	.align 4
_y_pix_size:
	.space 4
	.globl	_x_pix_size
	.align 4
_x_pix_size:
	.space 4
	.globl	_FX_ErrorCode
	.align 4
_FX_ErrorCode:
	.space 4
	.globl	_MV_GlobalVolume
	.data
	.align 4
_MV_GlobalVolume:
	.long	65536
	.globl	__ZL15MV_CallBackFunc.lto_priv.0
	.bss
	.align 4
__ZL15MV_CallBackFunc.lto_priv.0:
	.space 4
	.globl	_voc
	.data
	.align 32
_voc:
	.ascii "NULL.VOC\0"
	.space 5
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	0
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SWRDSTR1.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "THROW.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "STRCLNK.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	40
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "NULL.VOC\0"
	.space 5
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "UZIFIRE1.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RICH1.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RICH2.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RMVCLIP.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RPLCLIP.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SHELL.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RIOTFIR1.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SHOTGUN.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RIOTRLD.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "EXPMED.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	49
	.space 1
	.word	0
	.long	16384
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RIOTWIZ.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "40MMFIR2.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RIOTRLD.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "40MMEXP2.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	49
	.space 1
	.word	0
	.long	65536
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RIOTWIZ.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "GHFIR1.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "GHWIZ.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	40
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "EXPSML.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "THROW.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "PHITGRND.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "EXPLRG.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	49
	.space 1
	.word	0
	.long	65536
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "STSCAN2.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "HBLOOP1.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "HSQUEEZ1.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "HRTWIZ.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "RIOTFIR1.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-75
	.word	75
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "EXPMED.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	49
	.space 1
	.word	0
	.long	65536
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RFWIZ.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "NAPFIRE.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "NAPTWIZ.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "NAPPUFF.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "MMFIRE.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "MMWIZ.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "SPRLFIRE.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SPRLWIZ.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "MAGIC1.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "MAGIC2.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "MAGIC3.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "MAGIC4.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "MAGIC5.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "MAGIC6.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "MAGIC7.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SWSPELL.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "DHVOMIT.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	40
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "DHCLUNK.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	40
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "NULL.VOC\0"
	.space 5
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	40
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LAVAHIT.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	40
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "STSPL01.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	40
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "KEY.VOC\0"
	.space 6
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	41
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ITEM5A.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	41
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ITEMBIG2.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	41
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BODY9.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	51
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "PHITGRND.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	40
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BODY2.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	40
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BURN1.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	40
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BURNSCRM.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	51
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BODY3.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	40
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BODY4.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	40
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BURN2.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	40
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "DROWN1.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	51
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SCREAM1.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	400
	.byte	51
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SCREAM2.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	400
	.byte	51
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SCREAM3.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	400
	.byte	51
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "HIT1.VOC\0"
	.space 5
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ELECTRC1.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	40
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SWDIE02.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	500
	.byte	51
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "IMPALE1.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	51
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "OOF1.VOC\0"
	.space 5
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	40
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BODY1.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	47
	.space 1
	.word	56
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "HITGRND.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	47
	.space 1
	.word	57
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "COLEXP.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	49
	.space 1
	.word	0
	.long	16384
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "COLSCRM.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "COLALRT.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "COLAMB.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	39
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "COLPAIN.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "CGMAT.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	39
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "CGALRT.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "CGWHACK.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	47
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "CGAMB.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	39
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "CGPAIN.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "CGSHOOT.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	47
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "CGHIT.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	47
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "CGSCRM.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "NINAMB.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	39
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "NINSTAR.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	47
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "NINPAIN.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	47
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "NINSCRM.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "NINALRT.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "NINSHOOT.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	47
	.space 1
	.word	5
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RIOTFIR1.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	47
	.space 1
	.word	11
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RIPAMB.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	39
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RIPALRT.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RIPATCK.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RIPPAIN.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RIPSCRM.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RIPHRT.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "GRDAMB.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	39
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "GRDALRT.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "GRDPAIN.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "GRDSCRM.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "GRDFIR.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "GRDAXE.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "GRDAXHT.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SPAMB.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	39
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SPALRT.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SPPAIN.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SPSCRM.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SPBLADE.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SPELEC.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SPTLPRT.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "AHAMB.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	39
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "AHSCRM.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "AHEXP.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "AHSHWSH.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "HBUZZ.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	39
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "HSTING.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "HPAIN.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "HDEATH.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SGAMB.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	39
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SGALRT.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SGPAIN.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SGSCRM.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	100
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SGDETH.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SGSWORD.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SGMAGIC.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SGHEADS.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SGTAUNT.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	39
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LVAMB.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	39
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LVSWIM.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	39
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LVRISE.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	39
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LVALRT.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LVFLAME.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LVMETEOR.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LVMETEXP.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LVPAIN.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LVSIZZLE.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	39
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LVEXPL.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BTSTRT.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BTRUN01.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "BTSTOP.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BTFIRE.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TNKSTRT.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TNKRUN.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "TNKSTOP.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TNKIDLE.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "TNKFIRE.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TRUKRUN.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "TRUKIDLE.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "SUBRUN.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "SUBIDLE.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "SUBDOOR.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BMBFLY.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "BMBDROP.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BUBBLE.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "CHAIN.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	20
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "CHNDOOR.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	20
	.space 1
	.word	0
	.long	8000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "CRCKT2.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "DRWOODO.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	20
	.space 1
	.word	0
	.long	8000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "DRWOODC.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	20
	.space 1
	.word	0
	.long	8000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "DRMETO.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	20
	.space 1
	.word	0
	.long	8000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "DRMETC.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	20
	.space 1
	.word	0
	.long	8000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "DRSLDO.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	20
	.space 1
	.word	0
	.long	8000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "DRSLDC.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	20
	.space 1
	.word	0
	.long	8000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "DRSTNO.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	20
	.space 1
	.word	0
	.long	8000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "DRSTNC.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	20
	.space 1
	.word	0
	.long	8000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "DRSQKO.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	20
	.space 1
	.word	0
	.long	8000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "DRSQKC.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	20
	.space 1
	.word	0
	.long	8000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "DRILL.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "CAVE1.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "CAVE2.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "DRIP.VOC\0"
	.space 5
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "WTRFAL1.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "WTRFAL2.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "WTRFLW1.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "WTRFLW2.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "ELEV1.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	20
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "EXPSML.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	20
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "EXPMED.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	20
	.space 1
	.word	0
	.long	65536
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "EXPLRG.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	20
	.space 1
	.word	0
	.long	65536
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "NULL.VOC\0"
	.space 5
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	20
	.space 1
	.word	0
	.long	65536
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "FIRE1.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "FIRE2.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "FBALL1.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "FIREBALL1.VOC\0"
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "GEAR1.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	20
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "GONG.VOC\0"
	.space 5
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	49
	.space 1
	.word	0
	.long	32336
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LAVAFLW1.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "MACHN1.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "MUD1.VOC\0"
	.space 5
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "QUAKE1.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "SEWER1.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "SPLASH1.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	20
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "STEAM1.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "VOLSTM1.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "STMPR.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SWAMP1.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "SWITCH1.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	20
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SWITCH2.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	20
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SWITCH3.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	20
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SWITCH4.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	20
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SWITCH5.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	20
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "THUNDR.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	10
	.space 1
	.word	0
	.long	131072
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TELPORT.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	20
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "UNDRWTR.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "UNLOCK.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	20
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "VALVE.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	20
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "VOID1.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "VOID2.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "VOID3.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	47
	.space 1
	.word	0
	.long	-8000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "VOID4.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "VOID5.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "ERUPT.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	16384
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "VOLPRJCT.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "WIND1.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "WIND2.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "WOODBRK.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "STONEBRK.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ENGROOM1.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "ENGROOM2.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "ENGROOM3.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "ENGROOM4.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "ENGROOM5.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "GLASS3.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "MUSSTING.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "HELI.VOC\0"
	.space 5
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "BIGHART.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "WIND4.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "SPOOKY1.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "DRILL1.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "JET.VOC\0"
	.space 6
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	16384
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "DRUMCHNT.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "FLY.VOC\0"
	.space 6
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	100
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "UZICLK.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	100
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "STICKY2R.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "UZI1R.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SHOTG1R.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BOLT1R.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BOLT1R.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BOLT1R.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "STICKY1R.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "\0"
	.space 13
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	0
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BADMAN04.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "COMEGET2.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "GHOP07.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "GOODDAY4.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "KILLU05.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "NATURAL4.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "NOHONOR6.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SAYON09.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TAKSAN1.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SNATCH01.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "CHOTO7.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SWPAIN05.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SWPAIN03.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SWPAIN07.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SWPAIN22.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SWYELL03.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SWYELL05.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SWYELL06.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "GRUNT06.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "NOWAY1.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SWDIE02.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	51
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "AHSO5.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	51
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "\0"
	.space 13
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	0
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "HSHOT1.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RAIL2.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "RAILUP09.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "HBOMB2.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	100
	.space 1
	.word	0
	.long	131072
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "STANDBY.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "CDOWN.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SYSREAD.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "HISS1.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "CHBNCE1.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "THROW.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "PULL.VOC\0"
	.space 5
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "STSCAN2.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "HBDOWN1.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "NULL.VOC\0"
	.space 5
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "GASPOP.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "40MMBNCE.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BURGALRM.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "CARALRM2.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	25000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "CAOFF1.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	25000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TACK1.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "NVON3.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "NVOFF2.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SGSH01.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SKID3.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "CRASH4.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BUS1.VOC\0"
	.space 5
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BIMP01.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ASIREN1.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "FIRETRK1.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TRAFFIC1.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TRAFFIC2.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TRAFFIC3.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TRAFFIC4.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TRAFFIC5.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TRAFFIC6.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "HELI1.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JET1.VOC\0"
	.space 5
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "MOTO1.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "MOTO2.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "NEON1.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	-8000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SUBWAY1.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TRAINS01.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	51
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "COIN.VOC\0"
	.space 5
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SWRDSMK1.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RIP2AMB.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	39
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RIP2ALRT.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RIP2ATCK.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RIP2PAIN.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RIP2SCRM.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RIP2HRT.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "M60.VOC\0"
	.space 6
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SUMSCRM.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	100
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SUMALRT.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SUMAMB.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	39
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SUMPAIN.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RAMLOCK.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	20
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "CARDLOCK.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	20
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ACS10.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "AMDRIV01.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BABOON03.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BBURN04.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BIGWPN01.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "CBUNG01.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "CHARAD09.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "DTIME.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "EAT02.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "FCRACK01.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "HCOW03.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "HCOW06.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "HSHIT03.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "HSHIT04.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "IHOPE01.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ILIKE01.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "KUNGFU06.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LMOVE01.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LWANG05.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RAW01.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "STUPID01.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TDICK02.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TOURN01.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "WWANG11.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "YAK02.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "REFLEX08.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "EVADE01.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "MFLY03.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SHISEI03.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "FWORKS01.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "HIRO03.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "NAGA06.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "PEARL03.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "IAM01.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LIKNUK01.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LIKSRD01.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LIKSHK02.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LUCK06.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "MCHAN01.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RCHAN13.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "MUSIC03.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "NODIFF07.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "NOFEAR01.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "NOPAIN.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "REPMAN15.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SOB15.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "WEAK03.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SPEED04.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "STIFF01.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TOMB05.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TSTICK01.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TSTICK05.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TSTICK07.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TSTICK10.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TSWORD05.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TSWORD08.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TSWORD01.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SWYELL22.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SWYELL14.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SWYELL23.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SWYELL16.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SWYELL13.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TGSCRM.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TGALRT.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-300
	.word	300
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TGAMB.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	-300
	.word	300
	.byte	39
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TGPAIN.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TGTNT1.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TGTNT2.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SUMOFART.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "GIBS04.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "GIBS05.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BIRDS01.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BIRDS02.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TOILET01.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "FLIDLE.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "FLRUN01.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TOYCAR03.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "PRESS03.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "COMPON01.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TURBON01.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TURBRN01.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "BIGDRL03.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "FLUOR01.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "AMOEBA03.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "BODY6.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	51
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "GIBS01.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "CHOK01.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TRAIN3.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TRAINR02.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	51
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TRAIN8.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TCLID01.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ACCU01.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "AHH03.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "PALARM1.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "PFLIP4.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "PROLL1.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "PROLL2.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "PROLL3.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RABATK1.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RABDIE1.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RABDIE2.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RABDIE3.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RABAMB.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	39
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "STONE2.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "NINCUT3.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "RIPCHST1.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "WHIPIN2.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "ENDLEV3.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "MDALARM1.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	51
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "METALBRK.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "DEBRIBRK.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "MARBELS.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BANZAI1.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	51
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "HAHA19.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	51
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "HAHA11.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	51
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "HAHA15.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	51
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TELEPT02.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	41
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG1075.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG1082.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG1087.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG1088.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG1103.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG2000.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG2005.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG2020.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG2032.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG2053.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG2054.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG2045.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG2087.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG2074.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG2075.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG2078.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG3005.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG3017.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG3047.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG3022.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG6053.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG3059.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG4012.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG3070.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG6051.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG4002.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG4024.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG5042.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG5049A.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "WDOOR02.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	30
	.space 1
	.word	0
	.long	8000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "MDOOR03.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	30
	.space 1
	.word	0
	.long	8000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "603981_1.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	30
	.space 1
	.word	0
	.long	8000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "FLAG03.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "JG7009.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG7001.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG2001.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ACHCRY04.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	-8000
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "ACHS010.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	-8000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ACHT1006.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ACHS016.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	-8000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ACHT120A.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TELEPT02.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	48
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SLASH1.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "WARNING.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "WHIRL1.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ACHF1003.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-300
	.word	300
	.byte	39
	.space 1
	.word	0
	.long	-16000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ACHF1002.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-300
	.word	300
	.byte	39
	.space 1
	.word	0
	.long	-16000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ACHF1016.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	-300
	.word	300
	.byte	39
	.space 1
	.word	0
	.long	-16000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "CHIMES4.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	-8000
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "JGB023.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JGB020.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JGB080.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JGB106.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JGB130.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JGSB4.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JGB166.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JGB156.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JGB193.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JGB202.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JGB340A.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JGEN06.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "MSG9.VOC\0"
	.space 5
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "UGLY1A.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "UGLY1B.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "TELEPT07.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "GOROSW1.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BTCREAK2.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "BTRUN05.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "BTIDLE4.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "SHIPBELL.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SHIPHRN1.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	10
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "EXP3.VOC\0"
	.space 5
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	49
	.space 1
	.word	0
	.long	65536
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG41001.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG41012.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG41018.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG41028.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG41048.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG41052.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG41058.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG41060.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG41075.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG42004.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG42019.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG42021.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG42028.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG42033.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG42034.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG42050.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG42056.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG42061.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG43004.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG43015.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG43019.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG43021.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG44011.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG44014.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG44027.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG44038.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG44039.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG44048.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG44052.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG45014.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG44068.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG45010.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG45018.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG45030.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG45033.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG45043.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG45053.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG45067.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG46005.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG46010.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LANI049.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	39
	.space 1
	.word	0
	.long	-16000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LANI051.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	39
	.space 1
	.word	0
	.long	-16000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LANI052.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	39
	.space 1
	.word	0
	.long	-16000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LANI054.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	39
	.space 1
	.word	0
	.long	-16000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LANI060.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	39
	.space 1
	.word	0
	.long	-16000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LANI063.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	39
	.space 1
	.word	0
	.long	-16000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LANI065.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	39
	.space 1
	.word	0
	.long	-16000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LANI066.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	39
	.space 1
	.word	0
	.long	-16000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LANI073.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	39
	.space 1
	.word	0
	.long	-16000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LANI075.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	39
	.space 1
	.word	0
	.long	-16000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LANI077.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	39
	.space 1
	.word	0
	.long	-16000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LANI079.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	39
	.space 1
	.word	0
	.long	-16000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LANI089.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	39
	.space 1
	.word	0
	.long	-16000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LANI091.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	39
	.space 1
	.word	0
	.long	-16000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LANI093.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	39
	.space 1
	.word	0
	.long	-16000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LANI095.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	39
	.space 1
	.word	0
	.long	-16000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "AD5.VOC\0"
	.space 6
	.space 2
	.long	0
	.long	0
	.word	-300
	.word	300
	.byte	20
	.space 1
	.word	0
	.long	8000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "AD6.VOC\0"
	.space 6
	.space 2
	.long	0
	.long	0
	.word	-300
	.word	300
	.byte	20
	.space 1
	.word	0
	.long	8000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JET05.VOC\0"
	.space 4
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	30
	.space 1
	.word	0
	.long	8000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "VC04.VOC\0"
	.space 5
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "LANI017.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LANI033.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	49
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "LANI001.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "CACKLE.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	39
	.space 1
	.word	0
	.long	-16000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "CACKLE2.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	39
	.space 1
	.word	0
	.long	-16000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "CACKLE3.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-200
	.word	200
	.byte	39
	.space 1
	.word	0
	.long	-16000
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "SUMO058.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ELEV01.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	30
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG9009.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "Z16004.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "Z16012.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "Z16022.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "Z16027.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG93030.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG94002.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "Z17010.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "Z17052.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "Z17025.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ML25014.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ML250101.VOC\0"
	.space 1
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG9022.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG9032.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG9038.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG9055.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG9060.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG92055.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ML25032.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG92036.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG92042.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ML26001.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG93000.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG93011.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG93018.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG93023.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ML26008.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ML26011.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG94007.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG94024.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG94039.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "JG95012.VOC\0"
	.space 2
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ZWALK5.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	-100
	.word	100
	.byte	42
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ZC1.VOC\0"
	.space 6
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ZC2.VOC\0"
	.space 6
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ZC3.VOC\0"
	.space 6
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ZC4.VOC\0"
	.space 6
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ZC5.VOC\0"
	.space 6
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ZC6.VOC\0"
	.space 6
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ZC7.VOC\0"
	.space 6
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	1
	.byte	0
	.byte	0
	.space 2
	.ascii "ZC8.VOC\0"
	.space 6
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "ZC9.VOC\0"
	.space 6
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.ascii "Z16043.VOC\0"
	.space 3
	.space 2
	.long	0
	.long	0
	.word	0
	.word	0
	.byte	50
	.space 1
	.word	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_enginecompatibilitymode
	.align 4
_enginecompatibilitymode:
	.long	2147483647
	.globl	_DisableSound
	.bss
_DisableSound:
	.space 1
	.globl	_DemoModeMenuInit
_DemoModeMenuInit:
	.space 1
	.globl	_g_defModules
	.align 8
_g_defModules:
	.space 12
	.globl	_parallaxtype
_parallaxtype:
	.space 1
	.globl	_MovesPerPacket
	.data
	.align 4
_MovesPerPacket:
	.long	1
	.globl	_QuitFlag
	.bss
_QuitFlag:
	.space 1
	.globl	_NetBroadcastMode
	.data
_NetBroadcastMode:
	.byte	1
	.globl	_networkmode
	.align 4
_networkmode:
	.long	-1
	.globl	__ZL8firstnet.lto_priv.0
	.bss
	.align 4
__ZL8firstnet.lto_priv.0:
	.space 4
	.globl	_palette
	.align 32
_palette:
	.space 768
	.globl	_palette_data
	.align 32
_palette_data:
	.space 768
	.globl	_s_buildRev
	.section .rdata,"dr"
	.align 4
_s_buildRev:
	.long	LC38
	.globl	_engineerrstr
LC326:
	.ascii "No error\0"
	.data
	.align 4
_engineerrstr:
	.long	LC326
.lcomm _DemoTextYstart,4,4
.lcomm _DemoText,192,32
.lcomm _DemoName,240,32
	.section .rdata,"dr"
	.align 4
LC12:
	.long	1068086180
	.align 4
LC13:
	.long	1056964608
	.align 4
LC14:
	.long	-1090519040
	.align 4
LC21:
	.long	1065353216
	.align 4
LC26:
	.long	994643931
	.align 4
LC27:
	.long	1182793728
	.align 4
LC28:
	.long	953267991
	.align 4
LC29:
	.long	1003277517
	.align 4
LC30:
	.long	-962397821
	.align 4
LC31:
	.long	1199570944
	.align 4
LC33:
	.long	978111693
	.align 4
LC36:
	.long	1090519040
	.align 4
LC37:
	.long	1132396544
	.align 16
LC41:
	.long	0
	.long	0
	.long	0
	.long	4
	.align 16
LC47:
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.align 4
LC50:
	.long	981467136
	.align 16
LC85:
	.long	0
	.long	640
	.long	480
	.long	8
	.align 4
LC88:
	.long	931135488
	.align 4
LC89:
	.long	LC40
	.align 8
LC92:
	.long	2560
	.long	7168
	.align 8
LC93:
	.long	0
	.long	8192
	.align 8
LC101:
	.long	0
	.long	3
	.def	___udivdi3;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_engineLoadBoard.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_wm_msgbox.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13TerminateGamev;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_fscanf;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	_fgets;	.scl	2;	.type	32;	.endef
	.def	_sscanf;	.scl	2;	.type	32;	.endef
	.def	_wm_msgbox;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	_strcasecmp;	.scl	2;	.type	32;	.endef
	.def	__Z9PlaySoundiPiS_S_i;	.scl	2;	.type	32;	.endef
	.def	__Z8PlaySongPcihh.part.0;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_paletteLoadFromDisk;	.scl	2;	.type	32;	.endef
	.def	_snprintf;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	__Z9InitSetupv;	.scl	2;	.type	32;	.endef
	.def	__Z9timerIniti.isra.0;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_paletteInitClosestColorMap;	.scl	2;	.type	32;	.endef
	.def	__Z11InitPalettev;	.scl	2;	.type	32;	.endef
	.def	__Z21initmultiplayersparmsiPKPKc;	.scl	2;	.type	32;	.endef
	.def	__Z17CONFIG_WriteSetupv;	.scl	2;	.type	32;	.endef
	.def	__Z12RTS_Shutdownv;	.scl	2;	.type	32;	.endef
	.def	__Z13SoundShutdownv.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z13MusicShutdownv.part.0;	.scl	2;	.type	32;	.endef
	.def	_engineUnInit;	.scl	2;	.type	32;	.endef
	.def	_uninitgroupfile;	.scl	2;	.type	32;	.endef
	.def	_handleevents.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z21initmultiplayerscyclev;	.scl	2;	.type	32;	.endef
	.def	__ZL18artReadIndexedFilei.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_Bgetsysmemsize;	.scl	2;	.type	32;	.endef
	.def	_tabledivide32.lto_priv.1;	.scl	2;	.type	32;	.endef
	.def	__ZL19osd_findexactsymbolPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL17osdfunc_cacheinfoPK13osdfuncparm_t.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj;	.scl	2;	.type	32;	.endef
	.def	_tileUpdatePicSiz;	.scl	2;	.type	32;	.endef
	.def	__ZL16CompareBreakInfoPKvS0_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_qsort;	.scl	2;	.type	32;	.endef
	.def	_tileSetupSky;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	__Z14LoadScriptFilePKc;	.scl	2;	.type	32;	.endef
	.def	__Z8GetTokenh.part.0;	.scl	2;	.type	32;	.endef
	.def	_atol;	.scl	2;	.type	32;	.endef
	.def	_qloadkvx;	.scl	2;	.type	32;	.endef
	.def	_enet_gettime.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_fromfile;	.scl	2;	.type	32;	.endef
	.def	__ZL10defsparserP10scriptfile.isra.0;	.scl	2;	.type	32;	.endef
	.def	_atoi;	.scl	2;	.type	32;	.endef
	.def	_freeallmodels;	.scl	2;	.type	32;	.endef
	.def	_hicinit;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.9;	.scl	2;	.type	32;	.endef
	.def	_sinf;	.scl	2;	.type	32;	.endef
	.def	_atanf;	.scl	2;	.type	32;	.endef
	.def	_Bcrc32;	.scl	2;	.type	32;	.endef
	.def	_pow;	.scl	2;	.type	32;	.endef
	.def	_enginePreInit;	.scl	2;	.type	32;	.endef
	.def	__ZL18defsparser_includePKcPK10scriptfileS0_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_close;	.scl	2;	.type	32;	.endef
	.def	_compare_usermaphacks;	.scl	2;	.type	32;	.endef
	.def	_setpalookupaddress;	.scl	2;	.type	32;	.endef
	.def	_fixtransluscence;	.scl	2;	.type	32;	.endef
	.def	_paletteGetClosestColorWithBlacklist;	.scl	2;	.type	32;	.endef
	.def	_memcmp;	.scl	2;	.type	32;	.endef
	.def	_paletteMakeLookupTable.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_addsymbolvalue;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_gettoken;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getlinum;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getsymbol;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getbraces;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getnumber;	.scl	2;	.type	32;	.endef
	.def	__Z10DoTheCachev;	.scl	2;	.type	32;	.endef
	.def	_videoSetGameMode;	.scl	2;	.type	32;	.endef
	.def	_paletteSetColorTable;	.scl	2;	.type	32;	.endef
	.def	_videoSetPalette;	.scl	2;	.type	32;	.endef
	.def	__ZL13osd_addsymbolPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z8OSD_Initv;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getstring;	.scl	2;	.type	32;	.endef
	.def	_lrintf;	.scl	2;	.type	32;	.endef
	.def	__Z13SoundCallBacki;	.scl	2;	.type	32;	.endef
	.def	__Z13SetupPreCachev.part.0;	.scl	2;	.type	32;	.endef
	.def	_FX_Init;	.scl	2;	.type	32;	.endef
	.def	_MV_SetVolume;	.scl	2;	.type	32;	.endef
	.def	__Z12MusicStartupv.part.0;	.scl	2;	.type	32;	.endef
	.def	_MV_ErrorString;	.scl	2;	.type	32;	.endef
	.def	_strncpy;	.scl	2;	.type	32;	.endef
	.def	_videoClearViewableArea;	.scl	2;	.type	32;	.endef
	.def	_rotatesprite_.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z17Terminate3DSoundsv;	.scl	2;	.type	32;	.endef
	.def	__Z17MNU_MeasureStringPKcPsS1_;	.scl	2;	.type	32;	.endef
	.def	__Z14MNU_DrawStringssPKcss;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_videoNextPage;	.scl	2;	.type	32;	.endef
	.def	__Z16DoPlayerBeginRunP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z8StopSongv.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z19PreMapCombineFloorsv;	.scl	2;	.type	32;	.endef
	.def	__Z18change_sprite_statss;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnSpritessP11STATEstructsiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z19PlayerSpawnPositionP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15COVER_SetReverbi;	.scl	2;	.type	32;	.endef
	.def	__Z18PlayerUpdateHealthP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	__Z17PlayerUpdateArmorP12PLAYERstructs.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z21PlayerUpdatePanelInfoP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13NewStateGroupsPP11STATEstruct.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z14DoPlayerZrangeP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z11SpriteSetupv;	.scl	2;	.type	32;	.endef
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
	.def	__Z9SpawnUserssP11STATEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13DoActorDebriss;	.scl	2;	.type	32;	.endef
	.def	__Z15DoLightingMatchss;	.scl	2;	.type	32;	.endef
	.def	__Z13TrackAddPointP5TRACKP11TRACK_POINTs;	.scl	2;	.type	32;	.endef
	.def	_deletesprite.isra.0;	.scl	2;	.type	32;	.endef
	.def	_videoFadePalette.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z22DoPlayerStopDiveNoWarpP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z16PlayerDeathResetP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13DemoPlaySetupv;	.scl	2;	.type	32;	.endef
	.def	__Z14QuickJumpSetupsss;	.scl	2;	.type	32;	.endef
	.def	__Z15TrackClonePoints;	.scl	2;	.type	32;	.endef
	.def	__Z10KillSprites;	.scl	2;	.type	32;	.endef
	.def	__Z18PlayerUpdateWeaponP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	__Z11SectorSetupv;	.scl	2;	.type	32;	.endef
	.def	__Z11InitOrgTileP13ORG_TILE_LIST;	.scl	2;	.type	32;	.endef
	.def	__Z17JS_ToggleLockoutsv;	.scl	2;	.type	32;	.endef
	.def	__Z19NextActorTrackPoints;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	__Z13JS_PlockErrorss;	.scl	2;	.type	32;	.endef
	.def	__Z13RefreshPointsP19SECTOR_OBJECTstructiih;	.scl	2;	.type	32;	.endef
	.def	_updatesectorz;	.scl	2;	.type	32;	.endef
	.def	__Z16EveryCheatToggleP12PLAYERstructPc;	.scl	2;	.type	32;	.endef
	.def	__Z14PutStringTimerP12PLAYERstructssPKcs;	.scl	2;	.type	32;	.endef
	.def	__Z12OSD_DispatchPKcb;	.scl	2;	.type	32;	.endef
	.def	__Z18MenuCommPlayerQuits.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z23MNU_CheckForMenusAnyKeyv;	.scl	2;	.type	32;	.endef
	.def	__Z16waitforeverybodyv.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z16MNU_StartNetGamev;	.scl	2;	.type	32;	.endef
	.def	__Z10getpacketsv;	.scl	2;	.type	32;	.endef
	.def	__Z16OSD_CaptureInputi;	.scl	2;	.type	32;	.endef
	.def	__Z12MNU_DrawMenuv;	.scl	2;	.type	32;	.endef
	.def	__Z18netbroadcastpacketPhi;	.scl	2;	.type	32;	.endef
	.def	_CONTROL_GetUserInput.isra.0;	.scl	2;	.type	32;	.endef
	.def	_CONTROL_ClearUserInput;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	__Z17ScreenCaptureKeysv.part.0;	.scl	2;	.type	32;	.endef
	.def	_MV_KillAllVoices.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z6FadeInhj.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z8DemoTermv;	.scl	2;	.type	32;	.endef
	.def	_strupr;	.scl	2;	.type	32;	.endef
	.def	__Z11InitNetVarsv;	.scl	2;	.type	32;	.endef
	.def	__Z14InitPredictionP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z15DemoRecordSetupv;	.scl	2;	.type	32;	.endef
	.def	__Z26DemoAutoRecordSyncMetadatav;	.scl	2;	.type	32;	.endef
	.def	__Z12adduserquotePKc;	.scl	2;	.type	32;	.endef
	.def	__Z13netsendpacketiPhi;	.scl	2;	.type	32;	.endef
	.def	__Z15SetRedrawScreenP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z12SetCrosshairv;	.scl	2;	.type	32;	.endef
	.def	__Z10OSD_PrintfPKcz;	.scl	2;	.type	32;	.endef
	.def	__Z19DemoAutoRecordStartv;	.scl	2;	.type	32;	.endef
	.def	__Z17StartAmbientSoundv;	.scl	2;	.type	32;	.endef
	.def	__Z9NullNinjas;	.scl	2;	.type	32;	.endef
	.def	__Z11DoNinjaMoves;	.scl	2;	.type	32;	.endef
	.def	__Z9CheckFires;	.scl	2;	.type	32;	.endef
	.def	__Z12InitEnemyUzis;	.scl	2;	.type	32;	.endef
	.def	__Z15InitActorDecides;	.scl	2;	.type	32;	.endef
	.def	__Z13InitEnemyStars;	.scl	2;	.type	32;	.endef
	.def	__Z16DoActorDeathMoves;	.scl	2;	.type	32;	.endef
	.def	__Z14DoNinjaSpecials;	.scl	2;	.type	32;	.endef
	.def	__Z15QueueFloorBloods;	.scl	2;	.type	32;	.endef
	.def	__Z15DoNinjaHariKaris;	.scl	2;	.type	32;	.endef
	.def	__Z12NullAnimators;	.scl	2;	.type	32;	.endef
	.def	__Z11DoNinjaPains;	.scl	2;	.type	32;	.endef
	.def	__Z12DoFootPrintss;	.scl	2;	.type	32;	.endef
	.def	__Z10CheatInputv;	.scl	2;	.type	32;	.endef
	.def	__Z13CON_SoundTestv;	.scl	2;	.type	32;	.endef
	.def	__Z15CON_WinPachinkov;	.scl	2;	.type	32;	.endef
	.def	__Z13CON_LoadSetupv;	.scl	2;	.type	32;	.endef
	.def	__Z9CON_Bunnyv;	.scl	2;	.type	32;	.endef
	.def	__Z19CON_MultiNameChangev;	.scl	2;	.type	32;	.endef
