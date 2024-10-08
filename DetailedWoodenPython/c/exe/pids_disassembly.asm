
./DetailedWoodenPython/c/exe/pids:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 2f 00 00 	mov    0x2fe9(%rip),%rax        # 403ff8 <__gmon_start__@Base>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	callq  *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	retq   

Disassembly of section .plt:

0000000000401020 <puts@plt-0x10>:
  401020:	ff 35 92 2f 00 00    	pushq  0x2f92(%rip)        # 403fb8 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 94 2f 00 00    	jmpq   *0x2f94(%rip)        # 403fc0 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <puts@plt>:
  401030:	ff 25 92 2f 00 00    	jmpq   *0x2f92(%rip)        # 403fc8 <puts@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	pushq  $0x0
  40103b:	e9 e0 ff ff ff       	jmpq   401020 <_init+0x20>

0000000000401040 <getpid@plt>:
  401040:	ff 25 8a 2f 00 00    	jmpq   *0x2f8a(%rip)        # 403fd0 <getpid@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	pushq  $0x1
  40104b:	e9 d0 ff ff ff       	jmpq   401020 <_init+0x20>

0000000000401050 <__printf_chk@plt>:
  401050:	ff 25 82 2f 00 00    	jmpq   *0x2f82(%rip)        # 403fd8 <__printf_chk@GLIBC_2.3.4>
  401056:	68 02 00 00 00       	pushq  $0x2
  40105b:	e9 c0 ff ff ff       	jmpq   401020 <_init+0x20>

0000000000401060 <wait@plt>:
  401060:	ff 25 7a 2f 00 00    	jmpq   *0x2f7a(%rip)        # 403fe0 <wait@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	pushq  $0x3
  40106b:	e9 b0 ff ff ff       	jmpq   401020 <_init+0x20>

0000000000401070 <fork@plt>:
  401070:	ff 25 72 2f 00 00    	jmpq   *0x2f72(%rip)        # 403fe8 <fork@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	pushq  $0x4
  40107b:	e9 a0 ff ff ff       	jmpq   401020 <_init+0x20>

Disassembly of section .text:

0000000000401080 <main>:
  401080:	41 55                	push   %r13
  401082:	41 54                	push   %r12
  401084:	48 83 ec 08          	sub    $0x8,%rsp
  401088:	e8 e3 ff ff ff       	callq  401070 <fork@plt>
  40108d:	85 c0                	test   %eax,%eax
  40108f:	0f 88 84 00 00 00    	js     401119 <main+0x99>
  401095:	41 89 c4             	mov    %eax,%r12d
  401098:	74 4a                	je     4010e4 <main+0x64>
  40109a:	e8 a1 ff ff ff       	callq  401040 <getpid@plt>
  40109f:	44 89 e2             	mov    %r12d,%edx
  4010a2:	bf 01 00 00 00       	mov    $0x1,%edi
  4010a7:	45 31 e4             	xor    %r12d,%r12d
  4010aa:	41 89 c5             	mov    %eax,%r13d
  4010ad:	48 8d 35 7a 0f 00 00 	lea    0xf7a(%rip),%rsi        # 40202e <_IO_stdin_used+0x2e>
  4010b4:	31 c0                	xor    %eax,%eax
  4010b6:	e8 95 ff ff ff       	callq  401050 <__printf_chk@plt>
  4010bb:	44 89 ea             	mov    %r13d,%edx
  4010be:	bf 01 00 00 00       	mov    $0x1,%edi
  4010c3:	31 c0                	xor    %eax,%eax
  4010c5:	48 8d 35 72 0f 00 00 	lea    0xf72(%rip),%rsi        # 40203e <_IO_stdin_used+0x3e>
  4010cc:	e8 7f ff ff ff       	callq  401050 <__printf_chk@plt>
  4010d1:	31 ff                	xor    %edi,%edi
  4010d3:	e8 88 ff ff ff       	callq  401060 <wait@plt>
  4010d8:	48 83 c4 08          	add    $0x8,%rsp
  4010dc:	44 89 e0             	mov    %r12d,%eax
  4010df:	41 5c                	pop    %r12
  4010e1:	41 5d                	pop    %r13
  4010e3:	c3                   	retq   
  4010e4:	e8 57 ff ff ff       	callq  401040 <getpid@plt>
  4010e9:	31 d2                	xor    %edx,%edx
  4010eb:	bf 01 00 00 00       	mov    $0x1,%edi
  4010f0:	48 8d 35 18 0f 00 00 	lea    0xf18(%rip),%rsi        # 40200f <_IO_stdin_used+0xf>
  4010f7:	41 89 c5             	mov    %eax,%r13d
  4010fa:	31 c0                	xor    %eax,%eax
  4010fc:	e8 4f ff ff ff       	callq  401050 <__printf_chk@plt>
  401101:	44 89 ea             	mov    %r13d,%edx
  401104:	bf 01 00 00 00       	mov    $0x1,%edi
  401109:	31 c0                	xor    %eax,%eax
  40110b:	48 8d 35 0c 0f 00 00 	lea    0xf0c(%rip),%rsi        # 40201e <_IO_stdin_used+0x1e>
  401112:	e8 39 ff ff ff       	callq  401050 <__printf_chk@plt>
  401117:	eb bf                	jmp    4010d8 <main+0x58>
  401119:	48 8d 3d e4 0e 00 00 	lea    0xee4(%rip),%rdi        # 402004 <_IO_stdin_used+0x4>
  401120:	41 83 cc ff          	or     $0xffffffff,%r12d
  401124:	e8 07 ff ff ff       	callq  401030 <puts@plt>
  401129:	eb ad                	jmp    4010d8 <main+0x58>
  40112b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401130 <_start>:
  401130:	f3 0f 1e fa          	endbr64 
  401134:	31 ed                	xor    %ebp,%ebp
  401136:	49 89 d1             	mov    %rdx,%r9
  401139:	5e                   	pop    %rsi
  40113a:	48 89 e2             	mov    %rsp,%rdx
  40113d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401141:	50                   	push   %rax
  401142:	54                   	push   %rsp
  401143:	45 31 c0             	xor    %r8d,%r8d
  401146:	31 c9                	xor    %ecx,%ecx
  401148:	48 c7 c7 80 10 40 00 	mov    $0x401080,%rdi
  40114f:	ff 15 9b 2e 00 00    	callq  *0x2e9b(%rip)        # 403ff0 <__libc_start_main@GLIBC_2.34>
  401155:	f4                   	hlt    
  401156:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40115d:	00 00 00 

0000000000401160 <_dl_relocate_static_pie>:
  401160:	f3 0f 1e fa          	endbr64 
  401164:	c3                   	retq   
  401165:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40116c:	00 00 00 
  40116f:	90                   	nop

0000000000401170 <deregister_tm_clones>:
  401170:	b8 10 40 40 00       	mov    $0x404010,%eax
  401175:	48 3d 10 40 40 00    	cmp    $0x404010,%rax
  40117b:	74 13                	je     401190 <deregister_tm_clones+0x20>
  40117d:	b8 00 00 00 00       	mov    $0x0,%eax
  401182:	48 85 c0             	test   %rax,%rax
  401185:	74 09                	je     401190 <deregister_tm_clones+0x20>
  401187:	bf 10 40 40 00       	mov    $0x404010,%edi
  40118c:	ff e0                	jmpq   *%rax
  40118e:	66 90                	xchg   %ax,%ax
  401190:	c3                   	retq   
  401191:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401198:	00 00 00 00 
  40119c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004011a0 <register_tm_clones>:
  4011a0:	be 10 40 40 00       	mov    $0x404010,%esi
  4011a5:	48 81 ee 10 40 40 00 	sub    $0x404010,%rsi
  4011ac:	48 89 f0             	mov    %rsi,%rax
  4011af:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4011b3:	48 c1 f8 03          	sar    $0x3,%rax
  4011b7:	48 01 c6             	add    %rax,%rsi
  4011ba:	48 d1 fe             	sar    %rsi
  4011bd:	74 11                	je     4011d0 <register_tm_clones+0x30>
  4011bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4011c4:	48 85 c0             	test   %rax,%rax
  4011c7:	74 07                	je     4011d0 <register_tm_clones+0x30>
  4011c9:	bf 10 40 40 00       	mov    $0x404010,%edi
  4011ce:	ff e0                	jmpq   *%rax
  4011d0:	c3                   	retq   
  4011d1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4011d8:	00 00 00 00 
  4011dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004011e0 <__do_global_dtors_aux>:
  4011e0:	f3 0f 1e fa          	endbr64 
  4011e4:	80 3d 25 2e 00 00 00 	cmpb   $0x0,0x2e25(%rip)        # 404010 <__TMC_END__>
  4011eb:	75 13                	jne    401200 <__do_global_dtors_aux+0x20>
  4011ed:	55                   	push   %rbp
  4011ee:	48 89 e5             	mov    %rsp,%rbp
  4011f1:	e8 7a ff ff ff       	callq  401170 <deregister_tm_clones>
  4011f6:	c6 05 13 2e 00 00 01 	movb   $0x1,0x2e13(%rip)        # 404010 <__TMC_END__>
  4011fd:	5d                   	pop    %rbp
  4011fe:	c3                   	retq   
  4011ff:	90                   	nop
  401200:	c3                   	retq   
  401201:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401208:	00 00 00 00 
  40120c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401210 <frame_dummy>:
  401210:	f3 0f 1e fa          	endbr64 
  401214:	eb 8a                	jmp    4011a0 <register_tm_clones>

Disassembly of section .fini:

0000000000401218 <_fini>:
  401218:	f3 0f 1e fa          	endbr64 
  40121c:	48 83 ec 08          	sub    $0x8,%rsp
  401220:	48 83 c4 08          	add    $0x8,%rsp
  401224:	c3                   	retq   
