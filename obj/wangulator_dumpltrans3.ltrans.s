	.file	"<artificial>"
	.text
	.p2align 4
	.globl	__ZL11cmpgeomwal1PKvS0_.lto_priv.0
	.def	__ZL11cmpgeomwal1PKvS0_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL11cmpgeomwal1PKvS0_.lto_priv.0:
LFB0:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %edx
	movl	12(%esp), %ecx
	movl	_wall, %eax
	movzwl	(%edx), %edx
	movzwl	(%ecx), %ecx
	sall	$5, %edx
	sall	$5, %ecx
	addl	%eax, %edx
	addl	%ecx, %eax
	movl	(%edx), %ebx
	movl	(%eax), %ecx
	subl	%ecx, %ebx
	cmpl	%ecx, (%edx)
	je	L6
	movl	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L6:
	.cfi_restore_state
	movl	4(%edx), %ebx
	subl	4(%eax), %ebx
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.def	__ZL22M32_MarkPointInsertioni;	.scl	3;	.type	32;	.endef
__ZL22M32_MarkPointInsertioni:
LFB1:
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
	movl	%eax, %ebx
	sall	$5, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	addl	_wall, %eax
	movswl	10(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%eax, %ebp
	cmpl	$-1, %ebx
	je	L8
	movl	%ebx, %eax
	xorl	%esi, %esi
	movswl	%bx, %edi
	.p2align 4
	.p2align 3
L10:
	movl	%eax, %edx
	movl	%eax, %ecx
	cwtl
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.2(%ecx), %ecx
	orb	%cl, _editwall(%edx)
	movswl	%si, %edx
	call	_yax_getnextwall
	movl	%eax, %edx
	cwtl
	cmpw	$-1, %dx
	jne	L9
	testl	%esi, %esi
	jne	L9
	movl	%edi, %eax
	movl	$1, %esi
	call	_yax_getnextwall.constprop.0
	cwtl
L9:
	cmpl	$-1, %eax
	jne	L10
	movl	8(%esp), %edx
	testl	%edx, %edx
	js	L17
L14:
	movl	8(%esp), %eax
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L13:
	movl	%eax, %edx
	movl	%eax, %ecx
	cwtl
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.2(%ecx), %ecx
	orb	%cl, _editwall(%edx)
	movswl	%si, %edx
	call	_yax_getnextwall
	movl	%eax, %edx
	cwtl
	cmpw	$-1, %dx
	jne	L16
	testl	%esi, %esi
	jne	L16
	movl	8(%esp), %eax
	movl	$1, %esi
	call	_yax_getnextwall.constprop.0
	cwtl
L16:
	cmpl	$-1, %eax
	jne	L13
	cmpl	$-1, %ebx
	je	L21
L17:
	movl	%ebx, %eax
	xorl	%ebx, %ebx
	movswl	%ax, %edi
	movl	%edi, 12(%esp)
	.p2align 4
	.p2align 3
L15:
	movl	%eax, %edx
	sall	$5, %edx
	addl	_wall, %edx
	movzwl	10(%edx), %esi
	testw	%si, %si
	js	L19
	movswl	%si, %edx
	andl	$7, %esi
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%esi), %esi
	movzbl	_editwall(%edx), %ecx
	movl	%edx, 4(%esp)
	movl	%ecx, %edi
	movb	%cl, (%esp)
	movl	%esi, %ecx
	notl	%edi
	movl	%edi, %edx
	testb	%cl, %dl
	je	L19
	movzbl	(%esp), %ecx
	movl	4(%esp), %edi
	orl	%esi, %ecx
	movb	%cl, _editwall(%edi)
L19:
	movswl	%bx, %edx
	cwtl
	call	_yax_getnextwall
	movl	%eax, %edx
	cwtl
	cmpw	$-1, %dx
	jne	L20
	testl	%ebx, %ebx
	jne	L20
	movl	12(%esp), %eax
	movl	$1, %ebx
	call	_yax_getnextwall.constprop.0
	cwtl
L20:
	cmpl	$-1, %eax
	jne	L15
	movl	8(%esp), %eax
	testl	%eax, %eax
	js	L7
L21:
	movl	8(%esp), %esi
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L18:
	movl	%ebp, %eax
	sall	$5, %eax
	addl	_wall, %eax
	movzwl	10(%eax), %eax
	testw	%ax, %ax
	js	L22
	movswl	%ax, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	movzbl	_editwall(%edx), %ecx
	movl	%edx, (%esp)
	movl	%ecx, %edi
	notl	%edi
	movl	%edi, %edx
	testb	%al, %dl
	je	L22
	orl	%eax, %ecx
	movl	(%esp), %eax
	movb	%cl, _editwall(%eax)
L22:
	movswl	%bp, %eax
	movswl	%bx, %edx
	call	_yax_getnextwall
	movswl	%ax, %ebp
	cmpw	$-1, %ax
	jne	L23
	testl	%ebx, %ebx
	jne	L23
	movl	%esi, %eax
	movl	$1, %ebx
	call	_yax_getnextwall.constprop.0
	movswl	%ax, %ebp
L23:
	cmpl	$-1, %ebp
	jne	L18
L7:
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
L8:
	.cfi_restore_state
	movl	8(%esp), %ecx
	testl	%ecx, %ecx
	jns	L14
	jmp	L7
	.cfi_endproc
LFE1:
	.section .rdata,"dr"
LC0:
	.ascii "Out of memory!\0"
	.align 4
LC1:
	.ascii "Copying sectors would exceed sector or wall limit.\0"
	.align 4
LC2:
	.ascii "Sectors duplicated, creating %d new bunches.\0"
LC3:
	.ascii "Sectors duplicated.\0"
	.text
	.p2align 4
	.globl	__ZL26duplicate_selected_sectorsv.lto_priv.0
	.def	__ZL26duplicate_selected_sectorsv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL26duplicate_selected_sectorsv.lto_priv.0:
LFB2:
	.cfi_startproc
	subl	$72, %esp
	.cfi_def_cfa_offset 76
	cmpw	$0, _highlightsectorcnt
	jle	L55
	leal	28(%esp), %eax
	call	__ZL22backup_highlighted_mapP13mapinfofull_t.part.0.lto_priv.0
	testl	%eax, %eax
	js	L55
	movl	%edi, 64(%esp)
	movswl	28(%esp), %eax
	.cfi_offset 7, -12
	movswl	_numsectors, %edi
	addl	%edi, %eax
	movl	%edi, 24(%esp)
	cmpl	$4096, %eax
	jg	L58
	movswl	_numwalls, %eax
	movswl	30(%esp), %edx
	addl	%edx, %eax
	cmpl	$16384, %eax
	jg	L58
	movl	_numyaxbunches, %edi
	movswl	34(%esp), %eax
	addl	%edi, %eax
	movl	%edi, 20(%esp)
	cmpl	$256, %eax
	jg	L58
	movswl	32(%esp), %eax
	addl	_Numsprites, %eax
	cmpl	$16384, %eax
	jg	L58
	movl	$512, 8(%esp)
	movl	$2147483647, %edi
	movl	$0, 4(%esp)
	movl	$_hlsectorbitmap, (%esp)
	movl	%esi, 60(%esp)
	.cfi_offset 6, -16
	movl	$2147483647, %esi
	movl	%ebx, 56(%esp)
	movl	%ebp, 68(%esp)
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	call	_memset
	movl	$-2147483648, 16(%esp)
	cmpw	$0, _highlightsectorcnt
	movl	$-2147483648, 12(%esp)
	jle	L60
	xorl	%ecx, %ecx
	.p2align 4
	.p2align 3
L64:
	movswl	_highlightsector(%ecx,%ecx), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %ebp
	movswl	2(%eax), %eax
	addl	%ebp, %eax
	movl	%eax, 24(%esp)
	cmpl	%eax, %ebp
	jge	L61
	movl	%ecx, 20(%esp)
	movl	_wall, %eax
	.p2align 4
	.p2align 3
L63:
	movl	%ebp, %ebx
	sall	$5, %ebx
	leal	(%eax,%ebx), %edx
	movswl	10(%edx), %eax
	testw	%ax, %ax
	js	L62
	movswl	12(%edx), %edx
	call	_checksectorpointer
L62:
	movl	20(%esp), %eax
	movswl	_highlightsector(%eax,%eax), %edx
	movswl	%bp, %eax
	call	_checksectorpointer
	movl	_wall, %eax
	movl	16(%esp), %ecx
	addl	%eax, %ebx
	movl	(%ebx), %edx
	cmpl	%edx, %edi
	cmovg	%edx, %edi
	cmpl	%edx, %ecx
	cmovge	%ecx, %edx
	movl	%edx, 16(%esp)
	movl	4(%ebx), %edx
	movl	12(%esp), %ebx
	cmpl	%edx, %esi
	cmovg	%edx, %esi
	cmpl	%edx, %ebx
	cmovge	%ebx, %edx
	addl	$1, %ebp
	movl	%edx, 12(%esp)
	cmpl	%ebp, 24(%esp)
	jne	L63
	movl	20(%esp), %ecx
L61:
	movswl	_highlightsectorcnt, %eax
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jg	L64
	movl	%esi, %eax
	movl	%edi, %esi
	movl	%eax, %edi
	movswl	_numsectors, %eax
	movl	%eax, 24(%esp)
	movl	_numyaxbunches, %eax
	movl	%eax, 20(%esp)
L60:
	movl	_grid, %ecx
	leal	-1(%ecx), %eax
	cmpl	$7, %eax
	ja	L80
	movl	$2048, %eax
	sarl	%cl, %eax
	movl	%eax, %ebp
	movl	$128, %eax
	cmpl	%eax, %ebp
	cmovl	%eax, %ebp
	movl	%ebp, %ecx
	negl	%ecx
L65:
	movl	16(%esp), %eax
	movl	%ebp, %ebx
	movl	_editorgridextent, %edx
	addl	%ebp, %eax
	cmpl	_editorgridextent, %eax
	cmovge	%ecx, %ebx
	negl	%edx
	addl	%ebx, %esi
	movl	%ebx, %eax
	negl	%eax
	cmpl	%edx, %esi
	cmovle	%eax, %ebx
	movl	12(%esp), %eax
	subl	%ebp, %eax
	cmpl	%eax, _editorgridextent
	cmovg	%ecx, %ebp
	leal	0(%ebp,%edi), %eax
	movl	%ebp, %ecx
	negl	%ecx
	cmpl	%eax, %edx
	leal	28(%esp), %eax
	movl	$1, %edx
	cmovge	%ecx, %ebp
	call	__ZL23restore_highlighted_mapP13mapinfofull_ti.lto_priv.0
	movswl	_numsectors, %edi
	movl	24(%esp), %eax
	movl	%edi, 16(%esp)
	cmpl	%edi, %eax
	jge	L70
	movl	%ebx, %edi
	.p2align 4
	.p2align 3
L75:
	movl	_sector, %edx
	leal	(%eax,%eax,4), %ebx
	sall	$3, %ebx
	addl	%ebx, %edx
	cmpw	$0, 2(%edx)
	jle	L71
	movl	%eax, 12(%esp)
	movswl	(%edx), %ecx
	movl	_wall, %edx
	.p2align 4
	.p2align 3
L72:
	movl	%ecx, %eax
	movl	%ecx, %esi
	addl	$1, %ecx
	sall	$5, %eax
	andl	$134217727, %esi
	addl	$1, _wallchanged(,%esi,4)
	movl	%eax, %esi
	shrl	$5, %esi
	addl	%edi, (%edx,%eax)
	movl	_wall, %edx
	addl	$1, _wallchanged(,%esi,4)
	movl	_sector, %esi
	addl	%ebp, 4(%edx,%eax)
	addl	%ebx, %esi
	movswl	(%esi), %eax
	movswl	2(%esi), %esi
	addl	%esi, %eax
	cmpl	%ecx, %eax
	jg	L72
	movl	12(%esp), %eax
L71:
	movswl	_headspritesect(%eax,%eax), %esi
	testl	%esi, %esi
	js	L73
	movl	%eax, 12(%esp)
	movl	_sprite, %ebx
	.p2align 4
	.p2align 3
L74:
	imull	$44, %esi, %ecx
	movl	$-1171354717, %eax
	mull	%ecx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ecx), %edx
	mull	%edx
	addl	%edi, (%ebx,%ecx)
	movl	_sprite, %ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	%ebp, 4(%ebx,%ecx)
	movswl	_nextspritesect(%esi,%esi), %esi
	testl	%esi, %esi
	jns	L74
	movl	12(%esp), %eax
L73:
	addl	$1, %eax
	cmpl	16(%esp), %eax
	jne	L75
L70:
	movl	_totalclock, %edx
	movl	_numyaxbunches, %eax
	movl	20(%esp), %edi
	movl	%edx, _lastpm16time
	cmpl	%edi, %eax
	jle	L76
	subl	%edi, %eax
	movl	$LC2, (%esp)
	movl	%eax, 4(%esp)
	call	__printmessage16
L77:
	movl	$1, %eax
	movw	%ax, _asksave
	movl	20(%esp), %eax
	cmpl	%eax, _numyaxbunches
	jg	L88
L78:
	movl	_pos+8, %eax
	call	_yax_updategrays
	movl	56(%esp), %ebx
	.cfi_restore 3
	movl	60(%esp), %esi
	.cfi_restore 6
	movl	64(%esp), %edi
	.cfi_restore 7
	movl	68(%esp), %ebp
	.cfi_restore 5
	addl	$72, %esp
	.cfi_def_cfa_offset 4
	jmp	_calc_sector_reachability
	.p2align 4,,10
	.p2align 3
L55:
	.cfi_def_cfa_offset 76
	movl	$LC0, (%esp)
	call	_message
	addl	$72, %esp
	.cfi_def_cfa_offset 4
	ret
L80:
	.cfi_def_cfa_offset 76
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$-512, %ecx
	movl	$512, %ebp
	jmp	L65
L76:
	movl	$LC3, (%esp)
	call	__printmessage16
	jmp	L77
L88:
	xorl	%eax, %eax
	call	_yax_update
	jmp	L78
L58:
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	leal	28(%esp), %eax
	call	__ZL16mapinfofull_freeP13mapinfofull_t.lto_priv.0
	movl	$LC1, (%esp)
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	call	__printmessage16
	movl	64(%esp), %edi
	.cfi_restore 7
	addl	$72, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE2:
	.section .rdata,"dr"
LC4:
	.ascii "Sprites duplicated.\0"
	.align 4
LC5:
	.ascii "Copying sprites would exceed sprite limit.\0"
	.text
	.p2align 4
	.globl	__ZL26duplicate_selected_spritesv.lto_priv.0
	.def	__ZL26duplicate_selected_spritesv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL26duplicate_selected_spritesv.lto_priv.0:
LFB6:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movswl	_highlightcnt, %ebx
	movl	_Numsprites, %esi
	testw	%bx, %bx
	jle	L90
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L92:
	movswl	_highlight(%eax,%eax), %edx
	andl	$49152, %edx
	cmpl	$16384, %edx
	sete	%dl
	addl	$1, %eax
	movzbl	%dl, %edx
	addl	%edx, %ecx
	cmpl	%ebx, %eax
	jne	L92
	addl	%esi, %ecx
	cmpl	$16384, %ecx
	jg	L93
	xorl	%ebx, %ebx
	jmp	L95
	.p2align 6
	.p2align 4,,10
	.p2align 3
L94:
	movswl	_highlightcnt, %eax
	addl	$1, %ebx
	cmpl	%eax, %ebx
	jge	L97
L95:
	movzwl	_highlight(%ebx,%ebx), %eax
	movl	%eax, %edx
	andl	$49152, %edx
	cmpl	$16384, %edx
	jne	L94
	andl	$16383, %eax
	addl	$1, %ebx
	imull	$44, %eax, %esi
	movl	_sprite, %eax
	addl	%esi, %eax
	movswl	26(%eax), %edx
	movswl	24(%eax), %eax
	call	_insertsprite
	movl	_sprite, %edx
	imull	$44, %eax, %eax
	addl	%edx, %eax
	addl	%esi, %edx
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
	movl	28(%edx), %ecx
	movl	%ecx, 28(%eax)
	movl	32(%edx), %ecx
	movl	%ecx, 32(%eax)
	movl	36(%edx), %ecx
	movl	%ecx, 36(%eax)
	movl	40(%edx), %edx
	movl	%edx, 40(%eax)
	movswl	_highlightcnt, %eax
	cmpl	%eax, %ebx
	jl	L95
L97:
	movl	$LC4, (%esp)
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	call	__printmessage16
	movl	$1, %eax
	movw	%ax, _asksave
	addl	$4, %esp
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
L90:
	.cfi_restore_state
	cmpl	$16384, %esi
	jle	L97
L93:
	movl	$LC5, (%esp)
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	call	__printmessage16
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE6:
	.p2align 4
	.globl	__ZL25correct_ornamented_spriteiRK9hitdata_t.lto_priv.0
	.def	__ZL25correct_ornamented_spriteiRK9hitdata_t.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL25correct_ornamented_spriteiRK9hitdata_t.lto_priv.0:
LFB8:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%eax, %ecx
	movzwl	12(%edx), %eax
	testw	%ax, %ax
	js	L102
	movswl	%ax, %edx
	movl	%esi, 8(%esp)
	.cfi_offset 6, -16
	movl	_sprite, %esi
	imull	$44, %edx, %edx
	movl	%ebx, 4(%esp)
	movswl	_ang, %eax
	addl	%esi, %edx
	.cfi_offset 3, -20
	movswl	28(%edx), %ebx
	subl	%ebx, %eax
/APP
 # 2291 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	imull	$44, %ecx, %ecx
	addl	%esi, %ecx
	cmpl	$1023, %eax
	jle	L110
	movzwl	28(%edx), %eax
	movw	%ax, 28(%ecx)
	movl	4(%esp), %ebx
	.cfi_restore 3
	movl	8(%esp), %esi
	.cfi_restore 6
L101:
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L110:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	leal	28(%ecx), %edx
	movl	$-1171354717, %eax
	addl	$1024, %ebx
	subl	%esi, %edx
	andl	$2047, %ebx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%bx, 28(%ecx)
	movl	4(%esp), %ebx
	.cfi_restore 3
	movl	8(%esp), %esi
	.cfi_restore 6
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L102:
	.cfi_def_cfa_offset 24
	movswl	14(%edx), %eax
	testw	%ax, %ax
	js	L101
	movl	%edi, 12(%esp)
	.cfi_offset 7, -12
	imull	$44, %ecx, %edi
	movl	_wall, %ecx
	sall	$5, %eax
	movl	%esi, 8(%esp)
	addl	%ecx, %eax
	movl	%ebp, 16(%esp)
	movl	%edx, (%esp)
	movswl	8(%eax), %edx
	sall	$5, %edx
	addl	%edx, %ecx
	movl	4(%ecx), %edx
	movl	(%ecx), %ecx
	subl	4(%eax), %edx
	subl	(%eax), %ecx
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	call	@getangle@8
	leal	28(%edi), %edx
	movl	_sprite, %ebp
	leal	512(%eax), %ecx
	movl	$-1171354717, %eax
	mull	%edx
	leal	0(%ebp,%edi), %esi
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	4(%esi), %edx
	movw	%cx, 28(%esi)
	movl	(%esi), %eax
	movswl	24(%esi), %ecx
	call	_inside
	cmpl	$1, %eax
	je	L109
	movl	(%esp), %eax
	movl	_wall, %edx
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -20
	movswl	14(%eax), %eax
	sall	$5, %eax
	addl	%edx, %eax
	movswl	8(%eax), %ecx
	sall	$5, %ecx
	movl	4(%edx,%ecx), %ebx
	subl	4(%eax), %ebx
/APP
 # 2304 "source/build/src/build.cpp" 1
	addl %ebx, %ebx; sbbl %eax, %eax; cmpl %ebx, %eax; adcb $0, %al
 # 0 "" 2
/NO_APP
	movl	%esi, %edx
	movl	%eax, %ebx
	movl	$-1171354717, %eax
	subl	%ebp, %edx
	mull	%edx
	movl	(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	subl	%ebx, (%esi)
	movswl	14(%eax), %eax
	movl	_wall, %edx
	sall	$5, %eax
	movl	(%edx,%ecx), %ebx
	subl	(%edx,%eax), %ebx
/APP
 # 2305 "source/build/src/build.cpp" 1
	addl %ebx, %ebx; sbbl %eax, %eax; cmpl %ebx, %eax; adcb $0, %al
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	leal	4(%edi), %edx
	movl	$-1171354717, %eax
	movl	_sprite, %ecx
	mull	%edx
	addl	%edi, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	%ebx, 4(%ecx)
	movl	4(%esp), %ebx
	.cfi_restore 3
	movl	8(%esp), %esi
	.cfi_restore 6
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	16(%esp), %ebp
	.cfi_restore 5
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L109:
	.cfi_def_cfa_offset 24
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	8(%esp), %esi
	.cfi_restore 6
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	16(%esp), %ebp
	.cfi_restore 5
	jmp	L101
	.cfi_endproc
LFE8:
	.p2align 4
	.globl	_update_highlight
	.def	_update_highlight;	.scl	2;	.type	32;	.endef
_update_highlight:
LFB9:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%edx, %edx
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
	movzwl	_numwalls, %ebx
	movw	%dx, _highlightcnt
	testw	%bx, %bx
	jle	L112
	movl	$1, %edx
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	movswl	%bx, %ebp
	jmp	L115
	.p2align 6
	.p2align 4,,10
	.p2align 3
L128:
	movl	%eax, %edx
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
L115:
	movl	%eax, %ecx
	sarl	$3, %ecx
	movzbl	_show2dwall(%ecx), %ebx
	andl	%edx, %ebx
	cmpb	%dl, %bl
	jne	L113
	movswl	%si, %edx
	movl	$1, %edi
	addl	$1, %esi
	movw	%ax, _highlight(%edx,%edx)
L113:
	addl	$1, %eax
	cmpl	%ebp, %eax
	jne	L128
	movl	%edi, %eax
	testb	%al, %al
	je	L112
	movw	%si, _highlightcnt
L117:
	movl	_sprite, %eax
	movw	%si, 2(%esp)
	movl	%esi, %edi
	xorl	%ebp, %ebp
	movl	$1, %edx
	leal	26(%eax), %ecx
	xorl	%eax, %eax
	jmp	L123
	.p2align 4,,10
	.p2align 3
L129:
	notl	%ebx
	testb	%dl, %bl
	jne	L120
	movswl	%di, %edx
	leal	16384(%eax), %ebx
	addl	$1, %edi
	movl	$1, %ebp
	movw	%bx, _highlight(%edx,%edx)
L120:
	addl	$1, %eax
	cmpl	$16384, %eax
	je	L122
L130:
	movl	%eax, %edx
	addl	$44, %ecx
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
L123:
	movl	%eax, %esi
	sarl	$3, %esi
	movzbl	_show2dsprite(%esi), %ebx
	cmpw	$1023, (%ecx)
	jle	L129
	notl	%edx
	addl	$1, %eax
	andl	%ebx, %edx
	movb	%dl, _show2dsprite(%esi)
	cmpl	$16384, %eax
	jne	L130
L122:
	movl	%ebp, %eax
	testb	%al, %al
	je	L126
	movw	%di, _highlightcnt
L124:
	testw	%di, %di
	jne	L111
	movl	$-1, %eax
	movw	%ax, _highlightcnt
L111:
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
	ret
L112:
	.cfi_restore_state
	xorl	%esi, %esi
	jmp	L117
L126:
	movzwl	2(%esp), %edi
	jmp	L124
	.cfi_endproc
LFE9:
	.p2align 4
	.globl	_update_highlightsector
	.def	_update_highlightsector;	.scl	2;	.type	32;	.endef
_update_highlightsector:
LFB10:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	xorl	%edx, %edx
	movl	$2147483647, __ZL17minhlsectorfloorz.lto_priv.0
	movl	%esi, 8(%esp)
	.cfi_offset 6, -16
	movswl	_numsectors, %esi
	movl	$0, __ZL13numhlsecwalls.lto_priv.0
	movw	%dx, _highlightsectorcnt
	testw	%si, %si
	jle	L132
	movl	_sector, %eax
	movl	%edi, 12(%esp)
	movl	$1, %edx
	.cfi_offset 7, -12
	xorl	%edi, %edi
	movl	%ebp, 16(%esp)
	.cfi_offset 5, -8
	xorl	%ebp, %ebp
	addl	$2, %eax
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -20
	movl	%eax, (%esp)
	xorl	%eax, %eax
	jmp	L135
	.p2align 4,,10
	.p2align 3
L143:
	movl	%eax, %edx
	addl	$40, (%esp)
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
L135:
	movl	%eax, %ebx
	sarl	$3, %ebx
	movzbl	_hlsectorbitmap(%ebx), %ecx
	andl	%edx, %ecx
	cmpb	%dl, %cl
	jne	L133
	movl	(%esp), %ecx
	movswl	%di, %edx
	movl	$1, %ebp
	movw	%ax, _highlightsector(%edx,%edx)
	movl	__ZL17minhlsectorfloorz.lto_priv.0, %edx
	movl	6(%ecx), %ebx
	cmpl	%ebx, %edx
	cmovg	%ebx, %edx
	addl	$1, %edi
	movl	%edx, __ZL17minhlsectorfloorz.lto_priv.0
	movswl	(%ecx), %edx
	addl	%edx, __ZL13numhlsecwalls.lto_priv.0
L133:
	addl	$1, %eax
	cmpl	%esi, %eax
	jne	L143
	movl	%ebp, %eax
	testb	%al, %al
	je	L141
	testw	%di, %di
	movw	%di, _highlightsectorcnt
	movl	4(%esp), %ebx
	.cfi_restore 3
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	16(%esp), %ebp
	.cfi_restore 5
	je	L132
	movl	8(%esp), %esi
	addl	$20, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L141:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	4(%esp), %ebx
	.cfi_restore 3
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	16(%esp), %ebp
	.cfi_restore 5
L132:
	movl	$-1, %eax
	movl	8(%esp), %esi
	movl	$0, __ZL17minhlsectorfloorz.lto_priv.0
	movw	%ax, _highlightsectorcnt
	addl	$20, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE10:
	.p2align 4
	.globl	__ZL18get_sectors_centerPKsiPiS1_.lto_priv.0
	.def	__ZL18get_sectors_centerPKsiPiS1_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL18get_sectors_centerPKsiPiS1_.lto_priv.0:
LFB11:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%edi, 32(%esp)
	.cfi_offset 7, -12
	movl	%ecx, %edi
	movl	%ebx, 24(%esp)
	testl	%edx, %edx
	.cfi_offset 3, -20
	jle	L149
	movl	%esi, 28(%esp)
	.cfi_offset 6, -16
	movl	_sector, %esi
	xorl	%ebx, %ebx
	movl	%ebp, 36(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	leal	(%eax,%edx,2), %eax
	movl	%esi, 8(%esp)
	movl	_wall, %esi
	movl	%eax, 12(%esp)
	movl	%esi, 16(%esp)
	movl	$0, (%esp)
	movl	$0, 4(%esp)
	movl	%ecx, 20(%esp)
	.p2align 4
	.p2align 3
L148:
	movswl	0(%ebp), %eax
	movl	8(%esp), %edi
	leal	(%eax,%eax,4), %eax
	leal	(%edi,%eax,8), %eax
	movswl	(%eax), %edi
	movswl	2(%eax), %esi
	addl	%edi, %esi
	cmpl	%esi, %edi
	jge	L146
	movl	16(%esp), %ecx
	movl	%edi, %eax
	movl	%esi, %edx
	sall	$5, %eax
	sall	$5, %edx
	addl	%ecx, %eax
	addl	%ecx, %edx
	movl	4(%esp), %ecx
	.p2align 4
	.p2align 4
	.p2align 3
L147:
	addl	(%eax), %ebx
	addl	4(%eax), %ecx
	addl	$32, %eax
	cmpl	%edx, %eax
	jne	L147
	movl	(%esp), %eax
	movl	%ecx, 4(%esp)
	subl	%edi, %eax
	addl	%esi, %eax
	movl	%eax, (%esp)
L146:
	addl	$2, %ebp
	cmpl	%ebp, 12(%esp)
	jne	L148
	movl	(%esp), %esi
	movl	4(%esp), %ecx
	movl	20(%esp), %edi
	testl	%esi, %esi
	je	L156
	movl	%ebx, %eax
	movl	36(%esp), %ebp
	.cfi_restore 5
	cltd
	idivl	%esi
	movl	%eax, %ebx
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	%eax, %ecx
L145:
	movl	44(%esp), %eax
	movl	%ebx, (%edi)
	movl	%ecx, (%eax)
	movl	24(%esp), %ebx
	movl	32(%esp), %edi
	addl	$40, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L156:
	.cfi_def_cfa_offset 44
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	36(%esp), %ebp
	.cfi_restore 5
	jmp	L145
L149:
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	jmp	L145
	.cfi_endproc
LFE11:
	.p2align 4
	.globl	__ZL20insert_sprite_commoniii.lto_priv.0
	.def	__ZL20insert_sprite_commoniii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL20insert_sprite_commoniii.lto_priv.0:
LFB12:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	cwtl
	movl	%esi, 20(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	xorl	%edx, %edx
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	.cfi_offset 3, -20
	call	_insertsprite
	testl	%eax, %eax
	js	L165
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	imull	$44, %eax, %ebp
	movl	$-1171354717, %ecx
	movl	%eax, %ebx
	movl	%edi, 24(%esp)
	.cfi_offset 7, -12
	movl	_sprite, %edi
	movl	%ebp, %eax
	addl	%ebp, %edi
	mull	%ecx
	leal	4(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	movl	12(%esp), %eax
	movl	%esi, (%edi)
	movl	_sprite, %edi
	shrl	$5, %edx
	leal	(%edi,%ebp), %esi
	movl	$1536, %ebp
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%esi), %edx
	subl	%edi, %edx
	movl	%eax, 4(%esi)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 12(%esi)
	leal	16(%esi), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%esi), %edx
	subl	%edi, %edx
	movb	$0, 16(%esi)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%esi), %edx
	subl	%edi, %edx
	movb	$0, 17(%esi)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%esi), %edx
	subl	%edi, %edx
	movb	$64, 20(%esi)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	22(%esi), %edx
	subl	%edi, %edx
	movb	$64, 21(%esi)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	23(%esi), %edx
	subl	%edi, %edx
	movb	$0, 22(%esi)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%esi), %edx
	subl	%edi, %edx
	movb	$0, 23(%esi)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32(%esi), %edx
	subl	%edi, %edx
	movw	%bp, 28(%esi)
	movl	$-1, %ebp
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	34(%esi), %edx
	subl	%edi, %edx
	movw	%ax, 32(%esi)
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%esi), %edx
	subl	%edi, %edx
	movw	%ax, 34(%esi)
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	30(%esi), %edx
	subl	%edi, %edx
	movw	%ax, 36(%esi)
	movl	%edx, %eax
	mull	%ecx
	movl	$-1, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%esi), %edx
	subl	%edi, %edx
	movw	%ax, 30(%esi)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	38(%esi), %edx
	subl	%edi, %edx
	movb	$32, 18(%esi)
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	40(%esi), %edx
	subl	%edi, %edx
	movw	%ax, 38(%esi)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 40(%esi)
	leal	42(%esi), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	19(%esi), %edx
	subl	%edi, %edx
	movw	%bp, 42(%esi)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$0, 19(%esi)
	movl	$61440, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_localartfreq, (%esp)
	call	_memset
	leal	14(%edi), %edx
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L160:
	cmpw	$1023, 12(%edx)
	jg	L159
	cmpl	%eax, %ebx
	je	L159
	movswl	(%edx), %ecx
	addw	$1, _localartfreq(%ecx,%ecx)
L159:
	addl	$1, %eax
	addl	$44, %edx
	cmpl	$16384, %eax
	jne	L160
	movzwl	_localartfreq, %ecx
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	.p2align 5
	.p2align 4
	.p2align 3
L162:
	movzwl	_localartfreq(%eax,%eax), %edx
	cmpw	%cx, %dx
	cmovg	%edx, %ecx
	cmovg	%eax, %ebp
	addl	$1, %eax
	cmpl	$30464, %eax
	jne	L162
	leal	14(%esi), %edx
	movl	$-1171354717, %eax
	subl	%edi, %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	testw	%cx, %cx
	jle	L163
	movw	%bp, 14(%esi)
	movl	24(%esp), %edi
	.cfi_restore 7
	movl	28(%esp), %ebp
	.cfi_restore 5
L157:
	movl	%ebx, %eax
	movl	20(%esp), %esi
	movl	16(%esp), %ebx
	addl	$32, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L163:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	xorl	%eax, %eax
	movw	%ax, 14(%esi)
	movl	%ebx, %eax
	movl	24(%esp), %edi
	.cfi_restore 7
	movl	28(%esp), %ebp
	.cfi_restore 5
	movl	16(%esp), %ebx
	movl	20(%esp), %esi
	addl	$32, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L165:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	$-1, %ebx
	jmp	L157
	.cfi_endproc
LFE12:
	.p2align 4
	.globl	_correct_sprite_yoffset
	.def	_correct_sprite_yoffset;	.scl	2;	.type	32;	.endef
_correct_sprite_yoffset:
LFB13:
	.cfi_startproc
	imull	$44, %eax, %ecx
	movl	_sprite, %edx
	addl	%edx, %ecx
	testb	$32, 12(%ecx)
	jne	L182
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, 4(%esp)
	movl	%esi, 8(%esp)
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	movswl	14(%ecx), %ebx
	movsbl	_picanm+2(%ebx,%ebx,4), %esi
	movl	%esi, %eax
/APP
 # 2447 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, (%esp)
	leal	23(%ecx), %eax
	movswl	_tilesiz+2(,%ebx,4), %ebx
	subl	%edx, %eax
	movl	$-1171354717, %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	cmpl	(%esp), %ebx
	jle	L185
	movl	%eax, _spritechanged(,%edx,4)
	movb	$0, 23(%ecx)
	movl	4(%esp), %ebx
	movl	8(%esp), %esi
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L185:
	.cfi_restore_state
	movl	%edi, 12(%esp)
	.cfi_offset 7, -8
	movl	%esi, %edi
	movl	$127, %ebx
	negl	%edi
	cmpl	$-128, %esi
	movl	%eax, _spritechanged(,%edx,4)
	cmovne	%edi, %ebx
	movb	%bl, 23(%ecx)
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	4(%esp), %ebx
	movl	8(%esp), %esi
	addl	$16, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L182:
	ret
	.cfi_endproc
LFE13:
	.p2align 4
	.globl	_fade_editor_screen
	.def	_fade_editor_screen;	.scl	2;	.type	32;	.endef
_fade_editor_screen:
LFB14:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	movzbl	_whitecol, %ebx
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	call	_videoBeginDrawing
	movl	_ydim, %ecx
	leal	-26(%ecx), %eax
	imull	_bytesperline, %eax
	testl	%eax, %eax
	jle	L187
	leal	-25(%ebx), %eax
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	movl	_frameplace, %edi
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movb	%al, 11(%esp)
	cmpl	$255, %ebp
	jg	L188
	xorl	%eax, %eax
	jmp	L193
	.p2align 4,,10
	.p2align 3
L203:
	testb	%dl, %dl
	je	L189
	movzbl	11(%esp), %ecx
	movb	%cl, (%ebx)
	movl	_ydim, %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L189:
	leal	-26(%ecx), %edx
	addl	$1, %eax
	imull	_bytesperline, %edx
	cmpl	%edx, %eax
	jge	L202
L193:
	leal	(%edi,%eax), %ebx
	movzbl	(%ebx), %esi
	movl	%esi, %edx
	cmpl	%esi, %ebp
	je	L189
	cmpb	%dl, 11(%esp)
	jne	L203
	movb	$0, (%ebx)
	movl	_ydim, %ecx
	jmp	L189
	.p2align 4,,10
	.p2align 3
L188:
	movl	%ebp, %eax
	movl	%ebp, 4(%esp)
	movl	%ecx, %ebp
	movzbl	%ah, %eax
	movl	%eax, (%esp)
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L196:
	leal	(%eax,%edi), %esi
	movzbl	(%esi), %edx
	cmpb	%dl, 4(%esp)
	sete	%cl
	cmpb	%dl, (%esp)
	sete	%bl
	orb	%cl, %bl
	jne	L194
	testb	%dl, %dl
	je	L194
	cmpb	11(%esp), %dl
	je	L204
	movzbl	11(%esp), %ecx
	movb	%cl, (%esi)
	movl	_ydim, %ebp
L194:
	leal	-26(%ebp), %edx
	addl	$1, %eax
	imull	_bytesperline, %edx
	cmpl	%eax, %edx
	jg	L196
L202:
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
L187:
	call	_videoEndDrawing
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	jne	L186
	movl	12(%esp), %ebx
	movl	24(%esp), %ebp
	movl	$1, %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	_videoShowFrame.part.0
	.p2align 4,,10
	.p2align 3
L186:
	.cfi_restore_state
	movl	12(%esp), %ebx
	movl	24(%esp), %ebp
	addl	$28, %esp
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L204:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movb	$0, (%esi)
	movl	_ydim, %ebp
	jmp	L194
	.cfi_endproc
LFE14:
	.p2align 4
	.globl	__ZL22copy_some_wall_membersssi.lto_priv.0
	.def	__ZL22copy_some_wall_membersssi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL22copy_some_wall_membersssi.lto_priv.0:
LFB17:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%ecx, %ebp
	movl	$__ZZL22copy_some_wall_membersssiE8nullwall, %ecx
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movswl	%ax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movswl	%dx, %esi
	movl	%edi, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%esi, %ebx
	sall	$5, %esi
	sall	$5, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	_wall, %edx
	movl	$0, __ZZL22copy_some_wall_membersssiE8nullwall+28
	movl	$0, __ZZL22copy_some_wall_membersssiE8nullwall+20
	addl	%edx, %esi
	testw	%bx, %bx
	leal	(%edx,%eax), %ebx
	movl	$0, __ZZL22copy_some_wall_membersssiE8nullwall
	cmovs	%ecx, %esi
	movl	$-1, %ecx
	shrl	$5, %eax
	movl	$0, __ZZL22copy_some_wall_membersssiE8nullwall+4
	movw	%cx, __ZZL22copy_some_wall_membersssiE8nullwall+30
	movl	_wallchanged(,%eax,4), %ecx
	movl	$0, __ZZL22copy_some_wall_membersssiE8nullwall+8
	addl	$1, %ecx
	movl	$0, __ZZL22copy_some_wall_membersssiE8nullwall+12
	movl	$0, __ZZL22copy_some_wall_membersssiE8nullwall+16
	movl	$0, __ZZL22copy_some_wall_membersssiE8nullwall+24
	movb	$8, __ZZL22copy_some_wall_membersssiE8nullwall+23
	movl	%ecx, (%esp)
	testl	%ebp, %ebp
	je	L207
	movzwl	14(%esi), %ecx
	movw	%cx, 6(%esp)
	movl	(%esp), %ecx
	movl	%ecx, _wallchanged(,%eax,4)
L208:
	movzwl	6(%esp), %eax
	movw	%ax, 14(%ebx)
	leal	20(%ebx), %eax
	movzbl	20(%esi), %ecx
	subl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	leal	23(%ebx), %eax
	movb	%cl, 20(%ebx)
	subl	%edx, %eax
	movzbl	23(%esi), %ecx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%edi, %eax
	movb	%cl, 23(%ebx)
	call	_fixrepeats
	movl	_wall, %eax
	leal	16(%ebx), %edx
	movzwl	16(%esi), %ecx
	subl	%eax, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%eax, %edx
	movw	%cx, 16(%ebx)
	movzwl	18(%esi), %ecx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%eax, %edx
	movw	%cx, 18(%ebx)
	movzbl	21(%esi), %ecx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	leal	24(%ebx), %edx
	subl	%eax, %edx
	movb	%cl, 21(%ebx)
	movzbl	24(%esi), %ecx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	leal	25(%ebx), %edx
	movb	%cl, 24(%ebx)
	subl	%eax, %edx
	movzbl	25(%esi), %ecx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movb	%cl, 25(%ebx)
	testl	%ebp, %ebp
	jne	L212
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
L207:
	.cfi_restore_state
	movl	%ecx, _wallchanged(,%eax,4)
	andw	$-269, 14(%ebx)
	movzwl	14(%esi), %ecx
	addl	$1, _wallchanged(,%eax,4)
	andw	$268, %cx
	orw	14(%ebx), %cx
	movw	%cx, 6(%esp)
	jmp	L208
	.p2align 4,,10
	.p2align 3
L212:
	leal	10(%ebx), %edx
	movl	$-1, %ecx
	xorl	%esi, %esi
	xorl	%ebp, %ebp
	subl	%eax, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movl	$-1, %edx
	movw	%dx, 10(%ebx)
	leal	12(%ebx), %edx
	subl	%eax, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	leal	26(%ebx), %edx
	subl	%eax, %edx
	movw	%cx, 12(%ebx)
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	leal	28(%ebx), %edx
	subl	%eax, %edx
	movw	%si, 26(%ebx)
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	leal	30(%ebx), %edx
	subl	%eax, %edx
	movw	%bp, 28(%ebx)
	movl	%edx, %eax
	xorl	%edx, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	$-1, %eax
	movw	%ax, 30(%ebx)
	movl	%edi, %eax
	call	_yax_setnextwall.constprop.0
	addl	$8, %esp
	.cfi_def_cfa_offset 20
	movl	%edi, %eax
	movl	$1, %edx
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
	jmp	_yax_setnextwall.constprop.0
	.cfi_endproc
LFE17:
	.p2align 4
	.globl	__ZL14init_new_wall1Psii.constprop.0
	.def	__ZL14init_new_wall1Psii.constprop.0;	.scl	2;	.type	32;	.endef
__ZL14init_new_wall1Psii.constprop.0:
LFB19:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$-1, %ecx
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	movswl	_newnumwalls, %eax
	movl	%edx, (%esp)
	movl	$-1, %edx
	sall	$5, %eax
	addl	_wall, %eax
	movl	$0, (%eax)
	movl	_wall, %ebx
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	movl	$0, 24(%eax)
	movl	$0, 28(%eax)
	movswl	_newnumwalls, %eax
	movw	%ax, 6(%esp)
	sall	$5, %eax
	movl	%eax, %esi
	shrl	$5, %esi
	addl	$1, _wallchanged(,%esi,4)
	movw	%dx, 30(%ebx,%eax)
	movl	%eax, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movl	%edi, (%ebx,%eax)
	movl	_wall, %ebp
	movl	$-1, %ebx
	addl	$1, _wallchanged(,%esi,4)
	leal	0(%ebp,%eax), %edx
	movl	(%esp), %eax
	movl	%eax, 4(%edx)
	leal	12(%edx), %eax
	subl	%ebp, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	leal	10(%edx), %eax
	subl	%ebp, %eax
	movw	%cx, 12(%edx)
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%bx, 10(%edx)
	movzwl	_numwalls, %ebx
	testw	%bx, %bx
	jle	L214
	movl	%ebp, 8(%esp)
	movl	%ebp, %ecx
	xorl	%eax, %eax
	movswl	%bx, %ebp
	movl	%edx, 12(%esp)
	movl	$1, %ebx
	jmp	L217
	.p2align 6
	.p2align 4,,10
	.p2align 3
L215:
	addl	$1, %eax
	cmpl	%ebp, %eax
	je	L218
L220:
	movl	%eax, %ebx
	addl	$32, %ecx
	andl	$7, %ebx
	movzbl	__ZL8pow2char.lto_priv.2(%ebx), %ebx
L217:
	movl	%eax, %esi
	sarl	$3, %esi
	movzbl	_graywallbitmap(%esi), %edx
	andl	%ebx, %edx
	cmpb	%bl, %dl
	je	L215
	movswl	10(%ecx), %esi
	testw	%si, %si
	js	L216
	movl	%esi, %ebx
	sarl	$3, %esi
	andl	$7, %ebx
	movzbl	_graywallbitmap(%esi), %edx
	movzbl	__ZL8pow2char.lto_priv.2(%ebx), %ebx
	andl	%ebx, %edx
	cmpb	%dl, %bl
	je	L215
L216:
	cmpl	(%ecx), %edi
	jne	L215
	movl	(%esp), %edx
	cmpl	4(%ecx), %edx
	jne	L215
	movw	%ax, __ZL3ovh.lto_priv.0+4
	addl	$1, %eax
	cmpl	%ebp, %eax
	jne	L220
	.p2align 4
	.p2align 3
L218:
	movl	8(%esp), %ebp
	movl	12(%esp), %edx
L214:
	leal	8(%edx), %eax
	subl	%ebp, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movzwl	6(%esp), %eax
	addl	$1, %eax
	movw	%ax, 8(%edx)
	movw	%ax, _newnumwalls
	addl	$16, %esp
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
LFE19:
	.p2align 4
	.globl	__ZL18do_while_copyloop1ssPss.lto_priv.0
	.def	__ZL18do_while_copyloop1ssPss.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL18do_while_copyloop1ssPss.lto_priv.0:
LFB20:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	cwtl
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edx, %ebx
	movzwl	(%ecx), %edx
	jmp	L223
	.p2align 4,,10
	.p2align 3
L230:
	movl	_wall, %ecx
	movswl	%dx, %edx
	sall	$5, %eax
	sall	$5, %edx
	addl	%ecx, %edx
	addl	%eax, %ecx
	movl	(%ecx), %edi
	movl	%edi, (%edx)
	movl	4(%ecx), %edi
	movl	%edi, 4(%edx)
	movl	8(%ecx), %edi
	movl	%edi, 8(%edx)
	movl	12(%ecx), %edi
	movl	%edi, 12(%edx)
	movl	16(%ecx), %edi
	movl	%edi, 16(%edx)
	movl	20(%ecx), %edi
	movl	%edi, 20(%edx)
	movl	24(%ecx), %edi
	movl	%edi, 24(%edx)
	movl	28(%ecx), %ecx
	movl	_wall, %edi
	movl	%ecx, 28(%edx)
	movswl	(%esi), %edx
	movl	%edx, %ecx
	sall	$5, %edx
	addl	%edx, %edi
	addl	$1, %ecx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movw	%cx, 8(%edi)
	movzwl	(%esi), %ecx
	leal	1(%ecx), %edx
	movw	%dx, (%esi)
	movl	_wall, %ecx
	movswl	8(%ecx,%eax), %eax
	cmpw	%bx, %ax
	je	L229
L223:
	cmpw	$16895, %dx
	jle	L230
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	movl	$1, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L229:
	.cfi_restore_state
	cmpw	$0, 16(%esp)
	js	L225
	movswl	%dx, %edx
	movzwl	16(%esp), %ebx
	addl	$134217727, %edx
	movl	%edx, %eax
	andl	$134217727, %edx
	sall	$5, %eax
	addl	$1, _wallchanged(,%edx,4)
	movw	%bx, 8(%ecx,%eax)
L225:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE20:
	.p2align 4
	.globl	__ZL13updatesprite1s.lto_priv.0
	.def	__ZL13updatesprite1s.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL13updatesprite1s.lto_priv.0:
LFB21:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -16
	movswl	%ax, %ebx
	movl	_sprite, %eax
	movl	%esi, 24(%esp)
	.cfi_offset 6, -12
	imull	$44, %ebx, %esi
	movl	%ebx, (%esp)
	addl	%esi, %eax
	movl	%eax, 4(%esp)
	call	_setsprite
	movl	_sprite, %eax
	cmpw	$0, 24(%eax,%esi)
	jns	L237
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	addl	$32, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L237:
	.cfi_restore_state
	leal	12(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	leal	16(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%edi, 28(%esp)
	.cfi_offset 7, -8
	call	_spriteoncfz
	leal	8(%esi), %eax
	movl	12(%esp), %ebx
	movl	16(%esp), %edi
	movl	_sprite, %ecx
	addl	%esi, %ecx
	movl	$-1171354717, %esi
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	8(%ecx), %eax
	cmpl	%eax, %ebx
	jge	L233
	movl	%ebx, 8(%ecx)
	movl	%ebx, %eax
L233:
	cmpl	%eax, %edi
	jle	L236
	movl	%edi, 8(%ecx)
	movl	28(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	addl	$32, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L236:
	.cfi_restore_state
	movl	28(%esp), %edi
	.cfi_restore 7
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	addl	$32, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE21:
	.section .rdata,"dr"
	.align 4
LC6:
	.ascii "Wall limits exceeded while tracing outer loop.\0"
	.align 4
LC7:
	.ascii "internal error while tracing outer loop: didn't reach refwall\0"
	.text
	.p2align 4
	.globl	__ZL10trace_loopiPhPsS0_s.constprop.0
	.def	__ZL10trace_loopiPhPsS0_s.constprop.0;	.scl	2;	.type	32;	.endef
__ZL10trace_loopiPhPsS0_s.constprop.0:
LFB23:
	.cfi_startproc
	subl	$68, %esp
	.cfi_def_cfa_offset 72
	movl	%edi, 60(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	%eax, %edx
	sall	$5, %edx
	addl	_wall, %edx
	movl	%ecx, 40(%esp)
	cmpw	$0, 10(%edx)
	jns	L239
	movl	%esi, 56(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	sarl	$3, %eax
	movl	%ebp, 64(%esp)
	movl	%ebx, 52(%esp)
	.cfi_offset 5, -8
	.cfi_offset 3, -20
	movzbl	__ZL7visited.lto_priv.0(%eax), %ebx
	movl	%esi, %eax
	andl	$7, %eax
	movl	%ebx, %ebp
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	notl	%ebp
	movl	%ebp, %ecx
	testb	%al, %cl
	je	L291
	movl	%esi, 20(%esp)
	movzwl	_numwalls, %esi
	movl	%edi, 28(%esp)
	testl	%edi, %edi
	je	L242
	movl	$-1, %ecx
	movl	$__ZL18hlorgraysectbitmap.lto_priv.0, 12(%esp)
	movw	%cx, 50(%esp)
	leal	50(%esp), %ecx
	movl	%ecx, 8(%esp)
	movl	4(%edx), %ecx
	movb	%al, 18(%esp)
	movl	%ecx, 4(%esp)
	movl	(%edx), %edx
	movl	%edx, (%esp)
	call	_updatesectorexclude.constprop.0
	cmpw	$0, 50(%esp)
	movzbl	18(%esp), %eax
	js	L261
L242:
	movswl	%si, %ecx
	xorl	%edx, %edx
	movl	20(%esp), %edi
	movl	$32768, %ebp
	movl	%ecx, 24(%esp)
	movswl	72(%esp), %ecx
	movw	%dx, 18(%esp)
	movl	%ecx, 44(%esp)
	.p2align 4
	.p2align 3
L256:
	movl	%edi, %edx
	sarl	$3, %edx
	cmpl	%edi, 20(%esp)
	je	L243
	movl	%ebx, %ecx
	notl	%ecx
	testb	%al, %cl
	sete	%cl
	movzbl	%cl, %ecx
	orw	%cx, 18(%esp)
L243:
	orl	%eax, %ebx
	movl	28(%esp), %eax
	movb	%bl, __ZL7visited.lto_priv.0(%edx)
	testl	%eax, %eax
	je	L292
	movl	_wall, %ebx
	movl	%edi, %eax
	movswl	50(%esp), %ecx
	sall	$5, %eax
	leal	(%ebx,%eax), %esi
	movl	%eax, 32(%esp)
	movl	4(%esi), %edx
	movl	(%esi), %eax
	call	_inside
	testb	$1, 18(%esp)
	jne	L262
	cmpl	$1, %eax
	je	L293
L262:
	movl	$1, %eax
	movw	%ax, 18(%esp)
L246:
	movswl	8(%esi), %edi
	jmp	L289
	.p2align 5
	.p2align 4,,10
	.p2align 3
L294:
	testl	%ebp, %ebp
	je	L255
	sall	$5, %eax
	movswl	8(%ebx,%eax), %edi
L289:
	movl	%edi, %eax
	subl	$1, %ebp
	sall	$5, %eax
	movswl	10(%ebx,%eax), %eax
	testw	%ax, %ax
	jns	L294
	cmpl	%edi, 20(%esp)
	je	L258
	testl	%ebp, %ebp
	je	L255
	movl	%edi, %eax
	sarl	$3, %eax
	movzbl	__ZL7visited.lto_priv.0(%eax), %ebx
	movl	%edi, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	jmp	L256
L291:
	movl	52(%esp), %ebx
	.cfi_restore 3
	movl	56(%esp), %esi
	.cfi_restore 6
	movl	64(%esp), %ebp
	.cfi_restore 5
L239:
	movl	$0, 24(%esp)
L238:
	movl	24(%esp), %eax
	movl	60(%esp), %edi
	addl	$68, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L292:
	.cfi_def_cfa_offset 72
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpw	$0, 18(%esp)
	je	L245
	movl	_wall, %ebx
	sall	$5, %edi
	leal	(%ebx,%edi), %esi
	jmp	L246
	.p2align 4,,10
	.p2align 3
L245:
	cmpl	$16383, 24(%esp)
	jg	L247
	movl	%edi, %eax
	movl	_wall, %ebx
	sall	$5, %eax
	movl	%eax, 32(%esp)
	leal	(%ebx,%eax), %esi
L248:
	movl	24(%esp), %ecx
	movl	(%esi), %eax
	movl	%ecx, %edx
	addl	$1, %ecx
	sall	$5, %edx
	movl	%ecx, 36(%esp)
	movl	%eax, (%ebx,%edx)
	movl	4(%esi), %eax
	movl	%eax, 4(%ebx,%edx)
	movl	8(%esi), %eax
	movl	%eax, 8(%ebx,%edx)
	movl	12(%esi), %eax
	movl	%eax, 12(%ebx,%edx)
	movl	16(%esi), %eax
	movl	%eax, 16(%ebx,%edx)
	movl	20(%esi), %eax
	movl	%eax, 20(%ebx,%edx)
	movl	24(%esi), %eax
	movl	%eax, 24(%ebx,%edx)
	movl	28(%esi), %eax
	movl	$-1, %esi
	movl	%eax, 28(%ebx,%edx)
	movl	_wall, %ebx
	leal	(%ebx,%edx), %eax
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	leal	30(%eax), %edx
	subl	%ebx, %edx
	movw	%cx, 8(%eax)
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	leal	10(%eax), %edx
	subl	%ebx, %edx
	movw	%si, 30(%eax)
	movl	$-1, %esi
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movl	$-1, %edx
	movw	%dx, 10(%eax)
	leal	12(%eax), %edx
	subl	%ebx, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movw	%si, 12(%eax)
	cmpw	$-1, 72(%esp)
	jne	L250
	movl	32(%esp), %esi
	movl	%ecx, 24(%esp)
	xorl	%ecx, %ecx
	movw	%cx, 18(%esp)
	addl	%ebx, %esi
	jmp	L246
	.p2align 4,,10
	.p2align 3
L250:
	movzwl	_editstatus, %eax
	movw	%ax, 18(%esp)
	testw	%ax, %ax
	je	L295
	movswl	24(%esp), %eax
	movl	44(%esp), %edx
	movswl	%di, %ecx
	call	_yax_setnextwall.part.0
	movl	32(%esp), %esi
	movl	36(%esp), %eax
	xorl	%edx, %edx
	movl	_wall, %ebx
	movw	%dx, 18(%esp)
	movl	%eax, 24(%esp)
	addl	%ebx, %esi
	jmp	L246
L293:
	cmpl	$16383, 24(%esp)
	jg	L247
	movzwl	__ZL9onextwall.lto_priv.0(%edi,%edi), %eax
	movl	24(%esp), %ecx
	movw	%ax, __ZL9onextwall.lto_priv.0(%ecx,%ecx)
	jmp	L248
	.p2align 4,,10
	.p2align 3
L255:
	cmpl	%edi, 20(%esp)
	jne	L296
L258:
	movl	28(%esp), %eax
	testl	%eax, %eax
	je	L288
	movzwl	18(%esp), %esi
	movl	40(%esp), %ecx
	movw	%si, (%eax)
	testl	%ecx, %ecx
	je	L288
	movzwl	50(%esp), %eax
	movw	%ax, (%ecx)
	movl	24(%esp), %eax
	movl	52(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	56(%esp), %esi
	.cfi_restore 6
	movl	64(%esp), %ebp
	.cfi_restore 5
	movl	60(%esp), %edi
	addl	$68, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L295:
	.cfi_restore_state
	movswl	24(%esp), %edx
	movswl	72(%esp), %eax
	movl	32(%esp), %esi
	leal	(%eax,%edx,2), %eax
	movw	%di, _yax_nextwall(%eax,%eax)
	movl	36(%esp), %eax
	addl	%ebx, %esi
	movl	%eax, 24(%esp)
	jmp	L246
L288:
	movl	24(%esp), %eax
	movl	52(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	56(%esp), %esi
	.cfi_restore 6
	movl	64(%esp), %ebp
	.cfi_restore 5
	movl	60(%esp), %edi
	addl	$68, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L247:
	.cfi_restore_state
	movl	$LC6, (%esp)
	call	_message
	movl	52(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	56(%esp), %esi
	.cfi_restore 6
	movl	$-2, 24(%esp)
	movl	64(%esp), %ebp
	.cfi_restore 5
	movl	24(%esp), %eax
	movl	60(%esp), %edi
	addl	$68, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L296:
	.cfi_restore_state
	movl	$LC7, (%esp)
	call	_message
	movl	52(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	56(%esp), %esi
	.cfi_restore 6
	movl	$-3, 24(%esp)
	movl	64(%esp), %ebp
	.cfi_restore 5
	jmp	L238
L261:
	.cfi_restore_state
	movl	52(%esp), %ebx
	.cfi_restore 3
	movl	56(%esp), %esi
	.cfi_restore 6
	movl	$-1, 24(%esp)
	movl	64(%esp), %ebp
	.cfi_restore 5
	jmp	L238
	.cfi_endproc
LFE23:
	.p2align 4
	.globl	__ZL18backup_drawn_wallsi.lto_priv.0
	.def	__ZL18backup_drawn_wallsi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL18backup_drawn_wallsi.lto_priv.0:
LFB24:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	testl	%eax, %eax
	jne	L298
	movzwl	_newnumwalls, %eax
	cmpw	$-1, %ax
	je	L299
	cmpw	_numwalls, %ax
	jle	L306
	movl	__ZZL18backup_drawn_wallsiE7tmpwall, %eax
	movl	_g_sm_heap, %ecx
	movl	%edi, 24(%esp)
	movl	%eax, (%esp)
	.cfi_offset 7, -12
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	movswl	_newnumwalls, %eax
	movswl	_numwalls, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	_g_sm_heap, %ecx
	subl	%edx, %eax
	sall	$5, %eax
	movl	%eax, (%esp)
	movl	%eax, %edi
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L301
	movl	%eax, __ZZL18backup_drawn_wallsiE7tmpwall
	movswl	_newnumwalls, %edx
	movswl	_numwalls, %eax
	movl	%ecx, (%esp)
	subl	%eax, %edx
	sall	$5, %eax
	addl	_wall, %eax
	movl	%edx, __ZL3ovh.lto_priv.0
	sall	$5, %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	call	_memcpy
	movl	$-1, %eax
	movl	24(%esp), %edi
	.cfi_restore 7
	movw	%ax, _newnumwalls
L299:
	xorl	%eax, %eax
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L298:
	.cfi_restore_state
	movl	__ZZL18backup_drawn_wallsiE7tmpwall, %edx
	testl	%edx, %edx
	je	L299
	cmpl	$1, %eax
	je	L314
L303:
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	$0, __ZZL18backup_drawn_wallsiE7tmpwall
	movl	$0, __ZL3ovh.lto_priv.0
	jmp	L299
	.p2align 4,,10
	.p2align 3
L306:
	movl	$2, %eax
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L314:
	.cfi_restore_state
	movl	__ZL3ovh.lto_priv.0, %ecx
	movswl	_numwalls, %eax
	movl	%esi, 20(%esp)
	.cfi_offset 6, -16
	leal	(%eax,%ecx), %esi
	cmpl	$16383, %esi
	jle	L315
	movl	20(%esp), %esi
	.cfi_restore 6
	jmp	L303
	.p2align 4,,10
	.p2align 3
L315:
	.cfi_offset 6, -16
	sall	$5, %ecx
	sall	$5, %eax
	addl	_wall, %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edi, 24(%esp)
	movl	%edx, 12(%esp)
	.cfi_offset 7, -12
	call	_memcpy
	movswl	_numwalls, %ecx
	movl	%esi, %eax
	movl	12(%esp), %edx
	cwtl
	movw	%si, _newnumwalls
	cmpl	%eax, %ecx
	movl	%eax, %edi
	jge	L313
	movl	_wall, %esi
	movl	%ecx, %eax
	movl	%ebx, 16(%esp)
	sall	$5, %eax
	movl	%ebp, 28(%esp)
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	movl	%esi, %ebp
	leal	8(%esi,%eax), %esi
	.p2align 5
	.p2align 4
	.p2align 3
L304:
	movl	%esi, %eax
	addl	$1, %ecx
	leal	32(%esi), %esi
	subl	%ebp, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%cx, -32(%esi)
	cmpl	%edi, %ecx
	jne	L304
	movl	16(%esp), %ebx
	.cfi_restore 3
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
	movl	28(%esp), %ebp
	.cfi_restore 5
	jmp	L303
	.p2align 4,,10
	.p2align 3
L301:
	.cfi_offset 7, -12
	movl	%edi, %eax
	movl	%ebx, 16(%esp)
	movl	%esi, 20(%esp)
	movl	%ebp, 28(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	call	__Z13handle_memerri
L313:
	.cfi_restore 3
	.cfi_restore 5
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
	jmp	L303
	.cfi_endproc
LFE24:
	.p2align 4
	.globl	_reset_highlightsector
	.def	_reset_highlightsector;	.scl	2;	.type	32;	.endef
_reset_highlightsector:
LFB25:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_hlsectorbitmap, (%esp)
	call	_memset
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	jmp	_update_highlightsector
	.cfi_endproc
LFE25:
	.p2align 4
	.globl	_reset_highlight
	.def	_reset_highlight;	.scl	2;	.type	32;	.endef
_reset_highlight:
LFB26:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_show2dwall, (%esp)
	call	_memset
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_show2dsprite, (%esp)
	call	_memset
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	jmp	_update_highlight
	.cfi_endproc
LFE26:
	.p2align 4
	.globl	__ZL16collect_sectors1PsPhS_sii.lto_priv.0
	.def	__ZL16collect_sectors1PsPhS_sii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL16collect_sectors1PsPhS_sii.lto_priv.0:
LFB27:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%ecx, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	movl	%edx, (%esp)
	movzwl	60(%esp), %ebx
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 24(%esp)
	call	_memset
	movswl	%bx, %eax
	movw	%bx, (%edi)
	movl	$1, %ecx
	sarl	$3, %eax
	andl	$7, %ebx
	movl	%ebp, 28(%esp)
	movzbl	__ZL8pow2char.lto_priv.1(%ebx), %edx
	orb	%dl, (%esi,%eax)
	movw	%cx, 0(%ebp)
	xorl	%ebp, %ebp
	.p2align 4
	.p2align 3
L332:
	movl	24(%esp), %eax
	movswl	(%eax,%ebp,2), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %ebx
	movswl	2(%eax), %esi
	addl	%ebx, %esi
	cmpl	%esi, %ebx
	jge	L321
	movl	68(%esp), %edx
	testl	%edx, %edx
	jne	L345
	movl	%ebp, 20(%esp)
	sall	$5, %ebx
	sall	$5, %esi
	jmp	L324
	.p2align 5
	.p2align 4,,10
	.p2align 3
L323:
	addl	$32, %ebx
	cmpl	%esi, %ebx
	je	L347
L324:
	movl	_wall, %eax
	movzwl	12(%eax,%ebx), %eax
	testw	%ax, %ax
	js	L323
	movl	12(%esp), %edi
	movswl	%ax, %edx
	movl	%eax, %ecx
	sarl	$3, %edx
	andl	$7, %ecx
	addl	%edx, %edi
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	movl	%edi, 16(%esp)
	movzbl	(%edi), %edi
	movl	%edi, %ebp
	notl	%ebp
	movl	%ebp, %edx
	testb	%cl, %dl
	je	L323
	orl	%edi, %ecx
	movl	16(%esp), %edi
	addl	$32, %ebx
	movb	%cl, (%edi)
	movl	28(%esp), %edi
	movswl	(%edi), %edx
	leal	1(%edx), %ecx
	movw	%cx, (%edi)
	movl	24(%esp), %ecx
	movw	%ax, (%ecx,%edx,2)
	cmpl	%esi, %ebx
	jne	L324
L347:
	movl	20(%esp), %ebp
L321:
	movl	64(%esp), %eax
	testl	%eax, %eax
	jne	L348
L327:
	movl	28(%esp), %eax
	addl	$1, %ebp
	movswl	(%eax), %eax
	cmpl	%ebp, %eax
	jg	L332
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
L345:
	.cfi_restore_state
	movl	%ebp, 32(%esp)
	jmp	L322
	.p2align 4,,10
	.p2align 3
L325:
	movswl	__ZL9onextwall.lto_priv.0+0(%ebx,%ebx), %eax
	testw	%ax, %ax
	jns	L349
L326:
	addl	$1, %ebx
	cmpl	%ebx, %esi
	je	L350
L322:
	movl	%ebx, %eax
	sall	$5, %eax
	addl	_wall, %eax
	movzwl	12(%eax), %eax
	testw	%ax, %ax
	js	L325
	movswl	%ax, %edx
	movl	%eax, %edi
	sarl	$3, %edx
	addl	12(%esp), %edx
	andl	$7, %edi
	movzbl	(%edx), %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%edi), %edi
	movl	%edx, 16(%esp)
	movb	%cl, 20(%esp)
	notl	%ecx
	movl	%ecx, %edx
	movl	%edi, %ecx
	testb	%cl, %dl
	je	L326
	movzbl	20(%esp), %ecx
	movl	16(%esp), %edx
	addl	$1, %ebx
	orl	%edi, %ecx
	movl	28(%esp), %edi
	movb	%cl, (%edx)
	movswl	(%edi), %edx
	leal	1(%edx), %ecx
	movw	%cx, (%edi)
	movl	24(%esp), %ecx
	movw	%ax, (%ecx,%edx,2)
	cmpl	%ebx, %esi
	jne	L322
L350:
	movl	64(%esp), %eax
	movl	32(%esp), %ebp
	testl	%eax, %eax
	je	L327
L348:
	movl	24(%esp), %eax
	movswl	(%eax,%ebp,2), %ebx
	movl	%ebx, %eax
	call	_yax_getbunch.constprop.1
	movw	%ax, 36(%esp)
	movl	%ebx, %eax
	call	_yax_getbunch.constprop.0
	xorl	%ecx, %ecx
	movl	%ebp, %edx
	movw	%ax, 38(%esp)
	movswl	36(%esp,%ecx,2), %eax
	testw	%ax, %ax
	jns	L351
L328:
	cmpl	$1, %ecx
	jne	L333
	movl	%edx, %ebp
	jmp	L327
	.p2align 4,,10
	.p2align 3
L349:
	call	_sectorofwall
	movl	%eax, %ecx
	sarl	$3, %eax
	addl	12(%esp), %eax
	movl	%eax, 16(%esp)
	movl	%ecx, %edi
	movzbl	(%eax), %eax
	andl	$7, %edi
	movl	%eax, %edx
	movzbl	__ZL8pow2char.lto_priv.1(%edi), %edi
	movb	%al, 20(%esp)
	notl	%edx
	movl	%edx, %eax
	movl	%edi, %edx
	testb	%dl, %al
	je	L326
	movzbl	20(%esp), %edx
	movl	16(%esp), %eax
	orl	%edi, %edx
	movl	28(%esp), %edi
	movb	%dl, (%eax)
	movswl	(%edi), %eax
	leal	1(%eax), %edx
	movw	%dx, (%edi)
	movl	24(%esp), %edx
	movw	%cx, (%edx,%eax,2)
	jmp	L326
	.p2align 4,,10
	.p2align 3
L333:
	movl	$1, %ecx
	movswl	36(%esp,%ecx,2), %eax
	testw	%ax, %ax
	js	L328
L351:
	movl	%ecx, %edi
	xorl	$1, %edi
	movl	%edi, %ebx
	sall	$8, %ebx
	addl	%eax, %ebx
	movswl	_headsectbunch(%ebx,%ebx), %eax
	cmpl	$-1, %eax
	je	L328
	movl	%edx, 20(%esp)
	movl	28(%esp), %ebp
	sall	$12, %edi
	movl	%ecx, 32(%esp)
	.p2align 4
	.p2align 3
L330:
	movl	12(%esp), %esi
	movl	%eax, %edx
	movl	%eax, %ebx
	sarl	$3, %edx
	andl	$7, %ebx
	addl	%edx, %esi
	movzbl	__ZL8pow2char.lto_priv.1(%ebx), %ebx
	movzbl	(%esi), %ecx
	movl	%esi, 16(%esp)
	movl	%ecx, %esi
	notl	%esi
	movl	%esi, %edx
	testb	%bl, %dl
	je	L329
	movl	16(%esp), %esi
	orl	%ebx, %ecx
	movb	%cl, (%esi)
	movswl	0(%ebp), %edx
	movl	24(%esp), %esi
	leal	1(%edx), %ecx
	movw	%cx, 0(%ebp)
	movw	%ax, (%esi,%edx,2)
L329:
	addl	%edi, %eax
	movswl	_nextsectbunch(%eax,%eax), %eax
	cmpl	$-1, %eax
	jne	L330
	movl	20(%esp), %edx
	movl	32(%esp), %ecx
	jmp	L328
	.cfi_endproc
LFE27:
	.section .rdata,"dr"
	.align 4
LC8:
	.ascii "Wall %d already first wall of sector %d\0"
	.align 4
LC9:
	.ascii "This wall now sector %d's first wall (sector[].wallptr)\0"
	.align 4
LC10:
	.ascii "Set first walls (sector[].wallptr) for %d sectors\0"
	.text
	.p2align 4
	.globl	_SetFirstWall.constprop.0
	.def	_SetFirstWall.constprop.0;	.scl	2;	.type	32;	.endef
_SetFirstWall.constprop.0:
LFB31:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	_sector, %ecx
	movl	%eax, 16(%esp)
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	movl	%esi, 28(%esp)
	movswl	(%eax), %eax
	movl	%edx, 20(%esp)
	cmpl	%edx, %eax
	.cfi_offset 6, -16
	je	L353
	movzwl	_numwalls, %edx
	movl	%ebx, 24(%esp)
	movl	%edi, 32(%esp)
	movl	%ebp, 36(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	testw	%dx, %dx
	jle	L354
	andb	$-2, _editwall
	movswl	%dx, %ebx
	movl	$1, %eax
	cmpw	$1, %dx
	je	L354
	.p2align 5
	.p2align 4
	.p2align 3
L355:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	andl	$7, %edx
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
	notl	%edx
	andb	%dl, _editwall(%ecx)
	cmpl	%ebx, %eax
	jne	L355
L354:
	movl	$0, 12(%esp)
L357:
	movl	16(%esp), %ebp
	movl	12(%esp), %esi
	movl	%ebp, %edi
	movl	%esi, %ebx
	movl	20(%esp), %ebp
	sall	$8, %esi
	jmp	L363
	.p2align 4,,10
	.p2align 3
L358:
	movswl	%di, %eax
	movl	%ebx, %edx
	call	_yax_getbunch.part.0
	testw	%ax, %ax
	js	L360
L380:
	cwtl
	movswl	_headsectbunch(%eax,%eax), %edx
	testl	%edx, %edx
	js	L360
	cmpw	$0, _nextsectbunch(%edx,%edx)
	jns	L360
	movswl	_headsectbunch+512(%eax,%eax), %edx
	testl	%edx, %edx
	js	L360
	cmpw	$0, _nextsectbunch+8192(%edx,%edx)
	jns	L360
	addl	%esi, %eax
	movswl	_headsectbunch(%eax,%eax), %edi
	testl	%edi, %edi
	js	L360
	movswl	%bp, %eax
	movl	%ebx, %edx
	call	_yax_getnextwall
	movswl	%ax, %ebp
	testl	%ebp, %ebp
	js	L360
	movl	%ebp, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	orb	%al, _editwall(%edx)
L363:
	cmpw	$0, _editstatus
	jne	L358
	movl	12(%esp), %eax
	movswl	%di, %ecx
	leal	(%eax,%ecx,2), %eax
	movzwl	_yax_bunchnum(%eax,%eax), %eax
	testw	%ax, %ax
	jns	L380
	.p2align 4
	.p2align 3
L360:
	cmpl	$1, 12(%esp)
	je	L362
	movl	$1, 12(%esp)
	jmp	L357
	.p2align 4,,10
	.p2align 3
L362:
	cmpw	$0, _numsectors
	jle	L364
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L369:
	movl	_sector, %edx
	leal	(%ebx,%ebx,4), %eax
	leal	(%edx,%eax,8), %eax
	movswl	(%eax), %edx
	movswl	2(%eax), %edi
	addl	%edx, %edi
	cmpl	%edi, %edx
	jge	L366
	movl	%ebx, %ebp
	jmp	L365
	.p2align 6
	.p2align 4,,10
	.p2align 3
L367:
	addl	$1, %edx
	cmpl	%edx, %edi
	je	L381
L365:
	movl	%edx, %eax
	movl	%edx, %ecx
	andl	$7, %eax
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	movzbl	_editwall(%ecx), %ebx
	andl	%eax, %ebx
	cmpb	%bl, %al
	jne	L367
	movswl	%dx, %edx
	movswl	%bp, %eax
	movl	%ebp, %ebx
	addl	$1, %esi
	call	_setfirstwall
L366:
	movswl	_numsectors, %eax
	addl	$1, %ebx
	cmpl	%eax, %ebx
	jl	L369
	testl	%esi, %esi
	jne	L370
L364:
	movl	16(%esp), %eax
	movl	$LC9, (%esp)
	movl	%eax, 4(%esp)
	call	_message
L371:
	movswl	16(%esp), %eax
	movswl	20(%esp), %edx
	call	_setfirstwall
	movl	$1, %eax
	movl	24(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	$0, _chsecptr_onextwall
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
	movw	%ax, _asksave
	movl	28(%esp), %esi
	addl	$40, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L381:
	.cfi_restore_state
	movl	%ebp, %ebx
	jmp	L366
L370:
	addl	$1, %esi
	movl	$LC10, (%esp)
	movl	%esi, 4(%esp)
	call	_message
	jmp	L371
L353:
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 7
	movl	16(%esp), %esi
	movl	%eax, 4(%esp)
	movl	$LC8, (%esp)
	movl	%esi, 8(%esp)
	call	_message
	movl	28(%esp), %esi
	addl	$40, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE31:
	.p2align 4
	.globl	_handlesecthighlight1
	.def	_handlesecthighlight1;	.scl	2;	.type	32;	.endef
_handlesecthighlight1:
LFB34:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%ebx, (%esp)
	.cfi_offset 3, -16
	movl	%edx, %ebx
	movl	%eax, %edx
	movl	%esi, 4(%esp)
	andl	$7, %edx
	.cfi_offset 6, -12
	movl	%ecx, %esi
	movl	%eax, %ecx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
	sarl	$3, %ecx
	testl	%ebx, %ebx
	je	L383
	movl	%edi, 8(%esp)
	.cfi_offset 7, -8
	notl	%edx
	leal	(%eax,%eax,4), %edi
	andb	%dl, _hlsectorbitmap(%ecx)
	movl	_sector, %edx
	sall	$3, %edi
	addl	%edi, %edx
	cmpw	$0, 2(%edx)
	jle	L390
	movswl	(%edx), %ebx
	movswl	%ax, %esi
	.p2align 4
	.p2align 3
L386:
	movl	%ebx, %edx
	sall	$5, %edx
	addl	_wall, %edx
	movswl	10(%edx), %eax
	testw	%ax, %ax
	js	L385
	movswl	12(%edx), %edx
	call	_checksectorpointer
L385:
	movswl	%bx, %eax
	movl	%esi, %edx
	addl	$1, %ebx
	call	_checksectorpointer
	movl	_sector, %edx
	addl	%edi, %edx
	movswl	(%edx), %eax
	movswl	2(%edx), %edx
	addl	%edx, %eax
	cmpl	%eax, %ebx
	jl	L386
L390:
	movl	8(%esp), %edi
	.cfi_restore 7
L382:
	movl	(%esp), %ebx
	movl	4(%esp), %esi
	addl	$12, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L383:
	.cfi_restore_state
	testl	%esi, %esi
	je	L391
	orb	%dl, _hlsectorbitmap(%ecx)
L392:
	movl	(%esp), %ebx
	movl	4(%esp), %esi
	addl	$12, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L391:
	.cfi_restore_state
	movzbl	_graysectbitmap(%ecx), %eax
	andl	%edx, %eax
	cmpb	%dl, %al
	je	L382
	orb	%dl, _hlsectorbitmap(%ecx)
	jmp	L392
	.cfi_endproc
LFE34:
	.p2align 4
	.globl	__ZL22hl_all_bunch_sectors_pv.lto_priv.0
	.def	__ZL22hl_all_bunch_sectors_pv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL22hl_all_bunch_sectors_pv.lto_priv.0:
LFB36:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%esi, 16(%esp)
	.cfi_offset 6, -12
	movl	_numyaxbunches, %esi
	testl	%esi, %esi
	jg	L418
L394:
	movl	16(%esp), %esi
	movl	$1, %eax
	addl	$24, %esp
	.cfi_remember_state
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L418:
	.cfi_restore_state
	leal	7(%esi), %eax
	movl	$0, 4(%esp)
	sarl	$3, %eax
	movl	$__ZL7visited.lto_priv.0, (%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, 12(%esp)
	movl	%edi, 20(%esp)
	.cfi_offset 3, -16
	.cfi_offset 7, -8
	call	_memset
	cmpw	$0, _highlightsectorcnt
	jle	L395
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L398:
	movswl	_highlightsector(%esi,%esi), %edi
	movl	%edi, %eax
	call	_yax_getbunch.constprop.1
	movl	%eax, %ebx
	movl	%edi, %eax
	call	_yax_getbunch.constprop.0
	testw	%bx, %bx
	js	L396
	movswl	%bx, %edx
	andl	$7, %ebx
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%ebx), %ecx
	orb	%cl, __ZL7visited.lto_priv.0(%edx)
L396:
	testw	%ax, %ax
	js	L397
	movswl	%ax, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	orb	%al, __ZL7visited.lto_priv.0(%edx)
L397:
	movswl	_highlightsectorcnt, %eax
	addl	$1, %esi
	cmpl	%eax, %esi
	jl	L398
	movl	_numyaxbunches, %esi
	testl	%esi, %esi
	jle	L416
L395:
	movl	$1, %eax
	xorl	%edi, %edi
	jmp	L405
	.p2align 6
	.p2align 4,,10
	.p2align 3
L400:
	addl	$1, %edi
	cmpl	%esi, %edi
	je	L416
	movl	%edi, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
L405:
	movl	%edi, %ecx
	sarl	$3, %ecx
	movzbl	__ZL7visited.lto_priv.0(%ecx), %ecx
	andl	%eax, %ecx
	cmpb	%al, %cl
	jne	L400
	movswl	_headsectbunch(%edi,%edi), %eax
	cmpl	$-1, %eax
	jne	L403
	jmp	L401
	.p2align 6
	.p2align 4,,10
	.p2align 3
L419:
	movswl	_nextsectbunch(%eax,%eax), %eax
	cmpl	$-1, %eax
	je	L401
L403:
	movl	%eax, %edx
	movl	%eax, %ebx
	andl	$7, %edx
	sarl	$3, %ebx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
	movzbl	_hlsectorbitmap(%ebx), %ecx
	andl	%edx, %ecx
	cmpb	%dl, %cl
	je	L419
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	20(%esp), %edi
	.cfi_restore 7
	xorl	%eax, %eax
L421:
	movl	16(%esp), %esi
	addl	$24, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L401:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movswl	_headsectbunch+512(%edi,%edi), %eax
	cmpl	$-1, %eax
	jne	L404
	jmp	L400
	.p2align 6
	.p2align 4,,10
	.p2align 3
L420:
	movswl	_nextsectbunch+8192(%eax,%eax), %eax
	cmpl	$-1, %eax
	je	L400
L404:
	movl	%eax, %edx
	movl	%eax, %ebx
	andl	$7, %edx
	sarl	$3, %ebx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
	movzbl	_hlsectorbitmap(%ebx), %ecx
	andl	%edx, %ecx
	cmpb	%cl, %dl
	je	L420
	movl	12(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	20(%esp), %edi
	.cfi_restore 7
	xorl	%eax, %eax
	jmp	L421
	.p2align 4,,10
	.p2align 3
L416:
	.cfi_restore_state
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	20(%esp), %edi
	.cfi_restore 7
	jmp	L394
	.cfi_endproc
LFE36:
	.p2align 4
	.globl	__ZL20bakframe_fillandfadePPciPKc.lto_priv.0
	.def	__ZL20bakframe_fillandfadePPciPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL20bakframe_fillandfadePPciPKc.lto_priv.0:
LFB38:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%ecx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edx, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L427
	call	_videoBeginDrawing
	movl	_xdim, %eax
	movl	(%esi), %edx
	imull	_ydim, %eax
	movl	%edx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	_frameplace, %eax
	movl	%eax, (%esp)
	call	_memcpy
	call	_videoEndDrawing
L425:
	movzbl	_editorcolors+9, %edx
	movswl	%bx, %eax
	xorl	%ecx, %ecx
	call	_fillsector_maybetrans.isra.0
	movzbl	_editorcolors+9, %eax
	call	_fade_editor_screen
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%edi, %eax
	xorl	%edx, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_ask_if_sure
	.p2align 4,,10
	.p2align 3
L427:
	.cfi_restore_state
	movl	_xdim, %edx
	imull	_ydim, %edx
	movl	_g_sm_heap, %ecx
	movl	%edx, (%esp)
	movl	%edx, 12(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	testl	%eax, %eax
	je	L424
	movl	%eax, (%esi)
	call	_videoBeginDrawing
	movl	_xdim, %eax
	movl	(%esi), %edx
	imull	_ydim, %eax
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	movl	_frameplace, %eax
	movl	%eax, 4(%esp)
	call	_memcpy
	call	_videoEndDrawing
	jmp	L425
	.p2align 4,,10
	.p2align 3
L424:
	movl	12(%esp), %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE38:
	.p2align 4
	.globl	__ZL15M32_InsertPointiiisPi.lto_priv.0
	.def	__ZL15M32_InsertPointiiisPi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL15M32_InsertPointiiisPi.lto_priv.0:
LFB39:
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
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	cwtl
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	_wall, %ecx
	movl	%edx, 8(%esp)
	movl	%eax, %edx
	movswl	32(%esp), %ebp
	sall	$5, %edx
	testb	$12, 15(%ecx,%edx)
	jne	L433
	movl	%ebx, %edx
	sall	$5, %edx
	movswl	10(%ecx,%edx), %edx
	testw	%dx, %dx
	js	L432
	sall	$5, %edx
	testb	$12, 15(%ecx,%edx)
	je	L432
L433:
	movzwl	_numwalls, %edx
	testw	%dx, %dx
	jle	L430
	andb	$-2, _editwall
	movswl	%dx, %edi
	movl	$1, %eax
	cmpw	$1, %dx
	je	L430
	.p2align 5
	.p2align 4
	.p2align 3
L431:
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	andl	$7, %edx
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
	notl	%edx
	andb	%dl, _editwall(%ecx)
	cmpl	%edi, %eax
	jne	L431
L430:
	movl	%ebx, %eax
	call	__ZL22M32_MarkPointInsertioni
	cmpw	$0, _numwalls
	jle	L434
	movl	$1, %eax
	xorl	%ebx, %ebx
	jmp	L437
	.p2align 6
	.p2align 4,,10
	.p2align 3
L435:
	movswl	_numwalls, %edx
	addl	$1, %ebx
	movl	%edx, %ecx
	cmpl	%ebx, %edx
	jle	L436
	movl	%ebx, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
L437:
	movl	%ebx, %edx
	sarl	$3, %edx
	movzbl	_editwall(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%al, %cl
	jne	L435
	movl	%ebx, %eax
	call	__ZL22M32_MarkPointInsertioni
	jmp	L435
	.p2align 4,,10
	.p2align 3
L436:
	testl	%edx, %edx
	jle	L434
	movzbl	_editwall, %eax
	movl	%eax, %edi
	andl	$1, %edi
	cmpl	$1, %edx
	je	L440
	movw	%dx, 4(%esp)
	movl	$1, %eax
	movw	%bp, 32(%esp)
	movl	%edx, %ebp
	.p2align 6
	.p2align 4
	.p2align 3
L441:
	movl	%eax, %edx
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %ebx
	movl	%eax, %edx
	sarl	$3, %edx
	movzbl	_editwall(%edx), %ecx
	xorl	%edx, %edx
	andl	%ebx, %ecx
	cmpb	%bl, %cl
	sete	%dl
	addl	$1, %eax
	addl	%edx, %edi
	cmpl	%eax, %ebp
	jne	L441
	movswl	32(%esp), %ebp
	movswl	4(%esp), %ecx
L440:
	cmpw	%bp, %cx
	cmovge	%ecx, %ebp
	addl	%edi, %ebp
	cmpl	$16384, %ebp
	jg	L434
	movw	%cx, 4(%esp)
	movl	$1, %eax
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	jmp	L447
	.p2align 6
	.p2align 4,,10
	.p2align 3
L443:
	movswl	4(%esp), %eax
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jle	L446
L468:
	movl	%ebx, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
L447:
	movl	%ebx, %edx
	sarl	$3, %edx
	movzbl	_editwall(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%al, %cl
	jne	L443
	movl	%ebx, %eax
	sall	$5, %eax
	addl	_wall, %eax
	movswl	10(%eax), %eax
	testw	%ax, %ax
	js	L455
	cmpl	%ebx, %eax
	jle	L443
L455:
	movl	36(%esp), %ecx
	movl	8(%esp), %edx
	movswl	%bx, %eax
	addl	$1, %ebx
	movl	%ecx, (%esp)
	movl	%esi, %ecx
	call	__ZL11insertpointsiiPi.lto_priv.0
	addl	%eax, %ebp
	movzwl	_numwalls, %eax
	movw	%ax, 4(%esp)
	movswl	4(%esp), %eax
	cmpl	%ebx, %eax
	jg	L468
L446:
	cmpw	$0, 4(%esp)
	jle	L448
	movl	$1, %eax
	xorl	%ebx, %ebx
	jmp	L453
	.p2align 6
	.p2align 4,,10
	.p2align 3
L449:
	movswl	_numwalls, %eax
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jle	L448
L471:
	movl	%ebx, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
L453:
	movl	%ebx, %edx
	sarl	$3, %edx
	movzbl	_editwall(%edx), %ecx
	movl	%edx, 4(%esp)
	movl	%ecx, %esi
	notl	%esi
	movl	%esi, %edx
	testb	%al, %dl
	jne	L449
	movl	4(%esp), %esi
	notl	%eax
	xorl	%edx, %edx
	andl	%ecx, %eax
	movb	%al, _editwall(%esi)
	leal	1(%ebx), %esi
	movswl	%si, %esi
	movl	%esi, %eax
	call	_yax_getnextwall
	testw	%ax, %ax
	jns	L469
L450:
	movl	%esi, %eax
	call	_yax_getnextwall.constprop.0
	testw	%ax, %ax
	js	L449
	addl	$1, %eax
	cmpw	$0, _editstatus
	je	L470
	movswl	%ax, %ecx
	movl	$1, %edx
	movl	%esi, %eax
	addl	$1, %ebx
	call	_yax_setnextwall.part.0
	movswl	_numwalls, %eax
	cmpl	%ebx, %eax
	jg	L471
L448:
	movl	%edi, %eax
	sall	$16, %eax
	orl	%ebp, %eax
	cmpl	%edi, %ebp
	cmovne	%eax, %ebp
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	movl	%ebp, %eax
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L434:
	.cfi_restore_state
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%ebp, %ebp
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%ebp, %eax
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
L432:
	.cfi_restore_state
	movl	36(%esp), %edi
	movl	8(%esp), %edx
	movl	%esi, %ecx
	movl	$1, %ebp
	movl	%edi, (%esp)
	call	__ZL11insertpointsiiPi.lto_priv.0
	addl	$12, %esp
	.cfi_remember_state
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
	ret
	.p2align 4,,10
	.p2align 3
L469:
	.cfi_restore_state
	addl	$1, %eax
	cmpw	$0, _editstatus
	je	L472
	movswl	%ax, %ecx
	xorl	%edx, %edx
	movl	%esi, %eax
	call	_yax_setnextwall.part.0
	jmp	L450
	.p2align 4,,10
	.p2align 3
L470:
	movw	%ax, _yax_nextwall+6(,%ebx,4)
	jmp	L449
	.p2align 4,,10
	.p2align 3
L472:
	movw	%ax, _yax_nextwall+4(,%ebx,4)
	jmp	L450
	.cfi_endproc
LFE39:
	.section .rdata,"dr"
	.align 4
LC11:
	.ascii "Sloped extended sectors cannot be subdivided.\0"
	.align 4
LC12:
	.ascii "Automatically adding inner sector to new extended sector would exceed limits!\0"
	.align 4
LC13:
	.ascii "AddLoopToSector: newnumwalls != newnumwalls2!!! WTF?\0"
	.text
	.p2align 4
	.globl	__ZL15AddLoopToSectoriPi.lto_priv.0
	.def	__ZL15AddLoopToSectoriPi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL15AddLoopToSectoriPi.lto_priv.0:
LFB40:
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
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$56, %esp
	.cfi_def_cfa_offset 76
	movl	%eax, 20(%esp)
	cwtl
	movl	%edx, 32(%esp)
	movl	%eax, %edi
	movl	%eax, 52(%esp)
	call	_yax_getbunch.constprop.1
	movw	%ax, 18(%esp)
	movl	%edi, %eax
	call	_yax_getbunch.constprop.0
	movswl	_numwalls, %ebx
	movw	%ax, 50(%esp)
	movl	%eax, %ecx
	leal	(%esi,%esi,4), %eax
	leal	0(,%eax,8), %esi
	movl	%esi, 12(%esp)
	movswl	_newnumwalls, %esi
	movl	%esi, %ebp
	subl	%ebx, %ebp
	leal	(%esi,%ebp), %edx
	movl	%edx, 28(%esp)
	cmpw	$0, 18(%esp)
	js	L517
	movl	12(%esp), %eax
	addl	_sector, %eax
	testb	$2, 12(%eax)
	jne	L477
	cmpw	$0, 50(%esp)
	jns	L479
L480:
	cmpl	$16384, 28(%esp)
	jg	L481
	cmpw	$4095, _numsectors
	jg	L481
	movl	$1, 44(%esp)
	movb	$1, 49(%esp)
L476:
	movl	%ebx, %eax
	call	_clockdir
	testl	%eax, %eax
	je	L518
L484:
	movl	12(%esp), %esi
	movl	$-858993459, %ebx
	movl	_sector, %ecx
	leal	2(%esi), %eax
	addl	%esi, %ecx
	mull	%ebx
	movl	20(%esp), %eax
	leal	1(%eax), %edi
	movswl	_numsectors, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	addw	%bp, 2(%ecx)
	cmpl	%edi, %eax
	jle	L485
	leal	40(%esi), %ecx
	movl	$-858993459, %esi
	.p2align 6
	.p2align 4
	.p2align 3
L486:
	movl	%ecx, %eax
	movl	_sector, %ebx
	addl	$1, %edi
	mull	%esi
	addl	%ecx, %ebx
	addl	$40, %ecx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	addw	%bp, (%ebx)
	movswl	_numsectors, %eax
	cmpl	%edi, %eax
	jg	L486
L485:
	movl	12(%esp), %edi
	movl	_sector, %eax
	movswl	_numwalls, %ebx
	movswl	(%eax,%edi), %eax
	movl	%eax, 24(%esp)
	movl	%eax, %edi
	testw	%bx, %bx
	jle	L487
	movl	_wall, %eax
	sall	$5, %ebx
	movl	$8, %edx
	addl	$8, %ebx
	addl	$8, %eax
	.p2align 4
	.p2align 3
L490:
	cmpw	2(%eax), %di
	jg	L488
	leal	2(%edx), %ecx
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	addw	%bp, 2(%eax)
L488:
	cmpw	(%eax), %di
	jg	L489
	movl	%edx, %ecx
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	addw	%bp, (%eax)
L489:
	addl	$32, %edx
	addl	$32, %eax
	cmpl	%ebx, %edx
	jne	L490
L487:
	movl	24(%esp), %esi
	movswl	%bp, %edx
	movl	%esi, %eax
	movl	%esi, %ebx
	call	__ZL14yax_tweakwallsss.lto_priv.0
	movswl	_newnumwalls, %eax
	sall	$5, %ebx
	leal	(%esi,%ebp), %ecx
	movl	_wall, %edx
	movl	%ecx, 12(%esp)
	subl	%esi, %eax
	sall	$5, %eax
	movl	%eax, 8(%esp)
	leal	(%edx,%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, %eax
	sall	$5, %eax
	addl	%eax, %edx
	movl	%edx, (%esp)
	call	_memmove
	movl	%ebp, %eax
	movl	_wall, %edx
	sall	$5, %eax
	movl	%eax, 8(%esp)
	movswl	_newnumwalls, %eax
	sall	$5, %eax
	addl	%edx, %eax
	addl	%ebx, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memmove
	movl	12(%esp), %ecx
	cmpl	%esi, %ecx
	jle	L491
	leal	(%edi,%ebp), %edx
	movl	_wall, %eax
	movw	%di, 36(%esp)
	movl	%esi, %ebx
	movswl	%dx, %edx
	movl	%ebp, 40(%esp)
	movl	%ecx, %edi
	movl	%esi, %ebp
	movl	%edx, 12(%esp)
	.p2align 4
	.p2align 3
L492:
	movswl	_numwalls, %edx
	movl	%ebp, %ecx
	movl	%ebx, %esi
	sall	$5, %esi
	subl	%edx, %ecx
	movl	%ebx, %edx
	andl	$134217727, %edx
	addl	$1, _wallchanged(,%edx,4)
	movl	12(%esp), %edx
	addw	%cx, 8(%eax,%esi)
	movswl	%bx, %eax
	movl	$1, %ecx
	addl	$1, %ebx
	call	__ZL22copy_some_wall_membersssi.lto_priv.0
	movl	_wall, %eax
	movl	%esi, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	andw	$-114, 14(%eax,%esi)
	cmpl	%ebx, %edi
	jne	L492
	movzwl	36(%esp), %edi
	movl	40(%esp), %ebp
L491:
	movzwl	_newnumwalls, %eax
	movl	$-1, %edx
	movw	%dx, _newnumwalls
	movw	%ax, _numwalls
	cmpb	$0, 49(%esp)
	jne	L519
L493:
	movl	32(%esp), %eax
	testl	%eax, %eax
	je	L503
L525:
	movl	%ebp, (%eax)
L473:
	movl	44(%esp), %eax
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
L517:
	.cfi_restore_state
	testw	%cx, %cx
	js	L520
	movl	12(%esp), %eax
	addl	_sector, %eax
L479:
	testb	$2, 14(%eax)
	je	L480
L477:
	movl	$LC11, (%esp)
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	call	__printmessage16
	movl	$-1, 44(%esp)
	subw	$1, _newnumwalls
	jmp	L473
	.p2align 4,,10
	.p2align 3
L518:
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__ZL9flipwallsss.lto_priv.0
	jmp	L484
	.p2align 4,,10
	.p2align 3
L519:
	movl	24(%esp), %edx
	movl	52(%esp), %eax
	call	__ZL13whitelinescanss.lto_priv.0
	movw	%ax, _newnumwalls
	movl	%eax, %ebx
	cwtl
	cmpl	28(%esp), %eax
	jne	L521
L494:
	movzwl	_numsectors, %eax
	movswl	_numwalls, %edx
	movl	28(%esp), %esi
	movw	%ax, 12(%esp)
	cmpl	%esi, %edx
	jge	L495
	movw	%bx, 24(%esp)
	movl	_wall, %ecx
	movw	%di, 28(%esp)
	movl	%esi, %edi
	movl	%ebp, 36(%esp)
	movl	%eax, %ebp
	.p2align 4
	.p2align 3
L496:
	movl	%edx, %ebx
	sall	$5, %ebx
	movswl	10(%ecx,%ebx), %eax
	movl	%eax, %esi
	andl	$134217727, %eax
	sall	$5, %esi
	addl	$1, _wallchanged(,%eax,4)
	movw	%dx, 10(%ecx,%esi)
	movswl	10(%ecx,%ebx), %eax
	addl	$1, %edx
	movl	%eax, %ebx
	andl	$134217727, %eax
	sall	$5, %ebx
	addl	$1, _wallchanged(,%eax,4)
	movw	%bp, 12(%ecx,%ebx)
	cmpl	%edi, %edx
	jne	L496
	movzwl	24(%esp), %ebx
	movzwl	28(%esp), %edi
	movl	36(%esp), %ebp
L495:
	cmpw	$0, _editstatus
	je	L522
	movswl	12(%esp), %ebx
	movswl	18(%esp), %ecx
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_yax_setbunch.part.0
	cmpw	$0, _editstatus
	je	L523
	movswl	50(%esp), %ecx
	movl	%ebx, %eax
	movl	$1, %edx
	call	_yax_setbunch.part.0
	movzwl	_numsectors, %eax
	movzwl	_newnumwalls, %ebx
	movw	%ax, 12(%esp)
L500:
	movzwl	12(%esp), %ecx
	movl	$-1, %eax
	movw	%bx, _numwalls
	movw	%ax, _newnumwalls
	leal	1(%ecx), %eax
	movw	%ax, _numsectors
	movl	20(%esp), %eax
	movswl	_headspritesect(%eax,%eax), %esi
	testl	%esi, %esi
	js	L493
	cmpw	$4096, %cx
	ja	L493
	movl	%ebp, 20(%esp)
	movswl	%cx, %ebp
	movw	%di, 18(%esp)
	jmp	L502
	.p2align 4,,10
	.p2align 3
L501:
	testl	%esi, %esi
	js	L524
L502:
	movl	%esi, %edi
	movl	%ebp, %ecx
	movswl	_nextspritesect(%esi,%esi), %esi
	imull	$44, %edi, %ebx
	addl	_sprite, %ebx
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	call	_inside
	cmpl	$1, %eax
	jne	L501
	movzwl	24(%ebx), %eax
	cmpw	$4096, %ax
	je	L501
	cmpw	12(%esp), %ax
	je	L501
	movswl	%di, %eax
	call	_do_deletespritesect
	movl	%ebp, %edx
	movswl	%di, %eax
	call	_do_insertsprite_at_headofsect
	testl	%esi, %esi
	jns	L502
	.p2align 4
	.p2align 3
L524:
	movl	32(%esp), %eax
	movzwl	18(%esp), %edi
	movl	20(%esp), %ebp
	testl	%eax, %eax
	jne	L525
L503:
	movl	52(%esp), %eax
	leal	(%edi,%ebp), %edx
	movswl	%dx, %edx
	call	_setfirstwall
	movl	44(%esp), %eax
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
L521:
	.cfi_restore_state
	movl	$LC13, (%esp)
	call	_message
	movswl	_newnumwalls, %eax
	movl	%eax, 28(%esp)
	movl	%eax, %ebx
	jmp	L494
	.p2align 4,,10
	.p2align 3
L520:
	movl	$0, 44(%esp)
	movb	$0, 49(%esp)
	jmp	L476
	.p2align 4,,10
	.p2align 3
L522:
	movswl	12(%esp), %eax
	movzwl	18(%esp), %esi
	movw	%si, _yax_bunchnum(,%eax,4)
L498:
	movzwl	50(%esp), %esi
	movw	%si, _yax_bunchnum+2(,%eax,4)
	jmp	L500
L481:
	movl	$LC12, (%esp)
	call	_message
	movl	$-2, 44(%esp)
	subw	$1, _newnumwalls
	jmp	L473
L523:
	movzwl	_numsectors, %esi
	movl	%ebx, %eax
	movzwl	_newnumwalls, %ebx
	movw	%si, 12(%esp)
	jmp	L498
	.cfi_endproc
LFE40:
	.p2align 4
	.globl	_select_sprite_tag
	.def	_select_sprite_tag;	.scl	2;	.type	32;	.endef
_select_sprite_tag:
LFB45:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %edx
	movl	%eax, %ebx
	movl	$10, %eax
	movl	$0, _g_iReturnVar
	call	__Z10VM_OnEventii
	movl	_g_iReturnVar, %eax
	testl	%eax, %eax
	je	L535
	imull	$44, %ebx, %ebx
	addl	_sprite, %ebx
	testb	$1, %al
	jne	L541
	testb	$2, %al
	je	L530
	movswl	40(%ebx), %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L541:
	.cfi_restore_state
	movswl	38(%ebx), %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L530:
	.cfi_restore_state
	testb	$4, %al
	jne	L540
	testb	$8, %al
	je	L532
	movswl	32(%ebx), %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L540:
	.cfi_restore_state
	movswl	42(%ebx), %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L532:
	.cfi_restore_state
	testb	$16, %al
	jne	L542
	testb	$32, %al
	je	L534
	movswl	36(%ebx), %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L542:
	.cfi_restore_state
	movswl	34(%ebx), %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L534:
	.cfi_restore_state
	testb	$64, %al
	jne	L540
L535:
	movl	$-2147483648, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE45:
	.p2align 4
	.globl	__ZL15drawlinebetweenPK4vec3IiES2_ij.lto_priv.0
	.def	__ZL15drawlinebetweenPK4vec3IiES2_ij.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL15drawlinebetweenPK4vec3IiES2_ij.lto_priv.0:
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
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$56, %esp
	.cfi_def_cfa_offset 76
	movl	_drawlinepat, %ebx
	movl	_midydim16, %edi
	movl	%ecx, 28(%esp)
	movl	_pos+4, %ecx
	movl	%ebx, 24(%esp)
	movl	_zoom, %ebx
	movl	%edi, 20(%esp)
	movl	_pos, %edi
	movl	%ebx, 16(%esp)
	movl	4(%eax), %edx
	movl	%ecx, 36(%esp)
	movl	_halfxdim16, %ebp
	subl	%ecx, %edx
	movl	%eax, 32(%esp)
	movl	%edx, 12(%esp)
	movl	(%eax), %edx
	subl	%edi, %edx
	movl	%edx, 8(%esp)
	leal	44(%esp), %edx
	movl	%edx, 4(%esp)
	leal	52(%esp), %edx
	movl	%edx, (%esp)
	call	_editorGet2dScreenCoordinates
	movl	%ebx, 16(%esp)
	movl	4(%esi), %edx
	subl	36(%esp), %edx
	movl	%edx, 12(%esp)
	movl	(%esi), %edx
	subl	%edi, %edx
	movl	%edx, 8(%esp)
	leal	40(%esp), %edx
	movl	%edx, 4(%esp)
	leal	48(%esp), %edx
	movl	%edx, (%esp)
	call	_editorGet2dScreenCoordinates
	movl	_m32_sideview, %eax
	movl	44(%esp), %ecx
	movl	40(%esp), %edi
	testl	%eax, %eax
	movl	32(%esp), %eax
	jne	L546
L544:
	movl	20(%esp), %esi
	movl	76(%esp), %eax
	movl	48(%esp), %ebx
	leal	(%esi,%ecx), %edx
	movl	28(%esp), %ecx
	addl	%esi, %edi
	movl	%eax, _drawlinepat
	movl	%edi, (%esp)
	movl	52(%esp), %eax
	addl	%ebp, %ebx
	movl	%ecx, 4(%esp)
	movl	%ebx, %ecx
	addl	%ebp, %eax
	call	_editorDraw2dLine
	movl	24(%esp), %eax
	movl	%eax, _drawlinepat
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
L546:
	.cfi_restore_state
	imull	_m32_sidecos, %ebx
	movl	8(%eax), %eax
	subl	_pos+8, %eax
	movl	%ebx, %edx
/APP
 # 672 "source/build/src/2d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	8(%esi), %eax
	addl	%edx, %ecx
	subl	_pos+8, %eax
	movl	%ebx, %edx
/APP
 # 672 "source/build/src/2d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	addl	%edx, %edi
	jmp	L544
	.cfi_endproc
LFE48:
	.p2align 4
	.globl	__ZL10draw_crossiiii.lto_priv.0
	.def	__ZL10draw_crossiiii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL10draw_crossiiii.lto_priv.0:
LFB50:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%edx, %ebp
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
	movl	_zoom, %edx
	subl	_pos, %eax
/APP
 # 3384 "source/build/src/build.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	_halfxdim16, %eax
	movl	_zoom, %edx
	movl	%eax, %ebx
	movl	%ebp, %eax
	subl	_pos+4, %eax
/APP
 # 3385 "source/build/src/build.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	_midydim16, %eax
	leal	(%ecx,%ebx), %edi
	subl	%ecx, %ebx
	leal	(%ecx,%eax), %esi
	movl	%eax, %ebp
	movl	28(%esp), %eax
	movl	%esi, (%esp)
	subl	%ecx, %ebp
	movl	%edi, %ecx
	movl	%eax, 4(%esp)
	movl	%ebp, %edx
	movl	%ebx, %eax
	call	_editorDraw2dLine
	movl	28(%esp), %eax
	movl	%ebp, (%esp)
	movl	%edi, %ecx
	movl	%esi, %edx
	movl	%eax, 4(%esp)
	movl	%ebx, %eax
	call	_editorDraw2dLine
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
LFE50:
	.p2align 4
	.globl	__ZL11draw_squareiiii.constprop.0
	.def	__ZL11draw_squareiiii.constprop.0;	.scl	2;	.type	32;	.endef
__ZL11draw_squareiiii.constprop.0:
LFB53:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%ecx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	_zoom, %edx
	subl	_pos, %eax
/APP
 # 3384 "source/build/src/build.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	_halfxdim16, %eax
	movl	_zoom, %edx
	movl	%eax, %ecx
	movl	%ebx, %eax
	subl	_pos+4, %eax
/APP
 # 3385 "source/build/src/build.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	_midydim16, %eax
	movl	%edi, 4(%esp)
	leal	2(%ecx), %ebp
	leal	-2(%eax), %esi
	leal	2(%eax), %ebx
	movl	%esi, (%esp)
	leal	-2(%ecx), %eax
	movl	%esi, %edx
	movl	%ebp, %ecx
	movl	%eax, 8(%esp)
	call	_editorDraw2dLine
	movl	%edi, 4(%esp)
	movl	%ebp, %ecx
	movl	%esi, %edx
	movl	%ebx, (%esp)
	movl	%ebp, %eax
	call	_editorDraw2dLine
	movl	%edi, 4(%esp)
	movl	8(%esp), %ecx
	movl	%ebx, %edx
	movl	%ebx, (%esp)
	movl	%ebp, %eax
	call	_editorDraw2dLine
	movl	%edi, 4(%esp)
	movl	8(%esp), %eax
	movl	%ebx, %edx
	movl	%esi, (%esp)
	movl	%eax, %ecx
	call	_editorDraw2dLine
	addl	$12, %esp
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
LFE53:
	.p2align 4
	.globl	__ZL13isc_transformPiS_.lto_priv.0
	.def	__ZL13isc_transformPiS_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL13isc_transformPiS_.lto_priv.0:
LFB54:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	.cfi_offset 6, -12
	movl	%eax, %esi
	pushl	%ebx
	.cfi_offset 3, -16
	movl	%edx, %ebx
	andl	$-8, %esp
	subl	$40, %esp
	movl	(%eax), %eax
	cmpb	$0, _isc+1
	jne	L552
	movl	_isc+4, %ecx
	movl	_isc+20, %edx
	subl	%ecx, %eax
/APP
 # 3412 "source/build/src/build.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movl	%ecx, (%esi)
	movl	_isc+8, %ecx
	movl	(%ebx), %eax
	movl	_isc+24, %edx
	subl	%ecx, %eax
/APP
 # 3413 "source/build/src/build.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movl	%ecx, (%ebx)
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
L552:
	.cfi_restore_state
	movss	(%edx), %xmm1
	movl	%eax, 28(%esp)
	leal	32(%esp), %eax
	movss	28(%esp), %xmm0
	movl	%eax, 20(%esp)
	movswl	_isc+28, %eax
	unpcklps	%xmm1, %xmm0
	movl	%eax, 16(%esp)
	movlps	%xmm0, 8(%esp)
	movl	_isc+4, %eax
	movl	_isc+8, %edx
	movlps	%xmm0, 32(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_rotatepoint
	movl	36(%esp), %ecx
	movl	32(%esp), %eax
	movl	%eax, (%esi)
	movl	%ecx, (%ebx)
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE54:
	.section .rdata,"dr"
LC14:
	.ascii "CARD KEY LOCK,\0"
LC15:
	.ascii "RED KEY,\0"
LC16:
	.ascii "BLUE KEY,\0"
LC17:
	.ascii "GREEN KEY,\0"
LC18:
	.ascii "YEL KEY,\0"
LC19:
	.ascii "RED CARD,\0"
LC20:
	.ascii "BLUE CARD,\0"
LC21:
	.ascii "GREEN CARD,\0"
LC22:
	.ascii "YEL CARD,\0"
LC23:
	.ascii "SILVER SKELKEY,\0"
LC24:
	.ascii "GOLD SKELKEY,\0"
LC25:
	.ascii "BRONZE SKELKEY,\0"
LC26:
	.ascii "RED SKELKEY,\0"
LC27:
	.ascii "\0"
LC28:
	.ascii "SKELETON KEY LOCK,\0"
LC29:
	.ascii "RAM CARD LOCK,\0"
LC30:
	.ascii "QJ,\0"
LC31:
	.ascii "GREEN STAT,\0"
LC32:
	.ascii "YEL STAT,\0"
LC33:
	.ascii "QJD,\0"
LC34:
	.ascii "BLUE STAT,\0"
LC35:
	.ascii "QEXIT,\0"
LC36:
	.ascii "QSCAN,\0"
LC37:
	.ascii "QOPERATE,\0"
LC38:
	.ascii "QDUCK,\0"
LC39:
	.ascii "QDEFEND,\0"
LC40:
	.ascii "SKULL,\0"
LC41:
	.ascii "GAURD,\0"
LC42:
	.ascii "COOLIE,\0"
LC43:
	.ascii "HORNET,\0"
LC44:
	.ascii "RIPPER,\0"
LC45:
	.ascii "SKEL,\0"
LC46:
	.ascii "GHOST,\0"
LC47:
	.ascii "SERP,\0"
LC48:
	.ascii "NINJA,\0"
LC49:
	.ascii "STAR,\0"
LC50:
	.ascii "LG_MINE,\0"
LC51:
	.ascii "GRENADE_LAUNCHER,\0"
LC52:
	.ascii "LG_GRENADE,\0"
LC53:
	.ascii "MICRO_GUN,\0"
LC54:
	.ascii "MICRO_BATTERY,\0"
LC55:
	.ascii "RIOT_GUN,\0"
LC56:
	.ascii "LG_SHOTSHELL,\0"
LC57:
	.ascii "ROCKET,\0"
LC58:
	.ascii "LG_ROCKET,\0"
LC59:
	.ascii "UZI,\0"
LC60:
	.ascii "UZI_FLOOR,\0"
LC61:
	.ascii "LG_UZI_AMMO,\0"
LC62:
	.ascii "FIRE,\0"
LC63:
	.ascii "HEART,\0"
LC64:
	.ascii "HEART_LG_AMMO,\0"
LC65:
	.ascii "SPELL,\0"
LC66:
	.ascii "CRATE,\0"
LC67:
	.ascii "FIRST_AID,\0"
LC68:
	.ascii "MEDKIT,\0"
LC69:
	.ascii "CHEM_BOMB,\0"
LC70:
	.ascii "FLASH_BOMB,\0"
LC71:
	.ascii "NUKE_BOMB,\0"
LC72:
	.ascii "CALTROPS,\0"
LC73:
	.ascii "BOT_HEALTH,\0"
LC74:
	.ascii "HEAT_SEEKERS,\0"
LC75:
	.ascii "SMOKE_BOMB,\0"
LC76:
	.ascii "FLY,\0"
LC77:
	.ascii "GAURDAMMO,\0"
LC78:
	.ascii "RAIL_GUN,\0"
LC79:
	.ascii "RAIL_AMMO,\0"
LC80:
	.ascii "REPAIR_KIT,\0"
LC81:
	.ascii "RINGAMMO,\0"
LC82:
	.ascii "NAPALMAMMO,\0"
LC83:
	.ascii "GRENADE,\0"
LC84:
	.ascii "NIGHT_VISION,\0"
LC85:
	.ascii "ARMOR,\0"
LC86:
	.ascii "RED STAT,\0"
LC87:
	.ascii "QSJ,\0"
LC88:
	.ascii "TAG_SPRITE_HIT_MATCH\0"
LC89:
	.ascii "%s,\0"
LC90:
	.ascii "*%s,\0"
LC91:
	.ascii "T%d,\0"
LC92:
	.ascii "S:%d\0"
LC93:
	.ascii "S:%d,%d,%d\0"
LC94:
	.ascii "S:%d,%s%s\0"
LC95:
	.ascii "%s%s%d,%d\0"
LC96:
	.ascii "%s%s\0"
LC97:
	.ascii "%s%s%d,%d,%d,%d,%d,%d\0"
	.align 4
LC98:
	.ascii "%s%s%d,%d,%d,%d,%d,%d,%d,%d,%d,%d\0"
	.text
	.p2align 4
	.globl	__ZL15drawspritelabeli.lto_priv.0
	.def	__ZL15drawspritelabeli.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL15drawspritelabeli.lto_priv.0:
LFB56:
	.cfi_startproc
	cmpl	$16383, %eax
	jbe	L744
	ret
	.p2align 4,,10
	.p2align 3
L744:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	imull	$44, %eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	xorl	%eax, %eax
	subl	$196, %esp
	.cfi_def_cfa_offset 216
	movl	_sprite, %esi
	movw	%ax, 128(%esp)
	leal	(%esi,%edi), %ecx
	movl	$0, 116(%esp)
	movl	$0, 120(%esp)
	movl	$0, 124(%esp)
	movzwl	42(%ecx), %edx
	movl	$0, 100(%esp)
	movl	%edx, %eax
	movl	$0, 104(%esp)
	andl	$7, %eax
	movl	$0, 108(%esp)
	movl	$0, 112(%esp)
	movw	%ax, 56(%esp)
	movzwl	14(%ecx), %eax
	testb	$64, %dl
	je	L557
	cmpw	$2307, %ax
	je	L558
	movswl	40(%ecx), %eax
	cmpw	$1006, %ax
	jbe	L745
L738:
	movl	$1635151433, 130(%esp)
	leal	130(%esp), %esi
	movl	$543451500, 134(%esp)
	movl	$6775124, 138(%esp)
	movzwl	14(%ecx), %eax
L567:
	cmpw	$2307, %ax
	je	L665
	movzwl	42(%ecx), %edx
	jmp	L563
	.p2align 4,,10
	.p2align 3
L557:
	cmpw	$1880, %ax
	jg	L561
	cmpw	$1468, %ax
	jle	L746
	leal	-1469(%eax), %ebp
	cmpw	$411, %bp
	ja	L740
	movzwl	%bp, %ebp
	jmp	*L583(,%ebp,4)
	.section .rdata,"dr"
	.align 4
L583:
	.long	L699
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L633
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L632
	.long	L631
	.long	L630
	.long	L629
	.long	L628
	.long	L627
	.long	L626
	.long	L625
	.long	L624
	.long	L623
	.long	L622
	.long	L621
	.long	L620
	.long	L619
	.long	L618
	.long	L617
	.long	L740
	.long	L616
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L615
	.long	L614
	.long	L740
	.long	L613
	.long	L612
	.long	L740
	.long	L611
	.long	L610
	.long	L609
	.long	L608
	.long	L607
	.long	L606
	.long	L605
	.long	L740
	.long	L604
	.long	L603
	.long	L602
	.long	L601
	.long	L600
	.long	L599
	.long	L598
	.long	L597
	.long	L740
	.long	L740
	.long	L596
	.long	L595
	.long	L594
	.long	L593
	.long	L740
	.long	L740
	.long	L592
	.long	L591
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L590
	.long	L740
	.long	L589
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L588
	.long	L587
	.long	L740
	.long	L740
	.long	L586
	.long	L740
	.long	L740
	.long	L740
	.long	L585
	.long	L740
	.long	L584
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L582
	.text
L574:
	movl	$2308, %eax
	.p2align 4
	.p2align 3
L740:
	movl	$LC27, %esi
L563:
	cmpw	$257, 38(%ecx)
	movl	$LC88, %ebp
	cmove	%ebp, %esi
	andb	$2, %dh
	jne	L747
L667:
	subw	$1900, %ax
	cmpw	$99, %ax
	jbe	L748
L665:
	cmpw	$4, _CaptionMode
	ja	L741
	movzwl	_CaptionMode, %eax
	jmp	*L670(,%eax,4)
	.section .rdata,"dr"
	.align 4
L670:
	.long	L674
	.long	L673
	.long	L672
	.long	L671
	.long	L669
	.text
	.p2align 4,,10
	.p2align 3
L671:
	movl	_sprite, %eax
	addl	%edi, %eax
	movswl	38(%eax), %ecx
	movswl	40(%eax), %edx
	movl	%ecx, %ebp
	orw	%dx, %bp
	jne	L680
L742:
	leal	100(%esp), %eax
	movl	%esi, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$LC96, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movzbl	__ZL7tempbuf.lto_priv.2, %eax
L675:
	testb	%al, %al
	je	L555
	addl	_sprite, %edi
	movzwl	12(%edi), %eax
	movswl	14(%edi), %ecx
	movl	%eax, %esi
	andl	$1, %eax
	movzbl	_spritecol2d(%eax,%ecx,2), %edx
	andl	$1, %esi
	testb	%dl, %dl
	je	L682
	movzbl	%dl, %eax
	movzbl	_editorcolors(%eax), %eax
	movl	%eax, 56(%esp)
L683:
	testw	%si, %si
	movzbl	_editorcolors+5, %eax
	cmove	56(%esp), %eax
	movl	%ebx, %ecx
	sarl	$3, %ecx
	movl	%eax, 60(%esp)
	movl	%ebx, %eax
	movzbl	_show2dsprite(%ecx), %ecx
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	andl	%eax, %ecx
	cmpb	%cl, %al
	je	L749
	movswl	_pointhighlight, %eax
	subl	$16384, %eax
	cmpl	%ebx, %eax
	je	L750
	cmpw	$0, 24(%edi)
	js	L691
	movzbl	56(%esp), %ecx
L743:
	movzbl	60(%esp), %ebx
L686:
	movl	8(%edi), %esi
	movzbl	_editorcolors, %eax
	movzbl	%cl, %ecx
	movl	%esi, 12(%esp)
	movl	4(%edi), %esi
	movl	%esi, 8(%esp)
	movl	(%edi), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	movl	%eax, %edx
	movl	$__ZL7tempbuf.lto_priv.2, %eax
	call	_drawsmallabel
	addl	$196, %esp
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
L672:
	.cfi_restore_state
	movzwl	40(%ecx), %eax
	cmpw	$78, %ax
	je	L751
L677:
	cmpw	$39, %ax
	je	L752
L678:
	movl	_sprite, %eax
	addl	%edi, %eax
	movswl	38(%eax), %edx
	movswl	40(%eax), %eax
	movl	%edx, %ecx
	orw	%ax, %cx
	jne	L679
	leal	100(%esp), %eax
	movl	%esi, 12(%esp)
	movl	%eax, 16(%esp)
	movswl	56(%esp), %eax
	movl	$LC94, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movzbl	__ZL7tempbuf.lto_priv.2, %eax
	jmp	L675
	.p2align 4,,10
	.p2align 3
L673:
	movl	_sprite, %eax
	movswl	56(%esp), %ecx
	addl	%edi, %eax
	movswl	38(%eax), %edx
	movswl	40(%eax), %eax
	movl	%edx, %esi
	orw	%ax, %si
	jne	L676
	movl	%ecx, 8(%esp)
	movl	$LC92, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movzbl	__ZL7tempbuf.lto_priv.2, %eax
	jmp	L675
	.p2align 4,,10
	.p2align 3
L674:
	movb	$0, __ZL7tempbuf.lto_priv.2
L555:
	addl	$196, %esp
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
L669:
	.cfi_restore_state
	movl	_sprite, %eax
	leal	(%eax,%edi), %ecx
	movl	%eax, 56(%esp)
	movzwl	38(%ecx), %eax
	orw	40(%ecx), %ax
	je	L742
	movl	56(%esp), %ebp
	leal	30(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%ebp, %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	leal	1(%eax), %ebp
	addl	$2, %eax
	movl	%ebp, _spritechanged(,%edx,4)
	movzbl	30(%ecx), %ebp
	movl	%eax, _spritechanged(,%edx,4)
	movzbl	31(%ecx), %eax
	leal	36(%ecx), %edx
	movl	%ebp, 60(%esp)
	movl	56(%esp), %ebp
	movl	%eax, 64(%esp)
	movl	$-1171354717, %eax
	subl	%ebp, %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	leal	1(%eax), %ebp
	addl	$2, %eax
	movl	%ebp, _spritechanged(,%edx,4)
	movzbl	36(%ecx), %ebp
	movl	%eax, _spritechanged(,%edx,4)
	movl	64(%esp), %eax
	movl	%ebp, 56(%esp)
	movl	60(%esp), %ebp
	movl	%eax, 48(%esp)
	movl	%ebp, 52(%esp)
	movl	56(%esp), %ebp
	movl	%ebp, 44(%esp)
	movzbl	37(%ecx), %eax
	movl	%eax, 40(%esp)
	movswl	34(%ecx), %eax
	movl	%eax, 36(%esp)
	movswl	32(%ecx), %eax
	movl	%eax, 32(%esp)
	movswl	28(%ecx), %eax
	movl	%eax, 28(%esp)
	movzbl	18(%ecx), %eax
	movl	%eax, 24(%esp)
	movswl	38(%ecx), %eax
	movl	%eax, 20(%esp)
	movswl	40(%ecx), %eax
	movl	%esi, 8(%esp)
	movl	%eax, 16(%esp)
	leal	100(%esp), %eax
	movl	%eax, 12(%esp)
	movl	$LC98, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
L741:
	movzbl	__ZL7tempbuf.lto_priv.2, %eax
	jmp	L675
	.p2align 4,,10
	.p2align 3
L749:
	movl	_totalclock, %eax
	movzbl	_editorcolors+14, %ebx
	sall	$4, %eax
	movl	%ebx, %ecx
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %eax
	sarw	$10, %ax
	cwtl
/APP
 # 3447 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	sarl	%eax
	subl	%eax, %ecx
	jmp	L686
	.p2align 4,,10
	.p2align 3
L682:
	movl	%ebx, %eax
	movb	%dl, 60(%esp)
	call	_editorGet2dSpriteColor
	movzwl	12(%edi), %esi
	movzbl	60(%esp), %edx
	movl	%eax, 56(%esp)
	andl	$1, %esi
	jmp	L683
	.p2align 4,,10
	.p2align 3
L747:
	movl	$1414288717, 100(%esp)
	movl	$2902356, 103(%esp)
	jmp	L667
	.p2align 4,,10
	.p2align 3
L748:
	cwtl
	leal	70(%esp), %esi
	movl	$LC91, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	movl	%ecx, 60(%esp)
	call	_sprintf
	movl	60(%esp), %ecx
	jmp	L665
	.p2align 4,,10
	.p2align 3
L745:
	imull	$68, %eax, %eax
	movl	%ecx, 60(%esp)
	movl	$LC89, 4(%esp)
	addl	$_StagInfo, %eax
	movl	%eax, 8(%esp)
L739:
	leal	130(%esp), %esi
	movl	%esi, (%esp)
	call	_sprintf
	movl	60(%esp), %ecx
	movzwl	14(%ecx), %eax
	jmp	L567
	.p2align 4,,10
	.p2align 3
L750:
	movl	_totalclock, %eax
	leal	-8(%edx), %ebx
	sall	$4, %eax
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %eax
	sarw	$10, %ax
	cwtl
	cmpb	$7, %bl
	jbe	L753
/APP
 # 3453 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	56(%esp), %ebx
	sarl	$2, %eax
	addl	%eax, %ebx
L689:
	movl	%ebx, %ecx
	cmpl	60(%esp), %ebx
	jge	L743
	movzbl	%bl, %ebx
	testw	%si, %si
	je	L686
	jmp	L743
	.p2align 4,,10
	.p2align 3
L561:
	cmpw	$3059, %ax
	jg	L634
	cmpw	$3029, %ax
	jg	L635
	leal	-2307(%eax), %esi
	cmpw	$9, %si
	ja	L740
	movzwl	%si, %esi
	jmp	*L576(,%esi,4)
	.section .rdata,"dr"
	.align 4
L576:
	.long	L558
	.long	L574
	.long	L697
	.long	L581
	.long	L698
	.long	L580
	.long	L579
	.long	L578
	.long	L577
	.long	L575
	.text
	.p2align 4,,10
	.p2align 3
L691:
	movzbl	_editorcolors+4, %ebx
	movl	%ebx, %ecx
	jmp	L686
	.p2align 4,,10
	.p2align 3
L558:
	movswl	40(%ecx), %eax
	cmpw	$1006, %ax
	ja	L738
	imull	$68, %eax, %eax
	movl	%ecx, 60(%esp)
	movl	$LC90, 4(%esp)
	addl	$_StagInfo, %eax
	movl	%eax, 8(%esp)
	jmp	L739
	.p2align 4,,10
	.p2align 3
L676:
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$LC93, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movzbl	__ZL7tempbuf.lto_priv.2, %eax
	jmp	L675
	.p2align 4,,10
	.p2align 3
L679:
	movl	%eax, 16(%esp)
	leal	100(%esp), %eax
	movl	%edx, 20(%esp)
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$LC95, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movzbl	__ZL7tempbuf.lto_priv.2, %eax
	jmp	L675
	.p2align 4,,10
	.p2align 3
L680:
	movswl	34(%eax), %ebp
	movl	%ebp, 36(%esp)
	movswl	32(%eax), %ebp
	movl	%ebp, 32(%esp)
	movswl	28(%eax), %ebp
	movl	%ebp, 28(%esp)
	movzbl	18(%eax), %eax
	movl	%ecx, 20(%esp)
	movl	%eax, 24(%esp)
	leal	100(%esp), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$LC97, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movzbl	__ZL7tempbuf.lto_priv.2, %eax
	jmp	L675
	.p2align 4,,10
	.p2align 3
L753:
/APP
 # 3452 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	56(%esp), %ebx
	sarl	%eax
	subl	%eax, %ebx
	jmp	L689
	.p2align 4,,10
	.p2align 3
L635:
	leal	-3030(%eax), %esi
	cmpw	$29, %si
	ja	L695
	movzwl	%si, %esi
	jmp	*L569(,%esi,4)
	.section .rdata,"dr"
	.align 4
L569:
	.long	L573
	.long	L572
	.long	L695
	.long	L695
	.long	L695
	.long	L696
	.long	L695
	.long	L695
	.long	L695
	.long	L695
	.long	L695
	.long	L695
	.long	L695
	.long	L695
	.long	L695
	.long	L695
	.long	L695
	.long	L695
	.long	L695
	.long	L695
	.long	L695
	.long	L695
	.long	L695
	.long	L695
	.long	L571
	.long	L695
	.long	L695
	.long	L695
	.long	L570
	.long	L568
	.text
	.p2align 4,,10
	.p2align 3
L695:
	movl	$LC27, %esi
	jmp	L567
L575:
	movl	$LC39, %esi
	jmp	L563
L577:
	movl	$LC38, %esi
	jmp	L563
L578:
	movl	$LC37, %esi
	jmp	L563
L580:
	movl	$LC36, %esi
	jmp	L563
L581:
	movl	$LC33, %esi
	jmp	L563
L698:
	movl	$LC87, %esi
	jmp	L563
L697:
	movl	$LC30, %esi
	jmp	L563
L579:
	movl	$LC35, %esi
	jmp	L563
L568:
	movl	$LC83, %esi
	jmp	L563
L570:
	movl	$LC82, %esi
	jmp	L563
L572:
	movl	$LC84, %esi
	jmp	L563
L573:
	movl	$LC85, %esi
	jmp	L563
L696:
	movl	$LC77, %esi
	jmp	L563
L571:
	movl	$LC81, %esi
	jmp	L563
L584:
	cmpw	$8, 40(%ecx)
	ja	L706
	movzwl	40(%ecx), %ebp
	jmp	*L657(,%ebp,4)
	.section .rdata,"dr"
	.align 4
L657:
	.long	L706
	.long	L656
	.long	L663
	.long	L662
	.long	L660
	.long	L660
	.long	L659
	.long	L658
	.long	L656
	.text
L660:
	leal	17(%ecx), %eax
	xorl	%edx, %edx
	subl	%esi, %eax
	movl	$44, %esi
	divl	%esi
	movl	$LC14, %esi
	addl	$1, _spritechanged(,%eax,4)
	movzwl	14(%ecx), %eax
	movb	$20, 17(%ecx)
	jmp	L567
L656:
	leal	17(%ecx), %eax
	xorl	%edx, %edx
	subl	%esi, %eax
	movl	$44, %esi
	divl	%esi
	movl	$LC14, %esi
	addl	$1, _spritechanged(,%eax,4)
	movzwl	14(%ecx), %eax
	movb	$25, 17(%ecx)
	jmp	L567
L582:
	movl	$LC65, %esi
	jmp	L563
L585:
	cmpw	$8, 40(%ecx)
	ja	L705
	movzwl	40(%ecx), %ebp
	jmp	*L648(,%ebp,4)
	.section .rdata,"dr"
	.align 4
L648:
	.long	L705
	.long	L647
	.long	L654
	.long	L653
	.long	L651
	.long	L651
	.long	L650
	.long	L649
	.long	L647
	.text
L651:
	leal	17(%ecx), %eax
	xorl	%edx, %edx
	subl	%esi, %eax
	movl	$44, %esi
	divl	%esi
	movl	$LC29, %esi
	addl	$1, _spritechanged(,%eax,4)
	movzwl	14(%ecx), %eax
	movb	$20, 17(%ecx)
	jmp	L567
L647:
	leal	17(%ecx), %eax
	xorl	%edx, %edx
	subl	%esi, %eax
	movl	$44, %esi
	divl	%esi
	movl	$LC29, %esi
	addl	$1, _spritechanged(,%eax,4)
	movzwl	14(%ecx), %eax
	movb	$25, 17(%ecx)
	jmp	L567
L610:
	movl	$LC54, %esi
	jmp	L563
L611:
	movl	$LC61, %esi
	jmp	L563
L612:
	movl	$LC59, %esi
	jmp	L563
L613:
	movl	$LC58, %esi
	jmp	L563
L614:
	movl	$LC55, %esi
	jmp	L563
L615:
	movl	$LC49, %esi
	jmp	L563
L616:
	movl	$LC76, %esi
	jmp	L563
L617:
	movl	$LC32, %esi
	jmp	L563
L618:
	leal	17(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%esi, %edx
	movl	$LC22, %esi
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	14(%ecx), %eax
	movb	$20, 17(%ecx)
	jmp	L567
L619:
	leal	17(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%esi, %edx
	movl	$LC18, %esi
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	14(%ecx), %eax
	movb	$20, 17(%ecx)
	jmp	L567
L620:
	leal	17(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%esi, %edx
	movl	$LC26, %esi
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	14(%ecx), %eax
	movb	$25, 17(%ecx)
	jmp	L567
L621:
	movl	$LC31, %esi
	jmp	L563
L622:
	leal	17(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%esi, %edx
	movl	$LC21, %esi
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	14(%ecx), %eax
	movb	$22, 17(%ecx)
	jmp	L567
L623:
	leal	17(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%esi, %edx
	movl	$LC17, %esi
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	14(%ecx), %eax
	movb	$22, 17(%ecx)
	jmp	L567
L624:
	leal	17(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%esi, %edx
	movl	$LC25, %esi
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	14(%ecx), %eax
	movb	$24, 17(%ecx)
	jmp	L567
L625:
	movl	$LC86, %esi
	jmp	L563
L594:
	movl	$LC74, %esi
	jmp	L563
L595:
	movl	$LC53, %esi
	jmp	L563
L596:
	movl	$LC51, %esi
	jmp	L563
L597:
	movl	$LC62, %esi
	jmp	L563
L598:
	movl	$LC80, %esi
	jmp	L563
L599:
	movl	$LC79, %esi
	jmp	L563
L600:
	movl	$LC78, %esi
	jmp	L563
L601:
	movl	$LC73, %esi
	jmp	L563
L602:
	movl	$LC71, %esi
	jmp	L563
L603:
	movl	$LC69, %esi
	jmp	L563
L604:
	movl	$LC60, %esi
	jmp	L563
L605:
	movl	$LC70, %esi
	jmp	L563
L606:
	movl	$LC75, %esi
	jmp	L563
L607:
	movl	$LC68, %esi
	jmp	L563
L608:
	movl	$LC67, %esi
	jmp	L563
L609:
	movl	$LC66, %esi
	jmp	L563
L586:
	cmpw	$8, 40(%ecx)
	ja	L704
	movzwl	40(%ecx), %ebp
	jmp	*L639(,%ebp,4)
	.section .rdata,"dr"
	.align 4
L639:
	.long	L704
	.long	L638
	.long	L645
	.long	L644
	.long	L642
	.long	L642
	.long	L641
	.long	L640
	.long	L638
	.text
L642:
	leal	17(%ecx), %eax
	xorl	%edx, %edx
	subl	%esi, %eax
	movl	$44, %esi
	divl	%esi
	movl	$LC28, %esi
	addl	$1, _spritechanged(,%eax,4)
	movzwl	14(%ecx), %eax
	movb	$20, 17(%ecx)
	jmp	L567
L638:
	leal	17(%ecx), %eax
	xorl	%edx, %edx
	subl	%esi, %eax
	movl	$44, %esi
	divl	%esi
	movl	$LC28, %esi
	addl	$1, _spritechanged(,%eax,4)
	movzwl	14(%ecx), %eax
	movb	$25, 17(%ecx)
	jmp	L567
L587:
	movl	$LC57, %esi
	jmp	L563
L588:
	movl	$LC50, %esi
	jmp	L563
L589:
	movl	$LC52, %esi
	jmp	L563
L590:
	movl	$LC72, %esi
	jmp	L563
L591:
	movl	$LC63, %esi
	jmp	L563
L592:
	movl	$LC56, %esi
	jmp	L563
L593:
	movl	$LC64, %esi
	jmp	L563
L626:
	leal	17(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%esi, %edx
	movl	$LC19, %esi
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	14(%ecx), %eax
	movb	$25, 17(%ecx)
	jmp	L567
L627:
	leal	17(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%esi, %edx
	movl	$LC15, %esi
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	14(%ecx), %eax
	movb	$25, 17(%ecx)
	jmp	L567
L628:
	leal	17(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%esi, %edx
	movl	$LC23, %esi
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	14(%ecx), %eax
	movb	$17, 17(%ecx)
	jmp	L567
L629:
	movl	$LC34, %esi
	jmp	L563
L630:
	leal	17(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%esi, %edx
	movl	$LC20, %esi
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	14(%ecx), %eax
	movb	$23, 17(%ecx)
	jmp	L567
L631:
	leal	17(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%esi, %edx
	movl	$LC16, %esi
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	14(%ecx), %eax
	movb	$23, 17(%ecx)
	jmp	L567
L632:
	leal	17(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%esi, %edx
	movl	$LC24, %esi
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	14(%ecx), %eax
	movb	$20, 17(%ecx)
	jmp	L567
L699:
	movl	$LC41, %esi
	jmp	L563
L633:
	movl	$LC44, %esi
	jmp	L563
L650:
	leal	17(%ecx), %eax
	xorl	%edx, %edx
	subl	%esi, %eax
	movl	$44, %esi
	divl	%esi
	movl	$LC29, %esi
	addl	$1, _spritechanged(,%eax,4)
	movzwl	14(%ecx), %eax
	movb	$17, 17(%ecx)
	jmp	L567
L640:
	leal	17(%ecx), %eax
	xorl	%edx, %edx
	subl	%esi, %eax
	movl	$44, %esi
	divl	%esi
	movl	$LC28, %esi
	addl	$1, _spritechanged(,%eax,4)
	movzwl	14(%ecx), %eax
	movb	$24, 17(%ecx)
	jmp	L567
L644:
	leal	17(%ecx), %eax
	xorl	%edx, %edx
	subl	%esi, %eax
	movl	$44, %esi
	divl	%esi
	movl	$LC28, %esi
	addl	$1, _spritechanged(,%eax,4)
	movzwl	14(%ecx), %eax
	movb	$22, 17(%ecx)
	jmp	L567
L645:
	leal	17(%ecx), %eax
	xorl	%edx, %edx
	subl	%esi, %eax
	movl	$44, %esi
	divl	%esi
	movl	$LC28, %esi
	addl	$1, _spritechanged(,%eax,4)
	movzwl	14(%ecx), %eax
	movb	$23, 17(%ecx)
	jmp	L567
L654:
	leal	17(%ecx), %eax
	xorl	%edx, %edx
	subl	%esi, %eax
	movl	$44, %esi
	divl	%esi
	movl	$LC29, %esi
	addl	$1, _spritechanged(,%eax,4)
	movzwl	14(%ecx), %eax
	movb	$23, 17(%ecx)
	jmp	L567
L641:
	leal	17(%ecx), %eax
	xorl	%edx, %edx
	subl	%esi, %eax
	movl	$44, %esi
	divl	%esi
	movl	$LC28, %esi
	addl	$1, _spritechanged(,%eax,4)
	movzwl	14(%ecx), %eax
	movb	$17, 17(%ecx)
	jmp	L567
L649:
	leal	17(%ecx), %eax
	xorl	%edx, %edx
	subl	%esi, %eax
	movl	$44, %esi
	divl	%esi
	movl	$LC29, %esi
	addl	$1, _spritechanged(,%eax,4)
	movzwl	14(%ecx), %eax
	movb	$24, 17(%ecx)
	jmp	L567
L653:
	leal	17(%ecx), %eax
	xorl	%edx, %edx
	subl	%esi, %eax
	movl	$44, %esi
	divl	%esi
	movl	$LC29, %esi
	addl	$1, _spritechanged(,%eax,4)
	movzwl	14(%ecx), %eax
	movb	$22, 17(%ecx)
	jmp	L567
L659:
	leal	17(%ecx), %eax
	xorl	%edx, %edx
	subl	%esi, %eax
	movl	$44, %esi
	divl	%esi
	movl	$LC14, %esi
	addl	$1, _spritechanged(,%eax,4)
	movzwl	14(%ecx), %eax
	movb	$17, 17(%ecx)
	jmp	L567
L658:
	leal	17(%ecx), %eax
	xorl	%edx, %edx
	subl	%esi, %eax
	movl	$44, %esi
	divl	%esi
	movl	$LC14, %esi
	addl	$1, _spritechanged(,%eax,4)
	movzwl	14(%ecx), %eax
	movb	$24, 17(%ecx)
	jmp	L567
L662:
	leal	17(%ecx), %eax
	xorl	%edx, %edx
	subl	%esi, %eax
	movl	$44, %esi
	divl	%esi
	movl	$LC14, %esi
	addl	$1, _spritechanged(,%eax,4)
	movzwl	14(%ecx), %eax
	movb	$22, 17(%ecx)
	jmp	L567
L663:
	leal	17(%ecx), %eax
	xorl	%edx, %edx
	subl	%esi, %eax
	movl	$44, %esi
	divl	%esi
	movl	$LC14, %esi
	addl	$1, _spritechanged(,%eax,4)
	movzwl	14(%ecx), %eax
	movb	$23, 17(%ecx)
	jmp	L567
	.p2align 4,,10
	.p2align 3
L746:
	cmpw	$1300, %ax
	je	L692
	jg	L564
	movl	$LC43, %esi
	cmpw	$800, %ax
	je	L563
	movl	$LC40, %esi
	cmpw	$820, %ax
	je	L563
	jmp	L740
	.p2align 4,,10
	.p2align 3
L752:
	movswl	%bx, %eax
	call	__Z11DrawClipBoxs
	jmp	L678
	.p2align 4,,10
	.p2align 3
L751:
	movswl	%bx, %eax
	movl	%ecx, 60(%esp)
	call	__Z11DrawClipBoxs
	movl	60(%esp), %ecx
	movzwl	40(%ecx), %eax
	jmp	L677
L634:
	movl	$LC48, %esi
	cmpw	$4096, %ax
	je	L563
	movl	$LC46, %esi
	cmpw	$4277, %ax
	je	L563
	jmp	L740
L564:
	movl	$LC45, %esi
	cmpw	$1367, %ax
	je	L563
	movl	$LC42, %esi
	cmpw	$1400, %ax
	je	L563
	jmp	L740
L692:
	movl	$LC47, %esi
	jmp	L563
L704:
	movl	$LC28, %esi
	jmp	L563
L706:
	movl	$LC14, %esi
	jmp	L563
L705:
	movl	$LC29, %esi
	jmp	L563
	.cfi_endproc
LFE56:
	.section .rdata,"dr"
LC99:
	.ascii " and cleared drawn walls\0"
LC100:
	.ascii ", cleared drawn walls\0"
	.align 4
LC101:
	.ascii "Deleting wall %d would leave sector %d with %d walls.\0"
LC102:
	.ascii "Deleted %d points%s\0"
LC103:
	.ascii "Point deleted%s\0"
	.text
	.p2align 4
	.globl	__ZL16maybedeletewallsii.lto_priv.0
	.def	__ZL16maybedeletewallsii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL16maybedeletewallsii.lto_priv.0:
LFB58:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movzwl	_newnumwalls, %eax
	movl	$0, 16(%esp)
	movw	%ax, 22(%esp)
	movl	$1, 32(%esp)
	movl	$0, 28(%esp)
	movl	%edi, 36(%esp)
	movl	%edx, 40(%esp)
L783:
	movswl	_numwalls, %ebp
	movl	%ebp, %eax
	subl	$1, %ebp
	js	L755
	movl	_wall, %esi
	leal	-1(%eax), %edi
	jmp	L782
	.p2align 4,,10
	.p2align 3
L758:
	subl	$1, %ebp
	subl	$1, %edi
	cmpl	$-1, %ebp
	je	L755
L782:
	movl	16(%esp), %eax
	testl	%eax, %eax
	je	L774
L757:
	movl	%ebp, %ebx
	sall	$5, %ebx
	addl	%esi, %ebx
	movswl	8(%ebx), %eax
	sall	$5, %eax
	addl	%esi, %eax
	movl	(%eax), %ecx
	cmpl	%ecx, (%ebx)
	jne	L758
	movl	4(%eax), %eax
	cmpl	%eax, 4(%ebx)
	jne	L758
	cmpw	$-1, 22(%esp)
	je	L761
	movswl	__ZL3ovh.lto_priv.0+4, %eax
	movl	%eax, %edx
	cmpl	%ebp, %eax
	je	L764
	cmpw	$0, __ZL3ovh.lto_priv.0+6
	jne	L762
	cmpl	$1, 16(%esp)
	jne	L761
	cmpl	%ebp, %eax
	jg	L833
	.p2align 4
	.p2align 3
L761:
	movl	16(%esp), %eax
	testl	%eax, %eax
	je	L768
	cmpl	$1, 16(%esp)
	je	L767
L769:
	movswl	%di, %eax
	movl	%eax, 24(%esp)
	call	_sectorofwall
	movl	_sector, %ebx
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax), %esi
	movl	$-858993459, %eax
	sall	$3, %ecx
	leal	2(%ecx), %edx
	addl	%ecx, %ebx
	mull	%edx
	movswl	_numsectors, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	subw	$1, 2(%ebx)
	cmpl	%esi, %eax
	jle	L780
	addl	$40, %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L781:
	movl	$-858993459, %eax
	movl	_sector, %ebx
	addl	$1, %esi
	mull	%ecx
	addl	%ecx, %ebx
	addl	$40, %ecx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	subw	$1, (%ebx)
	movswl	_numsectors, %eax
	cmpl	%eax, %esi
	jl	L781
L780:
	movl	24(%esp), %esi
	movl	%esi, %eax
	call	_lastwall
	movl	_wall, %edx
	movl	%esi, %ecx
	sall	$5, %ecx
	sall	$5, %eax
	movzwl	8(%edx,%ecx), %ecx
	movw	%cx, 8(%edx,%eax)
	movl	$-1, %edx
	movl	%esi, %eax
	call	__ZL9movewallsii.isra.0
	addl	$1, 28(%esp)
	subl	$1, %ebp
	jb	L755
	movl	_wall, %esi
	subl	$1, %edi
	jmp	L757
	.p2align 4,,10
	.p2align 3
L762:
	movswl	__ZL3ovh.lto_priv.0+10, %ecx
	movw	%cx, 24(%esp)
	cmpl	%ebp, %ecx
	je	L764
	cmpl	$1, 16(%esp)
	je	L834
	movl	16(%esp), %eax
	testl	%eax, %eax
	jne	L769
	.p2align 4
	.p2align 3
L768:
	movswl	%di, %eax
	call	_sectorofwall
	movl	_sector, %edx
	leal	(%eax,%eax,4), %ecx
	movzwl	2(%edx,%ecx,8), %ecx
	cmpw	$3, %cx
	jle	L835
	movswl	12(%ebx), %eax
	testl	%eax, %eax
	js	L775
	leal	(%eax,%eax,4), %ecx
	movswl	2(%edx,%ecx,8), %edx
	cmpw	$3, %dx
	jle	L832
L775:
	subl	$1, %ebp
	jb	L755
	subl	$1, %edi
	.p2align 4
	.p2align 3
L774:
	movl	%ebp, %eax
	movl	%ebp, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	notl	%eax
	andb	%al, _editwall(%edx)
	jmp	L757
	.p2align 4,,10
	.p2align 3
L755:
	addl	$1, 16(%esp)
	cmpl	$3, 16(%esp)
	jne	L783
	movl	28(%esp), %ecx
	movl	36(%esp), %edi
	movl	40(%esp), %esi
	testl	%ecx, %ecx
	jne	L784
	movl	28(%esp), %ebx
	movl	$1, %eax
	cmpw	$0, _numwalls
	jg	L785
	jmp	L786
	.p2align 4,,10
	.p2align 3
L792:
	movswl	8(%eax), %eax
	sall	$5, %eax
	addl	%eax, %edx
	cmpl	(%edx), %edi
	je	L836
L791:
	movswl	_numwalls, %eax
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jle	L786
	movl	%ebx, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
L785:
	movl	%ebx, %edx
	sarl	$3, %edx
	movzbl	_graywallbitmap(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%al, %cl
	je	L791
	movl	_wall, %edx
	movl	%ebx, %eax
	sall	$5, %eax
	addl	%edx, %eax
	cmpl	(%eax), %edi
	jne	L792
	cmpl	4(%eax), %esi
	jne	L792
L793:
	movswl	%bx, %ebp
	movl	%ebp, %eax
	call	_sectorofwall
	movswl	%ax, %edx
	movl	%ebp, %eax
	call	_checksectorpointer
	movl	$1, %eax
	movw	%ax, _asksave
	jmp	L791
	.p2align 4,,10
	.p2align 3
L764:
	movl	$2, 32(%esp)
	jmp	L761
L833:
	subl	$1, %edx
	movw	%dx, __ZL3ovh.lto_priv.0+4
	.p2align 4
	.p2align 3
L767:
	movswl	%di, %eax
	sall	$5, %eax
	movswl	10(%esi,%eax), %eax
	testw	%ax, %ax
	js	L831
	sall	$5, %eax
	movl	$-1, %ebx
	addl	%esi, %eax
	movswl	10(%eax), %edx
	movl	%edx, %ecx
	andl	$134217727, %edx
	sall	$5, %ecx
	addl	$1, _wallchanged(,%edx,4)
	movw	%bx, 12(%esi,%ecx)
	movswl	10(%eax), %edx
	movl	$-1, %ebx
	movl	%edx, %ecx
	andl	$134217727, %edx
	addl	$1, _wallchanged(,%edx,4)
	sall	$5, %ecx
	movl	$-1, %edx
	movw	%dx, 10(%esi,%ecx)
	leal	12(%eax), %edx
	movl	$-1, %ecx
	subl	%esi, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	leal	10(%eax), %edx
	subl	%esi, %edx
	movw	%cx, 12(%eax)
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movw	%bx, 10(%eax)
L831:
	subl	$1, %ebp
	jb	L755
	subl	$1, %edi
	jmp	L757
L784:
	cmpw	$-1, 22(%esp)
	movl	28(%esp), %ecx
	setne	%al
	cmpl	$2, 32(%esp)
	sete	%dl
	andl	%edx, %eax
	cmpl	$1, %ecx
	je	L787
	testb	%al, %al
	movl	$LC99, %edx
	movl	$LC27, %eax
	movl	%ecx, 4(%esp)
	cmovne	%edx, %eax
	movl	$LC102, (%esp)
	movl	%eax, 8(%esp)
	call	_message
L789:
	movl	$1, %edx
	movw	%dx, _asksave
L786:
L776:
	xorl	%eax, %eax
	call	_yax_update
	movl	_pos+8, %eax
	call	_yax_updategrays
	movl	32(%esp), %eax
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
	jmp	__ZL18backup_drawn_wallsi.lto_priv.0
	.p2align 4,,10
	.p2align 3
L836:
	.cfi_restore_state
	cmpl	4(%edx), %esi
	jne	L791
	jmp	L793
L834:
	cmpl	%ebp, %eax
	jle	L766
	subl	$1, %edx
	movw	%dx, __ZL3ovh.lto_priv.0+4
L766:
	cmpl	%ebp, %ecx
	jle	L767
	movzwl	24(%esp), %eax
	subl	$1, %eax
	movw	%ax, __ZL3ovh.lto_priv.0+10
	jmp	L767
L835:
	movswl	%cx, %edx
L832:
	subl	$1, %edx
	movl	%eax, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%edx, 12(%esp)
	movl	$LC101, (%esp)
	call	_message
	movl	32(%esp), %eax
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
	jmp	__ZL18backup_drawn_wallsi.lto_priv.0
L787:
	.cfi_restore_state
	movl	_totalclock, %edx
	testb	%al, %al
	movl	$LC27, %eax
	movl	$LC103, (%esp)
	movl	%edx, _lastpm16time
	movl	$LC100, %edx
	cmovne	%edx, %eax
	movl	%eax, 4(%esp)
	call	__printmessage16
	jmp	L789
	.cfi_endproc
LFE58:
	.section .rdata,"dr"
	.align 4
LC104:
	.ascii "To flip extended sectors, all sectors of a bunch must be selected\0"
LC105:
	.ascii "Selected sector(s) flipped\0"
	.text
	.p2align 4
	.globl	_editorFlipHighlightedSectors
	.def	_editorFlipHighlightedSectors;	.scl	2;	.type	32;	.endef
_editorFlipHighlightedSectors:
LFB60:
	.cfi_startproc
	cmpw	$0, _highlightsectorcnt
	jg	L917
	ret
L917:
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
	subl	$124, %esp
	.cfi_def_cfa_offset 144
	movl	%edx, 44(%esp)
	movl	%eax, 56(%esp)
	call	__ZL22hl_all_bunch_sectors_pv.lto_priv.0
	movl	%eax, 64(%esp)
	testl	%eax, %eax
	je	L918
	movzwl	_highlightsectorcnt, %ebx
	testw	%bx, %bx
	jle	L837
	movzwl	_numwalls, %edx
	movl	$0, _chsecptr_onextwall
	testw	%dx, %dx
	jle	L840
	movswl	%dx, %ecx
	xorl	%eax, %eax
	andl	$1, %edx
	je	L841
	xorl	%eax, %eax
	movw	%ax, __ZL9onextwall.lto_priv.0
	movl	$1, %eax
	cmpl	%ecx, %eax
	je	L840
	.p2align 5
	.p2align 4
	.p2align 3
L841:
	movw	%ax, __ZL9onextwall.lto_priv.0(%eax,%eax)
	leal	1(%eax), %edx
	addl	$2, %eax
	movw	%dx, __ZL9onextwall.lto_priv.0(%edx,%edx)
	cmpl	%ecx, %eax
	jne	L841
L840:
	leal	84(%esp), %eax
	leal	88(%esp), %ecx
	movswl	%bx, %edx
	movl	%eax, (%esp)
	movl	$_highlightsector, %eax
	call	__ZL18get_sectors_centerPKsiPiS1_.lto_priv.0
	movl	_gridlock, %edi
	testl	%edi, %edi
	je	L842
	movl	_grid, %edx
	testl	%edx, %edx
	jg	L919
L842:
	xorl	%ecx, %ecx
	.p2align 4
	.p2align 3
L864:
	movswl	_highlightsector(%ecx,%ecx), %eax
	movl	_sector, %edx
	leal	(%eax,%eax,4), %ebx
	leal	(%edx,%ebx,8), %edx
	movswl	(%edx), %ebx
	movswl	2(%edx), %edx
	leal	(%edx,%ebx), %edi
	movl	%ebx, 40(%esp)
	movl	%edi, 60(%esp)
	cmpl	%ebx, %edi
	jle	L843
	movl	_wall, %eax
	movl	%ebx, %edx
	movl	%ecx, 80(%esp)
	movl	%ebx, %ebp
	sall	$5, %edx
	addl	%eax, %edx
	movl	(%edx), %edi
	movl	%edi, 4(%esp)
	movl	4(%edx), %edi
	movl	%edi, 8(%esp)
	jmp	L855
	.p2align 4,,10
	.p2align 3
L922:
	movl	88(%esp), %edi
	movl	%edi, %esi
	subl	(%edx), %esi
	movl	%ebx, %edx
	subl	%eax, %edx
	addl	%edi, %esi
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movl	%esi, (%ebx)
	movl	_wall, %edx
	leal	(%edx,%ecx), %eax
	movswl	8(%eax), %ebx
	sall	$5, %ebx
	movl	4(%edx,%ebx), %ebx
	movl	%ebx, 4(%eax)
L845:
	movl	44(%esp), %ebx
	testl	%ebx, %ebx
	je	L846
	leal	14(%eax), %ebx
	subl	%edx, %ebx
	shrl	$5, %ebx
	addl	$1, _wallchanged(,%ebx,4)
	xorw	$8, 14(%eax)
L846:
	movswl	8(%eax), %esi
	leal	1(%ebp), %ebx
	cmpl	40(%esp), %esi
	je	L920
	cmpl	%ebx, 60(%esp)
	je	L921
L854:
	movl	%edx, %eax
	movl	%ebx, %ebp
L855:
	movl	%ebp, %ecx
	movl	56(%esp), %esi
	sall	$5, %ecx
	leal	(%eax,%ecx), %ebx
	movswl	8(%ebx), %edx
	sall	$5, %edx
	addl	%eax, %edx
	testl	%esi, %esi
	jne	L922
	movl	(%edx), %eax
	movl	%eax, (%ebx)
	movl	_wall, %edx
	movl	84(%esp), %edi
	leal	(%edx,%ecx), %eax
	movswl	8(%eax), %ebx
	movl	%edi, %esi
	sall	$5, %ebx
	subl	4(%edx,%ebx), %esi
	leal	4(%eax), %ebx
	subl	%edx, %ebx
	addl	%edi, %esi
	shrl	$5, %ebx
	addl	$1, _wallchanged(,%ebx,4)
	movl	%esi, 4(%eax)
	jmp	L845
	.p2align 4,,10
	.p2align 3
L920:
	movl	%eax, %esi
	subl	%edx, %esi
	movl	%esi, %edx
	shrl	$5, %edx
	movl	_wallchanged(,%edx,4), %edi
	leal	1(%edi), %esi
	movl	56(%esp), %edi
	testl	%edi, %edi
	je	L848
	movl	88(%esp), %edi
	movl	%esi, _wallchanged(,%edx,4)
	movl	%edi, %edx
	subl	4(%esp), %edx
	addl	%edi, %edx
	movl	%edx, (%eax)
	movl	%ecx, %eax
	movl	_wall, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	8(%esp), %eax
	movl	%eax, 4(%edx,%ecx)
L849:
	movl	40(%esp), %edi
	movl	%ebp, %eax
	subl	%edi, %eax
	sarl	%eax
	testl	%eax, %eax
	jle	L850
	leal	1(%edi), %esi
	movl	%ebp, 68(%esp)
	sall	$5, %esi
	movl	%ebx, 72(%esp)
	movl	%ebp, %ebx
	movl	%esi, %edi
	movl	40(%esp), %esi
	movl	%ecx, 76(%esp)
	movl	%edi, %ecx
	leal	__ZL9onextwall.lto_priv.0+2(%esi,%esi), %esi
	movl	%esi, 36(%esp)
	leal	__ZL9onextwall.lto_priv.0(%ebp,%ebp), %esi
	movl	%esi, 32(%esp)
	movl	%ebp, %esi
	subl	%eax, %esi
	movl	40(%esp), %eax
	movw	%si, 52(%esp)
	leal	1(%ebp,%eax), %eax
	sall	$5, %eax
	movl	%eax, 48(%esp)
	movzwl	40(%esp), %eax
	leal	1(%eax,%ebp), %eax
	movw	%ax, 54(%esp)
	.p2align 4
	.p2align 3
L851:
	leal	(%edx,%ecx), %eax
	movl	8(%eax), %esi
	movl	(%eax), %edi
	movl	4(%eax), %ebp
	movl	%esi, 16(%esp)
	movl	%esi, 100(%esp)
	movl	20(%eax), %esi
	movl	%edi, 8(%esp)
	movl	%esi, 20(%esp)
	movl	%esi, 112(%esp)
	movl	24(%eax), %esi
	movl	%edi, 92(%esp)
	movl	16(%eax), %edi
	movl	%esi, 24(%esp)
	movl	%esi, 116(%esp)
	movl	28(%eax), %esi
	movl	%ebp, 12(%esp)
	movl	%esi, 28(%esp)
	movl	%esi, 120(%esp)
	movl	48(%esp), %esi
	movl	%ebp, 96(%esp)
	movl	12(%eax), %ebp
	subl	%ecx, %esi
	movl	%edi, 108(%esp)
	addl	$32, %ecx
	addl	%esi, %edx
	movl	%esi, 4(%esp)
	movl	(%edx), %esi
	movl	%ebp, 104(%esp)
	movl	%esi, (%eax)
	movl	4(%edx), %esi
	movl	%esi, 4(%eax)
	movl	8(%edx), %esi
	movl	%esi, 8(%eax)
	movl	12(%edx), %esi
	movl	%esi, 12(%eax)
	movl	16(%edx), %esi
	movl	%esi, 16(%eax)
	movl	20(%edx), %esi
	movl	%esi, 20(%eax)
	movl	24(%edx), %esi
	movl	%esi, 24(%eax)
	movl	28(%edx), %edx
	movl	8(%esp), %esi
	movl	%edx, 28(%eax)
	movl	4(%esp), %eax
	addl	_wall, %eax
	movl	%esi, (%eax)
	movl	12(%esp), %esi
	movl	%edi, 16(%eax)
	movl	20(%esp), %edi
	movl	%esi, 4(%eax)
	movl	16(%esp), %esi
	movl	%edi, 20(%eax)
	movl	36(%esp), %edi
	movl	%esi, 8(%eax)
	movl	24(%esp), %esi
	movl	%ebp, 12(%eax)
	addl	$2, %edi
	movl	_wall, %edx
	movl	%esi, 24(%eax)
	movl	28(%esp), %esi
	movl	%esi, 28(%eax)
	movzwl	54(%esp), %eax
	movl	32(%esp), %esi
	movw	%bx, -2(%edi)
	subl	%ebx, %eax
	movl	%edi, 36(%esp)
	subl	$1, %ebx
	movw	%ax, (%esi)
	subl	$2, %esi
	movl	%esi, 32(%esp)
	cmpw	52(%esp), %bx
	jne	L851
	movl	68(%esp), %ebp
	movl	72(%esp), %ebx
	movl	76(%esp), %ecx
L850:
	movl	40(%esp), %esi
	cmpl	%esi, %ebp
	jle	L852
	movl	%esi, %eax
	sall	$5, %eax
	leal	8(%edx,%eax), %edi
	.p2align 5
	.p2align 4
	.p2align 3
L853:
	movl	%edi, %eax
	addl	$1, %esi
	addl	$32, %edi
	subl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%si, -32(%edi)
	cmpl	%ebp, %esi
	jne	L853
	movl	_wall, %edx
L852:
	movl	%ecx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movzwl	40(%esp), %eax
	movl	%ebx, 40(%esp)
	movw	%ax, 8(%edx,%ecx)
	leal	32(%edx,%ecx), %eax
	movl	(%eax), %ecx
	movl	4(%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	cmpl	%ebx, 60(%esp)
	jne	L854
	.p2align 4
	.p2align 3
L921:
	movl	80(%esp), %ecx
	movswl	_highlightsector(%ecx,%ecx), %eax
L843:
	movswl	_headspritesect(%eax,%eax), %ebp
	cmpl	$-1, %ebp
	je	L856
	movl	56(%esp), %eax
	testl	%eax, %eax
	jne	L857
	movl	44(%esp), %eax
	movl	84(%esp), %esi
	movl	%ecx, 4(%esp)
	movl	_sprite, %edi
	testl	%eax, %eax
	jne	L861
	.p2align 4
	.p2align 3
L859:
	imull	$44, %ebp, %ecx
	movl	$-1171354717, %eax
	movl	%esi, %ebx
	addl	%edi, %ecx
	leal	4(%ecx), %edx
	subl	4(%ecx), %ebx
	subl	%edi, %edx
	addl	%esi, %ebx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%ecx), %edx
	subl	%edi, %edx
	movl	%ebx, 4(%ecx)
	movswl	28(%ecx), %ebx
	mull	%edx
	negl	%ebx
	andl	$2047, %ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%bx, 28(%ecx)
	movswl	_nextspritesect(%ebp,%ebp), %ebp
	cmpl	$-1, %ebp
	jne	L859
L915:
	movl	4(%esp), %ecx
L856:
	movswl	_highlightsectorcnt, %edx
	addl	$1, %ecx
	cmpl	%ecx, %edx
	jg	L864
	testw	%dx, %dx
	jle	L865
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L874:
	movswl	_highlightsector(%edi,%edi), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %ebx
	movswl	2(%eax), %esi
	addl	%ebx, %esi
	cmpl	%esi, %ebx
	jge	L866
	movl	%edi, 4(%esp)
	jmp	L873
	.p2align 4,,10
	.p2align 3
L924:
	addl	$1, %ebx
	cmpl	%ebx, %esi
	je	L923
L873:
	movl	_wall, %ecx
	movl	%ebx, %eax
	sall	$5, %eax
	addl	%ecx, %eax
	movswl	10(%eax), %edx
	testw	%dx, %dx
	js	L867
	movzwl	__ZL9onextwall.lto_priv.0(%edx,%edx), %edi
	leal	10(%eax), %edx
	subl	%ecx, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movw	%di, 10(%eax)
L867:
	xorl	%edx, %edx
	movswl	%bx, %eax
	movswl	%bx, %edi
	xorl	%ebp, %ebp
	call	_yax_getnextwall
	xorl	%edx, %edx
	testw	%ax, %ax
	jns	L872
L889:
	movl	$1, %edx
	movl	%edi, %eax
	call	_yax_getnextwall
	movl	$1, %edx
	testw	%ax, %ax
	js	L924
	movl	64(%esp), %ebp
L872:
	cwtl
	movswl	__ZL9onextwall.lto_priv.0(%eax,%eax), %ecx
	cmpw	$0, _editstatus
	je	L925
	movl	%edi, %eax
	call	_yax_setnextwall.part.0
L868:
	cmpl	$1, %ebp
	jne	L889
	addl	$1, %ebx
	cmpl	%ebx, %esi
	jne	L873
L923:
	movl	4(%esp), %edi
L866:
	movswl	_highlightsectorcnt, %eax
	addl	$1, %edi
	cmpl	%edi, %eax
	jg	L874
L865:
	movl	$LC105, (%esp)
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	call	__printmessage16
	movl	$1, %edx
	movw	%dx, _asksave
L837:
	addl	$124, %esp
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
L861:
	.cfi_restore_state
	imull	$44, %ebp, %ecx
	movl	$-1171354717, %eax
	movl	%esi, %ebx
	addl	%edi, %ecx
	leal	4(%ecx), %edx
	subl	4(%ecx), %ebx
	subl	%edi, %edx
	addl	%esi, %ebx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%ecx), %edx
	subl	%edi, %edx
	movl	%ebx, 4(%ecx)
	movswl	28(%ecx), %ebx
	mull	%edx
	negl	%ebx
	andl	$2047, %ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%bx, 28(%ecx)
	testb	$48, 12(%ecx)
	je	L860
	leal	12(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%edi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorw	$4, 12(%ecx)
L860:
	movswl	_nextspritesect(%ebp,%ebp), %ebp
	cmpl	$-1, %ebp
	jne	L861
	jmp	L915
	.p2align 4,,10
	.p2align 3
L925:
	leal	0(,%edi,4), %eax
	movw	%cx, _yax_nextwall(%eax,%ebp,2)
	jmp	L868
	.p2align 4,,10
	.p2align 3
L848:
	movl	4(%esp), %edi
	movl	%esi, _wallchanged(,%edx,4)
	movl	%edi, (%eax)
	movl	%ecx, %eax
	movl	84(%esp), %esi
	shrl	$5, %eax
	movl	_wall, %edx
	addl	$1, _wallchanged(,%eax,4)
	movl	%esi, %eax
	subl	8(%esp), %eax
	addl	%esi, %eax
	movl	%eax, 4(%edx,%ecx)
	jmp	L849
	.p2align 4,,10
	.p2align 3
L857:
	movl	88(%esp), %eax
	movl	_sprite, %edi
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	.p2align 4
	.p2align 3
L863:
	imull	$44, %ebp, %ecx
	movl	4(%esp), %eax
	movl	$3072, %ebx
	movl	%eax, %esi
	subl	(%edi,%ecx), %esi
	addl	%eax, %esi
	movl	$-1171354717, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, (%edi,%ecx)
	movl	_sprite, %edi
	addl	%edi, %ecx
	movswl	28(%ecx), %eax
	leal	28(%ecx), %edx
	subl	%edi, %edx
	subl	%eax, %ebx
	movl	$-1171354717, %eax
	mull	%edx
	andl	$2047, %ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%bx, 28(%ecx)
	movl	44(%esp), %ebx
	testl	%ebx, %ebx
	je	L862
	testb	$48, 12(%ecx)
	je	L862
	leal	12(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%edi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorw	$4, 12(%ecx)
L862:
	movswl	_nextspritesect(%ebp,%ebp), %ebp
	cmpl	$-1, %ebp
	jne	L863
	movl	8(%esp), %ecx
	jmp	L856
L919:
	movl	%edx, %ecx
	movl	$1024, %eax
	sarl	%cl, %eax
	movl	$11, %ecx
	subl	%edx, %ecx
	movl	$-1, %edx
	sall	%cl, %edx
	movl	88(%esp), %ecx
	addl	%eax, %ecx
	addl	84(%esp), %eax
	andl	%edx, %ecx
	andl	%edx, %eax
	movl	%ecx, 88(%esp)
	movl	%eax, 84(%esp)
	jmp	L842
L918:
	movl	$LC104, (%esp)
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	call	__printmessage16
	movb	$0, _keystatus+21
	movb	$0, _keystatus+45
	addl	$124, %esp
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
LFE60:
	.globl	_StagInfo
	.bss
	.align 32
_StagInfo:
	.space 69632
	.globl	_spritecol2d
	.align 32
_spritecol2d:
	.space 61440
	.globl	_graysectbitmap
	.align 32
_graysectbitmap:
	.space 512
	.globl	_editwall
	.align 32
_editwall:
	.space 2048
.lcomm __ZZL18backup_drawn_wallsiE7tmpwall,4,4
	.globl	__ZL7visited.lto_priv.0
	.align 32
__ZL7visited.lto_priv.0:
	.space 2048
	.globl	__ZL18hlorgraysectbitmap.lto_priv.0
	.align 32
__ZL18hlorgraysectbitmap.lto_priv.0:
	.space 512
	.globl	__ZL3ovh.lto_priv.0
	.align 4
__ZL3ovh.lto_priv.0:
	.space 12
	.globl	_graywallbitmap
	.align 32
_graywallbitmap:
	.space 2048
.lcomm __ZZL22copy_some_wall_membersssiE8nullwall,32,32
.lcomm _localartfreq,61440,32
	.globl	__ZL13numhlsecwalls.lto_priv.0
	.align 4
__ZL13numhlsecwalls.lto_priv.0:
	.space 4
	.globl	__ZL17minhlsectorfloorz.lto_priv.0
	.align 4
__ZL17minhlsectorfloorz.lto_priv.0:
	.space 4
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_yax_getnextwall;	.scl	2;	.type	32;	.endef
	.def	_yax_getnextwall.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL22backup_highlighted_mapP13mapinfofull_t.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_checksectorpointer;	.scl	2;	.type	32;	.endef
	.def	__ZL23restore_highlighted_mapP13mapinfofull_ti.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__printmessage16;	.scl	2;	.type	32;	.endef
	.def	_yax_updategrays;	.scl	2;	.type	32;	.endef
	.def	_calc_sector_reachability;	.scl	2;	.type	32;	.endef
	.def	_message;	.scl	2;	.type	32;	.endef
	.def	_yax_update;	.scl	2;	.type	32;	.endef
	.def	__ZL16mapinfofull_freeP13mapinfofull_t.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_insertsprite;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	_inside;	.scl	2;	.type	32;	.endef
	.def	_videoBeginDrawing;	.scl	2;	.type	32;	.endef
	.def	_videoEndDrawing;	.scl	2;	.type	32;	.endef
	.def	_videoShowFrame.part.0;	.scl	2;	.type	32;	.endef
	.def	_fixrepeats;	.scl	2;	.type	32;	.endef
	.def	_yax_setnextwall.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_setsprite;	.scl	2;	.type	32;	.endef
	.def	_spriteoncfz;	.scl	2;	.type	32;	.endef
	.def	_updatesectorexclude.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_yax_setnextwall.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.1;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_sectorofwall;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.part.0;	.scl	2;	.type	32;	.endef
	.def	_setfirstwall;	.scl	2;	.type	32;	.endef
	.def	_fillsector_maybetrans.isra.0;	.scl	2;	.type	32;	.endef
	.def	_ask_if_sure;	.scl	2;	.type	32;	.endef
	.def	__ZL11insertpointsiiPi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_clockdir;	.scl	2;	.type	32;	.endef
	.def	__ZL14yax_tweakwallsss.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
	.def	__ZL9flipwallsss.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL13whitelinescanss.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_yax_setbunch.part.0;	.scl	2;	.type	32;	.endef
	.def	_do_deletespritesect;	.scl	2;	.type	32;	.endef
	.def	_do_insertsprite_at_headofsect;	.scl	2;	.type	32;	.endef
	.def	__Z10VM_OnEventii;	.scl	2;	.type	32;	.endef
	.def	_editorGet2dScreenCoordinates;	.scl	2;	.type	32;	.endef
	.def	_editorDraw2dLine;	.scl	2;	.type	32;	.endef
	.def	_rotatepoint;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	_drawsmallabel;	.scl	2;	.type	32;	.endef
	.def	_editorGet2dSpriteColor;	.scl	2;	.type	32;	.endef
	.def	__Z11DrawClipBoxs;	.scl	2;	.type	32;	.endef
	.def	_lastwall;	.scl	2;	.type	32;	.endef
	.def	__ZL9movewallsii.isra.0;	.scl	2;	.type	32;	.endef
