	.file	"<artificial>"
	.text
	.section .rdata,"dr"
LC0:
	.ascii "rotation\0"
LC1:
	.ascii "scaling\0"
LC2:
	.ascii ">=\0"
LC3:
	.ascii "\0"
LC4:
	.ascii "if extending more than one\0"
LC5:
	.ascii " (ERRORS)\0"
LC6:
	.ascii "upper\0"
LC7:
	.ascii "lower\0"
LC8:
	.ascii "enabled\0"
LC9:
	.ascii "disabled\0"
LC10:
	.ascii "on\0"
LC11:
	.ascii "off\0"
LC12:
	.ascii "Splitting sector\0"
LC13:
	.ascii "Joining sector loops\0"
LC14:
	.ascii "Sector split.\0"
LC15:
	.ascii "Loops joined.\0"
LC16:
	.ascii "Splitting sectors\0"
LC17:
	.ascii "Joining loops\0"
LC18:
	.ascii "enabled w/ animation\0"
LC19:
	.ascii "_\0"
LC20:
	.ascii "Save changes?\0"
LC21:
	.ascii "Map corrupt. Save changes?\0"
	.align 4
LC23:
	.ascii "Uses BUILD technology by Ken Silverman.\0"
	.align 4
LC24:
	.ascii "Press F1 for help.  This is a test release; always keep backups of your maps.\0"
LC25:
	.ascii "%d,%d\0"
LC26:
	.ascii "(%d,%d)\0"
LC28:
	.ascii "scale x=%.3f y=%.3f\0"
LC29:
	.ascii "rotate ang %d\0"
	.align 4
LC30:
	.ascii "Highlights scaled by x=%.3f y=%.3f\0"
	.align 4
LC31:
	.ascii "Highlights rotated by %d BUILD degrees\0"
LC32:
	.ascii " \0"
LC33:
	.ascii "Aborted interactive %s.\0"
LC36:
	.ascii "corrupt wall\0"
	.align 4
LC37:
	.ascii "Map corrupt (level %d): %s%d errors\0"
LC38:
	.ascii "ALL\0"
LC39:
	.ascii "SPR ONLY\0"
LC40:
	.ascii "captxxxx.tga\0"
	.align 4
LC41:
	.ascii "To rotate ext. sectors, all sectors of a bunch must be selected\0"
LC42:
	.ascii "Rotation BUILD angle: \0"
	.align 4
LC43:
	.ascii "Rotated highlighted sectors by %d BUILD degrees\0"
LC44:
	.ascii "Set starting position\0"
LC45:
	.ascii "Sprite (%d) Hi-tag: \0"
LC46:
	.ascii "Wall (%d) Hi-tag: \0"
LC47:
	.ascii "Sector (%d) Hi-tag: \0"
LC48:
	.ascii "Sector (%d) Ceilingpal: \0"
LC49:
	.ascii "Sector (%d) Floorpal: \0"
LC50:
	.ascii "Sprite (%d) Status list: \0"
	.align 4
LC51:
	.ascii "Bunch limit of %d reached, cannot extend\0"
	.align 4
LC52:
	.ascii "Sectors to extend must be in one connected component\0"
	.align 4
LC53:
	.ascii "Extend above (a) or below (z)?\0"
	.align 4
LC54:
	.ascii "When sandwiching extension, must select only sectors of one bunch\0"
	.align 4
LC55:
	.ascii "When sandwiching extension, must select only sectors of the bunch\0"
	.align 4
LC56:
	.ascii "Sector %d's %s is already extended\0"
	.align 4
LC57:
	.ascii "Sector %d's %s height doesn't match sector %d's\0"
	.align 4
LC58:
	.ascii "Sector %ss must not be sloped%s\0"
	.align 4
LC59:
	.ascii "When sandwiching extension, must select all sectors of the bunch\0"
	.align 4
LC60:
	.ascii "Too little z headroom for sandwiching, need at least %d\0"
	.align 4
LC61:
	.ascii "Internal error while sandwiching: oldfz out of bounds\0"
	.align 4
LC63:
	.ascii "Too little z headroom for sandwiching\0"
	.align 4
LC64:
	.ascii "Internal error while constructing sector: YAX_NEXTWALL(%d, %d)<0!\0"
	.align 4
LC65:
	.ascii "Internal error while sandwiching (2): YAX_NEXTWALL(%d, %d)<0!\0"
	.align 4
LC66:
	.ascii "Extended %ss of highlighted sectors, creating bunch %d\0"
	.align 4
LC67:
	.ascii "Sandwiched bunch %d, creating bunch %d\0"
	.align 4
LC68:
	.ascii "Must not be editing map to punch loop\0"
	.align 4
LC69:
	.ascii "TROR bunch limit reached, cannot punch loop\0"
	.align 4
LC70:
	.ascii "Must have a unique highlighted CCW loop to punch\0"
	.align 4
LC71:
	.ascii "Didn't find any non-grayed out CCW loop start walls\0"
	.align 4
LC72:
	.ascii "Ceiling or floor must be extended to punch loop\0"
LC73:
	.ascii "z\0"
LC74:
	.ascii "Punch loop below (z)?\0"
LC75:
	.ascii "a\0"
LC76:
	.ascii "Punch loop above (a)?\0"
	.align 4
LC77:
	.ascii "Punch loop above (a) or below (z)?\0"
	.align 4
LC78:
	.ascii "All loop points must be highlighted to punch\0"
	.align 4
LC79:
	.ascii "Loop walls must not already have TROR neighbors\0"
	.align 4
LC80:
	.ascii "INTERNAL ERROR: All loop walls are expected to be red\0"
	.align 4
LC81:
	.ascii "Punching loop through extension would exceed limits\0"
	.align 4
LC82:
	.ascii "Punch loop INTERNAL ERROR: dstsect < 0. Map corrupt?\0"
	.align 4
LC83:
	.ascii "Loop lines must not intersect any destination sector's walls\0"
	.align 4
LC84:
	.ascii "A point of bunch %d's sectors lies inside the loop to punch\0"
	.align 4
LC85:
	.ascii "Punch loop INTERNAL ERROR with AddLoopToSector!\0"
	.align 4
LC86:
	.ascii "Punched loop starting w/ wall %d into %s sector %d%s\0"
	.align 4
LC87:
	.ascii "Insert outer loop and make red walls? (Y/N)\0"
	.align 4
LC88:
	.ascii "Highlighted sectors must be in one connected component\0"
LC89:
	.ascii "ceiling\0"
LC90:
	.ascii "floor\0"
LC91:
	.ascii "-extended \0"
	.align 4
LC92:
	.ascii "Attached new inner loop to %s%ssector %d\0"
	.align 4
LC93:
	.ascii "Error backing up drawn walls (code %d)!\0"
	.align 4
LC94:
	.ascii "To drag extended sectors, all sectors of a bunch must be selected\0"
	.align 4
LC95:
	.ascii "Can't drag point where drawing started.\0"
	.align 4
LC96:
	.ascii "Must not be editing map while switching to side view mode.\0"
LC97:
	.ascii "Side view %s\0"
LC98:
	.ascii "Sideview angle: %d\0"
LC99:
	.ascii "Sideview elevation: %d\0"
LC100:
	.ascii "Zoom: %d\0"
LC101:
	.ascii "Mouse locked to window: %s\0"
LC102:
	.ascii "Grid size: 9 (autosize)\0"
LC103:
	.ascii "Grid off\0"
LC104:
	.ascii "Grid size: %d (%d units)\0"
LC105:
	.ascii "Selection lock %s\0"
LC106:
	.ascii "Grid locking %s\0"
	.align 4
LC107:
	.ascii "Can't join sectors while editing.\0"
	.align 4
LC109:
	.ascii "Bunch limit of %d reached, cannot join\0"
	.align 4
LC110:
	.ascii "Sectors must be partitioned in two components to join\0"
	.align 4
LC111:
	.ascii "No consistent joining combination found\0"
	.align 4
LC112:
	.ascii "comp0: c=%d,f=%d;  comp1: c=%d,f=%d  (1:extended, 2:z mismatch, 4:sloped)\0"
LC113:
	.ascii "source/build/src/build.cpp\0"
	.align 4
LC114:
	.ascii "Number of outer walls must be equal for both components (have %d and %d)\0"
	.align 4
LC115:
	.ascii "Outer wall coordinates must coincide for both components\0"
LC116:
	.ascii "wal0:%d (%d,%d)--(%d,%d)\0"
LC117:
	.ascii "wal1:%d (%d,%d)--(%d,%d)\0"
	.align 4
LC118:
	.ascii "Z differences | yellow ceiling w/ blue floor: %d, vice versa: %d\0"
	.align 4
LC119:
	.ascii "Connect yellow ceiling w/ blue floor (1) or (v)ice versa?\0"
	.align 4
LC120:
	.ascii "Move (y)ellow or (b)lue component?\0"
	.align 4
LC121:
	.ascii "Also move formerly wall-connected sectors?\0"
	.align 4
LC122:
	.ascii "Must not have TROR connections between the two components\0"
	.align 4
LC123:
	.ascii "Joined highlighted sectors to new bunch %d\0"
	.align 4
LC124:
	.ascii "Use this as first joining sector? (Y/N)\0"
	.align 4
LC125:
	.ascii "Join sector - press J again on sector to join with.\0"
	.align 4
LC126:
	.ascii "Use this as second joining sector? (Y/N)\0"
	.align 4
LC127:
	.ascii "Joining non-adjacent extended sectors not allowed!\0"
	.align 4
LC128:
	.ascii "Joining non-adjacent disabled in non-expert mode\0"
	.align 4
LC129:
	.ascii "Can't join two sectors with different ceiling bunchnums. To make them equal, join their upper neighbor's floors.\0"
	.align 4
LC130:
	.ascii "Can't join two sectors with different ceiling bunchnums. See console.\0"
	.align 4
LC131:
	.ascii "INTERNAL ERROR: nextwalls inconsistent!\0"
	.align 4
LC132:
	.ascii "Can't make floor bunchnums equal: both floors must be extended\0"
	.align 4
LC133:
	.ascii "Can't make floor bunchnums equal: both floors must be non-sloped\0"
	.align 4
LC134:
	.ascii "Can't make floor bunchnums equal: both floors must have equal height\0"
	.align 4
LC135:
	.ascii "Can't make floor bunchnums equal: INTERNAL ERROR\0"
	.align 4
LC136:
	.ascii "Can't make floor bunchnums equal: lower neighbors must be linked\0"
	.align 4
LC137:
	.ascii "Made sector %d and %d floor bunchnums equal\0"
LC138:
	.ascii "No sectors joined.\0"
	.align 4
LC139:
	.ascii "Joining sectors failed: not enough space beyond wall[]\0"
LC140:
	.ascii "Sectors joined.\0"
	.align 4
LC141:
	.ascii "Can't make a sector out there.\0"
	.align 4
LC142:
	.ascii "Making new sector from inner loop would exceed wall limits.\0"
	.align 4
LC143:
	.ascii "Inner loop made into new sector.\0"
LC144:
	.ascii "Couldn't insert sprite.\0"
LC145:
	.ascii "Sprite inserted.\0"
	.align 4
LC146:
	.ascii "Unable to create sectors in angled sideview mode.\0"
	.align 4
LC147:
	.ascii "Wall limit exceeded while inserting points.\0"
	.align 4
LC148:
	.ascii "ERR: Inserted %d points for constr. wall (exp. %d; %d already ins'd)\0"
LC149:
	.ascii "Circle points inserted.\0"
	.align 4
LC150:
	.ascii "Inserting circle points would exceed wall limit.\0"
	.align 4
LC151:
	.ascii "Can't start sector drawing: wall limit reached.\0"
	.align 4
LC152:
	.ascii "Can't start sector drawing: sector limit reached.\0"
LC153:
	.ascii "Sector drawing started.\0"
	.align 4
LC154:
	.ascii "Inserting another point would exceed wall limit.\0"
	.align 4
LC155:
	.ascii "You can't draw new lines over red lines.\0"
LC156:
	.ascii "Created new sector %d\0"
	.align 4
LC157:
	.ascii "Added inner loop to sector %d and made new inner sector\0"
LC158:
	.ascii "Added inner loop to sector %d\0"
	.align 4
LC159:
	.ascii "Created new sector %d based on sector %d\0"
LC160:
	.ascii "%s would exceed wall limit.\0"
	.align 4
LC161:
	.ascii "Sloped extended sectors cannot be split.\0"
LC162:
	.ascii "%s\0"
	.align 4
LC163:
	.ascii "%s WARNING: CREATED %d MORE WALLS THAN EXPECTED!\0"
	.align 4
LC164:
	.ascii "%s failed: not enough space beyond wall[]\0"
	.align 4
LC165:
	.ascii "Really check all wall pointers in TROR map?\0"
LC166:
	.ascii "CHECKING ALL POINTERS!\0"
LC167:
	.ascii "ALL POINTERS CHECKED!\0"
	.align 4
LC168:
	.ascii "Batch-inserted %d points in total\0"
	.align 4
LC169:
	.ascii "Checked pointers of highlighted line.\0"
LC170:
	.ascii "2D mode textures %s\0"
LC171:
	.ascii "Highlighted sectors deleted.\0"
LC172:
	.ascii "Delete this sector? (Y/N)\0"
LC173:
	.ascii "Sector deleted.\0"
LC174:
	.ascii "Sprite deleted.\0"
	.align 4
LC175:
	.ascii "Inserting point would exceed wall limit.\0"
LC176:
	.ascii "Point not inserted.\0"
	.align 4
LC177:
	.ascii "Inserting points would exceed wall limit.\0"
LC178:
	.ascii "Point inserted.\0"
	.align 4
LC179:
	.ascii "Inserted %d points for constrained wall.\0"
	.align 4
LC180:
	.ascii "Inserted %d points for constrained wall (expected %d, WTF?).\0"
	.align 4
LC181:
	.ascii "Arrow must be inside a sector before entering 3D mode.\0"
LC182:
	.ascii "You have unsaved changes.\0"
LC183:
	.ascii "No .MAP files found.\0"
LC184:
	.ascii "No more map files.\0"
	.align 4
LC185:
	.ascii "(N)ew, (L)oad, (S)ave, save (A)s, (T)est map, (U)ndo, (R)edo, (Q)uit\0"
	.align 4
LC186:
	.ascii "Are you sure you want to start a new board? (Y/N)\0"
	.align 4
LC187:
	.ascii "Can't copy highlighted portion of old map: limits exceeded.\0"
	.align 4
LC188:
	.ascii "^13Invalid map format, nothing loaded (code %d).\0"
LC189:
	.ascii "(map corrupt) \0"
LC190:
	.ascii "%sSave as: ^011%s%s\0"
LC191:
	.ascii "Wangulator\0"
LC192:
	.ascii "%s - %s\0"
	.align 4
LC193:
	.ascii "Map is corrupt. Are you sure you want to save? (Y/N)\0"
LC194:
	.ascii "Nothing to undo!\0"
LC195:
	.ascii "Revision %d undone\0"
	.align 4
LC196:
	.ascii "Can't undo or redo while editing!\0"
LC197:
	.ascii "Nothing to redo!\0"
LC198:
	.ascii "Restored revision %d\0"
	.align 4
LC199:
	.ascii "Are you sure you want to quit?\0"
LC200:
	.ascii "Operation cancelled\0"
	.align 4
LC201:
	.ascii "%d * %d not supported in this graphics mode\0"
	.align 4
LC205:
	.ascii "You must insert a point there first.\0"
	.align 4
LC206:
	.ascii "internal error while joining sectors: infloop!\0"
	.text
	.p2align 4
	.globl	__ZL14overheadeditorv.lto_priv.0
	.def	__ZL14overheadeditorv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL14overheadeditorv.lto_priv.0:
LFB0:
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
	leal	-2072(%ebp), %eax
	pushl	%ebx
	subl	$2484, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	$0, -2256(%ebp)
	movl	$0, -2260(%ebp)
	call	_enet_gettime.constprop.0.isra.0
	movl	_totalclock, %eax
	movl	-2072(%ebp), %ebx
	movl	-2068(%ebp), %esi
	movl	%eax, -2360(%ebp)
	leal	-2072(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	-2072(%ebp), %eax
	movl	$-1, %edx
	movl	$0, -2224(%ebp)
	movl	%edx, __ZL3ovh.lto_priv.0+8
	movl	_upscalefactor, %edx
	movl	%eax, -2292(%ebp)
	movl	-2068(%ebp), %eax
	movl	$0, -2220(%ebp)
	movl	%eax, -2304(%ebp)
	movl	$65535, %eax
	movl	%eax, __ZL3ovh.lto_priv.0+4
	movzbl	_fullscreen, %eax
	movl	$-1, -2420(%ebp)
	movl	$-1, -2424(%ebp)
	movl	$0, -2232(%ebp)
	movl	$0, -2228(%ebp)
	movl	$0, -2240(%ebp)
	movl	$0, -2236(%ebp)
	movl	%edx, (%esp)
	movl	_yres, %ecx
	movl	_xres, %edx
	call	_videoSet2dMode
	movl	_searchx, %ecx
	movl	$8, %eax
	movl	_searchy, %edx
	movl	%ecx, _osearchx
	movl	%edx, _osearchy
	cmpl	$8, %ecx
	jle	L2
	movl	_xdim, %eax
	subl	$9, %eax
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
L2:
	movl	%eax, _searchx
	movl	$8, %eax
	cmpl	$8, %edx
	jle	L3
	movl	_ydim, %eax
	subl	$153, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
L3:
	movl	%eax, _searchy
	movl	_pos+8, %eax
	movl	%eax, -2428(%ebp)
	call	_yax_updategrays
	call	_videoBeginDrawing
	movl	_bytesperline, %ecx
	movl	_frameplace, %edi
	xorl	%eax, %eax
	imull	_ydim, %ecx
	sarl	$2, %ecx
/APP
 # 3813 "source/build/src/build.cpp" 1
	rep; stosl
 # 0 "" 2
/NO_APP
	call	_videoEndDrawing
	movl	_ydim, %eax
	movl	$-1, %edi
	movl	$-1, _lastpm16time
	subl	$26, %eax
	movl	%eax, _ydim16
	call	_update_highlightsector
	xorl	%eax, %eax
	call	_ovh_whiteoutgrab
	movw	%di, _highlightcnt
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_show2dwall, (%esp)
	call	_memset
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_show2dsprite, (%esp)
	call	_memset
	movl	$-1, %eax
	movl	$-1, _circlewall
	movw	%ax, _newnumwalls
	movl	$-1, %eax
	movw	%ax, _joinsector
	movzbl	_buildkeys+14, %eax
	movzbl	_keystatus(%eax), %eax
	shrb	%al
	jne	L4
	movl	$1000, %edi
	imull	$1000, %ebx, %ebx
	movl	%esi, %eax
	movl	$1000000000, 8(%esp)
	imull	%edi
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	addl	%ebx, %eax
	movl	%eax, -2352(%ebp)
	movl	-2304(%ebp), %eax
	movl	$1000000000, 8(%esp)
	imull	%edi
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	$7, %ecx
	movl	$0, -2388(%ebp)
	movl	%eax, %edx
	movw	%cx, -2354(%ebp)
	imull	$1000, -2292(%ebp), %eax
	movl	$0, -2396(%ebp)
	movl	$0, -2400(%ebp)
	movl	$0, -2348(%ebp)
	addl	%edx, %eax
	movl	$-1, %edx
	movl	%eax, -2336(%ebp)
	movl	$-1, %eax
	movw	%ax, -2366(%ebp)
	movw	%dx, -2356(%ebp)
	movl	$0, -2316(%ebp)
	movl	$0, -2416(%ebp)
	movl	$0, -2412(%ebp)
	.p2align 4
	.p2align 3
L1405:
	movl	_zoom, %eax
	movl	_ztarget, %ecx
	cmpl	%ecx, %eax
	jge	L5
	movl	%ecx, %ebx
	leal	1(%eax), %edx
	subl	%eax, %ebx
	sarl	$3, %ebx
	je	L7
	imull	_synctics, %ebx
	leal	(%ebx,%eax), %edx
L7:
	cmpl	%edx, %ecx
	cmovle	%ecx, %edx
	movl	%edx, _zoom
L8:
	movl	__ZL3vel.lto_priv.0, %eax
	orl	__ZL6angvel.lto_priv.0, %eax
	orl	__ZL4svel.lto_priv.0, %eax
	jne	L11
	cmpl	$200, _qsetmode
	je	L12
	movl	_m32_2d3dmode, %eax
	testl	%eax, %eax
	je	L12
	movswl	_cursectnum, %eax
	cmpl	$4095, %eax
	ja	L12
	movl	_m32_2d3d, %esi
	movl	_searchx, %ebx
	cmpl	%ebx, %esi
	jge	L12
	movl	_xdim, %eax
	movl	_m32_2d3dsize, %edi
	cltd
	idivl	%edi
	addl	%esi, %eax
	cmpl	%eax, %ebx
	jge	L12
	movl	_m32_2d3d+4, %esi
	movl	_searchy, %ebx
	cmpl	%ebx, %esi
	jl	L2321
	.p2align 4
	.p2align 3
L12:
	cmpl	_zoom, %ecx
	je	L2322
L11:
	movl	_totalclock, %eax
	addl	$6, %eax
	movl	%eax, -2360(%ebp)
L15:
	leal	-2072(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	$1000, %eax
	imull	-2068(%ebp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	imull	$1000, -2072(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -2352(%ebp)
	call	_handleevents
L1439:
	movl	_osd, %eax
	movl	1100(%eax), %ebx
	testl	%ebx, %ebx
	je	L16
	movl	$0, 1100(%eax)
	subl	$1, %ebx
	jns	L17
	jmp	L16
	.p2align 4,,10
	.p2align 3
L2323:
	movl	_osd, %eax
L17:
	movl	60(%eax,%ebx,4), %eax
	call	__Z12OSD_DispatchPKcb.constprop.0
	subl	$1, %ebx
	jnb	L2323
L16:
	movl	_totalclock, %eax
	cmpl	$359, %eax
	jg	L18
	movl	%eax, _lastpm16time
	movl	$LC23, (%esp)
	call	__printmessage16
L19:
	movzwl	-2316(%ebp), %eax
	movw	%ax, __ZL15oldmousebstatus.lto_priv.0
	call	_mouseReadButtons
	movl	%eax, -2316(%ebp)
	andl	$-49, %eax
	setne	%al
	movzbl	%al, %eax
	call	_editorMaybeLockMouse
	movl	_osdvisible, %ebx
	testl	%ebx, %ebx
	jne	L2324
	cmpl	$200, _qsetmode
	je	L22
	movl	_m32_2d3dmode, %eax
	testl	%eax, %eax
	je	L22
	movswl	_cursectnum, %eax
	cmpl	$4095, %eax
	ja	L22
	movl	_m32_2d3d, %esi
	movl	_searchx, %ecx
	cmpl	%ecx, %esi
	jge	L22
	movl	_xdim, %eax
	movl	_m32_2d3dsize, %edi
	cltd
	idivl	%edi
	addl	%esi, %eax
	cmpl	%eax, %ecx
	jge	L22
	movl	_m32_2d3d+4, %esi
	movl	_searchy, %ecx
	cmpl	%ecx, %esi
	jl	L2325
	.p2align 4
	.p2align 3
L22:
	movl	-2348(%ebp), %edi
	movl	-2316(%ebp), %esi
	movl	%edi, %eax
	movl	%esi, %ecx
	andl	%esi, %edi
	notl	%eax
	movl	%edi, -2348(%ebp)
	andl	%eax, %ecx
	movl	%ecx, -2292(%ebp)
	cmpb	$0, _g_mouseLockedToWindow
	jne	L2326
L24:
	movl	_g_mousePos, %ebx
	movl	_g_mousePos+4, %esi
	movl	$0, _g_mousePos
	movl	$0, _g_mousePos+4
	sall	$16, %ebx
	sall	$16, %esi
L27:
	addl	__ZL10mouseysurp.lto_priv.0, %esi
	movl	$65536, 4(%esp)
	addl	__ZL10mousexsurp.lto_priv.0, %ebx
	movl	%ebx, (%esp)
	call	_ldiv
	movl	%eax, -2296(%ebp)
	movl	%eax, %edi
	movl	%edx, __ZL10mousexsurp.lto_priv.0
	movl	$65536, 4(%esp)
	movl	%esi, (%esp)
	call	_ldiv
	movl	%edx, __ZL10mouseysurp.lto_priv.0
	movl	%eax, %ebx
	cmpb	$0, _g_mouseLockedToWindow
	je	L28
	movl	_searchy, %eax
	addl	_searchx, %edi
	movl	%edi, %ecx
	addl	%ebx, %eax
L29:
	movl	_xdim, %edi
	movl	%ecx, _searchx
	movl	%eax, _searchy
	leal	-9(%edi), %edx
	cmpl	%ecx, %edx
	jge	L30
	movl	%edx, _searchx
	movl	%edx, %ecx
L30:
	cmpl	$7, %ecx
	jg	L31
	movl	$8, _searchx
L31:
	movl	_ydim, %edi
	leal	-9(%edi), %edx
	cmpl	%eax, %edx
	jge	L32
	movl	%edx, _searchy
	movl	%edx, %eax
L32:
	cmpl	$7, %eax
	jg	L33
	movl	$8, _searchy
L33:
	call	__ZL13mainloop_movev.lto_priv.0
	leal	-2260(%ebp), %eax
	leal	-2256(%ebp), %ecx
	movl	%eax, (%esp)
	movl	_searchy, %edx
	movl	_searchx, %eax
	call	_getpoint
	movl	-2260(%ebp), %edi
	movl	-2256(%ebp), %esi
	movswl	_linehighlight, %ecx
	movl	$0, (%esp)
	movl	%edi, %edx
	movl	%esi, %eax
	call	__ZL16getlinehighlightiiia.lto_priv.0
	movl	%edi, %edx
	movw	%ax, _linehighlight
	movswl	%ax, %ecx
	movl	%esi, %eax
	movl	$1, (%esp)
	call	__ZL16getlinehighlightiiia.lto_priv.0
	movw	%ax, -2366(%ebp)
	movl	_m32_sideview, %eax
	testl	%eax, %eax
	je	L2327
	movl	$-1, %edi
	movw	%di, _sectorhighlight
L35:
	movl	-2292(%ebp), %eax
	movl	%eax, -2316(%ebp)
L23:
	movswl	_newnumwalls, %edi
	movzwl	_numwalls, %eax
	movl	%edi, %esi
	movw	%ax, -2304(%ebp)
	cmpl	$16383, %edi
	ja	L21
	cmpw	%ax, %di
	jge	L36
L2279:
	movl	_ydim, %eax
	movl	%eax, _ydim16
	sarl	%eax
	movl	%eax, _midydim16
L38:
	leal	-2072(%ebp), %eax
	movw	%si, _numwalls
	call	_enet_gettime.constprop.0.isra.0
	movl	$1000, %eax
	imull	-2068(%ebp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	%eax, %edx
	imull	$1000, -2072(%ebp), %eax
	addl	%edx, %eax
	subl	-2336(%ebp), %eax
	cmpl	$4, %eax
	ja	L39
	movl	__ZL3vel.lto_priv.0, %eax
	orl	__ZL6angvel.lto_priv.0, %eax
	orl	__ZL4svel.lto_priv.0, %eax
	jne	L39
	movzbl	_buildkeys+8, %eax
	cmpb	$0, _keystatus(%eax)
	jne	L39
	orl	-2316(%ebp), %ebx
	orl	-2296(%ebp), %ebx
	jne	L39
	movzbl	_buildkeys+9, %edx
	movzbl	_keystatus+16, %eax
	orb	_keystatus+17, %al
	orb	_keystatus(%edx), %al
	je	L2328
	.p2align 4
	.p2align 3
L39:
	leal	-2072(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	$1000, %eax
	imull	-2068(%ebp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	_ydim, %ebx
	imull	$1000, -2072(%ebp), %edx
	addl	%edx, %eax
	leal	-25(%ebx), %edx
	cmpl	_ydim16, %edx
	movl	%eax, -2336(%ebp)
	leal	-26(%ebx), %eax
	cmovg	%eax, %ebx
	call	_videoBeginDrawing
	imull	_bytesperline, %ebx
	movl	$0, 4(%esp)
	movl	%ebx, 8(%esp)
	movl	_frameplace, %eax
	movl	%eax, (%esp)
	call	_memset
	call	_videoEndDrawing
	movl	_m32_sideview, %esi
	testl	%esi, %esi
	jne	L2329
L42:
	movl	$-1, %edx
	movl	$17, %eax
	call	__Z10VM_OnEventii
	movl	_graphicsmode, %ebx
	testl	%ebx, %ebx
	je	L43
	movl	_m32_sideview, %ecx
	testl	%ecx, %ecx
	je	L44
	cmpl	$512, _m32_sideelev
	je	L44
L43:
	movl	_autogrid, %eax
	movl	_zoom, %edi
	testl	%eax, %eax
	jne	L1459
	movl	_grid, %ecx
L51:
	movswl	%cx, %eax
	testw	%cx, %cx
	jle	L54
L53:
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movswl	_cursectnum, %eax
	movl	%eax, (%esp)
	movl	_pos+8, %ecx
	movl	_pos+4, %edx
	movl	_pos, %eax
	call	_editorDraw2dGrid.part.0
L54:
	call	__Z9ToggleFAFv
	movswl	_grid, %eax
	movl	%eax, 16(%esp)
	movl	_zoom, %eax
	movl	%eax, 12(%esp)
	movswl	_ang, %eax
	movl	%eax, 8(%esp)
	movswl	_cursectnum, %eax
	movl	$_pos, (%esp)
	movl	%eax, 4(%esp)
	call	_editorDraw2dScreen.constprop.0
	movl	_zoom, %ebx
	movl	%ebx, 16(%esp)
	movl	_startpos+4, %eax
	subl	_pos+4, %eax
	movl	%eax, 12(%esp)
	movl	_startpos, %eax
	subl	_pos, %eax
	movl	%eax, 8(%esp)
	leal	-2276(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-2272(%ebp), %eax
	movl	%eax, (%esp)
	call	_editorGet2dScreenCoordinates
	movl	_m32_sideview, %esi
	movl	-2276(%ebp), %edi
	testl	%esi, %esi
	jne	L2330
L55:
	movl	-2272(%ebp), %ebx
	addl	_halfxdim16, %ebx
	movl	_midydim16, %esi
	call	_videoBeginDrawing
	cmpl	$1, %ebx
	jle	L56
	movl	_xdim, %eax
	addl	%edi, %esi
	subl	$2, %eax
	cmpl	%ebx, %eax
	jle	L56
	cmpl	$1, %esi
	jg	L2331
L56:
	cmpb	$0, _keystatus+42
	je	L59
	movzwl	_pointhighlight, %eax
	testb	$64, %ah
	je	L59
	cmpw	$0, _highlightcnt
	jle	L2332
	.p2align 4
	.p2align 3
L59:
	movl	_zoom, %eax
	cmpl	$767, %eax
	jg	L2333
L73:
	movl	_pos, %ebx
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	_halfxdim16, %eax
	negl	%eax
	cltd
	shldl	$14, %eax, %edx
	sall	$14, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.2
	addl	%eax, %ebx
	movl	_zoom, %eax
	movl	%ebx, -2280(%ebp)
	movl	_pos+4, %ebx
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	$4, %eax
	subl	_midydim16, %eax
	cltd
	shldl	$14, %eax, %edx
	sall	$14, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.2
	movzwl	_newnumwalls, %edx
	addl	%eax, %ebx
	movl	%ebx, -2284(%ebp)
	movswl	_numsectors, %ebx
	subl	$1, %ebx
	testw	%dx, %dx
	jns	L75
	movswl	_numwalls, %eax
	leal	-1(%eax), %esi
L76:
	movl	%ebx, -2252(%ebp)
	movl	_zoom, %ecx
	testl	%esi, %esi
	jns	L89
	jmp	L90
	.p2align 4,,10
	.p2align 3
L2334:
	movb	$0, __ZL7tempbuf.lto_priv.2
L81:
	subl	$1, %esi
	jb	L90
L89:
	movl	_wall, %eax
	movl	%eax, -2292(%ebp)
	movl	-2252(%ebp), %eax
	testl	%eax, %eax
	js	L79
	movl	_sector, %ebx
	leal	(%eax,%eax,4), %edx
	leal	(%ebx,%edx,8), %edx
	movswl	(%edx), %edx
	cmpl	%esi, %edx
	jle	L79
	subl	$1, %eax
	movl	%eax, -2252(%ebp)
L79:
	movl	%esi, %eax
	movl	%esi, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	cmpl	$767, %ecx
	jg	L80
	movzbl	_editwall(%edx), %edi
	andl	%eax, %edi
	movl	%edi, %ebx
	cmpb	%al, %bl
	jne	L81
L80:
	movzbl	_graywallbitmap(%edx), %ebx
	andl	%eax, %ebx
	cmpb	%al, %bl
	je	L81
	movl	%esi, %edi
	sall	$5, %edi
	addl	-2292(%ebp), %edi
	movswl	26(%edi), %edx
	movswl	28(%edi), %eax
	movl	%edx, %ebx
	orw	%ax, %bx
	je	L2334
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	cmpb	$0, __ZL7tempbuf.lto_priv.2
	je	L2280
	movswl	8(%edi), %eax
	sall	$5, %eax
	addl	_wall, %eax
	movl	(%eax), %edx
	movl	4(%eax), %ebx
	addl	(%edi), %edx
	addl	4(%edi), %ebx
	movswl	_numwalls, %eax
	sarl	%edx
	sarl	%ebx
	movl	%edx, -2264(%ebp)
	movl	%ebx, -2268(%ebp)
	cmpl	%esi, %eax
	jle	L85
	movl	-2252(%ebp), %eax
	testl	%eax, %eax
	jns	L86
L85:
	xorl	%eax, %eax
L87:
	movzbl	_editorcolors, %edi
	movzbl	_editorcolors+31, %ecx
	movl	%edx, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%ebx, 8(%esp)
	movzbl	_editorcolors+31, %eax
	movl	%edi, %edx
	subl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	movl	$__ZL7tempbuf.lto_priv.2, %eax
	call	_drawsmallabel
L2280:
	movl	_zoom, %ecx
	subl	$1, %esi
	jnb	L89
L90:
	cmpl	$767, %ecx
	jg	L2335
L91:
	movl	$-1, %edx
	movl	$4, %eax
	call	__Z10VM_OnEventii
	movl	_pos, %eax
	movswl	_ang, %ecx
	movl	_pos+4, %edx
	call	__ZL13printcoords16iis.lto_priv.0
	movzwl	-2304(%ebp), %eax
	movw	%ax, _numwalls
	cmpw	$0, _highlightsectorcnt
	jns	L2336
L103:
	cmpb	$0, _keystatus+42
	je	L106
	cmpl	$200, _qsetmode
	je	L107
	movl	_m32_2d3dmode, %eax
	testl	%eax, %eax
	je	L107
	movswl	_cursectnum, %eax
	cmpl	$4095, %eax
	ja	L107
	movl	_m32_2d3d, %esi
	movl	_searchx, %ecx
	cmpl	%ecx, %esi
	jge	L107
	movl	_xdim, %eax
	movl	_m32_2d3dsize, %ebx
	cltd
	idivl	%ebx
	addl	%esi, %eax
	cmpl	%eax, %ecx
	jge	L107
	movl	_m32_2d3d+4, %esi
	movl	_searchy, %ecx
	cmpl	%ecx, %esi
	jl	L2337
	.p2align 4
	.p2align 3
L107:
	movl	_m32_sideview, %eax
	testl	%eax, %eax
	jne	L109
	cmpw	$0, _highlightcnt
	jle	L109
L108:
	cmpb	$0, _isc
	jne	L2338
	movzwl	_pointhighlight, %edi
	testw	%di, %di
	js	L112
	movl	-2316(%ebp), %eax
	andl	$3, %eax
	jne	L2339
	.p2align 4
	.p2align 3
L112:
	movzbl	_editorcolors+15, %edx
	movl	_searchx, %eax
	movl	$8, (%esp)
	movl	%edx, 4(%esp)
	movl	%eax, %ecx
	xorl	%edx, %edx
	call	_editorDraw2dLine
	movzbl	_editorcolors+15, %eax
	movl	$8, %ecx
	movl	_searchy, %edx
	movl	%eax, 4(%esp)
	xorl	%eax, %eax
	movl	%edx, (%esp)
	call	_editorDraw2dLine
	movl	_m32_2d3dmode, %esi
	testl	%esi, %esi
	jne	L2340
L149:
	movl	_searchlock, %ecx
	testl	%ecx, %ecx
	je	L163
	movzbl	_editorcolors+13, %ebx
L164:
	cmpw	$0, _joinsector
	js	L165
	movzbl	_editorcolors+11, %ebx
L165:
	movl	_numcorruptthings, %ecx
	testl	%ecx, %ecx
	jle	L166
	movswl	_pointhighlight, %esi
	testw	$16384, %si
	je	L2341
L169:
	cmpl	$64, %ecx
	movl	$LC2, %edx
	movl	$LC3, %eax
	movl	%ecx, 16(%esp)
	cmovge	%edx, %eax
	movl	%eax, 12(%esp)
	movl	_corruptlevel, %eax
	movl	$LC37, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$__ZZL14overheadeditorvE4cbuf, (%esp)
	call	_sprintf
	movl	_totalclock, %eax
	sall	$4, %eax
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %eax
	sarw	$10, %ax
	cwtl
/APP
 # 4404 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	$0, 20(%esp)
	sarl	$2, %eax
	movl	$__ZZL14overheadeditorvE4cbuf, 16(%esp)
	movzbl	_editorcolors, %edx
	movl	%edx, 12(%esp)
	movzbl	_editorcolors+13, %edx
	movl	$8, 4(%esp)
	addl	%eax, %edx
	movl	$8, (%esp)
	movswl	%dx, %edx
	movl	%edx, 8(%esp)
	call	_printext16
L166:
	cmpw	$0, _highlightsectorcnt
	je	L172
	cmpw	$0, _highlightcnt
	je	L173
	movzbl	%bl, %ebx
L174:
	movl	_searchy, %eax
	movl	_searchx, %ecx
	movl	%ebx, 4(%esp)
	leal	-8(%eax), %edx
	subl	$1, %eax
	movl	%eax, (%esp)
	movl	%ecx, %eax
	call	_editorDraw2dLine
	movl	_searchy, %eax
	movl	_searchx, %ecx
	movl	%ebx, 4(%esp)
	leal	1(%eax), %edx
	addl	$8, %eax
	movl	%eax, (%esp)
	movl	%ecx, %eax
	call	_editorDraw2dLine
	movl	_searchy, %edx
	movl	_searchx, %eax
	movl	%ebx, 4(%esp)
	movl	%edx, (%esp)
	leal	-1(%eax), %ecx
	subl	$8, %eax
	call	_editorDraw2dLine
	movl	_searchy, %edx
	movl	_searchx, %eax
	movl	%ebx, 4(%esp)
	movl	%edx, (%esp)
	leal	8(%eax), %ecx
	addl	$1, %eax
	call	_editorDraw2dLine
	movswl	_linehighlight, %edx
	testw	%dx, %dx
	js	L162
	movl	_totalclock, %eax
	sall	$4, %eax
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %eax
	sarw	$10, %ax
	cwtl
/APP
 # 4442 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movzbl	_editorcolors+14, %ebx
	sarl	%eax
	subl	%eax, %ebx
	movl	_m32_sideview, %eax
	movzbl	%bl, %ebx
	testl	%eax, %eax
	je	L185
	leal	-2268(%ebp), %eax
	movl	$1, 8(%esp)
	movl	%edx, %ecx
	movl	%eax, 4(%esp)
	leal	-2264(%ebp), %eax
	movl	%eax, (%esp)
	movl	_searchy, %edx
	movl	_searchx, %eax
	call	__ZL21getclosestpointonwalliiiPiS_i.lto_priv.0
	movl	-2264(%ebp), %esi
	movl	-2268(%ebp), %edx
	movl	%ebx, 4(%esp)
	leal	2(%edx), %edi
	leal	2(%esi), %ecx
	subl	$2, %edx
	movl	%edi, (%esp)
	leal	-2(%esi), %eax
	movl	%ecx, -2304(%ebp)
	movl	%edx, -2292(%ebp)
	call	_editorDraw2dLine
	movl	%ebx, 4(%esp)
	movl	-2292(%ebp), %edx
	leal	-2(%esi), %eax
	movl	%edx, (%esp)
	movl	-2304(%ebp), %ecx
	movl	%edi, %edx
	call	_editorDraw2dLine
L162:
	call	_videoEndDrawing
	call	__Z8OSD_Drawv
	movl	_osdvisible, %eax
	testl	%eax, %eax
	jne	L2342
L186:
	movl	$-1, %edx
	movl	$8, %eax
	movl	$1, _inputchecked
	call	__Z10VM_OnEventii
	call	_ExtCheckKeys
	cmpl	$200, _qsetmode
	je	L190
	movl	_m32_2d3dmode, %eax
	testl	%eax, %eax
	je	L190
	movswl	_cursectnum, %eax
	cmpl	$4095, %eax
	ja	L190
	movl	_m32_2d3d, %esi
	movl	_searchx, %ecx
	cmpl	%ecx, %esi
	jge	L190
	movl	_xdim, %eax
	movl	_m32_2d3dsize, %ebx
	cltd
	idivl	%ebx
	addl	%esi, %eax
	cmpl	%eax, %ecx
	jge	L190
	movl	_m32_2d3d+4, %esi
	movl	_searchy, %ecx
	cmpl	%ecx, %esi
	jl	L2343
	.p2align 4
	.p2align 3
L190:
	movzbl	_keystatus+45, %ecx
	orb	_keystatus+21, %cl
	je	L192
	movzbl	_keystatus+29, %edx
	orb	_keystatus+157, %dl
	je	L2344
L192:
	cmpb	$0, _keystatus+88
	jne	L2345
L193:
	cmpb	$0, _keystatus+48
	jne	L2346
L194:
	cmpb	$0, _keystatus+33
	je	L198
	movzbl	_keystatus+56, %eax
	orb	_keystatus+184, %al
	movb	$0, _keystatus+33
	jne	L2347
L198:
	cmpb	$0, _keystatus+24
	je	L199
	movzwl	_pointhighlight, %eax
	movb	$0, _keystatus+24
	movl	%eax, %edx
	andl	$49152, %edx
	cmpl	$16384, %edx
	je	L2348
L199:
	movzbl	_keystatus+52, %eax
	cmpb	$0, _keystatus+51
	jne	L202
	movl	-2316(%ebp), %edx
	notl	%edx
	andl	$33, %edx
	je	L202
	testb	%al, %al
	jne	L207
	movl	-2316(%ebp), %eax
	notl	%eax
	testb	$17, %al
	je	L207
L208:
	cmpb	$0, _keystatus+70
	jne	L2349
L229:
	cmpb	$0, _keystatus+63
	jne	L2350
L230:
	cmpb	$0, _keystatus+64
	je	L231
	movzwl	_pointhighlight, %eax
	cmpw	$16383, %ax
	jg	L2351
	movswl	_linehighlight, %eax
	testw	%ax, %ax
	jns	L2283
	movl	$-1, %eax
L2283:
	call	_ExtShowWallData
L231:
	cmpb	$0, _keystatus+65
	jne	L2352
L236:
	cmpb	$0, _keystatus+66
	je	L239
	movzwl	_pointhighlight, %eax
	movb	$0, _keystatus+66
	cmpw	$16383, %ax
	jg	L2353
L239:
	cmpb	$0, _keystatus+35
	je	L240
	movzbl	_keystatus+29, %eax
	orb	_keystatus+157, %al
	movb	$0, _keystatus+35
	jne	L2354
	movzbl	_keystatus+56, %eax
	orb	_keystatus+184, %al
	je	L2355
	movzwl	_pointhighlight, %eax
	cmpw	$16383, %ax
	jg	L2356
	movzwl	_linehighlight, %eax
	testw	%ax, %ax
	js	L240
	movswl	%ax, %ebx
	movl	$10, %eax
	movl	$0, _g_iReturnVar
	leal	-2152(%ebp), %esi
	movl	%ebx, %edx
	call	__Z10VM_OnEventii
	movl	_g_iReturnVar, %eax
	andl	$2, %eax
	leal	(%eax,%eax), %edi
	movl	%edi, -2252(%ebp)
	movl	%ebx, 8(%esp)
	sall	$5, %ebx
	movl	$LC46, 4(%esp)
	movl	%esi, (%esp)
	call	_sprintf
	movl	_wall, %eax
	movl	$65535, %ecx
	movswl	28(%eax,%ebx), %edx
	movl	%edi, (%esp)
	movl	%esi, %eax
	call	__getnumber16.constprop.0
	movl	_wall, %edx
	movl	%eax, %ecx
	movl	%ebx, %eax
	addl	%ebx, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%cx, 28(%edx)
	.p2align 4
	.p2align 3
L240:
	cmpb	$0, _keystatus+25
	jne	L2357
L248:
	cmpb	$0, _keystatus+18
	je	L371
	movzbl	_keystatus+29, %eax
	orb	_keystatus+157, %al
	movb	$0, _keystatus+18
	jne	L253
	movzwl	_pointhighlight, %eax
	cmpw	$16383, %ax
	jg	L254
L371:
	movzwl	_highlightsectorcnt, %ecx
L2285:
	movzwl	_highlightcnt, %eax
	movl	%eax, %edx
L252:
	testw	%cx, %cx
	js	L2358
L366:
	testw	%dx, %dx
	jns	L425
	movzwl	_highlightsectorcnt, %ecx
L422:
	movl	-2316(%ebp), %edi
	andl	$4, %edi
	je	L498
	testw	%cx, %cx
	jle	L2359
	cmpw	$-1, _linehighlight
	je	L502
	cmpb	$0, _keystatus+184
	je	L2360
L502:
	movzbl	_keystatus+29, %eax
	orb	_keystatus+157, %al
	setne	%al
	movzbl	%al, %eax
	movl	%eax, %edi
L501:
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L508:
	movzbl	_hlsectorbitmap(%eax), %edx
	orb	_graysectbitmap(%eax), %dl
	addl	$1, %eax
	movb	%dl, __ZL18hlorgraysectbitmap.lto_priv.0-1(%eax)
	cmpl	$512, %eax
	jne	L508
	movl	$0, -2296(%ebp)
	testw	%cx, %cx
	jle	L509
	movl	$0, -2304(%ebp)
	.p2align 4
	.p2align 3
L514:
	movl	$-1, %eax
	movw	%ax, -2072(%ebp)
	movl	-2304(%ebp), %eax
	movswl	_highlightsector(%eax,%eax), %esi
	movl	_sector, %eax
	leal	(%esi,%esi,4), %edx
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %ebx
	movswl	2(%eax), %eax
	addl	%ebx, %eax
	movl	%ebx, -2252(%ebp)
	movl	%eax, -2292(%ebp)
	cmpl	%eax, %ebx
	jl	L513
	jmp	L510
	.p2align 4,,10
	.p2align 3
L512:
	addl	$1, %ebx
	movl	%ebx, -2252(%ebp)
	cmpl	-2292(%ebp), %ebx
	je	L2361
L513:
	movl	%ebx, %esi
	movl	_wall, %eax
	sall	$5, %esi
	cmpw	$0, 10(%eax,%esi)
	js	L2362
L511:
	testl	%edi, %edi
	jne	L512
	addl	_wall, %esi
	leal	-2072(%ebp), %eax
	movl	$__ZL18hlorgraysectbitmap.lto_priv.0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	4(%esi), %eax
	movl	%eax, 4(%esp)
	movl	(%esi), %eax
	movl	%eax, (%esp)
	call	_updatesectorexclude.constprop.0
	movswl	-2072(%ebp), %eax
	shrl	$31, %eax
	orl	%eax, -2296(%ebp)
	jmp	L512
	.p2align 4,,10
	.p2align 3
L86:
	movl	_sector, %ecx
	cwtl
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	testb	$2, 14(%eax)
	je	L2363
	movl	%edx, 4(%esp)
	movl	%ebx, 8(%esp)
	movl	%edx, -2292(%ebp)
	movl	%eax, (%esp)
	call	_getflorzofslopeptr.part.0
	movl	-2292(%ebp), %edx
	jmp	L87
	.p2align 4,,10
	.p2align 3
L2362:
	movl	-2304(%ebp), %eax
	movswl	_highlightsector(%eax,%eax), %edx
	movswl	%bx, %eax
	call	_checksectorpointer
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	orl	%eax, %edi
	jmp	L511
	.p2align 4,,10
	.p2align 3
L2361:
	movl	-2304(%ebp), %eax
	movswl	_highlightsector(%eax,%eax), %esi
L510:
	movl	%esi, %eax
	call	_yax_getbunch.constprop.1
	movl	%eax, %ebx
	movl	%esi, %eax
	call	_yax_getbunch.constprop.0
	addl	$1, -2304(%ebp)
	andl	%eax, %ebx
	movswl	_highlightsectorcnt, %eax
	movswl	%bx, %ebx
	notl	%ebx
	shrl	$31, %ebx
	orl	%ebx, %edi
	cmpl	-2304(%ebp), %eax
	jg	L514
	orl	-2296(%ebp), %edi
L509:
	testl	%edi, %edi
	jne	L515
	cmpw	$0, _newnumwalls
	js	L2364
L515:
	movss	_searchx, %xmm0
	xorl	%eax, %eax
	movss	_searchy, %xmm5
	movw	%ax, _highlightsectorcnt
	unpcklps	%xmm5, %xmm0
	movlps	%xmm0, -2232(%ebp)
	movlps	%xmm0, -2240(%ebp)
L506:
	movzwl	__ZL15oldmousebstatus.lto_priv.0, %eax
	movl	-2316(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %edx
	andl	$1, %eax
	andl	$1, %ecx
	cmpl	%edx, %eax
	jle	L595
L596:
	movswl	_pointhighlight, %ecx
L598:
	movl	-2260(%ebp), %edx
	movl	-2256(%ebp), %eax
	call	_getpointhighlight
	movw	%ax, _pointhighlight
	movl	%eax, %ecx
	movl	-2316(%ebp), %eax
	testb	$2, %al
	je	L1495
	andl	$5, %eax
	movl	%eax, %esi
	jne	L2365
	movl	$-1, %edi
	movw	%di, -2356(%ebp)
L683:
	movzbl	_keystatus+29, %eax
	orb	_keystatus+157, %al
	jne	L2366
	movl	_m32_sideview, %esi
	testl	%esi, %esi
	je	L693
	testb	$4, -2316(%ebp)
	jne	L694
	movss	-2256(%ebp), %xmm0
	movss	-2260(%ebp), %xmm7
	unpcklps	%xmm7, %xmm0
	movlps	%xmm0, _pos
L695:
	movl	_drawlinepat, %ebx
	cmpw	$0, _numsectors
	jle	L697
	movl	$2147483647, -2304(%ebp)
	xorl	%edi, %edi
	movl	%ebx, -2324(%ebp)
	jmp	L703
	.p2align 4,,10
	.p2align 3
L698:
	movswl	_numsectors, %eax
	addl	$1, %edi
	cmpl	%edi, %eax
	jle	L2367
L703:
	movl	_pos+4, %ebx
	movl	_pos, %esi
	movswl	%di, %ecx
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_inside
	cmpl	$1, %eax
	jne	L698
	movl	_sector, %ecx
	leal	(%edi,%edi,4), %eax
	movl	_zoom, %edx
	leal	(%ecx,%eax,8), %eax
	testb	$2, 14(%eax)
	je	L2368
	movl	%edx, -2292(%ebp)
	movl	%ebx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_getflorzofslopeptr.part.0
	movl	_zoom, %ecx
	movl	-2292(%ebp), %edx
L700:
	imull	_m32_sidecos, %edx
	subl	_pos+8, %eax
/APP
 # 672 "source/build/src/2d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	$64, %eax
	movl	%edx, -2268(%ebp)
	movl	%edx, %ebx
	movl	%ecx, %edx
/APP
 # 6131 "source/build/src/build.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$4, %esi
	cmpl	$4, %eax
	cmovge	%eax, %esi
	movl	_m32_sideview, %eax
	movl	%esi, -2272(%ebp)
	movl	%esi, -2292(%ebp)
	testl	%eax, %eax
	je	L701
	movl	_m32_sidesin, %edx
	movl	%esi, %eax
/APP
 # 625 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -2292(%ebp)
L701:
	movl	-2292(%ebp), %ecx
	movl	%ebx, %eax
	movl	%ecx, -2276(%ebp)
/APP
 # 6134 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	-2304(%ebp), %edx
	cmpl	%edx, %eax
	movl	_midydim16, %eax
	cmovl	%ebx, %edx
	addl	$1, %edi
	addl	%ebx, %eax
	movl	%edx, -2304(%ebp)
	movl	_halfxdim16, %edx
	addl	%esi, %edx
	movl	%edx, -2296(%ebp)
	movl	%eax, %edx
	addl	%ecx, %eax
	subl	%ecx, %edx
	movl	%edx, -2312(%ebp)
	movl	_halfxdim16, %edx
	subl	%esi, %edx
	movl	%edx, -2320(%ebp)
	movzbl	_editorcolors+14, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	-2296(%ebp), %ecx
	movl	-2312(%ebp), %edx
	movl	-2320(%ebp), %eax
	call	_editorDraw2dLine
	movl	_halfxdim16, %eax
	movl	-2292(%ebp), %edx
	addl	_midydim16, %ebx
	leal	(%esi,%eax), %ecx
	subl	%esi, %eax
	movzbl	_editorcolors+14, %esi
	addl	%ebx, %edx
	movl	%esi, 4(%esp)
	subl	-2292(%ebp), %ebx
	movl	%ebx, (%esp)
	call	_editorDraw2dLine
	movswl	_numsectors, %eax
	cmpl	%edi, %eax
	jg	L703
L2367:
	movl	-2304(%ebp), %edi
	movl	-2324(%ebp), %ebx
	movl	$286331153, _drawlinepat
	cmpl	$2147483647, %edi
	je	L697
	movl	_midydim16, %edx
	movzbl	_editorcolors+14, %eax
	movl	_halfxdim16, %ecx
	movl	%eax, 4(%esp)
	leal	(%edi,%edx), %eax
	movl	%eax, (%esp)
	movl	%ecx, %eax
	call	_editorDraw2dLine
L697:
	movl	%ebx, _drawlinepat
	jmp	L696
	.p2align 4,,10
	.p2align 3
L2324:
	movzwl	_numwalls, %eax
	movzwl	_newnumwalls, %esi
	xorl	%ebx, %ebx
	movl	$0, -2296(%ebp)
	movw	%ax, -2304(%ebp)
L21:
	movl	_ydim, %eax
	movl	%eax, _ydim16
	sarl	%eax
	testw	%si, %si
	cmovs	-2304(%ebp), %si
	movl	%eax, _midydim16
	jmp	L38
	.p2align 4,,10
	.p2align 3
L18:
	cmpl	$719, %eax
	jg	L19
	movl	%eax, _lastpm16time
	movl	$LC24, (%esp)
	call	__printmessage16
	jmp	L19
	.p2align 4,,10
	.p2align 3
L5:
	jle	L8
	movl	%eax, %ebx
	leal	-1(%eax), %edx
	subl	%ecx, %ebx
	sarl	$3, %ebx
	je	L10
	imull	_synctics, %ebx
	subl	%ebx, %eax
	movl	%eax, %edx
L10:
	cmpl	%edx, %ecx
	cmovge	%ecx, %edx
	movl	%edx, _zoom
	jmp	L8
	.p2align 4,,10
	.p2align 3
L106:
	cmpb	$0, _isc
	je	L112
	movl	_totalclock, %eax
	cmpb	$0, _isc+1
	movl	$LC0, %edx
	movb	$0, _isc
	movl	$-1, %edi
	movl	%eax, _lastpm16time
	movl	$LC1, %eax
	cmovne	%edx, %eax
	movl	$LC33, (%esp)
	movl	%eax, 4(%esp)
	call	__printmessage16
	andl	$-4, -2316(%ebp)
	movw	%di, _pointhighlight
	movl	$3, -2348(%ebp)
	jmp	L112
	.p2align 4,,10
	.p2align 3
L202:
	testb	%al, %al
	jne	L207
	movl	-2316(%ebp), %eax
	notl	%eax
	testb	$17, %al
	setne	%al
	movzbl	%al, %eax
	leal	-1(%eax,%eax), %eax
	movl	%eax, -2296(%ebp)
	cmpw	$0, _highlightsectorcnt
	jg	L2369
L209:
	movzwl	_pointhighlight, %eax
	cmpw	$16383, %ax
	jle	L208
	leal	-16384(%eax), %ecx
	movl	_sprite, %edx
	movswl	%cx, %ecx
	imull	$44, %ecx, %ecx
	addl	%edx, %ecx
	leal	28(%ecx), %eax
	movswl	28(%ecx), %ebx
	subl	%edx, %eax
	movl	$-1171354717, %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	leal	1(%eax), %esi
	movzbl	_keystatus+42, %eax
	orb	_keystatus+54, %al
	movl	%esi, _spritechanged(,%edx,4)
	je	L227
	subl	-2296(%ebp), %ebx
	andl	$2047, %ebx
	movw	%bx, 28(%ecx)
	.p2align 4
	.p2align 3
L228:
	andl	$-49, _g_mouseBits
	andl	$-49, -2316(%ebp)
	cmpb	$0, _keystatus+70
	je	L229
L2349:
	movl	_pos, %eax
	movb	$0, _keystatus+70
	movl	%eax, _startpos
	movl	_pos+4, %eax
	movl	%eax, _startpos+4
	movl	_pos+8, %eax
	movl	%eax, _startpos+8
	movzwl	_ang, %eax
	movw	%ax, _startang
	movzwl	_cursectnum, %eax
	movw	%ax, _startsectnum
	movl	$1, %eax
	movw	%ax, _asksave
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC44, (%esp)
	call	__printmessage16
	cmpb	$0, _keystatus+63
	je	L230
L2350:
	cmpl	$200, _qsetmode
	je	L230
	call	_ExtShowSectorData.part.0
	jmp	L230
	.p2align 4,,10
	.p2align 3
L207:
	movl	$-1, -2296(%ebp)
	cmpw	$0, _highlightsectorcnt
	jle	L209
L2369:
	call	__ZL22hl_all_bunch_sectors_pv.lto_priv.0
	testl	%eax, %eax
	je	L210
	movzwl	_highlightsectorcnt, %edx
	testw	%dx, %dx
	jle	L209
	movzbl	_keystatus+56, %eax
	orb	_keystatus+184, %al
	je	L213
	movl	$1, (%esp)
	movl	$2047, %ecx
	xorl	%edx, %edx
	movl	$LC42, %eax
	call	__getnumber16.constprop.0
	movl	%eax, %ebx
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	testl	%ebx, %ebx
	jne	L214
	movl	$LC32, (%esp)
	call	__printmessage16
L2303:
	xorl	%edx, %edx
	movw	%dx, _keystatus+51
	jmp	L228
	.p2align 4,,10
	.p2align 3
L2336:
	cmpw	$0, _numsectors
	jle	L103
	movl	$1, %eax
	xorl	%ebx, %ebx
	jmp	L105
	.p2align 6
	.p2align 4,,10
	.p2align 3
L104:
	movswl	_numsectors, %eax
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jle	L103
	movl	%ebx, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
L105:
	movl	%ebx, %edx
	sarl	$3, %edx
	movzbl	_hlsectorbitmap(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%al, %cl
	jne	L104
	movswl	%bx, %eax
	movl	$1, %ecx
	movl	$-1, %edx
	call	_fillsector_maybetrans.isra.0
	jmp	L104
	.p2align 4,,10
	.p2align 3
L75:
	movzwl	-2304(%ebp), %edi
	cmpw	%di, %dx
	jl	L77
	movswl	%di, %esi
	movswl	%dx, %eax
	movl	%edx, %edi
	subl	$1, %esi
	.p2align 5
	.p2align 4
	.p2align 3
L78:
	movl	%eax, %ecx
	movl	%eax, %edx
	subl	$1, %eax
	sarl	$3, %ecx
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
	orb	%dl, _editwall(%ecx)
	cmpl	%esi, %eax
	jne	L78
	movl	%edi, %edx
L77:
	subl	$1, %edx
	movswl	%dx, %esi
	jmp	L76
L2465:
	testw	%cx, %cx
	je	L366
	movl	-2316(%ebp), %edx
	andl	$5, %edx
	cmpl	$1, %edx
	je	L416
	cmpb	$0, _keystatus+54
	je	L2370
L416:
	testw	%ax, %ax
	je	L424
	cmpw	$-1, _pointhighlight
	je	L417
L418:
	movl	%eax, %edx
	cmpb	$0, _keystatus+54
	je	L366
L417:
	movss	_searchx, %xmm0
	xorl	%eax, %eax
	movss	_searchy, %xmm5
	movw	%ax, _highlightcnt
	unpcklps	%xmm5, %xmm0
	movlps	%xmm0, -2232(%ebp)
	movlps	%xmm0, -2240(%ebp)
L425:
	movzwl	__ZL15oldmousebstatus.lto_priv.0, %eax
	movl	-2316(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %edx
	andl	$1, %eax
	andl	$1, %ecx
	cmpl	%eax, %edx
	jge	L595
	cmpw	$0, _highlightsectorcnt
	jns	L596
	xorl	%eax, %eax
	call	__ZL18backup_drawn_wallsi.lto_priv.0
	testl	%eax, %eax
	jne	L2371
	movzwl	_pointhighlight, %ecx
	movswl	_highlightcnt, %edx
	movl	$1, -2252(%ebp)
	movw	%cx, -2292(%ebp)
	testw	%dx, %dx
	jle	L599
	xorl	%eax, %eax
	jmp	L602
	.p2align 5
	.p2align 4,,10
	.p2align 3
L600:
	addl	$1, %eax
	cmpl	%eax, %edx
	je	L599
L602:
	cmpw	%cx, _highlight(%eax,%eax)
	jne	L600
	movl	$0, -2252(%ebp)
	xorl	%ebx, %ebx
	jmp	L601
L603:
	movswl	_highlightcnt, %eax
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jle	L2292
L601:
	movzwl	_highlight(%ebx,%ebx), %eax
	movl	%eax, %edx
	andl	$49152, %edx
	cmpl	$16384, %edx
	jne	L603
	andl	$16383, %eax
	addl	$1, %ebx
	call	__ZL13updatesprite1s.lto_priv.0
	movswl	_highlightcnt, %eax
	cmpl	%ebx, %eax
	jg	L601
L2292:
	movzwl	_pointhighlight, %eax
	movw	%ax, -2292(%ebp)
	movswl	-2292(%ebp), %ecx
	movl	%ecx, %eax
	andl	$49152, %eax
	je	L1431
	cmpl	$16384, %eax
	jne	L622
	movl	$-1, -2424(%ebp)
	movl	-2292(%ebp), %eax
	movl	$-1, -2420(%ebp)
	andl	$16383, %eax
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	(%eax), %edx
	movl	4(%eax), %eax
	movl	%edx, -2264(%ebp)
	movl	%eax, -2268(%ebp)
L623:
	movl	-2268(%ebp), %edx
	movl	-2264(%ebp), %eax
	call	__ZL16maybedeletewallsii.lto_priv.0
	movswl	_pointhighlight, %ecx
	jmp	L598
	.p2align 4,,10
	.p2align 3
L2329:
	call	_editorSetup2dSideView.part.0
	jmp	L42
	.p2align 4,,10
	.p2align 3
L2340:
	movl	_xdim, %eax
	movl	_m32_2d3dsize, %ebx
	cltd
	leal	-4(%eax), %ecx
	idivl	%ebx
	subl	%eax, %ecx
	movl	%ecx, _m32_2d3d
	movl	_ydim, %ecx
	movl	%ecx, %eax
	cltd
	idivl	%ebx
	subl	%eax, %ecx
	leal	-30(%ecx), %eax
	movl	%eax, _m32_2d3d+4
	movl	$_cursectnum, 12(%esp)
	movl	_pos+8, %eax
	movl	%eax, 8(%esp)
	movl	_pos+4, %eax
	movl	%eax, 4(%esp)
	movl	_pos, %eax
	movl	%eax, (%esp)
	call	_updatesectorz
	movswl	_cursectnum, %eax
	cmpw	$-1, %ax
	je	L2372
L150:
	leal	-2072(%ebp), %edi
	leal	-2184(%ebp), %ebx
	movl	%edi, 12(%esp)
	movl	%ebx, 16(%esp)
	movl	_pos+4, %edx
	movl	%edx, 8(%esp)
	movl	_pos, %edx
	movl	%edx, 4(%esp)
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	-2184(%ebp), %eax
	movl	-2072(%ebp), %edi
	movl	_pos+8, %ecx
	subl	$1024, %eax
	leal	1024(%edi), %edx
	cmpl	%ecx, %eax
	jge	L152
	movl	%eax, _pos+8
	movl	%eax, %ecx
L152:
	cmpl	%ecx, %edx
	jle	L153
	movl	%edx, _pos+8
L153:
	call	_videoEndDrawing
	movl	_rendmode, %eax
	movl	_m32_2d3dsize, %ecx
	movl	$0, _rendmode
	movl	_m32_2d3d, %ebx
	movl	_m32_2d3d+4, %esi
	movl	$-1, _oxyaspect
	movl	%eax, -2292(%ebp)
	movl	_xdim, %eax
	cltd
	idivl	%ecx
	leal	-1(%ebx,%eax), %edi
	movl	_ydim, %eax
	cltd
	idivl	%ecx
	movl	%edi, %ecx
	movl	%esi, %edx
	leal	-1(%esi,%eax), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_videoSetViewableArea
	cmpl	$2, _rendmode
	jg	L2373
	call	_videoBeginDrawing
	movl	_windowxy1+4, %edi
	cmpl	%edi, _windowxy2+4
	jl	L156
	movl	_windowxy1, %eax
	movl	_ylookup, %edx
	movl	_windowxy2, %ebx
	movl	_frameplace, %esi
	addl	(%edx,%edi,4), %esi
	subl	%eax, %ebx
	addl	%eax, %esi
	addl	$1, %ebx
	.p2align 4
	.p2align 3
L157:
	movl	%esi, (%esp)
	addl	$1, %edi
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	call	_memset
	movl	_ylookup, %eax
	addl	4(%eax), %esi
	cmpl	_windowxy2+4, %edi
	jle	L157
L156:
	call	_videoEndDrawing
	call	__Z16timerUpdateClockv
L155:
	movl	_searchx, %esi
	movl	_searchy, %ebx
	movl	_xdim, %eax
	movl	%esi, %ecx
	movl	%ebx, %edx
	subl	_m32_2d3d, %ecx
	subl	_m32_2d3d+4, %edx
	subl	$13, %eax
	movl	%ecx, _searchx
	movl	%edx, _searchy
	cmpl	%eax, %ecx
	jle	L158
	movl	%eax, _searchx
	movl	%eax, %ecx
L158:
	cmpl	$11, %ecx
	jg	L159
	movl	$12, _searchx
L159:
	movl	_ydim, %eax
	subl	$13, %eax
	cmpl	%eax, %edx
	jle	L160
	movl	%eax, _searchy
	movl	%eax, %edx
L160:
	cmpl	$11, %edx
	jg	L161
	movl	$12, _searchy
L161:
	call	_M32_DrawRoomsAndMasks
	movl	-2292(%ebp), %eax
	movl	%esi, _searchx
	xorl	%edx, %edx
	movl	%ebx, _searchy
	movl	%eax, _rendmode
	movl	_xdim, %eax
	movl	$-1, _oxyaspect
	leal	-1(%eax), %ecx
	movl	_ydim, %eax
	subl	$1, %eax
	movl	%eax, (%esp)
	xorl	%eax, %eax
	call	_videoSetViewableArea
	call	_videoBeginDrawing
	movl	_xdim, %eax
	movl	_m32_2d3d, %ebx
	movl	_m32_2d3d+4, %esi
	cltd
	idivl	_m32_2d3dsize
	movl	%esi, %edx
	leal	(%eax,%ebx), %ecx
	movzbl	_editorcolors+15, %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, %eax
	call	_editorDraw2dLine
	movl	_xdim, %eax
	movl	_m32_2d3dsize, %esi
	movl	_m32_2d3d+4, %ebx
	cltd
	idivl	%esi
	addl	_m32_2d3d, %eax
	movl	%eax, %ecx
	movzbl	_editorcolors+15, %eax
	movl	%eax, 4(%esp)
	movl	_ydim, %eax
	cltd
	idivl	%esi
	movl	%ebx, %edx
	addl	%ebx, %eax
	movl	%eax, (%esp)
	movl	%ecx, %eax
	call	_editorDraw2dLine
	movzbl	_editorcolors+15, %eax
	movl	_m32_2d3d+4, %ebx
	movl	_m32_2d3d, %ecx
	movl	%eax, 4(%esp)
	movl	_ydim, %eax
	cltd
	idivl	_m32_2d3dsize
	movl	%ebx, %edx
	addl	%ebx, %eax
	movl	%eax, (%esp)
	movl	%ecx, %eax
	call	_editorDraw2dLine
	movl	_ydim, %eax
	movl	_m32_2d3dsize, %ecx
	movl	_m32_2d3d, %esi
	cltd
	idivl	%ecx
	addl	_m32_2d3d+4, %eax
	movl	%eax, %ebx
	movl	_xdim, %eax
	cltd
	idivl	%ecx
	movl	%ebx, %edx
	leal	(%eax,%esi), %ecx
	movzbl	_editorcolors+15, %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	movl	%esi, %eax
	call	_editorDraw2dLine
L151:
	cmpl	$200, _qsetmode
	je	L149
	movl	_m32_2d3dmode, %ebx
	testl	%ebx, %ebx
	je	L149
	movswl	_cursectnum, %eax
	cmpl	$4095, %eax
	ja	L149
	movl	_m32_2d3d, %esi
	movl	_searchx, %ecx
	cmpl	%ecx, %esi
	jge	L149
	movl	_xdim, %eax
	movl	_m32_2d3dsize, %ebx
	cltd
	idivl	%ebx
	addl	%esi, %eax
	cmpl	%eax, %ecx
	jge	L149
	movl	_m32_2d3d+4, %esi
	movl	_searchy, %ecx
	cmpl	%ecx, %esi
	jge	L149
	movl	_ydim, %eax
	cltd
	idivl	%ebx
	addl	%esi, %eax
	cmpl	%eax, %ecx
	jl	L162
	jmp	L149
	.p2align 4,,10
	.p2align 3
L2330:
	imull	_m32_sidecos, %ebx
	movl	_startpos+8, %eax
	subl	_pos+8, %eax
	movl	%ebx, %edx
/APP
 # 672 "source/build/src/2d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	addl	%edx, %edi
	movl	%edi, -2276(%ebp)
	jmp	L55
L2360:
	movzwl	__ZL15oldmousebstatus.lto_priv.0, %eax
	movl	-2316(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %edx
	andl	$1, %eax
	andl	$1, %ecx
	cmpl	%eax, %edx
	jl	L596
	.p2align 4
	.p2align 3
L595:
	testl	%edx, %edx
	je	L596
L419:
	movl	-2316(%ebp), %eax
	andl	$2, %eax
	movl	%eax, -2304(%ebp)
	cmpw	$0, _highlightsectorcnt
	jle	L624
	testw	%cx, %cx
	je	L2374
	cmpw	$1, -2356(%ebp)
	je	L637
L2306:
	movl	-2304(%ebp), %ecx
	testl	%ecx, %ecx
	je	L1495
	movl	$-1, %edx
	movzwl	_pointhighlight, %ecx
	movl	$1, %esi
	movw	%dx, -2356(%ebp)
L631:
	testw	%cx, %cx
	jg	L683
L655:
	cmpw	$0, _highlightcnt
	jg	L683
	cmpw	$0, _highlightsectorcnt
	jg	L683
	.p2align 4
	.p2align 3
L686:
	movl	$_cursectnum, 12(%esp)
	movl	_pos+8, %eax
	movl	%eax, 8(%esp)
	movl	_pos+4, %eax
	movl	%eax, 4(%esp)
	movl	_pos, %eax
	movl	%eax, (%esp)
	call	_updatesectorz
L1430:
	movl	_circlewall, %edx
	cmpl	$-1, %edx
	je	L705
	cmpb	$0, _keystatus+74
	jne	L706
	testb	$32, -2316(%ebp)
	je	L708
	movzbl	_keystatus+29, %eax
	orb	_keystatus+157, %al
	jne	L708
	.p2align 4
	.p2align 3
L706:
	movzwl	-2354(%ebp), %edi
	movb	$0, _keystatus+74
	cmpw	$2, %di
	leal	-1(%edi), %eax
	cmovl	%edi, %eax
	andl	$-33, _g_mouseBits
	andl	$-33, -2316(%ebp)
	movw	%ax, -2354(%ebp)
L708:
	cmpb	$0, _keystatus+78
	jne	L711
	testb	$16, -2316(%ebp)
	je	L705
	movzbl	_keystatus+29, %eax
	orb	_keystatus+157, %al
	jne	L705
	.p2align 4
	.p2align 3
L711:
	movzwl	-2354(%ebp), %edi
	movb	$0, _keystatus+78
	cmpw	$62, %di
	leal	1(%edi), %eax
	cmovg	%edi, %eax
	andl	$-17, _g_mouseBits
	andl	$-17, -2316(%ebp)
	movw	%ax, -2354(%ebp)
L705:
	cmpb	$0, _keystatus+61
	je	L715
	movl	_m32_sideview, %eax
	movb	$0, _keystatus+61
	testl	%eax, %eax
	jne	L716
	movzwl	_newnumwalls, %eax
	testw	%ax, _joinsector
	jns	L717
	testl	%edx, %edx
	js	L2375
L717:
	movl	$LC96, (%esp)
	call	_message
L715:
	movl	_m32_sideview, %eax
	testl	%eax, %eax
	je	L720
	movzbl	_keystatus+16, %ecx
	orb	_keystatus+17, %cl
	je	L721
	movzbl	_keystatus+16, %eax
	movl	$1, %edx
	movzbl	_keystatus+29, %ebx
	movl	%edx, %ecx
	addl	%eax, %eax
	subl	%eax, %ecx
	movsbl	_sideview_reversehrot, %eax
	addl	%eax, %eax
	subl	%eax, %edx
	movzwl	_m32_sideang, %eax
	imull	%ecx, %edx
	orb	_keystatus+157, %bl
	je	L722
	testb	$63, %al
	je	L723
	sall	$5, %edx
	addl	%edx, %eax
	andl	$1984, %eax
L724:
	xorl	%edi, %edi
	movw	%ax, _m32_sideang
	movw	%di, _keystatus+16
L725:
	movl	%eax, 4(%esp)
	movl	$LC98, (%esp)
	call	__printmessage16
	movl	_m32_sideview, %esi
	testl	%esi, %esi
	je	L720
L721:
	movzbl	_buildkeys+8, %eax
	movzbl	_keystatus(%eax), %edx
	movzbl	_keystatus+42, %eax
	orb	_keystatus+54, %al
	jne	L726
	testb	$48, -2316(%ebp)
	jne	L726
	testb	%dl, %dl
	jne	L739
	movzbl	_buildkeys+9, %eax
	cmpb	$0, _keystatus(%eax)
	je	L735
L756:
	movl	_zoom, %eax
	cmpl	$16, %eax
	jle	L735
L754:
	movl	_ztarget, %esi
	movl	_synctics, %ebx
	movzbl	_keystatus+42, %edx
	orb	_keystatus+54, %dl
	movl	%esi, %edi
	movzbl	%dl, %edx
	sarl	$4, %edi
	leal	(%edx,%edx), %ecx
	imull	%ebx, %edi
	sarl	%cl, %edi
	subl	%edi, %esi
	movl	%esi, _ztarget
	movl	%esi, %ecx
	cmpl	$63, %eax
	jle	L1424
L760:
	testb	$32, -2316(%ebp)
	jne	L2295
L750:
	movzbl	_keystatus+56, %eax
	orb	_keystatus+184, %al
	jne	L2376
L761:
	movl	_ztarget, %eax
	movl	$39936, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$16, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, _ztarget
	movl	%eax, 4(%esp)
	movl	$LC100, (%esp)
	call	__printmessage16
L735:
	cmpb	$0, _keystatus+34
	je	L762
	movzbl	_keystatus+29, %eax
	orb	_keystatus+157, %al
	movb	$0, _keystatus+34
	je	L763
	movl	_g_alwaysLockMouse, %ebx
	xorl	%eax, %eax
	movl	$LC10, %edx
	testl	%ebx, %ebx
	sete	%al
	movl	%eax, _g_alwaysLockMouse
	movl	$LC11, %eax
	cmove	%edx, %eax
	movl	$LC101, (%esp)
	movl	%eax, 4(%esp)
	call	_message
	xorl	%eax, %eax
	call	_editorMaybeLockMouse
L762:
	cmpb	$0, _keystatus+38
	je	L768
	movzbl	_keystatus+42, %eax
	orb	_keystatus+54, %al
	movb	$0, _keystatus+38
	je	L769
	movl	_searchlock, %edx
	movl	$1, %eax
	subl	%edx, %eax
	cmpl	$1, %edx
	movl	$LC10, %edx
	movl	%eax, _searchlock
	movl	$LC11, %eax
	cmovne	%edx, %eax
	movl	$LC105, (%esp)
	movl	%eax, 4(%esp)
	call	_silentmessage
L768:
	cmpb	$0, _keystatus+36
	je	L772
	movb	$0, _keystatus+36
	cmpw	$0, _newnumwalls
	jns	L2377
	movswl	_highlightsectorcnt, %eax
	testw	%ax, %ax
	jle	L774
	movzbl	_keystatus+29, %edx
	orb	_keystatus+157, %dl
	je	L774
	movl	$-1, -2292(%ebp)
	movss	-2292(%ebp), %xmm0
	movl	$0, -2208(%ebp)
	movl	$0, -2204(%ebp)
	shufps	$0, %xmm0, %xmm0
	movups	%xmm0, -2200(%ebp)
	cmpl	$256, _numyaxbunches
	je	L2378
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	$_highlightsector, %edx
	call	__ZL18sectors_componentssPKsii.part.0.lto_priv.0
	movl	%eax, -2364(%ebp)
	cmpl	$2, %eax
	je	L2379
	movl	$LC110, (%esp)
	call	_message
	.p2align 4
	.p2align 3
L772:
	movl	$2, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L978:
	cmpb	$0, _keystatus(%eax)
	jne	L2380
	addl	$1, %eax
	cmpl	$12, %eax
	jne	L978
L977:
	movzbl	_keystatus+56, %eax
	orb	_keystatus+184, %al
	je	L979
	cmpb	$0, _keystatus+31
	je	L982
	movzwl	_linehighlight, %eax
	movb	$0, _keystatus+31
	testw	%ax, %ax
	js	L982
	movswl	%ax, %ebx
	movl	%ebx, %eax
	sall	$5, %eax
	addl	_wall, %eax
	cmpw	$-1, 10(%eax)
	je	L2381
	.p2align 4
	.p2align 3
L982:
	cmpb	$0, _keystatus+46
	je	L1000
	cmpw	$0, _highlightsectorcnt
	jg	L2382
	cmpw	$0, _highlightcnt
	jg	L2383
	movl	_circlewall, %ebx
	testl	%ebx, %ebx
	js	L1004
	movl	$-1, _circlewall
L1002:
	movb	$0, _keystatus+46
L1000:
	cmpb	$0, _keystatus+57
	jne	L2384
	movl	_circlewall, %eax
	testl	%eax, %eax
	jns	L2385
	.p2align 4
	.p2align 3
L1035:
	cmpb	$0, _keystatus+28
	je	L1207
	movb	$0, _keystatus+28
	cmpb	$0, _keystatus+42
	je	L1208
	cmpb	$0, _keystatus+29
	je	L1208
	movl	_numyaxbunches, %eax
	testl	%eax, %eax
	je	L1209
	movl	$-1, %eax
	call	_fade_editor_screen
	xorl	%edx, %edx
	movl	$LC165, %eax
	call	_ask_if_sure
	testl	%eax, %eax
	jne	L1209
	.p2align 4
	.p2align 3
L1207:
	cmpb	$0, _keystatus+14
	je	L1241
	movzwl	_newnumwalls, %edx
	movswl	_numwalls, %eax
	movb	$0, _keystatus+14
	cmpw	%ax, %dx
	jl	L1242
	movswl	%dx, %ecx
	addl	$1, %eax
	movl	$1, __ZZL14overheadeditorvE14backspace_last
	cmpl	%eax, %ecx
	je	L1243
	cmpb	$0, _keystatus+29
	jne	L1243
	subl	$1, %edx
	movw	%dx, _newnumwalls
	.p2align 4
	.p2align 3
L1245:
	movzbl	_keystatus+32, %edx
	movl	%edx, %eax
	orb	_keystatus+211, %al
	je	L1247
	movzbl	_keystatus+29, %eax
	orb	_keystatus+157, %al
	je	L1249
	cmpw	$0, _numwalls
	jg	L2386
L1249:
	movzwl	_pointhighlight, %eax
	testw	%ax, %ax
	js	L1247
	movl	%eax, %ecx
	movswl	%ax, %ebx
	andl	$49152, %ecx
	cmpl	$16384, %ecx
	je	L2387
	movzbl	_keystatus+42, %eax
	orb	_keystatus+54, %al
	orb	%dl, %al
	jne	L2388
L1288:
	movb	$0, _keystatus+211
	movb	$0, _keystatus+32
L1247:
	movzbl	_keystatus+210, %eax
	orb	_keystatus+23, %al
	je	L191
	cmpw	$0, _highlightsectorcnt
	jg	L2389
	cmpw	$0, _highlightcnt
	jg	L2390
	movzwl	-2366(%ebp), %eax
	testw	%ax, %ax
	jns	L2391
L1293:
	movb	$0, _keystatus+23
	movb	$0, _keystatus+210
L191:
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	jne	L1310
	movl	$1, %eax
	call	_videoShowFrame.part.0
L1310:
	movl	_totalclock, %eax
	movl	%eax, %edx
	subl	_lockclock, %edx
	movl	%eax, _lockclock
	movzbl	_buildkeys+14, %eax
	movl	%edx, _synctics
	cmpb	$0, _keystatus(%eax)
	jne	L2392
L1311:
	movl	_quickmapcycling, %eax
	testl	%eax, %eax
	je	L1314
	cmpb	$0, _keystatus+45
	je	L1314
	movzbl	_keystatus+29, %eax
	orb	_keystatus+157, %al
	je	L1314
	cmpw	$0, _asksave
	je	L1543
	movl	$LC182, (%esp)
	call	_message
	.p2align 4
	.p2align 3
L1314:
	cmpb	$0, _keystatus+1
	je	L1332
	cmpw	$0, _joinsector
	jns	L2393
L1333:
	movb	$0, _keystatus+1
	movl	$LC185, (%esp)
	call	__printmessage16
	movl	_pathsearchmode, %eax
	testl	%eax, %eax
	jne	L1334
	movl	$47, 4(%esp)
	movl	$__ZL13boardfilename.lto_priv.0, (%esp)
	call	_strrchr
	movl	%eax, %edx
	leal	1(%eax), %eax
	testl	%edx, %edx
	je	L1334
L1336:
	movl	$0, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$-1, 12(%esp)
	movzbl	_editorcolors+15, %eax
	movl	%eax, 8(%esp)
	movl	_ydim, %eax
	movl	$128, (%esp)
	subl	$38, %eax
	movl	%eax, 4(%esp)
	call	_printext16
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	jne	L1337
	movl	$1, %eax
	call	_videoShowFrame.part.0
L1337:
	xorl	%eax, %eax
L1338:
	movl	$0, _g_keyAsciiFIFO(%eax)
	addl	$16, %eax
	movl	$0, _g_keyAsciiFIFO-12(%eax)
	movl	$0, _g_keyAsciiFIFO-8(%eax)
	movl	$0, _g_keyAsciiFIFO-4(%eax)
	cmpl	$64, %eax
	jb	L1338
	movb	$0, _g_keyAsciiEnd
	movb	$0, _g_keyAsciiPos
L1340:
	call	_handleevents
	movl	$1, (%esp)
	call	*__imp__Sleep@4
	movzbl	_g_keyAsciiPos, %eax
	subl	$4, %esp
	cmpb	_g_keyAsciiEnd, %al
	je	L2394
	movzbl	%al, %edx
	addl	$1, %eax
	andl	$63, %eax
	movzbl	_g_keyAsciiFIFO(%edx), %edx
	movb	%al, _g_keyAsciiPos
	cmpb	$0, _keystatus+1
	jne	L1362
	subl	$65, %edx
	cmpb	$52, %dl
	ja	L1340
	movzbl	%dl, %eax
	jmp	*L1344(,%eax,4)
	.section .rdata,"dr"
	.align 4
L1344:
	.long	L1351
	.long	L1340
	.long	L1340
	.long	L1340
	.long	L1340
	.long	L1340
	.long	L1340
	.long	L1340
	.long	L1340
	.long	L1340
	.long	L1340
	.long	L1350
	.long	L1340
	.long	L1349
	.long	L1340
	.long	L1340
	.long	L1348
	.long	L1347
	.long	L1346
	.long	L1345
	.long	L1343
	.long	L1340
	.long	L1340
	.long	L1340
	.long	L1340
	.long	L1340
	.long	L1340
	.long	L1340
	.long	L1340
	.long	L1340
	.long	L1340
	.long	L1340
	.long	L1351
	.long	L1340
	.long	L1340
	.long	L1340
	.long	L1340
	.long	L1340
	.long	L1340
	.long	L1340
	.long	L1340
	.long	L1340
	.long	L1340
	.long	L1350
	.long	L1340
	.long	L1349
	.long	L1340
	.long	L1340
	.long	L1348
	.long	L1347
	.long	L1346
	.long	L1345
	.long	L1343
	.text
L1343:
	movzwl	_newnumwalls, %eax
	testw	%ax, _joinsector
	js	L2395
L1393:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC196, (%esp)
	call	__printmessage16
L1362:
	xorl	%eax, %eax
L1403:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1403
	.p2align 4
	.p2align 3
L1332:
	movl	$-1, %edx
	movl	$6, %eax
	call	__Z10VM_OnEventii
L188:
	movzbl	_buildkeys+14, %eax
	movzbl	_keystatus(%eax), %eax
	shrb	%al
	je	L1405
L4:
	cmpw	$0, _highlightsectorcnt
	jle	L1406
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L1410:
	movswl	_highlightsector(%ebx,%ebx), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %esi
	movswl	2(%eax), %edi
	addl	%esi, %edi
	cmpl	%edi, %esi
	jge	L1407
	.p2align 4
	.p2align 3
L1409:
	movl	%esi, %edx
	sall	$5, %edx
	addl	_wall, %edx
	movswl	10(%edx), %eax
	testw	%ax, %ax
	js	L1408
	movswl	12(%edx), %edx
	call	_checksectorpointer
L1408:
	movswl	_highlightsector(%ebx,%ebx), %edx
	movswl	%si, %eax
	addl	$1, %esi
	call	_checksectorpointer
	cmpl	%esi, %edi
	jne	L1409
L1407:
	movswl	_highlightsectorcnt, %eax
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jg	L1410
L1406:
	movl	$0, _chsecptr_onextwall
	call	_fixspritesectors.isra.0
	movl	_upscalefactor, %edx
	movzbl	_fullscreen, %eax
	movl	%edx, 4(%esp)
	movl	_bppgame, %edx
	movl	%edx, (%esp)
	movl	_yres, %ecx
	movl	_xres, %edx
	call	_videoSetGameMode
	cmpl	$-1, %eax
	je	L2396
	movss	_g_videoGamma, %xmm0
	xorps	%xmm2, %xmm2
	subss	LC202, %xmm0
	mulss	LC203, %xmm0
	movaps	%xmm0, %xmm1
	cmpnltss	%xmm2, %xmm1
	movss	LC204, %xmm2
	andps	%xmm0, %xmm1
	movaps	%xmm2, %xmm0
	cmpltss	%xmm1, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm1, %xmm0
	orps	%xmm2, %xmm0
	cvttss2sil	%xmm0, %eax
	movzbl	%al, %eax
	call	_videoSetPalette.constprop.0
	movl	-2428(%ebp), %eax
	movl	_searchx, %edx
	movl	%eax, _pos+8
	movl	$8, %eax
	cmpl	$8, %edx
	jle	L1416
	movl	_xdim, %eax
	subl	$9, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
L1416:
	movl	_ydim, %ebx
	movl	%eax, _searchx
	leal	-144(%ebx), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%ebx, %eax
	imull	_searchy
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.2
	movl	%eax, %edx
	leal	-9(%ebx), %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	cmpl	$8, %edx
	movl	$8, %edx
	cmovle	%edx, %eax
	movl	$-1, %edx
	movl	%eax, _searchy
	xorl	%eax, %eax
	call	__Z10VM_OnEventii
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
L1346:
	.cfi_restore_state
	call	_CheckMapCorruption.constprop.0
	cmpl	$3, %eax
	jle	L1390
	movl	$-1, %eax
	call	_fade_editor_screen
	xorl	%edx, %edx
	movl	$LC193, %eax
	call	_ask_if_sure
	testl	%eax, %eax
	je	L1362
L1390:
	xorl	%eax, %eax
	call	__ZL24SaveBoardAndPrintMessagePKc.lto_priv.0
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	jne	L1362
L2302:
	movl	$1, %eax
	call	_videoShowFrame.part.0
	jmp	L1362
L1347:
	movzwl	_newnumwalls, %eax
	testw	%ax, _joinsector
	jns	L1393
	movl	_circlewall, %edi
	testl	%edi, %edi
	jns	L1393
	testb	$1, -2316(%ebp)
	jne	L1393
	cmpb	$0, _isc
	jne	L1393
	movl	$1, %eax
	call	_map_undoredo
	testl	%eax, %eax
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	je	L1394
	movl	$LC197, (%esp)
	call	__printmessage16
	jmp	L1362
	.p2align 4,,10
	.p2align 3
L1348:
	xorl	%edx, %edx
	movl	$LC199, %eax
	call	_ask_if_sure
	testl	%eax, %eax
	je	L2312
	call	_CheckMapCorruption.constprop.0
	cmpl	$3, %eax
	jg	L1548
	movl	$2, %edx
	movl	$LC20, %eax
	call	_ask_if_sure
	testl	%eax, %eax
	jne	L2397
L1397:
	movzbl	_keystatus+1, %eax
	orb	_keystatus+46, %al
	je	L2398
	movl	_totalclock, %eax
	movb	$0, _keystatus+1
	movb	$0, _keystatus+46
	movl	%eax, _lastpm16time
	movb	$0, _quitevent
	movl	$LC200, (%esp)
	call	__printmessage16
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	jne	L1398
	movl	$1, %eax
	call	_videoShowFrame.part.0
L1398:
	cmpb	$0, _keystatus+1
	jne	L1333
	jmp	L1332
	.p2align 4,,10
	.p2align 3
L1349:
	xorl	%edx, %edx
	movl	$LC186, %eax
	call	_ask_if_sure
	testl	%eax, %eax
	je	L1362
	movl	$-1, -2292(%ebp)
	cmpw	$0, _highlightsectorcnt
	jg	L2399
L1352:
	movl	$-1, %eax
	movl	$-858993459, %ebx
	movw	%ax, _highlightcnt
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_show2dwall, (%esp)
	call	_memset
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_show2dsprite, (%esp)
	call	_memset
	movl	_sector, %edi
	leal	38(%edi), %ecx
	leal	163878(%edi), %esi
	.p2align 6
	.p2align 4
	.p2align 3
L1353:
	movl	%ecx, %edx
	addl	$40, %ecx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebx
	movl	$-1, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, -40(%ecx)
	cmpl	%esi, %ecx
	jne	L1353
	movl	_wall, %ecx
	leal	30(%ecx), %eax
	leal	524318(%ecx), %ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1354:
	movl	%eax, %edx
	addl	$32, %eax
	subl	%ecx, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movl	$-1, %edx
	movw	%dx, -32(%eax)
	cmpl	%eax, %ebx
	jne	L1354
	movl	_sprite, %edi
	movl	$-1171354717, %ebx
	leal	42(%edi), %ecx
	leal	720938(%edi), %esi
	.p2align 6
	.p2align 4
	.p2align 3
L1355:
	movl	%ecx, %edx
	addl	$44, %ecx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebx
	movl	$-1, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, -44(%ecx)
	cmpl	%esi, %ecx
	jne	L1355
	movl	$-1, %ecx
	movl	$-1, %ebx
	movl	$-1, _circlewall
	movw	%cx, _newnumwalls
	movw	%bx, _joinsector
	movl	$0, _chsecptr_onextwall
	call	__ZL22reset_default_mapstatev.lto_priv.0
	movb	$0, __ZL13boardfilename.lto_priv.0+12
	movl	$1651991918, __ZL13boardfilename.lto_priv.0
	movl	$1685217647, __ZL13boardfilename.lto_priv.0+4
	movl	$1885433134, __ZL13boardfilename.lto_priv.0+8
	call	__ZL18editorEventLoadMapPKc.constprop.0
	movl	_mapstate, %eax
	testl	%eax, %eax
	je	L1356
	movl	$0, 84(%eax)
L1357:
	movl	%eax, %esi
	movl	80(%eax), %eax
	testl	%eax, %eax
	jne	L1357
L1360:
	movl	%esi, %edi
	movl	84(%esi), %esi
	xorl	%ebx, %ebx
L1359:
	movl	32(%edi,%ebx,4), %eax
	testl	%eax, %eax
	je	L1358
	subl	$1, (%eax)
	je	L2400
L1358:
	addl	$1, %ebx
	cmpl	$3, %ebx
	jne	L1359
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	testl	%esi, %esi
	jne	L1360
	movl	$0, _mapstate
L1356:
	movl	-2292(%ebp), %edx
	movl	$1, _map_revision
	testl	%edx, %edx
	je	L2401
L1361:
	call	_CheckMapCorruption.constprop.0
	movl	$-1, %eax
	movw	%ax, -2356(%ebp)
	movl	$7, %eax
	movw	%ax, -2354(%ebp)
	jmp	L1362
L1350:
	call	__ZL10menuselectv.lto_priv.0
	cmpl	$-1, %eax
	je	L2312
	cmpw	$0, _highlightsectorcnt
	jg	L2402
	xorl	%eax, %eax
	movl	$4, %edx
	call	_LoadBoard
	testl	%eax, %eax
	jne	L2403
	movl	_pos+8, %eax
	movl	$-1, %ecx
	movl	$-1, %ebx
	movl	$-1, _circlewall
	movw	%cx, _newnumwalls
	movw	%bx, _joinsector
	movl	%eax, -2428(%ebp)
L2301:
	movl	$-1, %eax
	movl	$7, %edx
	movw	%ax, -2356(%ebp)
	movw	%dx, -2354(%ebp)
L2312:
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	je	L2302
	jmp	L1362
L1345:
	call	_test_map.constprop.0
	jmp	L1362
L1351:
	call	_CheckMapCorruption.constprop.0
	movl	$__ZL13boardfilename.lto_priv.0, 4(%esp)
	movl	$__ZL21selectedboardfilename.lto_priv.0, (%esp)
	movl	%eax, %esi
	call	_strcpy
	movl	$47, 4(%esp)
	movl	$__ZL13boardfilename.lto_priv.0, (%esp)
	call	_strrchr
	testl	%eax, %eax
	je	L1372
	leal	1(%eax), %ebx
	cmpl	$__ZL13boardfilename.lto_priv.0-1, %eax
	je	L1372
	movl	%ebx, (%esp)
	call	_strlen
	movl	%ebx, 4(%esp)
	addl	$1, %eax
	movl	$__ZL13boardfilename.lto_priv.0, (%esp)
	movl	%eax, 8(%esp)
	call	_memmove
L1372:
	xorl	%ebx, %ebx
	cmpb	$0, __ZL13boardfilename.lto_priv.0
	jne	L1375
	jmp	L1373
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2405:
	cmpl	$64, %ebx
	je	L2404
L1375:
	movl	%ebx, %eax
	addl	$1, %ebx
	cmpb	$0, __ZL13boardfilename.lto_priv.0(%ebx)
	jne	L2405
	cmpl	$3, %ebx
	jg	L1376
L1373:
	movb	$0, __ZL13boardfilename.lto_priv.0(%ebx)
	xorl	%eax, %eax
L1377:
	movl	$0, _g_keyAsciiFIFO(%eax)
	addl	$16, %eax
	movl	$0, _g_keyAsciiFIFO-12(%eax)
	movl	$0, _g_keyAsciiFIFO-8(%eax)
	movl	$0, _g_keyAsciiFIFO-4(%eax)
	cmpl	$64, %eax
	jb	L1377
	cmpl	$3, %esi
	movl	$LC3, %eax
	movl	$LC189, %esi
	movb	$0, _g_keyAsciiEnd
	movb	$0, _g_keyAsciiPos
	cmovle	%eax, %esi
	.p2align 4
	.p2align 3
L1379:
	testb	$32, _totalclock
	movl	$LC19, %edx
	movl	$LC3, %eax
	movl	$__ZL13boardfilename.lto_priv.0, 8(%esp)
	cmovne	%edx, %eax
	movl	%esi, 4(%esp)
	movl	$LC190, (%esp)
	movl	%eax, 12(%esp)
	call	__printmessage16
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	jne	L1380
	movl	$1, %eax
	call	_videoShowFrame.part.0
L1380:
	call	_handleevents
	movl	$1, (%esp)
	call	*__imp__Sleep@4
	movzbl	_g_keyAsciiPos, %eax
	movzbl	_keystatus+1, %ecx
	subl	$4, %esp
	cmpb	_g_keyAsciiEnd, %al
	je	L2406
	movzbl	%al, %edx
	addl	$1, %eax
	andl	$63, %eax
	movzbl	_g_keyAsciiFIFO(%edx), %edx
	movb	%al, _g_keyAsciiPos
	testb	%cl, %cl
	jne	L1382
	cmpb	$13, %dl
	je	L1384
	testb	%dl, %dl
	je	L1379
	testl	%ebx, %ebx
	jle	L1387
	cmpb	$8, %dl
	je	L1563
	cmpb	$127, %dl
	je	L1563
L1387:
	leal	-33(%edx), %eax
	cmpb	$94, %al
	ja	L1379
	cmpl	$39, %ebx
	jg	L1379
	movb	%dl, __ZL13boardfilename.lto_priv.0(%ebx)
	addl	$1, %ebx
	movb	$0, __ZL13boardfilename.lto_priv.0(%ebx)
	jmp	L1379
	.p2align 4,,10
	.p2align 3
L1334:
	movl	$__ZL13boardfilename.lto_priv.0, %eax
	jmp	L1336
L2393:
	movl	$-1, %eax
	movb	$0, _keystatus+1
	movw	%ax, _joinsector
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC138, (%esp)
	call	__printmessage16
	cmpb	$0, _keystatus+1
	jne	L1333
	jmp	L1332
	.p2align 4,,10
	.p2align 3
L1241:
	movl	$0, __ZZL14overheadeditorvE14backspace_last
	jmp	L1245
	.p2align 4,,10
	.p2align 3
L2384:
	movl	_m32_sideview, %edx
	testl	%edx, %edx
	je	L1006
	cmpl	$512, _m32_sideelev
	je	L1006
	movl	$LC146, (%esp)
	call	_message
	movl	_circlewall, %eax
	testl	%eax, %eax
	js	L1035
L2385:
	movb	$0, -2392(%ebp)
L1008:
	movl	_wall, %edx
	sall	$5, %eax
	movswl	_newnumwalls, %ecx
	addl	%edx, %eax
	movl	(%eax), %ebx
	movl	4(%eax), %esi
	movswl	8(%eax), %eax
	sall	$5, %eax
	addl	%edx, %eax
	leal	-2284(%ebp), %edx
	movl	(%eax), %edi
	movl	4(%eax), %eax
	movl	%eax, -2292(%ebp)
	movl	%eax, -2276(%ebp)
	movl	-2256(%ebp), %eax
	movl	%edi, -2272(%ebp)
	movl	%eax, -2280(%ebp)
	movl	-2260(%ebp), %eax
	movl	%eax, -2284(%ebp)
	leal	-2280(%ebp), %eax
	call	__ZL10adjustmarkPiS_s.isra.0
	movl	-2280(%ebp), %ecx
	movl	%ebx, -2296(%ebp)
	movl	%edi, -2312(%ebp)
	movl	%ecx, %edx
	movl	%ecx, -2344(%ebp)
	subl	%edi, %edx
	movl	%esi, -2304(%ebp)
	movl	%edx, %eax
	movl	%ebx, %edx
	movl	-2284(%ebp), %ebx
	subl	%ecx, %edx
	movl	%esi, %ecx
	subl	%ebx, %ecx
	movl	%ebx, -2364(%ebp)
	subl	-2292(%ebp), %ebx
	movl	%edx, -2320(%ebp)
	movl	%ebx, %edi
	movl	%ecx, %esi
/APP
 # 7182 "source/build/src/build.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -2324(%ebp)
	movl	-2312(%ebp), %edi
	movl	%ecx, %esi
	movl	-2304(%ebp), %eax
	subl	-2296(%ebp), %edi
	subl	-2292(%ebp), %eax
	movl	%edi, -2332(%ebp)
	movl	%eax, -2328(%ebp)
	movl	-2320(%ebp), %edx
/APP
 # 7183 "source/build/src/build.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edi
	testl	%eax, %eax
	jne	L2407
L1011:
	movb	$0, _keystatus+57
	jmp	L1035
	.p2align 4,,10
	.p2align 3
L979:
	cmpb	$0, _keystatus+31
	je	L982
	movb	$0, _keystatus+31
	cmpw	$0, _numsectors
	jle	L982
	movl	$1, %eax
	xorl	%ebx, %ebx
	jmp	L993
	.p2align 6
	.p2align 4,,10
	.p2align 3
L991:
	movswl	_numsectors, %eax
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jle	L982
	movl	%ebx, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
L993:
	movl	%ebx, %edx
	sarl	$3, %edx
	movzbl	_graysectbitmap(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%al, %cl
	je	L991
	movswl	%bx, %eax
	movswl	%bx, %esi
	call	_inside_editor_curpos
	cmpl	$1, %eax
	jne	L991
	movl	-2256(%ebp), %edx
	movl	-2260(%ebp), %edi
	movl	_gridlock, %eax
	movl	%edx, -2264(%ebp)
	movl	%edi, -2268(%ebp)
	testl	%eax, %eax
	je	L1447
	movl	_grid, %ebx
	testl	%ebx, %ebx
	jle	L1447
	movl	%ebx, %ecx
	movl	$1024, %eax
	sarl	%cl, %eax
	movl	$11, %ecx
	subl	%ebx, %ecx
	movl	$-1, %ebx
	addl	%eax, %edx
	addl	%edi, %eax
	sall	%cl, %ebx
	andl	%ebx, %eax
	andl	%ebx, %edx
	movl	%edx, -2264(%ebp)
	movl	%eax, %edi
	movl	%eax, -2268(%ebp)
L1447:
	movl	%edi, %ecx
	movl	%esi, %eax
	movl	%edx, -2292(%ebp)
	call	__ZL20insert_sprite_commoniii.lto_priv.0
	movl	-2292(%ebp), %edx
	cmpl	$-1, %eax
	movl	%eax, %ebx
	je	L2408
	movl	_sector, %eax
	leal	(%esi,%esi,4), %ecx
	leal	(%eax,%ecx,8), %eax
	testb	$2, 14(%eax)
	je	L2409
	movl	%edi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_getflorzofslopeptr.part.0
	movl	%eax, -2292(%ebp)
L997:
	imull	$44, %ebx, %eax
	movl	_sprite, %esi
	movl	$-1171354717, %edi
	leal	(%esi,%eax), %ecx
	addl	$8, %eax
	mull	%edi
	movl	-2292(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, 8(%ecx)
	movl	-2388(%ebp), %eax
	testl	%eax, %eax
	je	L998
	leal	14(%ecx), %eax
	subl	%esi, %eax
	mull	%edi
	movzwl	-2388(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 14(%ecx)
	leal	21(%ecx), %eax
	subl	%esi, %eax
	mull	%edi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	20(%ecx), %eax
	subl	%esi, %eax
	movb	$48, 21(%ecx)
	mull	%edi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movb	$48, 20(%ecx)
L998:
	movswl	14(%ecx), %eax
	cmpw	$31, _tilesiz+2(,%eax,4)
	jle	L999
	leal	12(%ecx), %eax
	movl	$-1171354717, %edx
	subl	%esi, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	orw	$1, 12(%ecx)
L999:
	movl	%ebx, %eax
	movl	$1, %esi
	call	_correct_sprite_yoffset
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC145, (%esp)
	call	__printmessage16
	movl	%ebx, %edx
	movl	$2, %eax
	movw	%si, _asksave
	call	__Z10VM_OnEventii
	movl	$0, -2388(%ebp)
	jmp	L982
	.p2align 4,,10
	.p2align 3
L720:
	movzbl	_buildkeys+8, %eax
	cmpb	$0, _keystatus(%eax)
	jne	L739
	testb	$16, -2316(%ebp)
	je	L741
	movl	_zoom, %eax
	cmpl	$39935, %eax
	jg	L742
	movl	_ztarget, %edx
	movzbl	_buildkeys+9, %edi
L743:
	movl	%edx, %ecx
	sarl	$4, %ecx
	leal	(%edx,%ecx,4), %edx
	movl	%edx, _ztarget
L747:
	movzbl	_keystatus(%edi), %edx
	cmpl	$23, %eax
	jg	L746
	addl	$2, %eax
	movl	%eax, _zoom
	testb	%dl, %dl
	jne	L748
	testb	$32, -2316(%ebp)
	je	L750
	cmpl	$16, %eax
	jle	L750
L2295:
	movl	_ztarget, %ebx
L759:
	movl	%ebx, %eax
	sarl	$4, %eax
	sall	$2, %eax
	subl	%eax, %ebx
	movl	%ebx, _ztarget
	jmp	L750
	.p2align 4,,10
	.p2align 3
L2333:
	cmpw	$0, _numsectors
	jle	L73
	movl	$1, %eax
	xorl	%edi, %edi
	jmp	L74
	.p2align 4,,10
	.p2align 3
L2410:
	movb	$0, __ZL7tempbuf.lto_priv.2
L66:
	movswl	_numsectors, %eax
	addl	$1, %edi
	cmpl	%edi, %eax
	jle	L60
L72:
	movl	%edi, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
L74:
	movl	%edi, %edx
	sarl	$3, %edx
	movzbl	_graysectbitmap(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%al, %cl
	je	L66
	movl	_sector, %eax
	leal	(%edi,%edi,4), %ebx
	sall	$3, %ebx
	addl	%ebx, %eax
	movswl	34(%eax), %edx
	movswl	36(%eax), %eax
	movl	%edx, %esi
	orw	%ax, %si
	je	L2410
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	cmpb	$0, __ZL7tempbuf.lto_priv.2
	je	L66
	addl	_sector, %ebx
	movswl	(%ebx), %esi
	movswl	2(%ebx), %eax
	movl	%ebx, -2292(%ebp)
	leal	(%eax,%esi), %ecx
	movl	%ecx, -2296(%ebp)
	cmpl	%ecx, %esi
	jge	L1462
	movl	_wall, %eax
	movl	%esi, %edx
	sall	$5, %ecx
	sall	$5, %edx
	leal	(%ecx,%eax), %ebx
	addl	%eax, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L69:
	addl	(%edx), %eax
	addl	4(%edx), %ecx
	addl	$32, %edx
	cmpl	%edx, %ebx
	jne	L69
	movl	-2296(%ebp), %ebx
	cltd
	subl	%esi, %ebx
	idivl	%ebx
	movl	%eax, %esi
	movl	%ecx, %eax
	cltd
	idivl	%ebx
	movl	%eax, %ebx
L68:
	movl	-2292(%ebp), %eax
	movl	%esi, -2264(%ebp)
	movl	%ebx, -2268(%ebp)
	testb	$2, 14(%eax)
	je	L2411
	movl	%ebx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	-2292(%ebp), %eax
	movl	%eax, (%esp)
	call	_getflorzofslopeptr.part.0
L71:
	movzbl	_editorcolors+7, %ecx
	movzbl	_editorcolors, %edx
	movl	%eax, 12(%esp)
	addl	$1, %edi
	movl	%ebx, 8(%esp)
	movl	%esi, 4(%esp)
	movzbl	_editorcolors+7, %eax
	subl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	movl	$__ZL7tempbuf.lto_priv.2, %eax
	call	_drawsmallabel
	movswl	_numsectors, %eax
	cmpl	%edi, %eax
	jg	L72
L60:
	movl	_zoom, %eax
	jmp	L73
	.p2align 4,,10
	.p2align 3
L1459:
	xorl	%edx, %edx
	jmp	L50
	.p2align 4,,10
	.p2align 3
L52:
	movl	%edx, %ecx
	movl	$2048, %eax
	movl	%edi, %edx
	sarl	%cl, %eax
/APP
 # 4004 "source/build/src/build.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	1(%ecx), %edx
	cmpl	$16, %eax
	jle	L2412
L50:
	cmpl	$8, %edx
	jne	L52
	movl	$8, _grid
	movl	$8, %eax
	jmp	L53
	.p2align 4,,10
	.p2align 3
L2392:
	movl	$_cursectnum, 8(%esp)
	movl	_pos+4, %eax
	movl	%eax, 4(%esp)
	movl	_pos, %eax
	movl	%eax, (%esp)
	call	_updatesector
	cmpw	$0, _cursectnum
	js	L1312
	movzbl	_buildkeys+14, %eax
	movb	$2, _keystatus(%eax)
	jmp	L1311
	.p2align 4,,10
	.p2align 3
L2358:
	movl	-2316(%ebp), %ecx
	andl	$5, %ecx
	cmpl	$1, %ecx
	je	L2413
L415:
	cmpb	$0, _keystatus+54
	jne	L416
	testw	%ax, %ax
	jne	L366
L421:
	movzbl	_keystatus+40, %esi
	xorl	%edi, %edi
	testl	%esi, %esi
	jne	L426
	cmpb	$0, _keystatus+39
	setne	%al
	movl	%eax, %edi
	setne	%al
	movzbl	%al, %eax
	movl	%eax, %esi
L426:
	movl	_m32_sideview, %eax
	testl	%eax, %eax
	je	L2414
L427:
	movl	-2240(%ebp), %eax
	cmpl	%eax, -2232(%ebp)
	jle	L428
	leal	-2232(%ebp), %eax
	leal	-2240(%ebp), %ebx
/APP
 # 5326 "source/build/src/build.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
L428:
	movl	-2236(%ebp), %eax
	cmpl	%eax, -2228(%ebp)
	jle	L429
	leal	-2228(%ebp), %eax
	leal	-2236(%ebp), %ebx
/APP
 # 5328 "source/build/src/build.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
L429:
	movzbl	_keystatus+29, %ebx
	orb	_keystatus+157, %bl
	je	L430
	movl	-2240(%ebp), %eax
	cmpl	%eax, -2232(%ebp)
	jne	L431
	movl	-2236(%ebp), %eax
	cmpl	%eax, -2228(%ebp)
	jne	L431
	testl	%esi, %esi
	je	L2415
L432:
	movzwl	_linehighlight, %eax
	movw	%ax, -2304(%ebp)
	cmpw	$16383, %ax
	jbe	L2416
L433:
	call	_update_highlight
	movzwl	_highlightcnt, %edx
	jmp	L366
L431:
	testl	%esi, %esi
	je	L445
L2289:
	movswl	_numwalls, %esi
	testw	%si, %si
	jle	L446
	andb	$-2, _editwall
	cmpl	$1, %esi
	je	L1484
L447:
	movl	$1, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L451:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	andl	$7, %edx
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
	notl	%edx
	andb	%dl, _editwall(%ecx)
	cmpl	%esi, %eax
	jne	L451
L450:
	testb	%bl, %bl
	je	L448
	movl	%edi, %ecx
	testb	%cl, %cl
	jne	L474
	movl	_numgraysects, %ecx
	testl	%ecx, %ecx
	jg	L478
	movl	_m32_sideview, %edx
	testl	%edx, %edx
	jne	L478
L482:
	movl	_sprite, %ebx
L468:
	xorl	%esi, %esi
	jmp	L490
	.p2align 4,,10
	.p2align 3
L488:
	cmpl	%eax, -2232(%ebp)
	jg	L485
	cmpl	%eax, -2240(%ebp)
	jl	L485
	cmpl	%ecx, -2228(%ebp)
	jg	L485
	cmpl	%ecx, -2236(%ebp)
	jl	L485
	cmpw	$0, 24(%ebx)
	js	L485
	movl	%esi, %eax
	movl	%esi, %edx
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
	orb	%dl, _show2dsprite(%eax)
	.p2align 5
	.p2align 4
	.p2align 3
L485:
	addl	$1, %esi
	addl	$44, %ebx
	cmpl	$16384, %esi
	je	L491
L490:
	cmpw	$1024, 26(%ebx)
	je	L485
	cmpb	$0, _keystatus+207
	jne	L489
	movswl	24(%ebx), %eax
	movl	%eax, %edx
	cmpl	$4095, %eax
	ja	L489
	andl	$7, %edx
	sarl	$3, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
	movzbl	_graysectbitmap(%eax), %ecx
	andl	%edx, %ecx
	cmpb	%dl, %cl
	je	L485
L489:
	movl	_m32_sideview, %edi
	movl	(%ebx), %eax
	movl	4(%ebx), %ecx
	testl	%edi, %edi
	je	L488
	movl	_zoom, %edi
	movl	%edi, 16(%esp)
	subl	_pos+4, %ecx
	movl	%ecx, 12(%esp)
	subl	_pos, %eax
	movl	%eax, 8(%esp)
	leal	-2184(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-2072(%ebp), %eax
	movl	%eax, (%esp)
	call	_editorGet2dScreenCoordinates
	imull	_m32_sidecos, %edi
	movl	8(%ebx), %eax
	subl	_pos+8, %eax
	movl	%edi, %edx
/APP
 # 672 "source/build/src/2d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	-2184(%ebp), %ecx
	movl	-2072(%ebp), %eax
	addl	_halfxdim16, %eax
	addl	%edx, %ecx
	addl	_midydim16, %ecx
	jmp	L488
L474:
	movl	_sprite, %ebx
L484:
	xorl	%esi, %esi
	jmp	L495
	.p2align 4,,10
	.p2align 3
L494:
	cmpl	%eax, -2232(%ebp)
	jg	L492
	cmpl	%eax, -2240(%ebp)
	jl	L492
	cmpl	%ecx, -2228(%ebp)
	jg	L492
	cmpl	%ecx, -2236(%ebp)
	jl	L492
	movl	%esi, %eax
	movl	%esi, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	notl	%eax
	andb	%al, _show2dsprite(%edx)
	.p2align 5
	.p2align 4
	.p2align 3
L492:
	addl	$1, %esi
	addl	$44, %ebx
	cmpl	$16384, %esi
	je	L491
L495:
	cmpw	$1024, 26(%ebx)
	je	L492
	cmpb	$0, _keystatus+207
	jne	L493
	movswl	24(%ebx), %eax
	movl	%eax, %edx
	cmpl	$4095, %eax
	ja	L493
	andl	$7, %edx
	sarl	$3, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
	movzbl	_graysectbitmap(%eax), %ecx
	andl	%edx, %ecx
	cmpb	%cl, %dl
	je	L492
L493:
	movl	_m32_sideview, %edx
	movl	(%ebx), %eax
	movl	4(%ebx), %ecx
	testl	%edx, %edx
	je	L494
	movl	_zoom, %edi
	movl	%edi, 16(%esp)
	subl	_pos+4, %ecx
	movl	%ecx, 12(%esp)
	subl	_pos, %eax
	movl	%eax, 8(%esp)
	leal	-2184(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-2072(%ebp), %eax
	movl	%eax, (%esp)
	call	_editorGet2dScreenCoordinates
	imull	_m32_sidecos, %edi
	movl	8(%ebx), %eax
	subl	_pos+8, %eax
	movl	%edi, %edx
/APP
 # 672 "source/build/src/2d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	-2184(%ebp), %ecx
	movl	_halfxdim16, %eax
	addl	-2072(%ebp), %eax
	addl	%edx, %ecx
	addl	_midydim16, %ecx
	jmp	L494
	.p2align 4,,10
	.p2align 3
L726:
	testb	%dl, %dl
	jne	L728
	testb	$16, -2316(%ebp)
	je	L729
	movl	_m32_sideelev, %eax
	movl	%eax, %edx
	cmpl	$511, %eax
	jg	L731
L730:
	addl	$8, %edx
	movl	%edx, _m32_sideelev
L732:
	cmpl	$512, %edx
	jle	L733
	movl	$512, _m32_sideelev
	movl	$512, %edx
L733:
	movl	%edx, 4(%esp)
	movl	$LC99, (%esp)
	call	__printmessage16
L729:
	movzbl	_buildkeys+9, %eax
	cmpb	$0, _keystatus(%eax)
	je	L1423
	movl	_m32_sideelev, %eax
	testl	%eax, %eax
	jle	L735
L1421:
	movl	_synctics, %edi
	leal	(%edi,%edi), %edx
	subl	%edx, %eax
	movl	%eax, _m32_sideelev
	testb	$32, -2316(%ebp)
	jne	L736
L737:
	testl	%eax, %eax
	jns	L738
	movl	$0, _m32_sideelev
	xorl	%eax, %eax
L738:
	movl	%eax, 4(%esp)
	movl	$LC99, (%esp)
	call	__printmessage16
	jmp	L735
	.p2align 4,,10
	.p2align 3
L1208:
	movswl	_newnumwalls, %eax
	movswl	_numwalls, %ebx
	cmpw	%bx, %ax
	jg	L2417
	movzwl	_linehighlight, %eax
	testw	%ax, %ax
	js	L1207
	movswl	%ax, %ebx
	movl	%ebx, %eax
	call	_sectorofwall
	movswl	%ax, %edx
	movl	%ebx, %eax
	call	_checksectorpointer
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC169, (%esp)
	call	__printmessage16
	movl	$1, %ecx
	movw	%cx, _asksave
	jmp	L1207
	.p2align 4,,10
	.p2align 3
L163:
	movl	_gridlock, %edx
	movl	$255, %ebx
	testl	%edx, %edx
	jne	L164
	movl	_totalclock, %eax
	movzbl	_whitecol, %edx
	sall	$4, %eax
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %eax
	sarw	$10, %ax
	cwtl
/APP
 # 496 "source/build/include/editor.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movzbl	_editorcolors, %ebx
	movl	%eax, %esi
	subl	%edx, %ebx
	movsbl	%bl, %ebx
	movl	%ebx, %eax
/APP
 # 496 "source/build/include/editor.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
/APP
 # 496 "source/build/include/editor.h" 1
	addl %ebx, %ebx; sbbl %eax, %eax; cmpl %ebx, %eax; adcb $0, %al
 # 0 "" 2
/NO_APP
	sarl	$3, %ecx
	movl	%ecx, %ebx
	movl	$3, %ecx
	subl	%ebx, %ecx
	sarl	%cl, %esi
	xorl	%eax, %esi
	leal	(%esi,%edx), %ebx
	jmp	L164
	.p2align 4,,10
	.p2align 3
L172:
	movzbl	_keystatus+39, %eax
	orb	_keystatus+40, %al
	movzbl	%bl, %ebx
	jne	L175
	cmpb	$0, _keystatus+54
	jne	L2418
	.p2align 4
	.p2align 3
L177:
	cmpw	$0, _highlightcnt
	jne	L174
	movzbl	_keystatus+29, %eax
	orb	_keystatus+157, %al
	je	L182
	movl	-2240(%ebp), %eax
	cmpl	%eax, -2232(%ebp)
	jne	L183
	movl	-2236(%ebp), %eax
	cmpl	%eax, -2228(%ebp)
	je	L182
L183:
	movl	$0, 20(%esp)
	movl	$LC39, 16(%esp)
	movl	$-1, 12(%esp)
	movzbl	_editorcolors+12, %eax
	movl	%eax, 8(%esp)
	movl	_searchy, %eax
	subl	$14, %eax
	movl	%eax, 4(%esp)
	movl	_searchx, %eax
	addl	$6, %eax
	movl	%eax, (%esp)
	call	_printext16
L182:
	cmpb	$0, _keystatus+207
	je	L174
	movl	$0, 20(%esp)
	movl	$LC38, 16(%esp)
	movl	$-1, 12(%esp)
	movzbl	_editorcolors+12, %eax
	movl	%eax, 8(%esp)
	movl	_searchy, %eax
	addl	$6, %eax
	movl	%eax, 4(%esp)
	movl	_searchx, %eax
	addl	$6, %eax
	movl	%eax, (%esp)
	call	_printext16
	jmp	L174
L173:
	movzbl	_keystatus+39, %eax
	orb	_keystatus+40, %al
	movzbl	%bl, %ebx
	je	L177
L175:
	movl	_searchy, %edi
	movzbl	_editorcolors+14, %ebx
	movl	_searchx, %eax
	leal	-16(%edi), %edx
	movl	%ebx, 4(%esp)
	movl	%edx, (%esp)
	leal	20(%eax), %ecx
	addl	$12, %eax
	call	_editorDraw2dLine
	cmpb	$0, _keystatus+40
	jne	L178
L2282:
	movzwl	_highlightsectorcnt, %eax
	testw	%ax, %ax
	jne	L177
	cmpb	$0, _keystatus+54
	je	L177
L2418:
	movl	$0, 20(%esp)
	movl	$LC38, 16(%esp)
	movl	$-1, 12(%esp)
	movzbl	_editorcolors+12, %eax
	movl	%eax, 8(%esp)
	movl	_searchy, %eax
	addl	$6, %eax
	movl	%eax, 4(%esp)
	movl	_searchx, %eax
	addl	$6, %eax
	movl	%eax, (%esp)
	call	_printext16
	jmp	L177
	.p2align 4,,10
	.p2align 3
L2411:
	movl	8(%eax), %eax
	jmp	L71
	.p2align 4,,10
	.p2align 3
L2380:
	movswl	_prefixtiles-4(%eax,%eax), %eax
	movl	%eax, -2388(%ebp)
	jmp	L977
	.p2align 4,,10
	.p2align 3
L1495:
	movl	$-1, %eax
	movw	%ax, -2356(%ebp)
L636:
	movl	$_cursectnum, 12(%esp)
	movl	_pos+8, %eax
	movl	%eax, 8(%esp)
	movl	_pos+4, %eax
	movl	%eax, 4(%esp)
	movl	_pos, %eax
	movl	%eax, (%esp)
	call	_updatesectorz
	testb	$2, __ZL15oldmousebstatus.lto_priv.0
	je	L1430
	movl	_upscalefactor, %eax
	movl	_halfxdim16, %edx
	imull	%eax, %edx
	imull	_midydim16, %eax
	movl	%edx, _g_mouseAbs
	movl	%eax, _g_mouseAbs+4
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	_SDL_WarpMouseInWindow
	call	_handleevents
	xorl	%eax, %eax
	call	_mouseLockToWindow
	jmp	L1430
	.p2align 4,,10
	.p2align 3
L1006:
	movl	_circlewall, %eax
	testl	%eax, %eax
	jns	L2419
	movswl	_newnumwalls, %ecx
	leal	-2256(%ebp), %eax
	leal	-2260(%ebp), %edx
	movb	$0, _keystatus+57
	movl	%ecx, %ebx
	movl	%ecx, -2324(%ebp)
	call	__ZL10adjustmarkPiS_s.isra.0
	movl	-2260(%ebp), %eax
	testw	%bx, %bx
	movl	-2256(%ebp), %edi
	movl	%eax, -2304(%ebp)
	movl	%ebx, %eax
	cmovs	_numwalls, %ax
	testw	%ax, %ax
	jle	L1037
	cwtl
	movl	%edi, -2292(%ebp)
	movl	$1, %edx
	movl	%eax, -2296(%ebp)
	movl	_wall, %eax
	movw	%bx, -2328(%ebp)
	movl	%eax, -2320(%ebp)
	movl	%eax, %esi
	xorl	%eax, %eax
	jmp	L1046
	.p2align 4,,10
	.p2align 3
L2420:
	cmpl	%ecx, -2304(%ebp)
	jne	L1556
L1038:
	addl	$1, %eax
	cmpl	-2296(%ebp), %eax
	je	L2274
L2448:
	movl	%eax, %edx
	addl	$32, %esi
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
L1046:
	movl	%eax, %ecx
	sarl	$3, %ecx
	movzbl	_graywallbitmap(%ecx), %ebx
	andl	%edx, %ebx
	cmpb	%dl, %bl
	je	L1038
	movl	(%esi), %edx
	movl	4(%esi), %ecx
	cmpl	%edx, -2292(%ebp)
	je	L2420
L1556:
	movswl	8(%esi), %edi
	sall	$5, %edi
	addl	-2320(%ebp), %edi
	movl	(%edi), %ebx
	movl	4(%edi), %edi
	movl	%ebx, -2312(%ebp)
	cmpl	%ebx, -2292(%ebp)
	jne	L1557
	cmpl	%edi, -2304(%ebp)
	je	L1038
L1557:
	movl	-2312(%ebp), %ebx
	cmpl	%edx, -2292(%ebp)
	jl	L1558
	cmpl	%ebx, -2292(%ebp)
	jg	L2243
	movl	-2304(%ebp), %ebx
	cmpl	%ecx, %ebx
	jl	L1559
L2447:
	cmpl	%edi, %ebx
	jg	L2244
L1043:
	movl	-2292(%ebp), %ebx
	subl	%ecx, %edi
	subl	%edx, %ebx
	imull	%ebx, %edi
	movl	-2304(%ebp), %ebx
	subl	%ecx, %ebx
	movl	-2312(%ebp), %ecx
	subl	%edx, %ecx
	imull	%ecx, %ebx
	cmpl	%ebx, %edi
	jne	L1038
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC205, (%esp)
	call	__printmessage16
	jmp	L1035
	.p2align 4,,10
	.p2align 3
L2346:
	movl	-2260(%ebp), %edi
	movl	-2256(%ebp), %esi
	movswl	_pointhighlight, %ecx
	movl	%edi, %edx
	movl	%esi, %eax
	call	_getpointhighlight
	movswl	_linehighlight, %ecx
	movl	%edi, %edx
	movw	%ax, _pointhighlight
	movl	%eax, %ebx
	movl	%esi, %eax
	movl	$0, (%esp)
	call	__ZL16getlinehighlightiiia.lto_priv.0
	movl	%ebx, %edx
	andl	$49152, %edx
	movw	%ax, _linehighlight
	cmpl	$16384, %edx
	je	L2421
	testw	%ax, %ax
	js	L196
	movl	_wall, %ecx
	cwtl
	sall	$5, %eax
	leal	(%ecx,%eax), %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	xorw	$1, 14(%edx)
	addl	$1, _wallchanged(,%eax,4)
	movswl	10(%edx), %eax
	andw	$-65, 14(%edx)
	testw	%ax, %ax
	js	L197
	movzbl	_keystatus+42, %ebx
	orb	_keystatus+54, %bl
	jne	L197
	movl	%eax, %ebx
	andl	$134217727, %eax
	sall	$5, %ebx
	addl	$1, _wallchanged(,%eax,4)
	andw	$-66, 14(%ecx,%ebx)
	movswl	10(%edx), %eax
	movzwl	14(%edx), %ebx
	movl	%eax, %edx
	andl	$134217727, %eax
	sall	$5, %edx
	addl	$1, _wallchanged(,%eax,4)
	andl	$1, %ebx
	orw	%bx, 14(%ecx,%edx)
L197:
	movl	$1, %eax
	movw	%ax, _asksave
L196:
	movb	$0, _keystatus+48
	jmp	L194
	.p2align 4,,10
	.p2align 3
L2345:
	movzbl	_keystatus+42, %eax
	orb	_keystatus+54, %al
	movb	$0, _keystatus+88
	movzbl	%al, %eax
	movl	$LC40, (%esp)
	movl	%eax, 4(%esp)
	call	__Z18videoCaptureScreenPKcc
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	jne	L193
	movl	$1, %eax
	call	_videoShowFrame.part.0
	jmp	L193
	.p2align 4,,10
	.p2align 3
L498:
	cmpb	$0, _keystatus+184
	je	L504
	testw	%cx, %cx
	jne	L505
L500:
	movzbl	_keystatus+29, %eax
	orb	_keystatus+157, %al
	jne	L506
	movss	-2232(%ebp), %xmm1
	movl	_ydim, %eax
	leal	-2184(%ebp), %ebx
	movss	_searchx, %xmm0
	movaps	%xmm1, %xmm2
	movss	%xmm1, -2056(%ebp)
	subl	$26, %eax
	movaps	%xmm0, %xmm3
	unpcklps	%xmm1, %xmm2
	movl	%eax, _ydim16
	movss	_searchy, %xmm1
	unpcklps	%xmm0, %xmm3
	movzbl	_editorcolors+10, %eax
	movlhps	%xmm3, %xmm2
	movaps	%xmm1, %xmm4
	unpcklps	%xmm1, %xmm0
	movups	%xmm2, -2072(%ebp)
	movss	-2228(%ebp), %xmm2
	negl	%eax
	movlps	%xmm0, -2240(%ebp)
	movaps	%xmm2, %xmm3
	unpcklps	%xmm2, %xmm4
	movss	%xmm2, -2168(%ebp)
	unpcklps	%xmm1, %xmm3
	movlhps	%xmm4, %xmm3
	movups	%xmm3, -2184(%ebp)
	movl	%eax, 12(%esp)
	leal	-2072(%ebp), %eax
	movl	$5, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_plotlines2d.constprop.0
	jmp	L425
	.p2align 4,,10
	.p2align 3
L2406:
	testb	%cl, %cl
	je	L1379
L1382:
	movl	$__ZL21selectedboardfilename.lto_priv.0, 4(%esp)
	movl	$__ZL13boardfilename.lto_priv.0, (%esp)
	call	_strcpy
	movl	_totalclock, %eax
	movb	$0, _keystatus+1
	movl	%eax, _lastpm16time
	movl	$LC200, (%esp)
	call	__printmessage16
	jmp	L2312
	.p2align 4,,10
	.p2align 3
L739:
	movl	_zoom, %eax
	cmpl	$39935, %eax
	jg	L742
	movzbl	_buildkeys+9, %edi
	movl	_ztarget, %ebx
	movzbl	_keystatus+42, %edx
	orb	_keystatus+54, %dl
	movzbl	_keystatus(%edi), %ecx
	movzbl	%dl, %edx
	movl	_synctics, %esi
	movl	%edx, -2292(%ebp)
	movb	%cl, -2304(%ebp)
	leal	(%edx,%edx), %ecx
	movl	%ebx, %edx
	sarl	$4, %edx
	imull	%esi, %edx
	sarl	%cl, %edx
	addl	%ebx, %edx
	movl	%edx, _ztarget
	movl	%edx, %ebx
	cmpl	$63, %eax
	jle	L744
	testb	$16, -2316(%ebp)
	je	L745
	movl	%edx, %edi
	sarl	$4, %edi
	leal	(%edx,%edi,4), %edx
	movl	%edx, _ztarget
	movzbl	-2304(%ebp), %edx
L746:
	testb	%dl, %dl
	jne	L752
	testb	$32, -2316(%ebp)
	je	L750
	cmpl	$16, _zoom
	jle	L750
	jmp	L2295
	.p2align 4,,10
	.p2align 3
L2389:
	call	__ZL26duplicate_selected_sectorsv.lto_priv.0
	jmp	L1293
	.p2align 4,,10
	.p2align 3
L2394:
	cmpb	$0, _keystatus+1
	je	L1340
	jmp	L1362
	.p2align 4,,10
	.p2align 3
L2342:
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	jne	L188
	xorl	%eax, %eax
	call	_videoShowFrame.part.0
	jmp	L188
	.p2align 4,,10
	.p2align 3
L2363:
	movl	8(%eax), %eax
	jmp	L87
	.p2align 4,,10
	.p2align 3
L2357:
	movb	$0, _keystatus+25
	cmpw	$0, _numsectors
	jle	L248
	xorl	%ebx, %ebx
	movswl	%bx, %eax
	call	_inside_editor_curpos
	cmpl	$1, %eax
	je	L2422
L249:
	movswl	_numsectors, %eax
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jle	L248
	movswl	%bx, %eax
	call	_inside_editor_curpos
	cmpl	$1, %eax
	jne	L249
L2422:
	movl	%ebx, %eax
	movl	%ebx, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	movzbl	_graysectbitmap(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%cl, %al
	je	L249
	leal	-2152(%ebp), %edi
	movl	%ebx, 8(%esp)
	movl	$LC48, 4(%esp)
	movl	%edi, (%esp)
	call	_sprintf
	movl	_sector, %edx
	leal	(%ebx,%ebx,4), %eax
	movl	$251, %ecx
	leal	0(,%eax,8), %esi
	movzbl	21(%edx,%eax,8), %edx
	movl	$0, (%esp)
	movl	%edi, %eax
	call	__getnumber16.constprop.0
	leal	21(%esi), %edx
	movl	_sector, %ecx
	movl	%eax, -2292(%ebp)
	movl	$-858993459, %eax
	mull	%edx
	movzbl	-2292(%ebp), %eax
	addl	%esi, %ecx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movb	%al, 21(%ecx)
	movl	%ebx, 8(%esp)
	movl	$LC49, 4(%esp)
	movl	%edi, (%esp)
	call	_sprintf
	movl	_sector, %eax
	movl	$251, %ecx
	movzbl	29(%eax,%esi), %edx
	movl	$0, (%esp)
	movl	%edi, %eax
	call	__getnumber16.constprop.0
	leal	29(%esi), %edx
	movl	_sector, %ecx
	movl	%eax, %ebx
	movl	$-858993459, %eax
	mull	%edx
	addl	%esi, %ecx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movb	%bl, 29(%ecx)
	jmp	L248
	.p2align 4,,10
	.p2align 3
L2352:
	movb	$0, _keystatus+65
	cmpw	$0, _numsectors
	jle	L236
	xorl	%ebx, %ebx
	movswl	%bx, %eax
	call	_inside_editor_curpos
	cmpl	$1, %eax
	je	L2423
L237:
	movswl	_numsectors, %eax
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jle	L236
	movswl	%bx, %eax
	call	_inside_editor_curpos
	cmpl	$1, %eax
	jne	L237
L2423:
	movl	%ebx, %eax
	movl	%ebx, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	movzbl	_graysectbitmap(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%cl, %al
	je	L237
	call	_ExtEditSectorData.isra.0
	jmp	L236
L2331:
	movl	_ydim16, %eax
	subl	$2, %eax
	cmpl	%esi, %eax
	jle	L56
	movl	_m32_sideview, %eax
	movl	%eax, -2292(%ebp)
	testl	%eax, %eax
	je	L1460
	movswl	_m32_sideang, %edx
	movw	%dx, -2312(%ebp)
L57:
	movswl	_startang, %eax
	leal	2560(%edx,%eax), %eax
	movl	_zoom, %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 4025 "source/build/src/build.cpp" 1
	imull %edx; shrdl $11, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$715827883, %edi
	movl	%eax, %ecx
	imull	%edi
	sarl	$31, %ecx
	movzwl	-2312(%ebp), %eax
	addw	_startang, %ax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	sarl	$7, %edx
	subl	%ecx, %edx
	movl	%edx, -2296(%ebp)
	movl	_zoom, %edx
/APP
 # 4026 "source/build/src/build.cpp" 1
	imull %edx; shrdl $11, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	imull	%edi
	movl	-2296(%ebp), %eax
	sarl	$31, %ecx
	sarl	$7, %edx
	movl	%edx, %edi
	movl	-2292(%ebp), %edx
	subl	%ecx, %edi
	testl	%edx, %edx
	je	L1461
	movl	_m32_sidesin, %edx
/APP
 # 625 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_m32_sidesin, %edx
	movl	%eax, -2312(%ebp)
	movl	%edi, %eax
/APP
 # 625 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
L58:
	leal	(%esi,%eax), %ecx
	movl	%ecx, -2292(%ebp)
	movl	-2296(%ebp), %ecx
	leal	(%ebx,%ecx), %edx
	movl	%edx, -2296(%ebp)
	movl	%ebx, %edx
	subl	%ecx, %edx
	movl	%edx, %ecx
	movzbl	_editorcolors+6, %edx
	movl	%edx, 4(%esp)
	movl	%esi, %edx
	subl	%eax, %edx
	movl	%edx, (%esp)
	movl	-2292(%ebp), %edx
	movl	-2296(%ebp), %eax
	call	_editorDraw2dLine
	movzbl	_editorcolors+6, %eax
	leal	(%ebx,%edi), %ecx
	subl	%edi, %ebx
	movl	%eax, 4(%esp)
	movl	%esi, %eax
	subl	-2312(%ebp), %eax
	movl	%eax, (%esp)
	movl	-2292(%ebp), %edx
	movl	-2296(%ebp), %eax
	call	_editorDraw2dLine
	movzbl	_editorcolors+6, %eax
	movl	%ebx, %ecx
	movl	%eax, 4(%esp)
	addl	-2312(%ebp), %esi
	movl	%esi, (%esp)
	movl	-2292(%ebp), %edx
	movl	-2296(%ebp), %eax
	call	_editorDraw2dLine
	jmp	L56
L2338:
	movl	-2316(%ebp), %edi
	andl	$3, %edi
	jne	L2424
	movb	$0, _isc
	cmpb	$0, _isc+1
	je	L2425
	movl	_isc+28, %eax
	testl	%eax, %eax
	jne	L2426
L140:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC32, (%esp)
	call	__printmessage16
	jmp	L112
L774:
	movzwl	_numsectors, %esi
	cmpw	$0, _joinsector
	js	L2427
	movl	$0, -2184(%ebp)
	movl	$-1, %edi
	movw	%di, _joinsector+2
	testw	%si, %si
	jle	L887
	movl	$1, %eax
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	jmp	L890
	.p2align 4,,10
	.p2align 3
L2428:
	movl	%ebx, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
L890:
	movl	%ebx, %edx
	sarl	$3, %edx
	movzbl	_graysectbitmap(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%al, %cl
	je	L888
	movswl	%bx, %eax
	call	_inside_editor_curpos
	movzwl	_numsectors, %esi
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%eax, %edi
L888:
	addl	$1, %ebx
	movswl	%si, %eax
	cmpl	%ebx, %eax
	jg	L2428
	testw	%si, %si
	jle	L895
	movl	$1, %eax
	xorl	%ebx, %ebx
	cmpl	$1, %edi
	jg	L892
	jmp	L896
	.p2align 6
	.p2align 4,,10
	.p2align 3
L898:
	movswl	_numsectors, %eax
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jle	L895
	movl	%ebx, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
L892:
	movl	%ebx, %edx
	sarl	$3, %edx
	movzbl	_graysectbitmap(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%al, %cl
	je	L898
	movswl	%bx, %eax
	movl	%ebx, %esi
	call	_inside_editor_curpos
	cmpl	$1, %eax
	jne	L898
	leal	-2184(%ebp), %eax
	movl	$LC126, %ecx
	movl	%ebx, %edx
	call	__ZL20bakframe_fillandfadePPciPKc.lto_priv.0
	testl	%eax, %eax
	je	L898
	movl	-2184(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, -2184(%ebp)
L894:
	movw	%si, _joinsector+2
	movswl	_joinsector, %esi
	testl	%esi, %esi
	js	L900
	movl	_sector, %edx
	leal	(%ebx,%ebx,4), %eax
	movl	_wall, %edi
	leal	(%edx,%eax,8), %eax
	movswl	(%eax), %ecx
	movswl	2(%eax), %eax
	addl	%ecx, %eax
	cmpl	%eax, %ecx
	jge	L900
	movl	%ebx, -2292(%ebp)
	movl	%eax, %ebx
	jmp	L904
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2430:
	addl	$1, %ecx
	cmpl	%ecx, %ebx
	je	L2429
L904:
	movl	%ecx, %eax
	sall	$5, %eax
	movswl	12(%edi,%eax), %edx
	cmpl	%edx, %esi
	jne	L2430
	movl	-2292(%ebp), %ebx
	cmpl	$-1, %ecx
	je	L1516
	movswl	10(%edi,%eax), %eax
	movl	%eax, -2292(%ebp)
L902:
	movl	%ebx, -2304(%ebp)
	xorl	%esi, %esi
	movl	%ecx, %edi
L905:
	movswl	_joinsector(%esi,%esi), %ebx
	movl	%ebx, %eax
	call	_yax_getbunch.constprop.1
	movw	%ax, -2072(%ebp,%esi,4)
	movl	%ebx, %eax
	call	_yax_getbunch.constprop.0
	movw	%ax, -2070(%ebp,%esi,4)
	cmpl	$1, %esi
	jne	L1517
	movzwl	-2072(%ebp), %eax
	movl	%edi, %ecx
	cmpl	$-1, %edi
	je	L2431
L906:
	movzwl	-2066(%ebp), %edi
	movzwl	-2070(%ebp), %esi
	movw	%di, -2312(%ebp)
	cmpw	%di, %si
	je	L909
	movl	-2292(%ebp), %ebx
	testl	%ebx, %ebx
	js	L2432
	cmpw	%ax, -2068(%ebp)
	movzwl	-2312(%ebp), %edi
	setne	%al
	movl	_sector, %edx
	movzbl	%al, %eax
	movl	%eax, %ebx
	orl	$2, %eax
	orw	%si, %di
	movl	%edx, -2304(%ebp)
	movl	%eax, %edi
	movswl	_joinsector, %eax
	cmovs	%ebx, %edi
	sets	%bl
	leal	(%eax,%eax,4), %eax
	movzbl	%bl, %ebx
	leal	(%edx,%eax,8), %edx
	movl	%edi, -2320(%ebp)
	leal	14(,%eax,8), %eax
	movl	$-858993459, %edi
	movl	%edx, -2324(%ebp)
	mull	%edi
	movl	-2324(%ebp), %edi
	movl	%edx, %eax
	movl	-2304(%ebp), %edx
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movswl	_joinsector+2, %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movl	%eax, -2296(%ebp)
	testb	$2, 14(%edi)
	je	L2433
L915:
	andl	$-3, -2320(%ebp)
	orl	$2, %ebx
L916:
	movl	-2324(%ebp), %edi
	movl	$-858993459, %edx
	leal	8(%edi), %eax
	subl	-2304(%ebp), %eax
	mull	%edx
	movl	%edx, %eax
	movl	$-858993459, %edx
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	8(%edi), %eax
	movl	-2296(%ebp), %edi
	movl	%eax, -2324(%ebp)
	leal	8(%edi), %eax
	subl	-2304(%ebp), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	-2324(%ebp), %eax
	cmpl	8(%edi), %eax
	je	L917
	andl	$-3, -2320(%ebp)
	orl	$4, %ebx
L917:
	movswl	-2292(%ebp), %eax
	movl	%ecx, -2304(%ebp)
	call	_yax_getnextwall.constprop.0
	movw	%ax, -2292(%ebp)
	movl	%eax, %edi
	movswl	-2304(%ebp), %eax
	call	_yax_getnextwall.constprop.0
	orw	%ax, %di
	jns	L918
	orl	$8, %ebx
L919:
	testb	$1, %bl
	jne	L2434
L922:
	testb	$2, %bl
	jne	L2435
	testb	$4, %bl
	jne	L2436
	testb	$8, %bl
	jne	L2437
	testl	%ebx, %ebx
	je	L908
	movl	$LC136, (%esp)
	call	_message
	jmp	L908
	.p2align 6
	.p2align 4,,10
	.p2align 3
L893:
	movswl	_numsectors, %eax
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jle	L895
	movl	%ebx, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
L896:
	movl	%ebx, %edx
	sarl	$3, %edx
	movzbl	_graysectbitmap(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%al, %cl
	je	L893
	movswl	%bx, %eax
	movl	%ebx, %esi
	call	_inside_editor_curpos
	cmpl	$1, %eax
	jne	L893
	jmp	L894
	.p2align 4,,10
	.p2align 3
L2372:
	movl	$_cursectnum, 8(%esp)
	movl	_pos+4, %eax
	movl	%eax, 4(%esp)
	movl	_pos, %eax
	movl	%eax, (%esp)
	call	_updatesector
	movswl	_cursectnum, %eax
	cmpw	$-1, %ax
	je	L151
	jmp	L150
	.p2align 4,,10
	.p2align 3
L253:
	movzwl	_highlightsectorcnt, %ecx
	testw	%cx, %cx
	jle	L257
	cmpw	$0, _newnumwalls
	js	L2438
	movzwl	_highlightcnt, %edx
	testw	%dx, %dx
	jle	L366
L369:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC68, (%esp)
	call	__printmessage16
	jmp	L371
L2344:
	movzbl	_keystatus+45, %eax
	movzbl	_keystatus+56, %edx
	movb	$0, _keystatus+21
	orb	_keystatus+184, %dl
	movb	$0, _keystatus+45
	movzbl	%dl, %edx
	call	_editorFlipHighlightedSectors
	jmp	L192
L716:
	movl	$0, _m32_sideview
	movl	_totalclock, %edx
	movl	$LC9, %eax
L719:
	movl	%edx, _lastpm16time
	movl	%eax, 4(%esp)
	movl	$LC97, (%esp)
	call	__printmessage16
	jmp	L715
L769:
	movl	_gridlock, %edi
	xorl	%eax, %eax
	movl	$LC10, %edx
	testl	%edi, %edi
	sete	%al
	movl	%eax, _gridlock
	movl	$LC11, %eax
	cmove	%edx, %eax
	movl	$LC106, (%esp)
	movl	%eax, 4(%esp)
	call	_silentmessage
	jmp	L768
L1242:
	movl	__ZZL14overheadeditorvE14backspace_last, %eax
	testl	%eax, %eax
	jne	L1245
	movzbl	_buildkeys+4, %eax
	movl	_graphicsmode, %edx
	movzbl	_keystatus(%eax), %eax
	orb	_keystatus+54, %al
	cmpb	$1, %al
	movl	$2, %eax
	adcl	$-1, %eax
	leal	(%edx,%eax,2), %ecx
	movl	$1431655766, %eax
	imull	%ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	leal	(%edx,%edx,2), %eax
	subl	%eax, %ecx
	movl	_totalclock, %eax
	movl	%ecx, _graphicsmode
	movl	%eax, _lastpm16time
	movl	$LC18, %eax
	cmpl	$2, %ecx
	je	L1246
	testl	%ecx, %ecx
	movl	$LC9, %eax
	movl	$LC8, %edx
	cmovne	%edx, %eax
L1246:
	movl	%eax, 4(%esp)
	movl	$LC170, (%esp)
	call	__printmessage16
	jmp	L1245
L28:
	movl	_g_mouseAbs, %eax
	movl	_upscalefactor, %esi
	cltd
	idivl	%esi
	movl	%eax, %ecx
	movl	_g_mouseAbs+4, %eax
	cltd
	idivl	%esi
	jmp	L29
L742:
	movzbl	_buildkeys+9, %edx
	cmpb	$0, _keystatus(%edx)
	jne	L754
L2313:
	testb	$32, -2316(%ebp)
	je	L735
	cmpl	$16, _zoom
	jle	L735
	jmp	L2295
L2335:
	movl	_m32_sideview, %eax
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L92:
	testl	%eax, %eax
	je	L99
L94:
	cmpl	%esi, _m32_swcnt
	jg	L100
L101:
	movzwl	_pointhighlight, %eax
	testb	$64, %ah
	je	L91
	subw	$16384, %ax
	cwtl
	call	__ZL15drawspritelabeli.lto_priv.0
	jmp	L91
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2281:
	addl	$1, %ebx
	addl	$1, %esi
L99:
	cmpl	$16384, %ebx
	je	L101
	imull	$44, %ebx, %eax
	addl	_sprite, %eax
	cmpw	$1024, 26(%eax)
	je	L2281
	movswl	24(%eax), %eax
	testw	%ax, %ax
	js	L95
	movl	%eax, %edx
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	_graysectbitmap(%eax), %ecx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
	andl	%edx, %ecx
	cmpb	%dl, %cl
	je	L2281
L95:
	movl	%ebx, %eax
	addl	$1, %esi
	addl	$1, %ebx
	call	__ZL15drawspritelabeli.lto_priv.0
	movl	_m32_sideview, %eax
	jmp	L92
	.p2align 4,,10
	.p2align 3
L100:
	movswl	_m32_wallsprite(%esi,%esi), %ebx
	cmpl	$16383, %ebx
	jle	L2439
	subl	$16384, %ebx
	jmp	L95
	.p2align 4,,10
	.p2align 3
L2439:
	addl	$1, %esi
	jmp	L94
	.p2align 4,,10
	.p2align 3
L109:
	movl	_searchy, %ecx
	movl	$252645135, %ebx
	movl	$252645135, -2372(%ebp)
	movl	%ebx, %eax
	andl	$7, %ecx
	sall	%cl, %eax
	shldl	%cl, %ebx, -2372(%ebp)
	movl	-2372(%ebp), %edx
	movl	%eax, -2376(%ebp)
	movl	-2376(%ebp), %eax
	movl	_searchx, %ecx
	shrdl	$7, %edx, %eax
	xorl	%edx, %edx
	movl	%eax, _drawlinepat
	movzbl	_editorcolors+15, %eax
	movl	%eax, 4(%esp)
	movl	_ydim, %eax
	subl	$1, %eax
	movl	%eax, (%esp)
	movl	%ecx, %eax
	call	_editorDraw2dLine
	movl	_searchx, %ecx
	movl	$252645135, -2380(%ebp)
	andl	$7, %ecx
	shldl	%cl, %ebx, -2380(%ebp)
	sall	%cl, %ebx
	movl	-2380(%ebp), %edx
	movl	%ebx, -2384(%ebp)
	movl	-2384(%ebp), %eax
	shrdl	$7, %edx, %eax
	movl	_searchy, %edx
	movl	%eax, _drawlinepat
	movl	_xdim, %eax
	leal	-1(%eax), %ecx
	movzbl	_editorcolors+15, %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	xorl	%eax, %eax
	call	_editorDraw2dLine
	movl	-2260(%ebp), %eax
	movl	$-1, _drawlinepat
	movl	%eax, 8(%esp)
	movl	-2256(%ebp), %eax
	movl	$LC26, (%esp)
	movl	%eax, 4(%esp)
	call	__printmessage16
	jmp	L112
L185:
	leal	-2268(%ebp), %eax
	movl	$0, 8(%esp)
	movl	%edx, %ecx
	movl	%eax, 4(%esp)
	leal	-2264(%ebp), %eax
	movl	%eax, (%esp)
	movl	-2260(%ebp), %edx
	movl	-2256(%ebp), %eax
	call	__ZL21getclosestpointonwalliiiPiS_i.lto_priv.0
	movl	%ebx, (%esp)
	movl	-2268(%ebp), %edx
	movl	$2, %ecx
	movl	-2264(%ebp), %eax
	call	__ZL10draw_crossiiii.lto_priv.0
	jmp	L162
L44:
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_show2dsector, (%esp)
	call	_memset
	movswl	_numsectors, %esi
	testw	%si, %si
	jle	L45
	movl	$1, %edx
	xorl	%eax, %eax
	jmp	L47
	.p2align 6
	.p2align 4,,10
	.p2align 3
L2440:
	movl	%eax, %edx
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
L47:
	movl	%eax, %ecx
	sarl	$3, %ecx
	movzbl	_graysectbitmap(%ecx), %ebx
	andl	%edx, %ebx
	cmpb	%dl, %bl
	je	L46
	orb	%dl, _show2dsector(%ecx)
L46:
	addl	$1, %eax
	cmpl	%esi, %eax
	jne	L2440
L45:
	movl	_xdim, %eax
	xorl	%edx, %edx
	leal	-1(%eax), %ecx
	movl	_ydim16, %eax
	subl	$1, %eax
	movl	%eax, (%esp)
	xorl	%eax, %eax
	call	_videoSetViewableArea
	cmpl	$2, _graphicsmode
	jne	L48
	movl	_totalclock+12, %eax
	movl	_totalclock+12, %edx
	movl	%eax, _totalclocklock
	movl	_totalclock+8, %eax
	movl	%edx, _totalclocklock+12
	xorw	%ax, %ax
	movl	%eax, _totalclocklock+8
L48:
	movl	_m32_sideview, %edx
	movl	$1536, %eax
	testl	%edx, %edx
	je	L49
	movl	$3584, %eax
	subw	_m32_sideang, %ax
	andl	$2047, %eax
L49:
	movl	%eax, (%esp)
	movl	_zoom, %ecx
	movl	_pos+4, %edx
	movl	_pos, %eax
	call	_renderDrawMapView
	jmp	L43
L624:
	movzwl	_pointhighlight, %ebx
	movw	%bx, -2292(%ebp)
	testw	%cx, %cx
	je	L2441
	cmpw	$0, -2292(%ebp)
	js	L650
	movl	_m32_sideview, %esi
	testl	%esi, %esi
	je	L652
	cmpl	$31, _m32_sideelev
	jg	L659
L2308:
	movl	-2304(%ebp), %eax
	testl	%eax, %eax
	je	L636
L2293:
	movzwl	_pointhighlight, %ecx
	movl	$1, %esi
	jmp	L631
L659:
	cmpw	$16383, -2292(%ebp)
	jle	L658
L656:
	movl	%ebx, %eax
	andl	$16383, %eax
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	8(%eax), %eax
	subl	_pos+8, %eax
L660:
	movl	_m32_sidesin, %ecx
	testl	%ecx, %ecx
	jne	L663
	movl	-2264(%ebp), %ecx
	movl	-2268(%ebp), %eax
L664:
	movl	-2256(%ebp), %edx
	addl	-2260(%ebp), %eax
	addl	%ecx, %edx
	movl	%edx, -2264(%ebp)
	movl	%eax, %edx
	movl	_gridlock, %eax
	movl	%edx, -2268(%ebp)
	testl	%eax, %eax
	jne	L2442
L666:
	movswl	_highlightcnt, %edx
	movl	$1, -2252(%ebp)
	testw	%dx, %dx
	jg	L2443
L667:
	movswl	-2292(%ebp), %ebx
	movl	%ebx, %eax
	andl	$49152, %eax
	jne	L677
	movzwl	_numwalls, %eax
	cmpw	%ax, _newnumwalls
	jl	L678
	movl	%ebx, %eax
	movl	-2412(%ebp), %edi
	sall	$5, %eax
	addl	_wall, %eax
	cmpl	%edi, (%eax)
	je	L2444
L678:
	movl	$2, (%esp)
	movl	-2264(%ebp), %edx
	movl	%ebx, %eax
	movl	-2268(%ebp), %ecx
	call	_dragpoint
	movswl	_pointhighlight, %eax
	call	_lastwall
	movl	%eax, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	orb	%al, _editwall(%edx)
L676:
	movl	$1, %eax
	movw	%ax, _asksave
	jmp	L2308
L2382:
	call	__ZL26duplicate_selected_sectorsv.lto_priv.0
	jmp	L1002
L1563:
	subl	$1, %ebx
	movb	$0, __ZL13boardfilename.lto_priv.0(%ebx)
	jmp	L1379
L2412:
	movl	%ecx, _grid
	jmp	L51
L728:
	movl	_m32_sideelev, %eax
	cmpl	$511, %eax
	jg	L731
	movl	_synctics, %edx
	leal	(%eax,%edx,2), %edx
	movl	%edx, _m32_sideelev
	testb	$16, -2316(%ebp)
	je	L732
	jmp	L730
L722:
	imull	_synctics, %edx
	movzbl	_keystatus+42, %ecx
	orb	_keystatus+54, %cl
	movzbl	%cl, %ecx
	addl	%ecx, %ecx
	sall	%cl, %edx
	addl	%edx, %eax
	andl	$2047, %eax
	movw	%ax, _m32_sideang
	jmp	L725
L731:
	movzbl	_buildkeys+9, %edx
	cmpb	$0, _keystatus(%edx)
	jne	L1421
L1423:
	testb	$32, -2316(%ebp)
	je	L735
	movl	_m32_sideelev, %eax
	testl	%eax, %eax
	jle	L735
L736:
	subl	$8, %eax
	movl	%eax, _m32_sideelev
	jmp	L737
L2390:
	call	__ZL26duplicate_selected_spritesv.lto_priv.0
	jmp	L1293
L693:
	movss	-2256(%ebp), %xmm0
	movss	-2260(%ebp), %xmm6
	unpcklps	%xmm6, %xmm0
	movlps	%xmm0, _pos
L696:
	movl	_halfxdim16, %eax
	movl	%eax, _searchx
	movl	_midydim16, %eax
	movl	%eax, _searchy
	jmp	L686
L2347:
	movswl	_linehighlight, %ecx
	movl	$0, (%esp)
	movl	-2260(%ebp), %edx
	movl	-2256(%ebp), %eax
	call	__ZL16getlinehighlightiiia.lto_priv.0
	movw	%ax, _linehighlight
	testw	%ax, %ax
	js	L198
	movswl	%ax, %ebx
	movl	%ebx, %eax
	call	_sectorofwall
	movl	%ebx, %edx
	call	_SetFirstWall.constprop.0
	jmp	L198
L1243:
	movl	$-1, %edx
	movw	%dx, _newnumwalls
	jmp	L1245
L2354:
	movl	-2260(%ebp), %edi
	movl	-2256(%ebp), %esi
	movswl	_pointhighlight, %ecx
	movl	%edi, %edx
	movl	%esi, %eax
	call	_getpointhighlight
	movswl	_linehighlight, %ecx
	movl	%edi, %edx
	movw	%ax, _pointhighlight
	movl	%eax, %ebx
	movl	%esi, %eax
	movl	$0, (%esp)
	call	__ZL16getlinehighlightiiia.lto_priv.0
	movl	%ebx, %edx
	andl	$49152, %edx
	movw	%ax, _linehighlight
	cmpl	$16384, %edx
	je	L2445
	testw	%ax, %ax
	js	L240
	movl	_wall, %edx
	cwtl
	sall	$5, %eax
	leal	(%edx,%eax), %ecx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movswl	10(%ecx), %eax
	xorw	$64, 14(%ecx)
	testw	%ax, %ax
	js	L243
	movzbl	_keystatus+42, %ebx
	orb	_keystatus+54, %bl
	jne	L243
	movl	%eax, %ebx
	andl	$134217727, %eax
	sall	$5, %ebx
	addl	$1, _wallchanged(,%eax,4)
	andw	$-65, 14(%edx,%ebx)
	movswl	10(%ecx), %eax
	movzwl	14(%ecx), %ebx
	movl	%eax, %ecx
	andl	$134217727, %eax
	sall	$5, %ecx
	addl	$1, _wallchanged(,%eax,4)
	andl	$64, %ebx
	orw	%bx, 14(%edx,%ecx)
L243:
	movl	$1, %eax
	movw	%ax, _asksave
	jmp	L240
L2351:
	cmpl	$200, _qsetmode
	je	L231
	xorl	%edx, %edx
L233:
	movl	$0, _keystatus(%edx)
	addl	$16, %edx
	movl	$0, _keystatus-12(%edx)
	movl	$0, _keystatus-8(%edx)
	movl	$0, _keystatus-4(%edx)
	cmpl	$256, %edx
	jb	L233
	subw	$16384, %ax
	cwtl
	call	__Z11ContextHelps
	jmp	L231
	.p2align 4,,10
	.p2align 3
L2353:
	subw	$16384, %ax
	cwtl
	call	_ExtEditSpriteData
	jmp	L239
L763:
	movl	_autogrid, %ecx
	movzbl	_keystatus+42, %eax
	orb	_keystatus+54, %al
	movl	_totalclock, %edx
	movzbl	%al, %eax
	testl	%ecx, %ecx
	je	L765
	leal	0(,%eax,8), %ecx
	movl	$0, _autogrid
	movl	%ecx, _grid
L766:
	testl	%ecx, %ecx
	jne	L2446
	movl	%edx, _lastpm16time
	movl	$LC103, (%esp)
	call	__printmessage16
	jmp	L762
L2327:
	movl	$_sectorhighlight, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	call	_updatesector
	jmp	L35
	.p2align 4,,10
	.p2align 3
L2326:
	cmpb	$0, _g_mouseEnabled
	je	L25
	cmpb	$0, _g_mouseGrabbed
	je	L25
	cmpb	$0, _appactive
	jne	L24
L25:
	xorl	%esi, %esi
	jmp	L27
L36:
	movl	-2256(%ebp), %eax
	movzwl	-2304(%ebp), %ecx
	leal	-2268(%ebp), %edx
	cmpw	$1, __ZL3ovh.lto_priv.0+6
	movl	%eax, -2264(%ebp)
	movl	-2260(%ebp), %eax
	adcw	$0, %cx
	sall	$5, %edi
	movswl	%cx, %ecx
	movl	%eax, -2268(%ebp)
	leal	-2264(%ebp), %eax
	call	__ZL10adjustmarkPiS_s.isra.0
	movl	%edi, %eax
	movl	_wall, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	-2264(%ebp), %eax
	addl	%edi, %edx
	movl	%eax, (%edx)
	movl	_wall, %eax
	movl	-2268(%ebp), %edx
	addl	%edi, %eax
	shrl	$5, %edi
	addl	$1, _wallchanged(,%edi,4)
	movl	%edx, 4(%eax)
	jmp	L2279
L2376:
	movl	_upscalefactor, %ecx
	movl	_halfxdim16, %eax
	movl	_midydim16, %edx
	movss	-2260(%ebp), %xmm7
	movss	-2256(%ebp), %xmm0
	movl	%eax, _searchx
	imull	%ecx, %eax
	movl	%edx, _searchy
	imull	%ecx, %edx
	unpcklps	%xmm7, %xmm0
	movlps	%xmm0, _pos
	movl	%edx, _g_mouseAbs+4
	movl	%eax, _g_mouseAbs
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_SDL_WarpMouseInWindow
	call	_handleevents
	xorl	%eax, %eax
	call	_mouseLockToWindow
	jmp	L761
L2419:
	movb	$1, -2392(%ebp)
	jmp	L1008
L1558:
	cmpl	%ebx, -2292(%ebp)
	jl	L1038
L2243:
	cmpl	%edx, -2292(%ebp)
	jg	L1038
	movl	-2304(%ebp), %ebx
	cmpl	%ecx, %ebx
	jge	L2447
L1559:
	cmpl	%edi, -2304(%ebp)
	jl	L1038
L2244:
	cmpl	%ecx, -2304(%ebp)
	jle	L1043
	addl	$1, %eax
	cmpl	-2296(%ebp), %eax
	jne	L2448
L2274:
	movl	-2292(%ebp), %edi
	movzwl	-2328(%ebp), %ebx
L1037:
	movswl	_numwalls, %eax
	cmpw	%bx, %ax
	jle	L1047
	cmpw	$16382, %ax
	jg	L2449
	cmpw	$4095, _numsectors
	jg	L2450
	movl	-2304(%ebp), %esi
	movw	%ax, _newnumwalls
	movl	%edi, %eax
	movl	$65535, __ZL3ovh.lto_priv.0+4
	movl	%esi, %edx
	call	__ZL14init_new_wall1Psii.constprop.0
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC153, (%esp)
	call	__printmessage16
	movl	%esi, -2416(%ebp)
	movl	%edi, -2412(%ebp)
	jmp	L1035
L2359:
	je	L500
	movl	$1, %edi
	jmp	L501
L744:
	movl	%edx, %ecx
	sarl	$4, %ecx
	imull	%esi, %ecx
	imull	-2292(%ebp), %ecx
	addl	%ecx, %edx
	movl	%edx, _ztarget
	testb	$16, -2316(%ebp)
	je	L747
	jmp	L743
L2377:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC107, (%esp)
	call	__printmessage16
	jmp	L772
L2413:
	testw	%ax, %ax
	jle	L416
	cmpw	$-1, _pointhighlight
	je	L417
	cmpb	$0, _keystatus+54
	jne	L418
	movzwl	__ZL15oldmousebstatus.lto_priv.0, %ecx
	andl	$1, %ecx
	jmp	L419
L214:
	movl	%ebx, 4(%esp)
	andl	$2047, %ebx
	movl	$LC43, (%esp)
	call	__printmessage16
	leal	-2212(%ebp), %eax
	movswl	_highlightsectorcnt, %esi
	movl	%ebx, -2296(%ebp)
	movl	%eax, (%esp)
	leal	-2216(%ebp), %ecx
	movl	$_highlightsector, %eax
	movl	%esi, %edx
	call	__ZL18get_sectors_centerPKsiPiS1_.lto_priv.0
	testl	%esi, %esi
	jle	L216
	movl	-2216(%ebp), %eax
	movl	$1, %ebx
	movl	%eax, -2304(%ebp)
	movl	-2212(%ebp), %eax
	movl	%eax, -2292(%ebp)
L217:
	leal	_highlightsector(%esi,%esi), %eax
	movb	%bl, -2328(%ebp)
	movl	$_highlightsector, -2320(%ebp)
	movl	%eax, -2324(%ebp)
	.p2align 4
	.p2align 3
L225:
	movl	-2320(%ebp), %eax
	movl	_sector, %edx
	movswl	(%eax), %eax
	leal	(%eax,%eax,4), %ecx
	leal	(%edx,%ecx,8), %edx
	movswl	(%edx), %esi
	movswl	2(%edx), %edi
	addl	%esi, %edi
	cmpl	%edi, %esi
	jge	L221
	movl	-2296(%ebp), %ebx
	andl	$2047, %ebx
	movl	%ebx, %eax
	movl	%esi, %ebx
	movl	%eax, %esi
	.p2align 4
	.p2align 3
L222:
	movl	-2304(%ebp), %ecx
	movl	%ebx, %eax
	addl	$1, %ebx
	sall	$5, %eax
	addl	_wall, %eax
	movl	%ecx, -2216(%ebp)
	movl	-2292(%ebp), %ecx
	movl	%ecx, -2212(%ebp)
	movl	%eax, 20(%esp)
	movl	%esi, 16(%esp)
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-2216(%ebp), %eax
	movl	-2212(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_rotatepoint
	cmpl	%ebx, %edi
	jne	L222
	movl	-2320(%ebp), %eax
	movswl	(%eax), %eax
L221:
	movswl	_headspritesect(%eax,%eax), %edi
	movl	%edi, -2252(%ebp)
	cmpl	$-1, %edi
	je	L223
	movl	-2296(%ebp), %eax
	movl	_sprite, %ecx
	andl	$2047, %eax
	movl	%eax, -2312(%ebp)
	.p2align 4
	.p2align 3
L224:
	movl	-2304(%ebp), %eax
	imull	$44, %edi, %ebx
	movl	%eax, -2216(%ebp)
	movl	-2292(%ebp), %eax
	addl	%ebx, %ecx
	movl	%eax, -2212(%ebp)
	movl	%ecx, 20(%esp)
	movl	-2312(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	(%ecx), %eax
	movl	4(%ecx), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-2216(%ebp), %eax
	movl	-2212(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_rotatepoint
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	addl	%ecx, %ebx
	leal	28(%ebx), %eax
	movswl	28(%ebx), %esi
	addl	-2296(%ebp), %esi
	subl	%ecx, %eax
	andl	$2047, %esi
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%si, 28(%ebx)
	movswl	_nextspritesect(%edi,%edi), %edi
	movl	%edi, -2252(%ebp)
	cmpl	$-1, %edi
	jne	L224
L223:
	addl	$2, -2320(%ebp)
	movl	-2320(%ebp), %eax
	cmpl	%eax, -2324(%ebp)
	jne	L225
	movl	-2296(%ebp), %eax
	addl	__ZL13m32_rotateang.lto_priv.0, %eax
	movl	$1, %ecx
	andl	$2047, %eax
	cmpb	$0, -2328(%ebp)
	movw	%cx, _asksave
	movl	%eax, __ZL13m32_rotateang.lto_priv.0
	je	L228
	jmp	L2303
	.p2align 4,,10
	.p2align 3
L2366:
	cmpw	$0, _numsectors
	jle	L688
	xorl	%ebx, %ebx
	jmp	L690
	.p2align 4,,10
	.p2align 3
L2451:
	addl	$1, %ebx
	cmpw	%dx, %bx
	jge	L688
L690:
	movswl	%bx, %edi
	movl	%edi, %eax
	call	_inside_editor_curpos
	movzwl	_numsectors, %edx
	cmpl	$1, %eax
	jne	L2451
	cmpw	%dx, %bx
	jge	L688
	movzwl	_pointhighlight, %eax
	cmpw	$16383, %ax
	jg	L2452
	movswl	_linehighlight, %eax
	testw	%ax, %ax
	js	L692
	testl	%esi, %esi
	jne	L688
	call	_sectorofwall
	cmpl	%edi, %eax
	je	L688
L692:
	testw	%bx, %bx
	jns	L2453
L688:
	andl	$-3, -2316(%ebp)
	jmp	L636
L2322:
	movzbl	_buildkeys+8, %eax
	cmpb	$0, _keystatus(%eax)
	jne	L11
	movzbl	_buildkeys+9, %edx
	movzbl	_keystatus+16, %eax
	orb	_keystatus+17, %al
	orb	_keystatus+72, %al
	orb	_keystatus+75, %al
	orb	_keystatus+77, %al
	orb	_keystatus+80, %al
	orb	_keystatus(%edx), %al
	jne	L11
	movl	-2316(%ebp), %eax
	testl	%eax, %eax
	jne	L11
	movl	__ZL10osdrowscur.lto_priv.0, %eax
	cmpl	$-1, %eax
	je	L13
	movl	_osd, %edx
	cmpl	1144(%edx), %eax
	jne	L11
L13:
	movl	-2360(%ebp), %eax
	cmpl	%eax, _totalclock
	jle	L15
	call	__Z13timerGetTicksv
	movl	$50, %edx
	subl	-2352(%ebp), %eax
	movl	$0, (%esp)
	cmpl	%edx, %eax
	cmova	%edx, %eax
	subl	%eax, %edx
	movl	%edx, 4(%esp)
	call	_SDL_WaitEventTimeout
	leal	-2072(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	$1000, %eax
	imull	-2068(%ebp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	imull	$1000, -2072(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -2352(%ebp)
	call	_handleevents
	movl	_totalclock, %eax
	movl	$0, _synctics
	movl	%eax, _lockclock
	jmp	L1439
L2383:
	call	__ZL26duplicate_selected_spritesv.lto_priv.0
	jmp	L1002
L178:
	movl	_searchy, %edx
	movl	_searchx, %eax
	movl	%ebx, 4(%esp)
	leal	-20(%edx), %esi
	subl	$12, %edx
	addl	$16, %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	movl	%esi, %edx
	call	_editorDraw2dLine
	jmp	L2282
L1462:
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	jmp	L68
L2341:
	xorl	%eax, %eax
	jmp	L170
	.p2align 5
	.p2align 4,,10
	.p2align 3
L168:
	addl	$1, %eax
	cmpl	%eax, %ecx
	je	L169
L170:
	movl	_corruptthings(,%eax,4), %edx
	movl	%edx, %edi
	andl	$917504, %edi
	cmpl	$262144, %edi
	jne	L168
	andl	$16383, %edx
	cmpl	%esi, %edx
	jne	L168
	movzbl	_editorcolors+13, %ebx
	movl	$0, 20(%esp)
	movl	$LC36, 16(%esp)
	movzbl	_editorcolors, %edx
	movl	%ebx, 8(%esp)
	movl	%edx, 12(%esp)
	movl	_searchy, %eax
	subl	$14, %eax
	movl	%eax, 4(%esp)
	movl	_searchx, %eax
	addl	$6, %eax
	movl	%eax, (%esp)
	call	_printext16
	movl	_numcorruptthings, %ecx
	jmp	L169
L213:
	movzbl	_keystatus+42, %eax
	orb	_keystatus+54, %al
	movswl	%dx, %esi
	leal	-2216(%ebp), %ecx
	movl	%eax, %ebx
	leal	-2212(%ebp), %eax
	movl	%esi, %edx
	movl	%eax, (%esp)
	movl	$_highlightsector, %eax
	call	__ZL18get_sectors_centerPKsiPiS1_.lto_priv.0
	movl	-2216(%ebp), %edx
	movl	-2212(%ebp), %ecx
	movl	%edx, -2304(%ebp)
	movl	%ecx, -2292(%ebp)
	testb	%bl, %bl
	jne	L1469
	movl	_gridlock, %ebx
	testl	%ebx, %ebx
	je	L219
	movl	_grid, %edi
	movl	$1024, %eax
	movl	%edi, %ecx
	sarl	%cl, %eax
	movl	$11, %ecx
	movl	%eax, %ebx
	subl	%edi, %ecx
	movl	$-1, %eax
	sall	%cl, %eax
	movl	%edx, %ecx
	leal	(%edx,%ebx), %edx
	andl	%eax, %edx
	testl	%edi, %edi
	cmovle	%ecx, %edx
	movl	-2292(%ebp), %ecx
	movl	%edx, -2304(%ebp)
	leal	(%ebx,%ecx), %edx
	andl	%eax, %edx
	testl	%edi, %edi
	cmovle	%ecx, %edx
	movl	%edx, -2292(%ebp)
L219:
	sall	$9, -2296(%ebp)
	movl	$1, %ebx
	jmp	L217
L210:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC41, (%esp)
	call	__printmessage16
	jmp	L208
L2421:
	movl	%ebx, %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %ebx
	andl	$16383, %eax
	imull	$44, %eax, %eax
	addl	%eax, %ecx
	addl	$12, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorw	$1, 12(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	movzwl	12(%ecx), %eax
	andb	$-2, %ah
	movw	%ax, 12(%ecx)
	sall	$8, %eax
	andl	$256, %eax
	addl	$1, _spritechanged(,%edx,4)
	orw	%ax, 12(%ecx)
	movl	$1, %eax
	movw	%ax, _asksave
	jmp	L196
L2425:
	movl	_isc+20, %eax
	cmpl	$65536, %eax
	jne	L139
	cmpl	$65536, _isc+24
	je	L140
L139:
	movzwl	_highlightcnt, %edx
	testw	%dx, %dx
	jle	L1437
	movswl	%dx, %eax
	movl	%eax, -2292(%ebp)
	jmp	L145
	.p2align 4,,10
	.p2align 3
L2455:
	andl	$16383, %eax
	movl	_sprite, %esi
	imull	$44, %eax, %eax
	leal	(%esi,%eax), %ecx
	movl	$-1171354717, %esi
	mull	%esi
	leal	4(%ecx), %ebx
	movl	%edx, %eax
	movl	%ebx, %edx
	subl	_sprite, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
L143:
	movl	%ebx, %edx
	movl	%ecx, %eax
	call	__ZL13isc_transformPiS_.lto_priv.0
	movzbl	_isc+1, %ebx
	testb	%bl, %bl
	je	L144
	movzwl	_highlight(%edi,%edi), %eax
	testb	$64, %ah
	je	L144
	andl	$16383, %eax
	movl	_sprite, %edx
	imull	$44, %eax, %ecx
	addl	%edx, %ecx
	leal	28(%ecx), %eax
	movswl	28(%ecx), %esi
	addl	_isc+28, %esi
	subl	%edx, %eax
	movl	$-1171354717, %edx
	andl	$2047, %esi
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%si, 28(%ecx)
L144:
	addl	$1, %edi
	cmpl	-2292(%ebp), %edi
	jge	L2454
L145:
	movswl	_highlight(%edi,%edi), %eax
	testb	$64, %ah
	jne	L2455
	movl	_wall, %edx
	sall	$5, %eax
	leal	(%edx,%eax), %ecx
	shrl	$5, %eax
	leal	4(%ecx), %ebx
	addl	$1, _wallchanged(,%eax,4)
	movl	%ebx, %eax
	subl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	jmp	L143
L2391:
	movzwl	_newnumwalls, %edi
	movw	%di, -2292(%ebp)
	movswl	%ax, %edi
	movl	_wall, %eax
	movl	%edi, %esi
	sall	$5, %esi
	movswl	10(%eax,%esi), %ebx
	xorl	%eax, %eax
	call	__ZL18backup_drawn_wallsi.lto_priv.0
	testl	%eax, %eax
	jne	L2456
	movswl	_numwalls, %eax
	movswl	-2292(%ebp), %ecx
	cmpw	%ax, %cx
	cmovge	%ecx, %eax
	sarl	$31, %ebx
	notl	%ebx
	addl	$16384, %ebx
	cmpl	%ebx, %eax
	jge	L2457
	movl	_m32_sideview, %ebx
	leal	-2268(%ebp), %eax
	movl	%edi, %ecx
	movl	$1, 8(%esp)
	movl	%eax, -2304(%ebp)
	testl	%ebx, %ebx
	movl	%eax, 4(%esp)
	leal	-2264(%ebp), %eax
	movl	%eax, -2296(%ebp)
	movl	%eax, (%esp)
	jne	L2458
	movl	-2260(%ebp), %edx
	movl	-2256(%ebp), %eax
	call	__ZL21getclosestpointonwalliiiPiS_i.lto_priv.0
	movl	_wall, %ebx
	addl	%ebx, %esi
L1301:
	movswl	_newnumwalls, %ecx
	movl	-2304(%ebp), %edx
	movl	-2296(%ebp), %eax
	call	__ZL10adjustmarkPiS_s.isra.0
	movl	-2264(%ebp), %edx
	movl	-2268(%ebp), %ecx
	cmpl	(%esi), %edx
	je	L2459
L1302:
	movswl	8(%esi), %eax
	sall	$5, %eax
	addl	%eax, %ebx
	cmpl	(%ebx), %edx
	jne	L1303
	cmpl	%ecx, 4(%ebx)
	je	L1299
L1303:
	movl	$0, 4(%esp)
	movswl	-2292(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZL15M32_InsertPointiiisPi.lto_priv.0
	testl	%eax, %eax
	je	L2460
	cmpl	$1, %eax
	je	L2461
	leal	-2(%eax), %edx
	cmpl	$65533, %edx
	jbe	L2462
	movl	%eax, %edx
	movzwl	%ax, %eax
	movl	$LC180, (%esp)
	sarl	$16, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	call	_message
L1307:
	movl	_pos+8, %eax
	call	_yax_updategrays
	movl	$0, _chsecptr_onextwall
	jmp	L1296
L2458:
	movl	_searchy, %edx
	movl	_searchx, %eax
	call	__ZL21getclosestpointonwalliiiPiS_i.lto_priv.0
	movl	-2264(%ebp), %ecx
	movl	-2268(%ebp), %edx
	subl	_m32_wallscreenxy(,%edi,8), %ecx
	subl	_m32_wallscreenxy+4(,%edi,8), %edx
	cmpl	%edx, %ecx
	movl	%edx, %eax
	cmovge	%ecx, %eax
	testl	%eax, %eax
	jne	L2463
L1299:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC176, (%esp)
	call	__printmessage16
	jmp	L1296
L1384:
	movl	$1885433134, __ZL13boardfilename.lto_priv.0(%ebx)
	movb	$0, __ZL13boardfilename.lto_priv.0+4(%ebx)
	movb	$0, _keystatus+28
	movl	$47, 4(%esp)
	movl	$__ZL21selectedboardfilename.lto_priv.0, (%esp)
	call	_strrchr
	movl	$__ZL13boardfilename.lto_priv.0, 4(%esp)
	movl	%eax, %edx
	leal	1(%eax), %eax
	testl	%edx, %edx
	movl	$__ZL21selectedboardfilename.lto_priv.0, %edx
	cmove	%edx, %eax
	movl	%eax, (%esp)
	call	_strcpy
	movl	$__ZL21selectedboardfilename.lto_priv.0, %eax
	call	__ZL24SaveBoardAndPrintMessagePKc.lto_priv.0
	movl	$__ZL21selectedboardfilename.lto_priv.0, 4(%esp)
	movl	$__ZL13boardfilename.lto_priv.0, (%esp)
	call	_strcpy
	movl	$256, 8(%esp)
	movl	$__ZL13boardfilename.lto_priv.0, 4(%esp)
	movl	$_levelname, (%esp)
	call	_strncpy
	movl	$__ZL13boardfilename.lto_priv.0, 16(%esp)
	movl	$LC191, 12(%esp)
	movl	$LC192, 8(%esp)
	movl	$4096, 4(%esp)
	movl	$_tempbuf, (%esp)
	call	*__imp___snprintf
	movl	$_tempbuf, %eax
	call	_wm_setapptitle
	jmp	L1362
L2427:
	movl	$0, -2072(%ebp)
	testw	%si, %si
	jle	L875
	movl	$1, %eax
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	jmp	L878
	.p2align 4,,10
	.p2align 3
L2464:
	movl	%edi, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
L878:
	movl	%edi, %edx
	sarl	$3, %edx
	movzbl	_graysectbitmap(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%al, %cl
	je	L876
	movswl	%di, %eax
	call	_inside_editor_curpos
	movzwl	_numsectors, %esi
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%eax, %ebx
L876:
	addl	$1, %edi
	movswl	%si, %eax
	cmpl	%edi, %eax
	jg	L2464
	testw	%si, %si
	jle	L875
	movl	$1, %eax
	xorl	%esi, %esi
	cmpl	$1, %ebx
	jg	L879
	jmp	L883
	.p2align 6
	.p2align 4,,10
	.p2align 3
L884:
	movswl	_numsectors, %eax
	addl	$1, %esi
	cmpl	%esi, %eax
	jle	L882
	movl	%esi, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
L879:
	movl	%esi, %edx
	sarl	$3, %edx
	movzbl	_graysectbitmap(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%al, %cl
	je	L884
	movswl	%si, %eax
	movl	%esi, %ebx
	call	_inside_editor_curpos
	cmpl	$1, %eax
	jne	L884
	movl	$LC124, %ecx
	movl	%esi, %edx
	leal	-2072(%ebp), %eax
	call	__ZL20bakframe_fillandfadePPciPKc.lto_priv.0
	testl	%eax, %eax
	je	L884
L881:
	movl	_totalclock, %eax
	movw	%bx, _joinsector
	movl	%eax, _lastpm16time
	movl	$LC125, (%esp)
	call	__printmessage16
	movl	-2072(%ebp), %eax
L885:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L772
L2348:
	movl	%eax, %ebx
	movl	_sprite, %edx
	movl	$1, %edi
	andl	$16383, %ebx
	movw	%di, _asksave
	leal	-2072(%ebp), %edi
	imull	$44, %ebx, %esi
	addl	%esi, %edx
	movswl	28(%edx), %eax
	movl	%edi, 20(%esp)
	movl	$16777280, 24(%esp)
	leal	1024(%eax), %ecx
	movl	$0, 16(%esp)
	addl	$1536, %eax
	andl	$2047, %ecx
	andl	$2047, %eax
	movswl	_sintable(%ecx,%ecx), %ecx
	movl	%ecx, 12(%esp)
	movswl	_sintable(%eax,%eax), %eax
	movl	%eax, 8(%esp)
	movswl	24(%edx), %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	call	_hitscan
	movzwl	-2056(%ebp), %edi
	cmpw	$-1, %di
	je	L199
	movl	_sprite, %eax
	movl	-2072(%ebp), %edx
	addl	%esi, %eax
	movl	%edx, (%eax)
	movl	-2068(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-2064(%ebp), %edx
	movl	%edx, 8(%eax)
	cmpw	$4096, %di
	ja	L201
	movzwl	24(%eax), %eax
	cmpw	$4096, %ax
	je	L201
	cmpw	%ax, %di
	je	L201
	movl	%ebx, %eax
	call	_do_deletespritesect
	movswl	%di, %edx
	movl	%ebx, %eax
	call	_do_insertsprite_at_headofsect
L201:
	leal	-2072(%ebp), %edx
	movl	%ebx, %eax
	call	__ZL25correct_ornamented_spriteiRK9hitdata_t.lto_priv.0
	jmp	L199
L257:
	movswl	_highlightcnt, %eax
	movl	%eax, %edx
	testw	%ax, %ax
	jle	L2465
	movzwl	_newnumwalls, %edx
	testw	%dx, _joinsector
	jns	L369
	movl	_circlewall, %esi
	testl	%esi, %esi
	jns	L369
	movl	-2316(%ebp), %edi
	andl	$1, %edi
	movl	%edi, -2324(%ebp)
	jne	L369
	cmpb	$0, _isc
	jne	L369
	cmpl	$255, _numyaxbunches
	jg	L372
	movl	%eax, -2304(%ebp)
	movl	_wall, %eax
	xorl	%edx, %edx
	movl	$-1, -2292(%ebp)
	movl	%eax, -2312(%ebp)
	jmp	L373
	.p2align 6
	.p2align 4,,10
	.p2align 3
L376:
	addl	$1, %edx
	cmpl	%edx, -2304(%ebp)
	je	L2466
L373:
	movswl	_highlight(%edx,%edx), %esi
	movl	%esi, -2252(%ebp)
	movl	%esi, %edi
	testw	$16384, %si
	jne	L376
	testl	%esi, %esi
	jle	L375
	movl	-2312(%ebp), %ecx
	movl	%esi, %eax
	sall	$5, %eax
	movswl	-24(%eax,%ecx), %eax
	cmpl	%eax, %esi
	je	L376
L375:
	movl	%esi, %eax
	movl	%edx, -2296(%ebp)
	call	_clockdir
	movl	-2296(%ebp), %edx
	cmpl	$1, %eax
	jne	L376
	movl	%esi, %ecx
	andl	$7, %edi
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.2(%edi), %eax
	movzbl	_graywallbitmap(%ecx), %ebx
	andl	%eax, %ebx
	cmpb	%bl, %al
	je	L376
	movl	-2292(%ebp), %ebx
	testl	%ebx, %ebx
	jns	L2467
	movl	%esi, -2292(%ebp)
	addl	$1, %edx
	cmpl	%edx, -2304(%ebp)
	jne	L373
L2466:
	cmpl	$-1, -2292(%ebp)
	je	L2468
	movl	-2292(%ebp), %eax
	movw	%ax, -2312(%ebp)
	cwtl
	call	_sectorofwall
	movswl	%ax, %edi
	movl	%eax, -2332(%ebp)
	movl	%edi, %eax
	call	_yax_getbunch.constprop.1
	movl	%eax, %esi
	movl	%edi, %eax
	call	_yax_getbunch.constprop.0
	movw	%ax, -2296(%ebp)
	testw	%si, %si
	js	L2469
	cmpw	$0, -2296(%ebp)
	js	L2470
	movl	$-1, %eax
	call	_fade_editor_screen
	movl	$31329, %ecx
	leal	-2072(%ebp), %edx
	movl	$LC77, %eax
	movw	%cx, -2072(%ebp)
	movl	$2, %ecx
	call	_editor_ask_function
	testl	%eax, %eax
	cmovne	-2296(%ebp), %si
	movl	%eax, -2304(%ebp)
	movw	%si, -2296(%ebp)
	cmpl	$-1, %eax
	je	L371
L382:
	movl	-2292(%ebp), %eax
	movl	_wall, %edx
	movl	$1, %edi
	movl	%eax, %ebx
	movl	%eax, -2252(%ebp)
	sall	$5, %ebx
	movswl	8(%edx,%ebx), %esi
	cmpl	%esi, %eax
	jne	L390
	jmp	L384
	.p2align 4,,10
	.p2align 3
L386:
	movswl	-2304(%ebp), %edx
	movswl	-2312(%ebp), %eax
	movl	%edx, -2320(%ebp)
	call	_yax_getnextwall
	testw	%ax, %ax
	jns	L387
	movl	-2320(%ebp), %edx
	movswl	%si, %eax
	call	_yax_getnextwall
	testw	%ax, %ax
	jns	L387
	movl	_wall, %edx
	cmpw	$0, 10(%edx,%ebx)
	js	L388
	movl	%esi, %eax
	sall	$5, %eax
	addl	%edx, %eax
	cmpw	$0, 10(%eax)
	js	L388
	movswl	8(%eax), %esi
	addl	$1, %edi
	movl	-2252(%ebp), %eax
	cmpl	%esi, -2292(%ebp)
	je	L384
L390:
	cmpl	%eax, %esi
	jge	L385
	movl	%esi, -2252(%ebp)
L385:
	movl	%esi, %eax
	movl	%esi, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	movzbl	_show2dwall(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%cl, %al
	je	L386
	movl	$LC78, (%esp)
	call	_message
	jmp	L371
	.p2align 4,,10
	.p2align 3
L2417:
	subl	%ebx, %eax
	movl	%eax, -2392(%ebp)
	js	L1223
	movl	%ebx, %edx
	leal	1(%eax), %edi
	xorl	%eax, %eax
	sall	$5, %edx
	addl	_wall, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L1224:
	movl	(%edx), %ecx
	addl	$32, %edx
	movl	%ecx, __ZL8tempxyar.lto_priv.0(,%eax,8)
	movl	-28(%edx), %ecx
	movl	%ecx, __ZL8tempxyar.lto_priv.0+4(,%eax,8)
	addl	$1, %eax
	cmpl	%edi, %eax
	jne	L1224
	movl	-2392(%ebp), %eax
	movl	$-1, %edi
	movw	%di, _newnumwalls
	testl	%eax, %eax
	je	L1226
	movl	$0, -2364(%ebp)
	movl	$0, -2344(%ebp)
L1240:
	leal	-2072(%ebp), %eax
	movl	$2048, 8(%esp)
	movl	%ebx, %esi
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	subl	$1, %esi
	movl	%esi, -2252(%ebp)
	js	L1227
	movl	%esi, %edi
	jmp	L1238
	.p2align 4,,10
	.p2align 3
L1230:
	movswl	8(%edx), %ecx
	sall	$5, %ecx
	addl	%ecx, %eax
	cmpl	(%eax), %ebx
	je	L2471
L1231:
	movl	-2324(%ebp), %ecx
	movzbl	-2292(%ebp), %eax
	orb	-2328(%ebp), %al
	movb	%al, (%ecx)
	movzwl	10(%edx), %eax
	cmpw	$-1, %ax
	je	L1232
	movswl	%ax, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	orb	%al, -2072(%ebp,%edx)
L1232:
	leal	-2252(%ebp), %eax
	movl	$-1, (%esp)
	movl	%esi, %ecx
	movl	%ebx, %edx
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	call	__ZL15M32_InsertPointiiisPi.lto_priv.0
	testl	%eax, %eax
	je	L2472
	cmpl	$65535, %eax
	jg	L2473
	addl	%eax, -2364(%ebp)
L1236:
	movl	-2252(%ebp), %edi
	subl	$1, %edi
	movl	%edi, -2252(%ebp)
	js	L1227
L1238:
	movl	%edi, %eax
	movl	%edi, %edx
	andl	$7, %edx
	sarl	$3, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %ecx
	movzbl	_graywallbitmap(%eax), %edx
	andl	%ecx, %edx
	movb	%cl, -2292(%ebp)
	cmpb	%dl, %cl
	je	L1236
	leal	-2072(%ebp,%eax), %eax
	movl	%eax, -2324(%ebp)
	movzbl	(%eax), %eax
	movb	%al, -2328(%ebp)
	notl	%eax
	testb	%al, %cl
	je	L1236
	movl	_wall, %esi
	movl	%edi, %eax
	sall	$5, %eax
	leal	(%esi,%eax), %edx
	movl	%eax, -2332(%ebp)
	movswl	10(%edx), %eax
	testw	%ax, %ax
	js	L1229
	movl	%eax, %ebx
	sarl	$3, %eax
	andl	$7, %ebx
	movzbl	-2072(%ebp,%eax), %ecx
	movzbl	__ZL8pow2char.lto_priv.2(%ebx), %ebx
	andl	%ebx, %ecx
	cmpb	%cl, %bl
	je	L1236
L1229:
	movswl	8(%edx), %eax
	sall	$5, %eax
	addl	%esi, %eax
	movl	(%edx), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %eax
	movl	%esi, -2304(%ebp)
	movl	4(%edx), %esi
	leal	-2180(%ebp), %edx
	movl	%ecx, -2312(%ebp)
	movl	%esi, -2296(%ebp)
	movl	-2344(%ebp), %esi
	movl	__ZL8tempxyar.lto_priv.0(,%esi,8), %ebx
	movl	__ZL8tempxyar.lto_priv.0+4(,%esi,8), %ecx
	movl	%ebx, -2320(%ebp)
	movl	__ZL8tempxyar.lto_priv.0+8(,%esi,8), %ebx
	movl	__ZL8tempxyar.lto_priv.0+12(,%esi,8), %esi
	movl	%esi, 24(%esp)
	leal	-2200(%ebp), %esi
	movl	$0, -2180(%ebp)
	movl	%esi, 36(%esp)
	leal	-2184(%ebp), %esi
	movl	%esi, 28(%esp)
	movl	%edx, 32(%esp)
	movl	%ebx, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	-2320(%ebp), %ebx
	movl	$0, 8(%esp)
	movl	%ebx, 12(%esp)
	movl	%eax, 4(%esp)
	movl	-2312(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	-2296(%ebp), %edx
	xorl	%ecx, %ecx
	movl	-2304(%ebp), %eax
	call	_lintersect
	movl	-2180(%ebp), %esi
	testl	%eax, %eax
	je	L1236
	movl	_wall, %eax
	movl	-2332(%ebp), %edx
	movl	-2184(%ebp), %ebx
	addl	%eax, %edx
	cmpl	(%edx), %ebx
	jne	L1230
	cmpl	%esi, 4(%edx)
	je	L1236
	movswl	8(%edx), %ecx
	sall	$5, %ecx
	addl	%ecx, %eax
	cmpl	(%eax), %ebx
	jne	L1231
L2471:
	cmpl	%esi, 4(%eax)
	jne	L1231
	jmp	L1236
L1227:
	addl	$1, -2344(%ebp)
	movl	-2344(%ebp), %eax
	cmpl	%eax, -2392(%ebp)
	je	L1239
	movswl	_numwalls, %ebx
	jmp	L1240
L1312:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC181, (%esp)
	call	__printmessage16
	jmp	L1311
L2332:
	movl	%eax, %ebx
	andl	$16383, %ebx
	movl	%ebx, %eax
	call	_select_sprite_tag
	movl	%eax, %esi
	cmpl	$-2147483648, %eax
	je	L59
	cmpw	$0, _numsectors
	jle	L60
	imull	$44, %ebx, %eax
	xorl	%edi, %edi
	movl	%eax, -2292(%ebp)
	.p2align 4
	.p2align 3
L64:
	movswl	_headspritesect(%edi,%edi), %ebx
	testl	%ebx, %ebx
	js	L61
	movl	%edi, -2296(%ebp)
	jmp	L63
	.p2align 4,,10
	.p2align 3
L62:
	movswl	_nextspritesect(%ebx,%ebx), %ebx
	testl	%ebx, %ebx
	js	L2474
L63:
	movl	%ebx, %eax
	call	_select_sprite_tag
	cmpl	%esi, %eax
	jne	L62
	imull	$44, %ebx, %edx
	movl	_sprite, %eax
	movzbl	_editorcolors+12, %ecx
	addl	%eax, %edx
	addl	-2292(%ebp), %eax
	movl	$858993459, (%esp)
	call	__ZL15drawlinebetweenPK4vec3IiES2_ij.lto_priv.0
	movswl	_nextspritesect(%ebx,%ebx), %ebx
	testl	%ebx, %ebx
	jns	L63
L2474:
	movl	-2296(%ebp), %edi
L61:
	movswl	_numsectors, %eax
	addl	$1, %edi
	cmpl	%edi, %eax
	jg	L64
	jmp	L59
L2364:
	movl	$-1, %eax
	call	_fade_editor_screen
	xorl	%edx, %edx
	movl	$LC87, %eax
	call	_ask_if_sure
	movl	%eax, %edx
	xorl	%eax, %eax
L516:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L516
	xorl	$1, %edx
	orl	-2296(%ebp), %edx
	jne	L515
	cmpw	$0, _newnumwalls
	jns	L515
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL7visited.lto_priv.0, (%esp)
	call	_memset
	cmpw	$0, _highlightsectorcnt
	jle	L518
	movl	$-1, -2344(%ebp)
	xorl	%esi, %esi
L564:
	movswl	_highlightsector(%esi,%esi), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %edi
	movswl	2(%eax), %eax
	addl	%edi, %eax
	movl	%edi, -2292(%ebp)
	movl	%eax, -2332(%ebp)
	movl	%edi, -2252(%ebp)
	cmpl	%eax, %edi
	jge	L519
	leal	-2208(%ebp), %eax
	movl	%esi, -2436(%ebp)
	movl	%eax, -2324(%ebp)
	leal	-2200(%ebp), %eax
	movl	%eax, -2320(%ebp)
	.p2align 4
	.p2align 3
L563:
	movl	$-1, (%esp)
	movl	-2324(%ebp), %ecx
	movl	-2320(%ebp), %edx
	movl	-2292(%ebp), %eax
	call	__ZL10trace_loopiPhPsS0_s.constprop.0
	movl	%eax, %esi
	testl	%eax, %eax
	je	L521
	js	L518
	cmpw	$0, -2200(%ebp)
	jne	L521
	movswl	-2208(%ebp), %edi
	movl	%edi, %eax
	movl	%edi, -2312(%ebp)
	call	_yax_getbunch.constprop.1
	movw	%ax, -2184(%ebp)
	movl	%eax, %ebx
	movl	%edi, %eax
	call	_yax_getbunch.constprop.0
	movw	%ax, -2182(%ebp)
	testw	%bx, %bx
	js	L2475
	testw	%ax, %ax
	jns	L518
	movl	-2312(%ebp), %eax
	movl	_sector, %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %ebx
	movl	$-858993459, %eax
	leal	14(%ebx), %edx
	subl	%ecx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	testb	$2, 14(%ebx)
	jne	L518
L526:
	leal	4(%ebx), %edx
	movl	$-858993459, %eax
	movl	$0, -2344(%ebp)
	subl	%ecx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	4(%ebx), %eax
	movl	%eax, -2296(%ebp)
	movswl	_highlightsectorcnt, %eax
	testw	%ax, %ax
	jle	L529
L2554:
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	$_highlightsector, %edx
	call	__ZL18sectors_componentssPKsii.part.0.lto_priv.0
	cmpl	$1, %eax
	jne	L529
	cmpw	$0, _highlightsectorcnt
	jle	L527
	movl	-2344(%ebp), %eax
	movl	%esi, -2364(%ebp)
	movl	$0, -2304(%ebp)
	movzwl	-2184(%ebp,%eax,2), %edi
	movw	%di, -2328(%ebp)
	xorl	%edi, %edi
	testl	%eax, %eax
	jne	L532
	jmp	L535
	.p2align 4,,10
	.p2align 3
L2476:
	movswl	-2328(%ebp), %ecx
	xorl	%edx, %edx
	movl	%esi, %eax
	call	_yax_setbunch.part.0
L534:
	leal	(%esi,%esi,4), %ebx
	movl	$-858993459, %edx
	leal	4(,%ebx,8), %eax
	leal	0(,%ebx,8), %ecx
	addl	_sector, %ecx
	mull	%edx
	movl	-2296(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	xorl	%edx, %edx
	movl	%eax, 4(%ecx)
	xorl	%ecx, %ecx
	movl	%esi, %eax
	call	_setslope
	movl	_sector, %ecx
	movl	-2304(%ebp), %esi
	movl	-2296(%ebp), %eax
	movswl	_highlightsectorcnt, %edx
	subl	8(%ecx,%ebx,8), %eax
	cmpl	%eax, %esi
	cmovge	%esi, %eax
	addl	$1, %edi
	movl	%eax, -2304(%ebp)
	cmpl	%edi, %edx
	jle	L2290
L535:
	movswl	_highlightsector(%edi,%edi), %esi
	cmpw	$0, _editstatus
	jne	L2476
	movzwl	-2328(%ebp), %eax
	movw	%ax, _yax_bunchnum(,%esi,4)
	jmp	L534
L1517:
	movl	$1, %esi
	jmp	L905
L741:
	movzbl	_buildkeys+9, %eax
	cmpb	$0, _keystatus(%eax)
	jne	L756
	jmp	L2313
L723:
	sall	$6, %edx
	addl	%edx, %eax
	andl	$2047, %eax
	jmp	L724
L2355:
	xorl	%ebx, %ebx
	cmpw	$0, _numsectors
	jle	L240
	movswl	%bx, %eax
	call	_inside_editor_curpos
	cmpl	$1, %eax
	je	L2477
L247:
	movswl	_numsectors, %eax
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jle	L240
	movswl	%bx, %eax
	call	_inside_editor_curpos
	cmpl	$1, %eax
	jne	L247
L2477:
	movl	%ebx, %eax
	movl	%ebx, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	movzbl	_graysectbitmap(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%cl, %al
	je	L247
	leal	-2152(%ebp), %edi
	movl	%ebx, 8(%esp)
	movl	$LC47, 4(%esp)
	movl	%edi, (%esp)
	call	_sprintf
	movl	_sector, %edx
	leal	(%ebx,%ebx,4), %eax
	movl	$65535, %ecx
	leal	0(,%eax,8), %esi
	movswl	36(%edx,%eax,8), %edx
	movl	$0, (%esp)
	movl	%edi, %eax
	call	__getnumber16.constprop.0
	movl	_sector, %ecx
	movl	%eax, %ebx
	leal	36(%esi), %eax
	addl	%esi, %ecx
	movl	$-858993459, %esi
	mull	%esi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%bx, 36(%ecx)
	jmp	L240
L504:
	testw	%cx, %cx
	jne	L425
	movzbl	_keystatus+40, %eax
	movl	%eax, -2292(%ebp)
	testl	%eax, %eax
	je	L2478
	movl	$0, -2324(%ebp)
	movb	$0, -2328(%ebp)
L565:
	movzbl	_keystatus+29, %eax
	orb	_keystatus+157, %al
	movl	$1, %esi
	movzbl	%al, %eax
	movl	%eax, -2332(%ebp)
	cmpb	$0, _keystatus+207
	jne	L566
	cmpb	$1, _keystatus+199
	sbbl	%esi, %esi
L566:
	movl	$0, -2072(%ebp)
	movl	_m32_sideview, %eax
	movl	$0, -2068(%ebp)
	movl	$0, -2064(%ebp)
	movl	$0, -2060(%ebp)
	movl	$0, -2056(%ebp)
	movl	$0, -2052(%ebp)
	movl	$0, -2048(%ebp)
	movl	$0, -2044(%ebp)
	testl	%eax, %eax
	je	L2479
L567:
	movl	-2332(%ebp), %eax
	testl	%eax, %eax
	jne	L568
	movl	-2240(%ebp), %eax
	cmpl	%eax, -2232(%ebp)
	jle	L569
	leal	-2232(%ebp), %eax
	leal	-2240(%ebp), %ebx
/APP
 # 5740 "source/build/src/build.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
L569:
	movl	-2236(%ebp), %eax
	cmpl	%eax, -2228(%ebp)
	jg	L2480
L568:
	movl	-2292(%ebp), %eax
	testl	%eax, %eax
	je	L2481
L570:
	cmpw	$0, _numsectors
	jle	L571
L594:
	movl	-2332(%ebp), %eax
	testl	%eax, %eax
	je	L572
L593:
	movl	_m32_sideview, %ebx
	testl	%ebx, %ebx
	je	L2482
	movswl	%di, %eax
	movl	%eax, (%esp)
	movl	_zoom, %ecx
	movl	_searchy, %edx
	movl	_searchx, %eax
	call	__ZL13inside_editorPK4vec3IiEiiiiis.part.0.constprop.0
L574:
	cmpl	$1, %eax
	je	L575
	movswl	_numsectors, %eax
	addl	$1, %edi
	cmpl	%edi, %eax
	jg	L593
L571:
	call	_update_highlightsector
	xorl	%eax, %eax
	call	_ovh_whiteoutgrab
	jmp	L425
L2454:
	movl	_isc+28, %eax
	testb	%bl, %bl
	je	L2483
L1436:
	movl	%eax, 4(%esp)
	movl	$LC31, (%esp)
	call	_message
L147:
	movl	$1, %eax
	movw	%ax, _asksave
	jmp	L112
L650:
	movl	-2304(%ebp), %eax
	testl	%eax, %eax
	je	L636
	movl	$1, %esi
	jmp	L655
L2356:
	subw	$16384, %ax
	leal	-2152(%ebp), %esi
	movl	$0, _g_iReturnVar
	movswl	%ax, %ebx
	movl	$10, %eax
	movl	%ebx, %edx
	call	__Z10VM_OnEventii
	movl	_g_iReturnVar, %eax
	andl	$2, %eax
	leal	(%eax,%eax), %edi
	movl	%edi, -2252(%ebp)
	movl	%ebx, 8(%esp)
	imull	$44, %ebx, %ebx
	movl	%esi, (%esp)
	movl	$LC45, 4(%esp)
	call	_sprintf
	movl	_sprite, %eax
	movl	$65535, %ecx
	movswl	40(%eax,%ebx), %edx
	movl	%edi, (%esp)
	movl	%esi, %eax
	call	__getnumber16.constprop.0
	movl	_sprite, %ecx
	movl	%eax, %esi
	leal	40(%ebx), %eax
	addl	%ebx, %ecx
	movl	$-1171354717, %ebx
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%si, 40(%ecx)
	jmp	L240
L2374:
	movl	$-1, %eax
	xorl	%ebx, %ebx
	movw	%ax, _newnumwalls
	jmp	L629
	.p2align 4,,10
	.p2align 3
L626:
	movswl	_highlightsectorcnt, %eax
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jle	L2306
L629:
	movswl	_highlightsector(%ebx,%ebx), %eax
	call	_inside_editor_curpos
	cmpl	$1, %eax
	jne	L626
	movl	%eax, %esi
	movzwl	_highlightsector(%ebx,%ebx), %eax
	testw	%ax, %ax
	js	L2306
	cmpw	%ax, _numsectors
	jle	L2484
	movl	-2260(%ebp), %eax
	movl	-2256(%ebp), %edi
	movl	%eax, -2396(%ebp)
	movl	%eax, -2268(%ebp)
	movl	_gridlock, %eax
	movl	%edi, -2400(%ebp)
	movl	%edi, -2264(%ebp)
	testl	%eax, %eax
	je	L634
	movl	_grid, %ecx
	testl	%ecx, %ecx
	jg	L2485
L634:
	movl	-2304(%ebp), %edi
	testl	%edi, %edi
	je	L1491
	movl	$1, %ebx
	movzwl	_pointhighlight, %ecx
	movw	%bx, -2356(%ebp)
	jmp	L631
L424:
	movss	-2232(%ebp), %xmm1
	movl	_ydim, %eax
	leal	-2184(%ebp), %ebx
	movss	_searchx, %xmm0
	movaps	%xmm1, %xmm2
	movss	%xmm1, -2056(%ebp)
	subl	$26, %eax
	movaps	%xmm0, %xmm3
	unpcklps	%xmm1, %xmm2
	movl	%eax, _ydim16
	movss	_searchy, %xmm1
	unpcklps	%xmm0, %xmm3
	movzbl	_editorcolors+14, %eax
	movlhps	%xmm3, %xmm2
	movaps	%xmm1, %xmm4
	unpcklps	%xmm1, %xmm0
	movups	%xmm2, -2072(%ebp)
	movss	-2228(%ebp), %xmm2
	negl	%eax
	movlps	%xmm0, -2240(%ebp)
	movaps	%xmm2, %xmm3
	unpcklps	%xmm2, %xmm4
	movss	%xmm2, -2168(%ebp)
	unpcklps	%xmm1, %xmm3
	movlhps	%xmm4, %xmm3
	movups	%xmm3, -2184(%ebp)
	movl	%eax, 12(%esp)
	leal	-2072(%ebp), %eax
	movl	$5, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_plotlines2d.constprop.0
	movzwl	_highlightcnt, %edx
	jmp	L366
L765:
	addl	%eax, %eax
	movl	$1, %ecx
	subl	%eax, %ecx
	addl	_grid, %ecx
	movl	%ecx, _grid
	cmpl	$-1, %ecx
	je	L1554
	cmpl	$9, %ecx
	jne	L766
L1554:
	movl	%edx, _lastpm16time
	movl	$1, _autogrid
	movl	$0, _grid
	movl	$LC102, (%esp)
	call	__printmessage16
	jmp	L762
L2373:
	xorl	%eax, %eax
	call	_paletteGetColor
	xorps	%xmm0, %xmm0
	movl	$0x00000000, 12(%esp)
	movss	LC35, %xmm1
	movl	%eax, %edx
	shrl	$16, %edx
	movzbl	%dl, %edx
	cvtsi2ssl	%edx, %xmm0
	movzbl	%ah, %edx
	movzbl	%al, %eax
	mulss	%xmm1, %xmm0
	movss	%xmm0, 8(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, 4(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glClearColor
	subl	$16, %esp
	movl	$16384, (%esp)
	call	*_glad_glClear
	subl	$4, %esp
	jmp	L155
L254:
	subw	$16384, %ax
	leal	-2152(%ebp), %ebx
	movl	$LC50, 4(%esp)
	movswl	%ax, %esi
	movl	%ebx, (%esp)
	movl	%esi, 8(%esp)
	imull	$44, %esi, %edi
	call	_sprintf
	movl	_sprite, %eax
	movl	$1023, %ecx
	movswl	26(%eax,%edi), %edx
	movl	$0, (%esp)
	movl	%ebx, %eax
	call	__getnumber16.constprop.0
	movl	%eax, %ebx
	cmpw	$1024, %ax
	ja	L371
	movl	_sprite, %eax
	movzwl	26(%eax,%edi), %eax
	cmpw	$1024, %ax
	je	L371
	cmpw	%bx, %ax
	je	L371
	movl	%esi, %eax
	call	_do_deletespritestat
	movswl	%bx, %edx
	movl	%esi, %eax
	call	_do_insertsprite_at_headofstat
	movzwl	_highlightcnt, %eax
	movzwl	_highlightsectorcnt, %ecx
	movl	%eax, %edx
	jmp	L252
L2404:
	movl	$63, %eax
L1376:
	leal	-3(%eax), %edx
	cmpb	$46, __ZL13boardfilename.lto_priv.0-3(%eax)
	cmove	%edx, %ebx
	jmp	L1373
L1548:
	movl	$3, %edx
	movl	$LC21, %eax
	call	_ask_if_sure
	testl	%eax, %eax
	je	L1397
L2397:
	movl	$2, %edx
	xorl	%eax, %eax
	call	_SaveBoard
	jmp	L1397
L637:
	movl	_gridlock, %eax
	movl	-2256(%ebp), %edx
	movl	-2260(%ebp), %ebx
	testl	%eax, %eax
	je	L639
	movl	_grid, %eax
	movl	$1024, %esi
	movl	$-1, %edi
	movl	%eax, %ecx
	sarl	%cl, %esi
	movl	$11, %ecx
	subl	%eax, %ecx
	sall	%cl, %edi
	movl	%edi, %ecx
	leal	(%edx,%esi), %edi
	andl	%ecx, %edi
	testl	%eax, %eax
	cmovg	%edi, %edx
	addl	%ebx, %esi
	andl	%esi, %ecx
	testl	%eax, %eax
	cmovg	%ecx, %ebx
L639:
	movl	%edx, %eax
	movl	%ebx, %edi
	subl	-2400(%ebp), %eax
	movl	%edx, -2296(%ebp)
	subl	-2396(%ebp), %edi
	movl	%eax, -2292(%ebp)
	movl	%eax, -2264(%ebp)
	movl	%edi, -2268(%ebp)
	call	__ZL22hl_all_bunch_sectors_pv.lto_priv.0
	movl	-2296(%ebp), %edx
	testl	%eax, %eax
	jne	L2486
	movl	_totalclock, %eax
	movl	%edx, -2292(%ebp)
	movl	%eax, _lastpm16time
	movl	$LC94, (%esp)
	call	__printmessage16
	movl	-2292(%ebp), %edx
L643:
	movl	$1, %eax
	movw	%ax, _asksave
	movl	-2304(%ebp), %eax
	testl	%eax, %eax
	je	L1493
	movl	%ebx, -2396(%ebp)
	movzwl	_pointhighlight, %ecx
	movl	$1, %esi
	movl	%edx, -2400(%ebp)
	jmp	L631
L227:
	movl	-2296(%ebp), %eax
	sall	$7, %eax
	subl	%eax, %ebx
	andl	$2047, %ebx
	movw	%bx, 28(%ecx)
	jmp	L2303
L505:
	jns	L502
	movl	$1, %edi
	jmp	L501
L2441:
	movl	-2260(%ebp), %edx
	movl	-2256(%ebp), %eax
	movswl	%bx, %ecx
	call	_getpointhighlight
	movw	%ax, _pointhighlight
	movl	%eax, %ebx
	testw	%ax, %ax
	js	L650
	movswl	%ax, %esi
	testb	$-64, %ah
	je	L2487
	movl	_m32_sideview, %edi
	testl	%edi, %edi
	jne	L2235
	movw	%ax, -2292(%ebp)
L652:
	movl	-2256(%ebp), %eax
	movl	-2260(%ebp), %edx
	movl	%eax, -2264(%ebp)
	movl	_gridlock, %eax
	movl	%edx, -2268(%ebp)
	testl	%eax, %eax
	je	L666
L2442:
	movl	_grid, %ecx
	testl	%ecx, %ecx
	jle	L666
	movl	$11, %esi
	movl	$1024, %eax
	movl	$-1, %ebx
	subl	%ecx, %esi
	sarl	%cl, %eax
	movl	%esi, %ecx
	sall	%cl, %ebx
	movl	%ebx, %ecx
	movl	-2264(%ebp), %ebx
	addl	%eax, %ebx
	addl	%edx, %eax
	andl	%ecx, %ebx
	andl	%ecx, %eax
	movl	%ebx, -2264(%ebp)
	movl	%eax, -2268(%ebp)
	jmp	L666
L1004:
	movl	_m32_sideview, %ecx
	testl	%ecx, %ecx
	jne	L1002
	movswl	_linehighlight, %eax
	testw	%ax, %ax
	js	L1002
	movl	%eax, _circlewall
	jmp	L1002
L1461:
	movl	%eax, -2312(%ebp)
	movl	%edi, %eax
	jmp	L58
L1460:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movw	%cx, -2312(%ebp)
	jmp	L57
L2407:
	movl	-2312(%ebp), %esi
	movl	-2296(%ebp), %eax
	movl	%edi, %edx
	movl	%edi, 8(%esp)
	sarl	$31, %edx
	movl	%edx, 12(%esp)
	leal	(%esi,%eax), %ebx
	movl	-2328(%ebp), %eax
	imull	-2324(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.2
	leal	(%ebx,%eax), %esi
	movl	-2292(%ebp), %ebx
	addl	-2304(%ebp), %ebx
	movl	%edi, 8(%esp)
	sarl	$31, %edi
	sarl	%esi
	movl	%edi, 12(%esp)
	movl	-2324(%ebp), %eax
	imull	-2332(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.2
	movl	%esi, %edx
	subl	-2296(%ebp), %edx
	movl	%esi, -2324(%ebp)
	addl	%eax, %ebx
	movl	%edx, %eax
	sarl	%ebx
	movl	%ebx, %edi
	subl	-2304(%ebp), %edi
	movl	%ebx, -2320(%ebp)
	movl	%edi, %esi
/APP
 # 7191 "source/build/src/build.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	call	@ksqrt@4
	movl	-2320(%ebp), %ebx
	movl	-2324(%ebp), %esi
	movl	-2304(%ebp), %ecx
	movl	%eax, %edi
	movl	-2296(%ebp), %eax
	subl	%ebx, %ecx
	subl	%esi, %eax
	movl	%ecx, %edx
	movl	%eax, %ecx
	call	@getangle@8
	movl	-2292(%ebp), %edx
	movl	-2312(%ebp), %ecx
	movl	%ebx, -2320(%ebp)
	movl	%eax, -2328(%ebp)
	subl	%ebx, %edx
	subl	%esi, %ecx
	call	@getangle@8
	movl	_circlewall, %ecx
	movl	%eax, %ebx
	movl	_wall, %eax
	sall	$5, %ecx
	addl	%ecx, %eax
	movswl	10(%eax), %eax
	notl	%eax
	movl	%eax, %ecx
	movzbl	_editorcolors+14, %eax
	shrl	$31, %ecx
	movl	%ecx, -2312(%ebp)
	movl	$2, %ecx
	movl	%eax, (%esp)
	movl	-2320(%ebp), %edx
	movl	%esi, %eax
	call	__ZL10draw_crossiiii.lto_priv.0
	movl	-2344(%ebp), %esi
	subl	-2296(%ebp), %esi
	movl	-2292(%ebp), %edx
	movl	%esi, %eax
	movl	-2304(%ebp), %esi
	subl	%esi, %edx
/APP
 # 7202 "source/build/src/build.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-2364(%ebp), %edx
	movl	%eax, %ecx
	movl	-2332(%ebp), %eax
	subl	%esi, %edx
/APP
 # 7202 "source/build/src/build.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	cmpl	%eax, %ecx
	jl	L1012
	subl	-2328(%ebp), %ebx
	movl	%ebx, %eax
	andl	$2047, %eax
	movl	%eax, %esi
L1013:
	movl	-2312(%ebp), %eax
	movswl	-2354(%ebp), %ecx
	movswl	_numwalls, %edx
	addl	$1, %eax
	movl	%ecx, -2296(%ebp)
	movl	%ecx, %ebx
	imull	%ecx, %eax
	addl	%edx, %eax
	cmpl	$16384, %eax
	setle	%al
	jg	L1014
	cmpb	$0, -2392(%ebp)
	jne	L2488
L1014:
	movzbl	%al, %eax
	movl	%eax, -2332(%ebp)
	testl	%ebx, %ebx
	jle	L1020
	leal	0(,%edi,4), %eax
	movl	%esi, -2304(%ebp)
	sarl	$31, %esi
	movl	%eax, -2292(%ebp)
	leal	1(%ebx), %eax
	movl	%eax, -2312(%ebp)
	sarl	$31, %eax
	movl	%eax, -2308(%ebp)
	movl	%esi, -2300(%ebp)
L1017:
	movl	-2304(%ebp), %esi
	movl	-2300(%ebp), %edi
	movl	%ebx, %eax
	cltd
	movl	%esi, %ecx
	movl	%edi, %eax
	imull	%edx, %ecx
	imull	%ebx, %eax
	addl	%eax, %ecx
	movl	%esi, %eax
	mull	%ebx
	movl	%edx, %edi
	movl	%eax, %esi
	addl	%ecx, %edi
	.p2align 4
	.p2align 3
L1026:
	movl	-2312(%ebp), %eax
	movl	-2308(%ebp), %edx
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	call	_tabledivide64.lto_priv.2
	movl	-2328(%ebp), %ecx
	movl	-2292(%ebp), %edx
	addl	%eax, %ecx
	andl	$2047, %ecx
	leal	512(%ecx), %eax
	movl	%ecx, -2252(%ebp)
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 7226 "source/build/src/build.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-2324(%ebp), %ebx
	movl	-2292(%ebp), %edx
	addl	%eax, %ebx
	movswl	_sintable(%ecx,%ecx), %eax
	movl	%ebx, -2264(%ebp)
/APP
 # 7227 "source/build/src/build.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-2320(%ebp), %ecx
	leal	(%ecx,%eax), %edx
	movl	_editorgridextent, %eax
	movl	%edx, -2268(%ebp)
	movl	%eax, %ecx
	negl	%ecx
	cmpl	%ebx, %eax
	jge	L1022
	movl	%eax, -2264(%ebp)
	movl	%eax, %ebx
L1022:
	cmpl	%ecx, %ebx
	jge	L1023
	movl	%ecx, -2264(%ebp)
	movl	%ecx, %ebx
L1023:
	cmpl	%edx, %eax
	jge	L1024
	movl	%eax, -2268(%ebp)
	movl	%eax, %edx
L1024:
	cmpl	%ecx, %edx
	jge	L1025
	movl	%ecx, -2268(%ebp)
	movl	%ecx, %edx
L1025:
	movzbl	_editorcolors+14, %ecx
	movl	%ebx, %eax
	call	__ZL11draw_squareiiii.constprop.0
	subl	-2304(%ebp), %esi
	sbbl	-2300(%ebp), %edi
	subl	$1, -2296(%ebp)
	jne	L1026
L1020:
	cmpb	$0, -2392(%ebp)
	je	L1011
	movl	-2332(%ebp), %eax
	testl	%eax, %eax
	jne	L1034
L1016:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC150, (%esp)
	call	__printmessage16
	jmp	L1011
L895:
	movzwl	_joinsector+2, %eax
	testw	%ax, %ax
	js	L887
	cmpw	%ax, _joinsector
	je	L887
	movzwl	_numwalls, %eax
	movw	%ax, -2324(%ebp)
	testw	%ax, %ax
	jle	L943
	andb	$-2, _editwall
	movswl	%ax, %ebx
	movl	$1, %edx
	cmpw	$1, %ax
	je	L943
L944:
	movl	%edx, %eax
	movl	%edx, %ecx
	addl	$1, %edx
	andl	$7, %eax
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	notl	%eax
	andb	%al, _editwall(%ecx)
	cmpl	%ebx, %edx
	jne	L944
L943:
	movzwl	-2324(%ebp), %eax
	movl	$0, -2328(%ebp)
	movw	%ax, _newnumwalls
L959:
	movl	-2328(%ebp), %eax
	movswl	_joinsector(%eax,%eax), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %edi
	movswl	2(%eax), %eax
	addl	%edi, %eax
	movl	%edi, -2320(%ebp)
	movl	%eax, -2332(%ebp)
	movl	%edi, -2252(%ebp)
	cmpl	%eax, %edi
	jge	L945
L958:
	movl	-2320(%ebp), %esi
	movl	%esi, %ecx
	movl	%esi, %edx
	sarl	$3, %ecx
	andl	$7, %edx
	movzbl	_editwall(%ecx), %eax
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %ebx
	movl	%eax, %edx
	notl	%edx
	testb	%bl, %dl
	je	L1450
	movl	-2328(%ebp), %edi
	movl	_wall, %edx
	sall	$5, %esi
	xorl	$1, %edi
	movzwl	12(%edx,%esi), %esi
	cmpw	%si, _joinsector(%edi,%edi)
	je	L2489
	movzwl	-2324(%ebp), %eax
	movl	-2328(%ebp), %edi
	movl	$32768, -2312(%ebp)
	movl	-2320(%ebp), %esi
	movl	%edi, -2304(%ebp)
	movw	%ax, -2292(%ebp)
L947:
	cmpw	$16895, -2292(%ebp)
	jg	L2490
	movswl	-2292(%ebp), %eax
	movl	%esi, %edi
	sall	$5, %edi
	sall	$5, %eax
	addl	%edx, %eax
	addl	%edi, %edx
	movl	(%edx), %ecx
	movl	%ecx, (%eax)
	movl	4(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	8(%edx), %ecx
	movl	%ecx, 8(%eax)
	movl	12(%edx), %ecx
	movl	%ecx, 12(%eax)
	movl	16(%edx), %ecx
	movl	%ecx, 16(%eax)
	movl	20(%edx), %ecx
	movl	%ecx, 20(%eax)
	movl	24(%edx), %ecx
	movl	%ecx, 24(%eax)
	movl	28(%edx), %edx
	movl	%edx, 28(%eax)
	movswl	_newnumwalls, %eax
	xorl	%edx, %edx
	movw	%ax, -2296(%ebp)
	movl	%eax, -2292(%ebp)
	call	_yax_getnextwall
	testw	%ax, %ax
	jns	L2491
L1880:
	movl	-2292(%ebp), %eax
	movl	$1, %edx
	movl	$1, %ebx
	call	_yax_getnextwall
	testw	%ax, %ax
	jns	L954
L953:
	movswl	_newnumwalls, %ecx
	movl	_wall, %edx
	movl	%ecx, %eax
	movl	%ecx, %ebx
	andl	$134217727, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	movl	%esi, %ecx
	addl	$1, %eax
	sall	$5, %ebx
	sarl	$3, %ecx
	andl	$7, %esi
	movw	%ax, 8(%edx,%ebx)
	movzbl	__ZL8pow2char.lto_priv.2(%esi), %ebx
	orb	%bl, _editwall(%ecx)
	movswl	8(%edx,%edi), %esi
	movl	-2304(%ebp), %ebx
	movw	%ax, -2292(%ebp)
	movw	%ax, _newnumwalls
	movl	%esi, %ecx
	xorl	$1, %ebx
	sall	$5, %ecx
	addl	%edx, %ecx
	movzwl	12(%ecx), %eax
	cmpw	%ax, _joinsector(%ebx,%ebx)
	jne	L955
	movswl	10(%ecx), %ecx
	movl	%ebx, -2304(%ebp)
	sall	$5, %ecx
	movswl	8(%edx,%ecx), %esi
L955:
	subl	$1, -2312(%ebp)
	je	L956
	movl	%esi, %ecx
	movl	%esi, %ebx
	andl	$7, %ecx
	sarl	$3, %ebx
	movzbl	__ZL8pow2char.lto_priv.2(%ecx), %ecx
	movzbl	_editwall(%ebx), %eax
	andl	%ecx, %eax
	cmpb	%al, %cl
	je	L2273
	movl	-2304(%ebp), %ebx
	movl	%esi, %ecx
	sall	$5, %ecx
	xorl	$1, %ebx
	movzwl	12(%edx,%ecx), %eax
	cmpw	%ax, _joinsector(%ebx,%ebx)
	jne	L947
L2273:
	movzwl	-2292(%ebp), %eax
	movzwl	-2324(%ebp), %edi
	movswl	%ax, %ecx
	movw	%ax, -2324(%ebp)
	addl	$134217727, %ecx
	movl	%ecx, %ebx
	andl	$134217727, %ecx
	sall	$5, %ebx
	addl	$1, _wallchanged(,%ecx,4)
	movw	%di, 8(%edx,%ebx)
L1450:
	addl	$1, -2320(%ebp)
	movl	-2320(%ebp), %eax
	movl	%eax, -2252(%ebp)
	cmpl	-2332(%ebp), %eax
	jne	L958
L945:
	cmpl	$1, -2328(%ebp)
	jne	L1524
	movzwl	-2324(%ebp), %eax
	cmpw	%ax, _numwalls
	jl	L2492
L960:
	movl	$-1, %ebx
	movw	%bx, _joinsector
	jmp	L772
	.p2align 4,,10
	.p2align 3
L2491:
	xorl	%ebx, %ebx
L954:
	movl	%ebx, %edx
	xorl	$1, %edx
	cmpw	$0, _editstatus
	je	L2493
	movl	-2292(%ebp), %ecx
	movswl	%dx, %edx
	cwtl
	call	_yax_setnextwall.part.0
L950:
	cmpl	$1, %ebx
	jne	L1880
	jmp	L953
L2493:
	movzwl	-2296(%ebp), %ecx
	cwtl
	leal	(%edx,%eax,2), %eax
	movw	%cx, _yax_nextwall(%eax,%eax)
	jmp	L950
L1543:
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L1316:
	movzbl	_keystatus+42, %esi
	movl	$__ZL9g_oldpath.lto_priv.0, 4(%esp)
	movl	$__ZL21selectedboardfilename.lto_priv.0, (%esp)
	call	_strcpy
	movl	_pathsearchmode, %eax
	testl	%eax, %eax
	je	L1317
	call	_Bcanonicalisefilename.constprop.0.isra.0
	call	__ZL12getfilenamesPKcS0_.constprop.0.isra.0
	movl	__ZL6fnlist.lto_priv.0+12, %edi
	testl	%edi, %edi
	je	L1319
L2495:
	call	__ZL23menuselect_try_findlastv.lto_priv.0
	movl	%esi, %ecx
	movl	__ZL13findfileshigh.lto_priv.0, %eax
	xorl	%edx, %edx
	testb	%cl, %cl
	je	L1320
	jmp	L1322
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2494:
	subl	$1, %ebx
	movl	$1, %edx
	cmpl	$-1, %ebx
	je	L1323
L1322:
	movl	%eax, %ecx
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L2494
L1321:
	testb	%dl, %dl
	je	L1325
	movl	%ecx, __ZL13findfileshigh.lto_priv.0
L1325:
	movl	$LC184, (%esp)
	call	_message
L1328:
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	jne	L1329
	movl	$1, %eax
	call	_videoShowFrame.part.0
L1329:
	movb	$0, _keystatus+28
	movb	$0, _keystatus+45
	movb	$0, _keystatus+19
	jmp	L1314
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1324:
	subl	$1, %ebx
	movl	$1, %edx
	cmpl	$-1, %ebx
	je	L1323
L1320:
	movl	%eax, %ecx
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	L1324
	jmp	L1321
	.p2align 4,,10
	.p2align 3
L1323:
	movl	%eax, __ZL13findfileshigh.lto_priv.0
	movl	(%eax), %eax
	movl	$2, %ebx
	movl	$__ZL21selectedboardfilename.lto_priv.0, (%esp)
	movl	%eax, 4(%esp)
	call	_strcat
	movl	$4, %edx
	xorl	%eax, %eax
	call	_LoadBoard
	testl	%eax, %eax
	jne	L1316
	movl	$-1, %eax
	movl	$-1, %edx
	movl	$-1, %ecx
	movl	$7, %ebx
	movw	%ax, _newnumwalls
	movl	_pos+8, %eax
	movw	%dx, _joinsector
	movl	$-1, _circlewall
	movl	%eax, -2428(%ebp)
	movw	%cx, -2356(%ebp)
	movw	%bx, -2354(%ebp)
	jmp	L1328
	.p2align 4,,10
	.p2align 3
L1317:
	movl	$1, %edx
	movl	$__ZL21selectedboardfilename.lto_priv.0, %eax
	call	_Bcorrectfilename.isra.0
	call	__ZL12getfilenamesPKcS0_.constprop.0.isra.0
	movl	__ZL6fnlist.lto_priv.0+12, %edi
	testl	%edi, %edi
	jne	L2495
L1319:
	movl	$LC183, (%esp)
	call	_message
	jmp	L1328
L2438:
	cmpl	$256, _numyaxbunches
	je	L2496
	movl	$0, (%esp)
	movswl	%cx, %eax
	movl	$_highlightsector, %edx
	xorl	%ecx, %ecx
	call	__ZL18sectors_componentssPKsii.part.0.lto_priv.0
	cmpl	$1, %eax
	jne	L2497
	movl	$31329, %eax
	movl	$2, %ecx
	leal	-2072(%ebp), %edx
	movw	%ax, -2072(%ebp)
	movl	$LC53, %eax
	call	_editor_ask_function
	movzwl	_highlightsectorcnt, %ecx
	movl	%eax, -2292(%ebp)
	cmpl	$-1, %eax
	je	L2285
	movswl	_highlightsector, %eax
	movl	_sector, %esi
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %ebx
	movl	-2292(%ebp), %eax
	testl	%eax, %eax
	je	L262
	leal	8(%ebx), %eax
	movl	$-858993459, %edx
	subl	%esi, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	8(%ebx), %eax
	movl	%eax, -2312(%ebp)
	testw	%cx, %cx
	jle	L264
	cmpl	$1, -2292(%ebp)
	jne	L2498
	movl	$-1, %ecx
	xorl	%edi, %edi
	movw	%cx, -2296(%ebp)
	jmp	L266
L2502:
	cmpw	$-1, -2296(%ebp)
	jne	L283
	testl	%edi, %edi
	jne	L2499
L283:
	movswl	_highlightsector(%edi,%edi), %ecx
	movl	_sector, %ebx
	movl	$-858993459, %edx
	leal	(%ecx,%ecx,4), %eax
	movl	%ebx, -2304(%ebp)
	leal	(%ebx,%eax,8), %ebx
	leal	8(,%eax,8), %eax
	mull	%edx
	movl	-2312(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	cmpl	8(%ebx), %eax
	jne	L269
	movw	%si, -2296(%ebp)
L1434:
	leal	14(%ebx), %eax
	movl	$-858993459, %edx
	subl	-2304(%ebp), %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	testb	$2, 14(%ebx)
	jne	L285
	movswl	_highlightsectorcnt, %edx
	addl	$1, %edi
	movl	%edx, %esi
	cmpl	%edi, %edx
	jle	L2500
L266:
	movswl	_highlightsector(%edi,%edi), %eax
	movl	$1, %edx
	call	_yax_getbunch
	movl	%eax, %esi
	movzwl	-2296(%ebp), %eax
	cmpw	$-1, %ax
	je	L281
	cmpw	%ax, %si
	jne	L2501
L281:
	testw	%si, %si
	jns	L2502
	movswl	_highlightsector(%edi,%edi), %ecx
	movl	_sector, %esi
	leal	(%ecx,%ecx,4), %eax
	movl	%esi, -2304(%ebp)
	leal	(%esi,%eax,8), %ebx
	leal	8(,%eax,8), %eax
	movl	$-858993459, %esi
	mull	%esi
	movl	-2312(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	cmpl	8(%ebx), %eax
	jne	L269
	cmpw	$-1, -2296(%ebp)
	jne	L1434
	movzwl	_highlightsectorcnt, %esi
	cmpw	$1, %si
	jg	L1434
L1473:
	movl	$0, -2332(%ebp)
	movl	$1, %eax
	movw	%ax, -2364(%ebp)
	movl	$0, -2328(%ebp)
L271:
	movzwl	_numwalls, %eax
	movw	%ax, -2344(%ebp)
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL7visited.lto_priv.0, (%esp)
	call	_memset
	movl	-2292(%ebp), %eax
	testl	%eax, %eax
	sete	%al
	sete	-2312(%ebp)
	movzbl	%al, %eax
	movw	%ax, -2392(%ebp)
	testw	%si, %si
	jle	L2284
	xorl	%esi, %esi
L307:
	movswl	_highlightsector(%esi,%esi), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %ebx
	movswl	2(%eax), %eax
	leal	(%eax,%ebx), %edi
	movl	%ebx, -2252(%ebp)
	cmpl	%edi, %ebx
	jge	L308
	movswl	-2392(%ebp), %eax
	movl	%eax, -2320(%ebp)
L311:
	movl	-2320(%ebp), %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__ZL10trace_loopiPhPsS0_s.constprop.0
	movl	%eax, %edx
	testl	%eax, %eax
	je	L309
	js	L2286
	movl	_wall, %ecx
	leal	134217727(%eax), %eax
	sall	$5, %eax
	addl	%eax, %ecx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movzwl	_numwalls, %eax
	movw	%dx, _numwalls
	movw	%ax, 8(%ecx)
L309:
	addl	$1, %ebx
	movl	%ebx, -2252(%ebp)
	cmpl	%edi, %ebx
	jne	L311
L308:
	movswl	_highlightsectorcnt, %eax
	addl	$1, %esi
	cmpl	%esi, %eax
	jg	L307
	movswl	_numwalls, %eax
	movswl	-2344(%ebp), %esi
	movl	%eax, -2304(%ebp)
	cmpl	%eax, %esi
	jge	L2503
	movzbl	-2312(%ebp), %eax
	movl	_wall, %edx
	movl	%eax, -2312(%ebp)
	sall	$2, %eax
	movl	%eax, -2404(%ebp)
	movl	%esi, %eax
	sall	$5, %eax
	cmpw	$-1, -2296(%ebp)
	je	L2504
	leal	26(%edx,%eax), %eax
	movl	%esi, %edi
	movl	%eax, -2320(%ebp)
	jmp	L319
L317:
	movl	%eax, %ecx
	sall	$5, %ecx
	leal	(%edx,%ecx), %ebx
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	movl	-2292(%ebp), %ecx
	cmpw	$0, 26(%ebx,%ecx,4)
	js	L2505
	addl	$32, -2320(%ebp)
	addl	$1, %edi
	cmpl	-2304(%ebp), %edi
	je	L2506
L319:
	movl	-2320(%ebp), %ecx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	-2404(%ebp), %eax
	movswl	(%ecx,%eax), %eax
	testl	%eax, %eax
	jns	L317
L314:
	movl	%eax, -2252(%ebp)
	movl	-2312(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$LC64, (%esp)
	jmp	L2287
	.p2align 4,,10
	.p2align 3
L491:
	call	_update_highlight
	movzwl	_numwalls, %eax
	testw	%ax, %ax
	jle	L496
	andb	$-2, _editwall
	movswl	%ax, %ebx
	cmpw	$1, %ax
	je	L496
	movl	$1, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L497:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	andl	$7, %edx
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
	notl	%edx
	andb	%dl, _editwall(%ecx)
	cmpl	%eax, %ebx
	jne	L497
L496:
	movzwl	_highlightcnt, %edx
	jmp	L366
L1209:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC166, (%esp)
	call	__printmessage16
	movzwl	_numsectors, %ebx
	testw	%bx, %bx
	jle	L1537
	movl	$0, -2304(%ebp)
	movl	$0, -2292(%ebp)
	.p2align 4
	.p2align 3
L1213:
	movl	_sector, %edi
	movl	-2304(%ebp), %eax
	movswl	_numwalls, %esi
	leal	(%edi,%eax), %ebx
	movswl	(%ebx), %edx
	movl	%esi, -2296(%ebp)
	movl	%edx, %ecx
	cmpl	%esi, %edx
	jge	L1538
	movl	_wall, %ecx
	movl	%edx, %eax
	sall	$5, %esi
	sall	$5, %eax
	leal	8(%ecx,%eax), %eax
	leal	8(%ecx,%esi), %esi
	.p2align 4
	.p2align 4
	.p2align 3
L1212:
	movswl	(%eax), %ecx
	cmpl	%ecx, %edx
	cmovg	%ecx, %edx
	addl	$32, %eax
	cmpl	%eax, %esi
	jne	L1212
	movl	%edx, %ecx
L1211:
	movl	%ebx, %edx
	movl	$-858993459, %eax
	addl	$1, -2292(%ebp)
	movl	-2292(%ebp), %esi
	subl	%edi, %edx
	addl	$40, -2304(%ebp)
	mull	%edx
	shrl	$5, %edx
	movl	_sectorchanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _sectorchanged(,%edx,4)
	movw	%cx, (%ebx)
	movswl	_numsectors, %edi
	cmpl	%esi, %edi
	jg	L1213
	movl	-2296(%ebp), %esi
	movl	%eax, _sectorchanged(,%edx,4)
	movw	%cx, (%ebx)
	movl	%esi, -2252(%ebp)
	cmpl	$1, %edi
	jle	L2299
	movl	%edi, -2292(%ebp)
	leal	-5(%edi,%edi,4), %ecx
	sall	$3, %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L1215:
	movl	_sector, %eax
	movzwl	(%eax,%ecx), %esi
	subl	$40, %ecx
	leal	(%eax,%ecx), %ebx
	leal	2(%ebx), %edx
	movzwl	(%ebx), %edi
	subl	%eax, %edx
	movl	$-858993459, %eax
	mull	%edx
	subl	%edi, %esi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%si, 2(%ebx)
	testl	%ecx, %ecx
	jne	L1215
	movl	-2292(%ebp), %edi
L2299:
	movzwl	_numsectors, %ebx
L1210:
	movl	_sector, %edx
	leal	-5(%edi,%edi,4), %eax
	movswl	_numwalls, %ecx
	leal	(%edx,%eax,8), %esi
	leal	2(%esi), %eax
	movzwl	(%esi), %edi
	subl	%edx, %eax
	movl	$-858993459, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	%ecx, %eax
	subl	%edi, %eax
	movw	%ax, 2(%esi)
	testw	%cx, %cx
	jle	L1216
	movl	_wall, %esi
	sall	$5, %ecx
	leal	12(%esi), %eax
	addl	%eax, %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L1217:
	movl	%eax, %edx
	movl	$-1, %edi
	subl	%esi, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movl	$-1, %edx
	movw	%dx, (%eax)
	leal	-2(%eax), %edx
	addl	$32, %eax
	subl	%esi, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movw	%di, -34(%eax)
	cmpl	%eax, %ecx
	jne	L1217
L1216:
	testw	%bx, %bx
	jle	L1218
	xorl	%edx, %edx
	.p2align 4
	.p2align 3
L1221:
	movl	_sector, %ecx
	leal	(%edx,%edx,4), %eax
	leal	(%ecx,%eax,8), %eax
	movswl	(%eax), %ebx
	movswl	2(%eax), %edi
	addl	%ebx, %edi
	movl	%ebx, -2252(%ebp)
	cmpl	%edi, %ebx
	jge	L1219
	movl	%edx, -2292(%ebp)
	movswl	%dx, %esi
	.p2align 4
	.p2align 3
L1220:
	movswl	%bx, %eax
	movl	%esi, %edx
	addl	$1, %ebx
	call	_checksectorpointer
	movl	%ebx, -2252(%ebp)
	cmpl	%edi, %ebx
	jne	L1220
	movl	-2292(%ebp), %edx
L1219:
	movswl	_numsectors, %eax
	addl	$1, %edx
	cmpl	%edx, %eax
	jg	L1221
L1218:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC167, (%esp)
	call	__printmessage16
	movl	$1, %eax
	movw	%ax, _asksave
	jmp	L1207
L748:
	cmpl	$16, %eax
	jle	L750
	movl	_ztarget, %esi
	movzbl	_keystatus+54, %eax
	orb	_keystatus+42, %al
	movl	_synctics, %ebx
	movzbl	%al, %edx
	movl	%esi, %eax
	sarl	$4, %eax
	leal	(%edx,%edx), %ecx
	imull	%ebx, %eax
	sarl	%cl, %eax
	subl	%eax, %esi
	movl	%esi, %ecx
L1424:
	movl	%ecx, %eax
	sarl	$4, %eax
	imull	%ebx, %eax
	imull	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, _ztarget
	jmp	L760
L694:
	movl	_zoom, %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	_searchy, %eax
	subl	_midydim16, %eax
	cltd
	shldl	$18, %eax, %edx
	sall	$18, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.2
	addl	%eax, _pos+8
	movl	$_pos, %ecx
	movl	$_pos+4, (%esp)
	movl	_midydim16, %edx
	movl	_searchx, %eax
	call	_getpoint
	movl	_pos+8, %eax
	call	_yax_updategrays
	movl	_m32_sideview, %ebx
	testl	%ebx, %ebx
	je	L696
	jmp	L695
L2387:
	andl	$16383, %eax
	movl	$1, %edi
	call	_deletesprite
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC174, (%esp)
	call	__printmessage16
	call	_update_highlight
	movw	%di, _asksave
	jmp	L1288
L2445:
	movl	%ebx, %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %ebx
	andl	$16383, %eax
	imull	$44, %eax, %eax
	addl	%eax, %ecx
	addl	$12, %eax
	mull	%ebx
	movl	$1, %eax
	movw	%ax, _asksave
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorw	$256, 12(%ecx)
	jmp	L240
L2446:
	movl	$2048, %eax
	movl	%edx, _lastpm16time
	sarl	%cl, %eax
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$LC104, (%esp)
	call	__printmessage16
	jmp	L762
L599:
	movswl	-2292(%ebp), %ecx
	movl	%ecx, %eax
	andl	$49152, %eax
	cmpl	$16384, %eax
	je	L2507
	testl	%eax, %eax
	je	L1431
L622:
	movl	$-1, -2424(%ebp)
	movl	$-1, -2420(%ebp)
	jmp	L598
L2371:
	movl	$2, 4(%esp)
	movl	$LC93, (%esp)
	call	_message
	movl	$1, %eax
	call	__ZL18backup_drawn_wallsi.lto_priv.0
	movswl	_pointhighlight, %ecx
	jmp	L598
L2368:
	movl	8(%eax), %eax
	movl	%edx, %ecx
	jmp	L700
L2386:
	movl	$0, -2184(%ebp)
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	movl	$1, %eax
	movl	$0, -2072(%ebp)
	movl	$0, -2068(%ebp)
	movl	$0, -2064(%ebp)
	movl	$0, -2060(%ebp)
	movl	$0, -2056(%ebp)
	movl	$0, -2052(%ebp)
	movl	$0, -2048(%ebp)
	movl	$0, -2044(%ebp)
	movb	$0, _keystatus+211
	movb	$0, _keystatus+32
	cmpw	$0, _numsectors
	jg	L1251
	jmp	L1247
	.p2align 4,,10
	.p2align 3
L2508:
	movl	%ebx, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
L1251:
	movl	%ebx, %edx
	sarl	$3, %edx
	movzbl	_graysectbitmap(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%al, %cl
	je	L1252
	movswl	%bx, %eax
	call	_inside_editor_curpos
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%eax, %esi
L1252:
	movswl	_numsectors, %edx
	addl	$1, %ebx
	cmpl	%ebx, %edx
	jg	L2508
	testw	%dx, %dx
	jle	L1266
	xorl	%edi, %edi
	cmpl	$1, %esi
	jle	L1265
L1256:
	movswl	_highlightsectorcnt, %eax
	testw	%ax, %ax
	jle	L1267
	cmpb	$0, _keystatus+42
	je	L1267
L1264:
	leal	-1(%eax), %ebx
	movl	$_highlightsector, %esi
	leal	_highlightsector-2(%eax,%eax), %edi
	movswl	%bx, %ebx
L1277:
	movswl	(%edi), %ecx
	movl	%ecx, %eax
	movl	%ecx, -2304(%ebp)
	call	_yax_getbunch.constprop.1
	movl	%eax, %edx
	movl	-2304(%ebp), %eax
	movl	%edx, -2292(%ebp)
	call	_yax_getbunch.constprop.0
	movl	-2292(%ebp), %edx
	testw	%dx, %dx
	js	L1272
	movswl	%dx, %ecx
	andl	$7, %edx
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
	orb	%dl, -2072(%ebp,%ecx)
L1272:
	testw	%ax, %ax
	js	L1273
	movswl	%ax, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	orb	%al, -2072(%ebp,%edx)
L1273:
	movswl	(%edi), %eax
	call	__ZL12deletesectors.isra.0
	subl	$1, %ebx
	jb	L1274
	movl	%edi, %eax
L1276:
	movzwl	-2(%eax), %edx
	cmpw	(%edi), %dx
	jl	L1275
	subl	$1, %edx
	movw	%dx, -2(%eax)
L1275:
	subl	$2, %eax
	cmpl	%eax, %esi
	jne	L1276
	subl	$2, %edi
	jmp	L1277
L1267:
	movl	%edi, %ebx
	movl	%edi, %eax
	andl	$7, %eax
	sarl	$3, %ebx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %edx
	movzbl	_graysectbitmap(%ebx), %eax
	andl	%edx, %eax
	cmpb	%al, %dl
	je	L1268
	movswl	%di, %esi
	movb	%dl, -2292(%ebp)
	movl	%esi, %eax
	call	_inside_editor_curpos
	cmpl	$1, %eax
	jne	L1268
	movswl	_highlightsectorcnt, %eax
	movzbl	-2292(%ebp), %edx
	testw	%ax, %ax
	jg	L2509
L1269:
	movl	$LC172, %ecx
	movl	%edi, %edx
	leal	-2184(%ebp), %eax
	call	__ZL20bakframe_fillandfadePPciPKc.lto_priv.0
	testl	%eax, %eax
	jne	L1260
L1268:
	movswl	_numsectors, %eax
	addl	$1, %edi
	cmpl	%edi, %eax
	jg	L1256
L1266:
	movzbl	_keystatus+32, %edx
	movzbl	_keystatus+211, %eax
	orl	%edx, %eax
	jmp	L1255
	.p2align 4,,10
	.p2align 3
L1538:
	movl	%edx, -2296(%ebp)
	jmp	L1211
L2483:
	movl	_isc+20, %eax
L1437:
	fildl	_isc+24
	flds	LC27
	fmul	%st, %st(1)
	fxch	%st(1)
	fstpl	12(%esp)
	movl	%eax, -2292(%ebp)
	fildl	-2292(%ebp)
	movl	$LC30, (%esp)
	fmulp	%st, %st(1)
	fstpl	4(%esp)
	call	_message
	jmp	L147
L2429:
	movl	-2292(%ebp), %ebx
L900:
	movl	$-1, -2292(%ebp)
	movl	$-1, %ecx
	jmp	L902
L1047:
	cmpl	-2412(%ebp), %edi
	jne	L1560
	movl	-2416(%ebp), %ecx
	cmpl	%ecx, -2304(%ebp)
	je	L1050
L1560:
	cmpw	$16383, %bx
	jg	L2510
	movl	-2324(%ebp), %esi
	movl	%eax, -2296(%ebp)
	movl	$0, -2252(%ebp)
	cmpl	%eax, %esi
	jle	L1053
	movl	_wall, %ecx
	sall	$5, %esi
	sall	$5, %eax
	leal	(%esi,%ecx), %edx
	movl	-2304(%ebp), %esi
	addl	%ecx, %eax
	xorl	%ecx, %ecx
L1055:
	cmpl	(%eax), %edi
	jne	L1054
	cmpl	%esi, 4(%eax)
	sete	%bl
	orl	%ebx, %ecx
L1054:
	addl	$32, %eax
	cmpl	%eax, %edx
	jne	L1055
	testb	%cl, %cl
	je	L1053
	movl	$1, -2252(%ebp)
L1050:
	movl	$1, %ebx
	movw	%bx, -2324(%ebp)
L1076:
	movzwl	__ZL3ovh.lto_priv.0+6, %eax
	testw	%ax, %ax
	jne	L1077
	movswl	_numwalls, %eax
	movswl	_newnumwalls, %esi
	movl	%eax, -2296(%ebp)
	movl	%eax, %ecx
	movl	%eax, %ebx
	movl	-2416(%ebp), %eax
	cmpl	%eax, -2304(%ebp)
	movl	%esi, -2292(%ebp)
	sete	%dl
	cmpl	-2412(%ebp), %edi
	sete	%al
	testb	%al, %dl
	je	L1035
	leal	2(%ecx), %eax
	cmpl	%esi, %eax
	jge	L1035
	leal	134217727(%esi), %eax
	movl	_wall, %edi
	movl	%eax, %edx
	andl	$134217727, %eax
	sall	$5, %edx
	addl	$1, _wallchanged(,%eax,4)
	movl	%edi, -2304(%ebp)
	movw	%cx, 8(%edi,%edx)
	movzwl	__ZL3ovh.lto_priv.0+4, %edi
	cmpw	$-1, %di
	jne	L1078
	movswl	_numsectors, %eax
	testw	%ax, %ax
	jle	L1079
	movl	%eax, -2312(%ebp)
	xorl	%ebx, %ebx
	movl	$1, %eax
	jmp	L1083
L1080:
	addl	$1, %ebx
	cmpl	-2312(%ebp), %ebx
	je	L1079
	movl	%ebx, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
L1083:
	movl	%ebx, %edx
	sarl	$3, %edx
	movzbl	_graysectbitmap(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%al, %cl
	je	L1080
	movl	-2416(%ebp), %edx
	movl	-2412(%ebp), %eax
	movswl	%bx, %ecx
	call	_inside
	cmpl	$1, %eax
	jne	L1080
	movl	-2296(%ebp), %eax
	leal	1(%eax), %esi
	movl	%esi, -2252(%ebp)
	cmpl	%esi, -2292(%ebp)
	jle	L1081
	movl	-2304(%ebp), %edi
	sall	$5, %eax
	leal	32(%edi,%eax), %edi
	movswl	%bx, %eax
	movl	%eax, -2320(%ebp)
L1082:
	movl	4(%edi), %edx
	movl	(%edi), %eax
	movl	-2320(%ebp), %ecx
	call	_inside
	cmpl	$1, %eax
	jne	L1080
	addl	$1, %esi
	addl	$32, %edi
	movl	%esi, -2252(%ebp)
	cmpl	%esi, -2292(%ebp)
	jne	L1082
L1081:
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	__ZL15AddLoopToSectoriPi.lto_priv.0
	testl	%eax, %eax
	js	L1035
	movl	_totalclock, %edx
	movl	%edx, _lastpm16time
	movl	%ebx, 4(%esp)
	cmpl	$1, %eax
	je	L2511
	movl	$LC158, (%esp)
	call	__printmessage16
L1095:
	movl	$0, _chsecptr_onextwall
	jmp	L1093
	.p2align 4,,10
	.p2align 3
L2473:
	movl	-2364(%ebp), %edi
	movl	%eax, %edx
	movzwl	%ax, %eax
	movl	$LC148, (%esp)
	sarl	$16, %edx
	movl	%eax, 4(%esp)
	movl	%edi, 12(%esp)
	movl	%edx, 8(%esp)
	call	_message
L1237:
	movl	-2364(%ebp), %esi
	testl	%esi, %esi
	je	L1207
	movl	_pos+8, %eax
	movl	$1, %ebx
	call	_yax_updategrays
	movw	%bx, _asksave
	movl	$0, _chsecptr_onextwall
	jmp	L1207
L2472:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC147, (%esp)
	call	__printmessage16
	jmp	L1237
L2402:
	leal	-2072(%ebp), %eax
	call	__ZL22backup_highlighted_mapP13mapinfofull_t.part.0.lto_priv.0
	movl	$4, %edx
	movl	%eax, %ebx
	xorl	%eax, %eax
	call	_LoadBoard
	testl	%eax, %eax
	jne	L2512
	movl	$-1, _circlewall
	movl	$-1, %eax
	movw	%ax, _newnumwalls
	movl	$-1, %eax
	movw	%ax, _joinsector
	movl	_pos+8, %eax
	movl	%eax, -2428(%ebp)
	testl	%ebx, %ebx
	jne	L2301
	movl	$1, %edx
	leal	-2072(%ebp), %eax
	call	__ZL23restore_highlighted_mapP13mapinfofull_ti.lto_priv.0
	cmpl	$-1, %eax
	jne	L2301
	movl	$LC187, (%esp)
	call	_message
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_hlsectorbitmap, (%esp)
	call	_memset
	call	_update_highlightsector
	jmp	L2301
L2408:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC144, (%esp)
	call	__printmessage16
	jmp	L982
L752:
	cmpl	$16, %eax
	jle	L750
	jmp	L754
L1258:
	movswl	_numsectors, %eax
	addl	$1, %edi
	cmpl	%edi, %eax
	jle	L1266
L1265:
	movswl	_highlightsectorcnt, %eax
	testw	%ax, %ax
	jg	L1257
L1263:
	movl	%edi, %eax
	movl	%edi, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %ebx
	movzbl	_graysectbitmap(%edx), %eax
	andl	%ebx, %eax
	cmpb	%bl, %al
	je	L1258
	movswl	%di, %esi
	movl	%edx, -2292(%ebp)
	movl	%esi, %eax
	call	_inside_editor_curpos
	cmpl	$1, %eax
	jne	L1258
	movswl	_highlightsectorcnt, %eax
	movl	-2292(%ebp), %edx
	testw	%ax, %ax
	jle	L1260
	cmpb	$0, _keystatus+42
	jne	L1264
	movzbl	_hlsectorbitmap(%edx), %ecx
	andl	%ebx, %ecx
	cmpb	%bl, %cl
	je	L1264
L1260:
	movl	%esi, %eax
	call	_yax_getbunch.constprop.1
	movl	%eax, %ebx
	movl	%esi, %eax
	call	_yax_getbunch.constprop.0
	testw	%bx, %bx
	js	L1279
	movswl	%bx, %ecx
	movl	%ebx, %edx
	sarl	$3, %ecx
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
	orb	%dl, -2072(%ebp,%ecx)
L1279:
	testw	%ax, %ax
	js	L1280
	movswl	%ax, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	orb	%al, -2072(%ebp,%edx)
L1280:
	movswl	%di, %eax
	call	__ZL12deletesectors.isra.0
	movl	_totalclock, %eax
	movl	$0, _chsecptr_onextwall
	movl	%eax, _lastpm16time
	movl	$LC173, (%esp)
	call	__printmessage16
L1278:
	movl	-2184(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, -2252(%ebp)
	cmpw	$0, _numsectors
	jle	L1281
	xorl	%edi, %edi
	jmp	L1286
	.p2align 4,,10
	.p2align 3
L1282:
	testw	%bx, %bx
	js	L1284
	movl	%ebx, %eax
	sarl	$3, %ebx
	andl	$7, %eax
	movzbl	-2072(%ebp,%ebx), %edx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	andl	%eax, %edx
	cmpb	%dl, %al
	je	L2513
L1284:
	movswl	_numsectors, %eax
	addl	$1, %edi
	movl	%edi, -2252(%ebp)
	cmpl	%eax, %edi
	jge	L1281
L1286:
	movswl	%di, %eax
	movw	%di, -2304(%ebp)
	call	_yax_getbunch.constprop.1
	movl	%eax, %edx
	movswl	%di, %eax
	movl	%edx, -2292(%ebp)
	call	_yax_getbunch.constprop.0
	movl	-2292(%ebp), %edx
	movswl	%ax, %ebx
	testw	%dx, %dx
	js	L1282
	movl	%edx, %eax
	movswl	%dx, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	movzbl	-2072(%ebp,%edx), %ecx
	andl	%eax, %ecx
	cmpb	%cl, %al
	jne	L1282
	cmpw	$0, _editstatus
	je	L2514
	movl	$-1, %ecx
	xorl	%edx, %edx
	movswl	%di, %eax
	call	_yax_setbunch.part.0
	jmp	L1282
L1281:
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_hlsectorbitmap, (%esp)
	call	_memset
	call	_update_highlightsector
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_show2dwall, (%esp)
	call	_memset
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_show2dsprite, (%esp)
	call	_memset
	call	_update_highlight
	movl	$-1, %eax
	movw	%ax, _newnumwalls
	movl	$1, %eax
	movw	%ax, _asksave
	xorl	%eax, %eax
	call	_yax_update
	movl	_pos+8, %eax
	call	_yax_updategrays
	call	_calc_sector_reachability
	movzbl	_keystatus+32, %edx
	movzbl	_keystatus+211, %eax
	orl	%edx, %eax
L1255:
	testb	%al, %al
	jne	L1249
	jmp	L1247
	.p2align 4,,10
	.p2align 3
L2513:
	cmpw	$0, _editstatus
	je	L2515
	movswl	-2304(%ebp), %eax
	movl	$-1, %ecx
	movl	$1, %edx
	call	_yax_setbunch.part.0
	jmp	L1284
L2339:
	cmpl	$2, %eax
	movswl	_highlightcnt, %eax
	sete	_isc+1
	andl	$-4, -2316(%ebp)
	testw	%ax, %ax
	jle	L1463
	movl	%eax, -2320(%ebp)
	movl	_wall, %eax
	xorl	%ebx, %ebx
	movl	$2147483647, -2292(%ebp)
	movl	%eax, -2328(%ebp)
	movl	_sprite, %eax
	movl	$-2147483648, -2296(%ebp)
	movl	%eax, -2324(%ebp)
	movl	$-2147483648, -2304(%ebp)
	movw	%di, -2332(%ebp)
	movl	$2147483647, -2312(%ebp)
	jmp	L117
L2517:
	andl	$16383, %eax
	movl	-2324(%ebp), %edi
	movl	$-1171354717, %esi
	imull	$44, %eax, %eax
	addl	%eax, %edi
	mull	%esi
	movl	-2312(%ebp), %esi
	movl	%edx, %ecx
	leal	4(%edi), %edx
	shrl	$5, %ecx
	addl	$1, _spritechanged(,%ecx,4)
	movl	(%edi), %eax
	cmpl	%eax, %esi
	cmovle	%esi, %eax
	subl	-2324(%ebp), %edx
	movl	%eax, -2312(%ebp)
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	4(%edi), %eax
	cmpl	%eax, -2292(%ebp)
	movl	%eax, %esi
	cmovle	-2292(%ebp), %esi
	addl	$1, _spritechanged(,%ecx,4)
	movl	(%edi), %eax
	movl	%esi, -2292(%ebp)
	movl	-2296(%ebp), %esi
	cmpl	%eax, %esi
	cmovge	%esi, %eax
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, -2296(%ebp)
	movl	4(%edi), %eax
L116:
	movl	-2304(%ebp), %edi
	cmpl	%eax, %edi
	cmovge	%edi, %eax
	addl	$1, %ebx
	movl	%eax, -2304(%ebp)
	cmpl	%ebx, -2320(%ebp)
	je	L2516
L117:
	movswl	_highlight(%ebx,%ebx), %eax
	testb	$64, %ah
	jne	L2517
	movl	-2328(%ebp), %edi
	sall	$5, %eax
	movl	-2312(%ebp), %esi
	leal	(%edi,%eax), %ecx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	(%ecx), %edx
	cmpl	%edx, %esi
	cmovle	%esi, %edx
	movl	-2292(%ebp), %esi
	movl	%edx, -2312(%ebp)
	leal	4(%ecx), %edx
	subl	%edi, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movl	4(%ecx), %edi
	cmpl	%edi, %esi
	cmovle	%esi, %edi
	addl	$1, _wallchanged(,%eax,4)
	movl	(%ecx), %eax
	movl	%edi, -2292(%ebp)
	movl	-2296(%ebp), %edi
	cmpl	%eax, %edi
	cmovge	%edi, %eax
	addl	$1, _wallchanged(,%edx,4)
	movl	%eax, -2296(%ebp)
	movl	4(%ecx), %eax
	jmp	L116
L2395:
	movl	_circlewall, %eax
	testl	%eax, %eax
	jns	L1393
	testb	$1, -2316(%ebp)
	jne	L1393
	cmpb	$0, _isc
	jne	L1393
	xorl	%eax, %eax
	call	_map_undoredo
	testl	%eax, %eax
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	je	L1392
	movl	$LC194, (%esp)
	call	__printmessage16
	jmp	L1362
	.p2align 4,,10
	.p2align 3
L2424:
	movl	-2256(%ebp), %eax
	movl	_isc+8, %edx
	movl	$3, %ecx
	andl	$-4, -2316(%ebp)
	movl	_isc+4, %edi
	movl	%eax, -2244(%ebp)
	movl	-2260(%ebp), %eax
	movl	_isc+12, %ebx
	movl	_isc+16, %esi
	movl	%eax, -2248(%ebp)
	movzbl	_editorcolors+14, %eax
	subl	%edx, %esi
	subl	%edi, %ebx
	movl	%eax, (%esp)
	movl	%edi, %eax
	movl	%edx, -2292(%ebp)
	call	__ZL10draw_crossiiii.lto_priv.0
	movswl	_numwalls, %ecx
	leal	-2248(%ebp), %edx
	leal	-2244(%ebp), %eax
	call	__ZL10adjustmarkPiS_s.isra.0
	movl	-2244(%ebp), %ecx
	subl	%edi, %ecx
	movl	-2248(%ebp), %edi
	subl	-2292(%ebp), %edi
	cmpb	$0, _isc+1
	jne	L121
	testl	%ecx, %ecx
	je	L122
	testl	%ebx, %ebx
	je	L122
	movl	%ebx, %eax
/APP
 # 4219 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	$7, %eax
	jg	L123
L122:
	movl	$65536, %ebx
L124:
	testl	%edi, %edi
	je	L125
	testl	%esi, %esi
	je	L125
	movl	%esi, %eax
/APP
 # 4221 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	$7, %eax
	jg	L126
L125:
	movl	$65536, %eax
L127:
	cmpl	%ebx, %eax
	movl	%ebx, %edx
	movzbl	_keystatus+29, %ecx
	cmovge	%eax, %edx
	orb	_keystatus+157, %cl
	cmovne	%edx, %eax
	cmovne	%edx, %ebx
	movl	_totalclock, %edx
	movl	%eax, -2292(%ebp)
	fildl	-2292(%ebp)
	flds	LC27
	movl	%ebx, _isc+20
	movl	%eax, _isc+24
	movl	%edx, _lastpm16time
	fmul	%st, %st(1)
	fxch	%st(1)
	fstpl	12(%esp)
	movl	%ebx, -2292(%ebp)
	fildl	-2292(%ebp)
	movl	$LC28, (%esp)
	fmulp	%st, %st(1)
	fstpl	4(%esp)
	call	__printmessage16
	jmp	L129
L2388:
	movl	%ebx, %eax
	movl	_sector, %edi
	call	_sectorofwall
	leal	(%eax,%eax,4), %eax
	cmpw	$3, 2(%edi,%eax,8)
	jle	L1289
	movl	_wall, %edx
	movl	%ebx, %esi
	sall	$5, %esi
	leal	(%edx,%esi), %ecx
	movswl	10(%ecx), %eax
	cmpw	$-1, %ax
	je	L1290
	movl	%ecx, -2304(%ebp)
	movl	%edx, -2292(%ebp)
	call	_sectorofwall
	movl	-2292(%ebp), %edx
	movl	-2304(%ebp), %ecx
	leal	(%eax,%eax,4), %eax
	cmpw	$3, 2(%edi,%eax,8)
	jle	L1289
L1290:
	movswl	8(%ecx), %eax
	sall	$5, %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	$0, (%esp)
	movl	%ebx, %eax
	call	_dragpoint
	movl	_wall, %eax
	addl	%esi, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	call	__ZL16maybedeletewallsii.lto_priv.0
L1289:
	movl	$1, %esi
	movw	%si, _asksave
	jmp	L1288
L2516:
	movl	-2312(%ebp), %esi
	movl	-2304(%ebp), %eax
	addl	-2296(%ebp), %esi
	addl	-2292(%ebp), %eax
	movl	%eax, %ecx
	movl	%esi, %edx
	movzwl	-2332(%ebp), %edi
	shrl	$31, %edx
	shrl	$31, %ecx
	addl	%esi, %edx
	addl	%ecx, %eax
	sarl	%edx
	sarl	%eax
L114:
	movl	%edx, _isc+4
	movl	%eax, _isc+8
	testw	$16384, %di
	jne	L2518
	movl	_wall, %edx
	movswl	%di, %eax
	sall	$5, %eax
	leal	(%edx,%eax), %ecx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	(%ecx), %eax
	movl	%eax, _isc+12
	leal	4(%ecx), %eax
	subl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	4(%ecx), %eax
L119:
	movl	%eax, _isc+16
	movl	$65536, _isc+24
	movl	$65536, _isc+20
	movl	$0, _isc+28
	movb	$1, _isc
	jmp	L112
L2379:
	leal	-2200(%ebp), %eax
	movl	$-1, %esi
	movl	$-1, %edi
	movl	$0, -2292(%ebp)
	movl	%eax, -2320(%ebp)
	movl	$-1, %ebx
	cmpw	$0, _highlightsectorcnt
	jg	L778
	jmp	L779
	.p2align 4,,10
	.p2align 3
L780:
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_yax_getbunch
	movl	$0, -2304(%ebp)
	testw	%ax, %ax
	movl	$0, %eax
	js	L782
L783:
	movl	-2296(%ebp), %ecx
	movl	-2304(%ebp), %edx
	orl	$1, %esi
	movl	%esi, (%ecx,%edx,4)
	testl	%eax, %eax
	je	L785
L784:
	movl	-2180(%ebp,%edi,8), %eax
	movl	%eax, -2304(%ebp)
L794:
	movl	-2312(%ebp), %eax
	movl	_sector, %esi
	leal	8(%eax), %edx
	leal	(%esi,%eax), %ebx
	movl	$-858993459, %eax
	mull	%edx
	movl	-2304(%ebp), %eax
	movl	%edx, %ecx
	shrl	$5, %ecx
	addl	$1, _sectorchanged(,%ecx,4)
	cmpl	%eax, 8(%ebx)
	je	L787
	orl	$2, -2196(%ebp,%edi,8)
L787:
	leal	14(%ebx), %edx
	movl	$-858993459, %eax
	subl	%esi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	testb	$2, 14(%ebx)
	je	L790
	orl	$4, -2196(%ebp,%edi,8)
L790:
	addl	$1, _sectorchanged(,%ecx,4)
	movl	8(%ebx), %eax
	addl	$1, -2292(%ebp)
	movl	%eax, -2180(%ebp,%edi,8)
	movswl	_highlightsectorcnt, %eax
	cmpl	-2292(%ebp), %eax
	jle	L2519
L778:
	movl	-2292(%ebp), %eax
	movl	-2320(%ebp), %esi
	movswl	_highlightsector(%eax,%eax), %ebx
	movl	%ebx, %eax
	movl	%ebx, %edx
	movl	%ebx, -2252(%ebp)
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	movzbl	__ZL14collsectbitmap.lto_priv.0+512(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%al, %cl
	sete	%al
	movzbl	%al, %eax
	movl	%eax, %edi
	leal	(%ebx,%ebx,4), %eax
	sall	$3, %eax
	movl	%eax, -2312(%ebp)
	leal	0(,%edi,8), %eax
	movl	%eax, -2332(%ebp)
	addl	%esi, %eax
	movl	(%eax), %esi
	movl	%eax, -2296(%ebp)
	cmpl	$-1, %esi
	jne	L780
	movl	$0, (%eax)
	movl	_sector, %ecx
	movl	%eax, %esi
	movl	-2312(%ebp), %eax
	addl	%eax, %ecx
	leal	4(%eax), %edx
	movl	$-858993459, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	4(%ecx), %eax
	xorl	%edx, %edx
	movl	%eax, -2184(%ebp,%edi,8)
	movl	%eax, -2344(%ebp)
	movl	%ebx, %eax
	call	_yax_getbunch
	movl	$0, -2304(%ebp)
	testw	%ax, %ax
	js	L781
	movl	$1, (%esi)
L782:
	movl	$0, -2304(%ebp)
L785:
	movl	-2184(%ebp,%edi,8), %eax
	movl	%eax, -2344(%ebp)
L781:
	movl	-2332(%ebp), %eax
	movl	-2312(%ebp), %esi
	leal	-2184(%ebp,%eax), %eax
	leal	4(%esi), %edx
	movl	%eax, -2328(%ebp)
	movl	_sector, %eax
	leal	(%eax,%esi), %ecx
	movl	%eax, -2324(%ebp)
	movl	$-858993459, %eax
	mull	%edx
	movl	-2344(%ebp), %eax
	movl	%edx, %esi
	shrl	$5, %esi
	addl	$1, _sectorchanged(,%esi,4)
	cmpl	%eax, 4(%ecx)
	je	L788
	orl	$2, -2200(%ebp,%edi,8)
L788:
	leal	12(%ecx), %edx
	movl	$-858993459, %eax
	subl	-2324(%ebp), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	testb	$2, 12(%ecx)
	je	L791
	orl	$4, -2200(%ebp,%edi,8)
L791:
	addl	$1, _sectorchanged(,%esi,4)
	movl	-2304(%ebp), %edx
	movl	4(%ecx), %eax
	movl	-2328(%ebp), %esi
	movl	%eax, (%esi,%edx,4)
	movl	-2296(%ebp), %eax
	movl	4(%eax), %esi
	cmpl	$-1, %esi
	je	L2520
	movl	$1, %edx
	movl	%ebx, %eax
	call	_yax_getbunch
	movl	$1, -2304(%ebp)
	testw	%ax, %ax
	movl	$1, %eax
	jns	L783
	jmp	L784
L2520:
	movl	$0, 4(%eax)
	movl	%eax, %esi
	leal	8(%ecx), %edx
	movl	$-858993459, %eax
	subl	-2324(%ebp), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	8(%ecx), %eax
	movl	$1, %edx
	movl	%eax, -2180(%ebp,%edi,8)
	movl	%eax, -2304(%ebp)
	movl	%ebx, %eax
	call	_yax_getbunch
	testw	%ax, %ax
	js	L794
	movl	$1, 4(%esi)
	jmp	L784
L2519:
	movl	-2196(%ebp), %edi
	movl	%esi, -2304(%ebp)
	movl	-2200(%ebp), %ebx
	movl	-2192(%ebp), %esi
	movl	%edi, %eax
	orl	%esi, %eax
	movl	%ebx, %ecx
	orl	-2188(%ebp), %ecx
	je	L2521
	testl	%eax, %eax
	je	L796
L779:
	movl	$LC111, (%esp)
	call	_message
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L772
	movl	-2188(%ebp), %eax
	movl	%esi, 24(%esp)
	movl	%edi, 20(%esp)
	movl	%eax, 28(%esp)
	movl	%ebx, 16(%esp)
	movl	$LC112, 12(%esp)
	movl	$6396, 8(%esp)
	movl	$LC113, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L772
L1493:
	movl	%ebx, -2396(%ebp)
	movl	%edx, -2400(%ebp)
	jmp	L636
L2456:
	movl	$2, 4(%esp)
	movl	$LC93, (%esp)
	call	_message
L1296:
	movl	$1, %eax
	call	__ZL18backup_drawn_wallsi.lto_priv.0
	movl	$1, %eax
	movw	%ax, _asksave
	jmp	L1293
L887:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC138, (%esp)
	call	__printmessage16
	movl	$-1, %edx
	movw	%dx, _joinsector
	jmp	L772
L677:
	cmpl	$16384, %eax
	jne	L676
	movl	-2292(%ebp), %ecx
	movl	_sprite, %eax
	leal	-2184(%ebp), %ebx
	movss	-2264(%ebp), %xmm1
	movss	-2268(%ebp), %xmm0
	andl	$16383, %ecx
	imull	$44, %ecx, %esi
	movaps	%xmm1, %xmm2
	movl	%ecx, -2292(%ebp)
	unpcklps	%xmm0, %xmm2
	movss	%xmm1, -2312(%ebp)
	movss	%xmm0, -2296(%ebp)
	addl	%esi, %eax
	movzwl	24(%eax), %edi
	movw	%di, -2200(%ebp)
	movl	(%eax), %edx
	movl	%edx, -2072(%ebp)
	movl	4(%eax), %edx
	movl	%edx, -2068(%ebp)
	movl	8(%eax), %edx
	movlps	%xmm2, -2184(%ebp)
	movl	%edx, -2064(%ebp)
	movl	8(%eax), %eax
	movl	%eax, -2176(%ebp)
	movl	%ebx, 4(%esp)
	movl	%ecx, (%esp)
	call	_setspritez
	cmpl	$-1, %eax
	jne	L676
	testw	%di, %di
	movss	-2296(%ebp), %xmm0
	movss	-2312(%ebp), %xmm1
	js	L676
	leal	-2200(%ebp), %eax
	movss	%xmm0, 4(%esp)
	movl	%eax, 8(%esp)
	movss	%xmm0, -2312(%ebp)
	movss	%xmm1, (%esp)
	movss	%xmm1, -2296(%ebp)
	call	_updatesector
	movl	_sprite, %edi
	movzwl	-2200(%ebp), %ebx
	leal	(%edi,%esi), %ecx
	testw	%bx, %bx
	js	L682
	movl	%ecx, %eax
	movss	-2296(%ebp), %xmm1
	movss	-2312(%ebp), %xmm0
	subl	%edi, %eax
	movl	$-1171354717, %edi
	mull	%edi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%esi), %eax
	mull	%edi
	movss	%xmm1, (%ecx)
	movl	_sprite, %ecx
	addl	%esi, %ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movzwl	24(%ecx), %edx
	movss	%xmm0, 4(%ecx)
	cmpw	$4096, %dx
	sete	%al
	cmpw	%dx, %bx
	sete	%dl
	orb	%dl, %al
	jne	L676
	cmpw	$4096, %bx
	ja	L676
	movl	-2292(%ebp), %edi
	movl	%edi, %eax
	call	_do_deletespritesect
	movswl	%bx, %edx
	movl	%edi, %eax
	call	_do_insertsprite_at_headofsect
	jmp	L676
	.p2align 4,,10
	.p2align 3
L1012:
	movl	-2328(%ebp), %eax
	subl	%ebx, %eax
	andl	$2047, %eax
	negl	%eax
	movl	%eax, %esi
	jmp	L1013
L2443:
	movzwl	-2292(%ebp), %ecx
	xorl	%eax, %eax
	jmp	L671
	.p2align 5
	.p2align 4,,10
	.p2align 3
L668:
	addl	$1, %eax
	cmpl	%edx, %eax
	je	L667
L671:
	cmpw	%cx, _highlight(%eax,%eax)
	jne	L668
	movswl	-2292(%ebp), %eax
	movl	$0, -2252(%ebp)
	movl	%eax, %edi
	andl	$49152, %edi
	jne	L2522
	sall	$5, %eax
	addl	_wall, %eax
	movl	-2264(%ebp), %edi
	movl	-2268(%ebp), %esi
	subl	(%eax), %edi
	subl	4(%eax), %esi
L672:
	movl	%edi, -2264(%ebp)
	xorl	%ebx, %ebx
	movl	%esi, -2268(%ebp)
	jmp	L675
L2523:
	movl	_wall, %edx
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	addl	%edi, (%edx)
	movswl	_highlight(%ebx,%ebx), %eax
	movl	_wall, %edx
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	addl	%esi, 4(%edx)
L674:
	movswl	_highlightcnt, %eax
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jle	L676
L675:
	movswl	_highlight(%ebx,%ebx), %eax
	movl	%eax, %edx
	testb	$-64, %ah
	je	L2523
	andl	$16383, %edx
	movl	_sprite, %ecx
	imull	$44, %edx, %eax
	movl	$-1171354717, %edx
	addl	%eax, %ecx
	mull	%edx
	movl	%edx, %eax
	leal	4(%ecx), %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$-1171354717, %eax
	addl	%edi, (%ecx)
	subl	_sprite, %edx
	mull	%edx
	movl	%ecx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	%esi, 4(%ecx)
	movl	%ecx, 4(%esp)
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	%eax, (%esp)
	call	_setspritez
	jmp	L674
L2431:
	movswl	_joinsector, %edx
	cmpl	-2304(%ebp), %edx
	je	L906
	andw	-2070(%ebp), %ax
	andw	-2068(%ebp), %ax
	testw	%ax, -2066(%ebp)
	js	L907
	movl	$LC127, (%esp)
	call	_message
L907:
	movl	$LC128, (%esp)
	call	_message
L908:
	movl	$-1, _joinsector
	jmp	L772
L2486:
	movswl	_highlightsectorcnt, %eax
	testw	%ax, %ax
	jle	L643
	leal	_highlightsector(%eax,%eax), %eax
	movl	%edx, -2320(%ebp)
	movl	$_highlightsector, %ecx
	movl	%eax, -2312(%ebp)
	movl	%ebx, -2324(%ebp)
L648:
	movswl	(%ecx), %edx
	movl	_sector, %eax
	leal	(%edx,%edx,4), %ebx
	leal	(%eax,%ebx,8), %ebx
	movswl	(%ebx), %eax
	movswl	2(%ebx), %ebx
	addl	%eax, %ebx
	cmpl	%ebx, %eax
	jge	L644
	movl	%ecx, -2296(%ebp)
	movl	_wall, %edx
	sall	$5, %eax
	sall	$5, %ebx
	movl	-2292(%ebp), %esi
	.p2align 6
	.p2align 4
	.p2align 3
L645:
	movl	%eax, %ecx
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	leal	4(%eax), %ecx
	addl	%esi, (%edx,%eax)
	movl	_wall, %edx
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	addl	%edi, 4(%edx,%eax)
	addl	$32, %eax
	cmpl	%eax, %ebx
	jne	L645
	movl	-2296(%ebp), %ecx
	movswl	(%ecx), %edx
L644:
	movswl	_headspritesect(%edx,%edx), %esi
	testl	%esi, %esi
	js	L646
	movl	%ecx, -2296(%ebp)
	movl	_sprite, %ebx
	.p2align 4
	.p2align 3
L647:
	imull	$44, %esi, %ecx
	movl	$-1171354717, %eax
	mull	%ecx
	movl	-2292(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ecx), %edx
	addl	%eax, (%ebx,%ecx)
	movl	$-1171354717, %eax
	movl	_sprite, %ebx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	%edi, 4(%ebx,%ecx)
	movswl	_nextspritesect(%esi,%esi), %esi
	testl	%esi, %esi
	jns	L647
	movl	-2296(%ebp), %ecx
L646:
	addl	$2, %ecx
	cmpl	%ecx, -2312(%ebp)
	jne	L648
	movl	%esi, -2252(%ebp)
	movl	-2320(%ebp), %edx
	movl	-2324(%ebp), %ebx
	jmp	L643
L2409:
	movl	8(%eax), %eax
	movl	%eax, -2292(%ebp)
	jmp	L997
L745:
	cmpb	$0, -2304(%ebp)
	je	L2524
	movl	%edx, %eax
	sarl	$4, %eax
	imull	%esi, %eax
	sarl	%cl, %eax
	subl	%eax, %edx
	movl	%edx, _ztarget
	jmp	L760
L2381:
	movl	%ebx, %eax
	call	_sectorofwall
	movl	%ebx, %edx
	cwtl
	call	__ZL13whitelinescanss.lto_priv.0
	movswl	_numwalls, %ebx
	movw	%ax, _newnumwalls
	cmpw	%bx, %ax
	jl	L2525
	cmpw	$16385, %ax
	je	L2526
	cmpw	%bx, %ax
	jle	L985
L986:
	movl	_wall, %edx
	movl	%ebx, %ecx
	sall	$5, %ecx
	addl	%edx, %ecx
	movswl	10(%ecx), %eax
	movl	%eax, %esi
	andl	$134217727, %eax
	sall	$5, %esi
	addl	$1, _wallchanged(,%eax,4)
	movw	%bx, 10(%edx,%esi)
	movswl	10(%ecx), %eax
	movl	%eax, %ecx
	andl	$134217727, %eax
	addl	$1, _wallchanged(,%eax,4)
	movzwl	_numsectors, %eax
	sall	$5, %ecx
	movw	%ax, 12(%edx,%ecx)
	movswl	%bx, %eax
	xorl	%edx, %edx
	call	_yax_setnextwall.constprop.0
	movswl	%bx, %eax
	movl	$1, %edx
	addl	$1, %ebx
	call	_yax_setnextwall.constprop.0
	movswl	_newnumwalls, %eax
	cmpl	%ebx, %eax
	jg	L986
L985:
	movswl	_numsectors, %ebx
	cmpw	$0, _editstatus
	je	L2527
	xorl	%edx, %edx
	movl	$-1, %ecx
	movl	%ebx, %eax
	call	_yax_setbunch.part.0
	cmpw	$0, _editstatus
	je	L988
	movl	$-1, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	_yax_setbunch.part.0
L990:
	xorl	%eax, %eax
	call	_yax_update
	movl	_pos+8, %eax
	call	_yax_updategrays
	movzwl	_newnumwalls, %eax
	addw	$1, _numsectors
	movw	%ax, _numwalls
	movl	$-1, %eax
	movw	%ax, _newnumwalls
	call	_calc_sector_reachability
	movl	$1, %eax
	movw	%ax, _asksave
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC143, (%esp)
	call	__printmessage16
	jmp	L982
L2497:
	movl	$LC52, (%esp)
	call	_message
	movzwl	_highlightcnt, %eax
	movzwl	_highlightsectorcnt, %ecx
	movl	%eax, %edx
	jmp	L252
L2484:
	movl	-2304(%ebp), %eax
	testl	%eax, %eax
	je	L1495
	movl	$-1, %eax
	movzwl	_pointhighlight, %ecx
	movw	%ax, -2356(%ebp)
	jmp	L631
L2343:
	movl	_ydim, %eax
	cltd
	idivl	%ebx
	addl	%esi, %eax
	cmpl	%eax, %ecx
	jl	L191
	jmp	L190
L663:
	negl	%eax
	imull	_m32_sidecos
	movl	%ecx, 8(%esp)
	sarl	$31, %ecx
	movl	%ecx, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___divdi3
	shrdl	$4, %edx, %eax
	sarl	$4, %edx
	movl	%eax, %ecx
	movzwl	_m32_sideang, %eax
	movl	%edx, %ebx
	movl	%ecx, -2312(%ebp)
	movl	-2312(%ebp), %esi
	negl	%eax
	movl	%ebx, -2308(%ebp)
	leal	512(%eax), %edx
	andl	$2047, %eax
	negl	%esi
	andl	$2047, %edx
	movswl	_sintable(%eax,%eax), %edi
	xorl	%eax, %eax
	movswl	_sintable(%edx,%edx), %edx
	movl	%edx, -2296(%ebp)
/APP
 # 1408 "source/build/include/build.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	xorl	%esi, %esi
	movl	%eax, %ecx
	movl	-2296(%ebp), %edx
	movl	-2312(%ebp), %eax
/APP
 # 1408 "source/build/include/build.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	jmp	L664
L2518:
	movl	%edi, %eax
	movl	_sprite, %ebx
	movl	$-1171354717, %esi
	andl	$16383, %eax
	imull	$44, %eax, %eax
	leal	(%ebx,%eax), %ecx
	mull	%esi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	(%ecx), %eax
	movl	%eax, _isc+12
	leal	4(%ecx), %eax
	subl	%ebx, %eax
	mull	%esi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	4(%ecx), %eax
	jmp	L119
L2488:
	xorl	%eax, %eax
	call	__ZL18backup_drawn_wallsi.lto_priv.0
	movl	%eax, -2312(%ebp)
	testl	%eax, %eax
	jne	L2528
	movl	-2296(%ebp), %eax
	testl	%eax, %eax
	jle	L1019
	leal	0(,%edi,4), %eax
	movl	%esi, %ecx
	movl	%esi, -2344(%ebp)
	movl	%eax, -2292(%ebp)
	movl	-2296(%ebp), %eax
	sarl	$31, %ecx
	movl	%ecx, -2340(%ebp)
	leal	1(%eax), %edi
	imull	%esi
	movl	%edi, -2332(%ebp)
	movl	-2296(%ebp), %edi
	movl	%eax, -2304(%ebp)
	movl	%edx, -2300(%ebp)
	jmp	L1021
	.p2align 4,,10
	.p2align 3
L1031:
	cmpl	$65535, %eax
	jg	L2529
	movzbl	_editorcolors+14, %ecx
	addl	%eax, -2312(%ebp)
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__ZL11draw_squareiiii.constprop.0
	movl	-2344(%ebp), %ecx
	movl	-2340(%ebp), %ebx
	subl	%ecx, -2304(%ebp)
	sbbl	%ebx, -2300(%ebp)
	subl	$1, %edi
	je	L1019
L1021:
	movl	-2332(%ebp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	-2304(%ebp), %eax
	movl	-2300(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.2
	movl	-2328(%ebp), %esi
	movl	-2292(%ebp), %edx
	leal	(%esi,%eax), %ecx
	andl	$2047, %ecx
	leal	512(%ecx), %eax
	movl	%ecx, -2252(%ebp)
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 7226 "source/build/src/build.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-2324(%ebp), %esi
	movl	-2292(%ebp), %edx
	leal	(%esi,%eax), %ebx
	movswl	_sintable(%ecx,%ecx), %eax
	movl	%ebx, -2264(%ebp)
/APP
 # 7227 "source/build/src/build.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-2320(%ebp), %esi
	addl	%eax, %esi
	movl	_editorgridextent, %eax
	movl	%esi, -2268(%ebp)
	movl	%eax, %edx
	negl	%edx
	cmpl	%eax, %ebx
	jle	L1027
	movl	%eax, -2264(%ebp)
	movl	%eax, %ebx
L1027:
	cmpl	%ebx, %edx
	jle	L1028
	movl	%edx, -2264(%ebp)
	movl	%edx, %ebx
L1028:
	cmpl	%eax, %esi
	jle	L1029
	movl	%eax, -2268(%ebp)
	movl	%eax, %esi
L1029:
	cmpl	%esi, %edx
	jle	L1030
	movl	%edx, -2268(%ebp)
	movl	%edx, %esi
L1030:
	movl	$_circlewall, 4(%esp)
	movl	%esi, %ecx
	movl	%ebx, %edx
	movl	$-1, (%esp)
	movl	_circlewall, %eax
	call	__ZL15M32_InsertPointiiisPi.lto_priv.0
	testl	%eax, %eax
	jne	L1031
	movl	$LC147, (%esp)
	call	_message
L1032:
	movl	$-1, _circlewall
	movl	$0, _chsecptr_onextwall
	jmp	L1011
L2325:
	movl	$0, -2296(%ebp)
	movl	_ydim, %eax
	cltd
	idivl	%edi
	addl	%esi, %eax
	cmpl	%eax, %ecx
	jl	L23
	jmp	L22
L2433:
	addl	$14, %eax
	movl	$-858993459, %edi
	subl	%edx, %eax
	mull	%edi
	movl	-2296(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	testb	$2, 14(%eax)
	je	L916
	jmp	L915
L2399:
	leal	-2072(%ebp), %eax
	call	__ZL22backup_highlighted_mapP13mapinfofull_t.part.0.lto_priv.0
	movl	%eax, -2292(%ebp)
	jmp	L1352
L880:
	movswl	_numsectors, %eax
	addl	$1, %esi
	cmpl	%esi, %eax
	jle	L882
	movl	%esi, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
L883:
	movl	%esi, %edx
	sarl	$3, %edx
	movzbl	_graysectbitmap(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%al, %cl
	je	L880
	movswl	%si, %eax
	movl	%esi, %ebx
	call	_inside_editor_curpos
	cmpl	$1, %eax
	jne	L880
	jmp	L881
L2463:
	cmpl	%edx, %ecx
	movl	_wall, %edx
	setl	%cl
	movswl	8(%edx,%esi), %edx
	movzbl	%cl, %ecx
	leal	(%ecx,%edx,2), %edx
	leal	(%ecx,%edi,2), %ecx
	movl	_m32_wallscreenxy(,%edx,4), %edx
	subl	_m32_wallscreenxy(,%ecx,4), %edx
	movl	%edx, 8(%esp)
	sarl	$31, %edx
	movl	%edx, 12(%esp)
	cltd
	shldl	$24, %eax, %edx
	sall	$24, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.2
	movl	_wall, %ebx
	movl	%eax, %ecx
	addl	%ebx, %esi
	movswl	8(%esi), %eax
	sall	$5, %eax
	addl	%ebx, %eax
	movl	4(%eax), %edx
	subl	4(%esi), %edx
	movl	%edx, -2312(%ebp)
	movl	(%eax), %eax
	movl	%ecx, %edx
	subl	(%esi), %eax
/APP
 # 8119 "source/build/src/build.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	(%esi), %eax
	movl	%ecx, %edx
	movl	%eax, -2264(%ebp)
	movl	-2312(%ebp), %eax
/APP
 # 8120 "source/build/src/build.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	4(%esi), %eax
	movl	%eax, -2268(%ebp)
	jmp	L1301
L2478:
	cmpb	$0, _keystatus+39
	setne	%al
	setne	-2328(%ebp)
	movzbl	%al, %eax
	movl	%eax, -2292(%ebp)
	movl	%eax, -2324(%ebp)
	jmp	L565
L2321:
	movl	_ydim, %eax
	cltd
	idivl	%edi
	addl	%esi, %eax
	cmpl	%eax, %ebx
	jl	L11
	jmp	L12
L2524:
	testb	$32, -2316(%ebp)
	jne	L759
	jmp	L750
L2337:
	movl	_ydim, %eax
	cltd
	idivl	%ebx
	addl	%esi, %eax
	cmpl	%eax, %ecx
	jl	L108
	jmp	L107
L2510:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC154, (%esp)
	call	__printmessage16
	jmp	L1035
L445:
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_show2dwall, (%esp)
	call	_memset
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_show2dsprite, (%esp)
	call	_memset
	jmp	L2289
L121:
	movl	%edi, %edx
	call	@getangle@8
	movl	%esi, %edx
	movl	%ebx, %ecx
	movl	%eax, %edi
	call	@getangle@8
	movl	%eax, %edx
	movl	%edi, %eax
	subl	%edx, %eax
	movl	_totalclock, %edx
	movl	%eax, _isc+28
	movl	%edx, _lastpm16time
	movl	%eax, 4(%esp)
	movl	$LC29, (%esp)
	call	__printmessage16
L129:
	cmpw	$0, _highlightcnt
	jle	L112
	leal	-2208(%ebp), %eax
	xorl	%ebx, %ebx
	movl	%eax, -2324(%ebp)
	leal	-2200(%ebp), %eax
	movl	%eax, -2320(%ebp)
	jmp	L137
L2531:
	andl	$16383, %eax
	movl	_sprite, %edi
	movl	$-1171354717, %esi
	imull	$44, %eax, %eax
	leal	(%edi,%eax), %ecx
	mull	%esi
	movl	%edx, %eax
	leal	4(%ecx), %edx
	shrl	$5, %eax
	subl	%edi, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	(%ecx), %eax
	movl	%eax, -2200(%ebp)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	4(%ecx), %eax
L132:
	movl	%eax, -2208(%ebp)
	movl	-2324(%ebp), %edx
	movl	-2320(%ebp), %eax
	call	__ZL13isc_transformPiS_.lto_priv.0
	movl	-2208(%ebp), %edi
	movl	-2200(%ebp), %esi
	movzbl	_editorcolors+15, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	call	__ZL11draw_squareiiii.constprop.0
	movswl	_highlight(%ebx,%ebx), %eax
	testb	$64, %ah
	je	L2530
L133:
	movswl	_highlightcnt, %eax
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jle	L112
L137:
	movswl	_highlight(%ebx,%ebx), %eax
	testb	$64, %ah
	jne	L2531
	movl	_wall, %edx
	sall	$5, %eax
	leal	(%edx,%eax), %ecx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	(%ecx), %eax
	movl	%eax, -2200(%ebp)
	leal	4(%ecx), %eax
	subl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	4(%ecx), %eax
	jmp	L132
L2487:
	movl	%esi, %eax
	call	_lastwall
	movl	%esi, -2424(%ebp)
	movl	%eax, -2420(%ebp)
	cwtl
	call	_wallength
	movl	%eax, -2224(%ebp)
	movl	%esi, %eax
	call	_wallength
	movl	%eax, -2220(%ebp)
	movl	_m32_sideview, %eax
	testl	%eax, %eax
	jne	L2234
	movzwl	_pointhighlight, %eax
	movw	%ax, -2292(%ebp)
	jmp	L652
L918:
	cwtl
	movzwl	-2292(%ebp), %edi
	sall	$5, %eax
	addl	_wall, %eax
	cmpw	10(%eax), %di
	je	L920
	orl	$16, %ebx
	testb	$1, %bl
	je	L922
L2434:
	movl	$LC132, (%esp)
	call	_message
	jmp	L908
L2450:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC152, (%esp)
	call	__printmessage16
	jmp	L1035
L2234:
	cmpl	$31, _m32_sideelev
	jle	L2308
L658:
	movswl	%bx, %eax
	call	_sectorofwall
	cwtl
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %edx
	testb	$2, 14(%edx)
	je	L2532
	movswl	%bx, %eax
	sall	$5, %eax
	addl	_wall, %eax
	movl	4(%eax), %ecx
	movl	%ecx, 8(%esp)
	movl	(%eax), %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	call	_getflorzofslopeptr.part.0
L662:
	movzwl	_pointhighlight, %edi
	subl	_pos+8, %eax
	movw	%di, -2292(%ebp)
	jmp	L660
L1431:
	movl	%ecx, %eax
	sall	$5, %eax
	addl	_wall, %eax
	movl	(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -2268(%ebp)
	movl	-2420(%ebp), %eax
	movl	%edx, -2264(%ebp)
	movl	%eax, -2304(%ebp)
	testl	%eax, %eax
	js	L620
	cmpb	$0, _keeptexturestretch
	jne	L2533
L1878:
	movl	-2424(%ebp), %eax
	movl	%eax, -2304(%ebp)
	testl	%eax, %eax
	js	L2534
	movl	$1, -2292(%ebp)
	movl	$1, %eax
	cmpb	$0, _keeptexturestretch
	je	L619
L621:
	movl	-2224(%ebp,%eax,4), %ebx
	testl	%ebx, %ebx
	jne	L2535
L609:
	cmpl	$1, -2292(%ebp)
	jne	L1878
L619:
	movzwl	_pointhighlight, %eax
L608:
	movl	$-1, -2424(%ebp)
	movswl	%ax, %ecx
	movl	$-1, -2420(%ebp)
	testw	%ax, %ax
	jns	L623
	jmp	L598
	.p2align 4,,10
	.p2align 3
L582:
	movl	-2312(%ebp), %edi
	movswl	_numsectors, %eax
	movl	-2320(%ebp), %esi
	addl	$1, %edi
	cmpl	%edi, %eax
	jle	L571
L572:
	leal	(%edi,%edi,4), %eax
	sall	$3, %eax
	movl	%eax, -2296(%ebp)
	addl	_sector, %eax
	movswl	(%eax), %ebx
	movswl	2(%eax), %ecx
	addl	%ebx, %ecx
	movl	%ebx, -2252(%ebp)
	cmpl	%ecx, %ebx
	jge	L575
	movl	%edi, -2312(%ebp)
	movl	%esi, -2320(%ebp)
	movl	%ebx, %esi
	movl	%ecx, %ebx
	.p2align 4
	.p2align 3
L586:
	movl	%esi, %eax
	movl	_m32_sideview, %ecx
	sall	$5, %eax
	addl	_wall, %eax
	movl	(%eax), %edi
	movl	4(%eax), %edx
	testl	%ecx, %ecx
	jne	L578
	movl	%edi, -2184(%ebp)
L579:
	cmpl	%edi, -2232(%ebp)
	jg	L582
	cmpl	%edi, -2240(%ebp)
	jl	L582
	cmpl	-2228(%ebp), %edx
	jl	L582
	cmpl	-2236(%ebp), %edx
	jg	L582
	addl	$1, %esi
	movl	%esi, -2252(%ebp)
	cmpl	%ebx, %esi
	jne	L586
	movl	-2312(%ebp), %edi
	movl	-2320(%ebp), %esi
L575:
	cmpl	$-1, %esi
	je	L587
	movswl	%di, %eax
	call	_yax_getbunch.constprop.0
	movl	%eax, %ecx
	cwtl
	movl	%eax, -2292(%ebp)
	testl	%eax, %eax
	js	L587
	cmpb	$0, -2328(%ebp)
	jne	L590
	movl	%edi, %edx
	movl	%edi, %ebx
	andl	$7, %edx
	sarl	$3, %ebx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
	movzbl	_graysectbitmap(%ebx), %eax
	andl	%edx, %eax
	cmpb	%al, %dl
	je	L589
L590:
	movl	-2292(%ebp), %eax
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.2(%ecx), %ecx
	sarl	$3, %eax
	leal	-2072(%ebp,%eax), %ebx
	movzbl	(%ebx), %edx
	movl	%edx, %eax
	notl	%eax
	testb	%cl, %al
	jne	L2536
L589:
	movswl	_numsectors, %eax
	addl	$1, %edi
	cmpl	%edi, %eax
	jg	L594
	jmp	L571
	.p2align 4,,10
	.p2align 3
L464:
	movl	_numgraysects, %edx
	testl	%edx, %edx
	jle	L2260
L480:
	testl	%eax, %eax
	jle	L482
L478:
	movl	$1, %ecx
	xorl	%edx, %edx
	jmp	L483
L2537:
	movl	%edx, %ecx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.2(%ecx), %ecx
L483:
	movl	%edx, %ebx
	sarl	$3, %ebx
	movzbl	_editwall(%ebx), %esi
	movl	%ebx, %edi
	andl	%ecx, %esi
	movl	%esi, %ebx
	cmpb	%cl, %bl
	jne	L481
	orb	%cl, _show2dwall(%edi)
L481:
	addl	$1, %edx
	cmpl	%eax, %edx
	jl	L2537
	movl	_sprite, %ebx
	jmp	L468
	.p2align 4,,10
	.p2align 3
L578:
	movl	_zoom, %eax
	movl	%eax, -2292(%ebp)
	movl	%eax, 16(%esp)
	movl	%edx, %eax
	subl	_pos+4, %eax
	movl	%edx, -2304(%ebp)
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	subl	_pos, %eax
	movl	%eax, 8(%esp)
	leal	-2200(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-2184(%ebp), %eax
	movl	%eax, (%esp)
	call	_editorGet2dScreenCoordinates
	movl	-2296(%ebp), %eax
	addl	_sector, %eax
	testb	$2, 14(%eax)
	movl	-2304(%ebp), %edx
	je	L2538
	movl	%edx, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_getflorzofslopeptr.part.0
L581:
	movl	-2292(%ebp), %edx
	subl	_pos+8, %eax
	imull	_m32_sidecos, %edx
/APP
 # 672 "source/build/src/2d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	_halfxdim16, %edi
	addl	-2184(%ebp), %edi
	addl	-2200(%ebp), %edx
	movl	%edi, -2184(%ebp)
	addl	_midydim16, %edx
	jmp	L579
L2400:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L1358
L2538:
	movl	8(%eax), %eax
	jmp	L581
L2530:
	sall	$5, %eax
	addl	_wall, %eax
	movl	%esi, -2296(%ebp)
	movl	%eax, -2312(%ebp)
	movswl	8(%eax), %eax
	movss	-2296(%ebp), %xmm0
	movl	%edi, -2296(%ebp)
	movl	%eax, %edx
	movss	-2296(%ebp), %xmm7
	movl	$0, -2064(%ebp)
	movl	$0, -2176(%ebp)
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %ecx
	unpcklps	%xmm7, %xmm0
	movl	%eax, %edx
	sall	$5, %eax
	addl	_wall, %eax
	sarl	$3, %edx
	movlps	%xmm0, -2072(%ebp)
	movlps	(%eax), %xmm6
	movb	%cl, -2292(%ebp)
	movl	%eax, %esi
	leal	-2184(%ebp), %eax
	andb	_show2dwall(%edx), %cl
	leal	-2180(%ebp), %edx
	movb	%cl, -2304(%ebp)
	movlps	%xmm6, -2184(%ebp)
	call	__ZL13isc_transformPiS_.lto_priv.0
	movzbl	-2304(%ebp), %eax
	cmpb	-2292(%ebp), %al
	je	L2539
	movlps	(%esi), %xmm6
	movl	$8, %ecx
	movlps	%xmm6, -2184(%ebp)
L136:
	movl	$286331153, (%esp)
	leal	-2184(%ebp), %edx
	leal	-2072(%ebp), %eax
	call	__ZL15drawlinebetweenPK4vec3IiES2_ij.lto_priv.0
	jmp	L133
L587:
	movzbl	_keystatus+42, %eax
	movl	-2324(%ebp), %edx
	orb	_keystatus+54, %al
	movzbl	%al, %ecx
	movl	%edi, %eax
	call	_handlesecthighlight1
	jmp	L589
L2482:
	movl	-2236(%ebp), %edx
	movl	-2240(%ebp), %eax
	movswl	%di, %ecx
	call	_inside
	jmp	L574
L2539:
	movl	-2312(%ebp), %eax
	movswl	10(%eax), %eax
	sarl	$31, %eax
	andl	$-5, %eax
	movzbl	_editorcolors+12(%eax), %ecx
	jmp	L136
L430:
	testl	%esi, %esi
	je	L445
	movzwl	_numwalls, %eax
	testw	%ax, %ax
	jle	L446
	andb	$-2, _editwall
	movswl	%ax, %esi
	cmpw	$1, %ax
	jne	L447
L448:
	movl	%edi, %eax
	testb	%al, %al
	jne	L1485
	movl	$0, -2320(%ebp)
	movl	$1, %ecx
	xorl	%esi, %esi
L465:
	movl	%esi, %edi
	sarl	$3, %edi
	movzbl	_graywallbitmap(%edi), %eax
	andl	%ecx, %eax
	cmpb	%cl, %al
	je	L458
	movl	%esi, %eax
	sall	$5, %eax
	movl	%eax, -2304(%ebp)
	addl	_wall, %eax
	movl	(%eax), %ebx
	movl	4(%eax), %eax
	movl	%eax, -2292(%ebp)
	movl	_m32_sideview, %eax
	testl	%eax, %eax
	jne	L2540
	movl	%ebx, -2072(%ebp)
L462:
	cmpl	%ebx, -2232(%ebp)
	jg	L458
	cmpl	%ebx, -2240(%ebp)
	jl	L458
	movl	-2292(%ebp), %eax
	cmpl	%eax, -2228(%ebp)
	jg	L458
	cmpl	%eax, -2236(%ebp)
	jl	L458
	movl	_numgraysects, %eax
	testl	%eax, %eax
	jg	L459
	movl	_m32_sideview, %ebx
	testl	%ebx, %ebx
	je	L2541
L459:
	movl	-2320(%ebp), %edi
	movl	-2304(%ebp), %eax
	addl	_wall, %eax
	movl	4(%eax), %ecx
	movl	(%eax), %edx
	movl	%edi, (%esp)
	movswl	%si, %eax
	call	_dragpoint
	movl	$1, -2320(%ebp)
L458:
	movswl	_numwalls, %eax
	addl	$1, %esi
	cmpl	%esi, %eax
	jle	L464
	movl	%esi, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %ecx
	jmp	L465
L2540:
	movl	_zoom, %eax
	movb	%cl, -2312(%ebp)
	movl	%eax, -2296(%ebp)
	movl	%eax, 16(%esp)
	movl	-2292(%ebp), %eax
	subl	_pos+4, %eax
	movl	%eax, 12(%esp)
	movl	%ebx, %eax
	subl	_pos, %eax
	movl	%eax, 8(%esp)
	leal	-2184(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-2072(%ebp), %eax
	movl	%eax, (%esp)
	call	_editorGet2dScreenCoordinates
	movswl	%si, %eax
	call	_sectorofwall
	movzbl	-2312(%ebp), %ecx
	cwtl
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	testb	$2, 14(%eax)
	je	L2542
	movb	%cl, -2312(%ebp)
	movl	-2292(%ebp), %ecx
	movl	%ebx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	_getflorzofslopeptr.part.0
	movzbl	-2312(%ebp), %ecx
L463:
	movl	-2296(%ebp), %edx
	subl	_pos+8, %eax
	imull	_m32_sidecos, %edx
/APP
 # 672 "source/build/src/2d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	-2072(%ebp), %ebx
	addl	-2184(%ebp), %edx
	addl	_halfxdim16, %ebx
	addl	_midydim16, %edx
	movl	%ebx, -2072(%ebp)
	movl	%edx, -2292(%ebp)
	jmp	L462
L2426:
	movswl	_highlightcnt, %esi
	movl	%esi, -2292(%ebp)
	testw	%si, %si
	jg	L145
	jmp	L1436
L909:
	cmpw	%ax, -2068(%ebp)
	je	L895
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jge	L2543
L913:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC130, (%esp)
	call	__printmessage16
	jmp	L908
L2414:
	leal	-2228(%ebp), %eax
	leal	-2232(%ebp), %ecx
	movl	%eax, (%esp)
	movl	-2228(%ebp), %edx
	movl	-2232(%ebp), %eax
	call	_getpoint
	leal	-2236(%ebp), %eax
	leal	-2240(%ebp), %ecx
	movl	%eax, (%esp)
	movl	-2236(%ebp), %edx
	movl	-2240(%ebp), %eax
	call	_getpoint
	jmp	L427
L2489:
	orl	%ebx, %eax
	movb	%al, _editwall(%ecx)
	jmp	L1450
L1469:
	xorl	%ebx, %ebx
	jmp	L217
L2457:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC175, (%esp)
	call	__printmessage16
	jmp	L1296
L2521:
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	addl	$1, %eax
	movl	%eax, -2364(%ebp)
L796:
	movzwl	__ZL12collnumsects.lto_priv.0, %edi
	movl	_wall, %ecx
	leal	-2208(%ebp), %ebx
	testw	%di, %di
	jle	L1507
	movl	$0, -2320(%ebp)
	xorl	%eax, %eax
L804:
	movl	%eax, %edx
	sall	$12, %eax
	sall	$13, %edx
	leal	__ZL12collsectlist.lto_priv.0(%edx), %esi
	movswl	%di, %edx
	movl	-2320(%ebp), %edi
	addl	%edx, %eax
	leal	__ZL12collsectlist.lto_priv.0(%eax,%eax), %eax
	sall	$14, %edi
	movl	%eax, -2312(%ebp)
	movl	%edi, -2292(%ebp)
	movl	%esi, %edi
	.p2align 4
	.p2align 3
L802:
	movswl	(%edi), %eax
	movl	-2304(%ebp), %esi
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %edx
	movswl	(%edx), %eax
	movswl	2(%edx), %esi
	addl	%eax, %esi
	cmpl	%esi, %eax
	jge	L799
	movl	%edi, -2296(%ebp)
	.p2align 6
	.p2align 4
	.p2align 3
L801:
	movl	%eax, %edx
	sall	$5, %edx
	cmpw	$0, 10(%ecx,%edx)
	jns	L800
	movl	(%ebx), %edx
	leal	1(%edx), %edi
	addl	-2292(%ebp), %edx
	movl	%edi, (%ebx)
	movw	%ax, __ZZL14overheadeditorvE9outerwall(%edx,%edx)
L800:
	addl	$1, %eax
	cmpl	%esi, %eax
	jne	L801
	movl	-2296(%ebp), %edi
L799:
	addl	$2, %edi
	cmpl	%edi, -2312(%ebp)
	jne	L802
	movl	%eax, -2440(%ebp)
	movl	$1, %eax
	cmpl	$1, -2320(%ebp)
	je	L1881
L2239:
	movzwl	__ZL12collnumsects.lto_priv.0+2, %edi
	testw	%di, %di
	jle	L803
	movl	$1, -2320(%ebp)
	addl	$4, %ebx
	movl	$1, %eax
	jmp	L804
L2378:
	movl	$256, 4(%esp)
	movl	$LC109, (%esp)
	call	_message
	jmp	L772
L2375:
	testb	$1, -2316(%ebp)
	jne	L717
	cmpb	$0, _isc
	jne	L717
	movl	$1, _m32_sideview
	movl	_totalclock, %edx
	movl	$LC8, %eax
	jmp	L719
L2542:
	movl	8(%eax), %eax
	jmp	L463
L803:
	testb	%al, %al
	je	L805
L1881:
	movl	-2440(%ebp), %eax
	movl	%eax, -2252(%ebp)
L805:
	movl	-2208(%ebp), %eax
	movl	-2204(%ebp), %esi
	movl	%eax, -2312(%ebp)
	movl	%eax, %edi
	cmpl	%esi, %eax
	je	L806
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC114, (%esp)
	call	_message
	testl	%edi, %edi
	jle	L772
	testl	%esi, %esi
	jle	L772
	movl	-2312(%ebp), %eax
	movl	$__ZL11cmpgeomwal1PKvS0_.lto_priv.0, 12(%esp)
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	cmpl	%esi, %eax
	movl	%eax, %ebx
	movl	$__ZZL14overheadeditorvE9outerwall, (%esp)
	cmovg	%esi, %ebx
	call	_qsort
	movl	$__ZL11cmpgeomwal1PKvS0_.lto_priv.0, 12(%esp)
	movl	$2, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZZL14overheadeditorvE9outerwall+32768, (%esp)
	call	_qsort
	movl	%ebx, -2312(%ebp)
	movl	$1, -2404(%ebp)
L1448:
	movl	$0, -2304(%ebp)
	movl	_wall, %ecx
	xorl	%eax, %eax
	movl	$0, -2292(%ebp)
	jmp	L819
L809:
	subl	-2344(%ebp), %edx
	cmpl	-2292(%ebp), %edx
	jne	L2544
	movl	-2328(%ebp), %esi
	movl	(%esi), %edx
	movl	4(%esi), %esi
	movl	%edx, -2320(%ebp)
	movl	4(%ebx), %edx
	movl	%esi, -2324(%ebp)
	subl	-2332(%ebp), %edx
	cmpl	%edx, -2304(%ebp)
	jne	L812
L810:
	movl	-2296(%ebp), %esi
	movl	(%esi), %edx
	subl	-2320(%ebp), %edx
	cmpl	%edx, -2292(%ebp)
	jne	L812
	movl	-2296(%ebp), %esi
	movl	4(%esi), %edx
	subl	-2324(%ebp), %edx
	cmpl	%edx, -2304(%ebp)
	jne	L812
	addl	$1, %eax
	cmpl	%eax, -2312(%ebp)
	je	L2545
L819:
	movswl	__ZZL14overheadeditorvE9outerwall(%eax,%eax), %edx
	movswl	__ZZL14overheadeditorvE9outerwall+32768(%eax,%eax), %ebx
	sall	$5, %edx
	sall	$5, %ebx
	leal	(%ecx,%edx), %edi
	movl	%edx, -2392(%ebp)
	addl	%ecx, %ebx
	movswl	8(%edi), %edx
	sall	$5, %edx
	leal	(%ecx,%edx), %esi
	movl	4(%edi), %edx
	movl	%esi, -2328(%ebp)
	movswl	8(%ebx), %esi
	movl	%edx, -2332(%ebp)
	movl	(%ebx), %edx
	sall	$5, %esi
	addl	%ecx, %esi
	movl	%esi, -2296(%ebp)
	movl	(%edi), %esi
	movl	%esi, -2344(%ebp)
	testl	%eax, %eax
	jne	L809
	subl	%esi, %edx
	movl	4(%ebx), %esi
	subl	-2332(%ebp), %esi
	movl	%esi, -2304(%ebp)
	movl	-2328(%ebp), %esi
	movl	%edx, -2292(%ebp)
	movl	(%esi), %edx
	movl	4(%esi), %esi
	movl	%edx, -2320(%ebp)
	movl	%esi, -2324(%ebp)
	jmp	L810
L2452:
	subw	$16384, %ax
	cwtl
	call	_ExtEditSpriteData
	andl	$-3, -2316(%ebp)
	jmp	L636
L2490:
	movl	$LC139, (%esp)
	call	_message
	movl	$-1, %eax
	movw	%ax, _joinsector
	movl	$-1, %eax
	movw	%ax, _newnumwalls
	movzwl	_numwalls, %eax
	testw	%ax, %ax
	jle	L772
	andb	$-2, _editwall
	movswl	%ax, %ebx
	cmpw	$1, %ax
	je	L772
	movl	$1, %eax
L949:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	andl	$7, %edx
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
	notl	%edx
	andb	%dl, _editwall(%ecx)
	cmpl	%ebx, %eax
	jne	L949
	jmp	L772
L2403:
	movl	%eax, 4(%esp)
	movl	$LC188, (%esp)
	call	_message
	jmp	L2312
L2536:
	orl	%ecx, %edx
	movl	-2292(%ebp), %eax
	movb	%dl, (%ebx)
	movl	%esi, %edx
	sall	$8, %edx
	addl	%edx, %eax
	movswl	_headsectbunch(%eax,%eax), %ebx
	movl	%ebx, -2252(%ebp)
	cmpl	$-1, %ebx
	je	L589
L591:
	movl	-2324(%ebp), %edx
	movl	%ebx, %eax
	movl	$1, %ecx
	call	_handlesecthighlight1
	movl	%esi, %eax
	sall	$12, %eax
	addl	%ebx, %eax
	movswl	_nextsectbunch(%eax,%eax), %ebx
	movl	%ebx, -2252(%ebp)
	cmpl	$-1, %ebx
	jne	L591
	jmp	L589
L2529:
	movl	-2312(%ebp), %edi
	movl	%eax, %edx
	movzwl	%ax, %eax
	movl	$LC148, (%esp)
	sarl	$16, %edx
	movl	%eax, 4(%esp)
	movl	%edi, 12(%esp)
	movl	%edx, 8(%esp)
	call	_message
	jmp	L1032
L882:
	movl	-2072(%ebp), %eax
	jmp	L885
L2515:
	movl	$-1, %eax
	movw	%ax, _yax_bunchnum+2(,%edi,4)
	jmp	L1284
L2514:
	movl	$-1, %eax
	movw	%ax, _yax_bunchnum(,%edi,4)
	jmp	L1282
L2432:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC131, (%esp)
	call	__printmessage16
	jmp	L908
L216:
	movl	-2296(%ebp), %eax
	addl	__ZL13m32_rotateang.lto_priv.0, %eax
	movl	$1, %esi
	andl	$2047, %eax
	movw	%si, _asksave
	movl	%eax, __ZL13m32_rotateang.lto_priv.0
	jmp	L2303
L1077:
	cmpw	$1, %ax
	jne	L1035
	movswl	__ZL3ovh.lto_priv.0+8, %eax
	movzwl	__ZL3ovh.lto_priv.0+10, %ecx
	movb	$1, -2404(%ebp)
	leal	(%eax,%eax,4), %edx
	movl	%eax, -2332(%ebp)
	movl	_sector, %eax
	movw	%cx, -2304(%ebp)
	leal	(%eax,%edx,8), %edx
	movswl	(%edx), %esi
	movswl	2(%edx), %edx
	leal	(%edx,%esi), %edi
	movl	%esi, -2320(%ebp)
	movl	%edi, -2312(%ebp)
	subl	$1, %edi
	cmpw	%si, %cx
	jne	L2546
L1106:
	cmpl	%edi, %esi
	jg	L1035
	movswl	_newnumwalls, %eax
	movl	_wall, %edi
	movl	%esi, %edx
	movl	%esi, -2432(%ebp)
	sall	$5, %edx
	movl	%eax, -2328(%ebp)
	addl	$134217727, %eax
	addl	%edi, %edx
	sall	$5, %eax
	addl	%edi, %eax
	movl	%eax, -2296(%ebp)
	movl	(%eax), %eax
	movl	%eax, -2292(%ebp)
	movl	%esi, %eax
	jmp	L1110
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1108:
	addl	$1, %eax
	addl	$32, %edx
	cmpl	%eax, -2312(%ebp)
	je	L1035
L1110:
	movl	-2292(%ebp), %ecx
	cmpl	(%edx), %ecx
	jne	L1108
	movl	-2296(%ebp), %ecx
	movl	4(%edx), %ebx
	cmpl	%ebx, 4(%ecx)
	jne	L1108
	movswl	-2304(%ebp), %ecx
	movl	%ecx, -2304(%ebp)
	cmpl	$-1, %eax
	je	L1035
	cmpl	%ecx, %eax
	je	L1035
	movswl	_numwalls, %ecx
	movl	-2328(%ebp), %edx
	movl	$0, -2292(%ebp)
	subl	%ecx, %edx
	leal	-2(%ecx,%edx,2), %ecx
	movl	%ecx, -2344(%ebp)
	movl	%eax, %ecx
	movl	%esi, %eax
	jmp	L1113
L2548:
	movl	%eax, %edx
	sall	$5, %edx
	movswl	8(%edi,%edx), %edx
	cmpl	%eax, %edx
	setl	%dl
	addl	$1, %eax
	movzbl	%dl, %edx
	addl	%edx, -2292(%ebp)
	cmpl	%eax, -2312(%ebp)
	je	L2547
L1113:
	cmpl	-2304(%ebp), %eax
	jne	L2548
L1111:
	movl	$0, -2296(%ebp)
	movswl	%cx, %eax
	movl	%eax, -2328(%ebp)
	movl	%esi, %eax
	jmp	L1116
L2550:
	movl	%eax, %edx
	sall	$5, %edx
	movswl	8(%edi,%edx), %edx
	cmpl	%eax, %edx
	setl	%dl
	addl	$1, %eax
	movzbl	%dl, %edx
	addl	%edx, -2296(%ebp)
	cmpl	%eax, -2312(%ebp)
	je	L2549
L1116:
	cmpl	%eax, -2328(%ebp)
	jne	L2550
L1114:
	cmpl	$16384, -2344(%ebp)
	jle	L1117
	movl	_totalclock, %eax
	cmpw	$0, -2324(%ebp)
	movl	$LC12, %edx
	movl	%eax, _lastpm16time
	movl	$LC13, %eax
	cmove	%edx, %eax
	movl	$LC160, (%esp)
	movl	%eax, 4(%esp)
	call	__printmessage16
	subw	$1, _newnumwalls
	jmp	L1035
	.p2align 4,,10
	.p2align 3
L1491:
	movl	$1, %eax
	movw	%ax, -2356(%ebp)
	jmp	L636
L2512:
	movl	%eax, 4(%esp)
	movl	$LC188, (%esp)
	call	_message
	testl	%ebx, %ebx
	jne	L2312
	leal	-2072(%ebp), %eax
	call	__ZL16mapinfofull_freeP13mapinfofull_t.lto_priv.0
	jmp	L2312
L2401:
	movl	$1, %edx
	leal	-2072(%ebp), %eax
	call	__ZL23restore_highlighted_mapP13mapinfofull_ti.lto_priv.0
	cmpl	$-1, %eax
	jne	L1361
	movl	$LC187, (%esp)
	call	_message
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_hlsectorbitmap, (%esp)
	call	_memset
	call	_update_highlightsector
	jmp	L1361
L2522:
	movl	-2292(%ebp), %eax
	movl	-2264(%ebp), %edi
	movl	-2268(%ebp), %esi
	andl	$16383, %eax
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	subl	(%eax), %edi
	subl	4(%eax), %esi
	jmp	L672
L1485:
	xorl	%ebx, %ebx
	movl	$1, %ecx
L453:
	movl	%ebx, %esi
	sarl	$3, %esi
	movzbl	_graywallbitmap(%esi), %eax
	andl	%ecx, %eax
	cmpb	%cl, %al
	je	L469
	movl	%ebx, %eax
	sall	$5, %eax
	addl	_wall, %eax
	movl	(%eax), %edi
	movl	4(%eax), %edx
	movl	_m32_sideview, %eax
	testl	%eax, %eax
	jne	L470
	movl	%edi, -2072(%ebp)
L471:
	cmpl	%edi, -2232(%ebp)
	jg	L469
	cmpl	%edi, -2240(%ebp)
	jl	L469
	cmpl	-2228(%ebp), %edx
	jl	L469
	cmpl	-2236(%ebp), %edx
	jg	L469
	notl	%ecx
	andb	%cl, _show2dwall(%esi)
L469:
	movswl	_numwalls, %eax
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jle	L474
	movl	%ebx, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %ecx
	jmp	L453
L470:
	movl	_zoom, %eax
	movb	%cl, -2296(%ebp)
	movl	%eax, -2292(%ebp)
	movl	%eax, 16(%esp)
	movl	%edx, %eax
	subl	_pos+4, %eax
	movl	%edx, -2304(%ebp)
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	subl	_pos, %eax
	movl	%eax, 8(%esp)
	leal	-2184(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-2072(%ebp), %eax
	movl	%eax, (%esp)
	call	_editorGet2dScreenCoordinates
	movswl	%bx, %eax
	call	_sectorofwall
	movl	_sector, %ecx
	movl	-2304(%ebp), %edx
	cwtl
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	movzbl	-2296(%ebp), %ecx
	testb	$2, 14(%eax)
	je	L2551
	movb	%cl, -2304(%ebp)
	movl	%edx, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_getflorzofslopeptr.part.0
	movzbl	-2304(%ebp), %ecx
L473:
	movl	-2292(%ebp), %edx
	subl	_pos+8, %eax
	imull	_m32_sidecos, %edx
/APP
 # 672 "source/build/src/2d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	_halfxdim16, %edi
	addl	-2072(%ebp), %edi
	addl	-2184(%ebp), %edx
	movl	%edi, -2072(%ebp)
	addl	_midydim16, %edx
	jmp	L471
L2551:
	movl	8(%eax), %eax
	jmp	L473
L2235:
	cmpl	$31, _m32_sideelev
	jle	L2308
	movw	%ax, -2292(%ebp)
	jmp	L656
L2496:
	movl	$256, 4(%esp)
	movl	$LC51, (%esp)
	call	_message
	movzwl	_highlightcnt, %eax
	movzwl	_highlightsectorcnt, %ecx
	movl	%eax, %edx
	jmp	L252
L875:
	xorl	%eax, %eax
	jmp	L885
L2328:
	cmpw	$0, _newnumwalls
	jns	L39
	movl	__ZL10osdrowscur.lto_priv.0, %eax
	cmpl	$-1, %eax
	je	L40
	movl	_osd, %edx
	cmpl	1144(%edx), %eax
	jne	L39
L40:
	movl	$0, -2316(%ebp)
	jmp	L186
L2533:
	movl	$0, -2292(%ebp)
	xorl	%eax, %eax
	jmp	L621
L2525:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC141, (%esp)
	call	__printmessage16
	movl	$-1, %ecx
	movw	%cx, _newnumwalls
	jmp	L982
L2453:
	call	_ExtEditSectorData.isra.0
	andl	$-3, -2316(%ebp)
	jmp	L636
L2480:
	leal	-2228(%ebp), %eax
	leal	-2236(%ebp), %ebx
/APP
 # 5742 "source/build/src/build.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	-2292(%ebp), %eax
	testl	%eax, %eax
	jne	L570
L2481:
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_hlsectorbitmap, (%esp)
	call	_memset
	jmp	L570
L2260:
	movl	_m32_sideview, %edx
	testl	%edx, %edx
	jne	L480
	movl	_sprite, %ebx
	jmp	L468
L2444:
	movl	-2416(%ebp), %edi
	cmpl	%edi, 4(%eax)
	jne	L678
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC95, (%esp)
	call	__printmessage16
	movl	-2304(%ebp), %eax
	testl	%eax, %eax
	je	L636
	jmp	L2293
	.p2align 4,,10
	.p2align 3
L262:
	leal	4(%ebx), %eax
	movl	$-858993459, %edx
	subl	%esi, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	testw	%cx, %cx
	jg	L2552
L264:
	movzwl	_numwalls, %eax
	movw	%ax, -2344(%ebp)
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL7visited.lto_priv.0, (%esp)
	call	_memset
	movl	-2292(%ebp), %eax
	movl	$0, -2332(%ebp)
	movl	$0, -2328(%ebp)
	testl	%eax, %eax
	movl	$-1, %eax
	movw	%ax, -2296(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -2320(%ebp)
	movl	%eax, -2312(%ebp)
	jmp	L306
	.p2align 4,,10
	.p2align 3
L2462:
	movl	%eax, 4(%esp)
	movl	$LC179, (%esp)
	call	_message
	jmp	L1307
L372:
	movl	$LC69, (%esp)
	call	_message
	jmp	L371
L123:
	movl	%ecx, %eax
	movl	%ebx, 8(%esp)
	sarl	$31, %ebx
	cltd
	sall	$16, %eax
	movl	%ebx, 12(%esp)
	shldl	$16, %ecx, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.2
/APP
 # 4220 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	$262144, %ebx
	cmpl	$262144, %eax
	cmovle	%eax, %ebx
	jmp	L124
L2485:
	movl	$11, %ebx
	movl	$1024, %edx
	movl	$-1, %eax
	subl	%ecx, %ebx
	sarl	%cl, %edx
	movl	%ebx, %ecx
	sall	%cl, %eax
	leal	(%edi,%edx), %ecx
	movl	-2396(%ebp), %edi
	andl	%eax, %ecx
	addl	%edi, %edx
	movl	%ecx, -2400(%ebp)
	andl	%eax, %edx
	movl	%ecx, -2264(%ebp)
	movl	%edx, -2396(%ebp)
	movl	%edx, -2268(%ebp)
	jmp	L634
L2532:
	movl	8(%edx), %eax
	jmp	L662
L2527:
	movl	$-1, %eax
	movw	%ax, _yax_bunchnum(,%ebx,4)
L988:
	movl	$-1, %eax
	movw	%ax, _yax_bunchnum+2(,%ebx,4)
	jmp	L990
L920:
	testb	$2, -2320(%ebp)
	je	L919
	movswl	-2312(%ebp), %edi
	movswl	_headsectbunch+512(%edi,%edi), %ebx
	cmpl	$-1, %ebx
	jne	L929
	jmp	L926
	.p2align 4,,10
	.p2align 3
L927:
	movswl	%si, %ecx
	movswl	%bx, %eax
	movl	$1, %edx
	call	_yax_setbunch.part.0
L928:
	movswl	_nextsectbunch+8192(%ebx,%ebx), %ebx
	cmpl	$-1, %ebx
	je	L926
L929:
	cmpw	$0, _editstatus
	jne	L927
	movw	%si, _yax_bunchnum+2(,%ebx,4)
	jmp	L928
	.p2align 4,,10
	.p2align 3
L537:
	movswl	-2328(%ebp), %ecx
	movl	$1, %edx
	movl	%esi, %eax
	call	_yax_setbunch.part.0
L538:
	leal	(%esi,%esi,4), %ebx
	movl	$-858993459, %edx
	leal	8(,%ebx,8), %eax
	leal	0(,%ebx,8), %ecx
	addl	_sector, %ecx
	mull	%edx
	movl	-2296(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	$1, %edx
	movl	%eax, 8(%ecx)
	xorl	%ecx, %ecx
	movl	%esi, %eax
	call	_setslope
	movl	_sector, %ecx
	movl	-2304(%ebp), %esi
	movswl	_highlightsectorcnt, %edx
	movl	4(%ecx,%ebx,8), %eax
	subl	-2296(%ebp), %eax
	cmpl	%eax, %esi
	cmovge	%esi, %eax
	addl	$1, %edi
	movl	%eax, -2304(%ebp)
	cmpl	%edi, %edx
	jle	L2290
L532:
	movswl	_highlightsector(%edi,%edi), %esi
	cmpw	$0, _editstatus
	jne	L537
	movzwl	-2328(%ebp), %eax
	movw	%ax, _yax_bunchnum+2(,%esi,4)
	jmp	L538
L126:
	movl	%edi, %eax
	movl	%esi, 8(%esp)
	sarl	$31, %esi
	cltd
	sall	$16, %eax
	movl	%esi, 12(%esp)
	shldl	$16, %edi, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.2
/APP
 # 4222 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	$262144, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	jmp	L127
L2543:
	movl	$LC129, 12(%esp)
	movl	$6749, 8(%esp)
	movl	$LC113, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L913
L2437:
	movl	$LC135, (%esp)
	call	_message
	jmp	L908
	.p2align 4,,10
	.p2align 3
L562:
	movl	-2312(%ebp), %eax
	movl	$LC3, 8(%esp)
	movl	$LC3, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$LC92, (%esp)
	call	_message
	movl	$1, %ecx
	movw	%cx, _asksave
	.p2align 4
	.p2align 3
L521:
	addl	$1, -2292(%ebp)
	movl	-2292(%ebp), %eax
	movl	%eax, -2252(%ebp)
	cmpl	-2332(%ebp), %eax
	jne	L563
	movl	-2436(%ebp), %esi
L519:
	movswl	_highlightsectorcnt, %eax
	addl	$1, %esi
	cmpl	%esi, %eax
	jg	L564
	jmp	L518
	.p2align 4,,10
	.p2align 3
L2290:
	movl	-2304(%ebp), %eax
	movl	-2364(%ebp), %esi
	testl	%eax, %eax
	jle	L527
	movl	-2304(%ebp), %ebx
/APP
 # 5615 "source/build/src/build.cpp" 1
	addl %ebx, %ebx; sbbl %eax, %eax; cmpl %ebx, %eax; adcb $0, %al
 # 0 "" 2
/NO_APP
	sall	$13, %eax
	addl	%ebx, %eax
	movl	$_highlightsector, %ebx
	andl	$-4096, %eax
	cmpl	$1, -2344(%ebp)
	movl	%eax, %edi
	leal	_highlightsector(%edx,%edx), %eax
	movl	%eax, -2304(%ebp)
	je	L2553
	testl	%edx, %edx
	jle	L527
	movl	%esi, -2296(%ebp)
L543:
	movswl	(%ebx), %eax
	addl	$2, %ebx
	leal	(%eax,%eax,4), %esi
	movl	$-858993459, %eax
	leal	8(,%esi,8), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	addl	%edi, 8(%ecx,%esi,8)
	cmpl	%ebx, -2304(%ebp)
	jne	L543
	movl	-2296(%ebp), %esi
L527:
	movl	_wall, %edx
	leal	134217727(%esi), %eax
	movswl	_numwalls, %edi
	movw	%si, _newnumwalls
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%edi, %eax
	movw	%di, 8(%edx)
	call	_clockdir
	testl	%eax, %eax
	jne	L521
	movswl	%si, %edx
	movl	-2312(%ebp), %esi
	movl	%edx, %eax
	subl	%edi, %eax
	movl	%eax, -2304(%ebp)
	leal	(%esi,%esi,4), %eax
	leal	0(,%eax,8), %esi
	movl	_sector, %eax
	addl	%esi, %eax
	movzwl	2(%eax), %ebx
	addw	(%eax), %bx
	movl	_chsecptr_onextwall, %eax
	movl	%eax, -2328(%ebp)
	movl	%edi, %eax
	movl	$-858993459, %edi
	call	__ZL9flipwallsss.lto_priv.0
	leal	2(%esi), %eax
	movl	_sector, %ecx
	mull	%edi
	movswl	_numsectors, %eax
	movl	-2304(%ebp), %edi
	addl	%esi, %ecx
	subl	$1, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	addw	%di, 2(%ecx)
	cmpl	%eax, -2312(%ebp)
	jne	L545
	movswl	%bx, %ebx
	addl	%ebx, %edi
L546:
	movzwl	_newnumwalls, %eax
	movl	$0, _chsecptr_onextwall
	movw	%ax, _numwalls
	movl	$-1, %eax
	movw	%ax, _newnumwalls
	movl	-2304(%ebp), %eax
	testl	%eax, %eax
	jle	L559
	movl	-2328(%ebp), %esi
	testl	%esi, %esi
	setne	-2304(%ebp)
	.p2align 4
	.p2align 3
L561:
	movl	-2312(%ebp), %edx
	movswl	%bx, %eax
	call	_checksectorpointer
	testl	%eax, %eax
	je	L560
	cmpb	$0, -2304(%ebp)
	je	L560
	movl	%ebx, %eax
	sall	$5, %eax
	addl	_wall, %eax
	movswl	10(%eax), %eax
	movzwl	__ZL9onextwall.lto_priv.0(%eax,%eax), %eax
	testw	%ax, %ax
	js	L560
	movswl	%ax, %edx
	xorl	%ecx, %ecx
	movswl	%bx, %eax
	call	__ZL22copy_some_wall_membersssi.lto_priv.0
	.p2align 4
	.p2align 3
L560:
	addl	$1, %ebx
	cmpl	%edi, %ebx
	jl	L561
L559:
	movl	$LC89, -2072(%ebp)
	movl	-2344(%ebp), %eax
	movl	$LC90, -2068(%ebp)
	cmpl	$-1, %eax
	je	L562
	movl	-2312(%ebp), %edi
	movl	$LC91, 8(%esp)
	movl	$1, %ebx
	movl	%edi, 12(%esp)
	movl	-2072(%ebp,%eax,4), %eax
	movl	$LC92, (%esp)
	movl	%eax, 4(%esp)
	call	_message
	xorl	%eax, %eax
	movw	%bx, _asksave
	call	_yax_update
L518:
	movl	_pos+8, %eax
	movl	$-1, %edx
	movw	%dx, _newnumwalls
	call	_yax_updategrays
	call	_calc_sector_reachability
	jmp	L515
L2475:
	testw	%ax, %ax
	js	L524
	movl	_sector, %ecx
	leal	(%edi,%edi,4), %eax
	leal	(%ecx,%eax,8), %ebx
	movl	$-858993459, %eax
	leal	12(%ebx), %edx
	subl	%ecx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	testb	$2, 12(%ebx)
	jne	L518
L525:
	leal	8(%ebx), %edx
	movl	$-858993459, %eax
	movl	$1, -2344(%ebp)
	subl	%ecx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	8(%ebx), %eax
	movl	%eax, -2296(%ebp)
	movswl	_highlightsectorcnt, %eax
	testw	%ax, %ax
	jg	L2554
L529:
	movl	$LC88, (%esp)
	call	_message
	jmp	L518
	.p2align 4,,10
	.p2align 3
L524:
	movl	-2344(%ebp), %edi
	cmpl	$-1, %edi
	je	L527
	movl	-2312(%ebp), %eax
	movl	_sector, %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %ebx
	testl	%edi, %edi
	je	L526
	jmp	L525
	.p2align 4,,10
	.p2align 3
L545:
	movl	-2304(%ebp), %edi
	movl	%edi, %eax
	sall	$5, %eax
	movl	%eax, -2404(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -2364(%ebp)
	testl	%eax, %eax
	je	L547
	leal	(%edi,%edi), %eax
	movl	%eax, -2408(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -2392(%ebp)
	testl	%eax, %eax
	je	L548
	movzwl	_numwalls, %eax
	testw	%ax, %ax
	jle	L550
	movswl	%ax, %ecx
	movl	%esi, -2296(%ebp)
	movl	_wall, %edx
	movl	$10, %eax
	sall	$5, %ecx
	movl	-2304(%ebp), %esi
	addl	$10, %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L552:
	cmpw	(%edx,%eax), %bx
	jg	L551
	movl	%eax, %edi
	shrl	$5, %edi
	addl	$1, _wallchanged(,%edi,4)
	addw	%si, (%edx,%eax)
L551:
	addl	$32, %eax
	cmpl	%eax, %ecx
	jne	L552
	movl	-2296(%ebp), %esi
L550:
	movswl	-2304(%ebp), %edx
	movswl	%bx, %eax
	movl	%eax, -2296(%ebp)
	call	__ZL14yax_tweakwallsss.lto_priv.0
	movl	-2312(%ebp), %eax
	leal	1(%eax), %edi
	movswl	_numsectors, %eax
	cmpl	%eax, %edi
	jge	L553
	leal	40(%esi), %ecx
	movl	$-858993459, %esi
	.p2align 6
	.p2align 4
	.p2align 3
L554:
	movl	%ecx, %eax
	movl	_sector, %ebx
	addl	$1, %edi
	mull	%esi
	movzwl	-2304(%ebp), %eax
	addl	%ecx, %ebx
	addl	$40, %ecx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	addw	%ax, (%ebx)
	movswl	_numsectors, %eax
	cmpl	%edi, %eax
	jg	L554
L553:
	movl	-2296(%ebp), %eax
	movswl	_numwalls, %edi
	movl	%eax, %ebx
	movl	%edi, -2432(%ebp)
	cmpl	%edi, %eax
	jge	L555
	movl	_wall, %ecx
	sall	$5, %edi
	sall	$5, %eax
	leal	8(%ecx,%edi), %esi
	movl	-2304(%ebp), %edi
	leal	8(%ecx,%eax), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L556:
	movl	%eax, %edx
	subl	%ecx, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	addw	%di, (%eax)
	addl	$32, %eax
	cmpl	%eax, %esi
	jne	L556
L555:
	movswl	_newnumwalls, %edx
	movl	-2432(%ebp), %eax
	cmpl	%edx, %eax
	jge	L557
	movzwl	-2296(%ebp), %edi
	movl	_wall, %ecx
	sall	$5, %edx
	subl	%eax, %edi
	sall	$5, %eax
	leal	8(%ecx,%edx), %esi
	leal	8(%ecx,%eax), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L558:
	movl	%eax, %edx
	subl	%ecx, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	addw	%di, (%eax)
	addl	$32, %eax
	cmpl	%eax, %esi
	jne	L558
L557:
	movl	-2432(%ebp), %eax
	movl	-2408(%ebp), %edi
	leal	__ZL9onextwall.lto_priv.0(%eax,%eax), %eax
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-2392(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	-2296(%ebp), %ecx
	movl	-2304(%ebp), %esi
	leal	(%esi,%ecx), %edi
	movswl	_numwalls, %esi
	leal	__ZL9onextwall.lto_priv.0(%ecx,%ecx), %edx
	movl	%edx, 4(%esp)
	movl	%esi, %eax
	sall	$5, %esi
	subl	%ecx, %eax
	addl	%eax, %eax
	movl	%eax, 8(%esp)
	leal	__ZL9onextwall.lto_priv.0(%edi,%edi), %eax
	movl	%edx, -2432(%ebp)
	movl	%eax, (%esp)
	call	_memmove
	movl	-2408(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-2392(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-2432(%ebp), %edx
	movl	%edx, (%esp)
	call	_memcpy
	movl	-2404(%ebp), %edx
	addl	_wall, %esi
	movl	%esi, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-2364(%ebp), %esi
	movl	%esi, (%esp)
	call	_memcpy
	movl	-2296(%ebp), %ecx
	movswl	_numwalls, %eax
	movl	_wall, %edx
	movl	%ecx, %esi
	subl	%ecx, %eax
	movl	%edi, %ecx
	sall	$5, %ecx
	sall	$5, %esi
	sall	$5, %eax
	movl	%eax, 8(%esp)
	leal	(%edx,%esi), %eax
	addl	%ecx, %edx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	call	_memmove
	movl	-2404(%ebp), %edx
	addl	_wall, %esi
	movl	%edx, 8(%esp)
	movl	-2364(%ebp), %ecx
	movl	%esi, (%esp)
	movl	%ecx, 4(%esp)
	call	_memcpy
	movl	-2364(%ebp), %esi
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-2392(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L546
L2553:
	testl	%edx, %edx
	jle	L527
	movl	%esi, -2296(%ebp)
L542:
	movswl	(%ebx), %eax
	addl	$2, %ebx
	leal	(%eax,%eax,4), %esi
	movl	$-858993459, %eax
	leal	4(,%esi,8), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	subl	%edi, 4(%ecx,%esi,8)
	cmpl	%ebx, -2304(%ebp)
	jne	L542
	movl	-2296(%ebp), %esi
	jmp	L527
L2479:
	leal	-2228(%ebp), %eax
	leal	-2232(%ebp), %ecx
	movl	%eax, (%esp)
	movl	-2228(%ebp), %edx
	movl	-2232(%ebp), %eax
	call	_getpoint
	leal	-2236(%ebp), %eax
	leal	-2240(%ebp), %ecx
	movl	%eax, (%esp)
	movl	-2236(%ebp), %edx
	movl	-2240(%ebp), %eax
	call	_getpoint
	jmp	L567
L2544:
	movl	-2328(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %eax
	movl	%esi, -2320(%ebp)
	movl	%eax, -2324(%ebp)
L812:
	movl	-2344(%ebp), %esi
	movl	-2320(%ebp), %ecx
	subl	%esi, %ecx
	leal	3(%ecx), %eax
	cmovns	%ecx, %eax
	sarl	$2, %eax
	addl	%esi, %eax
	movl	-2332(%ebp), %esi
	movl	%eax, -2292(%ebp)
	movl	%eax, _pos
	movl	-2324(%ebp), %eax
	subl	%esi, %eax
	leal	3(%eax), %edx
	cmovs	%edx, %eax
	sarl	$2, %eax
	leal	(%eax,%esi), %ecx
	movl	-2392(%ebp), %eax
	movl	%ecx, _pos+4
	sarl	$5, %eax
	movl	%ecx, -2304(%ebp)
	call	_sectorofwall
	movl	-2304(%ebp), %ecx
	cwtl
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	testb	$2, 14(%eax)
	je	L2555
	movl	%ecx, 8(%esp)
	movl	-2292(%ebp), %esi
	movl	%eax, (%esp)
	movl	%esi, 4(%esp)
	call	_getflorzofslopeptr.part.0
L817:
	movl	-2404(%ebp), %esi
	movl	%eax, _pos+8
	testl	%esi, %esi
	je	L2556
L818:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L772
	movl	-2328(%ebp), %esi
	movl	4(%esi), %eax
	movl	%eax, 32(%esp)
	movl	(%esi), %eax
	movl	%eax, 28(%esp)
	movl	4(%edi), %eax
	movl	%eax, 24(%esp)
	movl	(%edi), %eax
	movl	%eax, 20(%esp)
	movl	%edi, %eax
	subl	_wall, %eax
	sarl	$5, %eax
	movl	$LC116, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$6460, 8(%esp)
	movl	$LC113, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L772
	movl	-2296(%ebp), %edi
	movl	4(%edi), %eax
	movl	%eax, 32(%esp)
	movl	(%edi), %eax
	movl	%eax, 28(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 24(%esp)
	movl	(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	%ebx, %eax
	subl	_wall, %eax
	sarl	$5, %eax
	movl	$LC117, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$6462, 8(%esp)
	movl	$LC113, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L772
L2449:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC151, (%esp)
	call	__printmessage16
	jmp	L1035
L2507:
	movl	-2292(%ebp), %eax
	andl	$16383, %eax
	call	__ZL13updatesprite1s.lto_priv.0
	jmp	L2292
L1223:
	movl	$-1, %eax
	movw	%ax, _newnumwalls
L1226:
	movl	$0, 4(%esp)
	movl	$LC168, (%esp)
	call	_message
	jmp	L1207
L2459:
	cmpl	%ecx, 4(%esi)
	jne	L1302
	jmp	L1299
L1019:
	movl	$1, %eax
	call	__ZL18backup_drawn_wallsi.lto_priv.0
L1034:
	movl	$1, %eax
	movw	%ax, _asksave
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC149, (%esp)
	call	__printmessage16
	jmp	L1032
L2526:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC142, (%esp)
	call	__printmessage16
	movl	$-1, %edx
	movw	%dx, _newnumwalls
	jmp	L982
L1053:
	movl	-2296(%ebp), %eax
	addl	$1, %eax
	cmpl	-2324(%ebp), %eax
	je	L2557
L1056:
	movl	-2296(%ebp), %eax
	testl	%eax, %eax
	jle	L1064
	movl	-2324(%ebp), %eax
	movl	_wall, %esi
	movl	$1, %ecx
	movl	$0, -2292(%ebp)
	addl	$134217727, %eax
	movl	%esi, -2312(%ebp)
	movl	%esi, %edx
	sall	$5, %eax
	addl	%esi, %eax
	xorl	%esi, %esi
	movl	%eax, -2328(%ebp)
	jmp	L1074
L1070:
	cmpl	%ebx, -2324(%ebp)
	je	L2558
L1066:
	addl	$1, -2292(%ebp)
	movl	-2292(%ebp), %eax
	cmpl	%eax, -2296(%ebp)
	je	L1073
	andl	$7, %eax
	addl	$32, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %ecx
L1074:
	movl	-2292(%ebp), %eax
	sarl	$3, %eax
	movzbl	_graywallbitmap(%eax), %eax
	andl	%ecx, %eax
	cmpb	%cl, %al
	je	L1066
	movswl	10(%edx), %ecx
	testw	%cx, %cx
	js	L1066
	movl	%ecx, %ebx
	sarl	$3, %ecx
	andl	$7, %ebx
	movzbl	_graywallbitmap(%ecx), %eax
	movzbl	__ZL8pow2char.lto_priv.2(%ebx), %ebx
	andl	%ebx, %eax
	cmpb	%al, %bl
	je	L1066
	movl	-2328(%ebp), %eax
	movl	(%edx), %ebx
	movl	(%eax), %ecx
	movl	4(%eax), %eax
	movl	%ecx, -2324(%ebp)
	movl	%eax, -2320(%ebp)
	cmpl	%ebx, %edi
	jne	L1070
	movl	-2304(%ebp), %eax
	cmpl	4(%edx), %eax
	jne	L1070
	movswl	8(%edx), %ecx
	movl	-2324(%ebp), %eax
	sall	$5, %ecx
	addl	-2312(%ebp), %ecx
	cmpl	(%ecx), %eax
	jne	L1070
	movl	-2320(%ebp), %eax
	cmpl	%eax, 4(%ecx)
	sete	%cl
	movzbl	%cl, %ecx
	orl	%ecx, %esi
	jmp	L1070
L2415:
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_show2dwall, (%esp)
	call	_memset
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_show2dsprite, (%esp)
	call	_memset
	jmp	L432
L2558:
	movl	-2320(%ebp), %eax
	cmpl	4(%edx), %eax
	jne	L1066
	movswl	8(%edx), %ecx
	sall	$5, %ecx
	addl	-2312(%ebp), %ecx
	cmpl	(%ecx), %edi
	jne	L1066
	movl	-2304(%ebp), %eax
	cmpl	%eax, 4(%ecx)
	sete	%cl
	movzbl	%cl, %ecx
	orl	%ecx, %esi
	jmp	L1066
	.p2align 4,,10
	.p2align 3
L2435:
	movl	$LC133, (%esp)
	call	_message
	jmp	L908
L2528:
	movl	$2, 4(%esp)
	movl	$LC93, (%esp)
	call	_message
	movl	-2296(%ebp), %eax
	testl	%eax, %eax
	jle	L1016
	addl	$1, %eax
	movl	%esi, -2304(%ebp)
	sall	$2, %edi
	movl	%eax, -2312(%ebp)
	sarl	$31, %esi
	sarl	$31, %eax
	movl	%edi, -2292(%ebp)
	movl	%eax, -2308(%ebp)
	movl	%esi, -2300(%ebp)
	movl	$0, -2332(%ebp)
	jmp	L1017
L547:
	movl	-2404(%ebp), %eax
	call	__Z13handle_memerri
L548:
	movl	-2408(%ebp), %eax
	call	__Z13handle_memerri
L806:
	movl	$__ZL11cmpgeomwal1PKvS0_.lto_priv.0, 12(%esp)
	movl	$2, 8(%esp)
	movl	-2312(%ebp), %edi
	movl	$__ZZL14overheadeditorvE9outerwall, (%esp)
	movl	%edi, 4(%esp)
	call	_qsort
	movl	$__ZL11cmpgeomwal1PKvS0_.lto_priv.0, 12(%esp)
	movl	$2, 8(%esp)
	movl	%edi, 4(%esp)
	movl	$__ZZL14overheadeditorvE9outerwall+32768, (%esp)
	call	_qsort
	movl	$0, -2404(%ebp)
	testl	%edi, %edi
	jg	L1448
	movl	$0, -2304(%ebp)
	movl	$0, -2292(%ebp)
	jmp	L1449
	.p2align 4,,10
	.p2align 3
L1239:
	movl	-2364(%ebp), %eax
	movl	$LC168, (%esp)
	movl	%eax, 4(%esp)
	call	_message
	jmp	L1237
L1484:
	movl	$1, %eax
	jmp	L450
L1537:
	movswl	%bx, %edi
	jmp	L1210
L956:
	movswl	-2292(%ebp), %eax
	movl	$-1, %ebx
	addl	$134217727, %eax
	movl	%eax, %ecx
	andl	$134217727, %eax
	addl	$1, _wallchanged(,%eax,4)
	movzwl	-2324(%ebp), %eax
	sall	$5, %ecx
	movw	%ax, 8(%edx,%ecx)
	movl	$LC206, (%esp)
	call	_message
	movl	$-1, %ecx
	movw	%bx, -2324(%ebp)
	movw	%cx, _newnumwalls
	jmp	L1450
L1073:
	testw	%si, %si
	jne	L1075
L1064:
	movl	-2304(%ebp), %edx
	movl	%edi, %eax
	xorl	%esi, %esi
	call	__ZL14init_new_wall1Psii.constprop.0
	movw	%si, -2324(%ebp)
	jmp	L1076
L2535:
	movl	%ebx, %edi
	movl	%ebx, %esi
	movl	-2304(%ebp), %ecx
	movl	$0, -2296(%ebp)
	movl	$0, -2312(%ebp)
	sarl	$31, %edi
	sall	$12, %esi
	shldl	$12, %ebx, %edi
L618:
	movl	%ecx, %eax
	sall	$5, %eax
	addl	_wall, %eax
	movzwl	10(%eax), %edx
	movzbl	22(%eax), %eax
	movw	%dx, -2324(%ebp)
	movl	%ebx, %edx
	sall	$12, %edx
	testb	%al, %al
	je	L612
	movl	%ecx, -2320(%ebp)
	movl	%eax, 8(%esp)
	movl	$0, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	_tabledivide64.lto_priv.2
	movl	-2320(%ebp), %ecx
	movl	%eax, %edx
L612:
	movw	%cx, -2320(%ebp)
	testl	%edx, %edx
	jne	L2559
L613:
	movzwl	-2324(%ebp), %eax
	testw	%ax, %ax
	js	L614
	movswl	%ax, %ecx
	movl	%ebx, %edx
	movl	%ecx, %eax
	sall	$12, %edx
	sall	$5, %eax
	addl	_wall, %eax
	movzbl	22(%eax), %eax
	testb	%al, %al
	je	L616
	movl	%ecx, -2324(%ebp)
	movl	%eax, 8(%esp)
	movl	$0, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	_tabledivide64.lto_priv.2
	movl	-2324(%ebp), %ecx
	movl	%eax, %edx
L616:
	testl	%edx, %edx
	jne	L2560
L614:
	movswl	-2320(%ebp), %eax
	movl	-2312(%ebp), %edx
	call	_yax_getnextwall
	movswl	%ax, %ecx
	movl	%ecx, -2252(%ebp)
	cmpl	$-1, %ecx
	jne	L618
	movl	-2296(%ebp), %eax
	testl	%eax, %eax
	jne	L609
	movswl	-2304(%ebp), %eax
	call	_yax_getnextwall.constprop.0
	movswl	%ax, %ecx
	movl	%ecx, -2252(%ebp)
	cmpl	$-1, %ecx
	je	L609
	movl	$1, -2296(%ebp)
	movl	$1, -2312(%ebp)
	jmp	L618
L2559:
	movswl	%cx, %eax
	call	_fixxrepeat.part.0
	jmp	L613
L2560:
	movl	%ecx, %eax
	call	_fixxrepeat.part.0
	jmp	L614
L2436:
	movl	$LC134, (%esp)
	call	_message
	jmp	L908
L2460:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC177, (%esp)
	call	__printmessage16
	jmp	L1296
L1463:
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	L114
L2416:
	movswl	_numwalls, %ebx
	movl	%edi, %ecx
	movswl	%ax, %edx
	movl	_wall, %esi
	movl	%ebx, %eax
	testb	%cl, %cl
	jne	L434
	xorl	%ecx, %ecx
	testw	%bx, %bx
	cmovs	%ecx, %eax
	movl	%eax, -2296(%ebp)
L439:
	movl	%edx, %eax
	movl	%edx, %ecx
	sarl	$3, %eax
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.2(%ecx), %ecx
	orb	%cl, _show2dwall(%eax)
	movl	%edx, %eax
	sall	$5, %eax
	movl	%eax, -2312(%ebp)
	testl	%ebx, %ebx
	jle	L435
	leal	(%esi,%eax), %edi
	movl	%esi, -2320(%ebp)
	movl	%esi, %ecx
	xorl	%eax, %eax
	movl	%edx, -2292(%ebp)
	jmp	L437
L438:
	addl	$1, %eax
	addl	$32, %ecx
	cmpl	%eax, %ebx
	je	L2561
L437:
	cmpl	-2292(%ebp), %eax
	je	L438
	movl	(%ecx), %esi
	cmpl	%esi, (%edi)
	jne	L438
	movl	4(%ecx), %esi
	cmpl	%esi, 4(%edi)
	jne	L438
	movl	%eax, %edx
	movl	%eax, %esi
	addl	$1, %eax
	addl	$32, %ecx
	sarl	$3, %edx
	andl	$7, %esi
	movl	%edx, -2324(%ebp)
	movzbl	__ZL8pow2char.lto_priv.2(%esi), %edx
	movl	-2324(%ebp), %esi
	orb	%dl, _show2dwall(%esi)
	cmpl	%eax, %ebx
	jne	L437
L2561:
	movl	-2320(%ebp), %esi
L435:
	movl	-2312(%ebp), %eax
	movswl	8(%esi,%eax), %edx
	cmpw	%dx, -2304(%ebp)
	jne	L439
L440:
	movl	-2296(%ebp), %eax
	movl	%eax, -2252(%ebp)
	jmp	L433
L2556:
	movl	$LC115, (%esp)
	call	_message
	jmp	L818
L2555:
	movl	8(%eax), %eax
	jmp	L817
L2509:
	cmpb	$0, _keystatus+42
	jne	L1264
	movzbl	_hlsectorbitmap(%ebx), %ecx
	andl	%edx, %ecx
	cmpb	%cl, %dl
	jne	L1269
	jmp	L1264
L2461:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC178, (%esp)
	call	__printmessage16
	jmp	L1307
L446:
	movl	%edi, %eax
	movl	_sprite, %ebx
	testb	%al, %al
	jne	L484
	jmp	L468
L434:
	xorl	%ecx, %ecx
	testw	%bx, %bx
	cmovs	%ecx, %eax
	movl	%eax, -2296(%ebp)
L444:
	movl	%edx, %eax
	movl	%edx, %ecx
	andl	$7, %eax
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	notl	%eax
	andb	%al, _show2dwall(%ecx)
	movl	%edx, %eax
	sall	$5, %eax
	movl	%eax, -2312(%ebp)
	testl	%ebx, %ebx
	jle	L441
	leal	(%esi,%eax), %edi
	movl	%esi, -2320(%ebp)
	movl	%esi, %ecx
	xorl	%eax, %eax
	movl	%edx, -2292(%ebp)
	jmp	L443
L442:
	addl	$1, %eax
	addl	$32, %ecx
	cmpl	%eax, %ebx
	je	L2562
L443:
	cmpl	%eax, -2292(%ebp)
	je	L442
	movl	(%ecx), %esi
	cmpl	%esi, (%edi)
	jne	L442
	movl	4(%ecx), %esi
	cmpl	%esi, 4(%edi)
	jne	L442
	movl	%eax, %esi
	movl	%eax, %edx
	addl	$1, %eax
	addl	$32, %ecx
	andl	$7, %esi
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%esi), %esi
	movl	%edx, -2324(%ebp)
	notl	%esi
	movl	%esi, %edx
	movl	-2324(%ebp), %esi
	andb	%dl, _show2dwall(%esi)
	cmpl	%eax, %ebx
	jne	L443
L2562:
	movl	-2320(%ebp), %esi
L441:
	movl	-2312(%ebp), %eax
	movswl	8(%esi,%eax), %edx
	cmpw	%dx, -2304(%ebp)
	jne	L444
	jmp	L440
L2469:
	testw	%ax, %ax
	js	L2563
	movl	$-1, %eax
	call	_fade_editor_screen
	movl	$1, %ecx
	movl	$LC73, %edx
	movl	$LC74, %eax
	call	_editor_ask_function
	cmpl	$-1, %eax
	je	L371
	movl	$1, -2304(%ebp)
	jmp	L382
L2370:
	testw	%ax, %ax
	je	L421
	jmp	L422
L2546:
	movswl	%cx, %eax
	call	_lastwall
	cmpl	%esi, %eax
	sete	-2404(%ebp)
	jmp	L1106
L2541:
	orb	%cl, _show2dwall(%edi)
	jmp	L458
L1257:
	cmpb	$0, _keystatus+42
	je	L1263
	jmp	L1264
L2545:
	movl	-2404(%ebp), %ecx
	testl	%ecx, %ecx
	jne	L772
L1449:
	cmpl	$3, -2364(%ebp)
	je	L2564
L820:
	movl	-2364(%ebp), %esi
	movl	-2292(%ebp), %edx
	movl	%esi, %edi
	subl	$1, %edi
	sete	%al
	movl	%edi, -2328(%ebp)
	movl	-2184(%ebp,%edi,4), %edi
	movzbl	%al, %eax
	orl	-2304(%ebp), %edx
	movl	-2176(%ebp,%eax,4), %ecx
	movl	%ecx, -2320(%ebp)
	subl	%edi, %ecx
	orl	%ecx, %edx
	movl	%ecx, -2296(%ebp)
	je	L827
	movl	-2200(%ebp,%eax,4), %eax
	testb	$1, -2196(%ebp,%esi,4)
	jne	L828
	testb	$1, %al
	je	L829
L830:
	subl	-2320(%ebp), %edi
	negl	-2292(%ebp)
	movl	$1, %esi
	negl	-2304(%ebp)
	movl	%edi, -2296(%ebp)
L831:
	movl	_chsecptr_onextwall, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	jne	L2565
L838:
	movswl	_highlightsectorcnt, %eax
	testw	%ax, %ax
	jle	L850
	movl	%edx, (%esp)
	movl	$1, %ecx
	movl	$_highlightsector, %edx
	call	__ZL18sectors_componentssPKsii.part.0.lto_priv.0
	cmpl	$2, %eax
	jne	L850
	movl	$0, -2320(%ebp)
	movl	%esi, %eax
	sall	$13, %eax
	movl	%eax, -2332(%ebp)
	cmpw	$0, __ZL12collnumsects.lto_priv.0(%esi,%esi)
	jle	L852
L857:
	movl	-2332(%ebp), %eax
	movl	-2320(%ebp), %edi
	movl	$-858993459, %edx
	movswl	__ZL12collsectlist.lto_priv.0(%eax,%edi,2), %ebx
	movl	_sector, %edi
	leal	(%ebx,%ebx,4), %eax
	leal	(%edi,%eax,8), %ecx
	leal	8(,%eax,8), %eax
	mull	%edx
	movl	%edx, %eax
	movl	$-858993459, %edx
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	-2296(%ebp), %eax
	addl	%eax, 8(%ecx)
	leal	4(%ecx), %eax
	subl	%edi, %eax
	mull	%edx
	movl	-2296(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	addl	%eax, 4(%ecx)
	movswl	(%ecx), %eax
	movswl	2(%ecx), %ecx
	addl	%eax, %ecx
	cmpl	%ecx, %eax
	jge	L853
	movl	%ecx, %edi
	movl	_wall, %edx
	sall	$5, %eax
	sall	$5, %edi
L854:
	movl	%eax, %ecx
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	movl	-2292(%ebp), %ecx
	addl	%ecx, (%edx,%eax)
	leal	4(%eax), %ecx
	movl	_wall, %edx
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	movl	-2304(%ebp), %ecx
	addl	%ecx, 4(%edx,%eax)
	addl	$32, %eax
	cmpl	%eax, %edi
	jne	L854
L853:
	movswl	_headspritesect(%ebx,%ebx), %eax
	movl	%eax, -2324(%ebp)
	testl	%eax, %eax
	js	L855
	movl	_sprite, %edi
L856:
	imull	$44, -2324(%ebp), %ebx
	movl	$-1171354717, %eax
	movl	-2292(%ebp), %ecx
	mull	%ebx
	leal	4(%ebx), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	%ecx, (%edi,%ebx)
	movl	_sprite, %edi
	leal	(%edi,%ebx), %ecx
	movl	$-1171354717, %ebx
	mull	%ebx
	leal	8(%ecx), %eax
	subl	%edi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	-2304(%ebp), %edx
	addl	%edx, 4(%ecx)
	mull	%ebx
	movl	-2324(%ebp), %eax
	movl	-2296(%ebp), %ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	%ebx, 8(%ecx)
	movswl	_nextspritesect(%eax,%eax), %eax
	movl	%eax, -2324(%ebp)
	testl	%eax, %eax
	jns	L856
L855:
	addl	$1, -2320(%ebp)
	movswl	__ZL12collnumsects.lto_priv.0(%esi,%esi), %eax
	cmpl	-2320(%ebp), %eax
	jg	L857
L852:
	movswl	_highlightsectorcnt, %eax
	testw	%ax, %ax
	jle	L827
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	$_highlightsector, %edx
	call	__ZL18sectors_componentssPKsii.part.0.lto_priv.0
L827:
	movl	-2312(%ebp), %eax
	xorl	%ebx, %ebx
	movl	$0, -2252(%ebp)
	testl	%eax, %eax
	jle	L858
L872:
	movzwl	-2328(%ebp), %eax
	movl	%ebx, %edx
	movl	%ebx, %edi
	xorl	%esi, %esi
	xorl	$1, %edx
	sall	$15, %edi
	xorl	%ebx, %eax
	sall	$15, %edx
	movl	%edi, -2292(%ebp)
	movl	%edx, -2304(%ebp)
	movswl	%ax, %edi
	jmp	L861
L859:
	movl	%edi, %edx
	call	_yax_setnextwall.part.0
L860:
	addl	$1, %esi
	movl	%esi, -2252(%ebp)
	cmpl	%esi, -2312(%ebp)
	je	L858
L861:
	movl	-2304(%ebp), %eax
	movswl	__ZZL14overheadeditorvE9outerwall(%eax,%esi,2), %ecx
	movl	-2292(%ebp), %eax
	movswl	__ZZL14overheadeditorvE9outerwall(%eax,%esi,2), %eax
	cmpw	$0, _editstatus
	jne	L859
	leal	(%edi,%eax,2), %eax
	movw	%cx, _yax_nextwall(%eax,%eax)
	jmp	L860
L858:
	movl	%ebx, -2304(%ebp)
	cmpw	$0, __ZL12collnumsects.lto_priv.0(%ebx,%ebx)
	jle	L862
L873:
	movzwl	-2328(%ebp), %eax
	movl	-2304(%ebp), %edi
	movl	$0, -2292(%ebp)
	xorl	%ebx, %eax
	sall	$13, %edi
	cwtl
	movl	%edi, -2320(%ebp)
	movl	%eax, -2296(%ebp)
L870:
	movl	-2320(%ebp), %eax
	movl	-2292(%ebp), %edi
	movswl	__ZL12collsectlist.lto_priv.0(%eax,%edi,2), %esi
	movl	_numyaxbunches, %eax
	cmpw	$0, _editstatus
	je	L2566
	movl	-2296(%ebp), %edx
	movswl	%ax, %ecx
	movl	%esi, %eax
	call	_yax_setbunch.part.0
L864:
	movl	_sector, %edx
	leal	(%esi,%esi,4), %eax
	sall	$3, %eax
	movl	%eax, -2324(%ebp)
	leal	(%edx,%eax), %ecx
	cmpl	-2328(%ebp), %ebx
	je	L865
	leal	14(%ecx), %edi
	movl	%edi, %eax
	subl	%edx, %eax
	movl	$-858993459, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movzwl	14(%ecx), %eax
L866:
	andl	$-2, %eax
	movw	%ax, (%edi)
	movl	-2324(%ebp), %eax
	addl	_sector, %eax
	movswl	(%eax), %edi
	movswl	2(%eax), %eax
	leal	(%eax,%edi), %ecx
	movl	%edi, -2252(%ebp)
	cmpl	%ecx, %edi
	jl	L869
	jmp	L867
	.p2align 5
	.p2align 4,,10
	.p2align 3
L868:
	addl	$1, %edi
	movl	%edi, -2252(%ebp)
	cmpl	%ecx, %edi
	je	L867
L869:
	movl	%edi, %eax
	sall	$5, %eax
	addl	_wall, %eax
	cmpw	$0, 10(%eax)
	jns	L868
	movswl	%di, %eax
	movl	%esi, %edx
	movl	%ecx, -2324(%ebp)
	addl	$1, %edi
	call	_checksectorpointer
	movl	-2324(%ebp), %ecx
	movl	%edi, -2252(%ebp)
	cmpl	%ecx, %edi
	jne	L869
L867:
	movl	-2304(%ebp), %eax
	addl	$1, -2292(%ebp)
	movswl	__ZL12collnumsects.lto_priv.0(%eax,%eax), %eax
	cmpl	-2292(%ebp), %eax
	jg	L870
L862:
	cmpl	$1, %ebx
	je	L871
	movl	-2312(%ebp), %eax
	movl	$1, %ebx
	movl	$0, -2252(%ebp)
	testl	%eax, %eax
	jg	L872
	movl	$1, -2304(%ebp)
	cmpw	$0, __ZL12collnumsects.lto_priv.0+2
	jg	L873
L871:
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_hlsectorbitmap, (%esp)
	call	_memset
	call	_update_highlightsector
	xorl	%eax, %eax
	call	_yax_update
	movl	_pos+8, %eax
	call	_yax_updategrays
	call	_calc_sector_reachability
	movl	_numyaxbunches, %eax
	movl	$LC123, (%esp)
	movl	%eax, 4(%esp)
	call	_message
	movl	$1, %eax
	movw	%ax, _asksave
	jmp	L772
L2566:
	movl	-2296(%ebp), %edi
	leal	(%edi,%esi,2), %edx
	movw	%ax, _yax_bunchnum(%edx,%edx)
	jmp	L864
L865:
	leal	12(%ecx), %edi
	movl	%edi, %eax
	subl	%edx, %eax
	movl	$-858993459, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movzwl	12(%ecx), %eax
	jmp	L866
L2492:
	movswl	_joinsector, %ecx
	movswl	_numsectors, %eax
	movl	_sector, %ebx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%ecx,4), %ecx
	leal	(%ebx,%ecx,8), %ecx
	sall	$3, %eax
	leal	(%ebx,%eax), %edx
	movl	(%ecx), %ebx
	movl	%ebx, (%edx)
	movl	4(%ecx), %ebx
	movl	%ebx, 4(%edx)
	movl	8(%ecx), %ebx
	movl	%ebx, 8(%edx)
	movl	12(%ecx), %ebx
	movl	%ebx, 12(%edx)
	movl	16(%ecx), %ebx
	movl	%ebx, 16(%edx)
	movl	20(%ecx), %ebx
	movl	%ebx, 20(%edx)
	movl	24(%ecx), %ebx
	movl	%ebx, 24(%edx)
	movl	28(%ecx), %ebx
	movl	%ebx, 28(%edx)
	movl	32(%ecx), %ebx
	movl	%ebx, 32(%edx)
	movl	36(%ecx), %ecx
	movl	_sector, %ebx
	movl	%ecx, 36(%edx)
	movl	$-858993459, %ecx
	addl	%eax, %ebx
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movzwl	_numwalls, %eax
	movw	%ax, (%ebx)
	movswl	_numsectors, %eax
	leal	(%eax,%eax,4), %esi
	movl	%eax, %ebx
	leal	2(,%esi,8), %eax
	mull	%ecx
	movl	$_joinsector, %ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movzwl	_newnumwalls, %eax
	subw	_numwalls, %ax
	movl	_sector, %edx
	movl	$_joinsector, -2292(%ebp)
	movw	%ax, 2(%edx,%esi,8)
L968:
	movswl	(%ecx), %eax
	movswl	_headspritesect(%eax,%eax), %eax
	cmpl	$-1, %eax
	jne	L967
	jmp	L965
	.p2align 4,,10
	.p2align 3
L2567:
	cmpw	%bx, %dx
	je	L1555
	cwtl
	movl	%ecx, -2296(%ebp)
	movl	%eax, -2304(%ebp)
	call	_do_deletespritesect
	movl	-2304(%ebp), %eax
	movswl	%bx, %edx
	call	_do_insertsprite_at_headofsect
	movzwl	_numsectors, %ebx
	movl	-2296(%ebp), %ecx
	movl	%edi, %eax
L962:
	cmpl	$-1, %edi
	je	L965
L967:
	movswl	_nextspritesect(%eax,%eax), %edi
	cmpw	$4096, %bx
	ja	L1525
	movl	_sprite, %esi
L966:
	imull	$44, %eax, %edx
	movzwl	24(%esi,%edx), %edx
	cmpw	$4096, %dx
	jne	L2567
L1555:
	cmpl	$-1, %edi
	je	L965
	movl	%edi, %eax
	movswl	_nextspritesect(%edi,%edi), %edi
	jmp	L966
L965:
	addl	$2, %ecx
	movl	$_joinsector+4, %eax
	cmpl	%ecx, %eax
	jne	L968
	leal	1(%ebx), %eax
	movswl	_numwalls, %edx
	movw	%ax, _numsectors
	movswl	_newnumwalls, %eax
	movw	%ax, -2304(%ebp)
	movl	%eax, -2296(%ebp)
	cmpl	%eax, %edx
	jge	L969
	movl	_wall, %ecx
L971:
	movl	%edx, %edi
	sall	$5, %edi
	movswl	10(%ecx,%edi), %eax
	testw	%ax, %ax
	js	L970
	movl	%eax, %esi
	andl	$134217727, %eax
	sall	$5, %esi
	addl	$1, _wallchanged(,%eax,4)
	movw	%dx, 10(%ecx,%esi)
	movswl	10(%ecx,%edi), %eax
	movl	%eax, %edi
	andl	$134217727, %eax
	sall	$5, %edi
	addl	$1, _wallchanged(,%eax,4)
	movw	%bx, 12(%ecx,%edi)
L970:
	addl	$1, %edx
	cmpl	-2296(%ebp), %edx
	jne	L971
L969:
	movzwl	-2304(%ebp), %eax
	movw	%ax, _numwalls
	movl	$-1, %eax
	movw	%ax, _newnumwalls
L974:
	movl	-2292(%ebp), %eax
	movswl	(%eax), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %ebx
	movswl	2(%eax), %edi
	addl	%ebx, %edi
	movl	%ebx, -2252(%ebp)
	cmpl	%edi, %ebx
	jge	L972
L973:
	movl	_wall, %ecx
	movl	%ebx, %eax
	sall	$5, %eax
	leal	(%ecx,%eax), %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	$-1, %eax
	movw	%ax, 12(%edx)
	leal	10(%edx), %eax
	subl	%ecx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	$-1, %eax
	movw	%ax, 10(%edx)
	movswl	%bx, %eax
	xorl	%edx, %edx
	addl	$1, %ebx
	movl	%eax, -2304(%ebp)
	call	_yax_setnextwall.constprop.0
	movl	-2304(%ebp), %eax
	movl	$1, %edx
	call	_yax_setnextwall.constprop.0
	movl	%ebx, -2252(%ebp)
	cmpl	%edi, %ebx
	jne	L973
L972:
	addl	$2, -2292(%ebp)
	movl	$_joinsector+4, %eax
	cmpl	-2292(%ebp), %eax
	jne	L974
	movswl	_joinsector, %eax
	call	__ZL12deletesectors.isra.0
	movzwl	_joinsector+2, %eax
	cmpw	%ax, _joinsector
	jge	L975
	subl	$1, %eax
	movw	%ax, _joinsector+2
L975:
	cwtl
	movl	$1, %esi
	call	__ZL12deletesectors.isra.0
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC140, (%esp)
	call	__printmessage16
	xorl	%eax, %eax
	movw	%si, _asksave
	movl	$0, _chsecptr_onextwall
	call	_yax_update
	movl	_pos+8, %eax
	call	_yax_updategrays
	call	_calc_sector_reachability
	jmp	L960
L1524:
	movl	$1, -2328(%ebp)
	jmp	L959
L269:
	movswl	_highlightsector, %eax
	movl	%eax, 12(%esp)
	movl	-2292(%ebp), %eax
	movl	%ecx, 4(%esp)
	movl	__ZZL14overheadeditorvE3cfs(,%eax,4), %eax
	movl	$LC57, (%esp)
	movl	%eax, 8(%esp)
	call	_message
	movzwl	_highlightcnt, %eax
	movzwl	_highlightsectorcnt, %ecx
	movl	%eax, %edx
	jmp	L252
L2470:
	movl	$-1, %eax
	call	_fade_editor_screen
	movl	$1, %ecx
	movl	$LC75, %edx
	movl	$LC76, %eax
	call	_editor_ask_function
	cmpl	$-1, %eax
	je	L371
	movl	$0, -2304(%ebp)
	movw	%si, -2296(%ebp)
	jmp	L382
L2500:
	movzwl	-2296(%ebp), %eax
	cmpw	$-1, %ax
	je	L1473
	movswl	%ax, %esi
	cmpl	_numyaxbunches, %esi
	jge	L1474
	movswl	_headsectbunch+512(%esi,%esi), %ecx
	xorl	%eax, %eax
	cmpl	$-1, %ecx
	je	L287
L288:
	movswl	_nextsectbunch+8192(%ecx,%ecx), %ecx
	addl	$1, %eax
	cmpl	$-1, %ecx
	jne	L288
L287:
	cmpl	%eax, %edx
	je	L289
	movl	$LC59, (%esp)
	call	_message
	movzwl	_highlightcnt, %eax
	movzwl	_highlightsectorcnt, %ecx
	movl	%eax, %edx
	jmp	L252
L285:
	cmpw	$-1, -2296(%ebp)
	movl	$LC3, %eax
	movl	$LC4, %edx
	cmove	%edx, %eax
L277:
	movl	%eax, 8(%esp)
	movl	-2292(%ebp), %eax
	movl	$LC58, (%esp)
	movl	__ZZL14overheadeditorvE3cfs(,%eax,4), %eax
	movl	%eax, 4(%esp)
	call	_message
	movzwl	_highlightcnt, %eax
	movzwl	_highlightsectorcnt, %ecx
	movl	%eax, %edx
	jmp	L252
L1075:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC155, (%esp)
	call	__printmessage16
	jmp	L1035
L2365:
	movl	$-1, %eax
	xorl	%esi, %esi
	movw	%ax, -2356(%ebp)
	jmp	L631
L2398:
	call	_ExtUnInit
	call	_engineUnInit
	movl	_g_sm_heap, %esi
	testl	%esi, %esi
	je	L1400
	call	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	movl	_g_sm_heap, %ebx
	testl	%ebx, %ebx
	je	L1400
	movl	372(%ebx), %eax
	testl	%eax, %eax
	je	L1401
	call	_mi_free
L1401:
	movl	%ebx, %eax
	call	_mi_free
L1400:
	movl	$0, (%esp)
	call	_exit
L1507:
	xorl	%eax, %eax
	jmp	L2239
L1274:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC171, (%esp)
	call	__printmessage16
	movl	$0, _chsecptr_onextwall
	jmp	L1278
L2534:
	movzwl	_pointhighlight, %eax
	movw	%ax, -2292(%ebp)
L620:
	movzwl	-2292(%ebp), %eax
	jmp	L608
L2501:
	movl	$LC54, (%esp)
	call	_message
	movzwl	_highlightcnt, %eax
	movzwl	_highlightsectorcnt, %ecx
	movl	%eax, %edx
	jmp	L252
L2499:
	movl	$LC55, (%esp)
	call	_message
	movzwl	_highlightcnt, %eax
	movzwl	_highlightsectorcnt, %ecx
	movl	%eax, %edx
	jmp	L252
L289:
	movswl	_highlightsector, %edx
	movl	-2304(%ebp), %eax
	movswl	_headsectbunch(%esi,%esi), %ecx
	leal	(%edx,%edx,4), %edx
	movl	8(%eax,%edx,8), %edi
	movl	%edi, -2312(%ebp)
	movl	$2147483647, %edi
	cmpl	$-1, %ecx
	je	L290
L295:
	leal	(%ecx,%ecx,4), %edx
	leal	0(,%edx,8), %ebx
	addl	%ebx, %eax
	movl	%ebx, -2320(%ebp)
	movswl	2(%eax), %edx
	movswl	(%eax), %ebx
	addl	%ebx, %edx
	movl	%ebx, -2252(%ebp)
	movl	%edx, -2304(%ebp)
	cmpl	%edx, %ebx
	jl	L294
	jmp	L291
	.p2align 4,,10
	.p2align 3
L292:
	movl	%ebx, %edx
	movl	%ecx, -2324(%ebp)
	sall	$5, %edx
	addl	_wall, %edx
	movl	4(%edx), %ecx
	movl	%ecx, 8(%esp)
	movl	(%edx), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_getflorzofslopeptr.part.0
	movl	-2324(%ebp), %ecx
L293:
	cmpl	%eax, %edi
	cmovg	%eax, %edi
	addl	$1, %ebx
	movl	%ebx, -2252(%ebp)
	cmpl	-2304(%ebp), %ebx
	je	L291
	movl	-2320(%ebp), %eax
	addl	_sector, %eax
L294:
	testb	$2, 14(%eax)
	jne	L292
	movl	8(%eax), %eax
	jmp	L293
L291:
	movswl	_nextsectbunch(%ecx,%ecx), %ecx
	cmpl	$-1, %ecx
	je	L290
	movl	_sector, %eax
	jmp	L295
L290:
	movswl	_headsectbunch+512(%esi,%esi), %ecx
	movl	$-2147483648, %esi
	cmpl	$-1, %ecx
	je	L296
L301:
	leal	(%ecx,%ecx,4), %eax
	sall	$3, %eax
	movl	%eax, -2320(%ebp)
	addl	_sector, %eax
	movswl	(%eax), %ebx
	movswl	2(%eax), %edx
	addl	%ebx, %edx
	movl	%ebx, -2252(%ebp)
	movl	%edx, -2304(%ebp)
	cmpl	%edx, %ebx
	jl	L300
	jmp	L297
	.p2align 4,,10
	.p2align 3
L298:
	movl	%ebx, %edx
	movl	%ecx, -2324(%ebp)
	sall	$5, %edx
	addl	_wall, %edx
	movl	4(%edx), %ecx
	movl	%ecx, 8(%esp)
	movl	(%edx), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_getceilzofslopeptr.part.0
	movl	-2324(%ebp), %ecx
L299:
	cmpl	%eax, %esi
	cmovl	%eax, %esi
	addl	$1, %ebx
	movl	%ebx, -2252(%ebp)
	cmpl	-2304(%ebp), %ebx
	je	L297
	movl	-2320(%ebp), %eax
	addl	_sector, %eax
L300:
	testb	$2, 12(%eax)
	jne	L298
	movl	4(%eax), %eax
	jmp	L299
L297:
	movswl	_nextsectbunch+8192(%ecx,%ecx), %ecx
	cmpl	$-1, %ecx
	jne	L301
L296:
	movl	%edi, %edx
	subl	%esi, %edx
	cmpl	$16383, %edx
	jle	L2568
	movl	-2312(%ebp), %eax
	cmpl	%esi, %eax
	jle	L1553
	cmpl	%edi, %eax
	jge	L1553
	fnstcw	-2286(%ebp)
	movl	-2312(%ebp), %eax
	movl	%eax, -2304(%ebp)
	subl	%esi, %eax
	fildl	-2304(%ebp)
	movl	%eax, -2304(%ebp)
	fildl	-2304(%ebp)
	movl	%edx, -2304(%ebp)
	fildl	-2304(%ebp)
	movzwl	-2286(%ebp), %eax
	fdivrp	%st, %st(1)
	orb	$12, %ah
	movw	%ax, -2288(%ebp)
	fmuls	LC62
	fsubrp	%st, %st(1)
	fldcw	-2288(%ebp)
	fistpl	-2304(%ebp)
	fldcw	-2286(%ebp)
	movl	-2304(%ebp), %eax
	xorb	%al, %al
	leal	8192(%eax), %ecx
	movl	%eax, -2328(%ebp)
	movl	%ecx, -2332(%ebp)
	cmpl	%esi, %eax
	jle	L305
	cmpl	%edi, %ecx
	jge	L305
	movl	$1, %edx
	movzwl	_highlightsectorcnt, %esi
	movw	%dx, -2364(%ebp)
	jmp	L271
L2396:
	call	__ZN6loguru24current_verbosity_cutoffEv
	cmpl	$-2, %eax
	jge	L2569
L1412:
	call	_ExtUnInit
	call	_engineUnInit
	cmpl	$0, _g_sm_heap
	je	L1413
	call	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	movl	_g_sm_heap, %eax
	testl	%eax, %eax
	je	L1413
	call	__sm_allocator_destroy.part.0.lto_priv.0
L1413:
	movl	$1, (%esp)
	call	_exit
L2569:
	movl	_ydim, %eax
	movl	%eax, 20(%esp)
	movl	_xdim, %eax
	movl	$LC201, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$8549, 8(%esp)
	movl	$LC113, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1412
L2498:
	movswl	-2292(%ebp), %eax
	xorl	%ebx, %ebx
	movw	%ax, -2364(%ebp)
	movl	%eax, -2324(%ebp)
L280:
	movswl	_highlightsector(%ebx,%ebx), %eax
	movl	-2324(%ebp), %edx
	call	_yax_getbunch
	testw	%ax, %ax
	js	L2570
L268:
	movl	-2292(%ebp), %eax
	movl	__ZZL14overheadeditorvE3cfs(,%eax,4), %eax
	movl	%eax, 8(%esp)
	movswl	_highlightsector(%ebx,%ebx), %eax
	movl	$LC56, (%esp)
	movl	%eax, 4(%esp)
	call	_message
	movzwl	_highlightcnt, %eax
	movzwl	_highlightsectorcnt, %ecx
	movl	%eax, %edx
	jmp	L252
L1474:
	movl	$-1, %eax
	jmp	L287
	.p2align 4,,10
	.p2align 3
L2549:
	movl	$-1, -2296(%ebp)
	jmp	L1114
L1117:
	movl	-2332(%ebp), %ebx
	movl	%ebx, %eax
	call	_yax_getbunch.constprop.1
	movw	%ax, -2450(%ebp)
	movl	%eax, %edi
	movl	%ebx, %eax
	call	_yax_getbunch.constprop.0
	movw	%ax, -2436(%ebp)
	testw	%di, %di
	js	L1119
	movswl	__ZL3ovh.lto_priv.0+8, %eax
	movl	_sector, %ebx
	leal	(%eax,%eax,4), %eax
	leal	(%ebx,%eax,8), %eax
	testb	$2, 12(%eax)
	jne	L1120
L1119:
	cmpw	$0, -2436(%ebp)
	js	L1121
	movswl	__ZL3ovh.lto_priv.0+8, %eax
	movl	_sector, %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	testb	$2, 14(%eax)
	je	L1121
L1120:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC161, (%esp)
	call	__printmessage16
	subw	$1, _newnumwalls
	jmp	L1035
L1121:
	movzwl	_newnumwalls, %eax
	movswl	_numwalls, %edi
	subl	$1, %eax
	movw	%ax, _newnumwalls
	cmpw	%di, %ax
	jle	L1123
L1124:
	movswl	%di, %eax
	movl	%esi, %edx
	movl	$1, %ecx
	call	__ZL22copy_some_wall_membersssi.lto_priv.0
	movl	%edi, %eax
	movl	_wall, %edx
	addl	$1, %edi
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%di, 8(%edx)
	movswl	_newnumwalls, %edx
	movl	%edx, %eax
	cmpl	%edx, %edi
	jl	L1124
L1123:
	movw	%ax, -2072(%ebp)
	movl	-2292(%ebp), %edi
	cmpl	%edi, -2296(%ebp)
	je	L2571
	movl	$-1, (%esp)
	movl	-2328(%ebp), %eax
	leal	-2072(%ebp), %ecx
	movl	%eax, %edx
	call	__ZL18do_while_copyloop1ssPss.lto_priv.0
	testl	%eax, %eax
	je	L2572
L1144:
	movl	$LC17, %eax
L1127:
	movl	%eax, 4(%esp)
	movl	$LC164, (%esp)
	call	_message
L1204:
	movl	$0, _chsecptr_onextwall
	movl	$-1, %eax
	movw	%ax, _newnumwalls
	movl	$1, %eax
	movw	%ax, _asksave
L2298:
	xorl	%eax, %eax
	call	_yax_update
	movl	_pos+8, %eax
	call	_yax_updategrays
	call	_calc_sector_reachability
	jmp	L1035
L2565:
	movswl	__ZL12collnumsects.lto_priv.0(%esi,%esi), %eax
	movl	%edx, -2320(%ebp)
	movl	%eax, -2324(%ebp)
	leal	(%eax,%eax), %ecx
	movl	%eax, %ebx
	movl	%esi, %eax
	sall	$13, %eax
	movl	%ecx, 8(%esp)
	addl	$__ZL12collsectlist.lto_priv.0, %eax
	movl	$__ZZL14overheadeditorvE13ocollsectlist, (%esp)
	movl	%eax, 4(%esp)
	call	_memcpy
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZZL14overheadeditorvE11tcollbitmap, (%esp)
	call	_memset
	testw	%bx, %bx
	movl	-2320(%ebp), %edx
	jle	L838
	xorl	%edi, %edi
L845:
	movswl	__ZZL14overheadeditorvE13ocollsectlist(%edi,%edi), %eax
	leal	(%eax,%eax,4), %ecx
	movl	_sector, %eax
	leal	(%eax,%ecx,8), %eax
	movswl	(%eax), %ebx
	movswl	2(%eax), %eax
	addl	%ebx, %eax
	movl	%ebx, -2252(%ebp)
	movl	%eax, -2320(%ebp)
	cmpl	%eax, %ebx
	jl	L844
	jmp	L840
	.p2align 5
	.p2align 4,,10
	.p2align 3
L841:
	addl	$1, %ebx
	movl	%ebx, -2252(%ebp)
	cmpl	-2320(%ebp), %ebx
	je	L840
L844:
	movswl	__ZL9onextwall.lto_priv.0+0(%ebx,%ebx), %eax
	testw	%ax, %ax
	js	L841
	call	_sectorofwall
	leal	-2072(%ebp), %edx
	movl	$1, %ecx
	movw	%ax, -2072(%ebp)
	movl	$1, %eax
	movl	$0, (%esp)
	call	__ZL18sectors_componentssPKsii.part.0.lto_priv.0
	movswl	_numsectors, %edx
	xorl	%eax, %eax
	addl	$7, %edx
	sarl	$3, %edx
	testl	%edx, %edx
	jle	L843
L842:
	movzbl	__ZZL14overheadeditorvE11tcollbitmap(%eax), %ecx
	orb	__ZL14collsectbitmap.lto_priv.0(%eax), %cl
	addl	$1, %eax
	movb	%cl, __ZZL14overheadeditorvE11tcollbitmap-1(%eax)
	cmpl	%edx, %eax
	jne	L842
L843:
	movl	$1, %edx
	jmp	L841
L840:
	addl	$1, %edi
	cmpl	-2324(%ebp), %edi
	jne	L845
	testl	%edx, %edx
	je	L838
	movzbl	_editorcolors+11, %edx
	testl	%esi, %esi
	movl	$159, %eax
	cmovne	%edx, %eax
	movl	%eax, %edi
	cmpw	$0, _numsectors
	jle	L847
	movl	$1, %eax
	xorl	%ebx, %ebx
	jmp	L849
L848:
	movswl	_numsectors, %eax
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jle	L847
	movl	%ebx, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
L849:
	movl	%ebx, %edx
	sarl	$3, %edx
	movzbl	__ZZL14overheadeditorvE11tcollbitmap(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%al, %cl
	jne	L848
	movzbl	_editorcolors+12, %edx
	movswl	%bx, %eax
	xorl	%ecx, %ecx
	call	_fillsector_maybetrans.isra.0
	jmp	L848
L828:
	xorl	%esi, %esi
	testb	$1, %al
	je	L831
L829:
	movl	$25209, %eax
	movw	%ax, -2072(%ebp)
	cmpw	$0, __ZL12collnumsects.lto_priv.0
	jle	L832
	xorl	%ebx, %ebx
L833:
	movswl	__ZL12collsectlist.lto_priv.0+0(%ebx,%ebx), %eax
	xorl	%ecx, %ecx
	movl	$159, %edx
	addl	$1, %ebx
	call	_fillsector_maybetrans.isra.0
	movswl	__ZL12collnumsects.lto_priv.0, %eax
	cmpl	%ebx, %eax
	jg	L833
L832:
	xorl	%ebx, %ebx
	cmpw	$0, __ZL12collnumsects.lto_priv.0+2
	jle	L836
L834:
	movswl	__ZL12collsectlist.lto_priv.0+8192(%ebx,%ebx), %eax
	movzbl	_editorcolors+11, %edx
	xorl	%ecx, %ecx
	addl	$1, %ebx
	call	_fillsector_maybetrans.isra.0
	movswl	__ZL12collnumsects.lto_priv.0+2, %eax
	cmpl	%ebx, %eax
	jg	L834
L836:
	movzbl	_editorcolors+11, %eax
	orb	$-97, %ah
	call	_fade_editor_screen
	movl	$2, %ecx
	leal	-2072(%ebp), %edx
	movl	$LC120, %eax
	call	_editor_ask_function
	cmpl	$-1, %eax
	je	L772
	movl	%eax, %ecx
	movl	$1, %edx
	sall	%cl, %edx
	movl	%edx, %eax
	andl	$3, %eax
	leal	-1(%eax), %esi
	cmpl	$2, %eax
	jne	L831
	jmp	L830
L2572:
	movswl	_newnumwalls, %edi
	movswl	_numwalls, %edx
	movl	$-1, %eax
	movw	%ax, -2324(%ebp)
	movzwl	-2072(%ebp), %eax
	movl	%edi, -2252(%ebp)
	cmpw	%dx, %di
	jle	L2573
L1142:
	movw	%ax, -2304(%ebp)
L1146:
	movswl	-2304(%ebp), %edx
	movl	_wall, %eax
	addw	$1, -2304(%ebp)
	movl	%edx, %ecx
	movl	%edx, -2332(%ebp)
	sall	$5, %ecx
	leal	(%eax,%ecx), %edx
	movl	%ecx, %ebx
	movl	%edi, %ecx
	subl	$1, %edi
	sall	$5, %ecx
	addl	%ecx, %eax
	movl	(%eax), %ecx
	movl	%ecx, (%edx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	8(%eax), %ecx
	movl	%ecx, 8(%edx)
	movl	12(%eax), %ecx
	movl	%ecx, 12(%edx)
	movl	16(%eax), %ecx
	movl	%ecx, 16(%edx)
	movl	20(%eax), %ecx
	movl	%ecx, 20(%edx)
	movl	24(%eax), %ecx
	movl	%ecx, 24(%edx)
	movl	28(%eax), %eax
	movl	_wall, %ecx
	movl	%eax, 28(%edx)
	movl	%ebx, %edx
	shrl	$5, %edx
	leal	(%ecx,%ebx), %eax
	movl	$-1, %ebx
	addl	$1, _wallchanged(,%edx,4)
	movl	$-1, %edx
	movw	%dx, 10(%eax)
	leal	12(%eax), %edx
	subl	%ecx, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	leal	8(%eax), %edx
	subl	%ecx, %edx
	movzwl	-2304(%ebp), %ecx
	movw	%bx, 12(%eax)
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	xorl	%edx, %edx
	movw	%cx, 8(%eax)
	movl	-2332(%ebp), %ebx
	movl	%ebx, %eax
	call	_yax_setnextwall.constprop.0
	movl	$1, %edx
	movl	%ebx, %eax
	call	_yax_setnextwall.constprop.0
	movzwl	-2304(%ebp), %ecx
	movswl	_numwalls, %edx
	movl	%edi, -2252(%ebp)
	movw	%cx, -2072(%ebp)
	cmpl	%edx, %edi
	jg	L1146
	movswl	__ZL3ovh.lto_priv.0+10, %eax
	movl	-2292(%ebp), %ecx
	cmpl	%ecx, -2296(%ebp)
	je	L1444
L1147:
	movl	%edx, (%esp)
	leal	-2072(%ebp), %ecx
	movl	%eax, %edx
	call	__ZL18do_while_copyloop1ssPss.lto_priv.0
	testl	%eax, %eax
	jne	L1144
L1148:
	movswl	__ZL3ovh.lto_priv.0+8, %eax
	movl	-2292(%ebp), %edi
	cmpl	%edi, -2296(%ebp)
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	sete	-2392(%ebp)
	leal	(%eax,%edx,8), %ecx
	movswl	(%ecx), %eax
	movswl	2(%ecx), %edi
	movl	%edi, -2332(%ebp)
	addl	%eax, %edi
	movl	%eax, %edx
	cmpl	%edi, %eax
	jge	L1153
	movswl	__ZL3ovh.lto_priv.0+10, %ecx
	movl	$0, -2304(%ebp)
	movl	%ecx, -2364(%ebp)
	movl	_wall, %ecx
	movl	%ecx, -2408(%ebp)
	jmp	L1152
L2574:
	movl	%edx, %ecx
	movl	-2408(%ebp), %ebx
	sall	$5, %ecx
	movswl	8(%ebx,%ecx), %ecx
	cmpl	%edx, %ecx
	setl	%cl
	addl	$1, %edx
	movzbl	%cl, %ecx
	addl	%ecx, -2304(%ebp)
	cmpl	%edx, %edi
	je	L1153
L1152:
	cmpl	%edx, -2364(%ebp)
	jne	L2574
L1150:
	movl	-2304(%ebp), %edi
	movl	%esi, -2252(%ebp)
	movl	%edi, -2364(%ebp)
L1174:
	movl	-2332(%ebp), %esi
	movzwl	-2320(%ebp), %edi
	addl	%eax, %esi
	movw	%di, -2444(%ebp)
	movl	%eax, %edi
	movl	%esi, -2332(%ebp)
	cmpl	%esi, %eax
	jge	L1158
	movswl	-2320(%ebp), %esi
	movl	_wall, %ebx
	movl	%eax, %edx
	movl	%esi, -2408(%ebp)
	xorl	%esi, %esi
	jmp	L1157
L2575:
	movl	%edx, %ecx
	sall	$5, %ecx
	movswl	8(%ebx,%ecx), %ecx
	cmpl	%edx, %ecx
	setl	%cl
	addl	$1, %edx
	movzbl	%cl, %ecx
	addl	%ecx, %esi
	cmpl	%edx, -2332(%ebp)
	je	L1158
L1157:
	cmpl	%edx, -2408(%ebp)
	jne	L2575
L1155:
	cmpl	%esi, -2364(%ebp)
	je	L1168
	cmpl	%esi, -2304(%ebp)
	jne	L1561
	cmpb	$0, -2392(%ebp)
	je	L1561
L1160:
	movl	-2364(%ebp), %esi
L1168:
	addl	$1, -2320(%ebp)
	movl	-2320(%ebp), %eax
	movl	%eax, -2252(%ebp)
	cmpl	%eax, -2312(%ebp)
	je	L1173
	movswl	__ZL3ovh.lto_priv.0+8, %eax
	movl	%esi, -2364(%ebp)
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %edx
	movswl	2(%edx), %edi
	movswl	(%edx), %eax
	movl	%edi, -2332(%ebp)
	jmp	L1174
L2571:
	movswl	_numwalls, %eax
	movswl	__ZL3ovh.lto_priv.0+10, %edx
	leal	-2072(%ebp), %ecx
	movl	%eax, (%esp)
	movl	-2328(%ebp), %eax
	call	__ZL18do_while_copyloop1ssPss.lto_priv.0
	testl	%eax, %eax
	je	L1126
L1140:
	movl	$LC16, %eax
	jmp	L1127
L1126:
	movswl	__ZL3ovh.lto_priv.0+8, %ecx
	movl	_sector, %eax
	imull	$40, %ecx, %edx
	movl	%eax, -2304(%ebp)
	addl	%eax, %edx
	movswl	(%edx), %eax
	movswl	2(%edx), %edx
	leal	(%edx,%eax), %edi
	cmpl	%edi, %eax
	jge	L1132
	movswl	__ZL3ovh.lto_priv.0+10, %ebx
	xorl	%edx, %edx
	movl	%edx, -2324(%ebp)
	movl	%ebx, -2332(%ebp)
	movl	_wall, %ebx
	movl	%ebx, -2364(%ebp)
	jmp	L1131
L2576:
	movl	%eax, %edx
	movl	-2364(%ebp), %ebx
	sall	$5, %edx
	movswl	8(%ebx,%edx), %edx
	cmpl	%eax, %edx
	setl	%dl
	addl	$1, %eax
	movzbl	%dl, %edx
	addl	%edx, -2324(%ebp)
	cmpl	%eax, %edi
	je	L1132
L1131:
	cmpl	%eax, -2332(%ebp)
	jne	L2576
L1129:
	movl	%esi, -2252(%ebp)
	movl	-2324(%ebp), %eax
	movl	%esi, %edi
L1141:
	leal	(%ecx,%ecx,4), %edx
	movl	-2304(%ebp), %ecx
	movw	%di, -2332(%ebp)
	leal	(%ecx,%edx,8), %ecx
	movswl	(%ecx), %edx
	movswl	2(%ecx), %ecx
	addl	%edx, %ecx
	movl	%ecx, -2364(%ebp)
	cmpl	%ecx, %edx
	jge	L1137
	movl	$0, -2304(%ebp)
	movswl	%di, %ecx
	movl	%ecx, -2392(%ebp)
	movl	_wall, %ecx
	movl	%ecx, -2408(%ebp)
	jmp	L1136
L2577:
	movl	%edx, %ecx
	movl	-2408(%ebp), %ebx
	sall	$5, %ecx
	movswl	8(%ebx,%ecx), %ecx
	cmpl	%edx, %ecx
	setl	%cl
	addl	$1, %edx
	movzbl	%cl, %ecx
	addl	%ecx, -2304(%ebp)
	cmpl	%edx, -2364(%ebp)
	je	L1137
L1136:
	cmpl	%edx, -2392(%ebp)
	jne	L2577
L1134:
	movl	-2304(%ebp), %ecx
	cmpl	%ecx, %eax
	je	L1138
	cmpl	%ecx, -2324(%ebp)
	je	L1138
	movl	%edi, %eax
	movswl	_numwalls, %ecx
	movzwl	-2072(%ebp), %ebx
	sall	$5, %eax
	addl	_wall, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	call	_loopinside
	cmpl	$1, %eax
	je	L2578
L1139:
	movl	-2304(%ebp), %eax
L1138:
	addl	$1, %edi
	movl	%edi, -2252(%ebp)
	cmpl	%edi, -2312(%ebp)
	je	L2245
	movl	_sector, %ecx
	movl	%ecx, -2304(%ebp)
	movswl	__ZL3ovh.lto_priv.0+8, %ecx
	jmp	L1141
L2573:
	movswl	__ZL3ovh.lto_priv.0+10, %eax
	jmp	L1147
L1153:
	movl	$-1, -2304(%ebp)
	jmp	L1150
L2245:
	movzwl	-2072(%ebp), %eax
	movswl	_newnumwalls, %edi
	movw	%ax, -2324(%ebp)
	movl	%edi, -2252(%ebp)
	cmpw	%di, _numwalls
	jl	L1142
	movswl	__ZL3ovh.lto_priv.0+10, %eax
L1444:
	movswl	-2324(%ebp), %edx
	leal	-2072(%ebp), %ecx
	movl	%edx, (%esp)
	movl	-2328(%ebp), %edx
	call	__ZL18do_while_copyloop1ssPss.lto_priv.0
	testl	%eax, %eax
	jne	L1140
	jmp	L1148
L1132:
	movl	$-1, -2324(%ebp)
	jmp	L1129
	.p2align 4,,10
	.p2align 3
L1561:
	movl	-2292(%ebp), %ebx
	cmpl	%ebx, -2296(%ebp)
	jne	L2579
	movl	-2320(%ebp), %eax
	movswl	_numwalls, %ecx
	sall	$5, %eax
	addl	_wall, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	call	_loopinside
	testl	%eax, %eax
	jne	L1168
L1167:
	movswl	-2072(%ebp), %edx
	movswl	-2444(%ebp), %eax
	leal	-2072(%ebp), %ecx
	movl	%edx, (%esp)
	movl	%eax, %edx
	call	__ZL18do_while_copyloop1ssPss.lto_priv.0
	testl	%eax, %eax
	je	L1168
L1172:
	movl	-2292(%ebp), %edi
	movl	$LC16, %eax
	cmpl	%edi, -2296(%ebp)
	movl	$LC17, %edx
	cmovne	%edx, %eax
	jmp	L1127
L1173:
	movswl	-2072(%ebp), %edi
	movswl	_numwalls, %esi
	movw	%di, -2332(%ebp)
	movl	%edi, -2328(%ebp)
	cmpw	%si, %di
	jle	L1175
	movl	-2292(%ebp), %edi
	cmpl	%edi, -2296(%ebp)
	movl	_wall, %ecx
	setne	-2320(%ebp)
	jmp	L1184
L2581:
	movl	%esi, %eax
	sall	$5, %eax
	leal	(%ecx,%eax), %edi
	movswl	10(%edi), %eax
	testw	%ax, %ax
	js	L1181
	movl	%eax, %edx
	andl	$134217727, %eax
	addl	$1, _wallchanged(,%eax,4)
	movzwl	-2304(%ebp), %eax
	sall	$5, %edx
	movw	%ax, 10(%ecx,%edx)
	movzwl	_numsectors, %eax
	movw	%ax, -2304(%ebp)
	movswl	10(%edi), %eax
	sall	$5, %eax
	leal	(%ecx,%eax), %edi
	shrl	$5, %eax
	movl	_wallchanged(,%eax,4), %ebx
	leal	1(%ebx), %edx
	movswl	-2324(%ebp), %ebx
	cmpl	%esi, %ebx
	jg	L1562
	cmpb	$0, -2320(%ebp)
	je	L1182
L1562:
	movl	%edx, _wallchanged(,%eax,4)
	movzwl	-2304(%ebp), %eax
	movw	%ax, 12(%edi)
L1181:
	addl	$1, %esi
	cmpl	-2328(%ebp), %esi
	je	L1175
L1184:
	movswl	%si, %eax
	movw	%si, -2304(%ebp)
	xorl	%edi, %edi
	movl	%eax, -2364(%ebp)
	sall	$5, %eax
	movl	%eax, -2408(%ebp)
L1180:
	cmpw	$0, _editstatus
	je	L2580
	movl	-2408(%ebp), %eax
	leal	10(%edi), %edx
	addl	%ecx, %eax
	movzwl	14(%eax), %ebx
	btl	%edx, %ebx
	jnc	L1178
	addl	$26, %eax
	movl	%eax, %edx
	subl	%ecx, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movswl	(%eax,%edi,4), %eax
	testw	%ax, %ax
	js	L1178
	movswl	-2304(%ebp), %ecx
	movl	%edi, %edx
	xorl	$1, %edx
	call	_yax_setnextwall.part.0
	movl	_wall, %ecx
L1178:
	cmpl	$1, %edi
	je	L2581
	movl	$1, %edi
	jmp	L1180
L1137:
	movl	$-1, -2304(%ebp)
	jmp	L1134
L2578:
	movswl	%bx, %edx
	movswl	-2332(%ebp), %eax
	leal	-2072(%ebp), %ecx
	movl	%edx, (%esp)
	movl	%eax, %edx
	call	__ZL18do_while_copyloop1ssPss.lto_priv.0
	testl	%eax, %eax
	je	L1139
	jmp	L1140
	.p2align 4,,10
	.p2align 3
L1158:
	movl	$-1, %esi
	jmp	L1155
L1175:
	movswl	__ZL3ovh.lto_priv.0+8, %edx
	movl	_sector, %ecx
	movswl	_numsectors, %eax
	imull	$40, %edx, %edx
	imull	$40, %eax, %eax
	leal	(%ecx,%edx), %esi
	movl	36(%esi), %edx
	leal	(%eax,%ecx), %edi
	movl	%edx, 36(%ecx,%eax)
	movl	$9, %ecx
	xorl	%edx, %edx
	rep movsl
	movl	$40, %ecx
	movswl	_numsectors, %eax
	movl	_sector, %esi
	movswl	-2324(%ebp), %edi
	movl	-2296(%ebp), %ebx
	imull	$40, %eax, %eax
	movl	%edi, -2364(%ebp)
	addl	%eax, %esi
	divl	%ecx
	addl	$1, _sectorchanged(,%eax,4)
	movzwl	_numwalls, %eax
	cmpl	-2292(%ebp), %ebx
	movw	%ax, (%esi)
	movl	-2328(%ebp), %eax
	movl	_sector, %edx
	cmove	%edi, %eax
	movswl	_numwalls, %edi
	movl	%eax, -2320(%ebp)
	movswl	_numsectors, %eax
	movw	%di, -2408(%ebp)
	movl	%eax, %esi
	imull	$40, %eax, %eax
	addl	%eax, %edx
	movl	%eax, -2444(%ebp)
	addl	$2, %eax
	movl	%edx, -2304(%ebp)
	xorl	%edx, %edx
	divl	%ecx
	movl	-2304(%ebp), %edx
	addl	$1, _sectorchanged(,%eax,4)
	movl	-2320(%ebp), %eax
	subl	%edi, %eax
	movw	%ax, 2(%edx)
	cmpl	-2292(%ebp), %ebx
	je	L2582
	movswl	__ZL3ovh.lto_priv.0+8, %eax
	movswl	_headspritesect(%eax,%eax), %ecx
L2296:
	cmpl	$-1, %ecx
	je	L1189
L1194:
	movl	%ecx, %edi
	movswl	_nextspritesect(%ecx,%ecx), %ecx
	cmpw	$4096, %si
	ja	L2296
	imull	$44, %edi, %eax
	addl	_sprite, %eax
	movzwl	24(%eax), %eax
	cmpw	$4096, %ax
	je	L2296
	cmpw	%ax, %si
	je	L2296
	movswl	%di, %eax
	movl	%ecx, -2304(%ebp)
	call	_do_deletespritesect
	movswl	%si, %edx
	movswl	%di, %eax
	call	_do_insertsprite_at_headofsect
	movl	-2304(%ebp), %ecx
	movzwl	_numsectors, %esi
	cmpl	$-1, %ecx
	jne	L1194
L1189:
	movzbl	-2392(%ebp), %eax
	leal	1(%eax,%esi), %eax
	movl	-2328(%ebp), %esi
	movw	%ax, _numsectors
	movswl	_numwalls, %eax
	subl	%eax, %esi
	movzwl	-2332(%ebp), %eax
	movw	%ax, _numwalls
L1195:
	movl	-2432(%ebp), %ebx
	xorl	%edx, %edx
	movl	$-1, %edi
	movswl	%bx, %eax
	call	_yax_setnextwall.constprop.0
	movl	$1, %edx
	movswl	%bx, %eax
	call	_yax_setnextwall.constprop.0
	movl	_wall, %ecx
	movl	%ebx, %eax
	sall	$5, %eax
	leal	(%ecx,%eax), %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	leal	10(%edx), %eax
	subl	%ecx, %eax
	movw	%di, 12(%edx)
	leal	1(%ebx), %edi
	shrl	$5, %eax
	movl	%edi, -2432(%ebp)
	addl	$1, _wallchanged(,%eax,4)
	movl	$-1, %eax
	movw	%ax, 10(%edx)
	cmpl	-2312(%ebp), %edi
	jne	L1195
	movswl	__ZL3ovh.lto_priv.0+8, %eax
	call	__ZL12deletesectors.isra.0
	movswl	_numwalls, %eax
	movl	%eax, %edi
	subl	%esi, %edi
	movl	%edi, -2252(%ebp)
	cmpl	%edi, %eax
	jle	L1196
L1198:
	movl	%edi, %edx
	sall	$5, %edx
	addl	_wall, %edx
	movswl	10(%edx), %eax
	testw	%ax, %ax
	js	L1197
	movswl	12(%edx), %edx
	call	_checksectorpointer
L1197:
	movswl	%di, %eax
	call	_sectorofwall
	movswl	%ax, %edx
	movswl	%di, %eax
	addl	$1, %edi
	call	_checksectorpointer
	movswl	_numwalls, %eax
	movl	%edi, -2252(%ebp)
	cmpl	%eax, %edi
	jl	L1198
L1196:
	cmpl	%eax, -2344(%ebp)
	je	L2583
	subl	-2344(%ebp), %eax
	movl	-2292(%ebp), %esi
	movl	$LC14, %ecx
	movl	$LC15, %edx
	cmpl	%esi, -2296(%ebp)
	movl	%eax, 8(%esp)
	cmove	%ecx, %edx
	movl	$LC163, (%esp)
	movl	%edx, 4(%esp)
	call	_message
	movl	_numcorruptthings, %eax
	cmpl	$63, %eax
	jg	L1206
	leal	1(%eax), %edx
	movl	%edx, _numcorruptthings
	xorl	%edx, %edx
	movl	%edx, _corruptthings(,%eax,4)
L1206:
	movl	$5, _corruptlevel
	jmp	L1204
L2579:
	cmpl	-2332(%ebp), %eax
	jge	L1163
	movswl	__ZL3ovh.lto_priv.0+10, %ecx
	movl	%ecx, -2448(%ebp)
	movl	_wall, %ecx
	movl	%ecx, -2408(%ebp)
	xorl	%ecx, %ecx
	jmp	L1166
L2585:
	movl	%eax, %edx
	movl	-2408(%ebp), %ebx
	sall	$5, %edx
	movswl	8(%ebx,%edx), %edx
	cmpl	%eax, %edx
	setl	%dl
	addl	$1, %eax
	movzbl	%dl, %edx
	addl	%edx, %ecx
	cmpl	%eax, -2332(%ebp)
	je	L2584
L1166:
	cmpl	%eax, -2448(%ebp)
	jne	L2585
L1164:
	cmpl	%ecx, %esi
	je	L1160
	xorl	%edx, %edx
	jmp	L1171
L2587:
	movl	%edi, %eax
	movl	-2408(%ebp), %ecx
	sall	$5, %eax
	movswl	8(%ecx,%eax), %eax
	cmpl	%edi, %eax
	setl	%al
	addl	$1, %edi
	movzbl	%al, %eax
	addl	%eax, %edx
	cmpl	%edi, -2332(%ebp)
	je	L2586
L1171:
	cmpl	%edi, -2328(%ebp)
	jne	L2587
	jmp	L1169
L2580:
	movl	-2364(%ebp), %eax
	sall	$2, %eax
	movswl	_yax_nextwall(%eax,%edi,2), %eax
	testw	%ax, %ax
	js	L1178
	movl	%edi, %edx
	movzwl	-2304(%ebp), %ebx
	xorl	$1, %edx
	leal	(%edx,%eax,2), %eax
	movw	%bx, _yax_nextwall(%eax,%eax)
	jmp	L1178
L1182:
	movl	%edx, _wallchanged(,%eax,4)
	movzwl	-2304(%ebp), %eax
	addl	$1, %eax
	movw	%ax, 12(%edi)
	jmp	L1181
L2583:
	movl	-2292(%ebp), %esi
	movl	$LC15, %eax
	cmpl	%esi, -2296(%ebp)
	je	L2588
L1200:
	movl	%eax, 4(%esp)
	movl	$LC162, (%esp)
	call	_message
	jmp	L1204
L2582:
	movswl	_newnumwalls, %eax
	cmpl	%eax, %edi
	jge	L1187
	leal	-1(%eax), %ecx
	movl	%eax, -2320(%ebp)
	leal	1(%esi), %ebx
	movl	-2320(%ebp), %eax
	movl	%ecx, -2448(%ebp)
	movl	%edi, %ecx
	movl	_wall, %edx
	subl	%edi, %eax
	movw	%bx, -2368(%ebp)
	movl	%edi, %ebx
	addl	-2364(%ebp), %eax
	movl	%edi, -2304(%ebp)
	movl	-2448(%ebp), %edi
	sall	$5, %ecx
	sall	$5, %eax
	leal	10(%edx,%ecx), %ecx
	leal	-22(%edx,%eax), %eax
	subl	%ebx, %edi
	addl	-2364(%ebp), %edi
	addl	-2408(%ebp), %edi
	movw	%di, -2364(%ebp)
L1188:
	movl	%ecx, %edi
	movzwl	-2368(%ebp), %ebx
	subl	%edx, %edi
	shrl	$5, %edi
	addl	$1, _wallchanged(,%edi,4)
	movzwl	-2364(%ebp), %edi
	subw	-2304(%ebp), %di
	movw	%di, (%ecx)
	leal	2(%ecx), %edi
	addl	$32, %ecx
	subl	%edx, %edi
	shrl	$5, %edi
	addl	$1, _wallchanged(,%edi,4)
	movl	%eax, %edi
	subl	%edx, %edi
	movw	%bx, -30(%ecx)
	movzwl	-2304(%ebp), %ebx
	shrl	$5, %edi
	addl	$1, -2304(%ebp)
	addl	$1, _wallchanged(,%edi,4)
	leal	2(%eax), %edi
	subl	$32, %eax
	subl	%edx, %edi
	movw	%bx, 32(%eax)
	movl	-2320(%ebp), %ebx
	shrl	$5, %edi
	addl	$1, _wallchanged(,%edi,4)
	movw	%si, 34(%eax)
	cmpl	%ebx, -2304(%ebp)
	jne	L1188
L1187:
	movswl	__ZL3ovh.lto_priv.0+8, %edx
	movl	-2444(%ebp), %eax
	movl	$9, %ecx
	movl	_sector, %esi
	imull	$40, %edx, %edx
	leal	40(%esi,%eax), %eax
	movl	%eax, %edi
	addl	%edx, %esi
	movl	36(%esi), %edx
	movl	%edx, 36(%eax)
	xorl	%edx, %edx
	rep movsl
	movl	$40, %ecx
	movswl	_numsectors, %eax
	movl	_sector, %esi
	movzwl	-2324(%ebp), %edi
	addl	$1, %eax
	imull	$40, %eax, %eax
	addl	%eax, %esi
	divl	%ecx
	xorl	%edx, %edx
	addl	$1, _sectorchanged(,%eax,4)
	movw	%di, (%esi)
	movswl	_numsectors, %eax
	movl	_sector, %esi
	addl	$1, %eax
	imull	$40, %eax, %eax
	addl	%eax, %esi
	addl	$2, %eax
	divl	%ecx
	addl	$1, _sectorchanged(,%eax,4)
	movzwl	-2332(%ebp), %eax
	subl	%edi, %eax
	movw	%ax, 2(%esi)
	movswl	__ZL3ovh.lto_priv.0+8, %eax
	movswl	_headspritesect(%eax,%eax), %edi
	cmpl	$-1, %edi
	jne	L1192
	jmp	L2297
L1190:
	leal	1(%esi), %edx
	cmpw	$4096, %dx
	ja	L1191
	movl	_sprite, %eax
	addl	%ebx, %eax
	movzwl	24(%eax), %eax
	cmpw	$4096, %ax
	je	L1191
	cmpw	%dx, %ax
	je	L1191
	movswl	-2304(%ebp), %esi
	movl	%edx, -2304(%ebp)
	movl	%esi, %eax
	call	_do_deletespritesect
	movswl	-2304(%ebp), %edx
	movl	%esi, %eax
	call	_do_insertsprite_at_headofsect
L1191:
	cmpl	$-1, %edi
	je	L2297
L1192:
	movl	%edi, %eax
	movswl	_numwalls, %ecx
	movswl	_nextspritesect(%edi,%edi), %edi
	movl	%eax, -2304(%ebp)
	imull	$44, %eax, %eax
	movl	%eax, %ebx
	addl	_sprite, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	call	_loopinside
	movzwl	_numsectors, %esi
	cmpl	$1, %eax
	jne	L1190
	cmpw	$4096, %si
	ja	L1191
	movl	_sprite, %eax
	addl	%ebx, %eax
	movzwl	24(%eax), %eax
	cmpw	$4096, %ax
	je	L1191
	cmpw	%si, %ax
	je	L1191
	movswl	-2304(%ebp), %eax
	movl	%eax, -2304(%ebp)
	call	_do_deletespritesect
	movl	-2304(%ebp), %eax
	movswl	%si, %edx
	call	_do_insertsprite_at_headofsect
	jmp	L1191
L2584:
	movl	$-1, %ecx
	jmp	L1164
L2588:
	movzwl	-2436(%ebp), %edi
	testw	%di, -2450(%ebp)
	jns	L1203
	cmpb	$0, -2404(%ebp)
	jne	L1201
L1203:
	movl	$LC14, %eax
	jmp	L1200
L1201:
	movswl	_numsectors, %eax
	movl	%eax, %ebx
	subl	$2, %eax
	imull	$40, %eax, %eax
	addl	_sector, %eax
	movswl	(%eax), %edx
	movl	%edx, %eax
	sall	$5, %eax
	addl	_wall, %eax
	movzwl	10(%eax), %esi
	movl	%edx, %eax
	call	_lastwall
	movswl	%ax, %edx
	leal	-2(%ebx), %eax
	cwtl
	call	_setfirstwall
	movswl	%si, %eax
	sall	$5, %eax
	addl	_wall, %eax
	movswl	8(%eax), %edx
	movzwl	_numsectors, %eax
	subl	$1, %eax
	cwtl
	call	_setfirstwall
	jmp	L1203
L1163:
	cmpl	$-1, %esi
	jne	L1167
	jmp	L1160
L2297:
	movzwl	_numsectors, %esi
	jmp	L1189
L2586:
	movl	$-1, %edx
L1169:
	cmpl	%edx, %esi
	jne	L1167
	jmp	L1160
L847:
	movzbl	_editorcolors+12, %eax
	sall	$8, %edi
	orl	%edi, %eax
	call	_fade_editor_screen
	xorl	%edx, %edx
	movl	$LC121, %eax
	call	_ask_if_sure
	movl	%eax, %edx
	jmp	L838
L850:
	movl	$LC122, (%esp)
	call	_message
	jmp	L772
L2564:
	movl	$30257, %edx
	movw	%dx, -2244(%ebp)
	cmpw	$0, __ZL12collnumsects.lto_priv.0
	jle	L821
	xorl	%ebx, %ebx
L822:
	movswl	__ZL12collsectlist.lto_priv.0+0(%ebx,%ebx), %eax
	xorl	%ecx, %ecx
	movl	$159, %edx
	addl	$1, %ebx
	call	_fillsector_maybetrans.isra.0
	movswl	__ZL12collnumsects.lto_priv.0, %eax
	cmpl	%ebx, %eax
	jg	L822
L821:
	xorl	%ebx, %ebx
	cmpw	$0, __ZL12collnumsects.lto_priv.0+2
	jle	L825
L823:
	movswl	__ZL12collsectlist.lto_priv.0+8192(%ebx,%ebx), %eax
	movzbl	_editorcolors+11, %edx
	xorl	%ecx, %ecx
	addl	$1, %ebx
	call	_fillsector_maybetrans.isra.0
	movswl	__ZL12collnumsects.lto_priv.0+2, %eax
	cmpl	%ebx, %eax
	jg	L823
L825:
	movzbl	_editorcolors+11, %eax
	orb	$-97, %ah
	call	_fade_editor_screen
	movl	-2180(%ebp), %eax
	subl	-2176(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-2184(%ebp), %eax
	subl	-2172(%ebp), %eax
	movl	$LC118, 8(%esp)
	movl	%eax, 12(%esp)
	leal	-2072(%ebp), %eax
	movl	$128, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp___snprintf
	leal	-2072(%ebp), %eax
	movl	$0, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$-1, 12(%esp)
	movzbl	_editorcolors+15, %eax
	movl	%eax, 8(%esp)
	movl	_ydim, %eax
	movl	$8, (%esp)
	subl	$38, %eax
	movl	%eax, 4(%esp)
	call	_printext16
	leal	-2244(%ebp), %edx
	movl	$2, %ecx
	movl	$LC119, %eax
	call	_editor_ask_function
	cmpl	$-1, %eax
	je	L772
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	andl	$3, %edx
	movl	%edx, -2364(%ebp)
	jmp	L820
L926:
	movswl	_headsectbunch(%edi,%edi), %ebx
	cmpl	$-1, %ebx
	jne	L933
	jmp	L930
	.p2align 4,,10
	.p2align 3
L931:
	movswl	%si, %ecx
	movswl	%bx, %eax
	xorl	%edx, %edx
	call	_yax_setbunch.part.0
L932:
	movswl	_nextsectbunch(%ebx,%ebx), %ebx
	cmpl	$-1, %ebx
	je	L930
L933:
	cmpw	$0, _editstatus
	jne	L931
	movw	%si, _yax_bunchnum(,%ebx,4)
	jmp	L932
L930:
	xorl	%eax, %eax
	call	_yax_update
	movswl	_joinsector, %eax
	call	_yax_getbunch.constprop.0
	movw	%ax, -2320(%ebp)
	cwtl
	addl	%eax, %eax
	movswl	_headsectbunch(%eax), %edi
	movl	%eax, -2324(%ebp)
	cmpl	$-1, %edi
	je	L1879
	movl	$0, -2296(%ebp)
L938:
	movl	_sector, %edx
	leal	(%edi,%edi,4), %eax
	leal	(%edx,%eax,8), %eax
	movswl	(%eax), %ebx
	movswl	2(%eax), %eax
	addl	%ebx, %eax
	movl	%eax, -2304(%ebp)
	cmpl	%eax, %ebx
	jge	L935
	movl	-2296(%ebp), %eax
	movl	%eax, -2292(%ebp)
L937:
	movl	-2292(%ebp), %edx
	movswl	%bx, %eax
	call	_yax_getnextwall
	movl	%eax, %ecx
	testw	%ax, %ax
	js	L936
	movl	%ebx, %eax
	sall	$5, %eax
	addl	_wall, %eax
	movswl	12(%eax), %eax
	testw	%ax, %ax
	js	L936
	movl	-2292(%ebp), %edx
	movl	%ecx, -2312(%ebp)
	call	_yax_getbunch
	cmpw	%ax, -2320(%ebp)
	je	L2589
L936:
	addl	$1, %ebx
	cmpl	%ebx, -2304(%ebp)
	jne	L937
L935:
	movl	-2296(%ebp), %eax
	sall	$12, %eax
	addl	%edi, %eax
	movswl	_nextsectbunch(%eax,%eax), %edi
	cmpl	$-1, %edi
	jne	L938
	cmpl	$1, -2296(%ebp)
	je	L939
L1879:
	movl	$1, -2296(%ebp)
	movl	-2324(%ebp), %eax
	movswl	_headsectbunch+512(%eax), %edi
	cmpl	$-1, %edi
	jne	L938
L939:
	xorl	%eax, %eax
	call	_yax_update
	movl	_pos+8, %eax
	call	_yax_updategrays
	call	_calc_sector_reachability
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movswl	_joinsector+2, %eax
	movl	%eax, 8(%esp)
	movswl	_joinsector, %eax
	movl	$LC137, (%esp)
	movl	%eax, 4(%esp)
	call	__printmessage16
	movl	$1, %ecx
	movw	%cx, _asksave
	jmp	L908
	.p2align 4,,10
	.p2align 3
L2589:
	movl	-2296(%ebp), %edx
	movswl	-2312(%ebp), %eax
	xorl	$1, %edx
	call	_yax_setnextwall.constprop.0
	movl	-2292(%ebp), %edx
	movswl	%bx, %eax
	call	_yax_setnextwall.constprop.0
	jmp	L936
L2467:
	movl	$LC70, (%esp)
	call	_message
	jmp	L371
L2468:
	movl	$LC71, (%esp)
	call	_message
	jmp	L371
L2557:
	movl	-2296(%ebp), %eax
	movl	_wall, %esi
	sall	$5, %eax
	movl	%esi, -2312(%ebp)
	addl	%esi, %eax
	movl	(%eax), %esi
	movl	4(%eax), %eax
	leal	(%edi,%esi), %edx
	movl	%esi, -2404(%ebp)
	movl	-2304(%ebp), %esi
	movl	%eax, -2392(%ebp)
	sarl	%edx
	addl	%esi, %eax
	movl	%edx, -2328(%ebp)
	sarl	%eax
	movl	%edx, -2264(%ebp)
	movl	%eax, -2332(%ebp)
	movl	%eax, -2268(%ebp)
	movswl	_numsectors, %eax
	testw	%ax, %ax
	jle	L1056
	movl	%eax, -2408(%ebp)
	movl	_sector, %eax
	movl	$0, -2292(%ebp)
	movl	%eax, -2320(%ebp)
	movl	$1, %eax
	jmp	L1063
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1057:
	addl	$1, -2292(%ebp)
	movl	-2292(%ebp), %esi
	cmpl	-2408(%ebp), %esi
	je	L1056
	movl	%esi, %eax
	addl	$40, -2320(%ebp)
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
L1063:
	movl	-2292(%ebp), %esi
	movl	%esi, %ebx
	sarl	$3, %ebx
	movzbl	_graysectbitmap(%ebx), %ecx
	andl	%eax, %ecx
	cmpb	%al, %cl
	je	L1057
	movl	-2332(%ebp), %edx
	movl	-2328(%ebp), %eax
	movswl	%si, %ecx
	movw	%si, -2344(%ebp)
	call	_inside
	cmpl	$1, %eax
	jne	L1057
	movl	-2320(%ebp), %eax
	movswl	(%eax), %edx
	movswl	2(%eax), %eax
	addl	%edx, %eax
	movl	%eax, -2364(%ebp)
	cmpl	%eax, %edx
	jge	L1057
	movl	-2312(%ebp), %esi
	movl	%edx, %eax
	sall	$5, %eax
	addl	%eax, %esi
	jmp	L1060
L1058:
	addl	$1, %edx
	addl	$32, %esi
	cmpl	%edx, -2364(%ebp)
	je	L1057
L1060:
	movl	-2404(%ebp), %eax
	cmpl	(%esi), %eax
	jne	L1058
	movl	-2392(%ebp), %eax
	cmpl	4(%esi), %eax
	jne	L1058
	movl	%edx, %eax
	movl	%edx, %ecx
	andl	$7, %eax
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	movzbl	_graywallbitmap(%ecx), %ebx
	andl	%eax, %ebx
	cmpb	%bl, %al
	je	L1058
	testl	%edx, %edx
	js	L1057
	movl	-2312(%ebp), %esi
	movl	%edx, %eax
	sall	$5, %eax
	movswl	8(%esi,%eax), %eax
	sall	$5, %eax
	addl	%esi, %eax
	cmpl	(%eax), %edi
	jne	L1061
	movl	-2304(%ebp), %esi
	cmpl	4(%eax), %esi
	je	L1057
L1061:
	movswl	%dx, %eax
	movl	%edx, -2364(%ebp)
	call	_lastwall
	movl	-2364(%ebp), %edx
	sall	$5, %eax
	addl	-2312(%ebp), %eax
	cmpl	(%eax), %edi
	jne	L1062
	movl	-2304(%ebp), %esi
	cmpl	4(%eax), %esi
	je	L1057
L1062:
	movl	$1, %eax
	movw	%dx, __ZL3ovh.lto_priv.0+10
	movw	%ax, __ZL3ovh.lto_priv.0+6
	movzwl	-2344(%ebp), %eax
	movw	%ax, __ZL3ovh.lto_priv.0+8
	jmp	L1056
L2563:
	movl	$LC72, (%esp)
	call	_message
	jmp	L371
L2570:
	movswl	_highlightsector(%ebx,%ebx), %ecx
	movl	_sector, %edi
	movl	$-858993459, %esi
	leal	(%ecx,%ecx,4), %eax
	movl	%edi, -2304(%ebp)
	leal	(%edi,%eax,8), %edi
	leal	8(,%eax,8), %eax
	mull	%esi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	-2312(%ebp), %eax
	cmpl	8(%edi), %eax
	jne	L269
	movzwl	_highlightsectorcnt, %esi
	cmpw	$1, %si
	jle	L279
	leal	14(%edi), %eax
	movl	$-858993459, %ecx
	subl	-2304(%ebp), %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	testb	$2, 14(%edi)
	jne	L272
	addl	$1, %ebx
	movswl	%si, %eax
	cmpl	%ebx, %eax
	jg	L280
L279:
	movw	$-1, -2296(%ebp)
	xorl	%eax, %eax
	movl	%eax, -2332(%ebp)
	movl	%eax, -2328(%ebp)
	jmp	L271
L272:
	movl	$LC4, %eax
	jmp	L277
	.p2align 4,,10
	.p2align 3
L387:
	movl	$LC79, (%esp)
	call	_message
	jmp	L371
L388:
	movl	$LC80, (%esp)
	call	_message
	jmp	L371
L1525:
	movl	%edi, %eax
	jmp	L962
L2505:
	movl	%eax, -2252(%ebp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC65, (%esp)
L2287:
	call	_message
L2286:
	movzwl	-2344(%ebp), %eax
	movzwl	_highlightsectorcnt, %ecx
	movw	%ax, _numwalls
	movzwl	_highlightcnt, %eax
	movl	%eax, %edx
	jmp	L252
L2506:
	movswl	-2364(%ebp), %eax
	movl	%eax, -2324(%ebp)
	addl	%eax, %eax
	movl	%eax, -2364(%ebp)
	movswl	-2392(%ebp), %eax
	movl	%eax, -2320(%ebp)
	jmp	L329
L323:
	movl	-2324(%ebp), %edx
	movswl	%si, %ecx
	movl	%ecx, %ebx
	call	_yax_setnextwall.part.0
	cmpw	$0, _editstatus
	je	L2590
	movl	-2324(%ebp), %edx
	movl	%edi, %ecx
	movl	%ebx, %eax
	call	_yax_setnextwall.part.0
	cmpw	$0, _editstatus
	je	L2591
	movl	-2320(%ebp), %edx
	movl	%edi, %eax
	movl	%ebx, %ecx
	call	_yax_setnextwall.part.0
	movswl	_numwalls, %eax
	movl	%eax, -2304(%ebp)
L328:
	addl	$1, %esi
	cmpl	%esi, -2304(%ebp)
	jle	L306
	movl	_wall, %edx
L329:
	movl	%esi, %eax
	movl	-2292(%ebp), %edi
	movw	%si, -2392(%ebp)
	sall	$5, %eax
	leal	(%edx,%eax), %ecx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	-2404(%ebp), %eax
	movswl	26(%eax,%ecx), %eax
	movl	%eax, %ecx
	movl	%eax, -2252(%ebp)
	sall	$5, %ecx
	addl	%ecx, %edx
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	movswl	26(%edx,%edi,4), %edi
	cmpw	$0, _editstatus
	jne	L323
	addl	%eax, %eax
	addl	-2324(%ebp), %eax
	movw	%si, _yax_nextwall(%eax,%eax)
	jmp	L324
L2591:
	movswl	_numwalls, %eax
	movl	%eax, -2304(%ebp)
L326:
	movl	-2312(%ebp), %eax
	addl	%edi, %edi
	addl	%edi, %eax
	movw	%si, _yax_nextwall(%eax,%eax)
	jmp	L328
L2590:
	movswl	_numwalls, %eax
	movl	%eax, -2304(%ebp)
L324:
	movl	-2364(%ebp), %eax
	movw	%di, _yax_nextwall(%eax,%esi,4)
	jmp	L326
L2504:
	leal	26(%edx,%eax), %ecx
	movl	%esi, %edi
	jmp	L315
L2593:
	addl	$1, %edi
	addl	$32, %ecx
	cmpl	%edi, -2304(%ebp)
	je	L2592
L315:
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	-2404(%ebp), %eax
	movswl	(%ecx,%eax), %eax
	testl	%eax, %eax
	jns	L2593
	jmp	L314
L2503:
	movswl	-2392(%ebp), %eax
L2284:
	movl	%eax, -2320(%ebp)
	movzbl	-2312(%ebp), %eax
	movl	%eax, -2312(%ebp)
L306:
	movswl	_highlightsector, %eax
	movl	_sector, %edx
	movl	$9, %ecx
	imull	$40, %eax, %edi
	movswl	_numsectors, %eax
	imull	$40, %eax, %eax
	leal	(%edx,%edi), %esi
	movl	%edi, -2324(%ebp)
	addl	%edx, %eax
	movl	36(%esi), %edx
	movl	%eax, %edi
	movl	%edx, 36(%eax)
	xorl	%edx, %edx
	rep movsl
	movl	$40, %ecx
	movswl	_numsectors, %eax
	movl	_sector, %esi
	movzwl	-2344(%ebp), %ebx
	imull	$40, %eax, %eax
	addl	%eax, %esi
	divl	%ecx
	xorl	%edx, %edx
	addl	$1, _sectorchanged(,%eax,4)
	movw	%bx, (%esi)
	movswl	_numsectors, %esi
	movzwl	_numwalls, %eax
	imull	$40, %esi, %edi
	movl	%esi, -2392(%ebp)
	movl	_sector, %esi
	movw	%ax, -2364(%ebp)
	leal	2(%edi), %eax
	addl	%edi, %esi
	divl	%ecx
	addl	$1, _sectorchanged(,%eax,4)
	movzwl	-2364(%ebp), %eax
	subl	%ebx, %eax
	movw	%ax, 2(%esi)
	movl	_sector, %edx
	movl	%edx, -2304(%ebp)
	cmpw	$-1, -2296(%ebp)
	jne	L330
	movl	-2324(%ebp), %edi
	leal	(%edx,%edi), %esi
	cmpl	$0, -2292(%ebp)
	je	L331
	leal	14(%esi), %eax
	subl	%edx, %eax
	xorl	%edx, %edx
	divl	%ecx
	addl	$1, _sectorchanged(,%eax,4)
	testb	$2, 14(%esi)
	je	L333
	leal	26(%esi), %eax
	xorl	%edx, %edx
	subl	-2304(%ebp), %eax
	divl	%ecx
	addl	$1, _sectorchanged(,%eax,4)
	movzwl	26(%esi), %eax
L335:
	movswl	%ax, %ecx
	movl	-2312(%ebp), %edx
	movl	-2392(%ebp), %eax
	call	_setslope
L336:
	movl	-2292(%ebp), %ebx
	movswl	_numsectors, %eax
	xorl	%ecx, %ecx
	movl	%ebx, %edx
	call	_setslope
	movswl	_numsectors, %eax
	leal	(%ebx,%ebx), %edx
	movl	_sector, %esi
	movl	%ebx, -2292(%ebp)
	movl	-2324(%ebp), %ecx
	imull	$40, %eax, %edi
	addl	%esi, %ecx
	leal	(%esi,%edi), %eax
	movl	%eax, -2304(%ebp)
	movl	$1, %eax
	subl	%edx, %eax
	movl	%eax, %ebx
	movl	-2304(%ebp), %eax
	sall	$15, %ebx
	leal	8(%eax), %edx
	movl	%ebx, -2364(%ebp)
	movl	$40, %ebx
	movl	%edx, -2324(%ebp)
	subl	%esi, %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	%ebx
	xorl	%edx, %edx
	movl	%eax, -2328(%ebp)
	movl	-2304(%ebp), %eax
	leal	4(%eax), %ebx
	movl	%ebx, -2392(%ebp)
	subl	%esi, %ebx
	movl	%ebx, %eax
	movl	$40, %ebx
	divl	%ebx
	movl	%eax, -2332(%ebp)
	cmpl	$0, -2292(%ebp)
	je	L337
	leal	8(%ecx), %eax
	xorl	%edx, %edx
	subl	%esi, %eax
	movl	-2304(%ebp), %esi
	divl	%ebx
	movl	-2332(%ebp), %ebx
	addl	$1, _sectorchanged(,%eax,4)
	addl	$1, _sectorchanged(,%ebx,4)
	movl	8(%ecx), %edx
	movl	%edx, 4(%esi)
	movl	-2328(%ebp), %esi
	addl	$1, _sectorchanged(,%eax,4)
	movl	8(%ecx), %eax
	addl	$1, _sectorchanged(,%esi,4)
L338:
	movl	-2324(%ebp), %esi
	subl	-2364(%ebp), %eax
	movl	%eax, (%esi)
	movzwl	_numwalls, %eax
	movw	%ax, -2364(%ebp)
	movl	_sector, %eax
	movl	%eax, -2304(%ebp)
L339:
	movzwl	-2364(%ebp), %eax
	movl	-2304(%ebp), %ebx
	movw	%ax, _newnumwalls
	movzwl	-2344(%ebp), %eax
	leal	(%ebx,%edi), %esi
	movw	%ax, _numwalls
	cmpl	$0, -2292(%ebp)
	jne	L344
	leal	14(%esi), %ecx
	movl	$40, %edi
	xorl	%edx, %edx
	movl	%ecx, %eax
	subl	%ebx, %eax
	divl	%edi
	addl	$1, _sectorchanged(,%eax,4)
	movzwl	14(%esi), %eax
L345:
	andl	$-2, %eax
	movw	%ax, (%ecx)
	cmpw	$0, _highlightsectorcnt
	jle	L346
	xorl	%esi, %esi
L352:
	movswl	_highlightsector(%esi,%esi), %eax
	movl	_sector, %edx
	movl	-2292(%ebp), %edi
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %ecx
	testl	%edi, %edi
	je	L347
	leal	14(%ecx), %edi
	movl	%edi, %eax
	subl	%edx, %eax
	movl	$-858993459, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movzwl	14(%ecx), %eax
L348:
	andl	$-2, %eax
	movw	%ax, (%edi)
	movswl	_highlightsector(%esi,%esi), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %edi
	movswl	2(%eax), %ecx
	addl	%edi, %ecx
	movl	%edi, -2252(%ebp)
	cmpl	%ecx, %edi
	jl	L351
	jmp	L349
	.p2align 5
	.p2align 4,,10
	.p2align 3
L350:
	addl	$1, %edi
	movl	%edi, -2252(%ebp)
	cmpl	%ecx, %edi
	je	L349
L351:
	movl	%edi, %eax
	sall	$5, %eax
	addl	_wall, %eax
	cmpw	$0, 10(%eax)
	jns	L350
	movswl	_highlightsector(%esi,%esi), %edx
	movswl	%di, %eax
	movl	%ecx, -2304(%ebp)
	call	_checksectorpointer
	movl	-2304(%ebp), %ecx
	jmp	L350
L2552:
	movl	4(%ebx), %eax
	xorl	%ebx, %ebx
	movl	%eax, -2304(%ebp)
	jmp	L273
L270:
	leal	12(%edi), %eax
	movl	$-858993459, %ecx
	subl	-2296(%ebp), %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	testb	$2, 12(%edi)
	jne	L272
	addl	$1, %ebx
	movswl	%si, %eax
	cmpl	%ebx, %eax
	jle	L274
L273:
	movswl	_highlightsector(%ebx,%ebx), %eax
	xorl	%edx, %edx
	call	_yax_getbunch
	testw	%ax, %ax
	jns	L268
	movswl	_highlightsector(%ebx,%ebx), %ecx
	movl	_sector, %edi
	movl	$-858993459, %esi
	leal	(%ecx,%ecx,4), %eax
	movl	%edi, -2296(%ebp)
	leal	(%edi,%eax,8), %edi
	leal	4(,%eax,8), %eax
	mull	%esi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	-2304(%ebp), %eax
	cmpl	4(%edi), %eax
	jne	L269
	movzwl	_highlightsectorcnt, %esi
	cmpw	$1, %si
	jg	L270
L274:
	xorl	%ebx, %ebx
	movl	$-1, %edi
	movl	$0, -2332(%ebp)
	movl	$0, -2328(%ebp)
	movw	%bx, -2364(%ebp)
	movw	%di, -2296(%ebp)
	jmp	L271
L349:
	movswl	_highlightsectorcnt, %eax
	addl	$1, %esi
	cmpl	%esi, %eax
	jg	L352
L346:
	movswl	_numsectors, %eax
	cmpw	$-1, -2296(%ebp)
	je	L2594
	movswl	-2296(%ebp), %esi
	movl	-2320(%ebp), %edx
	movl	%esi, %ecx
	call	_yax_setbunch
	movswl	_numsectors, %eax
	movswl	_numyaxbunches, %ecx
	movswl	-2292(%ebp), %edx
	call	_yax_setbunch
	movl	-2312(%ebp), %eax
	sall	$8, %eax
	addl	%esi, %eax
	movswl	_headsectbunch(%eax,%eax), %edi
	cmpl	$-1, %edi
	jne	L362
	jmp	L2225
	.p2align 4,,10
	.p2align 3
L360:
	movl	-2320(%ebp), %edx
	movswl	%ax, %ecx
	movswl	%di, %eax
	call	_yax_setbunch.part.0
L361:
	movl	-2312(%ebp), %eax
	sall	$12, %eax
	addl	%edi, %eax
	movswl	_nextsectbunch(%eax,%eax), %edi
	cmpl	$-1, %edi
	je	L2225
L362:
	movl	_numyaxbunches, %eax
	cmpw	$0, _editstatus
	jne	L360
	leal	(%edi,%edi), %edx
	addl	-2312(%ebp), %edx
	movw	%ax, _yax_bunchnum(%edx,%edx)
	jmp	L361
L347:
	leal	12(%ecx), %edi
	movl	%edi, %eax
	subl	%edx, %eax
	movl	$-858993459, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movzwl	12(%ecx), %eax
	jmp	L348
L344:
	leal	12(%esi), %ecx
	movl	$40, %edi
	xorl	%edx, %edx
	movl	%ecx, %eax
	subl	-2304(%ebp), %eax
	divl	%edi
	addl	$1, _sectorchanged(,%eax,4)
	movzwl	12(%esi), %eax
	jmp	L345
L2225:
	movzwl	_newnumwalls, %eax
	addw	$1, _numsectors
	movw	$-1, _newnumwalls
	movw	%ax, _numwalls
	xorl	%eax, %eax
	call	_yax_update
	movl	_pos+8, %eax
	call	_yax_updategrays
	call	_calc_sector_reachability
	call	_reset_highlightsector
	movl	_numyaxbunches, %eax
	movl	%esi, 4(%esp)
	movl	$LC67, (%esp)
	subl	$1, %eax
	movl	%eax, 8(%esp)
	call	_message
L364:
	movzwl	_highlightcnt, %eax
	movzwl	_highlightsectorcnt, %ecx
	movw	$1, _asksave
	movl	%eax, %edx
	jmp	L252
L2594:
	movswl	_numyaxbunches, %ecx
	movl	-2320(%ebp), %edx
	call	_yax_setbunch
	cmpw	$0, _highlightsectorcnt
	jle	L2224
	movswl	-2292(%ebp), %esi
	xorl	%ebx, %ebx
	jmp	L357
L355:
	movswl	%dx, %ecx
	movl	%esi, %edx
	call	_yax_setbunch.part.0
L356:
	movswl	_highlightsectorcnt, %eax
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jle	L2224
L357:
	movl	_numyaxbunches, %edx
	movswl	_highlightsector(%ebx,%ebx), %eax
	cmpw	$0, _editstatus
	jne	L355
	addl	%eax, %eax
	addl	%esi, %eax
	movw	%dx, _yax_bunchnum(%eax,%eax)
	jmp	L356
L337:
	leal	4(%ecx), %eax
	xorl	%edx, %edx
	subl	%esi, %eax
	movl	$40, %esi
	divl	%esi
	movl	-2328(%ebp), %esi
	addl	$1, _sectorchanged(,%eax,4)
	addl	$1, _sectorchanged(,%esi,4)
	movl	-2304(%ebp), %esi
	movl	4(%ecx), %edx
	movl	%edx, 8(%esi)
	movl	-2332(%ebp), %esi
	addl	$1, _sectorchanged(,%eax,4)
	movl	4(%ecx), %eax
	addl	$1, _sectorchanged(,%esi,4)
	movl	-2392(%ebp), %esi
	movl	%esi, -2324(%ebp)
	jmp	L338
L333:
	movl	-2312(%ebp), %edx
	movl	-2392(%ebp), %eax
	xorl	%ecx, %ecx
	call	_setslope
	jmp	L336
	.p2align 4,,10
	.p2align 3
L384:
	movswl	_numwalls, %eax
	leal	(%eax,%edi,2), %eax
	cmpl	$16384, %eax
	jg	L391
	cmpw	$4095, _numsectors
	jg	L391
	movl	-2252(%ebp), %eax
	movl	-2304(%ebp), %esi
	movl	%eax, -2292(%ebp)
	sall	$5, %eax
	movl	%eax, -2364(%ebp)
	addl	%edx, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%esi, (%esp)
	movl	-2332(%ebp), %ecx
	call	_yax_getneighborsect
	movl	%eax, -2320(%ebp)
	testl	%eax, %eax
	js	L2595
	movl	-2320(%ebp), %eax
	movl	_wall, %edx
	leal	(%eax,%eax,4), %eax
	sall	$3, %eax
	movl	%eax, -2344(%ebp)
	movl	-2292(%ebp), %eax
	movl	%eax, -2328(%ebp)
L397:
	movl	-2328(%ebp), %eax
	sall	$5, %eax
	movswl	8(%edx,%eax), %ecx
	movl	%eax, -2392(%ebp)
	movl	-2344(%ebp), %eax
	addl	_sector, %eax
	movswl	(%eax), %ebx
	movswl	2(%eax), %eax
	movl	%ecx, -2328(%ebp)
	movl	%ecx, -2252(%ebp)
	addl	%ebx, %eax
	movl	%ebx, -2312(%ebp)
	movl	%eax, -2432(%ebp)
	cmpl	%eax, %ebx
	jge	L394
	sall	$5, %ecx
	leal	-2184(%ebp), %ebx
	movl	%ecx, -2404(%ebp)
	jmp	L396
L395:
	addl	$1, -2312(%ebp)
	movl	_wall, %edx
	movl	-2312(%ebp), %eax
	cmpl	%eax, -2432(%ebp)
	je	L394
L396:
	movl	-2312(%ebp), %ecx
	movl	-2404(%ebp), %esi
	sall	$5, %ecx
	addl	%edx, %esi
	addl	%edx, %ecx
	movl	%esi, -2408(%ebp)
	movswl	8(%ecx), %eax
	sall	$5, %eax
	addl	%edx, %eax
	addl	-2392(%ebp), %edx
	movl	4(%edx), %esi
	movl	(%edx), %edx
	movl	%edx, -2436(%ebp)
	leal	-2068(%ebp), %edx
	movl	%edx, 32(%esp)
	leal	-2072(%ebp), %edx
	movl	%ebx, 36(%esp)
	movl	%edx, 28(%esp)
	movl	4(%eax), %edx
	movl	%edx, 24(%esp)
	movl	(%eax), %eax
	movl	%esi, %edx
	movl	%eax, 20(%esp)
	movl	4(%ecx), %eax
	movl	%eax, 16(%esp)
	movl	(%ecx), %eax
	movl	$0, 8(%esp)
	movl	%eax, 12(%esp)
	movl	-2408(%ebp), %ecx
	movl	4(%ecx), %eax
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	xorl	%ecx, %ecx
	movl	%eax, (%esp)
	movl	-2436(%ebp), %eax
	call	_lintersect
	testl	%eax, %eax
	je	L395
	movl	$LC83, (%esp)
	call	_message
	jmp	L371
L2592:
	movswl	-2364(%ebp), %eax
	movl	%eax, -2324(%ebp)
	jmp	L316
L2597:
	movl	-2324(%ebp), %edx
	movswl	%si, %ecx
	call	_yax_setnextwall.part.0
	movswl	_numwalls, %eax
	movl	%eax, -2304(%ebp)
L322:
	addl	$1, %esi
	cmpl	%esi, -2304(%ebp)
	jle	L2596
	movl	_wall, %edx
L316:
	movl	%esi, %eax
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	-2404(%ebp), %eax
	movswl	26(%eax,%edx), %eax
	movl	%eax, -2252(%ebp)
	cmpw	$0, _editstatus
	jne	L2597
	addl	%eax, %eax
	addl	-2324(%ebp), %eax
	movw	%si, _yax_nextwall(%eax,%eax)
	jmp	L322
	.p2align 4,,10
	.p2align 3
L394:
	movl	-2292(%ebp), %esi
	cmpl	%esi, -2328(%ebp)
	jne	L397
	movswl	_numwalls, %eax
	movl	%edi, %ecx
	sall	$5, %ecx
	sall	$5, %eax
	addl	%edx, %eax
	addl	-2364(%ebp), %edx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movzwl	_numwalls, %ebx
	leal	(%ebx,%edi), %eax
	movw	%ax, _newnumwalls
	cmpw	%ax, %bx
	jge	L398
	cwtl
	movswl	%bx, %edx
	movl	_wall, %ecx
	movl	%eax, -2328(%ebp)
	movl	%ebx, %eax
	subl	-2292(%ebp), %eax
	movw	%ax, -2364(%ebp)
	movl	%edx, %eax
	movl	%edx, -2312(%ebp)
	sall	$5, %eax
	leal	8(%ecx,%eax), %eax
L399:
	movl	%eax, %edx
	movzwl	-2364(%ebp), %esi
	addl	$1, -2312(%ebp)
	subl	%ecx, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	leal	2(%eax), %edx
	subl	%ecx, %edx
	addw	%si, (%eax)
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	leal	4(%eax), %edx
	addl	$32, %eax
	subl	%ecx, %edx
	movw	$-1, -30(%eax)
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movl	-2312(%ebp), %edx
	movw	$-1, -28(%eax)
	cmpl	%edx, -2328(%ebp)
	jg	L399
L398:
	movswl	_numsectors, %eax
	movl	_sector, %ecx
	movl	$40, %esi
	xorl	%edx, %edx
	imull	$40, %eax, %eax
	addl	%eax, %ecx
	divl	%esi
	xorl	%edx, %edx
	addl	$1, _sectorchanged(,%eax,4)
	movw	%bx, (%ecx)
	movswl	_numsectors, %eax
	movl	_sector, %ecx
	movl	%eax, %ebx
	movw	%ax, -2328(%ebp)
	movl	%eax, -2436(%ebp)
	imull	$40, %eax, %eax
	addl	%eax, %ecx
	addl	$2, %eax
	divl	%esi
	movswl	-2296(%ebp), %esi
	movl	%esi, -2404(%ebp)
	addl	$1, _sectorchanged(,%eax,4)
	cmpl	$0, -2304(%ebp)
	leal	1(%ebx), %eax
	movw	%ax, _numsectors
	sete	%al
	movzbl	%al, %eax
	sete	-2364(%ebp)
	movl	%eax, -2392(%ebp)
	sall	$8, %eax
	addl	%esi, %eax
	movw	%di, 2(%ecx)
	movswl	_headsectbunch(%eax,%eax), %eax
	movl	%eax, -2296(%ebp)
	movl	_sector, %eax
	movl	%eax, -2408(%ebp)
	movl	_wall, %eax
	movl	%eax, -2432(%ebp)
L400:
	cmpl	$-1, -2296(%ebp)
	je	L2598
	imull	$40, -2296(%ebp), %eax
	addl	-2408(%ebp), %eax
	movswl	(%eax), %ecx
	movswl	2(%eax), %eax
	addl	%ecx, %eax
	movl	%ecx, -2312(%ebp)
	movl	%ecx, -2252(%ebp)
	movl	%eax, %esi
	cmpl	%eax, %ecx
	jge	L401
	movl	-2432(%ebp), %eax
	sall	$5, %ecx
	leal	(%eax,%ecx), %ebx
	jmp	L403
L402:
	addl	$1, -2312(%ebp)
	movl	-2312(%ebp), %eax
	addl	$32, %ebx
	movl	%eax, -2252(%ebp)
	cmpl	%esi, %eax
	je	L401
L403:
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	movl	-2436(%ebp), %ecx
	call	_inside
	cmpl	$1, %eax
	jne	L402
	movzwl	-2328(%ebp), %eax
	movw	$-1, _newnumwalls
	movw	%ax, _numsectors
	movl	-2404(%ebp), %eax
	movl	$LC84, (%esp)
	movl	%eax, 4(%esp)
	call	_message
	jmp	L371
L2596:
	movswl	-2392(%ebp), %eax
	movl	%eax, -2320(%ebp)
	jmp	L306
L2595:
	movl	$LC82, (%esp)
	call	_message
	jmp	L371
L1516:
	movl	$-1, -2292(%ebp)
	jmp	L902
	.p2align 4,,10
	.p2align 3
L1079:
	movl	-2296(%ebp), %eax
	call	_clockdir
	cmpl	$1, %eax
	je	L2599
L1084:
	movswl	_numsectors, %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	xorl	%edx, %edx
	movl	$0, 24(%eax)
	movl	$0, 28(%eax)
	movl	$0, 32(%eax)
	movl	$0, 36(%eax)
L1085:
	movl	$0, (%eax,%edx)
	movl	$0, 4(%eax,%edx)
	movl	$0, 8(%eax,%edx)
	movl	$0, 12(%eax,%edx)
	addl	$16, %edx
	cmpl	$32, %edx
	jb	L1085
	movswl	_numsectors, %eax
	movl	_sector, %ebx
	movl	$-858993459, %esi
	leal	(%eax,%eax,4), %eax
	leal	(%ebx,%eax,8), %ecx
	leal	38(%ecx), %eax
	subl	%ebx, %eax
	mull	%esi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	%ecx, %eax
	subl	%ebx, %eax
	movw	$-1, 38(%ecx)
	mull	%esi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movzwl	_numwalls, %eax
	movw	%ax, (%ecx)
	movswl	_numsectors, %eax
	movl	_sector, %edi
	movzwl	_numwalls, %ecx
	leal	(%eax,%eax,4), %ebx
	sall	$3, %ebx
	leal	2(%ebx), %eax
	addl	%ebx, %edi
	mull	%esi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movzwl	_newnumwalls, %eax
	subl	%ecx, %eax
	movw	%ax, 2(%edi)
	movl	_sector, %eax
	leal	(%eax,%ebx), %edi
	leal	4(%ebx), %eax
	mull	%esi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	leal	8(%edi), %eax
	subl	_sector, %eax
	mull	%esi
	movl	$-8192, 4(%edi)
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	$8192, 8(%edi)
	cmpw	%cx, _newnumwalls
	jle	L1087
	movswl	%cx, %ebx
L1088:
	movswl	%bx, %eax
	movl	$1, %ecx
	movl	$-1, %edx
	addl	$1, %ebx
	call	__ZL22copy_some_wall_membersssi.lto_priv.0
	movswl	_newnumwalls, %eax
	cmpl	%ebx, %eax
	jg	L1088
L1087:
	movzwl	_numsectors, %esi
	movswl	%si, %ebx
	cmpw	$0, _editstatus
	je	L2600
	xorl	%edx, %edx
	movl	$-1, %ecx
	movl	%ebx, %eax
	call	_yax_setbunch.part.0
	cmpw	$0, _editstatus
	je	L2601
	movl	$-1, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	_yax_setbunch.part.0
	movzwl	_numsectors, %esi
L1092:
	movswl	%si, %eax
	movl	$-1, %edx
	addl	$1, %esi
	movl	$-1, %ecx
	movw	%dx, _headspritesect(%eax,%eax)
	movzwl	_newnumwalls, %eax
	movw	%si, _numsectors
	movswl	%si, %esi
	movw	%ax, _numwalls
	movl	_totalclock, %eax
	movw	%cx, _newnumwalls
	movl	%eax, _lastpm16time
	leal	-1(%esi), %eax
	movl	%eax, 4(%esp)
	movl	$LC156, (%esp)
	call	__printmessage16
	jmp	L1093
L1078:
	movl	%ecx, %eax
	call	_clockdir
	cmpl	$1, %eax
	je	L2602
L1096:
	cmpl	%esi, %ebx
	jl	L1100
	jmp	L1097
	.p2align 4,,10
	.p2align 3
L1098:
	movl	_wall, %eax
	movzwl	10(%eax,%edi), %edi
	movw	%di, __ZL3ovh.lto_priv.0+4
L1099:
	movswl	_newnumwalls, %eax
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jle	L1097
L1100:
	movswl	%di, %edx
	movswl	%bx, %eax
	movl	$1, %ecx
	movl	%ebx, %edi
	call	__ZL22copy_some_wall_membersssi.lto_priv.0
	sall	$5, %edi
	movl	_wall, %eax
	movl	%edi, %edx
	addl	%edi, %eax
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movswl	_numsectors, %edx
	andw	$-114, 14(%eax)
	movswl	%bx, %eax
	call	_checksectorpointer
	testl	%eax, %eax
	jne	L1098
	movzwl	__ZL3ovh.lto_priv.0+4, %edi
	jmp	L1099
L1097:
	movswl	%di, %eax
	call	_sectorofwall
	movl	%eax, %ecx
	movswl	_numsectors, %eax
	cmpw	%cx, %ax
	je	L1529
	movl	_sector, %ebx
	movswl	%cx, %edi
	movswl	%ax, %edx
	leal	(%edi,%edi,4), %ecx
	leal	(%edx,%edx,4), %edx
	movl	%edi, -2292(%ebp)
	leal	(%ebx,%ecx,8), %ecx
	leal	(%ebx,%edx,8), %edx
	movl	(%ecx), %ebx
	movl	%ebx, (%edx)
	movl	4(%ecx), %ebx
	movl	%ebx, 4(%edx)
	movl	8(%ecx), %ebx
	movl	%ebx, 8(%edx)
	movl	12(%ecx), %ebx
	movl	%ebx, 12(%edx)
	movl	16(%ecx), %ebx
	movl	%ebx, 16(%edx)
	movl	20(%ecx), %ebx
	movl	%ebx, 20(%edx)
	movl	24(%ecx), %ebx
	movl	%ebx, 24(%edx)
	movl	28(%ecx), %ebx
	movl	%ebx, 28(%edx)
	movl	32(%ecx), %ebx
	movl	%ebx, 32(%edx)
	movl	36(%ecx), %ecx
	movl	%ecx, 36(%edx)
L1101:
	leal	(%eax,%eax,4), %ecx
	movl	$-858993459, %esi
	leal	0(,%ecx,8), %eax
	mull	%esi
	movl	%edx, %eax
	movzwl	_numwalls, %edx
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	_sector, %eax
	movw	%dx, (%eax,%ecx,8)
	movswl	_numsectors, %edi
	movl	_sector, %ebx
	leal	(%edi,%edi,4), %ecx
	sall	$3, %ecx
	leal	2(%ecx), %eax
	addl	%ecx, %ebx
	mull	%esi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movzwl	_newnumwalls, %eax
	subw	_numwalls, %ax
	movw	%ax, 2(%ebx)
	movl	_sector, %eax
	leal	(%eax,%ecx), %ebx
	leal	38(%ecx), %eax
	xorl	%ecx, %ecx
	mull	%esi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	$-1, %eax
	movw	%ax, 38(%ebx)
	leal	36(%ebx), %eax
	subl	_sector, %eax
	mull	%esi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	xorl	%eax, %eax
	movw	%ax, 36(%ebx)
	leal	34(%ebx), %eax
	subl	_sector, %eax
	mull	%esi
	movl	%edx, %eax
	xorl	%edx, %edx
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	xorl	%eax, %eax
	movw	%ax, 34(%ebx)
	movl	%edi, %eax
	call	_setslope
	movswl	_numsectors, %eax
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	_setslope
	movswl	_numsectors, %ebx
	movl	_sector, %edi
	leal	(%ebx,%ebx,4), %eax
	movl	%ebx, %ecx
	leal	(%edi,%eax,8), %edi
	leal	29(,%eax,8), %eax
	mull	%esi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	leal	21(%edi), %eax
	subl	_sector, %eax
	mull	%esi
	movb	$0, 29(%edi)
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movb	$0, 21(%edi)
	cmpw	$0, _editstatus
	je	L2603
	xorl	%edx, %edx
	movl	$-1, %ecx
	movl	%ebx, %eax
	call	_yax_setbunch.part.0
	cmpw	$0, _editstatus
	je	L2604
	movl	$-1, %ecx
	movl	%ebx, %eax
	movl	$1, %edx
	call	_yax_setbunch.part.0
	movswl	_numsectors, %eax
	movl	%eax, %ecx
L1105:
	movl	$-1, %edi
	addl	$1, %ecx
	movw	%di, _headspritesect(%eax,%eax)
	movzwl	_newnumwalls, %eax
	movw	%cx, _numsectors
	movswl	%cx, %ecx
	movw	%ax, _numwalls
	movl	$-1, %eax
	movw	%ax, _newnumwalls
	movl	-2292(%ebp), %eax
	movl	$LC159, (%esp)
	movl	%eax, 8(%esp)
	leal	-1(%ecx), %eax
	movl	%eax, 4(%esp)
	call	_message
L1093:
	movl	$1, %esi
	movw	%si, _asksave
	jmp	L2298
L2602:
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__ZL9flipwallsss.lto_priv.0
	movswl	_numwalls, %ebx
	movswl	_newnumwalls, %esi
	movzwl	__ZL3ovh.lto_priv.0+4, %edi
	jmp	L1096
L2604:
	movswl	_numsectors, %eax
	movl	%eax, %ecx
L1103:
	movl	$-1, %edx
	movw	%dx, _yax_bunchnum+2(,%ebx,4)
	jmp	L1105
L2603:
	movl	$-1, %esi
	movl	%ebx, %eax
	movw	%si, _yax_bunchnum(,%ebx,4)
	jmp	L1103
L1529:
	movswl	%cx, %edi
	movl	%edi, -2292(%ebp)
	jmp	L1101
L2599:
	movl	-2292(%ebp), %edx
	movl	-2296(%ebp), %eax
	call	__ZL9flipwallsss.lto_priv.0
	jmp	L1084
L2601:
	movzwl	_numsectors, %esi
L1090:
	movw	$-1, _yax_bunchnum+2(,%ebx,4)
	jmp	L1092
L2600:
	movw	$-1, _yax_bunchnum(,%ebx,4)
	jmp	L1090
L331:
	leal	12(%esi), %eax
	xorl	%edx, %edx
	subl	-2304(%ebp), %eax
	divl	%ecx
	addl	$1, _sectorchanged(,%eax,4)
	testb	$2, 12(%esi)
	je	L333
	leal	18(%esi), %eax
	xorl	%edx, %edx
	subl	-2304(%ebp), %eax
	divl	%ecx
	addl	$1, _sectorchanged(,%eax,4)
	movzwl	18(%esi), %eax
	jmp	L335
L330:
	movl	-2292(%ebp), %esi
	movswl	-2296(%ebp), %ecx
	movl	%esi, %eax
	movl	%ecx, -2324(%ebp)
	sall	$8, %eax
	addl	%ecx, %eax
	movswl	_headsectbunch(%eax,%eax), %ecx
	cmpl	$-1, %ecx
	je	L340
	sall	$12, %esi
	movl	%esi, -2392(%ebp)
L341:
	leal	(%ecx,%ecx,4), %esi
	movl	$-858993459, %ebx
	addl	-2392(%ebp), %ecx
	leal	8(,%esi,8), %eax
	mull	%ebx
	movl	-2328(%ebp), %ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	-2304(%ebp), %eax
	movl	%ebx, 8(%eax,%esi,8)
	movswl	_nextsectbunch(%ecx,%ecx), %ecx
	cmpl	$-1, %ecx
	jne	L341
L340:
	movl	$40, %esi
	leal	4(%edi), %eax
	xorl	%edx, %edx
	movl	-2304(%ebp), %ebx
	divl	%esi
	xorl	%edx, %edx
	addl	$1, _sectorchanged(,%eax,4)
	movl	-2328(%ebp), %eax
	movl	%eax, 4(%ebx,%edi)
	leal	8(%edi), %eax
	divl	%esi
	addl	$1, _sectorchanged(,%eax,4)
	movl	-2332(%ebp), %eax
	movl	%eax, 8(%ebx,%edi)
	movl	-2312(%ebp), %ebx
	movl	%ebx, %eax
	sall	$8, %eax
	addl	-2324(%ebp), %eax
	movswl	_headsectbunch(%eax,%eax), %ecx
	cmpl	$-1, %ecx
	je	L339
	sall	$12, %ebx
	movl	%ebx, -2324(%ebp)
L342:
	leal	(%ecx,%ecx,4), %esi
	movl	$-858993459, %ebx
	addl	-2324(%ebp), %ecx
	leal	4(,%esi,8), %eax
	mull	%ebx
	movl	-2332(%ebp), %ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	-2304(%ebp), %eax
	movl	%ebx, 4(%eax,%esi,8)
	movswl	_nextsectbunch(%ecx,%ecx), %ecx
	cmpl	$-1, %ecx
	jne	L342
	jmp	L339
L2224:
	movzwl	_newnumwalls, %eax
	addw	$1, _numsectors
	movw	$-1, _newnumwalls
	movw	%ax, _numwalls
	xorl	%eax, %eax
	call	_yax_update
	movl	_pos+8, %eax
	call	_yax_updategrays
	call	_calc_sector_reachability
	call	_reset_highlightsector
	movl	_numyaxbunches, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	-2292(%ebp), %eax
	movl	$LC66, (%esp)
	movl	__ZZL14overheadeditorvE3cfs(,%eax,4), %eax
	movl	%eax, 4(%esp)
	call	_message
	jmp	L364
	.p2align 4,,10
	.p2align 3
L1553:
	movl	$LC61, (%esp)
	call	_message
	movzwl	_highlightcnt, %eax
	movzwl	_highlightsectorcnt, %ecx
	movl	%eax, %edx
	jmp	L252
L2568:
	movl	$16384, 4(%esp)
	movl	$LC60, (%esp)
	call	_message
	movzwl	_highlightcnt, %eax
	movzwl	_highlightsectorcnt, %ecx
	movl	%eax, %edx
	jmp	L252
L305:
	movl	$LC63, (%esp)
	call	_message
	movzwl	_highlightcnt, %eax
	movzwl	_highlightsectorcnt, %ecx
	movl	%eax, %edx
	jmp	L252
L682:
	movl	-2072(%ebp), %eax
	movl	%eax, (%ecx)
	movl	-2068(%ebp), %eax
	movl	%eax, 4(%ecx)
	movl	-2064(%ebp), %eax
	movl	%eax, 8(%ecx)
	jmp	L676
L391:
	movl	$LC81, (%esp)
	call	_message
	jmp	L371
L401:
	movl	-2392(%ebp), %eax
	sall	$12, %eax
	addl	-2296(%ebp), %eax
	movswl	_nextsectbunch(%eax,%eax), %eax
	movl	%eax, -2296(%ebp)
	jmp	L400
L2598:
	movzwl	-2328(%ebp), %eax
	movw	%ax, _numsectors
	call	_reset_highlight
	movl	-2320(%ebp), %eax
	leal	-2072(%ebp), %edx
	call	__ZL15AddLoopToSectoriPi.lto_priv.0
	subl	$1, %eax
	je	L405
	movl	$LC85, (%esp)
	call	_message
L406:
	movw	$1, _asksave
	xorl	%eax, %eax
	movl	%eax, _chsecptr_onextwall
	xorl	%eax, %eax
	call	_yax_update
	movl	_pos+8, %eax
	call	_yax_updategrays
	call	_calc_sector_reachability
	movzwl	_highlightcnt, %eax
	movl	%eax, %edx
	cmpw	$0, _highlightsectorcnt
	jns	L366
	jmp	L415
	.p2align 4,,10
	.p2align 3
L1394:
	movl	_map_revision, %eax
	movl	$LC198, (%esp)
	subl	$1, %eax
	movl	%eax, 4(%esp)
	call	__printmessage16
	jmp	L1362
L1392:
	movl	_map_revision, %eax
	movl	$LC195, (%esp)
	movl	%eax, 4(%esp)
	call	__printmessage16
	jmp	L1362
L2547:
	movl	$-1, -2292(%ebp)
	jmp	L1111
L405:
	movzwl	_numsectors, %eax
	movl	-2320(%ebp), %esi
	movl	_wall, %ebx
	movw	%ax, -2312(%ebp)
	xorl	%eax, %eax
	cmpl	%esi, -2332(%ebp)
	cmovg	%edi, %eax
	addl	%eax, -2292(%ebp)
	movl	-2292(%ebp), %ecx
	leal	(%ecx,%edi), %eax
	movl	%eax, -2296(%ebp)
L408:
	movl	%ecx, %edx
	addl	$1, %ecx
	sall	$5, %edx
	movswl	10(%ebx,%edx), %eax
	movl	%eax, %esi
	andl	$134217727, %eax
	sall	$5, %esi
	addl	$1, _wallchanged(,%eax,4)
	movw	$-1, 12(%ebx,%esi)
	movswl	10(%ebx,%edx), %eax
	movl	%eax, %edx
	andl	$134217727, %eax
	sall	$5, %edx
	addl	$1, _wallchanged(,%eax,4)
	movw	$-1, 10(%ebx,%edx)
	cmpl	%ecx, -2296(%ebp)
	jg	L408
	movl	-2292(%ebp), %eax
	xorl	%edx, %edx
	movl	$__ZL12collnumsects.lto_priv.0, %ecx
	leal	-1(%eax,%edi), %eax
	sall	$5, %eax
	movswl	12(%ebx,%eax), %eax
	movw	%ax, -2392(%ebp)
	movl	%edx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$__ZL14collsectbitmap.lto_priv.0, %edx
	movl	%eax, (%esp)
	movl	$__ZL12collsectlist.lto_priv.0, %eax
	call	__ZL16collect_sectors1PsPhS_sii.lto_priv.0
	movswl	-2304(%ebp), %ebx
	jmp	L409
L410:
	movl	-2324(%ebp), %edi
	movl	%ebx, %edx
	movswl	__ZL12collsectlist.lto_priv.0(%edi,%edi), %eax
	addl	$1, %edi
	call	_yax_setbunch
	movl	%edi, -2324(%ebp)
L409:
	movzwl	_numyaxbunches, %eax
	movswl	__ZL12collnumsects.lto_priv.0, %edx
	movswl	%ax, %ecx
	cmpl	-2324(%ebp), %edx
	jg	L410
	movzwl	-2312(%ebp), %eax
	movl	-2364(%ebp), %edx
	subl	$1, %eax
	andl	$1, %edx
	cwtl
	movl	%edx, -2324(%ebp)
	call	_yax_setbunch
	movswl	-2304(%ebp), %eax
	movl	-2292(%ebp), %edi
	movl	%eax, -2328(%ebp)
	jmp	L411
L412:
	movl	_wall, %ecx
	movl	%edi, %eax
	sall	$5, %eax
	leal	(%ecx,%eax), %edx
	movl	%eax, -2312(%ebp)
	movswl	10(%edx), %eax
	movl	%eax, %esi
	andl	$134217727, %eax
	sall	$5, %esi
	addl	$1, _wallchanged(,%eax,4)
	movw	%di, 10(%ecx,%esi)
	movswl	10(%edx), %eax
	movl	%eax, %esi
	andl	$134217727, %eax
	sall	$5, %esi
	addl	$1, _wallchanged(,%eax,4)
	movl	%esi, %edx
	movzwl	-2332(%ebp), %esi
	movw	%si, 12(%ecx,%edx)
	movswl	(%ebx), %eax
	movl	%edi, %esi
	subl	-2292(%ebp), %esi
	movl	-2328(%ebp), %edx
	leal	(%esi,%eax), %ebx
	movswl	%di, %eax
	addl	$1, %edi
	movswl	%bx, %ecx
	movl	%ebx, -2252(%ebp)
	movl	%eax, -2364(%ebp)
	call	_yax_setnextwall
	movl	-2364(%ebp), %ecx
	movl	-2324(%ebp), %edx
	movswl	%bx, %eax
	sall	$5, %ebx
	call	_yax_setnextwall
	movl	_wall, %eax
	movl	-2312(%ebp), %esi
	movl	-2328(%ebp), %edx
	movswl	10(%eax,%ebx), %ecx
	movswl	10(%eax,%esi), %eax
	call	_yax_setnextwall
	movl	_wall, %eax
	movl	-2324(%ebp), %edx
	movswl	10(%eax,%esi), %ecx
	movswl	10(%eax,%ebx), %eax
	call	_yax_setnextwall
L411:
	movl	-2344(%ebp), %ebx
	addl	_sector, %ebx
	cmpl	-2296(%ebp), %edi
	jl	L412
	movl	-2320(%ebp), %edi
	movzwl	(%ebx), %edx
	addl	-2072(%ebp), %edx
	movswl	%di, %eax
	movswl	%dx, %edx
	call	_setfirstwall
	movl	$LC3, %eax
	movl	$LC5, %edx
	cmpw	$0, -2392(%ebp)
	cmovns	%eax, %edx
	movl	$LC6, %ecx
	cmpl	$0, -2304(%ebp)
	movl	$LC7, %eax
	cmove	%ecx, %eax
	movl	%edi, 12(%esp)
	movl	%edx, 16(%esp)
	movl	%eax, 8(%esp)
	movl	-2292(%ebp), %eax
	movl	$LC86, (%esp)
	movl	%eax, 4(%esp)
	call	_message
	jmp	L406
	.p2align 4,,10
	.p2align 3
L2511:
	movl	$LC157, (%esp)
	call	__printmessage16
	jmp	L1095
	.cfi_endproc
LFE0:
	.globl	__ZL10osdrowscur.lto_priv.0
	.data
	.align 4
__ZL10osdrowscur.lto_priv.0:
	.long	-1
	.globl	_showinnergray
	.section .rdata,"dr"
	.align 4
_showinnergray:
	.long	1
	.globl	_showgraysectors
	.set	_showgraysectors,_showinnergray
	.globl	_ylookup
	.bss
	.align 4
_ylookup:
	.space 4
	.globl	_windowxy1
	.align 4
_windowxy1:
	.space 8
	.globl	_windowxy2
	.align 4
_windowxy2:
	.space 8
	.globl	_glad_glClearColor
	.align 4
_glad_glClearColor:
	.space 4
	.globl	__ZL13findfileshigh.lto_priv.0
	.align 4
__ZL13findfileshigh.lto_priv.0:
	.space 4
	.globl	__ZL6fnlist.lto_priv.0
	.align 4
__ZL6fnlist.lto_priv.0:
	.space 16
	.globl	__ZL9g_oldpath.lto_priv.0
	.align 32
__ZL9g_oldpath.lto_priv.0:
	.space 256
	.globl	_g_keyAsciiFIFO
	.align 32
_g_keyAsciiFIFO:
	.space 64
	.globl	_g_keyAsciiEnd
_g_keyAsciiEnd:
	.space 1
	.globl	_g_keyAsciiPos
_g_keyAsciiPos:
	.space 1
	.globl	_levelname
	.align 32
_levelname:
	.space 256
	.globl	__ZL21selectedboardfilename.lto_priv.0
	.align 32
__ZL21selectedboardfilename.lto_priv.0:
	.space 256
	.globl	_m32_wallscreenxy
	.align 32
_m32_wallscreenxy:
	.space 131072
.lcomm __ZZL14overheadeditorvE14backspace_last,4,4
	.globl	__ZL8tempxyar.lto_priv.0
	.align 32
__ZL8tempxyar.lto_priv.0:
	.space 131072
	.section .rdata,"dr"
	.align 4
_prefixtiles:
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
.lcomm __ZZL14overheadeditorvE11tcollbitmap,512,32
.lcomm __ZZL14overheadeditorvE13ocollsectlist,8192,32
.lcomm __ZZL14overheadeditorvE9outerwall,65536,32
	.globl	_numgraysects
	.bss
	.align 4
_numgraysects:
	.space 4
	.globl	__ZL12collnumsects.lto_priv.0
	.align 4
__ZL12collnumsects.lto_priv.0:
	.space 4
	.globl	__ZL14collsectbitmap.lto_priv.0
	.align 32
__ZL14collsectbitmap.lto_priv.0:
	.space 1024
	.globl	__ZL12collsectlist.lto_priv.0
	.align 32
__ZL12collsectlist.lto_priv.0:
	.space 16384
	.section .rdata,"dr"
	.align 4
__ZZL14overheadeditorvE3cfs:
	.long	LC89
	.long	LC90
	.globl	__ZL13m32_rotateang.lto_priv.0
	.bss
	.align 4
__ZL13m32_rotateang.lto_priv.0:
	.space 4
.lcomm __ZZL14overheadeditorvE4cbuf,64,32
	.globl	_searchlock
	.align 4
_searchlock:
	.space 4
	.globl	_oxyaspect
	.data
	.align 4
_oxyaspect:
	.long	-1
	.globl	_m32_swcnt
	.bss
	.align 4
_m32_swcnt:
	.space 4
	.globl	_m32_wallsprite
	.align 32
_m32_wallsprite:
	.space 65536
	.globl	_autogrid
	.data
	.align 4
_autogrid:
	.long	1
	.globl	_m32_sideang
	.align 2
_m32_sideang:
	.word	200
	.globl	_totalclocklock
	.bss
	.align 8
_totalclocklock:
	.space 16
	.globl	_m32_sideelev
	.data
	.align 4
_m32_sideelev:
	.long	256
	.align 2
_sectorhighlight:
	.word	-1
	.align 4
_ztarget:
	.long	768
	.section .rdata,"dr"
	.align 4
LC27:
	.long	931135488
	.align 4
LC35:
	.long	998277249
	.align 4
LC62:
	.long	1174405120
	.align 4
LC202:
	.long	1065353216
	.align 4
LC203:
	.long	1092616192
	.align 4
LC204:
	.long	1097859072
	.def	___divdi3;	.scl	2;	.type	32;	.endef
	.def	___udivdi3;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_enet_gettime.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_videoSet2dMode;	.scl	2;	.type	32;	.endef
	.def	_yax_updategrays;	.scl	2;	.type	32;	.endef
	.def	_videoBeginDrawing;	.scl	2;	.type	32;	.endef
	.def	_videoEndDrawing;	.scl	2;	.type	32;	.endef
	.def	_update_highlightsector;	.scl	2;	.type	32;	.endef
	.def	_ovh_whiteoutgrab;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_handleevents;	.scl	2;	.type	32;	.endef
	.def	__Z12OSD_DispatchPKcb.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__printmessage16;	.scl	2;	.type	32;	.endef
	.def	_mouseReadButtons;	.scl	2;	.type	32;	.endef
	.def	_editorMaybeLockMouse;	.scl	2;	.type	32;	.endef
	.def	_ldiv;	.scl	2;	.type	32;	.endef
	.def	__ZL13mainloop_movev.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_getpoint;	.scl	2;	.type	32;	.endef
	.def	__ZL16getlinehighlightiiia.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z10VM_OnEventii;	.scl	2;	.type	32;	.endef
	.def	_editorDraw2dGrid.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z9ToggleFAFv;	.scl	2;	.type	32;	.endef
	.def	_editorDraw2dScreen.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_editorGet2dScreenCoordinates;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.2;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	_drawsmallabel;	.scl	2;	.type	32;	.endef
	.def	__ZL13printcoords16iis.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_editorDraw2dLine;	.scl	2;	.type	32;	.endef
	.def	_printext16;	.scl	2;	.type	32;	.endef
	.def	__ZL21getclosestpointonwalliiiPiS_i.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z8OSD_Drawv;	.scl	2;	.type	32;	.endef
	.def	_ExtCheckKeys;	.scl	2;	.type	32;	.endef
	.def	_ExtShowWallData;	.scl	2;	.type	32;	.endef
	.def	__getnumber16.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_updatesectorexclude.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_getflorzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	_checksectorpointer;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.1;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_getpointhighlight;	.scl	2;	.type	32;	.endef
	.def	_inside;	.scl	2;	.type	32;	.endef
	.def	_ExtShowSectorData.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZL22hl_all_bunch_sectors_pv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_fillsector_maybetrans.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZL18backup_drawn_wallsi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL13updatesprite1s.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL16maybedeletewallsii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_editorSetup2dSideView.part.0;	.scl	2;	.type	32;	.endef
	.def	_updatesectorz;	.scl	2;	.type	32;	.endef
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
	.def	_videoSetViewableArea;	.scl	2;	.type	32;	.endef
	.def	__Z16timerUpdateClockv;	.scl	2;	.type	32;	.endef
	.def	_M32_DrawRoomsAndMasks;	.scl	2;	.type	32;	.endef
	.def	_message;	.scl	2;	.type	32;	.endef
	.def	_silentmessage;	.scl	2;	.type	32;	.endef
	.def	__ZL18sectors_componentssPKsii.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_fade_editor_screen;	.scl	2;	.type	32;	.endef
	.def	_ask_if_sure;	.scl	2;	.type	32;	.endef
	.def	_videoShowFrame.part.0;	.scl	2;	.type	32;	.endef
	.def	_fixspritesectors.isra.0;	.scl	2;	.type	32;	.endef
	.def	_videoSetGameMode;	.scl	2;	.type	32;	.endef
	.def	_videoSetPalette.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_CheckMapCorruption.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL24SaveBoardAndPrintMessagePKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_map_undoredo;	.scl	2;	.type	32;	.endef
	.def	__ZL22reset_default_mapstatev.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL18editorEventLoadMapPKc.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	__ZL10menuselectv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_LoadBoard;	.scl	2;	.type	32;	.endef
	.def	_test_map.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
	.def	__ZL10adjustmarkPiS_s.isra.0;	.scl	2;	.type	32;	.endef
	.def	_inside_editor_curpos;	.scl	2;	.type	32;	.endef
	.def	__ZL20insert_sprite_commoniii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_correct_sprite_yoffset;	.scl	2;	.type	32;	.endef
	.def	_updatesector;	.scl	2;	.type	32;	.endef
	.def	_update_highlight;	.scl	2;	.type	32;	.endef
	.def	_sectorofwall;	.scl	2;	.type	32;	.endef
	.def	_SDL_WarpMouseInWindow;	.scl	2;	.type	32;	.endef
	.def	_mouseLockToWindow;	.scl	2;	.type	32;	.endef
	.def	__Z18videoCaptureScreenPKcc;	.scl	2;	.type	32;	.endef
	.def	_plotlines2d.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL26duplicate_selected_sectorsv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_ExtEditSectorData.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZL20bakframe_fillandfadePPciPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_yax_getnextwall.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_editorFlipHighlightedSectors;	.scl	2;	.type	32;	.endef
	.def	__ZL15drawspritelabeli.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL10draw_crossiiii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_renderDrawMapView;	.scl	2;	.type	32;	.endef
	.def	_dragpoint;	.scl	2;	.type	32;	.endef
	.def	_lastwall;	.scl	2;	.type	32;	.endef
	.def	__ZL26duplicate_selected_spritesv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_SetFirstWall.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z11ContextHelps;	.scl	2;	.type	32;	.endef
	.def	_ExtEditSpriteData;	.scl	2;	.type	32;	.endef
	.def	__ZL14init_new_wall1Psii.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL18get_sectors_centerPKsiPiS1_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_rotatepoint;	.scl	2;	.type	32;	.endef
	.def	__Z13timerGetTicksv;	.scl	2;	.type	32;	.endef
	.def	_SDL_WaitEventTimeout;	.scl	2;	.type	32;	.endef
	.def	__ZL13isc_transformPiS_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL15M32_InsertPointiiisPi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_strncpy;	.scl	2;	.type	32;	.endef
	.def	_wm_setapptitle;	.scl	2;	.type	32;	.endef
	.def	_hitscan;	.scl	2;	.type	32;	.endef
	.def	_do_deletespritesect;	.scl	2;	.type	32;	.endef
	.def	_do_insertsprite_at_headofsect;	.scl	2;	.type	32;	.endef
	.def	__ZL25correct_ornamented_spriteiRK9hitdata_t.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_clockdir;	.scl	2;	.type	32;	.endef
	.def	_editor_ask_function;	.scl	2;	.type	32;	.endef
	.def	_yax_getnextwall;	.scl	2;	.type	32;	.endef
	.def	_lintersect;	.scl	2;	.type	32;	.endef
	.def	_select_sprite_tag;	.scl	2;	.type	32;	.endef
	.def	__ZL15drawlinebetweenPK4vec3IiES2_ij.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL10trace_loopiPhPsS0_s.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_yax_setbunch.part.0;	.scl	2;	.type	32;	.endef
	.def	_setslope;	.scl	2;	.type	32;	.endef
	.def	__ZL13inside_editorPK4vec3IiEiiiiis.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_paletteGetColor;	.scl	2;	.type	32;	.endef
	.def	_do_deletespritestat;	.scl	2;	.type	32;	.endef
	.def	_do_insertsprite_at_headofstat;	.scl	2;	.type	32;	.endef
	.def	_SaveBoard;	.scl	2;	.type	32;	.endef
	.def	@ksqrt@4;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	__ZL11draw_squareiiii.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_yax_setnextwall.part.0;	.scl	2;	.type	32;	.endef
	.def	_Bcanonicalisefilename.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZL12getfilenamesPKcS0_.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZL23menuselect_try_findlastv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_strcat;	.scl	2;	.type	32;	.endef
	.def	_Bcorrectfilename.isra.0;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch;	.scl	2;	.type	32;	.endef
	.def	_deletesprite;	.scl	2;	.type	32;	.endef
	.def	__ZL12deletesectors.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZL15AddLoopToSectoriPi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL22backup_highlighted_mapP13mapinfofull_t.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL23restore_highlighted_mapP13mapinfofull_ti.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_yax_update;	.scl	2;	.type	32;	.endef
	.def	_calc_sector_reachability;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_setspritez;	.scl	2;	.type	32;	.endef
	.def	__ZL13whitelinescanss.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_yax_setnextwall.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_wallength;	.scl	2;	.type	32;	.endef
	.def	_handlesecthighlight1;	.scl	2;	.type	32;	.endef
	.def	__ZL11cmpgeomwal1PKvS0_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_qsort;	.scl	2;	.type	32;	.endef
	.def	__ZL16mapinfofull_freeP13mapinfofull_t.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL9flipwallsss.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL22copy_some_wall_membersssi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL14yax_tweakwallsss.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_fixxrepeat.part.0;	.scl	2;	.type	32;	.endef
	.def	_ExtUnInit;	.scl	2;	.type	32;	.endef
	.def	_engineUnInit;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	_getceilzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru24current_verbosity_cutoffEv;	.scl	2;	.type	32;	.endef
	.def	__sm_allocator_destroy.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL18do_while_copyloop1ssPss.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_loopinside;	.scl	2;	.type	32;	.endef
	.def	_setfirstwall;	.scl	2;	.type	32;	.endef
	.def	_yax_setbunch;	.scl	2;	.type	32;	.endef
	.def	_reset_highlightsector;	.scl	2;	.type	32;	.endef
	.def	_yax_getneighborsect;	.scl	2;	.type	32;	.endef
	.def	_reset_highlight;	.scl	2;	.type	32;	.endef
	.def	__ZL16collect_sectors1PsPhS_sii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_yax_setnextwall;	.scl	2;	.type	32;	.endef
