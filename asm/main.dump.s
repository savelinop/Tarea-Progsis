
obj\main.o:     file format pe-x86-64


Disassembly of section .text:

0000000000000000 <chomp>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 30          	sub    $0x30,%rsp
   8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   c:	48 83 7d 10 00       	cmpq   $0x0,0x10(%rbp)
  11:	74 12                	je     25 <chomp+0x25>
  13:	48 8b 45 10          	mov    0x10(%rbp),%rax
  17:	48 89 c1             	mov    %rax,%rcx
  1a:	e8 00 00 00 00       	call   1f <chomp+0x1f>
  1f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  23:	eb 08                	jmp    2d <chomp+0x2d>
  25:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  2c:	00 
  2d:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  32:	74 3e                	je     72 <chomp+0x72>
  34:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  38:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
  3c:	48 8b 45 10          	mov    0x10(%rbp),%rax
  40:	48 01 d0             	add    %rdx,%rax
  43:	0f b6 00             	movzbl (%rax),%eax
  46:	3c 0a                	cmp    $0xa,%al
  48:	74 16                	je     60 <chomp+0x60>
  4a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4e:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
  52:	48 8b 45 10          	mov    0x10(%rbp),%rax
  56:	48 01 d0             	add    %rdx,%rax
  59:	0f b6 00             	movzbl (%rax),%eax
  5c:	3c 0d                	cmp    $0xd,%al
  5e:	75 12                	jne    72 <chomp+0x72>
  60:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  64:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
  68:	48 8b 45 10          	mov    0x10(%rbp),%rax
  6c:	48 01 d0             	add    %rdx,%rax
  6f:	c6 00 00             	movb   $0x0,(%rax)
  72:	90                   	nop
  73:	48 83 c4 30          	add    $0x30,%rsp
  77:	5d                   	pop    %rbp
  78:	c3                   	ret

0000000000000079 <hoy_iso>:
  79:	55                   	push   %rbp
  7a:	48 89 e5             	mov    %rsp,%rbp
  7d:	48 83 ec 40          	sub    $0x40,%rsp
  81:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  85:	b9 00 00 00 00       	mov    $0x0,%ecx
  8a:	e8 00 00 00 00       	call   8f <hoy_iso+0x16>
  8f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  93:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  97:	48 89 c1             	mov    %rax,%rcx
  9a:	e8 00 00 00 00       	call   9f <hoy_iso+0x26>
  9f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  a3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  a7:	8b 50 0c             	mov    0xc(%rax),%edx
  aa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  ae:	8b 40 10             	mov    0x10(%rax),%eax
  b1:	8d 48 01             	lea    0x1(%rax),%ecx
  b4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  b8:	8b 40 14             	mov    0x14(%rax),%eax
  bb:	44 8d 88 6c 07 00 00 	lea    0x76c(%rax),%r9d
  c2:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # c9 <hoy_iso+0x50>
  c9:	48 8b 45 10          	mov    0x10(%rbp),%rax
  cd:	89 54 24 28          	mov    %edx,0x28(%rsp)
  d1:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
  d5:	ba 0b 00 00 00       	mov    $0xb,%edx
  da:	48 89 c1             	mov    %rax,%rcx
  dd:	e8 00 00 00 00       	call   e2 <hoy_iso+0x69>
  e2:	90                   	nop
  e3:	48 83 c4 40          	add    $0x40,%rsp
  e7:	5d                   	pop    %rbp
  e8:	c3                   	ret

00000000000000e9 <proximo_num_factura>:
  e9:	55                   	push   %rbp
  ea:	48 81 ec 50 02 00 00 	sub    $0x250,%rsp
  f1:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  f8:	00 
  f9:	48 89 8d e0 01 00 00 	mov    %rcx,0x1e0(%rbp)
 100:	48 8d 15 0f 00 00 00 	lea    0xf(%rip),%rdx        # 116 <proximo_num_factura+0x2d>
 107:	48 8b 85 e0 01 00 00 	mov    0x1e0(%rbp),%rax
 10e:	48 89 c1             	mov    %rax,%rcx
 111:	e8 00 00 00 00       	call   116 <proximo_num_factura+0x2d>
 116:	48 89 85 c0 01 00 00 	mov    %rax,0x1c0(%rbp)
 11d:	48 83 bd c0 01 00 00 	cmpq   $0x0,0x1c0(%rbp)
 124:	00 
 125:	75 0a                	jne    131 <proximo_num_factura+0x48>
 127:	b8 e8 03 00 00       	mov    $0x3e8,%eax
 12c:	e9 d9 00 00 00       	jmp    20a <proximo_num_factura+0x121>
 131:	c7 85 cc 01 00 00 e7 	movl   $0x3e7,0x1cc(%rbp)
 138:	03 00 00 
 13b:	e9 8e 00 00 00       	jmp    1ce <proximo_num_factura+0xe5>
 140:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
 144:	48 89 c1             	mov    %rax,%rcx
 147:	e8 b4 fe ff ff       	call   0 <chomp>
 14c:	0f b6 45 a0          	movzbl -0x60(%rbp),%eax
 150:	84 c0                	test   %al,%al
 152:	75 02                	jne    156 <proximo_num_factura+0x6d>
 154:	eb 78                	jmp    1ce <proximo_num_factura+0xe5>
 156:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
 15a:	48 89 c1             	mov    %rax,%rcx
 15d:	e8 00 00 00 00       	call   162 <proximo_num_factura+0x79>
 162:	48 89 85 b8 01 00 00 	mov    %rax,0x1b8(%rbp)
 169:	48 8d 15 11 00 00 00 	lea    0x11(%rip),%rdx        # 181 <proximo_num_factura+0x98>
 170:	48 8b 85 b8 01 00 00 	mov    0x1b8(%rbp),%rax
 177:	48 89 c1             	mov    %rax,%rcx
 17a:	e8 00 00 00 00       	call   17f <proximo_num_factura+0x96>
 17f:	48 89 85 b0 01 00 00 	mov    %rax,0x1b0(%rbp)
 186:	48 83 bd b0 01 00 00 	cmpq   $0x0,0x1b0(%rbp)
 18d:	00 
 18e:	74 2f                	je     1bf <proximo_num_factura+0xd6>
 190:	48 8b 85 b0 01 00 00 	mov    0x1b0(%rbp),%rax
 197:	48 89 c1             	mov    %rax,%rcx
 19a:	e8 00 00 00 00       	call   19f <proximo_num_factura+0xb6>
 19f:	89 85 ac 01 00 00    	mov    %eax,0x1ac(%rbp)
 1a5:	8b 85 ac 01 00 00    	mov    0x1ac(%rbp),%eax
 1ab:	3b 85 cc 01 00 00    	cmp    0x1cc(%rbp),%eax
 1b1:	7e 0c                	jle    1bf <proximo_num_factura+0xd6>
 1b3:	8b 85 ac 01 00 00    	mov    0x1ac(%rbp),%eax
 1b9:	89 85 cc 01 00 00    	mov    %eax,0x1cc(%rbp)
 1bf:	48 8b 85 b8 01 00 00 	mov    0x1b8(%rbp),%rax
 1c6:	48 89 c1             	mov    %rax,%rcx
 1c9:	e8 00 00 00 00       	call   1ce <proximo_num_factura+0xe5>
 1ce:	48 8b 95 c0 01 00 00 	mov    0x1c0(%rbp),%rdx
 1d5:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
 1d9:	49 89 d0             	mov    %rdx,%r8
 1dc:	ba 00 02 00 00       	mov    $0x200,%edx
 1e1:	48 89 c1             	mov    %rax,%rcx
 1e4:	e8 00 00 00 00       	call   1e9 <proximo_num_factura+0x100>
 1e9:	48 85 c0             	test   %rax,%rax
 1ec:	0f 85 4e ff ff ff    	jne    140 <proximo_num_factura+0x57>
 1f2:	48 8b 85 c0 01 00 00 	mov    0x1c0(%rbp),%rax
 1f9:	48 89 c1             	mov    %rax,%rcx
 1fc:	e8 00 00 00 00       	call   201 <proximo_num_factura+0x118>
 201:	8b 85 cc 01 00 00    	mov    0x1cc(%rbp),%eax
 207:	83 c0 01             	add    $0x1,%eax
 20a:	48 81 c4 50 02 00 00 	add    $0x250,%rsp
 211:	5d                   	pop    %rbp
 212:	c3                   	ret

0000000000000213 <main>:
 213:	55                   	push   %rbp
 214:	48 81 ec 30 02 00 00 	sub    $0x230,%rsp
 21b:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
 222:	00 
 223:	e8 00 00 00 00       	call   228 <main+0x15>
 228:	48 8d 05 13 00 00 00 	lea    0x13(%rip),%rax        # 242 <main+0x2f>
 22f:	48 89 85 68 01 00 00 	mov    %rax,0x168(%rbp)
 236:	48 8d 05 27 00 00 00 	lea    0x27(%rip),%rax        # 264 <main+0x51>
 23d:	48 89 85 60 01 00 00 	mov    %rax,0x160(%rbp)
 244:	48 8d 05 39 00 00 00 	lea    0x39(%rip),%rax        # 284 <main+0x71>
 24b:	48 89 85 58 01 00 00 	mov    %rax,0x158(%rbp)
 252:	48 8d 05 50 00 00 00 	lea    0x50(%rip),%rax        # 2a9 <main+0x96>
 259:	48 89 c1             	mov    %rax,%rcx
 25c:	e8 00 00 00 00       	call   261 <main+0x4e>
 261:	48 8d 05 80 00 00 00 	lea    0x80(%rip),%rax        # 2e8 <main+0xd5>
 268:	48 89 c1             	mov    %rax,%rcx
 26b:	e8 00 00 00 00       	call   270 <main+0x5d>
 270:	48 8d 05 a8 00 00 00 	lea    0xa8(%rip),%rax        # 31f <main+0x10c>
 277:	48 89 c1             	mov    %rax,%rcx
 27a:	e8 00 00 00 00       	call   27f <main+0x6c>
 27f:	48 c7 85 08 01 00 00 	movq   $0x0,0x108(%rbp)
 286:	00 00 00 00 
 28a:	48 c7 85 00 01 00 00 	movq   $0x0,0x100(%rbp)
 291:	00 00 00 00 
 295:	48 8d 8d 00 01 00 00 	lea    0x100(%rbp),%rcx
 29c:	48 8d 95 08 01 00 00 	lea    0x108(%rbp),%rdx
 2a3:	48 8b 85 68 01 00 00 	mov    0x168(%rbp),%rax
 2aa:	49 89 c8             	mov    %rcx,%r8
 2ad:	48 89 c1             	mov    %rax,%rcx
 2b0:	e8 00 00 00 00       	call   2b5 <main+0xa2>
 2b5:	85 c0                	test   %eax,%eax
 2b7:	75 38                	jne    2f1 <main+0xde>
 2b9:	b9 02 00 00 00       	mov    $0x2,%ecx
 2be:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 2c5 <main+0xb2>
 2c5:	ff d0                	call   *%rax
 2c7:	48 89 c2             	mov    %rax,%rdx
 2ca:	48 8d 05 d8 00 00 00 	lea    0xd8(%rip),%rax        # 3a9 <main+0x196>
 2d1:	49 89 d1             	mov    %rdx,%r9
 2d4:	41 b8 27 00 00 00    	mov    $0x27,%r8d
 2da:	ba 01 00 00 00       	mov    $0x1,%edx
 2df:	48 89 c1             	mov    %rax,%rcx
 2e2:	e8 00 00 00 00       	call   2e7 <main+0xd4>
 2e7:	b8 01 00 00 00       	mov    $0x1,%eax
 2ec:	e9 63 0a 00 00       	jmp    d54 <main+0xb41>
 2f1:	c7 85 ac 01 00 00 00 	movl   $0x0,0x1ac(%rbp)
 2f8:	00 00 00 
 2fb:	c7 85 a8 01 00 00 00 	movl   $0x0,0x1a8(%rbp)
 302:	00 00 00 
 305:	c7 85 54 01 00 00 03 	movl   $0x3,0x154(%rbp)
 30c:	00 00 00 
 30f:	48 c7 85 f8 00 00 00 	movq   $0x0,0xf8(%rbp)
 316:	00 00 00 00 
 31a:	e9 ee 00 00 00       	jmp    40d <main+0x1fa>
 31f:	48 8d 05 00 01 00 00 	lea    0x100(%rip),%rax        # 426 <main+0x213>
 326:	48 89 c1             	mov    %rax,%rcx
 329:	e8 00 00 00 00       	call   32e <main+0x11b>
 32e:	b9 00 00 00 00       	mov    $0x0,%ecx
 333:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 33a <main+0x127>
 33a:	ff d0                	call   *%rax
 33c:	48 89 c2             	mov    %rax,%rdx
 33f:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
 343:	49 89 d0             	mov    %rdx,%r8
 346:	ba 80 00 00 00       	mov    $0x80,%edx
 34b:	48 89 c1             	mov    %rax,%rcx
 34e:	e8 00 00 00 00       	call   353 <main+0x140>
 353:	48 85 c0             	test   %rax,%rax
 356:	75 0a                	jne    362 <main+0x14f>
 358:	b8 01 00 00 00       	mov    $0x1,%eax
 35d:	e9 f2 09 00 00       	jmp    d54 <main+0xb41>
 362:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
 366:	48 89 c1             	mov    %rax,%rcx
 369:	e8 92 fc ff ff       	call   0 <chomp>
 36e:	48 8d 05 0d 01 00 00 	lea    0x10d(%rip),%rax        # 482 <main+0x26f>
 375:	48 89 c1             	mov    %rax,%rcx
 378:	e8 00 00 00 00       	call   37d <main+0x16a>
 37d:	b9 00 00 00 00       	mov    $0x0,%ecx
 382:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 389 <main+0x176>
 389:	ff d0                	call   *%rax
 38b:	48 89 c2             	mov    %rax,%rdx
 38e:	48 8d 45 50          	lea    0x50(%rbp),%rax
 392:	49 89 d0             	mov    %rdx,%r8
 395:	ba 80 00 00 00       	mov    $0x80,%edx
 39a:	48 89 c1             	mov    %rax,%rcx
 39d:	e8 00 00 00 00       	call   3a2 <main+0x18f>
 3a2:	48 85 c0             	test   %rax,%rax
 3a5:	75 0a                	jne    3b1 <main+0x19e>
 3a7:	b8 01 00 00 00       	mov    $0x1,%eax
 3ac:	e9 a3 09 00 00       	jmp    d54 <main+0xb41>
 3b1:	48 8d 45 50          	lea    0x50(%rbp),%rax
 3b5:	48 89 c1             	mov    %rax,%rcx
 3b8:	e8 43 fc ff ff       	call   0 <chomp>
 3bd:	48 8b 95 00 01 00 00 	mov    0x100(%rbp),%rdx
 3c4:	48 8b 85 08 01 00 00 	mov    0x108(%rbp),%rax
 3cb:	4c 8d 4d 50          	lea    0x50(%rbp),%r9
 3cf:	4c 8d 45 d0          	lea    -0x30(%rbp),%r8
 3d3:	48 8d 8d f8 00 00 00 	lea    0xf8(%rbp),%rcx
 3da:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
 3df:	48 89 c1             	mov    %rax,%rcx
 3e2:	e8 00 00 00 00       	call   3e7 <main+0x1d4>
 3e7:	85 c0                	test   %eax,%eax
 3e9:	74 0c                	je     3f7 <main+0x1e4>
 3eb:	c7 85 a8 01 00 00 01 	movl   $0x1,0x1a8(%rbp)
 3f2:	00 00 00 
 3f5:	eb 28                	jmp    41f <main+0x20c>
 3f7:	48 8d 05 20 01 00 00 	lea    0x120(%rip),%rax        # 51e <main+0x30b>
 3fe:	48 89 c1             	mov    %rax,%rcx
 401:	e8 00 00 00 00       	call   406 <main+0x1f3>
 406:	83 85 ac 01 00 00 01 	addl   $0x1,0x1ac(%rbp)
 40d:	8b 85 ac 01 00 00    	mov    0x1ac(%rbp),%eax
 413:	3b 85 54 01 00 00    	cmp    0x154(%rbp),%eax
 419:	0f 8c 00 ff ff ff    	jl     31f <main+0x10c>
 41f:	48 8b 85 08 01 00 00 	mov    0x108(%rbp),%rax
 426:	48 89 c1             	mov    %rax,%rcx
 429:	e8 00 00 00 00       	call   42e <main+0x21b>
 42e:	83 bd a8 01 00 00 00 	cmpl   $0x0,0x1a8(%rbp)
 435:	75 19                	jne    450 <main+0x23d>
 437:	48 8d 05 48 01 00 00 	lea    0x148(%rip),%rax        # 586 <main+0x373>
 43e:	48 89 c1             	mov    %rax,%rcx
 441:	e8 00 00 00 00       	call   446 <main+0x233>
 446:	b8 00 00 00 00       	mov    $0x0,%eax
 44b:	e9 04 09 00 00       	jmp    d54 <main+0xb41>
 450:	48 8b 85 f8 00 00 00 	mov    0xf8(%rbp),%rax
 457:	48 8d 0d 7b 01 00 00 	lea    0x17b(%rip),%rcx        # 5d9 <main+0x3c6>
 45e:	48 89 c2             	mov    %rax,%rdx
 461:	e8 00 00 00 00       	call   466 <main+0x253>
 466:	48 c7 85 f0 00 00 00 	movq   $0x0,0xf0(%rbp)
 46d:	00 00 00 00 
 471:	48 c7 85 e8 00 00 00 	movq   $0x0,0xe8(%rbp)
 478:	00 00 00 00 
 47c:	48 8d 8d e8 00 00 00 	lea    0xe8(%rbp),%rcx
 483:	48 8d 95 f0 00 00 00 	lea    0xf0(%rbp),%rdx
 48a:	48 8b 85 60 01 00 00 	mov    0x160(%rbp),%rax
 491:	49 89 c8             	mov    %rcx,%r8
 494:	48 89 c1             	mov    %rax,%rcx
 497:	e8 00 00 00 00       	call   49c <main+0x289>
 49c:	85 c0                	test   %eax,%eax
 49e:	75 38                	jne    4d8 <main+0x2c5>
 4a0:	b9 02 00 00 00       	mov    $0x2,%ecx
 4a5:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 4ac <main+0x299>
 4ac:	ff d0                	call   *%rax
 4ae:	48 89 c2             	mov    %rax,%rdx
 4b1:	48 8d 05 90 01 00 00 	lea    0x190(%rip),%rax        # 648 <main+0x435>
 4b8:	49 89 d1             	mov    %rdx,%r9
 4bb:	41 b8 26 00 00 00    	mov    $0x26,%r8d
 4c1:	ba 01 00 00 00       	mov    $0x1,%edx
 4c6:	48 89 c1             	mov    %rax,%rcx
 4c9:	e8 00 00 00 00       	call   4ce <main+0x2bb>
 4ce:	b8 01 00 00 00       	mov    $0x1,%eax
 4d3:	e9 7c 08 00 00       	jmp    d54 <main+0xb41>
 4d8:	48 8b 85 58 01 00 00 	mov    0x158(%rbp),%rax
 4df:	48 89 c1             	mov    %rax,%rcx
 4e2:	e8 02 fc ff ff       	call   e9 <proximo_num_factura>
 4e7:	89 85 50 01 00 00    	mov    %eax,0x150(%rbp)
 4ed:	48 8d 85 dd 00 00 00 	lea    0xdd(%rbp),%rax
 4f4:	48 89 c1             	mov    %rax,%rcx
 4f7:	e8 7d fb ff ff       	call   79 <hoy_iso>
 4fc:	48 8d 05 b8 01 00 00 	lea    0x1b8(%rip),%rax        # 6bb <main+0x4a8>
 503:	48 89 c1             	mov    %rax,%rcx
 506:	e8 00 00 00 00       	call   50b <main+0x2f8>
 50b:	48 8d 85 dd 00 00 00 	lea    0xdd(%rbp),%rax
 512:	48 8d 0d de 01 00 00 	lea    0x1de(%rip),%rcx        # 6f7 <main+0x4e4>
 519:	48 89 c2             	mov    %rax,%rdx
 51c:	e8 00 00 00 00       	call   521 <main+0x30e>
 521:	8b 85 50 01 00 00    	mov    0x150(%rbp),%eax
 527:	48 8d 0d ec 01 00 00 	lea    0x1ec(%rip),%rcx        # 71a <main+0x507>
 52e:	89 c2                	mov    %eax,%edx
 530:	e8 00 00 00 00       	call   535 <main+0x322>
 535:	48 8d 05 00 02 00 00 	lea    0x200(%rip),%rax        # 73c <main+0x529>
 53c:	48 89 c1             	mov    %rax,%rcx
 53f:	e8 00 00 00 00       	call   544 <main+0x331>
 544:	48 c7 85 a0 01 00 00 	movq   $0x0,0x1a0(%rbp)
 54b:	00 00 00 00 
 54f:	48 c7 85 98 01 00 00 	movq   $0x0,0x198(%rbp)
 556:	00 00 00 00 
 55a:	48 c7 85 90 01 00 00 	movq   $0x0,0x190(%rbp)
 561:	00 00 00 00 
 565:	48 8d 05 28 02 00 00 	lea    0x228(%rip),%rax        # 794 <main+0x581>
 56c:	48 89 c1             	mov    %rax,%rcx
 56f:	e8 00 00 00 00       	call   574 <main+0x361>
 574:	b9 00 00 00 00       	mov    $0x0,%ecx
 579:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 580 <main+0x36d>
 580:	ff d0                	call   *%rax
 582:	48 89 c2             	mov    %rax,%rdx
 585:	48 8d 45 50          	lea    0x50(%rbp),%rax
 589:	49 89 d0             	mov    %rdx,%r8
 58c:	ba 80 00 00 00       	mov    $0x80,%edx
 591:	48 89 c1             	mov    %rax,%rcx
 594:	e8 00 00 00 00       	call   599 <main+0x386>
 599:	48 85 c0             	test   %rax,%rax
 59c:	0f 84 a3 02 00 00    	je     845 <main+0x632>
 5a2:	48 8d 45 50          	lea    0x50(%rbp),%rax
 5a6:	48 89 c1             	mov    %rax,%rcx
 5a9:	e8 52 fa ff ff       	call   0 <chomp>
 5ae:	0f b6 45 50          	movzbl 0x50(%rbp),%eax
 5b2:	84 c0                	test   %al,%al
 5b4:	0f 84 8e 02 00 00    	je     848 <main+0x635>
 5ba:	48 8b 95 e8 00 00 00 	mov    0xe8(%rbp),%rdx
 5c1:	48 8b 85 f0 00 00 00 	mov    0xf0(%rbp),%rax
 5c8:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
 5cc:	49 89 c8             	mov    %rcx,%r8
 5cf:	48 89 c1             	mov    %rax,%rcx
 5d2:	e8 00 00 00 00       	call   5d7 <main+0x3c4>
 5d7:	89 85 4c 01 00 00    	mov    %eax,0x14c(%rbp)
 5dd:	83 bd 4c 01 00 00 00 	cmpl   $0x0,0x14c(%rbp)
 5e4:	79 14                	jns    5fa <main+0x3e7>
 5e6:	48 8d 05 58 02 00 00 	lea    0x258(%rip),%rax        # 845 <main+0x632>
 5ed:	48 89 c1             	mov    %rax,%rcx
 5f0:	e8 00 00 00 00       	call   5f5 <main+0x3e2>
 5f5:	e9 5e 02 00 00       	jmp    858 <main+0x645>
 5fa:	48 8b 95 f0 00 00 00 	mov    0xf0(%rbp),%rdx
 601:	8b 85 4c 01 00 00    	mov    0x14c(%rbp),%eax
 607:	48 98                	cltq
 609:	48 69 c0 d8 00 00 00 	imul   $0xd8,%rax,%rax
 610:	48 01 d0             	add    %rdx,%rax
 613:	48 89 85 40 01 00 00 	mov    %rax,0x140(%rbp)
 61a:	48 8d 05 80 02 00 00 	lea    0x280(%rip),%rax        # 8a1 <main+0x68e>
 621:	48 89 c1             	mov    %rax,%rcx
 624:	e8 00 00 00 00       	call   629 <main+0x416>
 629:	48 8d 05 b0 02 00 00 	lea    0x2b0(%rip),%rax        # 8e0 <main+0x6cd>
 630:	48 89 c1             	mov    %rax,%rcx
 633:	e8 00 00 00 00       	call   638 <main+0x425>
 638:	48 8d 05 c8 02 00 00 	lea    0x2c8(%rip),%rax        # 907 <main+0x6f4>
 63f:	48 89 c1             	mov    %rax,%rcx
 642:	e8 00 00 00 00       	call   647 <main+0x434>
 647:	48 8b 85 40 01 00 00 	mov    0x140(%rbp),%rax
 64e:	48 8d 0d f7 02 00 00 	lea    0x2f7(%rip),%rcx        # 94c <main+0x739>
 655:	48 89 c2             	mov    %rax,%rdx
 658:	e8 00 00 00 00       	call   65d <main+0x44a>
 65d:	48 8b 85 40 01 00 00 	mov    0x140(%rbp),%rax
 664:	48 8d 50 40          	lea    0x40(%rax),%rdx
 668:	48 8d 05 05 03 00 00 	lea    0x305(%rip),%rax        # 974 <main+0x761>
 66f:	48 89 c1             	mov    %rax,%rcx
 672:	e8 00 00 00 00       	call   677 <main+0x464>
 677:	48 8b 85 40 01 00 00 	mov    0x140(%rbp),%rax
 67e:	8b 80 c0 00 00 00    	mov    0xc0(%rax),%eax
 684:	48 8d 0d 13 03 00 00 	lea    0x313(%rip),%rcx        # 99e <main+0x78b>
 68b:	89 c2                	mov    %eax,%edx
 68d:	e8 00 00 00 00       	call   692 <main+0x47f>
 692:	48 8b 85 40 01 00 00 	mov    0x140(%rbp),%rax
 699:	f2 0f 10 80 d0 00 00 	movsd  0xd0(%rax),%xmm0
 6a0:	00 
 6a1:	66 0f 28 c8          	movapd %xmm0,%xmm1
 6a5:	66 0f 28 c1          	movapd %xmm1,%xmm0
 6a9:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 6ae:	48 8d 05 21 03 00 00 	lea    0x321(%rip),%rax        # 9d6 <main+0x7c3>
 6b5:	66 0f 28 c8          	movapd %xmm0,%xmm1
 6b9:	48 89 c1             	mov    %rax,%rcx
 6bc:	e8 00 00 00 00       	call   6c1 <main+0x4ae>
 6c1:	48 8d 05 38 03 00 00 	lea    0x338(%rip),%rax        # a00 <main+0x7ed>
 6c8:	48 89 c1             	mov    %rax,%rcx
 6cb:	e8 00 00 00 00       	call   6d0 <main+0x4bd>
 6d0:	48 8d 05 68 03 00 00 	lea    0x368(%rip),%rax        # a3f <main+0x82c>
 6d7:	48 89 c1             	mov    %rax,%rcx
 6da:	e8 00 00 00 00       	call   6df <main+0x4cc>
 6df:	b9 00 00 00 00       	mov    $0x0,%ecx
 6e4:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 6eb <main+0x4d8>
 6eb:	ff d0                	call   *%rax
 6ed:	48 89 c2             	mov    %rax,%rdx
 6f0:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
 6f4:	49 89 d0             	mov    %rdx,%r8
 6f7:	ba 40 00 00 00       	mov    $0x40,%edx
 6fc:	48 89 c1             	mov    %rax,%rcx
 6ff:	e8 00 00 00 00       	call   704 <main+0x4f1>
 704:	48 85 c0             	test   %rax,%rax
 707:	0f 84 3e 01 00 00    	je     84b <main+0x638>
 70d:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
 711:	48 89 c1             	mov    %rax,%rcx
 714:	e8 00 00 00 00       	call   719 <main+0x506>
 719:	89 85 3c 01 00 00    	mov    %eax,0x13c(%rbp)
 71f:	83 bd 3c 01 00 00 00 	cmpl   $0x0,0x13c(%rbp)
 726:	7f 14                	jg     73c <main+0x529>
 728:	48 8d 05 7c 03 00 00 	lea    0x37c(%rip),%rax        # aab <main+0x898>
 72f:	48 89 c1             	mov    %rax,%rcx
 732:	e8 00 00 00 00       	call   737 <main+0x524>
 737:	e9 1c 01 00 00       	jmp    858 <main+0x645>
 73c:	48 8b 85 40 01 00 00 	mov    0x140(%rbp),%rax
 743:	8b 80 c0 00 00 00    	mov    0xc0(%rax),%eax
 749:	39 85 3c 01 00 00    	cmp    %eax,0x13c(%rbp)
 74f:	7e 14                	jle    765 <main+0x552>
 751:	48 8d 05 98 03 00 00 	lea    0x398(%rip),%rax        # af0 <main+0x8dd>
 758:	48 89 c1             	mov    %rax,%rcx
 75b:	e8 00 00 00 00       	call   760 <main+0x54d>
 760:	e9 f3 00 00 00       	jmp    858 <main+0x645>
 765:	48 8b 85 98 01 00 00 	mov    0x198(%rbp),%rax
 76c:	48 3b 85 90 01 00 00 	cmp    0x190(%rbp),%rax
 773:	0f 85 83 00 00 00    	jne    7fc <main+0x5e9>
 779:	48 83 bd 90 01 00 00 	cmpq   $0x0,0x190(%rbp)
 780:	00 
 781:	74 09                	je     78c <main+0x579>
 783:	48 d1 a5 90 01 00 00 	shlq   $1,0x190(%rbp)
 78a:	eb 0b                	jmp    797 <main+0x584>
 78c:	48 c7 85 90 01 00 00 	movq   $0x8,0x190(%rbp)
 793:	08 00 00 00 
 797:	48 8b 85 90 01 00 00 	mov    0x190(%rbp),%rax
 79e:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 7a5:	00 
 7a6:	48 8b 85 a0 01 00 00 	mov    0x1a0(%rbp),%rax
 7ad:	48 89 c1             	mov    %rax,%rcx
 7b0:	e8 00 00 00 00       	call   7b5 <main+0x5a2>
 7b5:	48 89 85 30 01 00 00 	mov    %rax,0x130(%rbp)
 7bc:	48 83 bd 30 01 00 00 	cmpq   $0x0,0x130(%rbp)
 7c3:	00 
 7c4:	75 28                	jne    7ee <main+0x5db>
 7c6:	48 8d 05 bc 03 00 00 	lea    0x3bc(%rip),%rax        # b89 <main+0x976>
 7cd:	48 89 c1             	mov    %rax,%rcx
 7d0:	e8 00 00 00 00       	call   7d5 <main+0x5c2>
 7d5:	48 8b 85 f0 00 00 00 	mov    0xf0(%rbp),%rax
 7dc:	48 89 c1             	mov    %rax,%rcx
 7df:	e8 00 00 00 00       	call   7e4 <main+0x5d1>
 7e4:	b8 01 00 00 00       	mov    $0x1,%eax
 7e9:	e9 66 05 00 00       	jmp    d54 <main+0xb41>
 7ee:	48 8b 85 30 01 00 00 	mov    0x130(%rbp),%rax
 7f5:	48 89 85 a0 01 00 00 	mov    %rax,0x1a0(%rbp)
 7fc:	48 8b 85 98 01 00 00 	mov    0x198(%rbp),%rax
 803:	48 8d 50 01          	lea    0x1(%rax),%rdx
 807:	48 89 95 98 01 00 00 	mov    %rdx,0x198(%rbp)
 80e:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 815:	00 
 816:	48 8b 85 a0 01 00 00 	mov    0x1a0(%rbp),%rax
 81d:	48 01 d0             	add    %rdx,%rax
 820:	8b 95 4c 01 00 00    	mov    0x14c(%rbp),%edx
 826:	89 10                	mov    %edx,(%rax)
 828:	8b 95 3c 01 00 00    	mov    0x13c(%rbp),%edx
 82e:	89 50 04             	mov    %edx,0x4(%rax)
 831:	48 8d 05 d9 03 00 00 	lea    0x3d9(%rip),%rax        # c11 <main+0x9fe>
 838:	48 89 c1             	mov    %rax,%rcx
 83b:	e8 00 00 00 00       	call   840 <main+0x62d>
 840:	e9 20 fd ff ff       	jmp    565 <main+0x352>
 845:	90                   	nop
 846:	eb 04                	jmp    84c <main+0x639>
 848:	90                   	nop
 849:	eb 01                	jmp    84c <main+0x639>
 84b:	90                   	nop
 84c:	48 83 bd 98 01 00 00 	cmpq   $0x0,0x198(%rbp)
 853:	00 
 854:	74 07                	je     85d <main+0x64a>
 856:	eb 2d                	jmp    885 <main+0x672>
 858:	e9 08 fd ff ff       	jmp    565 <main+0x352>
 85d:	48 8d 05 f8 03 00 00 	lea    0x3f8(%rip),%rax        # c5c <main+0xa49>
 864:	48 89 c1             	mov    %rax,%rcx
 867:	e8 00 00 00 00       	call   86c <main+0x659>
 86c:	48 8b 85 f0 00 00 00 	mov    0xf0(%rbp),%rax
 873:	48 89 c1             	mov    %rax,%rcx
 876:	e8 00 00 00 00       	call   87b <main+0x668>
 87b:	b8 00 00 00 00       	mov    $0x0,%eax
 880:	e9 cf 04 00 00       	jmp    d54 <main+0xb41>
 885:	48 8d 05 30 04 00 00 	lea    0x430(%rip),%rax        # cbc <main+0xaa9>
 88c:	48 89 c1             	mov    %rax,%rcx
 88f:	e8 00 00 00 00       	call   894 <main+0x681>
 894:	4c 8d 0d 62 04 00 00 	lea    0x462(%rip),%r9        # cfd <main+0xaea>
 89b:	4c 8d 05 67 04 00 00 	lea    0x467(%rip),%r8        # d09 <main+0xaf6>
 8a2:	48 8d 15 6e 04 00 00 	lea    0x46e(%rip),%rdx        # d17 <main+0xb04>
 8a9:	48 8d 05 77 04 00 00 	lea    0x477(%rip),%rax        # d27 <main+0xb14>
 8b0:	48 8d 0d 95 04 00 00 	lea    0x495(%rip),%rcx        # d4c <main+0xb39>
 8b7:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
 8bc:	48 8d 0d 9e 04 00 00 	lea    0x49e(%rip),%rcx        # d61 <main+0xb4e>
 8c3:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
 8c8:	48 89 c1             	mov    %rax,%rcx
 8cb:	e8 00 00 00 00       	call   8d0 <main+0x6bd>
 8d0:	48 8d 05 a8 04 00 00 	lea    0x4a8(%rip),%rax        # d7f <main+0xb6c>
 8d7:	48 89 c1             	mov    %rax,%rcx
 8da:	e8 00 00 00 00       	call   8df <main+0x6cc>
 8df:	66 0f ef c0          	pxor   %xmm0,%xmm0
 8e3:	f2 0f 11 85 88 01 00 	movsd  %xmm0,0x188(%rbp)
 8ea:	00 
 8eb:	48 c7 85 80 01 00 00 	movq   $0x0,0x180(%rbp)
 8f2:	00 00 00 00 
 8f6:	e9 fb 00 00 00       	jmp    9f6 <main+0x7e3>
 8fb:	48 8b 95 f0 00 00 00 	mov    0xf0(%rbp),%rdx
 902:	48 8b 85 80 01 00 00 	mov    0x180(%rbp),%rax
 909:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
 910:	00 
 911:	48 8b 85 a0 01 00 00 	mov    0x1a0(%rbp),%rax
 918:	48 01 c8             	add    %rcx,%rax
 91b:	8b 00                	mov    (%rax),%eax
 91d:	48 98                	cltq
 91f:	48 69 c0 d8 00 00 00 	imul   $0xd8,%rax,%rax
 926:	48 01 d0             	add    %rdx,%rax
 929:	48 89 85 18 01 00 00 	mov    %rax,0x118(%rbp)
 930:	48 8b 85 18 01 00 00 	mov    0x118(%rbp),%rax
 937:	f2 0f 10 88 d0 00 00 	movsd  0xd0(%rax),%xmm1
 93e:	00 
 93f:	48 8b 85 80 01 00 00 	mov    0x180(%rbp),%rax
 946:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 94d:	00 
 94e:	48 8b 85 a0 01 00 00 	mov    0x1a0(%rbp),%rax
 955:	48 01 d0             	add    %rdx,%rax
 958:	8b 40 04             	mov    0x4(%rax),%eax
 95b:	66 0f ef c0          	pxor   %xmm0,%xmm0
 95f:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
 963:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
 967:	f2 0f 11 85 10 01 00 	movsd  %xmm0,0x110(%rbp)
 96e:	00 
 96f:	f2 0f 10 85 88 01 00 	movsd  0x188(%rbp),%xmm0
 976:	00 
 977:	f2 0f 58 85 10 01 00 	addsd  0x110(%rbp),%xmm0
 97e:	00 
 97f:	f2 0f 11 85 88 01 00 	movsd  %xmm0,0x188(%rbp)
 986:	00 
 987:	48 8b 85 18 01 00 00 	mov    0x118(%rbp),%rax
 98e:	f2 0f 10 80 d0 00 00 	movsd  0xd0(%rax),%xmm0
 995:	00 
 996:	48 8b 85 80 01 00 00 	mov    0x180(%rbp),%rax
 99d:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 9a4:	00 
 9a5:	48 8b 85 a0 01 00 00 	mov    0x1a0(%rbp),%rax
 9ac:	48 01 d0             	add    %rdx,%rax
 9af:	44 8b 40 04          	mov    0x4(%rax),%r8d
 9b3:	48 8b 8d 18 01 00 00 	mov    0x118(%rbp),%rcx
 9ba:	48 8b 85 18 01 00 00 	mov    0x118(%rbp),%rax
 9c1:	48 8d 50 40          	lea    0x40(%rax),%rdx
 9c5:	48 8d 05 e8 04 00 00 	lea    0x4e8(%rip),%rax        # eb4 <main+0xca1>
 9cc:	f2 0f 10 8d 10 01 00 	movsd  0x110(%rbp),%xmm1
 9d3:	00 
 9d4:	f2 0f 11 4c 24 28    	movsd  %xmm1,0x28(%rsp)
 9da:	f2 0f 11 44 24 20    	movsd  %xmm0,0x20(%rsp)
 9e0:	45 89 c1             	mov    %r8d,%r9d
 9e3:	49 89 c8             	mov    %rcx,%r8
 9e6:	48 89 c1             	mov    %rax,%rcx
 9e9:	e8 00 00 00 00       	call   9ee <main+0x7db>
 9ee:	48 83 85 80 01 00 00 	addq   $0x1,0x180(%rbp)
 9f5:	01 
 9f6:	48 8b 85 80 01 00 00 	mov    0x180(%rbp),%rax
 9fd:	48 3b 85 98 01 00 00 	cmp    0x198(%rbp),%rax
 a04:	0f 82 f1 fe ff ff    	jb     8fb <main+0x6e8>
 a0a:	48 8d 05 a8 04 00 00 	lea    0x4a8(%rip),%rax        # eb9 <main+0xca6>
 a11:	48 89 c1             	mov    %rax,%rcx
 a14:	e8 00 00 00 00       	call   a19 <main+0x806>
 a19:	f2 0f 10 85 88 01 00 	movsd  0x188(%rbp),%xmm0
 a20:	00 
 a21:	48 8b 95 88 01 00 00 	mov    0x188(%rbp),%rdx
 a28:	48 8d 05 0a 05 00 00 	lea    0x50a(%rip),%rax        # f39 <main+0xd26>
 a2f:	66 0f 28 c8          	movapd %xmm0,%xmm1
 a33:	48 89 c1             	mov    %rax,%rcx
 a36:	e8 00 00 00 00       	call   a3b <main+0x828>
 a3b:	48 8d 05 18 05 00 00 	lea    0x518(%rip),%rax        # f5a <main+0xd47>
 a42:	48 89 c1             	mov    %rax,%rcx
 a45:	e8 00 00 00 00       	call   a4a <main+0x837>
 a4a:	48 8d 05 58 05 00 00 	lea    0x558(%rip),%rax        # fa9 <main+0xd96>
 a51:	48 89 c1             	mov    %rax,%rcx
 a54:	e8 00 00 00 00       	call   a59 <main+0x846>
 a59:	b9 00 00 00 00       	mov    $0x0,%ecx
 a5e:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # a65 <main+0x852>
 a65:	ff d0                	call   *%rax
 a67:	48 89 c2             	mov    %rax,%rdx
 a6a:	48 8d 85 d5 00 00 00 	lea    0xd5(%rbp),%rax
 a71:	49 89 d0             	mov    %rdx,%r8
 a74:	ba 08 00 00 00       	mov    $0x8,%edx
 a79:	48 89 c1             	mov    %rax,%rcx
 a7c:	e8 00 00 00 00       	call   a81 <main+0x86e>
 a81:	48 85 c0             	test   %rax,%rax
 a84:	74 16                	je     a9c <main+0x889>
 a86:	0f b6 85 d5 00 00 00 	movzbl 0xd5(%rbp),%eax
 a8d:	3c 73                	cmp    $0x73,%al
 a8f:	74 42                	je     ad3 <main+0x8c0>
 a91:	0f b6 85 d5 00 00 00 	movzbl 0xd5(%rbp),%eax
 a98:	3c 53                	cmp    $0x53,%al
 a9a:	74 37                	je     ad3 <main+0x8c0>
 a9c:	48 8d 05 73 05 00 00 	lea    0x573(%rip),%rax        # 1016 <main+0xe03>
 aa3:	48 89 c1             	mov    %rax,%rcx
 aa6:	e8 00 00 00 00       	call   aab <main+0x898>
 aab:	48 8b 85 f0 00 00 00 	mov    0xf0(%rbp),%rax
 ab2:	48 89 c1             	mov    %rax,%rcx
 ab5:	e8 00 00 00 00       	call   aba <main+0x8a7>
 aba:	48 8b 85 a0 01 00 00 	mov    0x1a0(%rbp),%rax
 ac1:	48 89 c1             	mov    %rax,%rcx
 ac4:	e8 00 00 00 00       	call   ac9 <main+0x8b6>
 ac9:	b8 00 00 00 00       	mov    $0x0,%eax
 ace:	e9 81 02 00 00       	jmp    d54 <main+0xb41>
 ad3:	48 c7 85 78 01 00 00 	movq   $0x0,0x178(%rbp)
 ada:	00 00 00 00 
 ade:	e9 8f 00 00 00       	jmp    b72 <main+0x95f>
 ae3:	48 8b 95 f0 00 00 00 	mov    0xf0(%rbp),%rdx
 aea:	48 8b 85 78 01 00 00 	mov    0x178(%rbp),%rax
 af1:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
 af8:	00 
 af9:	48 8b 85 a0 01 00 00 	mov    0x1a0(%rbp),%rax
 b00:	48 01 c8             	add    %rcx,%rax
 b03:	8b 00                	mov    (%rax),%eax
 b05:	48 98                	cltq
 b07:	48 69 c0 d8 00 00 00 	imul   $0xd8,%rax,%rax
 b0e:	48 01 d0             	add    %rdx,%rax
 b11:	8b 88 c0 00 00 00    	mov    0xc0(%rax),%ecx
 b17:	48 8b 85 78 01 00 00 	mov    0x178(%rbp),%rax
 b1e:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 b25:	00 
 b26:	48 8b 85 a0 01 00 00 	mov    0x1a0(%rbp),%rax
 b2d:	48 01 d0             	add    %rdx,%rax
 b30:	8b 40 04             	mov    0x4(%rax),%eax
 b33:	4c 8b 85 f0 00 00 00 	mov    0xf0(%rbp),%r8
 b3a:	48 8b 95 78 01 00 00 	mov    0x178(%rbp),%rdx
 b41:	4c 8d 0c d5 00 00 00 	lea    0x0(,%rdx,8),%r9
 b48:	00 
 b49:	48 8b 95 a0 01 00 00 	mov    0x1a0(%rbp),%rdx
 b50:	4c 01 ca             	add    %r9,%rdx
 b53:	8b 12                	mov    (%rdx),%edx
 b55:	48 63 d2             	movslq %edx,%rdx
 b58:	48 69 d2 d8 00 00 00 	imul   $0xd8,%rdx,%rdx
 b5f:	4c 01 c2             	add    %r8,%rdx
 b62:	29 c1                	sub    %eax,%ecx
 b64:	89 8a c0 00 00 00    	mov    %ecx,0xc0(%rdx)
 b6a:	48 83 85 78 01 00 00 	addq   $0x1,0x178(%rbp)
 b71:	01 
 b72:	48 8b 85 78 01 00 00 	mov    0x178(%rbp),%rax
 b79:	48 3b 85 98 01 00 00 	cmp    0x198(%rbp),%rax
 b80:	0f 82 5d ff ff ff    	jb     ae3 <main+0x8d0>
 b86:	48 8b 8d e8 00 00 00 	mov    0xe8(%rbp),%rcx
 b8d:	48 8b 95 f0 00 00 00 	mov    0xf0(%rbp),%rdx
 b94:	48 8b 85 60 01 00 00 	mov    0x160(%rbp),%rax
 b9b:	49 89 c8             	mov    %rcx,%r8
 b9e:	48 89 c1             	mov    %rax,%rcx
 ba1:	e8 00 00 00 00       	call   ba6 <main+0x993>
 ba6:	48 8d 15 8c 05 00 00 	lea    0x58c(%rip),%rdx        # 1139 <main+0xf26>
 bad:	48 8b 85 58 01 00 00 	mov    0x158(%rbp),%rax
 bb4:	48 89 c1             	mov    %rax,%rcx
 bb7:	e8 00 00 00 00       	call   bbc <main+0x9a9>
 bbc:	48 89 85 28 01 00 00 	mov    %rax,0x128(%rbp)
 bc3:	48 83 bd 28 01 00 00 	cmpq   $0x0,0x128(%rbp)
 bca:	00 
 bcb:	75 37                	jne    c04 <main+0x9f1>
 bcd:	48 8d 05 8e 05 00 00 	lea    0x58e(%rip),%rax        # 1162 <main+0xf4f>
 bd4:	48 89 c1             	mov    %rax,%rcx
 bd7:	e8 00 00 00 00       	call   bdc <main+0x9c9>
 bdc:	48 8b 85 f0 00 00 00 	mov    0xf0(%rbp),%rax
 be3:	48 89 c1             	mov    %rax,%rcx
 be6:	e8 00 00 00 00       	call   beb <main+0x9d8>
 beb:	48 8b 85 a0 01 00 00 	mov    0x1a0(%rbp),%rax
 bf2:	48 89 c1             	mov    %rax,%rcx
 bf5:	e8 00 00 00 00       	call   bfa <main+0x9e7>
 bfa:	b8 01 00 00 00       	mov    $0x1,%eax
 bff:	e9 50 01 00 00       	jmp    d54 <main+0xb41>
 c04:	48 c7 85 70 01 00 00 	movq   $0x0,0x170(%rbp)
 c0b:	00 00 00 00 
 c0f:	e9 cd 00 00 00       	jmp    ce1 <main+0xace>
 c14:	48 8b 95 f0 00 00 00 	mov    0xf0(%rbp),%rdx
 c1b:	48 8b 85 70 01 00 00 	mov    0x170(%rbp),%rax
 c22:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
 c29:	00 
 c2a:	48 8b 85 a0 01 00 00 	mov    0x1a0(%rbp),%rax
 c31:	48 01 c8             	add    %rcx,%rax
 c34:	8b 00                	mov    (%rax),%eax
 c36:	48 98                	cltq
 c38:	48 69 c0 d8 00 00 00 	imul   $0xd8,%rax,%rax
 c3f:	48 01 d0             	add    %rdx,%rax
 c42:	48 89 85 20 01 00 00 	mov    %rax,0x120(%rbp)
 c49:	48 8b 85 20 01 00 00 	mov    0x120(%rbp),%rax
 c50:	f2 0f 10 88 d0 00 00 	movsd  0xd0(%rax),%xmm1
 c57:	00 
 c58:	48 8b 85 20 01 00 00 	mov    0x120(%rbp),%rax
 c5f:	f2 0f 10 80 c8 00 00 	movsd  0xc8(%rax),%xmm0
 c66:	00 
 c67:	48 8b 85 70 01 00 00 	mov    0x170(%rbp),%rax
 c6e:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 c75:	00 
 c76:	48 8b 85 a0 01 00 00 	mov    0x1a0(%rbp),%rax
 c7d:	48 01 d0             	add    %rdx,%rax
 c80:	8b 48 04             	mov    0x4(%rax),%ecx
 c83:	48 8b 85 20 01 00 00 	mov    0x120(%rbp),%rax
 c8a:	4c 8d 48 40          	lea    0x40(%rax),%r9
 c8e:	4c 8b 9d 20 01 00 00 	mov    0x120(%rbp),%r11
 c95:	44 8b 95 50 01 00 00 	mov    0x150(%rbp),%r10d
 c9c:	48 8d 15 a8 05 00 00 	lea    0x5a8(%rip),%rdx        # 124b <main+0x1038>
 ca3:	48 8b 85 28 01 00 00 	mov    0x128(%rbp),%rax
 caa:	4c 8d 85 dd 00 00 00 	lea    0xdd(%rbp),%r8
 cb1:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
 cb6:	f2 0f 11 4c 24 38    	movsd  %xmm1,0x38(%rsp)
 cbc:	f2 0f 11 44 24 30    	movsd  %xmm0,0x30(%rsp)
 cc2:	89 4c 24 28          	mov    %ecx,0x28(%rsp)
 cc6:	4c 89 4c 24 20       	mov    %r9,0x20(%rsp)
 ccb:	4d 89 d9             	mov    %r11,%r9
 cce:	45 89 d0             	mov    %r10d,%r8d
 cd1:	48 89 c1             	mov    %rax,%rcx
 cd4:	e8 00 00 00 00       	call   cd9 <main+0xac6>
 cd9:	48 83 85 70 01 00 00 	addq   $0x1,0x170(%rbp)
 ce0:	01 
 ce1:	48 8b 85 70 01 00 00 	mov    0x170(%rbp),%rax
 ce8:	48 3b 85 98 01 00 00 	cmp    0x198(%rbp),%rax
 cef:	0f 82 1f ff ff ff    	jb     c14 <main+0xa01>
 cf5:	48 8b 85 28 01 00 00 	mov    0x128(%rbp),%rax
 cfc:	48 89 c1             	mov    %rax,%rcx
 cff:	e8 00 00 00 00       	call   d04 <main+0xaf1>
 d04:	48 8d 05 c8 05 00 00 	lea    0x5c8(%rip),%rax        # 12d3 <main+0x10c0>
 d0b:	48 89 c1             	mov    %rax,%rcx
 d0e:	e8 00 00 00 00       	call   d13 <main+0xb00>
 d13:	48 8d 05 f8 05 00 00 	lea    0x5f8(%rip),%rax        # 1312 <main+0x10ff>
 d1a:	48 89 c1             	mov    %rax,%rcx
 d1d:	e8 00 00 00 00       	call   d22 <main+0xb0f>
 d22:	48 8d 05 18 06 00 00 	lea    0x618(%rip),%rax        # 1341 <main+0x112e>
 d29:	48 89 c1             	mov    %rax,%rcx
 d2c:	e8 00 00 00 00       	call   d31 <main+0xb1e>
 d31:	48 8b 85 f0 00 00 00 	mov    0xf0(%rbp),%rax
 d38:	48 89 c1             	mov    %rax,%rcx
 d3b:	e8 00 00 00 00       	call   d40 <main+0xb2d>
 d40:	48 8b 85 a0 01 00 00 	mov    0x1a0(%rbp),%rax
 d47:	48 89 c1             	mov    %rax,%rcx
 d4a:	e8 00 00 00 00       	call   d4f <main+0xb3c>
 d4f:	b8 00 00 00 00       	mov    $0x0,%eax
 d54:	48 81 c4 30 02 00 00 	add    $0x230,%rsp
 d5b:	5d                   	pop    %rbp
 d5c:	c3                   	ret
 d5d:	90                   	nop
 d5e:	90                   	nop
 d5f:	90                   	nop
