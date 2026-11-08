	.file	"<artificial>"
	.text
	.p2align 4
	.def	__ZL7has_extPKc;	.scl	3;	.type	32;	.endef
__ZL7has_extPKc:
LFB0:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%edi, 16(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	%esi, 12(%esp)
	cmpl	$2, __ZL16max_loaded_major
	.cfi_offset 6, -16
	jg	L2
	movl	__ZL4exts, %esi
	testl	%esi, %esi
	je	L5
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -20
	.p2align 4
	.p2align 3
L3:
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	call	_strstr
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L30
	movl	%edi, (%esp)
	call	_strlen
	addl	%ebx, %eax
	cmpl	%ebx, %esi
	je	L6
	cmpb	$32, -1(%ebx)
	je	L6
L7:
	movl	%eax, %esi
	jmp	L3
	.p2align 4,,10
	.p2align 3
L2:
	.cfi_restore 3
	movl	__ZL6exts_i, %esi
	testl	%esi, %esi
	je	L5
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	movl	__ZL10num_exts_i, %ebp
	testl	%ebp, %ebp
	jle	L31
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L10:
	movl	(%esi,%ebx,4), %eax
	testl	%eax, %eax
	je	L9
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L32
L9:
	addl	$1, %ebx
	cmpl	%ebx, %ebp
	jne	L10
	movl	8(%esp), %ebx
	.cfi_restore 3
	movl	20(%esp), %ebp
	.cfi_restore 5
L5:
	movl	12(%esp), %esi
	movl	16(%esp), %edi
	xorl	%eax, %eax
	addl	$24, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L6:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	testb	$-33, (%eax)
	jne	L7
	movl	8(%esp), %ebx
	.cfi_restore 3
	movl	$1, %eax
L34:
	movl	12(%esp), %esi
	movl	16(%esp), %edi
	addl	$24, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L30:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	8(%esp), %ebx
	.cfi_restore 3
	jmp	L5
	.p2align 4,,10
	.p2align 3
L32:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	movl	20(%esp), %ebp
	.cfi_restore 5
	movl	8(%esp), %ebx
	.cfi_restore 3
	movl	$1, %eax
	jmp	L34
L31:
	.cfi_offset 5, -8
	movl	20(%esp), %ebp
	.cfi_restore 5
	jmp	L5
	.cfi_endproc
LFE0:
	.section .rdata,"dr"
LC0:
	.ascii "glDrawArrays\0"
LC1:
	.ascii "glDrawElements\0"
LC2:
	.ascii "glGetPointerv\0"
LC3:
	.ascii "glPolygonOffset\0"
LC4:
	.ascii "glCopyTexImage1D\0"
LC5:
	.ascii "glCopyTexImage2D\0"
LC6:
	.ascii "glCopyTexSubImage1D\0"
LC7:
	.ascii "glCopyTexSubImage2D\0"
LC8:
	.ascii "glTexSubImage1D\0"
LC9:
	.ascii "glTexSubImage2D\0"
LC10:
	.ascii "glBindTexture\0"
LC11:
	.ascii "glDeleteTextures\0"
LC12:
	.ascii "glGenTextures\0"
LC13:
	.ascii "glIsTexture\0"
LC14:
	.ascii "glArrayElement\0"
LC15:
	.ascii "glColorPointer\0"
LC16:
	.ascii "glDisableClientState\0"
LC17:
	.ascii "glEdgeFlagPointer\0"
LC18:
	.ascii "glEnableClientState\0"
LC19:
	.ascii "glIndexPointer\0"
LC20:
	.ascii "glInterleavedArrays\0"
LC21:
	.ascii "glNormalPointer\0"
LC22:
	.ascii "glTexCoordPointer\0"
LC23:
	.ascii "glVertexPointer\0"
LC24:
	.ascii "glAreTexturesResident\0"
LC25:
	.ascii "glPrioritizeTextures\0"
LC26:
	.ascii "glIndexub\0"
LC27:
	.ascii "glIndexubv\0"
LC28:
	.ascii "glPopClientAttrib\0"
LC29:
	.ascii "glPushClientAttrib\0"
	.text
	.p2align 4
	.globl	__ZL19load_GL_VERSION_1_1PFPvPKcE.constprop.0
	.def	__ZL19load_GL_VERSION_1_1PFPvPKcE.constprop.0;	.scl	2;	.type	32;	.endef
__ZL19load_GL_VERSION_1_1PFPvPKcE.constprop.0:
LFB2:
	.cfi_startproc
	movl	_GLAD_GL_VERSION_1_1, %eax
	testl	%eax, %eax
	je	L38
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	$LC0, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC1, (%esp)
	movl	%eax, _glad_glDrawArrays
	call	_SDL_GL_GetProcAddress
	movl	$LC2, (%esp)
	movl	%eax, _glad_glDrawElements
	call	_SDL_GL_GetProcAddress
	movl	$LC3, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC4, (%esp)
	movl	%eax, _glad_glPolygonOffset
	call	_SDL_GL_GetProcAddress
	movl	$LC5, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC6, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC7, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC8, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC9, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC10, (%esp)
	movl	%eax, _glad_glTexSubImage2D
	call	_SDL_GL_GetProcAddress
	movl	$LC11, (%esp)
	movl	%eax, _glad_glBindTexture
	call	_SDL_GL_GetProcAddress
	movl	$LC12, (%esp)
	movl	%eax, _glad_glDeleteTextures
	call	_SDL_GL_GetProcAddress
	movl	$LC13, (%esp)
	movl	%eax, _glad_glGenTextures
	call	_SDL_GL_GetProcAddress
	movl	$LC14, (%esp)
	movl	%eax, _glad_glIsTexture
	call	_SDL_GL_GetProcAddress
	movl	$LC15, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC16, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC17, (%esp)
	movl	%eax, _glad_glDisableClientState
	call	_SDL_GL_GetProcAddress
	movl	$LC18, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC19, (%esp)
	movl	%eax, _glad_glEnableClientState
	call	_SDL_GL_GetProcAddress
	movl	$LC20, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC21, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC22, (%esp)
	movl	%eax, _glad_glNormalPointer
	call	_SDL_GL_GetProcAddress
	movl	$LC23, (%esp)
	movl	%eax, _glad_glTexCoordPointer
	call	_SDL_GL_GetProcAddress
	movl	$LC24, (%esp)
	movl	%eax, _glad_glVertexPointer
	call	_SDL_GL_GetProcAddress
	movl	$LC25, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC26, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC27, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC28, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC29, (%esp)
	call	_SDL_GL_GetProcAddress
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L38:
	ret
	.cfi_endproc
LFE2:
	.section .rdata,"dr"
LC30:
	.ascii "glActiveTexture\0"
LC31:
	.ascii "glSampleCoverage\0"
LC32:
	.ascii "glCompressedTexImage3D\0"
LC33:
	.ascii "glCompressedTexImage2D\0"
LC34:
	.ascii "glCompressedTexImage1D\0"
LC35:
	.ascii "glCompressedTexSubImage3D\0"
LC36:
	.ascii "glCompressedTexSubImage2D\0"
LC37:
	.ascii "glCompressedTexSubImage1D\0"
LC38:
	.ascii "glGetCompressedTexImage\0"
LC39:
	.ascii "glClientActiveTexture\0"
LC40:
	.ascii "glMultiTexCoord1d\0"
LC41:
	.ascii "glMultiTexCoord1dv\0"
LC42:
	.ascii "glMultiTexCoord1f\0"
LC43:
	.ascii "glMultiTexCoord1fv\0"
LC44:
	.ascii "glMultiTexCoord1i\0"
LC45:
	.ascii "glMultiTexCoord1iv\0"
LC46:
	.ascii "glMultiTexCoord1s\0"
LC47:
	.ascii "glMultiTexCoord1sv\0"
LC48:
	.ascii "glMultiTexCoord2d\0"
LC49:
	.ascii "glMultiTexCoord2dv\0"
LC50:
	.ascii "glMultiTexCoord2f\0"
LC51:
	.ascii "glMultiTexCoord2fv\0"
LC52:
	.ascii "glMultiTexCoord2i\0"
LC53:
	.ascii "glMultiTexCoord2iv\0"
LC54:
	.ascii "glMultiTexCoord2s\0"
LC55:
	.ascii "glMultiTexCoord2sv\0"
LC56:
	.ascii "glMultiTexCoord3d\0"
LC57:
	.ascii "glMultiTexCoord3dv\0"
LC58:
	.ascii "glMultiTexCoord3f\0"
LC59:
	.ascii "glMultiTexCoord3fv\0"
LC60:
	.ascii "glMultiTexCoord3i\0"
LC61:
	.ascii "glMultiTexCoord3iv\0"
LC62:
	.ascii "glMultiTexCoord3s\0"
LC63:
	.ascii "glMultiTexCoord3sv\0"
LC64:
	.ascii "glMultiTexCoord4d\0"
LC65:
	.ascii "glMultiTexCoord4dv\0"
LC66:
	.ascii "glMultiTexCoord4f\0"
LC67:
	.ascii "glMultiTexCoord4fv\0"
LC68:
	.ascii "glMultiTexCoord4i\0"
LC69:
	.ascii "glMultiTexCoord4iv\0"
LC70:
	.ascii "glMultiTexCoord4s\0"
LC71:
	.ascii "glMultiTexCoord4sv\0"
LC72:
	.ascii "glLoadTransposeMatrixf\0"
LC73:
	.ascii "glLoadTransposeMatrixd\0"
LC74:
	.ascii "glMultTransposeMatrixf\0"
LC75:
	.ascii "glMultTransposeMatrixd\0"
	.text
	.p2align 4
	.globl	__ZL19load_GL_VERSION_1_3PFPvPKcE.constprop.0
	.def	__ZL19load_GL_VERSION_1_3PFPvPKcE.constprop.0;	.scl	2;	.type	32;	.endef
__ZL19load_GL_VERSION_1_3PFPvPKcE.constprop.0:
LFB4:
	.cfi_startproc
	movl	_GLAD_GL_VERSION_1_3, %eax
	testl	%eax, %eax
	je	L44
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	$LC30, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC31, (%esp)
	movl	%eax, _glad_glActiveTexture
	call	_SDL_GL_GetProcAddress
	movl	$LC32, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC33, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC34, (%esp)
	movl	%eax, _glad_glCompressedTexImage2D
	call	_SDL_GL_GetProcAddress
	movl	$LC35, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC36, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC37, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC38, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC39, (%esp)
	movl	%eax, _glad_glGetCompressedTexImage
	call	_SDL_GL_GetProcAddress
	movl	$LC40, (%esp)
	movl	%eax, _glad_glClientActiveTexture
	call	_SDL_GL_GetProcAddress
	movl	$LC41, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC42, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC43, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC44, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC45, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC46, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC47, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC48, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC49, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC50, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC51, (%esp)
	movl	%eax, _glad_glMultiTexCoord2f
	call	_SDL_GL_GetProcAddress
	movl	$LC52, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC53, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC54, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC55, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC56, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC57, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC58, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC59, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC60, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC61, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC62, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC63, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC64, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC65, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC66, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC67, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC68, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC69, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC70, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC71, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC72, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC73, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC74, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC75, (%esp)
	call	_SDL_GL_GetProcAddress
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L44:
	ret
	.cfi_endproc
LFE4:
	.section .rdata,"dr"
LC76:
	.ascii "glBlendFuncSeparate\0"
LC77:
	.ascii "glMultiDrawArrays\0"
LC78:
	.ascii "glMultiDrawElements\0"
LC79:
	.ascii "glPointParameterf\0"
LC80:
	.ascii "glPointParameterfv\0"
LC81:
	.ascii "glPointParameteri\0"
LC82:
	.ascii "glPointParameteriv\0"
LC83:
	.ascii "glFogCoordf\0"
LC84:
	.ascii "glFogCoordfv\0"
LC85:
	.ascii "glFogCoordd\0"
LC86:
	.ascii "glFogCoorddv\0"
LC87:
	.ascii "glFogCoordPointer\0"
LC88:
	.ascii "glSecondaryColor3b\0"
LC89:
	.ascii "glSecondaryColor3bv\0"
LC90:
	.ascii "glSecondaryColor3d\0"
LC91:
	.ascii "glSecondaryColor3dv\0"
LC92:
	.ascii "glSecondaryColor3f\0"
LC93:
	.ascii "glSecondaryColor3fv\0"
LC94:
	.ascii "glSecondaryColor3i\0"
LC95:
	.ascii "glSecondaryColor3iv\0"
LC96:
	.ascii "glSecondaryColor3s\0"
LC97:
	.ascii "glSecondaryColor3sv\0"
LC98:
	.ascii "glSecondaryColor3ub\0"
LC99:
	.ascii "glSecondaryColor3ubv\0"
LC100:
	.ascii "glSecondaryColor3ui\0"
LC101:
	.ascii "glSecondaryColor3uiv\0"
LC102:
	.ascii "glSecondaryColor3us\0"
LC103:
	.ascii "glSecondaryColor3usv\0"
LC104:
	.ascii "glSecondaryColorPointer\0"
LC105:
	.ascii "glWindowPos2d\0"
LC106:
	.ascii "glWindowPos2dv\0"
LC107:
	.ascii "glWindowPos2f\0"
LC108:
	.ascii "glWindowPos2fv\0"
LC109:
	.ascii "glWindowPos2i\0"
LC110:
	.ascii "glWindowPos2iv\0"
LC111:
	.ascii "glWindowPos2s\0"
LC112:
	.ascii "glWindowPos2sv\0"
LC113:
	.ascii "glWindowPos3d\0"
LC114:
	.ascii "glWindowPos3dv\0"
LC115:
	.ascii "glWindowPos3f\0"
LC116:
	.ascii "glWindowPos3fv\0"
LC117:
	.ascii "glWindowPos3i\0"
LC118:
	.ascii "glWindowPos3iv\0"
LC119:
	.ascii "glWindowPos3s\0"
LC120:
	.ascii "glWindowPos3sv\0"
LC121:
	.ascii "glBlendColor\0"
LC122:
	.ascii "glBlendEquation\0"
	.text
	.p2align 4
	.globl	__ZL19load_GL_VERSION_1_4PFPvPKcE.constprop.0
	.def	__ZL19load_GL_VERSION_1_4PFPvPKcE.constprop.0;	.scl	2;	.type	32;	.endef
__ZL19load_GL_VERSION_1_4PFPvPKcE.constprop.0:
LFB6:
	.cfi_startproc
	movl	_GLAD_GL_VERSION_1_4, %eax
	testl	%eax, %eax
	je	L50
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	$LC76, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC77, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC78, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC79, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC80, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC81, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC82, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC83, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC84, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC85, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC86, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC87, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC88, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC89, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC90, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC91, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC92, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC93, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC94, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC95, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC96, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC97, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC98, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC99, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC100, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC101, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC102, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC103, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC104, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC105, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC106, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC107, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC108, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC109, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC110, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC111, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC112, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC113, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC114, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC115, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC116, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC117, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC118, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC119, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC120, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC121, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC122, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glBlendEquation
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L50:
	ret
	.cfi_endproc
LFE6:
	.section .rdata,"dr"
LC123:
	.ascii "glGenQueries\0"
LC124:
	.ascii "glDeleteQueries\0"
LC125:
	.ascii "glIsQuery\0"
LC126:
	.ascii "glBeginQuery\0"
LC127:
	.ascii "glEndQuery\0"
LC128:
	.ascii "glGetQueryiv\0"
LC129:
	.ascii "glGetQueryObjectiv\0"
LC130:
	.ascii "glGetQueryObjectuiv\0"
LC131:
	.ascii "glBindBuffer\0"
LC132:
	.ascii "glDeleteBuffers\0"
LC133:
	.ascii "glGenBuffers\0"
LC134:
	.ascii "glIsBuffer\0"
LC135:
	.ascii "glBufferData\0"
LC136:
	.ascii "glBufferSubData\0"
LC137:
	.ascii "glGetBufferSubData\0"
LC138:
	.ascii "glMapBuffer\0"
LC139:
	.ascii "glUnmapBuffer\0"
LC140:
	.ascii "glGetBufferParameteriv\0"
LC141:
	.ascii "glGetBufferPointerv\0"
	.text
	.p2align 4
	.globl	__ZL19load_GL_VERSION_1_5PFPvPKcE.constprop.0
	.def	__ZL19load_GL_VERSION_1_5PFPvPKcE.constprop.0;	.scl	2;	.type	32;	.endef
__ZL19load_GL_VERSION_1_5PFPvPKcE.constprop.0:
LFB8:
	.cfi_startproc
	movl	_GLAD_GL_VERSION_1_5, %eax
	testl	%eax, %eax
	je	L56
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	$LC123, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC124, (%esp)
	movl	%eax, _glad_glGenQueries
	call	_SDL_GL_GetProcAddress
	movl	$LC125, (%esp)
	movl	%eax, _glad_glDeleteQueries
	call	_SDL_GL_GetProcAddress
	movl	$LC126, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC127, (%esp)
	movl	%eax, _glad_glBeginQuery
	call	_SDL_GL_GetProcAddress
	movl	$LC128, (%esp)
	movl	%eax, _glad_glEndQuery
	call	_SDL_GL_GetProcAddress
	movl	$LC129, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC130, (%esp)
	movl	%eax, _glad_glGetQueryObjectiv
	call	_SDL_GL_GetProcAddress
	movl	$LC131, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC132, (%esp)
	movl	%eax, _glad_glBindBuffer
	call	_SDL_GL_GetProcAddress
	movl	$LC133, (%esp)
	movl	%eax, _glad_glDeleteBuffers
	call	_SDL_GL_GetProcAddress
	movl	$LC134, (%esp)
	movl	%eax, _glad_glGenBuffers
	call	_SDL_GL_GetProcAddress
	movl	$LC135, (%esp)
	movl	%eax, _glad_glIsBuffer
	call	_SDL_GL_GetProcAddress
	movl	$LC136, (%esp)
	movl	%eax, _glad_glBufferData
	call	_SDL_GL_GetProcAddress
	movl	$LC137, (%esp)
	movl	%eax, _glad_glBufferSubData
	call	_SDL_GL_GetProcAddress
	movl	$LC138, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC139, (%esp)
	movl	%eax, _glad_glMapBuffer
	call	_SDL_GL_GetProcAddress
	movl	$LC140, (%esp)
	movl	%eax, _glad_glUnmapBuffer
	call	_SDL_GL_GetProcAddress
	movl	$LC141, (%esp)
	call	_SDL_GL_GetProcAddress
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L56:
	ret
	.cfi_endproc
LFE8:
	.section .rdata,"dr"
LC142:
	.ascii "glBlendEquationSeparate\0"
LC143:
	.ascii "glDrawBuffers\0"
LC144:
	.ascii "glStencilOpSeparate\0"
LC145:
	.ascii "glStencilFuncSeparate\0"
LC146:
	.ascii "glStencilMaskSeparate\0"
LC147:
	.ascii "glAttachShader\0"
LC148:
	.ascii "glBindAttribLocation\0"
LC149:
	.ascii "glCompileShader\0"
LC150:
	.ascii "glCreateProgram\0"
LC151:
	.ascii "glCreateShader\0"
LC152:
	.ascii "glDeleteProgram\0"
LC153:
	.ascii "glDeleteShader\0"
LC154:
	.ascii "glDetachShader\0"
LC155:
	.ascii "glDisableVertexAttribArray\0"
LC156:
	.ascii "glEnableVertexAttribArray\0"
LC157:
	.ascii "glGetActiveAttrib\0"
LC158:
	.ascii "glGetActiveUniform\0"
LC159:
	.ascii "glGetAttachedShaders\0"
LC160:
	.ascii "glGetAttribLocation\0"
LC161:
	.ascii "glGetProgramiv\0"
LC162:
	.ascii "glGetProgramInfoLog\0"
LC163:
	.ascii "glGetShaderiv\0"
LC164:
	.ascii "glGetShaderInfoLog\0"
LC165:
	.ascii "glGetShaderSource\0"
LC166:
	.ascii "glGetUniformLocation\0"
LC167:
	.ascii "glGetUniformfv\0"
LC168:
	.ascii "glGetUniformiv\0"
LC169:
	.ascii "glGetVertexAttribdv\0"
LC170:
	.ascii "glGetVertexAttribfv\0"
LC171:
	.ascii "glGetVertexAttribiv\0"
LC172:
	.ascii "glGetVertexAttribPointerv\0"
LC173:
	.ascii "glIsProgram\0"
LC174:
	.ascii "glIsShader\0"
LC175:
	.ascii "glLinkProgram\0"
LC176:
	.ascii "glShaderSource\0"
LC177:
	.ascii "glUseProgram\0"
LC178:
	.ascii "glUniform1f\0"
LC179:
	.ascii "glUniform2f\0"
LC180:
	.ascii "glUniform3f\0"
LC181:
	.ascii "glUniform4f\0"
LC182:
	.ascii "glUniform1i\0"
LC183:
	.ascii "glUniform2i\0"
LC184:
	.ascii "glUniform3i\0"
LC185:
	.ascii "glUniform4i\0"
LC186:
	.ascii "glUniform1fv\0"
LC187:
	.ascii "glUniform2fv\0"
LC188:
	.ascii "glUniform3fv\0"
LC189:
	.ascii "glUniform4fv\0"
LC190:
	.ascii "glUniform1iv\0"
LC191:
	.ascii "glUniform2iv\0"
LC192:
	.ascii "glUniform3iv\0"
LC193:
	.ascii "glUniform4iv\0"
LC194:
	.ascii "glUniformMatrix2fv\0"
LC195:
	.ascii "glUniformMatrix3fv\0"
LC196:
	.ascii "glUniformMatrix4fv\0"
LC197:
	.ascii "glValidateProgram\0"
LC198:
	.ascii "glVertexAttrib1d\0"
LC199:
	.ascii "glVertexAttrib1dv\0"
LC200:
	.ascii "glVertexAttrib1f\0"
LC201:
	.ascii "glVertexAttrib1fv\0"
LC202:
	.ascii "glVertexAttrib1s\0"
LC203:
	.ascii "glVertexAttrib1sv\0"
LC204:
	.ascii "glVertexAttrib2d\0"
LC205:
	.ascii "glVertexAttrib2dv\0"
LC206:
	.ascii "glVertexAttrib2f\0"
LC207:
	.ascii "glVertexAttrib2fv\0"
LC208:
	.ascii "glVertexAttrib2s\0"
LC209:
	.ascii "glVertexAttrib2sv\0"
LC210:
	.ascii "glVertexAttrib3d\0"
LC211:
	.ascii "glVertexAttrib3dv\0"
LC212:
	.ascii "glVertexAttrib3f\0"
LC213:
	.ascii "glVertexAttrib3fv\0"
LC214:
	.ascii "glVertexAttrib3s\0"
LC215:
	.ascii "glVertexAttrib3sv\0"
LC216:
	.ascii "glVertexAttrib4Nbv\0"
LC217:
	.ascii "glVertexAttrib4Niv\0"
LC218:
	.ascii "glVertexAttrib4Nsv\0"
LC219:
	.ascii "glVertexAttrib4Nub\0"
LC220:
	.ascii "glVertexAttrib4Nubv\0"
LC221:
	.ascii "glVertexAttrib4Nuiv\0"
LC222:
	.ascii "glVertexAttrib4Nusv\0"
LC223:
	.ascii "glVertexAttrib4bv\0"
LC224:
	.ascii "glVertexAttrib4d\0"
LC225:
	.ascii "glVertexAttrib4dv\0"
LC226:
	.ascii "glVertexAttrib4f\0"
LC227:
	.ascii "glVertexAttrib4fv\0"
LC228:
	.ascii "glVertexAttrib4iv\0"
LC229:
	.ascii "glVertexAttrib4s\0"
LC230:
	.ascii "glVertexAttrib4sv\0"
LC231:
	.ascii "glVertexAttrib4ubv\0"
LC232:
	.ascii "glVertexAttrib4uiv\0"
LC233:
	.ascii "glVertexAttrib4usv\0"
LC234:
	.ascii "glVertexAttribPointer\0"
	.text
	.p2align 4
	.globl	__ZL19load_GL_VERSION_2_0PFPvPKcE.constprop.0
	.def	__ZL19load_GL_VERSION_2_0PFPvPKcE.constprop.0;	.scl	2;	.type	32;	.endef
__ZL19load_GL_VERSION_2_0PFPvPKcE.constprop.0:
LFB10:
	.cfi_startproc
	movl	_GLAD_GL_VERSION_2_0, %eax
	testl	%eax, %eax
	je	L62
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	$LC142, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC143, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC144, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC145, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC146, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC147, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC148, (%esp)
	movl	%eax, _glad_glAttachShader
	call	_SDL_GL_GetProcAddress
	movl	$LC149, (%esp)
	movl	%eax, _glad_glBindAttribLocation
	call	_SDL_GL_GetProcAddress
	movl	$LC150, (%esp)
	movl	%eax, _glad_glCompileShader
	call	_SDL_GL_GetProcAddress
	movl	$LC151, (%esp)
	movl	%eax, _glad_glCreateProgram
	call	_SDL_GL_GetProcAddress
	movl	$LC152, (%esp)
	movl	%eax, _glad_glCreateShader
	call	_SDL_GL_GetProcAddress
	movl	$LC153, (%esp)
	movl	%eax, _glad_glDeleteProgram
	call	_SDL_GL_GetProcAddress
	movl	$LC154, (%esp)
	movl	%eax, _glad_glDeleteShader
	call	_SDL_GL_GetProcAddress
	movl	$LC155, (%esp)
	movl	%eax, _glad_glDetachShader
	call	_SDL_GL_GetProcAddress
	movl	$LC156, (%esp)
	movl	%eax, _glad_glDisableVertexAttribArray
	call	_SDL_GL_GetProcAddress
	movl	$LC157, (%esp)
	movl	%eax, _glad_glEnableVertexAttribArray
	call	_SDL_GL_GetProcAddress
	movl	$LC158, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC159, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC160, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC161, (%esp)
	movl	%eax, _glad_glGetAttribLocation
	call	_SDL_GL_GetProcAddress
	movl	$LC162, (%esp)
	movl	%eax, _glad_glGetProgramiv
	call	_SDL_GL_GetProcAddress
	movl	$LC163, (%esp)
	movl	%eax, _glad_glGetProgramInfoLog
	call	_SDL_GL_GetProcAddress
	movl	$LC164, (%esp)
	movl	%eax, _glad_glGetShaderiv
	call	_SDL_GL_GetProcAddress
	movl	$LC165, (%esp)
	movl	%eax, _glad_glGetShaderInfoLog
	call	_SDL_GL_GetProcAddress
	movl	$LC166, (%esp)
	movl	%eax, _glad_glGetShaderSource
	call	_SDL_GL_GetProcAddress
	movl	$LC167, (%esp)
	movl	%eax, _glad_glGetUniformLocation
	call	_SDL_GL_GetProcAddress
	movl	$LC168, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC169, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC170, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC171, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC172, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC173, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC174, (%esp)
	movl	%eax, _glad_glIsProgram
	call	_SDL_GL_GetProcAddress
	movl	$LC175, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC176, (%esp)
	movl	%eax, _glad_glLinkProgram
	call	_SDL_GL_GetProcAddress
	movl	$LC177, (%esp)
	movl	%eax, _glad_glShaderSource
	call	_SDL_GL_GetProcAddress
	movl	$LC178, (%esp)
	movl	%eax, _glad_glUseProgram
	call	_SDL_GL_GetProcAddress
	movl	$LC179, (%esp)
	movl	%eax, _glad_glUniform1f
	call	_SDL_GL_GetProcAddress
	movl	$LC180, (%esp)
	movl	%eax, _glad_glUniform2f
	call	_SDL_GL_GetProcAddress
	movl	$LC181, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC182, (%esp)
	movl	%eax, _glad_glUniform4f
	call	_SDL_GL_GetProcAddress
	movl	$LC183, (%esp)
	movl	%eax, _glad_glUniform1i
	call	_SDL_GL_GetProcAddress
	movl	$LC184, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC185, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC186, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC187, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC188, (%esp)
	movl	%eax, _glad_glUniform2fv
	call	_SDL_GL_GetProcAddress
	movl	$LC189, (%esp)
	movl	%eax, _glad_glUniform3fv
	call	_SDL_GL_GetProcAddress
	movl	$LC190, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC191, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC192, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC193, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC194, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC195, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC196, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC197, (%esp)
	movl	%eax, _glad_glUniformMatrix4fv
	call	_SDL_GL_GetProcAddress
	movl	$LC198, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC199, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC200, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC201, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC202, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC203, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC204, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC205, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC206, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC207, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC208, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC209, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC210, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC211, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC212, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC213, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC214, (%esp)
	movl	%eax, _glad_glVertexAttrib3fv
	call	_SDL_GL_GetProcAddress
	movl	$LC215, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC216, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC217, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC218, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC219, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC220, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC221, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC222, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC223, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC224, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC225, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC226, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC227, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC228, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC229, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC230, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC231, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC232, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC233, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC234, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glVertexAttribPointer
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L62:
	ret
	.cfi_endproc
LFE10:
	.section .rdata,"dr"
LC235:
	.ascii "glColorMaski\0"
LC236:
	.ascii "glGetBooleani_v\0"
LC237:
	.ascii "glGetIntegeri_v\0"
LC238:
	.ascii "glEnablei\0"
LC239:
	.ascii "glDisablei\0"
LC240:
	.ascii "glIsEnabledi\0"
LC241:
	.ascii "glBeginTransformFeedback\0"
LC242:
	.ascii "glEndTransformFeedback\0"
LC243:
	.ascii "glBindBufferRange\0"
LC244:
	.ascii "glBindBufferBase\0"
LC245:
	.ascii "glTransformFeedbackVaryings\0"
LC246:
	.ascii "glGetTransformFeedbackVarying\0"
LC247:
	.ascii "glClampColor\0"
LC248:
	.ascii "glBeginConditionalRender\0"
LC249:
	.ascii "glEndConditionalRender\0"
LC250:
	.ascii "glVertexAttribIPointer\0"
LC251:
	.ascii "glGetVertexAttribIiv\0"
LC252:
	.ascii "glGetVertexAttribIuiv\0"
LC253:
	.ascii "glVertexAttribI1i\0"
LC254:
	.ascii "glVertexAttribI2i\0"
LC255:
	.ascii "glVertexAttribI3i\0"
LC256:
	.ascii "glVertexAttribI4i\0"
LC257:
	.ascii "glVertexAttribI1ui\0"
LC258:
	.ascii "glVertexAttribI2ui\0"
LC259:
	.ascii "glVertexAttribI3ui\0"
LC260:
	.ascii "glVertexAttribI4ui\0"
LC261:
	.ascii "glVertexAttribI1iv\0"
LC262:
	.ascii "glVertexAttribI2iv\0"
LC263:
	.ascii "glVertexAttribI3iv\0"
LC264:
	.ascii "glVertexAttribI4iv\0"
LC265:
	.ascii "glVertexAttribI1uiv\0"
LC266:
	.ascii "glVertexAttribI2uiv\0"
LC267:
	.ascii "glVertexAttribI3uiv\0"
LC268:
	.ascii "glVertexAttribI4uiv\0"
LC269:
	.ascii "glVertexAttribI4bv\0"
LC270:
	.ascii "glVertexAttribI4sv\0"
LC271:
	.ascii "glVertexAttribI4ubv\0"
LC272:
	.ascii "glVertexAttribI4usv\0"
LC273:
	.ascii "glGetUniformuiv\0"
LC274:
	.ascii "glBindFragDataLocation\0"
LC275:
	.ascii "glGetFragDataLocation\0"
LC276:
	.ascii "glUniform1ui\0"
LC277:
	.ascii "glUniform2ui\0"
LC278:
	.ascii "glUniform3ui\0"
LC279:
	.ascii "glUniform4ui\0"
LC280:
	.ascii "glUniform1uiv\0"
LC281:
	.ascii "glUniform2uiv\0"
LC282:
	.ascii "glUniform3uiv\0"
LC283:
	.ascii "glUniform4uiv\0"
LC284:
	.ascii "glTexParameterIiv\0"
LC285:
	.ascii "glTexParameterIuiv\0"
LC286:
	.ascii "glGetTexParameterIiv\0"
LC287:
	.ascii "glGetTexParameterIuiv\0"
LC288:
	.ascii "glClearBufferiv\0"
LC289:
	.ascii "glClearBufferuiv\0"
LC290:
	.ascii "glClearBufferfv\0"
LC291:
	.ascii "glClearBufferfi\0"
LC292:
	.ascii "glGetStringi\0"
LC293:
	.ascii "glIsRenderbuffer\0"
LC294:
	.ascii "glBindRenderbuffer\0"
LC295:
	.ascii "glDeleteRenderbuffers\0"
LC296:
	.ascii "glGenRenderbuffers\0"
LC297:
	.ascii "glRenderbufferStorage\0"
LC298:
	.ascii "glGetRenderbufferParameteriv\0"
LC299:
	.ascii "glIsFramebuffer\0"
LC300:
	.ascii "glBindFramebuffer\0"
LC301:
	.ascii "glDeleteFramebuffers\0"
LC302:
	.ascii "glGenFramebuffers\0"
LC303:
	.ascii "glCheckFramebufferStatus\0"
LC304:
	.ascii "glFramebufferTexture1D\0"
LC305:
	.ascii "glFramebufferTexture2D\0"
LC306:
	.ascii "glFramebufferTexture3D\0"
LC307:
	.ascii "glFramebufferRenderbuffer\0"
	.align 4
LC308:
	.ascii "glGetFramebufferAttachmentParameteriv\0"
LC309:
	.ascii "glGenerateMipmap\0"
LC310:
	.ascii "glBlitFramebuffer\0"
	.align 4
LC311:
	.ascii "glRenderbufferStorageMultisample\0"
LC312:
	.ascii "glFramebufferTextureLayer\0"
LC313:
	.ascii "glMapBufferRange\0"
LC314:
	.ascii "glFlushMappedBufferRange\0"
LC315:
	.ascii "glBindVertexArray\0"
LC316:
	.ascii "glDeleteVertexArrays\0"
LC317:
	.ascii "glGenVertexArrays\0"
LC318:
	.ascii "glIsVertexArray\0"
	.text
	.p2align 4
	.globl	__ZL19load_GL_VERSION_3_0PFPvPKcE.constprop.0
	.def	__ZL19load_GL_VERSION_3_0PFPvPKcE.constprop.0;	.scl	2;	.type	32;	.endef
__ZL19load_GL_VERSION_3_0PFPvPKcE.constprop.0:
LFB12:
	.cfi_startproc
	movl	_GLAD_GL_VERSION_3_0, %eax
	testl	%eax, %eax
	je	L68
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	$LC235, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC236, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC237, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC238, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC239, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC240, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC241, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC242, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC243, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC244, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC245, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC246, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC247, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC248, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC249, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC250, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC251, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC252, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC253, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC254, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC255, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC256, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC257, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC258, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC259, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC260, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC261, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC262, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC263, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC264, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC265, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC266, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC267, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC268, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC269, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC270, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC271, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC272, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC273, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC274, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC275, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC276, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC277, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC278, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC279, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC280, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC281, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC282, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC283, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC284, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC285, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC286, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC287, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC288, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC289, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC290, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC291, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC292, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC293, (%esp)
	movl	%eax, _glad_glGetStringi
	call	_SDL_GL_GetProcAddress
	movl	$LC294, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC295, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC296, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC297, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC298, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC299, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC300, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC301, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC302, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC303, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC304, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC305, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC306, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC307, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC308, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC309, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC310, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC311, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC312, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC313, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC314, (%esp)
	movl	%eax, _glad_glMapBufferRange
	call	_SDL_GL_GetProcAddress
	movl	$LC315, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC316, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC317, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC318, (%esp)
	call	_SDL_GL_GetProcAddress
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L68:
	ret
	.cfi_endproc
LFE12:
	.section .rdata,"dr"
LC319:
	.ascii "glGetGraphicsResetStatusARB\0"
LC320:
	.ascii "glGetnTexImageARB\0"
LC321:
	.ascii "glReadnPixelsARB\0"
LC322:
	.ascii "glGetnCompressedTexImageARB\0"
LC323:
	.ascii "glGetnUniformfvARB\0"
LC324:
	.ascii "glGetnUniformivARB\0"
LC325:
	.ascii "glGetnUniformuivARB\0"
LC326:
	.ascii "glGetnUniformdvARB\0"
LC327:
	.ascii "glGetnMapdvARB\0"
LC328:
	.ascii "glGetnMapfvARB\0"
LC329:
	.ascii "glGetnMapivARB\0"
LC330:
	.ascii "glGetnPixelMapfvARB\0"
LC331:
	.ascii "glGetnPixelMapuivARB\0"
LC332:
	.ascii "glGetnPixelMapusvARB\0"
LC333:
	.ascii "glGetnPolygonStippleARB\0"
LC334:
	.ascii "glGetnColorTableARB\0"
LC335:
	.ascii "glGetnConvolutionFilterARB\0"
LC336:
	.ascii "glGetnSeparableFilterARB\0"
LC337:
	.ascii "glGetnHistogramARB\0"
LC338:
	.ascii "glGetnMinmaxARB\0"
	.text
	.p2align 4
	.globl	__ZL22load_GL_ARB_robustnessPFPvPKcE.constprop.0
	.def	__ZL22load_GL_ARB_robustnessPFPvPKcE.constprop.0;	.scl	2;	.type	32;	.endef
__ZL22load_GL_ARB_robustnessPFPvPKcE.constprop.0:
LFB14:
	.cfi_startproc
	movl	_GLAD_GL_ARB_robustness, %eax
	testl	%eax, %eax
	je	L74
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	$LC319, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC320, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC321, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC322, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC323, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC324, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC325, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC326, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC327, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC328, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC329, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC330, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC331, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC332, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC333, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC334, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC335, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC336, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC337, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC338, (%esp)
	call	_SDL_GL_GetProcAddress
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L74:
	ret
	.cfi_endproc
LFE14:
	.section .rdata,"dr"
LC339:
	.ascii "GL_ARB_buffer_storage\0"
LC340:
	.ascii "GL_ARB_clip_control\0"
LC341:
	.ascii "GL_ARB_debug_output\0"
LC342:
	.ascii "GL_ARB_depth_clamp\0"
LC343:
	.ascii "GL_ARB_map_buffer_range\0"
LC344:
	.ascii "GL_ARB_occlusion_query2\0"
LC345:
	.ascii "GL_ARB_robustness\0"
LC346:
	.ascii "GL_ARB_sampler_objects\0"
LC347:
	.ascii "GL_ARB_shader_texture_lod\0"
LC348:
	.ascii "GL_ARB_sync\0"
LC349:
	.ascii "GL_ARB_texture_rectangle\0"
LC350:
	.ascii "GL_ARB_timer_query\0"
LC351:
	.ascii "GL_ARB_vertex_array_object\0"
LC352:
	.ascii "GL_EXT_fog_coord\0"
LC353:
	.ascii "GL_EXT_framebuffer_object\0"
	.align 4
LC354:
	.ascii "GL_EXT_texture_compression_s3tc\0"
	.align 4
LC355:
	.ascii "GL_EXT_texture_filter_anisotropic\0"
LC356:
	.ascii "GL_KHR_debug\0"
LC357:
	.ascii "GL_KHR_robustness\0"
LC358:
	.ascii "GL_NV_fog_distance\0"
LC359:
	.ascii "GL_NV_multisample_filter_hint\0"
LC360:
	.ascii "GL_SGIS_fog_function\0"
LC361:
	.ascii "GL_SGIX_fog_offset\0"
	.text
	.p2align 4
	.globl	__ZL17find_extensionsGLv.lto_priv.0
	.def	__ZL17find_extensionsGLv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL17find_extensionsGLv.lto_priv.0:
LFB15:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	cmpl	$2, __ZL16max_loaded_major
	jg	L78
	movl	%esi, 16(%esp)
	movl	$7939, (%esp)
	.cfi_offset 6, -16
	call	*_glad_glGetString
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, __ZL4exts
L79:
	movl	$LC339, %eax
	call	__ZL7has_extPKc
	movl	%eax, _GLAD_GL_ARB_buffer_storage
	movl	$LC340, %eax
	call	__ZL7has_extPKc
	movl	%eax, _GLAD_GL_ARB_clip_control
	movl	$LC341, %eax
	call	__ZL7has_extPKc
	movl	%eax, _GLAD_GL_ARB_debug_output
	movl	$LC342, %eax
	call	__ZL7has_extPKc
	movl	$LC343, %eax
	call	__ZL7has_extPKc
	movl	%eax, _GLAD_GL_ARB_map_buffer_range
	movl	$LC344, %eax
	call	__ZL7has_extPKc
	movl	$LC345, %eax
	call	__ZL7has_extPKc
	movl	%eax, _GLAD_GL_ARB_robustness
	movl	$LC346, %eax
	call	__ZL7has_extPKc
	movl	%eax, _GLAD_GL_ARB_sampler_objects
	movl	$LC347, %eax
	call	__ZL7has_extPKc
	movl	$LC348, %eax
	call	__ZL7has_extPKc
	movl	%eax, _GLAD_GL_ARB_sync
	movl	$LC349, %eax
	call	__ZL7has_extPKc
	movl	$LC350, %eax
	call	__ZL7has_extPKc
	movl	%eax, _GLAD_GL_ARB_timer_query
	movl	$LC351, %eax
	call	__ZL7has_extPKc
	movl	%eax, _GLAD_GL_ARB_vertex_array_object
	movl	$LC352, %eax
	call	__ZL7has_extPKc
	movl	%eax, _GLAD_GL_EXT_fog_coord
	movl	$LC353, %eax
	call	__ZL7has_extPKc
	movl	%eax, _GLAD_GL_EXT_framebuffer_object
	movl	$LC354, %eax
	call	__ZL7has_extPKc
	movl	$LC355, %eax
	call	__ZL7has_extPKc
	movl	$LC356, %eax
	call	__ZL7has_extPKc
	movl	%eax, _GLAD_GL_KHR_debug
	movl	$LC357, %eax
	call	__ZL7has_extPKc
	movl	%eax, _GLAD_GL_KHR_robustness
	movl	$LC358, %eax
	call	__ZL7has_extPKc
	movl	$LC359, %eax
	call	__ZL7has_extPKc
	movl	$LC360, %eax
	call	__ZL7has_extPKc
	movl	%eax, _GLAD_GL_SGIS_fog_function
	movl	$LC361, %eax
	call	__ZL7has_extPKc
	movl	__ZL6exts_i, %esi
	testl	%esi, %esi
	je	L87
	movl	__ZL10num_exts_i, %eax
	testl	%eax, %eax
	jle	L88
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L89:
	movl	(%esi,%ebx,4), %eax
	addl	$1, %ebx
	movl	%eax, (%esp)
	call	_free
	cmpl	__ZL10num_exts_i, %ebx
	jl	L89
	movl	12(%esp), %ebx
	.cfi_restore 3
L88:
	movl	%esi, (%esp)
	call	_free
	movl	$0, __ZL6exts_i
L87:
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	$1, %eax
L77:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L78:
	.cfi_restore_state
	movl	$0, __ZL10num_exts_i
	movl	$__ZL10num_exts_i, 4(%esp)
	movl	$33309, (%esp)
	call	*_glad_glGetIntegerv
	.cfi_def_cfa_offset 24
	movl	__ZL10num_exts_i, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	testl	%eax, %eax
	jg	L80
	movl	__ZL6exts_i, %edx
	testl	%edx, %edx
	je	L81
	movl	%esi, 16(%esp)
	testl	%eax, %eax
	.cfi_offset 6, -16
	je	L79
L83:
	movl	%edi, 20(%esp)
	movl	%ebp, 24(%esp)
	movl	%ebx, 12(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L86:
	movl	%ebx, 4(%esp)
	movl	$7939, (%esp)
	call	*_glad_glGetStringi
	.cfi_def_cfa_offset 24
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, %ebp
	movl	%eax, (%esp)
	call	_strlen
	leal	1(%eax), %esi
	movl	%esi, (%esp)
	call	_malloc
	movl	%eax, %edi
	testl	%eax, %eax
	je	L85
	movl	%esi, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
L85:
	movl	__ZL6exts_i, %eax
	movl	%edi, (%eax,%ebx,4)
	addl	$1, %ebx
	cmpl	__ZL10num_exts_i, %ebx
	jb	L86
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	20(%esp), %edi
	.cfi_restore 7
	movl	24(%esp), %ebp
	.cfi_restore 5
	jmp	L79
	.p2align 4,,10
	.p2align 3
L80:
	.cfi_restore 6
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, __ZL6exts_i
	testl	%eax, %eax
	je	L81
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	jmp	L83
	.p2align 4,,10
	.p2align 3
L81:
	.cfi_restore 6
	xorl	%eax, %eax
	jmp	L77
	.cfi_endproc
LFE15:
	.section .rdata,"dr"
LC362:
	.ascii "OpenGL ES-CM \0"
LC363:
	.ascii "OpenGL ES-CL \0"
LC364:
	.ascii "OpenGL ES \0"
LC365:
	.ascii "%d.%d\0"
	.text
	.p2align 4
	.globl	__ZL11find_coreGLv.lto_priv.0
	.def	__ZL11find_coreGLv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL11find_coreGLv.lto_priv.0:
LFB19:
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
	subl	$52, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	$LC364, -44(%ebp)
	movss	-44(%ebp), %xmm1
	movss	LC366, %xmm0
	movl	$0, -20(%ebp)
	unpcklps	%xmm1, %xmm0
	movlps	%xmm0, -28(%ebp)
	movl	$7938, (%esp)
	call	*_glad_glGetString
	subl	$4, %esp
	movl	%eax, -44(%ebp)
	testl	%eax, %eax
	je	L104
	leal	-32(%ebp), %esi
	movl	$13, %edi
	movl	$LC362, %ebx
	jmp	L106
	.p2align 4,,10
	.p2align 3
L107:
	movl	4(%esi), %ebx
	addl	$4, %esi
	testl	%ebx, %ebx
	je	L108
	movl	%ebx, (%esp)
	call	_strlen
	movl	%eax, %edi
L106:
	movl	%edi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_strncmp
	testl	%eax, %eax
	jne	L107
	addl	%edi, -44(%ebp)
L108:
	leal	-40(%ebp), %eax
	movl	$LC365, 4(%esp)
	movl	%eax, 12(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	___mingw_sscanf
	movl	-36(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%eax, -44(%ebp)
	movss	-44(%ebp), %xmm0
	movl	%edx, -44(%ebp)
	movss	-44(%ebp), %xmm2
	movl	%eax, __ZL16max_loaded_major
	unpcklps	%xmm2, %xmm0
	movlps	%xmm0, _GLVersion
	cmpl	$1, %eax
	je	L141
	jle	L142
	movl	$1, _GLAD_GL_VERSION_1_0
	movl	$1, _GLAD_GL_VERSION_1_1
	movl	$1, _GLAD_GL_VERSION_1_2
	movl	$1, _GLAD_GL_VERSION_1_3
	movl	$1, _GLAD_GL_VERSION_1_4
	movl	$1, _GLAD_GL_VERSION_1_5
	cmpl	$2, %eax
	je	L143
	movl	$1, _GLAD_GL_VERSION_2_0
	movl	$1, _GLAD_GL_VERSION_2_1
	cmpl	$3, %eax
	je	L144
L126:
	movl	$1, _GLAD_GL_VERSION_3_0
	movl	$3, __ZL16max_loaded_major
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
L141:
	.cfi_restore_state
	testl	%edx, %edx
	js	L110
	movl	$1, _GLAD_GL_VERSION_1_0
	je	L145
	movl	$1, _GLAD_GL_VERSION_1_1
	cmpl	$1, %edx
	je	L113
	movl	$1, _GLAD_GL_VERSION_1_2
	cmpl	$2, %edx
	jne	L119
L120:
	movl	$0, _GLAD_GL_VERSION_1_3
L122:
	movl	$0, _GLAD_GL_VERSION_1_4
L115:
	movl	$0, _GLAD_GL_VERSION_1_5
	movl	$0, _GLAD_GL_VERSION_2_0
	movl	$0, _GLAD_GL_VERSION_2_1
L124:
	movl	$0, _GLAD_GL_VERSION_3_0
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
L142:
	.cfi_restore_state
	movl	$0, _GLAD_GL_VERSION_1_0
	movl	$0, _GLAD_GL_VERSION_1_1
	movl	$0, _GLAD_GL_VERSION_1_2
	movl	$0, _GLAD_GL_VERSION_1_3
	movl	$0, _GLAD_GL_VERSION_1_4
	jmp	L115
	.p2align 4,,10
	.p2align 3
L110:
	movl	$0, _GLAD_GL_VERSION_1_0
	movl	$0, _GLAD_GL_VERSION_1_1
L113:
	movl	$0, _GLAD_GL_VERSION_1_2
	jmp	L120
	.p2align 4,,10
	.p2align 3
L144:
	testl	%edx, %edx
	js	L124
	jmp	L126
	.p2align 4,,10
	.p2align 3
L119:
	movl	$1, _GLAD_GL_VERSION_1_3
	cmpl	$3, %edx
	je	L122
	movl	$1, _GLAD_GL_VERSION_1_4
	cmpl	$4, %edx
	je	L115
	movl	$1, _GLAD_GL_VERSION_1_5
	movl	$0, _GLAD_GL_VERSION_2_0
	movl	$0, _GLAD_GL_VERSION_2_1
	jmp	L124
	.p2align 4,,10
	.p2align 3
L143:
	testl	%edx, %edx
	jns	L146
	movl	$0, _GLAD_GL_VERSION_2_0
L125:
	movl	$0, _GLAD_GL_VERSION_2_1
	jmp	L124
	.p2align 4,,10
	.p2align 3
L145:
	movl	$0, _GLAD_GL_VERSION_1_1
	jmp	L113
L146:
	movl	$1, _GLAD_GL_VERSION_2_0
	je	L125
	movl	$1, _GLAD_GL_VERSION_2_1
	jmp	L124
	.cfi_endproc
LFE19:
	.section .rdata,"dr"
LC367:
	.ascii "glDebugMessageControl\0"
LC368:
	.ascii "glDebugMessageInsert\0"
LC369:
	.ascii "glDebugMessageCallback\0"
LC370:
	.ascii "glGetDebugMessageLog\0"
LC371:
	.ascii "glPushDebugGroup\0"
LC372:
	.ascii "glPopDebugGroup\0"
LC373:
	.ascii "glObjectLabel\0"
LC374:
	.ascii "glGetObjectLabel\0"
LC375:
	.ascii "glObjectPtrLabel\0"
LC376:
	.ascii "glGetObjectPtrLabel\0"
LC377:
	.ascii "glDebugMessageControlKHR\0"
LC378:
	.ascii "glDebugMessageInsertKHR\0"
LC379:
	.ascii "glDebugMessageCallbackKHR\0"
LC380:
	.ascii "glGetDebugMessageLogKHR\0"
LC381:
	.ascii "glPushDebugGroupKHR\0"
LC382:
	.ascii "glPopDebugGroupKHR\0"
LC383:
	.ascii "glObjectLabelKHR\0"
LC384:
	.ascii "glGetObjectLabelKHR\0"
LC385:
	.ascii "glObjectPtrLabelKHR\0"
LC386:
	.ascii "glGetObjectPtrLabelKHR\0"
LC387:
	.ascii "glGetPointervKHR\0"
	.text
	.p2align 4
	.globl	__ZL17load_GL_KHR_debugPFPvPKcE.part.0.constprop.0
	.def	__ZL17load_GL_KHR_debugPFPvPKcE.part.0.constprop.0;	.scl	2;	.type	32;	.endef
__ZL17load_GL_KHR_debugPFPvPKcE.part.0.constprop.0:
LFB21:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	$LC367, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC368, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC369, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC370, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC371, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC372, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC373, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC374, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC375, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC376, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC2, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC377, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC378, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC379, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC380, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC381, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC382, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC383, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC384, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC385, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC386, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC387, (%esp)
	call	_SDL_GL_GetProcAddress
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE21:
	.section .rdata,"dr"
LC390:
	.ascii "en\0"
LC391:
	.ascii "TERM\0"
LC392:
	.ascii "cygwin\0"
LC393:
	.ascii "linux\0"
LC394:
	.ascii "rxvt-unicode-256color\0"
LC395:
	.ascii "screen\0"
LC396:
	.ascii "screen-256color\0"
LC397:
	.ascii "screen.xterm-256color\0"
LC398:
	.ascii "tmux-256color\0"
LC399:
	.ascii "xterm\0"
LC400:
	.ascii "xterm-256color\0"
LC401:
	.ascii "xterm-termite\0"
LC402:
	.ascii "xterm-color\0"
LC405:
	.ascii "\0"
	.section	.text.startup,"x"
	.p2align 4
	.def	__sub_I_65535_0.0;	.scl	3;	.type	32;	.endef
__sub_I_65535_0.0:
LFB22:
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
	leal	-52(%ebp), %edi
	pushl	%ebx
	pushl	%ecx
	subl	$80, %esp
	.cfi_offset 3, -20
	.cfi_offset 1, -24
	movl	$0, _VoiceList+124
	movl	$___tcfVoiceList.lto_priv.0, (%esp)
	call	_atexit
	movl	$0, _VoicePool+124
	movl	$___tcfVoicePool.lto_priv.0, (%esp)
	call	_atexit
	movl	$-1, %eax
	movl	$0, _texcache
	movl	$0, _texcache+4
	movl	$0, _texcache+8
	movl	%eax, _texcache+12
	movl	%eax, _texcache+16
	movl	$___tcftexcache.lto_priv.0, (%esp)
	call	_atexit
	movl	$__ZL12tilefontList.lto_priv.0+24, __ZL12tilefontList.lto_priv.0
	movl	$1, __ZL12tilefontList.lto_priv.0+4
	movl	$0, __ZL12tilefontList.lto_priv.0+8
	movl	$0, __ZL12tilefontList.lto_priv.0+12
	movl	$0x3f800000, __ZL12tilefontList.lto_priv.0+16
	movl	$0, __ZL12tilefontList.lto_priv.0+20
	movl	$0, __ZL12tilefontList.lto_priv.0+24
	movl	$___tcf_ZL12tilefontList.lto_priv.0, (%esp)
	call	_atexit
	movl	$LC390, %eax
	call	_mi_strdup
	movl	$0, -56(%ebp)
	movl	-56(%ebp), %ebx
	movl	$0x3f800000, -60(%ebp)
	movl	-60(%ebp), %ecx
	movl	%eax, %edx
	leal	-76(%ebp), %eax
	movl	%edx, -48(%ebp)
	movl	%ecx, -28(%ebp)
	leal	-44(%ebp), %ecx
	movl	$0, -68(%ebp)
	movl	$0, -64(%ebp)
	movl	$0, -52(%ebp)
	movl	%edi, -76(%ebp)
	movl	$1, -72(%ebp)
	movl	$0, -44(%ebp)
	movl	$1, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	movl	%ebx, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	%eax, (%esp)
	call	__ZNSt10_HashtableI19LocaleCharWrapper_tSt4pairIKS0_S0_ESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_E22LocaleCharWrapper_hashNS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_assignIRKSF_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb0EEEEEEEEvOT_RT0_.isra.0
	movl	$__ZL10localeList.lto_priv.0+16, %ecx
	subl	$4, %esp
	movl	$__ZL10localeList.lto_priv.0+24, __ZL10localeList.lto_priv.0
	movl	$1, __ZL10localeList.lto_priv.0+4
	movl	$0, __ZL10localeList.lto_priv.0+8
	movl	$0, __ZL10localeList.lto_priv.0+12
	movl	$0x3f800000, __ZL10localeList.lto_priv.0+16
	movl	$0, __ZL10localeList.lto_priv.0+20
	movl	$0, __ZL10localeList.lto_priv.0+24
	movl	$0, (%esp)
	call	__ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEj
	subl	$4, %esp
	cmpl	%eax, __ZL10localeList.lto_priv.0+4
	jnb	L150
	movl	%eax, %ebx
	cmpl	$1, %eax
	je	L236
	call	__ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtSt13unordered_mapIjtSt4hashIjESt8equal_toIjESaIS2_IKjtEEEELb0EEEEE19_M_allocate_bucketsEj.isra.0
L152:
	movl	%eax, __ZL10localeList.lto_priv.0
	movl	%ebx, __ZL10localeList.lto_priv.0+4
L150:
	movl	__ZL10localeList.lto_priv.0+12, %eax
	movl	-48(%ebp), %esi
	movl	%eax, -80(%ebp)
	testl	%eax, %eax
	je	L153
	movzbl	(%esi), %eax
	testb	%al, %al
	je	L237
L154:
	leal	1(%esi), %edx
	movl	$-2128831035, %ebx
	.p2align 5
	.p2align 4
	.p2align 3
L158:
	xorl	%ebx, %eax
	addl	$1, %edx
	imull	$16777619, %eax, %ebx
	movzbl	-1(%edx), %eax
	testb	%al, %al
	jne	L158
	movl	__ZL10localeList.lto_priv.0+4, %ecx
	movl	%ebx, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	-80(%ebp), %eax
	movl	%ecx, -88(%ebp)
	movl	%edx, -84(%ebp)
	testl	%eax, %eax
	jne	L155
L156:
	movl	%fs:44, %edx
	movl	__tls_index, %eax
	movl	(%edx,%eax,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %esi
	movl	220(%esi), %edx
	movl	8(%edx), %eax
	testl	%eax, %eax
	je	L238
	movl	(%eax), %ecx
	addw	$1, 16(%edx)
	movl	%ecx, 8(%edx)
L165:
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	movl	%eax, -80(%ebp)
	movl	%ecx, (%eax)
	movl	-48(%ebp), %edx
	movl	%esi, 8(%eax)
	movl	%edx, 4(%eax)
	movl	-40(%ebp), %edx
	movl	%edx, 12(%eax)
	xorl	%edx, %edx
	movl	%edx, 16(%eax)
	movl	-32(%ebp), %edx
	movl	-24(%ebp), %ecx
	movl	%edx, 20(%eax)
	movl	-28(%ebp), %edx
	movl	%ecx, 28(%eax)
	xorl	%ecx, %ecx
	movl	%edx, 24(%eax)
	movl	%ecx, 32(%eax)
	leal	8(%eax), %ecx
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt10_HashtableI19LocaleCharWrapper_tSt4pairIKS0_S0_ESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_E22LocaleCharWrapper_hashNS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_assignIRKSF_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb0EEEEEEEEvOT_RT0_.isra.0
	movl	%ebx, %edx
	pushl	%esi
	movl	-80(%ebp), %ecx
	movl	-84(%ebp), %eax
	call	__ZNSt10_HashtableI19LocaleCharWrapper_tSt4pairIKS0_St13unordered_mapIS0_S0_22LocaleCharWrapper_hashSt8equal_toIS0_ESaIS1_IS2_S0_EEEESaISA_ENSt8__detail10_Select1stES6_S4_NSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEjjPNSC_10_Hash_nodeISA_Lb0EEEj.constprop.0
L157:
	movl	-36(%ebp), %ebx
	testl	%ebx, %ebx
	je	L167
	.p2align 4
	.p2align 3
L168:
	movl	%ebx, %eax
	movl	(%ebx), %ebx
	call	_mi_free
	testl	%ebx, %ebx
	jne	L168
L167:
	movl	-44(%ebp), %eax
	leal	-20(%ebp), %edx
	cmpl	%edx, %eax
	je	L169
	call	_mi_free
L169:
	movl	-68(%ebp), %ebx
	testl	%ebx, %ebx
	je	L170
	.p2align 4
	.p2align 3
L171:
	movl	%ebx, %eax
	movl	(%ebx), %ebx
	call	_mi_free
	testl	%ebx, %ebx
	jne	L171
L170:
	movl	-76(%ebp), %eax
	cmpl	%edi, %eax
	je	L172
	call	_mi_free
L172:
	movl	$___tcf_ZL10localeList.lto_priv.0, (%esp)
	call	_atexit
	movl	_r_persistentStreamBuffer, %eax
	testl	%eax, %eax
	movl	_r_drawpolyVertsBufferLength, %eax
	setne	__ZL22persistentStreamBuffer.lto_priv.0
	movl	%eax, __ZL25drawpolyVertsBufferLength.lto_priv.0
	call	__ZNSt6chrono3_V212steady_clock3nowEv
	movb	$0, __ZN6loguruL16s_argv0_filenameE.lto_priv.0+8
	movl	%edx, __ZN6loguruL12s_start_timeE.lto_priv.0+4
	movl	%eax, __ZN6loguruL12s_start_timeE.lto_priv.0
	movl	$__ZN6loguruL16s_argv0_filenameE.lto_priv.0+8, __ZN6loguruL16s_argv0_filenameE.lto_priv.0
	movl	$0, __ZN6loguruL16s_argv0_filenameE.lto_priv.0+4
	movl	$___tcf_ZN6loguruL16s_argv0_filenameE.lto_priv.0, (%esp)
	call	_atexit
	movb	$0, __ZN6loguruL11s_argumentsE.lto_priv.0+8
	movl	$__ZN6loguruL11s_argumentsE.lto_priv.0+8, __ZN6loguruL11s_argumentsE.lto_priv.0
	movl	$0, __ZN6loguruL11s_argumentsE.lto_priv.0+4
	movl	$___tcf_ZN6loguruL11s_argumentsE.lto_priv.0, (%esp)
	call	_atexit
	movl	$0, __ZN6loguruL11s_callbacksE.lto_priv.0
	movl	$0, __ZN6loguruL11s_callbacksE.lto_priv.0+4
	movl	$0, __ZN6loguruL11s_callbacksE.lto_priv.0+8
	movl	$___tcf_ZN6loguruL11s_callbacksE.lto_priv.0, (%esp)
	call	_atexit
	movl	$0, __ZN6loguruL21s_user_stack_cleanupsE.lto_priv.0
	movl	$0, __ZN6loguruL21s_user_stack_cleanupsE.lto_priv.0+4
	movl	$0, __ZN6loguruL21s_user_stack_cleanupsE.lto_priv.0+8
	movl	$___tcf_ZN6loguruL21s_user_stack_cleanupsE.lto_priv.0, (%esp)
	call	_atexit
	movl	$0, __ZN6loguruL16s_signal_optionsE.lto_priv.0
	movl	$0, __ZN6loguruL16s_signal_optionsE.lto_priv.0+4
	movl	$-11, (%esp)
	call	*__imp__GetStdHandle@4
	subl	$4, %esp
	movl	%eax, %ebx
	cmpl	$-1, %eax
	je	L173
	leal	-48(%ebp), %eax
	movl	$0, -48(%ebp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	*__imp__GetConsoleMode@8
	movl	-48(%ebp), %eax
	subl	$8, %esp
	orl	$4, %eax
	movl	%eax, -48(%ebp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	*__imp__SetConsoleMode@8
	subl	$8, %esp
	testl	%eax, %eax
	jne	L176
L173:
	movl	$LC391, (%esp)
	call	_getenv
	movl	%eax, %ebx
	xorl	%eax, %eax
	testl	%ebx, %ebx
	je	L175
	movl	$LC392, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L239
L176:
	movl	$1, %eax
L175:
	movups	LC403, %xmm0
	movb	%al, __ZN6loguruL20s_terminal_has_colorE.lto_priv.0
	movl	$0, _totalclock+8
	movups	%xmm0, __ZL8settings.lto_priv.0+4
	movups	LC404, %xmm0
	movl	$0, _totalclock+12
	movups	%xmm0, __ZL8settings.lto_priv.0+20
	movl	$0, _totalclock
	movl	$0, _totalclocklock+8
	movl	$0, _totalclocklock+12
	movl	$0, _totalclocklock
	movl	$_s_ZillaDie+16, _s_ZillaDie+12
	movl	$_s_ZillaDie+32, _s_ZillaDie+28
	movl	$_s_ZillaDie+48, _s_ZillaDie+44
	movl	$_s_ZillaDie+64, _s_ZillaDie+60
	movl	$_s_ZillaDie+80, _s_ZillaDie+76
	movl	$_s_ZillaDie+96, _s_ZillaDie+92
	movl	$_s_ZillaDie+112, _s_ZillaDie+108
	movl	$_s_ZillaDie+128, _s_ZillaDie+124
	movl	$_s_ZillaDie+128, _s_ZillaDie+140
	movl	$_s_BreakLight+16, _s_BreakLight+12
	movl	$_s_BreakLight+32, _s_BreakLight+28
	movl	$_s_BreakLight+48, _s_BreakLight+44
	movl	$_s_BreakLight+64, _s_BreakLight+60
	movl	$_s_BreakLight+80, _s_BreakLight+76
	movl	$_s_BreakLight+80, _s_BreakLight+92
	movl	$_s_BreakBarrel+16, _s_BreakBarrel+12
	movl	$_s_BreakBarrel+32, _s_BreakBarrel+28
	movl	$_s_BreakBarrel+48, _s_BreakBarrel+44
	movl	$_s_BreakBarrel+64, _s_BreakBarrel+60
	movl	$_s_BreakBarrel+80, _s_BreakBarrel+76
	movl	$_s_BreakBarrel+80, _s_BreakBarrel+92
	movl	$_s_BreakPedistal+16, _s_BreakPedistal+12
	movl	$_s_BreakPedistal+32, _s_BreakPedistal+28
	movl	$_s_BreakPedistal+48, _s_BreakPedistal+44
	movl	$_s_BreakPedistal+48, _s_BreakPedistal+60
	movl	$_s_BreakBottle1+16, _s_BreakBottle1+12
	movl	$_s_BreakBottle1+32, _s_BreakBottle1+28
	movl	$_s_BreakBottle1+48, _s_BreakBottle1+44
	movl	$_s_BreakBottle1+64, _s_BreakBottle1+60
	movl	$_s_BreakBottle1+80, _s_BreakBottle1+76
	movl	$_s_BreakBottle1+80, _s_BreakBottle1+92
	movl	$_s_BreakBottle2+16, _s_BreakBottle2+12
	movl	$_s_BreakBottle2+32, _s_BreakBottle2+28
	movl	$_s_BreakBottle2+48, _s_BreakBottle2+44
	movl	$_s_BreakBottle2+64, _s_BreakBottle2+60
	movl	$_s_BreakBottle2+80, _s_BreakBottle2+76
	movl	$_s_BreakBottle2+80, _s_BreakBottle2+92
	movl	$_s_Puff+16, _s_Puff+12
	movl	$_s_Puff+32, _s_Puff+28
	movl	$_s_Puff+48, _s_Puff+44
	movl	$_s_Puff+64, _s_Puff+60
	movl	$_s_Puff+80, _s_Puff+76
	movl	$_s_Puff+96, _s_Puff+92
	movl	$_s_LaserPuff+16, _s_LaserPuff+12
	movl	$_s_Tracer+16, _s_Tracer+12
	movl	$_s_Tracer+32, _s_Tracer+28
	movl	$_s_Tracer+48, _s_Tracer+44
	movl	$_s_Tracer+64, _s_Tracer+60
	movl	$_s_Tracer+80, _s_Tracer+76
	movl	$_s_EMP+16, _s_EMP+12
	movl	$_s_EMP+32, _s_EMP+28
	movl	$_s_EMPBurst+16, _s_EMPBurst+12
	movl	$_s_EMPBurst+32, _s_EMPBurst+28
	movl	$_s_EMPShrap+16, _s_EMPShrap+12
	movl	$_s_EMPShrap+32, _s_EMPShrap+28
	movl	$_s_VehicleSmoke+16, _s_VehicleSmoke+12
	movl	$_s_VehicleSmoke+32, _s_VehicleSmoke+28
	movl	$_s_VehicleSmoke+48, _s_VehicleSmoke+44
	movl	$_s_VehicleSmoke+64, _s_VehicleSmoke+60
	movl	$_s_VehicleSmoke+80, _s_VehicleSmoke+76
	movl	$_s_VehicleSmoke+96, _s_VehicleSmoke+92
	movl	$_s_VehicleSmoke+96, _s_VehicleSmoke+108
	movl	$_s_WaterSmoke+16, _s_WaterSmoke+12
	movl	$_s_WaterSmoke+32, _s_WaterSmoke+28
	movl	$_s_WaterSmoke+48, _s_WaterSmoke+44
	movl	$_s_WaterSmoke+64, _s_WaterSmoke+60
	movl	$_s_WaterSmoke+80, _s_WaterSmoke+76
	movl	$_s_WaterSmoke+96, _s_WaterSmoke+92
	movl	$_s_WaterSmoke+96, _s_WaterSmoke+108
	movl	$_s_UziSmoke+16, _s_UziSmoke+12
	movl	$_s_UziSmoke+32, _s_UziSmoke+28
	movl	$_s_UziSmoke+48, _s_UziSmoke+44
	movl	$_s_UziSmoke+64, _s_UziSmoke+60
	movl	$_s_ShotgunSmoke+16, _s_ShotgunSmoke+12
	movl	$_s_ShotgunSmoke+32, _s_ShotgunSmoke+28
	movl	$_s_ShotgunSmoke+48, _s_ShotgunSmoke+44
	movl	$_s_ShotgunSmoke+64, _s_ShotgunSmoke+60
	movl	$_s_UziSpark+16, _s_UziSpark+12
	movl	$_s_UziSpark+32, _s_UziSpark+28
	movl	$_s_UziSpark+48, _s_UziSpark+44
	movl	$_s_UziSpark+64, _s_UziSpark+60
	movl	$_s_UziSpark+80, _s_UziSpark+76
	movl	$_s_Splash+16, _s_Splash+12
	movl	$_s_Splash+32, _s_Splash+28
	movl	$_s_Splash+48, _s_Splash+44
	movl	$_s_Splash+64, _s_Splash+60
	movl	$_s_Splash+80, _s_Splash+76
	movl	$_s_Star+16, _s_Star+12
	movl	$_s_Star+32, _s_Star+28
	movl	$_s_Star+48, _s_Star+44
	movl	$_s_StarDown+16, _s_StarDown+12
	movl	$_s_StarDown+32, _s_StarDown+28
	movl	$_s_StarDown+48, _s_StarDown+44
	movl	$_s_LavaBoulder+16, _s_LavaBoulder+12
	movl	$_s_LavaBoulder+32, _s_LavaBoulder+28
	movl	$_s_LavaBoulder+48, _s_LavaBoulder+44
	movl	$_s_LavaBoulder+64, _s_LavaBoulder+60
	movl	$_s_LavaBoulder+80, _s_LavaBoulder+76
	movl	$_s_LavaBoulder+96, _s_LavaBoulder+92
	movl	$_s_LavaBoulder+112, _s_LavaBoulder+108
	movl	$_s_LavaShard+16, _s_LavaShard+12
	movl	$_s_LavaShard+32, _s_LavaShard+28
	movl	$_s_LavaShard+48, _s_LavaShard+44
	movl	$_s_LavaShard+64, _s_LavaShard+60
	movl	$_s_LavaShard+80, _s_LavaShard+76
	movl	$_s_LavaShard+96, _s_LavaShard+92
	movl	$_s_LavaShard+112, _s_LavaShard+108
	movl	$_s_VulcanBoulder+16, _s_VulcanBoulder+12
	movl	$_s_VulcanBoulder+32, _s_VulcanBoulder+28
	movl	$_s_VulcanBoulder+48, _s_VulcanBoulder+44
	movl	$_s_VulcanBoulder+64, _s_VulcanBoulder+60
	movl	$_s_VulcanBoulder+80, _s_VulcanBoulder+76
	movl	$_s_VulcanBoulder+96, _s_VulcanBoulder+92
	movl	$_s_VulcanBoulder+112, _s_VulcanBoulder+108
	movl	$_s_Mine+16, _s_Mine+12
	movl	$_s_MineSpark+16, _s_MineSpark+12
	movl	$_s_MineSpark+32, _s_MineSpark+28
	movl	$_s_MineSpark+48, _s_MineSpark+44
	movl	$_s_MineSpark+64, _s_MineSpark+60
	movl	$_s_MineSpark+80, _s_MineSpark+76
	movl	$_s_MeteorExp+16, _s_MeteorExp+12
	movl	$_s_MeteorExp+32, _s_MeteorExp+28
	movl	$_s_MeteorExp+48, _s_MeteorExp+44
	movl	$_s_MeteorExp+64, _s_MeteorExp+60
	movl	$_s_MeteorExp+80, _s_MeteorExp+76
	movl	$_s_MeteorExp+96, _s_MeteorExp+92
	movl	$_s_MeteorExp+96, _s_MeteorExp+108
	movl	$_s_MirvMeteorExp+16, _s_MirvMeteorExp+12
	movl	$_s_MirvMeteorExp+32, _s_MirvMeteorExp+28
	movl	$_s_MirvMeteorExp+48, _s_MirvMeteorExp+44
	movl	$_s_MirvMeteorExp+64, _s_MirvMeteorExp+60
	movl	$_s_MirvMeteorExp+80, _s_MirvMeteorExp+76
	movl	$_s_MirvMeteorExp+96, _s_MirvMeteorExp+92
	movl	$_s_MirvMeteorExp+96, _s_MirvMeteorExp+108
	movl	$_s_SerpMeteorExp+16, _s_SerpMeteorExp+12
	movl	$_s_SerpMeteorExp+32, _s_SerpMeteorExp+28
	movl	$_s_SerpMeteorExp+48, _s_SerpMeteorExp+44
	movl	$_s_SerpMeteorExp+64, _s_SerpMeteorExp+60
	movl	$_s_SerpMeteorExp+80, _s_SerpMeteorExp+76
	movl	$_s_SerpMeteorExp+96, _s_SerpMeteorExp+92
	movl	$_s_SerpMeteorExp+96, _s_SerpMeteorExp+108
	movl	$_s_BoltFatMan+16, _s_BoltFatMan+12
	movl	$_s_BoltFatMan+32, _s_BoltFatMan+28
	movl	$_s_BoltFatMan+48, _s_BoltFatMan+44
	movl	$_s_BoltShrapnel+16, _s_BoltShrapnel+12
	movl	$_s_BoltShrapnel+32, _s_BoltShrapnel+28
	movl	$_s_BoltShrapnel+48, _s_BoltShrapnel+44
	movl	$_s_CoolgFire+16, _s_CoolgFire+12
	movl	$_s_CoolgFire+32, _s_CoolgFire+28
	movl	$_s_CoolgFire+48, _s_CoolgFire+44
	movl	$_s_CoolgFireDone+16, _s_CoolgFireDone+12
	movl	$_s_CoolgFireDone+32, _s_CoolgFireDone+28
	movl	$_s_CoolgFireDone+48, _s_CoolgFireDone+44
	movl	$_s_CoolgFireDone+64, _s_CoolgFireDone+60
	movl	$_s_CoolgFireDone+80, _s_CoolgFireDone+76
	movl	$_s_CoolgFireDone+80, _s_CoolgFireDone+92
	movl	$_s_GoreFloorSplash+16, _s_GoreFloorSplash+12
	movl	$_s_GoreFloorSplash+32, _s_GoreFloorSplash+28
	movl	$_s_GoreFloorSplash+48, _s_GoreFloorSplash+44
	movl	$_s_GoreFloorSplash+64, _s_GoreFloorSplash+60
	movl	$_s_GoreFloorSplash+80, _s_GoreFloorSplash+76
	movl	$_s_GoreFloorSplash+96, _s_GoreFloorSplash+92
	movl	$_s_GoreFloorSplash+96, _s_GoreFloorSplash+108
	movl	$_s_GoreSplash+16, _s_GoreSplash+12
	movl	$_s_GoreSplash+32, _s_GoreSplash+28
	movl	$_s_GoreSplash+48, _s_GoreSplash+44
	movl	$_s_GoreSplash+64, _s_GoreSplash+60
	movl	$_s_GoreSplash+80, _s_GoreSplash+76
	movl	$_s_GoreSplash+96, _s_GoreSplash+92
	movl	$_s_GoreSplash+96, _s_GoreSplash+108
	movl	$_s_Plasma+16, _s_Plasma+12
	movl	$_s_Plasma+32, _s_Plasma+28
	movl	$_s_PlasmaFountain+16, _s_PlasmaFountain+12
	movl	$_s_PlasmaFountain+32, _s_PlasmaFountain+28
	movl	$_s_PlasmaFountain+48, _s_PlasmaFountain+44
	movl	$_s_PlasmaDrip+16, _s_PlasmaDrip+12
	movl	$_s_PlasmaDrip+32, _s_PlasmaDrip+28
	movl	$_s_PlasmaDrip+48, _s_PlasmaDrip+44
	movl	$_s_PlasmaDrip+64, _s_PlasmaDrip+60
	movl	$_s_PlasmaDrip+80, _s_PlasmaDrip+76
	movl	$_s_PlasmaDrip+96, _s_PlasmaDrip+92
	movl	$_s_PlasmaDrip+96, _s_PlasmaDrip+108
	movl	$_s_PlasmaDone+16, _s_PlasmaDone+12
	movl	$_s_PlasmaDone+32, _s_PlasmaDone+28
	movl	$_s_TeleportEffect+16, _s_TeleportEffect+12
	movl	$_s_TeleportEffect+32, _s_TeleportEffect+28
	movl	$_s_TeleportEffect+48, _s_TeleportEffect+44
	movl	$_s_TeleportEffect+64, _s_TeleportEffect+60
	movl	$_s_TeleportEffect+80, _s_TeleportEffect+76
	movl	$_s_TeleportEffect+96, _s_TeleportEffect+92
	movl	$_s_TeleportEffect+112, _s_TeleportEffect+108
	movl	$_s_TeleportEffect+128, _s_TeleportEffect+124
	movl	$_s_TeleportEffect+144, _s_TeleportEffect+140
	movl	$_s_TeleportEffect+160, _s_TeleportEffect+156
	movl	$_s_TeleportEffect+176, _s_TeleportEffect+172
	movl	$_s_TeleportEffect+192, _s_TeleportEffect+188
	movl	$_s_TeleportEffect+208, _s_TeleportEffect+204
	movl	$_s_TeleportEffect+224, _s_TeleportEffect+220
	movl	$_s_TeleportEffect+240, _s_TeleportEffect+236
	movl	$_s_TeleportEffect+256, _s_TeleportEffect+252
	movl	$_s_TeleportEffect+272, _s_TeleportEffect+268
	movl	$_s_TeleportEffect+288, _s_TeleportEffect+284
	movl	$_s_TeleportEffect+288, _s_TeleportEffect+300
	movl	$_s_TeleportEffect2+16, _s_TeleportEffect2+12
	movl	$_s_TeleportEffect2+32, _s_TeleportEffect2+28
	movl	$_s_TeleportEffect2+48, _s_TeleportEffect2+44
	movl	$_s_TeleportEffect2+64, _s_TeleportEffect2+60
	movl	$_s_TeleportEffect2+80, _s_TeleportEffect2+76
	movl	$_s_TeleportEffect2+96, _s_TeleportEffect2+92
	movl	$_s_TeleportEffect2+112, _s_TeleportEffect2+108
	movl	$_s_TeleportEffect2+128, _s_TeleportEffect2+124
	movl	$_s_TeleportEffect2+144, _s_TeleportEffect2+140
	movl	$_s_TeleportEffect2+160, _s_TeleportEffect2+156
	movl	$_s_TeleportEffect2+176, _s_TeleportEffect2+172
	movl	$_s_TeleportEffect2+192, _s_TeleportEffect2+188
	movl	$_s_TeleportEffect2+208, _s_TeleportEffect2+204
	movl	$_s_TeleportEffect2+224, _s_TeleportEffect2+220
	movl	$_s_TeleportEffect2+240, _s_TeleportEffect2+236
	movl	$_s_TeleportEffect2+256, _s_TeleportEffect2+252
	movl	$_s_TeleportEffect2+272, _s_TeleportEffect2+268
	movl	$_s_TeleportEffect2+288, _s_TeleportEffect2+284
	movl	$_s_TeleportEffect2+304, _s_TeleportEffect2+300
	movl	$_s_TeleportEffect2+304, _s_TeleportEffect2+316
	movl	$_s_Electro+16, _s_Electro+12
	movl	$_s_Electro+32, _s_Electro+28
	movl	$_s_Electro+48, _s_Electro+44
	movl	$_s_ElectroShrap+16, _s_ElectroShrap+12
	movl	$_s_ElectroShrap+32, _s_ElectroShrap+28
	movl	$_s_ElectroShrap+48, _s_ElectroShrap+44
	movl	$_s_GrenadeSmallExp+16, _s_GrenadeSmallExp+12
	movl	$_s_GrenadeSmallExp+32, _s_GrenadeSmallExp+28
	movl	$_s_GrenadeSmallExp+48, _s_GrenadeSmallExp+44
	movl	$_s_GrenadeSmallExp+64, _s_GrenadeSmallExp+60
	movl	$_s_GrenadeSmallExp+80, _s_GrenadeSmallExp+76
	movl	$_s_GrenadeSmallExp+96, _s_GrenadeSmallExp+92
	movl	$_s_GrenadeSmallExp+112, _s_GrenadeSmallExp+108
	movl	$_s_GrenadeSmallExp+128, _s_GrenadeSmallExp+124
	movl	$_s_GrenadeSmallExp+144, _s_GrenadeSmallExp+140
	movl	$_s_GrenadeSmallExp+160, _s_GrenadeSmallExp+156
	movl	$_s_GrenadeSmallExp+176, _s_GrenadeSmallExp+172
	movl	$_s_GrenadeSmallExp+192, _s_GrenadeSmallExp+188
	movl	$_s_GrenadeSmallExp+208, _s_GrenadeSmallExp+204
	movl	$_s_GrenadeSmallExp+224, _s_GrenadeSmallExp+220
	movl	$_s_GrenadeSmallExp+240, _s_GrenadeSmallExp+236
	movl	$_s_GrenadeSmallExp+256, _s_GrenadeSmallExp+252
	movl	$_s_GrenadeSmallExp+272, _s_GrenadeSmallExp+268
	movl	$_s_GrenadeSmallExp+288, _s_GrenadeSmallExp+284
	movl	$_s_GrenadeSmallExp+304, _s_GrenadeSmallExp+300
	movl	$_s_GrenadeSmallExp+320, _s_GrenadeSmallExp+316
	movl	$_s_GrenadeSmallExp+336, _s_GrenadeSmallExp+332
	movl	$_s_GrenadeSmallExp+352, _s_GrenadeSmallExp+348
	movl	$_s_GrenadeSmallExp+352, _s_GrenadeSmallExp+364
	movl	$_s_GrenadeExp+16, _s_GrenadeExp+12
	movl	$_s_GrenadeExp+32, _s_GrenadeExp+28
	movl	$_s_GrenadeExp+48, _s_GrenadeExp+44
	movl	$_s_GrenadeExp+64, _s_GrenadeExp+60
	movl	$_s_GrenadeExp+80, _s_GrenadeExp+76
	movl	$_s_GrenadeExp+96, _s_GrenadeExp+92
	movl	$_s_GrenadeExp+112, _s_GrenadeExp+108
	movl	$_s_GrenadeExp+128, _s_GrenadeExp+124
	movl	$_s_GrenadeExp+144, _s_GrenadeExp+140
	movl	$_s_GrenadeExp+160, _s_GrenadeExp+156
	movl	$_s_GrenadeExp+176, _s_GrenadeExp+172
	movl	$_s_GrenadeExp+192, _s_GrenadeExp+188
	movl	$_s_GrenadeExp+208, _s_GrenadeExp+204
	movl	$_s_GrenadeExp+224, _s_GrenadeExp+220
	movl	$_s_GrenadeExp+240, _s_GrenadeExp+236
	movl	$_s_GrenadeExp+256, _s_GrenadeExp+252
	movl	$_s_GrenadeExp+272, _s_GrenadeExp+268
	movl	$_s_GrenadeExp+288, _s_GrenadeExp+284
	movl	$_s_GrenadeExp+304, _s_GrenadeExp+300
	movl	$_s_GrenadeExp+320, _s_GrenadeExp+316
	movl	$_s_GrenadeExp+336, _s_GrenadeExp+332
	movl	$_s_GrenadeExp+352, _s_GrenadeExp+348
	movl	$_s_GrenadeExp+368, _s_GrenadeExp+364
	movl	$_s_GrenadeExp+384, _s_GrenadeExp+380
	movl	$_s_GrenadeExp+400, _s_GrenadeExp+396
	movl	$_s_GrenadeExp+400, _s_GrenadeExp+412
	movl	$_s_MineExp+16, _s_MineExp+12
	movl	$_s_MineExp+32, _s_MineExp+28
	movl	$_s_MineExp+48, _s_MineExp+44
	movl	$_s_MineExp+64, _s_MineExp+60
	movl	$_s_MineExp+80, _s_MineExp+76
	movl	$_s_MineExp+96, _s_MineExp+92
	movl	$_s_MineExp+112, _s_MineExp+108
	movl	$_s_MineExp+128, _s_MineExp+124
	movl	$_s_MineExp+144, _s_MineExp+140
	movl	$_s_MineExp+160, _s_MineExp+156
	movl	$_s_MineExp+176, _s_MineExp+172
	movl	$_s_MineExp+192, _s_MineExp+188
	movl	$_s_MineExp+208, _s_MineExp+204
	movl	$_s_MineExp+224, _s_MineExp+220
	movl	$_s_MineExp+240, _s_MineExp+236
	movl	$_s_MineExp+256, _s_MineExp+252
	movl	$_s_MineExp+272, _s_MineExp+268
	movl	$_s_MineExp+288, _s_MineExp+284
	movl	$_s_MineExp+304, _s_MineExp+300
	movl	$_s_MineExp+320, _s_MineExp+316
	movl	$_s_MineExp+336, _s_MineExp+332
	movl	$_s_MineExp+352, _s_MineExp+348
	movl	$_s_MineExp+368, _s_MineExp+364
	movl	$_s_MineExp+384, _s_MineExp+380
	movl	$_s_MineExp+384, _s_MineExp+396
	movl	$_s_BasicExp+16, _s_BasicExp+12
	movl	$_s_BasicExp+32, _s_BasicExp+28
	movl	$_s_BasicExp+48, _s_BasicExp+44
	movl	$_s_BasicExp+64, _s_BasicExp+60
	movl	$_s_BasicExp+80, _s_BasicExp+76
	movl	$_s_BasicExp+96, _s_BasicExp+92
	movl	$_s_BasicExp+112, _s_BasicExp+108
	movl	$_s_BasicExp+128, _s_BasicExp+124
	movl	$_s_BasicExp+144, _s_BasicExp+140
	movl	$_s_BasicExp+160, _s_BasicExp+156
	movl	$_s_BasicExp+176, _s_BasicExp+172
	movl	$_s_BasicExp+192, _s_BasicExp+188
	movl	$_s_BasicExp+208, _s_BasicExp+204
	movl	$_s_BasicExp+224, _s_BasicExp+220
	movl	$_s_BasicExp+240, _s_BasicExp+236
	movl	$_s_BasicExp+256, _s_BasicExp+252
	movl	$_s_BasicExp+272, _s_BasicExp+268
	movl	$_s_BasicExp+288, _s_BasicExp+284
	movl	$_s_BasicExp+304, _s_BasicExp+300
	movl	$_s_BasicExp+320, _s_BasicExp+316
	movl	$_s_MicroExp+16, _s_MicroExp+12
	movl	$_s_MicroExp+32, _s_MicroExp+28
	movl	$_s_MicroExp+48, _s_MicroExp+44
	movl	$_s_MicroExp+64, _s_MicroExp+60
	movl	$_s_MicroExp+80, _s_MicroExp+76
	movl	$_s_MicroExp+96, _s_MicroExp+92
	movl	$_s_MicroExp+112, _s_MicroExp+108
	movl	$_s_MicroExp+128, _s_MicroExp+124
	movl	$_s_MicroExp+144, _s_MicroExp+140
	movl	$_s_MicroExp+160, _s_MicroExp+156
	movl	$_s_MicroExp+176, _s_MicroExp+172
	movl	$_s_MicroExp+192, _s_MicroExp+188
	movl	$_s_MicroExp+208, _s_MicroExp+204
	movl	$_s_MicroExp+224, _s_MicroExp+220
	movl	$_s_MicroExp+240, _s_MicroExp+236
	movl	$_s_MicroExp+256, _s_MicroExp+252
	movl	$_s_MicroExp+272, _s_MicroExp+268
	movl	$_s_MicroExp+288, _s_MicroExp+284
	movl	$_s_MicroExp+304, _s_MicroExp+300
	movl	$_s_MicroExp+320, _s_MicroExp+316
	movl	$_s_MicroExp+336, _s_MicroExp+332
	movl	$_s_MicroExp+352, _s_MicroExp+348
	movl	$_s_MicroExp+352, _s_MicroExp+364
	movl	$_s_BigGunFlame+16, _s_BigGunFlame+12
	movl	$_s_BigGunFlame+32, _s_BigGunFlame+28
	movl	$_s_BigGunFlame+48, _s_BigGunFlame+44
	movl	$_s_BigGunFlame+64, _s_BigGunFlame+60
	movl	$_s_BigGunFlame+80, _s_BigGunFlame+76
	movl	$_s_BigGunFlame+96, _s_BigGunFlame+92
	movl	$_s_BigGunFlame+112, _s_BigGunFlame+108
	movl	$_s_BoltExp+16, _s_BoltExp+12
	movl	$_s_BoltExp+32, _s_BoltExp+28
	movl	$_s_BoltExp+48, _s_BoltExp+44
	movl	$_s_BoltExp+64, _s_BoltExp+60
	movl	$_s_BoltExp+80, _s_BoltExp+76
	movl	$_s_BoltExp+96, _s_BoltExp+92
	movl	$_s_BoltExp+112, _s_BoltExp+108
	movl	$_s_BoltExp+128, _s_BoltExp+124
	movl	$_s_BoltExp+144, _s_BoltExp+140
	movl	$_s_BoltExp+160, _s_BoltExp+156
	movl	$_s_BoltExp+176, _s_BoltExp+172
	movl	$_s_BoltExp+192, _s_BoltExp+188
	movl	$_s_BoltExp+208, _s_BoltExp+204
	movl	$_s_BoltExp+224, _s_BoltExp+220
	movl	$_s_BoltExp+240, _s_BoltExp+236
	movl	$_s_BoltExp+256, _s_BoltExp+252
	movl	$_s_BoltExp+272, _s_BoltExp+268
	movl	$_s_BoltExp+288, _s_BoltExp+284
	movl	$_s_BoltExp+304, _s_BoltExp+300
	movl	$_s_BoltExp+320, _s_BoltExp+316
	movl	$_s_BoltExp+336, _s_BoltExp+332
	movl	$_s_BoltExp+352, _s_BoltExp+348
	movl	$_s_BoltExp+368, _s_BoltExp+364
	movl	$_s_BoltExp+384, _s_BoltExp+380
	movl	$_s_TankShellExp+16, _s_TankShellExp+12
	movl	$_s_TankShellExp+32, _s_TankShellExp+28
	movl	$_s_TankShellExp+48, _s_TankShellExp+44
	movl	$_s_TankShellExp+64, _s_TankShellExp+60
	movl	$_s_TankShellExp+80, _s_TankShellExp+76
	movl	$_s_TankShellExp+96, _s_TankShellExp+92
	movl	$_s_TankShellExp+112, _s_TankShellExp+108
	movl	$_s_TankShellExp+128, _s_TankShellExp+124
	movl	$_s_TankShellExp+144, _s_TankShellExp+140
	movl	$_s_TankShellExp+160, _s_TankShellExp+156
	movl	$_s_TankShellExp+176, _s_TankShellExp+172
	movl	$_s_TankShellExp+192, _s_TankShellExp+188
	movl	$_s_TankShellExp+208, _s_TankShellExp+204
	movl	$_s_TankShellExp+224, _s_TankShellExp+220
	movl	$_s_TankShellExp+240, _s_TankShellExp+236
	movl	$_s_TankShellExp+256, _s_TankShellExp+252
	movl	$_s_TankShellExp+272, _s_TankShellExp+268
	movl	$_s_TankShellExp+288, _s_TankShellExp+284
	movl	$_s_TankShellExp+304, _s_TankShellExp+300
	movl	$_s_TankShellExp+320, _s_TankShellExp+316
	movl	$_s_TankShellExp+336, _s_TankShellExp+332
	movl	$_s_TankShellExp+352, _s_TankShellExp+348
	movl	$_s_TankShellExp+368, _s_TankShellExp+364
	movl	$_s_TankShellExp+384, _s_TankShellExp+380
	movl	$_s_TracerExp+16, _s_TracerExp+12
	movl	$_s_TracerExp+32, _s_TracerExp+28
	movl	$_s_TracerExp+48, _s_TracerExp+44
	movl	$_s_TracerExp+64, _s_TracerExp+60
	movl	$_s_TracerExp+80, _s_TracerExp+76
	movl	$_s_TracerExp+96, _s_TracerExp+92
	movl	$_s_TracerExp+112, _s_TracerExp+108
	movl	$_s_TracerExp+128, _s_TracerExp+124
	movl	$_s_TracerExp+144, _s_TracerExp+140
	movl	$_s_TracerExp+160, _s_TracerExp+156
	movl	$_s_TracerExp+176, _s_TracerExp+172
	movl	$_s_TracerExp+192, _s_TracerExp+188
	movl	$_s_TracerExp+208, _s_TracerExp+204
	movl	$_s_TracerExp+224, _s_TracerExp+220
	movl	$_s_TracerExp+240, _s_TracerExp+236
	movl	$_s_TracerExp+256, _s_TracerExp+252
	movl	$_s_TracerExp+272, _s_TracerExp+268
	movl	$_s_TracerExp+288, _s_TracerExp+284
	movl	$_s_TracerExp+304, _s_TracerExp+300
	movl	$_s_TracerExp+320, _s_TracerExp+316
	movl	$_s_TracerExp+336, _s_TracerExp+332
	movl	$_s_TracerExp+352, _s_TracerExp+348
	movl	$_s_TracerExp+368, _s_TracerExp+364
	movl	$_s_TracerExp+384, _s_TracerExp+380
	movl	$_s_SectorExp+16, _s_SectorExp+12
	movl	$_s_SectorExp+32, _s_SectorExp+28
	movl	$_s_SectorExp+48, _s_SectorExp+44
	movl	$_s_SectorExp+64, _s_SectorExp+60
	movl	$_s_SectorExp+80, _s_SectorExp+76
	movl	$_s_SectorExp+96, _s_SectorExp+92
	movl	$_s_SectorExp+112, _s_SectorExp+108
	movl	$_s_SectorExp+128, _s_SectorExp+124
	movl	$_s_SectorExp+144, _s_SectorExp+140
	movl	$_s_SectorExp+160, _s_SectorExp+156
	movl	$_s_SectorExp+176, _s_SectorExp+172
	movl	$_s_SectorExp+192, _s_SectorExp+188
	movl	$_s_SectorExp+208, _s_SectorExp+204
	movl	$_s_SectorExp+224, _s_SectorExp+220
	movl	$_s_SectorExp+240, _s_SectorExp+236
	movl	$_s_SectorExp+256, _s_SectorExp+252
	movl	$_s_SectorExp+272, _s_SectorExp+268
	movl	$_s_SectorExp+288, _s_SectorExp+284
	movl	$_s_SectorExp+304, _s_SectorExp+300
	movl	$_s_SectorExp+320, _s_SectorExp+316
	movl	$_s_SectorExp+336, _s_SectorExp+332
	movl	$_s_SectorExp+352, _s_SectorExp+348
	movl	$_s_SectorExp+368, _s_SectorExp+364
	movl	$_s_SectorExp+384, _s_SectorExp+380
	movl	$_s_FireballExp+16, _s_FireballExp+12
	movl	$_s_FireballExp+32, _s_FireballExp+28
	movl	$_s_FireballExp+48, _s_FireballExp+44
	movl	$_s_FireballExp+64, _s_FireballExp+60
	movl	$_s_FireballExp+80, _s_FireballExp+76
	movl	$_s_NapExp+16, _s_NapExp+12
	movl	$_s_NapExp+32, _s_NapExp+28
	movl	$_s_NapExp+48, _s_NapExp+44
	movl	$_s_NapExp+64, _s_NapExp+60
	movl	$_s_NapExp+80, _s_NapExp+76
	movl	$_s_NapExp+96, _s_NapExp+92
	movl	$_s_NapExp+112, _s_NapExp+108
	movl	$_s_NapExp+128, _s_NapExp+124
	movl	$_s_NapExp+144, _s_NapExp+140
	movl	$_s_NapExp+160, _s_NapExp+156
	movl	$_s_NapExp+176, _s_NapExp+172
	movl	$_s_NapExp+192, _s_NapExp+188
	movl	$_s_NapExp+208, _s_NapExp+204
	movl	$_s_NapExp+224, _s_NapExp+220
	movl	$_s_NapExp+240, _s_NapExp+236
	movl	$_s_NapExp+256, _s_NapExp+252
	movl	$_s_NapExp+272, _s_NapExp+268
	movl	$_s_NapExp+288, _s_NapExp+284
	movl	$_s_NapExp+304, _s_NapExp+300
	movl	$_s_NapExp+320, _s_NapExp+316
	movl	$_s_NapExp+336, _s_NapExp+332
	movl	$_s_NapExp+352, _s_NapExp+348
	movl	$_s_NapExp+368, _s_NapExp+364
	movl	$_s_NapExp+368, _s_NapExp+380
	movl	$_s_FireballFlames+16, _s_FireballFlames+12
	movl	$_s_FireballFlames+32, _s_FireballFlames+28
	movl	$_s_FireballFlames+48, _s_FireballFlames+44
	movl	$_s_FireballFlames+64, _s_FireballFlames+60
	movl	$_s_FireballFlames+80, _s_FireballFlames+76
	movl	$_s_FireballFlames+96, _s_FireballFlames+92
	movl	$_s_FireballFlames+112, _s_FireballFlames+108
	movl	$_s_FireballFlames+128, _s_FireballFlames+124
	movl	$_s_FireballFlames+144, _s_FireballFlames+140
	movl	$_s_FireballFlames+160, _s_FireballFlames+156
	movl	$_s_FireballFlames+176, _s_FireballFlames+172
	movl	$_s_FireballFlames+192, _s_FireballFlames+188
	movl	$_s_FireballFlames+208, _s_FireballFlames+204
	movl	$_s_BreakFlames+16, _s_BreakFlames+12
	movl	$_s_BreakFlames+32, _s_BreakFlames+28
	movl	$_s_BreakFlames+48, _s_BreakFlames+44
	movl	$_s_BreakFlames+64, _s_BreakFlames+60
	movl	$_s_BreakFlames+80, _s_BreakFlames+76
	movl	$_s_BreakFlames+96, _s_BreakFlames+92
	movl	$_s_BreakFlames+112, _s_BreakFlames+108
	movl	$_s_BreakFlames+128, _s_BreakFlames+124
	movl	$_s_BreakFlames+144, _s_BreakFlames+140
	movl	$_s_BreakFlames+160, _s_BreakFlames+156
	movl	$_s_BreakFlames+176, _s_BreakFlames+172
	movl	$_s_BreakFlames+192, _s_BreakFlames+188
	movl	$_s_BreakFlames+208, _s_BreakFlames+204
	movl	$_s_Fireball+16, _s_Fireball+12
	movl	$_s_Fireball+32, _s_Fireball+28
	movl	$_s_Fireball+48, _s_Fireball+44
	movl	$_s_Ring+16, _s_Ring+12
	movl	$_s_Ring+32, _s_Ring+28
	movl	$_s_Ring+48, _s_Ring+44
	movl	$_s_Ring2+16, _s_Ring2+12
	movl	$_s_Ring2+32, _s_Ring2+28
	movl	$_s_Ring2+48, _s_Ring2+44
	movl	$_s_Napalm+16, _s_Napalm+12
	movl	$_s_Napalm+32, _s_Napalm+28
	movl	$_s_Napalm+48, _s_Napalm+44
	movl	$_s_BloodWorm+16, _s_BloodWorm+12
	movl	$_s_BloodWorm+32, _s_BloodWorm+28
	movl	$_s_BloodWorm+48, _s_BloodWorm+44
	movl	$_s_BloodWorm+64, _s_BloodWorm+60
	movl	$_s_BloodWorm+80, _s_BloodWorm+76
	movl	$_s_PlasmaExp+16, _s_PlasmaExp+12
	movl	$_s_PlasmaExp+32, _s_PlasmaExp+28
	movl	$_s_PlasmaExp+48, _s_PlasmaExp+44
	movl	$_s_PlasmaExp+64, _s_PlasmaExp+60
	movl	$_s_PlasmaExp+80, _s_PlasmaExp+76
	movl	$_s_PlasmaExp+96, _s_PlasmaExp+92
	movl	$_s_PlasmaExp+112, _s_PlasmaExp+108
	movl	$_s_PlasmaExp+128, _s_PlasmaExp+124
	movl	$_s_PlasmaExp+144, _s_PlasmaExp+140
	movl	$_s_PlasmaExp+160, _s_PlasmaExp+156
	movl	$_s_PlasmaExp+176, _s_PlasmaExp+172
	movl	$_s_PlasmaExp+192, _s_PlasmaExp+188
	movl	$_s_PlasmaExp+192, _s_PlasmaExp+204
	movl	$_s_Mirv+16, _s_Mirv+12
	movl	$_s_Mirv+32, _s_Mirv+28
	movl	$_s_Mirv+48, _s_Mirv+44
	movl	$_s_MirvMissile+16, _s_MirvMissile+12
	movl	$_s_MirvMissile+32, _s_MirvMissile+28
	movl	$_s_MirvMissile+48, _s_MirvMissile+44
	movl	$_s_GoreHead+16, _s_GoreHead+12
	movl	$_s_GoreHead+32, _s_GoreHead+28
	movl	$_s_GoreHead+48, _s_GoreHead+44
	movl	$_s_GoreHead+64, _s_GoreHead+60
	movl	$_s_GoreHead+80, _s_GoreHead+76
	movl	$_s_GoreHead+96, _s_GoreHead+92
	movl	$_s_GoreHead+112, _s_GoreHead+108
	movl	$_s_GoreHead+128, _s_GoreHead+124
	movl	$_s_GoreHead+144, _s_GoreHead+140
	movl	$_s_GoreHead+160, _s_GoreHead+156
	movl	$_s_GoreHead+176, _s_GoreHead+172
	movl	$_s_GoreLeg+16, _s_GoreLeg+12
	movl	$_s_GoreLeg+32, _s_GoreLeg+28
	movl	$_s_GoreEye+16, _s_GoreEye+12
	movl	$_s_GoreEye+32, _s_GoreEye+28
	movl	$_s_GoreEye+48, _s_GoreEye+44
	movl	$_s_GoreTorso+16, _s_GoreTorso+12
	movl	$_s_GoreTorso+32, _s_GoreTorso+28
	movl	$_s_GoreTorso+48, _s_GoreTorso+44
	movl	$_s_GoreTorso+64, _s_GoreTorso+60
	movl	$_s_GoreTorso+80, _s_GoreTorso+76
	movl	$_s_GoreTorso+96, _s_GoreTorso+92
	movl	$_s_GoreTorso+112, _s_GoreTorso+108
	movl	$_s_GoreArm+16, _s_GoreArm+12
	movl	$_s_GoreArm+32, _s_GoreArm+28
	movl	$_s_GoreArm+48, _s_GoreArm+44
	movl	$_s_GoreArm+64, _s_GoreArm+60
	movl	$_s_GoreArm+80, _s_GoreArm+76
	movl	$_s_GoreArm+96, _s_GoreArm+92
	movl	$_s_GoreArm+112, _s_GoreArm+108
	movl	$_s_GoreArm+128, _s_GoreArm+124
	movl	$_s_GoreArm+144, _s_GoreArm+140
	movl	$_s_GoreArm+160, _s_GoreArm+156
	movl	$_s_GoreArm+176, _s_GoreArm+172
	movl	$_s_GoreLung+16, _s_GoreLung+12
	movl	$_s_GoreLung+32, _s_GoreLung+28
	movl	$_s_GoreLung+48, _s_GoreLung+44
	movl	$_s_GoreLung+64, _s_GoreLung+60
	movl	$_s_GoreLung+80, _s_GoreLung+76
	movl	$_s_GoreLung+96, _s_GoreLung+92
	movl	$_s_GoreLung+112, _s_GoreLung+108
	movl	$_s_GoreLung+128, _s_GoreLung+124
	movl	$_s_GoreLung+144, _s_GoreLung+140
	movl	$_s_GoreLung+160, _s_GoreLung+156
	movl	$_s_GoreLung+176, _s_GoreLung+172
	movl	$_s_GoreLiver+16, _s_GoreLiver+12
	movl	$_s_GoreLiver+32, _s_GoreLiver+28
	movl	$_s_GoreLiver+48, _s_GoreLiver+44
	movl	$_s_GoreLiver+64, _s_GoreLiver+60
	movl	$_s_GoreLiver+80, _s_GoreLiver+76
	movl	$_s_GoreLiver+96, _s_GoreLiver+92
	movl	$_s_GoreLiver+112, _s_GoreLiver+108
	movl	$_s_GoreLiver+128, _s_GoreLiver+124
	movl	$_s_GoreLiver+144, _s_GoreLiver+140
	movl	$_s_GoreLiver+160, _s_GoreLiver+156
	movl	$_s_GoreLiver+176, _s_GoreLiver+172
	movl	$_s_GoreSkullCap+16, _s_GoreSkullCap+12
	movl	$_s_GoreSkullCap+32, _s_GoreSkullCap+28
	movl	$_s_GoreSkullCap+48, _s_GoreSkullCap+44
	movl	$_s_GoreSkullCap+64, _s_GoreSkullCap+60
	movl	$_s_GoreSkullCap+80, _s_GoreSkullCap+76
	movl	$_s_GoreSkullCap+96, _s_GoreSkullCap+92
	movl	$_s_GoreSkullCap+112, _s_GoreSkullCap+108
	movl	$_s_GoreSkullCap+128, _s_GoreSkullCap+124
	movl	$_s_GoreSkullCap+144, _s_GoreSkullCap+140
	movl	$_s_GoreSkullCap+160, _s_GoreSkullCap+156
	movl	$_s_GoreSkullCap+176, _s_GoreSkullCap+172
	movl	$_s_GoreChunkS+16, _s_GoreChunkS+12
	movl	$_s_GoreChunkS+32, _s_GoreChunkS+28
	movl	$_s_GoreChunkS+48, _s_GoreChunkS+44
	movl	$_s_GoreDrip+16, _s_GoreDrip+12
	movl	$_s_GoreDrip+32, _s_GoreDrip+28
	movl	$_s_GoreDrip+48, _s_GoreDrip+44
	movl	$_s_FastGoreDrip+16, _s_FastGoreDrip+12
	movl	$_s_FastGoreDrip+32, _s_FastGoreDrip+28
	movl	$_s_FastGoreDrip+48, _s_FastGoreDrip+44
	movl	$_s_GoreFlame+16, _s_GoreFlame+12
	movl	$_s_GoreFlame+32, _s_GoreFlame+28
	movl	$_s_GoreFlame+48, _s_GoreFlame+44
	movl	$_s_GoreFlame+64, _s_GoreFlame+60
	movl	$_s_GoreFlame+80, _s_GoreFlame+76
	movl	$_s_GoreFlame+96, _s_GoreFlame+92
	movl	$_s_GoreFlame+112, _s_GoreFlame+108
	movl	$_s_TracerShrap+16, _s_TracerShrap+12
	movl	$_s_TracerShrap+32, _s_TracerShrap+28
	movl	$_s_TracerShrap+48, _s_TracerShrap+44
	movl	$_s_TracerShrap+64, _s_TracerShrap+60
	movl	$_s_TracerShrap+80, _s_TracerShrap+76
	movl	$_s_TracerShrap+96, _s_TracerShrap+92
	movl	$_s_TracerShrap+112, _s_TracerShrap+108
	movl	$_s_UziShellShrap+16, _s_UziShellShrap+12
	movl	$_s_UziShellShrap+32, _s_UziShellShrap+28
	movl	$_s_UziShellShrap+48, _s_UziShellShrap+44
	movl	$_s_UziShellShrap+64, _s_UziShellShrap+60
	movl	$_s_UziShellShrap+80, _s_UziShellShrap+76
	movl	$_s_ShotgunShellShrap+16, _s_ShotgunShellShrap+12
	movl	$_s_ShotgunShellShrap+32, _s_ShotgunShellShrap+28
	movl	$_s_ShotgunShellShrap+48, _s_ShotgunShellShrap+44
	movl	$_s_ShotgunShellShrap+64, _s_ShotgunShellShrap+60
	movl	$_s_ShotgunShellShrap+80, _s_ShotgunShellShrap+76
	movl	$_s_ShotgunShellShrap+96, _s_ShotgunShellShrap+92
	movl	$_s_ShotgunShellShrap+112, _s_ShotgunShellShrap+108
	movl	$_s_GoreFlameChunkA+16, _s_GoreFlameChunkA+12
	movl	$_s_GoreFlameChunkA+32, _s_GoreFlameChunkA+28
	movl	$_s_GoreFlameChunkA+48, _s_GoreFlameChunkA+44
	movl	$_s_GoreFlameChunkB+16, _s_GoreFlameChunkB+12
	movl	$_s_GoreFlameChunkB+32, _s_GoreFlameChunkB+28
	movl	$_s_GoreFlameChunkB+48, _s_GoreFlameChunkB+44
	movl	$_s_CoinShrap+16, _s_CoinShrap+12
	movl	$_s_CoinShrap+32, _s_CoinShrap+28
	movl	$_s_CoinShrap+48, _s_CoinShrap+44
	movl	$_s_GlassShrapA+16, _s_GlassShrapA+12
	movl	$_s_GlassShrapA+32, _s_GlassShrapA+28
	movl	$_s_GlassShrapA+48, _s_GlassShrapA+44
	movl	$_s_GlassShrapA+64, _s_GlassShrapA+60
	movl	$_s_GlassShrapA+80, _s_GlassShrapA+76
	movl	$_s_GlassShrapA+96, _s_GlassShrapA+92
	movl	$_s_GlassShrapA+112, _s_GlassShrapA+108
	movl	$_s_GlassShrapB+16, _s_GlassShrapB+12
	movl	$_s_GlassShrapB+32, _s_GlassShrapB+28
	movl	$_s_GlassShrapB+48, _s_GlassShrapB+44
	movl	$_s_GlassShrapB+64, _s_GlassShrapB+60
	movl	$_s_GlassShrapB+80, _s_GlassShrapB+76
	movl	$_s_GlassShrapB+96, _s_GlassShrapB+92
	movl	$_s_GlassShrapB+112, _s_GlassShrapB+108
	movl	$_s_GlassShrapC+16, _s_GlassShrapC+12
	movl	$_s_GlassShrapC+32, _s_GlassShrapC+28
	movl	$_s_GlassShrapC+48, _s_GlassShrapC+44
	movl	$_s_GlassShrapC+64, _s_GlassShrapC+60
	movl	$_s_GlassShrapC+80, _s_GlassShrapC+76
	movl	$_s_GlassShrapC+96, _s_GlassShrapC+92
	movl	$_s_GlassShrapC+112, _s_GlassShrapC+108
	movl	$_s_WoodShrapA+16, _s_WoodShrapA+12
	movl	$_s_WoodShrapA+32, _s_WoodShrapA+28
	movl	$_s_WoodShrapA+48, _s_WoodShrapA+44
	movl	$_s_WoodShrapA+64, _s_WoodShrapA+60
	movl	$_s_WoodShrapA+80, _s_WoodShrapA+76
	movl	$_s_WoodShrapA+96, _s_WoodShrapA+92
	movl	$_s_WoodShrapA+112, _s_WoodShrapA+108
	movl	$_s_WoodShrapB+16, _s_WoodShrapB+12
	movl	$_s_WoodShrapB+32, _s_WoodShrapB+28
	movl	$_s_WoodShrapB+48, _s_WoodShrapB+44
	movl	$_s_WoodShrapB+64, _s_WoodShrapB+60
	movl	$_s_WoodShrapB+80, _s_WoodShrapB+76
	movl	$_s_WoodShrapB+96, _s_WoodShrapB+92
	movl	$_s_WoodShrapB+112, _s_WoodShrapB+108
	movl	$_s_WoodShrapC+16, _s_WoodShrapC+12
	movl	$_s_WoodShrapC+32, _s_WoodShrapC+28
	movl	$_s_WoodShrapC+48, _s_WoodShrapC+44
	movl	$_s_WoodShrapC+64, _s_WoodShrapC+60
	movl	$_s_WoodShrapC+80, _s_WoodShrapC+76
	movl	$_s_WoodShrapC+96, _s_WoodShrapC+92
	movl	$_s_WoodShrapC+112, _s_WoodShrapC+108
	movl	$_s_StoneShrapA+16, _s_StoneShrapA+12
	movl	$_s_StoneShrapA+32, _s_StoneShrapA+28
	movl	$_s_StoneShrapA+48, _s_StoneShrapA+44
	movl	$_s_StoneShrapA+64, _s_StoneShrapA+60
	movl	$_s_StoneShrapA+80, _s_StoneShrapA+76
	movl	$_s_StoneShrapA+96, _s_StoneShrapA+92
	movl	$_s_StoneShrapA+112, _s_StoneShrapA+108
	movl	$_s_StoneShrapB+16, _s_StoneShrapB+12
	movl	$_s_StoneShrapB+32, _s_StoneShrapB+28
	movl	$_s_StoneShrapB+48, _s_StoneShrapB+44
	movl	$_s_StoneShrapB+64, _s_StoneShrapB+60
	movl	$_s_StoneShrapB+80, _s_StoneShrapB+76
	movl	$_s_StoneShrapB+96, _s_StoneShrapB+92
	movl	$_s_StoneShrapB+112, _s_StoneShrapB+108
	movl	$_s_StoneShrapC+16, _s_StoneShrapC+12
	movl	$_s_StoneShrapC+32, _s_StoneShrapC+28
	movl	$_s_StoneShrapC+48, _s_StoneShrapC+44
	movl	$_s_StoneShrapC+64, _s_StoneShrapC+60
	movl	$_s_StoneShrapC+80, _s_StoneShrapC+76
	movl	$_s_StoneShrapC+96, _s_StoneShrapC+92
	movl	$_s_StoneShrapC+112, _s_StoneShrapC+108
	movl	$_s_MetalShrapA+16, _s_MetalShrapA+12
	movl	$_s_MetalShrapA+32, _s_MetalShrapA+28
	movl	$_s_MetalShrapA+48, _s_MetalShrapA+44
	movl	$_s_MetalShrapA+64, _s_MetalShrapA+60
	movl	$_s_MetalShrapA+80, _s_MetalShrapA+76
	movl	$_s_MetalShrapA+96, _s_MetalShrapA+92
	movl	$_s_MetalShrapA+112, _s_MetalShrapA+108
	movl	$_s_MetalShrapB+16, _s_MetalShrapB+12
	movl	$_s_MetalShrapB+32, _s_MetalShrapB+28
	movl	$_s_MetalShrapB+48, _s_MetalShrapB+44
	movl	$_s_MetalShrapB+64, _s_MetalShrapB+60
	movl	$_s_MetalShrapB+80, _s_MetalShrapB+76
	movl	$_s_MetalShrapB+96, _s_MetalShrapB+92
	movl	$_s_MetalShrapB+112, _s_MetalShrapB+108
	movl	$_s_MetalShrapC+16, _s_MetalShrapC+12
	movl	$_s_MetalShrapC+32, _s_MetalShrapC+28
	movl	$_s_MetalShrapC+48, _s_MetalShrapC+44
	movl	$_s_MetalShrapC+64, _s_MetalShrapC+60
	movl	$_s_MetalShrapC+80, _s_MetalShrapC+76
	movl	$_s_MetalShrapC+96, _s_MetalShrapC+92
	movl	$_s_MetalShrapC+112, _s_MetalShrapC+108
	movl	$_s_PaperShrapA+16, _s_PaperShrapA+12
	movl	$_s_PaperShrapA+32, _s_PaperShrapA+28
	movl	$_s_PaperShrapA+48, _s_PaperShrapA+44
	movl	$_s_PaperShrapB+16, _s_PaperShrapB+12
	movl	$_s_PaperShrapB+32, _s_PaperShrapB+28
	movl	$_s_PaperShrapB+48, _s_PaperShrapB+44
	movl	$_s_PaperShrapC+16, _s_PaperShrapC+12
	movl	$_s_PaperShrapC+32, _s_PaperShrapC+28
	movl	$_s_PaperShrapC+48, _s_PaperShrapC+44
	movl	$_s_FloorBlood1+16, _s_FloorBlood1+12
	movl	$_s_WallBlood1+16, _s_WallBlood1+12
	movl	$_s_WallBlood2+16, _s_WallBlood2+12
	movl	$_s_WallBlood3+16, _s_WallBlood3+12
	movl	$_s_WallBlood4+16, _s_WallBlood4+12
	movl	$_s_SumoDie+16, _s_SumoDie+12
	movl	$_s_SumoDie+32, _s_SumoDie+28
	movl	$_s_SumoDie+48, _s_SumoDie+44
	movl	$_s_SumoDie+64, _s_SumoDie+60
	movl	$_s_SumoDie+80, _s_SumoDie+76
	movl	$_s_SumoDie+96, _s_SumoDie+92
	movl	$_s_SumoDie+112, _s_SumoDie+108
	movl	$_s_SumoDie+128, _s_SumoDie+124
	movl	$_s_SumoDie+144, _s_SumoDie+140
	movl	$_s_SumoDie+160, _s_SumoDie+156
	movl	$_s_SumoDie+176, _s_SumoDie+172
	movl	$_s_SumoDie+192, _s_SumoDie+188
	movl	$_s_SumoDie+208, _s_SumoDie+204
	movl	$_s_SumoDie+224, _s_SumoDie+220
	movl	$_s_SumoDie+240, _s_SumoDie+236
	movl	$_s_SumoDie+256, _s_SumoDie+252
	movl	$_s_SumoDie+256, _s_SumoDie+268
	movl	$_s_RedCoin+16, _s_RedCoin+12
	movl	$_s_RedCoin+32, _s_RedCoin+28
	movl	$_s_RedCoin+48, _s_RedCoin+44
	movl	$_s_RedCoin+64, _s_RedCoin+60
	movl	$_s_RedCoin+80, _s_RedCoin+76
	movl	$_s_RedCoin+96, _s_RedCoin+92
	movl	$_s_RedCoin+112, _s_RedCoin+108
	movl	$_s_YellowCoin+16, _s_YellowCoin+12
	movl	$_s_YellowCoin+32, _s_YellowCoin+28
	movl	$_s_YellowCoin+48, _s_YellowCoin+44
	movl	$_s_YellowCoin+64, _s_YellowCoin+60
	movl	$_s_YellowCoin+80, _s_YellowCoin+76
	movl	$_s_YellowCoin+96, _s_YellowCoin+92
	movl	$_s_YellowCoin+112, _s_YellowCoin+108
	movl	$_s_GreenCoin+16, _s_GreenCoin+12
	movl	$_s_GreenCoin+32, _s_GreenCoin+28
	movl	$_s_GreenCoin+48, _s_GreenCoin+44
	movl	$_s_GreenCoin+64, _s_GreenCoin+60
	movl	$_s_GreenCoin+80, _s_GreenCoin+76
	movl	$_s_GreenCoin+96, _s_GreenCoin+92
	movl	$_s_GreenCoin+112, _s_GreenCoin+108
	movl	$_s_IconFireballLgAmmo+16, _s_IconFireballLgAmmo+12
	movl	$_s_IconFireballLgAmmo+32, _s_IconFireballLgAmmo+28
	movl	$_s_IconHeart+16, _s_IconHeart+12
	movl	$_s_IconHeartLgAmmo+16, _s_IconHeartLgAmmo+12
	movl	$_s_IconElectro+16, _s_IconElectro+12
	movl	$_s_IconSpell+16, _s_IconSpell+12
	movl	$_s_IconSpell+32, _s_IconSpell+28
	movl	$_s_IconSpell+48, _s_IconSpell+44
	movl	$_s_IconSpell+64, _s_IconSpell+60
	movl	$_s_IconSpell+80, _s_IconSpell+76
	movl	$_s_IconSpell+96, _s_IconSpell+92
	movl	$_s_IconSpell+112, _s_IconSpell+108
	movl	$_s_IconSpell+128, _s_IconSpell+124
	movl	$_s_IconSpell+144, _s_IconSpell+140
	movl	$_s_IconSpell+160, _s_IconSpell+156
	movl	$_s_IconSpell+176, _s_IconSpell+172
	movl	$_s_IconSpell+192, _s_IconSpell+188
	movl	$_s_IconSpell+208, _s_IconSpell+204
	movl	$_s_IconSpell+224, _s_IconSpell+220
	movl	$_s_IconSpell+240, _s_IconSpell+236
	movl	$_s_IconFly+16, _s_IconFly+12
	movl	$_s_IconFly+32, _s_IconFly+28
	movl	$_s_IconFly+48, _s_IconFly+44
	movl	$_s_IconFly+64, _s_IconFly+60
	movl	$_s_IconFly+80, _s_IconFly+76
	movl	$_s_IconFly+96, _s_IconFly+92
	movl	$_s_IconFly+112, _s_IconFly+108
	movl	$_s_IconFlag+16, _s_IconFlag+12
	movl	$_s_IconFlag+32, _s_IconFlag+28
	movl	$_s_SkullExplode+16, _s_SkullExplode+12
	movl	$_s_SkullExplode+32, _s_SkullExplode+28
	movl	$_s_SkullExplode+48, _s_SkullExplode+44
	movl	$_s_SkullExplode+64, _s_SkullExplode+60
	movl	$_s_SkullExplode+80, _s_SkullExplode+76
	movl	$_s_SkullExplode+96, _s_SkullExplode+92
	movl	$_s_SkullExplode+112, _s_SkullExplode+108
	movl	$_s_SkullExplode+128, _s_SkullExplode+124
	movl	$_s_SkullExplode+144, _s_SkullExplode+140
	movl	$_s_SkullExplode+160, _s_SkullExplode+156
	movl	$_s_SkullExplode+176, _s_SkullExplode+172
	movl	$_s_SkullExplode+192, _s_SkullExplode+188
	movl	$_s_SkullExplode+208, _s_SkullExplode+204
	movl	$_s_SkullExplode+224, _s_SkullExplode+220
	movl	$_s_SkullExplode+240, _s_SkullExplode+236
	movl	$_s_SkullExplode+256, _s_SkullExplode+252
	movl	$_s_SkullExplode+272, _s_SkullExplode+268
	movl	$_s_SkullExplode+272, _s_SkullExplode+284
	movl	$_s_BettyExplode+16, _s_BettyExplode+12
	movl	$_s_SkelTeleport+16, _s_SkelTeleport+12
	movl	$_s_SkelTeleport+32, _s_SkelTeleport+28
	movl	$_s_SkelTeleport+48, _s_SkelTeleport+44
	movl	$_s_SkelTeleport+64, _s_SkelTeleport+60
	movl	$_s_SkelTeleport+80, _s_SkelTeleport+76
	movl	$_s_SkelTeleport+96, _s_SkelTeleport+92
	movl	$_s_SkelTeleport+112, _s_SkelTeleport+108
	movl	$_s_SkelTeleport+128, _s_SkelTeleport+124
	movl	$_s_SkelTeleport+144, _s_SkelTeleport+140
	movl	$_s_SkelTeleport+160, _s_SkelTeleport+156
	movl	$_s_SkelTeleport+176, _s_SkelTeleport+172
	movl	$_s_SkelTeleport+192, _s_SkelTeleport+188
	movl	$_s_SkelTeleport+208, _s_SkelTeleport+204
	movl	$_s_SkelTeleport+224, _s_SkelTeleport+220
	movl	$_s_SkelTeleport+240, _s_SkelTeleport+236
	movl	$_s_SkelTeleport+256, _s_SkelTeleport+252
	movl	$_s_SkelTeleport+256, _s_SkelTeleport+268
	movl	$_s_SkelDie+16, _s_SkelDie+12
	movl	$_s_SkelDie+32, _s_SkelDie+28
	movl	$_s_SkelDie+48, _s_SkelDie+44
	movl	$_s_SkelDie+64, _s_SkelDie+60
	movl	$_s_SkelDie+80, _s_SkelDie+76
	movl	$_s_SkelDie+80, _s_SkelDie+92
	movl	$_s_SerpDie+16, _s_SerpDie+12
	movl	$_s_SerpDie+32, _s_SerpDie+28
	movl	$_s_SerpDie+48, _s_SerpDie+44
	movl	$_s_SerpDie+64, _s_SerpDie+60
	movl	$_s_SerpDie+80, _s_SerpDie+76
	movl	$_s_SerpDie+96, _s_SerpDie+92
	movl	$_s_SerpDie+112, _s_SerpDie+108
	movl	$_s_SerpDie+128, _s_SerpDie+124
	movl	$_s_SerpDie+144, _s_SerpDie+140
	movl	$_s_SerpDie+160, _s_SerpDie+156
	movl	$_s_SerpDie+160, _s_SerpDie+172
	movl	$_s_Ripper2Die+16, _s_Ripper2Die+12
	movl	$_s_Ripper2Die+32, _s_Ripper2Die+28
	movl	$_s_Ripper2Die+48, _s_Ripper2Die+44
	movl	$_s_Ripper2Die+64, _s_Ripper2Die+60
	movl	$_s_Ripper2Die+80, _s_Ripper2Die+76
	movl	$_s_Ripper2Die+96, _s_Ripper2Die+92
	movl	$_s_Ripper2Die+112, _s_Ripper2Die+108
	movl	$_s_Ripper2Die+112, _s_Ripper2Die+124
	movl	$_s_Ripper2Dead+16, _s_Ripper2Dead+12
	movl	$_s_Ripper2Dead+32, _s_Ripper2Dead+28
	movl	$_s_Ripper2Dead+48, _s_Ripper2Dead+44
	movl	$_s_Ripper2Dead+64, _s_Ripper2Dead+60
	movl	$_s_Ripper2Dead+80, _s_Ripper2Dead+76
	movl	$_s_Ripper2Dead+96, _s_Ripper2Dead+92
	movl	$_s_Ripper2Dead+112, _s_Ripper2Dead+108
	movl	$_s_Ripper2Dead+128, _s_Ripper2Dead+124
	movl	$_s_Ripper2Dead+128, _s_Ripper2Dead+140
	movl	$_s_RipperDie+16, _s_RipperDie+12
	movl	$_s_RipperDie+32, _s_RipperDie+28
	movl	$_s_RipperDie+48, _s_RipperDie+44
	movl	$_s_RipperDie+64, _s_RipperDie+60
	movl	$_s_RipperDie+64, _s_RipperDie+76
	movl	$_s_RipperDead+16, _s_RipperDead+12
	movl	$_s_RipperDead+32, _s_RipperDead+28
	movl	$_s_RipperDead+48, _s_RipperDead+44
	movl	$_s_RipperDead+48, _s_RipperDead+60
	movl	$_ps_SwordSwing+24, _ps_SwordSwing+12
	movl	$_ps_SwordSwing+48, _ps_SwordSwing+36
	movl	$_ps_SwordSwing+72, _ps_SwordSwing+60
	movl	$_ps_SwordSwing+96, _ps_SwordSwing+84
	movl	$_ps_SwordSwing+96, _ps_SwordSwing+108
	movl	$_ps_SwordSwing+144, _ps_SwordSwing+132
	movl	$_ps_SwordSwing+168, _ps_SwordSwing+156
	movl	$_ps_SwordSwing+192, _ps_SwordSwing+180
	movl	$_ps_SwordSwing+192, _ps_SwordSwing+204
	movl	$_ps_SwordSwing+24, _ps_SwordSwing+228
	movl	$_ps_ThrowStar+24, _ps_ThrowStar+12
	movl	$_ps_ThrowStar+48, _ps_ThrowStar+36
	movl	$_ps_ThrowStar+72, _ps_ThrowStar+60
	movl	$_ps_ThrowStar+96, _ps_ThrowStar+84
	movl	$_ps_ThrowStar+120, _ps_ThrowStar+108
	movl	$_ps_ThrowStar+144, _ps_ThrowStar+132
	movl	$_ps_ThrowStar+168, _ps_ThrowStar+156
	movl	$_ps_ThrowStar+192, _ps_ThrowStar+180
	movl	$_ps_ThrowStar+216, _ps_ThrowStar+204
	movl	$_ps_ThrowStar+240, _ps_ThrowStar+228
	movl	$_ps_ThrowStar+264, _ps_ThrowStar+252
	movl	$_ps_ThrowStar+288, _ps_ThrowStar+276
	movl	$_ps_ThrowStar+312, _ps_ThrowStar+300
	movl	$_ps_ThrowStar+336, _ps_ThrowStar+324
	movl	$_ps_ThrowStar+360, _ps_ThrowStar+348
	movl	$_ps_ThrowStar+384, _ps_ThrowStar+372
	movl	$_ps_ThrowStar+120, _ps_ThrowStar+396
	movl	$_ps_FireUzi+48, _ps_FireUzi+36
	movl	$_ps_FireUzi+72, _ps_FireUzi+60
	movl	$_ps_FireUzi+96, _ps_FireUzi+84
	movl	$_ps_FireUzi+120, _ps_FireUzi+108
	movl	$_ps_FireUzi+144, _ps_FireUzi+132
	movl	$_ps_FireUzi+168, _ps_FireUzi+156
	movl	$_ps_FireUzi+192, _ps_FireUzi+180
	movl	$_ps_FireUzi+216, _ps_FireUzi+204
	movl	$_ps_FireUzi+240, _ps_FireUzi+228
	movl	$_ps_FireUzi+264, _ps_FireUzi+252
	movl	$_ps_FireUzi+288, _ps_FireUzi+276
	movl	$_ps_FireUzi+312, _ps_FireUzi+300
	movl	$_ps_FireUzi2+48, _ps_FireUzi2+36
	movl	$_ps_FireUzi2+72, _ps_FireUzi2+60
	movl	$_ps_FireUzi2+96, _ps_FireUzi2+84
	movl	$_ps_FireUzi2+120, _ps_FireUzi2+108
	movl	$_ps_FireUzi2+144, _ps_FireUzi2+132
	movl	$_ps_FireUzi2+168, _ps_FireUzi2+156
	movl	$_ps_FireUzi2+192, _ps_FireUzi2+180
	movl	$_ps_FireUzi2+216, _ps_FireUzi2+204
	movl	$_ps_FireUzi2+240, _ps_FireUzi2+228
	movl	$_ps_FireUzi2+264, _ps_FireUzi2+252
	movl	$_ps_UziEject+24, _ps_UziEject+12
	movl	$_ps_UziEject+24, _ps_UziEject+36
	movl	$_ps_UziEject+48, _ps_UziEject+60
	movl	$_ps_UziEject+96, _ps_UziEject+84
	movl	$_ps_UziEject+120, _ps_UziEject+108
	movl	$_ps_UziEject+120, _ps_UziEject+132
	movl	$_ps_UziReload+24, _ps_UziReload+36
	movl	$_ps_UziShell+24, _ps_UziShell+12
	movl	$_ps_UziShell+48, _ps_UziShell+36
	movl	$_ps_UziShell+72, _ps_UziShell+60
	movl	$_ps_UziShell+96, _ps_UziShell+84
	movl	$_ps_UziShell+120, _ps_UziShell+108
	movl	$_ps_Uzi2Shell+24, _ps_Uzi2Shell+12
	movl	$_ps_Uzi2Shell+48, _ps_Uzi2Shell+36
	movl	$_ps_Uzi2Shell+72, _ps_Uzi2Shell+60
	movl	$_ps_Uzi2Shell+96, _ps_Uzi2Shell+84
	movl	$_ps_Uzi2Shell+120, _ps_Uzi2Shell+108
	movl	$_ps_ShotgunShell+24, _ps_ShotgunShell+12
	movl	$_ps_ShotgunShell+48, _ps_ShotgunShell+36
	movl	$_ps_ShotgunShell+72, _ps_ShotgunShell+60
	movl	$_ps_ShotgunShell+96, _ps_ShotgunShell+84
	movl	$_ps_ShotgunShell+120, _ps_ShotgunShell+108
	movl	$_ps_ShotgunShell+144, _ps_ShotgunShell+132
	movl	$_ps_ShotgunShell+168, _ps_ShotgunShell+156
	movl	$_ps_ShotgunRecoil+24, _ps_ShotgunRecoil+36
	movl	$_ps_ShotgunRecoil+72, _ps_ShotgunRecoil+60
	movl	$_ps_ShotgunRecoil+96, _ps_ShotgunRecoil+84
	movl	$_ps_ShotgunRecoil+120, _ps_ShotgunRecoil+108
	movl	$_ps_ShotgunRecoil+144, _ps_ShotgunRecoil+132
	movl	$_ps_ShotgunRecoil+168, _ps_ShotgunRecoil+156
	movl	$_ps_ShotgunRecoil+192, _ps_ShotgunRecoil+180
	movl	$_ps_ShotgunRecoilAuto+24, _ps_ShotgunRecoilAuto+36
	movl	$_ps_ShotgunRecoilAuto+72, _ps_ShotgunRecoilAuto+60
	movl	$_ps_ShotgunRecoilAuto+96, _ps_ShotgunRecoilAuto+84
	movl	$_ps_ShotgunRecoilAuto+120, _ps_ShotgunRecoilAuto+108
	movl	$_ps_ShotgunRecoilAuto+144, _ps_ShotgunRecoilAuto+132
	movl	$_ps_ShotgunRecoilAuto+168, _ps_ShotgunRecoilAuto+156
	movl	$_ps_ShotgunFire+24, _ps_ShotgunFire+12
	movl	$_ps_ShotgunFire+48, _ps_ShotgunFire+36
	movl	$_ps_ShotgunFire+72, _ps_ShotgunFire+60
	movl	$_ps_ShotgunFire+96, _ps_ShotgunFire+84
	movl	$_ps_ShotgunAutoFire+24, _ps_ShotgunAutoFire+12
	movl	$_ps_ShotgunAutoFire+48, _ps_ShotgunAutoFire+36
	movl	$_ps_ShotgunAutoFire+72, _ps_ShotgunAutoFire+60
	movl	$_ps_ShotgunAutoFire+96, _ps_ShotgunAutoFire+84
	movl	$_ps_ShotgunReload+48, _ps_ShotgunReload+36
	movl	$_ps_ShotgunReload+72, _ps_ShotgunReload+60
	movl	$_ps_ShotgunReload+96, _ps_ShotgunReload+84
	movl	$_ps_ShotgunReload+96, _ps_ShotgunReload+108
	movl	$_ps_ShotgunFlash+24, _ps_ShotgunFlash+12
	movl	$_ps_ShotgunFlash+48, _ps_ShotgunFlash+36
	movl	$_ps_ShotgunFlash+72, _ps_ShotgunFlash+60
	movl	$_ps_ShotgunFlash+96, _ps_ShotgunFlash+84
	movl	$_ps_ShotgunFlash+120, _ps_ShotgunFlash+108
	movl	$_ps_ShotgunFlash+144, _ps_ShotgunFlash+132
	movl	$_ps_ShotgunFlash+168, _ps_ShotgunFlash+156
	movl	$_ps_ShotgunFlash+192, _ps_ShotgunFlash+180
	movl	$_ps_ShotgunFlash+216, _ps_ShotgunFlash+204
	movl	$_ps_RailRest+24, _ps_RailRest+12
	movl	$_ps_RailRest+48, _ps_RailRest+36
	movl	$_ps_RailRest+72, _ps_RailRest+60
	movl	$_ps_RailRest+96, _ps_RailRest+84
	movl	$_ps_RailRecoil+24, _ps_RailRecoil+36
	movl	$_ps_RailFire+24, _ps_RailFire+12
	movl	$_ps_RailFire+48, _ps_RailFire+36
	movl	$_ps_RailFire+72, _ps_RailFire+60
	movl	$_ps_RailFire+96, _ps_RailFire+84
	movl	$_ps_RailFire+120, _ps_RailFire+108
	movl	$_ps_RailFire+144, _ps_RailFire+132
	movl	$_ps_RailFire+168, _ps_RailFire+156
	movl	$_ps_RailFire+192, _ps_RailFire+180
	movl	$_ps_RailFire+192, _ps_RailFire+204
	movl	$_ps_RailFire+216, _ps_RailFire+228
	movl	$_ps_RailFire+264, _ps_RailFire+252
	movl	$_ps_RailFire+288, _ps_RailFire+276
	movl	$_ps_RailFire+312, _ps_RailFire+300
	movl	$_ps_RailFire+336, _ps_RailFire+324
	movl	$_ps_RailFire+360, _ps_RailFire+348
	movl	$_ps_RailFire+384, _ps_RailFire+372
	movl	$_ps_RailFire+408, _ps_RailFire+396
	movl	$_ps_RailFire+432, _ps_RailFire+420
	movl	$_ps_RailFire+456, _ps_RailFire+444
	movl	$_ps_RailFire+480, _ps_RailFire+468
	movl	$_ps_RailFire+504, _ps_RailFire+492
	movl	$_ps_RailFire+528, _ps_RailFire+516
	movl	$_ps_RailFire+552, _ps_RailFire+540
	movl	$_ps_RailFire+576, _ps_RailFire+564
	movl	$_ps_RailFire+600, _ps_RailFire+588
	movl	$_ps_RailFire+624, _ps_RailFire+612
	movl	$_ps_RailFire+648, _ps_RailFire+636
	movl	$_ps_RailFire+672, _ps_RailFire+660
	movl	$_ps_RailFire+696, _ps_RailFire+684
	movl	$_ps_RailFireEMP+24, _ps_RailFireEMP+12
	movl	$_ps_RailFireEMP+48, _ps_RailFireEMP+36
	movl	$_ps_RailFireEMP+72, _ps_RailFireEMP+60
	movl	$_ps_RailFireEMP+96, _ps_RailFireEMP+84
	movl	$_ps_RailFireEMP+120, _ps_RailFireEMP+108
	movl	$_ps_RailFireEMP+144, _ps_RailFireEMP+132
	movl	$_ps_RailFireEMP+168, _ps_RailFireEMP+156
	movl	$_ps_RailFireEMP+192, _ps_RailFireEMP+180
	movl	$_ps_RailFireEMP+216, _ps_RailFireEMP+204
	movl	$_ps_HotheadAttack+24, _ps_HotheadAttack+12
	movl	$_ps_HotheadAttack+48, _ps_HotheadAttack+36
	movl	$_ps_HotheadAttack+72, _ps_HotheadAttack+60
	movl	$_ps_HotheadAttack+96, _ps_HotheadAttack+84
	movl	$_ps_HotheadAttack+96, _ps_HotheadAttack+108
	movl	$_ps_HotheadRing+24, _ps_HotheadRing+12
	movl	$_ps_HotheadRing+48, _ps_HotheadRing+36
	movl	$_ps_HotheadRing+72, _ps_HotheadRing+60
	movl	$_ps_HotheadRing+96, _ps_HotheadRing+84
	movl	$_ps_HotheadRing+96, _ps_HotheadRing+108
	movl	$_ps_HotheadNapalm+24, _ps_HotheadNapalm+12
	movl	$_ps_HotheadNapalm+48, _ps_HotheadNapalm+36
	movl	$_ps_HotheadNapalm+72, _ps_HotheadNapalm+60
	movl	$_ps_HotheadNapalm+96, _ps_HotheadNapalm+84
	movl	$_ps_HotheadNapalm+96, _ps_HotheadNapalm+108
	movl	$_ps_HotheadTurn+24, _ps_HotheadTurn+12
	movl	$_ps_HotheadTurn+48, _ps_HotheadTurn+36
	movl	$_ps_HotheadTurn+72, _ps_HotheadTurn+60
	movl	$_ps_HotheadTurn+96, _ps_HotheadTurn+84
	movl	$_ps_HotheadTurn+120, _ps_HotheadTurn+108
	movl	$_ps_HotheadTurn+144, _ps_HotheadTurn+132
	movl	$_ps_HotheadTurn+168, _ps_HotheadTurn+156
	movl	$_ps_HotheadTurn+192, _ps_HotheadTurn+180
	movl	$_ps_HotheadTurn+216, _ps_HotheadTurn+204
	movl	$_ps_HotheadTurn+240, _ps_HotheadTurn+228
	movl	$_ps_HotheadTurn+264, _ps_HotheadTurn+252
	movl	$_ps_HotheadTurnRing+24, _ps_HotheadTurnRing+12
	movl	$_ps_HotheadTurnRing+48, _ps_HotheadTurnRing+36
	movl	$_ps_HotheadTurnRing+72, _ps_HotheadTurnRing+60
	movl	$_ps_HotheadTurnRing+96, _ps_HotheadTurnRing+84
	movl	$_ps_HotheadTurnRing+120, _ps_HotheadTurnRing+108
	movl	$_ps_HotheadTurnRing+144, _ps_HotheadTurnRing+132
	movl	$_ps_HotheadTurnRing+168, _ps_HotheadTurnRing+156
	movl	$_ps_HotheadTurnRing+192, _ps_HotheadTurnRing+180
	movl	$_ps_HotheadTurnRing+216, _ps_HotheadTurnRing+204
	movl	$_ps_HotheadTurnNapalm+24, _ps_HotheadTurnNapalm+12
	movl	$_ps_HotheadTurnNapalm+48, _ps_HotheadTurnNapalm+36
	movl	$_ps_HotheadTurnNapalm+72, _ps_HotheadTurnNapalm+60
	movl	$_ps_HotheadTurnNapalm+96, _ps_HotheadTurnNapalm+84
	movl	$_ps_HotheadTurnNapalm+120, _ps_HotheadTurnNapalm+108
	movl	$_ps_HotheadTurnNapalm+144, _ps_HotheadTurnNapalm+132
	movl	$_ps_HotheadTurnNapalm+168, _ps_HotheadTurnNapalm+156
	movl	$_ps_HotheadTurnNapalm+192, _ps_HotheadTurnNapalm+180
	movl	$_ps_OnFire+24, _ps_OnFire+12
	movl	$_ps_OnFire+48, _ps_OnFire+36
	movl	$_ps_OnFire+72, _ps_OnFire+60
	movl	$_ps_OnFire+96, _ps_OnFire+84
	movl	$_ps_OnFire+120, _ps_OnFire+108
	movl	$_ps_OnFire+144, _ps_OnFire+132
	movl	$_ps_OnFire+168, _ps_OnFire+156
	movl	$_ps_OnFire+192, _ps_OnFire+180
	movl	$_ps_OnFire+216, _ps_OnFire+204
	movl	$_ps_OnFire+240, _ps_OnFire+228
	movl	$_ps_OnFire+264, _ps_OnFire+252
	movl	$_ps_OnFire+288, _ps_OnFire+276
	movl	$_ps_InitNuke+24, _ps_InitNuke+12
	movl	$_ps_InitNuke+48, _ps_InitNuke+36
	movl	$_ps_InitNuke+72, _ps_InitNuke+60
	movl	$_ps_InitNuke+96, _ps_InitNuke+84
	movl	$_ps_InitNuke+120, _ps_InitNuke+108
	movl	$_ps_InitNuke+144, _ps_InitNuke+132
	movl	$_ps_InitNuke+168, _ps_InitNuke+156
	movl	$_ps_MicroRecoil+24, _ps_MicroRecoil+36
	movl	$_ps_MicroRecoil+72, _ps_MicroRecoil+60
	movl	$_ps_MicroFire+24, _ps_MicroFire+12
	movl	$_ps_MicroFire+48, _ps_MicroFire+36
	movl	$_ps_MicroFire+72, _ps_MicroFire+60
	movl	$_ps_MicroFire+96, _ps_MicroFire+84
	movl	$_ps_MicroFire+120, _ps_MicroFire+108
	movl	$_ps_MicroFire+144, _ps_MicroFire+132
	movl	$_ps_MicroSingleFire+24, _ps_MicroSingleFire+12
	movl	$_ps_MicroSingleFire+48, _ps_MicroSingleFire+36
	movl	$_ps_MicroSingleFire+72, _ps_MicroSingleFire+60
	movl	$_ps_MicroSingleFire+96, _ps_MicroSingleFire+84
	movl	$_ps_MicroSingleFire+120, _ps_MicroSingleFire+108
	movl	$_ps_MicroHeatFlash+24, _ps_MicroHeatFlash+12
	movl	$_ps_MicroHeatFlash+48, _ps_MicroHeatFlash+36
	movl	$_ps_MicroHeatFlash+72, _ps_MicroHeatFlash+60
	movl	$_ps_MicroHeatFlash+96, _ps_MicroHeatFlash+84
	movl	$_ps_MicroHeatFlash+120, _ps_MicroHeatFlash+108
	movl	$_ps_MicroHeatFlash+144, _ps_MicroHeatFlash+132
	movl	$_ps_MicroHeatFlash+168, _ps_MicroHeatFlash+156
	movl	$_ps_MicroHeatFlash+192, _ps_MicroHeatFlash+180
	movl	$_ps_MicroHeatFlash+216, _ps_MicroHeatFlash+204
	movl	$_ps_MicroNukeFlash+24, _ps_MicroNukeFlash+12
	movl	$_ps_MicroNukeFlash+48, _ps_MicroNukeFlash+36
	movl	$_ps_MicroNukeFlash+72, _ps_MicroNukeFlash+60
	movl	$_ps_MicroNukeFlash+96, _ps_MicroNukeFlash+84
	movl	$_ps_MicroNukeFlash+120, _ps_MicroNukeFlash+108
	movl	$_ps_MicroNukeFlash+144, _ps_MicroNukeFlash+132
	movl	$_ps_MicroNukeFlash+168, _ps_MicroNukeFlash+156
	movl	$_ps_MicroNukeFlash+192, _ps_MicroNukeFlash+180
	movl	$_ps_MicroNukeFlash+216, _ps_MicroNukeFlash+204
	movl	$_ps_PresentHeart+24, _ps_PresentHeart+12
	movl	$_ps_HeartRest+24, _ps_HeartRest+12
	movl	$_ps_HeartRest+48, _ps_HeartRest+36
	movl	$_ps_HeartRest+72, _ps_HeartRest+60
	movl	$_ps_HeartHide+24, _ps_HeartHide+12
	movl	$_ps_HeartAttack+24, _ps_HeartAttack+12
	movl	$_ps_HeartAttack+48, _ps_HeartAttack+36
	movl	$_ps_HeartAttack+72, _ps_HeartAttack+60
	movl	$_ps_HeartAttack+96, _ps_HeartAttack+84
	movl	$_ps_HeartAttack+120, _ps_HeartAttack+108
	movl	$_ps_HeartAttack+144, _ps_HeartAttack+132
	movl	$_ps_HeartAttack+168, _ps_HeartAttack+156
	movl	$_ps_RetractHeart+24, _ps_RetractHeart+12
	movl	$_ps_HeartBlood+24, _ps_HeartBlood+12
	movl	$_ps_HeartBlood+48, _ps_HeartBlood+36
	movl	$_ps_HeartBlood+72, _ps_HeartBlood+60
	movl	$_ps_HeartBlood+96, _ps_HeartBlood+84
	movl	$_ps_HeartBlood+120, _ps_HeartBlood+108
	movl	$_ps_HeartBlood+144, _ps_HeartBlood+132
	movl	$_ps_HeartBlood+144, _ps_HeartBlood+156
	movl	$_ps_GrenadeFire+24, _ps_GrenadeFire+12
	movl	$_ps_GrenadeFire+48, _ps_GrenadeFire+36
	movl	$_ps_GrenadeFire+72, _ps_GrenadeFire+60
	movl	$_ps_GrenadeFire+96, _ps_GrenadeFire+84
	movl	$_ps_GrenadeRecoil+24, _ps_GrenadeRecoil+36
	movl	$_ps_GrenadeRecoil+72, _ps_GrenadeRecoil+60
	movl	$_ps_GrenadeRecoil+96, _ps_GrenadeRecoil+84
	movl	$_ps_MineRest+24, _ps_MineRest+12
	movl	$_ps_MineRest+48, _ps_MineRest+36
	movl	$_ps_MineRest+48, _ps_MineRest+60
	movl	$_ps_MineThrow+24, _ps_MineThrow+12
	movl	$_ps_MineThrow+48, _ps_MineThrow+36
	movl	$_ps_MineThrow+48, _ps_MineThrow+60
	movl	$_ps_MineThrow+96, _ps_MineThrow+84
	movl	$_ps_MineThrow+96, _ps_MineThrow+108
	movl	$_ps_MineThrow+144, _ps_MineThrow+132
	movl	$_ps_ChopsAttack1+24, _ps_ChopsAttack1+12
	movl	$_ps_ChopsAttack1+24, _ps_ChopsAttack1+36
	movl	$_ps_ChopsAttack1+72, _ps_ChopsAttack1+60
	movl	$_ps_ChopsAttack1+96, _ps_ChopsAttack1+84
	movl	$_ps_ChopsAttack1+120, _ps_ChopsAttack1+108
	movl	$_ps_ChopsAttack1+120, _ps_ChopsAttack1+132
	movl	$_ps_ChopsAttack2+24, _ps_ChopsAttack2+12
	movl	$_ps_ChopsAttack2+24, _ps_ChopsAttack2+36
	movl	$_ps_ChopsAttack2+72, _ps_ChopsAttack2+60
	movl	$_ps_ChopsAttack2+96, _ps_ChopsAttack2+84
	movl	$_ps_ChopsAttack2+120, _ps_ChopsAttack2+108
	movl	$_ps_ChopsAttack2+120, _ps_ChopsAttack2+132
	movl	$_ps_ChopsAttack3+24, _ps_ChopsAttack3+12
	movl	$_ps_ChopsAttack3+24, _ps_ChopsAttack3+36
	movl	$_ps_ChopsAttack3+72, _ps_ChopsAttack3+60
	movl	$_ps_ChopsAttack3+96, _ps_ChopsAttack3+84
	movl	$_ps_ChopsAttack3+120, _ps_ChopsAttack3+108
	movl	$_ps_ChopsAttack3+144, _ps_ChopsAttack3+132
	movl	$_ps_ChopsAttack3+168, _ps_ChopsAttack3+156
	movl	$_ps_ChopsAttack3+192, _ps_ChopsAttack3+180
	movl	$_ps_ChopsAttack3+216, _ps_ChopsAttack3+204
	movl	$_ps_ChopsAttack3+240, _ps_ChopsAttack3+228
	movl	$_ps_ChopsAttack3+264, _ps_ChopsAttack3+252
	movl	$_ps_ChopsAttack3+288, _ps_ChopsAttack3+276
	movl	$_ps_ChopsAttack3+312, _ps_ChopsAttack3+300
	movl	$_ps_ChopsAttack3+336, _ps_ChopsAttack3+324
	movl	$_ps_ChopsAttack3+264, _ps_ChopsAttack3+348
	movl	$_ps_ChopsAttack4+24, _ps_ChopsAttack4+12
	movl	$_ps_ChopsAttack4+24, _ps_ChopsAttack4+36
	movl	$_ps_ChopsAttack4+72, _ps_ChopsAttack4+60
	movl	$_ps_ChopsAttack4+96, _ps_ChopsAttack4+84
	movl	$_ps_ChopsAttack4+120, _ps_ChopsAttack4+108
	movl	$_ps_ChopsAttack4+144, _ps_ChopsAttack4+132
	movl	$_ps_ChopsAttack4+144, _ps_ChopsAttack4+156
	movl	$_ps_FistSwing+24, _ps_FistSwing+12
	movl	$_ps_FistSwing+48, _ps_FistSwing+36
	movl	$_ps_FistSwing+72, _ps_FistSwing+60
	movl	$_ps_FistSwing+96, _ps_FistSwing+84
	movl	$_ps_FistSwing+96, _ps_FistSwing+108
	movl	$_ps_FistSwing+144, _ps_FistSwing+132
	movl	$_ps_FistSwing+168, _ps_FistSwing+156
	movl	$_ps_FistSwing+192, _ps_FistSwing+180
	movl	$_ps_FistSwing+192, _ps_FistSwing+204
	movl	$_ps_FistSwing+24, _ps_FistSwing+228
	movl	$_ps_Fist2Swing+24, _ps_Fist2Swing+12
	movl	$_ps_Fist2Swing+48, _ps_Fist2Swing+36
	movl	$_ps_Fist2Swing+96, _ps_Fist2Swing+84
	movl	$_ps_Fist2Swing+96, _ps_Fist2Swing+108
	movl	$_ps_Fist3Swing+24, _ps_Fist3Swing+12
	movl	$_ps_Fist3Swing+48, _ps_Fist3Swing+36
	movl	$_ps_Fist3Swing+72, _ps_Fist3Swing+60
	movl	$_ps_Fist3Swing+96, _ps_Fist3Swing+84
	movl	$_ps_Fist3Swing+96, _ps_Fist3Swing+108
	movl	$_ps_Fist3Swing+144, _ps_Fist3Swing+132
	movl	$_ps_Fist3Swing+168, _ps_Fist3Swing+156
	movl	$_ps_Fist3Swing+192, _ps_Fist3Swing+180
	movl	$_ps_Fist3Swing+192, _ps_Fist3Swing+204
	movl	$_ps_Fist3Swing+24, _ps_Fist3Swing+228
	movl	$_ps_Kick+24, _ps_Kick+12
	movl	$_ps_Kick+48, _ps_Kick+36
	movl	$_ps_Kick+72, _ps_Kick+60
	movl	$_ps_Kick+96, _ps_Kick+84
	movl	$_ps_Kick+96, _ps_Kick+108
	movl	$_ps_Kick+144, _ps_Kick+132
	movl	$_ps_Kick+168, _ps_Kick+156
	movl	$_ps_Kick+192, _ps_Kick+180
	movl	$_ps_Kick+192, _ps_Kick+204
	movl	$_ps_Kick+24, _ps_Kick+228
	movl	$_s_NinjaHariKari+16, _s_NinjaHariKari+12
	movl	$_s_NinjaHariKari+32, _s_NinjaHariKari+28
	movl	$_s_NinjaHariKari+48, _s_NinjaHariKari+44
	movl	$_s_NinjaHariKari+64, _s_NinjaHariKari+60
	movl	$_s_NinjaHariKari+80, _s_NinjaHariKari+76
	movl	$_s_NinjaHariKari+96, _s_NinjaHariKari+92
	movl	$_s_NinjaHariKari+112, _s_NinjaHariKari+108
	movl	$_s_NinjaHariKari+128, _s_NinjaHariKari+124
	movl	$_s_NinjaHariKari+144, _s_NinjaHariKari+140
	movl	$_s_NinjaHariKari+160, _s_NinjaHariKari+156
	movl	$_s_NinjaHariKari+160, _s_NinjaHariKari+172
	movl	$_s_NinjaGrabThroat+16, _s_NinjaGrabThroat+12
	movl	$_s_NinjaGrabThroat+32, _s_NinjaGrabThroat+28
	movl	$_s_NinjaGrabThroat+48, _s_NinjaGrabThroat+44
	movl	$_s_NinjaGrabThroat+64, _s_NinjaGrabThroat+60
	movl	$_s_NinjaGrabThroat+80, _s_NinjaGrabThroat+76
	movl	$_s_NinjaDie+16, _s_NinjaDie+12
	movl	$_s_NinjaDie+32, _s_NinjaDie+28
	movl	$_s_NinjaDie+48, _s_NinjaDie+44
	movl	$_s_NinjaDie+64, _s_NinjaDie+60
	movl	$_s_NinjaDie+80, _s_NinjaDie+76
	movl	$_s_NinjaDie+96, _s_NinjaDie+92
	movl	$_s_NinjaDie+112, _s_NinjaDie+108
	movl	$_s_NinjaDie+128, _s_NinjaDie+124
	movl	$_s_NinjaDie+144, _s_NinjaDie+140
	movl	$_s_NinjaDie+160, _s_NinjaDie+156
	movl	$_s_NinjaDie+160, _s_NinjaDie+172
	movl	$_s_NinjaDieSliced+16, _s_NinjaDieSliced+12
	movl	$_s_NinjaDieSliced+32, _s_NinjaDieSliced+28
	movl	$_s_NinjaDieSliced+48, _s_NinjaDieSliced+44
	movl	$_s_NinjaDieSliced+64, _s_NinjaDieSliced+60
	movl	$_s_NinjaDieSliced+80, _s_NinjaDieSliced+76
	movl	$_s_NinjaDieSliced+96, _s_NinjaDieSliced+92
	movl	$_s_NinjaDieSliced+112, _s_NinjaDieSliced+108
	movl	$_s_NinjaDieSliced+128, _s_NinjaDieSliced+124
	movl	$_s_NinjaDieSliced+144, _s_NinjaDieSliced+140
	movl	$_s_NinjaDieSliced+160, _s_NinjaDieSliced+156
	movl	$_s_NinjaDieSliced+176, _s_NinjaDieSliced+172
	movl	$_s_NinjaDieSliced+176, _s_NinjaDieSliced+188
	movl	$_s_NinjaDead+16, _s_NinjaDead+12
	movl	$_s_NinjaDead+32, _s_NinjaDead+28
	movl	$_s_NinjaDead+48, _s_NinjaDead+44
	movl	$_s_NinjaDead+64, _s_NinjaDead+60
	movl	$_s_NinjaDead+64, _s_NinjaDead+76
	movl	$_s_NinjaDeathJump+16, _s_NinjaDeathJump+12
	movl	$_s_NinjaDeathJump+32, _s_NinjaDeathJump+28
	movl	$_s_NinjaDeathJump+32, _s_NinjaDeathJump+44
	movl	$_s_NinjaDeathFall+16, _s_NinjaDeathFall+12
	movl	$_s_NinjaDeathFall+16, _s_NinjaDeathFall+28
	movl	$_s_PachinkoLightOperate+16, _s_PachinkoLightOperate+12
	movl	$_s_PachinkoLightOperate+32, _s_PachinkoLightOperate+28
	movl	$_s_PachinkoLightOperate+48, _s_PachinkoLightOperate+44
	movl	$_s_PachinkoLightOperate+64, _s_PachinkoLightOperate+60
	movl	$_s_PachinkoLightOperate+80, _s_PachinkoLightOperate+76
	movl	$_s_Pachinko1Operate+16, _s_Pachinko1Operate+12
	movl	$_s_Pachinko1Operate+32, _s_Pachinko1Operate+28
	movl	$_s_Pachinko1Operate+48, _s_Pachinko1Operate+44
	movl	$_s_Pachinko1Operate+64, _s_Pachinko1Operate+60
	movl	$_s_Pachinko1Operate+80, _s_Pachinko1Operate+76
	movl	$_s_Pachinko1Operate+96, _s_Pachinko1Operate+92
	movl	$_s_Pachinko1Operate+112, _s_Pachinko1Operate+108
	movl	$_s_Pachinko1Operate+128, _s_Pachinko1Operate+124
	movl	$_s_Pachinko1Operate+144, _s_Pachinko1Operate+140
	movl	$_s_Pachinko1Operate+160, _s_Pachinko1Operate+156
	movl	$_s_Pachinko1Operate+176, _s_Pachinko1Operate+172
	movl	$_s_Pachinko1Operate+192, _s_Pachinko1Operate+188
	movl	$_s_Pachinko1Operate+208, _s_Pachinko1Operate+204
	movl	$_s_Pachinko1Operate+224, _s_Pachinko1Operate+220
	movl	$_s_Pachinko1Operate+240, _s_Pachinko1Operate+236
	movl	$_s_Pachinko1Operate+256, _s_Pachinko1Operate+252
	movl	$_s_Pachinko1Operate+272, _s_Pachinko1Operate+268
	movl	$_s_Pachinko1Operate+288, _s_Pachinko1Operate+284
	movl	$_s_Pachinko1Operate+304, _s_Pachinko1Operate+300
	movl	$_s_Pachinko1Operate+320, _s_Pachinko1Operate+316
	movl	$_s_Pachinko1Operate+336, _s_Pachinko1Operate+332
	movl	$_s_Pachinko1Operate+352, _s_Pachinko1Operate+348
	movl	$_s_Pachinko2Operate+16, _s_Pachinko2Operate+12
	movl	$_s_Pachinko2Operate+32, _s_Pachinko2Operate+28
	movl	$_s_Pachinko2Operate+48, _s_Pachinko2Operate+44
	movl	$_s_Pachinko2Operate+64, _s_Pachinko2Operate+60
	movl	$_s_Pachinko2Operate+80, _s_Pachinko2Operate+76
	movl	$_s_Pachinko2Operate+96, _s_Pachinko2Operate+92
	movl	$_s_Pachinko2Operate+112, _s_Pachinko2Operate+108
	movl	$_s_Pachinko2Operate+128, _s_Pachinko2Operate+124
	movl	$_s_Pachinko2Operate+144, _s_Pachinko2Operate+140
	movl	$_s_Pachinko2Operate+160, _s_Pachinko2Operate+156
	movl	$_s_Pachinko2Operate+176, _s_Pachinko2Operate+172
	movl	$_s_Pachinko2Operate+192, _s_Pachinko2Operate+188
	movl	$_s_Pachinko2Operate+208, _s_Pachinko2Operate+204
	movl	$_s_Pachinko2Operate+224, _s_Pachinko2Operate+220
	movl	$_s_Pachinko2Operate+240, _s_Pachinko2Operate+236
	movl	$_s_Pachinko2Operate+256, _s_Pachinko2Operate+252
	movl	$_s_Pachinko2Operate+272, _s_Pachinko2Operate+268
	movl	$_s_Pachinko2Operate+288, _s_Pachinko2Operate+284
	movl	$_s_Pachinko2Operate+304, _s_Pachinko2Operate+300
	movl	$_s_Pachinko2Operate+320, _s_Pachinko2Operate+316
	movl	$_s_Pachinko2Operate+336, _s_Pachinko2Operate+332
	movl	$_s_Pachinko2Operate+352, _s_Pachinko2Operate+348
	movl	$_s_Pachinko3Operate+16, _s_Pachinko3Operate+12
	movl	$_s_Pachinko3Operate+32, _s_Pachinko3Operate+28
	movl	$_s_Pachinko3Operate+48, _s_Pachinko3Operate+44
	movl	$_s_Pachinko3Operate+64, _s_Pachinko3Operate+60
	movl	$_s_Pachinko3Operate+80, _s_Pachinko3Operate+76
	movl	$_s_Pachinko3Operate+96, _s_Pachinko3Operate+92
	movl	$_s_Pachinko3Operate+112, _s_Pachinko3Operate+108
	movl	$_s_Pachinko3Operate+128, _s_Pachinko3Operate+124
	movl	$_s_Pachinko3Operate+144, _s_Pachinko3Operate+140
	movl	$_s_Pachinko3Operate+160, _s_Pachinko3Operate+156
	movl	$_s_Pachinko3Operate+176, _s_Pachinko3Operate+172
	movl	$_s_Pachinko3Operate+192, _s_Pachinko3Operate+188
	movl	$_s_Pachinko3Operate+208, _s_Pachinko3Operate+204
	movl	$_s_Pachinko3Operate+224, _s_Pachinko3Operate+220
	movl	$_s_Pachinko3Operate+240, _s_Pachinko3Operate+236
	movl	$_s_Pachinko3Operate+256, _s_Pachinko3Operate+252
	movl	$_s_Pachinko3Operate+272, _s_Pachinko3Operate+268
	movl	$_s_Pachinko3Operate+288, _s_Pachinko3Operate+284
	movl	$_s_Pachinko3Operate+304, _s_Pachinko3Operate+300
	movl	$_s_Pachinko3Operate+320, _s_Pachinko3Operate+316
	movl	$_s_Pachinko3Operate+336, _s_Pachinko3Operate+332
	movl	$_s_Pachinko3Operate+352, _s_Pachinko3Operate+348
	movl	$_s_Pachinko4Operate+16, _s_Pachinko4Operate+12
	movl	$_s_Pachinko4Operate+32, _s_Pachinko4Operate+28
	movl	$_s_Pachinko4Operate+48, _s_Pachinko4Operate+44
	movl	$_s_Pachinko4Operate+64, _s_Pachinko4Operate+60
	movl	$_s_Pachinko4Operate+80, _s_Pachinko4Operate+76
	movl	$_s_Pachinko4Operate+96, _s_Pachinko4Operate+92
	movl	$_s_Pachinko4Operate+112, _s_Pachinko4Operate+108
	movl	$_s_Pachinko4Operate+128, _s_Pachinko4Operate+124
	movl	$_s_Pachinko4Operate+144, _s_Pachinko4Operate+140
	movl	$_s_Pachinko4Operate+160, _s_Pachinko4Operate+156
	movl	$_s_Pachinko4Operate+176, _s_Pachinko4Operate+172
	movl	$_s_Pachinko4Operate+192, _s_Pachinko4Operate+188
	movl	$_s_Pachinko4Operate+208, _s_Pachinko4Operate+204
	movl	$_s_Pachinko4Operate+224, _s_Pachinko4Operate+220
	movl	$_s_Pachinko4Operate+240, _s_Pachinko4Operate+236
	movl	$_s_Pachinko4Operate+256, _s_Pachinko4Operate+252
	movl	$_s_Pachinko4Operate+272, _s_Pachinko4Operate+268
	movl	$_s_Pachinko4Operate+288, _s_Pachinko4Operate+284
	movl	$_s_Pachinko4Operate+304, _s_Pachinko4Operate+300
	movl	$_s_Pachinko4Operate+320, _s_Pachinko4Operate+316
	movl	$_s_Pachinko4Operate+336, _s_Pachinko4Operate+332
	movl	$_s_Pachinko4Operate+352, _s_Pachinko4Operate+348
	movl	$_s_LavaDie+16, _s_LavaDie+12
	movl	$_s_LavaDie+16, _s_LavaDie+28
	movl	$_s_BloodSpray+16, _s_BloodSpray+12
	movl	$_s_BloodSpray+32, _s_BloodSpray+28
	movl	$_s_BloodSpray+48, _s_BloodSpray+44
	movl	$_s_BloodSpray+64, _s_BloodSpray+60
	movl	$_s_PhosphorExp+16, _s_PhosphorExp+12
	movl	$_s_PhosphorExp+32, _s_PhosphorExp+28
	movl	$_s_PhosphorExp+48, _s_PhosphorExp+44
	movl	$_s_PhosphorExp+64, _s_PhosphorExp+60
	movl	$_s_PhosphorExp+80, _s_PhosphorExp+76
	movl	$_s_PhosphorExp+96, _s_PhosphorExp+92
	movl	$_s_PhosphorExp+112, _s_PhosphorExp+108
	movl	$_s_PhosphorExp+128, _s_PhosphorExp+124
	movl	$_s_PhosphorExp+144, _s_PhosphorExp+140
	movl	$_s_PhosphorExp+160, _s_PhosphorExp+156
	movl	$_s_PhosphorExp+176, _s_PhosphorExp+172
	movl	$_s_PhosphorExp+192, _s_PhosphorExp+188
	movl	$_s_PhosphorExp+208, _s_PhosphorExp+204
	movl	$_s_PhosphorExp+224, _s_PhosphorExp+220
	movl	$_s_PhosphorExp+240, _s_PhosphorExp+236
	movl	$_s_PhosphorExp+256, _s_PhosphorExp+252
	movl	$_s_PhosphorExp+272, _s_PhosphorExp+268
	movl	$_s_PhosphorExp+288, _s_PhosphorExp+284
	movl	$_s_PhosphorExp+304, _s_PhosphorExp+300
	movl	$_s_PhosphorExp+320, _s_PhosphorExp+316
	movl	$_s_NukeMushroom+16, _s_NukeMushroom+12
	movl	$_s_NukeMushroom+32, _s_NukeMushroom+28
	movl	$_s_NukeMushroom+48, _s_NukeMushroom+44
	movl	$_s_NukeMushroom+64, _s_NukeMushroom+60
	movl	$_s_NukeMushroom+80, _s_NukeMushroom+76
	movl	$_s_NukeMushroom+96, _s_NukeMushroom+92
	movl	$_s_NukeMushroom+112, _s_NukeMushroom+108
	movl	$_s_NukeMushroom+128, _s_NukeMushroom+124
	movl	$_s_NukeMushroom+144, _s_NukeMushroom+140
	movl	$_s_NukeMushroom+160, _s_NukeMushroom+156
	movl	$_s_NukeMushroom+176, _s_NukeMushroom+172
	movl	$_s_NukeMushroom+192, _s_NukeMushroom+188
	movl	$_s_NukeMushroom+208, _s_NukeMushroom+204
	movl	$_s_NukeMushroom+224, _s_NukeMushroom+220
	movl	$_s_NukeMushroom+240, _s_NukeMushroom+236
	movl	$_s_NukeMushroom+256, _s_NukeMushroom+252
	movl	$_s_NukeMushroom+272, _s_NukeMushroom+268
	movl	$_s_NukeMushroom+288, _s_NukeMushroom+284
	movl	$_s_NukeMushroom+304, _s_NukeMushroom+300
	movl	$_s_RadiationCloud+16, _s_RadiationCloud+12
	movl	$_s_RadiationCloud+32, _s_RadiationCloud+28
	movl	$_s_RadiationCloud+48, _s_RadiationCloud+44
	movl	$_s_RadiationCloud+64, _s_RadiationCloud+60
	movl	$_s_RadiationCloud+80, _s_RadiationCloud+76
	movl	$_s_RadiationCloud+96, _s_RadiationCloud+92
	movl	$_s_RadiationCloud+112, _s_RadiationCloud+108
	movl	$_s_RadiationCloud+128, _s_RadiationCloud+124
	movl	$_s_RadiationCloud+144, _s_RadiationCloud+140
	movl	$_s_RadiationCloud+160, _s_RadiationCloud+156
	movl	$_s_RadiationCloud+176, _s_RadiationCloud+172
	movl	$_s_RadiationCloud+192, _s_RadiationCloud+188
	movl	$_s_RadiationCloud+208, _s_RadiationCloud+204
	movl	$_s_RadiationCloud+224, _s_RadiationCloud+220
	movl	$_s_RadiationCloud+240, _s_RadiationCloud+236
	movl	$_s_RadiationCloud+256, _s_RadiationCloud+252
	movl	$_s_RadiationCloud+272, _s_RadiationCloud+268
	movl	$_s_RadiationCloud+288, _s_RadiationCloud+284
	movl	$_s_RadiationCloud+304, _s_RadiationCloud+300
	movl	$_s_Caltrops+16, _s_Caltrops+12
	movl	$_s_Caltrops+32, _s_Caltrops+28
	movl	$_s_CarryFlag+16, _s_CarryFlag+12
	movl	$_s_CarryFlag+32, _s_CarryFlag+28
	movl	$_s_CarryFlagNoDet+16, _s_CarryFlagNoDet+12
	movl	$_s_CarryFlagNoDet+32, _s_CarryFlagNoDet+28
	movl	$_s_Flag+16, _s_Flag+12
	movl	$_s_Flag+32, _s_Flag+28
	movl	$_s_Phosphorus+16, _s_Phosphorus+12
	movl	$_s_BloodSprayChunk+16, _s_BloodSprayChunk+12
	movl	$_s_BloodSprayChunk+32, _s_BloodSprayChunk+28
	movl	$_s_BloodSprayChunk+48, _s_BloodSprayChunk+44
	movl	$_s_BloodSprayChunk+64, _s_BloodSprayChunk+60
	movl	$_s_BloodSprayChunk+80, _s_BloodSprayChunk+76
	movl	$_s_BloodSprayDrip+16, _s_BloodSprayDrip+12
	movl	$_s_BloodSprayDrip+32, _s_BloodSprayDrip+28
	movl	$_s_GoroDie+16, _s_GoroDie+12
	movl	$_s_GoroDie+32, _s_GoroDie+28
	movl	$_s_GoroDie+48, _s_GoroDie+44
	movl	$_s_GoroDie+64, _s_GoroDie+60
	movl	$_s_GoroDie+80, _s_GoroDie+76
	movl	$_s_GoroDie+96, _s_GoroDie+92
	movl	$_s_GoroDie+112, _s_GoroDie+108
	movl	$_s_GoroDie+128, _s_GoroDie+124
	movl	$_s_GoroDie+144, _s_GoroDie+140
	movl	$_s_GoroDie+160, _s_GoroDie+156
	movl	$_s_GoroDie+160, _s_GoroDie+172
	movl	$_s_GirlNinjaDie+16, _s_GirlNinjaDie+12
	movl	$_s_GirlNinjaDie+32, _s_GirlNinjaDie+28
	movl	$_s_GirlNinjaDie+48, _s_GirlNinjaDie+44
	movl	$_s_GirlNinjaDie+64, _s_GirlNinjaDie+60
	movl	$_s_GirlNinjaDie+80, _s_GirlNinjaDie+76
	movl	$_s_GirlNinjaDie+96, _s_GirlNinjaDie+92
	movl	$_s_GirlNinjaDie+112, _s_GirlNinjaDie+108
	movl	$_s_GirlNinjaDie+128, _s_GirlNinjaDie+124
	movl	$_s_GirlNinjaDie+144, _s_GirlNinjaDie+140
	movl	$_s_GirlNinjaDie+160, _s_GirlNinjaDie+156
	movl	$_s_GirlNinjaDie+160, _s_GirlNinjaDie+172
	movl	$_s_GirlNinjaDead+16, _s_GirlNinjaDead+12
	movl	$_s_GirlNinjaDead+32, _s_GirlNinjaDead+28
	movl	$_s_GirlNinjaDead+48, _s_GirlNinjaDead+44
	movl	$_s_GirlNinjaDead+64, _s_GirlNinjaDead+60
	movl	$_s_GirlNinjaDead+64, _s_GirlNinjaDead+76
	movl	$_s_GirlNinjaDeathJump+16, _s_GirlNinjaDeathJump+12
	movl	$_s_GirlNinjaDeathJump+32, _s_GirlNinjaDeathJump+28
	movl	$_s_GirlNinjaDeathJump+32, _s_GirlNinjaDeathJump+44
	movl	$_s_GirlNinjaDeathFall+16, _s_GirlNinjaDeathFall+12
	movl	$_s_GirlNinjaDeathFall+16, _s_GirlNinjaDeathFall+28
	movl	$_GLOBALEXE+8, _GLOBALEXE
	movb	$0, _GLOBALEXE+8
	movl	$0, _GLOBALEXE+4
	movl	$___tcfGLOBALEXE.lto_priv.0, (%esp)
	call	_atexit
	movl	$_dragDemo, %ecx
	movl	$_dragDemo+8, _dragDemo
	movl	$LC405, 4(%esp)
	movl	$LC405, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
	subl	$8, %esp
	movl	$___tcfdragDemo.lto_priv.0, (%esp)
	call	_atexit
	movb	$0, __ZL18DemoDropSearchPath.lto_priv.0+8
	movl	$__ZL18DemoDropSearchPath.lto_priv.0+8, __ZL18DemoDropSearchPath.lto_priv.0
	movl	$0, __ZL18DemoDropSearchPath.lto_priv.0+4
	movl	$___tcf_ZL18DemoDropSearchPath.lto_priv.0, (%esp)
	call	_atexit
	movb	$0, __ZL19DemoDropSidecarPath.lto_priv.0+8
	movl	$__ZL19DemoDropSidecarPath.lto_priv.0+8, __ZL19DemoDropSidecarPath.lto_priv.0
	movl	$0, __ZL19DemoDropSidecarPath.lto_priv.0+4
	movl	$___tcf_ZL19DemoDropSidecarPath.lto_priv.0, (%esp)
	call	_atexit
	movl	$_s_EelDie+16, _s_EelDie+12
	movl	$_s_EelDie+32, _s_EelDie+28
	movl	$_s_EelDie+48, _s_EelDie+44
	movl	$_s_EelDie+64, _s_EelDie+60
	movl	$_s_EelDie+80, _s_EelDie+76
	movl	$_s_EelDie+80, _s_EelDie+92
	movl	$0, __ZL12mapzoomclock.lto_priv.0+8
	movl	$0, __ZL12mapzoomclock.lto_priv.0+12
	movl	$0, __ZL12mapzoomclock.lto_priv.0
	movl	$0, __ZL17DemoAutoChatLines.lto_priv.0
	movl	$0, __ZL17DemoAutoChatLines.lto_priv.0+4
	movl	$0, __ZL17DemoAutoChatLines.lto_priv.0+8
	movl	$___tcf_ZL17DemoAutoChatLines.lto_priv.0, (%esp)
	call	_atexit
	movl	$0, __ZL11DemoOutChat.lto_priv.0
	movl	$0, __ZL11DemoOutChat.lto_priv.0+4
	movl	$0, __ZL11DemoOutChat.lto_priv.0+8
	movl	$___tcf_ZL11DemoOutChat.lto_priv.0, (%esp)
	call	_atexit
	movl	$0, __ZL12DemoPlayChat.lto_priv.0
	movl	$0, __ZL12DemoPlayChat.lto_priv.0+4
	movl	$0, __ZL12DemoPlayChat.lto_priv.0+8
	movl	$___tcf_ZL12DemoPlayChat.lto_priv.0, (%esp)
	call	_atexit
	movl	$_s_CoolieDie+16, _s_CoolieDie+12
	movl	$_s_CoolieDie+32, _s_CoolieDie+28
	movl	$_s_CoolieDie+48, _s_CoolieDie+44
	movl	$_s_CoolieDie+64, _s_CoolieDie+60
	movl	$_s_CoolieDie+80, _s_CoolieDie+76
	movl	$_s_CoolieDie+96, _s_CoolieDie+92
	movl	$_s_CoolieDie+112, _s_CoolieDie+108
	movl	$_s_CoolieDie+128, _s_CoolieDie+124
	movl	$_s_CoolieDie+128, _s_CoolieDie+140
	movl	$_s_CoolieDie+160, _s_CoolieDie+156
	movl	$_s_CoolieDie+176, _s_CoolieDie+172
	movl	$_s_CoolieDie+192, _s_CoolieDie+188
	movl	$_s_CoolieDie+192, _s_CoolieDie+204
	movl	$_s_CoolgDie+16, _s_CoolgDie+12
	movl	$_s_CoolgDie+32, _s_CoolgDie+28
	movl	$_s_CoolgDie+48, _s_CoolgDie+44
	movl	$_s_CoolgDie+64, _s_CoolgDie+60
	movl	$_s_CoolgDie+80, _s_CoolgDie+76
	movl	$_s_CoolgDie+80, _s_CoolgDie+92
	movl	$_s_CoolgDead+16, _s_CoolgDead+12
	movl	$_s_CoolgDead+16, _s_CoolgDead+28
	movl	$_s_CoolgBirth+16, _s_CoolgBirth+12
	movl	$_s_CoolgBirth+32, _s_CoolgBirth+28
	movl	$_s_CoolgBirth+48, _s_CoolgBirth+44
	movl	$_s_CoolgBirth+64, _s_CoolgBirth+60
	movl	$_s_CoolgBirth+80, _s_CoolgBirth+76
	movl	$_s_CoolgBirth+96, _s_CoolgBirth+92
	movl	$_s_CoolgBirth+112, _s_CoolgBirth+108
	movl	$_s_CoolgBirth+128, _s_CoolgBirth+124
	movl	$_s_CoolgBirth+144, _s_CoolgBirth+140
	movl	$_s_CoolgBirth+160, _s_CoolgBirth+156
	movl	$_s_CoolgBirth+160, _s_CoolgBirth+172
	movl	$_s_BunnyDie+16, _s_BunnyDie+12
	movl	$_s_BunnyDie+32, _s_BunnyDie+28
	movl	$_s_BunnyDie+48, _s_BunnyDie+44
	movl	$_s_BunnyDie+64, _s_BunnyDie+60
	movl	$_s_BunnyDie+80, _s_BunnyDie+76
	movl	$_s_BunnyDie+80, _s_BunnyDie+92
	movl	$_s_BunnyDead+48, _s_BunnyDead+44
	movl	$_s_BunnyDead+64, _s_BunnyDead+60
	movl	$_s_BunnyDead+80, _s_BunnyDead+76
	movl	$_s_BunnyDead+80, _s_BunnyDead+92
	leal	-16(%ebp), %esp
	popl	%ecx
	.cfi_remember_state
	.cfi_restore 1
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
L153:
	.cfi_restore_state
	movl	__ZL10localeList.lto_priv.0+8, %ebx
	testl	%ebx, %ebx
	jne	L160
L162:
	movzbl	(%esi), %eax
	testb	%al, %al
	jne	L154
	movl	$-2128831035, %eax
	xorl	%edx, %edx
	movl	$-2128831035, %ebx
	divl	__ZL10localeList.lto_priv.0+4
	movl	%edx, -84(%ebp)
	jmp	L156
	.p2align 4,,10
	.p2align 3
L240:
	movl	(%ebx), %ebx
	testl	%ebx, %ebx
	je	L162
L160:
	movl	4(%ebx), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L240
	jmp	L157
L237:
	movl	__ZL10localeList.lto_priv.0+4, %ecx
	movl	$-2128831035, %eax
	xorl	%edx, %edx
	movl	$-2128831035, %ebx
	divl	%ecx
	movl	%ecx, -88(%ebp)
	movl	%edx, -84(%ebp)
L155:
	movl	%esi, (%esp)
	movl	-84(%ebp), %ecx
	movl	-88(%ebp), %edx
	movl	__ZL10localeList.lto_priv.0, %eax
	call	__ZNKSt10_HashtableI19LocaleCharWrapper_tSt4pairIKS0_St13unordered_mapIS0_S0_22LocaleCharWrapper_hashSt8equal_toIS0_ESaIS1_IS2_S0_EEEESaISA_ENSt8__detail10_Select1stES6_S4_NSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_find_before_node_trIS0_EEPNSC_15_Hash_node_baseEjRKT_j.isra.0
	testl	%eax, %eax
	jne	L157
	jmp	L156
L239:
	movl	$LC393, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L176
	movl	$LC394, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L176
	movl	$LC395, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L176
	movl	$LC396, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L176
	movl	$LC397, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L176
	movl	$LC398, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L176
	movl	$LC399, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L176
	movl	$LC400, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L176
	movl	$LC401, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L176
	movl	$LC402, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcmp
	testl	%eax, %eax
	sete	%al
	jmp	L175
L236:
	xorl	%eax, %eax
	movl	%eax, __ZL10localeList.lto_priv.0+24
	movl	$__ZL10localeList.lto_priv.0+24, %eax
	jmp	L152
L238:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	%esi, %eax
	movl	%edx, (%esp)
	movl	$36, %edx
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	testl	%eax, %eax
	jne	L165
	xorl	%ecx, %ecx
	movl	$36, %edx
	movl	%esi, %eax
	call	__Z15mi_heap_try_newP9mi_heap_sjb
	jmp	L165
	.cfi_endproc
LFE22:
	.section	.ctors,"w"
	.align 4
	.long	__sub_I_65535_0.0
	.globl	_pow2char_
	.section .rdata,"dr"
	.align 4
_pow2char_:
	.ascii "\1\2\4\10\20 @\200"
	.globl	_asm4
	.bss
	.align 4
_asm4:
	.space 4
	.globl	_fpuasm
	.align 4
_fpuasm:
	.space 4
	.globl	_espbak
	.align 4
_espbak:
	.space 4
	.globl	_ebpbak
	.align 4
_ebpbak:
	.space 4
	.globl	_NvOptimusEnablement
	.data
	.align 4
_NvOptimusEnablement:
	.long	1
	.globl	_AmdPowerXpressRequestHighPerformance
	.align 4
_AmdPowerXpressRequestHighPerformance:
	.long	1
.lcomm _GLAD_GL_ARB_robustness,4,4
.lcomm _glad_glGetStringi,4,4
.lcomm _GLAD_GL_VERSION_3_0,4,4
.lcomm _GLAD_GL_VERSION_2_0,4,4
.lcomm _GLAD_GL_VERSION_1_5,4,4
.lcomm _GLAD_GL_VERSION_1_4,4,4
.lcomm _GLAD_GL_VERSION_1_3,4,4
.lcomm _GLAD_GL_VERSION_1_1,4,4
.lcomm __ZL10num_exts_i,4,4
.lcomm __ZL6exts_i,4,4
.lcomm __ZL4exts,4,4
.lcomm __ZL16max_loaded_major,4,4
	.section .rdata,"dr"
	.align 4
LC366:
	.long	LC363
	.align 16
LC403:
	.long	0
	.long	1
	.long	1
	.long	640
	.align 16
LC404:
	.long	480
	.long	32
	.long	1
	.long	0
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_SDL_GL_GetProcAddress;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_strncmp;	.scl	2;	.type	32;	.endef
	.def	___tcfVoiceList.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_atexit;	.scl	2;	.type	32;	.endef
	.def	___tcfVoicePool.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	___tcftexcache.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	___tcf_ZL12tilefontList.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_mi_strdup;	.scl	2;	.type	32;	.endef
	.def	__ZNSt10_HashtableI19LocaleCharWrapper_tSt4pairIKS0_S0_ESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_E22LocaleCharWrapper_hashNS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_assignIRKSF_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb0EEEEEEEEvOT_RT0_.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEj;	.scl	2;	.type	32;	.endef
	.def	__ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtSt13unordered_mapIjtSt4hashIjESt8equal_toIjESaIS2_IKjtEEEELb0EEEEE19_M_allocate_bucketsEj.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZNSt10_HashtableI19LocaleCharWrapper_tSt4pairIKS0_St13unordered_mapIS0_S0_22LocaleCharWrapper_hashSt8equal_toIS0_ESaIS1_IS2_S0_EEEESaISA_ENSt8__detail10_Select1stES6_S4_NSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEjjPNSC_10_Hash_nodeISA_Lb0EEEj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	___tcf_ZL10localeList.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZNSt6chrono3_V212steady_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	___tcf_ZN6loguruL16s_argv0_filenameE.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	___tcf_ZN6loguruL11s_argumentsE.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	___tcf_ZN6loguruL11s_callbacksE.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	___tcf_ZN6loguruL21s_user_stack_cleanupsE.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_getenv;	.scl	2;	.type	32;	.endef
	.def	___tcfGLOBALEXE.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0;	.scl	2;	.type	32;	.endef
	.def	___tcfdragDemo.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	___tcf_ZL18DemoDropSearchPath.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	___tcf_ZL19DemoDropSidecarPath.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	___tcf_ZL17DemoAutoChatLines.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	___tcf_ZL11DemoOutChat.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	___tcf_ZL12DemoPlayChat.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZNKSt10_HashtableI19LocaleCharWrapper_tSt4pairIKS0_St13unordered_mapIS0_S0_22LocaleCharWrapper_hashSt8equal_toIS0_ESaIS1_IS2_S0_EEEESaISA_ENSt8__detail10_Select1stES6_S4_NSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_find_before_node_trIS0_EEPNSC_15_Hash_node_baseEjRKT_j.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z18_mi_malloc_genericP9mi_heap_sjbj;	.scl	2;	.type	32;	.endef
	.def	__Z15mi_heap_try_newP9mi_heap_sjb;	.scl	2;	.type	32;	.endef
	.section .drectve
	.ascii " -export:\"AmdPowerXpressRequestHighPerformance\",data"
	.ascii " -export:\"NvOptimusEnablement\",data"
