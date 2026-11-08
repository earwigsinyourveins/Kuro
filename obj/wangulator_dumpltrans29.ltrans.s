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
	movb	%al, __ZN6loguruL20s_terminal_has_colorE.lto_priv.0
	movl	$0, _totalclock+8
	movl	$0, _totalclock+12
	movl	$0, _totalclock
	movl	$0, _totalclocklock+8
	movl	$0, _totalclocklock+12
	movl	$0, _totalclocklock
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
	.globl	_MV_Locked
	.section	.tls$,"dw"
	.align 4
_MV_Locked:
	.space 4
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
	.def	__ZNKSt10_HashtableI19LocaleCharWrapper_tSt4pairIKS0_St13unordered_mapIS0_S0_22LocaleCharWrapper_hashSt8equal_toIS0_ESaIS1_IS2_S0_EEEESaISA_ENSt8__detail10_Select1stES6_S4_NSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_find_before_node_trIS0_EEPNSC_15_Hash_node_baseEjRKT_j.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z18_mi_malloc_genericP9mi_heap_sjbj;	.scl	2;	.type	32;	.endef
	.def	__Z15mi_heap_try_newP9mi_heap_sjb;	.scl	2;	.type	32;	.endef
	.section .drectve
	.ascii " -export:\"AmdPowerXpressRequestHighPerformance\",data"
	.ascii " -export:\"NvOptimusEnablement\",data"
