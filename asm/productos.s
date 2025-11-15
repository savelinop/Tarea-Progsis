	.file	"productos.c"
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
	.ascii "producto.txt\0"
.LC2:
	.ascii ",\0"
	.text
	.globl	cargarProductos
	.def	cargarProductos;	.scl	2;	.type	32;	.endef
	.seh_proc	cargarProductos
cargarProductos:
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
	jmp	.L22
.L8:
	movq	$0, 456(%rbp)
	jmp	.L10
.L21:
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
	movq	$16, 456(%rbp)
.L14:
	movq	456(%rbp), %rax
	imulq	$216, %rax, %rdx
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
	jmp	.L22
.L15:
	movq	488(%rbp), %rax
	movq	440(%rbp), %rdx
	movq	%rdx, (%rax)
.L12:
	movq	488(%rbp), %rax
	movq	(%rax), %rdx
	movq	496(%rbp), %rax
	movq	(%rax), %rax
	imulq	$216, %rax, %rax
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
	movl	$128, %r8d
	movq	%rax, %rdx
	call	strncpy
	movq	432(%rbp), %rax
	movb	$0, 191(%rax)
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdx
	movl	$0, %ecx
	call	strtok
	movq	%rax, 424(%rbp)
	cmpq	$0, 424(%rbp)
	jne	.L18
	jmp	.L10
.L18:
	movq	424(%rbp), %rax
	movq	%rax, %rcx
	call	atoi
	movq	432(%rbp), %rdx
	movl	%eax, 192(%rdx)
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdx
	movl	$0, %ecx
	call	strtok
	movq	%rax, 424(%rbp)
	cmpq	$0, 424(%rbp)
	jne	.L19
	jmp	.L10
.L19:
	movq	424(%rbp), %rax
	movq	%rax, %rcx
	call	atof
	movq	%xmm0, %rax
	movq	432(%rbp), %rdx
	movq	%rax, 200(%rdx)
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdx
	movl	$0, %ecx
	call	strtok
	movq	%rax, 424(%rbp)
	cmpq	$0, 424(%rbp)
	jne	.L20
	jmp	.L10
.L20:
	movq	424(%rbp), %rax
	movq	%rax, %rcx
	call	atof
	movq	%xmm0, %rax
	movq	432(%rbp), %rdx
	movq	%rax, 208(%rdx)
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
	jne	.L21
	movq	448(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	movl	$1, %eax
.L22:
	addq	$592, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC3:
	.ascii "w\0"
.LC4:
	.ascii "producto.txt(w)\0"
.LC5:
	.ascii "%s,%s,%d,%.2f,%.2f\12\0"
	.text
	.globl	guardarProductos
	.def	guardarProductos;	.scl	2;	.type	32;	.endef
	.seh_proc	guardarProductos
guardarProductos:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	leaq	.LC3(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	fopen
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L24
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	call	perror
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	$0, -8(%rbp)
	jmp	.L26
.L27:
	movq	-8(%rbp), %rax
	imulq	$216, %rax, %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movsd	208(%rax), %xmm1
	movq	-8(%rbp), %rax
	imulq	$216, %rax, %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movsd	200(%rax), %xmm0
	movq	-8(%rbp), %rax
	imulq	$216, %rax, %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movl	192(%rax), %ecx
	movq	-8(%rbp), %rax
	imulq	$216, %rax, %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	leaq	64(%rax), %r8
	movq	-8(%rbp), %rax
	imulq	$216, %rax, %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %r10
	leaq	.LC5(%rip), %rdx
	movq	-16(%rbp), %rax
	movsd	%xmm1, 48(%rsp)
	movsd	%xmm0, 40(%rsp)
	movl	%ecx, 32(%rsp)
	movq	%r8, %r9
	movq	%r10, %r8
	movq	%rax, %rcx
	call	fprintf
	addq	$1, -8(%rbp)
.L26:
	movq	-8(%rbp), %rax
	cmpq	32(%rbp), %rax
	jb	.L27
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	movl	$1, %eax
.L25:
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	buscarProductoPorCodigo
	.def	buscarProductoPorCodigo;	.scl	2;	.type	32;	.endef
	.seh_proc	buscarProductoPorCodigo
buscarProductoPorCodigo:
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
	movq	$0, -8(%rbp)
	jmp	.L29
.L32:
	movq	-8(%rbp), %rax
	imulq	$216, %rax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	%rax, %rdx
	call	strcmp
	testl	%eax, %eax
	jne	.L30
	movq	-8(%rbp), %rax
	jmp	.L31
.L30:
	addq	$1, -8(%rbp)
.L29:
	movq	-8(%rbp), %rax
	cmpq	24(%rbp), %rax
	jb	.L32
	movl	$-1, %eax
.L31:
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
	.def	atoi;	.scl	2;	.type	32;	.endef
	.def	atof;	.scl	2;	.type	32;	.endef
	.def	fgets;	.scl	2;	.type	32;	.endef
	.def	fprintf;	.scl	2;	.type	32;	.endef
	.def	strcmp;	.scl	2;	.type	32;	.endef
