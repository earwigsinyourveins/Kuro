	.file	"<artificial>"
	.text
	.p2align 4
	.def	_BGetTime;	.scl	3;	.type	32;	.endef
_BGetTime:
LFB0:
	.cfi_startproc
	movl	_totalclock, %eax
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.def	__Z13M32_OnShowOSDi;	.scl	3;	.type	32;	.endef
__Z13M32_OnShowOSDi:
LFB1:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	%eax, _osdvisible
	ret
	.cfi_endproc
LFE1:
	.section .rdata,"dr"
LC0:
	.ascii "restartvid: Reset failed...\12\0"
	.text
	.p2align 4
	.globl	__Z17osdcmd_restartvidPK13osdfuncparm_t
	.def	__Z17osdcmd_restartvidPK13osdfuncparm_t;	.scl	2;	.type	32;	.endef
__Z17osdcmd_restartvidPK13osdfuncparm_t:
LFB2:
	.cfi_startproc
	cmpl	$200, _qsetmode
	je	L13
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L13:
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	_upscalefactor, %edx
	movzbl	_fullscreen, %eax
	movb	$1, _videomodereset
	movl	_yres, %ecx
	movb	$0, __ZL12modeschecked.lto_priv.0
	movl	%edx, 4(%esp)
	movl	_bpp, %edx
	movl	%edx, (%esp)
	movl	_xres, %edx
	call	_videoSetGameMode
	testl	%eax, %eax
	jne	L14
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L14:
	.cfi_restore_state
	movl	$LC0, (%esp)
	call	__Z10OSD_PrintfPKcz
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE2:
	.section .rdata,"dr"
LC1:
	.ascii "vidmode: Mode change failed!\12\0"
	.text
	.p2align 4
	.def	__ZL14osdcmd_vidmodePK13osdfuncparm_t;	.scl	3;	.type	32;	.endef
__ZL14osdcmd_vidmodePK13osdfuncparm_t:
LFB5:
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
	movl	_fullscreen, %edi
	movl	40(%esp), %ebx
	movl	(%ebx), %edx
	cmpl	$3, %edx
	je	L16
	jg	L17
	cmpl	$1, %edx
	je	L18
	movl	_bpp, %esi
	cmpl	$2, %edx
	jne	L20
L22:
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_strtol
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, %ebp
	movl	8(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	_strtol
	movl	%eax, %ecx
L24:
	movl	%edi, %eax
	movl	_upscalefactor, %edx
	movzbl	%al, %eax
	cmpl	$200, _qsetmode
	je	L29
	movl	%edx, (%esp)
	movl	%ebp, %edx
	call	_videoSet2dMode
	call	_videoBeginDrawing
	movl	_bytesperline, %ecx
	movl	_frameplace, %edi
	xorl	%eax, %eax
	imull	_ydim16, %ecx
	sarl	$2, %ecx
/APP
 # 305 "source/build/src/build.cpp" 1
	rep; stosl
 # 0 "" 2
/NO_APP
	call	_videoEndDrawing
	movl	_ydim, %eax
	subl	$26, %eax
	movl	%eax, _ydim16
L31:
	xorl	%edx, %edx
L15:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%edx, %eax
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
L17:
	.cfi_restore_state
	cmpl	$4, %edx
	jne	L20
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebx), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_strtol
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, %edi
L16:
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_strtol
	movl	%eax, %esi
	leal	-8(%eax), %eax
	andl	$-9, %eax
	je	L22
	cmpl	$32, %esi
	je	L22
L20:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%edx, %eax
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
L29:
	.cfi_restore_state
	movl	%edx, 4(%esp)
	movl	%ebp, %edx
	movl	%esi, (%esp)
	call	_videoSetGameMode
	testl	%eax, %eax
	jne	L40
L30:
	movl	%esi, _bppgame
	movl	%edi, _fullscreen
	jmp	L31
	.p2align 4,,10
	.p2align 3
L18:
	movl	$10, 8(%esp)
	movl	_yres, %ecx
	movl	$0, 4(%esp)
	movl	8(%ebx), %eax
	movl	%ecx, 12(%esp)
	movl	_xres, %ebp
	movl	(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, (%esp)
	call	_strtol
	movl	12(%esp), %ecx
	movl	%eax, %esi
	leal	-8(%eax), %eax
	andl	$-9, %eax
	je	L24
	cmpl	$32, %esi
	movl	16(%esp), %edx
	jne	L15
	jmp	L24
	.p2align 4,,10
	.p2align 3
L40:
	movl	$LC1, (%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L30
	.cfi_endproc
LFE5:
	.p2align 4
	.def	__ZL20m32_keypresscallbackii;	.scl	3;	.type	32;	.endef
__ZL20m32_keypresscallbackii:
LFB6:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$-1, %edx
	movl	%eax, _g_iReturnVar
	movl	$11, %eax
	jmp	__Z10VM_OnEventii
	.cfi_endproc
LFE6:
	.section .rdata,"dr"
LC2:
	.ascii "You have unsaved changes.\0"
	.align 4
LC3:
	.ascii "^13Invalid map format, nothing loaded (code %d).\0"
	.text
	.p2align 4
	.def	__ZL16fileDropCallbackPKc;	.scl	3;	.type	32;	.endef
__ZL16fileDropCallbackPKc:
LFB7:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %eax
	cmpw	$0, _asksave
	je	L43
	movl	$LC2, 12(%esp)
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	jmp	_message
	.p2align 4,,10
	.p2align 3
L43:
	.cfi_restore_state
	xorl	%edx, %edx
	call	_LoadBoard
	testl	%eax, %eax
	jne	L49
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L49:
	.cfi_restore_state
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_message
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE7:
	.p2align 4
	.def	_M32_ResetFakeRORTiles;	.scl	3;	.type	32;	.endef
_M32_ResetFakeRORTiles:
LFB9:
	.cfi_startproc
	cmpl	$4, _rendmode
	je	L58
L55:
	ret
	.p2align 4,,10
	.p2align 3
L58:
	cmpb	$0, _showinvisibility
	je	L55
	movl	_numyaxbunches, %eax
	testl	%eax, %eax
	jle	L55
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L52:
	movl	%ebx, %eax
	movl	$1, %ecx
	xorl	%edx, %edx
	call	_yax_tweakpicnums
	movl	%ebx, %eax
	movl	$1, %ecx
	addl	$1, %ebx
	movl	$1, %edx
	call	_yax_tweakpicnums
	cmpl	_numyaxbunches, %ebx
	jl	L52
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE9:
	.section .rdata,"dr"
	.align 4
LC4:
	.ascii "There was a problem initializing the engine: %s\0"
LC5:
	.ascii "%s\0"
LC6:
	.ascii "source/build/src/build.cpp\0"
LC7:
	.ascii "M32_FatalEngineError\0"
	.align 4
LC8:
	.ascii "fatal_exit(%s) at %s:%d in %s()\12\0"
	.text
	.p2align 4
	.def	__ZL20M32_FatalEngineErrorv;	.scl	3;	.type	32;	.endef
__ZL20M32_FatalEngineErrorv:
LFB11:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	_engineerrstr, %eax
	movl	$LC4, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$_tempbuf, (%esp)
	call	_sprintf
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L70
L60:
	movl	$LC7, 16(%esp)
	movl	$563, 12(%esp)
	movl	$LC6, 8(%esp)
	movl	$_tempbuf, 4(%esp)
	movl	$LC8, (%esp)
	call	_initprintf
	movl	_g_sm_heap, %eax
	testl	%eax, %eax
	je	L61
	call	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	movl	_g_sm_heap, %edx
	testl	%edx, %edx
	je	L61
	movl	372(%edx), %eax
	testl	%eax, %eax
	je	L62
	movl	%edx, 20(%esp)
	call	_mi_free
	movl	20(%esp), %edx
L62:
	movl	%edx, %eax
	call	_mi_free
L61:
	movl	$_tempbuf, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__FatalAppExitA@8
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L70:
	.cfi_restore_state
	movl	$_tempbuf, 16(%esp)
	movl	$LC5, 12(%esp)
	movl	$562, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L60
	.cfi_endproc
LFE11:
	.section .rdata,"dr"
	.align 4
LC9:
	.ascii "x:%d y:%d z:%d ang:%d horiz:%d\0"
	.text
	.p2align 4
	.def	__ZL15move_and_updateiii;	.scl	3;	.type	32;	.endef
__ZL15move_and_updateiii:
LFB19:
	.cfi_startproc
	sarl	%cl, %edx
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	sarl	%cl, %eax
	movl	$65537, 28(%esp)
	movl	$1024, 24(%esp)
	movl	$1024, 20(%esp)
	movl	$128, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$_cursectnum, 4(%esp)
	movl	$_pos, (%esp)
	call	_clipmove
	cmpl	$200, _qsetmode
	je	L74
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L74:
	.cfi_restore_state
	movl	_horiz, %eax
	movl	$LC9, (%esp)
	movl	%eax, 20(%esp)
	movswl	_ang, %eax
	movl	%eax, 16(%esp)
	movl	_pos+8, %eax
	movl	%eax, 12(%esp)
	movl	_pos+4, %eax
	movl	%eax, 8(%esp)
	movl	_pos, %eax
	movl	%eax, 4(%esp)
	call	_silentmessage
	addl	$32, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE19:
	.section .rdata,"dr"
	.align 4
LC10:
	.ascii "Line %d, %s: Gv_GetVarN(): WTF??\0"
LC11:
	.ascii "source/duke3d/src/m32vars.cpp\0"
	.align 4
LC12:
	.ascii "Line %d, %s: Gv_GetVarN(): invalid var code %0x08x\0"
	.text
	.p2align 4
	.globl	@_Z10Gv_GetVarNi@4
	.def	@_Z10Gv_GetVarNi@4;	.scl	2;	.type	32;	.endef
@_Z10Gv_GetVarNi@4:
LFB20:
	.cfi_startproc
	cmpl	$5, %ecx
	je	L101
	movl	%ecx, %eax
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	andl	$12288, %eax
	je	L78
	cmpl	$12288, %eax
	jne	L102
	movl	_aGameArrays+4, %eax
	andl	$1023, %ecx
	movl	(%eax,%ecx,4), %eax
L75:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L102:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L103
L90:
	orl	$4, _vm+12
	movl	$-1, %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L78:
	.cfi_restore_state
	andl	$1023, %ecx
	movl	%ecx, %edx
	sall	$4, %edx
	movl	_aGameVars+12(%edx), %eax
	andl	$122881, %eax
	cmpl	$16384, %eax
	je	L81
	ja	L82
	cmpl	$1, %eax
	je	L83
	cmpl	$8192, %eax
	je	L81
	testl	%eax, %eax
	jne	L85
	movl	_aGameVars(%edx), %eax
	jmp	L75
	.p2align 4,,10
	.p2align 3
L101:
	.cfi_def_cfa_offset 4
	movl	_vm, %eax
	ret
	.p2align 4,,10
	.p2align 3
L82:
	.cfi_def_cfa_offset 32
	cmpl	$32768, %eax
	je	L86
	cmpl	$65536, %eax
	jne	L85
	movl	_aGameVars(%edx), %eax
	movzbl	(%eax), %eax
	jmp	L75
	.p2align 4,,10
	.p2align 3
L103:
	movl	_g_tw, %eax
	movl	%ecx, 24(%esp)
	movl	$LC12, 12(%esp)
	movl	_keyw(,%eax,4), %eax
	movl	$247, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$-2, (%esp)
	movl	%eax, 16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L90
	.p2align 4,,10
	.p2align 3
L85:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L90
	movl	_g_tw, %eax
	movl	$LC10, 12(%esp)
	movl	$235, 8(%esp)
	movl	_keyw(,%eax,4), %eax
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	%eax, 16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L90
	.p2align 4,,10
	.p2align 3
L86:
	movl	_aGameVars(%edx), %eax
	movswl	(%eax), %eax
	jmp	L75
	.p2align 4,,10
	.p2align 3
L83:
	movl	_aGameVars(%edx), %eax
	movl	_vm+4, %edx
	movl	(%eax,%edx,4), %eax
	jmp	L75
	.p2align 4,,10
	.p2align 3
L81:
	sall	$4, %ecx
	movl	_aGameVars(%ecx), %eax
	movl	(%eax), %eax
	jmp	L75
	.cfi_endproc
LFE20:
	.section .rdata,"dr"
	.align 4
LC13:
	.ascii "Line %d, %s: Gv_SetVarX(): invalid array index %s[%d], size=%d\0"
	.align 4
LC14:
	.ascii "Line %d, %s: Gv_SetVarX() (array): WTF??\0"
	.align 4
LC15:
	.ascii "Line %d, %s: tried to set %s on invalid target sprite (%d)\0"
	.align 4
LC16:
	.ascii "source/duke3d/src/m32structures.cpp\0"
	.align 4
LC17:
	.ascii "Line %d, %s: sprite structure member `%s' is read-only.\0"
	.align 4
LC18:
	.ascii "Line %d, %s: Invalid sector %d\0"
	.align 4
LC19:
	.ascii "Line %d, %s: Sector structure member `%s' is read-only.\0"
LC20:
	.ascii "Line %d, %s: Invalid wall %d\0"
	.align 4
LC21:
	.ascii "Line %d, %s: Wall structure member `%s' is read-only.\0"
	.align 4
LC22:
	.ascii "Line %d, %s: Wall structure member `%s' is read-only because it is used for TROR\0"
	.align 4
LC25:
	.ascii "Line %d, %s: Gv_SetVarX(): tried to set float var to NaN or infinity\0"
	.align 4
LC26:
	.ascii "Line %d, %s: Gv_SetVarX(): WTF??\0"
	.text
	.p2align 4
	.globl	@_Z9Gv_SetVarii@8
	.def	@_Z9Gv_SetVarii@8;	.scl	2;	.type	32;	.endef
@_Z9Gv_SetVarii@8:
LFB21:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%ecx, %eax
	andl	$12288, %eax
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
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	movl	%edx, %esi
	pushl	%ebx
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%ecx, %ebx
	subl	$48, %esp
	cmpl	$8192, %eax
	je	L105
	jg	L106
	testl	%eax, %eax
	je	L107
	movl	%ecx, %edx
	shrl	$16, %edx
	testb	$4, %ch
	je	L269
L108:
	movzbl	%bl, %ebx
	movl	%ebx, %eax
	sall	$4, %eax
	movl	_aGameArrays+12(%eax), %ecx
	testb	$32, _aGameArrays+8(%eax)
	jne	L270
L109:
	testl	%edx, %edx
	js	L232
	cmpl	%ecx, %edx
	jge	L232
	movl	%ebx, %ecx
	sall	$4, %ecx
	movl	_aGameArrays+8(%ecx), %eax
	andl	$7, %eax
	cmpl	$2, %eax
	je	L114
	ja	L115
	testl	%eax, %eax
	je	L116
	movl	_aGameArrays+4(%ecx), %eax
	movl	%esi, %ecx
	movb	%cl, (%eax,%edx)
	jmp	L104
	.p2align 4,,10
	.p2align 3
L106:
	movl	_aGameArrays+4, %eax
	andl	$1023, %ebx
	movl	%edx, (%eax,%ebx,4)
L104:
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
L105:
	.cfi_restore_state
	movl	%ecx, %eax
	movl	%ecx, %edx
	sarl	$16, %eax
	andl	$3, %edx
	andl	$32767, %eax
	movl	%eax, %edi
	movl	%ecx, %eax
	sarl	$2, %eax
	andl	$63, %eax
	movl	%eax, -20(%ebp)
	andb	$4, %bh
	je	L271
	cmpl	$2, %edx
	je	L229
	cmpl	$3, %edx
	je	L122
	testl	%edx, %edx
	jne	L231
L230:
	cmpl	$16383, %edi
	ja	L272
	movl	-20(%ebp), %eax
	sall	$4, %eax
	testb	$1, _SpriteLabels+6(%eax)
	jne	L273
	movl	_SpriteLabels+8(%eax), %ecx
	movl	$1, %edx
	movw	%dx, _asksave
	movl	_SpriteLabels+12(%eax), %edx
	cmpl	%ecx, %esi
	movl	%ecx, %eax
	cmovge	%esi, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	orl	%ecx, %edx
	cmovne	%eax, %esi
	movl	-20(%ebp), %eax
	cmpl	$22, %eax
	ja	L104
	jmp	*L132(,%eax,4)
	.section .rdata,"dr"
	.align 4
L132:
	.long	L154
	.long	L153
	.long	L152
	.long	L151
	.long	L150
	.long	L149
	.long	L148
	.long	L147
	.long	L146
	.long	L145
	.long	L144
	.long	L143
	.long	L142
	.long	L141
	.long	L140
	.long	L139
	.long	L138
	.long	L137
	.long	L136
	.long	L135
	.long	L134
	.long	L133
	.long	L131
	.text
	.p2align 4,,10
	.p2align 3
L107:
	andl	$1023, %ebx
	movl	%ebx, %edx
	sall	$4, %edx
	movl	_aGameVars+12(%edx), %eax
	andl	$122881, %eax
	cmpl	$16384, %eax
	je	L217
	ja	L218
	cmpl	$1, %eax
	je	L219
	cmpl	$8192, %eax
	je	L220
	testl	%eax, %eax
	jne	L222
	movl	%esi, _aGameVars(%edx)
	jmp	L104
	.p2align 4,,10
	.p2align 3
L270:
	movl	%edx, -20(%ebp)
	call	@_Z10Gv_GetVarNi@4
	movl	-20(%ebp), %edx
	movl	%eax, %ecx
	jmp	L109
	.p2align 4,,10
	.p2align 3
L269:
	movl	%edx, %ecx
	call	@_Z10Gv_GetVarNi@4
	movl	%eax, %edx
	jmp	L108
	.p2align 4,,10
	.p2align 3
L271:
	movl	%edi, %ecx
	movl	%edx, -24(%ebp)
	call	@_Z10Gv_GetVarNi@4
	movl	-24(%ebp), %edx
	movl	%eax, %edi
	cmpl	$2, %edx
	je	L121
	cmpl	$3, %edx
	je	L122
	testl	%edx, %edx
	je	L230
	testl	%eax, %eax
	js	L155
L231:
	movswl	_numsectors, %eax
	cmpl	%edi, %eax
	jle	L155
	movl	-20(%ebp), %eax
	sall	$4, %eax
	testb	$1, _SectorLabels+6(%eax)
	jne	L274
	movl	_SectorLabels+8(%eax), %ecx
	movl	_SectorLabels+12(%eax), %edx
	movl	$1, %ebx
	movw	%bx, _asksave
	cmpl	%ecx, %esi
	movl	%ecx, %eax
	cmovge	%esi, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	orl	%ecx, %edx
	cmovne	%eax, %esi
	movl	-20(%ebp), %eax
	cmpl	$22, %eax
	ja	L104
	jmp	*L164(,%eax,4)
	.section .rdata,"dr"
	.align 4
L164:
	.long	L186
	.long	L185
	.long	L184
	.long	L183
	.long	L182
	.long	L181
	.long	L180
	.long	L179
	.long	L178
	.long	L177
	.long	L176
	.long	L175
	.long	L174
	.long	L173
	.long	L172
	.long	L171
	.long	L170
	.long	L169
	.long	L168
	.long	L167
	.long	L166
	.long	L165
	.long	L163
	.text
	.p2align 4,,10
	.p2align 3
L218:
	cmpl	$32768, %eax
	je	L223
	cmpl	$65536, %eax
	jne	L222
	movl	_aGameVars(%edx), %eax
	movl	%esi, %ecx
	movb	%cl, (%eax)
	jmp	L104
	.p2align 4,,10
	.p2align 3
L220:
	sall	$4, %ebx
	movl	_aGameVars(%ebx), %eax
	movl	%esi, (%eax)
	jmp	L104
	.p2align 4,,10
	.p2align 3
L223:
	movl	_aGameVars(%edx), %eax
	movw	%si, (%eax)
	jmp	L104
	.p2align 4,,10
	.p2align 3
L217:
	movl	%esi, -20(%ebp)
	movss	-20(%ebp), %xmm0
	ucomiss	%xmm0, %xmm0
	jp	L225
	flds	-20(%ebp)
	fldl	LC23
	fcomip	%st(1), %st
	ja	L277
	fldl	LC24
	fxch	%st(1)
	fcomip	%st(1), %st
	fstp	%st(0)
	jbe	L220
	jmp	L225
L277:
	fstp	%st(0)
L225:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L275
L228:
	orl	$4, _vm+12
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
L232:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %esi
	cmpl	%esi, %eax
	cmovl	%esi, %eax
	cmpl	$-2, %eax
	jl	L228
	sall	$4, %ebx
	movl	%ecx, 32(%esp)
	movl	%edx, 28(%esp)
	movl	_aGameArrays(%ebx), %eax
	movl	%eax, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC13, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$402, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L228
	.p2align 4,,10
	.p2align 3
L121:
	testl	%eax, %eax
	js	L187
	.p2align 4
	.p2align 3
L229:
	movswl	_numwalls, %eax
	cmpl	%edi, %eax
	jle	L187
	movl	-20(%ebp), %eax
	sall	$4, %eax
	testb	$1, _WallLabels+6(%eax)
	jne	L276
	movl	$1, %ecx
	movl	_WallLabels+12(%eax), %edx
	movw	%cx, _asksave
	movl	_WallLabels+8(%eax), %ecx
	cmpl	%ecx, %esi
	movl	%ecx, %eax
	cmovge	%esi, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	orl	%ecx, %edx
	cmovne	%eax, %esi
	movl	-20(%ebp), %eax
	cmpl	$16, %eax
	ja	L104
	jmp	*L196(,%eax,4)
	.section .rdata,"dr"
	.align 4
L196:
	.long	L212
	.long	L211
	.long	L210
	.long	L209
	.long	L208
	.long	L207
	.long	L206
	.long	L205
	.long	L204
	.long	L203
	.long	L202
	.long	L201
	.long	L200
	.long	L199
	.long	L198
	.long	L197
	.long	L195
	.text
L197:
	movl	_wall, %edx
	movl	%edi, %eax
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%si, 28(%edx)
	jmp	L104
L198:
	movl	_numyaxbunches, %edx
	testl	%edx, %edx
	jle	L213
	xorl	%edx, %edx
	movswl	%di, %eax
	call	_yax_getnextwall
	testw	%ax, %ax
	jns	L214
L213:
	movl	_wall, %edx
	movl	%edi, %eax
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%si, 26(%edx)
	jmp	L104
L200:
	movl	_wall, %edx
	movl	%edi, %eax
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%esi, %eax
	movb	%al, 24(%edx)
	jmp	L104
L201:
	movl	_wall, %edx
	movl	%edi, %eax
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%esi, %eax
	movb	%al, 23(%edx)
	jmp	L104
L199:
	movl	_wall, %edx
	movl	%edi, %eax
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%esi, %eax
	movb	%al, 25(%edx)
	jmp	L104
L202:
	movl	_wall, %edx
	movl	%edi, %eax
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%esi, %eax
	movb	%al, 22(%edx)
	jmp	L104
L203:
	movl	_wall, %edx
	movl	%edi, %eax
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%esi, %eax
	movb	%al, 21(%edx)
	jmp	L104
L204:
	movl	_wall, %edx
	movl	%edi, %eax
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%esi, %eax
	movb	%al, 20(%edx)
	jmp	L104
L205:
	movl	_wall, %edx
	movl	%edi, %eax
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%si, 18(%edx)
	jmp	L104
L206:
	movl	_wall, %edx
	movl	%edi, %eax
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%si, 16(%edx)
	jmp	L104
L207:
	movl	_wall, %edx
	movl	%edi, %eax
	andl	$-3073, %esi
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	andw	$3072, 14(%edx)
	addl	$1, _wallchanged(,%eax,4)
	orw	%si, 14(%edx)
	jmp	L104
L208:
	movl	_wall, %edx
	movl	%edi, %eax
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%si, 12(%edx)
	jmp	L104
L209:
	movl	_wall, %edx
	movl	%edi, %eax
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%si, 10(%edx)
	jmp	L104
L210:
	movl	_wall, %edx
	movl	%edi, %eax
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%si, 8(%edx)
	jmp	L104
L211:
	movl	_wall, %edx
	movl	%edi, %eax
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%esi, 4(%edx)
	jmp	L104
L212:
	movl	_wall, %edx
	movl	%edi, %eax
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%esi, (%edx)
	jmp	L104
L195:
	movl	_numyaxbunches, %eax
	testl	%eax, %eax
	jle	L215
	movswl	%di, %eax
	call	_yax_getnextwall.constprop.0
	testw	%ax, %ax
	jns	L214
L215:
	movl	_wall, %edx
	movl	%edi, %eax
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%si, 30(%edx)
	jmp	L104
L134:
	imull	$44, %edi, %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	addl	%eax, %ecx
	addl	$38, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%si, 38(%ecx)
	jmp	L104
L135:
	imull	$44, %edi, %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	addl	%eax, %ecx
	addl	$36, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%si, 36(%ecx)
	jmp	L104
L136:
	imull	$44, %edi, %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	addl	%eax, %ecx
	addl	$34, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%si, 34(%ecx)
	jmp	L104
L137:
	imull	$44, %edi, %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	addl	%eax, %ecx
	addl	$32, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%si, 32(%ecx)
	jmp	L104
L138:
	imull	$44, %edi, %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	addl	%eax, %ecx
	addl	$30, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%si, 30(%ecx)
	jmp	L104
L139:
	imull	$44, %edi, %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	andl	$2047, %esi
	addl	%eax, %ecx
	addl	$28, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%si, 28(%ecx)
	jmp	L104
L140:
	cmpw	$1024, %si
	ja	L104
	imull	$44, %edi, %eax
	addl	_sprite, %eax
	movzwl	26(%eax), %eax
	cmpw	%si, %ax
	je	L104
	cmpw	$1024, %ax
	je	L104
	movswl	%di, %eax
	call	_do_deletespritestat
	leal	-12(%ebp), %esp
	movswl	%si, %edx
	movswl	%di, %eax
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
	jmp	_do_insertsprite_at_headofstat
L141:
	.cfi_restore_state
	cmpw	$4096, %si
	ja	L104
	imull	$44, %edi, %eax
	addl	_sprite, %eax
	movzwl	24(%eax), %eax
	cmpw	$4096, %ax
	je	L104
	cmpw	%si, %ax
	je	L104
	movswl	%di, %eax
	call	_do_deletespritesect
	leal	-12(%ebp), %esp
	movswl	%si, %edx
	movswl	%di, %eax
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
	jmp	_do_insertsprite_at_headofsect
L133:
	.cfi_restore_state
	imull	$44, %edi, %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	addl	%eax, %ecx
	addl	$40, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%si, 40(%ecx)
	jmp	L104
L181:
	movl	_sector, %edx
	leal	(%edi,%edi,4), %eax
	andl	$-1025, %esi
	leal	(%edx,%eax,8), %ecx
	leal	14(,%eax,8), %eax
	movl	$-858993459, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	andw	$1024, 14(%ecx)
	addl	$1, _sectorchanged(,%eax,4)
	orw	%si, 14(%ecx)
	jmp	L104
L182:
	movl	_sector, %edx
	leal	(%edi,%edi,4), %eax
	andl	$-1025, %esi
	leal	(%edx,%eax,8), %ecx
	leal	12(,%eax,8), %eax
	movl	$-858993459, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	andw	$1024, 12(%ecx)
	addl	$1, _sectorchanged(,%eax,4)
	orw	%si, 12(%ecx)
	jmp	L104
L183:
	leal	(%edi,%edi,4), %ecx
	movl	$-858993459, %edx
	leal	8(,%ecx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	_sector, %eax
	movl	%esi, 8(%eax,%ecx,8)
	jmp	L104
L184:
	leal	(%edi,%edi,4), %ecx
	movl	$-858993459, %edx
	leal	4(,%ecx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	_sector, %eax
	movl	%esi, 4(%eax,%ecx,8)
	jmp	L104
L185:
	leal	(%edi,%edi,4), %ecx
	movl	$-858993459, %edx
	leal	2(,%ecx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	_sector, %eax
	movw	%si, 2(%eax,%ecx,8)
	jmp	L104
L186:
	leal	(%edi,%edi,4), %ecx
	movl	$-858993459, %edx
	leal	0(,%ecx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	_sector, %eax
	movw	%si, (%eax,%ecx,8)
	jmp	L104
L163:
	leal	(%edi,%edi,4), %ecx
	movl	$-858993459, %edx
	leal	38(,%ecx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	_sector, %eax
	movw	%si, 38(%eax,%ecx,8)
	jmp	L104
L142:
	imull	$44, %edi, %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	addl	%eax, %ecx
	addl	$23, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%esi, %eax
	movb	%al, 23(%ecx)
	jmp	L104
L143:
	imull	$44, %edi, %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	addl	%eax, %ecx
	addl	$22, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%esi, %eax
	movb	%al, 22(%ecx)
	jmp	L104
L144:
	imull	$44, %edi, %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	addl	%eax, %ecx
	addl	$21, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%esi, %eax
	movb	%al, 21(%ecx)
	jmp	L104
L145:
	imull	$44, %edi, %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	addl	%eax, %ecx
	addl	$20, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%esi, %eax
	movb	%al, 20(%ecx)
	jmp	L104
L146:
	imull	$44, %edi, %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	addl	%eax, %ecx
	addl	$19, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%esi, %eax
	movb	%al, 19(%ecx)
	jmp	L104
L147:
	imull	$44, %edi, %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	addl	%eax, %ecx
	addl	$18, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%esi, %eax
	movb	%al, 18(%ecx)
	jmp	L104
L148:
	imull	$44, %edi, %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	addl	%eax, %ecx
	addl	$17, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%esi, %eax
	movb	%al, 17(%ecx)
	jmp	L104
L149:
	imull	$44, %edi, %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	addl	%eax, %ecx
	addl	$16, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%esi, %eax
	movb	%al, 16(%ecx)
	jmp	L104
L150:
	imull	$44, %edi, %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	addl	%eax, %ecx
	addl	$14, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%si, 14(%ecx)
	jmp	L104
L151:
	imull	$44, %edi, %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	addl	%eax, %ecx
	addl	$12, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%si, 12(%ecx)
	jmp	L104
L152:
	imull	$44, %edi, %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	addl	%eax, %ecx
	addl	$8, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%esi, 8(%ecx)
	jmp	L104
L153:
	imull	$44, %edi, %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	addl	%eax, %ecx
	addl	$4, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%esi, 4(%ecx)
	jmp	L104
L154:
	imull	$44, %edi, %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	addl	%eax, %ecx
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%esi, (%ecx)
	jmp	L104
L131:
	imull	$44, %edi, %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	addl	%eax, %ecx
	addl	$42, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%si, 42(%ecx)
	jmp	L104
L165:
	leal	(%edi,%edi,4), %ecx
	movl	$-858993459, %edx
	leal	36(,%ecx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	_sector, %eax
	movw	%si, 36(%eax,%ecx,8)
	jmp	L104
L166:
	leal	(%edi,%edi,4), %ecx
	movl	$-858993459, %edx
	leal	34(,%ecx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	_sector, %eax
	movw	%si, 34(%eax,%ecx,8)
	jmp	L104
L167:
	leal	(%edi,%edi,4), %ecx
	movl	$-858993459, %edx
	movl	%esi, %ebx
	leal	33(,%ecx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	_sector, %eax
	movb	%bl, 33(%eax,%ecx,8)
	jmp	L104
L168:
	leal	(%edi,%edi,4), %ecx
	movl	$-858993459, %edx
	movl	%esi, %ebx
	leal	32(,%ecx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	_sector, %eax
	movb	%bl, 32(%eax,%ecx,8)
	jmp	L104
L169:
	leal	(%edi,%edi,4), %ecx
	movl	$-858993459, %edx
	movl	%esi, %ebx
	leal	31(,%ecx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	_sector, %eax
	movb	%bl, 31(%eax,%ecx,8)
	jmp	L104
L170:
	leal	(%edi,%edi,4), %ecx
	movl	$-858993459, %edx
	movl	%esi, %ebx
	leal	30(,%ecx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	_sector, %eax
	movb	%bl, 30(%eax,%ecx,8)
	jmp	L104
L171:
	leal	(%edi,%edi,4), %ecx
	movl	$-858993459, %edx
	movl	%esi, %ebx
	leal	29(,%ecx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	_sector, %eax
	movb	%bl, 29(%eax,%ecx,8)
	jmp	L104
L172:
	leal	(%edi,%edi,4), %ecx
	movl	$-858993459, %edx
	movl	%esi, %ebx
	leal	28(,%ecx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	_sector, %eax
	movb	%bl, 28(%eax,%ecx,8)
	jmp	L104
L173:
	movswl	%si, %ecx
	movl	$1, %edx
L268:
	leal	-12(%ebp), %esp
	movl	%edi, %eax
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
	jmp	_setslope
L174:
	.cfi_restore_state
	leal	(%edi,%edi,4), %ecx
	movl	$-858993459, %edx
	leal	24(,%ecx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	_sector, %eax
	movw	%si, 24(%eax,%ecx,8)
	jmp	L104
L175:
	leal	(%edi,%edi,4), %ecx
	movl	$-858993459, %edx
	movl	%esi, %ebx
	leal	23(,%ecx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	_sector, %eax
	movb	%bl, 23(%eax,%ecx,8)
	jmp	L104
L176:
	leal	(%edi,%edi,4), %ecx
	movl	$-858993459, %edx
	movl	%esi, %ebx
	leal	22(,%ecx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	_sector, %eax
	movb	%bl, 22(%eax,%ecx,8)
	jmp	L104
L177:
	leal	(%edi,%edi,4), %ecx
	movl	$-858993459, %edx
	movl	%esi, %ebx
	leal	21(,%ecx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	_sector, %eax
	movb	%bl, 21(%eax,%ecx,8)
	jmp	L104
L178:
	leal	(%edi,%edi,4), %ecx
	movl	$-858993459, %edx
	movl	%esi, %ebx
	leal	20(,%ecx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	_sector, %eax
	movb	%bl, 20(%eax,%ecx,8)
	jmp	L104
L179:
	movswl	%si, %ecx
	xorl	%edx, %edx
	jmp	L268
L180:
	leal	(%edi,%edi,4), %ecx
	movl	$-858993459, %edx
	leal	16(,%ecx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	_sector, %eax
	movw	%si, 16(%eax,%ecx,8)
	jmp	L104
	.p2align 4,,10
	.p2align 3
L122:
	movl	%esi, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%edi, %edx
	movl	$1, %ecx
	movl	%eax, (%esp)
	call	@_ZL16VM_AccessTspriteiiii@16
	subl	$8, %esp
	jmp	L104
	.p2align 4,,10
	.p2align 3
L114:
	movl	_aGameArrays+4(%ecx), %eax
	movw	%si, (%eax,%edx,2)
	jmp	L104
	.p2align 4,,10
	.p2align 3
L116:
	sall	$4, %ebx
	movl	_aGameArrays+4(%ebx), %eax
	movl	%esi, (%eax,%edx,4)
	jmp	L104
	.p2align 4,,10
	.p2align 3
L115:
	cmpl	$4, %eax
	je	L116
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L228
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC14, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$422, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L228
	.p2align 4,,10
	.p2align 3
L219:
	movl	_aGameVars(%edx), %eax
	movl	_vm+4, %edx
	movl	%esi, (%eax,%edx,4)
	jmp	L104
	.p2align 4,,10
	.p2align 3
L222:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L228
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC26, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$490, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L228
L275:
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC25, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$475, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L228
L155:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L228
	movl	%edi, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC18, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$271, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L228
L187:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L228
	movl	%edi, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC20, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$142, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L228
L276:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L228
	movl	_WallLabels(%eax), %eax
	movl	%eax, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC21, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$145, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L228
L273:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L228
	movl	_SpriteLabels(%eax), %eax
	movl	%eax, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC17, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$380, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L228
L272:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L228
	movl	%edi, 28(%esp)
	movl	-20(%ebp), %eax
	sall	$4, %eax
	movl	_SpriteLabels(%eax), %eax
	movl	%eax, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC15, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$377, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L228
L274:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L228
	movl	_SectorLabels(%eax), %eax
	movl	%eax, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC19, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$274, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L228
L214:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L228
	movl	-20(%ebp), %eax
	sall	$4, %eax
	movl	_WallLabels(%eax), %eax
	movl	%eax, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC22, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$149, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L228
	.cfi_endproc
LFE21:
	.section .rdata,"dr"
	.align 4
LC28:
	.ascii "Line %d, %s: invalid light index (%d)\0"
	.align 4
LC29:
	.ascii "Line %d, %s: light with index %d is inactive!\0"
	.align 4
LC30:
	.ascii "Line %d, %s: invalid target sprite (%d)\0"
	.align 4
LC31:
	.ascii "Line %d, %s: structure member `%s' is read-only.\0"
	.text
	.p2align 4
	.def	@_ZL16VM_AccessTspriteiiii@16;	.scl	3;	.type	32;	.endef
@_ZL16VM_AccessTspriteiiii@16:
LFB31:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %eax
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	movl	%ecx, %edi
	movl	%ebx, 28(%esp)
	movl	52(%esp), %ecx
	movl	%esi, 32(%esp)
	cmpl	$22, %eax
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	jle	L279
	cmpl	$1023, %edx
	ja	L387
	movl	%eax, %ebx
	sall	$4, %ebx
	addl	$_LightLabels-368, %ebx
	cmpl	$39, %eax
	je	L287
	imull	$270, %edx, %esi
	testb	$1, _prlights+254(%esi)
	je	L388
	xorl	%esi, %esi
	testl	%edi, %edi
	jne	L289
L291:
	cmpl	$38, %eax
	ja	L285
	jmp	*L338(,%eax,4)
	.section .rdata,"dr"
	.align 4
L338:
	.long	L376
	.long	L375
	.long	L374
	.long	L373
	.long	L372
	.long	L371
	.long	L370
	.long	L369
	.long	L368
	.long	L367
	.long	L366
	.long	L365
	.long	L364
	.long	L363
	.long	L362
	.long	L361
	.long	L360
	.long	L359
	.long	L358
	.long	L357
	.long	L356
	.long	L355
	.long	L354
	.long	L353
	.long	L352
	.long	L351
	.long	L350
	.long	L349
	.long	L348
	.long	L347
	.long	L346
	.long	L345
	.long	L344
	.long	L343
	.long	L342
	.long	L341
	.long	L340
	.long	L339
	.long	L337
	.text
	.p2align 4,,10
	.p2align 3
L279:
	testl	%edx, %edx
	js	L282
	cmpl	%edx, _spritesortcnt
	jle	L282
	movl	%eax, %ebx
	imull	$44, %edx, %esi
	addl	_tsprite, %esi
	sall	$4, %ebx
	addl	$_SpriteLabels, %ebx
	testl	%edi, %edi
	je	L291
L289:
	testb	$1, 6(%ebx)
	jne	L389
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	movl	8(%ebx), %edi
	movl	12(%ebx), %ebp
	cmpl	%edi, %ecx
	movl	%edi, %ebx
	cmovge	%ecx, %ebx
	cmpl	%ebp, %ebx
	cmovg	%ebp, %ebx
	orl	%edi, %ebp
	cmovne	%ebx, %ecx
	cmpl	$38, %eax
	ja	L386
	jmp	*L297(,%eax,4)
	.section .rdata,"dr"
	.align 4
L297:
	.long	L335
	.long	L334
	.long	L333
	.long	L332
	.long	L331
	.long	L330
	.long	L329
	.long	L328
	.long	L327
	.long	L326
	.long	L325
	.long	L324
	.long	L323
	.long	L322
	.long	L321
	.long	L320
	.long	L319
	.long	L318
	.long	L317
	.long	L316
	.long	L315
	.long	L314
	.long	L313
	.long	L312
	.long	L311
	.long	L310
	.long	L309
	.long	L308
	.long	L307
	.long	L306
	.long	L305
	.long	L304
	.long	L303
	.long	L302
	.long	L301
	.long	L300
	.long	L299
	.long	L298
	.long	L296
	.text
	.p2align 4,,10
	.p2align 3
L287:
	.cfi_restore 5
	testl	%edi, %edi
	jne	L379
	imull	$270, %edx, %edx
	movzbl	_prlights+254(%edx), %eax
	andl	$1, %eax
L278:
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	movl	36(%esp), %edi
	addl	$44, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret	$8
	.p2align 4,,10
	.p2align 3
L379:
	.cfi_restore_state
	xorl	%esi, %esi
	jmp	L289
	.p2align 4,,10
	.p2align 3
L298:
	.cfi_offset 5, -8
	imull	$270, %edx, %edx
	movb	%cl, _prlights+32(%edx)
	.p2align 4
	.p2align 3
L336:
	movl	40(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	xorl	%eax, %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L296:
	.cfi_restore_state
	imull	$270, %edx, %edx
	movb	%cl, _prlights+33(%edx)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L335:
	movl	%ecx, (%esi)
	movl	40(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L278
	.p2align 4,,10
	.p2align 3
L334:
	.cfi_restore_state
	movl	%ecx, 4(%esi)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L333:
	movl	%ecx, 8(%esi)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L332:
	movw	%cx, 12(%esi)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L331:
	movw	%cx, 14(%esi)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L330:
	movb	%cl, 16(%esi)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L329:
	movb	%cl, 17(%esi)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L328:
	movb	%cl, 18(%esi)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L327:
	movb	%cl, 19(%esi)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L326:
	movb	%cl, 20(%esi)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L325:
	movb	%cl, 21(%esi)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L324:
	movb	%cl, 22(%esi)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L323:
	movb	%cl, 23(%esi)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L322:
	movw	%cx, 24(%esi)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L321:
	movw	%cx, 26(%esi)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L320:
	andw	$2047, %cx
	movw	%cx, 28(%esi)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L319:
	movw	%cx, 30(%esi)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L318:
	movw	%cx, 32(%esi)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L317:
	movw	%cx, 34(%esi)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L316:
	movw	%cx, 36(%esi)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L315:
	movw	%cx, 38(%esi)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L314:
	movw	%cx, 40(%esi)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L313:
	movw	%cx, 42(%esi)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L312:
	imull	$270, %edx, %edx
	movl	%ecx, _prlights(%edx)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L311:
	imull	$270, %edx, %edx
	movl	%ecx, _prlights+4(%edx)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L310:
	imull	$270, %edx, %edx
	movl	%ecx, _prlights+8(%edx)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L309:
	imull	$270, %edx, %edx
	movl	%ecx, _prlights+12(%edx)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L308:
	imull	$270, %edx, %edx
	movl	%ecx, _prlights+16(%edx)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L307:
	imull	$270, %edx, %edx
	movw	%cx, _prlights+20(%edx)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L306:
	imull	$270, %edx, %edx
	movw	%cx, _prlights+22(%edx)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L305:
	imull	$270, %edx, %edx
	movw	%cx, _prlights+24(%edx)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L304:
	imull	$270, %edx, %edx
	movw	%cx, _prlights+26(%edx)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L303:
	imull	$270, %edx, %edx
	movb	%cl, _prlights+28(%edx)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L302:
	imull	$270, %edx, %edx
	movb	%cl, _prlights+29(%edx)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L301:
	imull	$270, %edx, %edx
	movb	%cl, _prlights+30(%edx)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L300:
	imull	$270, %edx, %edx
	movb	%cl, _prlights+31(%edx)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L299:
	imull	$270, %edx, %edx
	movw	%cx, _prlights+34(%edx)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L340:
	.cfi_restore 5
	imull	$270, %edx, %edx
	movswl	_prlights+34(%edx), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L339:
	imull	$270, %edx, %edx
	movsbl	_prlights+32(%edx), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L348:
	imull	$270, %edx, %edx
	movswl	_prlights+20(%edx), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L347:
	imull	$270, %edx, %edx
	movswl	_prlights+22(%edx), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L346:
	imull	$270, %edx, %edx
	movswl	_prlights+24(%edx), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L345:
	imull	$270, %edx, %edx
	movswl	_prlights+26(%edx), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L344:
	imull	$270, %edx, %edx
	movzbl	_prlights+28(%edx), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L343:
	imull	$270, %edx, %edx
	movzbl	_prlights+29(%edx), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L342:
	imull	$270, %edx, %edx
	movzbl	_prlights+30(%edx), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L341:
	imull	$270, %edx, %edx
	movzbl	_prlights+31(%edx), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L337:
	imull	$270, %edx, %edx
	movsbl	_prlights+33(%edx), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L376:
	movl	(%esi), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L375:
	movl	4(%esi), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L374:
	movl	8(%esi), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L373:
	movzwl	12(%esi), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L372:
	movswl	14(%esi), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L371:
	movsbl	16(%esi), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L370:
	movzbl	17(%esi), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L369:
	movzbl	18(%esi), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L368:
	movzbl	19(%esi), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L367:
	movzbl	20(%esi), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L366:
	movzbl	21(%esi), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L365:
	movsbl	22(%esi), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L364:
	movsbl	23(%esi), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L363:
	movswl	24(%esi), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L362:
	movswl	26(%esi), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L361:
	movswl	28(%esi), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L360:
	movswl	30(%esi), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L359:
	movswl	32(%esi), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L358:
	movswl	34(%esi), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L357:
	movswl	36(%esi), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L356:
	movswl	38(%esi), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L355:
	movswl	40(%esi), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L354:
	movswl	42(%esi), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L353:
	imull	$270, %edx, %edx
	movl	_prlights(%edx), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L352:
	imull	$270, %edx, %edx
	movl	_prlights+4(%edx), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L351:
	imull	$270, %edx, %edx
	movl	_prlights+8(%edx), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L350:
	imull	$270, %edx, %edx
	movl	_prlights+12(%edx), %eax
	jmp	L278
	.p2align 4,,10
	.p2align 3
L349:
	imull	$270, %edx, %edx
	movl	_prlights+16(%edx), %eax
	jmp	L278
L282:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jge	L390
L293:
	orl	$4, _vm+12
L285:
	movl	$-1, %eax
	jmp	L278
L387:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jl	L293
	movl	_g_tw, %eax
	movl	%edx, 24(%esp)
	movl	$LC28, 12(%esp)
	movl	_keyw(,%eax,4), %eax
	movl	$420, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$-2, (%esp)
	movl	%eax, 16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L293
L390:
	movl	_g_tw, %eax
	movl	%edx, 24(%esp)
	movl	$LC30, 12(%esp)
	movl	_keyw(,%eax,4), %eax
	movl	$565, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$-2, (%esp)
	movl	%eax, 16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L293
L389:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L293
	movl	(%ebx), %eax
	movl	$LC31, 12(%esp)
	movl	$568, 8(%esp)
	movl	%eax, 24(%esp)
	movl	_g_tw, %eax
	movl	$LC16, 4(%esp)
	movl	_keyw(,%eax,4), %eax
	movl	$-2, (%esp)
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	%eax, 16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L293
L388:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jl	L293
	movl	_g_tw, %eax
	movl	%edx, 24(%esp)
	movl	$LC29, 12(%esp)
	movl	_keyw(,%eax,4), %eax
	movl	$426, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$-2, (%esp)
	movl	%eax, 16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L293
L386:
	.cfi_offset 5, -8
	movl	40(%esp), %ebp
	.cfi_restore 5
	jmp	L285
	.cfi_endproc
LFE31:
	.section .rdata,"dr"
	.align 4
LC32:
	.ascii "Line %d, %s: Gv_GetVarX() (constant): WTF??\0"
	.align 4
LC33:
	.ascii "Line %d, %s: Gv_GetVarX(): invalid array index (%s[%d])\0"
	.align 4
LC34:
	.ascii "Line %d, %s: Gv_GetVarX() (array): WTF??\0"
	.align 4
LC36:
	.ascii "Line %d, %s: Gv_GetVarX(): WTF??\0"
	.text
	.p2align 4
	.globl	@_Z9Gv_GetVari@4
	.def	@_Z9Gv_GetVari@4;	.scl	2;	.type	32;	.endef
@_Z9Gv_GetVari@4:
LFB32:
	.cfi_startproc
	cmpl	$5, %ecx
	je	L545
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%ecx, %edx
	andl	$2048, %ecx
	movl	%edx, %eax
	andb	$-9, %ah
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	movl	%edx, %esi
	pushl	%ebx
	andl	$62464, %esi
	.cfi_offset 3, -20
	movl	%ecx, %ebx
	shrl	$11, %ebx
	subl	$36, %esp
	cmpl	$1024, %esi
	je	L546
	movl	%edx, %esi
	andl	$12288, %esi
	cmpl	$8192, %esi
	je	L400
	jg	L401
	testl	%esi, %esi
	je	L402
	shrl	$16, %eax
	movl	%eax, %esi
	testb	$4, %dh
	je	L547
L403:
	movzbl	%dl, %edx
	movl	%edx, %eax
	sall	$4, %eax
	movl	_aGameArrays+12(%eax), %ecx
	testb	$32, _aGameArrays+8(%eax)
	jne	L548
L404:
	testl	%esi, %esi
	js	L515
	cmpl	%ecx, %esi
	jge	L515
	movl	%edx, %ecx
	leal	(%esi,%esi), %eax
	sall	$4, %ecx
	testb	$64, _aGameArrays+8(%ecx)
	cmovne	%eax, %esi
	movl	_aGameArrays+8(%ecx), %eax
	andl	$7, %eax
	cmpl	$2, %eax
	je	L409
	ja	L410
	testl	%eax, %eax
	je	L411
	movl	_aGameArrays+4(%ecx), %eax
	movl	%ebx, %edx
	negl	%edx
	movzbl	(%eax,%esi), %eax
	xorl	%edx, %eax
	addl	%ebx, %eax
	jmp	L391
	.p2align 4,,10
	.p2align 3
L546:
	andl	$3, %edx
	cmpl	$1, %edx
	je	L395
	cmpl	$2, %edx
	je	L396
	sarl	$16, %eax
	testl	%edx, %edx
	je	L391
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L549
L511:
	orl	$4, _vm+12
	leal	-12(%ebp), %esp
	movl	$-1, %eax
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
L545:
	movl	_vm, %eax
	ret
	.p2align 4,,10
	.p2align 3
L401:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	_aGameArrays+4, %ecx
	andl	$1023, %edx
	movl	%ebx, %eax
	negl	%eax
	xorl	(%ecx,%edx,4), %eax
	addl	%ebx, %eax
L391:
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
L400:
	.cfi_restore_state
	movl	%eax, %ecx
	sarl	$2, %eax
	movl	%edx, %esi
	sarl	$16, %ecx
	andl	$63, %eax
	andl	$3, %esi
	andl	$32767, %ecx
	movl	%eax, %edi
	andb	$4, %dh
	je	L550
	cmpl	$2, %esi
	je	L512
	cmpl	$3, %esi
	je	L417
	testl	%esi, %esi
	je	L513
L514:
	movswl	_numsectors, %eax
	cmpl	%ecx, %eax
	jle	L448
	cmpl	$22, %edi
	ja	L482
	imull	$40, %ecx, %eax
	addl	_sector, %eax
	jmp	*L454(,%edi,4)
	.section .rdata,"dr"
	.align 4
L454:
	.long	L476
	.long	L475
	.long	L499
	.long	L473
	.long	L472
	.long	L495
	.long	L494
	.long	L493
	.long	L492
	.long	L491
	.long	L490
	.long	L489
	.long	L464
	.long	L486
	.long	L462
	.long	L461
	.long	L460
	.long	L459
	.long	L458
	.long	L457
	.long	L456
	.long	L455
	.long	L453
	.text
	.p2align 4,,10
	.p2align 3
L402:
	andl	$1023, %edx
	movl	%edx, %esi
	sall	$4, %esi
	movl	_aGameVars+12(%esi), %eax
	andl	$122881, %eax
	cmpl	$16384, %eax
	je	L502
	ja	L503
	cmpl	$1, %eax
	je	L504
	cmpl	$8192, %eax
	je	L505
	testl	%eax, %eax
	jne	L507
	sall	$4, %edx
	movl	%ebx, %eax
	negl	%eax
	xorl	_aGameVars(%edx), %eax
	addl	%ebx, %eax
	jmp	L391
	.p2align 4,,10
	.p2align 3
L396:
	shrl	$16, %eax
	movl	%eax, %edx
	movl	%ebx, %eax
	negl	%eax
	xorl	0(,%edx,4), %eax
	addl	%ebx, %eax
	jmp	L391
	.p2align 4,,10
	.p2align 3
L395:
	shrl	$16, %eax
	movl	0(,%eax,4), %eax
	jmp	L391
	.p2align 4,,10
	.p2align 3
L549:
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC32, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$272, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L511
	.p2align 4,,10
	.p2align 3
L417:
	movl	$0, 4(%esp)
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movl	%edi, (%esp)
	call	@_ZL16VM_AccessTspriteiiii@16
	subl	$8, %esp
	movl	%eax, %edx
L543:
	movl	%ebx, %eax
	negl	%eax
	xorl	%edx, %eax
	addl	%ebx, %eax
	jmp	L391
	.p2align 4,,10
	.p2align 3
L504:
	movl	_aGameVars(%esi), %edx
	movl	_vm+4, %ecx
	movl	%ebx, %eax
	negl	%eax
	xorl	(%edx,%ecx,4), %eax
	addl	%ebx, %eax
	jmp	L391
	.p2align 4,,10
	.p2align 3
L411:
	sall	$4, %edx
	movl	%ebx, %eax
	movl	_aGameArrays+4(%edx), %edx
	negl	%eax
	xorl	(%edx,%esi,4), %eax
	addl	%ebx, %eax
	jmp	L391
L486:
	movswl	26(%eax), %edx
	jmp	L543
L491:
	movzbl	21(%eax), %edx
	jmp	L543
L499:
	movl	4(%eax), %edx
	jmp	L543
L489:
	movzbl	23(%eax), %edx
	jmp	L543
L490:
	movzbl	22(%eax), %edx
	jmp	L543
L492:
	movsbl	20(%eax), %edx
	jmp	L543
L493:
	movswl	18(%eax), %edx
	jmp	L543
L494:
	movswl	16(%eax), %edx
	jmp	L543
L495:
	movzwl	14(%eax), %edx
	jmp	L543
L453:
	movswl	38(%eax), %edx
	jmp	L543
L473:
	movl	8(%eax), %edx
	jmp	L543
L472:
	movzwl	12(%eax), %edx
	jmp	L543
L464:
	movswl	24(%eax), %edx
	jmp	L543
L455:
	movswl	36(%eax), %edx
	jmp	L543
L456:
	movswl	34(%eax), %edx
	jmp	L543
L475:
	movswl	2(%eax), %edx
	jmp	L543
L476:
	movswl	(%eax), %edx
	jmp	L543
L461:
	movzbl	29(%eax), %edx
	jmp	L543
L462:
	movsbl	28(%eax), %edx
	jmp	L543
L457:
	movzbl	33(%eax), %edx
	jmp	L543
L458:
	movzbl	32(%eax), %edx
	jmp	L543
L459:
	movzbl	31(%eax), %edx
	jmp	L543
L460:
	movzbl	30(%eax), %edx
	jmp	L543
	.p2align 4,,10
	.p2align 3
L503:
	cmpl	$32768, %eax
	je	L508
	cmpl	$65536, %eax
	jne	L507
	movl	_aGameVars(%esi), %eax
	movl	%ebx, %edx
	negl	%edx
	movzbl	(%eax), %eax
	xorl	%edx, %eax
	addl	%ebx, %eax
	jmp	L391
	.p2align 4,,10
	.p2align 3
L550:
	call	@_Z10Gv_GetVarNi@4
	movl	%eax, %ecx
	cmpl	$2, %esi
	je	L416
	cmpl	$3, %esi
	je	L417
	testl	%esi, %esi
	je	L513
	testl	%eax, %eax
	jns	L514
L448:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L480
	movl	%ecx, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC18, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$271, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L480:
	orl	$4, _vm+12
L482:
	movl	$-1, %edx
	jmp	L543
	.p2align 4,,10
	.p2align 3
L548:
	movl	%edx, -16(%ebp)
	call	@_Z10Gv_GetVarNi@4
	movl	-16(%ebp), %edx
	movl	%eax, %ecx
	jmp	L404
	.p2align 4,,10
	.p2align 3
L547:
	movl	%eax, %ecx
	movl	%edx, -16(%ebp)
	call	@_Z10Gv_GetVarNi@4
	movl	-16(%ebp), %edx
	movl	%eax, %esi
	jmp	L403
	.p2align 4,,10
	.p2align 3
L410:
	cmpl	$4, %eax
	je	L411
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L511
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC34, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$312, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L511
	.p2align 4,,10
	.p2align 3
L409:
	movl	_aGameArrays+4(%ecx), %eax
	movl	%ebx, %edx
	negl	%edx
	movswl	(%eax,%esi,2), %eax
	xorl	%edx, %eax
	addl	%ebx, %eax
	jmp	L391
	.p2align 4,,10
	.p2align 3
L513:
	cmpl	$16383, %ecx
	ja	L551
	cmpl	$22, %edi
	ja	L482
	imull	$44, %ecx, %eax
	addl	_sprite, %eax
	jmp	*L424(,%edi,4)
	.section .rdata,"dr"
	.align 4
L424:
	.long	L500
	.long	L499
	.long	L473
	.long	L472
	.long	L442
	.long	L441
	.long	L440
	.long	L439
	.long	L438
	.long	L437
	.long	L491
	.long	L435
	.long	L434
	.long	L464
	.long	L486
	.long	L485
	.long	L483
	.long	L429
	.long	L456
	.long	L455
	.long	L453
	.long	L425
	.long	L423
	.text
L483:
	movswl	30(%eax), %edx
	jmp	L543
L485:
	movswl	28(%eax), %edx
	jmp	L543
L500:
	movl	(%eax), %edx
	jmp	L543
L423:
	movswl	42(%eax), %edx
	jmp	L543
L434:
	movsbl	23(%eax), %edx
	jmp	L543
L435:
	movsbl	22(%eax), %edx
	jmp	L543
L437:
	movzbl	20(%eax), %edx
	jmp	L543
L438:
	movzbl	19(%eax), %edx
	jmp	L543
L439:
	movzbl	18(%eax), %edx
	jmp	L543
L440:
	movzbl	17(%eax), %edx
	jmp	L543
L441:
	movsbl	16(%eax), %edx
	jmp	L543
L442:
	movswl	14(%eax), %edx
	jmp	L543
L425:
	movswl	40(%eax), %edx
	jmp	L543
L429:
	movswl	32(%eax), %edx
	jmp	L543
	.p2align 4,,10
	.p2align 3
L512:
	movswl	_numwalls, %eax
	cmpl	%ecx, %eax
	jle	L478
	cmpl	$16, %edi
	ja	L482
	movl	%ecx, %eax
	sall	$5, %eax
	addl	_wall, %eax
	jmp	*L484(,%edi,4)
	.section .rdata,"dr"
	.align 4
L484:
	.long	L500
	.long	L499
	.long	L498
	.long	L497
	.long	L496
	.long	L495
	.long	L494
	.long	L493
	.long	L492
	.long	L491
	.long	L490
	.long	L489
	.long	L488
	.long	L487
	.long	L486
	.long	L485
	.long	L483
	.text
L487:
	movzbl	25(%eax), %edx
	jmp	L543
L488:
	movzbl	24(%eax), %edx
	jmp	L543
L496:
	movswl	12(%eax), %edx
	jmp	L543
L497:
	movswl	10(%eax), %edx
	jmp	L543
L498:
	movswl	8(%eax), %edx
	jmp	L543
	.p2align 4,,10
	.p2align 3
L508:
	movl	_aGameVars(%esi), %eax
	movl	%ebx, %edx
	negl	%edx
	movswl	(%eax), %eax
	xorl	%edx, %eax
	addl	%ebx, %eax
	jmp	L391
	.p2align 4,,10
	.p2align 3
L502:
	movl	_aGameVars(%esi), %eax
	movss	(%eax), %xmm0
	testl	%ecx, %ecx
	je	L544
	xorps	LC35, %xmm0
L544:
	movss	%xmm0, -16(%ebp)
	movl	-16(%ebp), %eax
	jmp	L391
	.p2align 4,,10
	.p2align 3
L507:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L511
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC36, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$367, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L511
	.p2align 4,,10
	.p2align 3
L505:
	movl	_aGameVars(%esi), %edx
	movl	%ebx, %eax
	negl	%eax
	xorl	(%edx), %eax
	addl	%ebx, %eax
	jmp	L391
L416:
	testl	%eax, %eax
	jns	L512
L478:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L480
	movl	%ecx, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC20, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$142, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L480
L515:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jl	L511
	sall	$4, %edx
	movl	%esi, 28(%esp)
	movl	_aGameArrays(%edx), %eax
	movl	%eax, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC33, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$295, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L511
L551:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L480
	movl	%edi, %eax
	movl	%ecx, 28(%esp)
	sall	$4, %eax
	movl	_SpriteLabels(%eax), %eax
	movl	%eax, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC15, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$377, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L480
	.cfi_endproc
LFE32:
	.p2align 4
	.globl	__ZL14yax_tweakwallsss.lto_priv.0
	.def	__ZL14yax_tweakwallsss.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL14yax_tweakwallsss.lto_priv.0:
LFB33:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movw	%ax, 2(%esp)
	movw	%dx, 6(%esp)
	cmpw	$0, _numwalls
	jle	L552
	movl	%edi, 16(%esp)
	.cfi_offset 7, -12
	xorl	%edi, %edi
	movl	%ebx, 8(%esp)
	movl	%esi, 12(%esp)
	movl	%ebp, 20(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	jmp	L553
	.p2align 4,,10
	.p2align 3
L570:
	movswl	_numwalls, %eax
	addl	$1, %edi
	cmpl	%edi, %eax
	jle	L566
L553:
	movl	%edi, %esi
	movw	%di, 4(%esp)
	xorl	%ebx, %ebx
	sall	$5, %esi
	cmpw	$0, _editstatus
	je	L567
L555:
	movl	_wall, %ecx
	leal	10(%ebx), %edx
	leal	(%ecx,%esi), %eax
	movzwl	14(%eax), %ebp
	btl	%edx, %ebp
	jnc	L568
	addl	$26, %eax
	movl	%eax, %edx
	subl	%ecx, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movzwl	(%eax,%ebx,4), %ecx
	cmpw	%cx, 2(%esp)
	jle	L569
L556:
	cmpl	$1, %ebx
	je	L570
	movl	$1, %ebx
	cmpw	$0, _editstatus
	jne	L555
L567:
	leal	0(,%edi,4), %edx
	movzwl	_yax_nextwall(%edx,%ebx,2), %eax
	cmpw	%ax, 2(%esp)
	jg	L556
	addw	6(%esp), %ax
	movw	%ax, _yax_nextwall(%edx,%ebx,2)
	jmp	L556
	.p2align 4,,10
	.p2align 3
L569:
	addw	6(%esp), %cx
L558:
	movswl	4(%esp), %eax
	movswl	%cx, %ecx
	movswl	%bx, %edx
	call	_yax_setnextwall.part.0
	jmp	L556
	.p2align 4,,10
	.p2align 3
L566:
	movl	8(%esp), %ebx
	.cfi_restore 3
	movl	12(%esp), %esi
	.cfi_restore 6
	movl	16(%esp), %edi
	.cfi_restore 7
	movl	20(%esp), %ebp
	.cfi_restore 5
L552:
	addl	$24, %esp
	.cfi_def_cfa_offset 4
	ret
L568:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpw	$0, 2(%esp)
	jns	L556
	movzwl	6(%esp), %eax
	leal	-1(%eax), %ecx
	jmp	L558
	.cfi_endproc
LFE33:
	.p2align 4
	.globl	__ZL22reset_default_mapstatev.lto_priv.0
	.def	__ZL22reset_default_mapstatev.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL22reset_default_mapstatev.lto_priv.0:
LFB37:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$32768, %eax
	movl	$1536, %ecx
	movl	$2147483647, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	%eax, _pos
	movl	%eax, _pos+4
	xorl	%eax, %eax
	movw	%ax, _numsectors
	xorl	%eax, %eax
	movl	%ebx, -8(%ebp)
	.cfi_offset 3, -16
	movl	$-1, %ebx
	movw	%ax, _numwalls
	movl	$-2147483648, %eax
	movl	%eax, _editorzrange
	movw	%cx, _ang
	movl	%edx, _editorzrange+4
	movl	$0, _pos+8
	movw	%bx, _cursectnum
	call	_initspritelists
	call	_taglab_init
	movl	__ZL16g_bakTileFileNum.lto_priv.0, %eax
	testl	%eax, %eax
	je	L572
	call	_artClearMapArt.part.0
L572:
	xorl	%ebx, %ebx
	jmp	L577
	.p2align 4,,10
	.p2align 3
L573:
	xorl	%edx, %edx
	movl	$-1, %ecx
	movswl	%bx, %eax
	call	_yax_setbunch.part.0
	cmpw	$0, _editstatus
	je	L574
	movswl	%bx, %eax
	movl	$-1, %ecx
	movl	$1, %edx
	addl	$1, %ebx
	call	_yax_setbunch.part.0
	cmpl	$4096, %ebx
	je	L580
L577:
	cmpw	$0, _editstatus
	jne	L573
	movl	$-1, %edx
	movw	%dx, _yax_bunchnum(,%ebx,4)
L574:
	movl	$-1, %eax
	movw	%ax, _yax_bunchnum+2(,%ebx,4)
	addl	$1, %ebx
	cmpl	$4096, %ebx
	jne	L577
L580:
	movl	$1, %eax
	call	_yax_update
	movl	_pos+8, %eax
	call	_yax_updategrays
	call	_calc_sector_reachability
	movl	-8(%ebp), %ebx
	movl	$-1, _g_loadedMapVersion
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE37:
	.section .rdata,"dr"
LC41:
	.ascii "mcapxxxx.tga\0"
	.text
	.p2align 4
	.globl	_M32_DrawRoomsAndMasks
	.def	_M32_DrawRoomsAndMasks;	.scl	2;	.type	32;	.endef
_M32_DrawRoomsAndMasks:
LFB42:
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
	subl	$384, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	_yxaspect, %eax
	movl	%eax, -348(%ebp)
	movl	_viewingrange, %eax
	movl	%eax, -352(%ebp)
	movl	_r_usenewaspect, %eax
	testl	%eax, %eax
	jne	L732
L582:
	movl	$-1, %edx
	movl	$12, %eax
	call	__Z10VM_OnEventii
	movl	_rendmode, %esi
	cmpl	$4, %esi
	je	L583
	movl	_numyaxbunches, %ebx
	testl	%ebx, %ebx
	jne	L733
L583:
	movswl	_cursectnum, %eax
	movl	%eax, 8(%esp)
	movswl	_horiz, %eax
	sall	$16, %eax
	movl	%eax, 4(%esp)
	movswl	_ang, %eax
	sall	$16, %eax
	movl	%eax, (%esp)
	movl	_pos, %eax
	movl	_pos+8, %ecx
	movl	_pos+4, %edx
	call	_renderDrawRoomsQ16.isra.0
	movl	__ZL14global100horiz.lto_priv.0, %eax
	movl	$0, -172(%ebp)
	movl	$0, -168(%ebp)
	movswl	_cursectnum, %edi
	movl	%eax, -340(%ebp)
	movl	$-1, -184(%ebp)
	cmpl	$4, _rendmode
	je	L588
	movl	_numyaxbunches, %ebx
	testl	%ebx, %ebx
	jne	L734
L588:
	movl	__ZZ21M32_DrawRoomsAndMasksE8srchwall, %eax
	movzwl	_searchwall, %esi
	movzwl	_searchstat, %ebx
	testl	%eax, %eax
	js	L592
	movl	$3, %ecx
	movw	%ax, _searchwall
	movw	%cx, _searchstat
L592:
	call	_ExtAnalyzeSprites.isra.0
	movl	$1, %eax
	movl	$-1, %edx
	call	__Z10VM_OnEventii
	movw	%si, _searchwall
	movw	%bx, _searchstat
	call	_renderDrawMasks
	movl	$-1, %eax
	cmpw	$3, _searchstat
	jne	L653
	movswl	_searchwall, %eax
L653:
	movl	%eax, __ZZ21M32_DrawRoomsAndMasksE8srchwall
	call	_M32_ResetFakeRORTiles
	cmpl	$4, _rendmode
	je	L735
L654:
	movl	$-1, %edx
	movl	$5, %eax
	call	__Z10VM_OnEventii
	movl	_g_doScreenShot, %edx
	testl	%edx, %edx
	jne	L736
L671:
	movl	_r_usenewaspect, %eax
	testl	%eax, %eax
	jne	L737
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
L734:
	.cfi_restore_state
	movswl	_numsectors, %eax
	movl	$_gotsector, 4(%esp)
	movl	$__ZZ13yax_drawroomsE10ogotsector, (%esp)
	movl	%eax, %esi
	addl	$7, %eax
	sarl	$3, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	testw	%di, %di
	js	L590
	movl	%edi, %eax
	call	_yax_getbunch.constprop.1
	movw	%ax, -184(%ebp)
	movl	%edi, %eax
	call	_yax_getbunch.constprop.0
	movl	_numyaxbunches, %ebx
	movzwl	_numsectors, %esi
	movw	%ax, -182(%ebp)
L590:
	leal	7(%ebx), %eax
	movl	$0, 4(%esp)
	sarl	$3, %eax
	movl	$__ZZ13yax_drawroomsE9havebunch, (%esp)
	movl	%eax, 8(%esp)
	call	_memset
	movl	%edi, -360(%ebp)
	movl	$0, _yax_globalcf
	movl	$-1, -344(%ebp)
	movl	$0, -308(%ebp)
L631:
	movl	$0, -300(%ebp)
	movl	-308(%ebp), %eax
	movl	%eax, %edi
	sall	$8, %edi
	movl	%edi, -356(%ebp)
	movl	-344(%ebp), %edi
	addl	$8, %edi
	movl	%edi, -332(%ebp)
	movl	%eax, %edi
	leal	0(,%eax,4), %eax
	leal	-80(%ebp,%eax), %ebx
	sall	$9, %edi
	leal	-144(%ebp,%eax), %eax
	movl	%ebx, -324(%ebp)
	movl	%eax, -336(%ebp)
	movl	%edi, -328(%ebp)
L629:
	movl	-332(%ebp), %eax
	movl	-324(%ebp), %ebx
	movl	-300(%ebp), %edx
	movl	%eax, _yax_globallev
	movl	-308(%ebp), %eax
	movl	-172(%ebp,%eax,4), %edi
	movl	%edi, (%ebx)
	movl	-336(%ebp), %ebx
	movl	%edi, (%ebx,%edx,8)
	testw	%si, %si
	jle	L593
	testl	%eax, %eax
	je	L738
	movl	%edi, -232(%ebp)
	movl	$1, %eax
	xorl	%esi, %esi
	movl	$0, -312(%ebp)
	jmp	L594
	.p2align 6
	.p2align 4,,10
	.p2align 3
L607:
	movswl	_numsectors, %eax
	addl	$1, %esi
	cmpl	%eax, %esi
	jge	L730
L740:
	movl	%esi, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %eax
L594:
	movl	%esi, %edx
	sarl	$3, %edx
	movzbl	_gotsector(%edx), %ebx
	andl	%eax, %ebx
	cmpb	%al, %bl
	jne	L607
	cmpw	$0, _editstatus
	je	L739
	movswl	%si, %eax
	movl	$1, %edx
	call	_yax_getbunch.part.0
	movl	%eax, %ecx
L609:
	movswl	%cx, %eax
	testl	%eax, %eax
	js	L607
	sarl	$3, %eax
	movzbl	__ZZ13yax_drawroomsE9havebunch(%eax), %edx
	movl	%eax, %edi
	movl	%ecx, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %ebx
	movl	%edx, %eax
	movb	%dl, -220(%ebp)
	notl	%eax
	testb	%bl, %al
	je	L607
	movl	_rendmode, %eax
	testl	%eax, %eax
	jne	L611
	movzbl	_haveymost(%edi), %eax
	andl	%ebx, %eax
	cmpb	%al, %bl
	jne	L607
L611:
	movl	_sector, %edx
	leal	(%esi,%esi,4), %eax
	leal	(%edx,%eax,8), %edx
	leal	14(,%eax,8), %eax
	movl	%edx, -224(%ebp)
	movl	$-858993459, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	-224(%ebp), %edx
	testb	$2, 14(%edx)
	jne	L612
	movl	_globalposz, %eax
	cmpl	%eax, 8(%edx)
	jl	L607
L612:
	movl	-168(%ebp), %eax
	orb	-220(%ebp), %bl
	addl	$1, %esi
	addl	$1, -312(%ebp)
	leal	1(%eax), %edx
	movw	%cx, __ZL7bunches+512(%eax,%eax)
	movl	-324(%ebp), %eax
	movb	%bl, __ZZ13yax_drawroomsE9havebunch(%edi)
	addl	$1, (%eax)
	movswl	_numsectors, %eax
	movl	%edx, -168(%ebp)
	cmpl	%eax, %esi
	jl	L740
L730:
	movl	-232(%ebp), %edi
L604:
	movl	-312(%ebp), %ebx
	testl	%ebx, %ebx
	jne	L613
L593:
	movl	-300(%ebp), %eax
	subl	$1, %eax
L614:
	movl	-308(%ebp), %edi
	movl	%eax, -160(%ebp,%edi,4)
	cmpl	$1, %edi
	je	L630
	movswl	_numsectors, %eax
	addl	$2, -344(%ebp)
	movl	$1, _yax_globalcf
	movl	%eax, %esi
	addl	$7, %eax
	movl	$__ZZ13yax_drawroomsE10ogotsector, 4(%esp)
	sarl	$3, %eax
	movl	$_gotsector, (%esp)
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	$1, -308(%ebp)
	jmp	L631
L733:
	movl	$1, _g_nodraw
	xorl	%eax, %eax
	movw	%ax, __ZL17yax_spritesortcnt.lto_priv.0+32
	leal	7(%ebx), %eax
	movl	$0, __ZL17yax_spritesortcnt.lto_priv.0
	sarl	$3, %eax
	movl	$0, __ZL17yax_spritesortcnt.lto_priv.0+4
	movl	$0, __ZL17yax_spritesortcnt.lto_priv.0+8
	movl	$0, __ZL17yax_spritesortcnt.lto_priv.0+12
	movl	$0, __ZL17yax_spritesortcnt.lto_priv.0+16
	movl	$0, __ZL17yax_spritesortcnt.lto_priv.0+20
	movl	$0, __ZL17yax_spritesortcnt.lto_priv.0+24
	movl	$0, __ZL17yax_spritesortcnt.lto_priv.0+28
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_haveymost, (%esp)
	call	_memset
	testl	%esi, %esi
	jne	L583
	imull	_xdimen, %ebx
	cmpl	__ZL14ymostallocsize, %ebx
	jle	L583
	movl	%ebx, __ZL14ymostallocsize
	addl	%ebx, %ebx
	movl	%ebx, 4(%esp)
	movl	__ZL6yumost.lto_priv.0, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%eax, %eax
	jne	L685
	testl	%ebx, %ebx
	jne	L726
L685:
	movl	%eax, __ZL6yumost.lto_priv.0
	movl	__ZL14ymostallocsize, %eax
	leal	(%eax,%eax), %ebx
	movl	%ebx, 4(%esp)
	movl	__ZL6ydmost.lto_priv.0, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%eax, %eax
	jne	L586
	testl	%ebx, %ebx
	je	L586
L726:
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L739:
	movzwl	_yax_bunchnum+2(,%esi,4), %ecx
	jmp	L609
L613:
	movl	-312(%ebp), %eax
	movl	%edi, -364(%ebp)
	movl	%edi, %esi
	movl	$0, _scansector_collectsprites
	addl	%edi, %eax
	movl	%eax, -304(%ebp)
	.p2align 4
	.p2align 3
L621:
	movl	_yax_globalcf, %edx
	movl	%edx, %eax
	sall	$8, %eax
	addl	%esi, %eax
	movswl	__ZL7bunches(%eax,%eax), %ecx
	xorl	%eax, %eax
	testl	%edx, %edx
	sete	%al
	sall	$8, %eax
	addl	%ecx, %eax
	movswl	_headsectbunch(%eax,%eax), %eax
	movl	%eax, -292(%ebp)
	cmpl	$-1, %eax
	je	L674
	movl	_globalposy, %eax
	movl	%ecx, -316(%ebp)
	movl	$2147483647, -288(%ebp)
	movl	%eax, -264(%ebp)
	movl	_globalposx, %eax
	movl	$-1, -284(%ebp)
	movl	%eax, -260(%ebp)
	movl	%esi, -320(%ebp)
	.p2align 4
	.p2align 3
L620:
	movl	-292(%ebp), %edi
	movl	-264(%ebp), %edx
	movl	-260(%ebp), %eax
	movswl	%di, %ecx
	movl	%edi, %ebx
	call	_inside
	cmpl	$1, %eax
	je	L675
	movl	_sector, %edx
	leal	(%edi,%edi,4), %eax
	leal	(%edx,%eax,8), %eax
	movswl	(%eax), %edi
	movswl	2(%eax), %eax
	addl	%edi, %eax
	movl	%edi, -224(%ebp)
	movl	%eax, -296(%ebp)
	cmpl	%eax, %edi
	jl	L619
	jmp	L616
	.p2align 4,,10
	.p2align 3
L741:
	movl	-220(%ebp), %eax
	imull	%eax
	movl	%eax, %ecx
	movl	-232(%ebp), %eax
	movl	%edx, %ebx
	imull	%eax
	addl	%ecx, %eax
	movl	%edi, %ecx
	adcl	%ebx, %edx
	cmpl	%eax, %esi
	sbbl	%edx, %ecx
	jge	L617
	movl	%esi, %ebx
	movl	%edi, %esi
	movl	%eax, 8(%esp)
	shldl	$15, %ebx, %esi
	sall	$15, %ebx
	movl	%edx, 12(%esp)
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	-268(%ebp), %ecx
	movl	-236(%ebp), %edi
	movl	%edx, %esi
	movl	%eax, %ebx
	shldl	$15, %eax, %esi
	movl	-220(%ebp), %eax
	sall	$15, %ebx
	imull	%ebx, %ecx
	imull	%esi, %eax
	addl	%eax, %ecx
	movl	-220(%ebp), %eax
	mull	%ebx
	addl	%ecx, %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	-232(%ebp), %eax
	shrdl	$30, %ecx, %edx
	movl	-240(%ebp), %ecx
	imull	%esi, %eax
	addl	%edx, %ecx
	movl	%ecx, -252(%ebp)
	movl	-276(%ebp), %ecx
	imull	%ebx, %ecx
	addl	%eax, %ecx
	movl	-232(%ebp), %eax
	mull	%ebx
	addl	%ecx, %edx
	shrdl	$30, %edx, %eax
	addl	%eax, %edi
	movl	_globalposx, %eax
	movl	%edi, -256(%ebp)
	movl	%eax, -260(%ebp)
	movl	_globalposy, %eax
	movl	%eax, -264(%ebp)
L617:
	movl	-252(%ebp), %eax
	subl	-260(%ebp), %eax
/APP
 # 770 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	-256(%ebp), %eax
	subl	-264(%ebp), %eax
/APP
 # 770 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %edx
	movl	-288(%ebp), %eax
	cmpl	%eax, %edx
	cmovge	%eax, %edx
	movl	-284(%ebp), %eax
	cmovl	-292(%ebp), %eax
	addl	$1, -224(%ebp)
	movl	%eax, -284(%ebp)
	movl	-224(%ebp), %eax
	movl	%edx, -288(%ebp)
	cmpl	%eax, -296(%ebp)
	je	L616
L619:
	movl	-224(%ebp), %edx
	movl	_wall, %eax
	sall	$5, %edx
	addl	%eax, %edx
	movswl	8(%edx), %ecx
	movl	(%edx), %esi
	movl	4(%edx), %edx
	sall	$5, %ecx
	movl	%esi, -240(%ebp)
	addl	%ecx, %eax
	movl	-240(%ebp), %ecx
	movl	%edx, -236(%ebp)
	movl	(%eax), %edi
	movl	4(%eax), %ebx
	movl	%edi, %eax
	movl	%ebx, -256(%ebp)
	subl	%edx, %ebx
	subl	%esi, %eax
	movl	%ebx, -232(%ebp)
	movl	%eax, -220(%ebp)
	movl	%eax, %esi
	movl	%edi, -252(%ebp)
	movl	%eax, %edi
	movl	-260(%ebp), %eax
	movl	%ebx, -280(%ebp)
	sarl	$31, %ebx
	sarl	$31, %edi
	movl	%ebx, -276(%ebp)
	movl	%ecx, %ebx
	cltd
	sarl	$31, %ebx
	subl	%ecx, %eax
	movl	%edi, -268(%ebp)
	movl	-268(%ebp), %edi
	sbbl	%ebx, %edx
	movl	%eax, -248(%ebp)
	movl	-220(%ebp), %eax
	movl	-248(%ebp), %ebx
	movl	%edx, -244(%ebp)
	movl	-244(%ebp), %ecx
	movl	%eax, %edx
	movl	%esi, -272(%ebp)
	imull	%ebx, %edi
	imull	%eax, %ecx
	movl	%ebx, %eax
	mull	%edx
	addl	%edi, %ecx
	movl	%edx, %edi
	movl	%eax, %esi
	movl	-264(%ebp), %eax
	addl	%ecx, %edi
	movl	-236(%ebp), %ecx
	cltd
	movl	%ecx, %ebx
	sarl	$31, %ebx
	subl	%ecx, %eax
	sbbl	%ebx, %edx
	movl	-232(%ebp), %ebx
	movl	%eax, -232(%ebp)
	movl	%edx, -228(%ebp)
	movl	-276(%ebp), %edx
	movl	%ebx, %ecx
	imull	-228(%ebp), %ecx
	movl	-232(%ebp), %eax
	movl	%ebx, -232(%ebp)
	imull	%eax, %edx
	addl	%edx, %ecx
	mull	%ebx
	addl	%ecx, %edx
	addl	%eax, %esi
	adcl	%edx, %edi
	xorl	%ecx, %ecx
	cmpl	%esi, %ecx
	sbbl	%edi, %ecx
	jl	L741
	movl	-236(%ebp), %eax
	movl	%eax, -256(%ebp)
	movl	-240(%ebp), %eax
	movl	%eax, -252(%ebp)
	jmp	L617
	.p2align 4,,10
	.p2align 3
L616:
	movl	_yax_globalcf, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	sete	%al
	sall	$12, %eax
	addl	-292(%ebp), %eax
	movswl	_nextsectbunch(%eax,%eax), %eax
	movl	%eax, -292(%ebp)
	cmpl	$-1, %eax
	jne	L620
	movl	-316(%ebp), %ecx
	movl	-320(%ebp), %esi
	movzwl	-284(%ebp), %ebx
	movzwl	-288(%ebp), %eax
L615:
	movw	%bx, __ZL8bunchsec(%ecx,%ecx)
	addl	$1, %esi
	movw	%ax, __ZL9bunchdist.lto_priv.0(%ecx,%ecx)
	cmpl	-304(%ebp), %esi
	jl	L621
	movl	-364(%ebp), %edi
	movl	$1, _scansector_collectsprites
	movl	$__ZL14yax_cmpbunchesPKvS0_.lto_priv.0, 12(%esp)
	movl	$2, 8(%esp)
	movl	-312(%ebp), %esi
	movl	%esi, 4(%esp)
	movl	-356(%ebp), %eax
	addl	%edi, %eax
	leal	__ZL7bunches(%eax,%eax), %eax
	movl	%eax, (%esp)
	call	_qsort
	cmpl	$1, %esi
	setne	%dl
	cmpl	$7, -300(%ebp)
	setne	%al
	andb	%al, %dl
	movb	%dl, -220(%ebp)
	jne	L742
L622:
	movswl	-308(%ebp), %eax
	movl	%eax, -232(%ebp)
	jmp	L626
L624:
	movl	-308(%ebp), %eax
	cmpw	-184(%ebp,%eax,2), %si
	je	L743
L623:
	addl	$1, %edi
	cmpl	-304(%ebp), %edi
	jge	L744
L626:
	movl	-328(%ebp), %eax
	movswl	__ZL7bunches(%eax,%edi,2), %eax
	movzwl	__ZL8bunchsec(%eax,%eax), %ebx
	movl	%eax, _yax_globalbunch
	movl	%eax, %esi
	testw	%bx, %bx
	js	L623
	cmpl	$7, -300(%ebp)
	je	L624
	leal	4096(%ebx), %eax
	cwtl
	movl	%eax, 8(%esp)
	movl	-340(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	_qglobalang, %eax
	movl	%eax, (%esp)
	movl	_globalposz, %ecx
	movl	_globalposy, %edx
	movl	_globalposx, %eax
	call	_renderDrawRoomsQ16.isra.0
	cmpb	$0, -220(%ebp)
	je	L624
	movswl	_numsectors, %ecx
	addl	$7, %ecx
	sarl	$3, %ecx
	testl	%ecx, %ecx
	jle	L624
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L625:
	movzbl	__ZZ13yax_drawroomsE10lgotsector(%eax), %edx
	orb	_gotsector(%eax), %dl
	addl	$1, %eax
	movb	%dl, __ZZ13yax_drawroomsE10lgotsector-1(%eax)
	cmpl	%ecx, %eax
	jne	L625
	movl	-308(%ebp), %eax
	cmpw	-184(%ebp,%eax,2), %si
	jne	L623
L743:
	movl	-232(%ebp), %edx
	movswl	%bx, %eax
	addl	$1, %edi
	call	_yax_getbunch
	movl	-308(%ebp), %esi
	movw	%ax, -184(%ebp,%esi,2)
	cmpl	-304(%ebp), %edi
	jl	L626
L744:
	cmpb	$0, -220(%ebp)
	jne	L745
	addl	$1, -300(%ebp)
	cmpl	$8, -300(%ebp)
	je	L678
	movl	-344(%ebp), %edi
	addl	$8, -324(%ebp)
	addl	%edi, -332(%ebp)
L628:
	movzwl	_numsectors, %esi
	jmp	L629
L675:
	movl	-316(%ebp), %ecx
	movl	-320(%ebp), %esi
	xorl	%eax, %eax
	jmp	L615
L738:
	movl	%edi, -224(%ebp)
	xorl	%esi, %esi
	movl	$1, %eax
	movl	$0, -312(%ebp)
	jmp	L605
	.p2align 6
	.p2align 4,,10
	.p2align 3
L600:
	movswl	_numsectors, %eax
	addl	$1, %esi
	cmpl	%esi, %eax
	jle	L729
L747:
	movl	%esi, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %eax
L605:
	movl	%esi, %edx
	sarl	$3, %edx
	movzbl	_gotsector(%edx), %ebx
	andl	%eax, %ebx
	cmpb	%al, %bl
	jne	L600
	cmpw	$0, _editstatus
	je	L746
	movswl	%si, %eax
	xorl	%edx, %edx
	call	_yax_getbunch.part.0
	movl	%eax, %ecx
L603:
	movswl	%cx, %eax
	testl	%eax, %eax
	js	L600
	sarl	$3, %eax
	movzbl	__ZZ13yax_drawroomsE9havebunch(%eax), %edx
	movl	%eax, %edi
	movl	%ecx, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %ebx
	movl	%edx, %eax
	movb	%dl, -220(%ebp)
	notl	%eax
	testb	%bl, %al
	je	L600
	movl	_rendmode, %eax
	testl	%eax, %eax
	jne	L602
	movzbl	_haveymost(%edi), %eax
	andl	%ebx, %eax
	cmpb	%bl, %al
	jne	L600
L602:
	movl	_sector, %edx
	leal	(%esi,%esi,4), %eax
	leal	(%edx,%eax,8), %edx
	leal	12(,%eax,8), %eax
	movl	%edx, -232(%ebp)
	movl	$-858993459, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	-232(%ebp), %edx
	testb	$2, 12(%edx)
	jne	L601
	movl	-232(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, _globalposz
	jl	L600
L601:
	movl	-172(%ebp), %eax
	orb	-220(%ebp), %bl
	addl	$1, %esi
	addl	$1, -312(%ebp)
	leal	1(%eax), %edx
	movw	%cx, __ZL7bunches(%eax,%eax)
	movl	-324(%ebp), %eax
	movb	%bl, __ZZ13yax_drawroomsE9havebunch(%edi)
	addl	$1, (%eax)
	movswl	_numsectors, %eax
	movl	%edx, -172(%ebp)
	cmpl	%esi, %eax
	jg	L747
L729:
	movl	-224(%ebp), %edi
	jmp	L604
L746:
	movzwl	_yax_bunchnum+0(,%esi,4), %ecx
	jmp	L603
L630:
	movl	$0, _g_nodraw
	movl	-360(%ebp), %edi
	movl	$0, _scansector_collectsprites
	cmpl	$3, _rendmode
	jne	L632
	movl	$256, (%esp)
	call	*_glad_glClear
	subl	$4, %esp
	movl	$0, _yax_polymostclearzbuffer
L632:
	movl	-160(%ebp), %edx
	movl	$0, _yax_globalcf
	testl	%edx, %edx
	js	L705
	movl	$0, -232(%ebp)
	xorl	%ebx, %ebx
L647:
	leal	(%ebx,%ebx), %eax
	movl	$1, %ecx
	movl	%edx, -264(%ebp)
	subl	%eax, %ecx
	subl	$1, %eax
	movl	%edi, -272(%ebp)
	movl	-340(%ebp), %edi
	movl	%ecx, -260(%ebp)
	leal	1(%edx), %ecx
	imull	%ecx, %eax
	leal	8(%eax), %ecx
	leal	0(,%ebx,4), %eax
	sall	$9, %ebx
	leal	-144(%ebp,%eax), %esi
	leal	-80(%ebp,%eax), %eax
	movl	%ebx, -236(%ebp)
	movl	%eax, -252(%ebp)
	movl	%esi, -256(%ebp)
	movl	%edx, %esi
	.p2align 4
	.p2align 3
L645:
	xorl	%eax, %eax
	cmpl	$7, %esi
	movl	-252(%ebp), %ebx
	movl	%ecx, _yax_globallev
	sete	%al
	movl	%eax, _scansector_collectsprites
	movl	-256(%ebp), %eax
	movl	(%ebx,%esi,8), %edx
	movl	(%eax,%esi,8), %eax
	movl	%eax, -220(%ebp)
	cmpl	%edx, %eax
	jge	L634
	movl	%esi, -240(%ebp)
	movl	%edx, -224(%ebp)
	movl	%ecx, -248(%ebp)
	.p2align 4
	.p2align 3
L642:
	movl	-220(%ebp), %esi
	movl	-236(%ebp), %eax
	xorl	%ecx, %ecx
	movl	-232(%ebp), %edx
	movswl	__ZL7bunches(%eax,%esi,2), %eax
	movzwl	__ZL8bunchsec(%eax,%eax), %esi
	movl	%eax, _yax_globalbunch
	call	_yax_tweakpicnums
	testw	%si, %si
	js	L635
	movl	_r_tror_nomaskpass, %ebx
	movl	$0, _yax_nomaskdidit
	testl	%ebx, %ebx
	js	L636
	addw	$4096, %si
	movswl	%si, %esi
	.p2align 4
	.p2align 3
L640:
	movl	%ebx, _yax_nomaskpass
	movl	%esi, 8(%esp)
	movl	%edi, 4(%esp)
	movl	_qglobalang, %eax
	movl	%eax, (%esp)
	movl	_globalposz, %ecx
	movl	_globalposy, %edx
	movl	_globalposx, %eax
	call	_renderDrawRoomsQ16.isra.0
	cmpl	$1, %ebx
	je	L748
	subl	$1, %ebx
	jnb	L640
L636:
	movl	_scansector_collectsprites, %eax
	testl	%eax, %eax
	jne	L641
	movl	$0, _spritesortcnt
L641:
	call	__ZL16yax_copytspritesv.lto_priv.0
	call	_ExtAnalyzeSprites.isra.0
	movl	$-1, %edx
	movl	$1, %eax
	call	__Z10VM_OnEventii
	call	_renderDrawMasks
L635:
	addl	$1, -220(%ebp)
	movl	-224(%ebp), %esi
	cmpl	%esi, -220(%ebp)
	jne	L642
	movl	-240(%ebp), %esi
	movl	-248(%ebp), %ecx
L634:
	cmpl	-264(%ebp), %esi
	jl	L749
L643:
	subl	$1, %esi
	addl	-260(%ebp), %ecx
	cmpl	$-1, %esi
	jne	L645
	movl	-272(%ebp), %edi
	cmpl	$1, -232(%ebp)
	je	L646
L705:
	movl	-156(%ebp), %edx
	movl	$1, %ebx
	movl	$1, _yax_globalcf
	movl	$1, -232(%ebp)
	testl	%edx, %edx
	jns	L647
L646:
	movl	$-1, _yax_globalcf
	movl	$-1, _yax_globalbunch
	movl	$8, _yax_globallev
	movl	$0, _scansector_collectsprites
	movl	%edi, 8(%esp)
	movl	-340(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	_qglobalang, %eax
	movl	%eax, (%esp)
	movl	_globalposz, %ecx
	movl	_globalposy, %edx
	movl	_globalposx, %eax
	call	_renderDrawRoomsQ16.isra.0
	call	__ZL16yax_copytspritesv.lto_priv.0
	movl	-160(%ebp), %esi
	movl	$1, _scansector_collectsprites
	testl	%esi, %esi
	jns	L750
L706:
	movl	-156(%ebp), %ebx
	movl	$1, %esi
	testl	%ebx, %ebx
	jns	L682
L651:
	cmpl	$3, _rendmode
	jne	L588
	movl	$1, _yax_polymostclearzbuffer
	jmp	L588
	.p2align 4,,10
	.p2align 3
L748:
	movl	_yax_nomaskdidit, %eax
	testl	%eax, %eax
	je	L751
	movswl	_numsectors, %eax
	movl	$_gotsector, 4(%esp)
	xorl	%ebx, %ebx
	movl	$_yax_gotsector, (%esp)
	addl	$7, %eax
	sarl	$3, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	jmp	L640
L751:
	movl	$0, _yax_nomaskpass
	jmp	L636
L749:
	movl	-256(%ebp), %eax
	movl	8(%eax,%esi,8), %ebx
	movl	-252(%ebp), %eax
	movl	8(%eax,%esi,8), %edx
	cmpl	%ebx, %edx
	jle	L643
	movl	%ecx, -240(%ebp)
	movl	%edi, -220(%ebp)
	movl	-236(%ebp), %edi
	movl	%esi, -224(%ebp)
	movl	%edx, %esi
	.p2align 4
	.p2align 3
L644:
	movswl	__ZL7bunches(%edi,%ebx,2), %eax
	movl	-232(%ebp), %edx
	movl	$1, %ecx
	addl	$1, %ebx
	call	_yax_tweakpicnums
	cmpl	%ebx, %esi
	jne	L644
	movl	-220(%ebp), %edi
	movl	-224(%ebp), %esi
	movl	-240(%ebp), %ecx
	jmp	L643
L674:
	movl	$-1, %eax
	movl	$-1, %ebx
	jmp	L615
L737:
	movl	-348(%ebp), %edx
	movl	-352(%ebp), %eax
	movl	$0, _newaspect_enable
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
	jmp	_renderSetAspect
L732:
	.cfi_restore_state
	movl	$1, _newaspect_enable
	call	_videoSetCorrectedAspect
	jmp	L582
L736:
	movl	$0, 4(%esp)
	movl	$LC41, (%esp)
	call	__Z18videoCaptureScreenPKcc
	movl	$0, _g_doScreenShot
	jmp	L671
L735:
	cmpw	$2, _searchit
	jne	L654
	leal	-215(%ebp), %eax
	movl	$5121, 20(%esp)
	movl	%eax, 24(%esp)
	movl	$6407, 16(%esp)
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	_ydim, %eax
	subl	_searchy, %eax
	movl	%eax, 4(%esp)
	movl	_searchx, %eax
	movl	%eax, (%esp)
	call	*_glad_glReadPixels
	movzbl	-215(%ebp), %edx
	movswl	-214(%ebp), %ebx
	subl	$28, %esp
	movl	%edx, %eax
	movw	%dx, _searchstat
	cmpb	$3, %dl
	je	L655
	ja	L656
	testb	%dl, %dl
	je	L657
	leal	-144(%ebp), %eax
	movw	%bx, _searchsector
	leal	-80(%ebp), %esi
	movl	%eax, 4(%esp)
	leal	-160(%ebp), %edi
	movl	$2982, (%esp)
	call	*_glad_glGetFloatv
	subl	$8, %esp
	movl	%esi, 4(%esp)
	movl	$2983, (%esp)
	call	*_glad_glGetFloatv
	subl	$8, %esp
	movl	%edi, 4(%esp)
	movl	$2978, (%esp)
	call	*_glad_glGetIntegerv
	movl	_wall, %eax
	movl	_sector, %edx
	subl	$8, %esp
	movl	%eax, -224(%ebp)
	movswl	_searchsector, %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movzwl	(%eax), %eax
	movw	%ax, -248(%ebp)
	leal	-212(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$5126, 20(%esp)
	movl	$6402, 16(%esp)
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	_ydim, %eax
	subl	_searchy, %eax
	movl	%eax, 4(%esp)
	movl	_searchx, %eax
	movl	%eax, (%esp)
	call	*_glad_glReadPixels
	movss	-212(%ebp), %xmm2
	movss	_fydim, %xmm0
	leal	-200(%ebp), %eax
	subss	_fsearchy, %xmm0
	subl	$28, %esp
	movss	_fsearchx, %xmm1
	movss	%xmm2, -164(%ebp)
	movss	%xmm1, -172(%ebp)
	movss	%xmm0, -168(%ebp)
	movss	%xmm1, -232(%ebp)
	movss	%xmm0, -220(%ebp)
	movl	%eax, 20(%esp)
	leal	-204(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-208(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-144(%ebp), %eax
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	movl	-172(%ebp), %eax
	movl	-168(%ebp), %edx
	movl	-164(%ebp), %ecx
	call	__Z33buildgl_unprojectMatrixToViewport4vec3IfEPKfS2_PKiPfS5_S5_.isra.0
	movss	-232(%ebp), %xmm1
	leal	-188(%ebp), %eax
	xorl	%ecx, %ecx
	movss	-220(%ebp), %xmm0
	movl	$0x00000000, -176(%ebp)
	movss	%xmm1, -184(%ebp)
	movss	%xmm0, -180(%ebp)
	movl	%eax, 20(%esp)
	leal	-192(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-196(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-144(%ebp), %eax
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	movl	-184(%ebp), %eax
	movl	-180(%ebp), %edx
	call	__Z33buildgl_unprojectMatrixToViewport4vec3IfEPKfS2_PKiPfS5_S5_.isra.0
	movswl	_searchsector, %ecx
	movl	_sector, %esi
	movl	_prsectors(,%ecx,4), %eax
	testl	%eax, %eax
	je	L752
	cmpw	$1, _searchstat
	je	L753
	movss	60(%eax), %xmm2
	leal	60(%eax), %edx
L663:
	leal	(%ecx,%ecx,4), %eax
	leal	(%esi,%eax,8), %esi
	movswl	2(%esi), %eax
	testw	%ax, %ax
	jle	L684
	movss	4(%edx), %xmm6
	movss	-196(%ebp), %xmm1
	movl	%eax, -256(%ebp)
	movss	-192(%ebp), %xmm0
	movss	-188(%ebp), %xmm7
	mulss	%xmm2, %xmm1
	movss	8(%edx), %xmm4
	movss	-208(%ebp), %xmm5
	mulss	%xmm6, %xmm0
	subss	-196(%ebp), %xmm5
	movss	-200(%ebp), %xmm3
	movswl	-248(%ebp), %eax
	movl	-224(%ebp), %ebx
	subss	%xmm7, %xmm3
	movl	_wall, %edi
	mulss	%xmm5, %xmm2
	sall	$5, %eax
	addl	%ebx, %eax
	xorl	%ebx, %ebx
	addss	%xmm1, %xmm0
	movaps	%xmm7, %xmm1
	movss	%xmm3, -260(%ebp)
	mulss	%xmm4, %xmm1
	mulss	%xmm3, %xmm4
	addss	%xmm1, %xmm0
	movss	-204(%ebp), %xmm1
	addss	12(%edx), %xmm0
	xorl	%edx, %edx
	subss	-192(%ebp), %xmm1
	xorps	LC35, %xmm0
	mulss	%xmm6, %xmm1
	movaps	%xmm3, %xmm6
	addss	%xmm2, %xmm1
	addss	%xmm4, %xmm1
	divss	%xmm1, %xmm0
	movaps	%xmm5, %xmm1
	mulss	%xmm0, %xmm1
	mulss	%xmm3, %xmm0
	addss	-196(%ebp), %xmm1
	movss	%xmm1, -232(%ebp)
	movaps	%xmm3, %xmm1
	mulss	%xmm3, %xmm1
	addss	%xmm7, %xmm0
	movss	%xmm0, -220(%ebp)
	movaps	%xmm5, %xmm0
	mulss	%xmm5, %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm5, %xmm1
	xorps	LC35, %xmm1
	sqrtss	%xmm0, %xmm0
	divss	%xmm0, %xmm6
	divss	%xmm0, %xmm1
	movss	%xmm6, -236(%ebp)
	movss	LC39, %xmm6
	movss	%xmm6, -252(%ebp)
	xorps	%xmm6, %xmm6
	movss	%xmm1, -240(%ebp)
L670:
	xorps	%xmm7, %xmm7
	movss	-220(%ebp), %xmm3
	movss	-236(%ebp), %xmm1
	cvtsi2ssl	(%eax), %xmm7
	movaps	%xmm7, %xmm0
	xorps	%xmm7, %xmm7
	cvtsi2ssl	4(%eax), %xmm7
	movss	%xmm0, -224(%ebp)
	xorps	LC35, %xmm0
	subss	%xmm3, %xmm0
	mulss	-240(%ebp), %xmm0
	movaps	%xmm7, %xmm2
	subss	-232(%ebp), %xmm2
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	comiss	%xmm0, %xmm6
	movss	%xmm0, -248(%ebp)
	jnb	L667
	movswl	8(%eax), %ecx
	xorps	%xmm2, %xmm2
	xorps	%xmm4, %xmm4
	sall	$5, %ecx
	addl	%edi, %ecx
	cvtsi2ssl	(%ecx), %xmm2
	cvtsi2ssl	4(%ecx), %xmm4
	movaps	%xmm2, %xmm1
	xorps	LC35, %xmm1
	movaps	%xmm1, %xmm0
	movss	-236(%ebp), %xmm1
	subss	%xmm3, %xmm0
	mulss	-240(%ebp), %xmm0
	movaps	%xmm4, %xmm3
	subss	-232(%ebp), %xmm3
	mulss	%xmm3, %xmm1
	addss	%xmm1, %xmm0
	comiss	%xmm6, %xmm0
	jnb	L667
	movss	-248(%ebp), %xmm3
	movaps	%xmm0, %xmm1
	xorps	LC35, %xmm1
	subss	%xmm0, %xmm3
	divss	%xmm3, %xmm1
	movaps	%xmm1, %xmm0
	movaps	%xmm7, %xmm1
	subss	%xmm4, %xmm1
	mulss	%xmm0, %xmm1
	addss	%xmm4, %xmm1
	movaps	%xmm2, %xmm4
	subss	-224(%ebp), %xmm4
	subss	-232(%ebp), %xmm1
	mulss	%xmm4, %xmm0
	movss	-260(%ebp), %xmm4
	subss	%xmm2, %xmm0
	subss	-220(%ebp), %xmm0
	movaps	%xmm5, %xmm2
	mulss	%xmm1, %xmm2
	mulss	%xmm0, %xmm4
	addss	%xmm4, %xmm2
	comiss	%xmm2, %xmm6
	ja	L667
	mulss	%xmm1, %xmm1
	movss	-252(%ebp), %xmm7
	mulss	%xmm0, %xmm0
	addss	%xmm0, %xmm1
	comiss	%xmm1, %xmm7
	minss	%xmm7, %xmm1
	cmova	%ebx, %edx
	movss	%xmm1, -252(%ebp)
L667:
	addl	$1, %ebx
	addl	$32, %eax
	cmpl	%ebx, -256(%ebp)
	jne	L670
	movl	%edx, %eax
L664:
	addw	(%esi), %ax
L661:
	movw	%ax, _searchwall
	jmp	L660
	.p2align 4,,10
	.p2align 3
L742:
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZZ13yax_drawroomsE10lgotsector, (%esp)
	call	_memset
	jmp	L622
L745:
	movswl	_numsectors, %eax
	movl	$__ZZ13yax_drawroomsE10lgotsector, 4(%esp)
	movl	$_gotsector, (%esp)
	addl	$7, %eax
	sarl	$3, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	-344(%ebp), %edi
	addl	$1, -300(%ebp)
	addl	%edi, -332(%ebp)
	addl	$8, -324(%ebp)
	jmp	L628
L682:
	movl	$1, %edi
L652:
	movl	-80(%ebp,%esi,4), %eax
	movl	-144(%ebp,%esi,4), %ebx
	movl	%eax, -220(%ebp)
	cmpl	%ebx, %eax
	jle	L648
	sall	$9, %esi
L650:
	movswl	__ZL7bunches(%esi,%ebx,2), %eax
	movl	$1, %ecx
	movl	%edi, %edx
	addl	$1, %ebx
	call	_yax_tweakpicnums
	cmpl	%ebx, -220(%ebp)
	jne	L650
L648:
	cmpl	$1, %edi
	jne	L706
	jmp	L651
L750:
	xorl	%edi, %edi
	xorl	%esi, %esi
	jmp	L652
L586:
	movl	%eax, __ZL6ydmost.lto_priv.0
	jmp	L583
L678:
	movl	$7, %eax
	jmp	L614
L656:
	subl	$4, %eax
	cmpb	$1, %al
	ja	L660
	movswl	%bx, %eax
	movw	%bx, _searchwall
	movzwl	_wallsect(%eax,%eax), %eax
	movw	%ax, _searchsector
	cmpw	$5, %dx
	jne	L660
	xorl	%ebx, %ebx
	movw	%bx, _searchstat
L660:
	movswl	_cursectnum, %eax
	xorl	%ecx, %ecx
	movw	%cx, _searchit
	movl	%eax, 8(%esp)
	movswl	_horiz, %eax
	sall	$16, %eax
	movl	%eax, 4(%esp)
	movswl	_ang, %eax
	sall	$16, %eax
	movl	%eax, (%esp)
	movl	_pos+8, %ecx
	movl	_pos+4, %edx
	movl	_pos, %eax
	call	_renderDrawRoomsQ16.isra.0
	call	_ExtAnalyzeSprites.isra.0
	movl	$-1, %edx
	movl	$1, %eax
	call	__Z10VM_OnEventii
	call	_renderDrawMasks
	call	_M32_ResetFakeRORTiles
	jmp	L654
L655:
	movswl	%bx, %eax
	movw	%bx, _searchwall
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movzwl	24(%eax), %eax
	movw	%ax, _searchsector
	jmp	L660
L684:
	xorl	%eax, %eax
	jmp	L664
L753:
	movss	312(%eax), %xmm2
	leal	312(%eax), %edx
	jmp	L663
L752:
	leal	(%ebx,%ebx,4), %eax
	movzwl	(%esi,%eax,8), %eax
	jmp	L661
L657:
	movswl	%bx, %eax
	movw	%bx, _searchwall
	movzwl	_wallsect(%eax,%eax), %eax
	movw	%ax, _searchsector
	jmp	L660
	.cfi_endproc
LFE42:
	.p2align 4
	.globl	_editorMaybeLockMouse
	.def	_editorMaybeLockMouse;	.scl	2;	.type	32;	.endef
_editorMaybeLockMouse:
LFB53:
	.cfi_startproc
	movl	_g_alwaysLockMouse, %edx
	testl	%edx, %edx
	jne	L757
	movl	_mlook, %edx
	cmpl	$2, %edx
	je	L757
	testl	%edx, %edx
	je	L756
	xorl	%edx, %edx
	cmpl	$200, _qsetmode
	sete	%dl
	orl	%edx, %eax
	jmp	L756
	.p2align 4,,10
	.p2align 3
L757:
	movl	$1, %eax
L756:
	movl	_osdvisible, %ecx
	xorl	%edx, %edx
	testl	%ecx, %ecx
	sete	%dl
	andl	%edx, %eax
	jmp	_mouseLockToWindow
	.cfi_endproc
LFE53:
	.section .rdata,"dr"
LC42:
	.ascii "SW.GRP\0"
LC43:
	.ascii "sw.def\0"
LC44:
	.ascii "Save changes?\0"
	.align 4
LC45:
	.ascii "Map is heavily corrupt. Save changes?\0"
LC46:
	.ascii "engine\0"
	.align 4
LC47:
	.ascii "Failed to locate callback with id '%s'\0"
LC48:
	.ascii "source/build/src/loguru.cpp\0"
LC49:
	.ascii "restartvid\0"
	.align 4
LC50:
	.ascii "restartvid: reinitializes the video mode\0"
LC51:
	.ascii "vidmode\0"
	.align 4
LC52:
	.ascii "vidmode <xdim> <ydim> <bpp> <fullscreen>: changes the video mode\0"
LC53:
	.ascii "Wangulator\0"
LC54:
	.ascii "-setup\0"
LC55:
	.ascii "-help\0"
LC56:
	.ascii "--help\0"
LC57:
	.ascii "wangulator\0"
	.align 4
LC58:
	.ascii "%s\12Syntax: %s [options] mapname\12Options:\12\11-grp\11Use an extra GRP or ZIP file.\12\11-g\11Same as above.\12\11-setup\11Displays the configuration dialogue box before entering the editor.\12\0"
LC59:
	.ascii "^14\0"
	.align 4
LC63:
	.ascii "Configuration file not found, using defaults.\0"
LC64:
	.ascii "source/sw/src/jnstub.cpp\0"
LC65:
	.ascii "Searching for game data...\0"
LC66:
	.ascii "source/sw/src/grpscan.cpp\0"
LC67:
	.ascii "grpfiles.cache\0"
LC68:
	.ascii "%s:%d: Unexpected EOF!\0"
	.align 4
LC69:
	.ascii "source/build/src/scriptfile.cpp\0"
LC70:
	.ascii "/\0"
LC71:
	.ascii " %s has checksum 0x%08x\0"
LC72:
	.ascii "wb\0"
LC73:
	.ascii "\"%s\" %d %d %d\12\0"
	.align 4
LC74:
	.ascii "%s is not ready for public use. Proceed with caution!\0"
LC75:
	.ascii "Pre-Release Software Warning\0"
LC76:
	.ascii "NAMES.H\0"
LC77:
	.ascii "Loading names file: %s\0"
LC78:
	.ascii "Loaded %d names.\0"
LC79:
	.ascii "No game controllers found.\0"
LC80:
	.ascii "source/build/src/sdlayer.cpp\0"
LC81:
	.ascii "Game controllers:\0"
LC82:
	.ascii "  %d. %s\0"
LC83:
	.ascii "%s [%s]\0"
LC84:
	.ascii "Using controller: %s.\0"
LC86:
	.ascii "gamecontrollerdb.txt\0"
	.align 4
LC87:
	.ascii "Failed loading game controller database: %s.\0"
	.align 4
LC88:
	.ascii "Loaded game controller database.\0"
LC89:
	.ascii "Using joystick: %s\0"
	.align 4
LC90:
	.ascii "Joystick %d has %d axes, %d buttons, %d hats, and %d balls.\0"
LC91:
	.ascii "No controllers are usable.\0"
LC92:
	.ascii "Controller supports rumble.\0"
LC94:
	.ascii "cacheinfo\0"
	.align 4
LC95:
	.ascii "cacheinfo: displays cache statistics\0"
LC98:
	.ascii "Initialized %.1fM cache\0"
LC99:
	.ascii "source/build/src/cache1d.cpp\0"
LC109:
	.ascii "editor.def\0"
LC110:
	.ascii "Loading %s\0"
LC111:
	.ascii "source/build/src/defs.cpp\0"
LC112:
	.ascii "Definitions file '%s' loaded.\0"
LC113:
	.ascii "No palette found.\0"
LC114:
	.ascii "No shade table found.\0"
LC115:
	.ascii "No translucency table found.\0"
LC116:
	.ascii "source/build/src/engine.cpp\0"
	.align 4
LC117:
	.ascii "There was an error loading the sprite clipping map (status %d).\0"
LC118:
	.ascii "m32_autoexec.cfg\0"
	.align 4
LC119:
	.ascii "%d * %d not supported in this graphics mode\0"
	.align 4
LC123:
	.ascii "Are you sure you want to quit?\0"
	.section	.text.unlikely,"x"
LCOLDB128:
	.text
LHOTB128:
	.p2align 4
	.globl	_app_main
	.def	_app_main;	.scl	2;	.type	32;	.endef
_app_main:
LFB56:
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
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%edx, %ebx
	subl	$256, %esp
	movl	%eax, -184(%ebp)
	movl	$29295, %eax
	movl	$1735287159, _tempbuf
	movl	$1952541813, _tempbuf+4
	movw	%ax, _tempbuf+8
	movl	$1735355438, _tempbuf+10
	movb	$0, _tempbuf+14
	movl	$9, __ZN6loguru18g_stderr_verbosityE
	movl	$__ZN6loguruL7s_mutexE.lto_priv.0, (%esp)
	call	_pthread_mutex_lock
	movl	%eax, -208(%ebp)
	testl	%eax, %eax
	jne	L1341
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0+4, %ecx
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0, %edi
	cmpl	%edi, %ecx
	je	L766
	movl	%ecx, %eax
	subl	%edi, %eax
	subl	$48, %eax
	shrl	$4, %eax
	imull	$178956971, %eax, %eax
	addl	$1, %eax
	andl	$3, %eax
	je	L771
	cmpl	$1, %eax
	je	L1268
	cmpl	$2, %eax
	je	L1269
	cmpl	$6, 4(%edi)
	je	L1402
L1253:
	addl	$48, %edi
L1269:
	cmpl	$6, 4(%edi)
	je	L1403
L1256:
	addl	$48, %edi
L1268:
	cmpl	$6, 4(%edi)
	je	L1404
L1259:
	addl	$48, %edi
	cmpl	%edi, %ecx
	je	L766
L771:
	cmpl	$6, 4(%edi)
	je	L1405
L767:
	leal	48(%edi), %eax
	movl	%eax, %edi
	cmpl	$6, 4(%eax)
	je	L1406
L1262:
	leal	48(%eax), %edi
	cmpl	$6, 52(%eax)
	je	L1407
L1264:
	leal	96(%eax), %edi
	cmpl	$6, 100(%eax)
	je	L1408
L1266:
	leal	144(%eax), %edi
	cmpl	%edi, %ecx
	jne	L771
L766:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1409
L792:
	movl	$__ZN6loguruL7s_mutexE.lto_priv.0, (%esp)
	call	_pthread_mutex_unlock
	movl	$0, 4(%esp)
	movl	$LC46, %eax
	xorl	%ecx, %ecx
	movl	$0, (%esp)
	movl	$__Z17engineLogCallbackPvRKN6loguru7MessageE, %edx
	call	__ZN6loguru12add_callbackEPKcPFvPvRKNS_7MessageEES2_iPFvS2_ES9_.constprop.0
	call	__ZN6loguru8add_fileEPKcNS_8FileModeEi.constprop.0.isra.0
	movl	_osd, %eax
	movl	$1, _pathsearchmode
	testl	%eax, %eax
	je	L1410
L794:
	movl	$LC49, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1411
L795:
	movl	$LC50, 8(%eax)
	movl	$__Z17osdcmd_restartvidPK13osdfuncparm_t, 12(%eax)
	movl	_osd, %eax
	testl	%eax, %eax
	je	L1412
L796:
	movl	$LC51, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1413
L797:
	movl	$LC52, 8(%eax)
	movl	$1, %edi
	movl	$__ZL14osdcmd_vidmodePK13osdfuncparm_t, 12(%eax)
	movl	$LC53, %eax
	movl	$__ZL14osdcmd_vidmodePK13osdfuncparm_t, _baselayer_osdcmd_vidmode_func
	call	_wm_setapptitle
	movl	-184(%ebp), %esi
	movl	%ebx, %edx
	movw	%di, _editstatus
	movl	$1869772139, _game_executable
	movl	%esi, %eax
	movb	$0, _game_executable+8
	movl	$1702389038, _game_executable+4
	movb	$0, _game_executable+255
	call	_ExtPreInit
	movl	$1, _win_boostpriority
	cmpl	$1, %esi
	jle	L798
	movl	$1, %edi
	jmp	L803
	.p2align 5
	.p2align 4,,10
	.p2align 3
L799:
	addl	$1, %edi
	cmpl	%edi, -184(%ebp)
	je	L798
L803:
	movl	(%ebx,%edi,4), %esi
	cmpb	$45, (%esi)
	jne	L799
	movl	$LC54, 4(%esp)
	movl	%esi, (%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L799
	movl	$LC55, 4(%esp)
	movl	%esi, (%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L800
	movl	$LC56, 4(%esp)
	movl	%esi, (%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L800
	cmpb	$45, (%esi)
	jne	L799
	cmpb	$63, 1(%esi)
	jne	L799
	cmpb	$0, 2(%esi)
	jne	L799
L800:
	movl	$LC57, 12(%esp)
	movl	$LC53, 8(%esp)
	movl	$LC58, 4(%esp)
	movl	$LC53, (%esp)
	call	_wm_msgbox
L764:
	movl	-208(%ebp), %eax
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
L1405:
	.cfi_restore_state
	movl	(%edi), %edx
	cmpl	$1768386149, (%edx)
	jne	L767
	cmpw	$25966, 4(%edx)
	jne	L767
L1359:
	cmpl	%edi, %ecx
	je	L766
	movl	36(%edi), %eax
	testl	%eax, %eax
	je	L772
	movl	28(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0+4, %ecx
L772:
	leal	48(%edi), %eax
	cmpl	%eax, %ecx
	je	L773
	movl	%ecx, -200(%ebp)
	leal	56(%edi), %eax
	movl	%ebx, -212(%ebp)
	jmp	L790
	.p2align 4,,10
	.p2align 3
L774:
	cmpl	%edx, %eax
	je	L1340
	movl	%edx, -56(%eax)
	movl	-4(%eax), %edx
	movl	-48(%eax), %ecx
	movl	%edx, -52(%eax)
	movl	(%eax), %edx
	movl	%edx, -48(%eax)
	testl	%ebx, %ebx
	je	L789
	movl	%ebx, -8(%eax)
	movl	%ecx, (%eax)
L778:
	movb	$0, (%ebx)
	movl	16(%eax), %edx
	movl	$0, -4(%eax)
	movl	%edx, -32(%eax)
	movl	20(%eax), %edx
	movl	%edx, -28(%eax)
	movl	24(%eax), %edx
	movl	%edx, -24(%eax)
	movl	28(%eax), %edx
	movl	%edx, -20(%eax)
	movl	32(%eax), %edx
	movl	%edx, -16(%eax)
	movl	36(%eax), %edx
	movl	%edx, -12(%eax)
	leal	40(%eax), %edx
	cmpl	%edx, -200(%ebp)
	je	L1414
	addl	$48, %eax
L790:
	movl	-56(%eax), %ebx
	leal	-48(%eax), %edi
	movl	-8(%eax), %edx
	movl	%ebx, %ecx
	cmpl	%edi, %ebx
	jne	L774
	cmpl	%edx, %eax
	je	L1340
	movl	%edx, -56(%eax)
	movl	-4(%eax), %edx
	movl	%edx, -52(%eax)
	movl	(%eax), %edx
	movl	%edx, -48(%eax)
L789:
	movl	%eax, -8(%eax)
	movl	%eax, %ebx
	jmp	L778
	.p2align 4,,10
	.p2align 3
L1406:
	movl	(%eax), %edx
	cmpl	$1768386149, (%edx)
	jne	L1262
	cmpw	$25966, 4(%edx)
	je	L1359
	leal	48(%eax), %edi
	cmpl	$6, 52(%eax)
	jne	L1264
	.p2align 4
	.p2align 3
L1407:
	movl	48(%eax), %edx
	cmpl	$1768386149, (%edx)
	jne	L1264
	cmpw	$25966, 4(%edx)
	je	L1359
	leal	96(%eax), %edi
	cmpl	$6, 100(%eax)
	jne	L1266
	.p2align 4
	.p2align 3
L1408:
	movl	96(%eax), %edx
	cmpl	$1768386149, (%edx)
	jne	L1266
	cmpw	$25966, 4(%edx)
	jne	L1266
	jmp	L1359
	.p2align 4,,10
	.p2align 3
L1404:
	movl	(%edi), %eax
	cmpl	$1768386149, (%eax)
	jne	L1259
	cmpw	$25966, 4(%eax)
	jne	L1259
	jmp	L1359
	.p2align 4,,10
	.p2align 3
L1414:
	movl	-212(%ebp), %ebx
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0+4, %eax
L773:
	leal	-48(%eax), %edi
	subl	$40, %eax
	movl	%edi, __ZN6loguruL11s_callbacksE.lto_priv.0+4
	movl	-8(%eax), %edx
	cmpl	%eax, %edx
	je	L791
	movl	%edx, %eax
	call	_mi_free
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0+4, %edi
L791:
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0, %edx
	movl	$-9, __ZN6loguruL19s_max_out_verbosityE.lto_priv.0
	cmpl	%edx, %edi
	je	L792
	movl	%edi, %ecx
	movl	$-9, %eax
	subl	%edx, %ecx
	andl	$16, %ecx
	je	L793
	movl	32(%edx), %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	addl	$48, %edx
	cmpl	%edx, %edi
	je	L1358
	.p2align 5
	.p2align 4
	.p2align 3
L793:
	movl	32(%edx), %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	movl	80(%edx), %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	addl	$96, %edx
	cmpl	%edx, %edi
	jne	L793
L1358:
	movl	%eax, __ZN6loguruL19s_max_out_verbosityE.lto_priv.0
	jmp	L792
	.p2align 4,,10
	.p2align 3
L1340:
	movl	-4(%eax), %esi
	movl	%esi, -204(%ebp)
	testl	%esi, %esi
	je	L779
	cmpl	$1, %esi
	je	L1415
	movl	-204(%ebp), %esi
	cmpl	$16, %esi
	jb	L1416
	movl	-204(%ebp), %esi
	movl	-16(%edx,%esi), %edi
	leal	-1(%esi), %ebx
	movl	%edi, -16(%ecx,%esi)
	movl	-12(%edx,%esi), %edi
	movl	%edi, -12(%ecx,%esi)
	movl	-8(%edx,%esi), %edi
	movl	%edi, -8(%ecx,%esi)
	movl	-4(%edx,%esi), %edi
	movl	%edi, -4(%ecx,%esi)
	cmpl	$16, %ebx
	jb	L1378
	movl	%eax, -204(%ebp)
	andl	$-16, %ebx
	movl	%ebx, -216(%ebp)
	xorl	%ebx, %ebx
L787:
	movl	12(%edx,%ebx), %eax
	movl	4(%edx,%ebx), %edi
	movl	8(%edx,%ebx), %esi
	movl	%eax, -220(%ebp)
	movl	(%edx,%ebx), %eax
	movl	%edi, 4(%ecx,%ebx)
	movl	%eax, (%ecx,%ebx)
	movl	%esi, 8(%ecx,%ebx)
	movl	-220(%ebp), %eax
	movl	%eax, 12(%ecx,%ebx)
	addl	$16, %ebx
	cmpl	-216(%ebp), %ebx
	jb	L787
	movl	-204(%ebp), %eax
L1378:
	movl	-4(%eax), %esi
	movl	-56(%eax), %ecx
	movl	%esi, -204(%ebp)
L779:
	movl	-204(%ebp), %esi
	movb	$0, (%ecx,%esi)
	movl	-8(%eax), %ebx
	movl	%esi, -52(%eax)
	jmp	L778
L1402:
	movl	(%edi), %eax
	cmpl	$1768386149, (%eax)
	jne	L1253
	cmpw	$25966, 4(%eax)
	jne	L1253
	jmp	L1359
L1416:
	andl	$8, %esi
	jne	L1417
	testb	$4, -204(%ebp)
	jne	L1418
	movl	-204(%ebp), %esi
	testl	%esi, %esi
	je	L779
	movzbl	(%edx), %ebx
	andl	$2, %esi
	movb	%bl, (%ecx)
	je	L1378
	movl	-204(%ebp), %esi
	movzwl	-2(%edx,%esi), %edx
	movw	%dx, -2(%ecx,%esi)
	movl	-4(%eax), %esi
	movl	-56(%eax), %ecx
	movl	%esi, -204(%ebp)
	jmp	L779
	.p2align 4,,10
	.p2align 3
L798:
	movl	$__ZL24_internal_getcolumnwidthi.lto_priv.0, -184(%ebp)
	movss	LC124, %xmm0
	movss	-184(%ebp), %xmm1
	movl	$__ZL20_internal_drawosdstriiPKciii.lto_priv.0, -184(%ebp)
	movss	-184(%ebp), %xmm2
	movl	$__Z13M32_OnShowOSDi, -184(%ebp)
	unpcklps	%xmm1, %xmm0
	movss	LC125, %xmm1
	unpcklps	%xmm2, %xmm1
	movss	LC126, %xmm2
	movlhps	%xmm0, %xmm1
	movss	-184(%ebp), %xmm0
	movl	$_COMMON_clearbackground, -184(%ebp)
	movss	-184(%ebp), %xmm3
	unpcklps	%xmm0, %xmm2
	movss	LC127, %xmm0
	unpcklps	%xmm3, %xmm0
	movlhps	%xmm2, %xmm0
	cmpb	$0, __ZL13boardfilename.lto_priv.0
	jne	L804
	movl	$1651991918, __ZL13boardfilename.lto_priv.0
	movl	$1685217647, __ZL13boardfilename.lto_priv.0+4
	movl	$1885433134, __ZL13boardfilename.lto_priv.0+8
	movb	$0, __ZL13boardfilename.lto_priv.0+12
L805:
	movl	_osd, %eax
	testl	%eax, %eax
	je	L1419
L806:
	movl	$__ZL14user_callbacks.lto_priv.0, 3248(%eax)
	movups	%xmm1, __ZL14user_callbacks.lto_priv.0
	movups	%xmm0, __ZL14user_callbacks.lto_priv.0+16
	movl	$256, 4(%esp)
	movl	$_program_origcwd, (%esp)
	call	_getcwd
	testl	%eax, %eax
	je	L1420
L807:
	call	_enginePreInit
	cmpb	$0, _quitevent
	jne	L808
	movl	__ZL10startupdlg.lto_priv.0, %esi
	testl	%esi, %esi
	je	L809
	movl	$-1, __ZL4done.lto_priv.0
	xorl	%eax, %eax
	call	__ZL7SetPagei.lto_priv.0
	movl	$1, %eax
	call	__ZL12EnableConfigi.lto_priv.0
	movss	_ydim, %xmm1
	movss	_bpp, %xmm5
	movss	_fullscreen, %xmm0
	movss	_xdim, %xmm6
	movss	_g_useCwd, %xmm7
	unpcklps	%xmm5, %xmm1
	unpcklps	%xmm6, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, __ZL8settings.lto_priv.0
	movss	_forcesetup, %xmm0
	unpcklps	%xmm7, %xmm0
	movlps	%xmm0, __ZL8settings.lto_priv.0+16
	call	__ZL12PopulateFormv.lto_priv.0
	movl	__ZL4done.lto_priv.0, %ebx
	testl	%ebx, %ebx
	jns	L810
	movl	__imp__GetMessageA@16, %esi
	leal	-152(%ebp), %ebx
L815:
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	*%esi
	subl	$16, %esp
	cmpl	$-1, %eax
	je	L809
	testl	%eax, %eax
	jne	L812
	movl	$1, __ZL4done.lto_priv.0
L810:
	movl	$1, %eax
	call	__ZL7SetPagei.lto_priv.0
	xorl	%eax, %eax
	call	__ZL12EnableConfigi.lto_priv.0
	movl	__ZL4done.lto_priv.0, %edx
	testl	%edx, %edx
	je	L808
	movl	__ZL8settings.lto_priv.0, %eax
	movl	%eax, _fullscreen
	movl	__ZL8settings.lto_priv.0+12, %eax
	movl	%eax, _bppgame
	movl	__ZL8settings.lto_priv.0+4, %eax
	movl	%eax, _xdim
	movl	__ZL8settings.lto_priv.0+8, %eax
	movl	%eax, _ydim
	movl	__ZL8settings.lto_priv.0+16, %eax
	movl	%eax, _forcesetup
	movl	__ZL8settings.lto_priv.0+20, %eax
	movl	%eax, _g_useCwd
L809:
	movl	_osd, %eax
	movl	$2, %ecx
	movl	$LC59, -184(%ebp)
	movl	$4, %ebx
	movss	-184(%ebp), %xmm0
	movups	LC60, %xmm1
	movl	%ecx, 1132(%eax)
	movl	$3, %ecx
	movl	%ecx, 1156(%eax)
	unpcklps	%xmm0, %xmm0
	movl	%ecx, 1160(%eax)
	movl	%ebx, 1136(%eax)
	movl	$LC59, 1112(%eax)
	movups	%xmm1, 1116(%eax)
	movlps	%xmm0, 1104(%eax)
	call	__Z10SW_ExtInitv
	movl	$32, _bpp
	call	_loadsetup.constprop.0
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	%eax, %ecx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	cmpl	%eax, %edx
	cmovl	%eax, %edx
	cmpl	$-1, %ecx
	je	L1421
L819:
	movl	_default_buildkeys, %eax
	movl	%eax, _buildkeys
	movl	_default_buildkeys+4, %eax
	movl	%eax, _buildkeys+4
	movl	_default_buildkeys+8, %eax
	movl	%eax, _buildkeys+8
	movl	_default_buildkeys+12, %eax
	movl	%eax, _buildkeys+12
	movl	_default_buildkeys+16, %eax
	movl	%eax, _buildkeys+16
	cmpb	$0, _option+4
	je	L821
	movb	$0, _option+4
L821:
	movl	$58, _kensplayerheight
	movl	$0, _zmode
	testl	%edx, %edx
	js	L822
	movl	$LC65, 12(%esp)
	movl	$259, 8(%esp)
	movl	$LC66, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L822:
	movl	$LC67, %eax
	call	_scriptfile_fromfile
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L823
	.p2align 4
	.p2align 3
L824:
	movl	12(%ebx), %eax
	movl	16(%ebx), %edx
	cmpl	%edx, %eax
	jb	L1422
L826:
	movl	%ebx, %eax
	call	_scriptfile_close
L823:
	movl	$__ZL8grpfiles+8, %eax
	xorl	%edx, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L829:
	movl	(%eax), %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	movl	24(%eax), %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	addl	$48, %eax
	cmpl	$__ZL8grpfiles+296, %eax
	jne	L829
	movl	%edx, -204(%ebp)
	movl	$__ZZ10ScanGroupsvE10extensions, %esi
L867:
	movl	(%esi), %edx
	movl	$1, %ecx
	movl	$LC70, %eax
	call	_klistpath
	movl	$65536, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, %edi
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -200(%ebp)
	testl	%eax, %eax
	je	L830
	testl	%edi, %edi
	je	L1423
	movl	%edi, -184(%ebp)
	movl	%esi, -224(%ebp)
	movl	%edi, -228(%ebp)
	.p2align 4
	.p2align 3
L831:
	movl	-184(%ebp), %eax
	movl	__ZL8grpcache, %ebx
	movl	(%eax), %edi
	testl	%ebx, %ebx
	jne	L835
	jmp	L839
	.p2align 4,,10
	.p2align 3
L1424:
	movl	(%ebx), %ebx
	testl	%ebx, %ebx
	je	L839
L835:
	leal	4(%ebx), %esi
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L1424
	leal	-160(%ebp), %edx
	movl	%edi, %eax
	call	_findfrompath
	testl	%eax, %eax
	jne	L837
	movl	-160(%ebp), %edi
	leal	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	_stat32
	movl	_g_sm_heap, %ecx
	movl	%edi, (%esp)
	testl	%eax, %eax
	jne	L1382
	call	__ZN2sm9Allocator4FreeEPv
	movl	-132(%ebp), %eax
	subl	$4, %esp
	testl	%eax, %eax
	je	L1381
	movl	264(%ebx), %ecx
	cmpl	%ecx, %eax
	je	L840
L1381:
	movl	-184(%ebp), %eax
	movl	(%eax), %edi
L839:
	leal	-156(%ebp), %edx
	movl	%edi, %eax
	movl	$0, -156(%ebp)
	call	_findfrompath
	movl	-156(%ebp), %ebx
	cmpl	$-1, %eax
	je	L1425
	movl	$256, 8(%esp)
	movl	$32768, 4(%esp)
	movl	%ebx, (%esp)
	call	_open
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, %esi
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	testl	%esi, %esi
	js	L837
	leal	-152(%ebp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_fstat32
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L837
	movl	-132(%ebp), %eax
	testl	%eax, %eax
	je	L837
	cmpl	%eax, -204(%ebp)
	jge	L850
	.p2align 4
	.p2align 3
L837:
	movl	-184(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -184(%ebp)
	testl	%eax, %eax
	jne	L831
	movl	-200(%ebp), %eax
	movl	-224(%ebp), %esi
	movl	-228(%ebp), %edi
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	.p2align 4
	.p2align 3
L866:
	movl	%edi, %eax
	movl	12(%edi), %edi
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	testl	%edi, %edi
	jne	L866
L865:
	addl	$4, %esi
	cmpl	$__ZZ10ScanGroupsvE10extensions+16, %esi
	jne	L867
	movl	__ZL8grpcache, %ebx
	testl	%ebx, %ebx
	je	L868
L869:
	movl	%ebx, %eax
	movl	(%ebx), %ebx
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	%ebx, __ZL8grpcache
	testl	%ebx, %ebx
	jne	L869
L868:
	movl	_foundgrps, %esi
	movl	%esi, %ecx
	testl	%esi, %esi
	jne	L879
	jmp	L870
	.p2align 4
	.p2align 4,,10
	.p2align 3
L871:
	movl	8(%ecx), %ecx
L878:
	testl	%ecx, %ecx
	je	L870
L879:
	movl	4(%ecx), %eax
	testb	$1, 14(%eax)
	je	L871
	testl	%esi, %esi
	je	L872
	movl	16(%eax), %ebx
	movl	%esi, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L873:
	movl	4(%eax), %edx
	cmpl	4(%edx), %ebx
	je	L871
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	L873
	movl	%esi, %ebx
	jmp	L877
L874:
	movl	%ebx, %eax
	testl	%edx, %edx
	je	L872
	movl	%edx, %ebx
L877:
	movl	8(%ebx), %edx
	cmpl	%ebx, %ecx
	jne	L874
	cmpl	%ebx, %esi
	je	L1426
	movl	%edx, 8(%eax)
L876:
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%eax
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%eax
	movl	_foundgrps, %esi
L872:
	movl	%esi, %ecx
	jmp	L878
	.p2align 4,,10
	.p2align 3
L808:
	call	_engineUnInit
L1400:
	movl	_g_sm_heap, %eax
	testl	%eax, %eax
	je	L817
	call	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	movl	_g_sm_heap, %ebx
	testl	%ebx, %ebx
	je	L817
	movl	372(%ebx), %eax
	testl	%eax, %eax
	je	L818
	call	_mi_free
L818:
	movl	%ebx, %eax
	call	_mi_free
L817:
	movl	$0, (%esp)
	call	_exit
	.p2align 4,,10
	.p2align 3
L1413:
	movl	$LC51, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC51, (%eax)
	jmp	L797
	.p2align 4,,10
	.p2align 3
L1412:
	call	__Z8OSD_Initv
	jmp	L796
	.p2align 4,,10
	.p2align 3
L1411:
	movl	$LC49, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC49, (%eax)
	jmp	L795
	.p2align 4,,10
	.p2align 3
L1410:
	call	__Z8OSD_Initv
	jmp	L794
	.p2align 4,,10
	.p2align 3
L1403:
	movl	(%edi), %eax
	cmpl	$1768386149, (%eax)
	jne	L1256
	cmpw	$25966, 4(%eax)
	jne	L1256
	jmp	L1359
	.p2align 4,,10
	.p2align 3
L1415:
	movzbl	(%edx), %edx
	movb	%dl, (%ecx)
	movl	-4(%eax), %esi
	movl	-56(%eax), %ecx
	movl	%esi, -204(%ebp)
	movl	-204(%ebp), %esi
	movb	$0, (%ecx,%esi)
	movl	-8(%eax), %ebx
	movl	%esi, -52(%eax)
	jmp	L778
	.p2align 4,,10
	.p2align 3
L1409:
	movl	$LC46, 16(%esp)
	movl	$LC47, 12(%esp)
	movl	$1061, 8(%esp)
	movl	$LC48, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L792
	.p2align 4,,10
	.p2align 3
L804:
	movups	%xmm0, -200(%ebp)
	movups	%xmm1, -184(%ebp)
	movl	$46, 4(%esp)
	movl	$__ZL13boardfilename.lto_priv.0, (%esp)
	call	_strchr
	movups	-184(%ebp), %xmm1
	movups	-200(%ebp), %xmm0
	testl	%eax, %eax
	jne	L805
	movl	$__ZL13boardfilename.lto_priv.0, (%esp)
	call	_strlen
	movups	-200(%ebp), %xmm0
	movups	-184(%ebp), %xmm1
	movl	$1885433134, __ZL13boardfilename.lto_priv.0(%eax)
	movb	$0, __ZL13boardfilename.lto_priv.0+4(%eax)
	jmp	L805
L1420:
	movb	$0, _program_origcwd
	jmp	L807
L812:
	movl	__ZL10startupdlg.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*__imp__IsWindow@4
	subl	$4, %esp
	testl	%eax, %eax
	jne	L1427
L813:
	movl	%ebx, (%esp)
	call	*__imp__TranslateMessage@4
	subl	$4, %esp
	movl	%ebx, (%esp)
	call	*__imp__DispatchMessageA@4
	subl	$4, %esp
L814:
	movl	__ZL4done.lto_priv.0, %ecx
	testl	%ecx, %ecx
	js	L815
	jmp	L810
	.p2align 4,,10
	.p2align 3
L1427:
	movl	%ebx, 4(%esp)
	movl	__ZL10startupdlg.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*__imp__IsDialogMessageA@8
	subl	$8, %esp
	testl	%eax, %eax
	jne	L814
	jmp	L813
L1417:
	movl	(%edx), %esi
	movl	4(%edx), %edi
	movl	%esi, (%ecx)
	movl	%edi, 4(%ecx)
	movl	-204(%ebp), %ebx
	movl	-8(%edx,%ebx), %esi
	movl	-4(%edx,%ebx), %edi
	movl	%esi, -8(%ecx,%ebx)
	movl	%edi, -4(%ecx,%ebx)
	movl	-4(%eax), %esi
	movl	-56(%eax), %ecx
	movl	%esi, -204(%ebp)
	jmp	L779
	.p2align 4,,10
	.p2align 3
L1428:
	movl	%eax, %edx
	movl	-200(%ebp), %eax
	movl	%ebx, %ecx
	call	_Bcrc32
	movl	%eax, %ebx
	cmpl	$65536, %edi
	jne	L849
L850:
	movl	$65536, 8(%esp)
	movl	-200(%ebp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_read
	movl	%eax, %edi
	testl	%eax, %eax
	jg	L1428
L849:
	movl	%esi, (%esp)
	call	_close
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L851
	movl	%ebx, 20(%esp)
	movl	-184(%ebp), %eax
	movl	(%eax), %eax
	movl	$LC71, 12(%esp)
	movl	$229, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC66, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L851:
	movl	-132(%ebp), %eax
	movl	$__ZL8grpfiles, %edi
	jmp	L854
	.p2align 4
	.p2align 4,,10
	.p2align 3
L852:
	addl	$24, %edi
	cmpl	$__ZL8grpfiles+288, %edi
	je	L855
L854:
	cmpl	4(%edi), %ebx
	jne	L852
	cmpl	8(%edi), %eax
	jne	L852
	movl	$12, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1060
	movl	-184(%ebp), %eax
	movl	$0, (%esi)
	movl	$0, 4(%esi)
	movl	$0, 8(%esi)
	movl	(%eax), %eax
	movl	%eax, -212(%ebp)
	movl	%eax, (%esp)
	call	_strlen
	leal	1(%eax), %ecx
	movl	%eax, -216(%ebp)
	movl	%ecx, -220(%ebp)
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edx
	testl	%eax, %eax
	je	L856
	movl	-212(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	movl	%edx, -212(%ebp)
	call	_strcpy
	movl	-216(%ebp), %eax
	movl	-212(%ebp), %edx
	movb	$0, (%edx,%eax)
	movl	%edx, (%esi)
	movl	_foundgrps, %eax
	movl	%edi, 4(%esi)
	movl	%eax, 8(%esi)
	movl	%esi, _foundgrps
L855:
	movl	$276, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L827
	movl	$276, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-184(%ebp), %eax
	movl	(%eax), %esi
	movl	%esi, (%esp)
	call	_strlen
	movl	$255, %edx
	addl	$1, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	cmpl	$16, %eax
	jnb	L857
	testb	$8, %al
	jne	L1429
	testb	$4, %al
	jne	L1430
	testl	%eax, %eax
	je	L858
	movzbl	(%esi), %edx
	movb	%dl, 4(%edi)
	testb	$2, %al
	jne	L1431
L858:
	movb	$0, 259(%edi)
	movss	-132(%ebp), %xmm0
	movss	-124(%ebp), %xmm5
	movl	__ZL12usedgrpcache, %eax
	movl	%ebx, 272(%edi)
	unpcklps	%xmm5, %xmm0
	movl	%eax, (%edi)
	movlps	%xmm0, 264(%edi)
	movl	%edi, __ZL12usedgrpcache
	jmp	L837
L1422:
	cmpb	$0, (%eax)
	jne	L828
	addl	$1, %eax
	movl	%eax, 12(%ebx)
	cmpl	%edx, %eax
	jnb	L826
L828:
	movl	%ebx, %eax
	call	_scriptfile_gettoken
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1432
	leal	-168(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L826
	leal	-164(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L826
	leal	-156(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L826
	movl	$276, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L827
	movl	$276, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	__ZL8grpcache, %eax
	movl	%esi, __ZL8grpcache
	movl	%eax, (%esi)
	leal	4(%esi), %eax
	movl	$256, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_strncpy
	movss	-168(%ebp), %xmm0
	movss	-164(%ebp), %xmm4
	unpcklps	%xmm4, %xmm0
	movlps	%xmm0, 264(%esi)
	movl	-156(%ebp), %eax
	movl	%eax, 272(%esi)
	jmp	L824
L1425:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
L1382:
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L837
L1419:
	movups	%xmm0, -200(%ebp)
	movups	%xmm1, -184(%ebp)
	call	__Z8OSD_Initv
	movl	_osd, %eax
	movups	-184(%ebp), %xmm1
	movups	-200(%ebp), %xmm0
	testl	%eax, %eax
	jne	L806
	call	__Z8OSD_Initv
	movl	_osd, %eax
	movups	-200(%ebp), %xmm0
	movups	-184(%ebp), %xmm1
	jmp	L806
L840:
	movl	-124(%ebp), %eax
	cmpl	%eax, 268(%ebx)
	jne	L1381
	movl	272(%ebx), %eax
	movl	$__ZL8grpfiles, %edx
	jmp	L844
L842:
	addl	$24, %edx
	cmpl	$__ZL8grpfiles+288, %edx
	je	L845
L844:
	cmpl	4(%edx), %eax
	jne	L842
	cmpl	8(%edx), %ecx
	jne	L842
	movl	%edx, -212(%ebp)
	movl	$12, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	movl	-212(%ebp), %edx
	subl	$4, %esp
	testl	%eax, %eax
	movl	%eax, %edi
	je	L1060
	movl	-184(%ebp), %eax
	movl	$0, (%edi)
	movl	$0, 4(%edi)
	movl	$0, 8(%edi)
	movl	(%eax), %eax
	movl	%edx, -232(%ebp)
	movl	%eax, -212(%ebp)
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, -220(%ebp)
	addl	$1, %eax
	movl	%eax, -216(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	movl	-232(%ebp), %edx
	subl	$4, %esp
	testl	%eax, %eax
	movl	%eax, %ecx
	je	L1433
	movl	-212(%ebp), %eax
	movl	%edx, -216(%ebp)
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -212(%ebp)
	call	_strcpy
	movl	-220(%ebp), %eax
	movl	-212(%ebp), %ecx
	movl	-216(%ebp), %edx
	movb	$0, (%ecx,%eax)
	movl	%ecx, (%edi)
	movl	_foundgrps, %eax
	movl	%edx, 4(%edi)
	movl	%eax, 8(%edi)
	movl	%edi, _foundgrps
L845:
	movl	$276, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L827
	movl	$276, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	leal	4(%edi), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	264(%ebx), %eax
	movl	%eax, 264(%edi)
	movl	268(%ebx), %eax
	movl	%eax, 268(%edi)
	movl	272(%ebx), %eax
	movl	%eax, 272(%edi)
	movl	__ZL12usedgrpcache, %eax
	movl	%eax, (%edi)
	movl	%edi, __ZL12usedgrpcache
	jmp	L837
L827:
	movl	$276, %eax
	call	__Z13handle_memerri
L857:
	movl	-16(%esi,%eax), %edx
	movl	%edx, -12(%edi,%eax)
	movl	-12(%esi,%eax), %edx
	movl	%edx, -8(%edi,%eax)
	movl	-8(%esi,%eax), %edx
	movl	%edx, -4(%edi,%eax)
	movl	-4(%esi,%eax), %edx
	movl	%edx, (%edi,%eax)
	subl	$1, %eax
	cmpl	$16, %eax
	jb	L858
	andl	$-16, %eax
	movl	%eax, -212(%ebp)
	xorl	%eax, %eax
L862:
	movl	4(%esi,%eax), %ecx
	movl	%ecx, -216(%ebp)
	movl	8(%esi,%eax), %ecx
	movl	%ecx, -220(%ebp)
	movl	(%esi,%eax), %ecx
	movl	12(%esi,%eax), %edx
	movl	%ecx, 4(%edi,%eax)
	movl	-216(%ebp), %ecx
	movl	%ecx, 8(%edi,%eax)
	movl	-220(%ebp), %ecx
	movl	%edx, 16(%edi,%eax)
	movl	%ecx, 12(%edi,%eax)
	addl	$16, %eax
	cmpl	-212(%ebp), %eax
	jb	L862
	jmp	L858
L1421:
	testl	%edx, %edx
	jns	L1434
	movl	_default_buildkeys, %eax
	movl	%eax, _buildkeys
	movl	_default_buildkeys+4, %eax
	movl	%eax, _buildkeys+4
	movl	_default_buildkeys+8, %eax
	movl	%eax, _buildkeys+8
	movl	_default_buildkeys+12, %eax
	movl	%eax, _buildkeys+12
	movl	_default_buildkeys+16, %eax
	movl	%eax, _buildkeys+16
	cmpb	$0, _option+4
	je	L1379
	movb	$0, _option+4
L1379:
	movl	$58, _kensplayerheight
	movl	$0, _zmode
	jmp	L822
L870:
	movl	__ZL12usedgrpcache, %eax
	testl	%eax, %eax
	je	L880
	movl	$LC72, 4(%esp)
	movl	$LC67, (%esp)
	call	_fopen
	movl	_foundgrps, %esi
	movl	%eax, %edi
	testl	%eax, %eax
	je	L880
	movl	__ZL12usedgrpcache, %ebx
	testl	%ebx, %ebx
	je	L881
L882:
	movl	%ebx, %esi
	movl	(%ebx), %ebx
	movl	272(%esi), %eax
	movl	%eax, 20(%esp)
	movl	268(%esi), %eax
	movl	%eax, 16(%esp)
	movl	264(%esi), %eax
	movl	$LC73, 4(%esp)
	movl	%eax, 12(%esp)
	leal	4(%esi), %eax
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	call	_fprintf
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	testl	%ebx, %ebx
	jne	L882
L881:
	movl	%edi, (%esp)
	call	_fclose
	movl	_foundgrps, %esi
L880:
	movl	_g_grpNamePtr, %edi
	movl	$LC42, %eax
	movl	%esi, %ebx
	movl	$0, _g_selectedGrp
	testl	%edi, %edi
	cmove	%eax, %edi
	testl	%esi, %esi
	jne	L884
	jmp	L886
	.p2align 4,,10
	.p2align 3
L1435:
	movl	8(%ebx), %ebx
	testl	%ebx, %ebx
	je	L886
L884:
	movl	%edi, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1435
L885:
	movl	%ebx, _g_selectedGrp
	movl	$LC53, 8(%esp)
	movl	$LC74, 4(%esp)
	movl	$LC75, (%esp)
	call	_wm_msgbox
	call	_ExtPostStartupWindow
	cmpl	$-1, %eax
	je	L1070
	movl	$LC76, %eax
	call	_scriptfile_fromfile
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L887
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L888
	movl	$LC76, 16(%esp)
	movl	$LC77, 12(%esp)
	movl	$10606, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L888:
	movl	%ebx, %eax
	call	__ZL14parsenamesfileP10scriptfile.lto_priv.0
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	%eax, %ecx
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L889
	movl	%ecx, 16(%esp)
	movl	$LC78, 12(%esp)
	movl	$10609, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L889:
	movl	%ebx, %eax
	call	_scriptfile_close
	movl	__ZL7symbtab.lto_priv.0, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, __ZL7symbtab.lto_priv.0
	movl	$0, __ZL13symbtablength.lto_priv.0
	movl	$0, __ZL18symbtaballoclength.lto_priv.0
L887:
	movb	$3, _inputdevices
	movb	$0, _g_mouseGrabbed
	movl	$6144, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_g_keyNameTable, (%esp)
	call	_memset
	movl	$511, -184(%ebp)
	jmp	L898
	.p2align 4,,10
	.p2align 3
L1440:
	testb	$8, %al
	movl	-204(%ebp), %edx
	jne	L1436
	testb	$4, -200(%ebp)
	jne	L1437
	movl	-200(%ebp), %ecx
	testl	%ecx, %ecx
	je	L892
	movzbl	(%esi), %eax
	andl	$2, %ecx
	movb	%al, _g_keyNameTable(,%edx,8)
	jne	L1438
L892:
	movb	$0, 23(%edi)
L890:
	subl	$1, -184(%ebp)
	cmpl	$-1, -184(%ebp)
	je	L1439
L898:
	movl	-184(%ebp), %ebx
	cmpb	$0, __ZL14keytranslation.lto_priv.0(%ebx)
	je	L890
	movl	%ebx, %eax
	orl	$1073741824, %eax
	movl	%eax, (%esp)
	call	_SDL_GetKeyName
	movl	%eax, %esi
	movzbl	__ZL14keytranslation.lto_priv.0(%ebx), %eax
	leal	(%eax,%eax,2), %edx
	movl	%edx, -204(%ebp)
	leal	_g_keyNameTable(,%edx,8), %edi
	movl	%esi, (%esp)
	call	_strlen
	leal	1(%eax), %ecx
	movl	$23, %eax
	cmpl	%eax, %ecx
	cmovbe	%ecx, %eax
	movl	%eax, -200(%ebp)
	cmpl	$16, %eax
	jb	L1440
	movl	-200(%ebp), %ecx
	movl	-16(%esi,%ecx), %eax
	movl	%eax, -16(%edi,%ecx)
	movl	-12(%esi,%ecx), %eax
	movl	%eax, -12(%edi,%ecx)
	movl	-8(%esi,%ecx), %eax
	movl	%eax, -8(%edi,%ecx)
	movl	-4(%esi,%ecx), %eax
	movl	%eax, -4(%edi,%ecx)
	subl	$1, %ecx
	cmpl	$16, %ecx
	jb	L892
	andl	$-16, %ecx
	xorl	%eax, %eax
	movl	%ecx, -204(%ebp)
L896:
	movl	8(%esi,%eax), %edx
	movl	4(%esi,%eax), %ebx
	movl	%edx, -200(%ebp)
	movl	(%esi,%eax), %ecx
	movl	12(%esi,%eax), %edx
	movl	%ebx, 4(%edi,%eax)
	movl	%ecx, (%edi,%eax)
	movl	-200(%ebp), %ebx
	movl	%edx, 12(%edi,%eax)
	movl	%ebx, 8(%edi,%eax)
	addl	$16, %eax
	cmpl	-204(%ebp), %eax
	jb	L896
	jmp	L892
L1436:
	movl	(%esi), %ecx
	movl	4(%esi), %ebx
	movl	%ecx, _g_keyNameTable(,%edx,8)
	movl	%ebx, _g_keyNameTable+4(,%edx,8)
	movl	-200(%ebp), %ecx
	movl	-8(%esi,%ecx), %eax
	movl	-4(%esi,%ecx), %edx
	movl	%eax, -8(%edi,%ecx)
	movl	%edx, -4(%edi,%ecx)
	jmp	L892
L1437:
	movl	(%esi), %eax
	movl	%eax, _g_keyNameTable(,%edx,8)
	movl	-200(%ebp), %ecx
	movl	-4(%esi,%ecx), %eax
	movl	%eax, -4(%edi,%ecx)
	jmp	L892
L1070:
	movl	$-1, -208(%ebp)
	jmp	L764
L1439:
	movl	$8192, (%esp)
	call	_SDL_InitSubSystem
	testl	%eax, %eax
	movl	%eax, -184(%ebp)
	movzbl	__ZL6linked.lto_priv.0, %eax
	je	L1441
L899:
	cmpb	$2, %al
	ja	L958
	je	L1337
L959:
	movzbl	_g_mouseLockedToWindow, %eax
	movb	%al, _g_mouseEnabled
	call	_mouseGrabInput
	call	__Z9timerIniti.constprop.0.isra.0
	movb	$0, __ZL11artfilename.lto_priv.0+12
	movl	$__ZL13keytimerstuffv.lto_priv.0, __ZL17usertimercallback.lto_priv.0
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
	movups	LC93, %xmm0
	movl	$_rottile, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L960:
	movups	%xmm0, (%eax)
	addl	$32, %eax
	movups	%xmm0, -16(%eax)
	cmpl	$_rottile+122880, %eax
	jne	L960
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L961:
	movl	%ebx, %eax
	addl	$1, %ebx
	call	__ZL18artReadIndexedFilei.lto_priv.0
	cmpl	$200, %ebx
	jne	L961
	movl	$3840, 8(%esp)
	movl	$134217728, %ebx
	movl	$0, 4(%esp)
	movl	$_gotpic, (%esp)
	call	_memset
	call	_Bgetsysmemsize
	cmpl	$134217728, %eax
	movl	$134217728, %eax
	jbe	L1442
L962:
	movl	%ebx, __ZL9g_vm_size
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L963
	movl	%eax, __ZL9g_vm_data.lto_priv.0
	movl	__ZL9g_vm_size, %eax
	movl	%eax, -184(%ebp)
	cmpb	$0, __ZL11g_cacheInit
	jne	L964
	movl	$1, %edi
	.p2align 4
	.p2align 3
L965:
	movl	$200, %eax
	movl	$268435456, (%esp)
	subl	%edi, %eax
	movl	%eax, 4(%esp)
	call	_tabledivide32.lto_priv.1
	movl	%eax, __ZL9lockrecip.lto_priv.0(,%edi,4)
	addl	$1, %edi
	cmpl	$200, %edi
	jne	L965
	movl	_osd, %ebx
	testl	%ebx, %ebx
	je	L1443
L966:
	movl	$LC94, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1444
L967:
	movl	$LC95, 8(%eax)
	movl	$__ZL17osdfunc_cacheinfoPK13osdfuncparm_t.lto_priv.0, 12(%eax)
	movb	$1, __ZL11g_cacheInit
L964:
	movl	$16384, _g_cache+12
	leal	15(%esi), %eax
	andl	$15, %esi
	andl	$-16, %eax
	movl	%eax, _g_cache+4
	movl	-184(%ebp), %eax
	subl	%esi, %eax
	andl	$-16, %eax
	movl	%eax, _g_cache+8
	movl	$16, 4(%esp)
	movl	$262144, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj
	subl	$8, %esp
	testl	%eax, %eax
	je	L968
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
	jns	L1445
L969:
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L971:
	movl	%ebx, %eax
	addl	$1, %ebx
	call	_tileUpdatePicSiz
	cmpl	$30720, %ebx
	jne	L971
	movl	$-19276, %eax
	xorl	%edx, %edx
	movl	$31996, %ecx
	movl	$-11120, %esi
	movw	%ax, _vgapal16+92
	movl	$-23348, %eax
	movl	$-19376, %ebx
	movl	$-820, %edi
	movw	%ax, _vgapal16+96
	movl	$-14096, %eax
	movw	%ax, _vgapal16+128
	movl	$14400, %eax
	movw	%ax, _vgapal16+100
	movl	$24672, %eax
	movl	$1836213622, __ZL6kensig+32
	movw	%cx, _vgapal16+36
	xorl	%ecx, %ecx
	movw	%si, _vgapal16+156
	movw	%ax, _vgapal16+104
	movl	$LC43, %eax
	movw	%dx, _vgapal16+132
	movl	$-1, __ZL6artfil.lto_priv.0
	movl	$-1, __ZL9artfilnum.lto_priv.0
	movl	$0, __ZL9artfilplc.lto_priv.0
	movl	$1936028501, __ZL6kensig
	movl	$1230324256, __ZL6kensig+4
	movl	$1948271692, __ZL6kensig+8
	movl	$1852334949, __ZL6kensig+12
	movl	$1735355503, __ZL6kensig+16
	movl	$2036473977, __ZL6kensig+20
	movl	$1852132128, __ZL6kensig+24
	movl	$1818841888, __ZL6kensig+28
	movl	$7233901, __ZL6kensig+35
	movb	$28, _vgapal16+38
	movw	%bx, _vgapal16+124
	movb	$-16, _vgapal16+126
	movb	$-4, _vgapal16+158
	movw	%di, _vgapal16+88
	movb	$-4, _vgapal16+90
	movb	$-76, _vgapal16+94
	movb	$48, _vgapal16+98
	movb	$84, _vgapal16+130
	movb	$56, _vgapal16+102
	movb	$96, _vgapal16+106
	movb	$-64, _vgapal16+134
	movl	_g_defNamePtr, %esi
	movw	%cx, _vgapal16+164
	testl	%esi, %esi
	movb	$-4, _vgapal16+166
	cmove	%eax, %esi
	xorl	%edx, %edx
	movl	$LC109, %eax
	call	_kopen4load.part.0
	cmpl	$-1, %eax
	je	L973
	call	_kclose
	movl	$11, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L974
	movl	$1680765551, 4(%eax)
	movl	$1953064037, (%eax)
	movl	$6710628, 7(%eax)
	movl	_g_defModules+4, %ebx
	cmpl	_g_defModules+8, %ebx
	je	L1446
L975:
	leal	1(%ebx), %eax
	movl	%eax, _g_defModules+4
	movl	_g_defModules, %eax
	movl	%edi, (%eax,%ebx,4)
L973:
	movl	%esi, %eax
	call	_scriptfile_fromfile
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1447
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L981
	xorl	%ebx, %ebx
	movl	%esi, 16(%esp)
	movl	$LC110, 12(%esp)
	movl	$3920, 8(%esp)
	movl	$LC111, 4(%esp)
	movl	%ebx, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L981:
	movl	%edi, %eax
	call	__ZL10defsparserP10scriptfile.isra.0
	movl	_g_defModules, %ebx
	movl	_g_defModules+4, %eax
	leal	(%ebx,%eax,4), %edx
	cmpl	%edx, %ebx
	je	L982
L979:
	movl	%esi, -184(%ebp)
	movl	%edx, %esi
L983:
	movl	(%ebx), %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	addl	$4, %ebx
	call	__ZL18defsparser_includePKcPK10scriptfileS0_.lto_priv.0
	cmpl	%ebx, %esi
	jne	L983
	movl	-184(%ebp), %esi
	testl	%edi, %edi
	je	L980
L982:
	movl	%edi, %eax
	call	_scriptfile_close
L980:
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
	je	L984
	movl	$_compare_usermaphacks, 12(%esp)
	movl	$28, 8(%esp)
	movl	_num_usermaphacks, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_qsort
L984:
	testl	%edi, %edi
	je	L985
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	jns	L1448
L985:
	movl	_g_defModules, %ebx
	movl	_g_defModules+4, %eax
	leal	(%ebx,%eax,4), %esi
	cmpl	%ebx, %esi
	je	L986
L987:
	movl	(%ebx), %eax
	addl	$4, %ebx
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	cmpl	%ebx, %esi
	jne	L987
	movl	_g_defModules, %ebx
L986:
	movl	$0, _g_defModules+4
	movl	$0, _g_defModules+8
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movzbl	_paletteloaded, %eax
	subl	$4, %esp
	movl	$0, _g_defModules
	testb	$1, %al
	je	L1449
	testb	$2, %al
	je	L1450
	testb	$4, %al
	je	L1451
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
	movb	%al, _blackcol
	movl	%eax, %edi
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
	movswl	_numshades, %eax
	movl	%eax, %ecx
	sall	$8, %eax
	movw	%cx, -184(%ebp)
	.p2align 4
	.p2align 3
L996:
	movzbl	-256(%ebx,%esi), %edx
	movl	%edx, %ecx
	cmpb	$0, _palette(%edx,%edx,2)
	je	L1452
L992:
	cmpl	%eax, %esi
	jnb	L994
	movl	%esi, %edx
	jmp	L995
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1453:
	addl	$256, %edx
	cmpl	%eax, %edx
	jnb	L994
L995:
	cmpb	(%ebx,%edx), %cl
	je	L1453
L993:
	addl	$1, %esi
	cmpl	$511, %esi
	jne	L996
	movl	_realmaxshade, %edx
	movzwl	-184(%ebp), %ecx
	testl	%edx, %edx
	jne	L997
	cmpw	$1, %cx
	jle	L1000
	subw	$2, %cx
	je	L1000
	movl	%edi, %edx
	movzbl	%dl, %edi
	leal	_palette(%edi,%edi,2), %esi
	movl	%ebx, %edi
	movl	%esi, -200(%ebp)
	leal	-257(%eax), %esi
	movswl	%cx, %eax
L1005:
	movl	%eax, -204(%ebp)
	movl	%eax, %edx
	sall	$8, %edx
L1004:
	movzbl	(%edi,%edx), %eax
	movl	%eax, %ecx
	movl	%eax, -184(%ebp)
	sarl	$3, %eax
	andl	$7, %ecx
	movzbl	_PaletteIndexFullbright(%eax), %eax
	movzbl	__ZL8pow2char.lto_priv.8(%ecx), %ecx
	andl	%ecx, %eax
	cmpb	%al, %cl
	je	L1001
	movl	-184(%ebp), %eax
	movl	-200(%ebp), %ecx
	leal	(%eax,%eax,2), %eax
	movzwl	_palette(%eax), %ebx
	cmpw	%bx, (%ecx)
	je	L1454
L1370:
	movl	-204(%ebp), %ecx
L999:
	addl	$1, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	movl	%ecx, _realmaxshade
	movss	%xmm0, _frealmaxshade
L997:
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L1007:
	cmpb	$0, _editorcolorsdef(%ebx)
	jne	L1006
	movzbl	_vgapal16(,%ebx,4), %ecx
	movzbl	_vgapal16+1(,%ebx,4), %edx
	movzbl	_vgapal16+2(,%ebx,4), %eax
	movl	$_PaletteIndexFullbright, 4(%esp)
	movl	$254, (%esp)
	call	_paletteGetClosestColorWithBlacklist
	movb	%al, _editorcolors(%ebx)
L1006:
	addl	$1, %ebx
	cmpl	$256, %ebx
	jne	L1007
L1008:
	movl	$__ZL16fileDropCallbackPKc, _g_fileDropCallback
	movl	$1, %ebx
	jmp	L1011
	.p2align 4,,10
	.p2align 3
L1457:
	movl	_palookup, %edx
	cmpl	%edx, %esi
	je	L1010
	movswl	_numshades, %eax
	movl	%esi, 4(%esp)
	movl	%edx, (%esp)
	sall	$8, %eax
	movl	%eax, 8(%esp)
	call	_memcmp
	testl	%eax, %eax
	je	L1455
L1010:
	addl	$1, %ebx
	cmpl	$256, %ebx
	je	L1456
L1011:
	movl	_palookup(,%ebx,4), %esi
	testl	%esi, %esi
	jne	L1457
L1009:
	cmpb	$0, _paletteloaded
	je	L1010
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%ebx, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
	jmp	L1010
L1445:
	movl	-184(%ebp), %edi
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movzwl	%di, %eax
	shrl	$16, %edi
	cvtsi2ssl	%edi, %xmm0
	mulss	LC96, %xmm0
	cvtsi2ssl	%eax, %xmm1
	addss	%xmm1, %xmm0
	movss	LC97, %xmm1
	mulss	%xmm1, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -184(%ebp)
	flds	-184(%ebp)
	movl	$LC98, 12(%esp)
	movl	$98, 8(%esp)
	movl	$LC99, 4(%esp)
	movl	$0, (%esp)
	fstpl	16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L969
	.p2align 4,,10
	.p2align 3
L994:
	leal	-256(%esi), %edx
	movl	%esi, %ecx
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.8(%ecx), %ecx
	orb	%cl, _PaletteIndexFullbright(%edx)
	jmp	L993
L1454:
	movzbl	_palette+2(%eax), %eax
	cmpb	%al, 2(%ecx)
	jne	L1370
L1001:
	addl	$1, %edx
	cmpl	%esi, %edx
	jb	L1004
	movl	-204(%ebp), %eax
	subl	$256, %esi
	subl	$1, %eax
	jne	L1005
	movl	%eax, %ecx
	jmp	L999
	.p2align 4,,10
	.p2align 3
L1452:
	cmpb	$0, _palette+1(%edx,%edx,2)
	jne	L992
	cmpb	$0, _palette+2(%edx,%edx,2)
	jne	L992
	jmp	L993
	.p2align 4,,10
	.p2align 3
L1438:
	movl	-200(%ebp), %ecx
	movzwl	-2(%esi,%ecx), %eax
	movw	%ax, -2(%edi,%ecx)
	jmp	L892
L1418:
	movl	(%edx), %edi
	movl	%edi, (%ecx)
	movl	-204(%ebp), %esi
	movl	-4(%edx,%esi), %edx
	movl	%edx, -4(%ecx,%esi)
	movl	-4(%eax), %esi
	movl	-56(%eax), %ecx
	movl	%esi, -204(%ebp)
	jmp	L779
L1434:
	movl	$LC63, 12(%esp)
	movl	$755, 8(%esp)
	movl	$LC64, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	%eax, %edx
	cmovl	%eax, %edx
	jmp	L819
L1455:
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, _palookup(,%ebx,4)
	jmp	L1009
L1337:
	cmpb	$0, __ZL6linked.lto_priv.0+1
	jne	L958
	cmpb	$8, __ZL6linked.lto_priv.0+2
	jbe	L959
L958:
	testb	$2, _joystick+44
	je	L959
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$4, %eax
	jle	L959
	movl	$LC92, 12(%esp)
	movl	$1214, 8(%esp)
	movl	$LC80, 4(%esp)
	movl	$5, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L959
L886:
	movl	%esi, %ebx
	jmp	L885
L1060:
	movl	$12, %eax
	call	__Z13handle_memerri
L856:
	movl	-220(%ebp), %eax
	call	__Z13handle_memerri
L830:
	movl	$65536, %eax
	call	__Z13handle_memerri
L1441:
	movl	__ZL10controller.lto_priv.0, %eax
	andb	$-5, _inputdevices
	testl	%eax, %eax
	je	L900
	movl	%eax, (%esp)
	xorl	%edi, %edi
	call	_SDL_GameControllerClose
	movl	%edi, __ZL10controller.lto_priv.0
L900:
	movl	__ZL6joydev.lto_priv.0, %eax
	testl	%eax, %eax
	je	L901
	movl	%eax, (%esp)
	xorl	%esi, %esi
	call	_SDL_JoystickClose
	movl	%esi, __ZL6joydev.lto_priv.0
L901:
	call	_SDL_NumJoysticks
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	movl	%eax, __ZL12numjoysticks.lto_priv.0
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%eax, %eax
	jle	L1458
	cmpl	$4, %edx
	jg	L1459
L903:
	xorl	%edi, %edi
	leal	-152(%ebp), %ebx
L922:
	movl	%edi, (%esp)
	call	_SDL_IsGameController
	movl	%edi, (%esp)
	testl	%eax, %eax
	je	L905
	call	_SDL_GameControllerNameForIndex
	movl	%eax, (%esp)
	movl	%eax, %esi
	call	_strlen
	leal	1(%eax), %ecx
	movl	$127, %eax
	cmpl	%eax, %ecx
	cmova	%eax, %ecx
	cmpl	$16, %ecx
	jb	L1395
	movl	-16(%esi,%ecx), %eax
	leal	-1(%ecx), %edx
	movl	%eax, -16(%ebx,%ecx)
	movl	-12(%esi,%ecx), %eax
	movl	%eax, -12(%ebx,%ecx)
	movl	-8(%esi,%ecx), %eax
	movl	%eax, -8(%ebx,%ecx)
	movl	-4(%esi,%ecx), %eax
	movl	%eax, -4(%ebx,%ecx)
	cmpl	$16, %edx
	jb	L913
	andl	$-16, %edx
	xorl	%eax, %eax
	movl	%edx, -212(%ebp)
L911:
	movl	8(%esi,%eax), %edx
	movl	4(%esi,%eax), %ecx
	movl	%edx, -200(%ebp)
	movl	12(%esi,%eax), %edx
	movl	%edx, -204(%ebp)
	movl	(%esi,%eax), %edx
	movl	%ecx, 4(%ebx,%eax)
	movl	%edx, (%ebx,%eax)
	movl	-200(%ebp), %edx
	movl	%edx, 8(%ebx,%eax)
	movl	-204(%ebp), %edx
	movl	%edx, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	-212(%ebp), %eax
	jb	L911
L913:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	addl	$1, %edi
	movb	$0, -25(%ebp)
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$4, %eax
	jg	L1460
L921:
	movl	__ZL12numjoysticks.lto_priv.0, %eax
	cmpl	%edi, %eax
	jg	L922
	testl	%eax, %eax
	jle	L904
	xorl	%esi, %esi
	jmp	L948
L923:
	movl	__ZL12numjoysticks.lto_priv.0, %eax
	addl	$1, %esi
	cmpl	%eax, %esi
	jge	L1461
L948:
	movl	%esi, (%esp)
	call	_SDL_GameControllerOpen
	movl	%eax, __ZL10controller.lto_priv.0
	testl	%eax, %eax
	je	L923
	cmpb	$2, __ZL6linked.lto_priv.0
	ja	L924
	jne	L925
	cmpb	$0, __ZL6linked.lto_priv.0+1
	jne	L924
	cmpb	$13, __ZL6linked.lto_priv.0+2
	ja	L924
L925:
	movl	%eax, (%esp)
	call	_SDL_GameControllerName
	movl	$LC5, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$128, 4(%esp)
	movl	%ebx, (%esp)
	call	*__imp___snprintf
L926:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$4, %eax
	jg	L1462
L927:
	movups	LC85, %xmm0
	movb	$0, _joystick+44
	movl	$-1, _joystick+32
	movups	%xmm0, _joystick+16
	cmpb	$2, __ZL6linked.lto_priv.0
	ja	L928
	je	L1463
L929:
	orb	$1, _joystick+44
	cmpb	$0, __ZL22gameControllerDBLoaded
	je	L1464
L934:
	movl	_joystick, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%eax
	movl	_joystick+16, %eax
	leal	0(,%eax,4), %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	movl	%eax, %esi
	pushl	%edx
	testl	%eax, %eax
	je	L942
	xorl	%eax, %eax
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_memset
	movl	_joystick+4, %eax
	movl	%esi, _joystick
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%eax
	xorl	%eax, %eax
	movl	%eax, _joystick+4
	movzbl	__ZL6linked.lto_priv.0, %eax
	orb	$4, _inputdevices
	cmpb	$2, %al
	ja	L943
	jne	L899
	cmpb	$0, __ZL6linked.lto_priv.0+1
	jne	L943
	movzbl	__ZL6linked.lto_priv.0+2, %eax
	cmpb	$17, %al
	ja	L943
	cmpb	$8, %al
	jbe	L1337
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	__ZL10controller.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_GameControllerRumble
	testl	%eax, %eax
	je	L947
L1388:
	movzbl	__ZL6linked.lto_priv.0, %eax
	jmp	L899
	.p2align 4,,10
	.p2align 3
L905:
	call	_SDL_JoystickNameForIndex
	movl	%eax, (%esp)
	movl	%eax, %esi
	call	_strlen
	leal	1(%eax), %ecx
	movl	$127, %eax
	cmpl	%eax, %ecx
	cmova	%eax, %ecx
	cmpl	$16, %ecx
	jb	L1395
	movl	-16(%esi,%ecx), %eax
	leal	-1(%ecx), %edx
	movl	%eax, -16(%ebx,%ecx)
	movl	-12(%esi,%ecx), %eax
	movl	%eax, -12(%ebx,%ecx)
	movl	-8(%esi,%ecx), %eax
	movl	%eax, -8(%ebx,%ecx)
	movl	-4(%esi,%ecx), %eax
	movl	%eax, -4(%ebx,%ecx)
	cmpl	$16, %edx
	jb	L913
	andl	$-16, %edx
	xorl	%eax, %eax
	movl	%edx, -212(%ebp)
L919:
	movl	8(%esi,%eax), %edx
	movl	4(%esi,%eax), %ecx
	movl	%edx, -200(%ebp)
	movl	12(%esi,%eax), %edx
	movl	%edx, -204(%ebp)
	movl	(%esi,%eax), %edx
	movl	%ecx, 4(%ebx,%eax)
	movl	%edx, (%ebx,%eax)
	movl	-200(%ebp), %edx
	movl	%edx, 8(%ebx,%eax)
	movl	-204(%ebp), %edx
	movl	%edx, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	-212(%ebp), %eax
	jb	L919
	jmp	L913
	.p2align 4,,10
	.p2align 3
L1395:
	testb	$8, %cl
	jne	L1465
	testb	$4, %cl
	jne	L1466
	testl	%ecx, %ecx
	je	L913
	movzbl	(%esi), %eax
	movb	%al, (%ebx)
	testb	$2, %cl
	je	L913
	movzwl	-2(%esi,%ecx), %eax
	movw	%ax, -2(%ebx,%ecx)
	jmp	L913
	.p2align 4,,10
	.p2align 3
L1460:
	movl	%ebx, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$LC82, 12(%esp)
	movl	$1013, 8(%esp)
	movl	$LC80, 4(%esp)
	movl	$5, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L921
L1442:
	call	_Bgetsysmemsize
	movl	$1374389535, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	imull	$60, %eax, %eax
	movl	%eax, %ebx
	jmp	L962
L1447:
	movl	_g_defModules, %ebx
	movl	_g_defModules+4, %eax
	leal	(%ebx,%eax,4), %edx
	cmpl	%ebx, %edx
	jne	L979
	jmp	L980
L968:
	movl	$262144, %eax
	call	__Z13handle_memerri
L1461:
	testl	%eax, %eax
	jle	L904
	xorl	%ebx, %ebx
	jmp	L957
L949:
	addl	$1, %ebx
	cmpl	__ZL12numjoysticks.lto_priv.0, %ebx
	jge	L904
L957:
	movl	%ebx, (%esp)
	call	_SDL_JoystickOpen
	movl	%eax, __ZL6joydev.lto_priv.0
	testl	%eax, %eax
	je	L949
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$4, %eax
	jg	L1467
L950:
	movl	__ZL6joydev.lto_priv.0, %eax
	movb	$0, _joystick+44
	movl	$4, %edi
	movl	%eax, (%esp)
	call	_SDL_JoystickNumAxes
	movl	$9, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	%eax, _joystick+16
	movl	__ZL6joydev.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_JoystickNumBalls
	movl	%eax, _joystick+20
	movl	__ZL6joydev.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_JoystickNumButtons
	movl	$32, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	%eax, _joystick+24
	movl	__ZL6joydev.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_JoystickNumHats
	movl	_joystick+24, %ecx
	movl	$-1, _joystick+32
	movl	%eax, %esi
	movl	$36, %eax
	subl	%ecx, %eax
	cltd
	idivl	%edi
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	cmpl	%esi, %eax
	cmovg	%esi, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %esi
	andb	$-2, _joystick+44
	cmpl	%esi, %edx
	movl	%eax, _joystick+28
	cmovl	%esi, %edx
	cmpl	$4, %edx
	jg	L1468
L951:
	movl	_joystick, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%esi
	movl	_joystick+16, %eax
	leal	0(,%eax,4), %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	movl	%eax, %esi
	pushl	%edi
	testl	%eax, %eax
	je	L942
	xorl	%ecx, %ecx
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	_joystick+4, %eax
	movl	%esi, _joystick
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%ebx
	movl	_joystick+28, %ebx
	testl	%ebx, %ebx
	je	L952
	sall	$2, %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	movl	%eax, %esi
	pushl	%edx
	testl	%eax, %eax
	je	L942
	xorl	%edi, %edi
	movl	%ebx, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	%esi, _joystick+4
	movl	-184(%ebp), %eax
	cmpl	$0, _joystick+28
	jle	L954
L953:
	movl	_joystick+4, %edx
	movl	$-1, (%edx,%eax,4)
	addl	$1, %eax
	cmpl	_joystick+28, %eax
	jl	L953
L954:
	movl	$1, (%esp)
	call	_SDL_JoystickEventState
	movzbl	__ZL6linked.lto_priv.0, %eax
	orb	$4, _inputdevices
	cmpb	$2, %al
	ja	L955
	jne	L899
	cmpb	$0, __ZL6linked.lto_priv.0+1
	jne	L955
	movzbl	__ZL6linked.lto_priv.0+2, %eax
	cmpb	$17, %al
	ja	L955
	cmpb	$8, %al
	jbe	L1337
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	__ZL6joydev.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_JoystickRumble
	testl	%eax, %eax
	jne	L1388
L947:
	orb	$2, _joystick+44
	movzbl	__ZL6linked.lto_priv.0, %eax
	jmp	L899
L1448:
	xorl	%ecx, %ecx
	movl	%esi, 16(%esp)
	movl	$LC112, 12(%esp)
	movl	$757, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	%ecx, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L985
L1458:
	movzbl	__ZL6linked.lto_priv.0, %eax
	cmpl	$4, %edx
	jle	L899
	movl	$LC79, 12(%esp)
	movl	$997, 8(%esp)
	movl	$LC80, 4(%esp)
	movl	$5, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movzbl	__ZL6linked.lto_priv.0, %eax
	jmp	L899
L1000:
	xorl	%ecx, %ecx
	jmp	L999
L1456:
	movzwl	_tilesiz+122876, %eax
	orw	_tilesiz+122878, %ax
	je	L1469
L1012:
	call	_engineLoadClipMaps
	movl	%eax, %edx
	testl	%eax, %eax
	jg	L1470
L1015:
	movl	_g_clipMapFiles, %eax
	movl	_g_clipMapFiles+4, %edx
	leal	(%eax,%edx,4), %esi
	cmpl	%eax, %esi
	je	L1016
	movl	%eax, %ebx
L1017:
	movl	(%ebx), %eax
	addl	$4, %ebx
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	cmpl	%ebx, %esi
	jne	L1017
	movl	_g_clipMapFiles, %eax
L1016:
	xorl	%esi, %esi
	movl	%esi, _g_clipMapFiles+4
	movl	%esi, _g_clipMapFiles+8
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	xorl	%eax, %eax
	pushl	%edi
	movl	%eax, _g_clipMapFiles
	call	_taglab_init
	xorl	%eax, %eax
	movl	%eax, _chsecptr_onextwall
	movl	$LC118, %eax
	call	__Z8OSD_ExecPKc
	movl	$1, %edx
	movl	$__ZL13boardfilename.lto_priv.0, %eax
	call	_LoadBoard
	testl	%eax, %eax
	jne	L1471
L1018:
	xorl	%ebx, %ebx
	movl	%ebx, _totalclock
	movl	%ebx, _totalclock+8
	movl	%ebx, _totalclock+12
	movl	$_cursectnum, 8(%esp)
	movl	_pos+4, %eax
	movl	%eax, 4(%esp)
	movl	_pos, %eax
	movl	%eax, (%esp)
	call	_updatesector
	xorl	%eax, %eax
	movl	$__ZL20m32_keypresscallbackii, _keypresscallback
	call	_editorMaybeLockMouse
	movl	_upscalefactor, %ebx
	cmpw	$-1, _cursectnum
	movl	_ydim, %ecx
	movl	_xdim, %edx
	movzbl	_fullscreen, %eax
	movl	%ebx, 4(%esp)
	je	L1472
	movl	_bppgame, %ebx
	movl	%ebx, (%esp)
	call	_videoSetGameMode
	addl	$1, %eax
	je	L1473
	cmpl	$5, __ZL3osv.lto_priv.0+4
	jbe	L1028
	call	__Z26windowsDwmSetupCompositioni.part.0.constprop.0
L1028:
	movl	_vsync, %eax
	call	_videoSetVsync
	movl	%eax, _vsync
L1024:
	movss	_g_videoGamma, %xmm0
	xorps	%xmm1, %xmm1
	movl	$LC44, %esi
	subss	LC120, %xmm0
	mulss	LC121, %xmm0
	movaps	%xmm0, %xmm2
	cmpnltss	%xmm1, %xmm2
	movss	LC122, %xmm1
	andps	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	cmpltss	%xmm2, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm2, %xmm0
	orps	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movzbl	%al, %eax
	call	_videoSetPalette.constprop.0
L1044:
	call	_handleevents
	movl	_osd, %eax
	movl	1100(%eax), %ebx
	testl	%ebx, %ebx
	je	L1033
	movl	$0, 1100(%eax)
	subl	$1, %ebx
	jns	L1034
	jmp	L1033
	.p2align 4,,10
	.p2align 3
L1474:
	movl	_osd, %eax
L1034:
	movl	60(%eax,%ebx,4), %eax
	call	__Z12OSD_DispatchPKcb.constprop.0
	subl	$1, %ebx
	jnb	L1474
L1033:
	call	_videoNextPage
	movl	_totalclock, %eax
	movl	%eax, %edx
	subl	_lockclock, %edx
	movl	%eax, _lockclock
	movl	%edx, _synctics
	call	__Z9ToggleFAFv
	call	_M32_DrawRoomsAndMasks
	movl	_m32_numdebuglines, %eax
	movl	$1, _inputchecked
	cmpw	$0, _searchstat
	js	L1036
	movzwl	_searchwall, %edx
	orw	_searchsector, %dx
	js	L1475
L1036:
	testl	%eax, %eax
	jg	L1039
L1040:
	movl	$0, _m32_numdebuglines
	call	_ExtCheckKeys
	cmpb	$0, _keystatus+1
	je	L1044
	movb	$0, _keystatus+1
	movl	$0, 20(%esp)
	movl	$LC123, 16(%esp)
	movl	$0, 12(%esp)
	movzbl	_whitecol, %eax
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$0, (%esp)
	call	_printext256
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	jne	L1045
	movl	$1, %eax
	call	_videoShowFrame.part.0
L1045:
	movl	_totalclock, %eax
	movl	%eax, %edx
	subl	_lockclock, %edx
	movl	%eax, _lockclock
	movl	%edx, _synctics
	movzbl	_keystatus+28, %eax
	jmp	L1046
	.p2align 4,,10
	.p2align 3
L1048:
	movl	$0, (%esp)
	call	_SDL_WaitEvent
	call	_handleevents
	movzbl	_keystatus+21, %eax
	orb	_keystatus+28, %al
	jne	L1476
L1046:
	movzbl	_keystatus+1, %edx
	orb	_keystatus+57, %dl
	orb	_keystatus+49, %dl
	orb	%al, %dl
	je	L1048
	cmpb	$0, _keystatus+1
	je	L1044
L1032:
	movb	$0, _keystatus+1
	movb	$0, _quitevent
	jmp	L1044
L1475:
	cmpl	$63, %eax
	jle	L1038
	movl	$-1, %ecx
	movw	%cx, _searchstat
L1039:
	call	_videoBeginDrawing
	movl	_m32_numdebuglines, %eax
	xorl	%edi, %edi
	movl	$8, %ebx
	testl	%eax, %eax
	jg	L1041
	jmp	L1042
	.p2align 4,,10
	.p2align 3
L1043:
	xorl	%eax, %eax
	cmpl	$640, _xdim
	movl	$0, 12(%esp)
	setle	%al
	movl	%eax, 20(%esp)
	movl	%edi, %eax
	addl	$1, %edi
	sall	$7, %eax
	addl	$_m32_debugstr, %eax
	movl	%eax, 16(%esp)
	movzbl	_whitecol, %eax
	movl	%ebx, 4(%esp)
	addl	$8, %ebx
	movl	%eax, 8(%esp)
	movl	$4, (%esp)
	call	_printext256
	cmpl	_m32_numdebuglines, %edi
	jge	L1042
L1041:
	movl	_ydim, %eax
	subl	$8, %eax
	cmpl	%eax, %ebx
	jl	L1043
L1042:
	call	_videoEndDrawing
	jmp	L1040
L1038:
	leal	1(%eax), %edx
	sall	$7, %eax
	movl	$1701601889, _m32_debugstr+24(%eax)
	movl	%edx, _m32_numdebuglines
	movl	$1868787305, _m32_debugstr(%eax)
	movl	$1936290670, _m32_debugstr+4(%eax)
	movl	$1953391988, _m32_debugstr+8(%eax)
	movl	$1634038560, _m32_debugstr+12(%eax)
	movl	$543712114, _m32_debugstr+16(%eax)
	movl	$1769103734, _m32_debugstr+20(%eax)
	movl	$2192229, _m32_debugstr+27(%eax)
	movl	%edx, %eax
	movl	$-1, %edx
	movw	%dx, _searchstat
	jmp	L1036
L1476:
	movb	$0, _keystatus+21
	movb	$0, _keystatus+28
	cmpb	$0, _keystatus+1
	jne	L1032
	cmpw	$0, _asksave
	je	L1050
	call	_CheckMapCorruption.constprop.0
	movl	$0, 20(%esp)
	cmpl	$3, %eax
	movl	$LC45, %eax
	movl	$0, 12(%esp)
	cmovle	%esi, %eax
	movl	%eax, 16(%esp)
	movzbl	_whitecol, %eax
	movl	$8, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$0, (%esp)
	call	_printext256
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	jne	L1052
	movl	$1, %eax
	call	_videoShowFrame.part.0
L1052:
	movzbl	_keystatus+28, %edx
	jmp	L1053
	.p2align 4,,10
	.p2align 3
L1055:
	movl	$0, (%esp)
	call	_SDL_WaitEvent
	call	_handleevents
	movzbl	_keystatus+21, %edx
	orb	_keystatus+28, %dl
	jne	L1477
L1053:
	movzbl	_keystatus+1, %ebx
	movzbl	_keystatus+57, %eax
	movzbl	_keystatus+46, %ecx
	orl	%ebx, %eax
	orb	_keystatus+49, %al
	orl	%ecx, %eax
	orb	%dl, %al
	je	L1055
L1054:
	orb	%bl, %cl
	je	L1050
	movb	$0, _keystatus+46
	jmp	L1032
L1477:
	movl	$2, %edx
	xorl	%eax, %eax
	movb	$0, _keystatus+28
	movb	$0, _keystatus+21
	call	_SaveBoard
	movzbl	_keystatus+1, %ebx
	movzbl	_keystatus+46, %ecx
	jmp	L1054
L963:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L1430:
	movl	(%esi), %edx
	movl	%edx, 4(%edi)
	movl	-4(%esi,%eax), %edx
	movl	%edx, (%edi,%eax)
	jmp	L858
L1431:
	movzwl	-2(%esi,%eax), %edx
	movw	%dx, 2(%edi,%eax)
	jmp	L858
L1429:
	movl	(%esi), %edx
	movl	4(%esi), %ecx
	movl	%edx, 4(%edi)
	movl	%ecx, 8(%edi)
	movl	-8(%esi,%eax), %edx
	movl	-4(%esi,%eax), %ecx
	movl	%edx, -4(%edi,%eax)
	movl	%ecx, (%edi,%eax)
	jmp	L858
L1432:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L826
	movl	12(%ebx), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC68, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$47, 8(%esp)
	movl	$LC69, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L826
L1426:
	movl	%edx, _foundgrps
	jmp	L876
L1433:
	movl	-216(%ebp), %eax
	call	__Z13handle_memerri
L1473:
	call	_ExtUnInit
	call	_engineUnInit
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1400
	movl	_ydim, %eax
	movl	%eax, 20(%esp)
	movl	_xdim, %eax
	movl	$LC119, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$853, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1400
L1472:
	movl	$8, (%esp)
	call	_videoSetGameMode
	addl	$1, %eax
	je	L1478
	cmpl	$5, __ZL3osv.lto_priv.0+4
	jbe	L1023
	call	__Z26windowsDwmSetupCompositioni.part.0.constprop.0
L1023:
	movl	_vsync, %eax
	call	_videoSetVsync
	movl	%eax, _vsync
	call	__ZL14overheadeditorv.lto_priv.0
	movzbl	_buildkeys+14, %eax
	movb	$0, _keystatus(%eax)
	jmp	L1024
L1478:
	call	_ExtUnInit
	call	_engineUnInit
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1400
	movl	_ydim, %eax
	movl	%eax, 20(%esp)
	movl	_xdim, %eax
	movl	$LC119, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$839, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1400
L1423:
	movl	-200(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%eax
	jmp	L865
L1446:
	addl	$1, %ebx
	leal	0(,%ebx,4), %edx
	movl	%edx, 4(%esp)
	movl	_g_defModules, %eax
	movl	%edx, -184(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	pushl	%edx
	pushl	%edx
	testl	%eax, %eax
	jne	L1075
	movl	-184(%ebp), %edx
	testl	%edx, %edx
	jne	L976
L1075:
	movl	%ebx, _g_defModules+8
	movl	_g_defModules+4, %ebx
	movl	%eax, _g_defModules
	jmp	L975
L976:
	movl	%edx, %eax
	call	__Z13handle_memerri
L974:
	movl	$11, %eax
	call	__Z13handle_memerri
L1466:
	movl	(%esi), %eax
	movl	%eax, (%ebx)
	movl	-4(%esi,%ecx), %eax
	movl	%eax, -4(%ebx,%ecx)
	jmp	L913
L1465:
	movl	(%esi), %eax
	movl	4(%esi), %edx
	movl	%eax, (%ebx)
	movl	%edx, 4(%ebx)
	movl	-8(%esi,%ecx), %eax
	movl	-4(%esi,%ecx), %edx
	movl	%eax, -8(%ebx,%ecx)
	movl	%edx, -4(%ebx,%ecx)
	jmp	L913
L1451:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	$LC115, _engineerrstr
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1479
L989:
	call	__ZL20M32_FatalEngineErrorv
	jmp	L1008
L1450:
	movl	$LC114, %eax
	call	_engineFatalError.isra.0
	jmp	L989
L1449:
	movl	$LC113, %eax
	call	_engineFatalError.isra.0
	jmp	L989
L1479:
	movl	$LC115, 16(%esp)
	movl	$LC5, 12(%esp)
	movl	$9146, 8(%esp)
	movl	$LC116, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L989
L955:
	movl	__ZL6joydev.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_JoystickHasRumble
	testl	%eax, %eax
	jne	L947
	jmp	L1388
L952:
	xorl	%esi, %esi
	movl	%esi, _joystick+4
	jmp	L954
L1468:
	movl	_joystick+20, %edx
	movl	%eax, 28(%esp)
	addl	$1, %ebx
	movl	%ecx, 24(%esp)
	movl	%edx, 32(%esp)
	movl	_joystick+16, %eax
	movl	%ebx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$LC90, 12(%esp)
	movl	$1103, 8(%esp)
	movl	$LC80, 4(%esp)
	movl	$5, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L951
L1467:
	movl	%ebx, (%esp)
	call	_SDL_JoystickNameForIndex
	movl	$LC89, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1091, 8(%esp)
	movl	$LC80, 4(%esp)
	movl	$5, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L950
L1050:
	call	_ExtUnInit
	call	_engineUnInit
	jmp	L764
L1469:
	movl	$_walock+30719, %ecx
	movl	$1024, %edx
	movl	$_waloff+122876, %eax
	movb	$-1, _walock+30719
	movb	$85, _picsiz+30719
	movl	$2097184, _tilesiz+122876
	call	__ZN7cache1d13allocateBlockEPiiPc.constprop.0
	xorl	%eax, %eax
	movl	_waloff+122876, %ebx
	xorl	%ecx, %ecx
	movl	%eax, 4(%esp)
	movl	$128, %edx
	movl	$128, %eax
	movl	$255, (%esp)
	call	_paletteGetClosestColorWithBlacklist
	xorl	%edx, %edx
	movl	%eax, %ecx
L1013:
	movzbl	__ZZ8app_mainE1R(%edx), %eax
	addl	$1, %edx
	imull	%ecx, %eax
	movb	%al, __ZZ8app_mainE1R-1(%edx)
	cmpl	$128, %edx
	jne	L1013
	xorl	%eax, %eax
	movl	$1024, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_memset
	movl	$__ZZ8app_mainE1R, %eax
L1014:
	movl	12(%eax), %edx
	movl	%eax, %esi
	addl	$16, %eax
	movl	%ebx, %edi
	movl	$3, %ecx
	addl	$32, %ebx
	movl	%edx, -20(%ebx)
	rep movsl
	cmpl	$__ZZ8app_mainE1R+128, %eax
	jne	L1014
	jmp	L1012
L1471:
	call	__ZL22reset_default_mapstatev.lto_priv.0
	jmp	L1018
L1470:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jl	L1015
	movl	%edx, 16(%esp)
	movl	$LC117, 12(%esp)
	movl	$809, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1015
L1459:
	movl	$LC81, 12(%esp)
	movl	$1000, 8(%esp)
	movl	$LC80, 4(%esp)
	movl	$5, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	cmpl	$0, __ZL12numjoysticks.lto_priv.0
	jg	L903
L904:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	movzbl	__ZL6linked.lto_priv.0, %eax
	cmpl	$4, %edx
	jle	L899
	movl	$LC91, 12(%esp)
	movl	$1141, 8(%esp)
	movl	$LC80, 4(%esp)
	movl	$5, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1388
L943:
	movl	__ZL10controller.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_GameControllerHasRumble
	testl	%eax, %eax
	movzbl	__ZL6linked.lto_priv.0, %eax
	je	L899
	jmp	L947
L942:
	movl	$4, %eax
	call	__Z13handle_memerri
L924:
	movl	%eax, (%esp)
	call	_SDL_GameControllerGetSerial
	movl	%eax, %esi
	movl	__ZL10controller.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_GameControllerName
	movl	%esi, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC83, 8(%esp)
	movl	$128, 4(%esp)
	movl	%ebx, (%esp)
	call	*__imp___snprintf
	jmp	L926
L1444:
	movl	$LC94, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC94, (%eax)
	jmp	L967
L1443:
	call	__Z8OSD_Initv
	jmp	L966
L1464:
	xorl	%edx, %edx
	movl	$LC86, %eax
	call	_kopen4load.part.0
	movl	%eax, %edi
	cmpl	$-1, %eax
	je	L934
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	movl	%eax, %esi
	testl	%eax, %eax
	jle	L1387
	leal	1(%eax), %edx
	movl	$16, 4(%esp)
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -184(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj
	movl	%eax, %ebx
	pushl	%edx
	pushl	%edx
	testl	%eax, %eax
	je	L1480
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	%eax, %edx
	movl	%esi, %ecx
	movl	%edi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	%eax, %esi
	jne	L1481
	movb	$0, (%ebx,%esi)
	movl	%edi, %eax
	call	_kclose
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_SDL_RWFromConstMem
	testl	%eax, %eax
	je	L939
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	_SDL_GameControllerAddMappingsFromRW
	addl	$1, %eax
	je	L939
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$4, %eax
	jg	L1482
L941:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%ecx
	movb	$1, __ZL22gameControllerDBLoaded
	jmp	L934
L1463:
	cmpb	$0, __ZL6linked.lto_priv.0+1
	jne	L928
	cmpb	$13, __ZL6linked.lto_priv.0+2
	jbe	L929
L928:
	xorl	%ebx, %ebx
	movl	%ebx, _joystick+16
	xorl	%ebx, %ebx
L931:
	movl	%ebx, 4(%esp)
	movl	__ZL10controller.lto_priv.0, %eax
	addl	$1, %ebx
	movl	%eax, (%esp)
	call	_SDL_GameControllerHasAxis
	testl	%eax, %eax
	je	L930
	movl	%ebx, _joystick+16
L930:
	cmpl	$6, %ebx
	jne	L931
	xorl	%ecx, %ecx
	movl	-184(%ebp), %esi
	movl	%ecx, _joystick+32
	movl	%ecx, _joystick+24
L933:
	movl	%esi, 4(%esp)
	movl	__ZL10controller.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_GameControllerHasButton
	movl	%esi, %ecx
	addl	$1, %esi
	testl	%eax, %eax
	je	L932
	movl	$1, %eax
	movl	%esi, _joystick+24
	sall	%cl, %eax
	orl	%eax, _joystick+32
L932:
	cmpl	$21, %esi
	jne	L933
	jmp	L929
L1462:
	movl	%ebx, 16(%esp)
	movl	$LC84, 12(%esp)
	movl	$1027, 8(%esp)
	movl	$LC80, 4(%esp)
	movl	$5, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L927
L1482:
	movl	$LC88, 12(%esp)
	movl	$967, 8(%esp)
	movl	$LC80, 4(%esp)
	movl	$5, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L941
L939:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1483
L940:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%ebx
	jmp	L934
L1481:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%esi
L1387:
	movl	%edi, %eax
	call	_kclose
	jmp	L934
L1480:
	movl	-184(%ebp), %eax
	call	__Z13handle_memerri
L1483:
	call	_SDL_GetError
	movl	$LC87, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$957, 8(%esp)
	movl	$LC80, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L940
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	_app_main.cold;	.scl	3;	.type	32;	.endef
_app_main.cold:
LFSB56:
L1341:
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	.cfi_escape 0x10,0x5,0x2,0x75,0
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_offset 7, -8
	movl	-208(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt20__throw_system_errori
	.cfi_endproc
LFE56:
	.text
	.section	.text.unlikely,"x"
LCOLDE128:
	.text
LHOTE128:
	.p2align 4
	.globl	_spriteoncfz
	.def	_spriteoncfz;	.scl	2;	.type	32;	.endef
_spriteoncfz:
LFB161:
	.cfi_startproc
	subl	$60, %esp
	.cfi_def_cfa_offset 64
	movl	_sprite, %eax
	movl	%ebx, 44(%esp)
	.cfi_offset 3, -20
	imull	$44, 64(%esp), %ebx
	movl	%esi, 48(%esp)
	.cfi_offset 6, -16
	movl	68(%esp), %esi
	movl	%edi, 52(%esp)
	.cfi_offset 7, -12
	movl	72(%esp), %edi
	addl	%ebx, %eax
	movl	%esi, 12(%esp)
	movl	%edi, 16(%esp)
	movl	4(%eax), %edx
	movl	%edx, 8(%esp)
	movl	(%eax), %edx
	movl	%edx, 4(%esp)
	movswl	24(%eax), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	_sprite, %edx
	movzwl	12(%edx,%ebx), %eax
	andl	$48, %eax
	cmpw	$32, %ax
	je	L1484
	cmpw	$48, %ax
	je	L1502
	movswl	64(%esp), %eax
	imull	$44, %eax, %eax
	addl	%edx, %eax
	movswl	14(%eax), %edx
	movzwl	12(%eax), %ecx
	movswl	_tilesiz+2(,%edx,4), %ebx
	movzbl	21(%eax), %edx
	xorl	%eax, %eax
	imull	%edx, %ebx
	leal	0(,%ebx,4), %edx
	addl	%ebx, %ebx
	andw	$128, %cx
	cmovne	%ebx, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	testw	%cx, %cx
	cmovne	%ebx, %edx
	addl	%edx, (%esi)
	subl	%eax, (%edi)
L1484:
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
L1502:
	.cfi_restore_state
	movzwl	64(%esp), %eax
	movl	%ebp, 56(%esp)
	.cfi_offset 5, -8
	imull	$44, %eax, %eax
	addl	%edx, %eax
	movzwl	12(%eax), %edx
	notl	%edx
	andl	$48, %edx
	jne	L1494
	movswl	22(%eax), %eax
	movl	%eax, %ecx
	cltd
	movw	%ax, 38(%esp)
	imull	%eax, %ecx
	shldl	$12, %eax, %edx
	sall	$12, %eax
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	addl	$16777216, %ecx
L1487:
	call	@ksqrt@4
	movl	24(%esp), %edx
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	20(%esp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_tabledivide64.lto_priv.2
	movl	_sprite, %ecx
	movl	%eax, 32(%esp)
	addl	%ebx, %ecx
	movswl	14(%ecx), %eax
	movsbl	_picanm+2(%eax,%eax,4), %edx
	movswl	_tilesiz+2(,%eax,4), %ebp
	movl	%edx, %eax
	negl	%eax
	testb	$8, 12(%ecx)
	cmovne	%eax, %edx
	movl	%ebp, %eax
	shrl	$31, %eax
	addl	%ebp, %eax
	sarl	%eax
	addl	%eax, %edx
	movzbl	21(%ecx), %eax
	movl	%edx, 28(%esp)
	movl	%eax, 20(%esp)
	imull	%eax, %edx
	movl	32(%esp), %eax
/APP
 # 1020 "source/build/src/build.cpp" 1
	imull %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 40(%esp)
	movl	%ebp, %edx
	movl	32(%esp), %eax
	subl	28(%esp), %edx
	imull	20(%esp), %edx
/APP
 # 1021 "source/build/src/build.cpp" 1
	imull %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	negl	%eax
	movl	_sector, %ebp
	movl	%eax, 20(%esp)
	movswl	24(%ecx), %eax
	leal	(%eax,%eax,4), %eax
	leal	0(%ebp,%eax,8), %eax
	movswl	(%eax), %eax
	sall	$5, %eax
	addl	_wall, %eax
	movswl	8(%eax), %edx
	sall	$5, %edx
	addl	_wall, %edx
	movl	4(%edx), %ecx
	movl	(%edx), %edx
	subl	(%eax), %edx
	subl	4(%eax), %ecx
	movl	%edx, %eax
	movl	%ecx, %edx
	movl	%eax, %ecx
	call	@getangle@8
	movl	_sprite, %ecx
	movl	_sector, %ebp
	addl	$1536, %eax
	movl	(%esi), %edx
	andl	$2047, %eax
	addl	%ebx, %ecx
	movl	%eax, 28(%esp)
	movswl	24(%ecx), %eax
	leal	(%eax,%eax,4), %eax
	leal	0(%ebp,%eax,8), %eax
	movzwl	38(%esp), %ebp
	cmpw	%bp, 18(%eax)
	je	L1503
L1489:
	movl	20(%esp), %ecx
	movl	40(%esp), %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	addl	%eax, %edx
L1490:
	movl	%edx, (%esi)
	addl	_sprite, %ebx
	movswl	24(%ebx), %eax
	movl	_sector, %ecx
	movl	(%edi), %edx
	movzwl	38(%esp), %esi
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	cmpw	%si, 26(%eax)
	je	L1504
L1491:
	movl	20(%esp), %esi
	movl	40(%esp), %eax
	cmpl	%eax, %esi
	cmovle	%esi, %eax
	addl	%edx, %eax
	movl	%eax, (%edi)
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
L1494:
	.cfi_restore_state
	xorl	%eax, %eax
	movl	$0, 20(%esp)
	movl	$16777216, %ecx
	movl	$0, 24(%esp)
	movw	%ax, 38(%esp)
	jmp	L1487
	.p2align 4,,10
	.p2align 3
L1504:
	movzwl	28(%ebx), %eax
	andl	$2047, %eax
	cmpl	28(%esp), %eax
	jne	L1491
	subl	$2, %edx
	movl	%edx, (%edi)
	movl	56(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1484
	.p2align 4,,10
	.p2align 3
L1503:
	.cfi_restore_state
	movzwl	28(%ecx), %eax
	andl	$2047, %eax
	cmpl	28(%esp), %eax
	jne	L1489
	addl	$2, %edx
	jmp	L1490
	.cfi_endproc
LFE161:
	.p2align 4
	.globl	__ZL13mainloop_movev.lto_priv.0
	.def	__ZL13mainloop_movev.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL13mainloop_movev.lto_priv.0:
LFB164:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -12
	movl	__ZL6angvel.lto_priv.0, %ebx
	testl	%ebx, %ebx
	je	L1506
	movl	_qsetmode, %edx
	cmpl	$200, %edx
	je	L1507
	movzbl	_keystatus+29, %eax
	orb	_keystatus+157, %al
	je	L1507
	movl	_m32_2d3dmode, %ecx
	testl	%ecx, %ecx
	je	L1507
	movl	__ZL4svel.lto_priv.0, %ecx
	movl	__ZL3vel.lto_priv.0, %eax
	movl	%esi, 28(%esp)
	.cfi_offset 6, -8
	movl	%ecx, %esi
	orl	%eax, %esi
	movl	28(%esp), %esi
	.cfi_restore 6
	jne	L1515
L1505:
	movl	24(%esp), %ebx
	addl	$32, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1538:
	.cfi_restore_state
	movl	%eax, 16(%esp)
	movl	_pos+8, %eax
	movl	_horiz, %edx
	movl	$LC9, (%esp)
	movl	%eax, 12(%esp)
	movl	_pos+4, %eax
	movl	%edx, 20(%esp)
	movl	%eax, 8(%esp)
	movl	_pos, %eax
	movl	%eax, 4(%esp)
	call	_silentmessage
	.p2align 4
	.p2align 3
L1506:
	movl	__ZL3vel.lto_priv.0, %eax
	movl	__ZL4svel.lto_priv.0, %ecx
	movl	%eax, %ebx
	orl	%ecx, %ebx
	je	L1505
	cmpl	$200, _qsetmode
	jne	L1514
L1511:
	movzbl	_buildkeys+4, %edx
	movl	%esi, 28(%esp)
	.cfi_offset 6, -8
	xorl	%ebx, %ebx
	movzbl	_keystatus(%edx), %edx
	addl	$1, %edx
	imull	_synctics, %edx
	testl	%eax, %eax
	je	L1512
	imull	%edx, %eax
	movzwl	_ang, %esi
	movl	%eax, %ebx
	leal	512(%esi), %eax
	andl	$2047, %esi
	andl	$2047, %eax
	movswl	_sintable(%esi,%esi), %esi
	sarl	$3, %ebx
	movswl	_sintable(%eax,%eax), %eax
	imull	%ebx, %eax
	imull	%esi, %ebx
L1512:
	testl	%ecx, %ecx
	je	L1513
	movzwl	_ang, %esi
	imull	%ecx, %edx
	movl	%esi, %ecx
	andl	$2047, %ecx
	sarl	$3, %edx
	movswl	_sintable(%ecx,%ecx), %ecx
	imull	%edx, %ecx
	addl	%ecx, %eax
	leal	1536(%esi), %ecx
	andl	$2047, %ecx
	movswl	_sintable(%ecx,%ecx), %ecx
	imull	%ecx, %edx
	addl	%edx, %ebx
L1513:
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	%ebx, %edx
	movl	24(%esp), %ebx
	xorl	%ecx, %ecx
	addl	$32, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__ZL15move_and_updateiii
	.p2align 4,,10
	.p2align 3
L1507:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -12
	movzbl	_buildkeys+4, %eax
	movl	_synctics, %ecx
	movzbl	_keystatus(%eax), %eax
	sarl	%ecx
	imull	%ecx, %eax
	addl	_synctics, %eax
	imull	%ebx, %eax
	sarl	$4, %eax
	addw	_ang, %ax
	andl	$2047, %eax
	movw	%ax, _ang
	cmpl	$200, %edx
	je	L1538
	movl	__ZL3vel.lto_priv.0, %eax
	movl	__ZL4svel.lto_priv.0, %ecx
	movl	%eax, %ebx
	orl	%ecx, %ebx
	je	L1505
L1514:
	movzbl	_keystatus+29, %edx
	orb	_keystatus+157, %dl
	je	L1511
L1515:
	movl	_m32_2d3dmode, %edx
	testl	%edx, %edx
	jne	L1505
	jmp	L1511
	.cfi_endproc
LFE164:
	.section .rdata,"dr"
LC131:
	.ascii "Maphacks disabled\0"
LC132:
	.ascii "Couldn't insert sprite.\0"
	.text
	.p2align 4
	.globl	_editinput
	.def	_editinput;	.scl	2;	.type	32;	.endef
_editinput:
LFB165:
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
	addl	$-128, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movzwl	__ZL7bstatus, %eax
	movl	_mlook, %ebx
	movw	%ax, __ZL15oldmousebstatus.lto_priv.0
	call	_mouseReadButtons
	testw	$-49, %ax
	movw	%ax, __ZL7bstatus
	setne	%al
	movzbl	%al, %eax
	call	_editorMaybeLockMouse
	movl	_osdvisible, %eax
	testl	%eax, %eax
	jne	L1751
	movl	_unrealedlook, %edi
	movl	_mlook, %ecx
	testl	%edi, %edi
	je	L1543
	movl	_mskip, %esi
	testl	%esi, %esi
	jne	L1543
	movzwl	__ZL7bstatus, %eax
	andl	$7, %eax
	testl	%ecx, %ecx
	jne	L1542
	cmpw	$2, %ax
	je	L1544
L1542:
	cmpw	$1, %ax
	je	L1544
	.p2align 4
	.p2align 3
L1543:
	cmpb	$0, _g_mouseLockedToWindow
	jne	L1758
L1545:
	movl	_g_mousePos, %eax
	movl	_g_mousePos+4, %edx
	movl	$0, _g_mousePos
	movl	$0, _g_mousePos+4
	sall	$16, %eax
	sall	$16, %edx
L1548:
	addl	__ZL10mousexsurp.lto_priv.0, %eax
	addl	__ZL10mouseysurp.lto_priv.0, %edx
	movl	%eax, __ZL5mousx
	fldl	_msens
	movl	%edx, __ZL5mousy
	testl	%ecx, %ecx
	jne	L1759
	fnstcw	82(%esp)
	flds	LC96
	movl	%eax, (%esp)
	movzwl	82(%esp), %edx
	fdivp	%st, %st(1)
	orb	$12, %dh
	movw	%dx, 80(%esp)
	fldcw	80(%esp)
	fistpl	4(%esp)
	fldcw	82(%esp)
	call	_ldiv
	fldl	LC133
	fdivl	_msens
	movl	%eax, __ZL5mousx
	movl	%edx, __ZL10mousexsurp.lto_priv.0
L1753:
	fnstcw	82(%esp)
	movzwl	82(%esp), %eax
	orb	$12, %ah
	movw	%ax, 80(%esp)
	fldcw	80(%esp)
	fistpl	4(%esp)
	fldcw	82(%esp)
	movl	__ZL5mousy, %eax
	movl	%eax, (%esp)
	call	_ldiv
	movl	%eax, __ZL5mousy
	movl	%eax, %esi
	movl	%edx, __ZL10mouseysurp.lto_priv.0
	cmpl	$3, _mlook
	jne	L1551
	movl	%ebx, _mlook
L1551:
	movl	_unrealedlook, %eax
	testl	%eax, %eax
	je	L1552
	movl	_mskip, %edx
	testl	%edx, %edx
	jne	L1553
	movzwl	__ZL7bstatus, %edi
	movl	%edi, %ecx
	andl	$7, %ecx
	cmpw	$1, %cx
	je	L1760
	movl	_mlook, %edx
	cmpl	$2, %edx
	je	L1555
	testl	%edx, %edx
	je	L1761
	cmpl	$200, _qsetmode
	je	L1561
	cmpw	$2, %cx
	je	L1557
L1561:
	cmpw	$3, %cx
	je	L1558
	cmpw	$4, %cx
	jne	L1566
L1559:
	movl	_horiz, %eax
	movl	$128, %ecx
	movl	$2, _zmode
	leal	-100(%eax), %edx
	call	@getangle@8
	movzwl	_ang, %edx
	movl	_pk_uedaccel, %ecx
	movl	%eax, %esi
	leal	512(%eax), %eax
	andl	$2047, %eax
	movswl	_sintable(%esi,%esi), %esi
	movswl	_sintable(%eax,%eax), %edi
	leal	512(%edx), %eax
	andl	$2047, %edx
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %eax
	sarw	$6, %ax
	cwtl
	imull	__ZL5mousy, %eax
	imull	%edi, %eax
	sarl	$6, %eax
	sall	%cl, %eax
	negl	%eax
	movl	%eax, 76(%esp)
	movzwl	_sintable(%edx,%edx), %eax
	sarw	$6, %ax
	cwtl
	imull	__ZL5mousy, %eax
	imull	%edi, %eax
	movl	%eax, %edx
	movl	$10, %eax
	subl	%ecx, %eax
	sarl	$6, %edx
	sall	%cl, %edx
	movl	%eax, %ecx
	movl	76(%esp), %eax
	sarl	%cl, %esi
	negl	%edx
	movl	$2, %ecx
	imull	__ZL5mousy, %esi
	addl	%esi, _pos+8
	call	__ZL15move_and_updateiii
	.p2align 4
	.p2align 3
L1552:
	movl	_mskip, %eax
	testl	%eax, %eax
	jne	L1553
	movl	_mlook, %edx
	movl	_unrealedlook, %eax
	cmpl	$2, %edx
	je	L1567
	testl	%edx, %edx
	jne	L1566
	testl	%eax, %eax
	jne	L1762
L1563:
	movl	_searchx, %ecx
	movl	_searchy, %edx
	movl	%ecx, _osearchx
	addl	__ZL5mousx, %ecx
	movl	%edx, _osearchy
	addl	__ZL5mousy, %edx
	movl	%ecx, _searchx
	movl	%edx, _searchy
	cmpl	$2, %eax
	jne	L1583
	.p2align 4
	.p2align 3
L1755:
	movl	_searchx, %ecx
	movl	_searchy, %eax
L1584:
	movl	_xdim, %edi
	movl	%ebx, _mlook
	leal	-13(%edi), %edx
	cmpl	%ecx, %edx
	jge	L1587
	movl	%edx, _searchx
	movl	%edx, %ecx
L1587:
	cmpl	$11, %ecx
	jg	L1588
	movl	$12, _searchx
L1588:
	movl	_ydim, %edi
	leal	-13(%edi), %edx
	cmpl	%eax, %edx
	jge	L1589
	movl	%edx, _searchy
	movl	%edx, %eax
L1589:
	cmpl	$11, %eax
	jg	L1590
	movl	$12, _searchy
L1590:
	cmpb	$0, _keystatus+67
	je	L1591
	movl	__ZL3mhk.lto_priv.0, %eax
	testl	%eax, %eax
	jne	L1763
	movl	$1, __ZL3mhk.lto_priv.0
	movl	$1, %eax
	call	__ZL7loadmhki.part.0.lto_priv.0
L1593:
	movb	$0, _keystatus+67
L1591:
	call	__ZL13mainloop_movev.lto_priv.0
	leal	84(%esp), %eax
	movl	$65537, 28(%esp)
	movl	%eax, 20(%esp)
	leal	92(%esp), %eax
	movl	%eax, 16(%esp)
	leal	88(%esp), %eax
	movl	%eax, 12(%esp)
	leal	96(%esp), %eax
	movl	$128, 24(%esp)
	movl	%eax, 8(%esp)
	movswl	_cursectnum, %eax
	movl	$_pos, (%esp)
	movl	%eax, 4(%esp)
	call	_getzrange
	movl	_zmode, %ebx
	movzbl	_buildkeys+8, %edi
	movl	_pos+8, %esi
	movzbl	_buildkeys+9, %ecx
	movzbl	_keystatus(%edi), %eax
	movl	96(%esp), %edx
	movl	%ebx, 68(%esp)
	movb	%al, 72(%esp)
	movl	92(%esp), %eax
	movl	%eax, 76(%esp)
	testl	%ebx, %ebx
	jne	L1594
	movl	_kensplayerheight, %edi
	leal	(%eax,%edx), %ebx
	movzbl	_keystatus(%ecx), %ecx
	sarl	%ebx
	sall	$8, %edi
	subl	%edi, %eax
	leal	4095(%edx), %edi
	cmpl	%edi, %eax
	cmovle	%ebx, %eax
	cmpb	$0, 72(%esp)
	je	L1596
	movzbl	_buildkeys+4, %edi
	leal	-4096(%eax), %ebx
	cmpb	$0, _keystatus(%edi)
	je	L1597
	subl	$10240, %eax
	testb	%cl, %cl
	jne	L1598
	.p2align 4
	.p2align 3
L1599:
	cmpl	%eax, %esi
	je	L1601
	jl	L1602
	subl	%esi, %eax
	sarl	$3, %eax
L1603:
	movl	76(%esp), %edi
	movl	%eax, __ZL4hvel
	addl	%esi, %eax
	leal	-1023(%edi), %ecx
	cmpl	%ecx, %eax
	jge	L1604
	movl	%eax, _pos+8
L1605:
	leal	1023(%edx), %ecx
	cmpl	%eax, %ecx
	jl	L1601
	leal	1024(%edx), %eax
	movl	$0, __ZL4hvel
	movl	%eax, _pos+8
L1601:
	movzwl	_cursectnum, %ebx
	movl	$_cursectnum, 12(%esp)
	movl	%eax, 8(%esp)
	movl	_pos+4, %eax
	movl	%eax, 4(%esp)
	movl	_pos, %eax
	movl	%eax, (%esp)
	call	_updatesectorz
	cmpw	$0, _cursectnum
	js	L1628
L1756:
	movl	_pos+8, %eax
L1627:
	cmpl	%eax, %esi
	je	L1629
	cmpl	$200, _qsetmode
	je	L1764
L1629:
	movl	$2, %eax
	movw	%ax, _searchit
	cmpw	$0, _searchstat
	js	L1630
	testb	$7, __ZL7bstatus
	jne	L1631
	cmpb	$0, _keystatus+57
	je	L1632
L1631:
	xorl	%edi, %edi
	movw	%di, _searchit
L1632:
	cmpb	$0, _keystatus+31
	je	L1633
	movl	_searchx, %ebx
	movl	_searchy, %edi
	movl	_xdim, %edx
	movl	_ydim, %eax
	movl	%ebx, 68(%esp)
	movl	%edi, 64(%esp)
	movl	%edx, 56(%esp)
	movl	%eax, 60(%esp)
	cmpl	$200, _qsetmode
	je	L1634
	movl	_m32_2d3dmode, %esi
	testl	%esi, %esi
	je	L1634
	movswl	_cursectnum, %eax
	cmpl	$4095, %eax
	jbe	L1765
	.p2align 4
	.p2align 3
L1634:
	movl	_yxaspect, %eax
	movl	_r_usenewaspect, %ecx
	movl	%eax, 40(%esp)
	movl	_viewingrange, %eax
	movl	%eax, 36(%esp)
	testl	%ecx, %ecx
	jne	L1766
L1635:
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	$1073741824, (%esp)
	movl	$0, 4(%esp)
	call	_tabledivide64.lto_priv.2
	movl	_xdim, %edx
	movl	%eax, 72(%esp)
	sarl	%edx
	movl	%edx, %esi
	movl	%edx, 8(%esp)
	sarl	$31, %esi
	movl	%esi, 12(%esp)
	movl	_searchx, %esi
	subl	%edx, %esi
	movl	%esi, %eax
	cltd
	sall	$14, %eax
	shldl	$14, %esi, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.2
	movl	$320, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 76(%esp)
	movl	_xdim, %eax
	imull	_yxaspect
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.2
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	_ydim, %edx
	movl	_searchy, %edi
	sarl	%edx
	subl	%edx, %edi
	movl	%edi, %eax
	movl	%edi, %ebx
	cltd
	sall	$27, %ebx
	movl	%edx, %esi
	movl	%ebx, (%esp)
	shldl	$27, %edi, %esi
	movl	%esi, 4(%esp)
	call	_tabledivide64.lto_priv.2
	movl	%eax, 48(%esp)
	movl	_viewingrange, %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	$100, %eax
	subl	_horiz, %eax
	cltd
	movl	%eax, %ebx
	movl	%edx, %esi
	sall	$27, %ebx
	shldl	$27, %eax, %esi
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	call	_tabledivide64.lto_priv.2
	movl	76(%esp), %esi
	movl	%eax, 44(%esp)
	movzwl	_ang, %eax
	negl	%esi
	leal	512(%eax), %edx
	andl	$2047, %eax
	andl	$2047, %edx
	movswl	_sintable(%eax,%eax), %edi
	movl	72(%esp), %eax
	movswl	_sintable(%edx,%edx), %ecx
	movl	%ecx, %edx
/APP
 # 1408 "source/build/include/build.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 52(%esp)
	movl	72(%esp), %esi
	movl	%ecx, %edx
	movl	76(%esp), %eax
/APP
 # 1408 "source/build/include/build.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_r_usenewaspect, %edx
	testl	%edx, %edx
	je	L1636
	movl	$0, _newaspect_enable
	movl	40(%esp), %esi
	movl	%esi, _yxaspect
	movl	36(%esp), %esi
	movl	%esi, _viewingrange
L1636:
	cmpl	$3, _rendmode
	je	L1767
	xorl	%edx, %edx
	movl	%eax, 12(%esp)
	movl	52(%esp), %eax
	movw	%dx, 124(%esp)
	leal	108(%esp), %edx
	movl	%edx, 20(%esp)
	movl	44(%esp), %edx
	addl	48(%esp), %edx
	movl	$16777280, 24(%esp)
	movl	%edx, 16(%esp)
	movl	%eax, 8(%esp)
	movswl	_cursectnum, %eax
	movl	$_pos, (%esp)
	movl	%eax, 4(%esp)
	movl	$0, 116(%esp)
	call	_hitscan
	movl	116(%esp), %esi
	movzwl	124(%esp), %edi
L1638:
	testw	%di, %di
	js	L1639
	movl	_gridlock, %eax
	movl	108(%esp), %edx
	movl	112(%esp), %ebx
	testl	%eax, %eax
	je	L1640
	movl	_grid, %ecx
	testl	%ecx, %ecx
	jle	L1640
	testw	$-5, _searchstat
	jne	L1641
	andl	$-1024, %esi
L1640:
	movl	%ebx, %ecx
	movswl	%di, %eax
	call	__ZL20insert_sprite_commoniii.lto_priv.0
	movl	%eax, %ebx
	cmpl	$-1, %eax
	je	L1768
	leal	100(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	leal	104(%esp), %eax
	movl	%eax, 4(%esp)
	call	_spriteoncfz
	movl	104(%esp), %eax
	movl	100(%esp), %ecx
	movl	$-1171354717, %edx
	cmpl	%eax, %esi
	cmovge	%esi, %eax
	cmpl	%esi, %ecx
	cmovle	%ecx, %eax
	movl	_sprite, %ecx
	movl	%eax, 72(%esp)
	imull	$44, %ebx, %eax
	movl	%ecx, 76(%esp)
	addl	%eax, %ecx
	addl	$8, %eax
	mull	%edx
	movl	72(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, 8(%ecx)
	movzwl	_searchstat, %eax
	testw	$-5, %ax
	jne	L1769
L1644:
	leal	12(%ecx), %eax
	movl	$-1171354717, %edx
	subl	76(%esp), %eax
	movl	%esi, 116(%esp)
	mull	%edx
	movl	%ebx, %eax
	movw	%di, 124(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-49, 12(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	leal	108(%esp), %edx
	orw	$80, 12(%ecx)
	call	__ZL25correct_ornamented_spriteiRK9hitdata_t.lto_priv.0
L1646:
	movl	%ebx, %eax
	movl	$1, %esi
	call	_correct_sprite_yoffset
	movl	%ebx, %edx
	movl	$3, %eax
	movw	%si, _asksave
	call	__Z10VM_OnEventii
L1639:
	movl	56(%esp), %eax
	movb	$0, _keystatus+31
	movl	%eax, _xdim
	movl	60(%esp), %eax
	movl	%eax, _ydim
	movl	68(%esp), %eax
	movl	%eax, _searchx
	movl	64(%esp), %eax
	movl	%eax, _searchy
L1633:
	movzbl	_keystatus+63, %eax
	orb	_keystatus+64, %al
	je	L1647
	movzwl	_searchstat, %eax
	cmpw	$3, %ax
	je	L1648
	jg	L1649
	testw	%ax, %ax
	je	L1650
	subl	$1, %eax
	cmpw	$1, %ax
	ja	L1651
	cmpl	$200, _qsetmode
	je	L1651
	call	_ExtShowSectorData.part.0
L1651:
	xorl	%ecx, %ecx
	movw	%cx, _keystatus+63
L1647:
	movzbl	_keystatus+65, %eax
	orb	_keystatus+66, %al
	je	L1630
	movzwl	_searchstat, %eax
	cmpw	$2, %ax
	jg	L1655
	testw	%ax, %ax
	jle	L1657
	call	_ExtEditSectorData.isra.0
L1657:
	xorl	%edx, %edx
	movw	%dx, _keystatus+65
L1630:
	movzbl	_buildkeys+14, %ecx
	cmpb	$0, _keystatus(%ecx)
	je	L1751
	cmpl	$200, _qsetmode
	je	L1660
	movl	_m32_2d3dmode, %eax
	testl	%eax, %eax
	je	L1660
	movswl	_cursectnum, %eax
	cmpl	$4095, %eax
	ja	L1660
	movl	_m32_2d3d, %esi
	movl	_searchx, %ebx
	cmpl	%ebx, %esi
	jge	L1660
	movl	_xdim, %eax
	movl	_m32_2d3dsize, %edi
	cltd
	idivl	%edi
	addl	%esi, %eax
	cmpl	%eax, %ebx
	jge	L1660
	movl	_m32_2d3d+4, %esi
	movl	_searchy, %ebx
	cmpl	%ebx, %esi
	jge	L1660
	movl	_ydim, %eax
	cltd
	idivl	%edi
	addl	%esi, %eax
	cmpl	%eax, %ebx
	jge	L1660
L1751:
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
L1759:
	.cfi_restore_state
	fnstcw	82(%esp)
	fmuls	LC129
	flds	LC96
	movl	%eax, (%esp)
	movzwl	82(%esp), %edx
	fdivp	%st, %st(1)
	orb	$12, %dh
	movw	%dx, 80(%esp)
	fldcw	80(%esp)
	fistpl	4(%esp)
	fldcw	82(%esp)
	call	_ldiv
	flds	LC130
	fmull	_msens
	fldl	LC133
	movl	%eax, __ZL5mousx
	movl	%edx, __ZL10mousexsurp.lto_priv.0
	fdivp	%st, %st(1)
	jmp	L1753
	.p2align 4,,10
	.p2align 3
L1758:
	cmpb	$0, _g_mouseEnabled
	je	L1546
	cmpb	$0, _g_mouseGrabbed
	je	L1546
	cmpb	$0, _appactive
	jne	L1545
L1546:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	L1548
	.p2align 4,,10
	.p2align 3
L1553:
	movl	$0, _mskip
	movl	_mlook, %eax
L1569:
	cmpl	$2, %eax
	je	L1755
L1583:
	testl	%eax, %eax
	jne	L1576
L1574:
	cmpw	$0, __ZL15oldmousebstatus.lto_priv.0
	je	L1585
L1770:
	movl	_searchy, %eax
	movl	_searchx, %ecx
	cmpb	$0, _g_mouseLockedToWindow
	jne	L1584
	movl	_upscalefactor, %edx
	imull	%edx, %ecx
	imull	%eax, %edx
	movl	%ecx, _g_mouseAbs
	movl	%edx, _g_mouseAbs+4
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$0, (%esp)
	call	_SDL_WarpMouseInWindow
	call	_handleevents
	xorl	%eax, %eax
	call	_mouseLockToWindow
	jmp	L1755
	.p2align 4,,10
	.p2align 3
L1579:
	movl	_xdim, %edx
	movl	_ydim, %eax
	movl	72(%esp), %esi
	sarl	%edx
	sarl	%eax
	movl	%edx, _searchx
	subl	76(%esp), %edx
	movl	%eax, _searchy
	subl	%esi, %eax
	orl	76(%esp), %esi
	movl	%edx, _osearchx
	movl	%eax, _osearchy
	jne	L1580
	.p2align 4
	.p2align 3
L1576:
	cmpl	$200, _qsetmode
	je	L1755
	cmpw	$0, __ZL15oldmousebstatus.lto_priv.0
	je	L1585
	jmp	L1770
	.p2align 4,,10
	.p2align 3
L1594:
	cmpb	$0, 72(%esp)
	je	L1606
	movzbl	_keystatus+56, %eax
	orb	_keystatus+184, %al
	je	L1607
	movzbl	_buildkeys+4, %eax
	movl	$-100, %ebx
	movzbl	_keystatus(%eax), %eax
	addl	$1, %eax
	imull	_synctics, %eax
	leal	(%eax,%eax), %edi
	movl	_horiz, %eax
	subl	%edi, %eax
	cmpl	%ebx, %eax
	cmovl	%ebx, %eax
	movl	%eax, _horiz
	cmpb	$0, _keystatus(%ecx)
	jne	L1608
L1609:
	movl	%esi, %eax
	cmpl	$1, 68(%esp)
	je	L1771
L1618:
	movl	76(%esp), %edi
	leal	1023(%edx), %ecx
	leal	1024(%edx), %ebx
	movl	%ecx, 72(%esp)
	movl	76(%esp), %ecx
	subl	$1024, %edi
	cmpl	%eax, %edi
	cmovle	%edi, %eax
	cmpl	%ebx, %eax
	cmovl	%ebx, %eax
	addl	%ecx, %edx
	sarl	%edx
	cmpl	%eax, 72(%esp)
	cmovge	%edx, %eax
	cmpl	%eax, %esi
	je	L1621
	movl	_synctics, %edx
	movzbl	_buildkeys+4, %ecx
	leal	(%edx,%edx,2), %edx
	movzbl	_keystatus(%ecx), %ecx
	sall	$6, %edx
	sall	%cl, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmpl	%eax, %esi
	cmovge	%ecx, %edx
	movl	%edx, __ZL4hvel
	leal	(%esi,%edx), %eax
	movl	76(%esp), %edx
	subl	$1023, %edx
	cmpl	%edx, %eax
	jge	L1623
	movl	%eax, _pos+8
L1624:
	cmpl	%eax, 72(%esp)
	jl	L1625
	movl	%ebx, _pos+8
	movl	%ebx, %eax
	movl	$0, __ZL4hvel
L1625:
	movzwl	_cursectnum, %ebx
	movl	$_cursectnum, 12(%esp)
	movl	%eax, 8(%esp)
	movl	_pos+4, %eax
	movl	%eax, 4(%esp)
	movl	_pos, %eax
	movl	%eax, (%esp)
	call	_updatesectorz
	cmpw	$0, _cursectnum
	jns	L1756
	cmpl	$2, 68(%esp)
	jne	L1628
	movw	%bx, _cursectnum
	movl	_pos+8, %eax
	jmp	L1627
	.p2align 4,,10
	.p2align 3
L1596:
	testb	%cl, %cl
	je	L1599
	movzbl	_buildkeys+4, %ecx
	cmpb	$0, _keystatus(%ecx)
	je	L1772
	addl	$6144, %eax
	jmp	L1599
	.p2align 4,,10
	.p2align 3
L1763:
	movl	$1048576, 8(%esp)
	movl	$0, 4(%esp)
	movl	_spriteext, %eax
	movl	%eax, (%esp)
	call	_memset
	movl	$166400, 8(%esp)
	movl	$0, 4(%esp)
	movl	_spritesmooth, %eax
	movl	%eax, (%esp)
	call	_memset
	call	_engineClearLightsFromMHK
	movl	$0, __ZL3mhk.lto_priv.0
	movl	$LC131, (%esp)
	call	_message
	jmp	L1593
	.p2align 4,,10
	.p2align 3
L1585:
	cmpb	$0, _g_mouseLockedToWindow
	jne	L1755
	movl	_g_mouseAbs, %eax
	movl	_upscalefactor, %esi
	cltd
	idivl	%esi
	movl	%eax, _searchx
	movl	%eax, %ecx
	movl	_g_mouseAbs+4, %eax
	cltd
	idivl	%esi
	movl	%eax, _searchy
	jmp	L1584
	.p2align 4,,10
	.p2align 3
L1606:
	cmpb	$0, _keystatus(%ecx)
	je	L1609
	movzbl	_keystatus+56, %eax
	orb	_keystatus+184, %al
	jne	L1662
	leal	2048(%esi), %eax
	cmpl	$1, 68(%esp)
	jne	L1618
L1616:
	movl	_zlock, %ebx
	testl	%ebx, %ebx
	jle	L1614
	subl	$1024, %ebx
	movb	$0, _keystatus(%ecx)
	movl	%ebx, _zlock
	jmp	L1614
	.p2align 4,,10
	.p2align 3
L1567:
	testl	%eax, %eax
	jne	L1773
L1562:
	movl	__ZL5mousx, %eax
	movl	__ZL5mousy, %esi
	movl	%eax, 76(%esp)
	movl	_horiz, %eax
	movzwl	76(%esp), %ecx
	addw	_ang, %cx
	movl	%esi, 72(%esp)
	andw	$2047, %cx
	subl	%esi, %eax
	movl	%eax, _horiz
	movw	%cx, 68(%esp)
	movw	%cx, _ang
	cmpl	$299, %eax
	jle	L1577
	movl	$299, _horiz
L1578:
	cmpl	$1, %edx
	je	L1579
	movl	_searchx, %ecx
	movl	_searchy, %eax
	movl	72(%esp), %edi
	movl	%ecx, %esi
	subl	76(%esp), %esi
	movl	%esi, _osearchx
	movl	%eax, %esi
	subl	%edi, %esi
	movl	%esi, _osearchy
	movl	%edi, %esi
	orl	76(%esp), %esi
	je	L1774
L1580:
	movl	_horiz, %eax
	movl	%eax, 20(%esp)
	movzwl	68(%esp), %eax
	movl	%eax, 16(%esp)
	movl	_pos+8, %eax
	movl	%eax, 12(%esp)
	movl	_pos+4, %eax
	movl	%eax, 8(%esp)
	movl	_pos, %eax
	movl	$LC9, (%esp)
	movl	%eax, 4(%esp)
	call	_silentmessage
	movl	_mlook, %eax
	jmp	L1569
	.p2align 4,,10
	.p2align 3
L1544:
	movl	$3, _mlook
	movl	$3, %ecx
	jmp	L1543
	.p2align 4,,10
	.p2align 3
L1610:
	movl	_zlock, %eax
	movb	$0, _keystatus(%edi)
	leal	1024(%eax), %ebx
	movl	%ebx, _zlock
	cmpb	$0, _keystatus(%ecx)
	je	L1614
	movzbl	_keystatus+56, %eax
	orb	_keystatus+184, %al
	je	L1616
	.p2align 4
	.p2align 3
L1662:
	movzbl	_buildkeys+4, %eax
	movzbl	_keystatus(%eax), %eax
	addl	$1, %eax
	imull	_synctics, %eax
	leal	(%eax,%eax), %edi
	movl	_horiz, %eax
L1608:
	addl	%eax, %edi
	movl	$300, %eax
	cmpl	%eax, %edi
	cmovg	%eax, %edi
	movl	%edi, _horiz
	jmp	L1609
	.p2align 4,,10
	.p2align 3
L1597:
	testb	%cl, %cl
	jne	L1661
L1598:
	movl	%ebx, %eax
	jmp	L1599
	.p2align 4,,10
	.p2align 3
L1660:
	movb	$0, _keystatus(%ecx)
	call	__ZL14overheadeditorv.lto_priv.0
	movzbl	_buildkeys+14, %eax
	movb	$0, _keystatus(%eax)
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
L1628:
	.cfi_restore_state
	movl	%esi, _pos+8
	movw	%bx, _cursectnum
	jmp	L1629
	.p2align 4,,10
	.p2align 3
L1655:
	cmpw	$3, %ax
	jne	L1657
	movswl	_searchwall, %eax
	call	_ExtEditSpriteData
	jmp	L1657
	.p2align 4,,10
	.p2align 3
L1771:
	movl	_zlock, %ebx
L1614:
	movl	76(%esp), %edi
	leal	1023(%edx), %ecx
	movl	%edi, %eax
	addl	%edi, %edx
	subl	%ebx, %eax
	sarl	%edx
	cmpl	%ecx, %eax
	cmovle	%edx, %eax
	movl	%eax, _pos+8
L1621:
	movl	$0, __ZL4hvel
	jmp	L1625
	.p2align 4,,10
	.p2align 3
L1623:
	movl	%edi, _pos+8
	movl	%edi, %eax
	movl	$0, __ZL4hvel
	jmp	L1624
	.p2align 4,,10
	.p2align 3
L1566:
	cmpl	$200, _qsetmode
	je	L1567
	testl	%eax, %eax
	jne	L1775
L1754:
	movl	%edx, %eax
	jmp	L1563
	.p2align 4,,10
	.p2align 3
L1604:
	movl	$0, __ZL4hvel
	movl	76(%esp), %eax
	subl	$1024, %eax
	movl	%eax, _pos+8
	jmp	L1605
	.p2align 4,,10
	.p2align 3
L1602:
	movl	__ZL4hvel, %eax
	addl	$64, %eax
	jmp	L1603
	.p2align 4,,10
	.p2align 3
L1764:
	movl	_horiz, %edx
	movl	%edx, 20(%esp)
	movswl	_ang, %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	_pos+4, %eax
	movl	%eax, 8(%esp)
	movl	_pos, %eax
	movl	$LC9, (%esp)
	movl	%eax, 4(%esp)
	call	_silentmessage
	jmp	L1629
	.p2align 4,,10
	.p2align 3
L1607:
	cmpl	$1, 68(%esp)
	je	L1610
	movl	%esi, %eax
	cmpb	$0, _keystatus(%ecx)
	jne	L1618
	leal	-2048(%esi), %eax
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1772:
	movl	%eax, %ebx
L1661:
	leal	3072(%ebx), %eax
	jmp	L1599
	.p2align 4,,10
	.p2align 3
L1648:
	cmpl	$200, _qsetmode
	je	L1651
	movzwl	_searchwall, %edx
	xorl	%eax, %eax
L1653:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1653
	movswl	%dx, %eax
	call	__Z11ContextHelps
	jmp	L1651
	.p2align 4,,10
	.p2align 3
L1649:
	cmpw	$4, %ax
	jne	L1651
L1650:
	movswl	_searchwall, %eax
	call	_ExtShowWallData
	jmp	L1651
	.p2align 4,,10
	.p2align 3
L1767:
	movl	_polymost_hitdata, %eax
	movl	_polymost_hitdata+12, %edx
	movzwl	_polymost_hitdata+16, %edi
	movl	%eax, 108(%esp)
	movl	_polymost_hitdata+4, %eax
	movl	%edx, 120(%esp)
	movl	_polymost_hitdata+16, %edx
	movl	%eax, 112(%esp)
	movl	_polymost_hitdata+8, %eax
	movl	%edx, 124(%esp)
	movl	%eax, 116(%esp)
	movl	%eax, %esi
	jmp	L1638
	.p2align 4,,10
	.p2align 3
L1766:
	movl	$1, _newaspect_enable
	call	_videoSetCorrectedAspect
	movl	_viewingrange, %eax
	jmp	L1635
	.p2align 4,,10
	.p2align 3
L1577:
	cmpl	$-99, %eax
	jge	L1578
	movl	$-99, _horiz
	jmp	L1578
	.p2align 4,,10
	.p2align 3
L1761:
	cmpw	$2, %cx
	je	L1557
	cmpw	$3, %cx
	je	L1558
	cmpw	$4, %cx
	je	L1559
L1560:
	andl	$7, %edi
	jne	L1574
	xorl	%eax, %eax
	jmp	L1563
	.p2align 4,,10
	.p2align 3
L1765:
	movl	_m32_2d3d, %ecx
	cmpl	%ecx, %ebx
	jle	L1634
	movl	%edx, %eax
	movl	_m32_2d3dsize, %edi
	cltd
	idivl	%edi
	movl	%eax, %esi
	leal	(%ecx,%eax), %eax
	cmpl	%eax, %ebx
	jge	L1634
	movl	_m32_2d3d+4, %ebx
	cmpl	%ebx, 64(%esp)
	jle	L1634
	movl	60(%esp), %eax
	cltd
	idivl	%edi
	movl	64(%esp), %edi
	leal	(%ebx,%eax), %edx
	cmpl	%edx, %edi
	jge	L1634
	movl	%eax, _ydim
	movl	68(%esp), %eax
	movl	%esi, _xdim
	subl	%ecx, %eax
	movl	%eax, _searchx
	movl	%edi, %eax
	subl	%ebx, %eax
	movl	%eax, _searchy
	jmp	L1634
	.p2align 4,,10
	.p2align 3
L1775:
	testb	$7, __ZL7bstatus
	jne	L1576
	movl	%edx, %eax
	jmp	L1563
	.p2align 4,,10
	.p2align 3
L1555:
	cmpw	$3, %cx
	je	L1558
	cmpw	$4, %cx
	je	L1559
	testw	$5, %di
	je	L1562
	testw	%cx, %cx
	jne	L1755
L1665:
	movl	$2, %eax
	jmp	L1563
	.p2align 4,,10
	.p2align 3
L1769:
	cmpw	$3, %ax
	je	L1776
L1645:
	movswl	14(%ecx), %eax
	leal	12(%ecx), %edx
	cmpw	$31, _tilesiz+2(,%eax,4)
	setg	%al
	subl	76(%esp), %edx
	movl	%eax, %esi
	movl	$-1171354717, %eax
	mull	%edx
	movl	%esi, %eax
	movzbl	%al, %esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	%si, 12(%ecx)
	jmp	L1646
	.p2align 4,,10
	.p2align 3
L1760:
	movzwl	_ang, %eax
	addw	__ZL5mousx, %ax
	andl	$2047, %eax
	movl	_pk_uedaccel, %edi
	movswl	_sintable(%eax,%eax), %edx
	movw	%ax, _ang
	addl	$2560, %eax
	andl	$2047, %eax
	leal	3(%edi), %ecx
	movswl	_sintable(%eax,%eax), %eax
	imull	%esi, %edx
	imull	%esi, %eax
	sall	%cl, %edx
	negl	%edx
	sall	%cl, %eax
	xorl	%ecx, %ecx
	negl	%eax
	call	__ZL15move_and_updateiii
	jmp	L1552
	.p2align 4,,10
	.p2align 3
L1773:
	movzwl	__ZL7bstatus, %eax
	testb	$5, %al
	je	L1562
	testb	$7, %al
	je	L1754
	cmpl	$2, %edx
	jne	L1576
	jmp	L1755
	.p2align 4,,10
	.p2align 3
L1774:
	cmpl	$2, %edx
	je	L1584
	jmp	L1576
	.p2align 4,,10
	.p2align 3
L1768:
	movl	$LC132, (%esp)
	call	_message
	jmp	L1639
	.p2align 4,,10
	.p2align 3
L1762:
	movzwl	__ZL7bstatus, %edi
	jmp	L1560
	.p2align 4,,10
	.p2align 3
L1557:
	movl	$2, _mlook
	testw	$5, %di
	je	L1663
	andl	$7, %edi
	je	L1665
	jmp	L1755
	.p2align 4,,10
	.p2align 3
L1558:
	movzwl	_ang, %edx
	movl	__ZL5mousx, %edi
	movl	$2, _zmode
	movl	_pk_uedaccel, %ecx
	movl	%edx, %eax
	addl	$1536, %edx
	andl	$2047, %eax
	andl	$2047, %edx
	movswl	_sintable(%eax,%eax), %eax
	movswl	_sintable(%edx,%edx), %edx
	imull	%edi, %eax
	imull	%edi, %edx
	sall	%cl, %eax
	sall	%cl, %edx
	addl	$4, %ecx
	negl	%eax
	sall	%cl, %esi
	negl	%edx
	xorl	%ecx, %ecx
	addl	%esi, _pos+8
	call	__ZL15move_and_updateiii
	jmp	L1552
	.p2align 4,,10
	.p2align 3
L1776:
	movswl	_searchwall, %eax
	movl	76(%esp), %edx
	imull	$44, %eax, %eax
	movzwl	12(%edx,%eax), %eax
	andl	$48, %eax
	cmpw	$16, %ax
	jne	L1645
	jmp	L1644
	.p2align 4,,10
	.p2align 3
L1663:
	movl	$2, %edx
	jmp	L1562
L1641:
	movl	$1024, %eax
	sarl	%cl, %eax
	movl	%eax, 76(%esp)
	movl	$11, %eax
	subl	%ecx, %eax
	movl	%eax, %ecx
	movl	$-1, %eax
	sall	%cl, %eax
	movl	76(%esp), %ecx
	addl	%ecx, %edx
	addl	%ecx, %ebx
	andl	%eax, %edx
	andl	%eax, %ebx
	jmp	L1640
	.cfi_endproc
LFE165:
	.p2align 4
	.globl	_inside_editor_curpos
	.def	_inside_editor_curpos;	.scl	2;	.type	32;	.endef
_inside_editor_curpos:
LFB177:
	.cfi_startproc
	movl	_m32_sideview, %edx
	testl	%edx, %edx
	je	L1781
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	cwtl
	movl	_zoom, %ecx
	movl	_searchy, %edx
	movl	%eax, (%esp)
	movl	_searchx, %eax
	call	__ZL13inside_editorPK4vec3IiEiiiiis.part.0.constprop.0
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1781:
	movswl	%ax, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	_inside
	.cfi_endproc
LFE177:
	.p2align 4
	.globl	_drawsmallabel
	.def	_drawsmallabel;	.scl	2;	.type	32;	.endef
_drawsmallabel:
LFB180:
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
	movl	_zoom, %esi
	movl	%eax, 24(%esp)
	movl	72(%esp), %eax
	subl	_pos+4, %eax
	movl	%esi, 16(%esp)
	movl	%eax, 12(%esp)
	movl	68(%esp), %eax
	subl	_pos, %eax
	movb	%dl, 40(%esp)
	movl	%eax, 8(%esp)
	leal	72(%esp), %eax
	movl	%eax, 4(%esp)
	leal	68(%esp), %eax
	movl	%eax, (%esp)
	movb	%cl, 36(%esp)
	call	_editorGet2dScreenCoordinates
	movl	_m32_sideview, %eax
	movl	72(%esp), %ebp
	testl	%eax, %eax
	jne	L1788
L1783:
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	68(%esp), %ebx
	addl	_halfxdim16, %ebx
	leal	(%eax,%eax), %edx
	subl	%edx, %ebx
	movl	%esi, %edx
	leal	(%ebx,%eax,4), %edi
	leal	2(%edi), %ecx
	movl	%ecx, %eax
	subl	%ebx, %eax
/APP
 # 1723 "source/build/src/build.cpp" 1
	imull %edx; shrdl $8, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	negl	%edx
	cmpl	%ebx, %edx
	jge	L1782
	addl	_midydim16, %ebp
	leal	-4(%ebp), %esi
	movl	%esi, 28(%esp)
	movl	_xdim, %esi
	addl	%eax, %esi
	cmpl	%ecx, %esi
	jle	L1782
	movl	28(%esp), %esi
	cmpl	%esi, %edx
	jge	L1782
	leal	3(%ebp), %ecx
	addl	_ydim16, %eax
	movl	%ecx, 32(%esp)
	cmpl	%ecx, %eax
	jg	L1789
L1782:
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
L1788:
	.cfi_restore_state
	movl	_m32_sidecos, %edx
	movl	76(%esp), %eax
	subl	_pos+8, %eax
	imull	%esi, %edx
/APP
 # 672 "source/build/src/2d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	addl	%edx, %ebp
	jmp	L1783
	.p2align 4,,10
	.p2align 3
L1789:
	movl	24(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 16(%esp)
	movzbl	36(%esp), %eax
	movl	$1, 20(%esp)
	movl	%eax, 12(%esp)
	movzbl	40(%esp), %eax
	movl	%eax, 8(%esp)
	call	_printext16
	movzbl	64(%esp), %esi
	leal	-6(%ebp), %edx
	leal	-2(%ebx), %eax
	movl	%edx, (%esp)
	movl	%edi, %ecx
	movl	%esi, 4(%esp)
	movl	%eax, 24(%esp)
	call	_editorDraw2dLine
	leal	4(%ebp), %edx
	movl	%esi, 4(%esp)
	movl	24(%esp), %eax
	movl	%edx, (%esp)
	movl	%edi, %ecx
	call	_editorDraw2dLine
	leal	-5(%ebp), %edx
	movl	%esi, 4(%esp)
	leal	-3(%ebx), %eax
	movl	%edx, 40(%esp)
	movl	32(%esp), %edx
	movl	%eax, %ecx
	movl	%edx, (%esp)
	leal	-5(%ebp), %edx
	addl	$2, %ebp
	call	_editorDraw2dLine
	movl	32(%esp), %edx
	movl	%esi, 4(%esp)
	leal	1(%edi), %eax
	movl	%eax, %ecx
	movl	%edx, (%esp)
	movl	40(%esp), %edx
	call	_editorDraw2dLine
	movzbl	36(%esp), %esi
	leal	-1(%edi), %ecx
	leal	-1(%ebx), %eax
	movl	40(%esp), %edx
	movl	%ecx, 36(%esp)
	movl	%esi, 4(%esp)
	movl	%edx, (%esp)
	call	_editorDraw2dLine
	movl	32(%esp), %eax
	movl	%esi, 4(%esp)
	movl	36(%esp), %ecx
	movl	%eax, (%esp)
	movl	%eax, %edx
	leal	-1(%ebx), %eax
	call	_editorDraw2dLine
	movl	28(%esp), %ebx
	movl	24(%esp), %eax
	movl	%ebp, (%esp)
	movl	%esi, 4(%esp)
	movl	%eax, %ecx
	movl	%ebx, %edx
	call	_editorDraw2dLine
	movl	%esi, 4(%esp)
	movl	%edi, %ecx
	movl	%ebx, %edx
	movl	%ebp, (%esp)
	movl	%edi, %eax
	call	_editorDraw2dLine
	movl	%esi, 4(%esp)
	movl	32(%esp), %esi
	movl	%ebx, %edx
	movl	36(%esp), %ecx
	movl	36(%esp), %eax
	movl	%esi, (%esp)
	call	_editorDraw2dLine
	call	_videoBeginDrawing
	movl	_ydim16, %eax
	cmpl	%eax, 40(%esp)
	jnb	L1785
	movl	24(%esp), %ecx
	cmpl	%edi, %ecx
	movl	%ecx, %eax
	cmovb	%edi, %eax
	cmpl	_xdim, %eax
	jb	L1790
L1786:
	call	_videoEndDrawing
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
L1790:
	.cfi_restore_state
	movl	_bytesperline, %eax
	movl	40(%esp), %ebx
	imull	%ebx, %eax
	addl	%ecx, %eax
	movzbl	64(%esp), %ecx
	addl	_frameplace, %eax
	movb	%cl, (%eax)
	movl	_bytesperline, %eax
	imull	%ebx, %eax
	addl	%edi, %eax
	addl	_frameplace, %eax
	movb	%cl, (%eax)
	movl	_ydim16, %eax
	.p2align 4
	.p2align 3
L1785:
	movl	32(%esp), %ebx
	cmpl	%eax, %ebx
	jnb	L1786
	movl	24(%esp), %ecx
	cmpl	%edi, %ecx
	movl	%ecx, %eax
	cmovb	%edi, %eax
	cmpl	_xdim, %eax
	jnb	L1786
	movl	_bytesperline, %eax
	imull	%ebx, %eax
	addl	%ecx, %eax
	movzbl	64(%esp), %ecx
	addl	_frameplace, %eax
	movb	%cl, (%eax)
	movl	_bytesperline, %eax
	imull	%ebx, %eax
	addl	%edi, %eax
	addl	_frameplace, %eax
	movb	%cl, (%eax)
	jmp	L1786
	.cfi_endproc
LFE180:
	.p2align 4
	.globl	__ZL16mapinfofull_freeP13mapinfofull_t.lto_priv.0
	.def	__ZL16mapinfofull_freeP13mapinfofull_t.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL16mapinfofull_freeP13mapinfofull_t.lto_priv.0:
LFB182:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	16(%eax), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	cmpw	$0, 6(%ebx)
	jle	L1792
	movl	8(%ebx), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	movl	12(%ebx), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
L1792:
	movl	20(%ebx), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	cmpw	$0, 4(%ebx)
	jle	L1791
	movl	24(%ebx), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
L1791:
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE182:
	.p2align 4
	.globl	__ZL23restore_highlighted_mapP13mapinfofull_ti.lto_priv.0
	.def	__ZL23restore_highlighted_mapP13mapinfofull_ti.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL23restore_highlighted_mapP13mapinfofull_ti.lto_priv.0:
LFB183:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	%esi, 36(%esp)
	movl	%edi, 40(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	%ebp, 44(%esp)
	.cfi_offset 5, -8
	movswl	_numsectors, %ebp
	movswl	(%eax), %eax
	movl	%edx, 16(%esp)
	movw	%bp, 30(%esp)
	leal	(%eax,%ebp), %esi
	movl	%esi, 20(%esp)
	cmpl	$4096, %esi
	jg	L1796
	movswl	_numwalls, %ecx
	movswl	2(%edi), %edx
	leal	(%ecx,%edx), %esi
	movl	%esi, 24(%esp)
	cmpl	$16384, %esi
	jg	L1796
	movswl	6(%edi), %edx
	addl	_numyaxbunches, %edx
	cmpl	$256, %edx
	jg	L1796
	movswl	4(%edi), %edx
	addl	_Numsprites, %edx
	cmpl	$16384, %edx
	jg	L1796
	movl	16(%esp), %ecx
	xorl	%edx, %edx
	testl	%ecx, %ecx
	jne	L1835
L1795:
	movl	36(%esp), %esi
	movl	40(%esp), %edi
	movl	%edx, %eax
	movl	44(%esp), %ebp
	addl	$48, %esp
	.cfi_remember_state
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1835:
	.cfi_restore_state
	movl	_sector, %ecx
	leal	0(%ebp,%ebp,4), %edx
	movl	%ebx, 32(%esp)
	.cfi_offset 3, -20
	leal	(%eax,%eax,4), %eax
	sall	$3, %eax
	leal	(%ecx,%edx,8), %edx
	movl	16(%edi), %ecx
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_memcpy
	movswl	2(%edi), %edx
	movswl	_numwalls, %eax
	movl	20(%edi), %ecx
	sall	$5, %edx
	sall	$5, %eax
	addl	_wall, %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movswl	_numwalls, %esi
	movl	%esi, %ebx
	cmpl	%esi, 24(%esp)
	jle	L1799
	movl	%ebp, 12(%esp)
	.p2align 4
	.p2align 3
L1806:
	movl	%esi, %ebp
	movl	_wall, %ecx
	sall	$5, %ebp
	movl	%ebp, %edx
	leal	(%ecx,%ebp), %eax
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	addw	%bx, 8(%eax)
	cmpw	$0, 12(%eax)
	js	L1800
	leal	12(%eax), %edx
	subl	%ecx, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movzwl	_numsectors, %edx
	addw	%dx, 12(%eax)
	leal	10(%eax), %edx
	subl	%ecx, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	addw	%bx, 10(%eax)
L1800:
	xorl	%ebx, %ebx
	cmpw	$0, 6(%edi)
	jle	L1801
L1837:
	movswl	_numwalls, %edx
	movl	%esi, %eax
	subl	%edx, %eax
	movl	%edx, %ecx
	leal	(%ebx,%eax,2), %edx
	movl	12(%edi), %eax
	movzwl	(%eax,%edx,2), %eax
	addl	%eax, %ecx
	testw	%ax, %ax
	movl	$-1, %eax
	cmovs	%eax, %ecx
	cmpw	$0, _editstatus
	je	L1836
	movswl	%cx, %ecx
	movswl	%bx, %edx
	movswl	%si, %eax
	call	_yax_setnextwall.part.0
L1804:
	cmpl	$1, %ebx
	jne	L1822
	addl	$1, %esi
	cmpl	%esi, 24(%esp)
	je	L1833
	movzwl	_numwalls, %ebx
	jmp	L1806
	.p2align 4,,10
	.p2align 3
L1822:
	movl	16(%esp), %ebx
	cmpw	$0, 6(%edi)
	jg	L1837
L1801:
	movl	_wall, %edx
	movl	%ebp, %eax
	leal	10(%ebx), %ecx
	shrl	$5, %eax
	addl	%ebp, %edx
	addl	$1, _wallchanged(,%eax,4)
	movzwl	14(%edx), %eax
	btrl	%ecx, %eax
	movw	%ax, 14(%edx)
	jmp	L1804
	.p2align 4,,10
	.p2align 3
L1836:
	leal	0(,%esi,4), %eax
	movw	%cx, _yax_nextwall(%eax,%ebx,2)
	jmp	L1804
	.p2align 4,,10
	.p2align 3
L1833:
	movl	12(%esp), %ebp
L1799:
	movswl	_numsectors, %eax
	movl	20(%esp), %esi
	cmpl	%eax, %esi
	jle	L1807
	leal	(%esi,%esi,4), %esi
	leal	(%eax,%eax,4), %ecx
	movl	%ebp, 12(%esp)
	leal	0(,%esi,8), %eax
	sall	$3, %ecx
	movl	$-858993459, %esi
	movl	%eax, %ebp
	.p2align 6
	.p2align 4
	.p2align 3
L1808:
	movl	%ecx, %eax
	movl	_sector, %ebx
	mull	%esi
	movzwl	_numwalls, %eax
	addl	%ecx, %ebx
	addl	$40, %ecx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	addw	%ax, (%ebx)
	cmpl	%ecx, %ebp
	jne	L1808
	movl	12(%esp), %ebp
L1807:
	movl	$512, 8(%esp)
	movl	20(%esp), %esi
	movl	$0, 4(%esp)
	movl	$_hlsectorbitmap, (%esp)
	movw	%si, _numsectors
	call	_memset
	cmpl	%ebp, %esi
	jle	L1809
	movl	$0, 12(%esp)
	.p2align 4
	.p2align 3
L1816:
	movl	%ebp, %eax
	movl	%ebp, %edx
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
	orb	%dl, _hlsectorbitmap(%eax)
	movl	12(%esp), %eax
	leal	(%eax,%eax), %esi
	cmpw	$0, 6(%edi)
	jle	L1827
	xorl	%ebx, %ebx
L1815:
	movl	8(%edi), %eax
	movzwl	_numyaxbunches, %ecx
	movzwl	(%eax,%esi), %eax
	addl	%eax, %ecx
	testw	%ax, %ax
	movl	$-2, %eax
	cmovs	%eax, %ecx
	cmpw	$0, _editstatus
	je	L1838
	movswl	%cx, %ecx
	movswl	%bx, %edx
	movswl	%bp, %eax
	call	_yax_setbunch.part.0
L1810:
	cmpl	$1, %ebx
	je	L1814
L1827:
	cmpw	$0, 6(%edi)
	jle	L1814
	movl	16(%esp), %ebx
	addl	$2, %esi
	jmp	L1815
	.p2align 4,,10
	.p2align 3
L1814:
	addl	$2, 12(%esp)
	addl	$1, %ebp
	cmpl	%ebp, 20(%esp)
	jne	L1816
L1809:
	cmpw	$0, 4(%edi)
	jle	L1817
	xorl	%esi, %esi
	xorl	%ebp, %ebp
	movl	%edi, %ecx
	.p2align 4
	.p2align 3
L1818:
	movl	24(%ecx), %ebx
	movzwl	30(%esp), %edi
	movl	%ecx, 12(%esp)
	addl	$1, %ebp
	addl	%esi, %ebx
	addl	$44, %esi
	addw	24(%ebx), %di
	movswl	26(%ebx), %edx
	movswl	%di, %eax
	call	_insertsprite
	movl	(%ebx), %ecx
	imull	$44, %eax, %edx
	movl	_sprite, %eax
	addl	%edx, %eax
	movl	%ecx, (%eax)
	movl	4(%ebx), %ecx
	movl	%ecx, 4(%eax)
	movl	8(%ebx), %ecx
	movl	%ecx, 8(%eax)
	movl	12(%ebx), %ecx
	movl	%ecx, 12(%eax)
	movl	16(%ebx), %ecx
	movl	%ecx, 16(%eax)
	movl	20(%ebx), %ecx
	movl	%ecx, 20(%eax)
	movl	24(%ebx), %ecx
	movl	%ecx, 24(%eax)
	movl	28(%ebx), %ecx
	movl	%ecx, 28(%eax)
	movl	32(%ebx), %ecx
	movl	%ecx, 32(%eax)
	movl	36(%ebx), %ecx
	movl	%ecx, 36(%eax)
	movl	40(%ebx), %ebx
	movl	12(%esp), %ecx
	movl	%ebx, 40(%eax)
	movl	_sprite, %ebx
	movl	$-1171354717, %eax
	addl	%edx, %ebx
	addl	$24, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%di, 24(%ebx)
	movswl	4(%ecx), %eax
	cmpl	%ebp, %eax
	jg	L1818
	movl	%ecx, %edi
L1817:
	movl	%edi, %eax
	call	__ZL16mapinfofull_freeP13mapinfofull_t.lto_priv.0
	movzwl	24(%esp), %eax
	movw	%ax, _numwalls
	call	_update_highlightsector
	cmpw	$0, 6(%edi)
	jle	L1819
	xorl	%eax, %eax
	call	_yax_update
L1819:
	movl	_pos+8, %eax
	call	_yax_updategrays
	call	_calc_sector_reachability
	movl	32(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	xorl	%edx, %edx
	jmp	L1795
	.p2align 4,,10
	.p2align 3
L1838:
	.cfi_restore_state
	leal	0(,%ebp,4), %eax
	movw	%cx, _yax_bunchnum(%eax,%ebx,2)
	jmp	L1810
L1796:
	.cfi_restore 3
	movl	%edi, %eax
	call	__ZL16mapinfofull_freeP13mapinfofull_t.lto_priv.0
	movl	$-1, %edx
	jmp	L1795
	.cfi_endproc
LFE183:
	.p2align 4
	.globl	_ovh_whiteoutgrab
	.def	_ovh_whiteoutgrab;	.scl	2;	.type	32;	.endef
_ovh_whiteoutgrab:
LFB184:
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
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	testl	%eax, %eax
	je	L1840
	cmpw	$0, _numsectors
	jle	L1840
	xorl	%ebp, %ebp
	.p2align 4
	.p2align 3
L1843:
	movl	_sector, %edx
	leal	0(%ebp,%ebp,4), %eax
	leal	(%edx,%eax,8), %eax
	movswl	(%eax), %ebx
	movswl	2(%eax), %esi
	addl	%ebx, %esi
	cmpl	%esi, %ebx
	jge	L1841
	movswl	%bp, %edi
	.p2align 4
	.p2align 3
L1842:
	movswl	%bx, %eax
	movl	%edi, %edx
	addl	$1, %ebx
	call	_checksectorpointer
	cmpl	%ebx, %esi
	jne	L1842
L1841:
	movswl	_numsectors, %eax
	addl	$1, %ebp
	cmpl	%ebp, %eax
	jg	L1843
L1840:
	movl	$32768, 8(%esp)
	movl	$255, 4(%esp)
	movl	$__ZL9onextwall.lto_priv.0, (%esp)
	call	_memset
	movswl	_highlightsectorcnt, %eax
	subl	$1, %eax
	movl	%eax, %ecx
	js	L1849
	movl	_sector, %edi
	movl	_wall, %ebx
	movl	%edi, 20(%esp)
	.p2align 4
	.p2align 3
L1848:
	movswl	_highlightsector(%ecx,%ecx), %eax
	movl	20(%esp), %esi
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %eax
	movswl	(%eax), %esi
	movswl	2(%eax), %ebp
	addl	%esi, %ebp
	cmpl	%ebp, %esi
	jge	L1845
	movl	%esi, %eax
	movl	%ecx, 16(%esp)
	sall	$5, %eax
	addl	$10, %eax
	.p2align 4
	.p2align 3
L1847:
	movzwl	(%ebx,%eax), %edi
	movw	%di, 14(%esp)
	testw	%di, %di
	js	L1846
	movswl	2(%ebx,%eax), %ecx
	movl	%ecx, %edi
	sarl	$3, %ecx
	andl	$7, %edi
	movzbl	__ZL8pow2char.lto_priv.2(%edi), %edi
	movl	%edi, %edx
	andb	_hlsectorbitmap(%ecx), %dl
	movl	%edx, %ecx
	movl	%edi, %edx
	cmpb	%cl, %dl
	je	L1846
	movswl	14(%esp), %edx
	movl	$-1, %edi
	movw	%dx, __ZL9onextwall.lto_priv.0+0(%esi,%esi)
	movl	%edx, %ecx
	andl	$134217727, %edx
	addl	$1, _wallchanged(,%edx,4)
	sall	$5, %ecx
	movl	$-1, %edx
	movw	%dx, 10(%ebx,%ecx)
	movswl	(%ebx,%eax), %edx
	movl	%edx, %ecx
	andl	$134217727, %edx
	addl	$1, _wallchanged(,%edx,4)
	movl	%eax, %edx
	sall	$5, %ecx
	shrl	$5, %edx
	movw	%di, 12(%ebx,%ecx)
	movl	$-1, %ecx
	addl	$1, _wallchanged(,%edx,4)
	movl	$-1, %edx
	movw	%dx, (%ebx,%eax)
	leal	2(%eax), %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movw	%cx, 2(%ebx,%eax)
L1846:
	addl	$1, %esi
	addl	$32, %eax
	cmpl	%esi, %ebp
	jne	L1847
	movl	16(%esp), %ecx
L1845:
	subl	$1, %ecx
	jnb	L1848
	movl	$__ZL9onextwall.lto_priv.0, %eax
	movl	%eax, _chsecptr_onextwall
	addl	$24, %esp
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
L1849:
	.cfi_restore_state
	xorl	%eax, %eax
	movl	%eax, _chsecptr_onextwall
	addl	$24, %esp
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
LFE184:
	.globl	__ZL9onextwall.lto_priv.0
	.bss
	.align 32
__ZL9onextwall.lto_priv.0:
	.space 32768
	.globl	_somethingintab
	.section .rdata,"dr"
_somethingintab:
	.byte	-1
	.globl	_globalb
	.set	_globalb,_somethingintab
	.globl	_globalg
	.set	_globalg,_somethingintab
	.globl	_globalr
	.set	_globalr,_somethingintab
	.globl	_grid
	.bss
	.align 4
_grid:
	.space 4
	.globl	_gridlock
	.data
	.align 4
_gridlock:
	.long	1
	.globl	_polymost_hitdata
	.bss
	.align 4
_polymost_hitdata:
	.space 20
	.data
	.align 4
_zlock:
	.long	2147483647
.lcomm __ZL4hvel,4,4
	.globl	_spritesmooth
	.bss
	.align 4
_spritesmooth:
	.space 4
	.globl	_spriteext
	.align 4
_spriteext:
	.space 4
	.globl	__ZL3mhk.lto_priv.0
	.align 4
__ZL3mhk.lto_priv.0:
	.space 4
	.globl	_g_mouseAbs
	.align 4
_g_mouseAbs:
	.space 8
	.globl	_osearchy
	.align 4
_osearchy:
	.space 4
	.globl	_osearchx
	.align 4
_osearchx:
	.space 4
	.globl	__ZL10mouseysurp.lto_priv.0
	.align 4
__ZL10mouseysurp.lto_priv.0:
	.space 4
	.globl	__ZL10mousexsurp.lto_priv.0
	.align 4
__ZL10mousexsurp.lto_priv.0:
	.space 4
	.globl	_g_mousePos
	.align 8
_g_mousePos:
	.space 8
.lcomm __ZL5mousy,4,4
.lcomm __ZL5mousx,4,4
.lcomm _mskip,4,4
	.globl	__ZL15oldmousebstatus.lto_priv.0
	.align 2
__ZL15oldmousebstatus.lto_priv.0:
	.space 2
.lcomm __ZL7bstatus,2,2
	.globl	__ZL4svel.lto_priv.0
	.align 4
__ZL4svel.lto_priv.0:
	.space 4
	.globl	__ZL3vel.lto_priv.0
	.align 4
__ZL3vel.lto_priv.0:
	.space 4
	.globl	__ZL6angvel.lto_priv.0
	.align 4
__ZL6angvel.lto_priv.0:
	.space 4
	.globl	__ZN6loguruL11s_callbacksE.lto_priv.0
	.align 4
__ZN6loguruL11s_callbacksE.lto_priv.0:
	.space 12
	.globl	__ZN6loguruL7s_mutexE.lto_priv.0
	.data
	.align 4
__ZN6loguruL7s_mutexE.lto_priv.0:
	.long	-3
	.globl	__ZL14user_callbacks.lto_priv.0
	.bss
	.align 32
__ZL14user_callbacks.lto_priv.0:
	.space 32
	.globl	__ZL8settings.lto_priv.0
	.align 16
__ZL8settings.lto_priv.0:
	.space 24
	.globl	__ZL4done.lto_priv.0
	.data
	.align 4
__ZL4done.lto_priv.0:
	.long	-1
	.globl	__ZL10startupdlg.lto_priv.0
	.bss
	.align 4
__ZL10startupdlg.lto_priv.0:
	.space 4
.lcomm __ZL8grpcache,4,4
.lcomm __ZL12usedgrpcache,4,4
	.section .rdata,"dr"
LC134:
	.ascii "*.grp\0"
LC135:
	.ascii "*.ssi\0"
LC136:
	.ascii "*.dat\0"
LC137:
	.ascii "*.zip\0"
	.data
	.align 4
__ZZ10ScanGroupsvE10extensions:
	.long	LC134
	.long	LC135
	.long	LC136
	.long	LC137
	.section .rdata,"dr"
LC138:
	.ascii "Shadow Warrior\0"
LC139:
	.ascii "Shadow Warrior (Europe)\0"
LC140:
	.ascii "Shadow Warrior (UK)\0"
LC141:
	.ascii "Shadow Warrior (Censored)\0"
LC142:
	.ascii "Shadow Warrior Shareware 1.0\0"
LC143:
	.ascii "Shadow Warrior Shareware 1.1\0"
LC144:
	.ascii "Shadow Warrior Shareware 1.2\0"
LC145:
	.ascii "Shadow Warrior Mac Demo\0"
LC146:
	.ascii "Wanton Destruction\0"
LC147:
	.ascii "Twin Dragon\0"
	.data
	.align 32
__ZL8grpfiles:
	.long	LC138
	.long	1967468959
	.long	47536148
	.word	0
	.word	0
	.long	0
	.long	0
	.long	LC139
	.long	-727588525
	.long	47536148
	.word	0
	.word	0
	.long	0
	.long	0
	.long	LC140
	.long	1055295335
	.long	47536148
	.word	0
	.word	0
	.long	0
	.long	0
	.long	LC141
	.long	445085394
	.long	47537951
	.word	0
	.word	0
	.long	0
	.long	0
	.long	LC142
	.long	-626606386
	.long	25702245
	.word	1
	.word	0
	.long	0
	.long	0
	.long	LC143
	.long	-233149643
	.long	25833456
	.word	1
	.word	0
	.long	0
	.long	0
	.long	LC144
	.long	145226271
	.long	26056769
	.word	1
	.word	0
	.long	0
	.long	0
	.long	LC145
	.long	1109914933
	.long	26056769
	.word	1
	.word	0
	.long	0
	.long	0
	.long	LC146
	.long	-1448433737
	.long	48698128
	.word	2
	.word	1
	.long	1967468959
	.long	0
	.long	LC147
	.long	-1582933016
	.long	12499012
	.word	4
	.word	1
	.long	1967468959
	.long	__ZL18process_tdragongrpi.lto_priv.0
	.long	LC147
	.long	-1396122402
	.long	6235578
	.word	4
	.word	1
	.long	1967468959
	.long	0
	.long	LC147
	.long	-1246293385
	.long	6236287
	.word	4
	.word	1
	.long	1967468959
	.long	0
.lcomm _zmode,4,4
	.align 4
_option:
	.ascii "\0\0\0\0\0\0\1\0"
.lcomm __ZL22gameControllerDBLoaded,1,1
	.globl	__ZL12numjoysticks.lto_priv.0
	.bss
	.align 4
__ZL12numjoysticks.lto_priv.0:
	.space 4
	.globl	__ZL6joydev.lto_priv.0
	.align 4
__ZL6joydev.lto_priv.0:
	.space 4
	.globl	__ZL10controller.lto_priv.0
	.align 4
__ZL10controller.lto_priv.0:
	.space 4
	.globl	_joystick
	.align 32
_joystick:
	.space 48
	.globl	__ZL6linked.lto_priv.0
__ZL6linked.lto_priv.0:
	.space 3
	.globl	_g_controllerSupportFlags
	.section .rdata,"dr"
_g_controllerSupportFlags:
	.space 1
	.globl	_parallaxtype
	.set	_parallaxtype,_g_controllerSupportFlags
	.globl	_win_silentvideomodeswitch
	.set	_win_silentvideomodeswitch,_g_controllerSupportFlags
	.globl	__ZL14keytranslation.lto_priv.0
	.bss
	.align 32
__ZL14keytranslation.lto_priv.0:
	.space 512
.lcomm _g_keyNameTable,6144,32
	.globl	_g_mouseGrabbed
_g_mouseGrabbed:
	.space 1
.lcomm _inputdevices,1,1
	.globl	_g_controllerHotplugCallback
	.align 4
_g_controllerHotplugCallback:
	.space 4
	.globl	_g_mouseLockedToWindow
	.data
_g_mouseLockedToWindow:
	.byte	1
	.globl	__ZL17usertimercallback.lto_priv.0
	.bss
	.align 4
__ZL17usertimercallback.lto_priv.0:
	.space 4
	.globl	__ZL8zerochar.lto_priv.0
__ZL8zerochar.lto_priv.0:
	.space 1
	.globl	__ZL9lockrecip.lto_priv.0
	.align 32
__ZL9lockrecip.lto_priv.0:
	.space 800
	.globl	_tabledivide32_noinline
	.section .rdata,"dr"
	.align 4
_tabledivide32_noinline:
	.long	_tabledivide32.lto_priv.1
.lcomm __ZL11g_cacheInit,1,1
	.globl	__ZL9artfilplc.lto_priv.0
	.bss
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
	.globl	_gotpic
	.align 32
_gotpic:
	.space 3840
	.globl	_rottile
	.align 32
_rottile:
	.space 122880
	.globl	_picanm
	.align 32
_picanm:
	.space 153600
	.globl	__ZL11artfilename.lto_priv.0
	.align 4
__ZL11artfilename.lto_priv.0:
	.space 20
	.globl	__ZL18defaultdeffilename.lto_priv.0
	.section .rdata,"dr"
	.align 4
__ZL18defaultdeffilename.lto_priv.0:
	.long	LC43
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
	.globl	_blackcol
_blackcol:
	.space 1
	.globl	_globalpalwritten
	.align 4
_globalpalwritten:
	.space 4
	.globl	_globalpal
	.align 4
_globalpal:
	.space 4
	.globl	_keypresscallback
	.align 4
_keypresscallback:
	.space 4
	.globl	__ZL3osv.lto_priv.0
	.align 32
__ZL3osv.lto_priv.0:
	.space 156
.lcomm _m32_debugstr,8192,32
.lcomm _m32_numdebuglines,4,4
	.globl	_inputchecked
	.align 4
_inputchecked:
	.space 4
	.globl	_synctics
	.align 4
_synctics:
	.space 4
	.globl	_lockclock
	.align 4
_lockclock:
	.space 4
	.globl	_buildkeys
	.data
	.align 4
_buildkeys:
	.ascii "\310\320\313\315*\235\35"
	.ascii "9\36,\321\311"
	.ascii "34\234\34\15\14\17)"
	.globl	_tempsectornum
	.bss
	.align 4
_tempsectornum:
	.space 4
	.globl	_chsecptr_onextwall
	.align 4
_chsecptr_onextwall:
	.space 4
	.globl	_g_clipMapFiles
	.align 8
_g_clipMapFiles:
	.space 12
	.data
	.align 32
__ZZ8app_mainE1R:
	.ascii "\0\1\1\1\0\0\0\0\0\0\0\1\1\1\0\0\0\1\0\0\1\0\0\0\0\0\0\1\0\0\1\0\0\1\0\0\1\0\0\0\0\0\0\1\0\0\1\0\0\1\1\1\0\0\0\1\1\0\0\1\1\1\0\0\0\1\0\1\0\0\1\0\0\1\0\1\0\0\1\0\0\1\0\0\1\0\1\0\0\1\0\1\0\0\1\0\0\1\0\0\1\0\0\1\1\0\0\1\0\0\1\0\0"
	.space 15
	.globl	_waloff
	.bss
	.align 32
_waloff:
	.space 122880
	.globl	_g_cache
	.align 4
_g_cache:
	.space 20
	.globl	_picsiz
	.align 32
_picsiz:
	.space 30720
	.globl	_walock
	.align 32
_walock:
	.space 30720
	.globl	_tilesiz
	.align 32
_tilesiz:
	.space 122880
	.globl	_g_fileDropCallback
	.align 4
_g_fileDropCallback:
	.space 4
.lcomm _g_defModules,12,8
.lcomm __ZL6kensig,64,32
	.globl	_quitevent
_quitevent:
	.space 1
	.globl	_program_origcwd
	.align 32
_program_origcwd:
	.space 256
	.globl	__ZL13boardfilename.lto_priv.0
	.align 32
__ZL13boardfilename.lto_priv.0:
	.space 256
	.globl	_win_boostpriority
	.data
	.align 4
_win_boostpriority:
	.long	2
	.globl	_DefaultGameLocalExec
	.section .rdata,"dr"
LC148:
	.ascii "kuro.exe\0"
	.align 4
_DefaultGameLocalExec:
	.long	LC148
	.globl	_DefaultGameExec
	.set	_DefaultGameExec,_DefaultGameLocalExec
	.globl	_baselayer_osdcmd_vidmode_func
	.bss
	.align 4
_baselayer_osdcmd_vidmode_func:
	.space 4
.lcomm _mlook,4,4
	.globl	_g_alwaysLockMouse
	.align 4
_g_alwaysLockMouse:
	.space 4
	.globl	_tempbuf
	.align 32
_tempbuf:
	.space 4096
	.globl	_osdvisible
	.align 4
_osdvisible:
	.space 4
	.globl	__ZL6ydmost.lto_priv.0
	.align 4
__ZL6ydmost.lto_priv.0:
	.space 4
	.globl	__ZL6yumost.lto_priv.0
	.align 4
__ZL6yumost.lto_priv.0:
	.space 4
.lcomm __ZL14ymostallocsize,4,4
	.globl	_xdimen
	.data
	.align 4
_xdimen:
	.long	-1
	.globl	__ZL17yax_spritesortcnt.lto_priv.0
	.bss
	.align 32
__ZL17yax_spritesortcnt.lto_priv.0:
	.space 34
	.globl	__ZL9bunchdist.lto_priv.0
	.align 32
__ZL9bunchdist.lto_priv.0:
	.space 512
	.globl	_globalang
	.align 2
_globalang:
	.space 2
	.globl	_yax_gotsector
	.align 32
_yax_gotsector:
	.space 512
	.globl	_yax_nomaskpass
	.align 4
_yax_nomaskpass:
	.space 4
	.globl	_r_tror_nomaskpass
	.data
	.align 4
_r_tror_nomaskpass:
	.long	1
	.globl	_yax_nomaskdidit
	.bss
	.align 4
_yax_nomaskdidit:
	.space 4
	.globl	_glad_glClear
	.align 4
_glad_glClear:
	.space 4
	.globl	_scansector_collectsprites
	.data
	.align 4
_scansector_collectsprites:
	.long	1
	.globl	_g_nodraw
	.bss
	.align 4
_g_nodraw:
	.space 4
	.globl	_globalposx
	.align 4
_globalposx:
	.space 4
	.globl	_globalposy
	.align 4
_globalposy:
	.space 4
	.globl	_qglobalang
	.align 4
_qglobalang:
	.space 4
.lcomm __ZL8bunchsec,512,32
	.globl	_yax_globalbunch
	.data
	.align 4
_yax_globalbunch:
	.long	-1
.lcomm __ZZ13yax_drawroomsE10lgotsector,512,32
	.globl	_yax_polymostclearzbuffer
	.align 4
_yax_polymostclearzbuffer:
	.long	1
.lcomm __ZL7bunches,1024,32
	.globl	_globalposz
	.bss
	.align 4
_globalposz:
	.space 4
	.globl	_haveymost
	.align 32
_haveymost:
	.space 32
	.globl	_yax_globallev
	.data
	.align 4
_yax_globallev:
	.long	8
	.globl	_yax_globalcf
	.align 4
_yax_globalcf:
	.long	-1
.lcomm __ZZ13yax_drawroomsE9havebunch,32,32
	.globl	_gotsector
	.bss
	.align 32
_gotsector:
	.space 512
.lcomm __ZZ13yax_drawroomsE10ogotsector,512,32
	.globl	__ZL14global100horiz.lto_priv.0
	.align 4
__ZL14global100horiz.lto_priv.0:
	.space 4
	.globl	_prsectors
	.align 32
_prsectors:
	.space 16384
	.globl	_fsearchy
	.align 4
_fsearchy:
	.space 4
	.globl	_fydim
	.align 4
_fydim:
	.space 4
	.globl	_fsearchx
	.align 4
_fsearchx:
	.space 4
	.globl	_glad_glGetIntegerv
	.align 4
_glad_glGetIntegerv:
	.space 4
	.globl	_glad_glGetFloatv
	.align 4
_glad_glGetFloatv:
	.space 4
	.globl	_searchisbottom
	.align 2
_searchisbottom:
	.space 2
	.globl	_searchbottomwall
	.align 2
_searchbottomwall:
	.space 2
	.globl	_wallsect
	.align 32
_wallsect:
	.space 32768
	.globl	_glad_glReadPixels
	.align 4
_glad_glReadPixels:
	.space 4
.lcomm _g_doScreenShot,4,4
	.data
	.align 4
__ZZ21M32_DrawRoomsAndMasksE8srchwall:
	.long	-1
	.globl	_newaspect_enable
	.bss
	.align 4
_newaspect_enable:
	.space 4
	.globl	_viewingrange
	.align 4
_viewingrange:
	.space 4
	.globl	_yxaspect
	.align 4
_yxaspect:
	.space 4
	.globl	__ZL16g_bakTileFileNum.lto_priv.0
	.align 4
__ZL16g_bakTileFileNum.lto_priv.0:
	.space 4
	.globl	_yax_bunchnum
	.align 32
_yax_bunchnum:
	.space 16384
	.globl	_g_loadedMapVersion
	.data
	.align 4
_g_loadedMapVersion:
	.long	-1
	.globl	_editorzrange
	.bss
	.align 8
_editorzrange:
	.space 8
	.globl	_bytesperline
	.align 4
_bytesperline:
	.space 4
	.globl	_frameplace
	.align 4
_frameplace:
	.space 4
	.globl	__ZL12modeschecked.lto_priv.0
__ZL12modeschecked.lto_priv.0:
	.space 1
	.globl	_videomodereset
_videomodereset:
	.space 1
	.globl	_bpp
	.align 4
_bpp:
	.space 4
	.globl	_asksave
	.align 2
_asksave:
	.space 2
	.globl	_m32_script_expertmode
	.section .rdata,"dr"
	.align 4
_m32_script_expertmode:
	.space 4
	.globl	_setaspect_new_use_dimen
	.set	_setaspect_new_use_dimen,_m32_script_expertmode
	.globl	_scansector_retfast
	.set	_scansector_retfast,_m32_script_expertmode
	.globl	_showfirstwall
	.set	_showfirstwall,_m32_script_expertmode
	.globl	_maxrefreshfreq
	.set	_maxrefreshfreq,_m32_script_expertmode
	.globl	_spriteinsertmode
	.set	_spriteinsertmode,_m32_script_expertmode
	.align 8
LC23:
	.long	-947069011
	.long	-940574413
	.align 8
LC24:
	.long	-947069011
	.long	1206909235
	.align 16
LC35:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
LC39:
	.long	2139081118
	.align 16
LC60:
	.long	0
	.long	0
	.long	0
	.long	4
	.align 16
LC85:
	.long	6
	.long	0
	.long	21
	.long	0
	.align 16
LC93:
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.align 4
LC96:
	.long	1199570944
	.align 4
LC97:
	.long	981467136
	.align 4
LC120:
	.long	1065353216
	.align 4
LC121:
	.long	1092616192
	.align 4
LC122:
	.long	1097859072
	.align 4
LC124:
	.long	__ZL23_internal_drawosdcursoriiii.lto_priv.0
	.align 4
LC125:
	.long	__ZL21_internal_drawosdchariicii.lto_priv.0
	.align 4
LC126:
	.long	_BGetTime
	.align 4
LC127:
	.long	__ZL22_internal_getrowheighti.lto_priv.0
	.align 4
LC129:
	.long	1056964608
	.align 4
LC130:
	.long	1048576000
	.align 8
LC133:
	.long	0
	.long	1089470464
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_videoSetGameMode;	.scl	2;	.type	32;	.endef
	.def	__Z10OSD_PrintfPKcz;	.scl	2;	.type	32;	.endef
	.def	_strtol;	.scl	2;	.type	32;	.endef
	.def	_videoSet2dMode;	.scl	2;	.type	32;	.endef
	.def	_videoBeginDrawing;	.scl	2;	.type	32;	.endef
	.def	_videoEndDrawing;	.scl	2;	.type	32;	.endef
	.def	__Z10VM_OnEventii;	.scl	2;	.type	32;	.endef
	.def	_message;	.scl	2;	.type	32;	.endef
	.def	_LoadBoard;	.scl	2;	.type	32;	.endef
	.def	_yax_tweakpicnums;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	_initprintf;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_clipmove;	.scl	2;	.type	32;	.endef
	.def	_silentmessage;	.scl	2;	.type	32;	.endef
	.def	_yax_getnextwall;	.scl	2;	.type	32;	.endef
	.def	_yax_getnextwall.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_do_deletespritestat;	.scl	2;	.type	32;	.endef
	.def	_do_insertsprite_at_headofstat;	.scl	2;	.type	32;	.endef
	.def	_do_deletespritesect;	.scl	2;	.type	32;	.endef
	.def	_do_insertsprite_at_headofsect;	.scl	2;	.type	32;	.endef
	.def	_setslope;	.scl	2;	.type	32;	.endef
	.def	_yax_setnextwall.part.0;	.scl	2;	.type	32;	.endef
	.def	_initspritelists;	.scl	2;	.type	32;	.endef
	.def	_taglab_init;	.scl	2;	.type	32;	.endef
	.def	_artClearMapArt.part.0;	.scl	2;	.type	32;	.endef
	.def	_yax_setbunch.part.0;	.scl	2;	.type	32;	.endef
	.def	_yax_update;	.scl	2;	.type	32;	.endef
	.def	_yax_updategrays;	.scl	2;	.type	32;	.endef
	.def	_calc_sector_reachability;	.scl	2;	.type	32;	.endef
	.def	_renderDrawRoomsQ16.isra.0;	.scl	2;	.type	32;	.endef
	.def	_ExtAnalyzeSprites.isra.0;	.scl	2;	.type	32;	.endef
	.def	_renderDrawMasks;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.1;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_inside;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.1;	.scl	2;	.type	32;	.endef
	.def	__ZL14yax_cmpbunchesPKvS0_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_qsort;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch;	.scl	2;	.type	32;	.endef
	.def	__ZL16yax_copytspritesv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_renderSetAspect;	.scl	2;	.type	32;	.endef
	.def	_videoSetCorrectedAspect;	.scl	2;	.type	32;	.endef
	.def	__Z18videoCaptureScreenPKcc;	.scl	2;	.type	32;	.endef
	.def	__Z33buildgl_unprojectMatrixToViewport4vec3IfEPKfS2_PKiPfS5_S5_.isra.0;	.scl	2;	.type	32;	.endef
	.def	_mouseLockToWindow;	.scl	2;	.type	32;	.endef
	.def	_pthread_mutex_lock;	.scl	2;	.type	32;	.endef
	.def	_pthread_mutex_unlock;	.scl	2;	.type	32;	.endef
	.def	__Z17engineLogCallbackPvRKN6loguru7MessageE;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru12add_callbackEPKcPFvPvRKNS_7MessageEES2_iPFvS2_ES9_.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru8add_fileEPKcNS_8FileModeEi.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZL19osd_findexactsymbolPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_wm_setapptitle;	.scl	2;	.type	32;	.endef
	.def	_ExtPreInit;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_wm_msgbox;	.scl	2;	.type	32;	.endef
	.def	__ZL24_internal_getcolumnwidthi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL20_internal_drawosdstriiPKciii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_COMMON_clearbackground;	.scl	2;	.type	32;	.endef
	.def	_getcwd;	.scl	2;	.type	32;	.endef
	.def	_enginePreInit;	.scl	2;	.type	32;	.endef
	.def	__ZL7SetPagei.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL12EnableConfigi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL12PopulateFormv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z10SW_ExtInitv;	.scl	2;	.type	32;	.endef
	.def	_loadsetup.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_fromfile;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_close;	.scl	2;	.type	32;	.endef
	.def	_klistpath;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_findfrompath;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_open;	.scl	2;	.type	32;	.endef
	.def	_engineUnInit;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	__ZL13osd_addsymbolPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z8OSD_Initv;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_Bcrc32;	.scl	2;	.type	32;	.endef
	.def	_read;	.scl	2;	.type	32;	.endef
	.def	_close;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_gettoken;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getnumber;	.scl	2;	.type	32;	.endef
	.def	_strncpy;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_fprintf;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	_strcasecmp;	.scl	2;	.type	32;	.endef
	.def	_ExtPostStartupWindow;	.scl	2;	.type	32;	.endef
	.def	__ZL14parsenamesfileP10scriptfile.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetKeyName;	.scl	2;	.type	32;	.endef
	.def	_SDL_InitSubSystem;	.scl	2;	.type	32;	.endef
	.def	_mouseGrabInput;	.scl	2;	.type	32;	.endef
	.def	__Z9timerIniti.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZL13keytimerstuffv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL18artReadIndexedFilei.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_Bgetsysmemsize;	.scl	2;	.type	32;	.endef
	.def	_tabledivide32.lto_priv.1;	.scl	2;	.type	32;	.endef
	.def	__ZL17osdfunc_cacheinfoPK13osdfuncparm_t.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj;	.scl	2;	.type	32;	.endef
	.def	_tileUpdatePicSiz;	.scl	2;	.type	32;	.endef
	.def	_kopen4load.part.0;	.scl	2;	.type	32;	.endef
	.def	_kclose;	.scl	2;	.type	32;	.endef
	.def	__ZL10defsparserP10scriptfile.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZL18defsparser_includePKcPK10scriptfileS0_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_compare_usermaphacks;	.scl	2;	.type	32;	.endef
	.def	_setpalookupaddress;	.scl	2;	.type	32;	.endef
	.def	_fixtransluscence;	.scl	2;	.type	32;	.endef
	.def	_paletteGetClosestColorWithBlacklist;	.scl	2;	.type	32;	.endef
	.def	_memcmp;	.scl	2;	.type	32;	.endef
	.def	_paletteMakeLookupTable.part.0;	.scl	2;	.type	32;	.endef
	.def	_SDL_GameControllerClose;	.scl	2;	.type	32;	.endef
	.def	_SDL_JoystickClose;	.scl	2;	.type	32;	.endef
	.def	_SDL_NumJoysticks;	.scl	2;	.type	32;	.endef
	.def	_SDL_IsGameController;	.scl	2;	.type	32;	.endef
	.def	_SDL_GameControllerNameForIndex;	.scl	2;	.type	32;	.endef
	.def	_SDL_GameControllerOpen;	.scl	2;	.type	32;	.endef
	.def	_SDL_GameControllerName;	.scl	2;	.type	32;	.endef
	.def	_SDL_GameControllerRumble;	.scl	2;	.type	32;	.endef
	.def	_SDL_JoystickNameForIndex;	.scl	2;	.type	32;	.endef
	.def	_SDL_JoystickOpen;	.scl	2;	.type	32;	.endef
	.def	_SDL_JoystickNumAxes;	.scl	2;	.type	32;	.endef
	.def	_SDL_JoystickNumBalls;	.scl	2;	.type	32;	.endef
	.def	_SDL_JoystickNumButtons;	.scl	2;	.type	32;	.endef
	.def	_SDL_JoystickNumHats;	.scl	2;	.type	32;	.endef
	.def	_SDL_JoystickEventState;	.scl	2;	.type	32;	.endef
	.def	_SDL_JoystickRumble;	.scl	2;	.type	32;	.endef
	.def	_engineLoadClipMaps;	.scl	2;	.type	32;	.endef
	.def	__Z8OSD_ExecPKc;	.scl	2;	.type	32;	.endef
	.def	_updatesector;	.scl	2;	.type	32;	.endef
	.def	__Z26windowsDwmSetupCompositioni.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_videoSetVsync;	.scl	2;	.type	32;	.endef
	.def	_videoSetPalette.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_handleevents;	.scl	2;	.type	32;	.endef
	.def	__Z12OSD_DispatchPKcb.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_videoNextPage;	.scl	2;	.type	32;	.endef
	.def	__Z9ToggleFAFv;	.scl	2;	.type	32;	.endef
	.def	_ExtCheckKeys;	.scl	2;	.type	32;	.endef
	.def	_printext256;	.scl	2;	.type	32;	.endef
	.def	_videoShowFrame.part.0;	.scl	2;	.type	32;	.endef
	.def	_SDL_WaitEvent;	.scl	2;	.type	32;	.endef
	.def	_CheckMapCorruption.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_SaveBoard;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getlinum;	.scl	2;	.type	32;	.endef
	.def	_ExtUnInit;	.scl	2;	.type	32;	.endef
	.def	__ZL14overheadeditorv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_engineFatalError.isra.0;	.scl	2;	.type	32;	.endef
	.def	_SDL_JoystickHasRumble;	.scl	2;	.type	32;	.endef
	.def	__ZN7cache1d13allocateBlockEPiiPc.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_SDL_GameControllerHasRumble;	.scl	2;	.type	32;	.endef
	.def	_SDL_GameControllerGetSerial;	.scl	2;	.type	32;	.endef
	.def	__Z20kfilelength_internaliPKhPiS1_.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z14kread_internaliPviPKhPKiPi;	.scl	2;	.type	32;	.endef
	.def	_SDL_RWFromConstMem;	.scl	2;	.type	32;	.endef
	.def	_SDL_GameControllerAddMappingsFromRW;	.scl	2;	.type	32;	.endef
	.def	_SDL_GameControllerHasAxis;	.scl	2;	.type	32;	.endef
	.def	_SDL_GameControllerHasButton;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetError;	.scl	2;	.type	32;	.endef
	.def	__ZSt20__throw_system_errori;	.scl	2;	.type	32;	.endef
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
	.def	@ksqrt@4;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.2;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	_mouseReadButtons;	.scl	2;	.type	32;	.endef
	.def	_ldiv;	.scl	2;	.type	32;	.endef
	.def	__ZL7loadmhki.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_getzrange;	.scl	2;	.type	32;	.endef
	.def	_updatesectorz;	.scl	2;	.type	32;	.endef
	.def	_hitscan;	.scl	2;	.type	32;	.endef
	.def	__ZL20insert_sprite_commoniii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL25correct_ornamented_spriteiRK9hitdata_t.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_correct_sprite_yoffset;	.scl	2;	.type	32;	.endef
	.def	_ExtShowSectorData.part.0;	.scl	2;	.type	32;	.endef
	.def	_ExtEditSectorData.isra.0;	.scl	2;	.type	32;	.endef
	.def	_SDL_WarpMouseInWindow;	.scl	2;	.type	32;	.endef
	.def	_engineClearLightsFromMHK;	.scl	2;	.type	32;	.endef
	.def	_ExtEditSpriteData;	.scl	2;	.type	32;	.endef
	.def	__Z11ContextHelps;	.scl	2;	.type	32;	.endef
	.def	_ExtShowWallData;	.scl	2;	.type	32;	.endef
	.def	__ZL13inside_editorPK4vec3IiEiiiiis.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_editorGet2dScreenCoordinates;	.scl	2;	.type	32;	.endef
	.def	_printext16;	.scl	2;	.type	32;	.endef
	.def	_editorDraw2dLine;	.scl	2;	.type	32;	.endef
	.def	_insertsprite;	.scl	2;	.type	32;	.endef
	.def	_update_highlightsector;	.scl	2;	.type	32;	.endef
	.def	_checksectorpointer;	.scl	2;	.type	32;	.endef
	.def	__ZL18process_tdragongrpi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL23_internal_drawosdcursoriiii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL21_internal_drawosdchariicii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL22_internal_getrowheighti.lto_priv.0;	.scl	2;	.type	32;	.endef
