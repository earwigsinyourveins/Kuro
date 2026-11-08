	.file	"<artificial>"
	.text
	.p2align 4
	.def	__ZL9sortmodesPKvS0_;	.scl	3;	.type	32;	.endef
__ZL9sortmodesPKvS0_:
LFB0:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %edx
	movl	12(%esp), %ecx
	movzbl	9(%edx), %ebx
	movzbl	9(%ecx), %eax
	subl	%ebx, %eax
	jne	L1
	movzbl	8(%ecx), %eax
	movzbl	8(%edx), %ebx
	subl	%ebx, %eax
	jne	L1
	movl	(%ecx), %eax
	subl	(%edx), %eax
	jne	L1
	movl	4(%ecx), %eax
	subl	4(%edx), %eax
L1:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE0:
	.section .rdata,"dr"
	.align 4
LC1:
	.ascii "TlsPoolBucket::Init: invalid bucket index\0"
LC2:
	.ascii "source/build/src/smmalloc.cpp\0"
LC3:
	.ascii "ABORT: \0"
LC4:
	.ascii "bucketlist\0"
	.align 4
LC5:
	.ascii "bucketlist: list bucket statistics\0"
LC6:
	.ascii "heapinfo\0"
	.align 4
LC7:
	.ascii "heapinfo: memory usage statistics\0"
LC8:
	.ascii "main\0"
LC9:
	.ascii "engine\0"
LC10:
	.ascii "%d\0"
LC11:
	.ascii ">\0"
LC12:
	.ascii "0\0"
LC13:
	.ascii "argc\0"
	.align 4
LC14:
	.ascii "CHECK FAILED:  %s %s %s  (%s %s %s)  \0"
LC15:
	.ascii "Expected proper argc/argv\0"
LC16:
	.ascii "%s\0"
LC17:
	.ascii "source/build/src/loguru.cpp\0"
LC18:
	.ascii "N/A\0"
LC19:
	.ascii "==\0"
LC20:
	.ascii "nullptr\0"
LC21:
	.ascii "argv[argc]\0"
	.align 4
LC22:
	.ascii "Failed to get current working directory: %s\0"
	.align 4
LC23:
	.ascii "basic_string: construction from null is not valid\0"
LC24:
	.ascii "basic_string::append\0"
LC25:
	.ascii "\\a\0"
LC26:
	.ascii "\\b\0"
LC27:
	.ascii "\\f\0"
LC28:
	.ascii "\\n\0"
LC29:
	.ascii "\\r\0"
LC30:
	.ascii "\\t\0"
LC31:
	.ascii "\\v\0"
LC32:
	.ascii "\\\\\0"
LC33:
	.ascii "\\'\0"
LC34:
	.ascii "\\\"\0"
LC35:
	.ascii "\\ \0"
LC36:
	.ascii "\\x\0"
LC37:
	.ascii " \0"
LC38:
	.ascii "main thread\0"
LC39:
	.ascii "\33[1;2m\0"
LC40:
	.ascii "\33[1;0m\0"
LC41:
	.ascii "%s%s%s\12\0"
LC42:
	.ascii "%s\12\0"
LC43:
	.ascii "arguments: %s\0"
LC44:
	.ascii "Current dir: %s\0"
LC45:
	.ascii "stderr verbosity: %d\0"
	.align 4
LC46:
	.ascii "-----------------------------------\0"
	.align 4
LC47:
	.ascii "Failed to install handler for SIGABRT\0"
	.align 4
LC48:
	.ascii "CHECK FAILED:  (default_handler[SIGABRT] = signal(SIGABRT, signal_handler)) != SIG_ERR  \0"
	.align 4
LC49:
	.ascii "Failed to install handler for SIGFPE\0"
	.align 4
LC50:
	.ascii "CHECK FAILED:  (default_handler[SIGFPE] = signal(SIGFPE, signal_handler)) != SIG_ERR  \0"
	.align 4
LC51:
	.ascii "Failed to install handler for SIGILL\0"
	.align 4
LC52:
	.ascii "CHECK FAILED:  (default_handler[SIGILL] = signal(SIGILL, signal_handler)) != SIG_ERR  \0"
	.align 4
LC53:
	.ascii "Failed to install handler for SIGINT\0"
	.align 4
LC54:
	.ascii "CHECK FAILED:  (default_handler[SIGINT] = signal(SIGINT, signal_handler)) != SIG_ERR  \0"
	.align 4
LC55:
	.ascii "Failed to install handler for SIGSEGV\0"
	.align 4
LC56:
	.ascii "CHECK FAILED:  (default_handler[SIGSEGV] = signal(SIGSEGV, signal_handler)) != SIG_ERR  \0"
	.align 4
LC57:
	.ascii "Failed to install handler for SIGTERM\0"
	.align 4
LC58:
	.ascii "CHECK FAILED:  (default_handler[SIGTERM] = signal(SIGTERM, signal_handler)) != SIG_ERR  \0"
LC59:
	.ascii "1\0"
	.align 4
LC60:
	.ascii "SDL_WINDOWS_DISABLE_THREAD_NAMING\0"
LC61:
	.ascii "EDUKE32_NO_XINPUT\0"
LC62:
	.ascii "SDL_XINPUT_ENABLED\0"
LC63:
	.ascii "SDL_NO_SIGNAL_HANDLERS\0"
LC64:
	.ascii "SDL_VIDEO_HIGHDPI_DISABLED\0"
LC65:
	.ascii "SDL_MOUSE_FOCUS_CLICKTHROUGH\0"
LC66:
	.ascii "3\0"
LC67:
	.ascii "SDL_AUDIO_RESAMPLING_MODE\0"
LC68:
	.ascii "SDL_MOUSE_RELATIVE_SCALING\0"
LC69:
	.ascii "EDUKE32_NO_OPENGL_FOG\0"
	.align 4
LC73:
	.ascii "This version of Windows is not supported.\0"
LC74:
	.ascii "%s: %s\0"
LC75:
	.ascii "buildapp\0"
LC76:
	.ascii "/\\\0"
LC77:
	.ascii "basic_string::substr\0"
	.align 4
LC78:
	.ascii "%s: __pos (which is %zu) > this->size() (which is %zu)\0"
LC79:
	.ascii ".exe\0"
LC80:
	.ascii "-dp\0"
LC81:
	.ascii ".wang\0"
LC82:
	.ascii ".wb\0"
LC83:
	.ascii "-hide\0"
LC85:
	.ascii "EDUKE32_LOGSTDOUT\0"
LC86:
	.ascii "TRUE\0"
LC87:
	.ascii "w\0"
LC88:
	.ascii "stdout.txt\0"
	.section	.text.unlikely,"x"
LCOLDB89:
	.text
LHOTB89:
	.p2align 4
	.globl	_WinMain@16
	.def	_WinMain@16;	.scl	2;	.type	32;	.endef
_WinMain@16:
LFB2:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-8, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x70,0x6
	.cfi_escape 0x10,0x7,0x2,0x75,0x7c
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	subl	$1224, %esp
	call	*__imp__GetCommandLineA@0
	call	_mi_strdup
	movl	__tls_index, %edx
	movl	%eax, %ebx
	movl	%fs:44, %eax
	movl	(%eax,%edx,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %eax
	movl	%eax, -1152(%ebp)
	testl	%ebx, %ebx
	je	L6
	movzbl	(%ebx), %eax
	testb	%al, %al
	je	L6
	leal	1(%ebx), %esi
	movl	%ebx, %edi
	xorl	%ecx, %ecx
	cmpb	$32, %al
	je	L11
L9:
	movb	$0, -1144(%ebp)
	movb	$0, -1140(%ebp)
	movl	%ebx, -1148(%ebp)
L15:
	xorl	%edx, %edx
L39:
	leal	1(%ecx), %ebx
	cmpb	$34, %al
	je	L431
	cmpb	$92, %al
	je	L35
L38:
	cmpb	$0, -1140(%ebp)
	cmovne	%ecx, %ebx
L37:
	movb	%al, (%edi)
	movzbl	(%esi), %eax
	leal	1(%edi), %edx
	testb	%al, %al
	je	L416
	addl	$1, %esi
	cmpb	$32, %al
	je	L27
	cmpb	$34, %al
	je	L432
	movl	%edx, %edi
	cmpb	$92, %al
	jne	L37
L422:
	movb	$1, -1140(%ebp)
	movl	%ebx, %ecx
	xorl	%edx, %edx
	addl	$1, %ebx
L35:
	cmpb	$34, (%esi)
	jne	L243
	testb	%dl, %dl
	je	L433
L243:
	movl	$92, %eax
	jmp	L38
L436:
	movb	$1, -1144(%ebp)
	movl	%edi, %edx
	.p2align 4
	.p2align 3
L27:
	leal	1(%edx), %edi
	cmpb	$0, -1144(%ebp)
	jne	L12
	movb	$0, (%edx)
	movzbl	(%esi), %eax
	testb	%al, %al
	je	L236
	addl	$1, %esi
	cmpb	$32, %al
	jne	L434
	movl	%ebx, %ecx
	movl	-1148(%ebp), %ebx
L11:
	movzbl	(%esi), %eax
	testb	%al, %al
	je	L227
	addl	$1, %esi
	cmpb	$32, %al
	jne	L9
	jmp	L11
L435:
	movl	%edi, %edx
	addl	$1, %edi
L12:
	movb	$32, (%edx)
	movzbl	(%esi), %eax
	testb	%al, %al
	je	L236
	addl	$1, %esi
	cmpb	$32, %al
	je	L435
	movzbl	-1144(%ebp), %edx
L14:
	movl	%ebx, %ecx
	movzbl	-1144(%ebp), %ebx
	movb	%dl, -1144(%ebp)
	movb	%bl, -1140(%ebp)
	jmp	L15
L431:
	testb	%dl, %dl
	jne	L38
	movzbl	(%esi), %eax
	cmpb	$0, -1140(%ebp)
	jne	L232
L19:
	testb	%al, %al
	je	L236
	addl	$1, %esi
	cmpb	$32, %al
	je	L436
	cmpb	$34, %al
	je	L437
	movb	$1, -1144(%ebp)
	cmpb	$92, %al
	jne	L37
	jmp	L422
L416:
	movl	%ebx, -1180(%ebp)
	movl	-1148(%ebp), %ebx
L10:
	movl	-1180(%ebp), %eax
	movb	$0, (%edx)
	leal	4(,%eax,4), %edx
	leal	0(,%eax,4), %esi
	cmpl	$512, %edx
	ja	L41
	movl	%edx, %eax
	shrl	$2, %eax
L8:
	movl	-1152(%ebp), %edi
	movl	184(%edi,%eax,4), %eax
	movl	8(%eax), %edi
	movl	%edi, -1172(%ebp)
	testl	%edi, %edi
	je	L41
	movl	-1172(%ebp), %edx
	movl	(%edx), %edx
	addw	$1, 16(%eax)
	movl	%edx, 8(%eax)
L43:
	movl	-1180(%ebp), %edx
	testl	%edx, %edx
	jle	L44
	movl	-1172(%ebp), %edi
	movl	%edi, %eax
	leal	(%edi,%edx,4), %edx
	.p2align 4
	.p2align 3
L47:
	movl	%ebx, (%eax)
	cmpb	$0, (%ebx)
	je	L45
	.p2align 3
	.p2align 4
	.p2align 3
L46:
	addl	$1, %ebx
	cmpb	$0, (%ebx)
	jne	L46
L45:
	addl	$4, %eax
	addl	$1, %ebx
	cmpl	%eax, %edx
	jne	L47
L44:
	movl	__tls_index, %edx
	addl	-1172(%ebp), %esi
	movl	$64, %ecx
	movl	%fs:44, %eax
	movl	$0, (%esi)
	movl	(%eax,%edx,4), %eax
	movl	$384, %edx
	movl	__mi_heap_default@secrel32(%eax), %eax
	movl	$0, (%esp)
	call	__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0
	movl	%eax, %edx
	movl	%eax, -1144(%ebp)
	leal	68(%eax), %eax
	movl	$0, -68(%eax)
	leal	388(%edx), %ecx
	xorl	%edx, %edx
	movl	$0, -64(%eax)
	movl	$0, -60(%eax)
	.p2align 4
	.p2align 3
L48:
	movl	$-1, -20(%eax)
	movl	%edx, %ebx
	movl	$-1, -16(%eax)
	movl	$0, -12(%eax)
	movl	$0, -8(%eax)
	movl	$0, -4(%eax)
	xchgl	(%eax), %ebx
	movl	%edx, %ebx
	xchgl	4(%eax), %ebx
	movl	%edx, %ebx
	xchgl	8(%eax), %ebx
	movl	%edx, %edi
	xchgl	12(%eax), %edi
	addl	$40, %eax
	cmpl	%eax, %ecx
	jne	L48
	movl	-1144(%ebp), %ebx
	movl	$0, 368(%ebx)
	movl	$0, 372(%ebx)
	movl	$0, 376(%ebx)
	xchgl	380(%ebx), %edx
	movl	(%ebx), %eax
	movl	%eax, -1140(%ebp)
	testl	%eax, %eax
	jne	L49
	movl	$8, %eax
	movl	$2097152, %edx
	movl	$0, 12(%ebx)
	movl	$128, %ecx
	movl	%eax, (%ebx)
	movl	%fs:44, %eax
	movl	%edx, 4(%ebx)
	movl	__tls_index, %edx
	movl	$0, 16(%ebx)
	movl	(%eax,%edx,4), %eax
	movl	$0, 20(%ebx)
	movl	$16777216, %edx
	movl	$0, 24(%ebx)
	movl	$0, 28(%ebx)
	movl	__mi_heap_default@secrel32(%eax), %eax
	movl	$0, 32(%ebx)
	movl	$0, 36(%ebx)
	movl	$0, 40(%ebx)
	movl	$0, (%esp)
	call	__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0
	movl	%eax, %edx
	movl	372(%ebx), %eax
	movl	%edx, 372(%ebx)
	testl	%eax, %eax
	je	L50
	call	_mi_free
	movl	372(%ebx), %edx
L50:
	movl	-1144(%ebp), %edi
	leal	16777217(%edx), %eax
	movl	(%edi), %ecx
	movl	%eax, 8(%edi)
	testl	%ecx, %ecx
	je	L49
	movl	%esi, -1156(%ebp)
	movl	-1140(%ebp), %esi
	addl	$56, %edi
	.p2align 4
	.p2align 3
L53:
	movl	-1144(%ebp), %ebx
	leal	1(%esi), %eax
	movl	%eax, -1148(%ebp)
	sall	$4, %eax
	movl	%eax, -1140(%ebp)
	movl	4(%ebx), %eax
	movl	%eax, %ecx
	imull	%esi, %ecx
	leal	(%edx,%ecx), %ebx
	xorl	%edx, %edx
	addl	%ebx, %eax
	movl	%ebx, 4(%edi)
	movl	%eax, 8(%edi)
	movl	$0, (%edi)
	movl	(%edi), %eax
	movl	%eax, -1120(%ebp)
	movl	%edx, -1116(%ebp)
	movlps	-1120(%ebp), %xmm2
	movlps	%xmm2, -8(%edi)
	lock orl	$0, (%esp)
	movl	-1140(%ebp), %eax
	leal	(%ebx,%eax), %ecx
	addl	%ecx, %eax
	cmpl	%eax, 8(%edi)
	jb	L51
	movl	%esi, -1152(%ebp)
	movl	%ebx, %edx
	.p2align 6
	.p2align 4
	.p2align 3
L52:
	movl	(%edi), %esi
	movl	%ecx, %ebx
	subl	4(%edi), %ebx
	movl	%ebx, 4(%edx)
	movl	%esi, (%edx)
	lock addl	$1, (%edi)
	movl	-1140(%ebp), %esi
	movl	%ecx, %ebx
	addl	%esi, %edx
	movl	%eax, %ecx
	addl	%esi, %eax
	cmpl	%eax, 8(%edi)
	jnb	L52
	movl	-1152(%ebp), %esi
L51:
	movl	$-1, (%ebx)
	movl	-1144(%ebp), %edx
	movl	$-1, 4(%ebx)
	movl	4(%edi), %eax
	movl	%eax, 12(%edx,%esi,4)
	movl	-1148(%ebp), %esi
	cmpl	(%edx), %esi
	jnb	L417
	movl	372(%edx), %edx
	addl	$40, %edi
	jmp	L53
L417:
	movl	-1156(%ebp), %esi
L49:
	movl	-1144(%ebp), %eax
	movl	-1144(%ebp), %edi
	movl	%esi, -1208(%ebp)
	xorl	%ebx, %ebx
	movl	$15, -1196(%ebp)
	movl	%eax, _g_sm_heap
	addl	$48, %eax
	movl	%eax, -1192(%ebp)
	cmpl	(%edi), %ebx
	jnb	L54
L446:
	movl	_C.174.0(,%ebx,4), %eax
	movl	__tls_index, %ecx
	movl	%eax, -1164(%ebp)
	leal	40(,%eax,4), %edx
	movl	%fs:44, %eax
	movl	(%eax,%ecx,4), %esi
	movl	$64, %ecx
	movl	__mi_heap_default@secrel32(%esi), %eax
	movl	$0, (%esp)
	call	__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0
	movl	%eax, %edx
	cmpl	(%edi), %ebx
	jnb	L438
	movl	-1196(%ebp), %ecx
	leal	_tlsCacheBuckets@secrel32(%esi), %eax
	leal	0(,%ecx,4), %edi
	movl	%edx, _tlsCacheBuckets@secrel32-56(%esi,%edi)
	movl	-1164(%ebp), %edx
	movl	$0, _tlsCacheBuckets@secrel32-4(%esi,%edi)
	movb	$0, _tlsCacheBuckets@secrel32(%esi,%edi)
	movl	%edx, _tlsCacheBuckets@secrel32-8(%esi,%edi)
	movl	-1192(%ebp), %esi
	movl	%edi, -1160(%ebp)
	movl	%esi, -52(%eax,%edi)
	movl	12(%esi), %edx
	leal	1(%ebx), %esi
	movl	%edx, -60(%eax,%edi)
	movl	-1164(%ebp), %edx
	testl	%edx, %edx
	je	L56
	movl	%esi, %edx
	shrl	$4, %ecx
	movl	$0, -1148(%ebp)
	sall	$4, %edx
	movl	%ecx, -1152(%ebp)
	movl	%edx, -1176(%ebp)
	movl	%ecx, %edx
	sall	$6, %ecx
	addl	%ecx, %eax
	movl	%ecx, -1184(%ebp)
	movl	%eax, -1200(%ebp)
	leal	(%edx,%edx,4), %eax
	movl	-1144(%ebp), %edx
	movl	$0, -1156(%ebp)
	leal	48(%edx,%eax,8), %eax
	movl	%esi, -1204(%ebp)
	movl	-1152(%ebp), %edx
	movl	%eax, -1168(%ebp)
	movl	-1144(%ebp), %eax
	movl	%ebx, -1188(%ebp)
	cmpl	(%eax), %edx
	jb	L439
	.p2align 4
	.p2align 3
L57:
	movl	__tls_index, %edx
	movl	%fs:44, %eax
	movl	$16, %ecx
	movl	(%eax,%edx,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %eax
	movl	$0, (%esp)
	movl	-1176(%ebp), %edx
	call	__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0
	movl	%eax, %edi
	testl	%eax, %eax
	je	L419
	.p2align 4
	.p2align 3
L61:
	movl	-1144(%ebp), %ecx
	cmpl	372(%ecx), %edi
	jnb	L440
L68:
	movl	-1204(%ebp), %esi
	movl	%edi, (%esp)
	movl	-1144(%ebp), %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L67:
	movl	-1156(%ebp), %eax
	testl	%eax, %eax
	je	L56
L71:
	movl	__tls_index, %edx
	movl	%fs:44, %eax
	movl	%esi, -1184(%ebp)
	movl	-1156(%ebp), %edi
	movl	(%eax,%edx,4), %eax
	leal	_tlsCacheBuckets@secrel32(%eax), %edx
	movl	%edx, -1168(%ebp)
	movl	-1160(%ebp), %edx
	leal	_tlsCacheBuckets@secrel32-8(%eax,%edx), %eax
	movl	%eax, -1164(%ebp)
	jmp	L79
	.p2align 4,,10
	.p2align 3
L442:
	movl	-1152(%ebp), %eax
	movl	%eax, (%esi,%edx,4)
	addl	$1, %edx
	movl	%edx, (%ebx)
L72:
	testl	%edi, %edi
	je	L441
L79:
	movl	-1164(%ebp), %eax
	movl	%edi, %edx
	movl	(%edi), %edi
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L72
	movl	-1160(%ebp), %esi
	movl	-1168(%ebp), %ecx
	leal	-60(%ecx,%esi), %ebx
	movl	%ebx, -1140(%ebp)
	movl	(%ebx), %ebx
	subl	%ebx, %edx
	movl	%ebx, -1156(%ebp)
	movl	%edx, -1152(%ebp)
	leal	-4(%ecx,%esi), %edx
	leal	-56(%ecx,%esi), %ecx
	movl	%edx, -1148(%ebp)
	movl	%edx, %ebx
	movl	(%edx), %edx
	movl	(%ecx), %esi
	cmpl	%eax, %edx
	jb	L442
	movl	%edx, %ebx
	movl	$1, %eax
	shrl	%ebx
	je	L74
	movl	%edx, %eax
	movl	%ebx, -1176(%ebp)
	subl	%ebx, %eax
	movl	-1156(%ebp), %ebx
	addl	(%esi,%eax,4), %ebx
	movl	%ebx, -1156(%ebp)
	leal	1(%eax), %ebx
	cmpl	%edx, %ebx
	jnb	L247
	movl	4(%esi,%eax,4), %esi
	movl	-1156(%ebp), %ebx
	addl	$2, %eax
	movl	$16777215, (%ebx)
	movl	%esi, 4(%ebx)
	movl	-1140(%ebp), %ebx
	addl	(%ebx), %esi
	movl	-1148(%ebp), %ebx
	cmpl	(%ebx), %eax
	jnb	L75
	movl	-1176(%ebp), %ebx
	movl	%edi, -1188(%ebp)
	subl	%edx, %ebx
	leal	16777214(%ebx), %edi
	.p2align 6
	.p2align 4
	.p2align 3
L76:
	movl	(%ecx), %edx
	leal	(%edi,%eax), %ebx
	movl	(%edx,%eax,4), %edx
	movl	%ebx, (%esi)
	addl	$1, %eax
	movl	-1140(%ebp), %ebx
	movl	%edx, 4(%esi)
	addl	(%ebx), %edx
	movl	%edx, %esi
	movl	-1148(%ebp), %edx
	cmpl	(%edx), %eax
	jb	L76
	movl	-1188(%ebp), %edi
L75:
	movl	__tls_index, %edx
	movl	%fs:44, %eax
	movl	$1, %ebx
	movl	(%eax,%edx,4), %eax
	movl	-1160(%ebp), %edx
	movl	_tlsCacheBuckets@secrel32-52(%eax,%edx), %ecx
	lock xaddl	%ebx, 8(%ecx)
	movl	-1156(%ebp), %eax
	subl	12(%ecx), %eax
	movl	%eax, -1140(%ebp)
	movlps	(%ecx), %xmm3
	movlps	%xmm3, -1136(%ebp)
	movl	-1136(%ebp), %eax
	movl	-1132(%ebp), %edx
	movl	%eax, -1040(%ebp)
	movl	%edx, -1036(%ebp)
	movl	%edi, -1148(%ebp)
	movl	%ecx, %edi
L78:
	movl	-1040(%ebp), %eax
	movl	-1036(%ebp), %edx
	movl	-1140(%ebp), %ecx
	movl	%eax, (%esi)
	movl	%edx, 4(%esi)
	movl	-1040(%ebp), %eax
	movl	-1036(%ebp), %edx
	lock cmpxchg8b	(%edi)
	je	L256
	movl	%eax, -1040(%ebp)
	movl	%edx, -1036(%ebp)
	jmp	L78
	.p2align 4,,10
	.p2align 3
L440:
	cmpl	8(%ecx), %edi
	jnb	L68
	movl	%edi, %eax
	xorl	%edx, %edx
	subl	12(%ecx), %eax
	divl	4(%ecx)
	cmpl	(%ecx), %eax
	jnb	L68
	cmpl	-1188(%ebp), %eax
	jne	L68
	movl	-1156(%ebp), %eax
	addl	$1, -1148(%ebp)
	movl	%eax, (%edi)
	movl	-1148(%ebp), %eax
	cmpl	%eax, -1164(%ebp)
	je	L443
	movl	-1144(%ebp), %eax
	movl	%edi, -1156(%ebp)
	movl	-1152(%ebp), %edx
	cmpl	(%eax), %edx
	jnb	L57
L439:
	movl	%fs:44, %edx
	movl	__tls_index, %edi
	movl	-1184(%ebp), %eax
	addl	(%edx,%edi,4), %eax
	movzbl	_tlsCacheBuckets@secrel32+60(%eax), %edx
	testb	%dl, %dl
	jne	L444
	movl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	testl	%edx, %edx
	je	L60
	movl	_tlsCacheBuckets@secrel32+4(%eax), %ecx
	subl	$1, %edx
	movl	%edx, _tlsCacheBuckets@secrel32+56(%eax)
	movl	(%ecx,%edx,4), %edi
	addl	_tlsCacheBuckets@secrel32(%eax), %edi
L59:
	testl	%edi, %edi
	jne	L61
	movl	-1144(%ebp), %eax
	movl	-1152(%ebp), %edx
	cmpl	(%eax), %edx
	jnb	L57
L60:
	movl	-1168(%ebp), %esi
	movl	-1152(%ebp), %ecx
	.p2align 4
	.p2align 3
L66:
	movlps	(%esi), %xmm1
	movlps	%xmm1, -1128(%ebp)
	movl	-1128(%ebp), %eax
	movl	-1124(%ebp), %edx
	movl	%eax, -1040(%ebp)
	andl	%edx, %eax
	movl	%edx, -1036(%ebp)
	movl	%ecx, -1140(%ebp)
	cmpl	$-1, %eax
	je	L62
L445:
	movl	-1036(%ebp), %edi
	addl	12(%esi), %edi
	movl	(%edi), %ebx
	movl	4(%edi), %ecx
	movl	-1040(%ebp), %eax
	movl	-1036(%ebp), %edx
	lock cmpxchg8b	(%esi)
	je	L61
	movl	%eax, -1040(%ebp)
	andl	%edx, %eax
	movl	%edx, -1036(%ebp)
	cmpl	$-1, %eax
	jne	L445
L62:
	movl	-1140(%ebp), %ecx
	movl	-1144(%ebp), %eax
	addl	$40, %esi
	addl	$1, %ecx
	cmpl	(%eax), %ecx
	jb	L66
	jmp	L57
L256:
	movl	__tls_index, %edx
	movl	%fs:44, %eax
	movl	-1148(%ebp), %edi
	movl	(%eax,%edx,4), %eax
	movl	-1160(%ebp), %edx
	movl	_tlsCacheBuckets@secrel32-4(%eax,%edx), %eax
	subl	-1176(%ebp), %eax
L74:
	movl	__tls_index, %ebx
	movl	%fs:44, %edx
	movl	-1152(%ebp), %esi
	movl	(%edx,%ebx,4), %edx
	movl	-1160(%ebp), %ebx
	movl	_tlsCacheBuckets@secrel32-56(%edx,%ebx), %ecx
	movl	%esi, (%ecx,%eax,4)
	addl	$1, %eax
	movl	%eax, _tlsCacheBuckets@secrel32-4(%edx,%ebx)
	testl	%edi, %edi
	jne	L79
L441:
	movl	-1184(%ebp), %esi
L56:
	addl	$40, -1192(%ebp)
	addl	$16, -1196(%ebp)
	cmpl	$8, %esi
	je	L54
	movl	-1144(%ebp), %edi
	movl	%esi, %ebx
	cmpl	(%edi), %ebx
	jb	L446
L54:
	movl	_osd, %edi
	movl	-1208(%ebp), %esi
	testl	%edi, %edi
	je	L447
	movl	$LC4, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L448
L82:
	movl	_osd, %ebx
	movl	$LC5, 8(%eax)
	movl	$__ZL18osdfunc_bucketlistPK13osdfuncparm_t.lto_priv.0, 12(%eax)
	testl	%ebx, %ebx
	je	L449
	movl	$LC6, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L450
L84:
	movl	$LC7, 8(%eax)
	movl	$__ZL16osdfunc_heapinfoPK13osdfuncparm_t.lto_priv.0, 12(%eax)
	movl	$__ZL10sighandleri.lto_priv.0, 4(%esp)
	movl	$11, (%esp)
	call	_signal
	movl	$__ZL10sighandleri.lto_priv.0, 4(%esp)
	movl	$4, (%esp)
	call	_signal
	movl	$__ZL10sighandleri.lto_priv.0, 4(%esp)
	movl	$22, (%esp)
	call	_signal
	movl	$__ZL10sighandleri.lto_priv.0, 4(%esp)
	movl	$8, (%esp)
	call	_signal
	movl	__imp__strncpy_s, %eax
	movl	$127, __ZN6loguru20g_internal_verbosityE
	movb	$0, __ZN6loguru15g_preamble_fileE
	movb	$0, __ZN6loguru15g_preamble_timeE
	movb	$0, __ZN6loguru15g_preamble_dateE
	movb	$0, __ZN6loguru17g_preamble_threadE
	movl	$-1, 12(%esp)
	movl	$LC8, 8(%esp)
	movl	$9, 4(%esp)
	movl	$__ZZN6loguru18thread_name_bufferEvE11thread_name.lto_priv.0, (%esp)
	movl	%eax, -1156(%ebp)
	call	*%eax
	xorl	%ecx, %ecx
	movl	$__Z17engineLogCallbackPvRKN6loguru7MessageE, %edx
	movl	$LC9, %eax
	movl	$__Z23engineVerbosityCallbacki, __ZN6loguruL28s_verbosity_to_name_callbackE.lto_priv.0
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru12add_callbackEPKcPFvPvRKNS_7MessageEES2_iPFvS2_ES9_.constprop.0
	movl	-1180(%ebp), %ecx
	movl	$__ZZ18engineSetupLoggingRiPPcENUlRKN6loguru7MessageEE_4_FUNES5_.lto_priv.0, __ZN6loguruL15s_fatal_handlerE.lto_priv.0
	testl	%ecx, %ecx
	jle	L451
	movl	(%esi), %edx
	testl	%edx, %edx
	jne	L452
	movl	-1172(%ebp), %eax
	movl	__ZN6loguruL16s_argv0_filenameE.lto_priv.0+4, %edi
	movl	(%eax), %ebx
	movzbl	(%ebx), %eax
	testb	%al, %al
	je	L87
	movl	%ebx, %esi
	jmp	L89
	.p2align 4,,10
	.p2align 3
L454:
	cmpb	$47, %al
	je	L249
	movzbl	(%ebx), %eax
	testb	%al, %al
	je	L453
L89:
	addl	$1, %ebx
	cmpb	$92, %al
	jne	L454
L249:
	movzbl	(%ebx), %eax
	movl	%ebx, %esi
	testb	%al, %al
	jne	L89
L453:
	movl	%esi, (%esp)
	call	_strlen
L224:
	movl	%eax, 12(%esp)
	movl	$__ZN6loguruL16s_argv0_filenameE.lto_priv.0, %ecx
	movl	%esi, 8(%esp)
	movl	%edi, 4(%esp)
	movl	$0, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj
	subl	$16, %esp
	movl	$260, 4(%esp)
	movl	$__ZN6loguruL13s_current_dirE, (%esp)
	call	*__imp___getcwd
	testl	%eax, %eax
	je	L455
L90:
	movl	__ZN6loguruL11s_argumentsE.lto_priv.0, %eax
	xorl	%ebx, %ebx
	movb	$0, (%eax)
	leal	-1032(%ebp), %eax
	movl	$0, __ZN6loguruL11s_argumentsE.lto_priv.0+4
	movl	%eax, -1144(%ebp)
	.p2align 4
	.p2align 3
L125:
	movl	-1172(%ebp), %eax
	movl	(%eax,%ebx,4), %esi
	movl	-1144(%ebp), %eax
	movl	%eax, -1040(%ebp)
	testl	%esi, %esi
	je	L147
	movl	%esi, (%esp)
	call	_strlen
	movl	%esi, (%esp)
	leal	-1040(%ebp), %ecx
	addl	%esi, %eax
	movl	%eax, 4(%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
	movl	-1040(%ebp), %eax
	movl	-1036(%ebp), %ecx
	subl	$8, %esp
	addl	%eax, %ecx
	cmpl	%ecx, %eax
	je	L423
	movl	%ebx, -1148(%ebp)
	movl	%eax, %edi
	movl	%ecx, -1140(%ebp)
	jmp	L122
	.p2align 4,,10
	.p2align 3
L94:
	cmpb	$8, %bl
	je	L456
	cmpb	$12, %bl
	je	L457
	cmpb	$10, %bl
	je	L458
	cmpb	$13, %bl
	je	L459
	cmpb	$9, %bl
	je	L460
	cmpb	$11, %bl
	je	L461
	cmpb	$92, %bl
	je	L462
	cmpb	$39, %bl
	je	L463
	cmpb	$34, %bl
	je	L464
	cmpb	$32, %bl
	je	L465
	cmpb	$31, %bl
	jg	L108
	subl	$2147483645, %esi
	cmpl	$1, %esi
	jbe	L98
	movl	$2, 4(%esp)
	movl	$__ZN6loguruL11s_argumentsE.lto_priv.0, %ecx
	movl	$LC36, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	movl	__ZN6loguruL11s_argumentsE.lto_priv.0, %edx
	movl	%ebx, %eax
	movl	$15, %ecx
	subl	$8, %esp
	shrb	$4, %al
	movl	__ZN6loguruL11s_argumentsE.lto_priv.0+4, %esi
	cmpl	$__ZN6loguruL11s_argumentsE.lto_priv.0+8, %edx
	cmovne	__ZN6loguruL11s_argumentsE.lto_priv.0+8, %ecx
	cmpb	$-97, %bl
	ja	L109
	addl	$48, %eax
	movb	%al, -1152(%ebp)
	leal	1(%esi), %eax
	cmpl	%eax, %ecx
	jb	L427
L114:
	movzbl	-1152(%ebp), %ecx
	andl	$15, %ebx
	movb	%cl, (%edx,%esi)
	movl	__ZN6loguruL11s_argumentsE.lto_priv.0, %edx
	movb	$0, 1(%edx,%esi)
	movl	__ZN6loguruL11s_argumentsE.lto_priv.0, %ecx
	movl	$15, %edx
	movl	%eax, __ZN6loguruL11s_argumentsE.lto_priv.0+4
	cmpl	$__ZN6loguruL11s_argumentsE.lto_priv.0+8, %ecx
	cmovne	__ZN6loguruL11s_argumentsE.lto_priv.0+8, %edx
	cmpb	$9, %bl
	ja	L115
	leal	48(%ebx), %esi
	leal	1(%eax), %ebx
	cmpl	%ebx, %edx
	jb	L428
L119:
	movl	%esi, %edx
	movb	%dl, (%ecx,%eax)
	movl	__ZN6loguruL11s_argumentsE.lto_priv.0, %eax
	movb	$0, (%eax,%ebx)
	movl	%ebx, __ZN6loguruL11s_argumentsE.lto_priv.0+4
	.p2align 4
	.p2align 3
L96:
	addl	$1, %edi
	cmpl	%edi, -1140(%ebp)
	je	L466
L122:
	movzbl	(%edi), %ebx
	movl	__ZN6loguruL11s_argumentsE.lto_priv.0+4, %esi
	cmpb	$7, %bl
	jne	L94
	subl	$2147483645, %esi
	cmpl	$1, %esi
	jbe	L98
	movl	$2, 4(%esp)
	movl	$__ZN6loguruL11s_argumentsE.lto_priv.0, %ecx
	addl	$1, %edi
	movl	$LC25, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	subl	$8, %esp
	cmpl	%edi, -1140(%ebp)
	jne	L122
L466:
	movl	-1148(%ebp), %ebx
	movl	-1040(%ebp), %eax
L423:
	cmpl	-1144(%ebp), %eax
	je	L123
	call	_mi_free
L123:
	leal	1(%ebx), %esi
	cmpl	%esi, -1180(%ebp)
	jne	L467
	movl	%esi, -1148(%ebp)
	movl	$-1, 12(%esp)
	movl	$LC38, 8(%esp)
	movl	$9, 4(%esp)
	movl	$__ZZN6loguru18thread_name_bufferEvE11thread_name.lto_priv.0, (%esp)
	call	*-1156(%ebp)
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	testl	%eax, %eax
	js	L126
	leal	-1040(%ebp), %eax
	call	__ZN6loguruL21print_preamble_headerEPcj.part.0.constprop.0
	cmpb	$0, __ZN6loguruL20s_terminal_has_colorE.lto_priv.0
	movl	__imp____acrt_iob_func, %esi
	movl	$2, (%esp)
	jne	L468
	call	*%esi
	leal	-1040(%ebp), %edx
	movl	$LC42, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	call	_fprintf
L128:
	movl	$2, (%esp)
	call	*%esi
	movl	%eax, (%esp)
	call	_fflush
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
L126:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	__ZN6loguru20g_internal_verbosityE, %ecx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	%ecx, %eax
	jge	L469
L129:
	movl	$__ZN6loguru14signal_handlerEi, 4(%esp)
	movl	$22, (%esp)
	call	_signal
	movl	%eax, __ZN6loguru15default_handlerE+88
	cmpl	$-1, %eax
	je	L470
	movl	$__ZN6loguru14signal_handlerEi, 4(%esp)
	movl	$8, (%esp)
	call	_signal
	movl	%eax, __ZN6loguru15default_handlerE+32
	cmpl	$-1, %eax
	je	L471
	movl	$__ZN6loguru14signal_handlerEi, 4(%esp)
	movl	$4, (%esp)
	call	_signal
	movl	%eax, __ZN6loguru15default_handlerE+16
	cmpl	$-1, %eax
	je	L472
	movl	$__ZN6loguru14signal_handlerEi, 4(%esp)
	movl	$2, (%esp)
	call	_signal
	movl	%eax, __ZN6loguru15default_handlerE+8
	cmpl	$-1, %eax
	je	L473
	movl	$__ZN6loguru14signal_handlerEi, 4(%esp)
	movl	$11, (%esp)
	call	_signal
	movl	%eax, __ZN6loguru15default_handlerE+44
	cmpl	$-1, %eax
	je	L474
	movl	$__ZN6loguru14signal_handlerEi, 4(%esp)
	movl	$15, (%esp)
	call	_signal
	movl	%eax, __ZN6loguru15default_handlerE+60
	cmpl	$-1, %eax
	je	L475
	movl	$__ZN6loguruL9on_atexitEv.lto_priv.0, (%esp)
	call	_atexit
	cmpb	$2, __ZL6linked.lto_priv.0
	ja	L137
	je	L476
L138:
	movl	$LC59, 4(%esp)
	movl	$LC60, (%esp)
	call	_SDL_SetHint
	movl	$LC61, (%esp)
	call	_getenv
	testl	%eax, %eax
	je	L139
	movl	$LC12, 4(%esp)
	movl	$LC62, (%esp)
	call	_SDL_SetHint
L139:
	movl	$LC59, 4(%esp)
	movl	$LC63, (%esp)
	call	_SDL_SetHint
	movl	$LC59, 4(%esp)
	movl	$LC64, (%esp)
	call	_SDL_SetHint
	movl	$LC12, 4(%esp)
	movl	$LC65, (%esp)
	call	_SDL_SetHint
	movl	$LC66, 4(%esp)
	movl	$LC67, (%esp)
	call	_SDL_SetHint
	movl	$LC12, 4(%esp)
	movl	$LC68, (%esp)
	call	_SDL_SetHint
	movl	$LC69, (%esp)
	call	_getenv
	testl	%eax, %eax
	je	L140
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_strtol
	movl	%eax, _nofog
L140:
	movl	$512, 8(%esp)
	movl	$13363, %edi
	movl	$0, 4(%esp)
	movl	$__ZL14keytranslation.lto_priv.0, (%esp)
	call	_memset
	movl	$10279, %eax
	movl	$252576028, %edx
	movw	%di, __ZL14keytranslation.lto_priv.0+54
	movw	%ax, __ZL14keytranslation.lto_priv.0+51
	movl	$185207048, %eax
	movl	%eax, __ZL14keytranslation.lto_priv.0+36
	movl	$11035, %eax
	movw	%ax, __ZL14keytranslation.lto_priv.0+48
	movl	$-12085, %eax
	movw	%ax, __ZL14keytranslation.lto_priv.0+80
	movl	$15419, %eax
	movl	%edx, __ZL14keytranslation.lto_priv.0+40
	movl	$-591907171, %edx
	movw	%ax, __ZL14keytranslation.lto_priv.0+58
	movl	$22615, %eax
	movw	%ax, __ZL14keytranslation.lto_priv.0+68
	movl	$-617076195, %eax
	movb	$53, __ZL14keytranslation.lto_priv.0+56
	movl	$539897886, __ZL14keytranslation.lto_priv.0+4
	movl	$589439250, __ZL14keytranslation.lto_priv.0+8
	movl	$639968279, __ZL14keytranslation.lto_priv.0+12
	movl	$421015858, __ZL14keytranslation.lto_priv.0+16
	movl	$337580816, __ZL14keytranslation.lto_priv.0+20
	movl	$756100886, __ZL14keytranslation.lto_priv.0+24
	movl	$50474005, __ZL14keytranslation.lto_priv.0+28
	movl	$117835012, __ZL14keytranslation.lto_priv.0+32
	movl	$437062713, __ZL14keytranslation.lto_priv.0+44
	movb	$76, __ZL14keytranslation.lto_priv.0+216
	movb	$76, __ZL14keytranslation.lto_priv.0+156
	movl	$1313486773, __ZL14keytranslation.lto_priv.0+84
	movl	$1364217756, __ZL14keytranslation.lto_priv.0+88
	movl	$1196248139, __ZL14keytranslation.lto_priv.0+92
	movl	$1397901640, __ZL14keytranslation.lto_priv.0+96
	movb	$86, __ZL14keytranslation.lto_priv.0+100
	movl	$-909651367, __ZL14keytranslation.lto_priv.0+72
	movl	$-841887789, __ZL14keytranslation.lto_priv.0+76
	movb	$-56, __ZL14keytranslation.lto_priv.0+82
	movl	$1077886525, __ZL14keytranslation.lto_priv.0+60
	movl	$1145258561, __ZL14keytranslation.lto_priv.0+64
	movb	$69, __ZL14keytranslation.lto_priv.0+83
	movb	$58, __ZL14keytranslation.lto_priv.0+57
	movb	$70, __ZL14keytranslation.lto_priv.0+71
	movl	%edx, __ZL14keytranslation.lto_priv.0+228
	movb	$84, __ZL14keytranslation.lto_priv.0+154
	movb	$-35, __ZL14keytranslation.lto_priv.0+118
	movb	$41, __ZL14keytranslation.lto_priv.0+53
	movl	%eax, __ZL14keytranslation.lto_priv.0+224
	xorl	%eax, %eax
L141:
	movl	$0, __ZL3osv.lto_priv.0(%eax)
	addl	$16, %eax
	movl	$0, __ZL3osv.lto_priv.0-12(%eax)
	movl	$0, __ZL3osv.lto_priv.0-8(%eax)
	movl	$0, __ZL3osv.lto_priv.0-4(%eax)
	cmpl	$144, %eax
	jb	L141
	movl	$0, __ZL3osv.lto_priv.0(%eax)
	movl	__imp__GetVersionExA@4, %esi
	movl	$0, __ZL3osv.lto_priv.0+4(%eax)
	movl	$0, __ZL3osv.lto_priv.0+8(%eax)
	movl	$156, __ZL3osv.lto_priv.0
	movl	$__ZL3osv.lto_priv.0, (%esp)
	call	*%esi
	subl	$4, %esp
	testl	%eax, %eax
	jne	L143
	movl	$148, __ZL3osv.lto_priv.0
	movl	$__ZL3osv.lto_priv.0, (%esp)
	call	*%esi
	subl	$4, %esp
	testl	%eax, %eax
	jne	L143
	call	*__imp__GetLastError@0
	movl	$0, 24(%esp)
	movl	$-1, %ebx
	movl	$1024, 20(%esp)
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 16(%esp)
	movl	$1024, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$4608, (%esp)
	call	*__imp__FormatMessageA@28
	leal	-1040(%ebp), %eax
	subl	$28, %esp
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 12(%esp)
	movl	$LC73, 8(%esp)
	movl	$LC74, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__wsprintfA
	leal	-1040(%ebp), %eax
	movl	$16, 12(%esp)
	movl	$_apptitle, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__MessageBoxA@16
	subl	$16, %esp
L5:
	leal	-16(%ebp), %esp
	movl	%ebx, %eax
	popl	%ecx
	.cfi_remember_state
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret	$16
	.p2align 4,,10
	.p2align 3
L444:
	.cfi_restore_state
	subl	$1, %edx
	movl	-1200(%ebp), %edi
	movb	%dl, _tlsCacheBuckets@secrel32+60(%eax)
	movzbl	%dl, %edx
	movl	12(%edi,%edx,4), %edi
	addl	_tlsCacheBuckets@secrel32(%eax), %edi
	jmp	L59
L419:
	movl	-1204(%ebp), %esi
	jmp	L67
L443:
	movl	%edi, -1156(%ebp)
	movl	-1204(%ebp), %esi
	jmp	L71
L434:
	xorl	%edx, %edx
	jmp	L14
	.p2align 4,,10
	.p2align 3
L456:
	subl	$2147483645, %esi
	cmpl	$1, %esi
	jbe	L98
	movl	$2, 4(%esp)
	movl	$__ZN6loguruL11s_argumentsE.lto_priv.0, %ecx
	movl	$LC26, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	subl	$8, %esp
	jmp	L96
	.p2align 4,,10
	.p2align 3
L457:
	subl	$2147483645, %esi
	cmpl	$1, %esi
	jbe	L98
	movl	$2, 4(%esp)
	movl	$__ZN6loguruL11s_argumentsE.lto_priv.0, %ecx
	movl	$LC27, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	subl	$8, %esp
	jmp	L96
	.p2align 4,,10
	.p2align 3
L458:
	subl	$2147483645, %esi
	cmpl	$1, %esi
	jbe	L98
	movl	$2, 4(%esp)
	movl	$__ZN6loguruL11s_argumentsE.lto_priv.0, %ecx
	movl	$LC28, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	subl	$8, %esp
	jmp	L96
	.p2align 4,,10
	.p2align 3
L459:
	subl	$2147483645, %esi
	cmpl	$1, %esi
	jbe	L98
	movl	$2, 4(%esp)
	movl	$__ZN6loguruL11s_argumentsE.lto_priv.0, %ecx
	movl	$LC29, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	subl	$8, %esp
	jmp	L96
	.p2align 4,,10
	.p2align 3
L460:
	subl	$2147483645, %esi
	cmpl	$1, %esi
	jbe	L98
	movl	$2, 4(%esp)
	movl	$__ZN6loguruL11s_argumentsE.lto_priv.0, %ecx
	movl	$LC30, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	subl	$8, %esp
	jmp	L96
	.p2align 4,,10
	.p2align 3
L461:
	subl	$2147483645, %esi
	cmpl	$1, %esi
	jbe	L98
	movl	$2, 4(%esp)
	movl	$__ZN6loguruL11s_argumentsE.lto_priv.0, %ecx
	movl	$LC31, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	subl	$8, %esp
	jmp	L96
	.p2align 4,,10
	.p2align 3
L462:
	subl	$2147483645, %esi
	cmpl	$1, %esi
	jbe	L98
	movl	$2, 4(%esp)
	movl	$__ZN6loguruL11s_argumentsE.lto_priv.0, %ecx
	movl	$LC32, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	subl	$8, %esp
	jmp	L96
	.p2align 4,,10
	.p2align 3
L108:
	movl	__ZN6loguruL11s_argumentsE.lto_priv.0, %eax
	movl	$15, %ecx
	leal	1(%esi), %edx
	cmpl	$__ZN6loguruL11s_argumentsE.lto_priv.0+8, %eax
	cmovne	__ZN6loguruL11s_argumentsE.lto_priv.0+8, %ecx
	cmpl	%edx, %ecx
	jb	L477
L121:
	movb	%bl, (%eax,%esi)
	movl	__ZN6loguruL11s_argumentsE.lto_priv.0, %eax
	movb	$0, 1(%eax,%esi)
	movl	%edx, __ZN6loguruL11s_argumentsE.lto_priv.0+4
	jmp	L96
	.p2align 4,,10
	.p2align 3
L467:
	cmpl	$2147483646, __ZN6loguruL11s_argumentsE.lto_priv.0+4
	je	L98
	movl	$1, 4(%esp)
	movl	$__ZN6loguruL11s_argumentsE.lto_priv.0, %ecx
	movl	%esi, %ebx
	movl	$LC37, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	subl	$8, %esp
	jmp	L125
L463:
	subl	$2147483645, %esi
	cmpl	$1, %esi
	jbe	L98
	movl	$2, 4(%esp)
	movl	$__ZN6loguruL11s_argumentsE.lto_priv.0, %ecx
	movl	$LC33, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	subl	$8, %esp
	jmp	L96
L464:
	subl	$2147483645, %esi
	cmpl	$1, %esi
	jbe	L98
	movl	$2, 4(%esp)
	movl	$__ZN6loguruL11s_argumentsE.lto_priv.0, %ecx
	movl	$LC34, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	subl	$8, %esp
	jmp	L96
L465:
	subl	$2147483645, %esi
	cmpl	$1, %esi
	jbe	L98
	movl	$2, 4(%esp)
	movl	$__ZN6loguruL11s_argumentsE.lto_priv.0, %ecx
	movl	$LC35, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	subl	$8, %esp
	jmp	L96
L109:
	addl	$55, %eax
	movb	%al, -1152(%ebp)
	leal	1(%esi), %eax
	cmpl	%eax, %ecx
	jnb	L114
L427:
	movl	%eax, -1160(%ebp)
	movl	$__ZN6loguruL11s_argumentsE.lto_priv.0, %ecx
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEjjPKcj
	movl	__ZN6loguruL11s_argumentsE.lto_priv.0, %edx
	movl	-1160(%ebp), %eax
	subl	$16, %esp
	jmp	L114
L115:
	leal	55(%ebx), %esi
	leal	1(%eax), %ebx
	cmpl	%ebx, %edx
	jnb	L119
L428:
	movl	%eax, (%esp)
	movl	$__ZN6loguruL11s_argumentsE.lto_priv.0, %ecx
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, -1152(%ebp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEjjPKcj
	movl	__ZN6loguruL11s_argumentsE.lto_priv.0, %ecx
	movl	-1152(%ebp), %eax
	subl	$16, %esp
	jmp	L119
L477:
	movl	%edx, -1152(%ebp)
	movl	$__ZN6loguruL11s_argumentsE.lto_priv.0, %ecx
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEjjPKcj
	movl	__ZN6loguruL11s_argumentsE.lto_priv.0, %eax
	movl	-1152(%ebp), %edx
	subl	$16, %esp
	jmp	L121
L432:
	movzbl	(%esi), %eax
L23:
	cmpb	$0, -1144(%ebp)
	jne	L29
L394:
	testb	%al, %al
	je	L416
	addl	$1, %esi
	cmpb	$32, %al
	je	L478
	cmpb	$34, %al
	je	L479
	movb	$1, -1144(%ebp)
	movl	%edx, %edi
	cmpb	$92, %al
	jne	L37
	movl	%ebx, %ecx
	movb	$1, -1140(%ebp)
	xorl	%edx, %edx
	addl	$1, %ebx
	jmp	L35
L437:
	movb	$1, -1144(%ebp)
	movzbl	(%esi), %eax
	movl	%edi, %edx
L29:
	cmpb	$32, %al
	je	L31
	testb	%al, %al
	je	L416
	addl	$1, %esi
	cmpb	$34, %al
	je	L480
	cmpb	$92, %al
	je	L481
	movb	$0, -1144(%ebp)
	movl	%edx, %edi
	jmp	L37
L438:
	movl	$LC1, 16(%esp)
	movl	$47, 12(%esp)
	movl	$LC2, 8(%esp)
	movl	$LC3, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0
L433:
	addl	$1, %esi
	movl	$34, %eax
	movl	$1, %edx
	jmp	L39
L247:
	movl	-1156(%ebp), %esi
	jmp	L75
L236:
	movl	%ebx, -1180(%ebp)
	movl	%edi, %edx
	movl	-1148(%ebp), %ebx
	jmp	L10
L447:
	call	__Z8OSD_Initv
	movl	$LC4, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	jne	L82
L448:
	movl	$LC4, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC4, (%eax)
	jmp	L82
L449:
	call	__Z8OSD_Initv
	movl	$LC6, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	jne	L84
L450:
	movl	$LC6, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC6, (%eax)
	jmp	L84
L31:
	movb	$0, (%edx)
	movzbl	(%esi), %eax
	leal	1(%edx), %edi
	testb	%al, %al
	je	L236
	addl	$1, %esi
	cmpb	$32, %al
	je	L482
	leal	1(%ebx), %edx
	cmpb	$34, %al
	je	L483
	cmpb	$92, %al
	je	L238
	movb	$0, -1144(%ebp)
	movl	%edx, %ebx
	jmp	L37
L468:
	call	*%esi
	leal	-1040(%ebp), %edx
	movl	$LC39, 12(%esp)
	movl	%edx, 16(%esp)
	movl	$LC40, 8(%esp)
	movl	$LC41, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	jmp	L128
L478:
	movb	$1, -1144(%ebp)
	jmp	L27
L476:
	cmpb	$0, __ZL6linked.lto_priv.0+1
	je	L484
L137:
	movl	$__xfree, 12(%esp)
	movl	$__xrealloc, 8(%esp)
	movl	$__xcalloc, 4(%esp)
	movl	$__xmalloc, (%esp)
	call	_SDL_SetMemoryFunctions
	jmp	L138
L452:
	leal	-1112(%ebp), %eax
	movl	$LC18, 4(%esp)
	movl	%eax, (%esp)
	call	__ZN6loguru10textprintfEPKcz
	leal	-1088(%ebp), %eax
	movl	$LC18, 4(%esp)
	movl	%eax, (%esp)
	call	__ZN6loguru10textprintfEPKcz
	movl	-1088(%ebp), %edx
	movl	$LC19, 24(%esp)
	leal	-1064(%ebp), %eax
	movl	%edx, 28(%esp)
	movl	-1112(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 20(%esp)
	movl	$LC20, 16(%esp)
	movl	$LC19, 12(%esp)
	movl	$LC21, 8(%esp)
	movl	$LC14, 4(%esp)
	call	__ZN6loguru10textprintfEPKcz
	leal	-1040(%ebp), %eax
	movl	$LC15, 4(%esp)
	movl	%eax, (%esp)
	call	__ZN6loguru10textprintfEPKcz
	movl	-1040(%ebp), %eax
	movl	$LC16, 16(%esp)
	movl	$647, 12(%esp)
	movl	%eax, 20(%esp)
L426:
	movl	$LC17, 8(%esp)
	movl	-1064(%ebp), %eax
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	call	__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0
L41:
	movl	$0, (%esp)
	movl	-1152(%ebp), %eax
	xorl	%ecx, %ecx
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	%eax, -1172(%ebp)
	jmp	L43
L227:
	movl	%ecx, -1180(%ebp)
	movl	%edi, %edx
	jmp	L10
L469:
	movl	__ZN6loguruL11s_argumentsE.lto_priv.0, %eax
	movl	%ecx, (%esp)
	movl	$LC43, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$709, 8(%esp)
	movl	$LC17, 4(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	movl	__ZN6loguru20g_internal_verbosityE, %ecx
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	cmpb	$0, __ZN6loguruL13s_current_dirE
	je	L130
	cmpl	%ecx, %eax
	jl	L129
	movl	%ecx, (%esp)
	movl	$__ZN6loguruL13s_current_dirE, 16(%esp)
	movl	$LC44, 12(%esp)
	movl	$712, 8(%esp)
	movl	$LC17, 4(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	movl	__ZN6loguru20g_internal_verbosityE, %ecx
	cmpl	%eax, %edx
	cmovge	%edx, %eax
L130:
	cmpl	%eax, %ecx
	jg	L129
	movl	%edx, 16(%esp)
	movl	%ecx, (%esp)
	movl	$LC45, 12(%esp)
	movl	$714, 8(%esp)
	movl	$LC17, 4(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	movl	__ZN6loguru20g_internal_verbosityE, %edx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	%edx, %eax
	jl	L129
	movl	$LC46, 12(%esp)
	movl	$715, 8(%esp)
	movl	$LC17, 4(%esp)
	movl	%edx, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L129
L6:
	xorl	%esi, %esi
	movl	$1, %eax
	movl	$4, %edx
	movl	$0, -1180(%ebp)
	jmp	L8
L455:
	call	*__imp___errno
	movl	(%eax), %eax
	movl	$256, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-1040(%ebp), %eax
	movl	%eax, (%esp)
	call	*__imp__strerror_s
	leal	-1040(%ebp), %eax
	call	__xstrdup
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	%eax, %ebx
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jge	L485
L91:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L90
L232:
	movl	%edi, %edx
	movl	%ecx, %ebx
	jmp	L23
L87:
	movl	%ebx, (%esp)
	movl	%ebx, %esi
	call	_strlen
	jmp	L224
L451:
	movl	-1180(%ebp), %edx
	leal	-1112(%ebp), %eax
	movl	$LC10, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	call	__ZN6loguru10textprintfEPKcz
	leal	-1088(%ebp), %eax
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	$LC10, 4(%esp)
	call	__ZN6loguru10textprintfEPKcz
	movl	-1088(%ebp), %edx
	movl	$LC11, 24(%esp)
	leal	-1064(%ebp), %eax
	movl	%edx, 28(%esp)
	movl	-1112(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 20(%esp)
	movl	$LC12, 16(%esp)
	movl	$LC11, 12(%esp)
	movl	$LC13, 8(%esp)
	movl	$LC14, 4(%esp)
	call	__ZN6loguru10textprintfEPKcz
	leal	-1040(%ebp), %eax
	movl	$LC15, 4(%esp)
	movl	%eax, (%esp)
	call	__ZN6loguru10textprintfEPKcz
	movl	-1040(%ebp), %eax
	movl	$LC16, 16(%esp)
	movl	$646, 12(%esp)
	movl	%eax, 20(%esp)
	jmp	L426
L485:
	movl	%ebx, 16(%esp)
	movl	$LC22, 12(%esp)
	movl	$657, 8(%esp)
	movl	$LC17, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L91
L484:
	cmpb	$7, __ZL6linked.lto_priv.0+2
	jbe	L138
	jmp	L137
L482:
	movl	%ebx, -1180(%ebp)
	movl	-1148(%ebp), %ebx
	movl	-1180(%ebp), %ecx
	jmp	L11
	.p2align 4,,10
	.p2align 3
L143:
	movl	__ZZ30windowsGetSystemKeyboardLayoutvE11layoutSaved.lto_priv.0, %esi
	testl	%esi, %esi
	je	L486
L145:
	movl	__ZZ34windowsGetSystemKeyboardLayoutNamevE11layoutSaved.lto_priv.0, %ecx
	testl	%ecx, %ecx
	je	L487
	movl	$LC75, 12(%esp)
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__CreateSemaphoreA@16
	subl	$16, %esp
	movl	%eax, __ZL25g_singleInstanceSemaphore.lto_priv.0
	movl	-1172(%ebp), %eax
	movl	(%eax), %edi
	leal	-1112(%ebp), %eax
	movl	%eax, -1140(%ebp)
	leal	-1104(%ebp), %eax
	movl	%eax, -1152(%ebp)
	movl	%eax, -1112(%ebp)
	testl	%edi, %edi
	je	L488
	movl	%edi, (%esp)
	call	_strlen
	movl	%edi, (%esp)
	addl	%edi, %eax
	movl	%eax, 4(%esp)
	movl	-1140(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
	movl	-1112(%ebp), %edi
	movl	-1108(%ebp), %edx
	subl	$8, %esp
L221:
	leal	(%edi,%edx), %esi
	cmpl	%edi, %esi
	je	L430
	movl	%ebx, -1156(%ebp)
	movl	%edi, %ebx
	movl	__imp__tolower, %edi
	.p2align 4
	.p2align 3
L149:
	movzbl	(%ebx), %eax
	addl	$1, %ebx
	movl	%eax, (%esp)
	call	*%edi
	movb	%al, -1(%ebx)
	cmpl	%ebx, %esi
	jne	L149
	movl	-1156(%ebp), %ebx
L430:
	movl	$2, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$LC76, (%esp)
	movl	-1140(%ebp), %ecx
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcjj
	subl	$12, %esp
	cmpl	$-1, %eax
	je	L150
	movl	-1108(%ebp), %edx
	addl	$1, %eax
	cmpl	%eax, %edx
	jb	L391
	movl	-1112(%ebp), %ecx
	movl	-1144(%ebp), %edi
	addl	%ecx, %edx
	addl	%eax, %ecx
	movl	%edi, -1040(%ebp)
	movl	%ecx, (%esp)
	leal	-1040(%ebp), %ecx
	movl	%edx, 4(%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
	movl	-1112(%ebp), %ecx
	subl	$8, %esp
	movl	%ecx, %eax
	cmpl	-1152(%ebp), %ecx
	je	L489
	movl	-1040(%ebp), %edi
	movl	-1036(%ebp), %edx
	cmpl	-1144(%ebp), %edi
	je	L216
	movl	%edx, -1156(%ebp)
	movss	-1032(%ebp), %xmm5
	movss	-1156(%ebp), %xmm0
	movl	-1104(%ebp), %eax
	movl	%edi, -1112(%ebp)
	unpcklps	%xmm5, %xmm0
	movlps	%xmm0, -1108(%ebp)
	testl	%ecx, %ecx
	je	L165
	movl	%ecx, -1040(%ebp)
	movl	%eax, -1032(%ebp)
L164:
	movb	$0, (%ecx)
	movl	-1040(%ebp), %eax
	movl	$0, -1036(%ebp)
	cmpl	-1144(%ebp), %eax
	je	L150
	call	_mi_free
L150:
	movl	-1108(%ebp), %edx
	testl	%edx, %edx
	je	L167
	movl	-1112(%ebp), %eax
	cmpb	$34, (%eax)
	je	L490
L168:
	leal	-1(%edx), %ecx
	cmpb	$34, -1(%eax,%edx)
	je	L491
L215:
	cmpl	$3, %edx
	jbe	L167
	movl	-1112(%ebp), %eax
	cmpl	$1702389038, -4(%eax,%edx)
	je	L170
	subl	$2147483643, %edx
	cmpl	$3, %edx
	jbe	L98
L167:
	movl	$4, 4(%esp)
	movl	$LC79, (%esp)
	movl	-1140(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	subl	$8, %esp
L170:
	movl	-1140(%ebp), %eax
	movl	$_GLOBALEXE, %ecx
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	subl	$4, %esp
	cmpl	$2, -1148(%ebp)
	je	L492
L171:
	movl	_dragDemo+4, %edx
	testl	%edx, %edx
	jne	L202
	xorl	%esi, %esi
	jmp	L203
	.p2align 4,,10
	.p2align 3
L255:
	addl	$1, %esi
L203:
	movl	-1172(%ebp), %eax
	movl	(%eax,%esi,4), %edi
	movl	$LC83, 4(%esp)
	movl	%edi, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L202
	movl	$3, 8(%esp)
	movl	$LC80, 4(%esp)
	movl	%edi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	je	L202
	cmpl	%esi, %ebx
	jg	L255
	movl	__ZL10startupdlg.lto_priv.0, %eax
	testl	%eax, %eax
	je	L493
L202:
	movl	$LC85, (%esp)
	call	_getenv
	testl	%eax, %eax
	je	L206
	movl	$LC86, 4(%esp)
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L206
	movl	$1, (%esp)
	movl	__imp____acrt_iob_func, %esi
	call	*%esi
	movl	$LC87, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$LC88, (%esp)
	call	_freopen
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L494
L207:
	movl	$0, 12(%esp)
	movl	$4, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	_setvbuf
	movl	$1, (%esp)
	call	*%esi
	movl	(%ebx), %edx
	movl	%edx, (%eax)
	movl	4(%ebx), %edx
	movl	%edx, 4(%eax)
	movl	8(%ebx), %edx
	movl	%edx, 8(%eax)
	movl	12(%ebx), %edx
	movl	%edx, 12(%eax)
	movl	16(%ebx), %edx
	movl	%edx, 16(%eax)
	movl	20(%ebx), %edx
	movl	%edx, 20(%eax)
	movl	24(%ebx), %edx
	movl	%edx, 24(%eax)
	movl	28(%ebx), %edx
	movl	%edx, 28(%eax)
	movl	$2, (%esp)
	call	*%esi
	movl	(%ebx), %edx
	movl	%edx, (%eax)
	movl	4(%ebx), %edx
	movl	%edx, 4(%eax)
	movl	8(%ebx), %edx
	movl	%edx, 8(%eax)
	movl	12(%ebx), %edx
	movl	%edx, 12(%eax)
	movl	16(%ebx), %edx
	movl	%edx, 16(%eax)
	movl	20(%ebx), %edx
	movl	%edx, 20(%eax)
	movl	24(%ebx), %edx
	movl	%edx, 24(%eax)
	movl	28(%ebx), %edx
	movl	%edx, 28(%eax)
L206:
	movl	-1172(%ebp), %edx
	movl	-1148(%ebp), %eax
	call	_app_main
	movl	%eax, %ebx
	movl	__ZL10startupdlg.lto_priv.0, %eax
	testl	%eax, %eax
	je	L208
	movl	%eax, (%esp)
	call	*__imp__DestroyWindow@4
	subl	$4, %esp
	movl	$0, __ZL10startupdlg.lto_priv.0
L208:
	movl	-1112(%ebp), %eax
	cmpl	-1152(%ebp), %eax
	je	L5
	call	_mi_free
	leal	-16(%ebp), %esp
	movl	%ebx, %eax
	popl	%ecx
	.cfi_remember_state
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret	$16
L487:
	.cfi_restore_state
	call	__Z34windowsGetSystemKeyboardLayoutNamev.part.0
	movl	$LC75, 12(%esp)
	leal	-1112(%ebp), %esi
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__CreateSemaphoreA@16
	subl	$16, %esp
	movl	%eax, __ZL25g_singleInstanceSemaphore.lto_priv.0
	movl	-1172(%ebp), %eax
	movl	%esi, -1140(%ebp)
	movl	(%eax), %edi
	leal	-1104(%ebp), %eax
	movl	%eax, -1152(%ebp)
	movl	%eax, -1112(%ebp)
	testl	%edi, %edi
	je	L147
	movl	%edi, (%esp)
	call	_strlen
	movl	%edi, (%esp)
	movl	%esi, %ecx
	addl	%edi, %eax
	movl	%eax, 4(%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
	movl	-1112(%ebp), %edi
	movl	-1108(%ebp), %edx
	subl	$8, %esp
	jmp	L221
L486:
	movl	$0, (%esp)
	call	*__imp__GetKeyboardLayout@4
	subl	$4, %esp
	movl	%eax, __ZZ30windowsGetSystemKeyboardLayoutvE12systemLayout.lto_priv.0
	movl	$1, __ZZ30windowsGetSystemKeyboardLayoutvE11layoutSaved.lto_priv.0
	jmp	L145
L492:
	movl	-1172(%ebp), %eax
	movl	4(%eax), %edi
	leal	-1056(%ebp), %eax
	movl	%eax, -1064(%ebp)
	testl	%edi, %edi
	je	L147
	movl	%edi, (%esp)
	call	_strlen
	movl	%edi, (%esp)
	leal	-1064(%ebp), %ecx
	addl	%edi, %eax
	movl	%eax, 4(%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
	movl	-1060(%ebp), %eax
	subl	$8, %esp
	testl	%eax, %eax
	je	L172
	movl	-1064(%ebp), %edx
	cmpb	$34, (%edx)
	je	L495
L173:
	leal	-1(%eax), %ecx
	cmpb	$34, -1(%edx,%eax)
	je	L496
L174:
	leal	-1080(%ebp), %edi
	movl	%edi, -1156(%ebp)
	movl	%edi, -1088(%ebp)
L214:
	movl	%edx, (%esp)
	leal	-1088(%ebp), %ecx
	movl	%eax, 4(%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcj
	movl	-1088(%ebp), %edx
	movl	-1084(%ebp), %edi
	subl	$8, %esp
	addl	%edx, %edi
	cmpl	%edx, %edi
	je	L175
	movl	__imp__tolower, %eax
	movl	%ebx, %esi
	movl	%edx, %ebx
	movl	%eax, -1140(%ebp)
L176:
	movzbl	(%ebx), %eax
	addl	$1, %ebx
	movl	%eax, (%esp)
	call	*-1140(%ebp)
	movb	%al, -1(%ebx)
	cmpl	%ebx, %edi
	jne	L176
	movl	-1084(%ebp), %edi
	movl	%esi, %ebx
	testl	%edi, %edi
	je	L175
	movl	$3, %eax
	movl	-1088(%ebp), %edx
	movl	$LC80, 4(%esp)
	cmpl	%eax, %edi
	cmovbe	%edi, %eax
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	movl	%edx, -1160(%ebp)
	call	_memcmp
	movl	-1160(%ebp), %edx
	testl	%eax, %eax
	jne	L177
	cmpl	$2, %edi
	jbe	L177
L175:
	movl	_dragDemo, %eax
	movb	$0, (%eax)
	movl	$0, _dragDemo+4
L178:
	movl	-1088(%ebp), %eax
	cmpl	-1156(%ebp), %eax
	je	L200
	call	_mi_free
L200:
	movl	-1064(%ebp), %eax
	leal	-1056(%ebp), %edx
	cmpl	%edx, %eax
	je	L171
	call	_mi_free
	jmp	L171
L172:
	leal	-1080(%ebp), %eax
	movl	-1064(%ebp), %edx
	movl	%eax, -1156(%ebp)
	movl	%eax, -1088(%ebp)
	xorl	%eax, %eax
	jmp	L214
L494:
	movl	$LC87, 4(%esp)
	movl	$LC88, (%esp)
	call	_fopen
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L207
	jmp	L206
L491:
	movl	$1, 4(%esp)
	movl	%ecx, (%esp)
	movl	-1140(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEjj
	movl	-1108(%ebp), %edx
	subl	$8, %esp
	jmp	L215
L490:
	movl	$1, 4(%esp)
	movl	$0, (%esp)
	movl	-1140(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEjj
	movl	-1108(%ebp), %edx
	subl	$8, %esp
	testl	%edx, %edx
	je	L167
	movl	-1112(%ebp), %eax
	jmp	L168
L489:
	movl	-1040(%ebp), %edx
	cmpl	-1144(%ebp), %edx
	je	L497
	movlps	-1036(%ebp), %xmm4
	movl	%edx, -1112(%ebp)
	movlps	%xmm4, -1108(%ebp)
L165:
	movl	-1144(%ebp), %eax
	movl	%eax, -1040(%ebp)
	leal	-1032(%ebp), %eax
	movl	%eax, -1144(%ebp)
	movl	%eax, %ecx
	jmp	L164
L481:
	movzbl	-1144(%ebp), %eax
	movl	%edx, %edi
	movl	%ebx, %ecx
	movb	$0, -1144(%ebp)
	addl	$1, %ebx
	xorl	%edx, %edx
	movb	%al, -1140(%ebp)
	jmp	L35
L493:
	movl	$8, %eax
	movl	%eax, -1040(%ebp)
	movl	%eax, -1036(%ebp)
	leal	-1040(%ebp), %eax
	movl	%eax, (%esp)
	call	*__imp__InitCommonControlsEx@4
	subl	$4, %esp
	movl	$0, (%esp)
	call	*__imp__GetModuleHandleA@4
	subl	$4, %esp
	movl	$0, 16(%esp)
	movl	$__ZL15startup_dlgprocP6HWND__jjl.lto_priv.0@16, 12(%esp)
	movl	$0, 8(%esp)
	movl	$1000, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__CreateDialogParamA@20
	subl	$20, %esp
	movl	%eax, __ZL10startupdlg.lto_priv.0
	testl	%eax, %eax
	je	L202
	movl	$1, %eax
	call	__ZL7SetPagei.lto_priv.0
	xorl	%eax, %eax
	call	__ZL12EnableConfigi.lto_priv.0
	jmp	L202
L497:
	movl	-1036(%ebp), %edx
L216:
	testl	%edx, %edx
	je	L154
	cmpl	$1, %edx
	je	L498
	cmpl	$16, %edx
	jnb	L157
	testb	$8, %dl
	jne	L499
	testb	$4, %dl
	jne	L500
	testl	%edx, %edx
	je	L154
	movzbl	-1032(%ebp), %ecx
	movb	%cl, (%eax)
	testb	$2, %dl
	jne	L401
L425:
	movl	-1112(%ebp), %eax
	movl	-1036(%ebp), %edx
L154:
	movb	$0, (%eax,%edx)
	movl	-1040(%ebp), %ecx
	movl	%edx, -1108(%ebp)
	jmp	L164
L177:
	cmpl	$3, %edi
	ja	L501
	jne	L175
L184:
	leal	-3(%edx,%edi), %eax
	cmpw	$30510, (%eax)
	jne	L175
	cmpb	$98, 2(%eax)
	jne	L175
L199:
	leal	-1064(%ebp), %eax
	movl	$_dragDemo, %ecx
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	subl	$4, %esp
	jmp	L178
L480:
	movzbl	(%esi), %eax
	jmp	L394
L479:
	movb	$1, -1144(%ebp)
	movzbl	(%esi), %eax
	jmp	L29
L475:
	movl	$LC57, 16(%esp)
	movl	$2115, 12(%esp)
	movl	$LC17, 8(%esp)
	movl	$LC58, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0
L501:
	cmpl	$1869440046, -4(%edx,%edi)
	jne	L180
	leal	-1064(%ebp), %eax
	movl	$_dragDemo, %ecx
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	movl	$_dragDemo, %ecx
	subl	$4, %esp
	movl	$2, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$LC76, (%esp)
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcjj
	movl	_dragDemo, %esi
	movl	%eax, %edx
	subl	$12, %esp
	movl	_dragDemo+4, %eax
	cmpl	$-1, %edx
	je	L210
	addl	$1, %edx
	cmpl	%edx, %eax
	jb	L392
	movl	_dragDemo, %ecx
	movl	-1144(%ebp), %edi
	addl	%ecx, %eax
	addl	%edx, %ecx
	movl	%edi, -1040(%ebp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	leal	-1040(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
	movl	_dragDemo, %eax
	subl	$8, %esp
	cmpl	$_dragDemo+8, %eax
	je	L502
	movl	-1040(%ebp), %edx
	movl	-1036(%ebp), %ecx
	cmpl	-1144(%ebp), %edx
	je	L211
	movl	%ecx, -1160(%ebp)
	movss	-1032(%ebp), %xmm7
	movss	-1160(%ebp), %xmm0
	movl	_dragDemo+8, %esi
	movl	%edx, _dragDemo
	unpcklps	%xmm7, %xmm0
	movlps	%xmm0, _dragDemo+4
	testl	%eax, %eax
	je	L192
	movl	%eax, -1040(%ebp)
	movl	%esi, -1032(%ebp)
L191:
	movl	-1040(%ebp), %eax
	movb	$0, (%eax)
	movl	-1040(%ebp), %eax
	movl	$0, -1036(%ebp)
	cmpl	-1144(%ebp), %eax
	je	L193
	call	_mi_free
L193:
	movl	_dragDemo, %esi
	movl	_dragDemo+4, %eax
L210:
	leal	(%esi,%eax), %edi
	cmpl	%esi, %edi
	je	L178
L194:
	movzbl	(%esi), %eax
	addl	$1, %esi
	movl	%eax, (%esp)
	call	*-1140(%ebp)
	movb	%al, -1(%esi)
	cmpl	%edi, %esi
	jne	L194
	jmp	L178
L180:
	cmpl	$4, %edi
	je	L184
	leal	-5(%edx,%edi), %eax
	cmpl	$1851881262, (%eax)
	jne	L184
	cmpb	$103, 4(%eax)
	jne	L184
	jmp	L199
	.p2align 4,,10
	.p2align 3
L471:
	movl	$LC49, 16(%esp)
	movl	$2103, 12(%esp)
	movl	$LC17, 8(%esp)
	movl	$LC50, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0
L472:
	movl	$LC51, 16(%esp)
	movl	$2106, 12(%esp)
	movl	$LC17, 8(%esp)
	movl	$LC52, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0
L473:
	movl	$LC53, 16(%esp)
	movl	$2109, 12(%esp)
	movl	$LC17, 8(%esp)
	movl	$LC54, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0
L496:
	movl	%ecx, (%esp)
	leal	-1064(%ebp), %ecx
	movl	$1, 4(%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEjj
	movl	-1060(%ebp), %eax
	movl	-1064(%ebp), %edx
	subl	$8, %esp
	jmp	L174
L495:
	movl	$1, 4(%esp)
	leal	-1064(%ebp), %ecx
	movl	$0, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEjj
	movl	-1060(%ebp), %eax
	subl	$8, %esp
	testl	%eax, %eax
	je	L172
	movl	-1064(%ebp), %edx
	jmp	L173
L238:
	movl	%ebx, %ecx
	movb	$0, -1140(%ebp)
	movl	%edx, %ebx
	xorl	%edx, %edx
	movb	$0, -1144(%ebp)
	jmp	L35
L483:
	movzbl	(%esi), %eax
	movl	%edx, %ebx
	jmp	L19
L474:
	movl	$LC55, 16(%esp)
	movl	$2112, 12(%esp)
	movl	$LC17, 8(%esp)
	movl	$LC56, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0
L470:
	movl	$LC47, 16(%esp)
	movl	$2100, 12(%esp)
	movl	$LC17, 8(%esp)
	movl	$LC48, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0
L401:
	movzwl	-1034(%ebp,%edx), %ecx
	movw	%cx, -2(%eax,%edx)
	movl	-1112(%ebp), %eax
	movl	-1036(%ebp), %edx
	jmp	L154
L504:
	movl	-1036(%ebp), %ecx
L211:
	testl	%ecx, %ecx
	je	L188
	cmpl	$1, %ecx
	je	L503
	movl	-1144(%ebp), %esi
	movl	%eax, %edi
	rep movsb
L190:
	movl	-1036(%ebp), %ecx
	movl	_dragDemo, %eax
L188:
	movb	$0, (%eax,%ecx)
	movl	%ecx, _dragDemo+4
	jmp	L191
L503:
	movzbl	-1032(%ebp), %edx
	movb	%dl, (%eax)
	jmp	L190
L502:
	movl	-1040(%ebp), %edx
	cmpl	-1144(%ebp), %edx
	je	L504
	movlps	-1036(%ebp), %xmm6
	movl	%edx, _dragDemo
	movlps	%xmm6, _dragDemo+4
L192:
	movl	-1144(%ebp), %eax
	movl	%eax, -1040(%ebp)
	jmp	L191
L500:
	movl	-1032(%ebp), %ecx
	movl	%ecx, (%eax)
	movl	-1036(%ebp,%edx), %ecx
	movl	%ecx, -4(%eax,%edx)
	movl	-1112(%ebp), %eax
	movl	-1036(%ebp), %edx
	jmp	L154
L499:
	movl	-1032(%ebp), %esi
	movl	-1028(%ebp), %edi
	movl	%esi, (%eax)
	movl	%edi, 4(%eax)
	movl	-1040(%ebp,%edx), %esi
	movl	-1036(%ebp,%edx), %edi
	movl	%esi, -8(%eax,%edx)
	movl	%edi, -4(%eax,%edx)
	movl	-1112(%ebp), %eax
	movl	-1036(%ebp), %edx
	jmp	L154
	.p2align 4,,10
	.p2align 3
L157:
	movl	-1048(%ebp,%edx), %ecx
	movl	%ecx, -16(%eax,%edx)
	movl	-1044(%ebp,%edx), %ecx
	movl	%ecx, -12(%eax,%edx)
	movl	-1040(%ebp,%edx), %ecx
	movl	%ecx, -8(%eax,%edx)
	movl	-1036(%ebp,%edx), %ecx
	movl	%ecx, -4(%eax,%edx)
	subl	$1, %edx
	cmpl	$16, %edx
	jb	L425
	movl	%ebx, -1164(%ebp)
	andl	$-16, %edx
	movl	-1144(%ebp), %ecx
	movl	%edx, -1156(%ebp)
	xorl	%edx, %edx
L162:
	movl	8(%ecx,%edx), %ebx
	movl	4(%ecx,%edx), %edi
	movl	%ebx, -1160(%ebp)
	movl	(%ecx,%edx), %esi
	movl	12(%ecx,%edx), %ebx
	movl	%edi, 4(%eax,%edx)
	movl	%esi, (%eax,%edx)
	movl	-1160(%ebp), %edi
	movl	%ebx, 12(%eax,%edx)
	movl	%edi, 8(%eax,%edx)
	addl	$16, %edx
	cmpl	-1156(%ebp), %edx
	jb	L162
	movl	-1164(%ebp), %ebx
	jmp	L425
L498:
	movzbl	-1032(%ebp), %edx
	movb	%dl, (%eax)
	movl	-1112(%ebp), %eax
	movl	-1036(%ebp), %edx
	jmp	L154
L488:
	jmp	L147
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	_WinMain@16.cold;	.scl	3;	.type	32;	.endef
_WinMain@16.cold:
LFSB2:
L392:
	.cfi_escape 0xf,0x3,0x75,0x70,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	.cfi_escape 0x10,0x5,0x2,0x75,0
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x7,0x2,0x75,0x7c
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$LC77, 4(%esp)
	movl	$LC78, (%esp)
	call	__ZSt24__throw_out_of_range_fmtPKcz
L391:
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC77, 4(%esp)
	movl	$LC78, (%esp)
	call	__ZSt24__throw_out_of_range_fmtPKcz
L147:
	movl	$LC23, (%esp)
	call	__ZSt19__throw_logic_errorPKc
L98:
	movl	$LC24, (%esp)
	call	__ZSt20__throw_length_errorPKc
	.cfi_endproc
LFE2:
	.text
	.section	.text.unlikely,"x"
LCOLDE89:
	.text
LHOTE89:
	.section .rdata,"dr"
	.align 4
LC90:
	.ascii "Video driver enforcing SwapInterval %d, unable to configure VSync!\0"
LC91:
	.ascii "source/build/src/sdlayer.cpp\0"
	.text
	.p2align 4
	.globl	__ZL18sdlayer_checkvsynci.lto_priv.0
	.def	__ZL18sdlayer_checkvsynci.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL18sdlayer_checkvsynci.lto_priv.0:
LFB120:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	call	_SDL_GL_GetSwapInterval
	cmpl	__ZZL23sdlayer_getswapintervaliE9intervals.lto_priv.0+4(,%ebx,4), %eax
	jne	L509
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L509:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-1, %edx
	jl	L507
	movl	%eax, 16(%esp)
	movl	$LC90, 12(%esp)
	movl	$682, 8(%esp)
	movl	$LC91, 4(%esp)
	movl	$-1, (%esp)
	movl	%eax, 20(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	20(%esp), %eax
L507:
	movl	$1, __ZL17vsync_unsupported
	movl	%eax, %ebx
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE120:
	.section .rdata,"dr"
	.align 4
LC92:
	.ascii "VSync configuration locked by video driver.\0"
	.align 4
LC93:
	.ascii "Video driver rejected SwapInterval %d, unable to configure adaptive VSync!\0"
	.align 4
LC94:
	.ascii "Video driver rejected SwapInterval %d, unable to configure VSync!\0"
LC95:
	.ascii "Failed to set video mode!\0"
	.text
	.p2align 4
	.globl	_videoSetVsync
	.def	_videoSetVsync;	.scl	2;	.type	32;	.endef
_videoSetVsync:
LFB122:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	testl	%eax, %eax
	je	L511
	movl	__ZL17vsync_unsupported, %edx
	testl	%edx, %edx
	jne	L528
L511:
	cmpl	%ebx, __ZL17vsync_renderlayer.lto_priv.0
	je	L514
	movl	__ZL11sdl_context.lto_priv.0, %eax
	testl	%eax, %eax
	je	L515
	movl	__ZZL23sdlayer_getswapintervaliE9intervals.lto_priv.0+4(,%ebx,4), %eax
	movl	%eax, (%esp)
	call	_SDL_GL_SetSwapInterval
	cmpl	$-1, %eax
	je	L529
L516:
	movl	%ebx, %eax
	call	__ZL18sdlayer_checkvsynci.lto_priv.0
	movl	%eax, __ZL17vsync_renderlayer.lto_priv.0
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L515:
	.cfi_restore_state
	movl	_upscalefactor, %edx
	movzbl	_fullscreen, %eax
	movl	%ebx, __ZL17vsync_renderlayer.lto_priv.0
	movl	_yres, %ecx
	movb	$1, _videomodereset
	movl	%edx, 4(%esp)
	movl	_bpp, %edx
	movb	$0, __ZL12modeschecked.lto_priv.0
	movl	%edx, (%esp)
	movl	_xres, %edx
	call	_videoSetGameMode
	testl	%eax, %eax
	jne	L530
L514:
	movl	%ebx, %eax
L531:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L528:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L512
	movl	$LC92, 12(%esp)
	movl	$694, 8(%esp)
	movl	$LC91, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L512:
	movl	__ZL17vsync_renderlayer.lto_priv.0, %eax
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L530:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L514
	movl	$LC95, 12(%esp)
	movl	$732, 8(%esp)
	movl	$LC91, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	%ebx, %eax
	jmp	L531
	.p2align 4,,10
	.p2align 3
L529:
	cmpl	$-1, %ebx
	je	L532
L517:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jge	L533
	xorl	%ebx, %ebx
	jmp	L516
	.p2align 4,,10
	.p2align 3
L533:
	movl	__ZZL23sdlayer_getswapintervaliE9intervals.lto_priv.0+4(,%ebx,4), %eax
	movl	$LC94, 12(%esp)
	xorl	%ebx, %ebx
	movl	$717, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC91, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L516
	.p2align 4,,10
	.p2align 3
L532:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L518
	movl	$-1, 16(%esp)
	movl	$LC93, 12(%esp)
	movl	$710, 8(%esp)
	movl	$LC91, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L518:
	movl	$1, (%esp)
	movl	$1, %ebx
	call	_SDL_GL_SetSwapInterval
	cmpl	$-1, %eax
	jne	L516
	jmp	L517
	.cfi_endproc
LFE122:
	.section .rdata,"dr"
	.align 4
LC96:
	.ascii "Initializing SDL %d.%d.%d (%s)\0"
LC98:
	.ascii "Initializing SDL %d.%d.%d\0"
	.align 4
LC99:
	.ascii "Initializing SDL %d.%d.%d (built against version %d.%d.%d)\0"
	.align 4
LC100:
	.ascii "You need SDL %d.%d.%d or newer to run %s.\0"
	.text
	.p2align 4
	.globl	__Z20sdlayer_checkversionv
	.def	__Z20sdlayer_checkversionv;	.scl	2;	.type	32;	.endef
__Z20sdlayer_checkversionv:
LFB123:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$268, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$40, %esp
	.cfi_offset 3, -12
	call	___chkstk_ms
	subl	%eax, %esp
	leal	51(%esp), %ebx
	andl	$-16, %ebx
	movb	$0, (%ebx)
	movl	$__ZL6linked.lto_priv.0, (%esp)
	call	_SDL_GetVersion
	call	_SDL_GetRevision
	testl	%eax, %eax
	je	L535
	cmpb	$0, (%eax)
	jne	L548
L535:
	movl	$7682, %eax
	movb	$10, -6(%ebp)
	movw	%ax, -8(%ebp)
	cmpw	$7682, __ZL6linked.lto_priv.0
	je	L549
L537:
	movzbl	__ZL6linked.lto_priv.0+2, %eax
	movl	$10, 32(%esp)
	movl	$30, 28(%esp)
	movl	%eax, 20(%esp)
	movzbl	__ZL6linked.lto_priv.0+1, %eax
	movl	$2, 24(%esp)
	movl	%eax, 16(%esp)
	movzbl	__ZL6linked.lto_priv.0, %eax
	movl	$LC99, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$256, 4(%esp)
	movl	%ebx, (%esp)
	call	*__imp___snprintf
L536:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L540
	movl	%ebx, 16(%esp)
	movl	$LC16, 12(%esp)
	movl	$767, 8(%esp)
	movl	$LC91, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L540:
	movzbl	__ZL6linked.lto_priv.0, %eax
	movzbl	__ZL6linked.lto_priv.0+1, %edx
	imull	$1000, %eax, %eax
	imull	$100, %edx, %edx
	addl	%edx, %eax
	movzbl	__ZL6linked.lto_priv.0+2, %edx
	addl	%edx, %eax
	cmpl	$2004, %eax
	jle	L550
	xorl	%eax, %eax
L534:
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L548:
	.cfi_restore_state
	movl	%eax, 24(%esp)
	movzbl	__ZL6linked.lto_priv.0+2, %eax
	movl	$LC96, 8(%esp)
	movl	%eax, 20(%esp)
	movzbl	__ZL6linked.lto_priv.0+1, %eax
	movl	$256, 4(%esp)
	movl	%eax, 16(%esp)
	movzbl	__ZL6linked.lto_priv.0, %eax
	movl	%ebx, (%esp)
	movl	%eax, 12(%esp)
	call	*__imp___snprintf
	jmp	L536
	.p2align 4,,10
	.p2align 3
L549:
	cmpb	$10, __ZL6linked.lto_priv.0+2
	jne	L537
	movl	$10, 20(%esp)
	movl	$30, 16(%esp)
	movl	$2, 12(%esp)
	movl	$LC98, 8(%esp)
	movl	$256, 4(%esp)
	movl	%ebx, (%esp)
	call	*__imp___snprintf
	jmp	L536
L550:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L551
L542:
	movl	$-1, %eax
	jmp	L534
L551:
	movl	$_apptitle, 28(%esp)
	movl	$5, 24(%esp)
	movl	$0, 20(%esp)
	movl	$2, 16(%esp)
	movl	$LC100, 12(%esp)
	movl	$772, 8(%esp)
	movl	$LC91, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L542
	.cfi_endproc
LFE123:
	.p2align 4
	.globl	_mouseGrabInput
	.def	_mouseGrabInput;	.scl	2;	.type	32;	.endef
_mouseGrabInput:
LFB124:
	.cfi_startproc
	movl	%eax, %edx
	movzbl	_appactive, %eax
	cmpb	%dl, _g_mouseGrabbed
	je	L571
	movl	$0, _g_mousePos
	movl	$0, _g_mousePos+4
	testb	%al, %al
	je	L567
	cmpb	$0, _g_mouseEnabled
	je	L567
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	movl	__ZL10sdl_window.lto_priv.0, %eax
	testl	%eax, %eax
	je	L556
	movb	%dl, 11(%esp)
	movl	_MOUSEHIDE, %edx
	xorl	%ecx, %ecx
	movl	%eax, (%esp)
	testl	%edx, %edx
	setne	%cl
	movl	%ecx, 4(%esp)
	call	_SDL_SetWindowGrab
	movzbl	11(%esp), %edx
L556:
	movb	%dl, 11(%esp)
	movl	_MOUSEHIDE, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	setne	%al
	movl	%eax, (%esp)
	call	_SDL_SetRelativeMouseMode
	movzbl	11(%esp), %edx
	testb	%al, %al
	jne	L552
	movb	%dl, _g_mouseGrabbed
L552:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L571:
	testb	%al, %al
	jne	L572
L567:
	movb	%dl, _g_mouseGrabbed
	ret
	.p2align 4,,10
	.p2align 3
L572:
	cmpb	$0, _g_mouseEnabled
	je	L567
	ret
	.cfi_endproc
LFE124:
	.p2align 4
	.globl	_mouseLockToWindow
	.def	_mouseLockToWindow;	.scl	2;	.type	32;	.endef
_mouseLockToWindow:
LFB128:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	%eax, %edx
	movl	__ZL10g_ImGui_IO.lto_priv.0, %eax
	testl	%eax, %eax
	je	L574
	cmpb	$0, 152(%eax)
	je	L574
L575:
	movl	_osd, %eax
	testl	%eax, %eax
	je	L580
L576:
	testb	$4, 1172(%eax)
	je	L586
L579:
	movl	$1, (%esp)
	call	_SDL_ShowCursor
	movl	__ZL10g_ImGui_IO.lto_priv.0, %eax
	testl	%eax, %eax
	je	L573
	andl	$-33, (%eax)
L573:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L574:
	.cfi_restore_state
	testb	$2, %dl
	jne	L575
	xorl	%eax, %eax
	testb	%dl, %dl
	setne	%al
	call	_mouseGrabInput
	movzbl	_g_mouseGrabbed, %eax
	movb	%al, _g_mouseLockedToWindow
	movl	_osd, %eax
	testl	%eax, %eax
	jne	L576
	.p2align 4
	.p2align 3
L580:
	movl	$0, (%esp)
	call	_SDL_ShowCursor
	movl	__ZL10g_ImGui_IO.lto_priv.0, %eax
	testl	%eax, %eax
	je	L573
	orl	$32, (%eax)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L586:
	.cfi_restore_state
	testb	$2, _g_ImGuiCapturedDevices
	je	L580
	jmp	L579
	.cfi_endproc
LFE128:
	.section .rdata,"dr"
LC101:
	.ascii "(\0"
	.align 4
LC102:
	.ascii "Detecting video modes for display %d (%s)...\0"
	.align 4
LC104:
	.ascii "No fullscreen modes available!\12\0"
	.text
	.p2align 4
	.globl	_videoGetModes.constprop.0
	.def	_videoGetModes.constprop.0;	.scl	2;	.type	32;	.endef
_videoGetModes.constprop.0:
LFB130:
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
	subl	$84, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	$0, -40(%ebp)
	call	_SDL_GetNumVideoDisplays
	movl	_r_displayindex, %edi
	cmpl	%edi, %eax
	movl	$0, %eax
	cmovle	%eax, %edi
	movzbl	__ZL12modeschecked.lto_priv.0, %eax
	orb	_novideo, %al
	je	L690
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
L690:
	.cfi_restore_state
	movl	%edi, (%esp)
	call	_SDL_GetDisplayName
	movl	%eax, (%esp)
	movl	%eax, -44(%ebp)
	call	_strlen
	movl	%eax, %esi
	leal	1(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L590
	movl	-44(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_strcpy
	movb	$0, (%ebx,%esi)
	leal	-40(%ebp), %ecx
	movl	%ebx, %eax
	movl	$LC101, %edx
	call	_Bstrtoken.constprop.0
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	testl	%eax, %eax
	cmove	%ebx, %eax
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$1, %edx
	jg	L691
L592:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	xorl	%ebx, %ebx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, -52(%ebp)
	movl	$0, _validmodecnt
	movl	$0, -56(%ebp)
	jmp	L593
	.p2align 4,,10
	.p2align 3
L596:
	addl	$1, %ebx
L593:
	movl	%edi, (%esp)
	call	_SDL_GetNumDisplayModes
	cmpl	%eax, %ebx
	jge	L692
	leal	-36(%ebp), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	call	_SDL_GetDisplayMode
	movl	-32(%ebp), %eax
	cmpl	$10239, %eax
	jg	L596
	movl	-28(%ebp), %esi
	movlps	-32(%ebp), %xmm2
	leal	-480(%esi), %edx
	cmpl	$3839, %edx
	seta	%cl
	cmpl	$639, %eax
	setle	%dl
	orb	%dl, %cl
	movb	%cl, -44(%ebp)
	jne	L596
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm0
	cvtsi2ssl	%esi, %xmm1
	divss	%xmm1, %xmm0
	comiss	LC103, %xmm0
	jb	L596
	movl	_validmodecnt, %edx
	movb	$0, -64(%ebp)
	movl	%edx, -48(%ebp)
	cmpl	$255, %edx
	jle	L693
L662:
	movl	$0, -60(%ebp)
	cmpl	$255, -48(%ebp)
	jle	L682
L603:
	cmpb	$0, -64(%ebp)
	jne	L677
L607:
	cmpb	$0, _nogl
	je	L694
L608:
	cmpl	-52(%ebp), %esi
	jg	L645
	cmpl	-56(%ebp), %eax
	jle	L596
L645:
	movl	%esi, -52(%ebp)
	movl	%eax, -56(%ebp)
	jmp	L596
	.p2align 4,,10
	.p2align 3
L692:
	movl	-56(%ebp), %eax
	orl	-52(%ebp), %eax
	je	L695
L619:
	leal	-36(%ebp), %eax
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	call	_SDL_GetDisplayMode
	movl	-28(%ebp), %eax
	movl	-32(%ebp), %edi
	xorl	%edx, %edx
	movl	%eax, -48(%ebp)
	movl	_validmodecnt, %eax
	movl	%eax, -52(%ebp)
	movl	$2560, %eax
	.p2align 4
	.p2align 3
L640:
	cmpl	%eax, %edi
	jl	L634
	leal	-640(%eax), %ecx
	movl	_g_defaultVideoModes+4(,%edx,8), %esi
	movl	-48(%ebp), %ebx
	cmpl	$9599, %ecx
	seta	%cl
	movl	%esi, -44(%ebp)
	cmpl	%ebx, -44(%ebp)
	movl	%ecx, %ebx
	setg	%cl
	orb	%bl, %cl
	jne	L634
	movl	-44(%ebp), %esi
	leal	-480(%esi), %ecx
	cmpl	$3839, %ecx
	jbe	L696
L634:
	addl	$1, %edx
	movl	_g_defaultVideoModes(,%edx,8), %eax
	testl	%eax, %eax
	jne	L640
	movl	$__ZL9sortmodesPKvS0_, 12(%esp)
	movl	$16, 8(%esp)
	movl	-52(%ebp), %eax
	movl	$_validmode, (%esp)
	movl	%eax, 4(%esp)
	call	_qsort
	movb	$1, __ZL12modeschecked.lto_priv.0
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
L696:
	.cfi_restore_state
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm0
	cvtsi2ssl	%esi, %xmm1
	divss	%xmm1, %xmm0
	comiss	LC103, %xmm0
	jb	L634
	cmpl	$255, -52(%ebp)
	jg	L634
	movzbl	_nogl, %ebx
	movl	$_validmode, %ecx
	xorl	%esi, %esi
	movb	%bl, -56(%ebp)
	cmpl	$0, -52(%ebp)
	jle	L697
	movl	%edi, -60(%ebp)
	movl	-44(%ebp), %ebx
	movl	-52(%ebp), %edi
	jmp	L629
	.p2align 4
	.p2align 4,,10
	.p2align 3
L631:
	addl	$1, %esi
	addl	$16, %ecx
	cmpl	%edi, %esi
	je	L698
L629:
	cmpl	(%ecx), %eax
	jne	L631
	cmpl	4(%ecx), %ebx
	jne	L631
	cmpb	$8, 8(%ecx)
	jne	L631
	cmpb	$0, 9(%ecx)
	jne	L631
	movl	%ebx, -44(%ebp)
	movl	-60(%ebp), %edi
	cmpl	-52(%ebp), %esi
	je	L623
L689:
	cmpb	$0, -56(%ebp)
	jne	L634
L633:
	movl	%edi, -56(%ebp)
	movl	-44(%ebp), %ebx
	movl	$_validmode, %ecx
	xorl	%esi, %esi
	movl	-52(%ebp), %edi
	jmp	L637
	.p2align 4
	.p2align 4,,10
	.p2align 3
L638:
	addl	$1, %esi
	addl	$16, %ecx
	cmpl	%edi, %esi
	je	L699
L637:
	cmpl	(%ecx), %eax
	jne	L638
	cmpl	4(%ecx), %ebx
	jne	L638
	cmpb	$32, 8(%ecx)
	jne	L638
	cmpb	$0, 9(%ecx)
	jne	L638
	movl	%ebx, -44(%ebp)
	movl	-56(%ebp), %edi
	cmpl	-52(%ebp), %esi
	je	L635
L624:
	movl	_validmodecnt, %eax
	movl	%eax, -52(%ebp)
	jmp	L634
	.p2align 4,,10
	.p2align 3
L691:
	movl	%eax, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$LC102, 12(%esp)
	movl	$1479, 8(%esp)
	movl	$LC91, 4(%esp)
	movl	$2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L592
	.p2align 4,,10
	.p2align 3
L695:
	movl	$LC104, (%esp)
	call	_initprintf
	jmp	L619
	.p2align 4,,10
	.p2align 3
L694:
	movl	_validmodecnt, %edx
	movl	%edx, -60(%ebp)
	cmpl	$255, %edx
	jle	L700
L661:
	movl	$0, -64(%ebp)
	cmpl	$255, -60(%ebp)
	jle	L617
L615:
	cmpb	$0, -44(%ebp)
	je	L608
	movl	-60(%ebp), %ecx
	movl	%ecx, _validmodecnt
	jmp	L608
	.p2align 4,,10
	.p2align 3
L693:
	movl	$1, -60(%ebp)
	movl	%ebx, -72(%ebp)
	movl	%edx, %ebx
L604:
	testl	%ebx, %ebx
	jle	L598
	movl	%edi, -68(%ebp)
	movl	$_validmode, %edx
	xorl	%ecx, %ecx
	movl	%esi, -48(%ebp)
	jmp	L601
	.p2align 4
	.p2align 4,,10
	.p2align 3
L599:
	addl	$1, %ecx
	addl	$16, %edx
	cmpl	%ebx, %ecx
	je	L701
L601:
	cmpl	(%edx), %eax
	jne	L599
	movl	-48(%ebp), %edi
	cmpl	4(%edx), %edi
	jne	L599
	cmpb	$8, 8(%edx)
	jne	L599
	movzbl	9(%edx), %edi
	cmpl	-60(%ebp), %edi
	jne	L599
	movl	-68(%ebp), %edi
	movl	-48(%ebp), %esi
	cmpl	%ebx, %ecx
	je	L702
	movl	%ebx, -48(%ebp)
	movl	-72(%ebp), %ebx
	jmp	L597
	.p2align 4,,10
	.p2align 3
L701:
	movl	-48(%ebp), %esi
	movl	-68(%ebp), %edi
	movl	%ebx, -48(%ebp)
	movl	-72(%ebp), %ebx
L602:
	movl	-48(%ebp), %edx
	movzbl	-60(%ebp), %ecx
	movb	$1, -64(%ebp)
	addl	$1, -48(%ebp)
	sall	$4, %edx
	movb	$8, _validmode+8(%edx)
	movb	%cl, _validmode+9(%edx)
	movlps	%xmm2, _validmode(%edx)
L597:
	movl	-60(%ebp), %edx
	testl	%edx, %edx
	jne	L662
	jmp	L603
L702:
	movzbl	-60(%ebp), %ecx
	movl	%ebx, %edx
	movb	$1, -64(%ebp)
	addl	$1, %ebx
	sall	$4, %edx
	movb	%cl, _validmode+9(%edx)
	movl	-60(%ebp), %ecx
	movb	$8, _validmode+8(%edx)
	movlps	%xmm2, _validmode(%edx)
	testl	%ecx, %ecx
	jne	L643
	movl	%ebx, -48(%ebp)
	movl	-72(%ebp), %ebx
	.p2align 4
	.p2align 3
L677:
	movl	-48(%ebp), %edx
	movl	%edx, _validmodecnt
	jmp	L607
	.p2align 4,,10
	.p2align 3
L682:
	movl	%ebx, -72(%ebp)
	movl	-48(%ebp), %ebx
	jmp	L604
L700:
	movl	$1, -64(%ebp)
L617:
	movl	-60(%ebp), %ecx
	testl	%ecx, %ecx
	jle	L610
	movl	%ebx, -72(%ebp)
	movl	$_validmode, %edx
	movl	-60(%ebp), %ebx
	xorl	%ecx, %ecx
	movl	%edi, -68(%ebp)
	movl	%esi, -48(%ebp)
	jmp	L613
	.p2align 4
	.p2align 4,,10
	.p2align 3
L611:
	addl	$1, %ecx
	addl	$16, %edx
	cmpl	%ebx, %ecx
	je	L703
L613:
	cmpl	(%edx), %eax
	jne	L611
	movl	-48(%ebp), %esi
	cmpl	4(%edx), %esi
	jne	L611
	cmpb	$32, 8(%edx)
	jne	L611
	movzbl	9(%edx), %edi
	cmpl	-64(%ebp), %edi
	jne	L611
	movl	-68(%ebp), %edi
	movl	-72(%ebp), %ebx
	movl	-48(%ebp), %esi
	cmpl	-60(%ebp), %ecx
	je	L614
L609:
	movl	-64(%ebp), %edx
	testl	%edx, %edx
	jne	L661
	jmp	L615
	.p2align 4,,10
	.p2align 3
L703:
	movl	-68(%ebp), %edi
	movl	-72(%ebp), %ebx
	movl	-48(%ebp), %esi
L614:
	movl	-60(%ebp), %edx
	movzbl	-64(%ebp), %ecx
	movb	$1, -44(%ebp)
	addl	$1, -60(%ebp)
	sall	$4, %edx
	movb	$32, _validmode+8(%edx)
	movb	%cl, _validmode+9(%edx)
	movlps	%xmm2, _validmode(%edx)
	jmp	L609
	.p2align 4,,10
	.p2align 3
L590:
	movl	-48(%ebp), %eax
	call	__Z13handle_memerri
L698:
	movl	-52(%ebp), %esi
	movl	-60(%ebp), %edi
	movl	%ebx, -44(%ebp)
	movl	%esi, %ecx
	addl	$1, %esi
	sall	$4, %ecx
	movl	%esi, -52(%ebp)
	movl	%ebx, _validmode+4(%ecx)
	movl	$8, %ebx
	movw	%bx, _validmode+8(%ecx)
	movl	%eax, _validmode(%ecx)
	movl	%esi, _validmodecnt
	cmpb	$0, -56(%ebp)
	jne	L634
	cmpl	$256, -52(%ebp)
	jne	L633
	jmp	L634
	.p2align 4,,10
	.p2align 3
L699:
	movl	%ebx, -44(%ebp)
	movl	-56(%ebp), %edi
L635:
	movl	-52(%ebp), %esi
	movl	%esi, %ecx
	addl	$1, %esi
	sall	$4, %ecx
	movl	%esi, -52(%ebp)
	movl	%eax, _validmode(%ecx)
	movl	-44(%ebp), %eax
	movl	%eax, _validmode+4(%ecx)
	movl	$32, %eax
	movw	%ax, _validmode+8(%ecx)
	movl	%esi, _validmodecnt
	jmp	L634
L598:
	movl	%ebx, -48(%ebp)
	movl	-72(%ebp), %ebx
	jne	L603
	jmp	L602
L610:
	jne	L615
	jmp	L614
L697:
	je	L623
	testb	%bl, %bl
	jne	L634
	jmp	L624
L643:
	movl	$0, -60(%ebp)
	jmp	L604
L623:
	movl	-52(%ebp), %esi
	movl	-44(%ebp), %ebx
	movl	%esi, %ecx
	addl	$1, %esi
	sall	$4, %ecx
	movl	%esi, -52(%ebp)
	movw	$8, _validmode+8(%ecx)
	movl	%eax, _validmode(%ecx)
	movl	%ebx, _validmode+4(%ecx)
	movl	%esi, _validmodecnt
	jmp	L689
	.cfi_endproc
LFE130:
	.p2align 4
	.globl	_videoCheckMode
	.def	_videoCheckMode;	.scl	2;	.type	32;	.endef
_videoCheckMode:
LFB131:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%ebp, 36(%esp)
	.cfi_offset 5, -8
	movl	%ecx, %ebp
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%eax, 8(%esp)
	call	_videoGetModes.constprop.0
	cmpl	$8, %ebp
	jle	L705
	cmpb	$0, _nogl
	jne	L720
L705:
	movl	%edi, 32(%esp)
	.cfi_offset 7, -12
	movl	8(%esp), %edi
	movl	$10240, %edx
	movl	%esi, 28(%esp)
	.cfi_offset 6, -16
	andl	$-2, (%edi)
	movl	(%edi), %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$320, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, (%edi)
	movl	(%ebx), %edi
	movl	$4320, %eax
	andl	$-2, %edi
	cmpl	%eax, %edi
	cmovg	%eax, %edi
	movl	$200, %eax
	cmpl	%eax, %edi
	cmovl	%eax, %edi
	movl	%edi, (%ebx)
	movl	_validmodecnt, %esi
	testl	%esi, %esi
	jle	L707
	movl	$9999, 12(%esp)
	movl	$_validmode, %edx
	xorl	%ecx, %ecx
	movl	$-1, 4(%esp)
	movl	%ebx, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$9999, %edi
	.p2align 4
	.p2align 3
L713:
	movzbl	8(%edx), %eax
	cmpl	%ebp, %eax
	jne	L709
	movzbl	9(%edx), %eax
	cmpl	44(%esp), %eax
	jne	L709
	movl	8(%esp), %ebx
	movl	(%edx), %eax
	subl	(%ebx), %eax
/APP
 # 1563 "source/build/src/sdlayer.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, (%esp)
	movl	4(%edx), %eax
	subl	16(%esp), %eax
/APP
 # 1564 "source/build/src/sdlayer.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	(%esp), %ebx
	orl	%eax, %ebx
	je	L711
	cmpl	%edi, (%esp)
	jg	L709
	movl	12(%esp), %ebx
	cmpl	%ebx, %eax
	setle	12(%esp)
	cmpb	$0, 12(%esp)
	cmovne	(%esp), %edi
	cmove	%ebx, %eax
	movl	%eax, 12(%esp)
	movl	4(%esp), %eax
	cmovne	%ecx, %eax
	movl	%eax, 4(%esp)
	.p2align 4
	.p2align 3
L709:
	addl	$1, %ecx
	addl	$16, %edx
	cmpl	%esi, %ecx
	jne	L713
	movl	44(%esp), %eax
	movl	16(%esp), %edi
	movl	20(%esp), %ebx
	andl	$1, %eax
	orl	48(%esp), %eax
	je	L735
	cmpl	$-1, 4(%esp)
	je	L734
L719:
	movl	4(%esp), %eax
	sall	$4, %eax
	movl	_validmode(%eax), %eax
L718:
	movl	8(%esp), %esi
	movl	%eax, (%esi)
	movl	4(%esp), %eax
	sall	$4, %eax
	movl	_validmode+4(%eax), %eax
	movl	%eax, (%ebx)
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
L704:
	movl	4(%esp), %eax
	movl	24(%esp), %ebx
	movl	36(%esp), %ebp
	addl	$40, %esp
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L735:
	.cfi_def_cfa_offset 44
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpl	$-1, 4(%esp)
	je	L717
L716:
	movl	4(%esp), %edx
	movl	8(%esp), %esi
	sall	$4, %edx
	movl	_validmode(%edx), %eax
	cmpl	(%esi), %eax
	jne	L717
	cmpl	_validmode+4(%edx), %edi
	je	L718
L717:
	movl	28(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	$2147483647, 4(%esp)
	movl	24(%esp), %ebx
	movl	4(%esp), %eax
	movl	36(%esp), %ebp
	addl	$40, %esp
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L711:
	.cfi_restore_state
	movl	44(%esp), %eax
	movl	16(%esp), %edi
	movl	%ecx, 4(%esp)
	movl	20(%esp), %ebx
	andl	$1, %eax
	orl	48(%esp), %eax
	je	L716
	jmp	L719
L720:
	.cfi_restore 6
	.cfi_restore 7
	movl	$-1, 4(%esp)
	jmp	L704
L707:
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	44(%esp), %eax
	movl	$2147483647, %edx
	movl	28(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	andl	$1, %eax
	orl	48(%esp), %eax
	cmpl	$1, %eax
	movl	$-1, %eax
	cmovne	%edx, %eax
	movl	%eax, 4(%esp)
	jmp	L704
L734:
	.cfi_restore_state
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	jmp	L704
	.cfi_endproc
LFE131:
	.p2align 4
	.globl	__Z22setvideomode_sdlcommonPiS_iiS_.constprop.0
	.def	__Z22setvideomode_sdlcommonPiS_iiS_.constprop.0;	.scl	2;	.type	32;	.endef
__Z22setvideomode_sdlcommonPiS_iiS_.constprop.0:
LFB133:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	movl	_g_displayindex, %esi
	cmpl	%esi, _r_displayindex
	jne	L737
	movl	20(%esp), %ebx
	cmpl	%ebx, _fullscreen
	je	L756
L737:
	movl	%eax, %ebx
	movl	20(%esp), %eax
	movl	$0, 4(%esp)
	movl	%edx, %esi
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_videoCheckMode
	cmpl	$-1, %eax
	je	L736
	movl	__ZL10startupdlg.lto_priv.0, %eax
	testl	%eax, %eax
	je	L740
	movl	%eax, (%esp)
	call	*__imp__DestroyWindow@4
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$0, __ZL10startupdlg.lto_priv.0
L740:
	cmpb	$0, _g_mouseGrabbed
	jne	L757
L741:
	movl	_lockcount, %edx
	testl	%edx, %edx
	je	L758
	cmpl	$8, _bpp
	jg	L743
	movl	$0, _frameplace
	movl	$0, _lockcount
L744:
	cmpb	$0, _nogl
	jne	L746
	cmpl	$8, _bpp
	je	L759
L747:
	movl	_g_displayindex, %eax
	cmpl	%eax, _r_displayindex
	je	L760
L748:
	movl	$0x00000000, __ZL10lastvidgcb.lto_priv.0+4
	movl	$1, %eax
	movl	$0x00000000, __ZL10lastvidgcb.lto_priv.0
L736:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 1
	.p2align 4,,10
	.p2align 3
L743:
	.cfi_restore_state
	jmp	L743
	.p2align 4,,10
	.p2align 3
L746:
	call	__Z19softsurface_destroyv
	jmp	L748
	.p2align 4,,10
	.p2align 3
L757:
	movl	24(%esp), %eax
	movl	$1, (%eax)
	xorl	%eax, %eax
	call	_mouseGrabInput
	jmp	L741
	.p2align 4,,10
	.p2align 3
L756:
	movl	_xres, %ebx
	cmpl	%ebx, (%eax)
	jne	L737
	movl	_yres, %ebx
	cmpl	%ebx, (%edx)
	jne	L737
	cmpl	%ecx, _bpp
	jne	L737
	cmpb	$0, _videomodereset
	jne	L737
	xorl	%eax, %eax
	jmp	L736
	.p2align 4,,10
	.p2align 3
L760:
	movl	_fullscreen, %eax
	cmpl	%eax, 20(%esp)
	jne	L748
	movl	_xres, %eax
	cmpl	%eax, (%ebx)
	jne	L748
	movl	_yres, %eax
	cmpl	%eax, (%esi)
	jne	L748
	movl	_bpp, %eax
	testl	%eax, %eax
	je	L748
	cmpb	$0, _videomodereset
	jne	L748
	xorl	%eax, %eax
	jmp	L736
	.p2align 4,,10
	.p2align 3
L759:
	call	__Z17glsurface_destroyv
	jmp	L747
L758:
	cmpl	$0, __ZL11sdl_surface.lto_priv.0
	je	L744
	cmpl	$8, _bpp
	jle	L744
	call	_polymost_glreset
	jmp	L744
	.cfi_endproc
LFE133:
	.section .rdata,"dr"
LC109:
	.ascii "ATI Technologies Inc.\0"
	.align 4
LC110:
	.ascii "Enabling ATI FBO color attachment workaround.\0"
	.align 4
LC111:
	.ascii "source/build/src/baselayer.cpp\0"
LC112:
	.ascii "Radeon X1\0"
	.align 4
LC113:
	.ascii "Enabling ATI R520 polygon offset workaround.\0"
LC114:
	.ascii "GL_ARB_depth_texture\0"
LC115:
	.ascii "GL_EXT_framebuffer_object\0"
LC116:
	.ascii "GL_OES_framebuffer_object\0"
LC117:
	.ascii "GL_ARB_shadow\0"
	.align 4
LC118:
	.ascii "GL_ARB_texture_non_power_of_two\0"
LC119:
	.ascii "GL_OES_texture_npot\0"
LC120:
	.ascii "GL_EXT_bgra\0"
LC121:
	.ascii "GL_ARB_buffer_storage\0"
LC122:
	.ascii "GL_ARB_debug_output\0"
LC123:
	.ascii "GL_ARB_depth_clamp\0"
LC124:
	.ascii "GL_ARB_shader_objects\0"
LC125:
	.ascii "GL_ARB_multitexture\0"
LC126:
	.ascii "GL_ARB_occlusion_query\0"
LC127:
	.ascii "GL_NV_texture_rectangle\0"
LC128:
	.ascii "GL_EXT_texture_rectangle\0"
LC129:
	.ascii "GL_ARB_robustness\0"
LC130:
	.ascii "GL_KHR_robustness\0"
LC131:
	.ascii "GL_ARB_sampler_objects\0"
LC132:
	.ascii "GL_ARB_sync\0"
LC133:
	.ascii "GL_ARB_texture_compression\0"
LC134:
	.ascii "ATI Technologies Inc\0"
LC135:
	.ascii "WGL_EXT_swap_control\0"
LC136:
	.ascii "GLX_EXT_swap_control\0"
	.align 4
LC137:
	.ascii "OpenGL driver lacks the necessary functions to use caching.\0"
	.align 4
LC138:
	.ascii "Unable to query desktop display mode: %s.\0"
	.align 4
LC139:
	.ascii "Unable to find a fullscreen video mode suitable for or similar to %dx%d at %dHz: %s.\0"
LC140:
	.ascii "Unable to set video mode: %s.\0"
LC141:
	.ascii "Refresh rate: %.2fHz.\0"
	.align 4
LC142:
	.ascii "Unable to set window fullscreen: %s.\0"
	.align 4
LC143:
	.ascii "Unable to set windowed mode: %s.\0"
	.text
	.p2align 4
	.globl	__Z26setvideomode_sdlcommonpostiiiii
	.def	__Z26setvideomode_sdlcommonpostiiiii;	.scl	2;	.type	32;	.endef
__Z26setvideomode_sdlcommonpostiiiii:
LFB136:
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
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	movl	%edx, %esi
	pushl	%ebx
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%eax, %ebx
	subl	$124, %esp
	movl	(%edi), %eax
	movl	4(%edi), %edi
	movl	%ecx, -88(%ebp)
	movl	%eax, -80(%ebp)
	movl	$_apptitle, %eax
	movl	%edi, -100(%ebp)
	call	_wm_setapptitle
	movl	-88(%ebp), %ecx
	movl	-80(%ebp), %eax
	movl	%ebx, _xres
	movl	%esi, _yres
	movl	%eax, _fullscreen
	xorl	%eax, %eax
	cmpl	$8, %ecx
	setg	%al
	movl	%ecx, _bpp
	addl	$1, %eax
	movb	$1, _modechange
	movl	%eax, _numpages
	movl	$0, _frameplace
	movl	$0, _lockcount
	movb	$0, _videomodereset
	cmpb	$0, _nogl
	je	L860
	movl	_gammabrightness, %eax
	testl	%eax, %eax
	je	L820
L779:
	movl	__ZL10sdl_window.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_GetWindowDisplayIndex
	movl	%eax, %edi
	call	_SDL_GetNumVideoDisplays
	movl	_r_displayindex, %ecx
	cmpl	%ecx, %eax
	leal	-76(%ebp), %eax
	movl	%ecx, -96(%ebp)
	movl	%eax, 4(%esp)
	jg	L783
	movl	%edi, (%esp)
	call	_SDL_GetDesktopDisplayMode
	testl	%eax, %eax
	jne	L784
L785:
	movl	_g_windowPos, %edx
	movl	-72(%ebp), %eax
	movl	%edx, %ecx
	movl	%edx, -88(%ebp)
	addl	%ebx, %ecx
	js	L789
	movl	_g_windowPos+4, %ecx
	movl	%ecx, %edx
	addl	%esi, %edx
	js	L789
	cmpl	%eax, -88(%ebp)
	jg	L789
	movl	%edi, -96(%ebp)
	cmpl	-68(%ebp), %ecx
	jle	L790
L789:
	movl	%edi, -96(%ebp)
L788:
	movb	$0, _g_windowPosValid
L790:
	movl	_timingInfo+4, %edx
	testl	%edx, %edx
	je	L791
	movl	_timingInfo+8, %ecx
	testl	%ecx, %ecx
	je	L791
	movl	%edx, -88(%ebp)
	movl	$0, -84(%ebp)
	fildq	-88(%ebp)
	movl	%ecx, -88(%ebp)
	movl	$0, -84(%ebp)
	fildq	-88(%ebp)
	fdivrp	%st, %st(1)
L792:
	movl	_r_borderless, %edx
	fstl	_refreshfreq
	cmpl	%eax, %ebx
	je	L861
L793:
	xorl	%eax, %eax
	cmpl	$1, %edx
	sete	%al
	sall	$4, %eax
	movl	%eax, %edi
	movl	-80(%ebp), %eax
	testl	%eax, %eax
	jne	L880
L796:
	fldl	__ZZ26setvideomode_sdlcommonpostiiiiiE15lastrefreshfreq
	fucomip	%st(1), %st
	jp	L816
	jne	L816
	fstp	%st(0)
L859:
	movl	%esi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	__ZL10sdl_window.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_SetWindowSize
L803:
	movl	$0, 4(%esp)
	movl	__ZL10sdl_window.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_SetWindowFullscreen
	testl	%eax, %eax
	jne	L863
	movl	%edi, %eax
	shrl	$4, %eax
	xorl	$1, %eax
	movl	%eax, 4(%esp)
	movl	__ZL10sdl_window.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_SetWindowBordered
	cmpb	$0, _NoHide
	jne	L807
	cmpb	$0, _g_windowPosValid
	jne	L864
	movl	-96(%ebp), %eax
	orl	$805240832, %eax
	movl	%eax, %edx
L810:
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	__ZL10sdl_window.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_SetWindowPosition
L807:
	movl	$512, (%esp)
	xorl	%edi, %edi
	call	_SDL_FlushEvent
	movzbl	_palfadergb+2, %eax
	movzbl	_palfadedelta, %ebx
	movl	%eax, -80(%ebp)
	movzbl	_palfadergb+1, %eax
	movl	%eax, -88(%ebp)
	movzbl	_palfadergb, %eax
	movl	%eax, -92(%ebp)
	.p2align 4
	.p2align 3
L811:
	movl	%edi, %eax
	call	_paletteGetColor
	movl	-80(%ebp), %edx
	movb	$0, _curpalettefaded+3(,%edi,4)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movzbl	%cl, %esi
	subl	%esi, %edx
	imull	%ebx, %edx
	addb	%dh, %cl
	movl	-88(%ebp), %edx
	movb	%cl, _curpalettefaded+2(,%edi,4)
	movzbl	%ah, %ecx
	subl	%ecx, %edx
	imull	%ebx, %edx
	movzbl	%dh, %ecx
	movl	-92(%ebp), %edx
	addb	%ah, %cl
	movb	%cl, _curpalettefaded+1(,%edi,4)
	movzbl	%al, %ecx
	subl	%ecx, %edx
	imull	%ebx, %edx
	addb	%dh, %al
	movb	%al, _curpalettefaded(,%edi,4)
	addl	$1, %edi
	cmpl	$256, %edi
	jne	L811
	movl	$1024, %edx
	movl	$_curpalettefaded, %eax
	call	_XXH3_hashLong_64b_default.constprop.0
	movl	%eax, %esi
	movl	%edx, %ebx
	movl	__ZZ16videoFadePaletteE14lastpalettesum, %eax
	movl	__ZZ16videoFadePaletteE14lastpalettesum+4, %edx
	xorl	%esi, %eax
	xorl	%ebx, %edx
	orl	%edx, %eax
	jne	L812
	movl	_g_lastpalettesum, %eax
	movl	_g_lastpalettesum+4, %edx
	xorl	%esi, %eax
	xorl	%ebx, %edx
	orl	%edx, %eax
	je	L813
L812:
	cmpl	$8, _bpp
	jg	L813
	cmpb	$0, _nogl
	je	L865
	movl	__ZL11sdl_surface.lto_priv.0, %eax
	testl	%eax, %eax
	je	L813
	movl	__ZL6buffer.lto_priv.1, %ecx
	testl	%ecx, %ecx
	je	L813
	movl	4(%eax), %eax
	movl	20(%eax), %ecx
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	call	__Z22softsurface_setPalettePvjjj.part.0.constprop.0
	.p2align 4
	.p2align 3
L813:
	movl	-100(%ebp), %edx
	movl	%esi, __ZZ16videoFadePaletteE14lastpalettesum
	movl	%ebx, __ZZ16videoFadePaletteE14lastpalettesum+4
	movl	%esi, _g_lastpalettesum
	movl	%ebx, _g_lastpalettesum+4
	testl	%edx, %edx
	jne	L866
L815:
	movl	-96(%ebp), %eax
	movl	%eax, _g_displayindex
	xorl	%eax, %eax
L761:
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
L791:
	.cfi_restore_state
	fildl	-64(%ebp)
	jmp	L792
L783:
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_SDL_GetDesktopDisplayMode
	testl	%eax, %eax
	jne	L784
	cmpl	%edi, -96(%ebp)
	je	L785
	movl	-72(%ebp), %eax
	jmp	L788
L861:
	cmpl	%esi, -68(%ebp)
	jne	L793
	subl	$1, %edx
	xorl	%eax, %eax
	cmpl	$1, %edx
	setbe	%al
	sall	$4, %eax
	movl	%eax, %edi
	movl	-80(%ebp), %eax
	testl	%eax, %eax
	je	L796
	fstp	%st(0)
	jmp	L862
L880:
	fstp	%st(0)
L862:
	leal	-56(%ebp), %edx
	leal	-36(%ebp), %eax
	movl	$0, -36(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	%ebx, -32(%ebp)
	movl	%esi, -28(%ebp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_SDL_GetClosestDisplayMode
	leal	-56(%ebp), %edx
	testl	%eax, %eax
	je	L867
	movl	%edx, 4(%esp)
	movl	__ZL10sdl_window.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_SetWindowDisplayMode
	testl	%eax, %eax
	jne	L868
	fildl	-44(%ebp)
	fstl	_refreshfreq
	fldl	__ZZ26setvideomode_sdlcommonpostiiiiiE15lastrefreshfreq
	fucomip	%st(1), %st
	jp	L800
	jne	L800
	fstp	%st(0)
L858:
	movl	%esi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	__ZL10sdl_window.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_SetWindowSize
L819:
	movl	$1, 4(%esp)
	movl	__ZL10sdl_window.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_SetWindowFullscreen
	testl	%eax, %eax
	jne	L869
	movl	-96(%ebp), %eax
	orl	$536805376, %eax
	movl	%eax, 8(%esp)
	movl	%eax, 4(%esp)
	movl	__ZL10sdl_window.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_SetWindowPosition
	jmp	L807
L860:
	call	__Z17glsurface_destroyv
	movl	$7425, (%esp)
	call	*_glad_glShadeModel
	subl	$4, %esp
	movl	$0x3f800000, 12(%esp)
	movl	$0x00000000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movl	$0x00000000, (%esp)
	call	*_glad_glClearColor
	subl	$16, %esp
	movl	$4354, 4(%esp)
	movl	$3152, (%esp)
	call	*_glad_glHint
	movl	_yres, %eax
	subl	$8, %esp
	movl	%eax, 12(%esp)
	movl	_xres, %eax
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$0, (%esp)
	call	*_glad_glViewport
	subl	$16, %esp
	movl	$3024, (%esp)
	call	*_glad_glDisable
	subl	$4, %esp
	movl	$7939, (%esp)
	call	*_glad_glGetString
	subl	$4, %esp
	movl	%eax, _glinfo+12
	movl	$7937, (%esp)
	call	*_glad_glGetString
	subl	$4, %esp
	movl	%eax, _glinfo+4
	movl	$7936, (%esp)
	call	*_glad_glGetString
	subl	$4, %esp
	movl	%eax, _glinfo
	movl	$7938, (%esp)
	call	*_glad_glGetString
	subl	$4, %esp
	movl	%eax, _glinfo+8
	movl	$LC109, 4(%esp)
	movl	_glinfo, %eax
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L870
L764:
	movl	$LC114, 4(%esp)
	movl	_glinfo+12, %eax
	movl	%eax, (%esp)
	call	_strstr
	testl	%eax, %eax
	movzbl	_glinfo+28, %eax
	setne	%dl
	sall	$4, %edx
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, _glinfo+28
	movl	$LC115, 4(%esp)
	movl	_glinfo+12, %eax
	movl	%eax, (%esp)
	call	_strstr
	testl	%eax, %eax
	movl	$1, %eax
	je	L871
L766:
	sall	$5, %eax
	movl	%eax, %edx
	movzbl	_glinfo+28, %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, _glinfo+28
	movl	$LC117, 4(%esp)
	movl	_glinfo+12, %eax
	movl	%eax, (%esp)
	call	_strstr
	testl	%eax, %eax
	movzbl	_glinfo+29, %eax
	setne	%dl
	sall	$4, %edx
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, _glinfo+29
	movl	$LC118, 4(%esp)
	movl	_glinfo+12, %eax
	movl	%eax, (%esp)
	call	_strstr
	testl	%eax, %eax
	movl	$1, %eax
	je	L872
L767:
	sall	$7, %eax
	movl	%eax, %edx
	movzbl	_glinfo+29, %eax
	andl	$127, %eax
	orl	%edx, %eax
	movb	%al, _glinfo+29
	movl	$LC120, 4(%esp)
	movl	_glinfo+12, %eax
	movl	%eax, (%esp)
	call	_strstr
	testl	%eax, %eax
	movzbl	_glinfo+28, %eax
	setne	%dl
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, _glinfo+28
	movl	$LC121, 4(%esp)
	movl	_glinfo+12, %eax
	movl	%eax, (%esp)
	call	_strstr
	testl	%eax, %eax
	movzbl	_glinfo+28, %eax
	setne	%dl
	addl	%edx, %edx
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, _glinfo+28
	movl	$LC122, 4(%esp)
	movl	_glinfo+12, %eax
	movl	%eax, (%esp)
	call	_strstr
	testl	%eax, %eax
	movzbl	_glinfo+28, %eax
	setne	%dl
	sall	$2, %edx
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, _glinfo+28
	movl	$LC123, 4(%esp)
	movl	_glinfo+12, %eax
	movl	%eax, (%esp)
	call	_strstr
	testl	%eax, %eax
	movzbl	_glinfo+28, %eax
	setne	%dl
	sall	$3, %edx
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, _glinfo+28
	movl	$LC124, 4(%esp)
	movl	_glinfo+12, %eax
	movl	%eax, (%esp)
	call	_strstr
	testl	%eax, %eax
	movzbl	_glinfo+28, %eax
	setne	%dl
	sall	$6, %edx
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, _glinfo+28
	movl	$LC125, 4(%esp)
	movl	_glinfo+12, %eax
	movl	%eax, (%esp)
	call	_strstr
	testl	%eax, %eax
	movzbl	_glinfo+28, %eax
	setne	%dl
	sall	$7, %edx
	andl	$127, %eax
	orl	%edx, %eax
	movb	%al, _glinfo+28
	movl	$LC126, 4(%esp)
	movl	_glinfo+12, %eax
	movl	%eax, (%esp)
	call	_strstr
	testl	%eax, %eax
	movzbl	_glinfo+29, %eax
	setne	%dl
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, _glinfo+29
	movl	$LC127, 4(%esp)
	movl	_glinfo+12, %eax
	movl	%eax, (%esp)
	call	_strstr
	testl	%eax, %eax
	movl	$1, %eax
	je	L873
L768:
	leal	(%eax,%eax), %edx
	movzbl	_glinfo+29, %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, _glinfo+29
	movl	$LC129, 4(%esp)
	movl	_glinfo+12, %eax
	movl	%eax, (%esp)
	call	_strstr
	testl	%eax, %eax
	je	L769
	movl	_glad_glGetGraphicsResetStatus, %eax
	testl	%eax, %eax
	je	L769
L770:
	movl	$1, %edx
L772:
	movzbl	_glinfo+29, %eax
	sall	$2, %edx
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, _glinfo+29
	movl	$LC131, 4(%esp)
	movl	_glinfo+12, %eax
	movl	%eax, (%esp)
	call	_strstr
	testl	%eax, %eax
	movzbl	_glinfo+29, %eax
	setne	%dl
	sall	$3, %edx
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, _glinfo+29
	movl	$LC132, 4(%esp)
	movl	_glinfo+12, %eax
	movl	%eax, (%esp)
	call	_strstr
	testl	%eax, %eax
	movzbl	_glinfo+29, %eax
	setne	%dl
	sall	$5, %edx
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, _glinfo+29
	movl	$LC133, 4(%esp)
	movl	_glinfo+12, %eax
	movl	%eax, (%esp)
	call	_strstr
	testl	%eax, %eax
	movl	$0, %eax
	je	L773
	movl	$LC134, 4(%esp)
	movl	_glinfo, %eax
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	setne	%al
L773:
	sall	$6, %eax
	movl	%eax, %edx
	movzbl	_glinfo+29, %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, _glinfo+29
	movl	$LC135, 4(%esp)
	movl	_glinfo+12, %eax
	movl	%eax, (%esp)
	call	_strstr
	movl	$1, %edx
	testl	%eax, %eax
	je	L874
L774:
	movzbl	_glinfo+30, %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, _glinfo+30
	testb	$64, _glinfo+29
	jne	L875
L775:
	movl	$_glinfo+16, 4(%esp)
	movl	$34047, (%esp)
	call	*_glad_glGetFloatv
	subl	$8, %esp
	movl	$_glinfo+20, 4(%esp)
	movl	$3379, (%esp)
	call	*_glad_glGetIntegerv
	movl	_glinfo+24, %edx
	subl	$8, %esp
	testl	%edx, %edx
	je	L876
L778:
	movl	_gammabrightness, %eax
	testl	%eax, %eax
	jne	L779
	cmpb	$0, _nogl
	jne	L820
	movl	$1, _gammabrightness
	jmp	L779
L866:
	movzbl	_g_mouseLockedToWindow, %eax
	call	_mouseGrabInput
	jmp	L815
L816:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$1, %eax
	jle	L877
L822:
	movl	$LC141, 12(%esp)
	movl	$1855, 8(%esp)
	movl	$LC91, 4(%esp)
	movl	$2, (%esp)
	fstpl	16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	fldl	_refreshfreq
	fstpl	__ZZ26setvideomode_sdlcommonpostiiiiiE15lastrefreshfreq
	movl	%esi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	__ZL10sdl_window.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_SetWindowSize
	movl	-80(%ebp), %eax
	testl	%eax, %eax
	jne	L819
	jmp	L803
	.p2align 4,,10
	.p2align 3
L875:
	movl	_glad_glCompressedTexImage2D, %edi
	testl	%edi, %edi
	je	L776
	movl	_glad_glGetCompressedTexImage, %ecx
	testl	%ecx, %ecx
	jne	L775
L776:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jge	L878
L777:
	andb	$-65, _glinfo+29
	jmp	L775
L864:
	movl	_g_windowPos+4, %edx
	movl	_g_windowPos, %eax
	jmp	L810
L769:
	movl	$LC130, 4(%esp)
	movl	_glinfo+12, %eax
	movl	%eax, (%esp)
	call	_strstr
	testl	%eax, %eax
	jne	L770
	movl	_glad_glGetGraphicsResetStatusKHR, %eax
	testl	%eax, %eax
	setne	%dl
	jmp	L772
L865:
	movl	__ZL6buffer.lto_priv.0, %edi
	testl	%edi, %edi
	je	L813
	call	__Z20glsurface_setPalettePv.part.0.constprop.0
	jmp	L813
L820:
	movl	$__ZL8sysgamma+1024, 12(%esp)
	movl	$__ZL8sysgamma+512, 8(%esp)
	movl	$__ZL8sysgamma, 4(%esp)
	movl	__ZL10sdl_window.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_GetWindowGammaRamp
	testl	%eax, %eax
	jne	L781
	movl	$1, _gammabrightness
L782:
	call	_videoSetGamma
	testl	%eax, %eax
	jns	L779
	movl	$0, _gammabrightness
	jmp	L779
L800:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$1, %eax
	jg	L822
	fstp	%st(0)
	fldl	_refreshfreq
	fstpl	__ZZ26setvideomode_sdlcommonpostiiiiiE15lastrefreshfreq
	jmp	L858
L781:
	movl	_gammabrightness, %eax
	testl	%eax, %eax
	je	L779
	jmp	L782
	.p2align 4,,10
	.p2align 3
L870:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	$1, _pr_ati_fboworkaround
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$1, %eax
	jle	L765
	movl	$LC110, 12(%esp)
	movl	$542, 8(%esp)
	movl	$LC111, 4(%esp)
	movl	$2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L765:
	movl	$LC112, 4(%esp)
	movl	_glinfo+4, %eax
	movl	%eax, (%esp)
	call	_strstr
	testl	%eax, %eax
	je	L764
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	$1, _pr_ati_nodepthoffset
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$1, %eax
	jle	L764
	movl	$LC113, 12(%esp)
	movl	$547, 8(%esp)
	movl	$LC111, 4(%esp)
	movl	$2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L764
L876:
	movl	_bpp, %edi
	movl	$32, _bpp
	movl	$0, (%esp)
	call	_osdcmd_glinfo
	movl	%edi, _bpp
	movl	$1, _glinfo+24
	jmp	L778
L873:
	movl	$LC128, 4(%esp)
	movl	_glinfo+12, %eax
	movl	%eax, (%esp)
	call	_strstr
	testl	%eax, %eax
	setne	%al
	jmp	L768
L872:
	movl	$LC119, 4(%esp)
	movl	_glinfo+12, %eax
	movl	%eax, (%esp)
	call	_strstr
	testl	%eax, %eax
	setne	%al
	jmp	L767
L871:
	movl	$LC116, 4(%esp)
	movl	_glinfo+12, %eax
	movl	%eax, (%esp)
	call	_strstr
	testl	%eax, %eax
	setne	%al
	jmp	L766
L874:
	movl	$LC136, 4(%esp)
	movl	_glinfo+12, %eax
	movl	%eax, (%esp)
	call	_strstr
	testl	%eax, %eax
	setne	%dl
	jmp	L774
L877:
	fstp	%st(0)
	fldl	_refreshfreq
	fstpl	__ZZ26setvideomode_sdlcommonpostiiiiiE15lastrefreshfreq
	jmp	L859
L878:
	movl	$LC137, 12(%esp)
	movl	$585, 8(%esp)
	movl	$LC111, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L777
L784:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L879
L787:
	movl	$-1, %eax
	jmp	L761
L869:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L787
	call	_SDL_GetError
	movl	$LC142, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1865, 8(%esp)
	movl	$LC91, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L787
L863:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L787
	call	_SDL_GetError
	movl	$LC143, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1874, 8(%esp)
	movl	$LC91, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L787
L879:
	call	_SDL_GetError
	movl	$LC138, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1813, 8(%esp)
	movl	$LC91, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L787
L867:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L787
	call	_SDL_GetError
	movl	%esi, 20(%esp)
	movl	%eax, 28(%esp)
	xorl	%eax, %eax
	movl	%eax, 24(%esp)
	movl	%ebx, 16(%esp)
	movl	$LC139, 12(%esp)
	movl	$1836, 8(%esp)
	movl	$LC91, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L787
L868:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L787
	call	_SDL_GetError
	movl	$LC140, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1843, 8(%esp)
	movl	$LC91, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L787
	.cfi_endproc
LFE136:
	.section .rdata,"dr"
LC146:
	.ascii "wt\0"
	.section	.text.unlikely,"x"
LCOLDB147:
	.text
LHOTB147:
	.p2align 4
	.globl	__ZL24destroy_window_resourcesv.lto_priv.0
	.def	__ZL24destroy_window_resourcesv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL24destroy_window_resourcesv.lto_priv.0:
LFB150:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	__ZL10g_ImGui_IO.lto_priv.0, %edx
	movl	%edi, -4(%ebp)
	testl	%edx, %edx
	.cfi_offset 7, -12
	je	L882
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movl	_GImGui, %ebx
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	xorl	%esi, %esi
	testl	%ebx, %ebx
	je	L883
	movl	132(%ebx), %esi
L883:
	call	__ZN5ImGui22DestroyPlatformWindowsEv
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L884
	movl	132(%eax), %edi
	movl	64(%edi), %eax
	testl	%eax, %eax
	je	L885
	leal	64(%edi), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_imgl3wProcs+64
	subl	$8, %esp
	movl	$0, 64(%edi)
L885:
	movl	68(%edi), %eax
	testl	%eax, %eax
	je	L886
	leal	68(%edi), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_imgl3wProcs+64
	subl	$8, %esp
	movl	$0, 68(%edi)
L886:
	movl	40(%edi), %eax
	testl	%eax, %eax
	jne	L1933
L887:
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L888
	movl	132(%edx), %edi
	movl	36(%edi), %eax
	testl	%eax, %eax
	jne	L889
	movl	$0, 124(%ebx)
	movl	$0, 132(%ebx)
	testl	%esi, %esi
	je	L890
L891:
	subl	$1, 188(%edx)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	jmp	L890
L889:
	leal	36(%edi), %eax
	movl	%edx, -16(%ebp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	*_imgl3wProcs+76
	movl	-16(%ebp), %edx
	subl	$8, %esp
	movl	72(%edx), %eax
	movl	_GImGui, %edx
	movl	$0, 4(%eax)
	movl	$0, 36(%edi)
	movl	$0, 124(%ebx)
	movl	$0, 132(%ebx)
	testl	%esi, %esi
	jne	L1934
	testl	%edx, %edx
	je	L893
L890:
	movl	128(%edx), %esi
	movl	%edx, -16(%ebp)
	call	__ZN5ImGui22DestroyPlatformWindowsEv
	movl	-16(%ebp), %edx
	movl	68(%esi), %eax
	testl	%eax, %eax
	je	L894
	movl	%eax, (%esp)
	call	_SDL_free
	movl	-16(%ebp), %edx
L894:
	movl	%edx, -16(%ebp)
	leal	24(%esi), %ebx
	leal	60(%esi), %edi
	.p2align 4
	.p2align 3
L895:
	movl	(%ebx), %edx
	addl	$4, %ebx
	movl	%edx, (%esp)
	call	_SDL_FreeCursor
	cmpl	%ebx, %edi
	jne	L895
	movl	-16(%ebp), %edx
	movl	$0, 120(%edx)
	movl	$0, 128(%edx)
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L896
	subl	$1, 188(%edx)
L896:
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	72(%edx), %eax
	testl	%eax, %eax
	je	L897
	cmpb	$0, 1(%edx)
	jne	L1935
L897:
	movl	15576(%edx), %eax
	movl	$0, 72(%edx)
	testl	%eax, %eax
	je	L931
	movl	_GImGui, %ecx
	movl	$0, 15568(%edx)
	movl	$0, 15572(%edx)
	testl	%ecx, %ecx
	je	L932
	subl	$1, 188(%ecx)
L932:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 15576(%edx)
L931:
	cmpb	$0, (%edx)
	je	L933
	cmpb	$0, 23420(%edx)
	jne	L1936
L934:
	movl	%edx, -16(%ebp)
	call	__ZN5ImGui22DestroyPlatformWindowsEv
	movl	-16(%ebp), %edx
	movl	23376(%edx), %eax
	testl	%eax, %eax
	jle	L944
	xorl	%ebx, %ebx
	movl	%edx, %edi
	.p2align 4
	.p2align 3
L947:
	movl	23384(%edi), %eax
	movl	4(%eax,%ebx,8), %esi
	testl	%esi, %esi
	je	L945
	movl	%esi, %ecx
	call	__ZN13ImGuiDockNodeD1Ev
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L946
	subl	$1, 188(%eax)
L946:
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L945:
	addl	$1, %ebx
	cmpl	23376(%edi), %ebx
	jl	L947
	movl	%edi, %edx
L944:
	movl	23476(%edx), %eax
	testl	%eax, %eax
	jle	L948
	xorl	%ebx, %ebx
	movl	%edx, %esi
	.p2align 4
	.p2align 3
L950:
	movl	23484(%esi), %edx
	leal	(%ebx,%ebx,4), %eax
	leal	(%edx,%eax,4), %eax
	cmpl	$6, 4(%eax)
	jne	L949
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	*12(%eax)
L949:
	addl	$1, %ebx
	cmpl	23476(%esi), %ebx
	jl	L950
	movl	%esi, %edx
L948:
	movl	16076(%edx), %eax
	testl	%eax, %eax
	jle	L951
	movl	$0, -20(%ebp)
	movl	%edx, -24(%ebp)
	.p2align 4
	.p2align 3
L1037:
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %esi
	movl	16084(%eax), %eax
	movl	(%eax,%esi,4), %ebx
	testl	%ebx, %ebx
	je	L952
	movl	4(%ebx), %eax
	testl	%eax, %eax
	je	L953
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L954
	subl	$1, 188(%edx)
L954:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L953:
	movl	652(%ebx), %eax
	testl	%eax, %eax
	jle	L955
	movl	%ebx, -16(%ebp)
	xorl	%edi, %edi
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L960:
	movl	-16(%ebp), %eax
	movl	660(%eax), %ebx
	addl	%edi, %ebx
	leal	104(%ebx), %ecx
	call	__ZN18ImDrawListSplitter15ClearFreeMemoryEv
	movl	120(%ebx), %edx
	testl	%edx, %edx
	je	L956
	movl	_GImGui, %ecx
	testl	%ecx, %ecx
	je	L957
	subl	$1, 188(%ecx)
L957:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L956:
	movl	100(%ebx), %eax
	testl	%eax, %eax
	je	L958
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L959
	subl	$1, 188(%edx)
L959:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L958:
	movl	-16(%ebp), %eax
	addl	$1, %esi
	addl	$124, %edi
	cmpl	652(%eax), %esi
	jl	L960
	movl	%eax, %ebx
L955:
	movl	660(%ebx), %eax
	testl	%eax, %eax
	je	L961
	movl	_GImGui, %edx
	movl	$0, 652(%ebx)
	movl	$0, 656(%ebx)
	testl	%edx, %edx
	je	L962
	subl	$1, 188(%edx)
L962:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 660(%ebx)
L961:
	movl	688(%ebx), %eax
	testl	%eax, %eax
	je	L963
	movl	_GImGui, %edx
	movl	$0, 680(%ebx)
	movl	$0, 684(%ebx)
	testl	%edx, %edx
	je	L964
	subl	$1, 188(%edx)
L964:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 688(%ebx)
L963:
	movl	700(%ebx), %eax
	testl	%eax, %eax
	je	L965
	movl	_GImGui, %edx
	movl	$0, 692(%ebx)
	movl	$0, 696(%ebx)
	testl	%edx, %edx
	je	L966
	subl	$1, 188(%edx)
L966:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 700(%ebx)
L965:
	movl	712(%ebx), %eax
	testl	%eax, %eax
	je	L967
	movl	_GImGui, %edx
	movl	$0, 704(%ebx)
	movl	$0, 708(%ebx)
	testl	%edx, %edx
	je	L968
	subl	$1, 188(%edx)
L968:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 712(%ebx)
L967:
	movl	$0, 716(%ebx)
	movl	748(%ebx), %eax
	movl	$0, 720(%ebx)
	movl	$0, 732(%ebx)
	movl	$0, 736(%ebx)
	testl	%eax, %eax
	je	L969
	movl	_GImGui, %edx
	movl	$0, 740(%ebx)
	movl	$0, 744(%ebx)
	testl	%edx, %edx
	je	L970
	subl	$1, 188(%edx)
L970:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 748(%ebx)
L969:
	movl	760(%ebx), %eax
	testl	%eax, %eax
	je	L971
	movl	_GImGui, %edx
	movl	$0, 752(%ebx)
	movl	$0, 756(%ebx)
	testl	%edx, %edx
	je	L972
	subl	$1, 188(%edx)
L972:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 760(%ebx)
L971:
	movl	772(%ebx), %eax
	testl	%eax, %eax
	je	L973
	movl	_GImGui, %edx
	movl	$0, 764(%ebx)
	movl	$0, 768(%ebx)
	testl	%edx, %edx
	je	L974
	subl	$1, 188(%edx)
L974:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 772(%ebx)
L973:
	leal	800(%ebx), %ecx
	call	__ZN18ImDrawListSplitter15ClearFreeMemoryEv
	leal	800(%ebx), %ecx
	call	__ZN18ImDrawListSplitter15ClearFreeMemoryEv
	movl	816(%ebx), %eax
	movl	_GImGui, %esi
	testl	%eax, %eax
	je	L975
	testl	%esi, %esi
	je	L1937
	subl	$1, 188(%esi)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	772(%ebx), %eax
	testl	%eax, %eax
	je	L1938
L979:
	subl	$1, 188(%esi)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	760(%ebx), %eax
	testl	%eax, %eax
	je	L1939
L984:
	subl	$1, 188(%esi)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	748(%ebx), %eax
	testl	%eax, %eax
	je	L1940
L989:
	subl	$1, 188(%esi)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	712(%ebx), %eax
	testl	%eax, %eax
	je	L1941
L991:
	subl	$1, 188(%esi)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	700(%ebx), %eax
	testl	%eax, %eax
	je	L1942
L997:
	subl	$1, 188(%esi)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	688(%ebx), %eax
	testl	%eax, %eax
	je	L1943
L1002:
	subl	$1, 188(%esi)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	660(%ebx), %eax
	testl	%eax, %eax
	je	L1944
L1007:
	subl	$1, 188(%esi)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	648(%ebx), %eax
	testl	%eax, %eax
	je	L1945
L1012:
	subl	$1, 188(%esi)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	500(%ebx), %eax
	testl	%eax, %eax
	je	L1946
L1019:
	subl	$1, 188(%esi)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	488(%ebx), %eax
	testl	%eax, %eax
	je	L1860
L1022:
	subl	$1, 188(%esi)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	448(%ebx), %eax
	testl	%eax, %eax
	je	L1925
L1027:
	subl	$1, 188(%esi)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1925:
	movl	292(%ebx), %eax
	testl	%eax, %eax
	je	L1033
L1032:
	subl	$1, 188(%esi)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1033:
	subl	$1, 188(%esi)
L1035:
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L952:
	movl	-24(%ebp), %esi
	addl	$1, -20(%ebp)
	movl	-20(%ebp), %eax
	cmpl	16076(%esi), %eax
	jl	L1037
	movl	%esi, %edx
L951:
	movl	16084(%edx), %eax
	testl	%eax, %eax
	je	L1038
	movl	_GImGui, %ecx
	movl	$0, 16076(%edx)
	movl	$0, 16080(%edx)
	testl	%ecx, %ecx
	je	L1039
	subl	$1, 188(%ecx)
L1039:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 16084(%edx)
L1038:
	movl	16096(%edx), %eax
	testl	%eax, %eax
	je	L1040
	movl	_GImGui, %ecx
	movl	$0, 16088(%edx)
	movl	$0, 16092(%edx)
	testl	%ecx, %ecx
	je	L1041
	subl	$1, 188(%ecx)
L1041:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 16096(%edx)
L1040:
	movl	16108(%edx), %eax
	testl	%eax, %eax
	je	L1042
	movl	_GImGui, %ecx
	movl	$0, 16100(%edx)
	movl	$0, 16104(%edx)
	testl	%ecx, %ecx
	je	L1043
	subl	$1, 188(%ecx)
L1043:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 16108(%edx)
L1042:
	movl	$0, 16148(%edx)
	movl	16120(%edx), %eax
	testl	%eax, %eax
	je	L1044
	movl	_GImGui, %ecx
	movl	$0, 16112(%edx)
	movl	$0, 16116(%edx)
	testl	%ecx, %ecx
	je	L1045
	subl	$1, 188(%ecx)
L1045:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 16120(%edx)
L1044:
	movl	16132(%edx), %eax
	testl	%eax, %eax
	je	L1046
	movl	_GImGui, %ecx
	movl	$0, 16124(%edx)
	movl	$0, 16128(%edx)
	testl	%ecx, %ecx
	je	L1047
	subl	$1, 188(%ecx)
L1047:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 16132(%edx)
L1046:
	leal	17964(%edx), %eax
	movl	%edx, -16(%ebp)
	movl	$0, 18680(%edx)
	movl	$0, 16152(%edx)
	movl	$0, 16156(%edx)
	movl	$0, 16272(%edx)
	movl	$0, 16252(%edx)
	movl	$0, 16160(%edx)
	movl	$280, 8(%esp)
	movl	$255, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-16(%ebp), %edx
	movl	18252(%edx), %eax
	testl	%eax, %eax
	je	L1048
	movl	_GImGui, %ecx
	movl	$0, 18244(%edx)
	movl	$0, 18248(%edx)
	testl	%ecx, %ecx
	je	L1049
	subl	$1, 188(%ecx)
L1049:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 18252(%edx)
L1048:
	movl	18264(%edx), %eax
	testl	%eax, %eax
	je	L1050
	movl	_GImGui, %ecx
	movl	$0, 18256(%edx)
	movl	$0, 18260(%edx)
	testl	%ecx, %ecx
	je	L1051
	subl	$1, 188(%ecx)
L1051:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 18264(%edx)
L1050:
	movl	18516(%edx), %eax
	testl	%eax, %eax
	je	L1052
	movl	_GImGui, %ecx
	movl	$0, 18508(%edx)
	movl	$0, 18512(%edx)
	testl	%ecx, %ecx
	je	L1053
	subl	$1, 188(%ecx)
L1053:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 18516(%edx)
L1052:
	movl	18528(%edx), %eax
	testl	%eax, %eax
	je	L1054
	movl	_GImGui, %ecx
	movl	$0, 18520(%edx)
	movl	$0, 18524(%edx)
	testl	%ecx, %ecx
	je	L1055
	subl	$1, 188(%ecx)
L1055:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 18528(%edx)
L1054:
	movl	18540(%edx), %eax
	testl	%eax, %eax
	je	L1056
	movl	_GImGui, %ecx
	movl	$0, 18532(%edx)
	movl	$0, 18536(%edx)
	testl	%ecx, %ecx
	je	L1057
	subl	$1, 188(%ecx)
L1057:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 18540(%edx)
L1056:
	movl	18588(%edx), %eax
	testl	%eax, %eax
	je	L1058
	movl	_GImGui, %ecx
	movl	$0, 18580(%edx)
	movl	$0, 18584(%edx)
	testl	%ecx, %ecx
	je	L1059
	subl	$1, 188(%ecx)
L1059:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 18588(%edx)
L1058:
	movl	18600(%edx), %eax
	testl	%eax, %eax
	je	L1060
	movl	_GImGui, %ecx
	movl	$0, 18592(%edx)
	movl	$0, 18596(%edx)
	testl	%ecx, %ecx
	je	L1061
	subl	$1, 188(%ecx)
L1061:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 18600(%edx)
L1060:
	movl	$0, 18632(%edx)
	movl	18608(%edx), %edi
	movl	$0, 18624(%edx)
	movl	$0, 18628(%edx)
	testl	%edi, %edi
	jle	L1062
	movl	%edx, -16(%ebp)
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L1159:
	movl	-16(%ebp), %eax
	movl	18616(%eax), %eax
	movl	(%eax,%esi,4), %ebx
	testl	%ebx, %ebx
	je	L1063
	movl	120(%ebx), %edi
	testl	%edi, %edi
	je	L1064
	movl	8(%edi), %edx
	testl	%edx, %edx
	je	L1065
	movl	$0, (%edi)
	movl	_GImGui, %ecx
	movl	$0, 4(%edi)
	testl	%ecx, %ecx
	je	L1066
	subl	$1, 188(%ecx)
L1066:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 8(%edi)
L1065:
	movl	20(%edi), %edx
	testl	%edx, %edx
	je	L1067
	movl	_GImGui, %ecx
	movl	$0, 12(%edi)
	movl	$0, 16(%edi)
	testl	%ecx, %ecx
	je	L1068
	subl	$1, 188(%ecx)
L1068:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 20(%edi)
L1067:
	movl	32(%edi), %edx
	testl	%edx, %edx
	je	L1069
	movl	_GImGui, %ecx
	movl	$0, 24(%edi)
	movl	$0, 28(%edi)
	testl	%ecx, %ecx
	je	L1070
	subl	$1, 188(%ecx)
L1070:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 32(%edi)
L1069:
	movl	68(%edi), %edx
	movl	$0, 36(%edi)
	movl	$0, 40(%edi)
	movl	$0, 52(%edi)
	movl	$0, 56(%edi)
	testl	%edx, %edx
	je	L1071
	movl	_GImGui, %ecx
	movl	$0, 60(%edi)
	movl	$0, 64(%edi)
	testl	%ecx, %ecx
	je	L1072
	subl	$1, 188(%ecx)
L1072:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 68(%edi)
L1071:
	movl	80(%edi), %edx
	testl	%edx, %edx
	je	L1073
	movl	_GImGui, %ecx
	movl	$0, 72(%edi)
	movl	$0, 76(%edi)
	testl	%ecx, %ecx
	je	L1074
	subl	$1, 188(%ecx)
L1074:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 80(%edi)
L1073:
	movl	92(%edi), %edx
	testl	%edx, %edx
	je	L1075
	movl	_GImGui, %ecx
	movl	$0, 84(%edi)
	movl	$0, 88(%edi)
	testl	%ecx, %ecx
	je	L1076
	subl	$1, 188(%ecx)
L1076:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 92(%edi)
L1075:
	leal	120(%edi), %ecx
	movl	%ecx, -20(%ebp)
	call	__ZN18ImDrawListSplitter15ClearFreeMemoryEv
	movl	-20(%ebp), %ecx
	call	__ZN18ImDrawListSplitter15ClearFreeMemoryEv
	movl	136(%edi), %ecx
	movl	_GImGui, %edx
	testl	%ecx, %ecx
	je	L1077
	testl	%edx, %edx
	je	L1947
	subl	$1, 188(%edx)
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, -20(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	92(%edi), %ecx
	movl	-20(%ebp), %edx
	testl	%ecx, %ecx
	je	L1948
L1081:
	subl	$1, 188(%edx)
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, -20(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	80(%edi), %ecx
	movl	-20(%ebp), %edx
	testl	%ecx, %ecx
	je	L1949
L1086:
	subl	$1, 188(%edx)
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, -20(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	68(%edi), %ecx
	movl	-20(%ebp), %edx
	testl	%ecx, %ecx
	je	L1950
L1091:
	subl	$1, 188(%edx)
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, -20(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	32(%edi), %ecx
	movl	-20(%ebp), %edx
	testl	%ecx, %ecx
	je	L1870
L1093:
	subl	$1, 188(%edx)
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, -20(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	20(%edi), %ecx
	movl	-20(%ebp), %edx
	testl	%ecx, %ecx
	je	L1872
L1099:
	subl	$1, 188(%edx)
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, -20(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	8(%edi), %ecx
	movl	-20(%ebp), %edx
	testl	%ecx, %ecx
	je	L1105
L1104:
	subl	$1, 188(%edx)
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edx, -20(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-20(%ebp), %edx
L1105:
	subl	$1, 188(%edx)
L1107:
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1064:
	movl	124(%ebx), %edi
	movl	_GImGui, %edx
	testl	%edi, %edi
	je	L1110
	movl	8(%edi), %edx
	testl	%edx, %edx
	je	L1111
	movl	$0, (%edi)
	movl	_GImGui, %ecx
	movl	$0, 4(%edi)
	testl	%ecx, %ecx
	je	L1112
	subl	$1, 188(%ecx)
L1112:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 8(%edi)
L1111:
	movl	20(%edi), %edx
	testl	%edx, %edx
	je	L1113
	movl	_GImGui, %ecx
	movl	$0, 12(%edi)
	movl	$0, 16(%edi)
	testl	%ecx, %ecx
	je	L1114
	subl	$1, 188(%ecx)
L1114:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 20(%edi)
L1113:
	movl	32(%edi), %edx
	testl	%edx, %edx
	je	L1115
	movl	_GImGui, %ecx
	movl	$0, 24(%edi)
	movl	$0, 28(%edi)
	testl	%ecx, %ecx
	je	L1116
	subl	$1, 188(%ecx)
L1116:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 32(%edi)
L1115:
	movl	68(%edi), %edx
	movl	$0, 36(%edi)
	movl	$0, 40(%edi)
	movl	$0, 52(%edi)
	movl	$0, 56(%edi)
	testl	%edx, %edx
	je	L1117
	movl	_GImGui, %ecx
	movl	$0, 60(%edi)
	movl	$0, 64(%edi)
	testl	%ecx, %ecx
	je	L1118
	subl	$1, 188(%ecx)
L1118:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 68(%edi)
L1117:
	movl	80(%edi), %edx
	testl	%edx, %edx
	je	L1119
	movl	_GImGui, %ecx
	movl	$0, 72(%edi)
	movl	$0, 76(%edi)
	testl	%ecx, %ecx
	je	L1120
	subl	$1, 188(%ecx)
L1120:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 80(%edi)
L1119:
	movl	92(%edi), %edx
	testl	%edx, %edx
	je	L1121
	movl	_GImGui, %ecx
	movl	$0, 84(%edi)
	movl	$0, 88(%edi)
	testl	%ecx, %ecx
	je	L1122
	subl	$1, 188(%ecx)
L1122:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 92(%edi)
L1121:
	leal	120(%edi), %ecx
	movl	%ecx, -20(%ebp)
	call	__ZN18ImDrawListSplitter15ClearFreeMemoryEv
	movl	-20(%ebp), %ecx
	call	__ZN18ImDrawListSplitter15ClearFreeMemoryEv
	movl	136(%edi), %ecx
	movl	_GImGui, %edx
	testl	%ecx, %ecx
	je	L1123
	testl	%edx, %edx
	je	L1951
	subl	$1, 188(%edx)
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, -20(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	92(%edi), %ecx
	movl	-20(%ebp), %edx
	testl	%ecx, %ecx
	je	L1952
L1127:
	subl	$1, 188(%edx)
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, -20(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	80(%edi), %ecx
	movl	-20(%ebp), %edx
	testl	%ecx, %ecx
	je	L1953
L1132:
	subl	$1, 188(%edx)
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, -20(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	68(%edi), %ecx
	movl	-20(%ebp), %edx
	testl	%ecx, %ecx
	je	L1954
L1137:
	subl	$1, 188(%edx)
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, -20(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	32(%edi), %ecx
	movl	-20(%ebp), %edx
	testl	%ecx, %ecx
	je	L1880
L1139:
	subl	$1, 188(%edx)
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, -20(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	20(%edi), %ecx
	movl	-20(%ebp), %edx
	testl	%ecx, %ecx
	je	L1882
L1145:
	subl	$1, 188(%edx)
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, -20(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	8(%edi), %ecx
	movl	-20(%ebp), %edx
	testl	%ecx, %ecx
	je	L1151
L1150:
	subl	$1, 188(%edx)
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edx, -20(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-20(%ebp), %edx
L1151:
	subl	$1, 188(%edx)
L1153:
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	movl	%edx, -20(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-20(%ebp), %edx
L1110:
	leal	188(%ebx), %eax
	leal	164(%ebx), %edi
L1157:
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	je	L1155
	testl	%edx, %edx
	je	L1156
	subl	$1, 188(%edx)
L1156:
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
L1155:
	subl	$12, %eax
	cmpl	%eax, %edi
	jne	L1157
	testl	%edx, %edx
	je	L1158
	subl	$1, 188(%edx)
L1158:
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1063:
	movl	-16(%ebp), %eax
	addl	$1, %esi
	cmpl	18608(%eax), %esi
	jl	L1159
	movl	%eax, %edx
L1062:
	movl	18616(%edx), %eax
	testl	%eax, %eax
	je	L1160
	movl	_GImGui, %ecx
	movl	$0, 18608(%edx)
	movl	$0, 18612(%edx)
	testl	%ecx, %ecx
	je	L1161
	subl	$1, 188(%ecx)
L1161:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 18616(%edx)
L1160:
	movl	19320(%edx), %esi
	testl	%esi, %esi
	jle	L1162
	xorl	%ebx, %ebx
	movl	%edx, %edi
	.p2align 4
	.p2align 3
L1168:
	movl	19328(%edi), %eax
	movl	4(%eax,%ebx,8), %eax
	cmpl	$-1, %eax
	je	L1163
	leal	(%eax,%eax,8), %esi
	sall	$4, %esi
	addl	19316(%edi), %esi
	movl	140(%esi), %eax
	testl	%eax, %eax
	je	L1164
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L1165
	subl	$1, 188(%edx)
L1165:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1164:
	movl	8(%esi), %eax
	testl	%eax, %eax
	je	L1163
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L1167
	subl	$1, 188(%edx)
L1167:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1163:
	addl	$1, %ebx
	cmpl	19320(%edi), %ebx
	jl	L1168
	movl	%edi, %edx
L1162:
	movl	19328(%edx), %eax
	testl	%eax, %eax
	je	L1169
	movl	_GImGui, %ecx
	movl	$0, 19320(%edx)
	movl	$0, 19324(%edx)
	testl	%ecx, %ecx
	je	L1170
	subl	$1, 188(%ecx)
L1170:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 19328(%edx)
L1169:
	movl	19316(%edx), %eax
	testl	%eax, %eax
	je	L1171
	movl	_GImGui, %ecx
	movl	$0, 19308(%edx)
	movl	$0, 19312(%edx)
	testl	%ecx, %ecx
	je	L1172
	subl	$1, 188(%ecx)
L1172:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 19316(%edx)
L1171:
	movl	$0, 19332(%edx)
	movl	19348(%edx), %eax
	movl	$0, 19336(%edx)
	testl	%eax, %eax
	je	L1173
	movl	_GImGui, %ecx
	movl	$0, 19340(%edx)
	movl	$0, 19344(%edx)
	testl	%ecx, %ecx
	je	L1174
	subl	$1, 188(%ecx)
L1174:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 19348(%edx)
L1173:
	movl	19360(%edx), %eax
	testl	%eax, %eax
	je	L1175
	movl	_GImGui, %ecx
	movl	$0, 19352(%edx)
	movl	$0, 19356(%edx)
	testl	%ecx, %ecx
	je	L1176
	subl	$1, 188(%ecx)
L1176:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 19360(%edx)
L1175:
	movl	19216(%edx), %ebx
	testl	%ebx, %ebx
	jle	L1177
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	movl	%edx, %edi
	.p2align 4
	.p2align 3
L1180:
	movl	19224(%edi), %eax
	movl	24(%eax,%esi), %eax
	testl	%eax, %eax
	je	L1178
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L1179
	subl	$1, 188(%edx)
L1179:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1178:
	addl	$1, %ebx
	addl	$28, %esi
	cmpl	19216(%edi), %ebx
	jl	L1180
	movl	%edi, %edx
L1177:
	movl	19224(%edx), %eax
	testl	%eax, %eax
	je	L1181
	movl	_GImGui, %ecx
	movl	$0, 19216(%edx)
	movl	$0, 19220(%edx)
	testl	%ecx, %ecx
	je	L1182
	subl	$1, 188(%ecx)
L1182:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 19224(%edx)
L1181:
	movl	19260(%edx), %ecx
	testl	%ecx, %ecx
	jle	L1183
	xorl	%esi, %esi
	movl	%edx, %edi
	.p2align 4
	.p2align 3
L1195:
	movl	19268(%edi), %eax
	movl	4(%eax,%esi,8), %eax
	cmpl	$-1, %eax
	je	L1184
	imull	$488, %eax, %ebx
	addl	19256(%edi), %ebx
	movl	8(%ebx), %edx
	testl	%edx, %edx
	je	L1185
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1186
	subl	$1, 188(%eax)
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	movl	%eax, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	404(%ebx), %edx
	movl	-16(%ebp), %eax
	testl	%edx, %edx
	je	L1955
L1187:
	subl	$1, 188(%eax)
L1190:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1189:
	movl	380(%ebx), %eax
	testl	%eax, %eax
	je	L1191
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L1192
L1234:
	subl	$1, 188(%edx)
L1192:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1191:
	movl	348(%ebx), %eax
	testl	%eax, %eax
	je	L1184
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L1194
	subl	$1, 188(%edx)
L1194:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1184:
	addl	$1, %esi
	cmpl	19260(%edi), %esi
	jl	L1195
	movl	%edi, %edx
L1183:
	movl	19268(%edx), %eax
	testl	%eax, %eax
	je	L1196
	movl	_GImGui, %ecx
	movl	$0, 19260(%edx)
	movl	$0, 19264(%edx)
	testl	%ecx, %ecx
	je	L1197
	subl	$1, 188(%ecx)
L1197:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 19268(%edx)
L1196:
	movl	19256(%edx), %eax
	testl	%eax, %eax
	je	L1198
	movl	_GImGui, %ecx
	movl	$0, 19248(%edx)
	movl	$0, 19252(%edx)
	testl	%ecx, %ecx
	je	L1199
	subl	$1, 188(%ecx)
L1199:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 19256(%edx)
L1198:
	movl	$0, 19272(%edx)
	movl	19236(%edx), %eax
	movl	$0, 19276(%edx)
	testl	%eax, %eax
	jle	L1200
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	movl	%edx, %edi
	.p2align 4
	.p2align 3
L1203:
	movl	19244(%edi), %eax
	addl	%esi, %eax
	leal	16(%eax), %ecx
	movl	%eax, -16(%ebp)
	call	__ZN18ImDrawListSplitter15ClearFreeMemoryEv
	movl	-16(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L1201
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L1202
	subl	$1, 188(%edx)
L1202:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1201:
	addl	$1, %ebx
	addl	$104, %esi
	cmpl	19236(%edi), %ebx
	jl	L1203
	movl	%edi, %edx
L1200:
	movl	19244(%edx), %eax
	testl	%eax, %eax
	je	L1204
	movl	_GImGui, %ecx
	movl	$0, 19236(%edx)
	movl	$0, 19240(%edx)
	testl	%ecx, %ecx
	je	L1205
	subl	$1, 188(%ecx)
L1205:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 19244(%edx)
L1204:
	movl	19300(%edx), %eax
	testl	%eax, %eax
	je	L1206
	movl	_GImGui, %ecx
	movl	$0, 19292(%edx)
	movl	$0, 19296(%edx)
	testl	%ecx, %ecx
	je	L1207
	subl	$1, 188(%ecx)
L1207:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 19300(%edx)
L1206:
	movl	23320(%edx), %eax
	testl	%eax, %eax
	je	L1208
	movl	_GImGui, %ecx
	movl	$0, 23312(%edx)
	movl	$0, 23316(%edx)
	testl	%ecx, %ecx
	je	L1209
	subl	$1, 188(%ecx)
L1209:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 23320(%edx)
L1208:
	movl	23332(%edx), %eax
	testl	%eax, %eax
	je	L1210
	movl	_GImGui, %ecx
	movl	$0, 23324(%edx)
	movl	$0, 23328(%edx)
	testl	%ecx, %ecx
	je	L1211
	subl	$1, 188(%ecx)
L1211:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 23332(%edx)
L1210:
	movl	19412(%edx), %eax
	testl	%eax, %eax
	je	L1212
	movl	_GImGui, %ecx
	movl	$0, 19404(%edx)
	movl	$0, 19408(%edx)
	testl	%ecx, %ecx
	je	L1213
	subl	$1, 188(%ecx)
L1213:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 19412(%edx)
L1212:
	movl	19424(%edx), %eax
	testl	%eax, %eax
	je	L1214
	movl	_GImGui, %ecx
	movl	$0, 19416(%edx)
	movl	$0, 19420(%edx)
	testl	%ecx, %ecx
	je	L1215
	subl	$1, 188(%ecx)
L1215:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 19424(%edx)
L1214:
	movl	19436(%edx), %eax
	testl	%eax, %eax
	je	L1216
	movl	_GImGui, %ecx
	movl	$0, 19428(%edx)
	movl	$0, 19432(%edx)
	testl	%ecx, %ecx
	je	L1217
	subl	$1, 188(%ecx)
L1217:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 19436(%edx)
L1216:
	movl	23460(%edx), %eax
	testl	%eax, %eax
	je	L1218
	movl	_GImGui, %ecx
	movl	$0, 23452(%edx)
	movl	$0, 23456(%edx)
	testl	%ecx, %ecx
	je	L1219
	subl	$1, 188(%ecx)
L1219:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 23460(%edx)
L1218:
	movl	23448(%edx), %eax
	testl	%eax, %eax
	je	L1220
	movl	_GImGui, %ecx
	movl	$0, 23440(%edx)
	movl	$0, 23444(%edx)
	testl	%ecx, %ecx
	je	L1221
	subl	$1, 188(%ecx)
L1221:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 23448(%edx)
L1220:
	movl	23532(%edx), %ebx
	testl	%ebx, %ebx
	je	L1222
	movl	%edx, -16(%ebp)
	movl	$1, (%esp)
	call	*__imp____acrt_iob_func
	movl	-16(%ebp), %edx
	cmpl	%eax, %ebx
	je	L1223
	movl	23532(%edx), %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	-16(%ebp), %edx
L1223:
	movl	$0, 23532(%edx)
L1222:
	movl	23544(%edx), %eax
	testl	%eax, %eax
	je	L1224
	movl	_GImGui, %ecx
	movl	$0, 23536(%edx)
	movl	$0, 23540(%edx)
	testl	%ecx, %ecx
	je	L1225
	subl	$1, 188(%ecx)
L1225:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 23544(%edx)
L1224:
	movl	23588(%edx), %eax
	testl	%eax, %eax
	je	L1226
	movl	_GImGui, %ecx
	movl	$0, 23580(%edx)
	movl	$0, 23584(%edx)
	testl	%ecx, %ecx
	je	L1227
	subl	$1, 188(%ecx)
L1227:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 23588(%edx)
L1226:
	movl	23600(%edx), %eax
	testl	%eax, %eax
	je	L1228
	movl	_GImGui, %ecx
	movl	$0, 23592(%edx)
	movl	$0, 23596(%edx)
	testl	%ecx, %ecx
	je	L1229
	subl	$1, 188(%ecx)
L1229:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	movl	$0, 23600(%edx)
L1228:
	movl	$0, 23604(%edx)
	movb	$0, (%edx)
L933:
	movl	%edx, %ecx
	movl	%edx, -16(%ebp)
	movl	$0, _GImGui
	call	__ZN12ImGuiContextD1Ev
	movl	_GImGui, %eax
	movl	-16(%ebp), %edx
	testl	%eax, %eax
	je	L1230
	subl	$1, 188(%eax)
L1230:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-12(%ebp), %ebx
	.cfi_restore 3
	movl	-8(%ebp), %esi
	.cfi_restore 6
	movl	$0, __ZL10g_ImGui_IO.lto_priv.0
L882:
	movl	__ZL11sdl_context.lto_priv.0, %eax
	testl	%eax, %eax
	je	L1231
	movl	%eax, (%esp)
	call	_SDL_GL_DeleteContext
L1231:
	movl	__ZL10sdl_window.lto_priv.0, %eax
	movl	$0, __ZL11sdl_context.lto_priv.0
	testl	%eax, %eax
	je	L1232
	movl	%eax, (%esp)
	call	_SDL_DestroyWindow
L1232:
	movl	$0, __ZL10sdl_window.lto_priv.0
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
L1933:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%eax, (%esp)
	call	*_imgl3wProcs+68
	subl	$4, %esp
	movl	$0, 40(%edi)
	jmp	L887
	.p2align 4,,10
	.p2align 3
L975:
	movl	772(%ebx), %eax
	testl	%eax, %eax
	je	L981
	testl	%esi, %esi
	jne	L979
L977:
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	760(%ebx), %eax
	testl	%eax, %eax
	je	L1956
L982:
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	748(%ebx), %eax
	testl	%eax, %eax
	je	L1957
L987:
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	712(%ebx), %eax
	testl	%eax, %eax
	je	L1958
L993:
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	700(%ebx), %eax
	testl	%eax, %eax
	je	L1959
L999:
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	688(%ebx), %eax
	testl	%eax, %eax
	je	L1960
L1004:
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	660(%ebx), %eax
	testl	%eax, %eax
	je	L1961
L1009:
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	648(%ebx), %eax
	testl	%eax, %eax
	je	L1962
L1014:
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	500(%ebx), %eax
	testl	%eax, %eax
	je	L1963
L1017:
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	488(%ebx), %eax
	testl	%eax, %eax
	je	L1859
L1024:
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	448(%ebx), %eax
	testl	%eax, %eax
	je	L1924
L1029:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1924:
	movl	292(%ebx), %eax
	testl	%eax, %eax
	je	L1035
L1034:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	jmp	L1035
	.p2align 4,,10
	.p2align 3
L981:
	movl	760(%ebx), %eax
	testl	%eax, %eax
	je	L986
	testl	%esi, %esi
	jne	L984
	jmp	L982
	.p2align 4,,10
	.p2align 3
L986:
	movl	748(%ebx), %eax
	testl	%eax, %eax
	je	L994
	testl	%esi, %esi
	jne	L989
	jmp	L987
	.p2align 4,,10
	.p2align 3
L1123:
	movl	92(%edi), %ecx
	testl	%ecx, %ecx
	je	L1129
	testl	%edx, %edx
	jne	L1127
L1125:
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, -20(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	80(%edi), %ecx
	movl	-20(%ebp), %edx
	testl	%ecx, %ecx
	je	L1964
L1130:
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, -20(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	68(%edi), %ecx
	movl	-20(%ebp), %edx
	testl	%ecx, %ecx
	je	L1965
L1135:
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, -20(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	32(%edi), %ecx
	movl	-20(%ebp), %edx
	testl	%ecx, %ecx
	je	L1879
L1141:
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, -20(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	20(%edi), %ecx
	movl	-20(%ebp), %edx
	testl	%ecx, %ecx
	je	L1881
L1147:
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, -20(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	8(%edi), %ecx
	movl	-20(%ebp), %edx
	testl	%ecx, %ecx
	je	L1153
L1152:
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edx, -20(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-20(%ebp), %edx
	jmp	L1153
	.p2align 4,,10
	.p2align 3
L1077:
	movl	92(%edi), %ecx
	testl	%ecx, %ecx
	je	L1083
	testl	%edx, %edx
	jne	L1081
L1079:
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, -20(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	80(%edi), %ecx
	testl	%ecx, %ecx
	je	L1966
L1084:
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	68(%edi), %ecx
	testl	%ecx, %ecx
	je	L1967
L1089:
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	32(%edi), %ecx
	testl	%ecx, %ecx
	je	L1869
L1095:
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	20(%edi), %ecx
	testl	%ecx, %ecx
	je	L1926
L1101:
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1926:
	movl	8(%edi), %ecx
	testl	%ecx, %ecx
	je	L1107
L1106:
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	jmp	L1107
L994:
	movl	712(%ebx), %eax
	testl	%eax, %eax
	je	L992
	testl	%esi, %esi
	jne	L991
	jmp	L993
	.p2align 4,,10
	.p2align 3
L1938:
	movl	760(%ebx), %eax
	testl	%eax, %eax
	jne	L984
	movl	748(%ebx), %eax
	testl	%eax, %eax
	jne	L989
	movl	712(%ebx), %eax
	testl	%eax, %eax
	jne	L991
L992:
	movl	700(%ebx), %eax
	testl	%eax, %eax
	je	L998
	testl	%esi, %esi
	jne	L997
	jmp	L999
	.p2align 4,,10
	.p2align 3
L1939:
	movl	748(%ebx), %eax
	testl	%eax, %eax
	jne	L989
	movl	712(%ebx), %eax
	testl	%eax, %eax
	jne	L991
	movl	700(%ebx), %eax
	testl	%eax, %eax
	jne	L997
L998:
	movl	688(%ebx), %eax
	testl	%eax, %eax
	je	L1003
	testl	%esi, %esi
	jne	L1002
	jmp	L1004
	.p2align 4,,10
	.p2align 3
L1940:
	movl	712(%ebx), %eax
	testl	%eax, %eax
	jne	L991
	movl	700(%ebx), %eax
	testl	%eax, %eax
	jne	L997
	movl	688(%ebx), %eax
	testl	%eax, %eax
	jne	L1002
L1003:
	movl	660(%ebx), %eax
	testl	%eax, %eax
	je	L1008
	testl	%esi, %esi
	jne	L1007
	jmp	L1009
	.p2align 4,,10
	.p2align 3
L1941:
	movl	700(%ebx), %eax
	testl	%eax, %eax
	jne	L997
	movl	688(%ebx), %eax
	testl	%eax, %eax
	jne	L1002
	movl	660(%ebx), %eax
	testl	%eax, %eax
	jne	L1007
L1008:
	movl	648(%ebx), %eax
	testl	%eax, %eax
	je	L1013
	testl	%esi, %esi
	jne	L1012
	jmp	L1014
	.p2align 4,,10
	.p2align 3
L1942:
	movl	688(%ebx), %eax
	testl	%eax, %eax
	jne	L1002
	movl	660(%ebx), %eax
	testl	%eax, %eax
	jne	L1007
	movl	648(%ebx), %eax
	testl	%eax, %eax
	jne	L1012
L1013:
	movl	500(%ebx), %eax
	testl	%eax, %eax
	je	L1018
	testl	%esi, %esi
	jne	L1019
	jmp	L1017
	.p2align 4,,10
	.p2align 3
L1943:
	movl	660(%ebx), %eax
	testl	%eax, %eax
	jne	L1007
	movl	648(%ebx), %eax
	testl	%eax, %eax
	jne	L1012
	movl	500(%ebx), %eax
	testl	%eax, %eax
	jne	L1019
L1018:
	movl	488(%ebx), %eax
	testl	%eax, %eax
	je	L1023
	testl	%esi, %esi
	jne	L1022
	jmp	L1024
	.p2align 4,,10
	.p2align 3
L1944:
	movl	648(%ebx), %eax
	testl	%eax, %eax
	jne	L1012
	movl	500(%ebx), %eax
	testl	%eax, %eax
	jne	L1019
	movl	488(%ebx), %eax
	testl	%eax, %eax
	jne	L1022
L1023:
	movl	448(%ebx), %eax
	testl	%eax, %eax
	je	L1028
	testl	%esi, %esi
	jne	L1027
	jmp	L1029
	.p2align 4,,10
	.p2align 3
L1945:
	movl	500(%ebx), %eax
	testl	%eax, %eax
	jne	L1019
	movl	488(%ebx), %eax
	testl	%eax, %eax
	jne	L1022
	movl	448(%ebx), %eax
	testl	%eax, %eax
	jne	L1027
L1028:
	movl	292(%ebx), %eax
	testl	%eax, %eax
	je	L1036
	testl	%esi, %esi
	jne	L1032
	jmp	L1034
	.p2align 4,,10
	.p2align 3
L1036:
	testl	%esi, %esi
	jne	L1033
	jmp	L1035
	.p2align 4,,10
	.p2align 3
L1185:
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	404(%ebx), %edx
	testl	%edx, %edx
	je	L1189
	movl	_GImGui, %eax
	testl	%eax, %eax
	jne	L1187
	jmp	L1190
	.p2align 4,,10
	.p2align 3
L1129:
	movl	80(%edi), %ecx
	testl	%ecx, %ecx
	je	L1134
	testl	%edx, %edx
	jne	L1132
	jmp	L1130
	.p2align 4,,10
	.p2align 3
L1134:
	movl	68(%edi), %ecx
	testl	%ecx, %ecx
	je	L1142
	testl	%edx, %edx
	jne	L1137
	jmp	L1135
	.p2align 4,,10
	.p2align 3
L1142:
	movl	32(%edi), %ecx
	testl	%ecx, %ecx
	je	L1140
	testl	%edx, %edx
	jne	L1139
	jmp	L1141
	.p2align 4,,10
	.p2align 3
L1952:
	movl	80(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1132
	movl	68(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1137
	movl	32(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1139
L1140:
	movl	20(%edi), %ecx
	testl	%ecx, %ecx
	je	L1146
	testl	%edx, %edx
	jne	L1145
	jmp	L1147
	.p2align 4,,10
	.p2align 3
L1953:
	movl	68(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1137
	movl	32(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1139
	movl	20(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1145
L1146:
	movl	8(%edi), %ecx
	testl	%ecx, %ecx
	je	L1154
	testl	%edx, %edx
	jne	L1150
	jmp	L1152
	.p2align 4,,10
	.p2align 3
L1154:
	testl	%edx, %edx
	jne	L1151
	jmp	L1153
L1083:
	movl	80(%edi), %ecx
	testl	%ecx, %ecx
	je	L1088
	testl	%edx, %edx
	jne	L1086
	jmp	L1084
	.p2align 4,,10
	.p2align 3
L1088:
	movl	68(%edi), %ecx
	testl	%ecx, %ecx
	je	L1096
	testl	%edx, %edx
	jne	L1091
	jmp	L1089
	.p2align 4,,10
	.p2align 3
L1096:
	movl	32(%edi), %ecx
	testl	%ecx, %ecx
	je	L1094
	testl	%edx, %edx
	jne	L1093
	jmp	L1095
	.p2align 4,,10
	.p2align 3
L1948:
	movl	80(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1086
	movl	68(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1091
	movl	32(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1093
L1094:
	movl	20(%edi), %ecx
	testl	%ecx, %ecx
	je	L1100
	testl	%edx, %edx
	jne	L1099
	jmp	L1101
	.p2align 4,,10
	.p2align 3
L1949:
	movl	68(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1091
	movl	32(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1093
	movl	20(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1099
L1100:
	movl	8(%edi), %ecx
	testl	%ecx, %ecx
	je	L1108
	testl	%edx, %edx
	jne	L1104
	jmp	L1106
	.p2align 4,,10
	.p2align 3
L1108:
	testl	%edx, %edx
	jne	L1105
	jmp	L1107
L1955:
	movl	380(%ebx), %eax
	movl	_GImGui, %edx
	testl	%eax, %eax
	jne	L1234
	jmp	L1191
L1186:
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	404(%ebx), %edx
	testl	%edx, %edx
	jne	L1190
	movl	380(%ebx), %eax
	testl	%eax, %eax
	jne	L1192
	jmp	L1191
L1946:
	movl	488(%ebx), %eax
	testl	%eax, %eax
	jne	L1022
L1860:
	movl	448(%ebx), %eax
	testl	%eax, %eax
	jne	L1027
	jmp	L1925
L1935:
	movb	$0, 16(%eax)
	movl	72(%edx), %ebx
	testl	%ebx, %ebx
	je	L897
	movl	84(%ebx), %eax
	testl	%eax, %eax
	jle	L898
	xorl	%esi, %esi
	xorl	%edi, %edi
	jmp	L901
	.p2align 5
	.p2align 4,,10
	.p2align 3
L899:
	addl	$1, %edi
	addl	$120, %esi
	cmpl	84(%ebx), %edi
	jge	L1968
L901:
	movl	92(%ebx), %eax
	addl	%esi, %eax
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	L899
	cmpb	$0, 8(%eax)
	je	L899
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L900
	subl	$1, 188(%eax)
L900:
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	92(%ebx), %eax
	movl	$0, (%eax,%esi)
	jmp	L899
L1934:
	testl	%edx, %edx
	jne	L891
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L893:
	call	__ZN5ImGui22DestroyPlatformWindowsEv
	movl	68, %eax
	ud2
	.p2align 4,,10
	.p2align 3
L1936:
	movl	32(%edx), %eax
	movl	%eax, -16(%ebp)
	testl	%eax, %eax
	je	L934
	movl	_GImGui, %ebx
	movl	$0x00000000, 23424(%ebx)
	movl	23432(%ebx), %ecx
	testl	%ecx, %ecx
	jns	L935
	addl	$1, 188(%ebx)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	movl	%edx, -20(%ebp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-20(%ebp), %edx
	movl	%eax, %esi
	movl	23436(%ebx), %eax
	testl	%eax, %eax
	je	L936
	movl	23428(%ebx), %ecx
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	%ecx, 8(%esp)
	call	_memcpy
	movl	23436(%ebx), %eax
	movl	-20(%ebp), %edx
	testl	%eax, %eax
	je	L937
	subl	$1, 188(%ebx)
L937:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -20(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-20(%ebp), %edx
L936:
	movl	%esi, 23436(%ebx)
	movl	$0, 23428(%ebx)
L938:
	movl	188(%ebx), %esi
	movl	%edx, -20(%ebp)
	leal	1(%esi), %eax
	movl	%eax, 188(%ebx)
	movl	$0, 4(%esp)
	movl	$8, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	23436(%ebx), %ecx
	movl	-20(%ebp), %edx
	movl	%eax, %edi
	testl	%ecx, %ecx
	je	L940
	movl	%esi, 188(%ebx)
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	23428(%ebx), %eax
	movl	-20(%ebp), %edx
	addl	%edi, %eax
L940:
	movl	%edi, 23436(%ebx)
	movl	$8, 23432(%ebx)
	jmp	L939
L1954:
	movl	32(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1139
L1880:
	movl	20(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1145
L1882:
	movl	8(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1150
	jmp	L1151
L1950:
	movl	32(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1093
L1870:
	movl	20(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1099
L1872:
	movl	8(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1104
	jmp	L1105
L1965:
	movl	32(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1141
L1879:
	movl	20(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1147
L1881:
	movl	8(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1152
	jmp	L1153
L1967:
	movl	32(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1095
L1869:
	movl	20(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1101
	jmp	L1926
L1937:
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	772(%ebx), %eax
	testl	%eax, %eax
	jne	L977
	movl	760(%ebx), %eax
	testl	%eax, %eax
	jne	L982
	movl	748(%ebx), %eax
	testl	%eax, %eax
	jne	L987
	movl	712(%ebx), %eax
	testl	%eax, %eax
	jne	L993
	jmp	L992
L1963:
	movl	488(%ebx), %eax
	testl	%eax, %eax
	jne	L1024
L1859:
	movl	448(%ebx), %eax
	testl	%eax, %eax
	jne	L1029
	jmp	L1924
L1968:
	movl	-16(%ebp), %edx
L898:
	movl	60(%ebx), %eax
	testl	%eax, %eax
	jle	L902
	movl	%edx, -16(%ebp)
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L904:
	movl	68(%ebx), %edx
	movl	(%edx,%eax,4), %esi
	movl	92(%ebx), %edx
	movl	52(%esi), %ecx
	cmpl	%edx, %ecx
	jb	L903
	imull	$120, 84(%ebx), %edi
	addl	%edi, %edx
	cmpl	%edx, %ecx
	jnb	L903
	movl	$0, 52(%esi)
	movl	68(%ebx), %edx
	xorl	%edi, %edi
	movl	(%edx,%eax,4), %edx
	movw	%di, 56(%edx)
L903:
	addl	$1, %eax
	cmpl	60(%ebx), %eax
	jl	L904
	movl	-16(%ebp), %edx
L902:
	movl	92(%ebx), %eax
	testl	%eax, %eax
	je	L905
	movl	_GImGui, %ecx
	movl	$0, 84(%ebx)
	movl	$0, 88(%ebx)
	testl	%ecx, %ecx
	je	L906
	subl	$1, 188(%ecx)
L906:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 92(%ebx)
	movl	-16(%ebp), %edx
L905:
	movl	80(%ebx), %eax
	testl	%eax, %eax
	je	L907
	movl	_GImGui, %ecx
	movl	$0, 72(%ebx)
	movl	$0, 76(%ebx)
	testl	%ecx, %ecx
	je	L908
	subl	$1, 188(%ecx)
L908:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 80(%ebx)
	movl	-16(%ebp), %edx
L907:
	movl	28(%ebx), %eax
	movl	$-1, %esi
	movl	%esi, 1128(%ebx)
	movl	%esi, 1132(%ebx)
	testl	%eax, %eax
	je	L909
	movl	_GImGui, %ecx
	testl	%ecx, %ecx
	je	L910
	subl	$1, 188(%ecx)
L910:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
L909:
	movl	32(%ebx), %eax
	testl	%eax, %eax
	je	L911
	movl	_GImGui, %ecx
	testl	%ecx, %ecx
	je	L912
	subl	$1, 188(%ecx)
L912:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
L911:
	movl	60(%ebx), %esi
	movl	$0, 28(%ebx)
	movl	$0, 32(%ebx)
	movb	$0, 25(%ebx)
	testl	%esi, %esi
	jle	L913
	movl	%edx, -16(%ebp)
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L916:
	movl	68(%ebx), %edx
	movl	(%edx,%esi,4), %edi
	testl	%edi, %edi
	je	L914
	movl	%edi, %ecx
	call	__ZN6ImFontD1Ev
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L915
	subl	$1, 188(%edx)
L915:
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L914:
	addl	$1, %esi
	cmpl	60(%ebx), %esi
	jl	L916
	movl	-16(%ebp), %edx
L913:
	movl	68(%ebx), %eax
	movl	_GImGui, %esi
	testl	%eax, %eax
	je	L917
	movl	$0, 60(%ebx)
	movl	$0, 64(%ebx)
	testl	%esi, %esi
	je	L918
	subl	$1, 188(%esi)
L918:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 68(%ebx)
	movl	-16(%ebp), %edx
L917:
	movl	92(%ebx), %eax
	movb	$0, 24(%ebx)
	testl	%eax, %eax
	je	L919
	movl	%edx, -16(%ebp)
	testl	%esi, %esi
	je	L1969
	subl	$1, 188(%esi)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	80(%ebx), %eax
	movl	-16(%ebp), %edx
	testl	%eax, %eax
	jne	L923
	movl	68(%ebx), %eax
	testl	%eax, %eax
	jne	L928
	jmp	L929
	.p2align 4,,10
	.p2align 3
L1947:
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, -20(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	92(%edi), %ecx
	movl	-20(%ebp), %edx
	testl	%ecx, %ecx
	jne	L1079
	movl	80(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1084
	movl	68(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1089
	movl	32(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1095
	jmp	L1094
	.p2align 4,,10
	.p2align 3
L1951:
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, -20(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	92(%edi), %ecx
	movl	-20(%ebp), %edx
	testl	%ecx, %ecx
	jne	L1125
	movl	80(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1130
	movl	68(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1135
	movl	32(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1141
	jmp	L1140
	.p2align 4,,10
	.p2align 3
L1961:
	movl	648(%ebx), %eax
	testl	%eax, %eax
	jne	L1014
	movl	500(%ebx), %eax
	testl	%eax, %eax
	jne	L1017
	movl	488(%ebx), %eax
	testl	%eax, %eax
	jne	L1024
	jmp	L1023
L1959:
	movl	688(%ebx), %eax
	testl	%eax, %eax
	jne	L1004
	movl	660(%ebx), %eax
	testl	%eax, %eax
	jne	L1009
	movl	648(%ebx), %eax
	testl	%eax, %eax
	jne	L1014
	jmp	L1013
L1958:
	movl	700(%ebx), %eax
	testl	%eax, %eax
	jne	L999
	movl	688(%ebx), %eax
	testl	%eax, %eax
	jne	L1004
	movl	660(%ebx), %eax
	testl	%eax, %eax
	jne	L1009
	jmp	L1008
L1960:
	movl	660(%ebx), %eax
	testl	%eax, %eax
	jne	L1009
	movl	648(%ebx), %eax
	testl	%eax, %eax
	jne	L1014
	movl	500(%ebx), %eax
	testl	%eax, %eax
	jne	L1017
	jmp	L1018
L1962:
	movl	500(%ebx), %eax
	testl	%eax, %eax
	jne	L1017
	movl	488(%ebx), %eax
	testl	%eax, %eax
	jne	L1024
	movl	448(%ebx), %eax
	testl	%eax, %eax
	jne	L1029
	jmp	L1028
L1957:
	movl	712(%ebx), %eax
	testl	%eax, %eax
	jne	L993
	movl	700(%ebx), %eax
	testl	%eax, %eax
	jne	L999
	movl	688(%ebx), %eax
	testl	%eax, %eax
	jne	L1004
	jmp	L1003
L1956:
	movl	748(%ebx), %eax
	testl	%eax, %eax
	jne	L987
	movl	712(%ebx), %eax
	testl	%eax, %eax
	jne	L993
	movl	700(%ebx), %eax
	testl	%eax, %eax
	jne	L999
	jmp	L998
L919:
	movl	80(%ebx), %eax
	testl	%eax, %eax
	je	L925
	testl	%esi, %esi
	je	L921
L923:
	subl	$1, 188(%esi)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	68(%ebx), %eax
	movl	-16(%ebp), %edx
	testl	%eax, %eax
	je	L929
L928:
	subl	$1, 188(%esi)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
L929:
	subl	$1, 188(%esi)
L927:
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	jmp	L897
L935:
	movl	$0, 23428(%ebx)
	je	L938
	movl	23436(%ebx), %eax
L939:
	movb	$0, (%eax)
	movl	23428(%ebx), %eax
	leal	1(%eax), %esi
	movl	23440(%ebx), %eax
	movl	%esi, 23428(%ebx)
	testl	%eax, %eax
	jle	L941
	movl	%edx, -20(%ebp)
	leal	23428(%ebx), %esi
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L942:
	movl	23448(%ebx), %edx
	leal	(%edi,%edi,8), %ecx
	movl	%esi, 8(%esp)
	addl	$1, %edi
	movl	%ebx, (%esp)
	leal	(%edx,%ecx,4), %edx
	movl	%edx, 4(%esp)
	call	*28(%edx)
	cmpl	23440(%ebx), %edi
	jl	L942
	movl	-20(%ebp), %edx
	movl	23428(%ebx), %esi
L941:
	movl	23436(%ebx), %ebx
	movl	$__ZN15ImGuiTextBuffer11EmptyStringE, %eax
	movl	%edx, -20(%ebp)
	movl	$LC146, 4(%esp)
	testl	%ebx, %ebx
	cmove	%eax, %ebx
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_fopen
	movl	-20(%ebp), %edx
	testl	%eax, %eax
	movl	%eax, %edi
	je	L934
	cmpl	$1, %esi
	movl	%eax, 12(%esp)
	adcl	$-1, %esi
	movl	$1, 4(%esp)
	movl	%esi, 8(%esp)
	movl	%ebx, (%esp)
	movl	%edx, -16(%ebp)
	call	_fwrite
	movl	%edi, (%esp)
	call	_fclose
	movl	-16(%ebp), %edx
	jmp	L934
L1966:
	movl	68(%edi), %ecx
	movl	-20(%ebp), %edx
	testl	%ecx, %ecx
	jne	L1089
	movl	32(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1095
	movl	20(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1101
	jmp	L1100
L1964:
	movl	68(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1135
	movl	32(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1141
	movl	20(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1147
	jmp	L1146
	.p2align 4,,10
	.p2align 3
L925:
	movl	68(%ebx), %eax
	testl	%eax, %eax
	je	L930
	testl	%esi, %esi
	jne	L928
L926:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-16(%ebp), %edx
	jmp	L927
L1969:
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	80(%ebx), %eax
	movl	-16(%ebp), %edx
	testl	%eax, %eax
	je	L1970
L921:
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, -16(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	68(%ebx), %eax
	movl	-16(%ebp), %edx
	testl	%eax, %eax
	jne	L926
	jmp	L927
L930:
	testl	%esi, %esi
	jne	L929
	jmp	L927
L1970:
	movl	68(%ebx), %eax
	testl	%eax, %eax
	jne	L926
	jmp	L927
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZL24destroy_window_resourcesv.lto_priv.0.cold;	.scl	3;	.type	32;	.endef
__ZL24destroy_window_resourcesv.lto_priv.0.cold:
LFSB150:
L888:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	36, %eax
	ud2
L884:
	movl	64, %eax
	ud2
	.cfi_endproc
LFE150:
	.text
	.section	.text.unlikely,"x"
LCOLDE147:
	.text
LHOTE147:
	.globl	_glad_glGetCompressedTexImage
	.bss
	.align 4
_glad_glGetCompressedTexImage:
	.space 4
	.globl	_glad_glCompressedTexImage2D
	.align 4
_glad_glCompressedTexImage2D:
	.space 4
	.globl	_glad_glGetGraphicsResetStatusKHR
	.align 4
_glad_glGetGraphicsResetStatusKHR:
	.space 4
	.globl	_glad_glGetGraphicsResetStatus
	.align 4
_glad_glGetGraphicsResetStatus:
	.space 4
	.globl	_glad_glGetString
	.align 4
_glad_glGetString:
	.space 4
	.globl	_glad_glShadeModel
	.align 4
_glad_glShadeModel:
	.space 4
.lcomm __ZZ16videoFadePaletteE14lastpalettesum,8,8
.lcomm __ZZ26setvideomode_sdlcommonpostiiiiiE15lastrefreshfreq,8,8
	.globl	_timingInfo
	.align 32
_timingInfo:
	.space 292
.lcomm __ZL8sysgamma,1536,32
	.globl	_modechange
	.data
_modechange:
	.byte	1
	.globl	_offscreenrendering
	.section .rdata,"dr"
_offscreenrendering:
	.space 1
	.globl	__ZL10lastvidgcb.lto_priv.0
	.bss
	.align 4
__ZL10lastvidgcb.lto_priv.0:
	.space 8
	.globl	_imgl3wProcs
	.align 32
_imgl3wProcs:
	.space 236
	.globl	__ZL21GImAllocatorAllocFunc.lto_priv.0
	.section .rdata,"dr"
	.align 4
__ZL21GImAllocatorAllocFunc.lto_priv.0:
	.long	__ZL13MallocWrapperjPv.lto_priv.0
	.globl	__ZN15ImGuiTextBuffer11EmptyStringE
	.bss
__ZN15ImGuiTextBuffer11EmptyStringE:
	.space 1
	.globl	__ZL20GImAllocatorUserData.lto_priv.0
	.section .rdata,"dr"
	.align 4
__ZL20GImAllocatorUserData.lto_priv.0:
	.space 4
	.globl	__ZL20GImAllocatorFreeFunc.lto_priv.0
	.align 4
__ZL20GImAllocatorFreeFunc.lto_priv.0:
	.long	__ZL11FreeWrapperPvS_.lto_priv.0
	.globl	_GImGui
	.bss
	.align 4
_GImGui:
	.space 4
	.section .rdata,"dr"
	.align 32
_g_defaultVideoModes:
	.long	2560
	.long	1440
	.long	2560
	.long	1200
	.long	2560
	.long	1080
	.long	1920
	.long	1440
	.long	1920
	.long	1200
	.long	1920
	.long	1080
	.long	1680
	.long	1050
	.long	1600
	.long	1200
	.long	1600
	.long	900
	.long	1366
	.long	768
	.long	1280
	.long	1024
	.long	1280
	.long	960
	.long	1280
	.long	720
	.long	1152
	.long	864
	.long	1024
	.long	768
	.long	1024
	.long	600
	.long	800
	.long	600
	.long	640
	.long	480
	.long	640
	.long	400
	.long	512
	.long	384
	.long	480
	.long	360
	.long	400
	.long	300
	.long	320
	.long	240
	.long	320
	.long	200
	.long	0
	.long	0
	.globl	_g_ImGuiCapturedDevices
	.bss
_g_ImGuiCapturedDevices:
	.space 1
	.globl	__ZL10g_ImGui_IO.lto_priv.0
	.align 4
__ZL10g_ImGui_IO.lto_priv.0:
	.space 4
	.globl	__ZL11sdl_context.lto_priv.0
	.align 4
__ZL11sdl_context.lto_priv.0:
	.space 4
	.globl	__ZL17vsync_renderlayer.lto_priv.0
	.align 4
__ZL17vsync_renderlayer.lto_priv.0:
	.space 4
.lcomm __ZL17vsync_unsupported,4,4
	.globl	__ZZL23sdlayer_getswapintervaliE9intervals.lto_priv.0
	.section .rdata,"dr"
	.align 4
__ZZL23sdlayer_getswapintervaliE9intervals.lto_priv.0:
	.long	-1
	.long	0
	.long	1
	.long	0
	.align 32
_C.174.0:
	.long	20480
	.long	32768
	.long	32768
	.long	1536
	.long	4096
	.long	8192
	.long	128
	.long	4096
.lcomm __ZN6loguruL13s_current_dirE,260,32
	.globl	__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0
	.bss
	.align 32
__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0:
	.space 1024
	.globl	__ZZ30windowsGetSystemKeyboardLayoutvE12systemLayout.lto_priv.0
	.align 4
__ZZ30windowsGetSystemKeyboardLayoutvE12systemLayout.lto_priv.0:
	.space 4
	.globl	__ZZ30windowsGetSystemKeyboardLayoutvE11layoutSaved.lto_priv.0
	.align 4
__ZZ30windowsGetSystemKeyboardLayoutvE11layoutSaved.lto_priv.0:
	.space 4
	.section .rdata,"dr"
	.align 4
LC103:
	.long	1067030938
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_mi_strdup;	.scl	2;	.type	32;	.endef
	.def	__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	__ZL19osd_findexactsymbolPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL18osdfunc_bucketlistPK13osdfuncparm_t.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL16osdfunc_heapinfoPK13osdfuncparm_t.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL10sighandleri.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_signal;	.scl	2;	.type	32;	.endef
	.def	__Z17engineLogCallbackPvRKN6loguru7MessageE;	.scl	2;	.type	32;	.endef
	.def	__Z23engineVerbosityCallbacki;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru12add_callbackEPKcPFvPvRKNS_7MessageEES2_iPFvS2_ES9_.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZZ18engineSetupLoggingRiPPcENUlRKN6loguru7MessageEE_4_FUNES5_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguruL21print_preamble_headerEPcj.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_fprintf;	.scl	2;	.type	32;	.endef
	.def	_fflush;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru14signal_handlerEi;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguruL9on_atexitEv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_atexit;	.scl	2;	.type	32;	.endef
	.def	_SDL_SetHint;	.scl	2;	.type	32;	.endef
	.def	_getenv;	.scl	2;	.type	32;	.endef
	.def	_strtol;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEjjPKcj;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z8OSD_Initv;	.scl	2;	.type	32;	.endef
	.def	__ZL13osd_addsymbolPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__xfree;	.scl	2;	.type	32;	.endef
	.def	__xrealloc;	.scl	2;	.type	32;	.endef
	.def	__xcalloc;	.scl	2;	.type	32;	.endef
	.def	__xmalloc;	.scl	2;	.type	32;	.endef
	.def	_SDL_SetMemoryFunctions;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru10textprintfEPKcz;	.scl	2;	.type	32;	.endef
	.def	__Z18_mi_malloc_genericP9mi_heap_sjbj;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	__xstrdup;	.scl	2;	.type	32;	.endef
	.def	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcjj;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_;	.scl	2;	.type	32;	.endef
	.def	_strcasecmp;	.scl	2;	.type	32;	.endef
	.def	_strncasecmp;	.scl	2;	.type	32;	.endef
	.def	_freopen;	.scl	2;	.type	32;	.endef
	.def	_setvbuf;	.scl	2;	.type	32;	.endef
	.def	_app_main;	.scl	2;	.type	32;	.endef
	.def	__Z34windowsGetSystemKeyboardLayoutNamev.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcj;	.scl	2;	.type	32;	.endef
	.def	_memcmp;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEjj;	.scl	2;	.type	32;	.endef
	.def	__ZL15startup_dlgprocP6HWND__jjl.lto_priv.0@16;	.scl	2;	.type	32;	.endef
	.def	__ZL7SetPagei.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL12EnableConfigi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZSt24__throw_out_of_range_fmtPKcz;	.scl	2;	.type	32;	.endef
	.def	__ZSt19__throw_logic_errorPKc;	.scl	2;	.type	32;	.endef
	.def	__ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_SDL_GL_GetSwapInterval;	.scl	2;	.type	32;	.endef
	.def	_SDL_GL_SetSwapInterval;	.scl	2;	.type	32;	.endef
	.def	_videoSetGameMode;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetVersion;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetRevision;	.scl	2;	.type	32;	.endef
	.def	_SDL_SetWindowGrab;	.scl	2;	.type	32;	.endef
	.def	_SDL_SetRelativeMouseMode;	.scl	2;	.type	32;	.endef
	.def	_SDL_ShowCursor;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetNumVideoDisplays;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetDisplayName;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_Bstrtoken.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetNumDisplayModes;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetDisplayMode;	.scl	2;	.type	32;	.endef
	.def	_qsort;	.scl	2;	.type	32;	.endef
	.def	_initprintf;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	__Z19softsurface_destroyv;	.scl	2;	.type	32;	.endef
	.def	__Z17glsurface_destroyv;	.scl	2;	.type	32;	.endef
	.def	_polymost_glreset;	.scl	2;	.type	32;	.endef
	.def	_wm_setapptitle;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetWindowDisplayIndex;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetDesktopDisplayMode;	.scl	2;	.type	32;	.endef
	.def	_SDL_SetWindowSize;	.scl	2;	.type	32;	.endef
	.def	_SDL_SetWindowFullscreen;	.scl	2;	.type	32;	.endef
	.def	_SDL_SetWindowBordered;	.scl	2;	.type	32;	.endef
	.def	_SDL_SetWindowPosition;	.scl	2;	.type	32;	.endef
	.def	_SDL_FlushEvent;	.scl	2;	.type	32;	.endef
	.def	_paletteGetColor;	.scl	2;	.type	32;	.endef
	.def	_XXH3_hashLong_64b_default.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z22softsurface_setPalettePvjjj.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetClosestDisplayMode;	.scl	2;	.type	32;	.endef
	.def	_SDL_SetWindowDisplayMode;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	__Z20glsurface_setPalettePv.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetWindowGammaRamp;	.scl	2;	.type	32;	.endef
	.def	_videoSetGamma;	.scl	2;	.type	32;	.endef
	.def	_osdcmd_glinfo;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetError;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui22DestroyPlatformWindowsEv;	.scl	2;	.type	32;	.endef
	.def	__ZL11FreeWrapperPvS_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_SDL_free;	.scl	2;	.type	32;	.endef
	.def	_SDL_FreeCursor;	.scl	2;	.type	32;	.endef
	.def	__ZN13ImGuiDockNodeD1Ev;	.scl	2;	.type	32;	.endef
	.def	__ZN18ImDrawListSplitter15ClearFreeMemoryEv;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	__ZN12ImGuiContextD1Ev;	.scl	2;	.type	32;	.endef
	.def	_SDL_GL_DeleteContext;	.scl	2;	.type	32;	.endef
	.def	_SDL_DestroyWindow;	.scl	2;	.type	32;	.endef
	.def	__ZL13MallocWrapperjPv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	__ZN6ImFontD1Ev;	.scl	2;	.type	32;	.endef
	.def	_fwrite;	.scl	2;	.type	32;	.endef
