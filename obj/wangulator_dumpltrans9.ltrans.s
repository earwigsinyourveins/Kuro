	.file	"<artificial>"
	.text
	.section .rdata,"dr"
LC0:
	.ascii ".\0"
LC1:
	.ascii "%s:%d: unknown error.\0"
LC2:
	.ascii "source/build/src/defs.cpp\0"
LC3:
	.ascii "sw.def\0"
LC7:
	.ascii "alphahackrange\0"
LC8:
	.ascii "tile\0"
LC9:
	.ascii "file\0"
	.align 4
LC10:
	.ascii "%s:%d: artfile: filename missing\0"
	.align 4
LC11:
	.ascii "%s:%d: artfile: couldn't open %s\0"
	.align 4
LC12:
	.ascii "%s:%d: artfile: couldn't read %s\0"
LC13:
	.ascii "artfile\0"
	.align 4
LC14:
	.ascii "%s:%d: %s: invalid tile number\0"
LC15:
	.ascii "setuptile\0"
LC16:
	.ascii "setuptilerange\0"
LC17:
	.ascii "animtilerange\0"
	.align 4
LC18:
	.ascii "%s:%d: animtilerange: animation type must be 0, 1, 2 or 3\0"
	.align 4
LC19:
	.ascii "%s:%d: animtilerange: value range cannot exceed 255\0"
LC20:
	.ascii "size\0"
LC21:
	.ascii "crc32\0"
	.align 4
LC22:
	.ascii "%s:%d: tilefromtexture: missing or invalid tile number\0"
	.align 4
LC23:
	.ascii "%s:%d: tilefromtexture: filename missing\0"
	.align 4
LC24:
	.ascii "%s:%d: tilefromtexture: no palette loaded\0"
	.align 4
LC25:
	.ascii "%s:%d: tilefromtexture: more than one tile found in %s\0"
LC26:
	.ascii "copytile\0"
	.align 4
LC27:
	.ascii "copytile: palette index out of range (max=%d)\0"
LC28:
	.ascii "importtile\0"
	.align 4
LC29:
	.ascii "%s:%d: importtile: no palette loaded\0"
	.align 4
LC30:
	.ascii "%s:%d: importtile: more than one tile found in %s\0"
LC31:
	.ascii "dummytile\0"
LC32:
	.ascii "dummytilerange\0"
LC33:
	.ascii "undefinetile\0"
LC34:
	.ascii "undefinetilerange\0"
	.align 4
LC35:
	.ascii "Failed loading MD2/MD3 model %s\0"
LC37:
	.ascii "definemodelframe\0"
	.align 4
LC38:
	.ascii "%s:%d: model: invalid model id for frame\0"
	.align 4
LC39:
	.ascii "%s:%d: definemodelframe: invalid tile number\0"
	.align 4
LC40:
	.ascii "%s:%d: definemodelframe: invalid frame name\0"
	.align 4
LC41:
	.ascii "%s:%d: model: invalid model id for anim\0"
	.align 4
LC43:
	.ascii "%s:%d: definemodelanim: invalid start frame name\0"
	.align 4
LC44:
	.ascii "%s:%d: definemodelanim: invalid end frame name\0"
	.align 4
LC45:
	.ascii "%s:%d: model: invalid model id for skin\0"
	.align 4
LC46:
	.ascii "%s:%d: definemodelskin: invalid filename %s\0"
	.align 4
LC47:
	.ascii "%s:%d: definemodelskin: invalid palette index %d\0"
	.align 4
LC48:
	.ascii "definevoxel: maximum number of voxels (%d) already defined.\0"
	.align 4
LC49:
	.ascii "definevoxel: failed loading %s\0"
LC50:
	.ascii "definevoxeltiles\0"
	.align 4
LC51:
	.ascii "definevoxeltiles: invalid voxel id %d\0"
LC54:
	.ascii "model: frame\0"
	.align 4
LC55:
	.ascii "%s:%d: model: smoothduration value %.3f out of range\0"
	.align 4
LC56:
	.ascii "%s:%d: model: invalid tile number\0"
	.align 4
LC57:
	.ascii "%s:%d: model: invalid frame name\0"
	.align 4
LC58:
	.ascii "%s:%d: model: missing start frame\0"
	.align 4
LC59:
	.ascii "%s:%d: model: missing end frame\0"
	.align 4
LC60:
	.ascii "%s:%d: model: invalid start frame name\0"
	.align 4
LC61:
	.ascii "%s:%d: model: invalid end frame name\0"
	.align 4
LC62:
	.ascii "%s:%d model: skin filename missing\0"
	.align 4
LC63:
	.ascii "%s:%d: model: invalid skin filename\0"
	.align 4
LC64:
	.ascii "%s:%d: model: invalid palette index for skin\0"
LC65:
	.ascii "hud\0"
	.align 4
LC66:
	.ascii "%s:%d: model: invalid model id for hud\0"
	.align 4
LC67:
	.ascii "%s:%d: model: invalid tile number for hud\0"
	.align 4
LC68:
	.ascii "Model %s (%d) removed due to errors in definition.\0"
	.align 4
LC69:
	.ascii "voxel: maximum number of voxels (%d) already defined.\0"
LC70:
	.ascii "voxel: failed loading %s\0"
LC71:
	.ascii "voxel\0"
	.align 4
LC73:
	.ascii "%s:%d: skybox: missing tile number\0"
	.align 4
LC74:
	.ascii "%s:%d: skybox: filename missing for %s\0"
	.align 4
LC75:
	.ascii "%s:%d: highpalookup: missing or invalid base palette index\0"
	.align 4
LC76:
	.ascii "%s:%d: highpalookup: missing or invalid palette index\0"
	.align 4
LC77:
	.ascii "%s:%d: highpalookup: filename missing\0"
	.align 4
LC78:
	.ascii "highpalookup: unable to read %s\0"
	.align 4
LC79:
	.ascii "highpalookup: dimensions of %s must be exactly %dx%d.\0"
	.align 4
LC80:
	.ascii "highpalookup: failed rendering %s\0"
	.align 4
LC81:
	.ascii "%s:%d: tint: missing palette index\0"
	.align 4
LC82:
	.ascii "%s:%d: makepalookup: missing palette index\0"
	.align 4
LC83:
	.ascii "%s:%d: makepalookup: palette index out of range (1 .. %d)\0"
	.align 4
LC84:
	.ascii "%s:%d: makepalookup: must have exactly one of either 'remappal' or 'remapself'\0"
	.align 4
LC85:
	.ascii "%s:%d: makepalookup: remap index out of range (max=%d)\0"
	.align 4
LC87:
	.ascii "%s:%d: texture: missing or invalid palette index\0"
	.align 4
LC88:
	.ascii "%s:%d: texture: filename missing\0"
	.align 4
LC89:
	.ascii "%s:%d: texture: missing or invalid tile number\0"
LC90:
	.ascii "undefmodelrange\0"
LC91:
	.ascii "undefmodel\0"
LC92:
	.ascii "undefmodelof\0"
	.align 4
LC93:
	.ascii "undefmodelof: not yet implemented.\0"
LC94:
	.ascii "undeftexturerange\0"
LC95:
	.ascii "undeftexture\0"
LC96:
	.ascii "_xx.art\0"
	.align 4
LC97:
	.ascii "mapinfo: mapart: definition must end with '_XX.ART', near line: %s:%d\0"
LC98:
	.ascii "%s\0"
	.align 4
LC99:
	.ascii "%s:%d: basepalette: invalid palette index\0"
	.align 4
LC100:
	.ascii "%s:%d: basepalette: filename missing\0"
	.align 4
LC101:
	.ascii "%s:%d: basepalette: invalid file offset\0"
	.align 4
LC102:
	.ascii "%s:%d: basepalette: invalid shift value\0"
	.align 4
LC103:
	.ascii "%s:%d: basepalette: couldn't open %s\0"
	.align 4
LC104:
	.ascii "%s:%d: basepalette: couldn't read %s\0"
	.align 4
LC105:
	.ascii "%s:%d: basepalette: invalid source palette index\0"
	.align 4
LC106:
	.ascii "%s:%d: basepalette: specified source palette does not exist.\0"
	.align 4
LC107:
	.ascii "%s:%d: palookup: invalid palette index\0"
	.align 4
LC108:
	.ascii "%s:%d: palookup: filename missing\0"
	.align 4
LC109:
	.ascii "%s:%d: palookup: invalid file offset\0"
	.align 4
LC110:
	.ascii "%s:%d: palookup: couldn't open %s\0"
	.align 4
LC111:
	.ascii "%s:%d: palookup: couldn't read %s\0"
	.align 4
LC112:
	.ascii "%s:%d: palookup: shade tables must be loaded before creating additional lookups\0"
	.align 4
LC113:
	.ascii "%s:%d: palookup: invalid source palette index\0"
	.align 4
LC114:
	.ascii "%s:%d: palookup: shade tables must be loaded before copying palettes\0"
	.align 4
LC115:
	.ascii "%s:%d: palookup: specified source basepal does not exist.\0"
	.align 4
LC116:
	.ascii "%s:%d: fogpal: shade tables must be loaded before generating fog tables.\0"
	.align 4
LC117:
	.ascii "%s:%d: makepalookup: invalid palette remap index.\0"
	.align 4
LC118:
	.ascii "%s:%d: makepalookup: shade tables must be loaded before creating additional lookups.\0"
	.align 4
LC119:
	.ascii "%s:%d: blendtable: invalid table index\0"
LC120:
	.ascii "offset\0"
	.align 4
LC121:
	.ascii "%s:%d: blendtable: filename missing\0"
	.align 4
LC122:
	.ascii "%s:%d: blendtable: invalid file offset\0"
	.align 4
LC123:
	.ascii "%s:%d: blendtable: couldn't open %s\0"
	.align 4
LC124:
	.ascii "%s:%d: blendtable: couldn't read %s\0"
	.align 4
LC125:
	.ascii "%s:%d: blendtable: invalid source table index\0"
	.align 4
LC126:
	.ascii "%s:%d: blendtable: specified source table does not exist\0"
	.align 4
LC127:
	.ascii "%s:%d: numalphatables: invalid value %d\0"
	.align 4
LC128:
	.ascii "%s:%d: undefbasepaletterange: invalid range (%d .. %d)\0"
	.align 4
LC129:
	.ascii "%s:%d: undefpalookuprange: invalid range (%d .. %d)\0"
	.align 4
LC130:
	.ascii "%s:%d: undefblendtablerange: invalid range (%d .. %d)\0"
	.align 4
LC131:
	.ascii "%s:%d: localization: invalid locale\0"
	.align 4
LC132:
	.ascii "%s:%d: localization: invalid braces\0"
	.align 4
LC133:
	.ascii "%s:%d: localization: invalid key for string\0"
	.align 4
LC134:
	.ascii "%s:%d: localization: invalid value for key '%s'\0"
	.align 4
LC135:
	.ascii "%s:%d: localization: invalid token\0"
LC136:
	.ascii "%s:%d: tilefont: invalid tile\0"
	.align 4
LC137:
	.ascii "%s:%d: tilefont: invalid braces\0"
	.align 4
LC138:
	.ascii "%s:%d: tilefont: tile %d out of range (0 .. %d)\0"
	.align 4
LC139:
	.ascii "%s:%d: tilefont: invalid character\0"
	.align 4
LC140:
	.ascii "%s:%d: tilefont: invalid tile for character '%s'\0"
	.align 4
LC141:
	.ascii "%s:%d: tilefont string '%s' consists of multiple characters\0"
	.align 4
LC142:
	.ascii "%s:%d: tilefont: character '%s' is longer than four bytes\0"
	.align 4
LC143:
	.ascii "Unknown token '%s' in .def file.\0"
	.text
	.p2align 4
	.globl	__ZL10defsparserP10scriptfile.isra.0
	.def	__ZL10defsparserP10scriptfile.isra.0;	.scl	2;	.type	32;	.endef
__ZL10defsparserP10scriptfile.isra.0:
LFB1:
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
	subl	$332, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%eax, -248(%ebp)
	.p2align 4
	.p2align 3
L2:
	movl	__ZZL10defsparserP10scriptfileE4iter, %eax
	addl	$1, %eax
	movl	%eax, __ZZL10defsparserP10scriptfileE4iter
	cmpl	$49, %eax
	ja	L1403
L3:
	call	_handleevents
	movzbl	_quitevent, %eax
	movb	%al, -264(%ebp)
	testb	%al, %al
	jne	L1362
	movl	-248(%ebp), %eax
	call	_scriptfile_gettoken
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1362
	movl	$__ZZL10defsparserP10scriptfileE10basetokens, %esi
	movl	$__ZZL10defsparserP10scriptfileE10basetokens+584, %edi
	jmp	L71
	.p2align 4,,10
	.p2align 3
L969:
	subl	$8, %edi
L71:
	movl	(%edi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1404
	cmpl	%edi, %esi
	jne	L969
	movl	-248(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -256(%ebp)
L70:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC1, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$512, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
	.p2align 4,,10
	.p2align 3
L1404:
	movl	-248(%ebp), %eax
	movl	4(%edi), %esi
	movl	8(%eax), %eax
	movl	%eax, -256(%ebp)
	leal	2(%esi), %eax
	cmpl	$168, %eax
	ja	L6
	jmp	*L8(,%eax,4)
	.section .rdata,"dr"
	.align 4
L8:
	.long	L1362
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
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L56
	.long	L55
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L54
	.long	L53
	.long	L52
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L51
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L50
	.long	L50
	.long	L49
	.long	L48
	.long	L48
	.long	L47
	.long	L46
	.long	L45
	.long	L44
	.long	L43
	.long	L42
	.long	L41
	.long	L40
	.long	L39
	.long	L38
	.long	L37
	.long	L36
	.long	L35
	.long	L34
	.long	L33
	.long	L32
	.long	L31
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L30
	.long	L29
	.long	L28
	.long	L27
	.long	L27
	.long	L26
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L25
	.long	L24
	.long	L23
	.long	L22
	.long	L6
	.long	L6
	.long	L21
	.long	L20
	.long	L19
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L18
	.long	L6
	.long	L17
	.long	L16
	.long	L15
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L14
	.long	L6
	.long	L6
	.long	L6
	.long	L6
	.long	L13
	.long	L6
	.long	L12
	.long	L6
	.long	L6
	.long	L6
	.long	L11
	.long	L10
	.long	L9
	.long	L7
	.text
L1362:
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
L1403:
	.cfi_restore_state
	movl	$LC0, %eax
	call	_startwin_puts.isra.0
	movl	$0, __ZZL10defsparserP10scriptfileE4iter
	jmp	L3
	.p2align 4,,10
	.p2align 3
L6:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L2
	movl	-256(%ebp), %eax
	movl	$LC143, 12(%esp)
	movl	$3905, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC2, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L48:
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	cmpl	$80, %esi
	je	L1405
	movl	-160(%ebp), %eax
	movl	%eax, -152(%ebp)
	cmpl	$30463, %eax
	ja	L1406
	.p2align 4
	.p2align 3
L634:
	movl	$255, %ebx
	jmp	L633
	.p2align 4,,10
	.p2align 3
L630:
	movl	%ebx, %edx
	call	_hicclearsubst.part.0.isra.0
	movl	-160(%ebp), %eax
L629:
	subl	$1, %ebx
	jb	L632
L633:
	cmpl	$30719, %eax
	ja	L629
L631:
	movl	_hicinitcounter, %edx
	testl	%edx, %edx
	jne	L630
	subl	$1, %ebx
	jnb	L631
L632:
	addl	$1, %eax
	movl	%eax, -160(%ebp)
	cmpl	-152(%ebp), %eax
	jle	L634
	jmp	L2
L27:
	movl	-248(%ebp), %ebx
	leal	-160(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	leal	-152(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-160(%ebp), %eax
	xorl	%edx, %edx
	movl	%edx, %ecx
	movl	-152(%ebp), %edx
	testl	%eax, %eax
	cmovns	%eax, %ecx
	movl	$30463, %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, %ebx
	cmpl	%eax, %ecx
	jg	L2
	cmpl	$105, %esi
	movl	$16, %eax
	leal	(%ecx,%ecx,4), %esi
	movl	$32, %edx
	leal	_picanm+8(%ebx,%ebx,4), %ecx
	cmovne	%eax, %edx
	leal	_picanm+3(%esi), %eax
	movl	%ecx, %ebx
	subl	%eax, %ebx
	andl	$1, %ebx
	je	L636
	addl	$5, %eax
	orb	%dl, _picanm+3(%esi)
	cmpl	%eax, %ecx
	je	L2
L636:
	orb	%dl, (%eax)
	orb	%dl, 5(%eax)
	addl	$10, %eax
	cmpl	%eax, %ecx
	je	L2
	orb	%dl, (%eax)
	orb	%dl, 5(%eax)
	addl	$10, %eax
	cmpl	%eax, %ecx
	jne	L636
	jmp	L2
L50:
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	cmpl	$77, %esi
	je	L1407
	movl	-160(%ebp), %eax
	movl	%eax, -152(%ebp)
	cmpl	$30463, %eax
	ja	L1408
L622:
	call	_md_undefinetile.isra.0
	movl	-160(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -160(%ebp)
	cmpl	-152(%ebp), %eax
	jle	L622
	jmp	L2
L51:
	movl	-248(%ebp), %eax
	leal	-216(%ebp), %edx
	movl	$-1, -216(%ebp)
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-220(%ebp), %edx
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L2
	movl	-220(%ebp), %eax
	movl	%eax, -280(%ebp)
	movl	-216(%ebp), %eax
	movl	%eax, -272(%ebp)
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
L569:
	cmpl	-280(%ebp), %eax
	jnb	L1409
	movl	-248(%ebp), %eax
	call	_scriptfile_gettoken
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1385
	movl	$__ZZL10defsparserP10scriptfileE13texturetokens, %edi
	movl	$__ZZL10defsparserP10scriptfileE13texturetokens+32, %esi
	jmp	L566
	.p2align 4,,10
	.p2align 3
L996:
	subl	$8, %esi
L566:
	movl	(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1410
	cmpl	%esi, %edi
	jne	L996
	movl	$-1, %esi
L565:
	leal	-30(%esi), %eax
	cmpl	$3, %eax
	ja	L1385
	movl	-248(%ebp), %ebx
	leal	-192(%ebp), %edx
	movl	$0, -184(%ebp)
	movl	$0, -176(%ebp)
	movl	$1072693248, -172(%ebp)
	movl	8(%ebx), %ecx
	movl	%ebx, %eax
	movl	$0, -168(%ebp)
	movl	%ecx, -288(%ebp)
	movl	$1072693248, -164(%ebp)
	movl	$0, -160(%ebp)
	movl	$1072693248, -156(%ebp)
	movl	$0, -152(%ebp)
	movl	$1072693248, -148(%ebp)
	call	_scriptfile_getbraces
	movl	12(%ebx), %edx
	testl	%eax, %eax
	movl	%edx, %eax
	jne	L569
	movl	-192(%ebp), %ecx
	cmpl	%ecx, %edx
	jnb	L595
	movb	$0, -276(%ebp)
	movl	%esi, -292(%ebp)
	movl	%ecx, -264(%ebp)
L610:
	movl	-248(%ebp), %eax
	call	_scriptfile_gettoken
	movl	%eax, %esi
	testl	%eax, %eax
	je	L609
	movl	$__ZZL10defsparserP10scriptfileE17texturetokens_pal_0, %ebx
	movl	$__ZZL10defsparserP10scriptfileE17texturetokens_pal_0+136, %edi
	jmp	L608
	.p2align 4,,10
	.p2align 3
L999:
	subl	$8, %edi
L608:
	movl	(%edi), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1411
	cmpl	%edi, %ebx
	jne	L999
L609:
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	cmpl	-264(%ebp), %eax
	jb	L610
	movl	-292(%ebp), %esi
	cmpl	$30463, -272(%ebp)
	ja	L569
	movl	-184(%ebp), %ebx
	testl	%ebx, %ebx
	je	L968
	movl	%ebx, %eax
	call	_check_file_exist
	testl	%eax, %eax
	jne	L1385
	leal	-31(%esi), %eax
	fldl	-176(%ebp)
	fldl	-168(%ebp)
	cmpl	$2, %eax
	ja	L615
	movl	$285, %edx
	subl	%esi, %edx
L616:
	movzbl	-276(%ebp), %eax
	fstps	-264(%ebp)
	movl	%ebx, %ecx
	fstps	-288(%ebp)
	movl	%eax, 8(%esp)
	fldl	-152(%ebp)
	fstps	-276(%ebp)
	movss	-276(%ebp), %xmm0
	movss	%xmm0, 4(%esp)
	fldl	-160(%ebp)
	fstps	-276(%ebp)
	movss	-276(%ebp), %xmm0
	movss	%xmm0, (%esp)
	movss	-264(%ebp), %xmm2
	movss	-288(%ebp), %xmm1
	movss	LC5, %xmm0
	movl	-272(%ebp), %eax
	call	_hicsetsubsttex.isra.0
L1385:
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
	jmp	L569
L49:
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$30463, -152(%ebp)
	ja	L1412
	cmpl	$-2, %eax
	jl	L2
	movl	$LC93, 12(%esp)
	movl	$2634, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L52:
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	movl	$0, -200(%ebp)
	movl	$0, -192(%ebp)
	movl	$0, -184(%ebp)
	movl	$-1, -176(%ebp)
	movl	$0, -168(%ebp)
	movl	$-1, -160(%ebp)
	call	_scriptfile_getbraces
	movl	%eax, -264(%ebp)
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	movl	-152(%ebp), %ecx
	cmpl	%ecx, 12(%eax)
	jnb	L535
	movl	%ecx, -272(%ebp)
L550:
	movl	-248(%ebp), %eax
	call	_scriptfile_gettoken
	movl	%eax, %esi
	testl	%eax, %eax
	je	L546
	movl	$__ZZL10defsparserP10scriptfileE14palookuptokens, %ebx
	movl	$__ZZL10defsparserP10scriptfileE14palookuptokens+72, %edi
	jmp	L547
	.p2align 4,,10
	.p2align 3
L993:
	subl	$8, %edi
L547:
	movl	(%edi), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1413
	cmpl	%edi, %ebx
	jne	L993
L546:
	movl	-248(%ebp), %eax
	movl	-272(%ebp), %ecx
	cmpl	%ecx, 12(%eax)
	jb	L550
	testb	$1, -264(%ebp)
	je	L535
	movl	-176(%ebp), %eax
	leal	-1(%eax), %edx
	cmpl	$250, %edx
	ja	L1414
	testb	$8, -264(%ebp)
	jne	L1415
	testb	$2, -264(%ebp)
	jne	L1416
L554:
	testb	$4, -264(%ebp)
	jne	L994
	movl	-168(%ebp), %ebx
	testl	%ebx, %ebx
	jne	L556
	movl	$1, %edx
L558:
	cmpb	$0, _paletteloaded
	je	L2
	movzbl	-200(%ebp), %ecx
	movl	_palookup(,%ebx,4), %ebx
	movl	%edx, 8(%esp)
	movzbl	-184(%ebp), %edx
	sall	$2, %ecx
	sall	$2, %edx
	movzbl	%cl, %ecx
	movzbl	%dl, %edx
	movl	%edx, 4(%esp)
	movzbl	-192(%ebp), %edx
	sall	$2, %edx
	movzbl	%dl, %edx
	movl	%edx, (%esp)
	movl	%ebx, %edx
	call	_paletteMakeLookupTable.part.0
	jmp	L2
L53:
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	movl	$255, -208(%ebp)
	movl	$255, -204(%ebp)
	movl	$255, -200(%ebp)
	movl	$0, -192(%ebp)
	movl	$0, -184(%ebp)
	movl	$0, -176(%ebp)
	movl	$-1, -168(%ebp)
	movl	$0, -160(%ebp)
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L2
	movl	-152(%ebp), %eax
	movl	%eax, -264(%ebp)
	.p2align 4
	.p2align 3
L530:
	movl	-248(%ebp), %eax
	movl	-264(%ebp), %ecx
	cmpl	%ecx, 12(%eax)
	jnb	L1417
	movl	-248(%ebp), %eax
	call	_scriptfile_gettoken
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L530
	movl	$__ZZL10defsparserP10scriptfileE10tinttokens, %esi
	movl	$__ZZL10defsparserP10scriptfileE10tinttokens+104, %edi
	jmp	L519
	.p2align 4,,10
	.p2align 3
L516:
	cmpl	%edi, %esi
	je	L530
	subl	$8, %edi
L519:
	movl	(%edi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L516
	movl	4(%edi), %eax
	cmpl	$62, %eax
	jg	L1418
	cmpl	$26, %eax
	jle	L530
	subl	$27, %eax
	cmpl	$35, %eax
	ja	L530
	jmp	*L521(,%eax,4)
	.section .rdata,"dr"
	.align 4
L521:
	.long	L525
	.long	L524
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L530
	.long	L523
	.long	L522
	.long	L520
	.text
L54:
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	movl	$-1, -192(%ebp)
	movl	$-1, -184(%ebp)
	movl	$0, -176(%ebp)
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L2
	movl	-168(%ebp), %eax
	movl	%eax, -264(%ebp)
	.p2align 4
	.p2align 3
L494:
	movl	-248(%ebp), %eax
	movl	-264(%ebp), %ecx
	cmpl	%ecx, 12(%eax)
	jnb	L1419
	movl	-248(%ebp), %eax
	call	_scriptfile_gettoken
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L494
	movl	$__ZZL10defsparserP10scriptfileE13highpaltokens, %esi
	movl	$__ZZL10defsparserP10scriptfileE13highpaltokens+16, %edi
	jmp	L491
	.p2align 4,,10
	.p2align 3
L488:
	cmpl	%edi, %esi
	je	L494
	subl	$8, %edi
L491:
	movl	(%edi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L488
	movl	4(%edi), %eax
	cmpl	$28, %eax
	je	L1420
	cmpl	$29, %eax
	je	L492
	cmpl	$13, %eax
	jne	L494
	movl	-248(%ebp), %eax
	leal	-176(%ebp), %edx
	call	_scriptfile_getstring
	jmp	L494
L55:
	movl	-248(%ebp), %eax
	xorps	%xmm0, %xmm0
	leal	-176(%ebp), %edx
	movl	$0, -136(%ebp)
	movl	$0, -132(%ebp)
	movl	$-1, -168(%ebp)
	movl	$0, -160(%ebp)
	movups	%xmm0, -152(%ebp)
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %ecx
	movl	-176(%ebp), %eax
	movl	$0, -264(%ebp)
	cmpl	%eax, 12(%ecx)
	movl	%eax, -272(%ebp)
	jnb	L988
	leal	-152(%ebp), %ecx
	movl	%ecx, -276(%ebp)
L477:
	movl	-248(%ebp), %eax
	call	_scriptfile_gettoken
	movl	%eax, %esi
	testl	%eax, %eax
	je	L476
	movl	$__ZZL10defsparserP10scriptfileE12skyboxtokens, %ebx
	movl	$__ZZL10defsparserP10scriptfileE12skyboxtokens+192, %edi
	jmp	L475
	.p2align 4,,10
	.p2align 3
L989:
	subl	$8, %edi
L475:
	movl	(%edi), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1421
	cmpl	%edi, %ebx
	jne	L989
L476:
	movl	-248(%ebp), %eax
	movl	-272(%ebp), %ecx
	cmpl	%ecx, 12(%eax)
	jb	L477
	movl	-168(%ebp), %edi
	movl	-276(%ebp), %ecx
	testl	%edi, %edi
	js	L458
	movl	$1, %edx
L478:
	movl	%edi, -276(%ebp)
	xorl	%esi, %esi
	movl	%ecx, %edi
L484:
	movl	(%edi,%esi,4), %ebx
	testl	%ebx, %ebx
	je	L1422
L481:
	movl	%ebx, %eax
	movl	%edx, -272(%ebp)
	addl	$1, %esi
	call	_check_file_exist
	movl	-272(%ebp), %edx
	xorl	$1, %eax
	andl	%eax, %edx
	cmpl	$6, %esi
	jne	L484
	movl	%edi, %ecx
	movl	-276(%ebp), %edi
	testl	%edx, %edx
	je	L2
	movl	-160(%ebp), %edx
	cmpl	$30719, %edi
	ja	L2
	cmpl	$255, %edx
	ja	L2
	movl	-264(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	_hicsetskybox.part.0.isra.0
	jmp	L2
	.p2align 4,,10
	.p2align 3
L40:
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-168(%ebp), %ebx
	cmpl	$30463, %ebx
	ja	L1423
	movl	-160(%ebp), %edx
	testw	%dx, %dx
	je	L213
	movl	-152(%ebp), %eax
	testw	%ax, %ax
	je	L213
	testl	%edx, %edx
	jle	L2
	testl	%eax, %eax
	jle	L2
	movw	%ax, _tilesiz+2(,%ebx,4)
	movl	%ebx, %eax
	movw	%dx, _tilesiz(,%ebx,4)
	call	_tileUpdatePicSiz
	movl	%ebx, %eax
	movl	%ebx, %edx
	movl	$0, _picanm(%ebx,%ebx,4)
	sarl	$3, %eax
	andl	$7, %edx
	movb	$0, _picanm+4(%ebx,%ebx,4)
	movzbl	__ZL8pow2char.lto_priv.11(%edx), %edx
	orb	%dl, _faketile(%eax)
	movl	_faketiledata(,%ebx,4), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, _faketiledata(,%ebx,4)
	jmp	L2
	.p2align 4,,10
	.p2align 3
L41:
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getstring
	jmp	L2
L42:
	movl	-248(%ebp), %eax
	leal	-176(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-168(%ebp), %ecx
	movl	$63, %eax
	movl	$63, %edx
	movl	$63, %ebx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	cmovs	%eax, %ecx
	movl	-160(%ebp), %eax
	cmpl	%edx, %eax
	movl	%ecx, -168(%ebp)
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	-152(%ebp), %edx
	cmpl	%ebx, %edx
	movl	%eax, -160(%ebp)
	cmovg	%ebx, %edx
	xorl	%ebx, %ebx
	testl	%edx, %edx
	cmovs	%ebx, %edx
	movl	-176(%ebp), %ebx
	movl	%edx, -152(%ebp)
	cmpb	$0, _paletteloaded
	je	L2
	cmpl	$255, %ebx
	ja	L2
	sall	$2, %edx
	sall	$2, %eax
	movl	$1, 8(%esp)
	movzbl	%dl, %edx
	movzbl	%al, %eax
	sall	$2, %ecx
	movl	%edx, 4(%esp)
	movzbl	%cl, %ecx
	xorl	%edx, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_paletteMakeLookupTable.part.0
	jmp	L2
	.p2align 4,,10
	.p2align 3
L43:
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-168(%ebp), %eax
	cmpl	$255, %eax
	ja	L2
	movl	-152(%ebp), %ecx
	movl	-160(%ebp), %edx
	jmp	L87
L88:
	movb	%dl, _editorcolors(%eax)
	addl	$1, %eax
	addl	$1, %edx
	movb	$1, _editorcolorsdef-1(%eax)
	cmpl	$256, %eax
	je	L2
L87:
	cmpl	%edx, %ecx
	jge	L88
	jmp	L2
	.p2align 4,,10
	.p2align 3
L44:
	movl	-248(%ebp), %eax
	leal	-176(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-176(%ebp), %ebx
	cmpl	$255, %ebx
	ja	L2
	movl	-152(%ebp), %eax
	movl	$63, %edx
	movl	$63, %ecx
	movl	$63, %esi
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	-160(%ebp), %edx
	cmpl	%ecx, %edx
	cmovg	%ecx, %edx
	xorl	%ecx, %ecx
	testl	%edx, %edx
	cmovs	%ecx, %edx
	movl	-168(%ebp), %ecx
	cmpl	%esi, %ecx
	cmovg	%esi, %ecx
	xorl	%esi, %esi
	testl	%ecx, %ecx
	cmovs	%esi, %ecx
	sall	$2, %edx
	sall	$2, %eax
	movb	%dl, _vgapal16+1(,%ebx,4)
	sall	$2, %ecx
	movb	%al, _vgapal16+2(,%ebx,4)
	movb	%cl, _vgapal16(,%ebx,4)
	jmp	L2
	.p2align 4,,10
	.p2align 3
L45:
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-168(%ebp), %eax
	cmpl	$30719, %eax
	ja	L2
	movl	-160(%ebp), %edx
	movb	%dl, _spritecol2d(%eax,%eax)
	movl	-152(%ebp), %edx
	movb	%dl, _spritecol2d+1(%eax,%eax)
	jmp	L2
	.p2align 4,,10
	.p2align 3
L46:
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getdouble
	testl	%eax, %eax
	jne	L2
	movl	-256(%ebp), %eax
	leal	-160(%ebp), %ecx
	leal	-168(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	-248(%ebp), %eax
	movl	%eax, (%esp)
	movl	$LC7, %eax
	call	__ZL16check_tile_rangePKcPiS1_PK10scriptfileS0_.lto_priv.0
	testl	%eax, %eax
	jne	L2
	movl	-168(%ebp), %ebx
	movl	-160(%ebp), %eax
	cmpl	%eax, %ebx
	jg	L2
	flds	LC6
	fmull	-152(%ebp)
	leal	1(%eax), %esi
	fstps	-256(%ebp)
L83:
	movss	-256(%ebp), %xmm3
	addl	$1, %ebx
	movss	%xmm3, (%esp)
	call	_lrintf
	movb	%al, _alphahackarray-1(%ebx)
	cmpl	%esi, %ebx
	jne	L83
	jmp	L2
	.p2align 4,,10
	.p2align 3
L47:
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getdouble
	testl	%eax, %eax
	jne	L2
	movl	-160(%ebp), %ebx
	cmpl	$30719, %ebx
	ja	L2
	flds	LC6
	fmull	-152(%ebp)
	fstps	-256(%ebp)
	movss	-256(%ebp), %xmm0
	movss	%xmm0, (%esp)
	call	_lrintf
	movb	%al, _alphahackarray(%ebx)
	jmp	L2
	.p2align 4,,10
	.p2align 3
L56:
	movl	-248(%ebp), %esi
	leal	-200(%ebp), %edx
	movl	$30720, -184(%ebp)
	movl	$-1, -176(%ebp)
	movl	$-1, -168(%ebp)
	movl	%esi, %eax
	movl	$0, -152(%ebp)
	movl	$0, -148(%ebp)
	movl	$0, -144(%ebp)
	movl	$0, -140(%ebp)
	call	_scriptfile_getstring
	testl	%eax, %eax
	jne	L2
	leal	-192(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L2
	movl	-192(%ebp), %ecx
	movl	_nextvoxid, %eax
	movl	%ecx, -264(%ebp)
	cmpl	$2048, %eax
	je	L1424
	movl	-200(%ebp), %ebx
	movl	%ebx, %edx
	call	_qloadkvx
	testl	%eax, %eax
	jne	L1425
	movl	_nextvoxid, %eax
	leal	1(%eax), %edx
	movl	%eax, __ZL9lastvoxid
	movl	-248(%ebp), %eax
	movl	%edx, _nextvoxid
	movl	12(%eax), %eax
	.p2align 4
	.p2align 3
L418:
	cmpl	-264(%ebp), %eax
	jnb	L1426
	movl	-248(%ebp), %eax
	call	_scriptfile_gettoken
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1384
	movl	$__ZZL10defsparserP10scriptfileE11voxeltokens+40, %esi
	jmp	L410
	.p2align 4,,10
	.p2align 3
L985:
	subl	$8, %esi
L410:
	movl	(%esi), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1427
	movl	$__ZZL10defsparserP10scriptfileE11voxeltokens, %eax
	cmpl	%esi, %eax
	jne	L985
	jmp	L1384
L1595:
	fstp	%st(0)
	.p2align 4
	.p2align 3
L1384:
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
	jmp	L418
L57:
	movl	$0, -200(%ebp)
	leal	-152(%ebp), %ecx
	xorl	%eax, %eax
	movl	$1072693248, -196(%ebp)
	movl	$0, -192(%ebp)
	movl	$0, -188(%ebp)
	movl	$0, -184(%ebp)
	movl	$0, -180(%ebp)
	movl	$0, -232(%ebp)
	movl	$0, -228(%ebp)
	movl	$0, -224(%ebp)
L251:
	movl	$0, (%ecx,%eax)
	movl	$0, 4(%ecx,%eax)
	movl	$0, 8(%ecx,%eax)
	movl	$0, 12(%ecx,%eax)
	addl	$16, %eax
	cmpl	$128, %eax
	jb	L251
	movl	-248(%ebp), %eax
	leal	-236(%ebp), %edx
	movl	%ecx, -256(%ebp)
	movl	$0, __ZL13lastmodelskin
	movl	$0, __ZL9modelskin
	movl	$0, __ZL9seenframe
	call	_scriptfile_getstring
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-240(%ebp), %edx
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L2
	movl	-236(%ebp), %esi
	movl	%esi, %eax
	call	_md_loadmodel
	movl	-240(%ebp), %ecx
	movl	%eax, __ZL11lastmodelid
	movl	%ecx, -276(%ebp)
	testl	%eax, %eax
	js	L254
	movl	-256(%ebp), %ecx
	movl	-248(%ebp), %ebx
	movl	$1, -264(%ebp)
	movl	%esi, -308(%ebp)
	movl	%ecx, -312(%ebp)
	movl	12(%ebx), %eax
L270:
	cmpl	-276(%ebp), %eax
	jnb	L1428
	movl	%ebx, %eax
	call	_scriptfile_gettoken
	movl	%eax, %esi
	testl	%eax, %eax
	je	L379
	movl	$__ZZL10defsparserP10scriptfileE11modeltokens+96, %edi
	jmp	L269
	.p2align 4,,10
	.p2align 3
L975:
	subl	$8, %edi
L269:
	movl	(%edi), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1429
	movl	$__ZZL10defsparserP10scriptfileE11modeltokens, %eax
	cmpl	%edi, %eax
	jne	L975
L379:
	movl	12(%ebx), %eax
	jmp	L270
L58:
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	leal	-152(%ebp), %ecx
	movl	-248(%ebp), %eax
	movl	%ecx, %edx
	movl	%ecx, -264(%ebp)
	call	_scriptfile_getsymbol
	movl	-264(%ebp), %ecx
	testl	%eax, %eax
	jne	L2
	movl	-256(%ebp), %eax
	leal	-160(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	-248(%ebp), %eax
	movl	%eax, (%esp)
	movl	$LC50, %eax
	call	__ZL16check_tile_rangePKcPiS1_PK10scriptfileS0_.lto_priv.0
	testl	%eax, %eax
	jne	L2
	movl	__ZL9lastvoxid, %edx
	testl	%edx, %edx
	js	L1430
	movl	-160(%ebp), %eax
	movl	-152(%ebp), %ecx
	cmpl	%ecx, %eax
	jg	L2
	leal	1(%ecx), %ebx
	subl	%eax, %ecx
	andl	$1, %ecx
	jne	L250
	movw	%dx, _tiletovox(%eax,%eax)
	addl	$1, %eax
	cmpl	%ebx, %eax
	je	L2
L250:
	movw	%dx, _tiletovox(%eax,%eax)
	movw	%dx, _tiletovox+2(%eax,%eax)
	addl	$2, %eax
	cmpl	%ebx, %eax
	jne	L250
	jmp	L2
	.p2align 4,,10
	.p2align 3
L59:
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getstring
	testl	%eax, %eax
	jne	L2
	movl	_nextvoxid, %eax
	cmpl	$2048, %eax
	je	L1431
	movl	-152(%ebp), %ebx
	movl	%ebx, %edx
	call	_qloadkvx
	testl	%eax, %eax
	jne	L1432
	movl	_nextvoxid, %eax
	leal	1(%eax), %edx
	movl	%eax, __ZL9lastvoxid
	movl	%edx, _nextvoxid
	jmp	L2
L60:
	movl	-248(%ebp), %eax
	movl	$__ZL9modelskin, %edx
	call	_scriptfile_getsymbol
	jmp	L2
L61:
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getstring
	testl	%eax, %eax
	jne	L2
	movl	__ZL9seenframe, %eax
	testl	%eax, %eax
	je	L241
	movl	__ZL13lastmodelskin, %eax
	addl	$1, %eax
	movl	%eax, __ZL13lastmodelskin
	movl	%eax, __ZL9modelskin
L241:
	movl	-152(%ebp), %ebx
	movl	$0, __ZL9seenframe
	movl	%ebx, %eax
	call	_check_file_exist
	testl	%eax, %eax
	jne	L2
	movl	__ZL11lastmodelid, %eax
	testl	%eax, %eax
	js	L1433
	movl	-160(%ebp), %esi
	movl	$0, 8(%esp)
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movl	$0, 4(%esp)
	movl	__ZL9modelskin, %edx
	movss	LC4, %xmm2
	testl	%edx, %edx
	cmovs	%ecx, %edx
	movaps	%xmm2, %xmm1
	movl	%esi, %ecx
	movl	%edx, (%esp)
	movl	%ebx, %edx
	call	_md_defineskin
	cmpl	$-3, %eax
	je	L243
	cmpl	$-2, %eax
	jne	L2
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%ebx, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC46, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1397, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
	.p2align 4,,10
	.p2align 3
L62:
	movl	-248(%ebp), %eax
	leal	-176(%ebp), %edx
	call	_scriptfile_getstring
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getstring
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getdouble
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	__ZL11lastmodelid, %ebx
	testl	%ebx, %ebx
	js	L1434
	movl	-160(%ebp), %eax
	fldl	LC42
	movl	%eax, 4(%esp)
	fmull	-152(%ebp)
	fnstcw	-242(%ebp)
	movzwl	-242(%ebp), %eax
	orb	$12, %ah
	movw	%ax, -244(%ebp)
	movl	%ebx, %eax
	fldcw	-244(%ebp)
	fistpl	(%esp)
	fldcw	-242(%ebp)
	movl	-168(%ebp), %ecx
	movl	-176(%ebp), %edx
	call	_md_defineanimation
	cmpl	$-3, %eax
	je	L238
	cmpl	$-2, %eax
	jne	L2
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC43, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1344, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
	.p2align 4,,10
	.p2align 3
L63:
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getstring
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	leal	-152(%ebp), %ecx
	movl	-248(%ebp), %eax
	movl	%ecx, %edx
	movl	%ecx, -264(%ebp)
	call	_scriptfile_getsymbol
	movl	-264(%ebp), %ecx
	testl	%eax, %eax
	jne	L2
	movl	-256(%ebp), %eax
	leal	-160(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	-248(%ebp), %eax
	movl	%eax, (%esp)
	movl	$LC37, %eax
	call	__ZL16check_tile_rangePKcPiS1_PK10scriptfileS0_.lto_priv.0
	testl	%eax, %eax
	jne	L2
	movl	__ZL11lastmodelid, %edi
	testl	%edi, %edi
	js	L1435
	movl	-160(%ebp), %ebx
	cmpl	-152(%ebp), %ebx
	jg	L231
	movl	-168(%ebp), %esi
L235:
	movl	$0, 4(%esp)
	xorl	%edx, %edx
	xorps	%xmm0, %xmm0
	movl	%ebx, %ecx
	movl	__ZL9modelskin, %eax
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%esi, %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	_md_defineframe
	cmpl	$-2, %eax
	je	L232
	cmpl	$-1, %eax
	je	L231
	cmpl	$-3, %eax
	je	L233
	addl	$1, %ebx
	cmpl	-152(%ebp), %ebx
	jg	L231
	movl	__ZL11lastmodelid, %edi
	jmp	L235
	.p2align 4,,10
	.p2align 3
L64:
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getstring
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getdouble
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-168(%ebp), %esi
	movl	%esi, %eax
	call	_md_loadmodel
	movl	%eax, __ZL11lastmodelid
	movl	%eax, %ebx
	testl	%eax, %eax
	js	L1436
	fldl	-152(%ebp)
	movl	_mdinited, %ecx
	movl	-160(%ebp), %esi
	fstpl	-256(%ebp)
	testl	%ecx, %ecx
	je	L1437
L226:
	cmpl	_nextmodelid, %ebx
	jnb	L227
	movl	_models, %eax
	fldl	-256(%ebp)
	movl	(%eax,%ebx,4), %eax
	fstps	-256(%ebp)
	movss	-256(%ebp), %xmm0
	movl	%esi, 4(%eax)
	movl	$0x00000000, 16(%eax)
	movl	$0x00000000, 20(%eax)
	movl	$0, 28(%eax)
	movss	%xmm0, 12(%eax)
L227:
	cmpl	$4, _glrendmode
	je	L1438
L228:
	movl	$0, __ZL13lastmodelskin
	movl	$0, __ZL9modelskin
	movl	$0, __ZL9seenframe
	jmp	L2
	.p2align 4,,10
	.p2align 3
L65:
	movl	-248(%ebp), %eax
	leal	-184(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-176(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-184(%ebp), %ebx
	cmpl	$255, %ebx
	ja	L2
	movl	-152(%ebp), %esi
	movl	-160(%ebp), %edi
	movl	-168(%ebp), %eax
	movl	-176(%ebp), %edx
	cmpl	$0, _hicinitcounter
	je	L1439
L80:
	movb	%al, _hictinting+3(,%ebx,8)
	movl	%edi, %eax
	movb	%dl, _hictinting+2(,%ebx,8)
	movb	%al, _hictinting+4(,%ebx,8)
	movb	$0, _hictinting+5(,%ebx,8)
	movw	$0, _hictinting+6(,%ebx,8)
	movw	%si, _hictinting(,%ebx,8)
	jmp	L2
	.p2align 4,,10
	.p2align 3
L68:
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getstring
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-152(%ebp), %edx
	movl	-160(%ebp), %eax
	call	_scriptfile_addsymbolvalue
	jmp	L2
L69:
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getstring
	testl	%eax, %eax
	jne	L2
	movl	-256(%ebp), %ecx
	movl	-248(%ebp), %edx
	movl	-152(%ebp), %eax
	call	__ZL18defsparser_includePKcPK10scriptfileS0_.lto_priv.0
	jmp	L2
L66:
	movl	-248(%ebp), %eax
	leal	-176(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getsymbol
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L2
	leal	-152(%ebp), %ecx
	movl	$1, %ebx
	movl	%ecx, -256(%ebp)
	movl	%ecx, %edi
L78:
	movl	-248(%ebp), %eax
	movl	%edi, %edx
	call	_scriptfile_getstring
	testl	%eax, %eax
	jne	L2
	movl	(%edi), %eax
	addl	$1, %esi
	addl	$4, %edi
	call	_check_file_exist
	xorl	$1, %eax
	andl	%eax, %ebx
	cmpl	$6, %esi
	jne	L78
	andl	$1, %ebx
	movl	-256(%ebp), %ecx
	je	L2
	movl	-176(%ebp), %eax
	movl	-168(%ebp), %edx
	cmpl	$30719, %eax
	ja	L2
	cmpl	$255, %edx
	ja	L2
	movl	$0, (%esp)
	call	_hicsetskybox.part.0.isra.0
	jmp	L2
	.p2align 4,,10
	.p2align 3
L67:
	movl	-248(%ebp), %eax
	leal	-176(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getstring
	testl	%eax, %eax
	jne	L2
	movl	-152(%ebp), %ebx
	movl	%ebx, %eax
	call	_check_file_exist
	testl	%eax, %eax
	jne	L2
	movss	LC4, %xmm1
	xorl	%eax, %eax
	movl	%ebx, %ecx
	movss	LC5, %xmm0
	movl	%eax, 8(%esp)
	movss	%xmm1, 4(%esp)
	movaps	%xmm1, %xmm2
	movss	%xmm1, (%esp)
	movl	-168(%ebp), %edx
	movl	-176(%ebp), %eax
	call	_hicsetsubsttex.isra.0
	jmp	L2
	.p2align 4,,10
	.p2align 3
L26:
	movl	_num_usermaphacks, %eax
	leal	-160(%ebp), %edx
	movl	$0, -184(%ebp)
	movl	$0, -176(%ebp)
	movl	%eax, -272(%ebp)
	movl	-248(%ebp), %eax
	movl	$0, -168(%ebp)
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L2
	movl	-160(%ebp), %eax
	movl	%eax, -264(%ebp)
	.p2align 4
	.p2align 3
L648:
	movl	-248(%ebp), %eax
	movl	-264(%ebp), %ecx
	cmpl	%ecx, 12(%eax)
	jnb	L1440
	movl	-248(%ebp), %eax
	call	_scriptfile_gettoken
	movl	%eax, %esi
	testl	%eax, %eax
	je	L648
	movl	$__ZZL10defsparserP10scriptfileE13mapinfotokens+32, %edi
	jmp	L647
	.p2align 4,,10
	.p2align 3
L640:
	movl	$__ZZL10defsparserP10scriptfileE13mapinfotokens, %eax
	cmpl	%edi, %eax
	je	L648
	subl	$8, %edi
L647:
	movl	(%edi), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L640
	movl	%eax, %ebx
	movl	4(%edi), %eax
	subl	$108, %eax
	cmpl	$4, %eax
	ja	L648
	jmp	*L642(,%eax,4)
	.section .rdata,"dr"
	.align 4
L642:
	.long	L646
	.long	L645
	.long	L644
	.long	L643
	.long	L641
	.text
L643:
	movl	-248(%ebp), %eax
	leal	-176(%ebp), %edx
	call	_scriptfile_getstring
	jmp	L648
L644:
	movl	-248(%ebp), %eax
	leal	-192(%ebp), %edx
	call	_scriptfile_getstring
	movl	_num_usermaphacks, %eax
	addl	$1, %eax
	imull	$28, %eax, %edi
	movl	%eax, _num_usermaphacks
	movl	%edi, 4(%esp)
	movl	_usermaphacks, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L1022
	testl	%edi, %edi
	jne	L650
L1022:
	movl	_num_usermaphacks, %eax
	movl	%esi, _usermaphacks
	leal	-200(%ebp), %edi
	subl	$1, %eax
	imull	$28, %eax, %eax
	addl	%esi, %eax
	movl	-192(%ebp), %esi
	movl	%eax, -256(%ebp)
	.p2align 4
	.p2align 3
L652:
	xorl	%eax, %eax
	movb	$0, -198(%ebp)
	movw	%ax, -200(%ebp)
	movzbl	(%esi,%ebx,2), %eax
	movb	%al, -200(%ebp)
	movzbl	1(%esi,%ebx,2), %eax
	movb	%al, -199(%ebp)
	movl	$16, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	_strtol
	movl	-256(%ebp), %ecx
	movb	%al, 12(%ecx,%ebx)
	addl	$1, %ebx
	cmpl	$16, %ebx
	jne	L652
	jmp	L648
L645:
	movl	-248(%ebp), %eax
	leal	-184(%ebp), %edx
	call	_scriptfile_getstring
	jmp	L648
L646:
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getstring
	jmp	L648
L641:
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	movl	8(%eax), %ebx
	call	_scriptfile_getstring
	movl	$95, 4(%esp)
	movl	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	_strrchr
	testl	%eax, %eax
	je	L653
	movl	$LC96, 4(%esp)
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L648
L653:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1441
L654:
	movl	$0, -168(%ebp)
	jmp	L648
L24:
	movl	-248(%ebp), %eax
	movl	$_globalflags, %edx
	call	_scriptfile_getnumber
	jmp	L2
L25:
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getstring
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L2
	movl	-152(%ebp), %eax
	movl	$LC98, 12(%esp)
	movl	$2774, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC2, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L28:
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-160(%ebp), %edx
	movl	$1, %eax
	movl	$255, %ecx
	testl	%edx, %edx
	cmovle	%eax, %edx
	movl	-152(%ebp), %eax
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	cmpl	%eax, %edx
	jg	L2
	addl	$1, %eax
	subl	%edx, %eax
	cmpl	$16, %eax
	jnb	L91
	testb	$8, %al
	jne	L1442
	testb	$4, %al
	jne	L1443
	testl	%eax, %eax
	je	L2
	movb	$1, _g_noFloorPal(%edx)
	testb	$2, %al
	je	L2
	movw	$257, _g_noFloorPal-2(%edx,%eax)
	jmp	L2
	.p2align 4,,10
	.p2align 3
L29:
	movl	-256(%ebp), %ecx
	movl	-248(%ebp), %edx
	movl	$LC3, %eax
	call	__ZL18defsparser_includePKcPK10scriptfileS0_.lto_priv.0
	jmp	L2
L30:
	movl	-248(%ebp), %eax
	leal	-176(%ebp), %edx
	movl	$0, -168(%ebp)
	movl	$-1, -160(%ebp)
	call	_scriptfile_getbraces
	movl	-176(%ebp), %esi
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L2
	jmp	L103
	.p2align 4,,10
	.p2align 3
L101:
	movl	$LC9, 4(%esp)
	movl	%edi, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1444
L103:
	movl	-248(%ebp), %eax
	cmpl	%esi, 12(%eax)
	jnb	L1445
	movl	-248(%ebp), %eax
	call	_scriptfile_gettoken
	movl	%eax, %edi
	testl	%eax, %eax
	je	L103
	movl	$LC8, 4(%esp)
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L101
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	movl	$1, %ebx
	call	_scriptfile_getsymbol
	jmp	L103
L31:
	movl	-248(%ebp), %eax
	leal	-192(%ebp), %edx
	movl	$0, -200(%ebp)
	movl	$-1, -192(%ebp)
	movl	$255, -184(%ebp)
	movl	$0, -176(%ebp)
	movl	$0, -168(%ebp)
	movl	$0, -152(%ebp)
	movl	$0, -148(%ebp)
	movl	$0, -144(%ebp)
	movl	$0, -140(%ebp)
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-204(%ebp), %edx
	call	_scriptfile_getbraces
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %esi
	movl	-204(%ebp), %eax
	movl	$0, -292(%ebp)
	movl	$0, -272(%ebp)
	cmpl	%eax, 12(%esi)
	movl	%eax, -288(%ebp)
	movl	$0, -280(%ebp)
	movl	$0, -276(%ebp)
	jnb	L127
	movl	%ebx, -296(%ebp)
L153:
	movl	%esi, %eax
	call	_scriptfile_gettoken
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1382
	movl	$__ZZL10defsparserP10scriptfileE21tilefromtexturetokens+96, %ebx
	jmp	L132
L971:
	subl	$8, %ebx
L132:
	movl	(%ebx), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1446
	movl	$__ZZL10defsparserP10scriptfileE21tilefromtexturetokens, %eax
	cmpl	%ebx, %eax
	jne	L971
L1382:
	movl	12(%esi), %eax
L145:
	cmpl	-288(%ebp), %eax
	jb	L153
	movl	-296(%ebp), %ebx
L127:
	movl	-192(%ebp), %edi
	cmpl	$30463, %edi
	ja	L1447
	movzbl	-139(%ebp), %eax
	movb	%al, -288(%ebp)
	cmpb	$0, -140(%ebp)
	jne	L1448
L155:
	leal	0(,%edi,4), %ebx
	cmpb	$0, -288(%ebp)
	jne	L1449
L159:
	movl	-200(%ebp), %eax
	movl	%eax, -288(%ebp)
	testl	%eax, %eax
	je	L1450
	leal	_picanm(%ebx,%edi), %esi
	movzbl	-264(%ebp), %eax
	movl	%edi, %edx
	orb	%al, 4(%esi)
	movl	-292(%ebp), %eax
	movl	%eax, (%esp)
	movl	-184(%ebp), %ecx
	movl	-288(%ebp), %eax
	call	__ZL26Defs_ImportTileFromTexturePKciii.lto_priv.0
	cmpl	$-3, %eax
	je	L1451
	cmpl	$-768, %eax
	je	L1452
	testl	%eax, %eax
	js	L2
	movl	-280(%ebp), %edx
	movzbl	-276(%ebp), %ecx
	orb	%cl, 3(%esi)
	testl	%edx, %edx
	je	L166
	movl	-176(%ebp), %edx
	movb	%dl, 1(%esi)
	movl	-272(%ebp), %esi
	testl	%esi, %esi
	jne	L167
	testl	%eax, %eax
	jne	L2
L170:
	leal	(%edi,%edi,4), %edi
	movb	$0, _picanm+2(%edi)
	jmp	L2
	.p2align 4,,10
	.p2align 3
L32:
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getstring
	testl	%eax, %eax
	jne	L2
	movl	-160(%ebp), %esi
	cmpl	$30463, %esi
	ja	L1453
	movl	-152(%ebp), %ebx
	movl	$0, (%esp)
	movl	$255, %ecx
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__ZL26Defs_ImportTileFromTexturePKciii.lto_priv.0
	cmpl	$-3, %eax
	je	L1454
	cmpl	$-768, %eax
	je	L1455
	testl	%eax, %eax
	js	L2
	movl	$0, _picanm(%esi,%esi,4)
	movb	$0, _picanm+4(%esi,%esi,4)
	jmp	L2
	.p2align 4,,10
	.p2align 3
L33:
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getnumber
	jmp	L2
L34:
	movl	-248(%ebp), %eax
	leal	-176(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-176(%ebp), %eax
	cmpl	$30463, %eax
	ja	L1456
	movl	-168(%ebp), %ecx
	cmpl	$30463, %ecx
	ja	L1457
	movl	-152(%ebp), %edi
	cmpl	$3, %edi
	ja	L1458
	jne	L1019
	cmpl	%ecx, %eax
	setg	%bl
	movl	%ebx, %edx
	movl	%eax, %ebx
	subl	%ecx, %ebx
	testb	%dl, %dl
	jne	L124
L1019:
	subl	%eax, %ecx
	movl	%ecx, %ebx
L124:
	cmpl	$255, %ebx
	ja	L1459
	movl	-160(%ebp), %esi
	leal	(%eax,%eax,4), %ecx
	movl	$15, %eax
	movl	%edi, %edx
	movb	%bl, _picanm(%ecx)
	cmpl	%eax, %esi
	cmovg	%eax, %esi
	xorl	%eax, %eax
	testl	%esi, %esi
	cmovs	%eax, %esi
	movzbl	_picanm+3(%ecx), %eax
	sall	$6, %edx
	andl	$-16, %eax
	orl	%esi, %eax
	andl	$63, %eax
	orl	%edx, %eax
	movb	%al, _picanm+3(%ecx)
	jmp	L2
	.p2align 4,,10
	.p2align 3
L35:
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	leal	-152(%ebp), %ecx
	movl	-248(%ebp), %eax
	movl	%ecx, %edx
	movl	%ecx, -264(%ebp)
	call	_scriptfile_getsymbol
	movl	-264(%ebp), %ecx
	testl	%eax, %eax
	jne	L2
	movl	-256(%ebp), %eax
	leal	-160(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	-248(%ebp), %eax
	movl	%eax, (%esp)
	movl	$LC34, %eax
	call	__ZL16check_tile_rangePKcPiS1_PK10scriptfileS0_.lto_priv.0
	testl	%eax, %eax
	jne	L2
	movl	-160(%ebp), %ebx
	cmpl	-152(%ebp), %ebx
	jg	L2
L223:
	movl	%ebx, %eax
	addl	$1, %ebx
	call	_tileDelete
	cmpl	-152(%ebp), %ebx
	jle	L223
	jmp	L2
	.p2align 4,,10
	.p2align 3
L36:
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-152(%ebp), %eax
	cmpl	$30463, %eax
	ja	L1460
	call	_tileDelete
	jmp	L2
L37:
	movl	-248(%ebp), %eax
	leal	-192(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-184(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-176(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-256(%ebp), %eax
	leal	-184(%ebp), %ecx
	leal	-192(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	-248(%ebp), %eax
	movl	%eax, (%esp)
	movl	$LC16, %eax
	call	__ZL16check_tile_rangePKcPiS1_PK10scriptfileS0_.lto_priv.0
	testl	%eax, %eax
	jne	L2
	movl	-192(%ebp), %eax
	movl	-184(%ebp), %edi
	movzwl	-176(%ebp), %esi
	movzwl	-168(%ebp), %ebx
	movzbl	-160(%ebp), %ecx
	movzbl	-152(%ebp), %edx
	jmp	L116
L117:
	movw	%si, _h_xsize(%eax,%eax)
	movw	%bx, _h_ysize(%eax,%eax)
	addl	$1, %eax
	movb	%cl, _h_xoffs-1(%eax)
	movb	%dl, _h_yoffs-1(%eax)
L116:
	cmpl	%edi, %eax
	jle	L117
	jmp	L2
	.p2align 4,,10
	.p2align 3
L38:
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-160(%ebp), %ebx
	cmpl	$30463, %ebx
	ja	L1461
	leal	-152(%ebp), %ecx
	movl	-248(%ebp), %eax
	movl	%ecx, %edx
	movl	%ecx, -256(%ebp)
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-152(%ebp), %eax
	movl	-256(%ebp), %edx
	movw	%ax, _h_xsize(%ebx,%ebx)
	movl	-248(%ebp), %eax
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-152(%ebp), %eax
	movl	-256(%ebp), %edx
	movw	%ax, _h_ysize(%ebx,%ebx)
	movl	-248(%ebp), %eax
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-152(%ebp), %eax
	movl	-256(%ebp), %edx
	movb	%al, _h_xoffs(%ebx)
	movl	-248(%ebp), %eax
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-152(%ebp), %eax
	movb	%al, _h_yoffs(%ebx)
	jmp	L2
	.p2align 4,,10
	.p2align 3
L39:
	movl	-248(%ebp), %eax
	leal	-176(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-256(%ebp), %eax
	leal	-168(%ebp), %ecx
	leal	-176(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	-248(%ebp), %eax
	movl	%eax, (%esp)
	movl	$LC32, %eax
	call	__ZL16check_tile_rangePKcPiS1_PK10scriptfileS0_.lto_priv.0
	testl	%eax, %eax
	jne	L2
	movl	-160(%ebp), %eax
	testl	%eax, %eax
	js	L2
	movl	-152(%ebp), %edx
	testl	%edx, %edx
	js	L2
	movl	-176(%ebp), %ebx
	movl	-168(%ebp), %ecx
	testw	%ax, %ax
	je	L1020
	testw	%dx, %dx
	je	L1020
	cmpl	%ecx, %ebx
	jle	L219
	jmp	L2
	.p2align 4,,10
	.p2align 3
L1462:
	movl	-152(%ebp), %edx
	movl	-160(%ebp), %eax
L219:
	movw	%ax, _tilesiz(,%ebx,4)
	movl	%ebx, %eax
	movw	%dx, _tilesiz+2(,%ebx,4)
	call	_tileUpdatePicSiz
	movl	%ebx, %eax
	movl	%ebx, %edx
	movl	$0, _picanm(%ebx,%ebx,4)
	sarl	$3, %eax
	andl	$7, %edx
	movb	$0, _picanm+4(%ebx,%ebx,4)
	movzbl	__ZL8pow2char.lto_priv.11(%edx), %edx
	orb	%dl, _faketile(%eax)
	movl	_faketiledata(,%ebx,4), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, _faketiledata(,%ebx,4)
	addl	$1, %ebx
	cmpl	-168(%ebp), %ebx
	jle	L1462
	jmp	L2
	.p2align 4,,10
	.p2align 3
L7:
	leal	-152(%ebp), %ecx
	movl	-248(%ebp), %eax
	movl	%ecx, %edx
	movl	%ecx, -256(%ebp)
	call	_scriptfile_getstring
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L2
	movl	-152(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 12(%esi)
	jmp	L2
L9:
	movl	-248(%ebp), %esi
	leal	-152(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L2
	movl	-152(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 12(%esi)
	jmp	L2
L10:
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getstring
	jmp	L2
L11:
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getnumber
	jmp	L2
L12:
	movl	-248(%ebp), %eax
	leal	-184(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L1463
	movl	-248(%ebp), %eax
	leal	-176(%ebp), %edx
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L1464
	movl	-176(%ebp), %eax
	movl	-184(%ebp), %ebx
	movl	%eax, -256(%ebp)
	cmpl	$30463, %ebx
	jbe	L947
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1465
L948:
	movl	-256(%ebp), %eax
	movl	-248(%ebp), %ecx
	addl	$1, %eax
	movl	%eax, 12(%ecx)
	jmp	L2
L13:
	movl	-248(%ebp), %eax
	leal	-184(%ebp), %edx
	call	_scriptfile_getstring
	testl	%eax, %eax
	jne	L1466
	movl	-248(%ebp), %eax
	leal	-176(%ebp), %edx
	call	_scriptfile_getbraces
	testl	%eax, %eax
	je	L922
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC132, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3733, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L14:
	movl	-248(%ebp), %eax
	movl	$_realmaxshade, %edx
	call	_scriptfile_getnumber
	xorps	%xmm0, %xmm0
	cvtsi2ssl	_realmaxshade, %xmm0
	movss	%xmm0, _frealmaxshade
	jmp	L2
L15:
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-160(%ebp), %esi
	movl	-152(%ebp), %ebx
	movl	%esi, %eax
	orl	%ebx, %eax
	cmpl	$255, %eax
	ja	L1025
	movl	%esi, %edi
	cmpl	%ebx, %esi
	jg	L1025
L918:
	movl	_blendtable(,%edi,4), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, _blendtable(,%edi,4)
	addl	$1, %edi
	cmpl	%edi, %ebx
	jge	L918
	testl	%esi, %esi
	jne	L2
	andb	$-5, _paletteloaded
	jmp	L2
	.p2align 4,,10
	.p2align 3
L16:
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-160(%ebp), %ebx
	movl	-152(%ebp), %esi
	movl	%ebx, %eax
	orl	%esi, %eax
	cmpl	$255, %eax
	ja	L1024
	movl	%ebx, %edi
	cmpl	%esi, %ebx
	jg	L1024
L915:
	movl	%edi, %eax
	addl	$1, %edi
	call	_paletteFreeLookupTable
	cmpl	%edi, %esi
	jge	L915
	testl	%ebx, %ebx
	jne	L2
	andb	$-3, _paletteloaded
	jmp	L2
	.p2align 4,,10
	.p2align 3
L17:
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-160(%ebp), %esi
	movl	-152(%ebp), %ebx
	movl	%esi, %eax
	orl	%ebx, %eax
	cmpl	$255, %eax
	ja	L1023
	cmpl	%ebx, %esi
	jg	L1023
	testl	%esi, %esi
	jne	L1013
	movl	$768, 8(%esp)
	movl	$0, 4(%esp)
	movl	_basepaltable, %eax
	movl	%eax, (%esp)
	call	_memset
	testl	%ebx, %ebx
	je	L912
	movl	$1, %edi
L913:
	movl	_basepaltable(,%edi,4), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, _basepaltable(,%edi,4)
	addl	$1, %edi
	cmpl	%edi, %ebx
	jge	L913
	testl	%esi, %esi
	jne	L2
L912:
	andb	$-2, _paletteloaded
	jmp	L2
	.p2align 4,,10
	.p2align 3
L18:
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L2
	movl	-152(%ebp), %ebx
	cmpl	$32, %ebx
	jg	L901
	testl	%ebx, %ebx
	jg	L902
	jne	L904
L903:
	movb	%bl, _numalphatabs
	jmp	L2
L19:
	movl	-248(%ebp), %eax
	leal	-176(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %esi
	leal	-184(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getbraces
	movl	%eax, -280(%ebp)
	testl	%eax, %eax
	jne	L2
	movl	-176(%ebp), %ecx
	movl	-184(%ebp), %eax
	movl	%ecx, -276(%ebp)
	movl	%eax, -264(%ebp)
	cmpl	$255, %ecx
	ja	L823
	sall	$4, %ecx
	movl	12(%esi), %eax
	movl	%ecx, -296(%ebp)
L835:
	cmpl	-264(%ebp), %eax
	jnb	L1467
	movl	-248(%ebp), %eax
	call	_scriptfile_gettoken
	movl	%eax, %edi
	testl	%eax, %eax
	je	L862
	movl	$__ZZL10defsparserP10scriptfileE9subtokens_2, %esi
	movl	$__ZZL10defsparserP10scriptfileE9subtokens_2+24, %ebx
	jmp	L830
	.p2align 4,,10
	.p2align 3
L1009:
	subl	$8, %ebx
L830:
	movl	(%ebx), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1468
	cmpl	%ebx, %esi
	jne	L1009
L862:
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
	jmp	L835
L20:
	movl	-248(%ebp), %eax
	leal	-192(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %esi
	leal	-200(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getbraces
	movl	%eax, -280(%ebp)
	testl	%eax, %eax
	jne	L2
	movl	-192(%ebp), %ecx
	movl	-200(%ebp), %eax
	movl	%ecx, -272(%ebp)
	movl	%eax, -276(%ebp)
	cmpl	$255, %ecx
	ja	L736
L1390:
	movl	12(%esi), %eax
L752:
	cmpl	-276(%ebp), %eax
	jnb	L1469
	movl	-248(%ebp), %eax
	call	_scriptfile_gettoken
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1395
	movl	$__ZZL10defsparserP10scriptfileE9subtokens_1, %ebx
	movl	$__ZZL10defsparserP10scriptfileE9subtokens_1+48, %edi
	jmp	L743
	.p2align 4,,10
	.p2align 3
L1004:
	subl	$8, %edi
L743:
	movl	(%edi), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1470
	cmpl	%edi, %ebx
	jne	L1004
L1395:
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
	jmp	L752
L21:
	movl	-248(%ebp), %eax
	leal	-184(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %esi
	leal	-192(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getbraces
	movl	%eax, -280(%ebp)
	testl	%eax, %eax
	jne	L2
	movl	-184(%ebp), %ecx
	movl	-192(%ebp), %eax
	movl	%ecx, -276(%ebp)
	movl	%eax, -272(%ebp)
	cmpl	$255, %ecx
	ja	L689
L1387:
	movl	12(%esi), %eax
L699:
	cmpl	-272(%ebp), %eax
	jnb	L1471
	movl	-248(%ebp), %eax
	call	_scriptfile_gettoken
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1389
	movl	$__ZZL10defsparserP10scriptfileE9subtokens_0, %ebx
	movl	$__ZZL10defsparserP10scriptfileE9subtokens_0+16, %esi
	jmp	L696
	.p2align 4,,10
	.p2align 3
L1002:
	subl	$8, %esi
L696:
	movl	(%esi), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1472
	cmpl	%esi, %ebx
	jne	L1002
L1389:
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
	jmp	L699
L22:
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %esi
	leal	-176(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L2
	movl	-168(%ebp), %eax
	movl	-176(%ebp), %ecx
	leal	1(%eax), %edx
	movl	%ecx, -264(%ebp)
	cmpl	$30464, %edx
	jbe	L671
	leal	1(%ecx), %eax
	movl	%eax, 12(%esi)
	jmp	L2
L23:
	movl	-248(%ebp), %eax
	leal	-176(%ebp), %edx
	movl	$-1, -176(%ebp)
	movl	$0, -168(%ebp)
	movl	$0, -160(%ebp)
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-248(%ebp), %eax
	leal	-184(%ebp), %edx
	movl	-176(%ebp), %esi
	call	_scriptfile_getbraces
	movl	%eax, -272(%ebp)
	testl	%eax, %eax
	jne	L2
	movl	-184(%ebp), %eax
	movl	-248(%ebp), %ecx
	movl	%eax, -296(%ebp)
	cmpl	%eax, 12(%ecx)
	jnb	L172
	movl	$0, -292(%ebp)
	movl	$0, -288(%ebp)
	movl	$0, -280(%ebp)
	movl	%esi, -264(%ebp)
	movl	%esi, -300(%ebp)
	movl	$0, -276(%ebp)
L195:
	movl	-248(%ebp), %eax
	call	_scriptfile_gettoken
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L173
	movl	$__ZZL10defsparserP10scriptfileE14copytiletokens, %esi
	movl	$__ZZL10defsparserP10scriptfileE14copytiletokens+56, %edi
	jmp	L177
L972:
	subl	$8, %edi
L177:
	movl	(%edi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1473
	cmpl	%edi, %esi
	jne	L972
L173:
	movl	-248(%ebp), %eax
	movl	-296(%ebp), %ecx
	cmpl	%ecx, 12(%eax)
	jb	L195
	movl	-300(%ebp), %esi
	cmpl	$30463, %esi
	ja	L197
	movl	-276(%ebp), %eax
	testl	%eax, %eax
	jne	L1474
	cmpl	$30463, -264(%ebp)
	ja	L1475
L201:
	movl	-272(%ebp), %eax
	testl	%eax, %eax
	jle	L198
	movl	-264(%ebp), %eax
	leal	0(,%eax,4), %ebx
	movl	_tilesiz(,%eax,4), %eax
	movl	%eax, _tilesiz(,%esi,4)
	movl	%esi, %eax
	call	_tileUpdatePicSiz
	movl	-288(%ebp), %eax
	testl	%eax, %eax
	je	L203
	movl	-168(%ebp), %eax
	movl	$127, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$-128, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
L204:
	movl	-292(%ebp), %edi
	movb	%al, _picanm+1(%esi,%esi,4)
	testl	%edi, %edi
	je	L205
	movl	-160(%ebp), %eax
	movl	$127, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$-128, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
L206:
	movl	-264(%ebp), %ecx
	movb	%al, _picanm+2(%esi,%esi,4)
	movzbl	_picanm+3(%esi,%esi,4), %eax
	movzbl	_picanm+3(%ecx,%ebx), %ecx
	andl	$-49, %eax
	orb	-280(%ebp), %al
	andl	$48, %ecx
	orl	%ecx, %eax
	movb	%al, _picanm+3(%esi,%esi,4)
	jmp	L2
	.p2align 4,,10
	.p2align 3
L1444:
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getstring
	jmp	L103
L1441:
	movl	-248(%ebp), %esi
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC97, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2747, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L654
L1466:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC131, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3726, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1463:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC136, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3786, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L520:
	movl	-248(%ebp), %eax
	leal	-200(%ebp), %edx
	call	_scriptfile_getnumber
	movl	-200(%ebp), %eax
	movl	$255, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, -200(%ebp)
	jmp	L530
L522:
	movl	-248(%ebp), %eax
	leal	-204(%ebp), %edx
	call	_scriptfile_getnumber
	movl	-204(%ebp), %eax
	movl	$255, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, -204(%ebp)
	jmp	L530
L523:
	movl	-248(%ebp), %eax
	leal	-208(%ebp), %edx
	call	_scriptfile_getnumber
	movl	-208(%ebp), %eax
	movl	$255, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, -208(%ebp)
	jmp	L530
L524:
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getsymbol
	jmp	L530
L525:
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getsymbol
	jmp	L530
	.p2align 4,,10
	.p2align 3
L1427:
	movl	%eax, %ebx
	movl	4(%esi), %eax
	cmpl	$23, %eax
	je	L1476
	jle	L1477
	cmpl	$154, %eax
	je	L416
	cmpl	$162, %eax
	jne	L1384
	movl	__ZL9lastvoxid, %eax
	orb	$1, _voxflags(%eax)
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
	jmp	L418
L1418:
	cmpl	$150, %eax
	je	L526
	cmpl	$151, %eax
	je	L527
	cmpl	$149, %eax
	jne	L530
	movl	-248(%ebp), %eax
	leal	-192(%ebp), %edx
	call	_scriptfile_getnumber
	movl	-192(%ebp), %eax
	movl	$255, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, -192(%ebp)
	jmp	L530
L1477:
	cmpl	$21, %eax
	je	L413
	cmpl	$22, %eax
	jne	L1478
	movl	-248(%ebp), %esi
	leal	-184(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getsymbol
	movl	12(%esi), %eax
	jmp	L418
L1478:
	cmpl	$14, %eax
	jne	L1384
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	movl	$0, -160(%ebp)
	movl	$1072693248, -156(%ebp)
	call	_scriptfile_getdouble
	movl	__ZL9lastvoxid, %edx
	fldl	-160(%ebp)
	fnstcw	-242(%ebp)
	flds	LC72
	movzwl	-242(%ebp), %eax
	fmul	%st(1), %st
	orb	$12, %ah
	movw	%ax, -244(%ebp)
	movl	_voxmodels(,%edx,4), %eax
	fldcw	-244(%ebp)
	fistpl	_voxscale(,%edx,4)
	fldcw	-242(%ebp)
	testl	%eax, %eax
	je	L1595
	fstps	-272(%ebp)
	movss	-272(%ebp), %xmm0
	movss	%xmm0, 8(%eax)
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
	jmp	L418
L492:
	movl	-248(%ebp), %eax
	leal	-192(%ebp), %edx
	call	_scriptfile_getsymbol
	jmp	L494
L1420:
	movl	-248(%ebp), %eax
	leal	-184(%ebp), %edx
	call	_scriptfile_getsymbol
	jmp	L494
L413:
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getsymbol
	movl	-168(%ebp), %edi
	cmpl	$30463, %edi
	ja	L1479
	movzbl	-139(%ebp), %eax
	movb	%al, -272(%ebp)
	cmpb	$0, -140(%ebp)
	jne	L1480
L429:
	cmpb	$0, -272(%ebp)
	jne	L1481
L433:
	movl	__ZL9lastvoxid, %eax
	movw	%ax, _tiletovox(%edi,%edi)
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
	jmp	L418
L1476:
	movl	-248(%ebp), %esi
	leal	-176(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getsymbol
	movl	-256(%ebp), %eax
	movl	%esi, (%esp)
	leal	-184(%ebp), %edx
	leal	-176(%ebp), %ecx
	movl	%eax, 4(%esp)
	movl	$LC71, %eax
	call	__ZL16check_tile_rangePKcPiS1_PK10scriptfileS0_.lto_priv.0
	testl	%eax, %eax
	je	L436
	movl	12(%esi), %eax
	jmp	L418
L416:
	movl	-248(%ebp), %edi
	leal	-160(%ebp), %edx
	movl	%edi, %eax
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L1384
	movl	-160(%ebp), %ebx
	jmp	L425
	.p2align 4,,10
	.p2align 3
L423:
	movl	$LC21, 4(%esp)
	movl	%esi, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1482
L425:
	movl	12(%edi), %eax
	cmpl	%ebx, %eax
	jnb	L418
	movl	%edi, %eax
	call	_scriptfile_gettoken
	movl	%eax, %esi
	testl	%eax, %eax
	je	L425
	movl	$LC20, 4(%esp)
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L423
	leal	-148(%ebp), %edx
	movl	%edi, %eax
	call	_scriptfile_getsymbol
	leal	-144(%ebp), %edx
	movl	%edi, %eax
	call	_scriptfile_getsymbol
	movb	$1, -139(%ebp)
	jmp	L425
L1482:
	leal	-152(%ebp), %edx
	movl	%edi, %eax
	call	_scriptfile_getsymbol
	movb	$1, -140(%ebp)
	jmp	L425
L527:
	movl	-248(%ebp), %eax
	leal	-176(%ebp), %edx
	call	_scriptfile_getnumber
	movl	-176(%ebp), %eax
	movl	$255, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, -176(%ebp)
	jmp	L530
L526:
	movl	-248(%ebp), %eax
	leal	-184(%ebp), %edx
	call	_scriptfile_getnumber
	movl	-184(%ebp), %eax
	movl	$255, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, -184(%ebp)
	jmp	L530
L1421:
	movl	4(%edi), %eax
	subl	$21, %eax
	cmpl	$52, %eax
	ja	L476
	jmp	*L462(,%eax,4)
	.section .rdata,"dr"
	.align 4
L462:
	.long	L474
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L473
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L472
	.long	L471
	.long	L470
	.long	L469
	.long	L468
	.long	L467
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L476
	.long	L466
	.long	L465
	.long	L464
	.long	L463
	.long	L461
	.text
L1413:
	movl	4(%edi), %eax
	subl	$28, %eax
	cmpl	$34, %eax
	ja	L546
	jmp	*L539(,%eax,4)
	.section .rdata,"dr"
	.align 4
L539:
	.long	L545
	.long	L546
	.long	L546
	.long	L546
	.long	L546
	.long	L546
	.long	L546
	.long	L546
	.long	L546
	.long	L546
	.long	L546
	.long	L546
	.long	L546
	.long	L546
	.long	L546
	.long	L546
	.long	L546
	.long	L546
	.long	L546
	.long	L546
	.long	L546
	.long	L546
	.long	L546
	.long	L546
	.long	L546
	.long	L546
	.long	L546
	.long	L546
	.long	L544
	.long	L543
	.long	L542
	.long	L546
	.long	L541
	.long	L540
	.long	L538
	.text
L538:
	movl	-248(%ebp), %eax
	leal	-184(%ebp), %edx
	call	_scriptfile_getnumber
	movl	-184(%ebp), %eax
	movl	$63, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, -184(%ebp)
	jmp	L546
L540:
	movl	-248(%ebp), %eax
	leal	-192(%ebp), %edx
	call	_scriptfile_getnumber
	movl	-192(%ebp), %eax
	movl	$63, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, -192(%ebp)
	jmp	L546
L541:
	movl	-248(%ebp), %eax
	leal	-200(%ebp), %edx
	call	_scriptfile_getnumber
	movl	-200(%ebp), %eax
	movl	$63, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, -200(%ebp)
	jmp	L546
L542:
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getsymbol
	movl	-160(%ebp), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	setg	%al
	movl	%eax, -160(%ebp)
	jmp	L546
L543:
	movl	-264(%ebp), %ecx
	movl	%ecx, %eax
	orl	$8, %eax
	testb	$6, %cl
	cmove	%ecx, %eax
	orl	$4, %eax
	movl	%eax, -264(%ebp)
	jmp	L546
L544:
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getsymbol
	movl	-264(%ebp), %ecx
	movl	%ecx, %eax
	orl	$8, %eax
	testb	$6, %cl
	cmove	%ecx, %eax
	orl	$2, %eax
	movl	%eax, -264(%ebp)
	jmp	L546
L545:
	movl	-248(%ebp), %eax
	leal	-176(%ebp), %edx
	call	_scriptfile_getsymbol
	orl	$1, -264(%ebp)
	jmp	L546
L1480:
	movswl	_tilesiz(,%edi,4), %edx
	movswl	_tilesiz+2(,%edi,4), %eax
	imull	%eax, %edx
	testl	%edx, %edx
	jle	L430
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -276(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	movl	-276(%ebp), %edx
	subl	$4, %esp
	testl	%eax, %eax
	movl	%eax, %esi
	je	L449
	movswl	%di, %eax
	movl	%esi, %ecx
	call	_tileLoadData
	movl	-276(%ebp), %edx
	xorl	%ecx, %ecx
	movl	%esi, %eax
	call	_Bcrc32
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, %ebx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L430:
	cmpl	%ebx, -152(%ebp)
	je	L429
	cmpb	$0, -272(%ebp)
	je	L1384
L432:
	movswl	_tilesiz(,%edi,4), %edx
	cmpl	-148(%ebp), %edx
	jne	L1384
	movswl	_tilesiz+2(,%edi,4), %eax
	cmpl	-144(%ebp), %eax
	jne	L1384
	cmpb	$0, -272(%ebp)
	jne	L1384
	jmp	L433
	.p2align 4,,10
	.p2align 3
L436:
	movl	-184(%ebp), %edi
	movl	-176(%ebp), %edx
	movl	%edi, -168(%ebp)
	cmpl	%edx, %edi
	jg	L1384
	movzbl	-139(%ebp), %eax
	movb	%al, -272(%ebp)
	cmpb	$0, -140(%ebp)
	jne	L438
	testb	%al, %al
	jne	L439
	addl	$1, %edx
	movl	__ZL9lastvoxid, %ecx
	movl	%edx, %ebx
	subl	%edi, %ebx
	andl	$1, %ebx
	je	L440
	movw	%cx, _tiletovox(%edi,%edi)
	addl	$1, %edi
	cmpl	%edi, %edx
	je	L1334
L440:
	movw	%cx, _tiletovox(%edi,%edi)
	movw	%cx, _tiletovox+2(%edi,%edi)
	addl	$2, %edi
	cmpl	%edi, %edx
	jne	L440
L1334:
	movl	%edx, -168(%ebp)
	jmp	L1384
L447:
	movl	-152(%ebp), %ecx
	testl	%ecx, %ecx
	je	L1483
L451:
	addl	$1, %edi
	movl	%edi, -168(%ebp)
	cmpl	-176(%ebp), %edi
	jg	L1384
L438:
	movswl	%di, %ebx
	cmpl	$30719, %ebx
	ja	L447
	movswl	_tilesiz(,%ebx,4), %edx
	movswl	_tilesiz+2(,%ebx,4), %eax
	imull	%eax, %edx
	testl	%edx, %edx
	jle	L986
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -276(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	movl	-276(%ebp), %edx
	subl	$4, %esp
	testl	%eax, %eax
	movl	%eax, %esi
	je	L449
	movl	%eax, %ecx
	movl	%ebx, %eax
	call	_tileLoadData
	movl	-276(%ebp), %edx
	xorl	%ecx, %ecx
	movl	%esi, %eax
	call	_Bcrc32
	movl	%eax, -276(%ebp)
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-276(%ebp), %eax
	subl	$4, %esp
L448:
	cmpl	%eax, -152(%ebp)
	je	L452
	cmpb	$0, -272(%ebp)
	je	L451
	movzbl	-272(%ebp), %eax
L453:
	movswl	_tilesiz(,%ebx,4), %ecx
	cmpl	%ecx, -148(%ebp)
	jne	L451
	movswl	_tilesiz+2(,%ebx,4), %edx
	cmpl	-144(%ebp), %edx
	jne	L451
	testb	%al, %al
	jne	L451
L454:
	movl	__ZL9lastvoxid, %eax
	movw	%ax, _tiletovox(%edi,%edi)
	jmp	L451
L1440:
	movl	-272(%ebp), %eax
	cmpl	%eax, _num_usermaphacks
	jle	L2
	movl	-176(%ebp), %ecx
	movl	%ecx, -256(%ebp)
	testl	%ecx, %ecx
	je	L1484
	imull	$28, -272(%ebp), %ebx
	jmp	L668
L1485:
	movl	%edx, (%esp)
	movl	%edx, -276(%ebp)
	call	_strlen
	movl	%eax, %edi
	leal	1(%eax), %eax
	movl	%eax, -264(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L661
	movl	-276(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_strcpy
	movb	$0, (%esi,%edi)
	movl	$95, 4(%esp)
	movl	%esi, (%esp)
	call	_strrchr
	movb	$0, (%eax)
	movl	_usermaphacks, %eax
	movl	%esi, 8(%eax,%ebx)
L667:
	addl	$1, -272(%ebp)
	addl	$28, %ebx
	movl	-272(%ebp), %eax
	cmpl	_num_usermaphacks, %eax
	jge	L2
L668:
	movl	-256(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	leal	1(%eax), %esi
	movl	%eax, %edi
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L663
	movl	-256(%ebp), %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -264(%ebp)
	call	_strcpy
	movl	-264(%ebp), %ecx
	movb	$0, (%ecx,%edi)
	movl	_usermaphacks, %eax
	movl	%ecx, (%eax,%ebx)
	movl	-184(%ebp), %esi
	testl	%esi, %esi
	je	L665
	movl	%esi, (%esp)
	call	_strlen
	movl	%eax, %edi
	leal	1(%eax), %eax
	movl	%eax, -264(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L661
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, -264(%ebp)
	call	_strcpy
	movl	-264(%ebp), %ecx
	movb	$0, (%ecx,%edi)
	movl	%ecx, %esi
L665:
	movl	_usermaphacks, %eax
	addl	%ebx, %eax
	movl	%esi, 4(%eax)
	movl	-168(%ebp), %edx
	testl	%edx, %edx
	jne	L1485
	movl	$0, 8(%eax)
	jmp	L667
L1481:
	movb	$0, -272(%ebp)
	jmp	L432
L650:
	movl	%edi, %eax
	call	__Z13handle_memerri
L1426:
	movl	$-1, __ZL9lastvoxid
	jmp	L2
L1419:
	movl	-192(%ebp), %eax
	movl	%eax, -272(%ebp)
	cmpl	$255, %eax
	ja	L1486
	movl	-184(%ebp), %eax
	movl	%eax, -276(%ebp)
	cmpl	$251, %eax
	ja	L1487
	movl	-176(%ebp), %esi
	testl	%esi, %esi
	je	L1488
	movl	%esi, %eax
	call	_check_file_exist
	testl	%eax, %eax
	jne	L2
	xorl	%edx, %edx
	movl	%esi, %eax
	call	_kopen4load.part.0
	movl	%eax, -264(%ebp)
	movl	%eax, %edi
	movl	$1048576, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L500
	movl	%edi, %eax
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, %edi
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -256(%ebp)
	testl	%eax, %eax
	je	L650
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-264(%ebp), %eax
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	%edi, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-256(%ebp), %edx
	movl	-264(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	%eax, %edi
	jne	L1489
	movl	-264(%ebp), %eax
	call	_kclose
	movl	$0, -152(%ebp)
	movl	$0, -160(%ebp)
	cmpl	$15, %edi
	jle	L507
	leal	-152(%ebp), %ecx
	movl	%edi, %edx
	movl	%ecx, (%esp)
	movl	-256(%ebp), %eax
	leal	-160(%ebp), %ecx
	call	_kpgetdim.part.0.constprop.0
	cmpl	$4096, -160(%ebp)
	jne	L507
	cmpl	$64, -152(%ebp)
	jne	L507
	movl	$64, 8(%esp)
	movl	%edi, %edx
	movl	%ebx, %ecx
	movl	$4096, 4(%esp)
	movl	$16384, (%esp)
	movl	-256(%ebp), %eax
	call	_kprender
	movl	%eax, %edi
	movl	-256(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	testl	%edi, %edi
	jne	L1490
	movl	-272(%ebp), %eax
	movl	_prhighpalookups(,%eax,4), %esi
	testl	%esi, %esi
	je	L1491
L511:
	movl	$1048576, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L500
	movl	-276(%ebp), %ecx
	movl	%eax, (%esi,%ecx,8)
	movl	-272(%ebp), %eax
	movl	_prhighpalookups(,%eax,4), %eax
	movl	(%eax,%ecx,8), %eax
	movl	$1048576, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L2
L1417:
	movl	-168(%ebp), %ebx
	testl	%ebx, %ebx
	js	L1492
	cmpl	$255, %ebx
	ja	L2
	movl	-176(%ebp), %eax
	movl	-160(%ebp), %esi
	movl	-184(%ebp), %ecx
	movl	-200(%ebp), %edi
	movl	%eax, -256(%ebp)
	movl	-192(%ebp), %eax
	movl	-208(%ebp), %edx
	movl	%eax, -264(%ebp)
	movl	-204(%ebp), %eax
	cmpl	$0, _hicinitcounter
	je	L1493
L533:
	movb	%al, _hictinting+3(,%ebx,8)
	movl	%edi, %eax
	movb	%al, _hictinting+4(,%ebx,8)
	movzbl	-264(%ebp), %eax
	movb	%dl, _hictinting+2(,%ebx,8)
	movb	%al, _hictinting+5(,%ebx,8)
	movzbl	-256(%ebp), %eax
	movb	%cl, _hictinting+6(,%ebx,8)
	movb	%al, _hictinting+7(,%ebx,8)
	movw	%si, _hictinting(,%ebx,8)
	jmp	L2
L1484:
	imull	$28, %eax, %ebx
	movl	_usermaphacks, %eax
	jmp	L662
L659:
	movl	%edx, (%esp)
	movl	%edx, -256(%ebp)
	call	_strlen
	movl	%eax, %edi
	leal	1(%eax), %eax
	movl	%eax, -264(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L661
	movl	-256(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_strcpy
	movb	$0, (%esi,%edi)
	movl	$95, 4(%esp)
	movl	%esi, (%esp)
	call	_strrchr
	movb	$0, (%eax)
	movl	_usermaphacks, %eax
	movl	%esi, 8(%eax,%ebx)
L660:
	addl	$1, -272(%ebp)
	addl	$28, %ebx
	movl	-272(%ebp), %ecx
	cmpl	%ecx, _num_usermaphacks
	jle	L2
L662:
	movl	$0, (%eax,%ebx)
	movl	-184(%ebp), %esi
	testl	%esi, %esi
	je	L657
	movl	%esi, (%esp)
	call	_strlen
	movl	%eax, %edi
	leal	1(%eax), %eax
	movl	%eax, -264(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L661
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, -256(%ebp)
	call	_strcpy
	movl	-256(%ebp), %ecx
	movb	$0, (%ecx,%edi)
	movl	%ecx, %esi
L657:
	movl	_usermaphacks, %eax
	leal	(%eax,%ebx), %ecx
	movl	%esi, 4(%ecx)
	movl	-168(%ebp), %edx
	testl	%edx, %edx
	jne	L659
	movl	$0, 8(%ecx)
	jmp	L660
L661:
	movl	-264(%ebp), %eax
	call	__Z13handle_memerri
L1445:
	movl	-168(%ebp), %edi
	testl	%edi, %edi
	je	L1494
	xorl	%edx, %edx
	movl	%edi, %eax
	call	_kopen4load.part.0
	movl	%eax, %esi
	cmpl	$-1, %eax
	je	L1495
	leal	-152(%ebp), %ecx
	movl	%edi, %edx
	movl	%ecx, -264(%ebp)
	call	_artReadHeader
	movl	-264(%ebp), %ecx
	testl	%eax, %eax
	je	L107
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1496
L108:
	movl	%esi, %eax
	call	_kclose
	jmp	L2
L1405:
	movl	-248(%ebp), %esi
	leal	-152(%ebp), %ecx
	movl	%ecx, %edx
	movl	%ecx, -264(%ebp)
	movl	%esi, %eax
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L2
	movl	-256(%ebp), %eax
	movl	%esi, (%esp)
	leal	-160(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	-264(%ebp), %ecx
	movl	$LC94, %eax
	call	__ZL16check_tile_rangePKcPiS1_PK10scriptfileS0_.lto_priv.0
	testl	%eax, %eax
	jne	L2
	movl	-160(%ebp), %eax
	cmpl	%eax, -152(%ebp)
	jl	L2
	jmp	L634
L1479:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1384
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	$LC71, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC14, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$196, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	12(%esi), %eax
	jmp	L418
L901:
	cmpl	$64, %ebx
	jg	L906
	cmpl	$62, %ebx
	jg	L905
L904:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%ebx, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC127, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3649, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1407:
	leal	-152(%ebp), %ecx
	movl	-248(%ebp), %eax
	movl	%ecx, %edx
	movl	%ecx, -264(%ebp)
	call	_scriptfile_getsymbol
	movl	-264(%ebp), %ecx
	testl	%eax, %eax
	jne	L2
	movl	-256(%ebp), %eax
	leal	-160(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	-248(%ebp), %eax
	movl	%eax, (%esp)
	movl	$LC90, %eax
	call	__ZL16check_tile_rangePKcPiS1_PK10scriptfileS0_.lto_priv.0
	testl	%eax, %eax
	jne	L2
	movl	-160(%ebp), %eax
	cmpl	-152(%ebp), %eax
	jg	L2
	jmp	L622
	.p2align 4,,10
	.p2align 3
L994:
	movl	%eax, %ebx
L556:
	movl	-160(%ebp), %ecx
	movzbl	%cl, %edx
	cmpl	$-1, %ecx
	jne	L558
	movzbl	_g_noFloorPal(%ebx), %edx
	jmp	L558
L461:
	orl	$81, -264(%ebp)
	jmp	L476
L463:
	orl	$32, -264(%ebp)
	jmp	L476
L464:
	orl	$2, -264(%ebp)
	jmp	L476
L465:
	orl	$16, -264(%ebp)
	jmp	L476
L466:
	orl	$1, -264(%ebp)
	jmp	L476
L467:
	movl	-248(%ebp), %eax
	leal	-132(%ebp), %edx
	call	_scriptfile_getstring
	jmp	L476
L468:
	movl	-248(%ebp), %eax
	leal	-136(%ebp), %edx
	call	_scriptfile_getstring
	jmp	L476
L469:
	movl	-248(%ebp), %eax
	leal	-140(%ebp), %edx
	call	_scriptfile_getstring
	jmp	L476
L470:
	movl	-248(%ebp), %eax
	leal	-144(%ebp), %edx
	call	_scriptfile_getstring
	jmp	L476
L471:
	movl	-248(%ebp), %eax
	leal	-148(%ebp), %edx
	call	_scriptfile_getstring
	jmp	L476
L472:
	movl	-276(%ebp), %edx
	movl	-248(%ebp), %eax
	call	_scriptfile_getstring
	jmp	L476
L473:
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getsymbol
	jmp	L476
L474:
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getsymbol
	jmp	L476
L1408:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	$LC91, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC14, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$196, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1406:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	$LC95, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC14, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$196, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L107:
	testl	%ebx, %ebx
	je	L109
	movl	-160(%ebp), %eax
	cmpl	$30463, %eax
	ja	L1497
	movl	%eax, -152(%ebp)
	addl	-144(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -148(%ebp)
L109:
	movl	%ecx, %edx
	movl	%esi, %eax
	movl	%ecx, -256(%ebp)
	call	_artReadManifest
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_artPreloadFile
	movl	-152(%ebp), %ebx
	cmpl	-148(%ebp), %ebx
	jg	L111
L112:
	movl	%ebx, %eax
	addl	$1, %ebx
	call	_tileUpdatePicSiz
	cmpl	-148(%ebp), %ebx
	jle	L112
L111:
	movl	%esi, %eax
	call	_kclose
	jmp	L2
L1465:
	movl	-248(%ebp), %esi
	movl	8(%esi), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	$30463, 28(%esp)
	movl	%ebx, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC138, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3799, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L948
	.p2align 4,,10
	.p2align 3
L1470:
	movl	4(%edi), %eax
	cmpl	$86, %eax
	je	L1498
	jle	L1499
	cmpl	$126, %eax
	je	L749
	cmpl	$128, %eax
	je	L750
	cmpl	$122, %eax
	jne	L1395
	movl	-248(%ebp), %esi
	leal	-168(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getbraces
	movl	12(%esi), %edx
	testl	%eax, %eax
	movl	%edx, %eax
	jne	L752
	movl	$0, -160(%ebp)
	movl	-168(%ebp), %ecx
	movl	$0, -152(%ebp)
	cmpl	%ecx, %edx
	jnb	L754
	movl	$8192, -288(%ebp)
	movl	%ecx, -264(%ebp)
L761:
	movl	-248(%ebp), %eax
	call	_scriptfile_gettoken
	movl	%eax, %edi
	testl	%eax, %eax
	je	L760
	movl	$__ZZL10defsparserP10scriptfileE12rawsubtokens_0, %ebx
	movl	$__ZZL10defsparserP10scriptfileE12rawsubtokens_0+16, %esi
	jmp	L759
	.p2align 4,,10
	.p2align 3
L1005:
	subl	$8, %esi
L759:
	movl	(%esi), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1500
	cmpl	%esi, %ebx
	jne	L1005
L760:
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	cmpl	-264(%ebp), %eax
	jb	L761
	movl	-160(%ebp), %edi
	testl	%edi, %edi
	je	L754
	movl	-152(%ebp), %edx
	testl	%edx, %edx
	js	L1501
	xorl	%edx, %edx
	movl	%edi, %eax
	call	_kopen4load.part.0
	movl	%eax, -264(%ebp)
	cmpl	$-1, %eax
	je	L1502
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-152(%ebp), %edx
	movl	-264(%ebp), %eax
	call	__Z15klseek_internaliiiPKhPiS1_
	testl	%eax, %eax
	js	L1503
	movl	-288(%ebp), %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L769
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	%eax, %edx
	movl	%ebx, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-264(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$255, %eax
	jle	L1504
	cmpl	$8192, %eax
	je	L1505
	testb	$2, _paletteloaded
	je	L1506
	movl	-272(%ebp), %ebx
	xorl	%ecx, %ecx
	movl	%esi, %edx
	movzbl	_g_noFloorPal(%ebx), %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	call	_paletteMakeLookupTable.part.0
L774:
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-264(%ebp), %eax
	subl	$4, %esp
	call	_kclose
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
	jmp	L752
	.p2align 4,,10
	.p2align 3
L1468:
	movl	4(%ebx), %eax
	cmpl	$128, %eax
	je	L1507
	jg	L831
	cmpl	$122, %eax
	je	L832
	cmpl	$126, %eax
	jne	L862
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getsymbol
	movl	-152(%ebp), %ebx
	cmpl	$255, %ebx
	ja	L855
	cmpl	%ebx, -276(%ebp)
	je	L855
	movl	_blendtable(,%ebx,4), %edx
	testl	%edx, %edx
	je	L1508
	movl	-276(%ebp), %esi
	sall	$4, %ebx
	movl	%esi, %eax
	call	_paletteSetBlendTable
	movl	_glblend(%ebx), %edx
	movl	%esi, %eax
	movl	$1, -280(%ebp)
	sall	$4, %eax
	movl	%edx, _glblend(%eax)
	movl	_glblend+4(%ebx), %edx
	movl	%edx, _glblend+4(%eax)
	movl	_glblend+8(%ebx), %edx
	movl	%edx, _glblend+8(%eax)
	movl	_glblend+12(%ebx), %edx
	movl	%edx, _glblend+12(%eax)
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
	jmp	L835
L1472:
	movl	4(%esi), %eax
	cmpl	$126, %eax
	je	L1509
	cmpl	$128, %eax
	je	L697
	cmpl	$122, %eax
	jne	L1389
	movl	-248(%ebp), %esi
	leal	-176(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L1387
	movl	$0, -168(%ebp)
	movl	-176(%ebp), %eax
	movl	$0, -160(%ebp)
	movl	$0, -152(%ebp)
	movl	%eax, -264(%ebp)
	.p2align 4
	.p2align 3
L710:
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-264(%ebp), %eax
	jnb	L1510
	movl	-248(%ebp), %eax
	call	_scriptfile_gettoken
	movl	%eax, %edi
	testl	%eax, %eax
	je	L710
	movl	$__ZZL10defsparserP10scriptfileE12rawsubtokens, %esi
	movl	$__ZZL10defsparserP10scriptfileE12rawsubtokens+16, %ebx
	jmp	L707
	.p2align 4,,10
	.p2align 3
L704:
	cmpl	%ebx, %esi
	je	L710
	subl	$8, %ebx
L707:
	movl	(%ebx), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L704
	movl	4(%ebx), %eax
	cmpl	$123, %eax
	je	L1511
	cmpl	$124, %eax
	je	L708
	cmpl	$13, %eax
	jne	L710
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getstring
	jmp	L710
L1411:
	movl	4(%edi), %eax
	subl	$13, %eax
	cmpl	$59, %eax
	ja	L609
	jmp	*L599(,%eax,4)
	.section .rdata,"dr"
	.align 4
L599:
	.long	L607
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L609
	.long	L606
	.long	L605
	.long	L604
	.long	L603
	.long	L602
	.long	L601
	.long	L600
	.long	L598
	.text
L598:
	orb	$32, -276(%ebp)
	jmp	L609
L600:
	orb	$2, -276(%ebp)
	jmp	L609
L601:
	orb	$16, -276(%ebp)
	jmp	L609
L602:
	orb	$1, -276(%ebp)
	jmp	L609
L603:
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getdouble
	jmp	L609
L604:
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getdouble
	jmp	L609
L605:
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getdouble
	jmp	L609
L606:
	movl	-248(%ebp), %eax
	leal	-176(%ebp), %edx
	call	_scriptfile_getdouble
	jmp	L609
L607:
	movl	-248(%ebp), %eax
	leal	-184(%ebp), %edx
	call	_scriptfile_getstring
	jmp	L609
L708:
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getnumber
	jmp	L710
L1511:
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getnumber
	jmp	L710
L831:
	cmpl	$132, %eax
	jne	L862
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L862
	movl	-296(%ebp), %ecx
	movl	_nullglblend, %eax
	movl	%eax, _glblend(%ecx)
	movl	_nullglblend+4, %eax
	movl	%eax, _glblend+4(%ecx)
	movl	_nullglblend+8, %eax
	movl	%eax, _glblend+8(%ecx)
	movl	_nullglblend+12, %eax
	movl	%eax, _glblend+12(%ecx)
	movl	-168(%ebp), %eax
	movl	%eax, -272(%ebp)
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
L868:
	cmpl	-272(%ebp), %eax
	jnb	L835
	movl	-248(%ebp), %eax
	call	_scriptfile_gettoken
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1396
	movl	$__ZZL10defsparserP10scriptfileE13glblendtokens, %esi
	movl	$__ZZL10defsparserP10scriptfileE13glblendtokens+16, %ebx
	jmp	L867
	.p2align 4,,10
	.p2align 3
L1010:
	subl	$8, %ebx
L867:
	movl	(%ebx), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1512
	cmpl	%ebx, %esi
	jne	L1010
L1396:
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
	jmp	L868
L1512:
	movl	4(%ebx), %esi
	leal	-133(%esi), %eax
	cmpl	$2, %eax
	ja	L1396
	movl	-248(%ebp), %ebx
	leal	-160(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getbraces
	testl	%eax, %eax
	je	L869
	movl	12(%ebx), %eax
	jmp	L868
L1499:
	cmpl	$58, %eax
	je	L746
	cmpl	$59, %eax
	jne	L1513
	movl	-272(%ebp), %eax
	movb	$0, _g_noFloorPal(%eax)
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
	jmp	L752
L1429:
	movl	4(%edi), %esi
	leal	-14(%esi), %eax
	cmpl	$85, %eax
	ja	L379
	jmp	*L260(,%eax,4)
	.section .rdata,"dr"
	.align 4
L260:
	.long	L268
	.long	L267
	.long	L266
	.long	L379
	.long	L265
	.long	L263
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L264
	.long	L379
	.long	L379
	.long	L263
	.long	L263
	.long	L263
	.long	L263
	.long	L379
	.long	L262
	.long	L379
	.long	L379
	.long	L261
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L379
	.long	L259
	.text
L263:
	movl	8(%ebx), %eax
	leal	-216(%ebp), %edx
	movl	$0, -212(%ebp)
	movl	$0, -208(%ebp)
	movl	%eax, -280(%ebp)
	movl	%ebx, %eax
	movl	$0, -204(%ebp)
	movl	$0, -176(%ebp)
	movl	$1072693248, -172(%ebp)
	movl	$0, -168(%ebp)
	movl	$1072693248, -164(%ebp)
	movl	$0, -160(%ebp)
	movl	$1072693248, -156(%ebp)
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L379
	movl	-216(%ebp), %ecx
	cmpl	%ecx, 12(%ebx)
	jnb	L328
	movl	$0, -272(%ebp)
	movl	%ecx, -288(%ebp)
	movl	%esi, -292(%ebp)
	movl	%ebx, -256(%ebp)
L344:
	movl	-256(%ebp), %eax
	call	_scriptfile_gettoken
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L343
	movl	$__ZZL10defsparserP10scriptfileE15modelskintokens, %esi
	movl	$__ZZL10defsparserP10scriptfileE15modelskintokens+128, %edi
	jmp	L342
L980:
	subl	$8, %edi
L342:
	movl	(%edi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1514
	cmpl	%edi, %esi
	jne	L980
L343:
	movl	-256(%ebp), %eax
	movl	-288(%ebp), %ecx
	cmpl	%ecx, 12(%eax)
	jb	L344
	movl	-212(%ebp), %edx
	movl	-292(%ebp), %esi
	movl	%eax, %ebx
	testl	%edx, %edx
	je	L328
	movl	__ZL9seenframe, %eax
	testl	%eax, %eax
	je	L347
	movl	__ZL13lastmodelskin, %eax
	addl	$1, %eax
	movl	%eax, __ZL13lastmodelskin
	movl	%eax, __ZL9modelskin
L347:
	movl	$0, __ZL9seenframe
	cmpl	$32, %esi
	je	L348
	cmpl	$33, %esi
	je	L349
	cmpl	$30, %esi
	je	L350
	cmpl	$31, %esi
	jne	L352
	movl	$254, -208(%ebp)
L352:
	movl	%edx, %eax
	movl	%edx, -256(%ebp)
	call	_check_file_exist
	testl	%eax, %eax
	jne	L379
	movl	__ZL11lastmodelid, %eax
	movl	-256(%ebp), %edx
	testl	%eax, %eax
	js	L1515
	fldl	-160(%ebp)
	movl	-272(%ebp), %ecx
	fstps	-256(%ebp)
	fldl	-168(%ebp)
	fstps	-288(%ebp)
	fldl	-176(%ebp)
	fstps	-292(%ebp)
	movss	-292(%ebp), %xmm0
	movl	%ecx, 8(%esp)
	movl	-204(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	__ZL9modelskin, %esi
	xorl	%ecx, %ecx
	testl	%esi, %esi
	cmovs	%ecx, %esi
	movl	%esi, (%esp)
	movss	-256(%ebp), %xmm2
	movss	-288(%ebp), %xmm1
	movl	-208(%ebp), %ecx
	call	_md_defineskin
	cmpl	$-3, %eax
	je	L355
	cmpl	$-2, %eax
	jne	L379
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1516
L983:
	movl	$0, -264(%ebp)
	jmp	L379
L265:
	movl	8(%ebx), %eax
	leal	-208(%ebp), %edx
	movl	$0, -204(%ebp)
	movl	$0, -176(%ebp)
	movl	%eax, -280(%ebp)
	movl	%ebx, %eax
	movl	$0, -168(%ebp)
	movl	$0, -160(%ebp)
	movl	$1072693248, -156(%ebp)
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L379
	movl	-208(%ebp), %eax
	movl	%ebx, -256(%ebp)
	movl	%eax, -272(%ebp)
L314:
	movl	-256(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-272(%ebp), %eax
	jnb	L1517
	movl	-256(%ebp), %eax
	call	_scriptfile_gettoken
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L314
	movl	$__ZZL10defsparserP10scriptfileE15modelanimtokens, %edi
	movl	$__ZZL10defsparserP10scriptfileE15modelanimtokens+24, %esi
	jmp	L308
	.p2align 4,,10
	.p2align 3
L305:
	cmpl	%esi, %edi
	je	L314
	subl	$8, %esi
L308:
	movl	(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L305
	movl	4(%esi), %eax
	cmpl	$26, %eax
	je	L1518
	jg	L309
	cmpl	$24, %eax
	je	L310
	cmpl	$25, %eax
	jne	L314
	movl	-256(%ebp), %eax
	leal	-176(%ebp), %edx
	call	_scriptfile_getstring
	jmp	L314
L267:
	leal	-232(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getnumber
	movl	12(%ebx), %eax
	jmp	L270
L268:
	leal	-200(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getdouble
	movl	12(%ebx), %eax
	jmp	L270
L259:
	leal	-184(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getdouble
	movl	12(%ebx), %eax
	jmp	L270
L261:
	leal	-192(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getdouble
	movl	12(%ebx), %eax
	jmp	L270
L262:
	movl	8(%ebx), %eax
	leal	-220(%ebp), %edx
	movl	$-1, -216(%ebp)
	movl	$-1, -212(%ebp)
	movl	%eax, -280(%ebp)
	movl	%ebx, %eax
	movl	$-1, -208(%ebp)
	movl	$0, -204(%ebp)
	movl	$0, -176(%ebp)
	movl	$0, -172(%ebp)
	movl	$0, -168(%ebp)
	movl	$0, -164(%ebp)
	movl	$0, -160(%ebp)
	movl	$0, -156(%ebp)
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L379
	movl	-220(%ebp), %eax
	cmpl	%eax, 12(%ebx)
	leal	-212(%ebp), %ecx
	movl	$0, -256(%ebp)
	movl	%eax, -292(%ebp)
	leal	-216(%ebp), %eax
	movl	%eax, -272(%ebp)
	jnb	L360
	movl	%ecx, -288(%ebp)
L378:
	movl	%ebx, %eax
	call	_scriptfile_gettoken
	movl	%eax, %esi
	testl	%eax, %eax
	je	L377
	movl	$__ZZL10defsparserP10scriptfileE14modelhudtokens+88, %edi
	jmp	L376
L982:
	subl	$8, %edi
L376:
	movl	(%edi), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1519
	movl	$__ZZL10defsparserP10scriptfileE14modelhudtokens, %eax
	cmpl	%edi, %eax
	jne	L982
L377:
	movl	-292(%ebp), %eax
	cmpl	%eax, 12(%ebx)
	jb	L378
	movl	-288(%ebp), %ecx
L360:
	movl	-280(%ebp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	movl	-272(%ebp), %edx
	movl	$LC65, %eax
	call	__ZL16check_tile_rangePKcPiS1_PK10scriptfileS0_.lto_priv.0
	movl	%eax, -272(%ebp)
	testl	%eax, %eax
	jne	L983
	movl	__ZL11lastmodelid, %eax
	testl	%eax, %eax
	js	L1520
	movl	-216(%ebp), %esi
	cmpl	-212(%ebp), %esi
	jg	L381
	fldl	-176(%ebp)
	movl	-208(%ebp), %ecx
	movl	%eax, %edi
	movl	%ecx, -300(%ebp)
	movl	-204(%ebp), %ecx
	fstps	-288(%ebp)
	fldl	-168(%ebp)
	movl	%ecx, -304(%ebp)
	fstps	-292(%ebp)
	fldl	-160(%ebp)
	fstps	-296(%ebp)
	jmp	L386
L382:
	cmpl	_nextmodelid, %edi
	jnb	L388
	cmpl	$30719, %esi
	ja	L384
	movl	$20, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L385
	movl	-256(%ebp), %ecx
	leal	(%esi,%esi,4), %edx
	movss	-288(%ebp), %xmm4
	addl	$1, %esi
	movss	-292(%ebp), %xmm5
	movss	-296(%ebp), %xmm6
	sarl	$2, %ecx
	andl	$1, %ecx
	addl	%ecx, %edx
	movzwl	-256(%ebp), %ecx
	movl	%eax, _tile2model+8(,%edx,4)
	movzwl	-304(%ebp), %edx
	movw	%cx, 14(%eax)
	movzwl	-300(%ebp), %ecx
	orb	$8, %dh
	movss	%xmm4, (%eax)
	movw	%dx, 12(%eax)
	movw	%cx, 16(%eax)
	movss	%xmm5, 4(%eax)
	movss	%xmm6, 8(%eax)
	cmpl	-212(%ebp), %esi
	jg	L381
	movl	__ZL11lastmodelid, %edi
L386:
	movl	_mdinited, %eax
	testl	%eax, %eax
	jne	L382
	call	_freeallmodels
	movl	$1, _mdinited
	jmp	L382
L264:
	leal	-224(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getnumber
	movl	12(%ebx), %eax
	jmp	L270
L266:
	movl	8(%ebx), %eax
	leal	-208(%ebp), %edx
	movl	$0, -204(%ebp)
	movl	$-1, -176(%ebp)
	movl	%eax, -280(%ebp)
	movl	%ebx, %eax
	movl	$-1, -168(%ebp)
	movl	$-1610612736, -160(%ebp)
	movl	$1069128089, -156(%ebp)
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L379
	movl	-208(%ebp), %eax
	movl	%ebx, -256(%ebp)
	movl	%eax, -272(%ebp)
	leal	-176(%ebp), %eax
	movl	%eax, -288(%ebp)
	leal	-168(%ebp), %eax
	movl	%eax, -292(%ebp)
L284:
	movl	-256(%ebp), %eax
	movl	-272(%ebp), %ecx
	cmpl	%ecx, 12(%eax)
	jnb	L1521
	movl	-256(%ebp), %eax
	call	_scriptfile_gettoken
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L284
	movl	$__ZZL10defsparserP10scriptfileE16modelframetokens, %edi
	movl	$__ZZL10defsparserP10scriptfileE16modelframetokens+48, %esi
	jmp	L283
	.p2align 4,,10
	.p2align 3
L275:
	cmpl	%esi, %edi
	je	L284
	subl	$8, %esi
L283:
	movl	(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L275
	movl	4(%esi), %eax
	subl	$16, %eax
	cmpl	$12, %eax
	ja	L284
	jmp	*L277(,%eax,4)
	.section .rdata,"dr"
	.align 4
L277:
	.long	L282
	.long	L281
	.long	L284
	.long	L284
	.long	L284
	.long	L280
	.long	L279
	.long	L278
	.long	L284
	.long	L284
	.long	L284
	.long	L284
	.long	L276
	.text
L276:
	movl	-256(%ebp), %eax
	leal	-228(%ebp), %edx
	call	_scriptfile_getsymbol
	jmp	L284
L278:
	movl	-292(%ebp), %edx
	movl	-256(%ebp), %eax
	call	_scriptfile_getsymbol
	jmp	L284
L279:
	movl	-288(%ebp), %edx
	movl	-256(%ebp), %eax
	call	_scriptfile_getsymbol
	jmp	L284
L280:
	movl	-288(%ebp), %edx
	movl	-256(%ebp), %eax
	call	_scriptfile_getsymbol
	movl	-176(%ebp), %eax
	movl	%eax, -168(%ebp)
	jmp	L284
L281:
	movl	-256(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getdouble
	jmp	L284
L282:
	movl	-256(%ebp), %eax
	leal	-204(%ebp), %edx
	call	_scriptfile_getstring
	jmp	L284
L1500:
	movl	4(%esi), %eax
	cmpl	$123, %eax
	je	L1522
	cmpl	$125, %eax
	je	L1006
	cmpl	$13, %eax
	jne	L760
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getstring
	jmp	L760
L1513:
	cmpl	$55, %eax
	jne	L1395
	movl	-248(%ebp), %esi
	leal	-184(%ebp), %edx
	movl	$0, -176(%ebp)
	movl	$0, -168(%ebp)
	movl	$0, -160(%ebp)
	movl	%esi, %eax
	movl	$-1, -152(%ebp)
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L1390
	movl	-184(%ebp), %eax
	movl	%eax, -264(%ebp)
	.p2align 4
	.p2align 3
L813:
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-264(%ebp), %eax
	jnb	L1523
	movl	-248(%ebp), %eax
	call	_scriptfile_gettoken
	movl	%eax, %edi
	testl	%eax, %eax
	je	L813
	movl	$__ZZL10defsparserP10scriptfileE18makepalookuptokens, %esi
	movl	$__ZZL10defsparserP10scriptfileE18makepalookuptokens+56, %ebx
	jmp	L812
	.p2align 4,,10
	.p2align 3
L805:
	cmpl	%ebx, %esi
	je	L813
	subl	$8, %ebx
L812:
	movl	(%ebx), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L805
	movl	4(%ebx), %eax
	subl	$56, %eax
	cmpl	$6, %eax
	ja	L813
	jmp	*L807(,%eax,4)
	.section .rdata,"dr"
	.align 4
L807:
	.long	L811
	.long	L810
	.long	L813
	.long	L813
	.long	L809
	.long	L808
	.long	L806
	.text
L806:
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getnumber
	movl	-160(%ebp), %eax
	movl	$255, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, -160(%ebp)
	jmp	L813
L808:
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getnumber
	movl	-168(%ebp), %eax
	movl	$255, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, -168(%ebp)
	jmp	L813
L809:
	movl	-248(%ebp), %eax
	leal	-176(%ebp), %edx
	call	_scriptfile_getnumber
	movl	-176(%ebp), %eax
	movl	$255, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, -176(%ebp)
	jmp	L813
L810:
	movl	-272(%ebp), %eax
	movl	%eax, -152(%ebp)
	jmp	L813
L811:
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getsymbol
	jmp	L813
L309:
	cmpl	$27, %eax
	jne	L314
	movl	-256(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getsymbol
	jmp	L314
L832:
	movl	-248(%ebp), %esi
	leal	-168(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getbraces
	testl	%eax, %eax
	je	L836
L1397:
	movl	12(%esi), %eax
	jmp	L835
L1507:
	movl	-276(%ebp), %esi
	movl	_blendtable(,%esi,4), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, _blendtable(,%esi,4)
	testl	%esi, %esi
	jne	L861
	andb	$-5, _paletteloaded
L861:
	movl	-276(%ebp), %eax
	movl	_defaultglblend, %ecx
	movl	$0, -280(%ebp)
	movl	_defaultglblend+8, %edx
	sall	$4, %eax
	movl	%ecx, _glblend(%eax)
	movl	_defaultglblend+4, %ecx
	movl	%edx, _glblend+8(%eax)
	movl	_defaultglblend+12, %edx
	movl	%ecx, _glblend+4(%eax)
	movl	%edx, _glblend+12(%eax)
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
	jmp	L835
L697:
	movl	-276(%ebp), %ebx
	testl	%ebx, %ebx
	jne	L733
	movl	$768, 8(%esp)
	movl	$0, 4(%esp)
	movl	_basepaltable, %eax
	movl	%eax, (%esp)
	call	_memset
	movl	-248(%ebp), %eax
	andb	$-2, _paletteloaded
	movl	$0, -280(%ebp)
	movl	12(%eax), %eax
	jmp	L699
L1509:
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getsymbol
	movl	-152(%ebp), %eax
	cmpl	$255, %eax
	ja	L727
	cmpl	%eax, -276(%ebp)
	je	L727
	movl	_basepaltable(,%eax,4), %edx
	testl	%edx, %edx
	je	L1524
	movl	-276(%ebp), %eax
	call	_paletteSetColorTable
	movl	-248(%ebp), %eax
	movl	$1, -280(%ebp)
	movl	12(%eax), %eax
	jmp	L699
L1410:
	movl	4(%esi), %esi
	cmpl	$28, %esi
	jne	L565
	movl	-248(%ebp), %eax
	leal	-208(%ebp), %edx
	movl	$-1, -208(%ebp)
	movl	$0, -204(%ebp)
	movl	$0, -200(%ebp)
	movl	8(%eax), %ecx
	movl	$0, -192(%ebp)
	movl	%ecx, -264(%ebp)
	movl	$0, -184(%ebp)
	movl	$-1074790400, -180(%ebp)
	movl	$0, -176(%ebp)
	movl	$1072693248, -172(%ebp)
	movl	$0, -168(%ebp)
	movl	$1072693248, -164(%ebp)
	movl	$0, -160(%ebp)
	movl	$1072693248, -156(%ebp)
	movl	$0, -152(%ebp)
	movl	$1072693248, -148(%ebp)
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L1385
	movl	-248(%ebp), %eax
	leal	-212(%ebp), %edx
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L1385
	movl	-212(%ebp), %eax
	movl	-248(%ebp), %ecx
	xorl	%ebx, %ebx
	movl	%eax, -276(%ebp)
	cmpl	%eax, 12(%ecx)
	jnb	L571
L590:
	movl	-248(%ebp), %eax
	call	_scriptfile_gettoken
	movl	%eax, %edi
	testl	%eax, %eax
	je	L589
	movl	$__ZZL10defsparserP10scriptfileE17texturetokens_pal+160, %esi
	jmp	L588
L998:
	subl	$8, %esi
L588:
	movl	(%esi), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1525
	movl	$__ZZL10defsparserP10scriptfileE17texturetokens_pal, %eax
	cmpl	%esi, %eax
	jne	L998
L589:
	movl	-248(%ebp), %eax
	movl	-276(%ebp), %ecx
	cmpl	%ecx, 12(%eax)
	jb	L590
L571:
	cmpl	$30463, -272(%ebp)
	ja	L1385
	movl	-208(%ebp), %eax
	movl	%eax, -276(%ebp)
	cmpl	$251, %eax
	ja	L1526
	movl	-192(%ebp), %esi
	testl	%esi, %esi
	je	L1527
	movl	%esi, %eax
	call	_check_file_exist
	testl	%eax, %eax
	jne	L1385
	movl	-204(%ebp), %edx
	testl	%edx, %edx
	jle	L593
	movl	-200(%ebp), %eax
	testl	%eax, %eax
	jle	L593
	movl	-272(%ebp), %edi
	movw	%ax, _tilesiz+2(,%edi,4)
	movl	%edi, %eax
	movw	%dx, _tilesiz(,%edi,4)
	call	_tileUpdatePicSiz
	movl	%edi, %eax
	movl	%edi, %edx
	movl	$0, _picanm(%edi,%edi,4)
	sarl	$3, %eax
	andl	$7, %edx
	movb	$0, _picanm+4(%edi,%edi,4)
	movzbl	__ZL8pow2char.lto_priv.11(%edx), %edx
	orb	%dl, _faketile(%eax)
	movl	_faketiledata(,%edi,4), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, _faketiledata(,%edi,4)
L593:
	fld1
	movzbl	%bl, %ebx
	movl	%esi, %ecx
	fdivl	-168(%ebp)
	fstps	-264(%ebp)
	fld1
	fdivl	-176(%ebp)
	fstps	-288(%ebp)
	fldl	-184(%ebp)
	fstps	-292(%ebp)
	movss	-292(%ebp), %xmm0
	movl	%ebx, 8(%esp)
	fldl	-152(%ebp)
	fstps	-292(%ebp)
	movss	-292(%ebp), %xmm1
	movss	%xmm1, 4(%esp)
	fldl	-160(%ebp)
	fstps	-292(%ebp)
	movss	-292(%ebp), %xmm1
	movss	%xmm1, (%esp)
	movl	-272(%ebp), %eax
	movss	-264(%ebp), %xmm2
	movss	-288(%ebp), %xmm1
	movl	-276(%ebp), %edx
	call	_hicsetsubsttex.isra.0
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
	jmp	L569
	.p2align 4,,10
	.p2align 3
L1498:
	movl	-248(%ebp), %esi
	leal	-176(%ebp), %edx
	movl	$0, -168(%ebp)
	movl	$0, -160(%ebp)
	movl	$0, -152(%ebp)
	movl	%esi, %eax
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L1390
	movl	-176(%ebp), %eax
	movl	%eax, -264(%ebp)
	.p2align 4
	.p2align 3
L797:
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-264(%ebp), %eax
	jnb	L1528
	movl	-248(%ebp), %eax
	call	_scriptfile_gettoken
	movl	%eax, %edi
	testl	%eax, %eax
	je	L797
	movl	$__ZZL10defsparserP10scriptfileE12fogpaltokens, %esi
	movl	$__ZZL10defsparserP10scriptfileE12fogpaltokens+40, %ebx
	jmp	L794
	.p2align 4,,10
	.p2align 3
L791:
	cmpl	%ebx, %esi
	je	L797
	subl	$8, %ebx
L794:
	movl	(%ebx), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L791
	movl	4(%ebx), %eax
	cmpl	$61, %eax
	je	L1529
	cmpl	$62, %eax
	je	L795
	cmpl	$60, %eax
	jne	L797
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getnumber
	movl	-168(%ebp), %eax
	movl	$255, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, -168(%ebp)
	jmp	L797
L1529:
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getnumber
	movl	-160(%ebp), %eax
	movl	$255, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, -160(%ebp)
	jmp	L797
L795:
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getnumber
	movl	-152(%ebp), %eax
	movl	$255, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, -152(%ebp)
	jmp	L797
L749:
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getsymbol
	movl	-152(%ebp), %eax
	cmpl	$255, %eax
	ja	L778
	cmpl	%eax, -272(%ebp)
	je	L778
	testl	%eax, %eax
	je	L1530
L780:
	movl	_palookup(,%eax,4), %esi
	testl	%esi, %esi
	je	L1531
	movl	-272(%ebp), %ebx
	movl	%ebx, %eax
	call	__ZL20maybe_alloc_palookupi.lto_priv.0
	movswl	_numshades, %eax
	movl	_palookup(,%ebx,4), %edx
	movl	%esi, 4(%esp)
	sall	$8, %eax
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	-248(%ebp), %eax
	movl	$1, -280(%ebp)
	movl	12(%eax), %eax
	jmp	L752
L750:
	movl	-272(%ebp), %esi
	movl	%esi, %eax
	call	_paletteFreeLookupTable
	testl	%esi, %esi
	jne	L1391
	andb	$-3, _paletteloaded
L1391:
	movl	$0, -280(%ebp)
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
	jmp	L752
L746:
	movl	-272(%ebp), %eax
	movb	$1, _g_noFloorPal(%eax)
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
	jmp	L752
L310:
	movl	-256(%ebp), %eax
	leal	-204(%ebp), %edx
	call	_scriptfile_getstring
	jmp	L314
L1518:
	movl	-256(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getdouble
	jmp	L314
L1446:
	movl	4(%ebx), %eax
	cmpl	$101, %eax
	jg	L1532
	cmpl	$62, %eax
	jle	L1533
	subl	$63, %eax
	cmpl	$38, %eax
	ja	L1382
	jmp	*L136(,%eax,4)
	.section .rdata,"dr"
	.align 4
L136:
	.long	L141
	.long	L140
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L1382
	.long	L139
	.long	L138
	.long	L137
	.long	L135
	.text
L1473:
	movl	%eax, %ecx
	movl	4(%edi), %eax
	cmpl	$99, %eax
	je	L1534
	jg	L179
	cmpl	$28, %eax
	je	L180
	cmpl	$98, %eax
	je	L181
	cmpl	$21, %eax
	jne	L173
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getsymbol
	movl	-152(%ebp), %esi
	cmpl	$30463, %esi
	ja	L1535
	movl	%esi, %eax
	call	__ZL23Defs_LoadTileIntoBufferi.lto_priv.0
	testl	%eax, %eax
	movl	%eax, -272(%ebp)
	movl	$1, %eax
	cmovle	-276(%ebp), %eax
	cmovle	-264(%ebp), %esi
	movl	%eax, -276(%ebp)
L187:
	movl	%esi, -264(%ebp)
	jmp	L173
L733:
	movl	-276(%ebp), %esi
	movl	_basepaltable(,%esi,4), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-248(%ebp), %eax
	subl	$4, %esp
	movl	$0, _basepaltable(,%esi,4)
	movl	$0, -280(%ebp)
	movl	12(%eax), %eax
	jmp	L699
L1006:
	movl	$256, -288(%ebp)
	jmp	L760
L1522:
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getnumber
	jmp	L760
L1519:
	movl	4(%edi), %eax
	subl	$21, %eax
	cmpl	$23, %eax
	ja	L377
	jmp	*L364(,%eax,4)
	.section .rdata,"dr"
	.align 4
L364:
	.long	L375
	.long	L374
	.long	L373
	.long	L377
	.long	L377
	.long	L377
	.long	L377
	.long	L377
	.long	L377
	.long	L377
	.long	L377
	.long	L377
	.long	L377
	.long	L377
	.long	L377
	.long	L372
	.long	L371
	.long	L370
	.long	L369
	.long	L368
	.long	L367
	.long	L366
	.long	L365
	.long	L363
	.text
L836:
	movl	$0, -160(%ebp)
	movl	-168(%ebp), %ebx
	movl	$0, -152(%ebp)
	movl	-248(%ebp), %edi
	jmp	L842
	.p2align 4,,10
	.p2align 3
L840:
	movl	$LC9, 4(%esp)
	movl	%esi, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1536
L842:
	movl	12(%edi), %eax
	cmpl	%ebx, %eax
	jnb	L1537
	movl	%edi, %eax
	call	_scriptfile_gettoken
	movl	%eax, %esi
	testl	%eax, %eax
	je	L842
	movl	$LC120, 4(%esp)
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L840
	leal	-152(%ebp), %edx
	movl	%edi, %eax
	call	_scriptfile_getnumber
	jmp	L842
L1536:
	leal	-160(%ebp), %edx
	movl	%edi, %eax
	call	_scriptfile_getstring
	jmp	L842
L1537:
	movl	-160(%ebp), %esi
	testl	%esi, %esi
	je	L1538
	movl	-152(%ebp), %ecx
	testl	%ecx, %ecx
	js	L1539
	xorl	%edx, %edx
	movl	%esi, %eax
	call	_kopen4load.part.0
	movl	%eax, %edi
	cmpl	$-1, %eax
	je	L1540
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-152(%ebp), %edx
	call	__Z15klseek_internaliiiPKhPiS1_
	testl	%eax, %eax
	js	L1541
	movl	$65536, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L850
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	%eax, %edx
	movl	$65536, %ecx
	movl	%edi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$65536, %eax
	jne	L1542
	movl	-276(%ebp), %eax
	movl	%ebx, %edx
	call	_paletteSetBlendTable
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	%edi, %eax
	subl	$4, %esp
	call	_kclose
	movl	-248(%ebp), %eax
	movl	$1, -280(%ebp)
	movl	12(%eax), %eax
	jmp	L835
L1514:
	movl	4(%edi), %eax
	subl	$13, %eax
	cmpl	$59, %eax
	ja	L343
	jmp	*L332(,%eax,4)
	.section .rdata,"dr"
	.align 4
L332:
	.long	L341
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L340
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L339
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L338
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L343
	.long	L337
	.long	L336
	.long	L335
	.long	L334
	.long	L333
	.long	L331
	.text
L1510:
	movl	-168(%ebp), %edi
	testl	%edi, %edi
	je	L1543
	movl	-160(%ebp), %esi
	testl	%esi, %esi
	js	L1544
	cmpl	$7, -152(%ebp)
	ja	L1545
	xorl	%edx, %edx
	movl	%edi, %eax
	call	_kopen4load.part.0
	movl	%eax, -264(%ebp)
	cmpl	$-1, %eax
	je	L1546
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-160(%ebp), %edx
	movl	-264(%ebp), %eax
	call	__Z15klseek_internaliiiPKhPiS1_
	testl	%eax, %eax
	js	L1547
	movl	$768, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L720
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	%eax, %edx
	movl	$768, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-264(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$768, %eax
	jne	L1548
	movl	-152(%ebp), %ecx
	testl	%ecx, %ecx
	jne	L1549
L724:
	movl	-276(%ebp), %eax
	movl	%esi, %edx
	call	_paletteSetColorTable
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-264(%ebp), %eax
	subl	$4, %esp
	call	_kclose
	movl	-248(%ebp), %eax
	movl	$1, -280(%ebp)
	movl	12(%eax), %eax
	jmp	L699
L1528:
	testb	$2, _paletteloaded
	je	L1550
	movzbl	-168(%ebp), %ecx
	movl	$1, 8(%esp)
	xorl	%edx, %edx
	movzbl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movzbl	-160(%ebp), %eax
	movl	%eax, (%esp)
	movl	-272(%ebp), %eax
	call	_paletteMakeLookupTable.part.0
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
	jmp	L752
L1525:
	movl	4(%esi), %eax
	subl	$13, %eax
	cmpl	$62, %eax
	ja	L589
	jmp	*L575(,%eax,4)
	.section .rdata,"dr"
	.align 4
L575:
	.long	L587
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L589
	.long	L586
	.long	L585
	.long	L584
	.long	L583
	.long	L582
	.long	L581
	.long	L580
	.long	L579
	.long	L578
	.long	L577
	.long	L576
	.long	L574
	.text
L1523:
	cmpl	$255, -152(%ebp)
	ja	L1551
	testb	$2, _paletteloaded
	je	L1552
	movl	-272(%ebp), %esi
	movzbl	-176(%ebp), %ecx
	xorl	%edx, %edx
	movzbl	_g_noFloorPal(%esi), %eax
	movl	%eax, 8(%esp)
	movzbl	-160(%ebp), %eax
	movl	%eax, 4(%esp)
	movzbl	-168(%ebp), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	_paletteMakeLookupTable.part.0
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
	jmp	L752
L615:
	fld1
	movl	$255, %edx
	fdiv	%st, %st(2)
	fdivp	%st, %st(1)
	jmp	L616
L179:
	cmpl	$100, %eax
	je	L183
	movl	-280(%ebp), %ecx
	movl	%ecx, %edx
	orl	$16, %edx
	cmpl	$101, %eax
	cmovne	%ecx, %edx
	movl	%edx, -280(%ebp)
	jmp	L173
L1532:
	cmpl	$154, %eax
	je	L142
	cmpl	$161, %eax
	je	L143
	cmpl	$153, %eax
	jne	L1382
	leal	-152(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getsymbol
	movb	$1, -140(%ebp)
	movl	12(%esi), %eax
	jmp	L145
L855:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L862
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC125, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3464, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L862
L1464:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC137, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3793, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L727:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1389
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC105, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3008, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1389
L1422:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L482
	xorl	%edx, %edx
	jmp	L481
L482:
	movl	-256(%ebp), %edx
	movl	-248(%ebp), %eax
	movl	__ZL8skyfaces(,%esi,4), %ecx
	movl	%ecx, -272(%ebp)
	call	_scriptfile_getlinum
	movl	-272(%ebp), %ecx
	movl	%eax, 20(%esp)
	movl	%ecx, 24(%esp)
	movl	-248(%ebp), %eax
	movl	20(%eax), %eax
	movl	$LC74, 12(%esp)
	movl	$2119, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	xorl	%edx, %edx
	jmp	L481
L902:
	leal	-1(%ebx), %eax
	movl	$-1073692465, %edx
	btl	%eax, %edx
	jnc	L904
L905:
	movl	%ebx, %eax
	xorps	%xmm0, %xmm0
	movss	LC4, %xmm1
	movl	_defaultglblend+12, %edi
	andl	$1, %eax
	leal	(%eax,%ebx,2), %ecx
	movl	$1, %eax
	cvtsi2ssl	%ecx, %xmm0
	divss	%xmm0, %xmm1
L907:
	movl	_defaultglblend+4, %esi
	movl	%eax, %edx
	xorps	%xmm0, %xmm0
	sall	$4, %edx
	movl	%esi, _glblend+4(%edx)
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%edi, _glblend+12(%edx)
	cvtsi2ssl	%esi, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, _glblend(%edx)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	addl	$1, %eax
	mulss	%xmm1, %xmm0
	movss	%xmm0, _glblend+8(%edx)
	cmpl	%eax, %ebx
	jge	L907
	jmp	L903
L439:
	movl	-148(%ebp), %esi
	movzwl	__ZL9lastvoxid, %eax
	addl	$1, %edx
	jmp	L445
L442:
	movswl	_tilesiz+2(,%ebx,4), %ecx
	movswl	_tilesiz(,%ebx,4), %ebx
L444:
	cmpl	%ebx, %esi
	je	L1553
L443:
	addl	$1, %edi
	cmpl	%edi, %edx
	je	L1334
L445:
	movswl	%di, %ebx
	cmpl	$30719, %ebx
	jbe	L442
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	jmp	L444
L1553:
	cmpl	%ecx, -144(%ebp)
	jne	L443
	movw	%ax, _tiletovox(%edi,%edi)
	jmp	L443
L1467:
	movl	-276(%ebp), %edx
	testl	%edx, %edx
	jne	L2
	testb	$1, -280(%ebp)
	je	L2
	orb	$4, _paletteloaded
	jmp	L2
L986:
	xorl	%eax, %eax
	jmp	L448
L1483:
	cmpb	$0, -272(%ebp)
	je	L454
	movl	-148(%ebp), %edx
	testl	%edx, %edx
	jne	L451
	movl	-144(%ebp), %eax
	testl	%eax, %eax
	jne	L451
	jmp	L454
	.p2align 4,,10
	.p2align 3
L663:
	movl	%esi, %eax
	call	__Z13handle_memerri
L183:
	orl	$32, -280(%ebp)
	jmp	L173
L1534:
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getsymbol
	movl	$1, -292(%ebp)
	jmp	L173
L181:
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getsymbol
	movl	$1, -288(%ebp)
	jmp	L173
L180:
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	movl	%ecx, -304(%ebp)
	call	_scriptfile_getsymbol
	movl	-276(%ebp), %ecx
	testl	%ecx, %ecx
	movl	-304(%ebp), %ecx
	jne	L188
	cmpl	$30463, -264(%ebp)
	ja	L1554
	movl	-264(%ebp), %eax
	movl	%ecx, -304(%ebp)
	call	__ZL23Defs_LoadTileIntoBufferi.lto_priv.0
	movl	%eax, -272(%ebp)
	testl	%eax, %eax
	jle	L173
	movl	-152(%ebp), %eax
	movl	-304(%ebp), %ecx
	cmpl	$251, %eax
	ja	L192
L194:
	movl	__ZL14faketilebuffer.lto_priv.0, %edx
	movl	_palookup(,%eax,4), %esi
	addl	%ecx, %edx
	addl	$1, %ecx
	movzbl	(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movb	%bl, (%edx)
	cmpl	%ecx, -272(%ebp)
	jg	L194
	movl	$1, -276(%ebp)
	jmp	L173
L1471:
	movl	-276(%ebp), %ecx
	testl	%ecx, %ecx
	jne	L2
	testb	$1, -280(%ebp)
	je	L2
	movl	$_palette, (%esp)
	call	_paletteInitClosestColorMap.constprop.0
	orb	$1, _paletteloaded
	jmp	L2
L778:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1395
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC113, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3189, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1395
L922:
	movl	-184(%ebp), %eax
	call	_localeGetPtr
	movl	-248(%ebp), %ebx
	movl	%eax, -256(%ebp)
	movl	-176(%ebp), %eax
	movl	%eax, -264(%ebp)
	cmpl	%eax, 12(%ebx)
	jnb	L2
L943:
	movl	%ebx, %eax
	call	_scriptfile_gettoken
	movl	%eax, %esi
	testl	%eax, %eax
	je	L923
	movl	$__ZZL10defsparserP10scriptfileE9subtokens_3+16, %edi
	jmp	L926
	.p2align 4,,10
	.p2align 3
L1016:
	subl	$8, %edi
L926:
	movl	(%edi), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1555
	movl	$__ZZL10defsparserP10scriptfileE9subtokens_3, %eax
	cmpl	%edi, %eax
	jne	L1016
L923:
	movl	-264(%ebp), %ecx
	movl	12(%ebx), %eax
	leal	1(%ecx), %edx
	cmpl	%edx, %eax
	je	L2
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1556
L942:
	cmpl	-264(%ebp), %eax
	jb	L943
	jmp	L2
	.p2align 4,,10
	.p2align 3
L1555:
	cmpl	$158, 4(%edi)
	jne	L923
	leal	-168(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getstring
	leal	-160(%ebp), %edx
	movl	%eax, %esi
	movl	%ebx, %eax
	call	_scriptfile_getstring
	testl	%esi, %esi
	jne	L1557
	testl	%eax, %eax
	jne	L929
	movl	-264(%ebp), %eax
	cmpl	8(%ebx), %eax
	je	L929
	movl	-160(%ebp), %eax
	movl	-168(%ebp), %esi
	movl	%eax, -272(%ebp)
	movl	-256(%ebp), %eax
	movl	12(%eax), %edi
	testl	%edi, %edi
	jne	L931
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	je	L1399
	movl	%edi, -280(%ebp)
	leal	8(%eax), %edi
	movl	%ebx, -276(%ebp)
	movl	%ecx, %ebx
	jmp	L936
L1559:
	movl	(%ebx), %eax
	movl	%ebx, %edi
	testl	%eax, %eax
	je	L1558
	movl	%eax, %ebx
L936:
	movl	4(%ebx), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L1559
	movl	-276(%ebp), %ebx
	movl	%edi, %edx
	jmp	L935
	.p2align 4,,10
	.p2align 3
L1556:
	movl	8(%ebx), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC135, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3774, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L1400:
	movl	12(%ebx), %eax
	jmp	L942
L929:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1400
	movl	8(%ebx), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	-168(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	20(%ebx), %eax
	movl	$LC134, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3763, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1400
L1469:
	movl	-272(%ebp), %ebx
	testl	%ebx, %ebx
	jne	L2
	testb	$1, -280(%ebp)
	je	L2
	orb	$2, _paletteloaded
	jmp	L2
L1461:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	$LC15, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC14, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$196, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1025:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %edi
	movl	-256(%ebp), %edx
	movl	%edi, %eax
	call	_scriptfile_getlinum
	movl	%ebx, 28(%esp)
	movl	%esi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%edi), %eax
	movl	$LC130, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3709, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1557:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1400
	movl	8(%ebx), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC133, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3758, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1400
L188:
	movl	-152(%ebp), %eax
	cmpl	$251, %eax
	ja	L192
	movl	-272(%ebp), %edx
	testl	%edx, %edx
	jg	L194
	jmp	L173
L1533:
	cmpl	$13, %eax
	jne	L1382
	leal	-200(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getstring
	movl	12(%esi), %eax
	jmp	L145
L595:
	cmpl	$30463, -272(%ebp)
	ja	L569
L968:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jge	L613
	movl	%edx, %eax
	jmp	L569
L143:
	movb	$2, -264(%ebp)
	movl	12(%esi), %eax
	jmp	L145
L1549:
	movzbl	(%esi), %eax
	leal	768(%esi), %edi
	sall	%cl, %eax
	movb	%al, (%esi)
	leal	1(%esi), %eax
L725:
	movzbl	(%eax), %edx
	movl	-152(%ebp), %ecx
	addl	$1, %eax
	sall	%cl, %edx
	movb	%dl, -1(%eax)
	cmpl	%eax, %edi
	jne	L725
	jmp	L724
L1521:
	movl	%eax, %ebx
	movl	-280(%ebp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	movl	-292(%ebp), %ecx
	movl	$LC54, %eax
	movl	-288(%ebp), %edx
	call	__ZL16check_tile_rangePKcPiS1_PK10scriptfileS0_.lto_priv.0
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L983
	movl	__ZL11lastmodelid, %eax
	testl	%eax, %eax
	js	L1560
	fldl	-160(%ebp)
	fstl	-256(%ebp)
	fld1
	fxch	%st(1)
	fcomip	%st(1), %st
	fstp	%st(0)
	ja	L1561
L289:
	movl	-176(%ebp), %ecx
	cmpl	-168(%ebp), %ecx
	jg	L301
	movl	-228(%ebp), %eax
	fldl	-160(%ebp)
	movl	%ecx, %edi
	movl	%eax, -256(%ebp)
	movl	-204(%ebp), %eax
	fstps	-272(%ebp)
	movl	%eax, -288(%ebp)
L300:
	movl	-256(%ebp), %eax
	xorl	%edx, %edx
	movl	%edi, %ecx
	movl	%eax, 4(%esp)
	movl	__ZL9modelskin, %eax
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, (%esp)
	movss	-272(%ebp), %xmm0
	movl	-288(%ebp), %edx
	movl	__ZL11lastmodelid, %eax
	call	_md_defineframe
	cmpl	$-2, %eax
	je	L294
	cmpl	$-1, %eax
	je	L293
	cmpl	$-3, %eax
	je	L296
	cmpl	$1023, %eax
	ja	L299
	movl	%eax, %edx
	movl	-312(%ebp), %ecx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.6(%eax), %eax
	orb	%al, (%ecx,%edx)
L299:
	addl	$1, %edi
	cmpl	-168(%ebp), %edi
	jle	L300
L301:
	movl	-264(%ebp), %esi
	jmp	L293
	.p2align 4,,10
	.p2align 3
L296:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1562
L293:
	movl	$1, __ZL9seenframe
	movl	12(%ebx), %eax
	movl	%esi, -264(%ebp)
	jmp	L270
L294:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L293
	movl	-280(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC56, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1588, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L293
L142:
	leal	-160(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getbraces
	testl	%eax, %eax
	jne	L1382
	movl	-160(%ebp), %edi
	jmp	L151
	.p2align 4,,10
	.p2align 3
L149:
	movl	$LC21, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1563
L151:
	movl	12(%esi), %eax
	cmpl	%edi, %eax
	jnb	L145
	movl	%esi, %eax
	call	_scriptfile_gettoken
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L151
	movl	$LC20, 4(%esp)
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L149
	leal	-148(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getsymbol
	leal	-144(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getsymbol
	movb	$1, -139(%ebp)
	jmp	L151
L1563:
	leal	-152(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getsymbol
	movb	$1, -140(%ebp)
	jmp	L151
L385:
	movl	$20, %eax
	call	__Z13handle_memerri
L384:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1564
L388:
	movl	-272(%ebp), %ecx
	movl	12(%ebx), %eax
	movl	%ecx, -264(%ebp)
	jmp	L270
L947:
	movzwl	%bx, %eax
	call	_tilefontGetPtr
	movl	%eax, -264(%ebp)
L954:
	movl	-248(%ebp), %eax
	movl	-256(%ebp), %ecx
	cmpl	%ecx, 12(%eax)
	jnb	L2
	movl	-248(%ebp), %eax
	call	_scriptfile_gettoken
	movl	%eax, %edi
	testl	%eax, %eax
	je	L954
	movl	$__ZZL10defsparserP10scriptfileE9subtokens_4, %esi
	movl	$__ZZL10defsparserP10scriptfileE9subtokens_4+16, %ebx
	jmp	L953
	.p2align 4,,10
	.p2align 3
L951:
	cmpl	%ebx, %esi
	je	L954
	subl	$8, %ebx
L953:
	movl	(%ebx), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L951
	cmpl	$160, 4(%ebx)
	jne	L954
	movl	-248(%ebp), %esi
	leal	-168(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getstring
	leal	-160(%ebp), %edx
	movl	%eax, %ebx
	movl	%esi, %eax
	call	_scriptfile_getsymbol
	testl	%ebx, %ebx
	jne	L1565
	testl	%eax, %eax
	jne	L957
	movl	-248(%ebp), %eax
	movl	8(%eax), %edi
	cmpl	-256(%ebp), %edi
	jne	L958
L957:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L954
	movl	-248(%ebp), %esi
	movl	8(%esi), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	-168(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	20(%esi), %eax
	movl	$LC140, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3831, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L954
L449:
	movl	%edx, %eax
	call	__Z13handle_memerri
L91:
	movl	$16843009, _g_noFloorPal-16(%edx,%eax)
	movl	$16843009, _g_noFloorPal-12(%edx,%eax)
	movl	$16843009, _g_noFloorPal-8(%edx,%eax)
	movl	$16843009, _g_noFloorPal-4(%edx,%eax)
	subl	$1, %eax
	cmpl	$16, %eax
	jb	L2
	andl	$-16, %eax
	xorl	%ecx, %ecx
L96:
	movl	$16843009, _g_noFloorPal(%edx,%ecx)
	movl	$16843009, _g_noFloorPal+4(%edx,%ecx)
	movl	$16843009, _g_noFloorPal+8(%edx,%ecx)
	movl	$16843009, _g_noFloorPal+12(%edx,%ecx)
	addl	$16, %ecx
	cmpl	%eax, %ecx
	jb	L96
	jmp	L2
L580:
	orl	$16, %ebx
	jmp	L589
L581:
	orl	$1, %ebx
	jmp	L589
L582:
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getdouble
	jmp	L589
L583:
	movl	-248(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getdouble
	jmp	L589
L584:
	movl	-248(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getdouble
	jmp	L589
L585:
	movl	-248(%ebp), %eax
	leal	-176(%ebp), %edx
	call	_scriptfile_getdouble
	jmp	L589
L586:
	movl	-248(%ebp), %eax
	leal	-184(%ebp), %edx
	call	_scriptfile_getdouble
	jmp	L589
L587:
	movl	-248(%ebp), %eax
	leal	-192(%ebp), %edx
	call	_scriptfile_getstring
	jmp	L589
L576:
	movl	-248(%ebp), %eax
	leal	-204(%ebp), %edx
	call	_scriptfile_getnumber
	jmp	L589
L577:
	orl	$81, %ebx
	jmp	L589
L578:
	orl	$32, %ebx
	jmp	L589
L579:
	orl	$2, %ebx
	jmp	L589
L869:
	xorl	%eax, %eax
	movl	-296(%ebp), %ecx
	cmpl	$134, %esi
	movl	%esi, -304(%ebp)
	sete	%al
	leal	_glblend(%ecx,%eax,8), %eax
	movl	%eax, -288(%ebp)
	movl	-160(%ebp), %eax
	movl	%eax, -292(%ebp)
L896:
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-292(%ebp), %eax
	jnb	L1566
	movl	-248(%ebp), %eax
	call	_scriptfile_gettoken
	movl	%eax, %esi
	testl	%eax, %eax
	je	L896
	movl	$__ZZL10defsparserP10scriptfileE16glblenddeftokens, %ebx
	movl	$__ZZL10defsparserP10scriptfileE16glblenddeftokens+48, %edi
	jmp	L876
	.p2align 4,,10
	.p2align 3
L873:
	cmpl	%edi, %ebx
	je	L896
	subl	$8, %edi
L876:
	movl	(%edi), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L873
	movl	4(%edi), %edx
	cmpl	$137, %edx
	jle	L1567
	cmpl	$138, %edx
	jne	L896
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getdouble
	fldl	-152(%ebp)
	movl	-288(%ebp), %eax
	fstps	-300(%ebp)
	movss	-300(%ebp), %xmm0
	movss	%xmm0, (%eax)
	jmp	L896
L1567:
	cmpl	$135, %edx
	jle	L896
	movl	-248(%ebp), %eax
	movl	%edx, -300(%ebp)
	call	_scriptfile_gettoken
	movl	%eax, %esi
	testl	%eax, %eax
	je	L896
	movl	$__ZZL10defsparserP10scriptfileE17glBlendFuncTokens, %edi
	movl	$__ZZL10defsparserP10scriptfileE17glBlendFuncTokens+72, %ebx
	jmp	L882
L1012:
	subl	$8, %ebx
L882:
	movl	(%ebx), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1568
	cmpl	%ebx, %edi
	jne	L1012
	movl	-300(%ebp), %edx
	movl	$-1, %ecx
L881:
	xorl	%eax, %eax
	cmpl	$136, %edx
	movl	-288(%ebp), %edx
	setne	%al
	leal	4(%edx,%eax), %eax
	leal	-139(%ecx), %edx
	cmpl	$9, %edx
	ja	L896
	jmp	*L886(,%edx,4)
	.section .rdata,"dr"
	.align 4
L886:
	.long	L895
	.long	L894
	.long	L893
	.long	L892
	.long	L891
	.long	L890
	.long	L889
	.long	L888
	.long	L887
	.long	L885
	.text
L887:
	movb	$8, (%eax)
	jmp	L896
L888:
	movb	$7, (%eax)
	jmp	L896
L889:
	movb	$6, (%eax)
	jmp	L896
L890:
	movb	$5, (%eax)
	jmp	L896
L891:
	movb	$4, (%eax)
	jmp	L896
L892:
	movb	$3, (%eax)
	jmp	L896
L893:
	movb	$2, (%eax)
	jmp	L896
L894:
	movb	$1, (%eax)
	jmp	L896
L895:
	movb	$0, (%eax)
	jmp	L896
L885:
	movb	$9, (%eax)
	jmp	L896
L1568:
	movl	-300(%ebp), %edx
	movl	4(%ebx), %ecx
	jmp	L881
L1566:
	cmpl	$135, -304(%ebp)
	jne	L868
	movl	-288(%ebp), %eax
	movl	-296(%ebp), %ecx
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%edx, -284(%ebp)
	movl	%eax, -288(%ebp)
	movl	%eax, _glblend+8(%ecx)
	movl	%edx, _glblend+12(%ecx)
	jmp	L1396
L574:
	movl	-248(%ebp), %eax
	leal	-200(%ebp), %edx
	call	_scriptfile_getnumber
	jmp	L589
L906:
	leal	-127(%ebx), %eax
	cmpl	$1, %eax
	ja	L904
	jmp	L905
L1024:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %edi
	movl	-256(%ebp), %edx
	movl	%edi, %eax
	call	_scriptfile_getlinum
	movl	%esi, 28(%esp)
	movl	%ebx, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%edi), %eax
	movl	$LC129, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3687, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1023:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %edi
	movl	-256(%ebp), %edx
	movl	%edi, %eax
	call	_scriptfile_getlinum
	movl	%ebx, 28(%esp)
	movl	%esi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%edi), %eax
	movl	$LC128, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3665, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L233:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1569
L231:
	movl	$1, __ZL9seenframe
	jmp	L2
L232:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L231
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC39, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1303, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L231
L1428:
	movl	-308(%ebp), %esi
	movl	__ZL11lastmodelid, %ebx
	cmpl	$1, -264(%ebp)
	jne	L1570
	fldl	-184(%ebp)
	movl	_mdinited, %eax
	movl	-224(%ebp), %esi
	movl	-232(%ebp), %edi
	fstpl	-256(%ebp)
	fldl	-192(%ebp)
	fstpl	-264(%ebp)
	fldl	-200(%ebp)
	fstpl	-272(%ebp)
	testl	%eax, %eax
	je	L1571
L397:
	cmpl	_nextmodelid, %ebx
	jnb	L398
	fldl	-272(%ebp)
	movl	_models, %eax
	movl	(%eax,%ebx,4), %eax
	fstps	-272(%ebp)
	fldl	-264(%ebp)
	movss	-272(%ebp), %xmm0
	movl	%edi, 4(%eax)
	movss	%xmm0, 12(%eax)
	fstps	-264(%ebp)
	fldl	-256(%ebp)
	movss	-264(%ebp), %xmm0
	movl	%esi, 28(%eax)
	movss	%xmm0, 16(%eax)
	fstps	-256(%ebp)
	movss	-256(%ebp), %xmm0
	movss	%xmm0, 20(%eax)
L398:
	cmpl	$4, _glrendmode
	je	L1572
L399:
	movl	$0, __ZL13lastmodelskin
	movl	$0, __ZL9modelskin
	movl	$0, __ZL9seenframe
	jmp	L2
L1425:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1573
L404:
	movl	-264(%ebp), %eax
	movl	-248(%ebp), %ecx
	addl	$1, %eax
	movl	%eax, 12(%ecx)
	jmp	L2
L1460:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	$LC33, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC14, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$196, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1424:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1574
L402:
	movl	-264(%ebp), %eax
	movl	-248(%ebp), %ecx
	addl	$1, %eax
	movl	%eax, 12(%ecx)
	jmp	L2
L331:
	orl	$32, -272(%ebp)
	jmp	L343
L1496:
	movl	-248(%ebp), %ebx
	movl	-256(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%edi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC12, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$774, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L108
L140:
	leal	-184(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getsymbol
	movl	-184(%ebp), %eax
	movl	$255, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, -184(%ebp)
	jmp	L1382
L141:
	movl	$1, -292(%ebp)
	movl	12(%esi), %eax
	jmp	L145
L135:
	orl	$16, -276(%ebp)
	jmp	L1382
L137:
	orl	$32, -276(%ebp)
	movl	12(%esi), %eax
	jmp	L145
L138:
	leal	-168(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getsymbol
	movl	-168(%ebp), %eax
	movl	$127, %edx
	movl	$1, -272(%ebp)
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$-128, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, -168(%ebp)
	movl	12(%esi), %eax
	jmp	L145
L139:
	leal	-176(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getsymbol
	movl	-176(%ebp), %eax
	movl	$127, %edx
	movl	$1, -280(%ebp)
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$-128, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, -176(%ebp)
	movl	12(%esi), %eax
	jmp	L145
L213:
	movl	%ebx, %eax
	call	_tileDelete
	jmp	L2
L1431:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	$2048, 16(%esp)
	movl	$LC48, 12(%esp)
	movl	$1425, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1432:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	%ebx, 16(%esp)
	movl	$LC49, 12(%esp)
	movl	$1431, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1517:
	movl	-204(%ebp), %edx
	movl	-256(%ebp), %ebx
	movl	-176(%ebp), %esi
	testl	%edx, %edx
	je	L1575
	testl	%esi, %esi
	je	L318
	movl	__ZL11lastmodelid, %ecx
	testl	%ecx, %ecx
	js	L1576
	movl	-168(%ebp), %eax
	fldl	LC42
	movl	%eax, 4(%esp)
	fmull	-160(%ebp)
	fnstcw	-242(%ebp)
	movzwl	-242(%ebp), %eax
	orb	$12, %ah
	movw	%ax, -244(%ebp)
	movl	%ecx, %eax
	movl	%esi, %ecx
	fldcw	-244(%ebp)
	fistpl	(%esp)
	fldcw	-242(%ebp)
	call	_md_defineanimation
	cmpl	$-3, %eax
	je	L322
	cmpl	$-2, %eax
	jne	L379
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L983
	movl	-280(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC60, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1668, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L983
L1504:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1577
L772:
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1393:
	movl	-264(%ebp), %eax
	call	_kclose
	jmp	L1395
L1412:
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	$LC92, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC14, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$196, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1524:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1389
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC106, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3015, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1389
L1493:
	movl	%edx, -280(%ebp)
	movl	%eax, -276(%ebp)
	movl	%ecx, -272(%ebp)
	call	_hicinit
	movl	-280(%ebp), %edx
	movl	-276(%ebp), %eax
	movl	-272(%ebp), %ecx
	jmp	L533
L1409:
	cmpl	$30463, -272(%ebp)
	jbe	L2
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC89, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2588, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
	.p2align 4,,10
	.p2align 3
L334:
	orl	$16, -272(%ebp)
	jmp	L343
L335:
	orl	$1, -272(%ebp)
	jmp	L343
L336:
	movl	-256(%ebp), %eax
	leal	-160(%ebp), %edx
	call	_scriptfile_getdouble
	jmp	L343
L337:
	movl	-256(%ebp), %eax
	leal	-168(%ebp), %edx
	call	_scriptfile_getdouble
	jmp	L343
L338:
	movl	-256(%ebp), %eax
	leal	-176(%ebp), %edx
	call	_scriptfile_getdouble
	jmp	L343
L339:
	movl	-256(%ebp), %eax
	leal	-208(%ebp), %edx
	call	_scriptfile_getsymbol
	jmp	L343
L340:
	movl	-256(%ebp), %eax
	leal	-204(%ebp), %edx
	call	_scriptfile_getnumber
	jmp	L343
L341:
	movl	-256(%ebp), %eax
	leal	-212(%ebp), %edx
	call	_scriptfile_getstring
	jmp	L343
L1530:
	testb	$2, _paletteloaded
	jne	L780
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1395
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC114, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3195, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1395
	.p2align 4,,10
	.p2align 3
L1531:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1395
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC115, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3202, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1395
L333:
	orl	$2, -272(%ebp)
	jmp	L343
L368:
	leal	-208(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getsymbol
	jmp	L377
L369:
	leal	-204(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getsymbol
	jmp	L377
L370:
	leal	-160(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getdouble
	jmp	L377
L371:
	leal	-168(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getdouble
	jmp	L377
L372:
	leal	-176(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getdouble
	jmp	L377
L373:
	movl	-288(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getsymbol
	jmp	L377
L374:
	movl	-272(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getsymbol
	jmp	L377
L375:
	movl	-272(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getsymbol
	movl	-216(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L377
L363:
	orl	$8, -256(%ebp)
	jmp	L377
L365:
	orl	$2, -256(%ebp)
	jmp	L377
L366:
	orl	$1, -256(%ebp)
	jmp	L377
L367:
	orl	$4, -256(%ebp)
	jmp	L377
L1508:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L862
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC126, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3471, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L862
L1457:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	$LC17, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC14, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$196, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1456:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	$LC17, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC14, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$196, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
	.p2align 4,,10
	.p2align 3
L1574:
	movl	$2048, 16(%esp)
	movl	$LC69, 12(%esp)
	movl	$1968, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L402
L689:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1578
L691:
	movl	-272(%ebp), %eax
	movl	-248(%ebp), %ecx
	addl	$1, %eax
	movl	%eax, 12(%ecx)
	jmp	L2
L736:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1579
L738:
	movl	-276(%ebp), %eax
	movl	-248(%ebp), %ecx
	addl	$1, %eax
	movl	%eax, 12(%ecx)
	jmp	L2
L1577:
	movl	-248(%ebp), %ebx
	movl	-256(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%edi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC111, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3155, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L772
L1578:
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC99, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2892, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L691
L1579:
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC107, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3070, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L738
L192:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	$1, -276(%ebp)
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L173
	movl	$251, 16(%esp)
	movl	$LC27, 12(%esp)
	movl	$1082, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L173
L754:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jge	L763
	movl	%edx, %eax
	jmp	L752
L1552:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L752
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC118, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3308, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	12(%esi), %eax
	jmp	L752
L1551:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L752
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC117, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3302, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	12(%esi), %eax
	jmp	L752
L763:
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC108, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3127, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1390
L1571:
	call	_freeallmodels
	movl	$1, _mdinited
	jmp	L397
L1572:
	movl	__ZL11lastmodelid, %edx
	movl	_models, %eax
	movl	(%eax,%edx,4), %eax
	movl	196(%eax), %edx
	movl	124(%edx), %ebx
	testl	%ebx, %ebx
	jne	L399
	call	_md3postload_polymer.part.0
	jmp	L399
L1020:
	cmpl	%ecx, %ebx
	jg	L2
L218:
	movl	%ebx, %eax
	addl	$1, %ebx
	call	_tileDelete
	cmpl	-168(%ebp), %ebx
	jle	L218
	jmp	L2
	.p2align 4,,10
	.p2align 3
L1573:
	movl	%ebx, 16(%esp)
	movl	$LC70, 12(%esp)
	movl	$1975, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L404
L1437:
	call	_freeallmodels
	movl	$1, _mdinited
	jmp	L226
L238:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC44, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1348, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1434:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC41, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1332, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1435:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC38, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1291, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
	.p2align 4,,10
	.p2align 3
L1569:
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC40, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1307, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L231
L1416:
	cmpl	$251, -168(%ebp)
	jbe	L554
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	$251, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC85, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2371, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
	.p2align 4,,10
	.p2align 3
L671:
	call	_tileSetupSky
	movl	%eax, -256(%ebp)
L686:
	movl	-248(%ebp), %eax
	movl	-264(%ebp), %ecx
	cmpl	%ecx, 12(%eax)
	jnb	L2
	movl	-248(%ebp), %eax
	call	_scriptfile_gettoken
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L686
	movl	$__ZZL10defsparserP10scriptfileE9subtokens, %esi
	movl	$__ZZL10defsparserP10scriptfileE9subtokens+40, %edi
	jmp	L677
	.p2align 4,,10
	.p2align 3
L674:
	cmpl	%edi, %esi
	je	L686
	subl	$8, %edi
L677:
	movl	(%edi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L674
	movl	4(%edi), %eax
	cmpl	$99, %eax
	je	L1580
	jle	L1581
	cmpl	$117, %eax
	je	L681
	cmpl	$118, %eax
	jne	L686
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getsymbol
	movl	-152(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	cmpl	$16, %eax
	jg	L686
	movl	-256(%ebp), %eax
	movb	%cl, 8(%eax)
	jmp	L686
L1581:
	cmpl	$21, %eax
	je	L679
	cmpl	$66, %eax
	jne	L686
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getsymbol
	movl	-152(%ebp), %eax
	movl	-256(%ebp), %ecx
	movl	%eax, 28(%ecx)
	jmp	L686
L1580:
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getsymbol
	movl	-152(%ebp), %eax
	movl	-256(%ebp), %ecx
	movl	%eax, 4(%ecx)
	jmp	L686
L681:
	movl	-248(%ebp), %eax
	leal	-152(%ebp), %edx
	call	_scriptfile_getsymbol
	movl	-152(%ebp), %eax
	movl	-256(%ebp), %ecx
	movl	%eax, (%ecx)
	jmp	L686
L679:
	movl	-248(%ebp), %esi
	leal	-160(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getsymbol
	leal	-152(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getsymbol
	movl	-160(%ebp), %eax
	cmpl	$15, %eax
	ja	L686
	movl	-152(%ebp), %edx
	cmpl	$16, %edx
	ja	L686
	movl	-256(%ebp), %ecx
	movb	%dl, 9(%ecx,%eax)
	jmp	L686
L1455:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%ebx, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC30, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1149, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L452:
	xorl	%eax, %eax
	cmpb	$0, -272(%ebp)
	je	L454
	jmp	L453
	.p2align 4,,10
	.p2align 3
L1492:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC81, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2276, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1497:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L109
	movl	-248(%ebp), %ebx
	movl	-256(%ebp), %edx
	movl	%ecx, -264(%ebp)
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	$LC13, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC14, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$196, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	-264(%ebp), %ecx
	jmp	L109
	.p2align 4,,10
	.p2align 3
L1562:
	movl	-280(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC57, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1593, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L293
L613:
	movl	-248(%ebp), %esi
	movl	-288(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC88, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2553, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	12(%esi), %eax
	jmp	L569
L243:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %ebx
	movl	-256(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%esi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC47, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1401, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1433:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC45, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1384, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1558:
	movl	-280(%ebp), %edi
	movl	-276(%ebp), %ebx
L1399:
	movzbl	(%esi), %edx
	testb	%dl, %dl
	je	L934
L933:
	leal	1(%esi), %ecx
	movl	$-2128831035, %eax
L939:
	addl	$1, %ecx
	xorl	%edx, %eax
	movzbl	-1(%ecx), %edx
	imull	$16777619, %eax, %eax
	testb	%dl, %dl
	jne	L939
	testl	%edi, %edi
	jne	L1582
L934:
	movl	%esi, %eax
	call	_mi_strdup
	movl	%eax, -152(%ebp)
	leal	-152(%ebp), %eax
	movl	%eax, (%esp)
	movl	-256(%ebp), %ecx
	call	__ZNSt8__detail9_Map_baseI19LocaleCharWrapper_tSt4pairIKS1_S1_ESaIS4_ENS_10_Select1stESt8equal_toIS1_E22LocaleCharWrapper_hashNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOS1_
	movl	%eax, %esi
	movl	-272(%ebp), %eax
	subl	$4, %esp
	call	_mi_strdup
	movl	%eax, (%esi)
	jmp	L1400
L1527:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1385
	movl	-248(%ebp), %esi
	movl	-264(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC88, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2477, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1385
L1526:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1385
	movl	-248(%ebp), %esi
	movl	-264(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC87, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2472, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1385
	.p2align 4,,10
	.p2align 3
L931:
	movzbl	(%esi), %edx
	testb	%dl, %dl
	jne	L933
	movl	-256(%ebp), %eax
	xorl	%edx, %edx
	movl	4(%eax), %edi
	movl	$-2128831035, %eax
	divl	%edi
L941:
	movl	-256(%ebp), %eax
	movl	(%eax), %eax
	movl	%esi, (%esp)
	movl	%edx, %ecx
	movl	%edi, %edx
	call	__ZNKSt10_HashtableI19LocaleCharWrapper_tSt4pairIKS0_St13unordered_mapIS0_S0_22LocaleCharWrapper_hashSt8equal_toIS0_ESaIS1_IS2_S0_EEEESaISA_ENSt8__detail10_Select1stES6_S4_NSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_find_before_node_trIS0_EEPNSC_15_Hash_node_baseEjRKT_j.isra.0
	movl	%eax, %edx
	testl	%eax, %eax
	je	L934
L935:
	movl	(%edx), %edi
	testl	%edi, %edi
	je	L934
	movl	8(%edi), %eax
	call	_mi_free
	movl	$0, 8(%edi)
	movl	-272(%ebp), %eax
	call	_mi_strdup
	movl	%eax, 8(%edi)
	jmp	L1400
L1582:
	movl	-256(%ebp), %ecx
	xorl	%edx, %edx
	movl	4(%ecx), %edi
	divl	%edi
	jmp	L941
L1554:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L173
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	$LC26, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC14, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$196, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L173
L1548:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1583
L723:
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1388:
	movl	-264(%ebp), %eax
	call	_kclose
	jmp	L1389
L720:
	movl	$768, %eax
	call	__Z13handle_memerri
L1547:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1388
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%edi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC104, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2974, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1388
L1583:
	movl	-248(%ebp), %ebx
	movl	-256(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%edi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC104, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2982, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L723
L1546:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1389
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%edi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC103, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2968, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	12(%esi), %eax
	jmp	L699
L1545:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L699
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC102, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2961, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	12(%esi), %eax
	jmp	L699
L1544:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L699
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC101, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2955, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	12(%esi), %eax
	jmp	L699
L1543:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L699
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC100, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2949, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1387
L172:
	cmpl	$30463, %esi
	ja	L197
L198:
	movl	%esi, %eax
	call	_tileDelete
	jmp	L2
L1565:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L954
	movl	-248(%ebp), %esi
	movl	8(%esi), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC139, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3826, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L954
L1443:
	movl	$16843009, _g_noFloorPal(%edx)
	movl	$16843009, _g_noFloorPal-4(%edx,%eax)
	jmp	L2
L1561:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L291
	movl	-280(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	fldl	-256(%ebp)
	movl	%eax, 20(%esp)
	fstpl	24(%esp)
	movl	20(%ebx), %eax
	movl	$LC55, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1575, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L291:
	movl	$0, -160(%ebp)
	movl	$1072693248, -156(%ebp)
	jmp	L289
L1560:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L379
	movl	-280(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC38, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1568, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L379
L1535:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1584
L186:
	movl	-264(%ebp), %esi
	jmp	L187
L381:
	movl	-264(%ebp), %eax
	movl	%eax, -272(%ebp)
	jmp	L388
L355:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L983
	movl	-280(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC64, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1787, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L983
L1515:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L379
	movl	-280(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC45, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1769, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L379
L1516:
	movl	-280(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC63, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1782, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L983
L1584:
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	$LC26, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC14, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$196, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L186
L1520:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L379
	movl	-280(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC66, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1863, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L379
L1564:
	movl	-280(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC67, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1878, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L388
L1436:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L2
	movl	%esi, 16(%esp)
	movl	$LC35, 12(%esp)
	movl	$1259, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1458:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC18, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$854, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
	.p2align 4,,10
	.p2align 3
L958:
	movl	-168(%ebp), %esi
	movzbl	(%esi), %eax
	testb	%al, %al
	je	L959
	movl	%esi, %ecx
	xorl	%edx, %edx
L960:
	andl	$-64, %eax
	cmpb	$-128, %al
	setne	%al
	addl	$1, %ecx
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	(%ecx), %eax
	testb	%al, %al
	jne	L960
	cmpl	$1, %edx
	jne	L959
	movl	-160(%ebp), %ebx
	cmpl	$30463, %ebx
	ja	L1585
	movl	%esi, (%esp)
	call	_strlen
	movl	%eax, %ecx
	cmpl	$4, %eax
	jbe	L963
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L954
	movl	-248(%ebp), %ebx
	movl	%edi, %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%esi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC142, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3849, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L954
L1475:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	$LC26, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC14, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$196, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L959:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L954
	movl	-248(%ebp), %ebx
	movl	%edi, %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%esi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC141, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3837, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L954
L963:
	xorl	%eax, %eax
	leal	-152(%ebp), %edi
	movl	%eax, -152(%ebp)
	movl	-264(%ebp), %eax
	rep movsb
	movzwl	%bx, %ecx
	movl	-152(%ebp), %edx
	call	_tilefontDefineMapping
	jmp	L954
L1585:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L954
	movl	-248(%ebp), %esi
	movl	%edi, %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	$30463, 28(%esp)
	movl	%ebx, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC138, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3842, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L954
	.p2align 4,,10
	.p2align 3
L1474:
	movl	__ZL14faketilebuffer.lto_priv.0, %ecx
	movl	-272(%ebp), %edx
	movl	%esi, %eax
	call	_tileSetData
	jmp	L201
L197:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	$LC26, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC14, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$196, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L350:
	movl	$255, -208(%ebp)
	fld1
	fdivl	-176(%ebp)
	fstpl	-176(%ebp)
	jmp	L352
L1505:
	movl	-272(%ebp), %ebx
	movl	$32, %edi
	movw	%di, _numshades
	movl	%ebx, %eax
	call	__ZL20maybe_alloc_palookupi.lto_priv.0
	movswl	_numshades, %eax
	movl	_palookup(,%ebx,4), %edx
	movl	%esi, 4(%esp)
	sall	$8, %eax
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	$1, -280(%ebp)
	jmp	L774
L823:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1586
L825:
	movl	-264(%ebp), %eax
	movl	-248(%ebp), %ecx
	addl	$1, %eax
	movl	%eax, 12(%ecx)
	jmp	L2
L1506:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1395
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC112, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3171, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	12(%esi), %eax
	jmp	L752
L1586:
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC119, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3367, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L825
L988:
	movl	$-1, %edi
	leal	-152(%ebp), %ecx
L458:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L479
	xorl	%edx, %edx
	jmp	L478
L479:
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%ecx, -272(%ebp)
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC73, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2112, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	-272(%ebp), %ecx
	xorl	%edx, %edx
	jmp	L478
L254:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1587
L256:
	movl	-276(%ebp), %eax
	movl	-248(%ebp), %ecx
	addl	$1, %eax
	movl	%eax, 12(%ecx)
	jmp	L2
L328:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L983
	movl	-280(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC62, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1738, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L983
L1587:
	movl	%esi, 16(%esp)
	movl	$LC35, 12(%esp)
	movl	$1497, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L256
L166:
	testl	%eax, %eax
	jne	L169
	movb	$0, 1(%esi)
	cmpl	$0, -272(%ebp)
	je	L170
L167:
	movl	-168(%ebp), %eax
	movb	%al, _picanm+2(%ebx,%edi)
	jmp	L2
L1452:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	-288(%ebp), %ecx
	movl	%eax, 20(%esp)
	movl	%ecx, 24(%esp)
	movl	20(%esi), %eax
	movl	$LC25, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1001, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1451:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC24, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$998, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L169:
	cmpl	$0, -272(%ebp)
	je	L2
	jmp	L167
	.p2align 4,,10
	.p2align 3
L1450:
	movzwl	_picanm+3(%ebx,%edi), %ecx
	movzbl	-276(%ebp), %edx
	movb	-264(%ebp), %dh
	movl	-280(%ebp), %eax
	orl	%edx, %ecx
	movw	%cx, _picanm+3(%ebx,%edi)
	testl	%eax, %eax
	je	L161
	movl	-176(%ebp), %edx
	movl	-272(%ebp), %eax
	movb	%dl, _picanm+1(%ebx,%edi)
	testl	%eax, %eax
	je	L2
L162:
	movl	-168(%ebp), %eax
	movb	%al, _picanm+2(%ebx,%edi)
	jmp	L2
L1449:
	movb	$0, -288(%ebp)
L158:
	movswl	_tilesiz(,%edi,4), %eax
	leal	0(,%edi,4), %ebx
	cmpl	-148(%ebp), %eax
	jne	L2
	movswl	_tilesiz+2(%ebx), %eax
	cmpl	-144(%ebp), %eax
	jne	L2
	cmpb	$0, -288(%ebp)
	jne	L2
	jmp	L159
	.p2align 4,,10
	.p2align 3
L161:
	movl	-272(%ebp), %esi
	testl	%esi, %esi
	jne	L162
	movl	-276(%ebp), %ecx
	testl	%ecx, %ecx
	jne	L2
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC23, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$989, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
	.p2align 4,,10
	.p2align 3
L1448:
	movswl	_tilesiz(,%edi,4), %edx
	movswl	_tilesiz+2(,%edi,4), %ecx
	imull	%ecx, %edx
	testl	%edx, %edx
	jle	L156
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -296(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	movl	-296(%ebp), %edx
	subl	$4, %esp
	testl	%eax, %eax
	movl	%eax, %esi
	je	L449
	movswl	%di, %eax
	movl	%esi, %ecx
	call	_tileLoadData
	movl	-296(%ebp), %edx
	xorl	%ecx, %ecx
	movl	%esi, %eax
	call	_Bcrc32
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, %ebx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L156:
	cmpl	%ebx, -152(%ebp)
	je	L155
	cmpb	$0, -288(%ebp)
	je	L2
	jmp	L158
L1447:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC22, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$964, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1430:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	%edx, 16(%esp)
	movl	$LC51, 12(%esp)
	movl	$1450, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
	.p2align 4,,10
	.p2align 3
L1013:
	movl	%esi, %edi
	jmp	L913
L1415:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC84, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2365, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1414:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	$251, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC83, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2357, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1570:
	testl	%ebx, %ebx
	js	L2
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1588
L391:
	cmpl	$0, _mdinited
	je	L392
	movl	__ZL11lastmodelid, %ebx
	cmpl	_nextmodelid, %ebx
	jnb	L392
	movl	$_tile2model, %esi
	movl	$_tile2model+650220, %edi
	jmp	L394
	.p2align 4
	.p2align 4,,10
	.p2align 3
L393:
	cmpl	%edi, %esi
	je	L1589
	subl	$20, %edi
L394:
	movswl	(%edi), %eax
	cmpl	%eax, %ebx
	jne	L393
	movl	8(%edi), %eax
	movl	$-1, %ecx
	movw	%cx, (%edi)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	12(%edi), %eax
	subl	$4, %esp
	movl	$0, 8(%edi)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, 12(%edi)
	jmp	L393
L1589:
	movl	_models, %eax
	testl	%eax, %eax
	je	L392
	movl	(%eax,%ebx,4), %ecx
	movl	(%ecx), %edx
	cmpl	$1, %edx
	je	L1590
	subl	$2, %edx
	cmpl	$1, %edx
	jbe	L1591
L396:
	xorl	%edx, %edx
	movl	%edx, (%eax,%ebx,4)
L392:
	subl	$1, _nextmodelid
	jmp	L2
L1588:
	movl	%ebx, 20(%esp)
	movl	%esi, 16(%esp)
	movl	$LC68, 12(%esp)
	movl	$1900, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L391
	.p2align 4,,10
	.p2align 3
L1454:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC29, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1146, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1453:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	$LC28, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC14, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$196, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1495:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%edi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC11, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$766, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L769:
	movl	-288(%ebp), %eax
	call	__Z13handle_memerri
L1503:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1393
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%edi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC111, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3146, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1393
L322:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L983
	movl	-280(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC61, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1672, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L983
L1576:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L270
	movl	-280(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC41, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1656, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	12(%ebx), %eax
	jmp	L270
L1575:
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	$0, -264(%ebp)
	cmpl	%edx, %ecx
	cmovl	%edx, %ecx
	cmpl	$-2, %ecx
	jl	L270
	movl	-280(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC58, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1641, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	testl	%esi, %esi
	jne	L379
L318:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1383
	movl	-280(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC59, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1647, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L1383:
	movl	$0, -264(%ebp)
	movl	12(%ebx), %eax
	jmp	L270
L1502:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1395
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%edi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC110, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3140, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	12(%esi), %eax
	jmp	L752
L1501:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L752
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC109, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3133, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	12(%esi), %eax
	jmp	L752
L1591:
	movl	%ecx, %eax
	call	__ZL7md3freeP10md3model_t.lto_priv.0
	movl	_models, %eax
	jmp	L396
L1590:
	movl	%ecx, %eax
	call	_voxfree
	movl	_models, %eax
	jmp	L396
	.p2align 4,,10
	.p2align 3
L1486:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC75, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2165, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1423:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	$LC31, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC14, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$196, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
	.p2align 4,,10
	.p2align 3
L1494:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC10, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$759, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1491:
	movl	$2048, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L512
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-272(%ebp), %eax
	movl	_g_sm_heap, %ecx
	movl	%esi, _prhighpalookups(,%eax,4)
	jmp	L511
L1490:
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	subl	$4, %esp
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	%esi, 16(%esp)
	movl	$LC80, 12(%esp)
	movl	$2221, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1489:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1592
L505:
	movl	-264(%ebp), %eax
	call	_kclose
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L2
L500:
	movl	$1048576, %eax
	call	__Z13handle_memerri
L1592:
	movl	%esi, 16(%esp)
	movl	$LC78, 12(%esp)
	movl	$2197, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L505
L507:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1593
L510:
	movl	-256(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L2
L512:
	movl	$256, %eax
	call	__Z13handle_memerri
L1593:
	movl	$64, 24(%esp)
	movl	$4096, 20(%esp)
	movl	%esi, 16(%esp)
	movl	$LC79, 12(%esp)
	movl	$2210, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L510
L1442:
	movl	$16843009, _g_noFloorPal(%edx)
	movl	$16843009, _g_noFloorPal+4(%edx)
	movl	$16843009, _g_noFloorPal-8(%edx,%eax)
	movl	$16843009, _g_noFloorPal-4(%edx,%eax)
	jmp	L2
L1550:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L752
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC116, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3248, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	12(%esi), %eax
	jmp	L752
L535:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC82, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2352, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1438:
	movl	__ZL11lastmodelid, %edx
	movl	_models, %eax
	movl	(%eax,%edx,4), %eax
	movl	196(%eax), %edx
	movl	124(%edx), %edx
	testl	%edx, %edx
	jne	L228
	call	_md3postload_polymer.part.0
	jmp	L228
L1459:
	call	__ZN6loguru24current_verbosity_cutoffEv
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC19, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$865, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1439:
	movl	%edx, -264(%ebp)
	movl	%eax, -256(%ebp)
	call	_hicinit
	movl	-264(%ebp), %edx
	movl	-256(%ebp), %eax
	jmp	L80
	.p2align 4,,10
	.p2align 3
L349:
	movl	$252, -208(%ebp)
	jmp	L352
L348:
	movl	$253, -208(%ebp)
	jmp	L352
L1542:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1594
L853:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1398:
	movl	%edi, %eax
	call	_kclose
	movl	-248(%ebp), %eax
	movl	12(%eax), %eax
	jmp	L835
L850:
	movl	$65536, %eax
	call	__Z13handle_memerri
L1594:
	movl	-256(%ebp), %edx
	movl	-248(%ebp), %eax
	call	_scriptfile_getlinum
	movl	%esi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	-248(%ebp), %eax
	movl	20(%eax), %eax
	movl	$LC124, 12(%esp)
	movl	$3444, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L853
L1488:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC77, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2177, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L1487:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC76, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2171, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2
L205:
	movl	-264(%ebp), %eax
	movzbl	_picanm+2(%eax,%ebx), %eax
	jmp	L206
L203:
	movl	-264(%ebp), %eax
	movzbl	_picanm+1(%eax,%ebx), %eax
	jmp	L204
L1541:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1398
	movl	-248(%ebp), %ebx
	movl	-256(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%esi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC124, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3436, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1398
L1540:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L862
	movl	-248(%ebp), %ebx
	movl	-256(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%esi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC123, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3430, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	12(%ebx), %eax
	jmp	L835
L1539:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L835
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC122, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3423, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	12(%esi), %eax
	jmp	L835
L1538:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L835
	movl	-248(%ebp), %esi
	movl	-256(%ebp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC121, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3417, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1397
	.cfi_endproc
LFE1:
	.p2align 4
	.globl	_tabledivide32.lto_priv.0
	.def	_tabledivide32.lto_priv.0;	.scl	2;	.type	32;	.endef
_tabledivide32.lto_priv.0:
LFB48:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -20
	movl	28(%esp), %ebx
	movl	%esi, 8(%esp)
	cmpl	%ebx, _lastd_s32
	.cfi_offset 6, -16
	je	L1597
	cmpl	$16383, %ebx
	jbe	L1597
	movl	%ebx, %esi
	movl	$31, %ecx
	movl	%ebx, _lastd_s32
	negl	%esi
	cmovs	%ebx, %esi
	bsrl	%esi, %eax
	leal	-1(%esi), %edx
	xorl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, (%esp)
	testl	%esi, %edx
	jne	L1598
	movl	%ebx, %eax
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	sarl	$24, %eax
	andl	$-128, %eax
	orl	%eax, %edx
L1599:
	movl	%ecx, _divtable32
	movb	%dl, _divtable32+4
L1597:
	xorl	%eax, %eax
	cmpl	$16383, %ebx
	cmova	%eax, %ebx
	movzbl	_divtable32+4(%ebx,%ebx,4), %esi
	movl	_divtable32(%ebx,%ebx,4), %edx
	movl	%esi, %ecx
	andl	$31, %ecx
	testl	%edx, %edx
	jne	L1602
	movl	24(%esp), %ebx
	movl	$-1, %eax
	movl	%esi, %edx
	movl	8(%esp), %esi
	sall	%cl, %eax
	sarb	$7, %dl
	sarl	$31, %ebx
	notl	%eax
	movsbl	%dl, %edx
	andl	%ebx, %eax
	addl	24(%esp), %eax
	movl	4(%esp), %ebx
	addl	$20, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	sarl	%cl, %eax
	xorl	%edx, %eax
	subl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1602:
	.cfi_restore_state
	movl	%edx, %eax
	imull	24(%esp)
	movl	%esi, %eax
	movl	24(%esp), %ebx
	sarb	$7, %al
	movsbl	%al, %eax
	xorl	%eax, %ebx
	addl	%edx, %ebx
	subl	%eax, %ebx
	andl	$64, %esi
	movl	8(%esp), %esi
	cmovne	%ebx, %edx
	movl	4(%esp), %ebx
	addl	$20, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	movl	%edx, %eax
	shrl	$31, %edx
	sarl	%cl, %eax
	addl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1598:
	.cfi_restore_state
	movl	$30, %ecx
	movl	$1, %edx
	movl	%edi, 12(%esp)
	.cfi_offset 7, -12
	movl	%esi, %edi
	subl	%eax, %ecx
	movl	%ebp, 16(%esp)
	.cfi_offset 5, -8
	movl	$1, %ebp
	xorl	%eax, %eax
	sall	%cl, %edx
	movzbl	(%esp), %ecx
/APP
 # 477 "source/build/include/libdivide.h" 1
	divl %esi
 # 0 "" 2
/NO_APP
	sall	%cl, %ebp
	subl	%edx, %edi
	cmpl	%ebp, %edi
	jb	L1614
	leal	(%edx,%edx), %ecx
	cmpl	%edx, %ecx
	setb	%dl
	cmpl	%esi, %ecx
	setnb	%cl
	orl	%ecx, %edx
	movzbl	%dl, %edx
	leal	(%edx,%eax,2), %eax
	movzbl	(%esp), %edx
	orl	$64, %edx
L1601:
	movl	%edx, %esi
	leal	1(%eax), %ecx
	notl	%eax
	movl	12(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	orl	$-128, %esi
	testl	%ebx, %ebx
	movl	16(%esp), %ebp
	.cfi_restore 5
	cmovs	%esi, %edx
	cmovs	%eax, %ecx
	jmp	L1599
	.p2align 4,,10
	.p2align 3
L1614:
	.cfi_restore_state
	movzbl	(%esp), %edx
	subl	$1, %edx
	jmp	L1601
	.cfi_endproc
LFE48:
	.globl	_tabledivide32.lto_priv.1
	.def	_tabledivide32.lto_priv.1;	.scl	2;	.type	32;	.endef
	.set	_tabledivide32.lto_priv.1,_tabledivide32.lto_priv.0
	.p2align 4
	.globl	__Z13dxt_handle_ioiPvPc
	.def	__Z13dxt_handle_ioiPvPc;	.scl	2;	.type	32;	.endef
__Z13dxt_handle_ioiPvPc:
LFB49:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	subl	$24, %esp
	.cfi_def_cfa_offset 36
	cmpl	$2, _glusetexcache
	je	L1618
L1616:
	movl	_texcache+28, %eax
	movl	$1, 8(%esp)
	movl	$4, 4(%esp)
	movl	%eax, 12(%esp)
	leal	20(%esp), %eax
	movl	%eax, (%esp)
	movl	%ebx, 20(%esp)
	call	_fwrite
	movl	_texcache+28, %eax
	movl	%esi, (%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	call	_fwrite
	addl	$24, %esp
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
L1618:
	.cfi_restore_state
	movl	%eax, (%esp)
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	%esi, %eax
	movl	%edx, 16(%esp)
	call	_LZ4_compress_fast.constprop.0
	testl	%eax, %eax
	jle	L1616
	cmpl	%eax, %ebx
	setle	%cl
	testb	%cl, %cl
	cmove	16(%esp), %esi
	cmove	%eax, %ebx
	jmp	L1616
	.cfi_endproc
LFE49:
	.p2align 4
	.globl	__Z15dedxt_handle_ioiPviPci
	.def	__Z15dedxt_handle_ioiPviPci;	.scl	2;	.type	32;	.endef
__Z15dedxt_handle_ioiPviPci:
LFB51:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	%esi, 36(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	leal	28(%esp), %eax
	movl	%edi, 40(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	$4, %edx
	movl	%ebx, 32(%esp)
	movl	%ecx, 24(%esp)
	.cfi_offset 3, -20
	call	_texcache_readdata
	testl	%eax, %eax
	jne	L1620
	movl	28(%esp), %ecx
	movl	%eax, %ebx
	movl	%ebp, 44(%esp)
	.cfi_offset 5, -8
	movl	%edi, %ebp
	cmpl	%esi, %ecx
	setl	%al
	andb	56(%esp), %al
	cmovne	52(%esp), %ebp
	movb	%al, 23(%esp)
	movl	_texcache+32836, %eax
	cmpl	$-1, _texcache+16
	je	L1622
	movl	%ecx, 16(%esp)
	leal	(%ecx,%eax), %edx
	cmpl	%edx, _texcache+8
	jb	L1622
	addl	_texcache, %eax
	cmpb	$0, 23(%esp)
	jne	L1636
	movl	16(%esp), %edi
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	%edi, 8(%esp)
	call	_memcpy
L1626:
	movl	16(%esp), %eax
	addl	%eax, _texcache+32836
	movl	44(%esp), %ebp
	.cfi_restore 5
L1619:
	movl	%ebx, %eax
	movl	36(%esp), %esi
	movl	32(%esp), %ebx
	movl	40(%esp), %edi
	addl	$48, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1622:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%eax, 4(%esp)
	movl	_texcache+28, %eax
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	call	_fseek
	movl	28(%esp), %eax
	movl	_texcache+28, %ecx
	movl	$1, 8(%esp)
	movl	%ebp, (%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 4(%esp)
	addl	%eax, _texcache+32836
	call	_fread
	cmpl	$1, %eax
	jne	L1635
	movl	56(%esp), %eax
	testl	%eax, %eax
	je	L1631
	movl	28(%esp), %ecx
	cmpl	%esi, %ecx
	jl	L1637
	movl	44(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1619
	.p2align 4,,10
	.p2align 3
L1631:
	.cfi_restore_state
	movl	44(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	xorl	%ebx, %ebx
	jmp	L1619
	.p2align 4,,10
	.p2align 3
L1637:
	.cfi_restore_state
	movl	24(%esp), %eax
	movl	%edi, %edx
	xorl	%ebx, %ebx
	movl	%eax, (%esp)
	movl	52(%esp), %eax
	call	_LZ4_decompress_safe
	movl	44(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	testl	%eax, %eax
	setle	%bl
	negl	%ebx
	jmp	L1619
	.p2align 4,,10
	.p2align 3
L1636:
	.cfi_restore_state
	movl	24(%esp), %esi
	movl	%edi, %edx
	movl	%esi, (%esp)
	call	_LZ4_decompress_safe
	movl	28(%esp), %esi
	movl	%esi, 16(%esp)
	testl	%eax, %eax
	jg	L1626
	addl	%esi, _texcache+32836
	.p2align 4
	.p2align 3
L1635:
	movl	44(%esp), %ebp
	.cfi_restore 5
L1620:
	movl	$-1, %ebx
	jmp	L1619
	.cfi_endproc
LFE51:
	.section	.text.unlikely,"x"
LCOLDB148:
	.text
LHOTB148:
	.p2align 4
	.globl	_enet_gettime.constprop.0.isra.0
	.def	_enet_gettime.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
_enet_gettime.constprop.0.isra.0:
LFB54:
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
	movl	%eax, %ebx
	subl	$56, %esp
	movl	__ZZ12enet_gettimeE11initialized.lto_priv.0, %eax
	testl	%eax, %eax
	je	L1642
	movl	__imp__QueryPerformanceCounter@4, %edx
	leal	-24(%ebp), %esi
L1639:
	movl	%esi, (%esp)
	call	*%edx
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	subl	$4, %esp
	subl	__ZZ12enet_gettimeE6offset.lto_priv.0, %eax
	sbbl	__ZZ12enet_gettimeE6offset.lto_priv.0+4, %edx
	movl	%eax, -48(%ebp)
	leal	-32(%ebp), %eax
	movl	%edx, -44(%ebp)
	fildq	-48(%ebp)
	fdivl	__ZZ12enet_gettimeE23frequencyToMicroseconds.lto_priv.0
	movl	%eax, 16(%esp)
	movl	$1000000, 8(%esp)
	movl	$0, 12(%esp)
	fnstcw	-34(%ebp)
	movzwl	-34(%ebp), %eax
	orb	$12, %ah
	movw	%ax, -36(%ebp)
	fldcw	-36(%ebp)
	fistpq	(%esp)
	fldcw	-34(%ebp)
	call	___divmoddi4
	movl	%eax, (%ebx)
	imull	$1000, -32(%ebp), %eax
	movl	%eax, 4(%ebx)
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
L1642:
	.cfi_restore_state
	movl	$1, __ZZ12enet_gettimeE11initialized.lto_priv.0
	leal	-24(%ebp), %esi
	movl	%esi, (%esp)
	call	*__imp__QueryPerformanceFrequency@4
	subl	$4, %esp
	testl	%eax, %eax
	je	L1640
	movl	__imp__QueryPerformanceCounter@4, %edx
	movl	$__ZZ12enet_gettimeE6offset.lto_priv.0, (%esp)
	movl	%edx, -48(%ebp)
	call	*%edx
	fildq	-24(%ebp)
	fdivs	LC146
	subl	$4, %esp
	movl	-48(%ebp), %edx
	fstpl	__ZZ12enet_gettimeE23frequencyToMicroseconds.lto_priv.0
	jmp	L1639
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	_enet_gettime.constprop.0.isra.0.cold;	.scl	3;	.type	32;	.endef
_enet_gettime.constprop.0.isra.0.cold:
LFSB54:
L1640:
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	.cfi_escape 0x10,0x5,0x2,0x75,0
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_offset 7, -8
	call	_abort
	.cfi_endproc
LFE54:
	.text
	.section	.text.unlikely,"x"
LCOLDE148:
	.text
LHOTE148:
	.p2align 4
	.globl	__Z12tileLoadHighi
	.def	__Z12tileLoadHighi;	.scl	2;	.type	32;	.endef
__Z12tileLoadHighi:
LFB55:
	.cfi_startproc
	subl	$76, %esp
	.cfi_def_cfa_offset 80
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edi, 68(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	call	_hicfindsubst
	movl	%eax, 16(%esp)
	testl	%eax, %eax
	je	L1665
	cmpb	$0, 33(%eax)
	js	L1665
	leal	(%edi,%edi), %eax
	movl	%ebp, 72(%esp)
	movzbl	_paletteloaded, %ecx
	movl	%eax, 32(%esp)
	addl	%edi, %eax
	sall	$2, %eax
	movl	%ebx, 60(%esp)
	notl	%ecx
	movl	%esi, 64(%esp)
	.cfi_offset 5, -8
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	leal	_classicht(%eax), %ebp
	movzbl	_classicht+8(%eax), %edx
	movl	%eax, 20(%esp)
	movl	_usehightile, %eax
	movzwl	_tilesiz(,%edi,4), %esi
	movzwl	_tilesiz+2(,%edi,4), %ebx
	movl	%ebp, 40(%esp)
	testl	%eax, %eax
	sete	%al
	andl	$1, %ecx
	orl	%ecx, %eax
	testw	%si, %si
	setle	%cl
	orl	%ecx, %eax
	testw	%bx, %bx
	setle	%cl
	orb	%cl, %al
	jne	L1677
	cmpb	$-2, %dl
	je	L1677
	movl	20(%esp), %eax
	movl	%ebp, 12(%esp)
	movl	_classicht(%eax), %ecx
	testl	%ecx, %ecx
	je	L1678
	cmpb	$-58, %dl
	ja	L1676
	movl	12(%esp), %eax
	movb	$-57, 8(%eax)
	movl	12(%esp), %eax
	movl	60(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	64(%esp), %esi
	.cfi_restore 6
	movl	72(%esp), %ebp
	.cfi_restore 5
	movl	68(%esp), %edi
	addl	$76, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1678:
	.cfi_restore_state
	movl	16(%esp), %eax
	movl	$0, 56(%esp)
	movl	$0, 52(%esp)
	movl	4(%eax), %eax
	call	_kpzbufload
	movl	%eax, 28(%esp)
	testl	%eax, %eax
	jle	L1650
	movl	28(%esp), %ebp
	movl	$0, 52(%esp)
	movl	$0, 56(%esp)
	movl	_kpzbuf, %eax
	cmpl	$15, %ebp
	jg	L1679
L1650:
	movl	32(%esp), %eax
	addl	%edi, %eax
	movb	$-2, _classicht+8(,%eax,4)
L1677:
	movl	60(%esp), %ebx
	.cfi_restore 3
	movl	64(%esp), %esi
	.cfi_restore 6
	movl	72(%esp), %ebp
	.cfi_restore 5
L1665:
	movl	$0, 12(%esp)
	movl	68(%esp), %edi
	movl	12(%esp), %eax
	addl	$76, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1676:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	12(%esp), %eax
	movl	60(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	64(%esp), %esi
	.cfi_restore 6
	movl	72(%esp), %ebp
	.cfi_restore 5
	movl	68(%esp), %edi
	addl	$76, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1679:
	.cfi_restore_state
	leal	52(%esp), %edx
	leal	56(%esp), %ecx
	movl	%edx, (%esp)
	movl	%ebp, %edx
	call	_kpgetdim.part.0.constprop.0
	movl	56(%esp), %eax
	movl	52(%esp), %edx
	movl	%eax, 44(%esp)
	movl	%eax, %ebp
	movl	%edx, 24(%esp)
	testl	%eax, %eax
	jle	L1650
	testl	%edx, %edx
	jle	L1650
	movswl	%si, %ecx
	movswl	%bx, %edx
	cmpl	%ecx, %eax
	jle	L1651
	movl	%edx, 36(%esp)
	movl	$1, %eax
	movw	%bx, 50(%esp)
	movl	%ebp, %ebx
	movl	16(%esp), %ebp
	.p2align 4
	.p2align 4
	.p2align 3
L1652:
	addl	%esi, %esi
	movl	%eax, %edx
	addl	$1, %eax
	movswl	%si, %ecx
	cmpl	%ecx, %ebx
	jg	L1652
	movl	%edx, %eax
	movzwl	50(%esp), %ebx
	movl	36(%esp), %edx
	movl	%ebp, 16(%esp)
	movw	%ax, 36(%esp)
	cmpl	%edx, 24(%esp)
	jle	L1666
L1664:
	movl	24(%esp), %eax
	movl	16(%esp), %ebp
	xorl	%esi, %esi
	.p2align 4
	.p2align 4
	.p2align 3
L1654:
	addl	%ebx, %ebx
	addl	$1, %esi
	movswl	%bx, %edx
	cmpl	%edx, %eax
	jg	L1654
	movzwl	36(%esp), %eax
	movl	%ebp, 16(%esp)
	orl	%esi, %eax
L1653:
	movl	44(%esp), %ebx
	movl	24(%esp), %ebp
	cmpl	%ecx, %ebx
	setne	%cl
	cmpl	%ebp, %edx
	setne	%dl
	orb	%cl, %dl
	jne	L1650
	testw	%ax, %ax
	je	L1650
	sall	$2, %ebx
	movl	_g_sm_heap, %ecx
	imull	%ebp, %ebx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	%eax, %ecx
	movl	%eax, 24(%esp)
	testl	%eax, %eax
	je	L1655
	movl	56(%esp), %eax
	movl	52(%esp), %edx
	movl	%eax, 4(%esp)
	sall	$2, %eax
	movl	%edx, 8(%esp)
	movl	28(%esp), %edx
	movl	%eax, (%esp)
	movl	_kpzbuf, %eax
	call	_kprender
	cmpl	$-1, %eax
	je	L1680
	movl	32(%esp), %ebx
	movzwl	36(%esp), %eax
	movl	20(%esp), %ecx
	movl	56(%esp), %edx
	addl	%edi, %ebx
	imull	52(%esp), %edx
	movw	%ax, _classicht+4(,%ebx,4)
	movl	40(%esp), %eax
	addl	$_classicht+8, %ecx
	movw	%si, _classicht+6(,%ebx,4)
	movb	$-57, _classicht+8(,%ebx,4)
	call	__ZN7cache1d13allocateBlockEPiiPc.constprop.0
	movl	56(%esp), %eax
	imull	52(%esp), %eax
	movl	_classicht(,%ebx,4), %edi
	movl	$255, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	movl	%edi, 20(%esp)
	call	_memset
	movl	52(%esp), %edx
	testl	%edx, %edx
	jle	L1658
	movss	LC6, %xmm0
	movl	16(%esp), %eax
	movaps	%xmm0, %xmm1
	mulss	20(%eax), %xmm1
	movl	$255, %eax
	subss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %edi
	cmpl	%eax, %edi
	cmovg	%eax, %edi
	xorl	%eax, %eax
	testl	%edi, %edi
	cmovs	%eax, %edi
	xorl	%ebp, %ebp
	.p2align 4
	.p2align 3
L1662:
	movl	56(%esp), %eax
	testl	%eax, %eax
	jle	L1659
	imull	%ebp, %eax
	movl	24(%esp), %ecx
	movl	%ebp, 16(%esp)
	xorl	%ebx, %ebx
	leal	(%ecx,%eax,4), %esi
	movl	20(%esp), %eax
	addl	%eax, %ebp
	jmp	L1661
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1660:
	addl	$1, %ebx
	cmpl	%ebx, 56(%esp)
	jle	L1681
L1661:
	movzbl	3(%esi,%ebx,4), %eax
	cmpl	%eax, %edi
	jg	L1660
	movzbl	1(%esi,%ebx,4), %edx
	movzbl	(%esi,%ebx,4), %ecx
	movzbl	2(%esi,%ebx,4), %eax
	movl	$0, 4(%esp)
	movl	$254, (%esp)
	call	_paletteGetClosestColorWithBlacklist
	movl	%eax, %edx
	movl	52(%esp), %eax
	imull	%ebx, %eax
	addl	$1, %ebx
	movb	%dl, 0(%ebp,%eax)
	cmpl	%ebx, 56(%esp)
	jg	L1661
L1681:
	movl	16(%esp), %ebp
L1659:
	addl	$1, %ebp
	cmpl	%ebp, 52(%esp)
	jg	L1662
L1658:
	movl	24(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	12(%esp), %eax
	movl	60(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	64(%esp), %esi
	.cfi_restore 6
	movl	72(%esp), %ebp
	.cfi_restore 5
	movl	68(%esp), %edi
	addl	$76, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L1651:
	.cfi_restore_state
	xorl	%eax, %eax
	movw	%ax, 36(%esp)
	cmpl	%edx, 24(%esp)
	jg	L1664
	jmp	L1650
L1666:
	movzwl	36(%esp), %eax
	xorl	%esi, %esi
	jmp	L1653
L1655:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L1680:
	movl	24(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	jmp	L1650
	.cfi_endproc
LFE55:
	.p2align 4
	.globl	_yax_getbunch
	.def	_yax_getbunch;	.scl	2;	.type	32;	.endef
_yax_getbunch:
LFB56:
	.cfi_startproc
	cmpw	$0, _editstatus
	je	L1689
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	cwtl
	movswl	%dx, %ecx
	movl	%esi, 4(%esp)
	.cfi_offset 6, -16
	movl	_sector, %esi
	leal	(%eax,%eax,4), %eax
	movl	%ebx, (%esp)
	.cfi_offset 3, -20
	leal	(%esi,%eax,8), %ebx
	movl	%ebp, 12(%esp)
	.cfi_offset 5, -8
	movl	$-858993459, %ebp
	leal	12(%ebx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	testb	$4, 13(%ebx,%ecx,2)
	je	L1685
	addl	$22, %ebx
	movl	%ebx, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movzbl	(%ebx,%ecx,8), %eax
L1682:
	movl	(%esp), %ebx
	movl	4(%esp), %esi
	movl	12(%esp), %ebp
	addl	$16, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1689:
	movswl	%dx, %ecx
	cwtl
	leal	(%ecx,%eax,2), %eax
	movzwl	_yax_bunchnum(%eax,%eax), %eax
	ret
	.p2align 4,,10
	.p2align 3
L1685:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	$-1, %eax
	jmp	L1682
	.cfi_endproc
LFE56:
	.p2align 4
	.globl	_yax_getbunch.constprop.1
	.def	_yax_getbunch.constprop.1;	.scl	2;	.type	32;	.endef
_yax_getbunch.constprop.1:
LFB58:
	.cfi_startproc
	cmpw	$0, _editstatus
	je	L1697
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	cwtl
	movl	$-858993459, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	_sector, %ebx
	leal	(%eax,%eax,4), %eax
	leal	(%ebx,%eax,8), %ecx
	leal	12(,%eax,8), %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	testb	$4, 13(%ecx)
	je	L1693
	leal	22(%ecx), %edx
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movzbl	22(%ecx), %eax
L1690:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1697:
	cwtl
	movzwl	_yax_bunchnum(,%eax,4), %eax
	ret
	.p2align 4,,10
	.p2align 3
L1693:
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	$-1, %eax
	jmp	L1690
	.cfi_endproc
LFE58:
	.p2align 4
	.globl	_yax_getbunch.constprop.0
	.def	_yax_getbunch.constprop.0;	.scl	2;	.type	32;	.endef
_yax_getbunch.constprop.0:
LFB57:
	.cfi_startproc
	cmpw	$0, _editstatus
	je	L1705
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	cwtl
	movl	$-858993459, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	_sector, %ebx
	leal	(%eax,%eax,4), %eax
	leal	(%ebx,%eax,8), %ecx
	leal	12(,%eax,8), %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	testb	$4, 15(%ecx)
	je	L1701
	leal	22(%ecx), %edx
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movzbl	30(%ecx), %eax
L1698:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1705:
	cwtl
	movzwl	_yax_bunchnum+2(,%eax,4), %eax
	ret
	.p2align 4,,10
	.p2align 3
L1701:
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	$-1, %eax
	jmp	L1698
	.cfi_endproc
LFE57:
	.p2align 4
	.globl	_yax_updategrays
	.def	_yax_updategrays;	.scl	2;	.type	32;	.endef
_yax_updategrays:
LFB60:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_graysectbitmap, (%esp)
	movl	%edi, 32(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	call	_memset
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_graywallbitmap, (%esp)
	call	_memset
	cmpw	$0, _numsectors
	jle	L1707
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	movl	%esi, 28(%esp)
	movl	%ebp, 36(%esp)
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	movl	$2147483647, 20(%esp)
	movl	$-2147483648, 16(%esp)
	jmp	L1724
	.p2align 4,,10
	.p2align 3
L1758:
	movl	_autogray, %esi
	cmpl	%ecx, %edi
	jg	L1709
	testl	%esi, %esi
	je	L1711
	cmpl	%ecx, %edi
	je	L1756
	.p2align 4
	.p2align 3
L1711:
	movl	%ebx, %edx
	movl	%ebx, %ecx
	addl	$1, %ebx
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.7(%ecx), %ecx
	orb	%cl, _graysectbitmap(%edx)
	movswl	_numsectors, %edx
	cmpl	%ebx, %edx
	jle	L1757
L1724:
	movswl	%bx, %ebp
	movl	%ebp, %eax
	call	_yax_getbunch.constprop.1
	movl	%eax, %esi
	movl	%ebp, %eax
	call	_yax_getbunch.constprop.0
	leal	(%ebx,%ebx,4), %edx
	movl	%eax, %ebp
	movl	_sector, %eax
	leal	(%eax,%edx,8), %edx
	movl	4(%edx), %ecx
	testw	%si, %si
	jns	L1758
	movl	_autogray, %esi
	testw	%bp, %bp
	js	L1712
L1713:
	movl	8(%edx), %ebp
	cmpl	%edi, %ebp
	jl	L1711
	testl	%esi, %esi
	je	L1712
	cmpl	%ecx, %edi
	jge	L1737
	.p2align 4
	.p2align 3
L1712:
	movb	$1, 12(%esp)
L1719:
	cmpl	%ecx, _editorzrange
	jg	L1711
	movl	8(%edx), %edx
	cmpl	%edx, _editorzrange+4
	jl	L1711
	cmpb	$0, 12(%esp)
	je	L1711
	movswl	_numsectors, %edx
	addl	$1, %ebx
	cmpl	%ebx, %edx
	jg	L1724
	.p2align 4
	.p2align 3
L1757:
	movl	_autogray, %ecx
	testl	%ecx, %ecx
	je	L1727
	movl	16(%esp), %ebp
	movl	20(%esp), %edi
	cmpl	%edi, %ebp
	jge	L1759
L1727:
	movl	$0, _numgraysects
	testl	%edx, %edx
	jle	L1754
L1731:
	movl	$1, %ecx
	xorl	%esi, %esi
	movl	%edx, %ebp
	jmp	L1734
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1732:
	addl	$1, %esi
	cmpl	%esi, %ebp
	je	L1754
L1760:
	movl	%esi, %ecx
	addl	$40, %eax
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.7(%ecx), %ecx
L1734:
	movl	%esi, %ebx
	sarl	$3, %ebx
	movzbl	_graysectbitmap(%ebx), %edx
	andl	%ecx, %edx
	cmpb	%cl, %dl
	jne	L1732
	addl	$1, _numgraysects
	cmpw	$0, 2(%eax)
	jle	L1732
	movswl	(%eax), %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L1733:
	movl	%ecx, %ebx
	movl	%ecx, %edi
	addl	$1, %ecx
	sarl	$3, %ebx
	andl	$7, %edi
	movzbl	__ZL8pow2char.lto_priv.7(%edi), %edx
	orb	%dl, _graywallbitmap(%ebx)
	movswl	(%eax), %ebx
	movswl	2(%eax), %edi
	addl	%edi, %ebx
	cmpl	%ecx, %ebx
	jg	L1733
	addl	$1, %esi
	cmpl	%esi, %ebp
	jne	L1760
L1754:
	movl	24(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	36(%esp), %ebp
	.cfi_restore 5
	movl	32(%esp), %edi
	addl	$40, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1709:
	.cfi_restore_state
	testw	%bp, %bp
	jns	L1713
	testl	%esi, %esi
	je	L1712
	movb	$1, 12(%esp)
L1718:
	movl	8(%edx), %ebp
	cmpl	%edi, %ebp
	jl	L1719
L1735:
	movl	20(%esp), %esi
	cmpl	%ecx, %esi
	cmovg	%ecx, %esi
	movl	%esi, 20(%esp)
	movl	16(%esp), %esi
	cmpl	%ebp, %esi
	cmovge	%esi, %ebp
	movl	%ebp, 16(%esp)
	jmp	L1719
	.p2align 4,,10
	.p2align 3
L1737:
	movb	$1, 12(%esp)
	jmp	L1735
	.p2align 4,,10
	.p2align 3
L1759:
	testl	%edx, %edx
	jle	L1752
	movl	%eax, 12(%esp)
	leal	4(%eax), %ebx
	xorl	%ecx, %ecx
	.p2align 4
	.p2align 3
L1730:
	cmpl	%edi, (%ebx)
	jl	L1728
	cmpl	%ebp, 4(%ebx)
	jle	L1729
L1728:
	movl	%ecx, %esi
	movl	%ecx, %eax
	sarl	$3, %esi
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %eax
	orb	%al, _graysectbitmap(%esi)
L1729:
	addl	$1, %ecx
	addl	$40, %ebx
	cmpl	%ecx, %edx
	jne	L1730
	movl	$0, _numgraysects
	movl	12(%esp), %eax
	jmp	L1731
	.p2align 4,,10
	.p2align 3
L1756:
	movb	$0, 12(%esp)
	jmp	L1718
L1752:
	movl	24(%esp), %ebx
	.cfi_restore 3
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	36(%esp), %ebp
	.cfi_restore 5
L1707:
	movl	$0, _numgraysects
	movl	32(%esp), %edi
	addl	$40, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE60:
	.p2align 4
	.globl	_yax_setbunch
	.def	_yax_setbunch;	.scl	2;	.type	32;	.endef
_yax_setbunch:
LFB61:
	.cfi_startproc
	cmpw	$0, _editstatus
	je	L1765
	movswl	%cx, %ecx
	movswl	%dx, %edx
	cwtl
	jmp	_yax_setbunch.part.0
	.p2align 4,,10
	.p2align 3
L1765:
	cwtl
	movswl	%dx, %edx
	leal	(%edx,%eax,2), %eax
	movw	%cx, _yax_bunchnum(%eax,%eax)
	ret
	.cfi_endproc
LFE61:
	.p2align 4
	.globl	_yax_getnextwall
	.def	_yax_getnextwall;	.scl	2;	.type	32;	.endef
_yax_getnextwall:
LFB63:
	.cfi_startproc
	movswl	%dx, %edx
	cmpw	$0, _editstatus
	je	L1773
	movl	_wall, %ecx
	cwtl
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	sall	$5, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	leal	10(%edx), %ebx
	addl	%ecx, %eax
	movzwl	14(%eax), %esi
	btl	%ebx, %esi
	jnc	L1769
	addl	$26, %eax
	movl	%eax, %ebx
	subl	%ecx, %ebx
	movl	%ebx, %ecx
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	movzwl	(%eax,%edx,4), %eax
L1766:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1773:
	cwtl
	leal	(%edx,%eax,2), %eax
	movzwl	_yax_nextwall(%eax,%eax), %eax
	ret
	.p2align 4,,10
	.p2align 3
L1769:
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	$-1, %eax
	jmp	L1766
	.cfi_endproc
LFE63:
	.p2align 4
	.globl	_yax_getnextwall.constprop.0
	.def	_yax_getnextwall.constprop.0;	.scl	2;	.type	32;	.endef
_yax_getnextwall.constprop.0:
LFB64:
	.cfi_startproc
	cmpw	$0, _editstatus
	je	L1778
	movl	_wall, %ecx
	cwtl
	sall	$5, %eax
	addl	%ecx, %eax
	testb	$8, 15(%eax)
	je	L1777
	leal	26(%eax), %edx
	subl	%ecx, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movzwl	30(%eax), %eax
	ret
	.p2align 4,,10
	.p2align 3
L1777:
	movl	$-1, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1778:
	cwtl
	movzwl	_yax_nextwall+2(,%eax,4), %eax
	ret
	.cfi_endproc
LFE64:
	.p2align 4
	.globl	_yax_setnextwall
	.def	_yax_setnextwall;	.scl	2;	.type	32;	.endef
_yax_setnextwall:
LFB67:
	.cfi_startproc
	cmpw	$0, _editstatus
	je	L1783
	movswl	%cx, %ecx
	movswl	%dx, %edx
	cwtl
	jmp	_yax_setnextwall.part.0
	.p2align 4,,10
	.p2align 3
L1783:
	cwtl
	movswl	%dx, %edx
	leal	(%edx,%eax,2), %eax
	movw	%cx, _yax_nextwall(%eax,%eax)
	ret
	.cfi_endproc
LFE67:
	.p2align 4
	.globl	_yax_setnextwall.constprop.0
	.def	_yax_setnextwall.constprop.0;	.scl	2;	.type	32;	.endef
_yax_setnextwall.constprop.0:
LFB68:
	.cfi_startproc
	movswl	%dx, %ecx
	cmpw	$0, _editstatus
	je	L1790
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	cwtl
	movl	_wall, %esi
	sall	$5, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	leal	(%esi,%eax), %ebx
	shrl	$5, %eax
	leal	10(%ecx), %esi
	addl	$1, _wallchanged(,%eax,4)
	movzwl	14(%ebx), %eax
	addl	$26, %ebx
	btrl	%esi, %eax
	movw	%ax, -12(%ebx)
	movl	%ebx, %eax
	subl	_wall, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	negw	%dx
	sbbl	%eax, %eax
	movw	%ax, (%ebx,%ecx,4)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1790:
	cwtl
	movl	$-1, %edx
	leal	(%ecx,%eax,2), %eax
	movw	%dx, _yax_nextwall(%eax,%eax)
	ret
	.cfi_endproc
LFE68:
	.p2align 4
	.globl	_yax_vnextsec
	.def	_yax_vnextsec;	.scl	2;	.type	32;	.endef
_yax_vnextsec:
LFB70:
	.cfi_startproc
	cmpw	$0, _editstatus
	je	L1803
	movl	_wall, %ecx
	cwtl
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	sall	$5, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	leal	10(%edx), %ebx
	addl	%ecx, %eax
	movzwl	14(%eax), %esi
	btl	%ebx, %esi
	jnc	L1796
	addl	$26, %eax
	movswl	%dx, %edx
	movl	%eax, %ebx
	subl	%ecx, %ebx
	movl	%ebx, %ecx
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	movswl	(%eax,%edx,4), %eax
	testw	%ax, %ax
	js	L1796
	sall	$5, %eax
	addl	_wall, %eax
	movzwl	12(%eax), %eax
L1791:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1803:
	cwtl
	movswl	%dx, %edx
	leal	(%edx,%eax,2), %eax
	movswl	_yax_nextwall(%eax,%eax), %eax
	testw	%ax, %ax
	js	L1801
	sall	$5, %eax
	addl	_wall, %eax
	movzwl	12(%eax), %eax
	ret
	.p2align 4,,10
	.p2align 3
L1796:
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	$-1, %eax
	jmp	L1791
L1801:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 6
	movl	$-1, %eax
	ret
	.cfi_endproc
LFE70:
	.p2align 4
	.globl	_yax_update
	.def	_yax_update;	.scl	2;	.type	32;	.endef
_yax_update:
LFB71:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$48, %esp
	movups	LC149, %xmm0
	movl	$0, _numyaxbunches
	movl	%esi, -8(%ebp)
	movl	%ebx, -12(%ebp)
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movzwl	_editstatus, %ebx
	movl	%eax, 28(%esp)
	movl	$_yax_bunchnum, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1805:
	movups	%xmm0, (%eax)
	addl	$32, %eax
	movups	%xmm0, -16(%eax)
	cmpl	$_yax_bunchnum+16384, %eax
	jne	L1805
	movl	$16384, 8(%esp)
	movl	$255, 4(%esp)
	movl	$_nextsectbunch, (%esp)
	call	_memset
	movl	$16384, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$__ZL10yax_updown.lto_priv.0, (%esp)
	call	_memset
	movl	$1024, 8(%esp)
	movl	$255, 4(%esp)
	movl	$_headsectbunch, (%esp)
	call	_memset
	movups	LC149, %xmm0
	movl	$_yax_nextwall, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1806:
	movups	%xmm0, (%eax)
	addl	$32, %eax
	movups	%xmm0, -16(%eax)
	cmpl	$_yax_nextwall+65536, %eax
	jne	L1806
	movl	28(%esp), %esi
	cmpl	$1, %esi
	je	L1804
	movl	%edi, -4(%ebp)
	.cfi_offset 7, -12
	movl	$1, %eax
	movzwl	_numsectors, %edi
	movw	%ax, _editstatus
	movl	$0, __ZL7tempbuf.lto_priv.3
	movl	$0, __ZL7tempbuf.lto_priv.3+4
	movl	$0, __ZL7tempbuf.lto_priv.3+8
	movl	$0, __ZL7tempbuf.lto_priv.3+12
	movl	$0, __ZL7tempbuf.lto_priv.3+16
	movl	$0, __ZL7tempbuf.lto_priv.3+20
	movl	$0, __ZL7tempbuf.lto_priv.3+24
	movl	$0, __ZL7tempbuf.lto_priv.3+28
	testw	%di, %di
	jle	L1841
	movw	%bx, 34(%esp)
L1811:
	movswl	%si, %eax
	call	_yax_getbunch.constprop.1
	movl	%eax, %edi
	movswl	%si, %eax
	call	_yax_getbunch.constprop.0
	testw	%di, %di
	js	L1809
	movswl	%di, %edx
	andl	$7, %edi
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.7(%edi), %ecx
	orb	%cl, __ZL7tempbuf.lto_priv.3(%edx)
L1809:
	testw	%ax, %ax
	js	L1810
	movswl	%ax, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %eax
	orb	%al, __ZL7tempbuf.lto_priv.3(%edx)
L1810:
	movswl	_numsectors, %eax
	addl	$1, %esi
	movl	%eax, %edi
	cmpl	%esi, %eax
	jg	L1811
	movzwl	34(%esp), %ebx
	movzbl	__ZL7tempbuf.lto_priv.3, %ecx
L1808:
	movl	28(%esp), %eax
	movw	%bx, 24(%esp)
	movl	$1, %esi
	movl	%ecx, %ebx
	movw	%di, 20(%esp)
	movl	%eax, %edx
	jmp	L1815
	.p2align 4,,10
	.p2align 3
L1869:
	movl	%eax, %ecx
	sarl	$3, %ecx
	movzbl	__ZL7tempbuf.lto_priv.3(%ecx), %ebx
	movl	%eax, %ecx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.7(%ecx), %esi
L1815:
	movl	%eax, %ecx
	andl	%esi, %ebx
	leal	1(%edx), %edi
	subl	%edx, %ecx
	movb	%cl, 34(%esp)
	movl	%esi, %ecx
	cmpb	%cl, %bl
	movl	$-1, %ebx
	cmovne	%edi, %edx
	movzbl	34(%esp), %edi
	cmove	%edi, %ebx
	addl	$1, %eax
	movb	%bl, __ZL7tempbuf.lto_priv.3+31(%eax)
	cmpl	$256, %eax
	jne	L1869
	movzwl	24(%esp), %ebx
	cmpw	$0, 20(%esp)
	jle	L1816
	movl	28(%esp), %ebx
	jmp	L1822
	.p2align 4,,10
	.p2align 3
L1817:
	movswl	34(%esp), %eax
	testw	%ax, %ax
	jns	L1870
L1820:
	movswl	_numsectors, %eax
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jle	L1871
L1822:
	movswl	%bx, %eax
	movw	%bx, 28(%esp)
	call	_yax_getbunch.constprop.1
	movswl	%ax, %edi
	movswl	%bx, %eax
	call	_yax_getbunch.constprop.0
	movw	%ax, 34(%esp)
	testw	%di, %di
	js	L1817
	movzbl	__ZL7tempbuf.lto_priv.3+32(%edi), %eax
	cmpw	$0, _editstatus
	je	L1872
	movswl	%ax, %ecx
	xorl	%edx, %edx
	movswl	%bx, %eax
	call	_yax_setbunch.part.0
	movswl	34(%esp), %eax
	testw	%ax, %ax
	js	L1820
L1870:
	movzbl	__ZL7tempbuf.lto_priv.3+32(%eax), %eax
	cmpw	$0, _editstatus
	je	L1840
	movswl	%ax, %ecx
	movswl	28(%esp), %eax
	movl	$1, %edx
	addl	$1, %ebx
	call	_yax_setbunch.part.0
	movswl	_numsectors, %eax
	cmpl	%ebx, %eax
	jg	L1822
L1871:
	movl	%eax, %edi
	movzwl	24(%esp), %ebx
	subl	$1, %edi
	js	L1816
	movswl	%bx, %eax
	movw	%bx, 32(%esp)
	movl	%edi, %ebx
	movl	%eax, 20(%esp)
	leal	(%edi,%edi,4), %eax
	sall	$3, %eax
	movl	%eax, 28(%esp)
	.p2align 4
	.p2align 3
L1839:
	movswl	%bx, %eax
	movw	%bx, 34(%esp)
	call	_yax_getbunch.constprop.1
	movswl	%ax, %edi
	movswl	%bx, %eax
	call	_yax_getbunch.constprop.0
	movw	%di, _yax_bunchnum(,%ebx,4)
	movswl	%ax, %esi
	movw	%si, _yax_bunchnum+2(,%ebx,4)
	testw	%di, %di
	js	L1823
	movl	28(%esp), %eax
	addl	_sector, %eax
	cmpw	$0, 2(%eax)
	jle	L1824
	movl	%eax, 24(%esp)
	movswl	(%eax), %eax
	movl	_wall, %ecx
	movl	%eax, %edx
	sall	$5, %edx
	cmpl	$0, 20(%esp)
	je	L1825
	movl	%ebx, 16(%esp)
	movl	24(%esp), %ebx
	leal	14(%ecx,%edx), %ecx
	movw	%di, 24(%esp)
	.p2align 6
	.p2align 4
	.p2align 3
L1827:
	testb	$4, 1(%ecx)
	je	L1826
	movl	%eax, %edx
	andl	$134217727, %edx
	addl	$1, _wallchanged(,%edx,4)
	movzwl	12(%ecx), %edx
	movw	%dx, _yax_nextwall(,%eax,4)
L1826:
	movswl	2(%ebx), %edx
	movswl	(%ebx), %edi
	addl	$1, %eax
	addl	$32, %ecx
	addl	%edi, %edx
	cmpl	%eax, %edx
	jg	L1827
	movl	16(%esp), %ebx
	movswl	24(%esp), %edi
L1824:
	movzwl	_headsectbunch(%edi,%edi), %eax
	cmpw	$-1, %ax
	je	L1873
	movzwl	34(%esp), %edx
	movw	%ax, _nextsectbunch(%ebx,%ebx)
	movw	%dx, _headsectbunch(%edi,%edi)
L1823:
	testw	%si, %si
	js	L1831
	movl	28(%esp), %edi
	addl	_sector, %edi
	cmpw	$0, 2(%edi)
	jle	L1832
	movswl	(%edi), %eax
	movl	_wall, %edx
	movl	%eax, %ecx
	sall	$5, %ecx
	cmpl	$0, 20(%esp)
	je	L1833
	movl	%ebx, 24(%esp)
	leal	14(%edx,%ecx), %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L1835:
	testb	$8, 1(%ecx)
	je	L1834
	movl	%eax, %edx
	andl	$134217727, %edx
	addl	$1, _wallchanged(,%edx,4)
	movzwl	16(%ecx), %edx
	movw	%dx, _yax_nextwall+2(,%eax,4)
L1834:
	movswl	2(%edi), %edx
	movswl	(%edi), %ebx
	addl	$1, %eax
	addl	$32, %ecx
	addl	%ebx, %edx
	cmpl	%eax, %edx
	jg	L1835
	movl	24(%esp), %ebx
L1832:
	addl	$256, %esi
	movzwl	_headsectbunch(%esi,%esi), %eax
	cmpw	$-1, %ax
	je	L1874
	movzwl	34(%esp), %edi
	movw	%ax, _nextsectbunch+8192(%ebx,%ebx)
	movw	%di, _headsectbunch(%esi,%esi)
L1831:
	subl	$1, %ebx
	subl	$40, 28(%esp)
	cmpl	$-1, %ebx
	jne	L1839
	movzwl	32(%esp), %ebx
L1816:
	movw	%bx, _editstatus
	movl	-4(%ebp), %edi
	.cfi_restore 7
L1804:
	movl	-12(%ebp), %ebx
	movl	-8(%ebp), %esi
	leave
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1874:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movzwl	34(%esp), %eax
	movw	%ax, _headsectbunch(%esi,%esi)
	jmp	L1831
	.p2align 4,,10
	.p2align 3
L1873:
	movzwl	34(%esp), %eax
	addl	$1, _numyaxbunches
	movw	%ax, _headsectbunch(%edi,%edi)
	jmp	L1823
L1833:
	movl	%ebx, 24(%esp)
	leal	30(%edx,%ecx), %edx
	movw	%si, 16(%esp)
	.p2align 4
	.p2align 3
L1837:
	testb	$8, -15(%edx)
	je	L1836
	movl	%eax, %ebx
	andl	$134217727, %ebx
	movl	_wallchanged(,%ebx,4), %ecx
	leal	1(%ecx), %esi
	addl	$2, %ecx
	movl	%esi, _wallchanged(,%ebx,4)
	movzwl	(%edx), %esi
	movl	%ecx, _wallchanged(,%ebx,4)
	movl	$-1, %ecx
	movw	%si, _yax_nextwall+2(,%eax,4)
	movw	%cx, (%edx)
L1836:
	movswl	(%edi), %ecx
	movswl	2(%edi), %ebx
	addl	$1, %eax
	addl	$32, %edx
	addl	%ebx, %ecx
	cmpl	%ecx, %eax
	jl	L1837
	movl	24(%esp), %ebx
	movswl	16(%esp), %esi
	jmp	L1832
L1825:
	movl	%ebx, 16(%esp)
	movl	24(%esp), %ebx
	leal	26(%ecx,%edx), %edx
	movw	%di, 24(%esp)
	movw	%si, 14(%esp)
	.p2align 4
	.p2align 3
L1829:
	testb	$4, -11(%edx)
	je	L1828
	movl	%eax, %esi
	andl	$134217727, %esi
	movl	_wallchanged(,%esi,4), %ecx
	leal	1(%ecx), %edi
	addl	$2, %ecx
	movl	%edi, _wallchanged(,%esi,4)
	movzwl	(%edx), %edi
	movl	%ecx, _wallchanged(,%esi,4)
	xorl	%ecx, %ecx
	movw	%di, _yax_nextwall(,%eax,4)
	movw	%cx, (%edx)
L1828:
	movswl	(%ebx), %ecx
	movswl	2(%ebx), %esi
	addl	$1, %eax
	addl	$32, %edx
	addl	%esi, %ecx
	cmpl	%eax, %ecx
	jg	L1829
	movl	16(%esp), %ebx
	movswl	24(%esp), %edi
	movswl	14(%esp), %esi
	jmp	L1824
L1872:
	movw	%ax, _yax_bunchnum(,%ebx,4)
	cmpw	$0, 34(%esp)
	js	L1820
	movswl	34(%esp), %eax
	movzbl	__ZL7tempbuf.lto_priv.3+32(%eax), %eax
L1840:
	movw	%ax, _yax_bunchnum+2(,%ebx,4)
	jmp	L1820
L1841:
	xorl	%ecx, %ecx
	jmp	L1808
	.cfi_endproc
LFE71:
	.globl	__ZL7tempbuf.lto_priv.3
	.bss
	.align 32
__ZL7tempbuf.lto_priv.3:
	.space 16384
	.globl	__ZL10yax_updown.lto_priv.0
	.align 32
__ZL10yax_updown.lto_priv.0:
	.space 16384
	.globl	__ZZ12enet_gettimeE23frequencyToMicroseconds.lto_priv.0
	.align 8
__ZZ12enet_gettimeE23frequencyToMicroseconds.lto_priv.0:
	.space 8
	.globl	__ZZ12enet_gettimeE6offset.lto_priv.0
	.align 8
__ZZ12enet_gettimeE6offset.lto_priv.0:
	.space 8
	.globl	__ZZ12enet_gettimeE11initialized.lto_priv.0
	.align 4
__ZZ12enet_gettimeE11initialized.lto_priv.0:
	.space 4
	.globl	_texcache
	.align 32
_texcache:
	.space 32840
	.globl	_divtable32
	.align 32
_divtable32:
	.space 81920
	.globl	_lastd_s32
	.align 4
_lastd_s32:
	.space 4
	.globl	_prhighpalookups
	.align 32
_prhighpalookups:
	.space 1024
	.globl	_tile2model
	.align 32
_tile2model:
	.space 650240
	.globl	_hictinting
	.align 32
_hictinting:
	.space 2048
	.section .rdata,"dr"
LC150:
	.ascii "character\0"
LC151:
	.ascii "char\0"
LC152:
	.ascii "chr\0"
	.align 4
__ZZL10defsparserP10scriptfileE9subtokens_4:
	.long	LC150
	.long	160
	.long	LC151
	.long	160
	.long	LC152
	.long	160
LC153:
	.ascii "string\0"
LC154:
	.ascii "str\0"
LC155:
	.ascii "text\0"
	.align 4
__ZZL10defsparserP10scriptfileE9subtokens_3:
	.long	LC153
	.long	158
	.long	LC154
	.long	158
	.long	LC155
	.long	158
LC156:
	.ascii "ZERO\0"
LC157:
	.ascii "ONE\0"
LC158:
	.ascii "SRC_COLOR\0"
LC159:
	.ascii "ONE_MINUS_SRC_COLOR\0"
LC160:
	.ascii "SRC_ALPHA\0"
LC161:
	.ascii "ONE_MINUS_SRC_ALPHA\0"
LC162:
	.ascii "DST_ALPHA\0"
LC163:
	.ascii "ONE_MINUS_DST_ALPHA\0"
LC164:
	.ascii "DST_COLOR\0"
LC165:
	.ascii "ONE_MINUS_DST_COLOR\0"
	.align 32
__ZZL10defsparserP10scriptfileE17glBlendFuncTokens:
	.long	LC156
	.long	139
	.long	LC157
	.long	140
	.long	LC158
	.long	141
	.long	LC159
	.long	142
	.long	LC160
	.long	143
	.long	LC161
	.long	144
	.long	LC162
	.long	145
	.long	LC163
	.long	146
	.long	LC164
	.long	147
	.long	LC165
	.long	148
LC166:
	.ascii "src\0"
LC167:
	.ascii "sfactor\0"
LC168:
	.ascii "top\0"
LC169:
	.ascii "dst\0"
LC170:
	.ascii "dfactor\0"
LC171:
	.ascii "bottom\0"
LC172:
	.ascii "alpha\0"
	.align 32
__ZZL10defsparserP10scriptfileE16glblenddeftokens:
	.long	LC166
	.long	136
	.long	LC167
	.long	136
	.long	LC168
	.long	136
	.long	LC169
	.long	137
	.long	LC170
	.long	137
	.long	LC171
	.long	137
	.long	LC172
	.long	138
LC173:
	.ascii "forward\0"
LC174:
	.ascii "reverse\0"
LC175:
	.ascii "both\0"
	.align 4
__ZZL10defsparserP10scriptfileE13glblendtokens:
	.long	LC173
	.long	133
	.long	LC174
	.long	134
	.long	LC175
	.long	135
	.align 4
_nullglblend:
	.long	1065353216
	.byte	1
	.byte	0
	.byte	0
	.space 1
	.long	1065353216
	.byte	1
	.byte	0
	.byte	0
	.space 1
	.align 4
_defaultglblend:
	.long	1059760811
	.byte	4
	.byte	5
	.byte	0
	.space 1
	.long	1051372203
	.byte	4
	.byte	5
	.byte	0
	.space 1
LC176:
	.ascii "raw\0"
LC177:
	.ascii "glblend\0"
LC178:
	.ascii "copy\0"
LC179:
	.ascii "undef\0"
	.align 32
__ZZL10defsparserP10scriptfileE9subtokens_2:
	.long	LC176
	.long	122
	.long	LC177
	.long	132
	.long	LC178
	.long	126
	.long	LC179
	.long	128
LC180:
	.ascii "red\0"
LC181:
	.ascii "r\0"
LC182:
	.ascii "green\0"
LC183:
	.ascii "g\0"
LC184:
	.ascii "blue\0"
LC185:
	.ascii "b\0"
LC186:
	.ascii "remappal\0"
LC187:
	.ascii "remapself\0"
	.align 32
__ZZL10defsparserP10scriptfileE18makepalookuptokens:
	.long	LC180
	.long	60
	.long	LC181
	.long	60
	.long	LC182
	.long	61
	.long	LC183
	.long	61
	.long	LC184
	.long	62
	.long	LC185
	.long	62
	.long	LC186
	.long	56
	.long	LC187
	.long	57
	.align 32
__ZZL10defsparserP10scriptfileE12fogpaltokens:
	.long	LC180
	.long	60
	.long	LC181
	.long	60
	.long	LC182
	.long	61
	.long	LC183
	.long	61
	.long	LC184
	.long	62
	.long	LC185
	.long	62
LC188:
	.ascii "noshades\0"
	.align 4
__ZZL10defsparserP10scriptfileE12rawsubtokens_0:
	.long	LC9
	.long	13
	.long	LC120
	.long	123
	.long	LC188
	.long	125
LC189:
	.ascii "fogpal\0"
LC190:
	.ascii "makepalookup\0"
LC191:
	.ascii "floorpal\0"
LC192:
	.ascii "nofloorpal\0"
	.align 32
__ZZL10defsparserP10scriptfileE9subtokens_1:
	.long	LC176
	.long	122
	.long	LC178
	.long	126
	.long	LC179
	.long	128
	.long	LC189
	.long	86
	.long	LC190
	.long	55
	.long	LC191
	.long	59
	.long	LC192
	.long	58
	.globl	_basepaltable
	.data
	.align 32
_basepaltable:
	.long	_palette
	.space 1020
	.section .rdata,"dr"
LC193:
	.ascii "shiftleft\0"
	.align 4
__ZZL10defsparserP10scriptfileE12rawsubtokens:
	.long	LC9
	.long	13
	.long	LC120
	.long	123
	.long	LC193
	.long	124
	.align 4
__ZZL10defsparserP10scriptfileE9subtokens_0:
	.long	LC176
	.long	122
	.long	LC178
	.long	126
	.long	LC179
	.long	128
LC194:
	.ascii "horizfrac\0"
LC195:
	.ascii "yoffset\0"
LC196:
	.ascii "lognumtiles\0"
LC197:
	.ascii "panel\0"
LC198:
	.ascii "yscale\0"
	.align 32
__ZZL10defsparserP10scriptfileE9subtokens:
	.long	LC194
	.long	117
	.long	LC195
	.long	99
	.long	LC196
	.long	118
	.long	LC8
	.long	21
	.long	LC197
	.long	21
	.long	LC198
	.long	66
	.globl	_globalflags
	.bss
	.align 4
_globalflags:
	.space 4
	.section .rdata,"dr"
LC199:
	.ascii "mapfile\0"
LC200:
	.ascii "maptitle\0"
LC201:
	.ascii "mapmd4\0"
LC202:
	.ascii "mhkfile\0"
LC203:
	.ascii "mapart\0"
	.align 32
__ZZL10defsparserP10scriptfileE13mapinfotokens:
	.long	LC199
	.long	108
	.long	LC200
	.long	109
	.long	LC201
	.long	110
	.long	LC202
	.long	111
	.long	LC203
	.long	112
LC204:
	.ascii "name\0"
LC205:
	.ascii "alphacut\0"
LC206:
	.ascii "detailscale\0"
LC207:
	.ascii "scale\0"
LC208:
	.ascii "xscale\0"
LC209:
	.ascii "intensity\0"
LC210:
	.ascii "specpower\0"
LC211:
	.ascii "specularpower\0"
LC212:
	.ascii "parallaxscale\0"
LC213:
	.ascii "specfactor\0"
LC214:
	.ascii "specularfactor\0"
LC215:
	.ascii "parallaxbias\0"
LC216:
	.ascii "nocompress\0"
LC217:
	.ascii "nodownsize\0"
LC218:
	.ascii "forcefilter\0"
LC219:
	.ascii "artquality\0"
	.align 32
__ZZL10defsparserP10scriptfileE17texturetokens_pal_0:
	.long	LC9
	.long	13
	.long	LC204
	.long	13
	.long	LC205
	.long	64
	.long	LC206
	.long	65
	.long	LC207
	.long	65
	.long	LC208
	.long	65
	.long	LC209
	.long	65
	.long	LC198
	.long	66
	.long	LC210
	.long	67
	.long	LC211
	.long	67
	.long	LC212
	.long	67
	.long	LC213
	.long	68
	.long	LC214
	.long	68
	.long	LC215
	.long	68
	.long	LC216
	.long	69
	.long	LC217
	.long	70
	.long	LC218
	.long	71
	.long	LC219
	.long	72
LC220:
	.ascii "indexed\0"
LC221:
	.ascii "orig_sizex\0"
LC222:
	.ascii "orig_sizey\0"
	.align 32
__ZZL10defsparserP10scriptfileE17texturetokens_pal:
	.long	LC9
	.long	13
	.long	LC204
	.long	13
	.long	LC205
	.long	64
	.long	LC206
	.long	65
	.long	LC207
	.long	65
	.long	LC208
	.long	65
	.long	LC209
	.long	65
	.long	LC198
	.long	66
	.long	LC210
	.long	67
	.long	LC211
	.long	67
	.long	LC212
	.long	67
	.long	LC213
	.long	68
	.long	LC214
	.long	68
	.long	LC215
	.long	68
	.long	LC216
	.long	69
	.long	LC217
	.long	70
	.long	LC218
	.long	71
	.long	LC219
	.long	72
	.long	LC220
	.long	73
	.long	LC221
	.long	74
	.long	LC222
	.long	75
LC223:
	.ascii "pal\0"
LC224:
	.ascii "detail\0"
LC225:
	.ascii "glow\0"
LC226:
	.ascii "specular\0"
LC227:
	.ascii "normal\0"
	.align 32
__ZZL10defsparserP10scriptfileE13texturetokens:
	.long	LC223
	.long	28
	.long	LC224
	.long	30
	.long	LC225
	.long	31
	.long	LC226
	.long	32
	.long	LC227
	.long	33
	.align 32
__ZZL10defsparserP10scriptfileE14palookuptokens:
	.long	LC223
	.long	28
	.long	LC180
	.long	60
	.long	LC181
	.long	60
	.long	LC182
	.long	61
	.long	LC183
	.long	61
	.long	LC184
	.long	62
	.long	LC185
	.long	62
	.long	LC186
	.long	56
	.long	LC187
	.long	57
	.long	LC192
	.long	58
LC228:
	.ascii "shadered\0"
LC229:
	.ascii "sr\0"
LC230:
	.ascii "shadegreen\0"
LC231:
	.ascii "sg\0"
LC232:
	.ascii "shadeblue\0"
LC233:
	.ascii "sb\0"
LC234:
	.ascii "flags\0"
	.align 32
__ZZL10defsparserP10scriptfileE10tinttokens:
	.long	LC223
	.long	28
	.long	LC180
	.long	60
	.long	LC181
	.long	60
	.long	LC182
	.long	61
	.long	LC183
	.long	61
	.long	LC184
	.long	62
	.long	LC185
	.long	62
	.long	LC228
	.long	149
	.long	LC229
	.long	149
	.long	LC230
	.long	150
	.long	LC231
	.long	150
	.long	LC232
	.long	151
	.long	LC233
	.long	151
	.long	LC234
	.long	27
LC235:
	.ascii "basepal\0"
	.align 4
__ZZL10defsparserP10scriptfileE13highpaltokens:
	.long	LC235
	.long	29
	.long	LC223
	.long	28
	.long	LC9
	.long	13
LC236:
	.ascii "front face\0"
LC237:
	.ascii "right face\0"
LC238:
	.ascii "back face\0"
LC239:
	.ascii "left face\0"
LC240:
	.ascii "top face\0"
LC241:
	.ascii "bottom face\0"
	.align 4
__ZL8skyfaces:
	.long	LC236
	.long	LC237
	.long	LC238
	.long	LC239
	.long	LC240
	.long	LC241
LC242:
	.ascii "ft\0"
LC243:
	.ascii "front\0"
LC244:
	.ascii "rt\0"
LC245:
	.ascii "right\0"
LC246:
	.ascii "bk\0"
LC247:
	.ascii "back\0"
LC248:
	.ascii "lf\0"
LC249:
	.ascii "left\0"
LC250:
	.ascii "lt\0"
LC251:
	.ascii "up\0"
LC252:
	.ascii "ceiling\0"
LC253:
	.ascii "ceil\0"
LC254:
	.ascii "dn\0"
LC255:
	.ascii "floor\0"
LC256:
	.ascii "down\0"
	.align 32
__ZZL10defsparserP10scriptfileE12skyboxtokens:
	.long	LC8
	.long	21
	.long	LC223
	.long	28
	.long	LC242
	.long	47
	.long	LC243
	.long	47
	.long	LC173
	.long	47
	.long	LC244
	.long	48
	.long	LC245
	.long	48
	.long	LC246
	.long	49
	.long	LC247
	.long	49
	.long	LC248
	.long	50
	.long	LC249
	.long	50
	.long	LC250
	.long	50
	.long	LC251
	.long	51
	.long	LC168
	.long	51
	.long	LC252
	.long	51
	.long	LC253
	.long	51
	.long	LC254
	.long	52
	.long	LC171
	.long	52
	.long	LC255
	.long	52
	.long	LC256
	.long	52
	.long	LC216
	.long	69
	.long	LC217
	.long	70
	.long	LC218
	.long	71
	.long	LC219
	.long	72
	.long	LC220
	.long	73
	.globl	_voxmodels
	.bss
	.align 32
_voxmodels:
	.space 8192
	.section .rdata,"dr"
LC257:
	.ascii "ifmatch\0"
LC258:
	.ascii "tile0\0"
LC259:
	.ascii "tile1\0"
LC260:
	.ascii "notrans\0"
	.align 32
__ZZL10defsparserP10scriptfileE11voxeltokens:
	.long	LC257
	.long	154
	.long	LC8
	.long	21
	.long	LC258
	.long	22
	.long	LC259
	.long	23
	.long	LC207
	.long	14
	.long	LC260
	.long	162
LC261:
	.ascii "xadd\0"
LC262:
	.ascii "yadd\0"
LC263:
	.ascii "zadd\0"
LC264:
	.ascii "angadd\0"
LC265:
	.ascii "fov\0"
LC266:
	.ascii "hide\0"
LC267:
	.ascii "nobob\0"
LC268:
	.ascii "flipped\0"
LC269:
	.ascii "nodepth\0"
	.align 32
__ZZL10defsparserP10scriptfileE14modelhudtokens:
	.long	LC8
	.long	21
	.long	LC258
	.long	22
	.long	LC259
	.long	23
	.long	LC261
	.long	36
	.long	LC262
	.long	37
	.long	LC263
	.long	38
	.long	LC264
	.long	39
	.long	LC265
	.long	40
	.long	LC266
	.long	42
	.long	LC267
	.long	43
	.long	LC268
	.long	41
	.long	LC269
	.long	44
LC270:
	.ascii "surf\0"
LC271:
	.ascii "surface\0"
	.align 32
__ZZL10defsparserP10scriptfileE15modelskintokens:
	.long	LC223
	.long	28
	.long	LC9
	.long	13
	.long	LC270
	.long	20
	.long	LC271
	.long	20
	.long	LC209
	.long	34
	.long	LC207
	.long	34
	.long	LC206
	.long	34
	.long	LC210
	.long	67
	.long	LC211
	.long	67
	.long	LC212
	.long	67
	.long	LC213
	.long	68
	.long	LC214
	.long	68
	.long	LC215
	.long	68
	.long	LC216
	.long	69
	.long	LC217
	.long	70
	.long	LC218
	.long	71
	.long	LC219
	.long	72
LC272:
	.ascii "frame0\0"
LC273:
	.ascii "frame1\0"
LC274:
	.ascii "fps\0"
	.align 32
__ZZL10defsparserP10scriptfileE15modelanimtokens:
	.long	LC272
	.long	24
	.long	LC273
	.long	25
	.long	LC274
	.long	26
	.long	LC234
	.long	27
LC275:
	.ascii "frame\0"
LC276:
	.ascii "smoothduration\0"
	.align 32
__ZZL10defsparserP10scriptfileE16modelframetokens:
	.long	LC223
	.long	28
	.long	LC275
	.long	16
	.long	LC204
	.long	16
	.long	LC8
	.long	21
	.long	LC258
	.long	22
	.long	LC259
	.long	23
	.long	LC276
	.long	17
LC277:
	.ascii "shade\0"
LC278:
	.ascii "anim\0"
LC279:
	.ascii "skin\0"
	.align 32
__ZZL10defsparserP10scriptfileE11modeltokens:
	.long	LC207
	.long	14
	.long	LC277
	.long	15
	.long	LC263
	.long	38
	.long	LC195
	.long	99
	.long	LC275
	.long	16
	.long	LC278
	.long	18
	.long	LC279
	.long	19
	.long	LC224
	.long	30
	.long	LC225
	.long	31
	.long	LC226
	.long	32
	.long	LC227
	.long	33
	.long	LC65
	.long	35
	.long	LC234
	.long	27
	.data
	.align 4
__ZL9lastvoxid:
	.long	-1
.lcomm __ZL9seenframe,4,4
	.align 4
__ZL9modelskin:
	.long	-1
	.align 4
__ZL13lastmodelskin:
	.long	-1
	.align 4
__ZL11lastmodelid:
	.long	-1
	.section .rdata,"dr"
LC280:
	.ascii "xoffset\0"
LC281:
	.ascii "xoff\0"
LC282:
	.ascii "yoff\0"
LC283:
	.ascii "texhitscan\0"
LC284:
	.ascii "nofullbright\0"
	.align 32
__ZZL10defsparserP10scriptfileE14copytiletokens:
	.long	LC8
	.long	21
	.long	LC223
	.long	28
	.long	LC280
	.long	98
	.long	LC281
	.long	98
	.long	LC195
	.long	99
	.long	LC282
	.long	99
	.long	LC283
	.long	100
	.long	LC284
	.long	101
LC285:
	.ascii "texture\0"
LC286:
	.ascii "ifcrc\0"
LC287:
	.ascii "truenpot\0"
	.align 32
__ZZL10defsparserP10scriptfileE21tilefromtexturetokens:
	.long	LC9
	.long	13
	.long	LC204
	.long	13
	.long	LC205
	.long	64
	.long	LC280
	.long	98
	.long	LC281
	.long	98
	.long	LC195
	.long	99
	.long	LC282
	.long	99
	.long	LC283
	.long	100
	.long	LC284
	.long	101
	.long	LC285
	.long	63
	.long	LC286
	.long	153
	.long	LC257
	.long	154
	.long	LC287
	.long	161
	.globl	_h_yoffs
	.bss
	.align 32
_h_yoffs:
	.space 30720
	.globl	_h_xoffs
	.align 32
_h_xoffs:
	.space 30720
	.globl	_h_ysize
	.align 32
_h_ysize:
	.space 61440
	.globl	_h_xsize
	.align 32
_h_xsize:
	.space 61440
	.globl	_g_noFloorPal
	.align 32
_g_noFloorPal:
	.space 256
	.globl	_alphahackarray
	.align 32
_alphahackarray:
	.space 30720
	.section .rdata,"dr"
LC288:
	.ascii "include\0"
LC289:
	.ascii "#include\0"
LC290:
	.ascii "includedefault\0"
LC291:
	.ascii "#includedefault\0"
LC292:
	.ascii "define\0"
LC293:
	.ascii "#define\0"
LC294:
	.ascii "definetexture\0"
LC295:
	.ascii "defineskybox\0"
LC296:
	.ascii "definetint\0"
LC297:
	.ascii "definemodel\0"
LC298:
	.ascii "definemodelanim\0"
LC299:
	.ascii "definemodelskin\0"
LC300:
	.ascii "selectmodelskin\0"
LC301:
	.ascii "definevoxel\0"
LC302:
	.ascii "model\0"
LC303:
	.ascii "skybox\0"
LC304:
	.ascii "highpalookup\0"
LC305:
	.ascii "tint\0"
LC306:
	.ascii "nofloorpalrange\0"
LC307:
	.ascii "texhitscanrange\0"
LC308:
	.ascii "nofullbrightrange\0"
LC309:
	.ascii "alphahack\0"
LC310:
	.ascii "spritecol\0"
LC311:
	.ascii "2dcol\0"
LC312:
	.ascii "2dcolidxrange\0"
LC313:
	.ascii "loadgrp\0"
LC314:
	.ascii "cachesize\0"
LC315:
	.ascii "dummytilefrompic\0"
LC316:
	.ascii "tilefromtexture\0"
LC317:
	.ascii "mapinfo\0"
LC318:
	.ascii "echo\0"
LC319:
	.ascii "globalflags\0"
LC320:
	.ascii "multipsky\0"
LC321:
	.ascii "basepalette\0"
LC322:
	.ascii "palookup\0"
LC323:
	.ascii "blendtable\0"
LC324:
	.ascii "numalphatables\0"
LC325:
	.ascii "undefbasepaletterange\0"
LC326:
	.ascii "undefpalookuprange\0"
LC327:
	.ascii "undefblendtablerange\0"
LC328:
	.ascii "shadefactor\0"
LC329:
	.ascii "localization\0"
LC330:
	.ascii "tilefont\0"
LC331:
	.ascii "globalgameflags\0"
LC332:
	.ascii "delplayercolor\0"
LC333:
	.ascii "addplayercolor\0"
LC334:
	.ascii "music\0"
LC335:
	.ascii "sound\0"
LC336:
	.ascii "newgamechoices\0"
LC337:
	.ascii "animsounds\0"
LC338:
	.ascii "cutscene\0"
LC339:
	.ascii "keyconfig\0"
	.align 32
__ZZL10defsparserP10scriptfileE10basetokens:
	.long	LC288
	.long	0
	.long	LC289
	.long	0
	.long	LC290
	.long	103
	.long	LC291
	.long	103
	.long	LC292
	.long	1
	.long	LC293
	.long	1
	.long	LC294
	.long	2
	.long	LC295
	.long	3
	.long	LC296
	.long	4
	.long	LC297
	.long	5
	.long	LC37
	.long	6
	.long	LC298
	.long	7
	.long	LC299
	.long	8
	.long	LC300
	.long	9
	.long	LC301
	.long	10
	.long	LC50
	.long	11
	.long	LC302
	.long	12
	.long	LC71
	.long	45
	.long	LC303
	.long	46
	.long	LC304
	.long	53
	.long	LC305
	.long	54
	.long	LC190
	.long	55
	.long	LC285
	.long	63
	.long	LC8
	.long	63
	.long	LC306
	.long	104
	.long	LC307
	.long	105
	.long	LC308
	.long	106
	.long	LC91
	.long	76
	.long	LC90
	.long	77
	.long	LC92
	.long	78
	.long	LC95
	.long	79
	.long	LC94
	.long	80
	.long	LC309
	.long	81
	.long	LC7
	.long	82
	.long	LC310
	.long	83
	.long	LC311
	.long	84
	.long	LC312
	.long	85
	.long	LC189
	.long	86
	.long	LC313
	.long	87
	.long	LC31
	.long	88
	.long	LC32
	.long	89
	.long	LC15
	.long	90
	.long	LC16
	.long	91
	.long	LC33
	.long	92
	.long	LC34
	.long	93
	.long	LC17
	.long	94
	.long	LC314
	.long	95
	.long	LC315
	.long	96
	.long	LC316
	.long	97
	.long	LC13
	.long	102
	.long	LC317
	.long	107
	.long	LC318
	.long	113
	.long	LC319
	.long	114
	.long	LC26
	.long	115
	.long	LC320
	.long	116
	.long	LC321
	.long	119
	.long	LC322
	.long	120
	.long	LC323
	.long	121
	.long	LC324
	.long	127
	.long	LC325
	.long	129
	.long	LC326
	.long	130
	.long	LC327
	.long	131
	.long	LC328
	.long	152
	.long	LC329
	.long	157
	.long	LC330
	.long	159
	.long	LC331
	.long	163
	.long	LC332
	.long	163
	.long	LC333
	.long	164
	.long	LC334
	.long	165
	.long	LC335
	.long	165
	.long	LC336
	.long	165
	.long	LC337
	.long	166
	.long	LC338
	.long	166
	.long	LC339
	.long	165
.lcomm __ZZL10defsparserP10scriptfileE4iter,4,4
	.align 4
LC4:
	.long	1065353216
	.align 4
LC5:
	.long	-1082130432
	.align 4
LC6:
	.long	1132396544
	.align 8
LC42:
	.long	-755914244
	.long	1079009869
	.align 4
LC72:
	.long	1199570944
	.align 4
LC146:
	.long	1232348160
	.align 16
LC149:
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.def	___divmoddi4;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_handleevents;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_gettoken;	.scl	2;	.type	32;	.endef
	.def	_strcasecmp;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getlinum;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_startwin_puts.isra.0;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getsymbol;	.scl	2;	.type	32;	.endef
	.def	_hicclearsubst.part.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_md_undefinetile.isra.0;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getbraces;	.scl	2;	.type	32;	.endef
	.def	_check_file_exist;	.scl	2;	.type	32;	.endef
	.def	_hicsetsubsttex.isra.0;	.scl	2;	.type	32;	.endef
	.def	_paletteMakeLookupTable.part.0;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getstring;	.scl	2;	.type	32;	.endef
	.def	_hicsetskybox.part.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_tileUpdatePicSiz;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getnumber;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getdouble;	.scl	2;	.type	32;	.endef
	.def	__ZL16check_tile_rangePKcPiS1_PK10scriptfileS0_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_lrintf;	.scl	2;	.type	32;	.endef
	.def	_qloadkvx;	.scl	2;	.type	32;	.endef
	.def	_md_loadmodel;	.scl	2;	.type	32;	.endef
	.def	_md_defineskin;	.scl	2;	.type	32;	.endef
	.def	_md_defineanimation;	.scl	2;	.type	32;	.endef
	.def	_md_defineframe;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_addsymbolvalue;	.scl	2;	.type	32;	.endef
	.def	__ZL18defsparser_includePKcPK10scriptfileS0_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_strtol;	.scl	2;	.type	32;	.endef
	.def	__ZL26Defs_ImportTileFromTexturePKciii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_tileDelete;	.scl	2;	.type	32;	.endef
	.def	_paletteFreeLookupTable;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_tileLoadData;	.scl	2;	.type	32;	.endef
	.def	_Bcrc32;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_kopen4load.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z20kfilelength_internaliPKhPiS1_.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z15klseek_internaliiiPKhPiS1_;	.scl	2;	.type	32;	.endef
	.def	__Z14kread_internaliPviPKhPKiPi;	.scl	2;	.type	32;	.endef
	.def	_kclose;	.scl	2;	.type	32;	.endef
	.def	_kpgetdim.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_kprender;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_artReadHeader;	.scl	2;	.type	32;	.endef
	.def	_artReadManifest;	.scl	2;	.type	32;	.endef
	.def	_artPreloadFile;	.scl	2;	.type	32;	.endef
	.def	_paletteSetBlendTable;	.scl	2;	.type	32;	.endef
	.def	_freeallmodels;	.scl	2;	.type	32;	.endef
	.def	_paletteSetColorTable;	.scl	2;	.type	32;	.endef
	.def	__ZL20maybe_alloc_palookupi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL23Defs_LoadTileIntoBufferi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_paletteInitClosestColorMap.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_localeGetPtr;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_tilefontGetPtr;	.scl	2;	.type	32;	.endef
	.def	_hicinit;	.scl	2;	.type	32;	.endef
	.def	_md3postload_polymer.part.0;	.scl	2;	.type	32;	.endef
	.def	_tileSetupSky;	.scl	2;	.type	32;	.endef
	.def	_mi_strdup;	.scl	2;	.type	32;	.endef
	.def	__ZNSt8__detail9_Map_baseI19LocaleCharWrapper_tSt4pairIKS1_S1_ESaIS4_ENS_10_Select1stESt8equal_toIS1_E22LocaleCharWrapper_hashNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOS1_;	.scl	2;	.type	32;	.endef
	.def	__ZNKSt10_HashtableI19LocaleCharWrapper_tSt4pairIKS0_St13unordered_mapIS0_S0_22LocaleCharWrapper_hashSt8equal_toIS0_ESaIS1_IS2_S0_EEEESaISA_ENSt8__detail10_Select1stES6_S4_NSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_find_before_node_trIS0_EEPNSC_15_Hash_node_baseEjRKT_j.isra.0;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	_tilefontDefineMapping;	.scl	2;	.type	32;	.endef
	.def	_tileSetData;	.scl	2;	.type	32;	.endef
	.def	__ZL7md3freeP10md3model_t.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_voxfree;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru24current_verbosity_cutoffEv;	.scl	2;	.type	32;	.endef
	.def	_fwrite;	.scl	2;	.type	32;	.endef
	.def	_LZ4_compress_fast.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_texcache_readdata;	.scl	2;	.type	32;	.endef
	.def	_fseek;	.scl	2;	.type	32;	.endef
	.def	_fread;	.scl	2;	.type	32;	.endef
	.def	_LZ4_decompress_safe;	.scl	2;	.type	32;	.endef
	.def	_abort;	.scl	2;	.type	32;	.endef
	.def	_hicfindsubst;	.scl	2;	.type	32;	.endef
	.def	_kpzbufload;	.scl	2;	.type	32;	.endef
	.def	__ZN7cache1d13allocateBlockEPiiPc.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_paletteGetClosestColorWithBlacklist;	.scl	2;	.type	32;	.endef
	.def	_yax_setbunch.part.0;	.scl	2;	.type	32;	.endef
	.def	_yax_setnextwall.part.0;	.scl	2;	.type	32;	.endef
