	.file	"usuarios.c"
	.text
	.def	chomp;	.scl	3;	.type	32;	.endef
	.seh_proc	chomp
chomp:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	cmpq	$0, 16(%rbp)
	je	.L2
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	movq	%rax, -8(%rbp)
	jmp	.L3
.L2:
	movq	$0, -8(%rbp)
.L3:
	cmpq	$0, -8(%rbp)
	je	.L6
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L5
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$13, %al
	jne	.L6
.L5:
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L6:
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "r\0"
.LC1:
	.ascii "vendedores.txt\0"
.LC2:
	.ascii ",\0"
	.text
	.globl	cargarUsuarios
	.def	cargarUsuarios;	.scl	2;	.type	32;	.endef
	.seh_proc	cargarUsuarios
cargarUsuarios:
	pushq	%rbp
	.seh_pushreg	%rbp
	subq	$592, %rsp
	.seh_stackalloc	592
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 480(%rbp)
	movq	%rdx, 488(%rbp)
	movq	%r8, 496(%rbp)
	movq	488(%rbp), %rax
	movq	$0, (%rax)
	movq	496(%rbp), %rax
	movq	$0, (%rax)
	leaq	.LC0(%rip), %rdx
	movq	480(%rbp), %rax
	movq	%rax, %rcx
	call	fopen
	movq	%rax, 448(%rbp)
	cmpq	$0, 448(%rbp)
	jne	.L8
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	perror
	movl	$0, %eax
	jmp	.L20
.L8:
	movq	$0, 456(%rbp)
	jmp	.L10
.L19:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	chomp
	movzbl	-96(%rbp), %eax
	testb	%al, %al
	jne	.L11
	jmp	.L10
.L11:
	movq	496(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, 456(%rbp)
	jne	.L12
	cmpq	$0, 456(%rbp)
	je	.L13
	salq	456(%rbp)
	jmp	.L14
.L13:
	movq	$8, 456(%rbp)
.L14:
	movq	456(%rbp), %rax
	salq	$8, %rax
	movq	%rax, %rdx
	movq	488(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	realloc
	movq	%rax, 440(%rbp)
	cmpq	$0, 440(%rbp)
	jne	.L15
	movq	448(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	movl	$0, %eax
	jmp	.L20
.L15:
	movq	488(%rbp), %rax
	movq	440(%rbp), %rdx
	movq	%rdx, (%rax)
.L12:
	movq	488(%rbp), %rax
	movq	(%rax), %rdx
	movq	496(%rbp), %rax
	movq	(%rax), %rax
	salq	$8, %rax
	addq	%rdx, %rax
	movq	%rax, 432(%rbp)
	leaq	.LC2(%rip), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	strtok
	movq	%rax, 424(%rbp)
	cmpq	$0, 424(%rbp)
	jne	.L16
	jmp	.L10
.L16:
	movq	432(%rbp), %rax
	movq	424(%rbp), %rdx
	movl	$64, %r8d
	movq	%rax, %rcx
	call	strncpy
	movq	432(%rbp), %rax
	movb	$0, 63(%rax)
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdx
	movl	$0, %ecx
	call	strtok
	movq	%rax, 424(%rbp)
	cmpq	$0, 424(%rbp)
	jne	.L17
	jmp	.L10
.L17:
	movq	432(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	424(%rbp), %rax
	movl	$64, %r8d
	movq	%rax, %rdx
	call	strncpy
	movq	432(%rbp), %rax
	movb	$0, 127(%rax)
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdx
	movl	$0, %ecx
	call	strtok
	movq	%rax, 424(%rbp)
	cmpq	$0, 424(%rbp)
	jne	.L18
	jmp	.L10
.L18:
	movq	432(%rbp), %rax
	leaq	128(%rax), %rcx
	movq	424(%rbp), %rax
	movl	$128, %r8d
	movq	%rax, %rdx
	call	strncpy
	movq	432(%rbp), %rax
	movb	$0, 255(%rax)
	movq	496(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	496(%rbp), %rax
	movq	%rdx, (%rax)
.L10:
	movq	448(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %r8
	movl	$512, %edx
	movq	%rax, %rcx
	call	fgets
	testq	%rax, %rax
	jne	.L19
	movq	448(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	movl	$1, %eax
.L20:
	addq	$592, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	validarLogin
	.def	validarLogin;	.scl	2;	.type	32;	.endef
	.seh_proc	validarLogin
validarLogin:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L22
.L26:
	movq	-8(%rbp), %rax
	salq	$8, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	%rax, %rdx
	call	strcmp
	testl	%eax, %eax
	jne	.L23
	movq	-8(%rbp), %rax
	salq	$8, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	leaq	64(%rax), %rcx
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	call	strcmp
	testl	%eax, %eax
	jne	.L23
	cmpq	$0, 48(%rbp)
	je	.L24
	movq	-8(%rbp), %rax
	salq	$8, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	leaq	128(%rax), %rdx
	movq	48(%rbp), %rax
	movq	%rdx, (%rax)
.L24:
	movl	$1, %eax
	jmp	.L25
.L23:
	addq	$1, -8(%rbp)
.L22:
	movq	-8(%rbp), %rax
	cmpq	24(%rbp), %rax
	jb	.L26
	movl	$0, %eax
.L25:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (MinGW-W64 x86_64-ucrt-posix-seh, built by Brecht Sanders, r1) 15.2.0"
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	fopen;	.scl	2;	.type	32;	.endef
	.def	perror;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	fclose;	.scl	2;	.type	32;	.endef
	.def	strtok;	.scl	2;	.type	32;	.endef
	.def	strncpy;	.scl	2;	.type	32;	.endef
	.def	fgets;	.scl	2;	.type	32;	.endef
	.def	strcmp;	.scl	2;	.type	32;	.endef
