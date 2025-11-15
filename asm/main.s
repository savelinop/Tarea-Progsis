	.file	"main.c"
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
	.ascii "%04d-%02d-%02d\0"
	.text
	.def	hoy_iso;	.scl	3;	.type	32;	.endef
	.seh_proc	hoy_iso
hoy_iso:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	$0, %ecx
	call	_time64
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_localtime64
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	12(%rax), %edx
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	leal	1(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	leal	1900(%rax), %r9d
	leaq	.LC0(%rip), %r8
	movq	16(%rbp), %rax
	movl	%edx, 40(%rsp)
	movl	%ecx, 32(%rsp)
	movl	$11, %edx
	movq	%rax, %rcx
	call	snprintf
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "r\0"
.LC2:
	.ascii ",\0"
	.text
	.def	proximo_num_factura;	.scl	3;	.type	32;	.endef
	.seh_proc	proximo_num_factura
proximo_num_factura:
	pushq	%rbp
	.seh_pushreg	%rbp
	subq	$592, %rsp
	.seh_stackalloc	592
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 480(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	480(%rbp), %rax
	movq	%rax, %rcx
	call	fopen
	movq	%rax, 448(%rbp)
	cmpq	$0, 448(%rbp)
	jne	.L9
	movl	$1000, %eax
	jmp	.L15
.L9:
	movl	$999, 460(%rbp)
	jmp	.L11
.L14:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	chomp
	movzbl	-96(%rbp), %eax
	testb	%al, %al
	jne	.L12
	jmp	.L11
.L12:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	strdup
	movq	%rax, 440(%rbp)
	leaq	.LC2(%rip), %rdx
	movq	440(%rbp), %rax
	movq	%rax, %rcx
	call	strtok
	movq	%rax, 432(%rbp)
	cmpq	$0, 432(%rbp)
	je	.L13
	movq	432(%rbp), %rax
	movq	%rax, %rcx
	call	atoi
	movl	%eax, 428(%rbp)
	movl	428(%rbp), %eax
	cmpl	460(%rbp), %eax
	jle	.L13
	movl	428(%rbp), %eax
	movl	%eax, 460(%rbp)
.L13:
	movq	440(%rbp), %rax
	movq	%rax, %rcx
	call	free
.L11:
	movq	448(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %r8
	movl	$512, %edx
	movq	%rax, %rcx
	call	fgets
	testq	%rax, %rax
	jne	.L14
	movq	448(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	movl	460(%rbp), %eax
	addl	$1, %eax
.L15:
	addq	$592, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC3:
	.ascii "data/vendedores.txt\0"
.LC4:
	.ascii "data/producto.txt\0"
.LC5:
	.ascii "data/ventas.txt\0"
	.align 8
.LC6:
	.ascii "\12**********************************************\0"
	.align 8
.LC7:
	.ascii "           SISTEMA DE VENTAS - POS\0"
	.align 8
.LC8:
	.ascii "**********************************************\12\0"
	.align 8
.LC9:
	.ascii "ERROR: No se pudo abrir vendedores.txt\12\0"
.LC10:
	.ascii "-> Usuario: \0"
.LC11:
	.ascii "-> Clave  : \0"
	.align 8
.LC12:
	.ascii "\12  *** Credenciales incorrectas ***\12\0"
	.align 8
.LC13:
	.ascii "\12*** Maximo de intentos alcanzado. Saliendo... ***\0"
.LC14:
	.ascii "\12Bienvenido, %s\12\12\0"
	.align 8
.LC15:
	.ascii "ERROR: No se pudo cargar producto.txt\12\0"
	.align 8
.LC16:
	.ascii "************ NUEVA VENTA ************\0"
.LC17:
	.ascii "Fecha   : %s\12\0"
.LC18:
	.ascii "Factura : %d\12\0"
	.align 8
.LC19:
	.ascii "**************************************\12\0"
	.align 8
.LC20:
	.ascii "Codigo de producto (ENTER para terminar): \0"
	.align 8
.LC21:
	.ascii "  -> ERROR: No existe el codigo\12\0"
	.align 8
.LC22:
	.ascii "\12----------------------------------------------\0"
.LC23:
	.ascii " PRODUCTO ENCONTRADO\0"
	.align 8
.LC24:
	.ascii "----------------------------------------------\0"
.LC25:
	.ascii " Codigo : %s\12\0"
.LC26:
	.ascii " Nombre : %s\12\0"
.LC27:
	.ascii " Stock  : %d\12\0"
.LC28:
	.ascii " Precio : $%.2f\12\0"
	.align 8
.LC29:
	.ascii "----------------------------------------------\12\0"
.LC30:
	.ascii "Cantidad a vender: \0"
.LC31:
	.ascii "  -> Cantidad invalida.\12\0"
	.align 8
.LC32:
	.ascii "  -> No hay suficiente inventario.\12\0"
.LC33:
	.ascii "ERROR: Memoria insuficiente.\0"
.LC34:
	.ascii "  \342\234\224 Producto agregado\12\0"
	.align 8
.LC35:
	.ascii "\12*** No se registro ningun producto. Saliendo... ***\0"
	.align 8
.LC36:
	.ascii "\12=============== DETALLE DE VENTA ===============\0"
.LC37:
	.ascii "Cant\0"
.LC38:
	.ascii "Codigo\0"
.LC39:
	.ascii "Producto\0"
.LC40:
	.ascii "%-20s %-10s %-6s %-10s %-10s\12\0"
.LC41:
	.ascii "Subtotal\0"
.LC42:
	.ascii "P.Unit\0"
	.align 8
.LC43:
	.ascii "--------------------------------------------------------------\0"
	.align 8
.LC45:
	.ascii "%-20s %-10s %-6d $%-9.2f $%-9.2f\12\0"
.LC46:
	.ascii "TOTAL: $%.2f\12\0"
	.align 8
.LC47:
	.ascii "==============================================================\12\0"
.LC48:
	.ascii "\302\277Confirmar venta? (s/n): \0"
.LC49:
	.ascii "\12*** Venta cancelada ***\0"
.LC50:
	.ascii "a\0"
.LC51:
	.ascii "ERROR al abrir ventas.txt\0"
.LC52:
	.ascii "%d,%s,%s,%d,%.2f,%.2f,%s\12\0"
	.align 8
.LC53:
	.ascii "\12************* VENTA REGISTRADA *************\0"
	.align 8
.LC54:
	.ascii "Gracias por usar el sistema :)\0"
	.align 8
.LC55:
	.ascii "********************************************\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	subq	$560, %rsp
	.seh_stackalloc	560
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	call	__main
	leaq	.LC3(%rip), %rax
	movq	%rax, 360(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, 352(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, 344(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC7(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movq	$0, 264(%rbp)
	movq	$0, 256(%rbp)
	leaq	256(%rbp), %rcx
	leaq	264(%rbp), %rdx
	movq	360(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	cargarUsuarios
	testl	%eax, %eax
	jne	.L17
	movl	$2, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rax, %rdx
	leaq	.LC9(%rip), %rax
	movq	%rdx, %r9
	movl	$39, %r8d
	movl	$1, %edx
	movq	%rax, %rcx
	call	fwrite
	movl	$1, %eax
	jmp	.L53
.L17:
	movl	$0, 428(%rbp)
	movl	$0, 424(%rbp)
	movl	$3, 340(%rbp)
	movq	$0, 248(%rbp)
	jmp	.L19
.L25:
	leaq	.LC10(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %r8
	movl	$128, %edx
	movq	%rax, %rcx
	call	fgets
	testq	%rax, %rax
	jne	.L20
	movl	$1, %eax
	jmp	.L53
.L20:
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	chomp
	leaq	.LC11(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rax, %rdx
	leaq	80(%rbp), %rax
	movq	%rdx, %r8
	movl	$128, %edx
	movq	%rax, %rcx
	call	fgets
	testq	%rax, %rax
	jne	.L22
	movl	$1, %eax
	jmp	.L53
.L22:
	leaq	80(%rbp), %rax
	movq	%rax, %rcx
	call	chomp
	movq	256(%rbp), %rdx
	movq	264(%rbp), %rax
	leaq	80(%rbp), %r9
	leaq	-48(%rbp), %r8
	leaq	248(%rbp), %rcx
	movq	%rcx, 32(%rsp)
	movq	%rax, %rcx
	call	validarLogin
	testl	%eax, %eax
	je	.L23
	movl	$1, 424(%rbp)
	jmp	.L24
.L23:
	leaq	.LC12(%rip), %rax
	movq	%rax, %rcx
	call	puts
	addl	$1, 428(%rbp)
.L19:
	movl	428(%rbp), %eax
	cmpl	340(%rbp), %eax
	jl	.L25
.L24:
	movq	264(%rbp), %rax
	movq	%rax, %rcx
	call	free
	cmpl	$0, 424(%rbp)
	jne	.L26
	leaq	.LC13(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$0, %eax
	jmp	.L53
.L26:
	movq	248(%rbp), %rax
	leaq	.LC14(%rip), %rcx
	movq	%rax, %rdx
	call	printf
	movq	$0, 240(%rbp)
	movq	$0, 232(%rbp)
	leaq	232(%rbp), %rcx
	leaq	240(%rbp), %rdx
	movq	352(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	cargarProductos
	testl	%eax, %eax
	jne	.L27
	movl	$2, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rax, %rdx
	leaq	.LC15(%rip), %rax
	movq	%rdx, %r9
	movl	$38, %r8d
	movl	$1, %edx
	movq	%rax, %rcx
	call	fwrite
	movl	$1, %eax
	jmp	.L53
.L27:
	movq	344(%rbp), %rax
	movq	%rax, %rcx
	call	proximo_num_factura
	movl	%eax, 336(%rbp)
	leaq	221(%rbp), %rax
	movq	%rax, %rcx
	call	hoy_iso
	leaq	.LC16(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	221(%rbp), %rax
	leaq	.LC17(%rip), %rcx
	movq	%rax, %rdx
	call	printf
	movl	336(%rbp), %eax
	leaq	.LC18(%rip), %rcx
	movl	%eax, %edx
	call	printf
	leaq	.LC19(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movq	$0, 416(%rbp)
	movq	$0, 408(%rbp)
	movq	$0, 400(%rbp)
.L43:
	leaq	.LC20(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rax, %rdx
	leaq	80(%rbp), %rax
	movq	%rdx, %r8
	movl	$128, %edx
	movq	%rax, %rcx
	call	fgets
	testq	%rax, %rax
	je	.L55
	leaq	80(%rbp), %rax
	movq	%rax, %rcx
	call	chomp
	movzbl	80(%rbp), %eax
	testb	%al, %al
	je	.L56
	movq	232(%rbp), %rdx
	movq	240(%rbp), %rax
	leaq	80(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	buscarProductoPorCodigo
	movl	%eax, 332(%rbp)
	cmpl	$0, 332(%rbp)
	jns	.L31
	leaq	.LC21(%rip), %rax
	movq	%rax, %rcx
	call	puts
	jmp	.L40
.L31:
	movq	240(%rbp), %rdx
	movl	332(%rbp), %eax
	cltq
	imulq	$216, %rax, %rax
	addq	%rdx, %rax
	movq	%rax, 320(%rbp)
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC23(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC24(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movq	320(%rbp), %rax
	leaq	.LC25(%rip), %rcx
	movq	%rax, %rdx
	call	printf
	movq	320(%rbp), %rax
	leaq	64(%rax), %rdx
	leaq	.LC26(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movq	320(%rbp), %rax
	movl	192(%rax), %eax
	leaq	.LC27(%rip), %rcx
	movl	%eax, %edx
	call	printf
	movq	320(%rbp), %rax
	movsd	208(%rax), %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	%xmm1, %rdx
	leaq	.LC28(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	printf
	leaq	.LC29(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC30(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %r8
	movl	$64, %edx
	movq	%rax, %rcx
	call	fgets
	testq	%rax, %rax
	je	.L57
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	atoi
	movl	%eax, 316(%rbp)
	cmpl	$0, 316(%rbp)
	jg	.L34
	leaq	.LC31(%rip), %rax
	movq	%rax, %rcx
	call	puts
	jmp	.L40
.L34:
	movq	320(%rbp), %rax
	movl	192(%rax), %eax
	cmpl	%eax, 316(%rbp)
	jle	.L35
	leaq	.LC32(%rip), %rax
	movq	%rax, %rcx
	call	puts
	jmp	.L40
.L35:
	movq	408(%rbp), %rax
	cmpq	400(%rbp), %rax
	jne	.L36
	cmpq	$0, 400(%rbp)
	je	.L37
	salq	400(%rbp)
	jmp	.L38
.L37:
	movq	$8, 400(%rbp)
.L38:
	movq	400(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	416(%rbp), %rax
	movq	%rax, %rcx
	call	realloc
	movq	%rax, 304(%rbp)
	cmpq	$0, 304(%rbp)
	jne	.L39
	leaq	.LC33(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movq	240(%rbp), %rax
	movq	%rax, %rcx
	call	free
	movl	$1, %eax
	jmp	.L53
.L39:
	movq	304(%rbp), %rax
	movq	%rax, 416(%rbp)
.L36:
	movq	408(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 408(%rbp)
	leaq	0(,%rax,8), %rdx
	movq	416(%rbp), %rax
	addq	%rdx, %rax
	movl	332(%rbp), %edx
	movl	%edx, (%rax)
	movl	316(%rbp), %edx
	movl	%edx, 4(%rax)
	leaq	.LC34(%rip), %rax
	movq	%rax, %rcx
	call	puts
	jmp	.L43
.L55:
	nop
	jmp	.L29
.L56:
	nop
	jmp	.L29
.L57:
	nop
.L29:
	cmpq	$0, 408(%rbp)
	je	.L41
	jmp	.L54
.L40:
	jmp	.L43
.L41:
	leaq	.LC35(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movq	240(%rbp), %rax
	movq	%rax, %rcx
	call	free
	movl	$0, %eax
	jmp	.L53
.L54:
	leaq	.LC36(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC37(%rip), %r9
	leaq	.LC38(%rip), %r8
	leaq	.LC39(%rip), %rdx
	leaq	.LC40(%rip), %rax
	leaq	.LC41(%rip), %rcx
	movq	%rcx, 40(%rsp)
	leaq	.LC42(%rip), %rcx
	movq	%rcx, 32(%rsp)
	movq	%rax, %rcx
	call	printf
	leaq	.LC43(%rip), %rax
	movq	%rax, %rcx
	call	puts
	pxor	%xmm0, %xmm0
	movsd	%xmm0, 392(%rbp)
	movq	$0, 384(%rbp)
	jmp	.L44
.L45:
	movq	240(%rbp), %rdx
	movq	384(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	416(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	imulq	$216, %rax, %rax
	addq	%rdx, %rax
	movq	%rax, 280(%rbp)
	movq	280(%rbp), %rax
	movsd	208(%rax), %xmm1
	movq	384(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	416(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 272(%rbp)
	movsd	392(%rbp), %xmm0
	addsd	272(%rbp), %xmm0
	movsd	%xmm0, 392(%rbp)
	movq	280(%rbp), %rax
	movsd	208(%rax), %xmm0
	movq	384(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	416(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %r8d
	movq	280(%rbp), %rcx
	movq	280(%rbp), %rax
	leaq	64(%rax), %rdx
	leaq	.LC45(%rip), %rax
	movsd	272(%rbp), %xmm1
	movsd	%xmm1, 40(%rsp)
	movsd	%xmm0, 32(%rsp)
	movl	%r8d, %r9d
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	printf
	addq	$1, 384(%rbp)
.L44:
	movq	384(%rbp), %rax
	cmpq	408(%rbp), %rax
	jb	.L45
	leaq	.LC43(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movsd	392(%rbp), %xmm0
	movq	392(%rbp), %rdx
	leaq	.LC46(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	printf
	leaq	.LC47(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC48(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rax, %rdx
	leaq	213(%rbp), %rax
	movq	%rdx, %r8
	movl	$8, %edx
	movq	%rax, %rcx
	call	fgets
	testq	%rax, %rax
	je	.L46
	movzbl	213(%rbp), %eax
	cmpb	$115, %al
	je	.L47
	movzbl	213(%rbp), %eax
	cmpb	$83, %al
	je	.L47
.L46:
	leaq	.LC49(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movq	240(%rbp), %rax
	movq	%rax, %rcx
	call	free
	movq	416(%rbp), %rax
	movq	%rax, %rcx
	call	free
	movl	$0, %eax
	jmp	.L53
.L47:
	movq	$0, 376(%rbp)
	jmp	.L48
.L49:
	movq	240(%rbp), %rdx
	movq	376(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	416(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	imulq	$216, %rax, %rax
	addq	%rdx, %rax
	movl	192(%rax), %ecx
	movq	376(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	416(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	movq	240(%rbp), %r8
	movq	376(%rbp), %rdx
	leaq	0(,%rdx,8), %r9
	movq	416(%rbp), %rdx
	addq	%r9, %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	imulq	$216, %rdx, %rdx
	addq	%r8, %rdx
	subl	%eax, %ecx
	movl	%ecx, 192(%rdx)
	addq	$1, 376(%rbp)
.L48:
	movq	376(%rbp), %rax
	cmpq	408(%rbp), %rax
	jb	.L49
	movq	232(%rbp), %rcx
	movq	240(%rbp), %rdx
	movq	352(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	guardarProductos
	leaq	.LC50(%rip), %rdx
	movq	344(%rbp), %rax
	movq	%rax, %rcx
	call	fopen
	movq	%rax, 296(%rbp)
	cmpq	$0, 296(%rbp)
	jne	.L50
	leaq	.LC51(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movq	240(%rbp), %rax
	movq	%rax, %rcx
	call	free
	movq	416(%rbp), %rax
	movq	%rax, %rcx
	call	free
	movl	$1, %eax
	jmp	.L53
.L50:
	movq	$0, 368(%rbp)
	jmp	.L51
.L52:
	movq	240(%rbp), %rdx
	movq	368(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	416(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	imulq	$216, %rax, %rax
	addq	%rdx, %rax
	movq	%rax, 288(%rbp)
	movq	288(%rbp), %rax
	movsd	208(%rax), %xmm1
	movq	288(%rbp), %rax
	movsd	200(%rax), %xmm0
	movq	368(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	416(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %ecx
	movq	288(%rbp), %rax
	leaq	64(%rax), %r9
	movq	288(%rbp), %r11
	movl	336(%rbp), %r10d
	leaq	.LC52(%rip), %rdx
	movq	296(%rbp), %rax
	leaq	221(%rbp), %r8
	movq	%r8, 64(%rsp)
	movsd	%xmm1, 56(%rsp)
	movsd	%xmm0, 48(%rsp)
	movl	%ecx, 40(%rsp)
	movq	%r9, 32(%rsp)
	movq	%r11, %r9
	movl	%r10d, %r8d
	movq	%rax, %rcx
	call	fprintf
	addq	$1, 368(%rbp)
.L51:
	movq	368(%rbp), %rax
	cmpq	408(%rbp), %rax
	jb	.L52
	movq	296(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	leaq	.LC53(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC54(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC55(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movq	240(%rbp), %rax
	movq	%rax, %rcx
	call	free
	movq	416(%rbp), %rax
	movq	%rax, %rcx
	call	free
	movl	$0, %eax
.L53:
	addq	$560, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (MinGW-W64 x86_64-ucrt-posix-seh, built by Brecht Sanders, r1) 15.2.0"
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	snprintf;	.scl	2;	.type	32;	.endef
	.def	fopen;	.scl	2;	.type	32;	.endef
	.def	strdup;	.scl	2;	.type	32;	.endef
	.def	strtok;	.scl	2;	.type	32;	.endef
	.def	atoi;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	fgets;	.scl	2;	.type	32;	.endef
	.def	fclose;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	cargarUsuarios;	.scl	2;	.type	32;	.endef
	.def	fwrite;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	validarLogin;	.scl	2;	.type	32;	.endef
	.def	cargarProductos;	.scl	2;	.type	32;	.endef
	.def	buscarProductoPorCodigo;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	guardarProductos;	.scl	2;	.type	32;	.endef
	.def	fprintf;	.scl	2;	.type	32;	.endef
