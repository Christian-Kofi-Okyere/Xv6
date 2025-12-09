
_usertests:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return randstate;
}

int
main(int argc, char *argv[])
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	push   -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	51                   	push   %ecx
       e:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "usertests starting\n");
      11:	68 d6 4d 00 00       	push   $0x4dd6
      16:	6a 01                	push   $0x1
      18:	e8 63 3a 00 00       	call   3a80 <printf>

  if(open("usertests.ran", 0) >= 0){
      1d:	59                   	pop    %ecx
      1e:	58                   	pop    %eax
      1f:	6a 00                	push   $0x0
      21:	68 ea 4d 00 00       	push   $0x4dea
      26:	e8 08 39 00 00       	call   3933 <open>
      2b:	83 c4 10             	add    $0x10,%esp
      2e:	85 c0                	test   %eax,%eax
      30:	78 13                	js     45 <main+0x45>
    printf(1, "already ran user tests -- rebuild fs.img\n");
      32:	52                   	push   %edx
      33:	52                   	push   %edx
      34:	68 5c 55 00 00       	push   $0x555c
      39:	6a 01                	push   $0x1
      3b:	e8 40 3a 00 00       	call   3a80 <printf>
    exit();
      40:	e8 ae 38 00 00       	call   38f3 <exit>
  }
  close(open("usertests.ran", O_CREATE));
      45:	50                   	push   %eax
      46:	50                   	push   %eax
      47:	68 00 02 00 00       	push   $0x200
      4c:	68 ea 4d 00 00       	push   $0x4dea
      51:	e8 dd 38 00 00       	call   3933 <open>
      56:	89 04 24             	mov    %eax,(%esp)
      59:	e8 bd 38 00 00       	call   391b <close>

  argptest();
      5e:	e8 ad 35 00 00       	call   3610 <argptest>
  createdelete();
      63:	e8 a8 11 00 00       	call   1210 <createdelete>
  linkunlink();
      68:	e8 53 1a 00 00       	call   1ac0 <linkunlink>
  concreate();
      6d:	e8 4e 17 00 00       	call   17c0 <concreate>
  fourfiles();
      72:	e8 a9 0f 00 00       	call   1020 <fourfiles>
  sharedfd();
      77:	e8 e4 0d 00 00       	call   e60 <sharedfd>

  bigargtest();
      7c:	e8 2f 32 00 00       	call   32b0 <bigargtest>
  bigwrite();
      81:	e8 5a 23 00 00       	call   23e0 <bigwrite>
  bigargtest();
      86:	e8 25 32 00 00       	call   32b0 <bigargtest>
  bsstest();
      8b:	e8 a0 31 00 00       	call   3230 <bsstest>
  sbrktest();
      90:	e8 9b 2c 00 00       	call   2d30 <sbrktest>
  validatetest();
      95:	e8 e6 30 00 00       	call   3180 <validatetest>

  opentest();
      9a:	e8 61 03 00 00       	call   400 <opentest>
  writetest();
      9f:	e8 ec 03 00 00       	call   490 <writetest>
  writetest1();
      a4:	e8 b7 05 00 00       	call   660 <writetest1>
  createtest();
      a9:	e8 82 07 00 00       	call   830 <createtest>

  openiputtest();
      ae:	e8 4d 02 00 00       	call   300 <openiputtest>
  exitiputtest();
      b3:	e8 48 01 00 00       	call   200 <exitiputtest>
  iputtest();
      b8:	e8 63 00 00 00       	call   120 <iputtest>

  mem();
      bd:	e8 ce 0c 00 00       	call   d90 <mem>
  pipe1();
      c2:	e8 49 09 00 00       	call   a10 <pipe1>
  preempt();
      c7:	e8 e4 0a 00 00       	call   bb0 <preempt>
  exitwait();
      cc:	e8 3f 0c 00 00       	call   d10 <exitwait>

  rmdot();
      d1:	e8 0a 27 00 00       	call   27e0 <rmdot>
  fourteen();
      d6:	e8 c5 25 00 00       	call   26a0 <fourteen>
  bigfile();
      db:	e8 e0 23 00 00       	call   24c0 <bigfile>
  subdir();
      e0:	e8 1b 1c 00 00       	call   1d00 <subdir>
  linktest();
      e5:	e8 c6 14 00 00       	call   15b0 <linktest>
  unlinkread();
      ea:	e8 31 13 00 00       	call   1420 <unlinkread>
  dirfile();
      ef:	e8 6c 28 00 00       	call   2960 <dirfile>
  iref();
      f4:	e8 67 2a 00 00       	call   2b60 <iref>
  forktest();
      f9:	e8 82 2b 00 00       	call   2c80 <forktest>
  bigdir(); // slow
      fe:	e8 cd 1a 00 00       	call   1bd0 <bigdir>

  uio();
     103:	e8 98 34 00 00       	call   35a0 <uio>

  exectest();
     108:	e8 b3 08 00 00       	call   9c0 <exectest>

  exit();
     10d:	e8 e1 37 00 00       	call   38f3 <exit>
     112:	66 90                	xchg   %ax,%ax
     114:	66 90                	xchg   %ax,%ax
     116:	66 90                	xchg   %ax,%ax
     118:	66 90                	xchg   %ax,%ax
     11a:	66 90                	xchg   %ax,%ax
     11c:	66 90                	xchg   %ax,%ax
     11e:	66 90                	xchg   %ax,%ax

00000120 <iputtest>:
{
     120:	55                   	push   %ebp
     121:	89 e5                	mov    %esp,%ebp
     123:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "iput test\n");
     126:	68 7c 3e 00 00       	push   $0x3e7c
     12b:	ff 35 f8 55 00 00    	push   0x55f8
     131:	e8 4a 39 00 00       	call   3a80 <printf>
  if(mkdir("iputdir") < 0){
     136:	c7 04 24 0f 3e 00 00 	movl   $0x3e0f,(%esp)
     13d:	e8 19 38 00 00       	call   395b <mkdir>
     142:	83 c4 10             	add    $0x10,%esp
     145:	85 c0                	test   %eax,%eax
     147:	78 5a                	js     1a3 <iputtest+0x83>
  if(chdir("iputdir") < 0){
     149:	83 ec 0c             	sub    $0xc,%esp
     14c:	68 0f 3e 00 00       	push   $0x3e0f
     151:	e8 0d 38 00 00       	call   3963 <chdir>
     156:	83 c4 10             	add    $0x10,%esp
     159:	85 c0                	test   %eax,%eax
     15b:	0f 88 82 00 00 00    	js     1e3 <iputtest+0xc3>
  if(unlink("../iputdir") < 0){
     161:	83 ec 0c             	sub    $0xc,%esp
     164:	68 0c 3e 00 00       	push   $0x3e0c
     169:	e8 d5 37 00 00       	call   3943 <unlink>
     16e:	83 c4 10             	add    $0x10,%esp
     171:	85 c0                	test   %eax,%eax
     173:	78 57                	js     1cc <iputtest+0xac>
  if(chdir("/") < 0){
     175:	83 ec 0c             	sub    $0xc,%esp
     178:	68 31 3e 00 00       	push   $0x3e31
     17d:	e8 e1 37 00 00       	call   3963 <chdir>
     182:	83 c4 10             	add    $0x10,%esp
     185:	89 c2                	mov    %eax,%edx
    printf(stdout, "chdir / failed\n");
     187:	a1 f8 55 00 00       	mov    0x55f8,%eax
  if(chdir("/") < 0){
     18c:	85 d2                	test   %edx,%edx
     18e:	78 2a                	js     1ba <iputtest+0x9a>
  printf(stdout, "iput test ok\n");
     190:	83 ec 08             	sub    $0x8,%esp
     193:	68 b4 3e 00 00       	push   $0x3eb4
     198:	50                   	push   %eax
     199:	e8 e2 38 00 00       	call   3a80 <printf>
}
     19e:	83 c4 10             	add    $0x10,%esp
     1a1:	c9                   	leave
     1a2:	c3                   	ret
    printf(stdout, "mkdir failed\n");
     1a3:	50                   	push   %eax
     1a4:	50                   	push   %eax
     1a5:	68 e8 3d 00 00       	push   $0x3de8
     1aa:	ff 35 f8 55 00 00    	push   0x55f8
     1b0:	e8 cb 38 00 00       	call   3a80 <printf>
    exit();
     1b5:	e8 39 37 00 00       	call   38f3 <exit>
    printf(stdout, "chdir / failed\n");
     1ba:	52                   	push   %edx
     1bb:	52                   	push   %edx
     1bc:	68 33 3e 00 00       	push   $0x3e33
     1c1:	50                   	push   %eax
     1c2:	e8 b9 38 00 00       	call   3a80 <printf>
    exit();
     1c7:	e8 27 37 00 00       	call   38f3 <exit>
    printf(stdout, "unlink ../iputdir failed\n");
     1cc:	51                   	push   %ecx
     1cd:	51                   	push   %ecx
     1ce:	68 17 3e 00 00       	push   $0x3e17
     1d3:	ff 35 f8 55 00 00    	push   0x55f8
     1d9:	e8 a2 38 00 00       	call   3a80 <printf>
    exit();
     1de:	e8 10 37 00 00       	call   38f3 <exit>
    printf(stdout, "chdir iputdir failed\n");
     1e3:	50                   	push   %eax
     1e4:	50                   	push   %eax
     1e5:	68 f6 3d 00 00       	push   $0x3df6
     1ea:	ff 35 f8 55 00 00    	push   0x55f8
     1f0:	e8 8b 38 00 00       	call   3a80 <printf>
    exit();
     1f5:	e8 f9 36 00 00       	call   38f3 <exit>
     1fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000200 <exitiputtest>:
{
     200:	55                   	push   %ebp
     201:	89 e5                	mov    %esp,%ebp
     203:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exitiput test\n");
     206:	68 43 3e 00 00       	push   $0x3e43
     20b:	ff 35 f8 55 00 00    	push   0x55f8
     211:	e8 6a 38 00 00       	call   3a80 <printf>
  pid = fork();
     216:	e8 d0 36 00 00       	call   38eb <fork>
  if(pid < 0){
     21b:	83 c4 10             	add    $0x10,%esp
     21e:	85 c0                	test   %eax,%eax
     220:	0f 88 8a 00 00 00    	js     2b0 <exitiputtest+0xb0>
  if(pid == 0){
     226:	75 50                	jne    278 <exitiputtest+0x78>
    if(mkdir("iputdir") < 0){
     228:	83 ec 0c             	sub    $0xc,%esp
     22b:	68 0f 3e 00 00       	push   $0x3e0f
     230:	e8 26 37 00 00       	call   395b <mkdir>
     235:	83 c4 10             	add    $0x10,%esp
     238:	85 c0                	test   %eax,%eax
     23a:	0f 88 87 00 00 00    	js     2c7 <exitiputtest+0xc7>
    if(chdir("iputdir") < 0){
     240:	83 ec 0c             	sub    $0xc,%esp
     243:	68 0f 3e 00 00       	push   $0x3e0f
     248:	e8 16 37 00 00       	call   3963 <chdir>
     24d:	83 c4 10             	add    $0x10,%esp
     250:	85 c0                	test   %eax,%eax
     252:	0f 88 86 00 00 00    	js     2de <exitiputtest+0xde>
    if(unlink("../iputdir") < 0){
     258:	83 ec 0c             	sub    $0xc,%esp
     25b:	68 0c 3e 00 00       	push   $0x3e0c
     260:	e8 de 36 00 00       	call   3943 <unlink>
     265:	83 c4 10             	add    $0x10,%esp
     268:	85 c0                	test   %eax,%eax
     26a:	78 2c                	js     298 <exitiputtest+0x98>
    exit();
     26c:	e8 82 36 00 00       	call   38f3 <exit>
     271:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  wait();
     278:	e8 7e 36 00 00       	call   38fb <wait>
  printf(stdout, "exitiput test ok\n");
     27d:	83 ec 08             	sub    $0x8,%esp
     280:	68 66 3e 00 00       	push   $0x3e66
     285:	ff 35 f8 55 00 00    	push   0x55f8
     28b:	e8 f0 37 00 00       	call   3a80 <printf>
}
     290:	83 c4 10             	add    $0x10,%esp
     293:	c9                   	leave
     294:	c3                   	ret
     295:	8d 76 00             	lea    0x0(%esi),%esi
      printf(stdout, "unlink ../iputdir failed\n");
     298:	83 ec 08             	sub    $0x8,%esp
     29b:	68 17 3e 00 00       	push   $0x3e17
     2a0:	ff 35 f8 55 00 00    	push   0x55f8
     2a6:	e8 d5 37 00 00       	call   3a80 <printf>
      exit();
     2ab:	e8 43 36 00 00       	call   38f3 <exit>
    printf(stdout, "fork failed\n");
     2b0:	51                   	push   %ecx
     2b1:	51                   	push   %ecx
     2b2:	68 29 4d 00 00       	push   $0x4d29
     2b7:	ff 35 f8 55 00 00    	push   0x55f8
     2bd:	e8 be 37 00 00       	call   3a80 <printf>
    exit();
     2c2:	e8 2c 36 00 00       	call   38f3 <exit>
      printf(stdout, "mkdir failed\n");
     2c7:	52                   	push   %edx
     2c8:	52                   	push   %edx
     2c9:	68 e8 3d 00 00       	push   $0x3de8
     2ce:	ff 35 f8 55 00 00    	push   0x55f8
     2d4:	e8 a7 37 00 00       	call   3a80 <printf>
      exit();
     2d9:	e8 15 36 00 00       	call   38f3 <exit>
      printf(stdout, "child chdir failed\n");
     2de:	50                   	push   %eax
     2df:	50                   	push   %eax
     2e0:	68 52 3e 00 00       	push   $0x3e52
     2e5:	ff 35 f8 55 00 00    	push   0x55f8
     2eb:	e8 90 37 00 00       	call   3a80 <printf>
      exit();
     2f0:	e8 fe 35 00 00       	call   38f3 <exit>
     2f5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     2fc:	00 
     2fd:	8d 76 00             	lea    0x0(%esi),%esi

00000300 <openiputtest>:
{
     300:	55                   	push   %ebp
     301:	89 e5                	mov    %esp,%ebp
     303:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "openiput test\n");
     306:	68 78 3e 00 00       	push   $0x3e78
     30b:	ff 35 f8 55 00 00    	push   0x55f8
     311:	e8 6a 37 00 00       	call   3a80 <printf>
  if(mkdir("oidir") < 0){
     316:	c7 04 24 87 3e 00 00 	movl   $0x3e87,(%esp)
     31d:	e8 39 36 00 00       	call   395b <mkdir>
     322:	83 c4 10             	add    $0x10,%esp
     325:	85 c0                	test   %eax,%eax
     327:	0f 88 9f 00 00 00    	js     3cc <openiputtest+0xcc>
  pid = fork();
     32d:	e8 b9 35 00 00       	call   38eb <fork>
  if(pid < 0){
     332:	85 c0                	test   %eax,%eax
     334:	78 7f                	js     3b5 <openiputtest+0xb5>
  if(pid == 0){
     336:	75 38                	jne    370 <openiputtest+0x70>
    int fd = open("oidir", O_RDWR);
     338:	83 ec 08             	sub    $0x8,%esp
     33b:	6a 02                	push   $0x2
     33d:	68 87 3e 00 00       	push   $0x3e87
     342:	e8 ec 35 00 00       	call   3933 <open>
    if(fd >= 0){
     347:	83 c4 10             	add    $0x10,%esp
     34a:	85 c0                	test   %eax,%eax
     34c:	78 62                	js     3b0 <openiputtest+0xb0>
      printf(stdout, "open directory for write succeeded\n");
     34e:	83 ec 08             	sub    $0x8,%esp
     351:	68 10 4e 00 00       	push   $0x4e10
     356:	ff 35 f8 55 00 00    	push   0x55f8
     35c:	e8 1f 37 00 00       	call   3a80 <printf>
      exit();
     361:	e8 8d 35 00 00       	call   38f3 <exit>
     366:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     36d:	00 
     36e:	66 90                	xchg   %ax,%ax
  sleep(1);
     370:	83 ec 0c             	sub    $0xc,%esp
     373:	6a 01                	push   $0x1
     375:	e8 09 36 00 00       	call   3983 <sleep>
  if(unlink("oidir") != 0){
     37a:	c7 04 24 87 3e 00 00 	movl   $0x3e87,(%esp)
     381:	e8 bd 35 00 00       	call   3943 <unlink>
     386:	83 c4 10             	add    $0x10,%esp
     389:	85 c0                	test   %eax,%eax
     38b:	75 56                	jne    3e3 <openiputtest+0xe3>
  wait();
     38d:	e8 69 35 00 00       	call   38fb <wait>
  printf(stdout, "openiput test ok\n");
     392:	83 ec 08             	sub    $0x8,%esp
     395:	68 b0 3e 00 00       	push   $0x3eb0
     39a:	ff 35 f8 55 00 00    	push   0x55f8
     3a0:	e8 db 36 00 00       	call   3a80 <printf>
}
     3a5:	83 c4 10             	add    $0x10,%esp
     3a8:	c9                   	leave
     3a9:	c3                   	ret
     3aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    exit();
     3b0:	e8 3e 35 00 00       	call   38f3 <exit>
    printf(stdout, "fork failed\n");
     3b5:	52                   	push   %edx
     3b6:	52                   	push   %edx
     3b7:	68 29 4d 00 00       	push   $0x4d29
     3bc:	ff 35 f8 55 00 00    	push   0x55f8
     3c2:	e8 b9 36 00 00       	call   3a80 <printf>
    exit();
     3c7:	e8 27 35 00 00       	call   38f3 <exit>
    printf(stdout, "mkdir oidir failed\n");
     3cc:	51                   	push   %ecx
     3cd:	51                   	push   %ecx
     3ce:	68 8d 3e 00 00       	push   $0x3e8d
     3d3:	ff 35 f8 55 00 00    	push   0x55f8
     3d9:	e8 a2 36 00 00       	call   3a80 <printf>
    exit();
     3de:	e8 10 35 00 00       	call   38f3 <exit>
    printf(stdout, "unlink failed\n");
     3e3:	50                   	push   %eax
     3e4:	50                   	push   %eax
     3e5:	68 a1 3e 00 00       	push   $0x3ea1
     3ea:	ff 35 f8 55 00 00    	push   0x55f8
     3f0:	e8 8b 36 00 00       	call   3a80 <printf>
    exit();
     3f5:	e8 f9 34 00 00       	call   38f3 <exit>
     3fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000400 <opentest>:
{
     400:	55                   	push   %ebp
     401:	89 e5                	mov    %esp,%ebp
     403:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "open test\n");
     406:	68 c2 3e 00 00       	push   $0x3ec2
     40b:	ff 35 f8 55 00 00    	push   0x55f8
     411:	e8 6a 36 00 00       	call   3a80 <printf>
  fd = open("echo", 0);
     416:	58                   	pop    %eax
     417:	5a                   	pop    %edx
     418:	6a 00                	push   $0x0
     41a:	68 cd 3e 00 00       	push   $0x3ecd
     41f:	e8 0f 35 00 00       	call   3933 <open>
  if(fd < 0){
     424:	83 c4 10             	add    $0x10,%esp
     427:	85 c0                	test   %eax,%eax
     429:	78 38                	js     463 <opentest+0x63>
  close(fd);
     42b:	83 ec 0c             	sub    $0xc,%esp
     42e:	50                   	push   %eax
     42f:	e8 e7 34 00 00       	call   391b <close>
  fd = open("doesnotexist", 0);
     434:	59                   	pop    %ecx
     435:	58                   	pop    %eax
     436:	6a 00                	push   $0x0
     438:	68 e5 3e 00 00       	push   $0x3ee5
     43d:	e8 f1 34 00 00       	call   3933 <open>
  if(fd >= 0){
     442:	83 c4 10             	add    $0x10,%esp
  fd = open("doesnotexist", 0);
     445:	89 c2                	mov    %eax,%edx
    printf(stdout, "open doesnotexist succeeded!\n");
     447:	a1 f8 55 00 00       	mov    0x55f8,%eax
  if(fd >= 0){
     44c:	85 d2                	test   %edx,%edx
     44e:	79 2a                	jns    47a <opentest+0x7a>
  printf(stdout, "open test ok\n");
     450:	83 ec 08             	sub    $0x8,%esp
     453:	68 10 3f 00 00       	push   $0x3f10
     458:	50                   	push   %eax
     459:	e8 22 36 00 00       	call   3a80 <printf>
}
     45e:	83 c4 10             	add    $0x10,%esp
     461:	c9                   	leave
     462:	c3                   	ret
    printf(stdout, "open echo failed!\n");
     463:	50                   	push   %eax
     464:	50                   	push   %eax
     465:	68 d2 3e 00 00       	push   $0x3ed2
     46a:	ff 35 f8 55 00 00    	push   0x55f8
     470:	e8 0b 36 00 00       	call   3a80 <printf>
    exit();
     475:	e8 79 34 00 00       	call   38f3 <exit>
    printf(stdout, "open doesnotexist succeeded!\n");
     47a:	52                   	push   %edx
     47b:	52                   	push   %edx
     47c:	68 f2 3e 00 00       	push   $0x3ef2
     481:	50                   	push   %eax
     482:	e8 f9 35 00 00       	call   3a80 <printf>
    exit();
     487:	e8 67 34 00 00       	call   38f3 <exit>
     48c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000490 <writetest>:
{
     490:	55                   	push   %ebp
     491:	89 e5                	mov    %esp,%ebp
     493:	56                   	push   %esi
     494:	53                   	push   %ebx
  printf(stdout, "small file test\n");
     495:	83 ec 08             	sub    $0x8,%esp
     498:	68 1e 3f 00 00       	push   $0x3f1e
     49d:	ff 35 f8 55 00 00    	push   0x55f8
     4a3:	e8 d8 35 00 00       	call   3a80 <printf>
  fd = open("small", O_CREATE|O_RDWR);
     4a8:	59                   	pop    %ecx
     4a9:	5b                   	pop    %ebx
     4aa:	68 02 02 00 00       	push   $0x202
     4af:	68 2f 3f 00 00       	push   $0x3f2f
     4b4:	e8 7a 34 00 00       	call   3933 <open>
  if(fd >= 0){
     4b9:	83 c4 10             	add    $0x10,%esp
  fd = open("small", O_CREATE|O_RDWR);
     4bc:	89 c6                	mov    %eax,%esi
    printf(stdout, "creat small succeeded; ok\n");
     4be:	a1 f8 55 00 00       	mov    0x55f8,%eax
  if(fd >= 0){
     4c3:	85 f6                	test   %esi,%esi
     4c5:	0f 88 77 01 00 00    	js     642 <writetest+0x1b2>
    printf(stdout, "creat small succeeded; ok\n");
     4cb:	83 ec 08             	sub    $0x8,%esp
  for(i = 0; i < 100; i++){
     4ce:	31 db                	xor    %ebx,%ebx
    printf(stdout, "creat small succeeded; ok\n");
     4d0:	68 35 3f 00 00       	push   $0x3f35
     4d5:	50                   	push   %eax
     4d6:	e8 a5 35 00 00       	call   3a80 <printf>
     4db:	83 c4 10             	add    $0x10,%esp
     4de:	66 90                	xchg   %ax,%ax
    if(write(fd, "aaaaaaaaaa", 10) != 10){
     4e0:	83 ec 04             	sub    $0x4,%esp
     4e3:	6a 0a                	push   $0xa
     4e5:	68 6c 3f 00 00       	push   $0x3f6c
     4ea:	56                   	push   %esi
     4eb:	e8 23 34 00 00       	call   3913 <write>
     4f0:	83 c4 10             	add    $0x10,%esp
     4f3:	83 f8 0a             	cmp    $0xa,%eax
     4f6:	0f 85 de 00 00 00    	jne    5da <writetest+0x14a>
    if(write(fd, "bbbbbbbbbb", 10) != 10){
     4fc:	83 ec 04             	sub    $0x4,%esp
     4ff:	6a 0a                	push   $0xa
     501:	68 77 3f 00 00       	push   $0x3f77
     506:	56                   	push   %esi
     507:	e8 07 34 00 00       	call   3913 <write>
     50c:	83 c4 10             	add    $0x10,%esp
     50f:	83 f8 0a             	cmp    $0xa,%eax
     512:	0f 85 db 00 00 00    	jne    5f3 <writetest+0x163>
  for(i = 0; i < 100; i++){
     518:	83 c3 01             	add    $0x1,%ebx
     51b:	83 fb 64             	cmp    $0x64,%ebx
     51e:	75 c0                	jne    4e0 <writetest+0x50>
  printf(stdout, "writes ok\n");
     520:	83 ec 08             	sub    $0x8,%esp
     523:	68 82 3f 00 00       	push   $0x3f82
     528:	ff 35 f8 55 00 00    	push   0x55f8
     52e:	e8 4d 35 00 00       	call   3a80 <printf>
  close(fd);
     533:	89 34 24             	mov    %esi,(%esp)
     536:	e8 e0 33 00 00       	call   391b <close>
  fd = open("small", O_RDONLY);
     53b:	5e                   	pop    %esi
     53c:	58                   	pop    %eax
     53d:	6a 00                	push   $0x0
     53f:	68 2f 3f 00 00       	push   $0x3f2f
     544:	e8 ea 33 00 00       	call   3933 <open>
  if(fd >= 0){
     549:	83 c4 10             	add    $0x10,%esp
  fd = open("small", O_RDONLY);
     54c:	89 c3                	mov    %eax,%ebx
    printf(stdout, "open small succeeded ok\n");
     54e:	a1 f8 55 00 00       	mov    0x55f8,%eax
  if(fd >= 0){
     553:	85 db                	test   %ebx,%ebx
     555:	0f 88 b1 00 00 00    	js     60c <writetest+0x17c>
    printf(stdout, "open small succeeded ok\n");
     55b:	83 ec 08             	sub    $0x8,%esp
     55e:	68 8d 3f 00 00       	push   $0x3f8d
     563:	50                   	push   %eax
     564:	e8 17 35 00 00       	call   3a80 <printf>
  i = read(fd, buf, 2000);
     569:	83 c4 0c             	add    $0xc,%esp
     56c:	68 d0 07 00 00       	push   $0x7d0
     571:	68 40 7d 00 00       	push   $0x7d40
     576:	53                   	push   %ebx
     577:	e8 8f 33 00 00       	call   390b <read>
  if(i == 2000){
     57c:	83 c4 10             	add    $0x10,%esp
  i = read(fd, buf, 2000);
     57f:	89 c2                	mov    %eax,%edx
    printf(stdout, "read succeeded ok\n");
     581:	a1 f8 55 00 00       	mov    0x55f8,%eax
  if(i == 2000){
     586:	81 fa d0 07 00 00    	cmp    $0x7d0,%edx
     58c:	0f 85 8c 00 00 00    	jne    61e <writetest+0x18e>
    printf(stdout, "read succeeded ok\n");
     592:	83 ec 08             	sub    $0x8,%esp
     595:	68 c1 3f 00 00       	push   $0x3fc1
     59a:	50                   	push   %eax
     59b:	e8 e0 34 00 00       	call   3a80 <printf>
  close(fd);
     5a0:	89 1c 24             	mov    %ebx,(%esp)
     5a3:	e8 73 33 00 00       	call   391b <close>
  if(unlink("small") < 0){
     5a8:	c7 04 24 2f 3f 00 00 	movl   $0x3f2f,(%esp)
     5af:	e8 8f 33 00 00       	call   3943 <unlink>
     5b4:	83 c4 10             	add    $0x10,%esp
     5b7:	89 c2                	mov    %eax,%edx
    printf(stdout, "unlink small failed\n");
     5b9:	a1 f8 55 00 00       	mov    0x55f8,%eax
  if(unlink("small") < 0){
     5be:	85 d2                	test   %edx,%edx
     5c0:	78 6e                	js     630 <writetest+0x1a0>
  printf(stdout, "small file test ok\n");
     5c2:	83 ec 08             	sub    $0x8,%esp
     5c5:	68 e9 3f 00 00       	push   $0x3fe9
     5ca:	50                   	push   %eax
     5cb:	e8 b0 34 00 00       	call   3a80 <printf>
}
     5d0:	83 c4 10             	add    $0x10,%esp
     5d3:	8d 65 f8             	lea    -0x8(%ebp),%esp
     5d6:	5b                   	pop    %ebx
     5d7:	5e                   	pop    %esi
     5d8:	5d                   	pop    %ebp
     5d9:	c3                   	ret
      printf(stdout, "error: write aa %d new file failed\n", i);
     5da:	83 ec 04             	sub    $0x4,%esp
     5dd:	53                   	push   %ebx
     5de:	68 34 4e 00 00       	push   $0x4e34
     5e3:	ff 35 f8 55 00 00    	push   0x55f8
     5e9:	e8 92 34 00 00       	call   3a80 <printf>
      exit();
     5ee:	e8 00 33 00 00       	call   38f3 <exit>
      printf(stdout, "error: write bb %d new file failed\n", i);
     5f3:	83 ec 04             	sub    $0x4,%esp
     5f6:	53                   	push   %ebx
     5f7:	68 58 4e 00 00       	push   $0x4e58
     5fc:	ff 35 f8 55 00 00    	push   0x55f8
     602:	e8 79 34 00 00       	call   3a80 <printf>
      exit();
     607:	e8 e7 32 00 00       	call   38f3 <exit>
    printf(stdout, "error: open small failed!\n");
     60c:	53                   	push   %ebx
     60d:	53                   	push   %ebx
     60e:	68 a6 3f 00 00       	push   $0x3fa6
     613:	50                   	push   %eax
     614:	e8 67 34 00 00       	call   3a80 <printf>
    exit();
     619:	e8 d5 32 00 00       	call   38f3 <exit>
    printf(stdout, "read failed\n");
     61e:	51                   	push   %ecx
     61f:	51                   	push   %ecx
     620:	68 ed 42 00 00       	push   $0x42ed
     625:	50                   	push   %eax
     626:	e8 55 34 00 00       	call   3a80 <printf>
    exit();
     62b:	e8 c3 32 00 00       	call   38f3 <exit>
    printf(stdout, "unlink small failed\n");
     630:	52                   	push   %edx
     631:	52                   	push   %edx
     632:	68 d4 3f 00 00       	push   $0x3fd4
     637:	50                   	push   %eax
     638:	e8 43 34 00 00       	call   3a80 <printf>
    exit();
     63d:	e8 b1 32 00 00       	call   38f3 <exit>
    printf(stdout, "error: creat small failed!\n");
     642:	52                   	push   %edx
     643:	52                   	push   %edx
     644:	68 50 3f 00 00       	push   $0x3f50
     649:	50                   	push   %eax
     64a:	e8 31 34 00 00       	call   3a80 <printf>
    exit();
     64f:	e8 9f 32 00 00       	call   38f3 <exit>
     654:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     65b:	00 
     65c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000660 <writetest1>:
{
     660:	55                   	push   %ebp
     661:	89 e5                	mov    %esp,%ebp
     663:	56                   	push   %esi
     664:	53                   	push   %ebx
  printf(stdout, "big files test\n");
     665:	83 ec 08             	sub    $0x8,%esp
     668:	68 fd 3f 00 00       	push   $0x3ffd
     66d:	ff 35 f8 55 00 00    	push   0x55f8
     673:	e8 08 34 00 00       	call   3a80 <printf>
  fd = open("big", O_CREATE|O_RDWR);
     678:	58                   	pop    %eax
     679:	5a                   	pop    %edx
     67a:	68 02 02 00 00       	push   $0x202
     67f:	68 77 40 00 00       	push   $0x4077
     684:	e8 aa 32 00 00       	call   3933 <open>
  if(fd < 0){
     689:	83 c4 10             	add    $0x10,%esp
     68c:	85 c0                	test   %eax,%eax
     68e:	0f 88 67 01 00 00    	js     7fb <writetest1+0x19b>
     694:	89 c6                	mov    %eax,%esi
  for(i = 0; i < MAXFILE; i++){
     696:	31 db                	xor    %ebx,%ebx
     698:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     69f:	00 
    if(write(fd, buf, 512) != 512){
     6a0:	83 ec 04             	sub    $0x4,%esp
    ((int*)buf)[0] = i;
     6a3:	89 1d 40 7d 00 00    	mov    %ebx,0x7d40
    if(write(fd, buf, 512) != 512){
     6a9:	68 00 02 00 00       	push   $0x200
     6ae:	68 40 7d 00 00       	push   $0x7d40
     6b3:	56                   	push   %esi
     6b4:	e8 5a 32 00 00       	call   3913 <write>
     6b9:	83 c4 10             	add    $0x10,%esp
     6bc:	3d 00 02 00 00       	cmp    $0x200,%eax
     6c1:	0f 85 b9 00 00 00    	jne    780 <writetest1+0x120>
  for(i = 0; i < MAXFILE; i++){
     6c7:	83 c3 01             	add    $0x1,%ebx
     6ca:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     6d0:	75 ce                	jne    6a0 <writetest1+0x40>
  close(fd);
     6d2:	83 ec 0c             	sub    $0xc,%esp
     6d5:	56                   	push   %esi
     6d6:	e8 40 32 00 00       	call   391b <close>
  fd = open("big", O_RDONLY);
     6db:	5e                   	pop    %esi
     6dc:	58                   	pop    %eax
     6dd:	6a 00                	push   $0x0
     6df:	68 77 40 00 00       	push   $0x4077
     6e4:	e8 4a 32 00 00       	call   3933 <open>
  if(fd < 0){
     6e9:	83 c4 10             	add    $0x10,%esp
  fd = open("big", O_RDONLY);
     6ec:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
     6ee:	85 c0                	test   %eax,%eax
     6f0:	0f 88 ee 00 00 00    	js     7e4 <writetest1+0x184>
  n = 0;
     6f6:	31 f6                	xor    %esi,%esi
     6f8:	eb 21                	jmp    71b <writetest1+0xbb>
     6fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(i != 512){
     700:	3d 00 02 00 00       	cmp    $0x200,%eax
     705:	0f 85 a5 00 00 00    	jne    7b0 <writetest1+0x150>
    if(((int*)buf)[0] != n){
     70b:	a1 40 7d 00 00       	mov    0x7d40,%eax
     710:	39 f0                	cmp    %esi,%eax
     712:	0f 85 81 00 00 00    	jne    799 <writetest1+0x139>
    n++;
     718:	83 c6 01             	add    $0x1,%esi
    i = read(fd, buf, 512);
     71b:	83 ec 04             	sub    $0x4,%esp
     71e:	68 00 02 00 00       	push   $0x200
     723:	68 40 7d 00 00       	push   $0x7d40
     728:	53                   	push   %ebx
     729:	e8 dd 31 00 00       	call   390b <read>
    if(i == 0){
     72e:	83 c4 10             	add    $0x10,%esp
     731:	85 c0                	test   %eax,%eax
     733:	75 cb                	jne    700 <writetest1+0xa0>
      if(n == MAXFILE - 1){
     735:	81 fe 8b 00 00 00    	cmp    $0x8b,%esi
     73b:	0f 84 88 00 00 00    	je     7c9 <writetest1+0x169>
  close(fd);
     741:	83 ec 0c             	sub    $0xc,%esp
     744:	53                   	push   %ebx
     745:	e8 d1 31 00 00       	call   391b <close>
  if(unlink("big") < 0){
     74a:	c7 04 24 77 40 00 00 	movl   $0x4077,(%esp)
     751:	e8 ed 31 00 00       	call   3943 <unlink>
     756:	83 c4 10             	add    $0x10,%esp
     759:	89 c2                	mov    %eax,%edx
    printf(stdout, "unlink big failed\n");
     75b:	a1 f8 55 00 00       	mov    0x55f8,%eax
  if(unlink("big") < 0){
     760:	85 d2                	test   %edx,%edx
     762:	0f 88 aa 00 00 00    	js     812 <writetest1+0x1b2>
  printf(stdout, "big files ok\n");
     768:	83 ec 08             	sub    $0x8,%esp
     76b:	68 9e 40 00 00       	push   $0x409e
     770:	50                   	push   %eax
     771:	e8 0a 33 00 00       	call   3a80 <printf>
}
     776:	83 c4 10             	add    $0x10,%esp
     779:	8d 65 f8             	lea    -0x8(%ebp),%esp
     77c:	5b                   	pop    %ebx
     77d:	5e                   	pop    %esi
     77e:	5d                   	pop    %ebp
     77f:	c3                   	ret
      printf(stdout, "error: write big file failed\n", i);
     780:	83 ec 04             	sub    $0x4,%esp
     783:	53                   	push   %ebx
     784:	68 27 40 00 00       	push   $0x4027
     789:	ff 35 f8 55 00 00    	push   0x55f8
     78f:	e8 ec 32 00 00       	call   3a80 <printf>
      exit();
     794:	e8 5a 31 00 00       	call   38f3 <exit>
      printf(stdout, "read content of block %d is %d\n",
     799:	50                   	push   %eax
     79a:	56                   	push   %esi
     79b:	68 7c 4e 00 00       	push   $0x4e7c
     7a0:	ff 35 f8 55 00 00    	push   0x55f8
     7a6:	e8 d5 32 00 00       	call   3a80 <printf>
      exit();
     7ab:	e8 43 31 00 00       	call   38f3 <exit>
      printf(stdout, "read failed %d\n", i);
     7b0:	83 ec 04             	sub    $0x4,%esp
     7b3:	50                   	push   %eax
     7b4:	68 7b 40 00 00       	push   $0x407b
     7b9:	ff 35 f8 55 00 00    	push   0x55f8
     7bf:	e8 bc 32 00 00       	call   3a80 <printf>
      exit();
     7c4:	e8 2a 31 00 00       	call   38f3 <exit>
        printf(stdout, "read only %d blocks from big", n);
     7c9:	51                   	push   %ecx
     7ca:	68 8b 00 00 00       	push   $0x8b
     7cf:	68 5e 40 00 00       	push   $0x405e
     7d4:	ff 35 f8 55 00 00    	push   0x55f8
     7da:	e8 a1 32 00 00       	call   3a80 <printf>
        exit();
     7df:	e8 0f 31 00 00       	call   38f3 <exit>
    printf(stdout, "error: open big failed!\n");
     7e4:	53                   	push   %ebx
     7e5:	53                   	push   %ebx
     7e6:	68 45 40 00 00       	push   $0x4045
     7eb:	ff 35 f8 55 00 00    	push   0x55f8
     7f1:	e8 8a 32 00 00       	call   3a80 <printf>
    exit();
     7f6:	e8 f8 30 00 00       	call   38f3 <exit>
    printf(stdout, "error: creat big failed!\n");
     7fb:	50                   	push   %eax
     7fc:	50                   	push   %eax
     7fd:	68 0d 40 00 00       	push   $0x400d
     802:	ff 35 f8 55 00 00    	push   0x55f8
     808:	e8 73 32 00 00       	call   3a80 <printf>
    exit();
     80d:	e8 e1 30 00 00       	call   38f3 <exit>
    printf(stdout, "unlink big failed\n");
     812:	52                   	push   %edx
     813:	52                   	push   %edx
     814:	68 8b 40 00 00       	push   $0x408b
     819:	50                   	push   %eax
     81a:	e8 61 32 00 00       	call   3a80 <printf>
    exit();
     81f:	e8 cf 30 00 00       	call   38f3 <exit>
     824:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     82b:	00 
     82c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000830 <createtest>:
{
     830:	55                   	push   %ebp
     831:	89 e5                	mov    %esp,%ebp
     833:	53                   	push   %ebx
  name[2] = '\0';
     834:	bb 30 00 00 00       	mov    $0x30,%ebx
{
     839:	83 ec 0c             	sub    $0xc,%esp
  printf(stdout, "many creates, followed by unlink test\n");
     83c:	68 9c 4e 00 00       	push   $0x4e9c
     841:	ff 35 f8 55 00 00    	push   0x55f8
     847:	e8 34 32 00 00       	call   3a80 <printf>
  name[0] = 'a';
     84c:	c6 05 30 7d 00 00 61 	movb   $0x61,0x7d30
  name[2] = '\0';
     853:	83 c4 10             	add    $0x10,%esp
     856:	c6 05 32 7d 00 00 00 	movb   $0x0,0x7d32
  for(i = 0; i < 52; i++){
     85d:	8d 76 00             	lea    0x0(%esi),%esi
    fd = open(name, O_CREATE|O_RDWR);
     860:	83 ec 08             	sub    $0x8,%esp
    name[1] = '0' + i;
     863:	88 1d 31 7d 00 00    	mov    %bl,0x7d31
  for(i = 0; i < 52; i++){
     869:	83 c3 01             	add    $0x1,%ebx
    fd = open(name, O_CREATE|O_RDWR);
     86c:	68 02 02 00 00       	push   $0x202
     871:	68 30 7d 00 00       	push   $0x7d30
     876:	e8 b8 30 00 00       	call   3933 <open>
    close(fd);
     87b:	89 04 24             	mov    %eax,(%esp)
     87e:	e8 98 30 00 00       	call   391b <close>
  for(i = 0; i < 52; i++){
     883:	83 c4 10             	add    $0x10,%esp
     886:	80 fb 64             	cmp    $0x64,%bl
     889:	75 d5                	jne    860 <createtest+0x30>
  name[0] = 'a';
     88b:	c6 05 30 7d 00 00 61 	movb   $0x61,0x7d30
  name[2] = '\0';
     892:	bb 30 00 00 00       	mov    $0x30,%ebx
     897:	c6 05 32 7d 00 00 00 	movb   $0x0,0x7d32
  for(i = 0; i < 52; i++){
     89e:	66 90                	xchg   %ax,%ax
    unlink(name);
     8a0:	83 ec 0c             	sub    $0xc,%esp
    name[1] = '0' + i;
     8a3:	88 1d 31 7d 00 00    	mov    %bl,0x7d31
  for(i = 0; i < 52; i++){
     8a9:	83 c3 01             	add    $0x1,%ebx
    unlink(name);
     8ac:	68 30 7d 00 00       	push   $0x7d30
     8b1:	e8 8d 30 00 00       	call   3943 <unlink>
  for(i = 0; i < 52; i++){
     8b6:	83 c4 10             	add    $0x10,%esp
     8b9:	80 fb 64             	cmp    $0x64,%bl
     8bc:	75 e2                	jne    8a0 <createtest+0x70>
  printf(stdout, "many creates, followed by unlink; ok\n");
     8be:	83 ec 08             	sub    $0x8,%esp
     8c1:	68 c8 4e 00 00       	push   $0x4ec8
     8c6:	ff 35 f8 55 00 00    	push   0x55f8
     8cc:	e8 af 31 00 00       	call   3a80 <printf>
}
     8d1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     8d4:	83 c4 10             	add    $0x10,%esp
     8d7:	c9                   	leave
     8d8:	c3                   	ret
     8d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000008e0 <dirtest>:
{
     8e0:	55                   	push   %ebp
     8e1:	89 e5                	mov    %esp,%ebp
     8e3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "mkdir test\n");
     8e6:	68 ac 40 00 00       	push   $0x40ac
     8eb:	ff 35 f8 55 00 00    	push   0x55f8
     8f1:	e8 8a 31 00 00       	call   3a80 <printf>
  if(mkdir("dir0") < 0){
     8f6:	c7 04 24 b8 40 00 00 	movl   $0x40b8,(%esp)
     8fd:	e8 59 30 00 00       	call   395b <mkdir>
     902:	83 c4 10             	add    $0x10,%esp
     905:	85 c0                	test   %eax,%eax
     907:	78 5a                	js     963 <dirtest+0x83>
  if(chdir("dir0") < 0){
     909:	83 ec 0c             	sub    $0xc,%esp
     90c:	68 b8 40 00 00       	push   $0x40b8
     911:	e8 4d 30 00 00       	call   3963 <chdir>
     916:	83 c4 10             	add    $0x10,%esp
     919:	85 c0                	test   %eax,%eax
     91b:	0f 88 82 00 00 00    	js     9a3 <dirtest+0xc3>
  if(chdir("..") < 0){
     921:	83 ec 0c             	sub    $0xc,%esp
     924:	68 5d 46 00 00       	push   $0x465d
     929:	e8 35 30 00 00       	call   3963 <chdir>
     92e:	83 c4 10             	add    $0x10,%esp
     931:	85 c0                	test   %eax,%eax
     933:	78 57                	js     98c <dirtest+0xac>
  if(unlink("dir0") < 0){
     935:	83 ec 0c             	sub    $0xc,%esp
     938:	68 b8 40 00 00       	push   $0x40b8
     93d:	e8 01 30 00 00       	call   3943 <unlink>
     942:	83 c4 10             	add    $0x10,%esp
     945:	89 c2                	mov    %eax,%edx
    printf(stdout, "unlink dir0 failed\n");
     947:	a1 f8 55 00 00       	mov    0x55f8,%eax
  if(unlink("dir0") < 0){
     94c:	85 d2                	test   %edx,%edx
     94e:	78 2a                	js     97a <dirtest+0x9a>
  printf(stdout, "mkdir test ok\n");
     950:	83 ec 08             	sub    $0x8,%esp
     953:	68 f5 40 00 00       	push   $0x40f5
     958:	50                   	push   %eax
     959:	e8 22 31 00 00       	call   3a80 <printf>
}
     95e:	83 c4 10             	add    $0x10,%esp
     961:	c9                   	leave
     962:	c3                   	ret
    printf(stdout, "mkdir failed\n");
     963:	50                   	push   %eax
     964:	50                   	push   %eax
     965:	68 e8 3d 00 00       	push   $0x3de8
     96a:	ff 35 f8 55 00 00    	push   0x55f8
     970:	e8 0b 31 00 00       	call   3a80 <printf>
    exit();
     975:	e8 79 2f 00 00       	call   38f3 <exit>
    printf(stdout, "unlink dir0 failed\n");
     97a:	52                   	push   %edx
     97b:	52                   	push   %edx
     97c:	68 e1 40 00 00       	push   $0x40e1
     981:	50                   	push   %eax
     982:	e8 f9 30 00 00       	call   3a80 <printf>
    exit();
     987:	e8 67 2f 00 00       	call   38f3 <exit>
    printf(stdout, "chdir .. failed\n");
     98c:	51                   	push   %ecx
     98d:	51                   	push   %ecx
     98e:	68 d0 40 00 00       	push   $0x40d0
     993:	ff 35 f8 55 00 00    	push   0x55f8
     999:	e8 e2 30 00 00       	call   3a80 <printf>
    exit();
     99e:	e8 50 2f 00 00       	call   38f3 <exit>
    printf(stdout, "chdir dir0 failed\n");
     9a3:	50                   	push   %eax
     9a4:	50                   	push   %eax
     9a5:	68 bd 40 00 00       	push   $0x40bd
     9aa:	ff 35 f8 55 00 00    	push   0x55f8
     9b0:	e8 cb 30 00 00       	call   3a80 <printf>
    exit();
     9b5:	e8 39 2f 00 00       	call   38f3 <exit>
     9ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000009c0 <exectest>:
{
     9c0:	55                   	push   %ebp
     9c1:	89 e5                	mov    %esp,%ebp
     9c3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exec test\n");
     9c6:	68 04 41 00 00       	push   $0x4104
     9cb:	ff 35 f8 55 00 00    	push   0x55f8
     9d1:	e8 aa 30 00 00       	call   3a80 <printf>
  if(exec("echo", echoargv) < 0){
     9d6:	5a                   	pop    %edx
     9d7:	59                   	pop    %ecx
     9d8:	68 fc 55 00 00       	push   $0x55fc
     9dd:	68 cd 3e 00 00       	push   $0x3ecd
     9e2:	e8 44 2f 00 00       	call   392b <exec>
     9e7:	83 c4 10             	add    $0x10,%esp
     9ea:	85 c0                	test   %eax,%eax
     9ec:	78 02                	js     9f0 <exectest+0x30>
}
     9ee:	c9                   	leave
     9ef:	c3                   	ret
    printf(stdout, "exec echo failed\n");
     9f0:	50                   	push   %eax
     9f1:	50                   	push   %eax
     9f2:	68 0f 41 00 00       	push   $0x410f
     9f7:	ff 35 f8 55 00 00    	push   0x55f8
     9fd:	e8 7e 30 00 00       	call   3a80 <printf>
    exit();
     a02:	e8 ec 2e 00 00       	call   38f3 <exit>
     a07:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     a0e:	00 
     a0f:	90                   	nop

00000a10 <pipe1>:
{
     a10:	55                   	push   %ebp
     a11:	89 e5                	mov    %esp,%ebp
     a13:	57                   	push   %edi
     a14:	56                   	push   %esi
  if(pipe(fds) != 0){
     a15:	8d 45 e0             	lea    -0x20(%ebp),%eax
{
     a18:	53                   	push   %ebx
     a19:	83 ec 38             	sub    $0x38,%esp
  if(pipe(fds) != 0){
     a1c:	50                   	push   %eax
     a1d:	e8 e1 2e 00 00       	call   3903 <pipe>
     a22:	83 c4 10             	add    $0x10,%esp
     a25:	85 c0                	test   %eax,%eax
     a27:	0f 85 3c 01 00 00    	jne    b69 <pipe1+0x159>
  pid = fork();
     a2d:	e8 b9 2e 00 00       	call   38eb <fork>
  if(pid == 0){
     a32:	85 c0                	test   %eax,%eax
     a34:	0f 84 85 00 00 00    	je     abf <pipe1+0xaf>
  } else if(pid > 0){
     a3a:	0f 8e 3c 01 00 00    	jle    b7c <pipe1+0x16c>
    close(fds[1]);
     a40:	83 ec 0c             	sub    $0xc,%esp
     a43:	ff 75 e4             	push   -0x1c(%ebp)
  seq = 0;
     a46:	31 db                	xor    %ebx,%ebx
    cc = 1;
     a48:	be 01 00 00 00       	mov    $0x1,%esi
    close(fds[1]);
     a4d:	e8 c9 2e 00 00       	call   391b <close>
    while((n = read(fds[0], buf, cc)) > 0){
     a52:	83 c4 10             	add    $0x10,%esp
    total = 0;
     a55:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    while((n = read(fds[0], buf, cc)) > 0){
     a5c:	83 ec 04             	sub    $0x4,%esp
     a5f:	56                   	push   %esi
     a60:	68 40 7d 00 00       	push   $0x7d40
     a65:	ff 75 e0             	push   -0x20(%ebp)
     a68:	e8 9e 2e 00 00       	call   390b <read>
     a6d:	83 c4 10             	add    $0x10,%esp
     a70:	89 c7                	mov    %eax,%edi
     a72:	85 c0                	test   %eax,%eax
     a74:	0f 8e ab 00 00 00    	jle    b25 <pipe1+0x115>
     a7a:	8d 0c 3b             	lea    (%ebx,%edi,1),%ecx
      for(i = 0; i < n; i++){
     a7d:	31 c0                	xor    %eax,%eax
     a7f:	90                   	nop
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     a80:	89 da                	mov    %ebx,%edx
     a82:	83 c3 01             	add    $0x1,%ebx
     a85:	38 90 40 7d 00 00    	cmp    %dl,0x7d40(%eax)
     a8b:	75 18                	jne    aa5 <pipe1+0x95>
      for(i = 0; i < n; i++){
     a8d:	83 c0 01             	add    $0x1,%eax
     a90:	39 cb                	cmp    %ecx,%ebx
     a92:	75 ec                	jne    a80 <pipe1+0x70>
      cc = cc * 2;
     a94:	01 f6                	add    %esi,%esi
      if(cc > sizeof(buf))
     a96:	b8 00 20 00 00       	mov    $0x2000,%eax
      total += n;
     a9b:	01 7d d4             	add    %edi,-0x2c(%ebp)
      if(cc > sizeof(buf))
     a9e:	39 c6                	cmp    %eax,%esi
     aa0:	0f 4f f0             	cmovg  %eax,%esi
     aa3:	eb b7                	jmp    a5c <pipe1+0x4c>
          printf(1, "pipe1 oops 2\n");
     aa5:	83 ec 08             	sub    $0x8,%esp
     aa8:	68 3e 41 00 00       	push   $0x413e
     aad:	6a 01                	push   $0x1
     aaf:	e8 cc 2f 00 00       	call   3a80 <printf>
     ab4:	83 c4 10             	add    $0x10,%esp
}
     ab7:	8d 65 f4             	lea    -0xc(%ebp),%esp
     aba:	5b                   	pop    %ebx
     abb:	5e                   	pop    %esi
     abc:	5f                   	pop    %edi
     abd:	5d                   	pop    %ebp
     abe:	c3                   	ret
    close(fds[0]);
     abf:	83 ec 0c             	sub    $0xc,%esp
     ac2:	ff 75 e0             	push   -0x20(%ebp)
  seq = 0;
     ac5:	31 db                	xor    %ebx,%ebx
    close(fds[0]);
     ac7:	e8 4f 2e 00 00       	call   391b <close>
     acc:	83 c4 10             	add    $0x10,%esp
      for(i = 0; i < 1033; i++)
     acf:	31 c0                	xor    %eax,%eax
     ad1:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     ad8:	00 
     ad9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        buf[i] = seq++;
     ae0:	8d 14 18             	lea    (%eax,%ebx,1),%edx
      for(i = 0; i < 1033; i++)
     ae3:	83 c0 01             	add    $0x1,%eax
        buf[i] = seq++;
     ae6:	88 90 3f 7d 00 00    	mov    %dl,0x7d3f(%eax)
      for(i = 0; i < 1033; i++)
     aec:	3d 09 04 00 00       	cmp    $0x409,%eax
     af1:	75 ed                	jne    ae0 <pipe1+0xd0>
      if(write(fds[1], buf, 1033) != 1033){
     af3:	83 ec 04             	sub    $0x4,%esp
     af6:	81 c3 09 04 00 00    	add    $0x409,%ebx
     afc:	68 09 04 00 00       	push   $0x409
     b01:	68 40 7d 00 00       	push   $0x7d40
     b06:	ff 75 e4             	push   -0x1c(%ebp)
     b09:	e8 05 2e 00 00       	call   3913 <write>
     b0e:	83 c4 10             	add    $0x10,%esp
     b11:	3d 09 04 00 00       	cmp    $0x409,%eax
     b16:	75 77                	jne    b8f <pipe1+0x17f>
    for(n = 0; n < 5; n++){
     b18:	81 fb 2d 14 00 00    	cmp    $0x142d,%ebx
     b1e:	75 af                	jne    acf <pipe1+0xbf>
    exit();
     b20:	e8 ce 2d 00 00       	call   38f3 <exit>
    if(total != 5 * 1033){
     b25:	81 7d d4 2d 14 00 00 	cmpl   $0x142d,-0x2c(%ebp)
     b2c:	75 26                	jne    b54 <pipe1+0x144>
    close(fds[0]);
     b2e:	83 ec 0c             	sub    $0xc,%esp
     b31:	ff 75 e0             	push   -0x20(%ebp)
     b34:	e8 e2 2d 00 00       	call   391b <close>
    wait();
     b39:	e8 bd 2d 00 00       	call   38fb <wait>
  printf(1, "pipe1 ok\n");
     b3e:	5a                   	pop    %edx
     b3f:	59                   	pop    %ecx
     b40:	68 63 41 00 00       	push   $0x4163
     b45:	6a 01                	push   $0x1
     b47:	e8 34 2f 00 00       	call   3a80 <printf>
     b4c:	83 c4 10             	add    $0x10,%esp
     b4f:	e9 63 ff ff ff       	jmp    ab7 <pipe1+0xa7>
      printf(1, "pipe1 oops 3 total %d\n", total);
     b54:	53                   	push   %ebx
     b55:	ff 75 d4             	push   -0x2c(%ebp)
     b58:	68 4c 41 00 00       	push   $0x414c
     b5d:	6a 01                	push   $0x1
     b5f:	e8 1c 2f 00 00       	call   3a80 <printf>
      exit();
     b64:	e8 8a 2d 00 00       	call   38f3 <exit>
    printf(1, "pipe() failed\n");
     b69:	57                   	push   %edi
     b6a:	57                   	push   %edi
     b6b:	68 21 41 00 00       	push   $0x4121
     b70:	6a 01                	push   $0x1
     b72:	e8 09 2f 00 00       	call   3a80 <printf>
    exit();
     b77:	e8 77 2d 00 00       	call   38f3 <exit>
    printf(1, "fork() failed\n");
     b7c:	50                   	push   %eax
     b7d:	50                   	push   %eax
     b7e:	68 6d 41 00 00       	push   $0x416d
     b83:	6a 01                	push   $0x1
     b85:	e8 f6 2e 00 00       	call   3a80 <printf>
    exit();
     b8a:	e8 64 2d 00 00       	call   38f3 <exit>
        printf(1, "pipe1 oops 1\n");
     b8f:	56                   	push   %esi
     b90:	56                   	push   %esi
     b91:	68 30 41 00 00       	push   $0x4130
     b96:	6a 01                	push   $0x1
     b98:	e8 e3 2e 00 00       	call   3a80 <printf>
        exit();
     b9d:	e8 51 2d 00 00       	call   38f3 <exit>
     ba2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     ba9:	00 
     baa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000bb0 <preempt>:
{
     bb0:	55                   	push   %ebp
     bb1:	89 e5                	mov    %esp,%ebp
     bb3:	57                   	push   %edi
     bb4:	56                   	push   %esi
     bb5:	53                   	push   %ebx
     bb6:	83 ec 24             	sub    $0x24,%esp
  printf(1, "preempt: ");
     bb9:	68 7c 41 00 00       	push   $0x417c
     bbe:	6a 01                	push   $0x1
     bc0:	e8 bb 2e 00 00       	call   3a80 <printf>
  pid1 = fork();
     bc5:	e8 21 2d 00 00       	call   38eb <fork>
  if(pid1 == 0)
     bca:	83 c4 10             	add    $0x10,%esp
     bcd:	85 c0                	test   %eax,%eax
     bcf:	75 07                	jne    bd8 <preempt+0x28>
    for(;;)
     bd1:	eb fe                	jmp    bd1 <preempt+0x21>
     bd3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
     bd8:	89 c3                	mov    %eax,%ebx
  pid2 = fork();
     bda:	e8 0c 2d 00 00       	call   38eb <fork>
     bdf:	89 c6                	mov    %eax,%esi
  if(pid2 == 0)
     be1:	85 c0                	test   %eax,%eax
     be3:	75 0b                	jne    bf0 <preempt+0x40>
    for(;;)
     be5:	eb fe                	jmp    be5 <preempt+0x35>
     be7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     bee:	00 
     bef:	90                   	nop
  pipe(pfds);
     bf0:	83 ec 0c             	sub    $0xc,%esp
     bf3:	8d 45 e0             	lea    -0x20(%ebp),%eax
     bf6:	50                   	push   %eax
     bf7:	e8 07 2d 00 00       	call   3903 <pipe>
  pid3 = fork();
     bfc:	e8 ea 2c 00 00       	call   38eb <fork>
  if(pid3 == 0){
     c01:	83 c4 10             	add    $0x10,%esp
  pid3 = fork();
     c04:	89 c7                	mov    %eax,%edi
  if(pid3 == 0){
     c06:	85 c0                	test   %eax,%eax
     c08:	75 3e                	jne    c48 <preempt+0x98>
    close(pfds[0]);
     c0a:	83 ec 0c             	sub    $0xc,%esp
     c0d:	ff 75 e0             	push   -0x20(%ebp)
     c10:	e8 06 2d 00 00       	call   391b <close>
    if(write(pfds[1], "x", 1) != 1)
     c15:	83 c4 0c             	add    $0xc,%esp
     c18:	6a 01                	push   $0x1
     c1a:	68 41 47 00 00       	push   $0x4741
     c1f:	ff 75 e4             	push   -0x1c(%ebp)
     c22:	e8 ec 2c 00 00       	call   3913 <write>
     c27:	83 c4 10             	add    $0x10,%esp
     c2a:	83 f8 01             	cmp    $0x1,%eax
     c2d:	0f 85 b8 00 00 00    	jne    ceb <preempt+0x13b>
    close(pfds[1]);
     c33:	83 ec 0c             	sub    $0xc,%esp
     c36:	ff 75 e4             	push   -0x1c(%ebp)
     c39:	e8 dd 2c 00 00       	call   391b <close>
     c3e:	83 c4 10             	add    $0x10,%esp
    for(;;)
     c41:	eb fe                	jmp    c41 <preempt+0x91>
     c43:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  close(pfds[1]);
     c48:	83 ec 0c             	sub    $0xc,%esp
     c4b:	ff 75 e4             	push   -0x1c(%ebp)
     c4e:	e8 c8 2c 00 00       	call   391b <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
     c53:	83 c4 0c             	add    $0xc,%esp
     c56:	68 00 20 00 00       	push   $0x2000
     c5b:	68 40 7d 00 00       	push   $0x7d40
     c60:	ff 75 e0             	push   -0x20(%ebp)
     c63:	e8 a3 2c 00 00       	call   390b <read>
     c68:	83 c4 10             	add    $0x10,%esp
     c6b:	83 f8 01             	cmp    $0x1,%eax
     c6e:	75 67                	jne    cd7 <preempt+0x127>
  close(pfds[0]);
     c70:	83 ec 0c             	sub    $0xc,%esp
     c73:	ff 75 e0             	push   -0x20(%ebp)
     c76:	e8 a0 2c 00 00       	call   391b <close>
  printf(1, "kill... ");
     c7b:	58                   	pop    %eax
     c7c:	5a                   	pop    %edx
     c7d:	68 ad 41 00 00       	push   $0x41ad
     c82:	6a 01                	push   $0x1
     c84:	e8 f7 2d 00 00       	call   3a80 <printf>
  kill(pid1);
     c89:	89 1c 24             	mov    %ebx,(%esp)
     c8c:	e8 92 2c 00 00       	call   3923 <kill>
  kill(pid2);
     c91:	89 34 24             	mov    %esi,(%esp)
     c94:	e8 8a 2c 00 00       	call   3923 <kill>
  kill(pid3);
     c99:	89 3c 24             	mov    %edi,(%esp)
     c9c:	e8 82 2c 00 00       	call   3923 <kill>
  printf(1, "wait... ");
     ca1:	59                   	pop    %ecx
     ca2:	5b                   	pop    %ebx
     ca3:	68 b6 41 00 00       	push   $0x41b6
     ca8:	6a 01                	push   $0x1
     caa:	e8 d1 2d 00 00       	call   3a80 <printf>
  wait();
     caf:	e8 47 2c 00 00       	call   38fb <wait>
  wait();
     cb4:	e8 42 2c 00 00       	call   38fb <wait>
  wait();
     cb9:	e8 3d 2c 00 00       	call   38fb <wait>
  printf(1, "preempt ok\n");
     cbe:	5e                   	pop    %esi
     cbf:	5f                   	pop    %edi
     cc0:	68 bf 41 00 00       	push   $0x41bf
     cc5:	6a 01                	push   $0x1
     cc7:	e8 b4 2d 00 00       	call   3a80 <printf>
     ccc:	83 c4 10             	add    $0x10,%esp
}
     ccf:	8d 65 f4             	lea    -0xc(%ebp),%esp
     cd2:	5b                   	pop    %ebx
     cd3:	5e                   	pop    %esi
     cd4:	5f                   	pop    %edi
     cd5:	5d                   	pop    %ebp
     cd6:	c3                   	ret
    printf(1, "preempt read error");
     cd7:	83 ec 08             	sub    $0x8,%esp
     cda:	68 9a 41 00 00       	push   $0x419a
     cdf:	6a 01                	push   $0x1
     ce1:	e8 9a 2d 00 00       	call   3a80 <printf>
     ce6:	83 c4 10             	add    $0x10,%esp
     ce9:	eb e4                	jmp    ccf <preempt+0x11f>
      printf(1, "preempt write error");
     ceb:	83 ec 08             	sub    $0x8,%esp
     cee:	68 86 41 00 00       	push   $0x4186
     cf3:	6a 01                	push   $0x1
     cf5:	e8 86 2d 00 00       	call   3a80 <printf>
     cfa:	83 c4 10             	add    $0x10,%esp
     cfd:	e9 31 ff ff ff       	jmp    c33 <preempt+0x83>
     d02:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     d09:	00 
     d0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000d10 <exitwait>:
{
     d10:	55                   	push   %ebp
     d11:	89 e5                	mov    %esp,%ebp
     d13:	56                   	push   %esi
     d14:	be 64 00 00 00       	mov    $0x64,%esi
     d19:	53                   	push   %ebx
     d1a:	eb 14                	jmp    d30 <exitwait+0x20>
     d1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid){
     d20:	74 68                	je     d8a <exitwait+0x7a>
      if(wait() != pid){
     d22:	e8 d4 2b 00 00       	call   38fb <wait>
     d27:	39 d8                	cmp    %ebx,%eax
     d29:	75 2d                	jne    d58 <exitwait+0x48>
  for(i = 0; i < 100; i++){
     d2b:	83 ee 01             	sub    $0x1,%esi
     d2e:	74 41                	je     d71 <exitwait+0x61>
    pid = fork();
     d30:	e8 b6 2b 00 00       	call   38eb <fork>
     d35:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
     d37:	85 c0                	test   %eax,%eax
     d39:	79 e5                	jns    d20 <exitwait+0x10>
      printf(1, "fork failed\n");
     d3b:	83 ec 08             	sub    $0x8,%esp
     d3e:	68 29 4d 00 00       	push   $0x4d29
     d43:	6a 01                	push   $0x1
     d45:	e8 36 2d 00 00       	call   3a80 <printf>
      return;
     d4a:	83 c4 10             	add    $0x10,%esp
}
     d4d:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d50:	5b                   	pop    %ebx
     d51:	5e                   	pop    %esi
     d52:	5d                   	pop    %ebp
     d53:	c3                   	ret
     d54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        printf(1, "wait wrong pid\n");
     d58:	83 ec 08             	sub    $0x8,%esp
     d5b:	68 cb 41 00 00       	push   $0x41cb
     d60:	6a 01                	push   $0x1
     d62:	e8 19 2d 00 00       	call   3a80 <printf>
        return;
     d67:	83 c4 10             	add    $0x10,%esp
}
     d6a:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d6d:	5b                   	pop    %ebx
     d6e:	5e                   	pop    %esi
     d6f:	5d                   	pop    %ebp
     d70:	c3                   	ret
  printf(1, "exitwait ok\n");
     d71:	83 ec 08             	sub    $0x8,%esp
     d74:	68 db 41 00 00       	push   $0x41db
     d79:	6a 01                	push   $0x1
     d7b:	e8 00 2d 00 00       	call   3a80 <printf>
     d80:	83 c4 10             	add    $0x10,%esp
}
     d83:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d86:	5b                   	pop    %ebx
     d87:	5e                   	pop    %esi
     d88:	5d                   	pop    %ebp
     d89:	c3                   	ret
      exit();
     d8a:	e8 64 2b 00 00       	call   38f3 <exit>
     d8f:	90                   	nop

00000d90 <mem>:
{
     d90:	55                   	push   %ebp
     d91:	89 e5                	mov    %esp,%ebp
     d93:	56                   	push   %esi
     d94:	31 f6                	xor    %esi,%esi
     d96:	53                   	push   %ebx
  printf(1, "mem test\n");
     d97:	83 ec 08             	sub    $0x8,%esp
     d9a:	68 e8 41 00 00       	push   $0x41e8
     d9f:	6a 01                	push   $0x1
     da1:	e8 da 2c 00 00       	call   3a80 <printf>
  ppid = getpid();
     da6:	e8 c8 2b 00 00       	call   3973 <getpid>
     dab:	89 c3                	mov    %eax,%ebx
  if((pid = fork()) == 0){
     dad:	e8 39 2b 00 00       	call   38eb <fork>
     db2:	83 c4 10             	add    $0x10,%esp
     db5:	85 c0                	test   %eax,%eax
     db7:	74 0b                	je     dc4 <mem+0x34>
     db9:	e9 8a 00 00 00       	jmp    e48 <mem+0xb8>
     dbe:	66 90                	xchg   %ax,%ax
      *(char**)m2 = m1;
     dc0:	89 30                	mov    %esi,(%eax)
      m1 = m2;
     dc2:	89 c6                	mov    %eax,%esi
    while((m2 = malloc(10001)) != 0){
     dc4:	83 ec 0c             	sub    $0xc,%esp
     dc7:	68 11 27 00 00       	push   $0x2711
     dcc:	e8 2f 2f 00 00       	call   3d00 <malloc>
     dd1:	83 c4 10             	add    $0x10,%esp
     dd4:	85 c0                	test   %eax,%eax
     dd6:	75 e8                	jne    dc0 <mem+0x30>
    while(m1){
     dd8:	85 f6                	test   %esi,%esi
     dda:	74 18                	je     df4 <mem+0x64>
     ddc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      m2 = *(char**)m1;
     de0:	89 f0                	mov    %esi,%eax
      free(m1);
     de2:	83 ec 0c             	sub    $0xc,%esp
      m2 = *(char**)m1;
     de5:	8b 36                	mov    (%esi),%esi
      free(m1);
     de7:	50                   	push   %eax
     de8:	e8 73 2e 00 00       	call   3c60 <free>
    while(m1){
     ded:	83 c4 10             	add    $0x10,%esp
     df0:	85 f6                	test   %esi,%esi
     df2:	75 ec                	jne    de0 <mem+0x50>
    m1 = malloc(1024*20);
     df4:	83 ec 0c             	sub    $0xc,%esp
     df7:	68 00 50 00 00       	push   $0x5000
     dfc:	e8 ff 2e 00 00       	call   3d00 <malloc>
    if(m1 == 0){
     e01:	83 c4 10             	add    $0x10,%esp
     e04:	85 c0                	test   %eax,%eax
     e06:	74 20                	je     e28 <mem+0x98>
    free(m1);
     e08:	83 ec 0c             	sub    $0xc,%esp
     e0b:	50                   	push   %eax
     e0c:	e8 4f 2e 00 00       	call   3c60 <free>
    printf(1, "mem ok\n");
     e11:	58                   	pop    %eax
     e12:	5a                   	pop    %edx
     e13:	68 0c 42 00 00       	push   $0x420c
     e18:	6a 01                	push   $0x1
     e1a:	e8 61 2c 00 00       	call   3a80 <printf>
    exit();
     e1f:	e8 cf 2a 00 00       	call   38f3 <exit>
     e24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "couldn't allocate mem?!!\n");
     e28:	83 ec 08             	sub    $0x8,%esp
     e2b:	68 f2 41 00 00       	push   $0x41f2
     e30:	6a 01                	push   $0x1
     e32:	e8 49 2c 00 00       	call   3a80 <printf>
      kill(ppid);
     e37:	89 1c 24             	mov    %ebx,(%esp)
     e3a:	e8 e4 2a 00 00       	call   3923 <kill>
      exit();
     e3f:	e8 af 2a 00 00       	call   38f3 <exit>
     e44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
}
     e48:	8d 65 f8             	lea    -0x8(%ebp),%esp
     e4b:	5b                   	pop    %ebx
     e4c:	5e                   	pop    %esi
     e4d:	5d                   	pop    %ebp
    wait();
     e4e:	e9 a8 2a 00 00       	jmp    38fb <wait>
     e53:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     e5a:	00 
     e5b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00000e60 <sharedfd>:
{
     e60:	55                   	push   %ebp
     e61:	89 e5                	mov    %esp,%ebp
     e63:	57                   	push   %edi
     e64:	56                   	push   %esi
     e65:	53                   	push   %ebx
     e66:	83 ec 34             	sub    $0x34,%esp
  printf(1, "sharedfd test\n");
     e69:	68 14 42 00 00       	push   $0x4214
     e6e:	6a 01                	push   $0x1
     e70:	e8 0b 2c 00 00       	call   3a80 <printf>
  unlink("sharedfd");
     e75:	c7 04 24 23 42 00 00 	movl   $0x4223,(%esp)
     e7c:	e8 c2 2a 00 00       	call   3943 <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
     e81:	5b                   	pop    %ebx
     e82:	5e                   	pop    %esi
     e83:	68 02 02 00 00       	push   $0x202
     e88:	68 23 42 00 00       	push   $0x4223
     e8d:	e8 a1 2a 00 00       	call   3933 <open>
  if(fd < 0){
     e92:	83 c4 10             	add    $0x10,%esp
     e95:	85 c0                	test   %eax,%eax
     e97:	0f 88 2a 01 00 00    	js     fc7 <sharedfd+0x167>
     e9d:	89 c7                	mov    %eax,%edi
  memset(buf, pid==0?'c':'p', sizeof(buf));
     e9f:	8d 75 dc             	lea    -0x24(%ebp),%esi
     ea2:	bb e8 03 00 00       	mov    $0x3e8,%ebx
  pid = fork();
     ea7:	e8 3f 2a 00 00       	call   38eb <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
     eac:	83 f8 01             	cmp    $0x1,%eax
  pid = fork();
     eaf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  memset(buf, pid==0?'c':'p', sizeof(buf));
     eb2:	19 c0                	sbb    %eax,%eax
     eb4:	83 ec 04             	sub    $0x4,%esp
     eb7:	83 e0 f3             	and    $0xfffffff3,%eax
     eba:	6a 0a                	push   $0xa
     ebc:	83 c0 70             	add    $0x70,%eax
     ebf:	50                   	push   %eax
     ec0:	56                   	push   %esi
     ec1:	e8 aa 28 00 00       	call   3770 <memset>
     ec6:	83 c4 10             	add    $0x10,%esp
     ec9:	eb 0a                	jmp    ed5 <sharedfd+0x75>
     ecb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 1000; i++){
     ed0:	83 eb 01             	sub    $0x1,%ebx
     ed3:	74 26                	je     efb <sharedfd+0x9b>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
     ed5:	83 ec 04             	sub    $0x4,%esp
     ed8:	6a 0a                	push   $0xa
     eda:	56                   	push   %esi
     edb:	57                   	push   %edi
     edc:	e8 32 2a 00 00       	call   3913 <write>
     ee1:	83 c4 10             	add    $0x10,%esp
     ee4:	83 f8 0a             	cmp    $0xa,%eax
     ee7:	74 e7                	je     ed0 <sharedfd+0x70>
      printf(1, "fstests: write sharedfd failed\n");
     ee9:	83 ec 08             	sub    $0x8,%esp
     eec:	68 1c 4f 00 00       	push   $0x4f1c
     ef1:	6a 01                	push   $0x1
     ef3:	e8 88 2b 00 00       	call   3a80 <printf>
      break;
     ef8:	83 c4 10             	add    $0x10,%esp
  if(pid == 0)
     efb:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
     efe:	85 c9                	test   %ecx,%ecx
     f00:	0f 84 f5 00 00 00    	je     ffb <sharedfd+0x19b>
    wait();
     f06:	e8 f0 29 00 00       	call   38fb <wait>
  close(fd);
     f0b:	83 ec 0c             	sub    $0xc,%esp
  nc = np = 0;
     f0e:	31 db                	xor    %ebx,%ebx
  close(fd);
     f10:	57                   	push   %edi
     f11:	8d 7d e6             	lea    -0x1a(%ebp),%edi
     f14:	e8 02 2a 00 00       	call   391b <close>
  fd = open("sharedfd", 0);
     f19:	58                   	pop    %eax
     f1a:	5a                   	pop    %edx
     f1b:	6a 00                	push   $0x0
     f1d:	68 23 42 00 00       	push   $0x4223
     f22:	e8 0c 2a 00 00       	call   3933 <open>
  if(fd < 0){
     f27:	83 c4 10             	add    $0x10,%esp
  nc = np = 0;
     f2a:	31 d2                	xor    %edx,%edx
  fd = open("sharedfd", 0);
     f2c:	89 45 d0             	mov    %eax,-0x30(%ebp)
  if(fd < 0){
     f2f:	85 c0                	test   %eax,%eax
     f31:	0f 88 aa 00 00 00    	js     fe1 <sharedfd+0x181>
     f37:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     f3e:	00 
     f3f:	90                   	nop
  while((n = read(fd, buf, sizeof(buf))) > 0){
     f40:	83 ec 04             	sub    $0x4,%esp
     f43:	89 55 d4             	mov    %edx,-0x2c(%ebp)
     f46:	6a 0a                	push   $0xa
     f48:	56                   	push   %esi
     f49:	ff 75 d0             	push   -0x30(%ebp)
     f4c:	e8 ba 29 00 00       	call   390b <read>
     f51:	83 c4 10             	add    $0x10,%esp
     f54:	85 c0                	test   %eax,%eax
     f56:	7e 28                	jle    f80 <sharedfd+0x120>
     f58:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     f5b:	89 f0                	mov    %esi,%eax
     f5d:	eb 13                	jmp    f72 <sharedfd+0x112>
     f5f:	90                   	nop
        np++;
     f60:	80 f9 70             	cmp    $0x70,%cl
     f63:	0f 94 c1             	sete   %cl
     f66:	0f b6 c9             	movzbl %cl,%ecx
     f69:	01 cb                	add    %ecx,%ebx
    for(i = 0; i < sizeof(buf); i++){
     f6b:	83 c0 01             	add    $0x1,%eax
     f6e:	39 f8                	cmp    %edi,%eax
     f70:	74 ce                	je     f40 <sharedfd+0xe0>
      if(buf[i] == 'c')
     f72:	0f b6 08             	movzbl (%eax),%ecx
     f75:	80 f9 63             	cmp    $0x63,%cl
     f78:	75 e6                	jne    f60 <sharedfd+0x100>
        nc++;
     f7a:	83 c2 01             	add    $0x1,%edx
      if(buf[i] == 'p')
     f7d:	eb ec                	jmp    f6b <sharedfd+0x10b>
     f7f:	90                   	nop
  close(fd);
     f80:	83 ec 0c             	sub    $0xc,%esp
     f83:	ff 75 d0             	push   -0x30(%ebp)
     f86:	e8 90 29 00 00       	call   391b <close>
  unlink("sharedfd");
     f8b:	c7 04 24 23 42 00 00 	movl   $0x4223,(%esp)
     f92:	e8 ac 29 00 00       	call   3943 <unlink>
  if(nc == 10000 && np == 10000){
     f97:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     f9a:	83 c4 10             	add    $0x10,%esp
     f9d:	81 fa 10 27 00 00    	cmp    $0x2710,%edx
     fa3:	75 5b                	jne    1000 <sharedfd+0x1a0>
     fa5:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
     fab:	75 53                	jne    1000 <sharedfd+0x1a0>
    printf(1, "sharedfd ok\n");
     fad:	83 ec 08             	sub    $0x8,%esp
     fb0:	68 2c 42 00 00       	push   $0x422c
     fb5:	6a 01                	push   $0x1
     fb7:	e8 c4 2a 00 00       	call   3a80 <printf>
     fbc:	83 c4 10             	add    $0x10,%esp
}
     fbf:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fc2:	5b                   	pop    %ebx
     fc3:	5e                   	pop    %esi
     fc4:	5f                   	pop    %edi
     fc5:	5d                   	pop    %ebp
     fc6:	c3                   	ret
    printf(1, "fstests: cannot open sharedfd for writing");
     fc7:	83 ec 08             	sub    $0x8,%esp
     fca:	68 f0 4e 00 00       	push   $0x4ef0
     fcf:	6a 01                	push   $0x1
     fd1:	e8 aa 2a 00 00       	call   3a80 <printf>
    return;
     fd6:	83 c4 10             	add    $0x10,%esp
}
     fd9:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fdc:	5b                   	pop    %ebx
     fdd:	5e                   	pop    %esi
     fde:	5f                   	pop    %edi
     fdf:	5d                   	pop    %ebp
     fe0:	c3                   	ret
    printf(1, "fstests: cannot open sharedfd for reading\n");
     fe1:	83 ec 08             	sub    $0x8,%esp
     fe4:	68 3c 4f 00 00       	push   $0x4f3c
     fe9:	6a 01                	push   $0x1
     feb:	e8 90 2a 00 00       	call   3a80 <printf>
    return;
     ff0:	83 c4 10             	add    $0x10,%esp
}
     ff3:	8d 65 f4             	lea    -0xc(%ebp),%esp
     ff6:	5b                   	pop    %ebx
     ff7:	5e                   	pop    %esi
     ff8:	5f                   	pop    %edi
     ff9:	5d                   	pop    %ebp
     ffa:	c3                   	ret
    exit();
     ffb:	e8 f3 28 00 00       	call   38f3 <exit>
    printf(1, "sharedfd oops %d %d\n", nc, np);
    1000:	53                   	push   %ebx
    1001:	52                   	push   %edx
    1002:	68 39 42 00 00       	push   $0x4239
    1007:	6a 01                	push   $0x1
    1009:	e8 72 2a 00 00       	call   3a80 <printf>
    exit();
    100e:	e8 e0 28 00 00       	call   38f3 <exit>
    1013:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    101a:	00 
    101b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00001020 <fourfiles>:
{
    1020:	55                   	push   %ebp
    1021:	89 e5                	mov    %esp,%ebp
    1023:	57                   	push   %edi
    1024:	56                   	push   %esi
    1025:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    1026:	31 db                	xor    %ebx,%ebx
{
    1028:	83 ec 34             	sub    $0x34,%esp
  char *names[] = { "f0", "f1", "f2", "f3" };
    102b:	c7 45 d8 4e 42 00 00 	movl   $0x424e,-0x28(%ebp)
    1032:	c7 45 dc 97 43 00 00 	movl   $0x4397,-0x24(%ebp)
    1039:	c7 45 e0 9b 43 00 00 	movl   $0x439b,-0x20(%ebp)
    1040:	c7 45 e4 51 42 00 00 	movl   $0x4251,-0x1c(%ebp)
  printf(1, "fourfiles test\n");
    1047:	68 54 42 00 00       	push   $0x4254
    104c:	6a 01                	push   $0x1
    104e:	e8 2d 2a 00 00       	call   3a80 <printf>
    1053:	83 c4 10             	add    $0x10,%esp
    fname = names[pi];
    1056:	8b 74 9d d8          	mov    -0x28(%ebp,%ebx,4),%esi
    unlink(fname);
    105a:	83 ec 0c             	sub    $0xc,%esp
    105d:	56                   	push   %esi
    105e:	e8 e0 28 00 00       	call   3943 <unlink>
    pid = fork();
    1063:	e8 83 28 00 00       	call   38eb <fork>
    if(pid < 0){
    1068:	83 c4 10             	add    $0x10,%esp
    106b:	85 c0                	test   %eax,%eax
    106d:	0f 88 5d 01 00 00    	js     11d0 <fourfiles+0x1b0>
    if(pid == 0){
    1073:	0f 84 e7 00 00 00    	je     1160 <fourfiles+0x140>
  for(pi = 0; pi < 4; pi++){
    1079:	83 c3 01             	add    $0x1,%ebx
    107c:	83 fb 04             	cmp    $0x4,%ebx
    107f:	75 d5                	jne    1056 <fourfiles+0x36>
    wait();
    1081:	e8 75 28 00 00       	call   38fb <wait>
    1086:	e8 70 28 00 00       	call   38fb <wait>
    108b:	e8 6b 28 00 00       	call   38fb <wait>
    1090:	e8 66 28 00 00       	call   38fb <wait>
  for(i = 0; i < 2; i++){
    1095:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    fname = names[i];
    109c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
    fd = open(fname, 0);
    109f:	83 ec 08             	sub    $0x8,%esp
    fname = names[i];
    10a2:	8b 44 9d d8          	mov    -0x28(%ebp,%ebx,4),%eax
        if(buf[j] != '0'+i){
    10a6:	8d 73 30             	lea    0x30(%ebx),%esi
    total = 0;
    10a9:	31 db                	xor    %ebx,%ebx
    fname = names[i];
    10ab:	89 45 d0             	mov    %eax,-0x30(%ebp)
    fd = open(fname, 0);
    10ae:	6a 00                	push   $0x0
    10b0:	50                   	push   %eax
    10b1:	e8 7d 28 00 00       	call   3933 <open>
        if(buf[j] != '0'+i){
    10b6:	83 c4 10             	add    $0x10,%esp
    fd = open(fname, 0);
    10b9:	89 c7                	mov    %eax,%edi
    while((n = read(fd, buf, sizeof(buf))) > 0){
    10bb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    10c0:	83 ec 04             	sub    $0x4,%esp
    10c3:	68 00 20 00 00       	push   $0x2000
    10c8:	68 40 7d 00 00       	push   $0x7d40
    10cd:	57                   	push   %edi
    10ce:	e8 38 28 00 00       	call   390b <read>
    10d3:	83 c4 10             	add    $0x10,%esp
    10d6:	85 c0                	test   %eax,%eax
    10d8:	7e 1c                	jle    10f6 <fourfiles+0xd6>
      for(j = 0; j < n; j++){
    10da:	31 d2                	xor    %edx,%edx
    10dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        if(buf[j] != '0'+i){
    10e0:	0f be 8a 40 7d 00 00 	movsbl 0x7d40(%edx),%ecx
    10e7:	39 f1                	cmp    %esi,%ecx
    10e9:	75 61                	jne    114c <fourfiles+0x12c>
      for(j = 0; j < n; j++){
    10eb:	83 c2 01             	add    $0x1,%edx
    10ee:	39 d0                	cmp    %edx,%eax
    10f0:	75 ee                	jne    10e0 <fourfiles+0xc0>
      total += n;
    10f2:	01 c3                	add    %eax,%ebx
    10f4:	eb ca                	jmp    10c0 <fourfiles+0xa0>
    close(fd);
    10f6:	83 ec 0c             	sub    $0xc,%esp
    10f9:	57                   	push   %edi
    10fa:	e8 1c 28 00 00       	call   391b <close>
    if(total != 12*500){
    10ff:	83 c4 10             	add    $0x10,%esp
    1102:	81 fb 70 17 00 00    	cmp    $0x1770,%ebx
    1108:	0f 85 d6 00 00 00    	jne    11e4 <fourfiles+0x1c4>
    unlink(fname);
    110e:	83 ec 0c             	sub    $0xc,%esp
    1111:	ff 75 d0             	push   -0x30(%ebp)
    1114:	e8 2a 28 00 00       	call   3943 <unlink>
  for(i = 0; i < 2; i++){
    1119:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    111c:	83 c4 10             	add    $0x10,%esp
    111f:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
    1126:	83 c0 01             	add    $0x1,%eax
    1129:	83 f8 02             	cmp    $0x2,%eax
    112c:	0f 85 6a ff ff ff    	jne    109c <fourfiles+0x7c>
  printf(1, "fourfiles ok\n");
    1132:	83 ec 08             	sub    $0x8,%esp
    1135:	68 92 42 00 00       	push   $0x4292
    113a:	6a 01                	push   $0x1
    113c:	e8 3f 29 00 00       	call   3a80 <printf>
}
    1141:	83 c4 10             	add    $0x10,%esp
    1144:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1147:	5b                   	pop    %ebx
    1148:	5e                   	pop    %esi
    1149:	5f                   	pop    %edi
    114a:	5d                   	pop    %ebp
    114b:	c3                   	ret
          printf(1, "wrong char\n");
    114c:	83 ec 08             	sub    $0x8,%esp
    114f:	68 75 42 00 00       	push   $0x4275
    1154:	6a 01                	push   $0x1
    1156:	e8 25 29 00 00       	call   3a80 <printf>
          exit();
    115b:	e8 93 27 00 00       	call   38f3 <exit>
      fd = open(fname, O_CREATE | O_RDWR);
    1160:	83 ec 08             	sub    $0x8,%esp
    1163:	68 02 02 00 00       	push   $0x202
    1168:	56                   	push   %esi
    1169:	e8 c5 27 00 00       	call   3933 <open>
      if(fd < 0){
    116e:	83 c4 10             	add    $0x10,%esp
      fd = open(fname, O_CREATE | O_RDWR);
    1171:	89 c6                	mov    %eax,%esi
      if(fd < 0){
    1173:	85 c0                	test   %eax,%eax
    1175:	78 45                	js     11bc <fourfiles+0x19c>
      memset(buf, '0'+pi, 512);
    1177:	83 ec 04             	sub    $0x4,%esp
    117a:	83 c3 30             	add    $0x30,%ebx
    117d:	68 00 02 00 00       	push   $0x200
    1182:	53                   	push   %ebx
    1183:	bb 0c 00 00 00       	mov    $0xc,%ebx
    1188:	68 40 7d 00 00       	push   $0x7d40
    118d:	e8 de 25 00 00       	call   3770 <memset>
    1192:	83 c4 10             	add    $0x10,%esp
        if((n = write(fd, buf, 500)) != 500){
    1195:	83 ec 04             	sub    $0x4,%esp
    1198:	68 f4 01 00 00       	push   $0x1f4
    119d:	68 40 7d 00 00       	push   $0x7d40
    11a2:	56                   	push   %esi
    11a3:	e8 6b 27 00 00       	call   3913 <write>
    11a8:	83 c4 10             	add    $0x10,%esp
    11ab:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    11b0:	75 45                	jne    11f7 <fourfiles+0x1d7>
      for(i = 0; i < 12; i++){
    11b2:	83 eb 01             	sub    $0x1,%ebx
    11b5:	75 de                	jne    1195 <fourfiles+0x175>
      exit();
    11b7:	e8 37 27 00 00       	call   38f3 <exit>
        printf(1, "create failed\n");
    11bc:	51                   	push   %ecx
    11bd:	51                   	push   %ecx
    11be:	68 ef 44 00 00       	push   $0x44ef
    11c3:	6a 01                	push   $0x1
    11c5:	e8 b6 28 00 00       	call   3a80 <printf>
        exit();
    11ca:	e8 24 27 00 00       	call   38f3 <exit>
    11cf:	90                   	nop
      printf(1, "fork failed\n");
    11d0:	83 ec 08             	sub    $0x8,%esp
    11d3:	68 29 4d 00 00       	push   $0x4d29
    11d8:	6a 01                	push   $0x1
    11da:	e8 a1 28 00 00       	call   3a80 <printf>
      exit();
    11df:	e8 0f 27 00 00       	call   38f3 <exit>
      printf(1, "wrong length %d\n", total);
    11e4:	50                   	push   %eax
    11e5:	53                   	push   %ebx
    11e6:	68 81 42 00 00       	push   $0x4281
    11eb:	6a 01                	push   $0x1
    11ed:	e8 8e 28 00 00       	call   3a80 <printf>
      exit();
    11f2:	e8 fc 26 00 00       	call   38f3 <exit>
          printf(1, "write failed %d\n", n);
    11f7:	52                   	push   %edx
    11f8:	50                   	push   %eax
    11f9:	68 64 42 00 00       	push   $0x4264
    11fe:	6a 01                	push   $0x1
    1200:	e8 7b 28 00 00       	call   3a80 <printf>
          exit();
    1205:	e8 e9 26 00 00       	call   38f3 <exit>
    120a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001210 <createdelete>:
{
    1210:	55                   	push   %ebp
    1211:	89 e5                	mov    %esp,%ebp
    1213:	57                   	push   %edi
    1214:	56                   	push   %esi
  for(pi = 0; pi < 4; pi++){
    1215:	31 f6                	xor    %esi,%esi
{
    1217:	53                   	push   %ebx
    1218:	83 ec 44             	sub    $0x44,%esp
  printf(1, "createdelete test\n");
    121b:	68 a0 42 00 00       	push   $0x42a0
    1220:	6a 01                	push   $0x1
    1222:	e8 59 28 00 00       	call   3a80 <printf>
    1227:	83 c4 10             	add    $0x10,%esp
    pid = fork();
    122a:	e8 bc 26 00 00       	call   38eb <fork>
    122f:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
    1231:	85 c0                	test   %eax,%eax
    1233:	0f 88 aa 01 00 00    	js     13e3 <createdelete+0x1d3>
    if(pid == 0){
    1239:	0f 84 11 01 00 00    	je     1350 <createdelete+0x140>
  for(pi = 0; pi < 4; pi++){
    123f:	83 c6 01             	add    $0x1,%esi
    1242:	83 fe 04             	cmp    $0x4,%esi
    1245:	75 e3                	jne    122a <createdelete+0x1a>
    wait();
    1247:	e8 af 26 00 00       	call   38fb <wait>
  for(i = 0; i < N; i++){
    124c:	31 ff                	xor    %edi,%edi
    124e:	8d 75 c8             	lea    -0x38(%ebp),%esi
    wait();
    1251:	e8 a5 26 00 00       	call   38fb <wait>
    1256:	e8 a0 26 00 00       	call   38fb <wait>
    125b:	e8 9b 26 00 00       	call   38fb <wait>
  name[0] = name[1] = name[2] = 0;
    1260:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
  for(i = 0; i < N; i++){
    1264:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    126b:	00 
    126c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if((i == 0 || i >= N/2) && fd < 0){
    1270:	85 ff                	test   %edi,%edi
      name[1] = '0' + i;
    1272:	bb 70 00 00 00       	mov    $0x70,%ebx
      if((i == 0 || i >= N/2) && fd < 0){
    1277:	0f 94 c2             	sete   %dl
    127a:	83 ff 09             	cmp    $0x9,%edi
    127d:	0f 9f c0             	setg   %al
    1280:	09 c2                	or     %eax,%edx
      name[1] = '0' + i;
    1282:	8d 47 30             	lea    0x30(%edi),%eax
      if((i == 0 || i >= N/2) && fd < 0){
    1285:	88 55 c7             	mov    %dl,-0x39(%ebp)
      name[1] = '0' + i;
    1288:	88 45 c6             	mov    %al,-0x3a(%ebp)
    128b:	0f b6 45 c6          	movzbl -0x3a(%ebp),%eax
      fd = open(name, 0);
    128f:	83 ec 08             	sub    $0x8,%esp
      name[0] = 'p' + pi;
    1292:	88 5d c8             	mov    %bl,-0x38(%ebp)
      name[1] = '0' + i;
    1295:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    1298:	6a 00                	push   $0x0
    129a:	56                   	push   %esi
    129b:	e8 93 26 00 00       	call   3933 <open>
      if((i == 0 || i >= N/2) && fd < 0){
    12a0:	83 c4 10             	add    $0x10,%esp
    12a3:	80 7d c7 00          	cmpb   $0x0,-0x39(%ebp)
    12a7:	0f 84 83 00 00 00    	je     1330 <createdelete+0x120>
    12ad:	85 c0                	test   %eax,%eax
    12af:	0f 88 19 01 00 00    	js     13ce <createdelete+0x1be>
        close(fd);
    12b5:	83 ec 0c             	sub    $0xc,%esp
    12b8:	50                   	push   %eax
    12b9:	e8 5d 26 00 00       	call   391b <close>
    12be:	83 c4 10             	add    $0x10,%esp
    for(pi = 0; pi < 4; pi++){
    12c1:	83 c3 01             	add    $0x1,%ebx
    12c4:	80 fb 74             	cmp    $0x74,%bl
    12c7:	75 c2                	jne    128b <createdelete+0x7b>
  for(i = 0; i < N; i++){
    12c9:	83 c7 01             	add    $0x1,%edi
    12cc:	83 ff 14             	cmp    $0x14,%edi
    12cf:	75 9f                	jne    1270 <createdelete+0x60>
    12d1:	bf 70 00 00 00       	mov    $0x70,%edi
    12d6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    12dd:	00 
    12de:	66 90                	xchg   %ax,%ax
      name[1] = '0' + i;
    12e0:	8d 47 c0             	lea    -0x40(%edi),%eax
    12e3:	bb 04 00 00 00       	mov    $0x4,%ebx
    12e8:	88 45 c7             	mov    %al,-0x39(%ebp)
      name[0] = 'p' + i;
    12eb:	89 f8                	mov    %edi,%eax
      unlink(name);
    12ed:	83 ec 0c             	sub    $0xc,%esp
      name[0] = 'p' + i;
    12f0:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    12f3:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
    12f7:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    12fa:	56                   	push   %esi
    12fb:	e8 43 26 00 00       	call   3943 <unlink>
    for(pi = 0; pi < 4; pi++){
    1300:	83 c4 10             	add    $0x10,%esp
    1303:	83 eb 01             	sub    $0x1,%ebx
    1306:	75 e3                	jne    12eb <createdelete+0xdb>
  for(i = 0; i < N; i++){
    1308:	83 c7 01             	add    $0x1,%edi
    130b:	89 f8                	mov    %edi,%eax
    130d:	3c 84                	cmp    $0x84,%al
    130f:	75 cf                	jne    12e0 <createdelete+0xd0>
  printf(1, "createdelete ok\n");
    1311:	83 ec 08             	sub    $0x8,%esp
    1314:	68 b3 42 00 00       	push   $0x42b3
    1319:	6a 01                	push   $0x1
    131b:	e8 60 27 00 00       	call   3a80 <printf>
}
    1320:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1323:	5b                   	pop    %ebx
    1324:	5e                   	pop    %esi
    1325:	5f                   	pop    %edi
    1326:	5d                   	pop    %ebp
    1327:	c3                   	ret
    1328:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    132f:	00 
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1330:	85 c0                	test   %eax,%eax
    1332:	78 8d                	js     12c1 <createdelete+0xb1>
        printf(1, "oops createdelete %s did exist\n", name);
    1334:	50                   	push   %eax
    1335:	56                   	push   %esi
    1336:	68 8c 4f 00 00       	push   $0x4f8c
    133b:	6a 01                	push   $0x1
    133d:	e8 3e 27 00 00       	call   3a80 <printf>
        exit();
    1342:	e8 ac 25 00 00       	call   38f3 <exit>
    1347:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    134e:	00 
    134f:	90                   	nop
      name[0] = 'p' + pi;
    1350:	8d 46 70             	lea    0x70(%esi),%eax
      name[2] = '\0';
    1353:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    1357:	8d 75 c8             	lea    -0x38(%ebp),%esi
      name[0] = 'p' + pi;
    135a:	88 45 c8             	mov    %al,-0x38(%ebp)
      for(i = 0; i < N; i++){
    135d:	8d 76 00             	lea    0x0(%esi),%esi
        fd = open(name, O_CREATE | O_RDWR);
    1360:	83 ec 08             	sub    $0x8,%esp
        name[1] = '0' + i;
    1363:	8d 43 30             	lea    0x30(%ebx),%eax
    1366:	88 45 c9             	mov    %al,-0x37(%ebp)
        fd = open(name, O_CREATE | O_RDWR);
    1369:	68 02 02 00 00       	push   $0x202
    136e:	56                   	push   %esi
    136f:	e8 bf 25 00 00       	call   3933 <open>
        if(fd < 0){
    1374:	83 c4 10             	add    $0x10,%esp
    1377:	85 c0                	test   %eax,%eax
    1379:	0f 88 8b 00 00 00    	js     140a <createdelete+0x1fa>
        close(fd);
    137f:	83 ec 0c             	sub    $0xc,%esp
    1382:	50                   	push   %eax
    1383:	e8 93 25 00 00       	call   391b <close>
        if(i > 0 && (i % 2 ) == 0){
    1388:	83 c4 10             	add    $0x10,%esp
    138b:	85 db                	test   %ebx,%ebx
    138d:	74 19                	je     13a8 <createdelete+0x198>
    138f:	f6 c3 01             	test   $0x1,%bl
    1392:	74 1b                	je     13af <createdelete+0x19f>
      for(i = 0; i < N; i++){
    1394:	83 c3 01             	add    $0x1,%ebx
    1397:	83 fb 14             	cmp    $0x14,%ebx
    139a:	75 c4                	jne    1360 <createdelete+0x150>
      exit();
    139c:	e8 52 25 00 00       	call   38f3 <exit>
    13a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      for(i = 0; i < N; i++){
    13a8:	bb 01 00 00 00       	mov    $0x1,%ebx
    13ad:	eb b1                	jmp    1360 <createdelete+0x150>
          name[1] = '0' + (i / 2);
    13af:	89 d8                	mov    %ebx,%eax
          if(unlink(name) < 0){
    13b1:	83 ec 0c             	sub    $0xc,%esp
          name[1] = '0' + (i / 2);
    13b4:	d1 f8                	sar    $1,%eax
    13b6:	83 c0 30             	add    $0x30,%eax
    13b9:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    13bc:	56                   	push   %esi
    13bd:	e8 81 25 00 00       	call   3943 <unlink>
    13c2:	83 c4 10             	add    $0x10,%esp
    13c5:	85 c0                	test   %eax,%eax
    13c7:	78 2e                	js     13f7 <createdelete+0x1e7>
      for(i = 0; i < N; i++){
    13c9:	83 c3 01             	add    $0x1,%ebx
    13cc:	eb 92                	jmp    1360 <createdelete+0x150>
        printf(1, "oops createdelete %s didn't exist\n", name);
    13ce:	83 ec 04             	sub    $0x4,%esp
    13d1:	56                   	push   %esi
    13d2:	68 68 4f 00 00       	push   $0x4f68
    13d7:	6a 01                	push   $0x1
    13d9:	e8 a2 26 00 00       	call   3a80 <printf>
        exit();
    13de:	e8 10 25 00 00       	call   38f3 <exit>
      printf(1, "fork failed\n");
    13e3:	83 ec 08             	sub    $0x8,%esp
    13e6:	68 29 4d 00 00       	push   $0x4d29
    13eb:	6a 01                	push   $0x1
    13ed:	e8 8e 26 00 00       	call   3a80 <printf>
      exit();
    13f2:	e8 fc 24 00 00       	call   38f3 <exit>
            printf(1, "unlink failed\n");
    13f7:	52                   	push   %edx
    13f8:	52                   	push   %edx
    13f9:	68 a1 3e 00 00       	push   $0x3ea1
    13fe:	6a 01                	push   $0x1
    1400:	e8 7b 26 00 00       	call   3a80 <printf>
            exit();
    1405:	e8 e9 24 00 00       	call   38f3 <exit>
          printf(1, "create failed\n");
    140a:	83 ec 08             	sub    $0x8,%esp
    140d:	68 ef 44 00 00       	push   $0x44ef
    1412:	6a 01                	push   $0x1
    1414:	e8 67 26 00 00       	call   3a80 <printf>
          exit();
    1419:	e8 d5 24 00 00       	call   38f3 <exit>
    141e:	66 90                	xchg   %ax,%ax

00001420 <unlinkread>:
{
    1420:	55                   	push   %ebp
    1421:	89 e5                	mov    %esp,%ebp
    1423:	56                   	push   %esi
    1424:	53                   	push   %ebx
  printf(1, "unlinkread test\n");
    1425:	83 ec 08             	sub    $0x8,%esp
    1428:	68 c4 42 00 00       	push   $0x42c4
    142d:	6a 01                	push   $0x1
    142f:	e8 4c 26 00 00       	call   3a80 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    1434:	5b                   	pop    %ebx
    1435:	5e                   	pop    %esi
    1436:	68 02 02 00 00       	push   $0x202
    143b:	68 d5 42 00 00       	push   $0x42d5
    1440:	e8 ee 24 00 00       	call   3933 <open>
  if(fd < 0){
    1445:	83 c4 10             	add    $0x10,%esp
    1448:	85 c0                	test   %eax,%eax
    144a:	0f 88 e6 00 00 00    	js     1536 <unlinkread+0x116>
  write(fd, "hello", 5);
    1450:	83 ec 04             	sub    $0x4,%esp
    1453:	89 c3                	mov    %eax,%ebx
    1455:	6a 05                	push   $0x5
    1457:	68 fa 42 00 00       	push   $0x42fa
    145c:	50                   	push   %eax
    145d:	e8 b1 24 00 00       	call   3913 <write>
  close(fd);
    1462:	89 1c 24             	mov    %ebx,(%esp)
    1465:	e8 b1 24 00 00       	call   391b <close>
  fd = open("unlinkread", O_RDWR);
    146a:	58                   	pop    %eax
    146b:	5a                   	pop    %edx
    146c:	6a 02                	push   $0x2
    146e:	68 d5 42 00 00       	push   $0x42d5
    1473:	e8 bb 24 00 00       	call   3933 <open>
  if(fd < 0){
    1478:	83 c4 10             	add    $0x10,%esp
  fd = open("unlinkread", O_RDWR);
    147b:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    147d:	85 c0                	test   %eax,%eax
    147f:	0f 88 10 01 00 00    	js     1595 <unlinkread+0x175>
  if(unlink("unlinkread") != 0){
    1485:	83 ec 0c             	sub    $0xc,%esp
    1488:	68 d5 42 00 00       	push   $0x42d5
    148d:	e8 b1 24 00 00       	call   3943 <unlink>
    1492:	83 c4 10             	add    $0x10,%esp
    1495:	85 c0                	test   %eax,%eax
    1497:	0f 85 e5 00 00 00    	jne    1582 <unlinkread+0x162>
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    149d:	83 ec 08             	sub    $0x8,%esp
    14a0:	68 02 02 00 00       	push   $0x202
    14a5:	68 d5 42 00 00       	push   $0x42d5
    14aa:	e8 84 24 00 00       	call   3933 <open>
  write(fd1, "yyy", 3);
    14af:	83 c4 0c             	add    $0xc,%esp
    14b2:	6a 03                	push   $0x3
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    14b4:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    14b6:	68 32 43 00 00       	push   $0x4332
    14bb:	50                   	push   %eax
    14bc:	e8 52 24 00 00       	call   3913 <write>
  close(fd1);
    14c1:	89 34 24             	mov    %esi,(%esp)
    14c4:	e8 52 24 00 00       	call   391b <close>
  if(read(fd, buf, sizeof(buf)) != 5){
    14c9:	83 c4 0c             	add    $0xc,%esp
    14cc:	68 00 20 00 00       	push   $0x2000
    14d1:	68 40 7d 00 00       	push   $0x7d40
    14d6:	53                   	push   %ebx
    14d7:	e8 2f 24 00 00       	call   390b <read>
    14dc:	83 c4 10             	add    $0x10,%esp
    14df:	83 f8 05             	cmp    $0x5,%eax
    14e2:	0f 85 87 00 00 00    	jne    156f <unlinkread+0x14f>
  if(buf[0] != 'h'){
    14e8:	80 3d 40 7d 00 00 68 	cmpb   $0x68,0x7d40
    14ef:	75 6b                	jne    155c <unlinkread+0x13c>
  if(write(fd, buf, 10) != 10){
    14f1:	83 ec 04             	sub    $0x4,%esp
    14f4:	6a 0a                	push   $0xa
    14f6:	68 40 7d 00 00       	push   $0x7d40
    14fb:	53                   	push   %ebx
    14fc:	e8 12 24 00 00       	call   3913 <write>
    1501:	83 c4 10             	add    $0x10,%esp
    1504:	83 f8 0a             	cmp    $0xa,%eax
    1507:	75 40                	jne    1549 <unlinkread+0x129>
  close(fd);
    1509:	83 ec 0c             	sub    $0xc,%esp
    150c:	53                   	push   %ebx
    150d:	e8 09 24 00 00       	call   391b <close>
  unlink("unlinkread");
    1512:	c7 04 24 d5 42 00 00 	movl   $0x42d5,(%esp)
    1519:	e8 25 24 00 00       	call   3943 <unlink>
  printf(1, "unlinkread ok\n");
    151e:	58                   	pop    %eax
    151f:	5a                   	pop    %edx
    1520:	68 7d 43 00 00       	push   $0x437d
    1525:	6a 01                	push   $0x1
    1527:	e8 54 25 00 00       	call   3a80 <printf>
}
    152c:	83 c4 10             	add    $0x10,%esp
    152f:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1532:	5b                   	pop    %ebx
    1533:	5e                   	pop    %esi
    1534:	5d                   	pop    %ebp
    1535:	c3                   	ret
    printf(1, "create unlinkread failed\n");
    1536:	51                   	push   %ecx
    1537:	51                   	push   %ecx
    1538:	68 e0 42 00 00       	push   $0x42e0
    153d:	6a 01                	push   $0x1
    153f:	e8 3c 25 00 00       	call   3a80 <printf>
    exit();
    1544:	e8 aa 23 00 00       	call   38f3 <exit>
    printf(1, "unlinkread write failed\n");
    1549:	51                   	push   %ecx
    154a:	51                   	push   %ecx
    154b:	68 64 43 00 00       	push   $0x4364
    1550:	6a 01                	push   $0x1
    1552:	e8 29 25 00 00       	call   3a80 <printf>
    exit();
    1557:	e8 97 23 00 00       	call   38f3 <exit>
    printf(1, "unlinkread wrong data\n");
    155c:	53                   	push   %ebx
    155d:	53                   	push   %ebx
    155e:	68 4d 43 00 00       	push   $0x434d
    1563:	6a 01                	push   $0x1
    1565:	e8 16 25 00 00       	call   3a80 <printf>
    exit();
    156a:	e8 84 23 00 00       	call   38f3 <exit>
    printf(1, "unlinkread read failed");
    156f:	56                   	push   %esi
    1570:	56                   	push   %esi
    1571:	68 36 43 00 00       	push   $0x4336
    1576:	6a 01                	push   $0x1
    1578:	e8 03 25 00 00       	call   3a80 <printf>
    exit();
    157d:	e8 71 23 00 00       	call   38f3 <exit>
    printf(1, "unlink unlinkread failed\n");
    1582:	50                   	push   %eax
    1583:	50                   	push   %eax
    1584:	68 18 43 00 00       	push   $0x4318
    1589:	6a 01                	push   $0x1
    158b:	e8 f0 24 00 00       	call   3a80 <printf>
    exit();
    1590:	e8 5e 23 00 00       	call   38f3 <exit>
    printf(1, "open unlinkread failed\n");
    1595:	50                   	push   %eax
    1596:	50                   	push   %eax
    1597:	68 00 43 00 00       	push   $0x4300
    159c:	6a 01                	push   $0x1
    159e:	e8 dd 24 00 00       	call   3a80 <printf>
    exit();
    15a3:	e8 4b 23 00 00       	call   38f3 <exit>
    15a8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    15af:	00 

000015b0 <linktest>:
{
    15b0:	55                   	push   %ebp
    15b1:	89 e5                	mov    %esp,%ebp
    15b3:	53                   	push   %ebx
    15b4:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "linktest\n");
    15b7:	68 8c 43 00 00       	push   $0x438c
    15bc:	6a 01                	push   $0x1
    15be:	e8 bd 24 00 00       	call   3a80 <printf>
  unlink("lf1");
    15c3:	c7 04 24 96 43 00 00 	movl   $0x4396,(%esp)
    15ca:	e8 74 23 00 00       	call   3943 <unlink>
  unlink("lf2");
    15cf:	c7 04 24 9a 43 00 00 	movl   $0x439a,(%esp)
    15d6:	e8 68 23 00 00       	call   3943 <unlink>
  fd = open("lf1", O_CREATE|O_RDWR);
    15db:	58                   	pop    %eax
    15dc:	5a                   	pop    %edx
    15dd:	68 02 02 00 00       	push   $0x202
    15e2:	68 96 43 00 00       	push   $0x4396
    15e7:	e8 47 23 00 00       	call   3933 <open>
  if(fd < 0){
    15ec:	83 c4 10             	add    $0x10,%esp
    15ef:	85 c0                	test   %eax,%eax
    15f1:	0f 88 1e 01 00 00    	js     1715 <linktest+0x165>
  if(write(fd, "hello", 5) != 5){
    15f7:	83 ec 04             	sub    $0x4,%esp
    15fa:	89 c3                	mov    %eax,%ebx
    15fc:	6a 05                	push   $0x5
    15fe:	68 fa 42 00 00       	push   $0x42fa
    1603:	50                   	push   %eax
    1604:	e8 0a 23 00 00       	call   3913 <write>
    1609:	83 c4 10             	add    $0x10,%esp
    160c:	83 f8 05             	cmp    $0x5,%eax
    160f:	0f 85 98 01 00 00    	jne    17ad <linktest+0x1fd>
  close(fd);
    1615:	83 ec 0c             	sub    $0xc,%esp
    1618:	53                   	push   %ebx
    1619:	e8 fd 22 00 00       	call   391b <close>
  if(link("lf1", "lf2") < 0){
    161e:	5b                   	pop    %ebx
    161f:	58                   	pop    %eax
    1620:	68 9a 43 00 00       	push   $0x439a
    1625:	68 96 43 00 00       	push   $0x4396
    162a:	e8 24 23 00 00       	call   3953 <link>
    162f:	83 c4 10             	add    $0x10,%esp
    1632:	85 c0                	test   %eax,%eax
    1634:	0f 88 60 01 00 00    	js     179a <linktest+0x1ea>
  unlink("lf1");
    163a:	83 ec 0c             	sub    $0xc,%esp
    163d:	68 96 43 00 00       	push   $0x4396
    1642:	e8 fc 22 00 00       	call   3943 <unlink>
  if(open("lf1", 0) >= 0){
    1647:	58                   	pop    %eax
    1648:	5a                   	pop    %edx
    1649:	6a 00                	push   $0x0
    164b:	68 96 43 00 00       	push   $0x4396
    1650:	e8 de 22 00 00       	call   3933 <open>
    1655:	83 c4 10             	add    $0x10,%esp
    1658:	85 c0                	test   %eax,%eax
    165a:	0f 89 27 01 00 00    	jns    1787 <linktest+0x1d7>
  fd = open("lf2", 0);
    1660:	83 ec 08             	sub    $0x8,%esp
    1663:	6a 00                	push   $0x0
    1665:	68 9a 43 00 00       	push   $0x439a
    166a:	e8 c4 22 00 00       	call   3933 <open>
  if(fd < 0){
    166f:	83 c4 10             	add    $0x10,%esp
  fd = open("lf2", 0);
    1672:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1674:	85 c0                	test   %eax,%eax
    1676:	0f 88 f8 00 00 00    	js     1774 <linktest+0x1c4>
  if(read(fd, buf, sizeof(buf)) != 5){
    167c:	83 ec 04             	sub    $0x4,%esp
    167f:	68 00 20 00 00       	push   $0x2000
    1684:	68 40 7d 00 00       	push   $0x7d40
    1689:	50                   	push   %eax
    168a:	e8 7c 22 00 00       	call   390b <read>
    168f:	83 c4 10             	add    $0x10,%esp
    1692:	83 f8 05             	cmp    $0x5,%eax
    1695:	0f 85 c6 00 00 00    	jne    1761 <linktest+0x1b1>
  close(fd);
    169b:	83 ec 0c             	sub    $0xc,%esp
    169e:	53                   	push   %ebx
    169f:	e8 77 22 00 00       	call   391b <close>
  if(link("lf2", "lf2") >= 0){
    16a4:	58                   	pop    %eax
    16a5:	5a                   	pop    %edx
    16a6:	68 9a 43 00 00       	push   $0x439a
    16ab:	68 9a 43 00 00       	push   $0x439a
    16b0:	e8 9e 22 00 00       	call   3953 <link>
    16b5:	83 c4 10             	add    $0x10,%esp
    16b8:	85 c0                	test   %eax,%eax
    16ba:	0f 89 8e 00 00 00    	jns    174e <linktest+0x19e>
  unlink("lf2");
    16c0:	83 ec 0c             	sub    $0xc,%esp
    16c3:	68 9a 43 00 00       	push   $0x439a
    16c8:	e8 76 22 00 00       	call   3943 <unlink>
  if(link("lf2", "lf1") >= 0){
    16cd:	59                   	pop    %ecx
    16ce:	5b                   	pop    %ebx
    16cf:	68 96 43 00 00       	push   $0x4396
    16d4:	68 9a 43 00 00       	push   $0x439a
    16d9:	e8 75 22 00 00       	call   3953 <link>
    16de:	83 c4 10             	add    $0x10,%esp
    16e1:	85 c0                	test   %eax,%eax
    16e3:	79 56                	jns    173b <linktest+0x18b>
  if(link(".", "lf1") >= 0){
    16e5:	83 ec 08             	sub    $0x8,%esp
    16e8:	68 96 43 00 00       	push   $0x4396
    16ed:	68 5e 46 00 00       	push   $0x465e
    16f2:	e8 5c 22 00 00       	call   3953 <link>
    16f7:	83 c4 10             	add    $0x10,%esp
    16fa:	85 c0                	test   %eax,%eax
    16fc:	79 2a                	jns    1728 <linktest+0x178>
  printf(1, "linktest ok\n");
    16fe:	83 ec 08             	sub    $0x8,%esp
    1701:	68 34 44 00 00       	push   $0x4434
    1706:	6a 01                	push   $0x1
    1708:	e8 73 23 00 00       	call   3a80 <printf>
}
    170d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1710:	83 c4 10             	add    $0x10,%esp
    1713:	c9                   	leave
    1714:	c3                   	ret
    printf(1, "create lf1 failed\n");
    1715:	50                   	push   %eax
    1716:	50                   	push   %eax
    1717:	68 9e 43 00 00       	push   $0x439e
    171c:	6a 01                	push   $0x1
    171e:	e8 5d 23 00 00       	call   3a80 <printf>
    exit();
    1723:	e8 cb 21 00 00       	call   38f3 <exit>
    printf(1, "link . lf1 succeeded! oops\n");
    1728:	50                   	push   %eax
    1729:	50                   	push   %eax
    172a:	68 18 44 00 00       	push   $0x4418
    172f:	6a 01                	push   $0x1
    1731:	e8 4a 23 00 00       	call   3a80 <printf>
    exit();
    1736:	e8 b8 21 00 00       	call   38f3 <exit>
    printf(1, "link non-existant succeeded! oops\n");
    173b:	52                   	push   %edx
    173c:	52                   	push   %edx
    173d:	68 d4 4f 00 00       	push   $0x4fd4
    1742:	6a 01                	push   $0x1
    1744:	e8 37 23 00 00       	call   3a80 <printf>
    exit();
    1749:	e8 a5 21 00 00       	call   38f3 <exit>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    174e:	50                   	push   %eax
    174f:	50                   	push   %eax
    1750:	68 fa 43 00 00       	push   $0x43fa
    1755:	6a 01                	push   $0x1
    1757:	e8 24 23 00 00       	call   3a80 <printf>
    exit();
    175c:	e8 92 21 00 00       	call   38f3 <exit>
    printf(1, "read lf2 failed\n");
    1761:	51                   	push   %ecx
    1762:	51                   	push   %ecx
    1763:	68 e9 43 00 00       	push   $0x43e9
    1768:	6a 01                	push   $0x1
    176a:	e8 11 23 00 00       	call   3a80 <printf>
    exit();
    176f:	e8 7f 21 00 00       	call   38f3 <exit>
    printf(1, "open lf2 failed\n");
    1774:	53                   	push   %ebx
    1775:	53                   	push   %ebx
    1776:	68 d8 43 00 00       	push   $0x43d8
    177b:	6a 01                	push   $0x1
    177d:	e8 fe 22 00 00       	call   3a80 <printf>
    exit();
    1782:	e8 6c 21 00 00       	call   38f3 <exit>
    printf(1, "unlinked lf1 but it is still there!\n");
    1787:	50                   	push   %eax
    1788:	50                   	push   %eax
    1789:	68 ac 4f 00 00       	push   $0x4fac
    178e:	6a 01                	push   $0x1
    1790:	e8 eb 22 00 00       	call   3a80 <printf>
    exit();
    1795:	e8 59 21 00 00       	call   38f3 <exit>
    printf(1, "link lf1 lf2 failed\n");
    179a:	51                   	push   %ecx
    179b:	51                   	push   %ecx
    179c:	68 c3 43 00 00       	push   $0x43c3
    17a1:	6a 01                	push   $0x1
    17a3:	e8 d8 22 00 00       	call   3a80 <printf>
    exit();
    17a8:	e8 46 21 00 00       	call   38f3 <exit>
    printf(1, "write lf1 failed\n");
    17ad:	50                   	push   %eax
    17ae:	50                   	push   %eax
    17af:	68 b1 43 00 00       	push   $0x43b1
    17b4:	6a 01                	push   $0x1
    17b6:	e8 c5 22 00 00       	call   3a80 <printf>
    exit();
    17bb:	e8 33 21 00 00       	call   38f3 <exit>

000017c0 <concreate>:
{
    17c0:	55                   	push   %ebp
    17c1:	89 e5                	mov    %esp,%ebp
    17c3:	57                   	push   %edi
    17c4:	56                   	push   %esi
  for(i = 0; i < 40; i++){
    17c5:	31 f6                	xor    %esi,%esi
{
    17c7:	53                   	push   %ebx
    17c8:	8d 5d ad             	lea    -0x53(%ebp),%ebx
    17cb:	83 ec 64             	sub    $0x64,%esp
  printf(1, "concreate test\n");
    17ce:	68 41 44 00 00       	push   $0x4441
    17d3:	6a 01                	push   $0x1
    17d5:	e8 a6 22 00 00       	call   3a80 <printf>
  file[0] = 'C';
    17da:	c6 45 ad 43          	movb   $0x43,-0x53(%ebp)
  file[2] = '\0';
    17de:	83 c4 10             	add    $0x10,%esp
    17e1:	c6 45 af 00          	movb   $0x0,-0x51(%ebp)
  for(i = 0; i < 40; i++){
    17e5:	eb 4c                	jmp    1833 <concreate+0x73>
    17e7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    17ee:	00 
    17ef:	90                   	nop
    17f0:	69 c6 ab aa aa aa    	imul   $0xaaaaaaab,%esi,%eax
    if(pid && (i % 3) == 1){
    17f6:	3d ab aa aa aa       	cmp    $0xaaaaaaab,%eax
    17fb:	0f 83 8f 00 00 00    	jae    1890 <concreate+0xd0>
      fd = open(file, O_CREATE | O_RDWR);
    1801:	83 ec 08             	sub    $0x8,%esp
    1804:	68 02 02 00 00       	push   $0x202
    1809:	53                   	push   %ebx
    180a:	e8 24 21 00 00       	call   3933 <open>
      if(fd < 0){
    180f:	83 c4 10             	add    $0x10,%esp
    1812:	85 c0                	test   %eax,%eax
    1814:	78 63                	js     1879 <concreate+0xb9>
      close(fd);
    1816:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 40; i++){
    1819:	83 c6 01             	add    $0x1,%esi
      close(fd);
    181c:	50                   	push   %eax
    181d:	e8 f9 20 00 00       	call   391b <close>
    1822:	83 c4 10             	add    $0x10,%esp
      wait();
    1825:	e8 d1 20 00 00       	call   38fb <wait>
  for(i = 0; i < 40; i++){
    182a:	83 fe 28             	cmp    $0x28,%esi
    182d:	0f 84 7f 00 00 00    	je     18b2 <concreate+0xf2>
    unlink(file);
    1833:	83 ec 0c             	sub    $0xc,%esp
    file[1] = '0' + i;
    1836:	8d 46 30             	lea    0x30(%esi),%eax
    1839:	88 45 ae             	mov    %al,-0x52(%ebp)
    unlink(file);
    183c:	53                   	push   %ebx
    183d:	e8 01 21 00 00       	call   3943 <unlink>
    pid = fork();
    1842:	e8 a4 20 00 00       	call   38eb <fork>
    if(pid && (i % 3) == 1){
    1847:	83 c4 10             	add    $0x10,%esp
    184a:	85 c0                	test   %eax,%eax
    184c:	75 a2                	jne    17f0 <concreate+0x30>
      link("C0", file);
    184e:	69 f6 cd cc cc cc    	imul   $0xcccccccd,%esi,%esi
    } else if(pid == 0 && (i % 5) == 1){
    1854:	81 fe cd cc cc cc    	cmp    $0xcccccccd,%esi
    185a:	0f 83 d0 00 00 00    	jae    1930 <concreate+0x170>
      fd = open(file, O_CREATE | O_RDWR);
    1860:	83 ec 08             	sub    $0x8,%esp
    1863:	68 02 02 00 00       	push   $0x202
    1868:	53                   	push   %ebx
    1869:	e8 c5 20 00 00       	call   3933 <open>
      if(fd < 0){
    186e:	83 c4 10             	add    $0x10,%esp
    1871:	85 c0                	test   %eax,%eax
    1873:	0f 89 ea 01 00 00    	jns    1a63 <concreate+0x2a3>
        printf(1, "concreate create %s failed\n", file);
    1879:	83 ec 04             	sub    $0x4,%esp
    187c:	53                   	push   %ebx
    187d:	68 54 44 00 00       	push   $0x4454
    1882:	6a 01                	push   $0x1
    1884:	e8 f7 21 00 00       	call   3a80 <printf>
        exit();
    1889:	e8 65 20 00 00       	call   38f3 <exit>
    188e:	66 90                	xchg   %ax,%ax
      link("C0", file);
    1890:	83 ec 08             	sub    $0x8,%esp
  for(i = 0; i < 40; i++){
    1893:	83 c6 01             	add    $0x1,%esi
      link("C0", file);
    1896:	53                   	push   %ebx
    1897:	68 51 44 00 00       	push   $0x4451
    189c:	e8 b2 20 00 00       	call   3953 <link>
    18a1:	83 c4 10             	add    $0x10,%esp
      wait();
    18a4:	e8 52 20 00 00       	call   38fb <wait>
  for(i = 0; i < 40; i++){
    18a9:	83 fe 28             	cmp    $0x28,%esi
    18ac:	0f 85 81 ff ff ff    	jne    1833 <concreate+0x73>
  memset(fa, 0, sizeof(fa));
    18b2:	83 ec 04             	sub    $0x4,%esp
    18b5:	8d 45 c0             	lea    -0x40(%ebp),%eax
    18b8:	6a 28                	push   $0x28
    18ba:	6a 00                	push   $0x0
    18bc:	50                   	push   %eax
    18bd:	e8 ae 1e 00 00       	call   3770 <memset>
  fd = open(".", 0);
    18c2:	5e                   	pop    %esi
    18c3:	5f                   	pop    %edi
    18c4:	6a 00                	push   $0x0
    18c6:	68 5e 46 00 00       	push   $0x465e
    18cb:	8d 7d b0             	lea    -0x50(%ebp),%edi
    18ce:	e8 60 20 00 00       	call   3933 <open>
  while(read(fd, &de, sizeof(de)) > 0){
    18d3:	83 c4 10             	add    $0x10,%esp
  n = 0;
    18d6:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
  fd = open(".", 0);
    18dd:	89 c6                	mov    %eax,%esi
  while(read(fd, &de, sizeof(de)) > 0){
    18df:	90                   	nop
    18e0:	83 ec 04             	sub    $0x4,%esp
    18e3:	6a 10                	push   $0x10
    18e5:	57                   	push   %edi
    18e6:	56                   	push   %esi
    18e7:	e8 1f 20 00 00       	call   390b <read>
    18ec:	83 c4 10             	add    $0x10,%esp
    18ef:	85 c0                	test   %eax,%eax
    18f1:	7e 5d                	jle    1950 <concreate+0x190>
    if(de.inum == 0)
    18f3:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    18f8:	74 e6                	je     18e0 <concreate+0x120>
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    18fa:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    18fe:	75 e0                	jne    18e0 <concreate+0x120>
    1900:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    1904:	75 da                	jne    18e0 <concreate+0x120>
      i = de.name[1] - '0';
    1906:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    190a:	83 e8 30             	sub    $0x30,%eax
      if(i < 0 || i >= sizeof(fa)){
    190d:	83 f8 27             	cmp    $0x27,%eax
    1910:	0f 87 5e 01 00 00    	ja     1a74 <concreate+0x2b4>
      if(fa[i]){
    1916:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    191b:	0f 85 7e 01 00 00    	jne    1a9f <concreate+0x2df>
      n++;
    1921:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
      fa[i] = 1;
    1925:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
      n++;
    192a:	eb b4                	jmp    18e0 <concreate+0x120>
    192c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      link("C0", file);
    1930:	83 ec 08             	sub    $0x8,%esp
    1933:	53                   	push   %ebx
    1934:	68 51 44 00 00       	push   $0x4451
    1939:	e8 15 20 00 00       	call   3953 <link>
    193e:	83 c4 10             	add    $0x10,%esp
      exit();
    1941:	e8 ad 1f 00 00       	call   38f3 <exit>
    1946:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    194d:	00 
    194e:	66 90                	xchg   %ax,%ax
  close(fd);
    1950:	83 ec 0c             	sub    $0xc,%esp
    1953:	56                   	push   %esi
    1954:	e8 c2 1f 00 00       	call   391b <close>
  if(n != 40){
    1959:	83 c4 10             	add    $0x10,%esp
    195c:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    1960:	0f 85 26 01 00 00    	jne    1a8c <concreate+0x2cc>
  for(i = 0; i < 40; i++){
    1966:	31 f6                	xor    %esi,%esi
    1968:	eb 48                	jmp    19b2 <concreate+0x1f2>
    196a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
       ((i % 3) == 1 && pid != 0)){
    1970:	83 f8 01             	cmp    $0x1,%eax
    1973:	75 04                	jne    1979 <concreate+0x1b9>
    1975:	85 ff                	test   %edi,%edi
    1977:	75 68                	jne    19e1 <concreate+0x221>
      unlink(file);
    1979:	83 ec 0c             	sub    $0xc,%esp
    197c:	53                   	push   %ebx
    197d:	e8 c1 1f 00 00       	call   3943 <unlink>
      unlink(file);
    1982:	89 1c 24             	mov    %ebx,(%esp)
    1985:	e8 b9 1f 00 00       	call   3943 <unlink>
      unlink(file);
    198a:	89 1c 24             	mov    %ebx,(%esp)
    198d:	e8 b1 1f 00 00       	call   3943 <unlink>
      unlink(file);
    1992:	89 1c 24             	mov    %ebx,(%esp)
    1995:	e8 a9 1f 00 00       	call   3943 <unlink>
    199a:	83 c4 10             	add    $0x10,%esp
    if(pid == 0)
    199d:	85 ff                	test   %edi,%edi
    199f:	74 a0                	je     1941 <concreate+0x181>
      wait();
    19a1:	e8 55 1f 00 00       	call   38fb <wait>
  for(i = 0; i < 40; i++){
    19a6:	83 c6 01             	add    $0x1,%esi
    19a9:	83 fe 28             	cmp    $0x28,%esi
    19ac:	0f 84 86 00 00 00    	je     1a38 <concreate+0x278>
    file[1] = '0' + i;
    19b2:	8d 46 30             	lea    0x30(%esi),%eax
    19b5:	88 45 ae             	mov    %al,-0x52(%ebp)
    pid = fork();
    19b8:	e8 2e 1f 00 00       	call   38eb <fork>
    19bd:	89 c7                	mov    %eax,%edi
    if(pid < 0){
    19bf:	85 c0                	test   %eax,%eax
    19c1:	0f 88 88 00 00 00    	js     1a4f <concreate+0x28f>
    if(((i % 3) == 0 && pid == 0) ||
    19c7:	b8 ab aa aa aa       	mov    $0xaaaaaaab,%eax
    19cc:	f7 e6                	mul    %esi
    19ce:	89 d0                	mov    %edx,%eax
    19d0:	83 e2 fe             	and    $0xfffffffe,%edx
    19d3:	d1 e8                	shr    $1,%eax
    19d5:	01 c2                	add    %eax,%edx
    19d7:	89 f0                	mov    %esi,%eax
    19d9:	29 d0                	sub    %edx,%eax
    19db:	89 c1                	mov    %eax,%ecx
    19dd:	09 f9                	or     %edi,%ecx
    19df:	75 8f                	jne    1970 <concreate+0x1b0>
      close(open(file, 0));
    19e1:	83 ec 08             	sub    $0x8,%esp
    19e4:	6a 00                	push   $0x0
    19e6:	53                   	push   %ebx
    19e7:	e8 47 1f 00 00       	call   3933 <open>
    19ec:	89 04 24             	mov    %eax,(%esp)
    19ef:	e8 27 1f 00 00       	call   391b <close>
      close(open(file, 0));
    19f4:	58                   	pop    %eax
    19f5:	5a                   	pop    %edx
    19f6:	6a 00                	push   $0x0
    19f8:	53                   	push   %ebx
    19f9:	e8 35 1f 00 00       	call   3933 <open>
    19fe:	89 04 24             	mov    %eax,(%esp)
    1a01:	e8 15 1f 00 00       	call   391b <close>
      close(open(file, 0));
    1a06:	59                   	pop    %ecx
    1a07:	58                   	pop    %eax
    1a08:	6a 00                	push   $0x0
    1a0a:	53                   	push   %ebx
    1a0b:	e8 23 1f 00 00       	call   3933 <open>
    1a10:	89 04 24             	mov    %eax,(%esp)
    1a13:	e8 03 1f 00 00       	call   391b <close>
      close(open(file, 0));
    1a18:	58                   	pop    %eax
    1a19:	5a                   	pop    %edx
    1a1a:	6a 00                	push   $0x0
    1a1c:	53                   	push   %ebx
    1a1d:	e8 11 1f 00 00       	call   3933 <open>
    1a22:	89 04 24             	mov    %eax,(%esp)
    1a25:	e8 f1 1e 00 00       	call   391b <close>
    1a2a:	83 c4 10             	add    $0x10,%esp
    1a2d:	e9 6b ff ff ff       	jmp    199d <concreate+0x1dd>
    1a32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  printf(1, "concreate ok\n");
    1a38:	83 ec 08             	sub    $0x8,%esp
    1a3b:	68 a6 44 00 00       	push   $0x44a6
    1a40:	6a 01                	push   $0x1
    1a42:	e8 39 20 00 00       	call   3a80 <printf>
}
    1a47:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1a4a:	5b                   	pop    %ebx
    1a4b:	5e                   	pop    %esi
    1a4c:	5f                   	pop    %edi
    1a4d:	5d                   	pop    %ebp
    1a4e:	c3                   	ret
      printf(1, "fork failed\n");
    1a4f:	83 ec 08             	sub    $0x8,%esp
    1a52:	68 29 4d 00 00       	push   $0x4d29
    1a57:	6a 01                	push   $0x1
    1a59:	e8 22 20 00 00       	call   3a80 <printf>
      exit();
    1a5e:	e8 90 1e 00 00       	call   38f3 <exit>
      close(fd);
    1a63:	83 ec 0c             	sub    $0xc,%esp
    1a66:	50                   	push   %eax
    1a67:	e8 af 1e 00 00       	call   391b <close>
    1a6c:	83 c4 10             	add    $0x10,%esp
    1a6f:	e9 cd fe ff ff       	jmp    1941 <concreate+0x181>
        printf(1, "concreate weird file %s\n", de.name);
    1a74:	83 ec 04             	sub    $0x4,%esp
    1a77:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1a7a:	50                   	push   %eax
    1a7b:	68 70 44 00 00       	push   $0x4470
    1a80:	6a 01                	push   $0x1
    1a82:	e8 f9 1f 00 00       	call   3a80 <printf>
        exit();
    1a87:	e8 67 1e 00 00       	call   38f3 <exit>
    printf(1, "concreate not enough files in directory listing\n");
    1a8c:	51                   	push   %ecx
    1a8d:	51                   	push   %ecx
    1a8e:	68 f8 4f 00 00       	push   $0x4ff8
    1a93:	6a 01                	push   $0x1
    1a95:	e8 e6 1f 00 00       	call   3a80 <printf>
    exit();
    1a9a:	e8 54 1e 00 00       	call   38f3 <exit>
        printf(1, "concreate duplicate file %s\n", de.name);
    1a9f:	83 ec 04             	sub    $0x4,%esp
    1aa2:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1aa5:	50                   	push   %eax
    1aa6:	68 89 44 00 00       	push   $0x4489
    1aab:	6a 01                	push   $0x1
    1aad:	e8 ce 1f 00 00       	call   3a80 <printf>
        exit();
    1ab2:	e8 3c 1e 00 00       	call   38f3 <exit>
    1ab7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    1abe:	00 
    1abf:	90                   	nop

00001ac0 <linkunlink>:
{
    1ac0:	55                   	push   %ebp
    1ac1:	89 e5                	mov    %esp,%ebp
    1ac3:	57                   	push   %edi
    1ac4:	56                   	push   %esi
    1ac5:	53                   	push   %ebx
    1ac6:	83 ec 24             	sub    $0x24,%esp
  printf(1, "linkunlink test\n");
    1ac9:	68 b4 44 00 00       	push   $0x44b4
    1ace:	6a 01                	push   $0x1
    1ad0:	e8 ab 1f 00 00       	call   3a80 <printf>
  unlink("x");
    1ad5:	c7 04 24 41 47 00 00 	movl   $0x4741,(%esp)
    1adc:	e8 62 1e 00 00       	call   3943 <unlink>
  pid = fork();
    1ae1:	e8 05 1e 00 00       	call   38eb <fork>
  if(pid < 0){
    1ae6:	83 c4 10             	add    $0x10,%esp
  pid = fork();
    1ae9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(pid < 0){
    1aec:	85 c0                	test   %eax,%eax
    1aee:	0f 88 b6 00 00 00    	js     1baa <linkunlink+0xea>
  unsigned int x = (pid ? 1 : 97);
    1af4:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    1af8:	bb 64 00 00 00       	mov    $0x64,%ebx
    if((x % 3) == 0){
    1afd:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
  unsigned int x = (pid ? 1 : 97);
    1b02:	19 ff                	sbb    %edi,%edi
    1b04:	83 e7 60             	and    $0x60,%edi
    1b07:	83 c7 01             	add    $0x1,%edi
  for(i = 0; i < 100; i++){
    1b0a:	eb 1e                	jmp    1b2a <linkunlink+0x6a>
    1b0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if((x % 3) == 1){
    1b10:	83 f8 01             	cmp    $0x1,%eax
    1b13:	74 7b                	je     1b90 <linkunlink+0xd0>
      unlink("x");
    1b15:	83 ec 0c             	sub    $0xc,%esp
    1b18:	68 41 47 00 00       	push   $0x4741
    1b1d:	e8 21 1e 00 00       	call   3943 <unlink>
    1b22:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    1b25:	83 eb 01             	sub    $0x1,%ebx
    1b28:	74 41                	je     1b6b <linkunlink+0xab>
    x = x * 1103515245 + 12345;
    1b2a:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    1b30:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    1b36:	89 f8                	mov    %edi,%eax
    1b38:	f7 e6                	mul    %esi
    1b3a:	89 d0                	mov    %edx,%eax
    1b3c:	83 e2 fe             	and    $0xfffffffe,%edx
    1b3f:	d1 e8                	shr    $1,%eax
    1b41:	01 c2                	add    %eax,%edx
    1b43:	89 f8                	mov    %edi,%eax
    1b45:	29 d0                	sub    %edx,%eax
    1b47:	75 c7                	jne    1b10 <linkunlink+0x50>
      close(open("x", O_RDWR | O_CREATE));
    1b49:	83 ec 08             	sub    $0x8,%esp
    1b4c:	68 02 02 00 00       	push   $0x202
    1b51:	68 41 47 00 00       	push   $0x4741
    1b56:	e8 d8 1d 00 00       	call   3933 <open>
    1b5b:	89 04 24             	mov    %eax,(%esp)
    1b5e:	e8 b8 1d 00 00       	call   391b <close>
    1b63:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    1b66:	83 eb 01             	sub    $0x1,%ebx
    1b69:	75 bf                	jne    1b2a <linkunlink+0x6a>
  if(pid)
    1b6b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    1b6e:	85 c0                	test   %eax,%eax
    1b70:	74 4b                	je     1bbd <linkunlink+0xfd>
    wait();
    1b72:	e8 84 1d 00 00       	call   38fb <wait>
  printf(1, "linkunlink ok\n");
    1b77:	83 ec 08             	sub    $0x8,%esp
    1b7a:	68 c9 44 00 00       	push   $0x44c9
    1b7f:	6a 01                	push   $0x1
    1b81:	e8 fa 1e 00 00       	call   3a80 <printf>
}
    1b86:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1b89:	5b                   	pop    %ebx
    1b8a:	5e                   	pop    %esi
    1b8b:	5f                   	pop    %edi
    1b8c:	5d                   	pop    %ebp
    1b8d:	c3                   	ret
    1b8e:	66 90                	xchg   %ax,%ax
      link("cat", "x");
    1b90:	83 ec 08             	sub    $0x8,%esp
    1b93:	68 41 47 00 00       	push   $0x4741
    1b98:	68 c5 44 00 00       	push   $0x44c5
    1b9d:	e8 b1 1d 00 00       	call   3953 <link>
    1ba2:	83 c4 10             	add    $0x10,%esp
    1ba5:	e9 7b ff ff ff       	jmp    1b25 <linkunlink+0x65>
    printf(1, "fork failed\n");
    1baa:	52                   	push   %edx
    1bab:	52                   	push   %edx
    1bac:	68 29 4d 00 00       	push   $0x4d29
    1bb1:	6a 01                	push   $0x1
    1bb3:	e8 c8 1e 00 00       	call   3a80 <printf>
    exit();
    1bb8:	e8 36 1d 00 00       	call   38f3 <exit>
    exit();
    1bbd:	e8 31 1d 00 00       	call   38f3 <exit>
    1bc2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    1bc9:	00 
    1bca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001bd0 <bigdir>:
{
    1bd0:	55                   	push   %ebp
    1bd1:	89 e5                	mov    %esp,%ebp
    1bd3:	57                   	push   %edi
    1bd4:	56                   	push   %esi
    1bd5:	53                   	push   %ebx
    1bd6:	83 ec 24             	sub    $0x24,%esp
  printf(1, "bigdir test\n");
    1bd9:	68 d8 44 00 00       	push   $0x44d8
    1bde:	6a 01                	push   $0x1
    1be0:	e8 9b 1e 00 00       	call   3a80 <printf>
  unlink("bd");
    1be5:	c7 04 24 e5 44 00 00 	movl   $0x44e5,(%esp)
    1bec:	e8 52 1d 00 00       	call   3943 <unlink>
  fd = open("bd", O_CREATE);
    1bf1:	5a                   	pop    %edx
    1bf2:	59                   	pop    %ecx
    1bf3:	68 00 02 00 00       	push   $0x200
    1bf8:	68 e5 44 00 00       	push   $0x44e5
    1bfd:	e8 31 1d 00 00       	call   3933 <open>
  if(fd < 0){
    1c02:	83 c4 10             	add    $0x10,%esp
    1c05:	85 c0                	test   %eax,%eax
    1c07:	0f 88 de 00 00 00    	js     1ceb <bigdir+0x11b>
  close(fd);
    1c0d:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 500; i++){
    1c10:	31 f6                	xor    %esi,%esi
    1c12:	8d 7d de             	lea    -0x22(%ebp),%edi
  close(fd);
    1c15:	50                   	push   %eax
    1c16:	e8 00 1d 00 00       	call   391b <close>
    1c1b:	83 c4 10             	add    $0x10,%esp
    1c1e:	66 90                	xchg   %ax,%ax
    name[1] = '0' + (i / 64);
    1c20:	89 f0                	mov    %esi,%eax
    if(link("bd", name) != 0){
    1c22:	83 ec 08             	sub    $0x8,%esp
    name[0] = 'x';
    1c25:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    name[1] = '0' + (i / 64);
    1c29:	c1 f8 06             	sar    $0x6,%eax
    name[3] = '\0';
    1c2c:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    name[1] = '0' + (i / 64);
    1c30:	83 c0 30             	add    $0x30,%eax
    1c33:	88 45 df             	mov    %al,-0x21(%ebp)
    name[2] = '0' + (i % 64);
    1c36:	89 f0                	mov    %esi,%eax
    1c38:	83 e0 3f             	and    $0x3f,%eax
    1c3b:	83 c0 30             	add    $0x30,%eax
    1c3e:	88 45 e0             	mov    %al,-0x20(%ebp)
    if(link("bd", name) != 0){
    1c41:	57                   	push   %edi
    1c42:	68 e5 44 00 00       	push   $0x44e5
    1c47:	e8 07 1d 00 00       	call   3953 <link>
    1c4c:	83 c4 10             	add    $0x10,%esp
    1c4f:	89 c3                	mov    %eax,%ebx
    1c51:	85 c0                	test   %eax,%eax
    1c53:	75 6e                	jne    1cc3 <bigdir+0xf3>
  for(i = 0; i < 500; i++){
    1c55:	83 c6 01             	add    $0x1,%esi
    1c58:	81 fe f4 01 00 00    	cmp    $0x1f4,%esi
    1c5e:	75 c0                	jne    1c20 <bigdir+0x50>
  unlink("bd");
    1c60:	83 ec 0c             	sub    $0xc,%esp
    1c63:	68 e5 44 00 00       	push   $0x44e5
    1c68:	e8 d6 1c 00 00       	call   3943 <unlink>
    1c6d:	83 c4 10             	add    $0x10,%esp
    name[1] = '0' + (i / 64);
    1c70:	89 d8                	mov    %ebx,%eax
    if(unlink(name) != 0){
    1c72:	83 ec 0c             	sub    $0xc,%esp
    name[0] = 'x';
    1c75:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    name[1] = '0' + (i / 64);
    1c79:	c1 f8 06             	sar    $0x6,%eax
    name[3] = '\0';
    1c7c:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    name[1] = '0' + (i / 64);
    1c80:	83 c0 30             	add    $0x30,%eax
    1c83:	88 45 df             	mov    %al,-0x21(%ebp)
    name[2] = '0' + (i % 64);
    1c86:	89 d8                	mov    %ebx,%eax
    1c88:	83 e0 3f             	and    $0x3f,%eax
    1c8b:	83 c0 30             	add    $0x30,%eax
    1c8e:	88 45 e0             	mov    %al,-0x20(%ebp)
    if(unlink(name) != 0){
    1c91:	57                   	push   %edi
    1c92:	e8 ac 1c 00 00       	call   3943 <unlink>
    1c97:	83 c4 10             	add    $0x10,%esp
    1c9a:	85 c0                	test   %eax,%eax
    1c9c:	75 39                	jne    1cd7 <bigdir+0x107>
  for(i = 0; i < 500; i++){
    1c9e:	83 c3 01             	add    $0x1,%ebx
    1ca1:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1ca7:	75 c7                	jne    1c70 <bigdir+0xa0>
  printf(1, "bigdir ok\n");
    1ca9:	83 ec 08             	sub    $0x8,%esp
    1cac:	68 27 45 00 00       	push   $0x4527
    1cb1:	6a 01                	push   $0x1
    1cb3:	e8 c8 1d 00 00       	call   3a80 <printf>
    1cb8:	83 c4 10             	add    $0x10,%esp
}
    1cbb:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1cbe:	5b                   	pop    %ebx
    1cbf:	5e                   	pop    %esi
    1cc0:	5f                   	pop    %edi
    1cc1:	5d                   	pop    %ebp
    1cc2:	c3                   	ret
      printf(1, "bigdir link failed\n");
    1cc3:	83 ec 08             	sub    $0x8,%esp
    1cc6:	68 fe 44 00 00       	push   $0x44fe
    1ccb:	6a 01                	push   $0x1
    1ccd:	e8 ae 1d 00 00       	call   3a80 <printf>
      exit();
    1cd2:	e8 1c 1c 00 00       	call   38f3 <exit>
      printf(1, "bigdir unlink failed");
    1cd7:	83 ec 08             	sub    $0x8,%esp
    1cda:	68 12 45 00 00       	push   $0x4512
    1cdf:	6a 01                	push   $0x1
    1ce1:	e8 9a 1d 00 00       	call   3a80 <printf>
      exit();
    1ce6:	e8 08 1c 00 00       	call   38f3 <exit>
    printf(1, "bigdir create failed\n");
    1ceb:	50                   	push   %eax
    1cec:	50                   	push   %eax
    1ced:	68 e8 44 00 00       	push   $0x44e8
    1cf2:	6a 01                	push   $0x1
    1cf4:	e8 87 1d 00 00       	call   3a80 <printf>
    exit();
    1cf9:	e8 f5 1b 00 00       	call   38f3 <exit>
    1cfe:	66 90                	xchg   %ax,%ax

00001d00 <subdir>:
{
    1d00:	55                   	push   %ebp
    1d01:	89 e5                	mov    %esp,%ebp
    1d03:	53                   	push   %ebx
    1d04:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "subdir test\n");
    1d07:	68 32 45 00 00       	push   $0x4532
    1d0c:	6a 01                	push   $0x1
    1d0e:	e8 6d 1d 00 00       	call   3a80 <printf>
  unlink("ff");
    1d13:	c7 04 24 bb 45 00 00 	movl   $0x45bb,(%esp)
    1d1a:	e8 24 1c 00 00       	call   3943 <unlink>
  if(mkdir("dd") != 0){
    1d1f:	c7 04 24 58 46 00 00 	movl   $0x4658,(%esp)
    1d26:	e8 30 1c 00 00       	call   395b <mkdir>
    1d2b:	83 c4 10             	add    $0x10,%esp
    1d2e:	85 c0                	test   %eax,%eax
    1d30:	0f 85 b3 05 00 00    	jne    22e9 <subdir+0x5e9>
  fd = open("dd/ff", O_CREATE | O_RDWR);
    1d36:	83 ec 08             	sub    $0x8,%esp
    1d39:	68 02 02 00 00       	push   $0x202
    1d3e:	68 91 45 00 00       	push   $0x4591
    1d43:	e8 eb 1b 00 00       	call   3933 <open>
  if(fd < 0){
    1d48:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/ff", O_CREATE | O_RDWR);
    1d4b:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1d4d:	85 c0                	test   %eax,%eax
    1d4f:	0f 88 81 05 00 00    	js     22d6 <subdir+0x5d6>
  write(fd, "ff", 2);
    1d55:	83 ec 04             	sub    $0x4,%esp
    1d58:	6a 02                	push   $0x2
    1d5a:	68 bb 45 00 00       	push   $0x45bb
    1d5f:	50                   	push   %eax
    1d60:	e8 ae 1b 00 00       	call   3913 <write>
  close(fd);
    1d65:	89 1c 24             	mov    %ebx,(%esp)
    1d68:	e8 ae 1b 00 00       	call   391b <close>
  if(unlink("dd") >= 0){
    1d6d:	c7 04 24 58 46 00 00 	movl   $0x4658,(%esp)
    1d74:	e8 ca 1b 00 00       	call   3943 <unlink>
    1d79:	83 c4 10             	add    $0x10,%esp
    1d7c:	85 c0                	test   %eax,%eax
    1d7e:	0f 89 3f 05 00 00    	jns    22c3 <subdir+0x5c3>
  if(mkdir("/dd/dd") != 0){
    1d84:	83 ec 0c             	sub    $0xc,%esp
    1d87:	68 6c 45 00 00       	push   $0x456c
    1d8c:	e8 ca 1b 00 00       	call   395b <mkdir>
    1d91:	83 c4 10             	add    $0x10,%esp
    1d94:	85 c0                	test   %eax,%eax
    1d96:	0f 85 14 05 00 00    	jne    22b0 <subdir+0x5b0>
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    1d9c:	83 ec 08             	sub    $0x8,%esp
    1d9f:	68 02 02 00 00       	push   $0x202
    1da4:	68 8e 45 00 00       	push   $0x458e
    1da9:	e8 85 1b 00 00       	call   3933 <open>
  if(fd < 0){
    1dae:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    1db1:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1db3:	85 c0                	test   %eax,%eax
    1db5:	0f 88 24 04 00 00    	js     21df <subdir+0x4df>
  write(fd, "FF", 2);
    1dbb:	83 ec 04             	sub    $0x4,%esp
    1dbe:	6a 02                	push   $0x2
    1dc0:	68 af 45 00 00       	push   $0x45af
    1dc5:	50                   	push   %eax
    1dc6:	e8 48 1b 00 00       	call   3913 <write>
  close(fd);
    1dcb:	89 1c 24             	mov    %ebx,(%esp)
    1dce:	e8 48 1b 00 00       	call   391b <close>
  fd = open("dd/dd/../ff", 0);
    1dd3:	58                   	pop    %eax
    1dd4:	5a                   	pop    %edx
    1dd5:	6a 00                	push   $0x0
    1dd7:	68 b2 45 00 00       	push   $0x45b2
    1ddc:	e8 52 1b 00 00       	call   3933 <open>
  if(fd < 0){
    1de1:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/../ff", 0);
    1de4:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1de6:	85 c0                	test   %eax,%eax
    1de8:	0f 88 de 03 00 00    	js     21cc <subdir+0x4cc>
  cc = read(fd, buf, sizeof(buf));
    1dee:	83 ec 04             	sub    $0x4,%esp
    1df1:	68 00 20 00 00       	push   $0x2000
    1df6:	68 40 7d 00 00       	push   $0x7d40
    1dfb:	50                   	push   %eax
    1dfc:	e8 0a 1b 00 00       	call   390b <read>
  if(cc != 2 || buf[0] != 'f'){
    1e01:	83 c4 10             	add    $0x10,%esp
    1e04:	83 f8 02             	cmp    $0x2,%eax
    1e07:	0f 85 3a 03 00 00    	jne    2147 <subdir+0x447>
    1e0d:	80 3d 40 7d 00 00 66 	cmpb   $0x66,0x7d40
    1e14:	0f 85 2d 03 00 00    	jne    2147 <subdir+0x447>
  close(fd);
    1e1a:	83 ec 0c             	sub    $0xc,%esp
    1e1d:	53                   	push   %ebx
    1e1e:	e8 f8 1a 00 00       	call   391b <close>
  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    1e23:	59                   	pop    %ecx
    1e24:	5b                   	pop    %ebx
    1e25:	68 f2 45 00 00       	push   $0x45f2
    1e2a:	68 8e 45 00 00       	push   $0x458e
    1e2f:	e8 1f 1b 00 00       	call   3953 <link>
    1e34:	83 c4 10             	add    $0x10,%esp
    1e37:	85 c0                	test   %eax,%eax
    1e39:	0f 85 c6 03 00 00    	jne    2205 <subdir+0x505>
  if(unlink("dd/dd/ff") != 0){
    1e3f:	83 ec 0c             	sub    $0xc,%esp
    1e42:	68 8e 45 00 00       	push   $0x458e
    1e47:	e8 f7 1a 00 00       	call   3943 <unlink>
    1e4c:	83 c4 10             	add    $0x10,%esp
    1e4f:	85 c0                	test   %eax,%eax
    1e51:	0f 85 16 03 00 00    	jne    216d <subdir+0x46d>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    1e57:	83 ec 08             	sub    $0x8,%esp
    1e5a:	6a 00                	push   $0x0
    1e5c:	68 8e 45 00 00       	push   $0x458e
    1e61:	e8 cd 1a 00 00       	call   3933 <open>
    1e66:	83 c4 10             	add    $0x10,%esp
    1e69:	85 c0                	test   %eax,%eax
    1e6b:	0f 89 2c 04 00 00    	jns    229d <subdir+0x59d>
  if(chdir("dd") != 0){
    1e71:	83 ec 0c             	sub    $0xc,%esp
    1e74:	68 58 46 00 00       	push   $0x4658
    1e79:	e8 e5 1a 00 00       	call   3963 <chdir>
    1e7e:	83 c4 10             	add    $0x10,%esp
    1e81:	85 c0                	test   %eax,%eax
    1e83:	0f 85 01 04 00 00    	jne    228a <subdir+0x58a>
  if(chdir("dd/../../dd") != 0){
    1e89:	83 ec 0c             	sub    $0xc,%esp
    1e8c:	68 26 46 00 00       	push   $0x4626
    1e91:	e8 cd 1a 00 00       	call   3963 <chdir>
    1e96:	83 c4 10             	add    $0x10,%esp
    1e99:	85 c0                	test   %eax,%eax
    1e9b:	0f 85 b9 02 00 00    	jne    215a <subdir+0x45a>
  if(chdir("dd/../../../dd") != 0){
    1ea1:	83 ec 0c             	sub    $0xc,%esp
    1ea4:	68 4c 46 00 00       	push   $0x464c
    1ea9:	e8 b5 1a 00 00       	call   3963 <chdir>
    1eae:	83 c4 10             	add    $0x10,%esp
    1eb1:	85 c0                	test   %eax,%eax
    1eb3:	0f 85 a1 02 00 00    	jne    215a <subdir+0x45a>
  if(chdir("./..") != 0){
    1eb9:	83 ec 0c             	sub    $0xc,%esp
    1ebc:	68 5b 46 00 00       	push   $0x465b
    1ec1:	e8 9d 1a 00 00       	call   3963 <chdir>
    1ec6:	83 c4 10             	add    $0x10,%esp
    1ec9:	85 c0                	test   %eax,%eax
    1ecb:	0f 85 21 03 00 00    	jne    21f2 <subdir+0x4f2>
  fd = open("dd/dd/ffff", 0);
    1ed1:	83 ec 08             	sub    $0x8,%esp
    1ed4:	6a 00                	push   $0x0
    1ed6:	68 f2 45 00 00       	push   $0x45f2
    1edb:	e8 53 1a 00 00       	call   3933 <open>
  if(fd < 0){
    1ee0:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/ffff", 0);
    1ee3:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1ee5:	85 c0                	test   %eax,%eax
    1ee7:	0f 88 e0 04 00 00    	js     23cd <subdir+0x6cd>
  if(read(fd, buf, sizeof(buf)) != 2){
    1eed:	83 ec 04             	sub    $0x4,%esp
    1ef0:	68 00 20 00 00       	push   $0x2000
    1ef5:	68 40 7d 00 00       	push   $0x7d40
    1efa:	50                   	push   %eax
    1efb:	e8 0b 1a 00 00       	call   390b <read>
    1f00:	83 c4 10             	add    $0x10,%esp
    1f03:	83 f8 02             	cmp    $0x2,%eax
    1f06:	0f 85 ae 04 00 00    	jne    23ba <subdir+0x6ba>
  close(fd);
    1f0c:	83 ec 0c             	sub    $0xc,%esp
    1f0f:	53                   	push   %ebx
    1f10:	e8 06 1a 00 00       	call   391b <close>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    1f15:	58                   	pop    %eax
    1f16:	5a                   	pop    %edx
    1f17:	6a 00                	push   $0x0
    1f19:	68 8e 45 00 00       	push   $0x458e
    1f1e:	e8 10 1a 00 00       	call   3933 <open>
    1f23:	83 c4 10             	add    $0x10,%esp
    1f26:	85 c0                	test   %eax,%eax
    1f28:	0f 89 65 02 00 00    	jns    2193 <subdir+0x493>
  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    1f2e:	83 ec 08             	sub    $0x8,%esp
    1f31:	68 02 02 00 00       	push   $0x202
    1f36:	68 a6 46 00 00       	push   $0x46a6
    1f3b:	e8 f3 19 00 00       	call   3933 <open>
    1f40:	83 c4 10             	add    $0x10,%esp
    1f43:	85 c0                	test   %eax,%eax
    1f45:	0f 89 35 02 00 00    	jns    2180 <subdir+0x480>
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    1f4b:	83 ec 08             	sub    $0x8,%esp
    1f4e:	68 02 02 00 00       	push   $0x202
    1f53:	68 cb 46 00 00       	push   $0x46cb
    1f58:	e8 d6 19 00 00       	call   3933 <open>
    1f5d:	83 c4 10             	add    $0x10,%esp
    1f60:	85 c0                	test   %eax,%eax
    1f62:	0f 89 0f 03 00 00    	jns    2277 <subdir+0x577>
  if(open("dd", O_CREATE) >= 0){
    1f68:	83 ec 08             	sub    $0x8,%esp
    1f6b:	68 00 02 00 00       	push   $0x200
    1f70:	68 58 46 00 00       	push   $0x4658
    1f75:	e8 b9 19 00 00       	call   3933 <open>
    1f7a:	83 c4 10             	add    $0x10,%esp
    1f7d:	85 c0                	test   %eax,%eax
    1f7f:	0f 89 df 02 00 00    	jns    2264 <subdir+0x564>
  if(open("dd", O_RDWR) >= 0){
    1f85:	83 ec 08             	sub    $0x8,%esp
    1f88:	6a 02                	push   $0x2
    1f8a:	68 58 46 00 00       	push   $0x4658
    1f8f:	e8 9f 19 00 00       	call   3933 <open>
    1f94:	83 c4 10             	add    $0x10,%esp
    1f97:	85 c0                	test   %eax,%eax
    1f99:	0f 89 b2 02 00 00    	jns    2251 <subdir+0x551>
  if(open("dd", O_WRONLY) >= 0){
    1f9f:	83 ec 08             	sub    $0x8,%esp
    1fa2:	6a 01                	push   $0x1
    1fa4:	68 58 46 00 00       	push   $0x4658
    1fa9:	e8 85 19 00 00       	call   3933 <open>
    1fae:	83 c4 10             	add    $0x10,%esp
    1fb1:	85 c0                	test   %eax,%eax
    1fb3:	0f 89 85 02 00 00    	jns    223e <subdir+0x53e>
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    1fb9:	83 ec 08             	sub    $0x8,%esp
    1fbc:	68 3a 47 00 00       	push   $0x473a
    1fc1:	68 a6 46 00 00       	push   $0x46a6
    1fc6:	e8 88 19 00 00       	call   3953 <link>
    1fcb:	83 c4 10             	add    $0x10,%esp
    1fce:	85 c0                	test   %eax,%eax
    1fd0:	0f 84 55 02 00 00    	je     222b <subdir+0x52b>
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    1fd6:	83 ec 08             	sub    $0x8,%esp
    1fd9:	68 3a 47 00 00       	push   $0x473a
    1fde:	68 cb 46 00 00       	push   $0x46cb
    1fe3:	e8 6b 19 00 00       	call   3953 <link>
    1fe8:	83 c4 10             	add    $0x10,%esp
    1feb:	85 c0                	test   %eax,%eax
    1fed:	0f 84 25 02 00 00    	je     2218 <subdir+0x518>
  if(link("dd/ff", "dd/dd/ffff") == 0){
    1ff3:	83 ec 08             	sub    $0x8,%esp
    1ff6:	68 f2 45 00 00       	push   $0x45f2
    1ffb:	68 91 45 00 00       	push   $0x4591
    2000:	e8 4e 19 00 00       	call   3953 <link>
    2005:	83 c4 10             	add    $0x10,%esp
    2008:	85 c0                	test   %eax,%eax
    200a:	0f 84 a9 01 00 00    	je     21b9 <subdir+0x4b9>
  if(mkdir("dd/ff/ff") == 0){
    2010:	83 ec 0c             	sub    $0xc,%esp
    2013:	68 a6 46 00 00       	push   $0x46a6
    2018:	e8 3e 19 00 00       	call   395b <mkdir>
    201d:	83 c4 10             	add    $0x10,%esp
    2020:	85 c0                	test   %eax,%eax
    2022:	0f 84 7e 01 00 00    	je     21a6 <subdir+0x4a6>
  if(mkdir("dd/xx/ff") == 0){
    2028:	83 ec 0c             	sub    $0xc,%esp
    202b:	68 cb 46 00 00       	push   $0x46cb
    2030:	e8 26 19 00 00       	call   395b <mkdir>
    2035:	83 c4 10             	add    $0x10,%esp
    2038:	85 c0                	test   %eax,%eax
    203a:	0f 84 67 03 00 00    	je     23a7 <subdir+0x6a7>
  if(mkdir("dd/dd/ffff") == 0){
    2040:	83 ec 0c             	sub    $0xc,%esp
    2043:	68 f2 45 00 00       	push   $0x45f2
    2048:	e8 0e 19 00 00       	call   395b <mkdir>
    204d:	83 c4 10             	add    $0x10,%esp
    2050:	85 c0                	test   %eax,%eax
    2052:	0f 84 3c 03 00 00    	je     2394 <subdir+0x694>
  if(unlink("dd/xx/ff") == 0){
    2058:	83 ec 0c             	sub    $0xc,%esp
    205b:	68 cb 46 00 00       	push   $0x46cb
    2060:	e8 de 18 00 00       	call   3943 <unlink>
    2065:	83 c4 10             	add    $0x10,%esp
    2068:	85 c0                	test   %eax,%eax
    206a:	0f 84 11 03 00 00    	je     2381 <subdir+0x681>
  if(unlink("dd/ff/ff") == 0){
    2070:	83 ec 0c             	sub    $0xc,%esp
    2073:	68 a6 46 00 00       	push   $0x46a6
    2078:	e8 c6 18 00 00       	call   3943 <unlink>
    207d:	83 c4 10             	add    $0x10,%esp
    2080:	85 c0                	test   %eax,%eax
    2082:	0f 84 e6 02 00 00    	je     236e <subdir+0x66e>
  if(chdir("dd/ff") == 0){
    2088:	83 ec 0c             	sub    $0xc,%esp
    208b:	68 91 45 00 00       	push   $0x4591
    2090:	e8 ce 18 00 00       	call   3963 <chdir>
    2095:	83 c4 10             	add    $0x10,%esp
    2098:	85 c0                	test   %eax,%eax
    209a:	0f 84 bb 02 00 00    	je     235b <subdir+0x65b>
  if(chdir("dd/xx") == 0){
    20a0:	83 ec 0c             	sub    $0xc,%esp
    20a3:	68 3d 47 00 00       	push   $0x473d
    20a8:	e8 b6 18 00 00       	call   3963 <chdir>
    20ad:	83 c4 10             	add    $0x10,%esp
    20b0:	85 c0                	test   %eax,%eax
    20b2:	0f 84 90 02 00 00    	je     2348 <subdir+0x648>
  if(unlink("dd/dd/ffff") != 0){
    20b8:	83 ec 0c             	sub    $0xc,%esp
    20bb:	68 f2 45 00 00       	push   $0x45f2
    20c0:	e8 7e 18 00 00       	call   3943 <unlink>
    20c5:	83 c4 10             	add    $0x10,%esp
    20c8:	85 c0                	test   %eax,%eax
    20ca:	0f 85 9d 00 00 00    	jne    216d <subdir+0x46d>
  if(unlink("dd/ff") != 0){
    20d0:	83 ec 0c             	sub    $0xc,%esp
    20d3:	68 91 45 00 00       	push   $0x4591
    20d8:	e8 66 18 00 00       	call   3943 <unlink>
    20dd:	83 c4 10             	add    $0x10,%esp
    20e0:	85 c0                	test   %eax,%eax
    20e2:	0f 85 4d 02 00 00    	jne    2335 <subdir+0x635>
  if(unlink("dd") == 0){
    20e8:	83 ec 0c             	sub    $0xc,%esp
    20eb:	68 58 46 00 00       	push   $0x4658
    20f0:	e8 4e 18 00 00       	call   3943 <unlink>
    20f5:	83 c4 10             	add    $0x10,%esp
    20f8:	85 c0                	test   %eax,%eax
    20fa:	0f 84 22 02 00 00    	je     2322 <subdir+0x622>
  if(unlink("dd/dd") < 0){
    2100:	83 ec 0c             	sub    $0xc,%esp
    2103:	68 6d 45 00 00       	push   $0x456d
    2108:	e8 36 18 00 00       	call   3943 <unlink>
    210d:	83 c4 10             	add    $0x10,%esp
    2110:	85 c0                	test   %eax,%eax
    2112:	0f 88 f7 01 00 00    	js     230f <subdir+0x60f>
  if(unlink("dd") < 0){
    2118:	83 ec 0c             	sub    $0xc,%esp
    211b:	68 58 46 00 00       	push   $0x4658
    2120:	e8 1e 18 00 00       	call   3943 <unlink>
    2125:	83 c4 10             	add    $0x10,%esp
    2128:	85 c0                	test   %eax,%eax
    212a:	0f 88 cc 01 00 00    	js     22fc <subdir+0x5fc>
  printf(1, "subdir ok\n");
    2130:	83 ec 08             	sub    $0x8,%esp
    2133:	68 3a 48 00 00       	push   $0x483a
    2138:	6a 01                	push   $0x1
    213a:	e8 41 19 00 00       	call   3a80 <printf>
}
    213f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2142:	83 c4 10             	add    $0x10,%esp
    2145:	c9                   	leave
    2146:	c3                   	ret
    printf(1, "dd/dd/../ff wrong content\n");
    2147:	50                   	push   %eax
    2148:	50                   	push   %eax
    2149:	68 d7 45 00 00       	push   $0x45d7
    214e:	6a 01                	push   $0x1
    2150:	e8 2b 19 00 00       	call   3a80 <printf>
    exit();
    2155:	e8 99 17 00 00       	call   38f3 <exit>
    printf(1, "chdir dd/../../dd failed\n");
    215a:	50                   	push   %eax
    215b:	50                   	push   %eax
    215c:	68 32 46 00 00       	push   $0x4632
    2161:	6a 01                	push   $0x1
    2163:	e8 18 19 00 00       	call   3a80 <printf>
    exit();
    2168:	e8 86 17 00 00       	call   38f3 <exit>
    printf(1, "unlink dd/dd/ff failed\n");
    216d:	50                   	push   %eax
    216e:	50                   	push   %eax
    216f:	68 fd 45 00 00       	push   $0x45fd
    2174:	6a 01                	push   $0x1
    2176:	e8 05 19 00 00       	call   3a80 <printf>
    exit();
    217b:	e8 73 17 00 00       	call   38f3 <exit>
    printf(1, "create dd/ff/ff succeeded!\n");
    2180:	51                   	push   %ecx
    2181:	51                   	push   %ecx
    2182:	68 af 46 00 00       	push   $0x46af
    2187:	6a 01                	push   $0x1
    2189:	e8 f2 18 00 00       	call   3a80 <printf>
    exit();
    218e:	e8 60 17 00 00       	call   38f3 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    2193:	53                   	push   %ebx
    2194:	53                   	push   %ebx
    2195:	68 9c 50 00 00       	push   $0x509c
    219a:	6a 01                	push   $0x1
    219c:	e8 df 18 00 00       	call   3a80 <printf>
    exit();
    21a1:	e8 4d 17 00 00       	call   38f3 <exit>
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    21a6:	51                   	push   %ecx
    21a7:	51                   	push   %ecx
    21a8:	68 43 47 00 00       	push   $0x4743
    21ad:	6a 01                	push   $0x1
    21af:	e8 cc 18 00 00       	call   3a80 <printf>
    exit();
    21b4:	e8 3a 17 00 00       	call   38f3 <exit>
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    21b9:	53                   	push   %ebx
    21ba:	53                   	push   %ebx
    21bb:	68 0c 51 00 00       	push   $0x510c
    21c0:	6a 01                	push   $0x1
    21c2:	e8 b9 18 00 00       	call   3a80 <printf>
    exit();
    21c7:	e8 27 17 00 00       	call   38f3 <exit>
    printf(1, "open dd/dd/../ff failed\n");
    21cc:	50                   	push   %eax
    21cd:	50                   	push   %eax
    21ce:	68 be 45 00 00       	push   $0x45be
    21d3:	6a 01                	push   $0x1
    21d5:	e8 a6 18 00 00       	call   3a80 <printf>
    exit();
    21da:	e8 14 17 00 00       	call   38f3 <exit>
    printf(1, "create dd/dd/ff failed\n");
    21df:	51                   	push   %ecx
    21e0:	51                   	push   %ecx
    21e1:	68 97 45 00 00       	push   $0x4597
    21e6:	6a 01                	push   $0x1
    21e8:	e8 93 18 00 00       	call   3a80 <printf>
    exit();
    21ed:	e8 01 17 00 00       	call   38f3 <exit>
    printf(1, "chdir ./.. failed\n");
    21f2:	50                   	push   %eax
    21f3:	50                   	push   %eax
    21f4:	68 60 46 00 00       	push   $0x4660
    21f9:	6a 01                	push   $0x1
    21fb:	e8 80 18 00 00       	call   3a80 <printf>
    exit();
    2200:	e8 ee 16 00 00       	call   38f3 <exit>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    2205:	52                   	push   %edx
    2206:	52                   	push   %edx
    2207:	68 54 50 00 00       	push   $0x5054
    220c:	6a 01                	push   $0x1
    220e:	e8 6d 18 00 00       	call   3a80 <printf>
    exit();
    2213:	e8 db 16 00 00       	call   38f3 <exit>
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    2218:	50                   	push   %eax
    2219:	50                   	push   %eax
    221a:	68 e8 50 00 00       	push   $0x50e8
    221f:	6a 01                	push   $0x1
    2221:	e8 5a 18 00 00       	call   3a80 <printf>
    exit();
    2226:	e8 c8 16 00 00       	call   38f3 <exit>
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    222b:	50                   	push   %eax
    222c:	50                   	push   %eax
    222d:	68 c4 50 00 00       	push   $0x50c4
    2232:	6a 01                	push   $0x1
    2234:	e8 47 18 00 00       	call   3a80 <printf>
    exit();
    2239:	e8 b5 16 00 00       	call   38f3 <exit>
    printf(1, "open dd wronly succeeded!\n");
    223e:	50                   	push   %eax
    223f:	50                   	push   %eax
    2240:	68 1f 47 00 00       	push   $0x471f
    2245:	6a 01                	push   $0x1
    2247:	e8 34 18 00 00       	call   3a80 <printf>
    exit();
    224c:	e8 a2 16 00 00       	call   38f3 <exit>
    printf(1, "open dd rdwr succeeded!\n");
    2251:	50                   	push   %eax
    2252:	50                   	push   %eax
    2253:	68 06 47 00 00       	push   $0x4706
    2258:	6a 01                	push   $0x1
    225a:	e8 21 18 00 00       	call   3a80 <printf>
    exit();
    225f:	e8 8f 16 00 00       	call   38f3 <exit>
    printf(1, "create dd succeeded!\n");
    2264:	50                   	push   %eax
    2265:	50                   	push   %eax
    2266:	68 f0 46 00 00       	push   $0x46f0
    226b:	6a 01                	push   $0x1
    226d:	e8 0e 18 00 00       	call   3a80 <printf>
    exit();
    2272:	e8 7c 16 00 00       	call   38f3 <exit>
    printf(1, "create dd/xx/ff succeeded!\n");
    2277:	52                   	push   %edx
    2278:	52                   	push   %edx
    2279:	68 d4 46 00 00       	push   $0x46d4
    227e:	6a 01                	push   $0x1
    2280:	e8 fb 17 00 00       	call   3a80 <printf>
    exit();
    2285:	e8 69 16 00 00       	call   38f3 <exit>
    printf(1, "chdir dd failed\n");
    228a:	50                   	push   %eax
    228b:	50                   	push   %eax
    228c:	68 15 46 00 00       	push   $0x4615
    2291:	6a 01                	push   $0x1
    2293:	e8 e8 17 00 00       	call   3a80 <printf>
    exit();
    2298:	e8 56 16 00 00       	call   38f3 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    229d:	50                   	push   %eax
    229e:	50                   	push   %eax
    229f:	68 78 50 00 00       	push   $0x5078
    22a4:	6a 01                	push   $0x1
    22a6:	e8 d5 17 00 00       	call   3a80 <printf>
    exit();
    22ab:	e8 43 16 00 00       	call   38f3 <exit>
    printf(1, "subdir mkdir dd/dd failed\n");
    22b0:	53                   	push   %ebx
    22b1:	53                   	push   %ebx
    22b2:	68 73 45 00 00       	push   $0x4573
    22b7:	6a 01                	push   $0x1
    22b9:	e8 c2 17 00 00       	call   3a80 <printf>
    exit();
    22be:	e8 30 16 00 00       	call   38f3 <exit>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    22c3:	50                   	push   %eax
    22c4:	50                   	push   %eax
    22c5:	68 2c 50 00 00       	push   $0x502c
    22ca:	6a 01                	push   $0x1
    22cc:	e8 af 17 00 00       	call   3a80 <printf>
    exit();
    22d1:	e8 1d 16 00 00       	call   38f3 <exit>
    printf(1, "create dd/ff failed\n");
    22d6:	50                   	push   %eax
    22d7:	50                   	push   %eax
    22d8:	68 57 45 00 00       	push   $0x4557
    22dd:	6a 01                	push   $0x1
    22df:	e8 9c 17 00 00       	call   3a80 <printf>
    exit();
    22e4:	e8 0a 16 00 00       	call   38f3 <exit>
    printf(1, "subdir mkdir dd failed\n");
    22e9:	50                   	push   %eax
    22ea:	50                   	push   %eax
    22eb:	68 3f 45 00 00       	push   $0x453f
    22f0:	6a 01                	push   $0x1
    22f2:	e8 89 17 00 00       	call   3a80 <printf>
    exit();
    22f7:	e8 f7 15 00 00       	call   38f3 <exit>
    printf(1, "unlink dd failed\n");
    22fc:	50                   	push   %eax
    22fd:	50                   	push   %eax
    22fe:	68 28 48 00 00       	push   $0x4828
    2303:	6a 01                	push   $0x1
    2305:	e8 76 17 00 00       	call   3a80 <printf>
    exit();
    230a:	e8 e4 15 00 00       	call   38f3 <exit>
    printf(1, "unlink dd/dd failed\n");
    230f:	52                   	push   %edx
    2310:	52                   	push   %edx
    2311:	68 13 48 00 00       	push   $0x4813
    2316:	6a 01                	push   $0x1
    2318:	e8 63 17 00 00       	call   3a80 <printf>
    exit();
    231d:	e8 d1 15 00 00       	call   38f3 <exit>
    printf(1, "unlink non-empty dd succeeded!\n");
    2322:	51                   	push   %ecx
    2323:	51                   	push   %ecx
    2324:	68 30 51 00 00       	push   $0x5130
    2329:	6a 01                	push   $0x1
    232b:	e8 50 17 00 00       	call   3a80 <printf>
    exit();
    2330:	e8 be 15 00 00       	call   38f3 <exit>
    printf(1, "unlink dd/ff failed\n");
    2335:	53                   	push   %ebx
    2336:	53                   	push   %ebx
    2337:	68 fe 47 00 00       	push   $0x47fe
    233c:	6a 01                	push   $0x1
    233e:	e8 3d 17 00 00       	call   3a80 <printf>
    exit();
    2343:	e8 ab 15 00 00       	call   38f3 <exit>
    printf(1, "chdir dd/xx succeeded!\n");
    2348:	50                   	push   %eax
    2349:	50                   	push   %eax
    234a:	68 e6 47 00 00       	push   $0x47e6
    234f:	6a 01                	push   $0x1
    2351:	e8 2a 17 00 00       	call   3a80 <printf>
    exit();
    2356:	e8 98 15 00 00       	call   38f3 <exit>
    printf(1, "chdir dd/ff succeeded!\n");
    235b:	50                   	push   %eax
    235c:	50                   	push   %eax
    235d:	68 ce 47 00 00       	push   $0x47ce
    2362:	6a 01                	push   $0x1
    2364:	e8 17 17 00 00       	call   3a80 <printf>
    exit();
    2369:	e8 85 15 00 00       	call   38f3 <exit>
    printf(1, "unlink dd/ff/ff succeeded!\n");
    236e:	50                   	push   %eax
    236f:	50                   	push   %eax
    2370:	68 b2 47 00 00       	push   $0x47b2
    2375:	6a 01                	push   $0x1
    2377:	e8 04 17 00 00       	call   3a80 <printf>
    exit();
    237c:	e8 72 15 00 00       	call   38f3 <exit>
    printf(1, "unlink dd/xx/ff succeeded!\n");
    2381:	50                   	push   %eax
    2382:	50                   	push   %eax
    2383:	68 96 47 00 00       	push   $0x4796
    2388:	6a 01                	push   $0x1
    238a:	e8 f1 16 00 00       	call   3a80 <printf>
    exit();
    238f:	e8 5f 15 00 00       	call   38f3 <exit>
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    2394:	50                   	push   %eax
    2395:	50                   	push   %eax
    2396:	68 79 47 00 00       	push   $0x4779
    239b:	6a 01                	push   $0x1
    239d:	e8 de 16 00 00       	call   3a80 <printf>
    exit();
    23a2:	e8 4c 15 00 00       	call   38f3 <exit>
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    23a7:	52                   	push   %edx
    23a8:	52                   	push   %edx
    23a9:	68 5e 47 00 00       	push   $0x475e
    23ae:	6a 01                	push   $0x1
    23b0:	e8 cb 16 00 00       	call   3a80 <printf>
    exit();
    23b5:	e8 39 15 00 00       	call   38f3 <exit>
    printf(1, "read dd/dd/ffff wrong len\n");
    23ba:	51                   	push   %ecx
    23bb:	51                   	push   %ecx
    23bc:	68 8b 46 00 00       	push   $0x468b
    23c1:	6a 01                	push   $0x1
    23c3:	e8 b8 16 00 00       	call   3a80 <printf>
    exit();
    23c8:	e8 26 15 00 00       	call   38f3 <exit>
    printf(1, "open dd/dd/ffff failed\n");
    23cd:	53                   	push   %ebx
    23ce:	53                   	push   %ebx
    23cf:	68 73 46 00 00       	push   $0x4673
    23d4:	6a 01                	push   $0x1
    23d6:	e8 a5 16 00 00       	call   3a80 <printf>
    exit();
    23db:	e8 13 15 00 00       	call   38f3 <exit>

000023e0 <bigwrite>:
{
    23e0:	55                   	push   %ebp
    23e1:	89 e5                	mov    %esp,%ebp
    23e3:	56                   	push   %esi
    23e4:	53                   	push   %ebx
  for(sz = 499; sz < 12*512; sz += 471){
    23e5:	bb f3 01 00 00       	mov    $0x1f3,%ebx
  printf(1, "bigwrite test\n");
    23ea:	83 ec 08             	sub    $0x8,%esp
    23ed:	68 45 48 00 00       	push   $0x4845
    23f2:	6a 01                	push   $0x1
    23f4:	e8 87 16 00 00       	call   3a80 <printf>
  unlink("bigwrite");
    23f9:	c7 04 24 54 48 00 00 	movl   $0x4854,(%esp)
    2400:	e8 3e 15 00 00       	call   3943 <unlink>
    2405:	83 c4 10             	add    $0x10,%esp
    2408:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    240f:	00 
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2410:	83 ec 08             	sub    $0x8,%esp
    2413:	68 02 02 00 00       	push   $0x202
    2418:	68 54 48 00 00       	push   $0x4854
    241d:	e8 11 15 00 00       	call   3933 <open>
    if(fd < 0){
    2422:	83 c4 10             	add    $0x10,%esp
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2425:	89 c6                	mov    %eax,%esi
    if(fd < 0){
    2427:	85 c0                	test   %eax,%eax
    2429:	78 7e                	js     24a9 <bigwrite+0xc9>
      int cc = write(fd, buf, sz);
    242b:	83 ec 04             	sub    $0x4,%esp
    242e:	53                   	push   %ebx
    242f:	68 40 7d 00 00       	push   $0x7d40
    2434:	50                   	push   %eax
    2435:	e8 d9 14 00 00       	call   3913 <write>
      if(cc != sz){
    243a:	83 c4 10             	add    $0x10,%esp
    243d:	39 c3                	cmp    %eax,%ebx
    243f:	75 55                	jne    2496 <bigwrite+0xb6>
      int cc = write(fd, buf, sz);
    2441:	83 ec 04             	sub    $0x4,%esp
    2444:	53                   	push   %ebx
    2445:	68 40 7d 00 00       	push   $0x7d40
    244a:	56                   	push   %esi
    244b:	e8 c3 14 00 00       	call   3913 <write>
      if(cc != sz){
    2450:	83 c4 10             	add    $0x10,%esp
    2453:	39 c3                	cmp    %eax,%ebx
    2455:	75 3f                	jne    2496 <bigwrite+0xb6>
    close(fd);
    2457:	83 ec 0c             	sub    $0xc,%esp
  for(sz = 499; sz < 12*512; sz += 471){
    245a:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
    close(fd);
    2460:	56                   	push   %esi
    2461:	e8 b5 14 00 00       	call   391b <close>
    unlink("bigwrite");
    2466:	c7 04 24 54 48 00 00 	movl   $0x4854,(%esp)
    246d:	e8 d1 14 00 00       	call   3943 <unlink>
  for(sz = 499; sz < 12*512; sz += 471){
    2472:	83 c4 10             	add    $0x10,%esp
    2475:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    247b:	75 93                	jne    2410 <bigwrite+0x30>
  printf(1, "bigwrite ok\n");
    247d:	83 ec 08             	sub    $0x8,%esp
    2480:	68 87 48 00 00       	push   $0x4887
    2485:	6a 01                	push   $0x1
    2487:	e8 f4 15 00 00       	call   3a80 <printf>
}
    248c:	83 c4 10             	add    $0x10,%esp
    248f:	8d 65 f8             	lea    -0x8(%ebp),%esp
    2492:	5b                   	pop    %ebx
    2493:	5e                   	pop    %esi
    2494:	5d                   	pop    %ebp
    2495:	c3                   	ret
        printf(1, "write(%d) ret %d\n", sz, cc);
    2496:	50                   	push   %eax
    2497:	53                   	push   %ebx
    2498:	68 75 48 00 00       	push   $0x4875
    249d:	6a 01                	push   $0x1
    249f:	e8 dc 15 00 00       	call   3a80 <printf>
        exit();
    24a4:	e8 4a 14 00 00       	call   38f3 <exit>
      printf(1, "cannot create bigwrite\n");
    24a9:	83 ec 08             	sub    $0x8,%esp
    24ac:	68 5d 48 00 00       	push   $0x485d
    24b1:	6a 01                	push   $0x1
    24b3:	e8 c8 15 00 00       	call   3a80 <printf>
      exit();
    24b8:	e8 36 14 00 00       	call   38f3 <exit>
    24bd:	8d 76 00             	lea    0x0(%esi),%esi

000024c0 <bigfile>:
{
    24c0:	55                   	push   %ebp
    24c1:	89 e5                	mov    %esp,%ebp
    24c3:	57                   	push   %edi
    24c4:	56                   	push   %esi
    24c5:	53                   	push   %ebx
    24c6:	83 ec 14             	sub    $0x14,%esp
  printf(1, "bigfile test\n");
    24c9:	68 94 48 00 00       	push   $0x4894
    24ce:	6a 01                	push   $0x1
    24d0:	e8 ab 15 00 00       	call   3a80 <printf>
  unlink("bigfile");
    24d5:	c7 04 24 b0 48 00 00 	movl   $0x48b0,(%esp)
    24dc:	e8 62 14 00 00       	call   3943 <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    24e1:	58                   	pop    %eax
    24e2:	5a                   	pop    %edx
    24e3:	68 02 02 00 00       	push   $0x202
    24e8:	68 b0 48 00 00       	push   $0x48b0
    24ed:	e8 41 14 00 00       	call   3933 <open>
  if(fd < 0){
    24f2:	83 c4 10             	add    $0x10,%esp
    24f5:	85 c0                	test   %eax,%eax
    24f7:	0f 88 6e 01 00 00    	js     266b <bigfile+0x1ab>
    24fd:	89 c6                	mov    %eax,%esi
  for(i = 0; i < 20; i++){
    24ff:	31 db                	xor    %ebx,%ebx
    2501:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    2508:	00 
    2509:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    memset(buf, i, 600);
    2510:	83 ec 04             	sub    $0x4,%esp
    2513:	68 58 02 00 00       	push   $0x258
    2518:	53                   	push   %ebx
    2519:	68 40 7d 00 00       	push   $0x7d40
    251e:	e8 4d 12 00 00       	call   3770 <memset>
    if(write(fd, buf, 600) != 600){
    2523:	83 c4 0c             	add    $0xc,%esp
    2526:	68 58 02 00 00       	push   $0x258
    252b:	68 40 7d 00 00       	push   $0x7d40
    2530:	56                   	push   %esi
    2531:	e8 dd 13 00 00       	call   3913 <write>
    2536:	83 c4 10             	add    $0x10,%esp
    2539:	3d 58 02 00 00       	cmp    $0x258,%eax
    253e:	0f 85 00 01 00 00    	jne    2644 <bigfile+0x184>
  for(i = 0; i < 20; i++){
    2544:	83 c3 01             	add    $0x1,%ebx
    2547:	83 fb 14             	cmp    $0x14,%ebx
    254a:	75 c4                	jne    2510 <bigfile+0x50>
  close(fd);
    254c:	83 ec 0c             	sub    $0xc,%esp
    254f:	56                   	push   %esi
    2550:	e8 c6 13 00 00       	call   391b <close>
  fd = open("bigfile", 0);
    2555:	5e                   	pop    %esi
    2556:	5f                   	pop    %edi
    2557:	6a 00                	push   $0x0
    2559:	68 b0 48 00 00       	push   $0x48b0
    255e:	e8 d0 13 00 00       	call   3933 <open>
  if(fd < 0){
    2563:	83 c4 10             	add    $0x10,%esp
  fd = open("bigfile", 0);
    2566:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    2568:	85 c0                	test   %eax,%eax
    256a:	0f 88 e8 00 00 00    	js     2658 <bigfile+0x198>
  total = 0;
    2570:	31 db                	xor    %ebx,%ebx
  for(i = 0; ; i++){
    2572:	31 ff                	xor    %edi,%edi
    2574:	eb 38                	jmp    25ae <bigfile+0xee>
    2576:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    257d:	00 
    257e:	66 90                	xchg   %ax,%ax
    if(cc != 300){
    2580:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    2585:	0f 85 91 00 00 00    	jne    261c <bigfile+0x15c>
    if(buf[0] != i/2 || buf[299] != i/2){
    258b:	89 fa                	mov    %edi,%edx
    258d:	0f be 05 40 7d 00 00 	movsbl 0x7d40,%eax
    2594:	d1 fa                	sar    $1,%edx
    2596:	39 d0                	cmp    %edx,%eax
    2598:	75 6e                	jne    2608 <bigfile+0x148>
    259a:	0f be 15 6b 7e 00 00 	movsbl 0x7e6b,%edx
    25a1:	39 d0                	cmp    %edx,%eax
    25a3:	75 63                	jne    2608 <bigfile+0x148>
    total += cc;
    25a5:	81 c3 2c 01 00 00    	add    $0x12c,%ebx
  for(i = 0; ; i++){
    25ab:	83 c7 01             	add    $0x1,%edi
    cc = read(fd, buf, 300);
    25ae:	83 ec 04             	sub    $0x4,%esp
    25b1:	68 2c 01 00 00       	push   $0x12c
    25b6:	68 40 7d 00 00       	push   $0x7d40
    25bb:	56                   	push   %esi
    25bc:	e8 4a 13 00 00       	call   390b <read>
    if(cc < 0){
    25c1:	83 c4 10             	add    $0x10,%esp
    25c4:	85 c0                	test   %eax,%eax
    25c6:	78 68                	js     2630 <bigfile+0x170>
    if(cc == 0)
    25c8:	75 b6                	jne    2580 <bigfile+0xc0>
  close(fd);
    25ca:	83 ec 0c             	sub    $0xc,%esp
    25cd:	56                   	push   %esi
    25ce:	e8 48 13 00 00       	call   391b <close>
  if(total != 20*600){
    25d3:	83 c4 10             	add    $0x10,%esp
    25d6:	81 fb e0 2e 00 00    	cmp    $0x2ee0,%ebx
    25dc:	0f 85 9c 00 00 00    	jne    267e <bigfile+0x1be>
  unlink("bigfile");
    25e2:	83 ec 0c             	sub    $0xc,%esp
    25e5:	68 b0 48 00 00       	push   $0x48b0
    25ea:	e8 54 13 00 00       	call   3943 <unlink>
  printf(1, "bigfile test ok\n");
    25ef:	58                   	pop    %eax
    25f0:	5a                   	pop    %edx
    25f1:	68 3f 49 00 00       	push   $0x493f
    25f6:	6a 01                	push   $0x1
    25f8:	e8 83 14 00 00       	call   3a80 <printf>
}
    25fd:	83 c4 10             	add    $0x10,%esp
    2600:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2603:	5b                   	pop    %ebx
    2604:	5e                   	pop    %esi
    2605:	5f                   	pop    %edi
    2606:	5d                   	pop    %ebp
    2607:	c3                   	ret
      printf(1, "read bigfile wrong data\n");
    2608:	83 ec 08             	sub    $0x8,%esp
    260b:	68 0c 49 00 00       	push   $0x490c
    2610:	6a 01                	push   $0x1
    2612:	e8 69 14 00 00       	call   3a80 <printf>
      exit();
    2617:	e8 d7 12 00 00       	call   38f3 <exit>
      printf(1, "short read bigfile\n");
    261c:	83 ec 08             	sub    $0x8,%esp
    261f:	68 f8 48 00 00       	push   $0x48f8
    2624:	6a 01                	push   $0x1
    2626:	e8 55 14 00 00       	call   3a80 <printf>
      exit();
    262b:	e8 c3 12 00 00       	call   38f3 <exit>
      printf(1, "read bigfile failed\n");
    2630:	83 ec 08             	sub    $0x8,%esp
    2633:	68 e3 48 00 00       	push   $0x48e3
    2638:	6a 01                	push   $0x1
    263a:	e8 41 14 00 00       	call   3a80 <printf>
      exit();
    263f:	e8 af 12 00 00       	call   38f3 <exit>
      printf(1, "write bigfile failed\n");
    2644:	83 ec 08             	sub    $0x8,%esp
    2647:	68 b8 48 00 00       	push   $0x48b8
    264c:	6a 01                	push   $0x1
    264e:	e8 2d 14 00 00       	call   3a80 <printf>
      exit();
    2653:	e8 9b 12 00 00       	call   38f3 <exit>
    printf(1, "cannot open bigfile\n");
    2658:	53                   	push   %ebx
    2659:	53                   	push   %ebx
    265a:	68 ce 48 00 00       	push   $0x48ce
    265f:	6a 01                	push   $0x1
    2661:	e8 1a 14 00 00       	call   3a80 <printf>
    exit();
    2666:	e8 88 12 00 00       	call   38f3 <exit>
    printf(1, "cannot create bigfile");
    266b:	50                   	push   %eax
    266c:	50                   	push   %eax
    266d:	68 a2 48 00 00       	push   $0x48a2
    2672:	6a 01                	push   $0x1
    2674:	e8 07 14 00 00       	call   3a80 <printf>
    exit();
    2679:	e8 75 12 00 00       	call   38f3 <exit>
    printf(1, "read bigfile wrong total\n");
    267e:	51                   	push   %ecx
    267f:	51                   	push   %ecx
    2680:	68 25 49 00 00       	push   $0x4925
    2685:	6a 01                	push   $0x1
    2687:	e8 f4 13 00 00       	call   3a80 <printf>
    exit();
    268c:	e8 62 12 00 00       	call   38f3 <exit>
    2691:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    2698:	00 
    2699:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000026a0 <fourteen>:
{
    26a0:	55                   	push   %ebp
    26a1:	89 e5                	mov    %esp,%ebp
    26a3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "fourteen test\n");
    26a6:	68 50 49 00 00       	push   $0x4950
    26ab:	6a 01                	push   $0x1
    26ad:	e8 ce 13 00 00       	call   3a80 <printf>
  if(mkdir("12345678901234") != 0){
    26b2:	c7 04 24 8b 49 00 00 	movl   $0x498b,(%esp)
    26b9:	e8 9d 12 00 00       	call   395b <mkdir>
    26be:	83 c4 10             	add    $0x10,%esp
    26c1:	85 c0                	test   %eax,%eax
    26c3:	0f 85 97 00 00 00    	jne    2760 <fourteen+0xc0>
  if(mkdir("12345678901234/123456789012345") != 0){
    26c9:	83 ec 0c             	sub    $0xc,%esp
    26cc:	68 50 51 00 00       	push   $0x5150
    26d1:	e8 85 12 00 00       	call   395b <mkdir>
    26d6:	83 c4 10             	add    $0x10,%esp
    26d9:	85 c0                	test   %eax,%eax
    26db:	0f 85 de 00 00 00    	jne    27bf <fourteen+0x11f>
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    26e1:	83 ec 08             	sub    $0x8,%esp
    26e4:	68 00 02 00 00       	push   $0x200
    26e9:	68 a0 51 00 00       	push   $0x51a0
    26ee:	e8 40 12 00 00       	call   3933 <open>
  if(fd < 0){
    26f3:	83 c4 10             	add    $0x10,%esp
    26f6:	85 c0                	test   %eax,%eax
    26f8:	0f 88 ae 00 00 00    	js     27ac <fourteen+0x10c>
  close(fd);
    26fe:	83 ec 0c             	sub    $0xc,%esp
    2701:	50                   	push   %eax
    2702:	e8 14 12 00 00       	call   391b <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    2707:	58                   	pop    %eax
    2708:	5a                   	pop    %edx
    2709:	6a 00                	push   $0x0
    270b:	68 10 52 00 00       	push   $0x5210
    2710:	e8 1e 12 00 00       	call   3933 <open>
  if(fd < 0){
    2715:	83 c4 10             	add    $0x10,%esp
    2718:	85 c0                	test   %eax,%eax
    271a:	78 7d                	js     2799 <fourteen+0xf9>
  close(fd);
    271c:	83 ec 0c             	sub    $0xc,%esp
    271f:	50                   	push   %eax
    2720:	e8 f6 11 00 00       	call   391b <close>
  if(mkdir("12345678901234/12345678901234") == 0){
    2725:	c7 04 24 7c 49 00 00 	movl   $0x497c,(%esp)
    272c:	e8 2a 12 00 00       	call   395b <mkdir>
    2731:	83 c4 10             	add    $0x10,%esp
    2734:	85 c0                	test   %eax,%eax
    2736:	74 4e                	je     2786 <fourteen+0xe6>
  if(mkdir("123456789012345/12345678901234") == 0){
    2738:	83 ec 0c             	sub    $0xc,%esp
    273b:	68 ac 52 00 00       	push   $0x52ac
    2740:	e8 16 12 00 00       	call   395b <mkdir>
    2745:	83 c4 10             	add    $0x10,%esp
    2748:	85 c0                	test   %eax,%eax
    274a:	74 27                	je     2773 <fourteen+0xd3>
  printf(1, "fourteen ok\n");
    274c:	83 ec 08             	sub    $0x8,%esp
    274f:	68 9a 49 00 00       	push   $0x499a
    2754:	6a 01                	push   $0x1
    2756:	e8 25 13 00 00       	call   3a80 <printf>
}
    275b:	83 c4 10             	add    $0x10,%esp
    275e:	c9                   	leave
    275f:	c3                   	ret
    printf(1, "mkdir 12345678901234 failed\n");
    2760:	50                   	push   %eax
    2761:	50                   	push   %eax
    2762:	68 5f 49 00 00       	push   $0x495f
    2767:	6a 01                	push   $0x1
    2769:	e8 12 13 00 00       	call   3a80 <printf>
    exit();
    276e:	e8 80 11 00 00       	call   38f3 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    2773:	50                   	push   %eax
    2774:	50                   	push   %eax
    2775:	68 cc 52 00 00       	push   $0x52cc
    277a:	6a 01                	push   $0x1
    277c:	e8 ff 12 00 00       	call   3a80 <printf>
    exit();
    2781:	e8 6d 11 00 00       	call   38f3 <exit>
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    2786:	52                   	push   %edx
    2787:	52                   	push   %edx
    2788:	68 7c 52 00 00       	push   $0x527c
    278d:	6a 01                	push   $0x1
    278f:	e8 ec 12 00 00       	call   3a80 <printf>
    exit();
    2794:	e8 5a 11 00 00       	call   38f3 <exit>
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    2799:	51                   	push   %ecx
    279a:	51                   	push   %ecx
    279b:	68 40 52 00 00       	push   $0x5240
    27a0:	6a 01                	push   $0x1
    27a2:	e8 d9 12 00 00       	call   3a80 <printf>
    exit();
    27a7:	e8 47 11 00 00       	call   38f3 <exit>
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    27ac:	51                   	push   %ecx
    27ad:	51                   	push   %ecx
    27ae:	68 d0 51 00 00       	push   $0x51d0
    27b3:	6a 01                	push   $0x1
    27b5:	e8 c6 12 00 00       	call   3a80 <printf>
    exit();
    27ba:	e8 34 11 00 00       	call   38f3 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    27bf:	50                   	push   %eax
    27c0:	50                   	push   %eax
    27c1:	68 70 51 00 00       	push   $0x5170
    27c6:	6a 01                	push   $0x1
    27c8:	e8 b3 12 00 00       	call   3a80 <printf>
    exit();
    27cd:	e8 21 11 00 00       	call   38f3 <exit>
    27d2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    27d9:	00 
    27da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000027e0 <rmdot>:
{
    27e0:	55                   	push   %ebp
    27e1:	89 e5                	mov    %esp,%ebp
    27e3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "rmdot test\n");
    27e6:	68 a7 49 00 00       	push   $0x49a7
    27eb:	6a 01                	push   $0x1
    27ed:	e8 8e 12 00 00       	call   3a80 <printf>
  if(mkdir("dots") != 0){
    27f2:	c7 04 24 b3 49 00 00 	movl   $0x49b3,(%esp)
    27f9:	e8 5d 11 00 00       	call   395b <mkdir>
    27fe:	83 c4 10             	add    $0x10,%esp
    2801:	85 c0                	test   %eax,%eax
    2803:	0f 85 b0 00 00 00    	jne    28b9 <rmdot+0xd9>
  if(chdir("dots") != 0){
    2809:	83 ec 0c             	sub    $0xc,%esp
    280c:	68 b3 49 00 00       	push   $0x49b3
    2811:	e8 4d 11 00 00       	call   3963 <chdir>
    2816:	83 c4 10             	add    $0x10,%esp
    2819:	85 c0                	test   %eax,%eax
    281b:	0f 85 1d 01 00 00    	jne    293e <rmdot+0x15e>
  if(unlink(".") == 0){
    2821:	83 ec 0c             	sub    $0xc,%esp
    2824:	68 5e 46 00 00       	push   $0x465e
    2829:	e8 15 11 00 00       	call   3943 <unlink>
    282e:	83 c4 10             	add    $0x10,%esp
    2831:	85 c0                	test   %eax,%eax
    2833:	0f 84 f2 00 00 00    	je     292b <rmdot+0x14b>
  if(unlink("..") == 0){
    2839:	83 ec 0c             	sub    $0xc,%esp
    283c:	68 5d 46 00 00       	push   $0x465d
    2841:	e8 fd 10 00 00       	call   3943 <unlink>
    2846:	83 c4 10             	add    $0x10,%esp
    2849:	85 c0                	test   %eax,%eax
    284b:	0f 84 c7 00 00 00    	je     2918 <rmdot+0x138>
  if(chdir("/") != 0){
    2851:	83 ec 0c             	sub    $0xc,%esp
    2854:	68 31 3e 00 00       	push   $0x3e31
    2859:	e8 05 11 00 00       	call   3963 <chdir>
    285e:	83 c4 10             	add    $0x10,%esp
    2861:	85 c0                	test   %eax,%eax
    2863:	0f 85 9c 00 00 00    	jne    2905 <rmdot+0x125>
  if(unlink("dots/.") == 0){
    2869:	83 ec 0c             	sub    $0xc,%esp
    286c:	68 fb 49 00 00       	push   $0x49fb
    2871:	e8 cd 10 00 00       	call   3943 <unlink>
    2876:	83 c4 10             	add    $0x10,%esp
    2879:	85 c0                	test   %eax,%eax
    287b:	74 75                	je     28f2 <rmdot+0x112>
  if(unlink("dots/..") == 0){
    287d:	83 ec 0c             	sub    $0xc,%esp
    2880:	68 19 4a 00 00       	push   $0x4a19
    2885:	e8 b9 10 00 00       	call   3943 <unlink>
    288a:	83 c4 10             	add    $0x10,%esp
    288d:	85 c0                	test   %eax,%eax
    288f:	74 4e                	je     28df <rmdot+0xff>
  if(unlink("dots") != 0){
    2891:	83 ec 0c             	sub    $0xc,%esp
    2894:	68 b3 49 00 00       	push   $0x49b3
    2899:	e8 a5 10 00 00       	call   3943 <unlink>
    289e:	83 c4 10             	add    $0x10,%esp
    28a1:	85 c0                	test   %eax,%eax
    28a3:	75 27                	jne    28cc <rmdot+0xec>
  printf(1, "rmdot ok\n");
    28a5:	83 ec 08             	sub    $0x8,%esp
    28a8:	68 4e 4a 00 00       	push   $0x4a4e
    28ad:	6a 01                	push   $0x1
    28af:	e8 cc 11 00 00       	call   3a80 <printf>
}
    28b4:	83 c4 10             	add    $0x10,%esp
    28b7:	c9                   	leave
    28b8:	c3                   	ret
    printf(1, "mkdir dots failed\n");
    28b9:	50                   	push   %eax
    28ba:	50                   	push   %eax
    28bb:	68 b8 49 00 00       	push   $0x49b8
    28c0:	6a 01                	push   $0x1
    28c2:	e8 b9 11 00 00       	call   3a80 <printf>
    exit();
    28c7:	e8 27 10 00 00       	call   38f3 <exit>
    printf(1, "unlink dots failed!\n");
    28cc:	50                   	push   %eax
    28cd:	50                   	push   %eax
    28ce:	68 39 4a 00 00       	push   $0x4a39
    28d3:	6a 01                	push   $0x1
    28d5:	e8 a6 11 00 00       	call   3a80 <printf>
    exit();
    28da:	e8 14 10 00 00       	call   38f3 <exit>
    printf(1, "unlink dots/.. worked!\n");
    28df:	52                   	push   %edx
    28e0:	52                   	push   %edx
    28e1:	68 21 4a 00 00       	push   $0x4a21
    28e6:	6a 01                	push   $0x1
    28e8:	e8 93 11 00 00       	call   3a80 <printf>
    exit();
    28ed:	e8 01 10 00 00       	call   38f3 <exit>
    printf(1, "unlink dots/. worked!\n");
    28f2:	51                   	push   %ecx
    28f3:	51                   	push   %ecx
    28f4:	68 02 4a 00 00       	push   $0x4a02
    28f9:	6a 01                	push   $0x1
    28fb:	e8 80 11 00 00       	call   3a80 <printf>
    exit();
    2900:	e8 ee 0f 00 00       	call   38f3 <exit>
    printf(1, "chdir / failed\n");
    2905:	50                   	push   %eax
    2906:	50                   	push   %eax
    2907:	68 33 3e 00 00       	push   $0x3e33
    290c:	6a 01                	push   $0x1
    290e:	e8 6d 11 00 00       	call   3a80 <printf>
    exit();
    2913:	e8 db 0f 00 00       	call   38f3 <exit>
    printf(1, "rm .. worked!\n");
    2918:	50                   	push   %eax
    2919:	50                   	push   %eax
    291a:	68 ec 49 00 00       	push   $0x49ec
    291f:	6a 01                	push   $0x1
    2921:	e8 5a 11 00 00       	call   3a80 <printf>
    exit();
    2926:	e8 c8 0f 00 00       	call   38f3 <exit>
    printf(1, "rm . worked!\n");
    292b:	50                   	push   %eax
    292c:	50                   	push   %eax
    292d:	68 de 49 00 00       	push   $0x49de
    2932:	6a 01                	push   $0x1
    2934:	e8 47 11 00 00       	call   3a80 <printf>
    exit();
    2939:	e8 b5 0f 00 00       	call   38f3 <exit>
    printf(1, "chdir dots failed\n");
    293e:	50                   	push   %eax
    293f:	50                   	push   %eax
    2940:	68 cb 49 00 00       	push   $0x49cb
    2945:	6a 01                	push   $0x1
    2947:	e8 34 11 00 00       	call   3a80 <printf>
    exit();
    294c:	e8 a2 0f 00 00       	call   38f3 <exit>
    2951:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    2958:	00 
    2959:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002960 <dirfile>:
{
    2960:	55                   	push   %ebp
    2961:	89 e5                	mov    %esp,%ebp
    2963:	53                   	push   %ebx
    2964:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "dir vs file\n");
    2967:	68 58 4a 00 00       	push   $0x4a58
    296c:	6a 01                	push   $0x1
    296e:	e8 0d 11 00 00       	call   3a80 <printf>
  fd = open("dirfile", O_CREATE);
    2973:	5b                   	pop    %ebx
    2974:	58                   	pop    %eax
    2975:	68 00 02 00 00       	push   $0x200
    297a:	68 65 4a 00 00       	push   $0x4a65
    297f:	e8 af 0f 00 00       	call   3933 <open>
  if(fd < 0){
    2984:	83 c4 10             	add    $0x10,%esp
    2987:	85 c0                	test   %eax,%eax
    2989:	0f 88 43 01 00 00    	js     2ad2 <dirfile+0x172>
  close(fd);
    298f:	83 ec 0c             	sub    $0xc,%esp
    2992:	50                   	push   %eax
    2993:	e8 83 0f 00 00       	call   391b <close>
  if(chdir("dirfile") == 0){
    2998:	c7 04 24 65 4a 00 00 	movl   $0x4a65,(%esp)
    299f:	e8 bf 0f 00 00       	call   3963 <chdir>
    29a4:	83 c4 10             	add    $0x10,%esp
    29a7:	85 c0                	test   %eax,%eax
    29a9:	0f 84 10 01 00 00    	je     2abf <dirfile+0x15f>
  fd = open("dirfile/xx", 0);
    29af:	83 ec 08             	sub    $0x8,%esp
    29b2:	6a 00                	push   $0x0
    29b4:	68 9e 4a 00 00       	push   $0x4a9e
    29b9:	e8 75 0f 00 00       	call   3933 <open>
  if(fd >= 0){
    29be:	83 c4 10             	add    $0x10,%esp
    29c1:	85 c0                	test   %eax,%eax
    29c3:	0f 89 e3 00 00 00    	jns    2aac <dirfile+0x14c>
  fd = open("dirfile/xx", O_CREATE);
    29c9:	83 ec 08             	sub    $0x8,%esp
    29cc:	68 00 02 00 00       	push   $0x200
    29d1:	68 9e 4a 00 00       	push   $0x4a9e
    29d6:	e8 58 0f 00 00       	call   3933 <open>
  if(fd >= 0){
    29db:	83 c4 10             	add    $0x10,%esp
    29de:	85 c0                	test   %eax,%eax
    29e0:	0f 89 c6 00 00 00    	jns    2aac <dirfile+0x14c>
  if(mkdir("dirfile/xx") == 0){
    29e6:	83 ec 0c             	sub    $0xc,%esp
    29e9:	68 9e 4a 00 00       	push   $0x4a9e
    29ee:	e8 68 0f 00 00       	call   395b <mkdir>
    29f3:	83 c4 10             	add    $0x10,%esp
    29f6:	85 c0                	test   %eax,%eax
    29f8:	0f 84 46 01 00 00    	je     2b44 <dirfile+0x1e4>
  if(unlink("dirfile/xx") == 0){
    29fe:	83 ec 0c             	sub    $0xc,%esp
    2a01:	68 9e 4a 00 00       	push   $0x4a9e
    2a06:	e8 38 0f 00 00       	call   3943 <unlink>
    2a0b:	83 c4 10             	add    $0x10,%esp
    2a0e:	85 c0                	test   %eax,%eax
    2a10:	0f 84 1b 01 00 00    	je     2b31 <dirfile+0x1d1>
  if(link("README", "dirfile/xx") == 0){
    2a16:	83 ec 08             	sub    $0x8,%esp
    2a19:	68 9e 4a 00 00       	push   $0x4a9e
    2a1e:	68 02 4b 00 00       	push   $0x4b02
    2a23:	e8 2b 0f 00 00       	call   3953 <link>
    2a28:	83 c4 10             	add    $0x10,%esp
    2a2b:	85 c0                	test   %eax,%eax
    2a2d:	0f 84 eb 00 00 00    	je     2b1e <dirfile+0x1be>
  if(unlink("dirfile") != 0){
    2a33:	83 ec 0c             	sub    $0xc,%esp
    2a36:	68 65 4a 00 00       	push   $0x4a65
    2a3b:	e8 03 0f 00 00       	call   3943 <unlink>
    2a40:	83 c4 10             	add    $0x10,%esp
    2a43:	85 c0                	test   %eax,%eax
    2a45:	0f 85 c0 00 00 00    	jne    2b0b <dirfile+0x1ab>
  fd = open(".", O_RDWR);
    2a4b:	83 ec 08             	sub    $0x8,%esp
    2a4e:	6a 02                	push   $0x2
    2a50:	68 5e 46 00 00       	push   $0x465e
    2a55:	e8 d9 0e 00 00       	call   3933 <open>
  if(fd >= 0){
    2a5a:	83 c4 10             	add    $0x10,%esp
    2a5d:	85 c0                	test   %eax,%eax
    2a5f:	0f 89 93 00 00 00    	jns    2af8 <dirfile+0x198>
  fd = open(".", 0);
    2a65:	83 ec 08             	sub    $0x8,%esp
    2a68:	6a 00                	push   $0x0
    2a6a:	68 5e 46 00 00       	push   $0x465e
    2a6f:	e8 bf 0e 00 00       	call   3933 <open>
  if(write(fd, "x", 1) > 0){
    2a74:	83 c4 0c             	add    $0xc,%esp
    2a77:	6a 01                	push   $0x1
  fd = open(".", 0);
    2a79:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    2a7b:	68 41 47 00 00       	push   $0x4741
    2a80:	50                   	push   %eax
    2a81:	e8 8d 0e 00 00       	call   3913 <write>
    2a86:	83 c4 10             	add    $0x10,%esp
    2a89:	85 c0                	test   %eax,%eax
    2a8b:	7f 58                	jg     2ae5 <dirfile+0x185>
  close(fd);
    2a8d:	83 ec 0c             	sub    $0xc,%esp
    2a90:	53                   	push   %ebx
    2a91:	e8 85 0e 00 00       	call   391b <close>
  printf(1, "dir vs file OK\n");
    2a96:	58                   	pop    %eax
    2a97:	5a                   	pop    %edx
    2a98:	68 35 4b 00 00       	push   $0x4b35
    2a9d:	6a 01                	push   $0x1
    2a9f:	e8 dc 0f 00 00       	call   3a80 <printf>
}
    2aa4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2aa7:	83 c4 10             	add    $0x10,%esp
    2aaa:	c9                   	leave
    2aab:	c3                   	ret
    printf(1, "create dirfile/xx succeeded!\n");
    2aac:	50                   	push   %eax
    2aad:	50                   	push   %eax
    2aae:	68 a9 4a 00 00       	push   $0x4aa9
    2ab3:	6a 01                	push   $0x1
    2ab5:	e8 c6 0f 00 00       	call   3a80 <printf>
    exit();
    2aba:	e8 34 0e 00 00       	call   38f3 <exit>
    printf(1, "chdir dirfile succeeded!\n");
    2abf:	52                   	push   %edx
    2ac0:	52                   	push   %edx
    2ac1:	68 84 4a 00 00       	push   $0x4a84
    2ac6:	6a 01                	push   $0x1
    2ac8:	e8 b3 0f 00 00       	call   3a80 <printf>
    exit();
    2acd:	e8 21 0e 00 00       	call   38f3 <exit>
    printf(1, "create dirfile failed\n");
    2ad2:	51                   	push   %ecx
    2ad3:	51                   	push   %ecx
    2ad4:	68 6d 4a 00 00       	push   $0x4a6d
    2ad9:	6a 01                	push   $0x1
    2adb:	e8 a0 0f 00 00       	call   3a80 <printf>
    exit();
    2ae0:	e8 0e 0e 00 00       	call   38f3 <exit>
    printf(1, "write . succeeded!\n");
    2ae5:	51                   	push   %ecx
    2ae6:	51                   	push   %ecx
    2ae7:	68 21 4b 00 00       	push   $0x4b21
    2aec:	6a 01                	push   $0x1
    2aee:	e8 8d 0f 00 00       	call   3a80 <printf>
    exit();
    2af3:	e8 fb 0d 00 00       	call   38f3 <exit>
    printf(1, "open . for writing succeeded!\n");
    2af8:	53                   	push   %ebx
    2af9:	53                   	push   %ebx
    2afa:	68 20 53 00 00       	push   $0x5320
    2aff:	6a 01                	push   $0x1
    2b01:	e8 7a 0f 00 00       	call   3a80 <printf>
    exit();
    2b06:	e8 e8 0d 00 00       	call   38f3 <exit>
    printf(1, "unlink dirfile failed!\n");
    2b0b:	50                   	push   %eax
    2b0c:	50                   	push   %eax
    2b0d:	68 09 4b 00 00       	push   $0x4b09
    2b12:	6a 01                	push   $0x1
    2b14:	e8 67 0f 00 00       	call   3a80 <printf>
    exit();
    2b19:	e8 d5 0d 00 00       	call   38f3 <exit>
    printf(1, "link to dirfile/xx succeeded!\n");
    2b1e:	50                   	push   %eax
    2b1f:	50                   	push   %eax
    2b20:	68 00 53 00 00       	push   $0x5300
    2b25:	6a 01                	push   $0x1
    2b27:	e8 54 0f 00 00       	call   3a80 <printf>
    exit();
    2b2c:	e8 c2 0d 00 00       	call   38f3 <exit>
    printf(1, "unlink dirfile/xx succeeded!\n");
    2b31:	50                   	push   %eax
    2b32:	50                   	push   %eax
    2b33:	68 e4 4a 00 00       	push   $0x4ae4
    2b38:	6a 01                	push   $0x1
    2b3a:	e8 41 0f 00 00       	call   3a80 <printf>
    exit();
    2b3f:	e8 af 0d 00 00       	call   38f3 <exit>
    printf(1, "mkdir dirfile/xx succeeded!\n");
    2b44:	50                   	push   %eax
    2b45:	50                   	push   %eax
    2b46:	68 c7 4a 00 00       	push   $0x4ac7
    2b4b:	6a 01                	push   $0x1
    2b4d:	e8 2e 0f 00 00       	call   3a80 <printf>
    exit();
    2b52:	e8 9c 0d 00 00       	call   38f3 <exit>
    2b57:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    2b5e:	00 
    2b5f:	90                   	nop

00002b60 <iref>:
{
    2b60:	55                   	push   %ebp
    2b61:	89 e5                	mov    %esp,%ebp
    2b63:	53                   	push   %ebx
  printf(1, "empty file name\n");
    2b64:	bb 33 00 00 00       	mov    $0x33,%ebx
{
    2b69:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "empty file name\n");
    2b6c:	68 45 4b 00 00       	push   $0x4b45
    2b71:	6a 01                	push   $0x1
    2b73:	e8 08 0f 00 00       	call   3a80 <printf>
    2b78:	83 c4 10             	add    $0x10,%esp
    2b7b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    if(mkdir("irefd") != 0){
    2b80:	83 ec 0c             	sub    $0xc,%esp
    2b83:	68 56 4b 00 00       	push   $0x4b56
    2b88:	e8 ce 0d 00 00       	call   395b <mkdir>
    2b8d:	83 c4 10             	add    $0x10,%esp
    2b90:	85 c0                	test   %eax,%eax
    2b92:	0f 85 bb 00 00 00    	jne    2c53 <iref+0xf3>
    if(chdir("irefd") != 0){
    2b98:	83 ec 0c             	sub    $0xc,%esp
    2b9b:	68 56 4b 00 00       	push   $0x4b56
    2ba0:	e8 be 0d 00 00       	call   3963 <chdir>
    2ba5:	83 c4 10             	add    $0x10,%esp
    2ba8:	85 c0                	test   %eax,%eax
    2baa:	0f 85 b7 00 00 00    	jne    2c67 <iref+0x107>
    mkdir("");
    2bb0:	83 ec 0c             	sub    $0xc,%esp
    2bb3:	68 0b 42 00 00       	push   $0x420b
    2bb8:	e8 9e 0d 00 00       	call   395b <mkdir>
    link("README", "");
    2bbd:	59                   	pop    %ecx
    2bbe:	58                   	pop    %eax
    2bbf:	68 0b 42 00 00       	push   $0x420b
    2bc4:	68 02 4b 00 00       	push   $0x4b02
    2bc9:	e8 85 0d 00 00       	call   3953 <link>
    fd = open("", O_CREATE);
    2bce:	58                   	pop    %eax
    2bcf:	5a                   	pop    %edx
    2bd0:	68 00 02 00 00       	push   $0x200
    2bd5:	68 0b 42 00 00       	push   $0x420b
    2bda:	e8 54 0d 00 00       	call   3933 <open>
    if(fd >= 0)
    2bdf:	83 c4 10             	add    $0x10,%esp
    2be2:	85 c0                	test   %eax,%eax
    2be4:	78 0c                	js     2bf2 <iref+0x92>
      close(fd);
    2be6:	83 ec 0c             	sub    $0xc,%esp
    2be9:	50                   	push   %eax
    2bea:	e8 2c 0d 00 00       	call   391b <close>
    2bef:	83 c4 10             	add    $0x10,%esp
    fd = open("xx", O_CREATE);
    2bf2:	83 ec 08             	sub    $0x8,%esp
    2bf5:	68 00 02 00 00       	push   $0x200
    2bfa:	68 40 47 00 00       	push   $0x4740
    2bff:	e8 2f 0d 00 00       	call   3933 <open>
    if(fd >= 0)
    2c04:	83 c4 10             	add    $0x10,%esp
    2c07:	85 c0                	test   %eax,%eax
    2c09:	78 0c                	js     2c17 <iref+0xb7>
      close(fd);
    2c0b:	83 ec 0c             	sub    $0xc,%esp
    2c0e:	50                   	push   %eax
    2c0f:	e8 07 0d 00 00       	call   391b <close>
    2c14:	83 c4 10             	add    $0x10,%esp
    unlink("xx");
    2c17:	83 ec 0c             	sub    $0xc,%esp
    2c1a:	68 40 47 00 00       	push   $0x4740
    2c1f:	e8 1f 0d 00 00       	call   3943 <unlink>
  for(i = 0; i < 50 + 1; i++){
    2c24:	83 c4 10             	add    $0x10,%esp
    2c27:	83 eb 01             	sub    $0x1,%ebx
    2c2a:	0f 85 50 ff ff ff    	jne    2b80 <iref+0x20>
  chdir("/");
    2c30:	83 ec 0c             	sub    $0xc,%esp
    2c33:	68 31 3e 00 00       	push   $0x3e31
    2c38:	e8 26 0d 00 00       	call   3963 <chdir>
  printf(1, "empty file name OK\n");
    2c3d:	58                   	pop    %eax
    2c3e:	5a                   	pop    %edx
    2c3f:	68 84 4b 00 00       	push   $0x4b84
    2c44:	6a 01                	push   $0x1
    2c46:	e8 35 0e 00 00       	call   3a80 <printf>
}
    2c4b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2c4e:	83 c4 10             	add    $0x10,%esp
    2c51:	c9                   	leave
    2c52:	c3                   	ret
      printf(1, "mkdir irefd failed\n");
    2c53:	83 ec 08             	sub    $0x8,%esp
    2c56:	68 5c 4b 00 00       	push   $0x4b5c
    2c5b:	6a 01                	push   $0x1
    2c5d:	e8 1e 0e 00 00       	call   3a80 <printf>
      exit();
    2c62:	e8 8c 0c 00 00       	call   38f3 <exit>
      printf(1, "chdir irefd failed\n");
    2c67:	83 ec 08             	sub    $0x8,%esp
    2c6a:	68 70 4b 00 00       	push   $0x4b70
    2c6f:	6a 01                	push   $0x1
    2c71:	e8 0a 0e 00 00       	call   3a80 <printf>
      exit();
    2c76:	e8 78 0c 00 00       	call   38f3 <exit>
    2c7b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00002c80 <forktest>:
{
    2c80:	55                   	push   %ebp
    2c81:	89 e5                	mov    %esp,%ebp
    2c83:	53                   	push   %ebx
  for(n=0; n<1000; n++){
    2c84:	31 db                	xor    %ebx,%ebx
{
    2c86:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "fork test\n");
    2c89:	68 98 4b 00 00       	push   $0x4b98
    2c8e:	6a 01                	push   $0x1
    2c90:	e8 eb 0d 00 00       	call   3a80 <printf>
    2c95:	83 c4 10             	add    $0x10,%esp
    2c98:	eb 13                	jmp    2cad <forktest+0x2d>
    2c9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(pid == 0)
    2ca0:	74 4a                	je     2cec <forktest+0x6c>
  for(n=0; n<1000; n++){
    2ca2:	83 c3 01             	add    $0x1,%ebx
    2ca5:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    2cab:	74 6b                	je     2d18 <forktest+0x98>
    pid = fork();
    2cad:	e8 39 0c 00 00       	call   38eb <fork>
    if(pid < 0)
    2cb2:	85 c0                	test   %eax,%eax
    2cb4:	79 ea                	jns    2ca0 <forktest+0x20>
  for(; n > 0; n--){
    2cb6:	85 db                	test   %ebx,%ebx
    2cb8:	74 14                	je     2cce <forktest+0x4e>
    2cba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(wait() < 0){
    2cc0:	e8 36 0c 00 00       	call   38fb <wait>
    2cc5:	85 c0                	test   %eax,%eax
    2cc7:	78 28                	js     2cf1 <forktest+0x71>
  for(; n > 0; n--){
    2cc9:	83 eb 01             	sub    $0x1,%ebx
    2ccc:	75 f2                	jne    2cc0 <forktest+0x40>
  if(wait() != -1){
    2cce:	e8 28 0c 00 00       	call   38fb <wait>
    2cd3:	83 f8 ff             	cmp    $0xffffffff,%eax
    2cd6:	75 2d                	jne    2d05 <forktest+0x85>
  printf(1, "fork test OK\n");
    2cd8:	83 ec 08             	sub    $0x8,%esp
    2cdb:	68 ca 4b 00 00       	push   $0x4bca
    2ce0:	6a 01                	push   $0x1
    2ce2:	e8 99 0d 00 00       	call   3a80 <printf>
}
    2ce7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2cea:	c9                   	leave
    2ceb:	c3                   	ret
      exit();
    2cec:	e8 02 0c 00 00       	call   38f3 <exit>
      printf(1, "wait stopped early\n");
    2cf1:	83 ec 08             	sub    $0x8,%esp
    2cf4:	68 a3 4b 00 00       	push   $0x4ba3
    2cf9:	6a 01                	push   $0x1
    2cfb:	e8 80 0d 00 00       	call   3a80 <printf>
      exit();
    2d00:	e8 ee 0b 00 00       	call   38f3 <exit>
    printf(1, "wait got too many\n");
    2d05:	52                   	push   %edx
    2d06:	52                   	push   %edx
    2d07:	68 b7 4b 00 00       	push   $0x4bb7
    2d0c:	6a 01                	push   $0x1
    2d0e:	e8 6d 0d 00 00       	call   3a80 <printf>
    exit();
    2d13:	e8 db 0b 00 00       	call   38f3 <exit>
    printf(1, "fork claimed to work 1000 times!\n");
    2d18:	50                   	push   %eax
    2d19:	50                   	push   %eax
    2d1a:	68 40 53 00 00       	push   $0x5340
    2d1f:	6a 01                	push   $0x1
    2d21:	e8 5a 0d 00 00       	call   3a80 <printf>
    exit();
    2d26:	e8 c8 0b 00 00       	call   38f3 <exit>
    2d2b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00002d30 <sbrktest>:
{
    2d30:	55                   	push   %ebp
    2d31:	89 e5                	mov    %esp,%ebp
    2d33:	57                   	push   %edi
  for(i = 0; i < 5000; i++){
    2d34:	31 ff                	xor    %edi,%edi
{
    2d36:	56                   	push   %esi
    2d37:	53                   	push   %ebx
    2d38:	83 ec 64             	sub    $0x64,%esp
  printf(stdout, "sbrk test\n");
    2d3b:	68 d8 4b 00 00       	push   $0x4bd8
    2d40:	ff 35 f8 55 00 00    	push   0x55f8
    2d46:	e8 35 0d 00 00       	call   3a80 <printf>
  oldbrk = sbrk(0);
    2d4b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d52:	e8 24 0c 00 00       	call   397b <sbrk>
    2d57:	89 45 a4             	mov    %eax,-0x5c(%ebp)
  a = sbrk(0);
    2d5a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d61:	e8 15 0c 00 00       	call   397b <sbrk>
    2d66:	83 c4 10             	add    $0x10,%esp
    2d69:	89 c3                	mov    %eax,%ebx
  for(i = 0; i < 5000; i++){
    2d6b:	eb 05                	jmp    2d72 <sbrktest+0x42>
    2d6d:	8d 76 00             	lea    0x0(%esi),%esi
    2d70:	89 c3                	mov    %eax,%ebx
    b = sbrk(1);
    2d72:	83 ec 0c             	sub    $0xc,%esp
    2d75:	6a 01                	push   $0x1
    2d77:	e8 ff 0b 00 00       	call   397b <sbrk>
    if(b != a){
    2d7c:	83 c4 10             	add    $0x10,%esp
    2d7f:	39 d8                	cmp    %ebx,%eax
    2d81:	0f 85 aa 02 00 00    	jne    3031 <sbrktest+0x301>
  for(i = 0; i < 5000; i++){
    2d87:	83 c7 01             	add    $0x1,%edi
    *b = 1;
    2d8a:	c6 03 01             	movb   $0x1,(%ebx)
    a = b + 1;
    2d8d:	8d 43 01             	lea    0x1(%ebx),%eax
  for(i = 0; i < 5000; i++){
    2d90:	81 ff 88 13 00 00    	cmp    $0x1388,%edi
    2d96:	75 d8                	jne    2d70 <sbrktest+0x40>
  pid = fork();
    2d98:	e8 4e 0b 00 00       	call   38eb <fork>
    2d9d:	89 c7                	mov    %eax,%edi
  if(pid < 0){
    2d9f:	85 c0                	test   %eax,%eax
    2da1:	0f 88 10 03 00 00    	js     30b7 <sbrktest+0x387>
  c = sbrk(1);
    2da7:	83 ec 0c             	sub    $0xc,%esp
  if(c != a + 1){
    2daa:	83 c3 02             	add    $0x2,%ebx
  c = sbrk(1);
    2dad:	6a 01                	push   $0x1
    2daf:	e8 c7 0b 00 00       	call   397b <sbrk>
  c = sbrk(1);
    2db4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2dbb:	e8 bb 0b 00 00       	call   397b <sbrk>
  if(c != a + 1){
    2dc0:	83 c4 10             	add    $0x10,%esp
    2dc3:	39 c3                	cmp    %eax,%ebx
    2dc5:	0f 85 49 03 00 00    	jne    3114 <sbrktest+0x3e4>
  if(pid == 0)
    2dcb:	85 ff                	test   %edi,%edi
    2dcd:	0f 84 3c 03 00 00    	je     310f <sbrktest+0x3df>
  wait();
    2dd3:	e8 23 0b 00 00       	call   38fb <wait>
  a = sbrk(0);
    2dd8:	83 ec 0c             	sub    $0xc,%esp
    2ddb:	6a 00                	push   $0x0
    2ddd:	e8 99 0b 00 00       	call   397b <sbrk>
    2de2:	89 c3                	mov    %eax,%ebx
  amt = (BIG) - (uint)a;
    2de4:	b8 00 00 40 06       	mov    $0x6400000,%eax
    2de9:	29 d8                	sub    %ebx,%eax
  p = sbrk(amt);
    2deb:	89 04 24             	mov    %eax,(%esp)
    2dee:	e8 88 0b 00 00       	call   397b <sbrk>
  if (p != a) {
    2df3:	83 c4 10             	add    $0x10,%esp
    2df6:	39 c3                	cmp    %eax,%ebx
    2df8:	0f 85 a2 02 00 00    	jne    30a0 <sbrktest+0x370>
  a = sbrk(0);
    2dfe:	83 ec 0c             	sub    $0xc,%esp
  *lastaddr = 99;
    2e01:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff
  a = sbrk(0);
    2e08:	6a 00                	push   $0x0
    2e0a:	e8 6c 0b 00 00       	call   397b <sbrk>
  c = sbrk(-4096);
    2e0f:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  a = sbrk(0);
    2e16:	89 c3                	mov    %eax,%ebx
  c = sbrk(-4096);
    2e18:	e8 5e 0b 00 00       	call   397b <sbrk>
  if(c == (char*)0xffffffff){
    2e1d:	83 c4 10             	add    $0x10,%esp
    2e20:	83 f8 ff             	cmp    $0xffffffff,%eax
    2e23:	0f 84 30 03 00 00    	je     3159 <sbrktest+0x429>
  c = sbrk(0);
    2e29:	83 ec 0c             	sub    $0xc,%esp
    2e2c:	6a 00                	push   $0x0
    2e2e:	e8 48 0b 00 00       	call   397b <sbrk>
  if(c != a - 4096){
    2e33:	8d 93 00 f0 ff ff    	lea    -0x1000(%ebx),%edx
    2e39:	83 c4 10             	add    $0x10,%esp
    2e3c:	39 d0                	cmp    %edx,%eax
    2e3e:	0f 85 fe 02 00 00    	jne    3142 <sbrktest+0x412>
  a = sbrk(0);
    2e44:	83 ec 0c             	sub    $0xc,%esp
    2e47:	6a 00                	push   $0x0
    2e49:	e8 2d 0b 00 00       	call   397b <sbrk>
  c = sbrk(4096);
    2e4e:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
  a = sbrk(0);
    2e55:	89 c3                	mov    %eax,%ebx
  c = sbrk(4096);
    2e57:	e8 1f 0b 00 00       	call   397b <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    2e5c:	83 c4 10             	add    $0x10,%esp
  c = sbrk(4096);
    2e5f:	89 c7                	mov    %eax,%edi
  if(c != a || sbrk(0) != a + 4096){
    2e61:	39 c3                	cmp    %eax,%ebx
    2e63:	0f 85 c2 02 00 00    	jne    312b <sbrktest+0x3fb>
    2e69:	83 ec 0c             	sub    $0xc,%esp
    2e6c:	6a 00                	push   $0x0
    2e6e:	e8 08 0b 00 00       	call   397b <sbrk>
    2e73:	8d 93 00 10 00 00    	lea    0x1000(%ebx),%edx
    2e79:	83 c4 10             	add    $0x10,%esp
    2e7c:	39 c2                	cmp    %eax,%edx
    2e7e:	0f 85 a7 02 00 00    	jne    312b <sbrktest+0x3fb>
  if(*lastaddr == 99){
    2e84:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    2e8b:	0f 84 3d 02 00 00    	je     30ce <sbrktest+0x39e>
  a = sbrk(0);
    2e91:	83 ec 0c             	sub    $0xc,%esp
    2e94:	6a 00                	push   $0x0
    2e96:	e8 e0 0a 00 00       	call   397b <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    2e9b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a = sbrk(0);
    2ea2:	89 c3                	mov    %eax,%ebx
  c = sbrk(-(sbrk(0) - oldbrk));
    2ea4:	e8 d2 0a 00 00       	call   397b <sbrk>
    2ea9:	89 c2                	mov    %eax,%edx
    2eab:	8b 45 a4             	mov    -0x5c(%ebp),%eax
    2eae:	29 d0                	sub    %edx,%eax
    2eb0:	89 04 24             	mov    %eax,(%esp)
    2eb3:	e8 c3 0a 00 00       	call   397b <sbrk>
  if(c != a){
    2eb8:	83 c4 10             	add    $0x10,%esp
    2ebb:	39 c3                	cmp    %eax,%ebx
    2ebd:	0f 85 c6 01 00 00    	jne    3089 <sbrktest+0x359>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    2ec3:	bb 00 00 00 80       	mov    $0x80000000,%ebx
    2ec8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    2ecf:	00 
    ppid = getpid();
    2ed0:	e8 9e 0a 00 00       	call   3973 <getpid>
    2ed5:	89 c7                	mov    %eax,%edi
    pid = fork();
    2ed7:	e8 0f 0a 00 00       	call   38eb <fork>
    if(pid < 0){
    2edc:	85 c0                	test   %eax,%eax
    2ede:	0f 88 6b 01 00 00    	js     304f <sbrktest+0x31f>
    if(pid == 0){
    2ee4:	0f 84 7d 01 00 00    	je     3067 <sbrktest+0x337>
    wait();
    2eea:	e8 0c 0a 00 00       	call   38fb <wait>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    2eef:	81 c3 50 c3 00 00    	add    $0xc350,%ebx
    2ef5:	81 fb 80 84 1e 80    	cmp    $0x801e8480,%ebx
    2efb:	75 d3                	jne    2ed0 <sbrktest+0x1a0>
  if(pipe(fds) != 0){
    2efd:	83 ec 0c             	sub    $0xc,%esp
    2f00:	8d 45 b8             	lea    -0x48(%ebp),%eax
    2f03:	50                   	push   %eax
    2f04:	e8 fa 09 00 00       	call   3903 <pipe>
    2f09:	83 c4 10             	add    $0x10,%esp
    2f0c:	85 c0                	test   %eax,%eax
    2f0e:	0f 85 e8 01 00 00    	jne    30fc <sbrktest+0x3cc>
    2f14:	8d 5d c0             	lea    -0x40(%ebp),%ebx
      read(fds[0], &scratch, 1);
    2f17:	8d 7d b7             	lea    -0x49(%ebp),%edi
  if(pipe(fds) != 0){
    2f1a:	89 de                	mov    %ebx,%esi
    2f1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if((pids[i] = fork()) == 0){
    2f20:	e8 c6 09 00 00       	call   38eb <fork>
    2f25:	89 06                	mov    %eax,(%esi)
    2f27:	85 c0                	test   %eax,%eax
    2f29:	0f 84 9c 00 00 00    	je     2fcb <sbrktest+0x29b>
    if(pids[i] != -1)
    2f2f:	83 f8 ff             	cmp    $0xffffffff,%eax
    2f32:	74 11                	je     2f45 <sbrktest+0x215>
      read(fds[0], &scratch, 1);
    2f34:	83 ec 04             	sub    $0x4,%esp
    2f37:	6a 01                	push   $0x1
    2f39:	57                   	push   %edi
    2f3a:	ff 75 b8             	push   -0x48(%ebp)
    2f3d:	e8 c9 09 00 00       	call   390b <read>
    2f42:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    2f45:	83 c6 04             	add    $0x4,%esi
    2f48:	8d 45 e8             	lea    -0x18(%ebp),%eax
    2f4b:	39 c6                	cmp    %eax,%esi
    2f4d:	75 d1                	jne    2f20 <sbrktest+0x1f0>
  c = sbrk(4096);
    2f4f:	83 ec 0c             	sub    $0xc,%esp
    2f52:	68 00 10 00 00       	push   $0x1000
    2f57:	e8 1f 0a 00 00       	call   397b <sbrk>
    2f5c:	83 c4 10             	add    $0x10,%esp
    2f5f:	89 c7                	mov    %eax,%edi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    2f61:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    2f68:	00 
    2f69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(pids[i] == -1)
    2f70:	8b 03                	mov    (%ebx),%eax
    2f72:	83 f8 ff             	cmp    $0xffffffff,%eax
    2f75:	74 11                	je     2f88 <sbrktest+0x258>
    kill(pids[i]);
    2f77:	83 ec 0c             	sub    $0xc,%esp
    2f7a:	50                   	push   %eax
    2f7b:	e8 a3 09 00 00       	call   3923 <kill>
    wait();
    2f80:	e8 76 09 00 00       	call   38fb <wait>
    2f85:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    2f88:	83 c3 04             	add    $0x4,%ebx
    2f8b:	8d 45 e8             	lea    -0x18(%ebp),%eax
    2f8e:	39 c3                	cmp    %eax,%ebx
    2f90:	75 de                	jne    2f70 <sbrktest+0x240>
  if(c == (char*)0xffffffff){
    2f92:	83 ff ff             	cmp    $0xffffffff,%edi
    2f95:	0f 84 4a 01 00 00    	je     30e5 <sbrktest+0x3b5>
  if(sbrk(0) > oldbrk)
    2f9b:	83 ec 0c             	sub    $0xc,%esp
    2f9e:	6a 00                	push   $0x0
    2fa0:	e8 d6 09 00 00       	call   397b <sbrk>
    2fa5:	83 c4 10             	add    $0x10,%esp
    2fa8:	39 45 a4             	cmp    %eax,-0x5c(%ebp)
    2fab:	72 65                	jb     3012 <sbrktest+0x2e2>
  printf(stdout, "sbrk test OK\n");
    2fad:	83 ec 08             	sub    $0x8,%esp
    2fb0:	68 80 4c 00 00       	push   $0x4c80
    2fb5:	ff 35 f8 55 00 00    	push   0x55f8
    2fbb:	e8 c0 0a 00 00       	call   3a80 <printf>
}
    2fc0:	83 c4 10             	add    $0x10,%esp
    2fc3:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2fc6:	5b                   	pop    %ebx
    2fc7:	5e                   	pop    %esi
    2fc8:	5f                   	pop    %edi
    2fc9:	5d                   	pop    %ebp
    2fca:	c3                   	ret
      sbrk(BIG - (uint)sbrk(0));
    2fcb:	83 ec 0c             	sub    $0xc,%esp
    2fce:	6a 00                	push   $0x0
    2fd0:	e8 a6 09 00 00       	call   397b <sbrk>
    2fd5:	89 c2                	mov    %eax,%edx
    2fd7:	b8 00 00 40 06       	mov    $0x6400000,%eax
    2fdc:	29 d0                	sub    %edx,%eax
    2fde:	89 04 24             	mov    %eax,(%esp)
    2fe1:	e8 95 09 00 00       	call   397b <sbrk>
      write(fds[1], "x", 1);
    2fe6:	83 c4 0c             	add    $0xc,%esp
    2fe9:	6a 01                	push   $0x1
    2feb:	68 41 47 00 00       	push   $0x4741
    2ff0:	ff 75 bc             	push   -0x44(%ebp)
    2ff3:	e8 1b 09 00 00       	call   3913 <write>
    2ff8:	83 c4 10             	add    $0x10,%esp
    2ffb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
      for(;;) sleep(1000);
    3000:	83 ec 0c             	sub    $0xc,%esp
    3003:	68 e8 03 00 00       	push   $0x3e8
    3008:	e8 76 09 00 00       	call   3983 <sleep>
    300d:	83 c4 10             	add    $0x10,%esp
    3010:	eb ee                	jmp    3000 <sbrktest+0x2d0>
    sbrk(-(sbrk(0) - oldbrk));
    3012:	83 ec 0c             	sub    $0xc,%esp
    3015:	6a 00                	push   $0x0
    3017:	e8 5f 09 00 00       	call   397b <sbrk>
    301c:	8b 75 a4             	mov    -0x5c(%ebp),%esi
    301f:	29 c6                	sub    %eax,%esi
    3021:	89 34 24             	mov    %esi,(%esp)
    3024:	e8 52 09 00 00       	call   397b <sbrk>
    3029:	83 c4 10             	add    $0x10,%esp
    302c:	e9 7c ff ff ff       	jmp    2fad <sbrktest+0x27d>
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    3031:	83 ec 0c             	sub    $0xc,%esp
    3034:	50                   	push   %eax
    3035:	53                   	push   %ebx
    3036:	57                   	push   %edi
    3037:	68 e3 4b 00 00       	push   $0x4be3
    303c:	ff 35 f8 55 00 00    	push   0x55f8
    3042:	e8 39 0a 00 00       	call   3a80 <printf>
      exit();
    3047:	83 c4 20             	add    $0x20,%esp
    304a:	e8 a4 08 00 00       	call   38f3 <exit>
      printf(stdout, "fork failed\n");
    304f:	83 ec 08             	sub    $0x8,%esp
    3052:	68 29 4d 00 00       	push   $0x4d29
    3057:	ff 35 f8 55 00 00    	push   0x55f8
    305d:	e8 1e 0a 00 00       	call   3a80 <printf>
      exit();
    3062:	e8 8c 08 00 00       	call   38f3 <exit>
      printf(stdout, "oops could read %x = %x\n", a, *a);
    3067:	0f be 03             	movsbl (%ebx),%eax
    306a:	50                   	push   %eax
    306b:	53                   	push   %ebx
    306c:	68 4c 4c 00 00       	push   $0x4c4c
    3071:	ff 35 f8 55 00 00    	push   0x55f8
    3077:	e8 04 0a 00 00       	call   3a80 <printf>
      kill(ppid);
    307c:	89 3c 24             	mov    %edi,(%esp)
    307f:	e8 9f 08 00 00       	call   3923 <kill>
      exit();
    3084:	e8 6a 08 00 00       	call   38f3 <exit>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    3089:	50                   	push   %eax
    308a:	53                   	push   %ebx
    308b:	68 34 54 00 00       	push   $0x5434
    3090:	ff 35 f8 55 00 00    	push   0x55f8
    3096:	e8 e5 09 00 00       	call   3a80 <printf>
    exit();
    309b:	e8 53 08 00 00       	call   38f3 <exit>
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    30a0:	56                   	push   %esi
    30a1:	56                   	push   %esi
    30a2:	68 64 53 00 00       	push   $0x5364
    30a7:	ff 35 f8 55 00 00    	push   0x55f8
    30ad:	e8 ce 09 00 00       	call   3a80 <printf>
    exit();
    30b2:	e8 3c 08 00 00       	call   38f3 <exit>
    printf(stdout, "sbrk test fork failed\n");
    30b7:	50                   	push   %eax
    30b8:	50                   	push   %eax
    30b9:	68 fe 4b 00 00       	push   $0x4bfe
    30be:	ff 35 f8 55 00 00    	push   0x55f8
    30c4:	e8 b7 09 00 00       	call   3a80 <printf>
    exit();
    30c9:	e8 25 08 00 00       	call   38f3 <exit>
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    30ce:	51                   	push   %ecx
    30cf:	51                   	push   %ecx
    30d0:	68 04 54 00 00       	push   $0x5404
    30d5:	ff 35 f8 55 00 00    	push   0x55f8
    30db:	e8 a0 09 00 00       	call   3a80 <printf>
    exit();
    30e0:	e8 0e 08 00 00       	call   38f3 <exit>
    printf(stdout, "failed sbrk leaked memory\n");
    30e5:	50                   	push   %eax
    30e6:	50                   	push   %eax
    30e7:	68 65 4c 00 00       	push   $0x4c65
    30ec:	ff 35 f8 55 00 00    	push   0x55f8
    30f2:	e8 89 09 00 00       	call   3a80 <printf>
    exit();
    30f7:	e8 f7 07 00 00       	call   38f3 <exit>
    printf(1, "pipe() failed\n");
    30fc:	52                   	push   %edx
    30fd:	52                   	push   %edx
    30fe:	68 21 41 00 00       	push   $0x4121
    3103:	6a 01                	push   $0x1
    3105:	e8 76 09 00 00       	call   3a80 <printf>
    exit();
    310a:	e8 e4 07 00 00       	call   38f3 <exit>
    exit();
    310f:	e8 df 07 00 00       	call   38f3 <exit>
    printf(stdout, "sbrk test failed post-fork\n");
    3114:	57                   	push   %edi
    3115:	57                   	push   %edi
    3116:	68 15 4c 00 00       	push   $0x4c15
    311b:	ff 35 f8 55 00 00    	push   0x55f8
    3121:	e8 5a 09 00 00       	call   3a80 <printf>
    exit();
    3126:	e8 c8 07 00 00       	call   38f3 <exit>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    312b:	57                   	push   %edi
    312c:	53                   	push   %ebx
    312d:	68 dc 53 00 00       	push   $0x53dc
    3132:	ff 35 f8 55 00 00    	push   0x55f8
    3138:	e8 43 09 00 00       	call   3a80 <printf>
    exit();
    313d:	e8 b1 07 00 00       	call   38f3 <exit>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    3142:	50                   	push   %eax
    3143:	53                   	push   %ebx
    3144:	68 a4 53 00 00       	push   $0x53a4
    3149:	ff 35 f8 55 00 00    	push   0x55f8
    314f:	e8 2c 09 00 00       	call   3a80 <printf>
    exit();
    3154:	e8 9a 07 00 00       	call   38f3 <exit>
    printf(stdout, "sbrk could not deallocate\n");
    3159:	53                   	push   %ebx
    315a:	53                   	push   %ebx
    315b:	68 31 4c 00 00       	push   $0x4c31
    3160:	ff 35 f8 55 00 00    	push   0x55f8
    3166:	e8 15 09 00 00       	call   3a80 <printf>
    exit();
    316b:	e8 83 07 00 00       	call   38f3 <exit>

00003170 <validateint>:
}
    3170:	c3                   	ret
    3171:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3178:	00 
    3179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003180 <validatetest>:
{
    3180:	55                   	push   %ebp
    3181:	89 e5                	mov    %esp,%ebp
    3183:	56                   	push   %esi
  for(p = 0; p <= (uint)hi; p += 4096){
    3184:	31 f6                	xor    %esi,%esi
{
    3186:	53                   	push   %ebx
  printf(stdout, "validate test\n");
    3187:	83 ec 08             	sub    $0x8,%esp
    318a:	68 8e 4c 00 00       	push   $0x4c8e
    318f:	ff 35 f8 55 00 00    	push   0x55f8
    3195:	e8 e6 08 00 00       	call   3a80 <printf>
    319a:	83 c4 10             	add    $0x10,%esp
    319d:	8d 76 00             	lea    0x0(%esi),%esi
    if((pid = fork()) == 0){
    31a0:	e8 46 07 00 00       	call   38eb <fork>
    31a5:	89 c3                	mov    %eax,%ebx
    31a7:	85 c0                	test   %eax,%eax
    31a9:	74 63                	je     320e <validatetest+0x8e>
    sleep(0);
    31ab:	83 ec 0c             	sub    $0xc,%esp
    31ae:	6a 00                	push   $0x0
    31b0:	e8 ce 07 00 00       	call   3983 <sleep>
    sleep(0);
    31b5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    31bc:	e8 c2 07 00 00       	call   3983 <sleep>
    kill(pid);
    31c1:	89 1c 24             	mov    %ebx,(%esp)
    31c4:	e8 5a 07 00 00       	call   3923 <kill>
    wait();
    31c9:	e8 2d 07 00 00       	call   38fb <wait>
    if(link("nosuchfile", (char*)p) != -1){
    31ce:	58                   	pop    %eax
    31cf:	5a                   	pop    %edx
    31d0:	56                   	push   %esi
    31d1:	68 9d 4c 00 00       	push   $0x4c9d
    31d6:	e8 78 07 00 00       	call   3953 <link>
    31db:	83 c4 10             	add    $0x10,%esp
    31de:	83 f8 ff             	cmp    $0xffffffff,%eax
    31e1:	75 30                	jne    3213 <validatetest+0x93>
  for(p = 0; p <= (uint)hi; p += 4096){
    31e3:	81 c6 00 10 00 00    	add    $0x1000,%esi
    31e9:	81 fe 00 40 11 00    	cmp    $0x114000,%esi
    31ef:	75 af                	jne    31a0 <validatetest+0x20>
  printf(stdout, "validate ok\n");
    31f1:	83 ec 08             	sub    $0x8,%esp
    31f4:	68 c1 4c 00 00       	push   $0x4cc1
    31f9:	ff 35 f8 55 00 00    	push   0x55f8
    31ff:	e8 7c 08 00 00       	call   3a80 <printf>
}
    3204:	83 c4 10             	add    $0x10,%esp
    3207:	8d 65 f8             	lea    -0x8(%ebp),%esp
    320a:	5b                   	pop    %ebx
    320b:	5e                   	pop    %esi
    320c:	5d                   	pop    %ebp
    320d:	c3                   	ret
      exit();
    320e:	e8 e0 06 00 00       	call   38f3 <exit>
      printf(stdout, "link should not succeed\n");
    3213:	83 ec 08             	sub    $0x8,%esp
    3216:	68 a8 4c 00 00       	push   $0x4ca8
    321b:	ff 35 f8 55 00 00    	push   0x55f8
    3221:	e8 5a 08 00 00       	call   3a80 <printf>
      exit();
    3226:	e8 c8 06 00 00       	call   38f3 <exit>
    322b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00003230 <bsstest>:
{
    3230:	55                   	push   %ebp
    3231:	89 e5                	mov    %esp,%ebp
    3233:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "bss test\n");
    3236:	68 ce 4c 00 00       	push   $0x4cce
    323b:	ff 35 f8 55 00 00    	push   0x55f8
    3241:	e8 3a 08 00 00       	call   3a80 <printf>
    3246:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(uninit); i++){
    3249:	31 c0                	xor    %eax,%eax
    324b:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3252:	00 
    3253:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    325a:	00 
    325b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    if(uninit[i] != '\0'){
    3260:	80 b8 20 56 00 00 00 	cmpb   $0x0,0x5620(%eax)
    3267:	75 22                	jne    328b <bsstest+0x5b>
  for(i = 0; i < sizeof(uninit); i++){
    3269:	83 c0 01             	add    $0x1,%eax
    326c:	3d 10 27 00 00       	cmp    $0x2710,%eax
    3271:	75 ed                	jne    3260 <bsstest+0x30>
  printf(stdout, "bss test ok\n");
    3273:	83 ec 08             	sub    $0x8,%esp
    3276:	68 e9 4c 00 00       	push   $0x4ce9
    327b:	ff 35 f8 55 00 00    	push   0x55f8
    3281:	e8 fa 07 00 00       	call   3a80 <printf>
}
    3286:	83 c4 10             	add    $0x10,%esp
    3289:	c9                   	leave
    328a:	c3                   	ret
      printf(stdout, "bss test failed\n");
    328b:	83 ec 08             	sub    $0x8,%esp
    328e:	68 d8 4c 00 00       	push   $0x4cd8
    3293:	ff 35 f8 55 00 00    	push   0x55f8
    3299:	e8 e2 07 00 00       	call   3a80 <printf>
      exit();
    329e:	e8 50 06 00 00       	call   38f3 <exit>
    32a3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    32aa:	00 
    32ab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

000032b0 <bigargtest>:
{
    32b0:	55                   	push   %ebp
    32b1:	89 e5                	mov    %esp,%ebp
    32b3:	83 ec 14             	sub    $0x14,%esp
  unlink("bigarg-ok");
    32b6:	68 f6 4c 00 00       	push   $0x4cf6
    32bb:	e8 83 06 00 00       	call   3943 <unlink>
  pid = fork();
    32c0:	e8 26 06 00 00       	call   38eb <fork>
  if(pid == 0){
    32c5:	83 c4 10             	add    $0x10,%esp
    32c8:	85 c0                	test   %eax,%eax
    32ca:	74 3f                	je     330b <bigargtest+0x5b>
  } else if(pid < 0){
    32cc:	0f 88 d9 00 00 00    	js     33ab <bigargtest+0xfb>
  wait();
    32d2:	e8 24 06 00 00       	call   38fb <wait>
  fd = open("bigarg-ok", 0);
    32d7:	83 ec 08             	sub    $0x8,%esp
    32da:	6a 00                	push   $0x0
    32dc:	68 f6 4c 00 00       	push   $0x4cf6
    32e1:	e8 4d 06 00 00       	call   3933 <open>
  if(fd < 0){
    32e6:	83 c4 10             	add    $0x10,%esp
    32e9:	85 c0                	test   %eax,%eax
    32eb:	0f 88 a3 00 00 00    	js     3394 <bigargtest+0xe4>
  close(fd);
    32f1:	83 ec 0c             	sub    $0xc,%esp
    32f4:	50                   	push   %eax
    32f5:	e8 21 06 00 00       	call   391b <close>
  unlink("bigarg-ok");
    32fa:	c7 04 24 f6 4c 00 00 	movl   $0x4cf6,(%esp)
    3301:	e8 3d 06 00 00       	call   3943 <unlink>
}
    3306:	83 c4 10             	add    $0x10,%esp
    3309:	c9                   	leave
    330a:	c3                   	ret
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    330b:	c7 04 85 40 9d 00 00 	movl   $0x5458,0x9d40(,%eax,4)
    3312:	58 54 00 00 
    for(i = 0; i < MAXARG-1; i++)
    3316:	b8 01 00 00 00       	mov    $0x1,%eax
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    331b:	c7 04 85 40 9d 00 00 	movl   $0x5458,0x9d40(,%eax,4)
    3322:	58 54 00 00 
    3326:	c7 04 85 44 9d 00 00 	movl   $0x5458,0x9d44(,%eax,4)
    332d:	58 54 00 00 
    for(i = 0; i < MAXARG-1; i++)
    3331:	83 c0 02             	add    $0x2,%eax
    3334:	83 f8 1f             	cmp    $0x1f,%eax
    3337:	75 e2                	jne    331b <bigargtest+0x6b>
    printf(stdout, "bigarg test\n");
    3339:	50                   	push   %eax
    args[MAXARG-1] = 0;
    333a:	31 c9                	xor    %ecx,%ecx
    printf(stdout, "bigarg test\n");
    333c:	50                   	push   %eax
    333d:	68 00 4d 00 00       	push   $0x4d00
    3342:	ff 35 f8 55 00 00    	push   0x55f8
    args[MAXARG-1] = 0;
    3348:	89 0d bc 9d 00 00    	mov    %ecx,0x9dbc
    printf(stdout, "bigarg test\n");
    334e:	e8 2d 07 00 00       	call   3a80 <printf>
    exec("echo", args);
    3353:	58                   	pop    %eax
    3354:	5a                   	pop    %edx
    3355:	68 40 9d 00 00       	push   $0x9d40
    335a:	68 cd 3e 00 00       	push   $0x3ecd
    335f:	e8 c7 05 00 00       	call   392b <exec>
    printf(stdout, "bigarg test ok\n");
    3364:	59                   	pop    %ecx
    3365:	58                   	pop    %eax
    3366:	68 0d 4d 00 00       	push   $0x4d0d
    336b:	ff 35 f8 55 00 00    	push   0x55f8
    3371:	e8 0a 07 00 00       	call   3a80 <printf>
    fd = open("bigarg-ok", O_CREATE);
    3376:	58                   	pop    %eax
    3377:	5a                   	pop    %edx
    3378:	68 00 02 00 00       	push   $0x200
    337d:	68 f6 4c 00 00       	push   $0x4cf6
    3382:	e8 ac 05 00 00       	call   3933 <open>
    close(fd);
    3387:	89 04 24             	mov    %eax,(%esp)
    338a:	e8 8c 05 00 00       	call   391b <close>
    exit();
    338f:	e8 5f 05 00 00       	call   38f3 <exit>
    printf(stdout, "bigarg test failed!\n");
    3394:	50                   	push   %eax
    3395:	50                   	push   %eax
    3396:	68 36 4d 00 00       	push   $0x4d36
    339b:	ff 35 f8 55 00 00    	push   0x55f8
    33a1:	e8 da 06 00 00       	call   3a80 <printf>
    exit();
    33a6:	e8 48 05 00 00       	call   38f3 <exit>
    printf(stdout, "bigargtest: fork failed\n");
    33ab:	52                   	push   %edx
    33ac:	52                   	push   %edx
    33ad:	68 1d 4d 00 00       	push   $0x4d1d
    33b2:	ff 35 f8 55 00 00    	push   0x55f8
    33b8:	e8 c3 06 00 00       	call   3a80 <printf>
    exit();
    33bd:	e8 31 05 00 00       	call   38f3 <exit>
    33c2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    33c9:	00 
    33ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000033d0 <fsfull>:
{
    33d0:	55                   	push   %ebp
    33d1:	89 e5                	mov    %esp,%ebp
    33d3:	57                   	push   %edi
    33d4:	56                   	push   %esi
    33d5:	8d 7d a8             	lea    -0x58(%ebp),%edi
    33d8:	53                   	push   %ebx
  for(nfiles = 0; ; nfiles++){
    33d9:	31 db                	xor    %ebx,%ebx
{
    33db:	83 ec 64             	sub    $0x64,%esp
  printf(1, "fsfull test\n");
    33de:	68 4b 4d 00 00       	push   $0x4d4b
    33e3:	6a 01                	push   $0x1
    33e5:	e8 96 06 00 00       	call   3a80 <printf>
    33ea:	83 c4 10             	add    $0x10,%esp
    name[1] = '0' + nfiles / 1000;
    33ed:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    33f2:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    printf(1, "writing %s\n", name);
    33f7:	83 ec 04             	sub    $0x4,%esp
    name[0] = 'f';
    33fa:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    33fe:	f7 e3                	mul    %ebx
    name[5] = '\0';
    3400:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    3404:	c1 ea 06             	shr    $0x6,%edx
    3407:	8d 42 30             	lea    0x30(%edx),%eax
    340a:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    340d:	69 c2 e8 03 00 00    	imul   $0x3e8,%edx,%eax
    3413:	89 da                	mov    %ebx,%edx
    3415:	29 c2                	sub    %eax,%edx
    3417:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    341c:	f7 e2                	mul    %edx
    name[3] = '0' + (nfiles % 100) / 10;
    341e:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3423:	c1 ea 05             	shr    $0x5,%edx
    3426:	83 c2 30             	add    $0x30,%edx
    3429:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    342c:	f7 e3                	mul    %ebx
    342e:	c1 ea 05             	shr    $0x5,%edx
    3431:	6b c2 64             	imul   $0x64,%edx,%eax
    3434:	89 da                	mov    %ebx,%edx
    3436:	29 c2                	sub    %eax,%edx
    3438:	89 d0                	mov    %edx,%eax
    343a:	f7 e1                	mul    %ecx
    name[4] = '0' + (nfiles % 10);
    343c:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    343e:	c1 ea 03             	shr    $0x3,%edx
    3441:	83 c2 30             	add    $0x30,%edx
    3444:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    3447:	f7 e1                	mul    %ecx
    3449:	89 d8                	mov    %ebx,%eax
    344b:	c1 ea 03             	shr    $0x3,%edx
    344e:	8d 14 92             	lea    (%edx,%edx,4),%edx
    3451:	01 d2                	add    %edx,%edx
    3453:	29 d0                	sub    %edx,%eax
    3455:	83 c0 30             	add    $0x30,%eax
    3458:	88 45 ac             	mov    %al,-0x54(%ebp)
    printf(1, "writing %s\n", name);
    345b:	57                   	push   %edi
    345c:	68 58 4d 00 00       	push   $0x4d58
    3461:	6a 01                	push   $0x1
    3463:	e8 18 06 00 00       	call   3a80 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    3468:	58                   	pop    %eax
    3469:	5a                   	pop    %edx
    346a:	68 02 02 00 00       	push   $0x202
    346f:	57                   	push   %edi
    3470:	e8 be 04 00 00       	call   3933 <open>
    if(fd < 0){
    3475:	83 c4 10             	add    $0x10,%esp
    3478:	85 c0                	test   %eax,%eax
    347a:	0f 89 b8 00 00 00    	jns    3538 <fsfull+0x168>
      printf(1, "open %s failed\n", name);
    3480:	83 ec 04             	sub    $0x4,%esp
    3483:	57                   	push   %edi
    3484:	68 64 4d 00 00       	push   $0x4d64
    3489:	6a 01                	push   $0x1
    348b:	e8 f0 05 00 00       	call   3a80 <printf>
      break;
    3490:	83 c4 10             	add    $0x10,%esp
    name[2] = '0' + (nfiles % 1000) / 100;
    3493:	be 1f 85 eb 51       	mov    $0x51eb851f,%esi
    3498:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    349f:	00 
    name[1] = '0' + nfiles / 1000;
    34a0:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    unlink(name);
    34a5:	83 ec 0c             	sub    $0xc,%esp
    name[0] = 'f';
    34a8:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    34ac:	f7 e3                	mul    %ebx
    name[5] = '\0';
    34ae:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    34b2:	c1 ea 06             	shr    $0x6,%edx
    34b5:	8d 42 30             	lea    0x30(%edx),%eax
    34b8:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    34bb:	69 c2 e8 03 00 00    	imul   $0x3e8,%edx,%eax
    34c1:	89 da                	mov    %ebx,%edx
    34c3:	29 c2                	sub    %eax,%edx
    34c5:	89 d0                	mov    %edx,%eax
    34c7:	f7 e6                	mul    %esi
    name[3] = '0' + (nfiles % 100) / 10;
    34c9:	89 d8                	mov    %ebx,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    34cb:	c1 ea 05             	shr    $0x5,%edx
    34ce:	83 c2 30             	add    $0x30,%edx
    34d1:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    34d4:	f7 e6                	mul    %esi
    34d6:	c1 ea 05             	shr    $0x5,%edx
    34d9:	6b ca 64             	imul   $0x64,%edx,%ecx
    34dc:	89 da                	mov    %ebx,%edx
    34de:	29 ca                	sub    %ecx,%edx
    34e0:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    34e5:	89 d0                	mov    %edx,%eax
    34e7:	f7 e1                	mul    %ecx
    name[4] = '0' + (nfiles % 10);
    34e9:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    34eb:	c1 ea 03             	shr    $0x3,%edx
    34ee:	83 c2 30             	add    $0x30,%edx
    34f1:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    34f4:	f7 e1                	mul    %ecx
    34f6:	89 d8                	mov    %ebx,%eax
    nfiles--;
    34f8:	83 eb 01             	sub    $0x1,%ebx
    name[4] = '0' + (nfiles % 10);
    34fb:	c1 ea 03             	shr    $0x3,%edx
    34fe:	8d 14 92             	lea    (%edx,%edx,4),%edx
    3501:	01 d2                	add    %edx,%edx
    3503:	29 d0                	sub    %edx,%eax
    3505:	83 c0 30             	add    $0x30,%eax
    3508:	88 45 ac             	mov    %al,-0x54(%ebp)
    unlink(name);
    350b:	57                   	push   %edi
    350c:	e8 32 04 00 00       	call   3943 <unlink>
  while(nfiles >= 0){
    3511:	83 c4 10             	add    $0x10,%esp
    3514:	83 fb ff             	cmp    $0xffffffff,%ebx
    3517:	75 87                	jne    34a0 <fsfull+0xd0>
  printf(1, "fsfull test finished\n");
    3519:	83 ec 08             	sub    $0x8,%esp
    351c:	68 84 4d 00 00       	push   $0x4d84
    3521:	6a 01                	push   $0x1
    3523:	e8 58 05 00 00       	call   3a80 <printf>
}
    3528:	83 c4 10             	add    $0x10,%esp
    352b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    352e:	5b                   	pop    %ebx
    352f:	5e                   	pop    %esi
    3530:	5f                   	pop    %edi
    3531:	5d                   	pop    %ebp
    3532:	c3                   	ret
    3533:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    int total = 0;
    3538:	89 5d a4             	mov    %ebx,-0x5c(%ebp)
    353b:	31 f6                	xor    %esi,%esi
    353d:	89 c3                	mov    %eax,%ebx
    353f:	eb 09                	jmp    354a <fsfull+0x17a>
    3541:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      total += cc;
    3548:	01 c6                	add    %eax,%esi
      int cc = write(fd, buf, 512);
    354a:	83 ec 04             	sub    $0x4,%esp
    354d:	68 00 02 00 00       	push   $0x200
    3552:	68 40 7d 00 00       	push   $0x7d40
    3557:	53                   	push   %ebx
    3558:	e8 b6 03 00 00       	call   3913 <write>
      if(cc < 512)
    355d:	83 c4 10             	add    $0x10,%esp
    3560:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    3565:	7f e1                	jg     3548 <fsfull+0x178>
    printf(1, "wrote %d bytes\n", total);
    3567:	83 ec 04             	sub    $0x4,%esp
    356a:	89 5d a0             	mov    %ebx,-0x60(%ebp)
    356d:	8b 5d a4             	mov    -0x5c(%ebp),%ebx
    3570:	56                   	push   %esi
    3571:	68 74 4d 00 00       	push   $0x4d74
    3576:	6a 01                	push   $0x1
    3578:	e8 03 05 00 00       	call   3a80 <printf>
    close(fd);
    357d:	8b 4d a0             	mov    -0x60(%ebp),%ecx
    3580:	89 0c 24             	mov    %ecx,(%esp)
    3583:	e8 93 03 00 00       	call   391b <close>
    if(total == 0)
    3588:	83 c4 10             	add    $0x10,%esp
    358b:	85 f6                	test   %esi,%esi
    358d:	0f 84 00 ff ff ff    	je     3493 <fsfull+0xc3>
  for(nfiles = 0; ; nfiles++){
    3593:	83 c3 01             	add    $0x1,%ebx
    3596:	e9 52 fe ff ff       	jmp    33ed <fsfull+0x1d>
    359b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

000035a0 <uio>:
{
    35a0:	55                   	push   %ebp
    35a1:	89 e5                	mov    %esp,%ebp
    35a3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "uio test\n");
    35a6:	68 9a 4d 00 00       	push   $0x4d9a
    35ab:	6a 01                	push   $0x1
    35ad:	e8 ce 04 00 00       	call   3a80 <printf>
  pid = fork();
    35b2:	e8 34 03 00 00       	call   38eb <fork>
  if(pid == 0){
    35b7:	83 c4 10             	add    $0x10,%esp
    35ba:	85 c0                	test   %eax,%eax
    35bc:	74 1b                	je     35d9 <uio+0x39>
  } else if(pid < 0){
    35be:	78 3d                	js     35fd <uio+0x5d>
  wait();
    35c0:	e8 36 03 00 00       	call   38fb <wait>
  printf(1, "uio test done\n");
    35c5:	83 ec 08             	sub    $0x8,%esp
    35c8:	68 a4 4d 00 00       	push   $0x4da4
    35cd:	6a 01                	push   $0x1
    35cf:	e8 ac 04 00 00       	call   3a80 <printf>
}
    35d4:	83 c4 10             	add    $0x10,%esp
    35d7:	c9                   	leave
    35d8:	c3                   	ret
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    35d9:	b8 09 00 00 00       	mov    $0x9,%eax
    35de:	ba 70 00 00 00       	mov    $0x70,%edx
    35e3:	ee                   	out    %al,(%dx)
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    35e4:	ba 71 00 00 00       	mov    $0x71,%edx
    35e9:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    35ea:	52                   	push   %edx
    35eb:	52                   	push   %edx
    35ec:	68 38 55 00 00       	push   $0x5538
    35f1:	6a 01                	push   $0x1
    35f3:	e8 88 04 00 00       	call   3a80 <printf>
    exit();
    35f8:	e8 f6 02 00 00       	call   38f3 <exit>
    printf (1, "fork failed\n");
    35fd:	50                   	push   %eax
    35fe:	50                   	push   %eax
    35ff:	68 29 4d 00 00       	push   $0x4d29
    3604:	6a 01                	push   $0x1
    3606:	e8 75 04 00 00       	call   3a80 <printf>
    exit();
    360b:	e8 e3 02 00 00       	call   38f3 <exit>

00003610 <argptest>:
{
    3610:	55                   	push   %ebp
    3611:	89 e5                	mov    %esp,%ebp
    3613:	53                   	push   %ebx
    3614:	83 ec 0c             	sub    $0xc,%esp
  fd = open("init", O_RDONLY);
    3617:	6a 00                	push   $0x0
    3619:	68 b3 4d 00 00       	push   $0x4db3
    361e:	e8 10 03 00 00       	call   3933 <open>
  if (fd < 0) {
    3623:	83 c4 10             	add    $0x10,%esp
    3626:	85 c0                	test   %eax,%eax
    3628:	78 39                	js     3663 <argptest+0x53>
  read(fd, sbrk(0) - 1, -1);
    362a:	83 ec 0c             	sub    $0xc,%esp
    362d:	89 c3                	mov    %eax,%ebx
    362f:	6a 00                	push   $0x0
    3631:	e8 45 03 00 00       	call   397b <sbrk>
    3636:	83 c4 0c             	add    $0xc,%esp
    3639:	83 e8 01             	sub    $0x1,%eax
    363c:	6a ff                	push   $0xffffffff
    363e:	50                   	push   %eax
    363f:	53                   	push   %ebx
    3640:	e8 c6 02 00 00       	call   390b <read>
  close(fd);
    3645:	89 1c 24             	mov    %ebx,(%esp)
    3648:	e8 ce 02 00 00       	call   391b <close>
  printf(1, "arg test passed\n");
    364d:	58                   	pop    %eax
    364e:	5a                   	pop    %edx
    364f:	68 c5 4d 00 00       	push   $0x4dc5
    3654:	6a 01                	push   $0x1
    3656:	e8 25 04 00 00       	call   3a80 <printf>
}
    365b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    365e:	83 c4 10             	add    $0x10,%esp
    3661:	c9                   	leave
    3662:	c3                   	ret
    printf(2, "open failed\n");
    3663:	51                   	push   %ecx
    3664:	51                   	push   %ecx
    3665:	68 b8 4d 00 00       	push   $0x4db8
    366a:	6a 02                	push   $0x2
    366c:	e8 0f 04 00 00       	call   3a80 <printf>
    exit();
    3671:	e8 7d 02 00 00       	call   38f3 <exit>
    3676:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    367d:	00 
    367e:	66 90                	xchg   %ax,%ax

00003680 <rand>:
  randstate = randstate * 1664525 + 1013904223;
    3680:	69 05 f4 55 00 00 0d 	imul   $0x19660d,0x55f4,%eax
    3687:	66 19 00 
    368a:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    368f:	a3 f4 55 00 00       	mov    %eax,0x55f4
}
    3694:	c3                   	ret
    3695:	66 90                	xchg   %ax,%ax
    3697:	66 90                	xchg   %ax,%ax
    3699:	66 90                	xchg   %ax,%ax
    369b:	66 90                	xchg   %ax,%ax
    369d:	66 90                	xchg   %ax,%ax
    369f:	90                   	nop

000036a0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    36a0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    36a1:	31 c0                	xor    %eax,%eax
{
    36a3:	89 e5                	mov    %esp,%ebp
    36a5:	53                   	push   %ebx
    36a6:	8b 4d 08             	mov    0x8(%ebp),%ecx
    36a9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    36ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
    36b0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    36b4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    36b7:	83 c0 01             	add    $0x1,%eax
    36ba:	84 d2                	test   %dl,%dl
    36bc:	75 f2                	jne    36b0 <strcpy+0x10>
    ;
  return os;
}
    36be:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    36c1:	89 c8                	mov    %ecx,%eax
    36c3:	c9                   	leave
    36c4:	c3                   	ret
    36c5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    36cc:	00 
    36cd:	8d 76 00             	lea    0x0(%esi),%esi

000036d0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    36d0:	55                   	push   %ebp
    36d1:	89 e5                	mov    %esp,%ebp
    36d3:	53                   	push   %ebx
    36d4:	8b 55 08             	mov    0x8(%ebp),%edx
    36d7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    36da:	0f b6 02             	movzbl (%edx),%eax
    36dd:	84 c0                	test   %al,%al
    36df:	75 2f                	jne    3710 <strcmp+0x40>
    36e1:	eb 4a                	jmp    372d <strcmp+0x5d>
    36e3:	eb 1b                	jmp    3700 <strcmp+0x30>
    36e5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    36ec:	00 
    36ed:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    36f4:	00 
    36f5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    36fc:	00 
    36fd:	8d 76 00             	lea    0x0(%esi),%esi
    3700:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
    3704:	83 c2 01             	add    $0x1,%edx
    3707:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
    370a:	84 c0                	test   %al,%al
    370c:	74 12                	je     3720 <strcmp+0x50>
    370e:	89 d9                	mov    %ebx,%ecx
    3710:	0f b6 19             	movzbl (%ecx),%ebx
    3713:	38 c3                	cmp    %al,%bl
    3715:	74 e9                	je     3700 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
    3717:	29 d8                	sub    %ebx,%eax
}
    3719:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    371c:	c9                   	leave
    371d:	c3                   	ret
    371e:	66 90                	xchg   %ax,%ax
  return (uchar)*p - (uchar)*q;
    3720:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
    3724:	31 c0                	xor    %eax,%eax
    3726:	29 d8                	sub    %ebx,%eax
}
    3728:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    372b:	c9                   	leave
    372c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
    372d:	0f b6 19             	movzbl (%ecx),%ebx
    3730:	31 c0                	xor    %eax,%eax
    3732:	eb e3                	jmp    3717 <strcmp+0x47>
    3734:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    373b:	00 
    373c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003740 <strlen>:

uint
strlen(const char *s)
{
    3740:	55                   	push   %ebp
    3741:	89 e5                	mov    %esp,%ebp
    3743:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    3746:	80 3a 00             	cmpb   $0x0,(%edx)
    3749:	74 15                	je     3760 <strlen+0x20>
    374b:	31 c0                	xor    %eax,%eax
    374d:	8d 76 00             	lea    0x0(%esi),%esi
    3750:	83 c0 01             	add    $0x1,%eax
    3753:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    3757:	89 c1                	mov    %eax,%ecx
    3759:	75 f5                	jne    3750 <strlen+0x10>
    ;
  return n;
}
    375b:	89 c8                	mov    %ecx,%eax
    375d:	5d                   	pop    %ebp
    375e:	c3                   	ret
    375f:	90                   	nop
  for(n = 0; s[n]; n++)
    3760:	31 c9                	xor    %ecx,%ecx
}
    3762:	5d                   	pop    %ebp
    3763:	89 c8                	mov    %ecx,%eax
    3765:	c3                   	ret
    3766:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    376d:	00 
    376e:	66 90                	xchg   %ax,%ax

00003770 <memset>:

void*
memset(void *dst, int c, uint n)
{
    3770:	55                   	push   %ebp
    3771:	89 e5                	mov    %esp,%ebp
    3773:	57                   	push   %edi
    3774:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    3777:	8b 4d 10             	mov    0x10(%ebp),%ecx
    377a:	8b 45 0c             	mov    0xc(%ebp),%eax
    377d:	89 d7                	mov    %edx,%edi
    377f:	fc                   	cld
    3780:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    3782:	8b 7d fc             	mov    -0x4(%ebp),%edi
    3785:	89 d0                	mov    %edx,%eax
    3787:	c9                   	leave
    3788:	c3                   	ret
    3789:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003790 <strchr>:

char*
strchr(const char *s, char c)
{
    3790:	55                   	push   %ebp
    3791:	89 e5                	mov    %esp,%ebp
    3793:	8b 45 08             	mov    0x8(%ebp),%eax
    3796:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    379a:	0f b6 10             	movzbl (%eax),%edx
    379d:	84 d2                	test   %dl,%dl
    379f:	75 1a                	jne    37bb <strchr+0x2b>
    37a1:	eb 25                	jmp    37c8 <strchr+0x38>
    37a3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    37aa:	00 
    37ab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    37b0:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    37b4:	83 c0 01             	add    $0x1,%eax
    37b7:	84 d2                	test   %dl,%dl
    37b9:	74 0d                	je     37c8 <strchr+0x38>
    if(*s == c)
    37bb:	38 d1                	cmp    %dl,%cl
    37bd:	75 f1                	jne    37b0 <strchr+0x20>
      return (char*)s;
  return 0;
}
    37bf:	5d                   	pop    %ebp
    37c0:	c3                   	ret
    37c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    37c8:	31 c0                	xor    %eax,%eax
}
    37ca:	5d                   	pop    %ebp
    37cb:	c3                   	ret
    37cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000037d0 <gets>:

char*
gets(char *buf, int max)
{
    37d0:	55                   	push   %ebp
    37d1:	89 e5                	mov    %esp,%ebp
    37d3:	57                   	push   %edi
    37d4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    37d5:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
    37d8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
    37d9:	31 db                	xor    %ebx,%ebx
{
    37db:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
    37de:	eb 27                	jmp    3807 <gets+0x37>
    cc = read(0, &c, 1);
    37e0:	83 ec 04             	sub    $0x4,%esp
    37e3:	6a 01                	push   $0x1
    37e5:	56                   	push   %esi
    37e6:	6a 00                	push   $0x0
    37e8:	e8 1e 01 00 00       	call   390b <read>
    if(cc < 1)
    37ed:	83 c4 10             	add    $0x10,%esp
    37f0:	85 c0                	test   %eax,%eax
    37f2:	7e 1d                	jle    3811 <gets+0x41>
      break;
    buf[i++] = c;
    37f4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    37f8:	8b 55 08             	mov    0x8(%ebp),%edx
    37fb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    37ff:	3c 0a                	cmp    $0xa,%al
    3801:	74 10                	je     3813 <gets+0x43>
    3803:	3c 0d                	cmp    $0xd,%al
    3805:	74 0c                	je     3813 <gets+0x43>
  for(i=0; i+1 < max; ){
    3807:	89 df                	mov    %ebx,%edi
    3809:	83 c3 01             	add    $0x1,%ebx
    380c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    380f:	7c cf                	jl     37e0 <gets+0x10>
    3811:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
    3813:	8b 45 08             	mov    0x8(%ebp),%eax
    3816:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
    381a:	8d 65 f4             	lea    -0xc(%ebp),%esp
    381d:	5b                   	pop    %ebx
    381e:	5e                   	pop    %esi
    381f:	5f                   	pop    %edi
    3820:	5d                   	pop    %ebp
    3821:	c3                   	ret
    3822:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3829:	00 
    382a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00003830 <stat>:

int
stat(const char *n, struct stat *st)
{
    3830:	55                   	push   %ebp
    3831:	89 e5                	mov    %esp,%ebp
    3833:	56                   	push   %esi
    3834:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    3835:	83 ec 08             	sub    $0x8,%esp
    3838:	6a 00                	push   $0x0
    383a:	ff 75 08             	push   0x8(%ebp)
    383d:	e8 f1 00 00 00       	call   3933 <open>
  if(fd < 0)
    3842:	83 c4 10             	add    $0x10,%esp
    3845:	85 c0                	test   %eax,%eax
    3847:	78 27                	js     3870 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    3849:	83 ec 08             	sub    $0x8,%esp
    384c:	ff 75 0c             	push   0xc(%ebp)
    384f:	89 c3                	mov    %eax,%ebx
    3851:	50                   	push   %eax
    3852:	e8 f4 00 00 00       	call   394b <fstat>
  close(fd);
    3857:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    385a:	89 c6                	mov    %eax,%esi
  close(fd);
    385c:	e8 ba 00 00 00       	call   391b <close>
  return r;
    3861:	83 c4 10             	add    $0x10,%esp
}
    3864:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3867:	89 f0                	mov    %esi,%eax
    3869:	5b                   	pop    %ebx
    386a:	5e                   	pop    %esi
    386b:	5d                   	pop    %ebp
    386c:	c3                   	ret
    386d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    3870:	be ff ff ff ff       	mov    $0xffffffff,%esi
    3875:	eb ed                	jmp    3864 <stat+0x34>
    3877:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    387e:	00 
    387f:	90                   	nop

00003880 <atoi>:

int
atoi(const char *s)
{
    3880:	55                   	push   %ebp
    3881:	89 e5                	mov    %esp,%ebp
    3883:	53                   	push   %ebx
    3884:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3887:	0f be 02             	movsbl (%edx),%eax
    388a:	8d 48 d0             	lea    -0x30(%eax),%ecx
    388d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    3890:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    3895:	77 1e                	ja     38b5 <atoi+0x35>
    3897:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    389e:	00 
    389f:	90                   	nop
    n = n*10 + *s++ - '0';
    38a0:	83 c2 01             	add    $0x1,%edx
    38a3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    38a6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    38aa:	0f be 02             	movsbl (%edx),%eax
    38ad:	8d 58 d0             	lea    -0x30(%eax),%ebx
    38b0:	80 fb 09             	cmp    $0x9,%bl
    38b3:	76 eb                	jbe    38a0 <atoi+0x20>
  return n;
}
    38b5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    38b8:	89 c8                	mov    %ecx,%eax
    38ba:	c9                   	leave
    38bb:	c3                   	ret
    38bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000038c0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    38c0:	55                   	push   %ebp
    38c1:	89 e5                	mov    %esp,%ebp
    38c3:	57                   	push   %edi
    38c4:	8b 45 10             	mov    0x10(%ebp),%eax
    38c7:	8b 55 08             	mov    0x8(%ebp),%edx
    38ca:	56                   	push   %esi
    38cb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    38ce:	85 c0                	test   %eax,%eax
    38d0:	7e 13                	jle    38e5 <memmove+0x25>
    38d2:	01 d0                	add    %edx,%eax
  dst = vdst;
    38d4:	89 d7                	mov    %edx,%edi
    38d6:	66 90                	xchg   %ax,%ax
    38d8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    38df:	00 
    *dst++ = *src++;
    38e0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    38e1:	39 f8                	cmp    %edi,%eax
    38e3:	75 fb                	jne    38e0 <memmove+0x20>
  return vdst;
}
    38e5:	5e                   	pop    %esi
    38e6:	89 d0                	mov    %edx,%eax
    38e8:	5f                   	pop    %edi
    38e9:	5d                   	pop    %ebp
    38ea:	c3                   	ret

000038eb <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    38eb:	b8 01 00 00 00       	mov    $0x1,%eax
    38f0:	cd 40                	int    $0x40
    38f2:	c3                   	ret

000038f3 <exit>:
SYSCALL(exit)
    38f3:	b8 02 00 00 00       	mov    $0x2,%eax
    38f8:	cd 40                	int    $0x40
    38fa:	c3                   	ret

000038fb <wait>:
SYSCALL(wait)
    38fb:	b8 03 00 00 00       	mov    $0x3,%eax
    3900:	cd 40                	int    $0x40
    3902:	c3                   	ret

00003903 <pipe>:
SYSCALL(pipe)
    3903:	b8 04 00 00 00       	mov    $0x4,%eax
    3908:	cd 40                	int    $0x40
    390a:	c3                   	ret

0000390b <read>:
SYSCALL(read)
    390b:	b8 05 00 00 00       	mov    $0x5,%eax
    3910:	cd 40                	int    $0x40
    3912:	c3                   	ret

00003913 <write>:
SYSCALL(write)
    3913:	b8 10 00 00 00       	mov    $0x10,%eax
    3918:	cd 40                	int    $0x40
    391a:	c3                   	ret

0000391b <close>:
SYSCALL(close)
    391b:	b8 15 00 00 00       	mov    $0x15,%eax
    3920:	cd 40                	int    $0x40
    3922:	c3                   	ret

00003923 <kill>:
SYSCALL(kill)
    3923:	b8 06 00 00 00       	mov    $0x6,%eax
    3928:	cd 40                	int    $0x40
    392a:	c3                   	ret

0000392b <exec>:
SYSCALL(exec)
    392b:	b8 07 00 00 00       	mov    $0x7,%eax
    3930:	cd 40                	int    $0x40
    3932:	c3                   	ret

00003933 <open>:
SYSCALL(open)
    3933:	b8 0f 00 00 00       	mov    $0xf,%eax
    3938:	cd 40                	int    $0x40
    393a:	c3                   	ret

0000393b <mknod>:
SYSCALL(mknod)
    393b:	b8 11 00 00 00       	mov    $0x11,%eax
    3940:	cd 40                	int    $0x40
    3942:	c3                   	ret

00003943 <unlink>:
SYSCALL(unlink)
    3943:	b8 12 00 00 00       	mov    $0x12,%eax
    3948:	cd 40                	int    $0x40
    394a:	c3                   	ret

0000394b <fstat>:
SYSCALL(fstat)
    394b:	b8 08 00 00 00       	mov    $0x8,%eax
    3950:	cd 40                	int    $0x40
    3952:	c3                   	ret

00003953 <link>:
SYSCALL(link)
    3953:	b8 13 00 00 00       	mov    $0x13,%eax
    3958:	cd 40                	int    $0x40
    395a:	c3                   	ret

0000395b <mkdir>:
SYSCALL(mkdir)
    395b:	b8 14 00 00 00       	mov    $0x14,%eax
    3960:	cd 40                	int    $0x40
    3962:	c3                   	ret

00003963 <chdir>:
SYSCALL(chdir)
    3963:	b8 09 00 00 00       	mov    $0x9,%eax
    3968:	cd 40                	int    $0x40
    396a:	c3                   	ret

0000396b <dup>:
SYSCALL(dup)
    396b:	b8 0a 00 00 00       	mov    $0xa,%eax
    3970:	cd 40                	int    $0x40
    3972:	c3                   	ret

00003973 <getpid>:
SYSCALL(getpid)
    3973:	b8 0b 00 00 00       	mov    $0xb,%eax
    3978:	cd 40                	int    $0x40
    397a:	c3                   	ret

0000397b <sbrk>:
SYSCALL(sbrk)
    397b:	b8 0c 00 00 00       	mov    $0xc,%eax
    3980:	cd 40                	int    $0x40
    3982:	c3                   	ret

00003983 <sleep>:
SYSCALL(sleep)
    3983:	b8 0d 00 00 00       	mov    $0xd,%eax
    3988:	cd 40                	int    $0x40
    398a:	c3                   	ret

0000398b <uptime>:
SYSCALL(uptime)
    398b:	b8 0e 00 00 00       	mov    $0xe,%eax
    3990:	cd 40                	int    $0x40
    3992:	c3                   	ret

00003993 <ps>:
SYSCALL(ps)
    3993:	b8 16 00 00 00       	mov    $0x16,%eax
    3998:	cd 40                	int    $0x40
    399a:	c3                   	ret

0000399b <chpr>:
SYSCALL(chpr)
    399b:	b8 17 00 00 00       	mov    $0x17,%eax
    39a0:	cd 40                	int    $0x40
    39a2:	c3                   	ret
    39a3:	66 90                	xchg   %ax,%ax
    39a5:	66 90                	xchg   %ax,%ax
    39a7:	66 90                	xchg   %ax,%ax
    39a9:	66 90                	xchg   %ax,%ax
    39ab:	66 90                	xchg   %ax,%ax
    39ad:	66 90                	xchg   %ax,%ax
    39af:	66 90                	xchg   %ax,%ax
    39b1:	66 90                	xchg   %ax,%ax
    39b3:	66 90                	xchg   %ax,%ax
    39b5:	66 90                	xchg   %ax,%ax
    39b7:	66 90                	xchg   %ax,%ax
    39b9:	66 90                	xchg   %ax,%ax
    39bb:	66 90                	xchg   %ax,%ax
    39bd:	66 90                	xchg   %ax,%ax
    39bf:	90                   	nop

000039c0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    39c0:	55                   	push   %ebp
    39c1:	89 e5                	mov    %esp,%ebp
    39c3:	57                   	push   %edi
    39c4:	56                   	push   %esi
    39c5:	53                   	push   %ebx
    39c6:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    39c8:	89 d1                	mov    %edx,%ecx
{
    39ca:	83 ec 3c             	sub    $0x3c,%esp
    39cd:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  if(sgn && xx < 0){
    39d0:	85 d2                	test   %edx,%edx
    39d2:	0f 89 98 00 00 00    	jns    3a70 <printint+0xb0>
    39d8:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    39dc:	0f 84 8e 00 00 00    	je     3a70 <printint+0xb0>
    x = -xx;
    39e2:	f7 d9                	neg    %ecx
    neg = 1;
    39e4:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
    39e9:	89 45 c0             	mov    %eax,-0x40(%ebp)
    39ec:	31 f6                	xor    %esi,%esi
    39ee:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    39f5:	00 
    39f6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    39fd:	00 
    39fe:	66 90                	xchg   %ax,%ax
  do{
    buf[i++] = digits[x % base];
    3a00:	89 c8                	mov    %ecx,%eax
    3a02:	31 d2                	xor    %edx,%edx
    3a04:	89 f7                	mov    %esi,%edi
    3a06:	f7 f3                	div    %ebx
    3a08:	8d 76 01             	lea    0x1(%esi),%esi
    3a0b:	0f b6 92 e0 55 00 00 	movzbl 0x55e0(%edx),%edx
    3a12:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
    3a16:	89 ca                	mov    %ecx,%edx
    3a18:	89 c1                	mov    %eax,%ecx
    3a1a:	39 da                	cmp    %ebx,%edx
    3a1c:	73 e2                	jae    3a00 <printint+0x40>
  if(neg)
    3a1e:	8b 45 c0             	mov    -0x40(%ebp),%eax
    3a21:	85 c0                	test   %eax,%eax
    3a23:	74 07                	je     3a2c <printint+0x6c>
    buf[i++] = '-';
    3a25:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
    3a2a:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
    3a2c:	8d 5d d8             	lea    -0x28(%ebp),%ebx
    3a2f:	8b 75 c4             	mov    -0x3c(%ebp),%esi
    3a32:	01 df                	add    %ebx,%edi
    3a34:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3a3b:	00 
    3a3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    putc(fd, buf[i]);
    3a40:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
    3a43:	83 ec 04             	sub    $0x4,%esp
    3a46:	88 45 d7             	mov    %al,-0x29(%ebp)
    3a49:	8d 45 d7             	lea    -0x29(%ebp),%eax
    3a4c:	6a 01                	push   $0x1
    3a4e:	50                   	push   %eax
    3a4f:	56                   	push   %esi
    3a50:	e8 be fe ff ff       	call   3913 <write>
  while(--i >= 0)
    3a55:	89 f8                	mov    %edi,%eax
    3a57:	83 c4 10             	add    $0x10,%esp
    3a5a:	83 ef 01             	sub    $0x1,%edi
    3a5d:	39 d8                	cmp    %ebx,%eax
    3a5f:	75 df                	jne    3a40 <printint+0x80>
}
    3a61:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3a64:	5b                   	pop    %ebx
    3a65:	5e                   	pop    %esi
    3a66:	5f                   	pop    %edi
    3a67:	5d                   	pop    %ebp
    3a68:	c3                   	ret
    3a69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    3a70:	31 c0                	xor    %eax,%eax
    3a72:	e9 72 ff ff ff       	jmp    39e9 <printint+0x29>
    3a77:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3a7e:	00 
    3a7f:	90                   	nop

00003a80 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    3a80:	55                   	push   %ebp
    3a81:	89 e5                	mov    %esp,%ebp
    3a83:	57                   	push   %edi
    3a84:	56                   	push   %esi
    3a85:	53                   	push   %ebx
    3a86:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3a89:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
    3a8c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
    3a8f:	0f b6 13             	movzbl (%ebx),%edx
    3a92:	83 c3 01             	add    $0x1,%ebx
    3a95:	84 d2                	test   %dl,%dl
    3a97:	0f 84 a0 00 00 00    	je     3b3d <printf+0xbd>
    3a9d:	8d 45 10             	lea    0x10(%ebp),%eax
    3aa0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    3aa3:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    3aa6:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
    3aa9:	eb 28                	jmp    3ad3 <printf+0x53>
    3aab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
    3ab0:	83 ec 04             	sub    $0x4,%esp
    3ab3:	8d 45 e7             	lea    -0x19(%ebp),%eax
    3ab6:	88 55 e7             	mov    %dl,-0x19(%ebp)
  for(i = 0; fmt[i]; i++){
    3ab9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
    3abc:	6a 01                	push   $0x1
    3abe:	50                   	push   %eax
    3abf:	56                   	push   %esi
    3ac0:	e8 4e fe ff ff       	call   3913 <write>
  for(i = 0; fmt[i]; i++){
    3ac5:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    3ac9:	83 c4 10             	add    $0x10,%esp
    3acc:	84 d2                	test   %dl,%dl
    3ace:	74 6d                	je     3b3d <printf+0xbd>
    c = fmt[i] & 0xff;
    3ad0:	0f b6 c2             	movzbl %dl,%eax
      if(c == '%'){
    3ad3:	83 f8 25             	cmp    $0x25,%eax
    3ad6:	75 d8                	jne    3ab0 <printf+0x30>
  for(i = 0; fmt[i]; i++){
    3ad8:	0f b6 13             	movzbl (%ebx),%edx
    3adb:	84 d2                	test   %dl,%dl
    3add:	74 5e                	je     3b3d <printf+0xbd>
    c = fmt[i] & 0xff;
    3adf:	0f b6 c2             	movzbl %dl,%eax
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
    3ae2:	80 fa 25             	cmp    $0x25,%dl
    3ae5:	0f 84 1d 01 00 00    	je     3c08 <printf+0x188>
    3aeb:	83 e8 63             	sub    $0x63,%eax
    3aee:	83 f8 15             	cmp    $0x15,%eax
    3af1:	77 0d                	ja     3b00 <printf+0x80>
    3af3:	ff 24 85 88 55 00 00 	jmp    *0x5588(,%eax,4)
    3afa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    3b00:	83 ec 04             	sub    $0x4,%esp
    3b03:	8d 4d e7             	lea    -0x19(%ebp),%ecx
    3b06:	88 55 d0             	mov    %dl,-0x30(%ebp)
        ap++;
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
    3b09:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
    3b0d:	6a 01                	push   $0x1
    3b0f:	51                   	push   %ecx
    3b10:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    3b13:	56                   	push   %esi
    3b14:	e8 fa fd ff ff       	call   3913 <write>
        putc(fd, c);
    3b19:	0f b6 55 d0          	movzbl -0x30(%ebp),%edx
  write(fd, &c, 1);
    3b1d:	83 c4 0c             	add    $0xc,%esp
    3b20:	88 55 e7             	mov    %dl,-0x19(%ebp)
    3b23:	6a 01                	push   $0x1
    3b25:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
    3b28:	51                   	push   %ecx
    3b29:	56                   	push   %esi
    3b2a:	e8 e4 fd ff ff       	call   3913 <write>
  for(i = 0; fmt[i]; i++){
    3b2f:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
    3b33:	83 c3 02             	add    $0x2,%ebx
    3b36:	83 c4 10             	add    $0x10,%esp
    3b39:	84 d2                	test   %dl,%dl
    3b3b:	75 93                	jne    3ad0 <printf+0x50>
      }
      state = 0;
    }
  }
}
    3b3d:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3b40:	5b                   	pop    %ebx
    3b41:	5e                   	pop    %esi
    3b42:	5f                   	pop    %edi
    3b43:	5d                   	pop    %ebp
    3b44:	c3                   	ret
    3b45:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    3b48:	83 ec 0c             	sub    $0xc,%esp
    3b4b:	8b 17                	mov    (%edi),%edx
    3b4d:	b9 10 00 00 00       	mov    $0x10,%ecx
    3b52:	89 f0                	mov    %esi,%eax
    3b54:	6a 00                	push   $0x0
        ap++;
    3b56:	83 c7 04             	add    $0x4,%edi
        printint(fd, *ap, 16, 0);
    3b59:	e8 62 fe ff ff       	call   39c0 <printint>
  for(i = 0; fmt[i]; i++){
    3b5e:	eb cf                	jmp    3b2f <printf+0xaf>
        s = (char*)*ap;
    3b60:	8b 07                	mov    (%edi),%eax
        ap++;
    3b62:	83 c7 04             	add    $0x4,%edi
        if(s == 0)
    3b65:	85 c0                	test   %eax,%eax
    3b67:	0f 84 b3 00 00 00    	je     3c20 <printf+0x1a0>
        while(*s != 0){
    3b6d:	0f b6 10             	movzbl (%eax),%edx
    3b70:	84 d2                	test   %dl,%dl
    3b72:	0f 84 ba 00 00 00    	je     3c32 <printf+0x1b2>
    3b78:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    3b7b:	89 c7                	mov    %eax,%edi
    3b7d:	89 d0                	mov    %edx,%eax
    3b7f:	8d 4d e7             	lea    -0x19(%ebp),%ecx
    3b82:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    3b85:	89 fb                	mov    %edi,%ebx
    3b87:	89 cf                	mov    %ecx,%edi
    3b89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
    3b90:	83 ec 04             	sub    $0x4,%esp
    3b93:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
    3b96:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
    3b99:	6a 01                	push   $0x1
    3b9b:	57                   	push   %edi
    3b9c:	56                   	push   %esi
    3b9d:	e8 71 fd ff ff       	call   3913 <write>
        while(*s != 0){
    3ba2:	0f b6 03             	movzbl (%ebx),%eax
    3ba5:	83 c4 10             	add    $0x10,%esp
    3ba8:	84 c0                	test   %al,%al
    3baa:	75 e4                	jne    3b90 <printf+0x110>
    3bac:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  for(i = 0; fmt[i]; i++){
    3baf:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
    3bb3:	83 c3 02             	add    $0x2,%ebx
    3bb6:	84 d2                	test   %dl,%dl
    3bb8:	0f 85 e5 fe ff ff    	jne    3aa3 <printf+0x23>
    3bbe:	e9 7a ff ff ff       	jmp    3b3d <printf+0xbd>
    3bc3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    3bc8:	83 ec 0c             	sub    $0xc,%esp
    3bcb:	8b 17                	mov    (%edi),%edx
    3bcd:	b9 0a 00 00 00       	mov    $0xa,%ecx
    3bd2:	89 f0                	mov    %esi,%eax
    3bd4:	6a 01                	push   $0x1
        ap++;
    3bd6:	83 c7 04             	add    $0x4,%edi
        printint(fd, *ap, 10, 1);
    3bd9:	e8 e2 fd ff ff       	call   39c0 <printint>
  for(i = 0; fmt[i]; i++){
    3bde:	e9 4c ff ff ff       	jmp    3b2f <printf+0xaf>
    3be3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    3be8:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    3bea:	83 ec 04             	sub    $0x4,%esp
    3bed:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        ap++;
    3bf0:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
    3bf3:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    3bf6:	6a 01                	push   $0x1
    3bf8:	51                   	push   %ecx
    3bf9:	56                   	push   %esi
    3bfa:	e8 14 fd ff ff       	call   3913 <write>
  for(i = 0; fmt[i]; i++){
    3bff:	e9 2b ff ff ff       	jmp    3b2f <printf+0xaf>
    3c04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
    3c08:	83 ec 04             	sub    $0x4,%esp
    3c0b:	88 55 e7             	mov    %dl,-0x19(%ebp)
    3c0e:	8d 4d e7             	lea    -0x19(%ebp),%ecx
    3c11:	6a 01                	push   $0x1
    3c13:	e9 10 ff ff ff       	jmp    3b28 <printf+0xa8>
    3c18:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3c1f:	00 
          s = "(null)";
    3c20:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    3c23:	b8 28 00 00 00       	mov    $0x28,%eax
    3c28:	bf 09 4e 00 00       	mov    $0x4e09,%edi
    3c2d:	e9 4d ff ff ff       	jmp    3b7f <printf+0xff>
  for(i = 0; fmt[i]; i++){
    3c32:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
    3c36:	83 c3 02             	add    $0x2,%ebx
    3c39:	84 d2                	test   %dl,%dl
    3c3b:	0f 85 8f fe ff ff    	jne    3ad0 <printf+0x50>
    3c41:	e9 f7 fe ff ff       	jmp    3b3d <printf+0xbd>
    3c46:	66 90                	xchg   %ax,%ax
    3c48:	66 90                	xchg   %ax,%ax
    3c4a:	66 90                	xchg   %ax,%ax
    3c4c:	66 90                	xchg   %ax,%ax
    3c4e:	66 90                	xchg   %ax,%ax
    3c50:	66 90                	xchg   %ax,%ax
    3c52:	66 90                	xchg   %ax,%ax
    3c54:	66 90                	xchg   %ax,%ax
    3c56:	66 90                	xchg   %ax,%ax
    3c58:	66 90                	xchg   %ax,%ax
    3c5a:	66 90                	xchg   %ax,%ax
    3c5c:	66 90                	xchg   %ax,%ax
    3c5e:	66 90                	xchg   %ax,%ax

00003c60 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    3c60:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3c61:	a1 c0 9d 00 00       	mov    0x9dc0,%eax
{
    3c66:	89 e5                	mov    %esp,%ebp
    3c68:	57                   	push   %edi
    3c69:	56                   	push   %esi
    3c6a:	53                   	push   %ebx
    3c6b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    3c6e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3c71:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3c78:	00 
    3c79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3c80:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3c82:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3c84:	39 ca                	cmp    %ecx,%edx
    3c86:	73 30                	jae    3cb8 <free+0x58>
    3c88:	39 c1                	cmp    %eax,%ecx
    3c8a:	72 04                	jb     3c90 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3c8c:	39 c2                	cmp    %eax,%edx
    3c8e:	72 f0                	jb     3c80 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
    3c90:	8b 73 fc             	mov    -0x4(%ebx),%esi
    3c93:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    3c96:	39 f8                	cmp    %edi,%eax
    3c98:	74 36                	je     3cd0 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
    3c9a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    3c9d:	8b 42 04             	mov    0x4(%edx),%eax
    3ca0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    3ca3:	39 f1                	cmp    %esi,%ecx
    3ca5:	74 40                	je     3ce7 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
    3ca7:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
    3ca9:	5b                   	pop    %ebx
  freep = p;
    3caa:	89 15 c0 9d 00 00    	mov    %edx,0x9dc0
}
    3cb0:	5e                   	pop    %esi
    3cb1:	5f                   	pop    %edi
    3cb2:	5d                   	pop    %ebp
    3cb3:	c3                   	ret
    3cb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3cb8:	39 c2                	cmp    %eax,%edx
    3cba:	72 c4                	jb     3c80 <free+0x20>
    3cbc:	39 c1                	cmp    %eax,%ecx
    3cbe:	73 c0                	jae    3c80 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
    3cc0:	8b 73 fc             	mov    -0x4(%ebx),%esi
    3cc3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    3cc6:	39 f8                	cmp    %edi,%eax
    3cc8:	75 d0                	jne    3c9a <free+0x3a>
    3cca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
    3cd0:	03 70 04             	add    0x4(%eax),%esi
    3cd3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    3cd6:	8b 02                	mov    (%edx),%eax
    3cd8:	8b 00                	mov    (%eax),%eax
    3cda:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
    3cdd:	8b 42 04             	mov    0x4(%edx),%eax
    3ce0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    3ce3:	39 f1                	cmp    %esi,%ecx
    3ce5:	75 c0                	jne    3ca7 <free+0x47>
    p->s.size += bp->s.size;
    3ce7:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
    3cea:	89 15 c0 9d 00 00    	mov    %edx,0x9dc0
    p->s.size += bp->s.size;
    3cf0:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
    3cf3:	8b 4b f8             	mov    -0x8(%ebx),%ecx
    3cf6:	89 0a                	mov    %ecx,(%edx)
}
    3cf8:	5b                   	pop    %ebx
    3cf9:	5e                   	pop    %esi
    3cfa:	5f                   	pop    %edi
    3cfb:	5d                   	pop    %ebp
    3cfc:	c3                   	ret
    3cfd:	8d 76 00             	lea    0x0(%esi),%esi

00003d00 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    3d00:	55                   	push   %ebp
    3d01:	89 e5                	mov    %esp,%ebp
    3d03:	57                   	push   %edi
    3d04:	56                   	push   %esi
    3d05:	53                   	push   %ebx
    3d06:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3d09:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    3d0c:	8b 15 c0 9d 00 00    	mov    0x9dc0,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3d12:	8d 78 07             	lea    0x7(%eax),%edi
    3d15:	c1 ef 03             	shr    $0x3,%edi
    3d18:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    3d1b:	85 d2                	test   %edx,%edx
    3d1d:	0f 84 8d 00 00 00    	je     3db0 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3d23:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    3d25:	8b 48 04             	mov    0x4(%eax),%ecx
    3d28:	39 f9                	cmp    %edi,%ecx
    3d2a:	73 64                	jae    3d90 <malloc+0x90>
  if(nu < 4096)
    3d2c:	bb 00 10 00 00       	mov    $0x1000,%ebx
    3d31:	39 df                	cmp    %ebx,%edi
    3d33:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    3d36:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    3d3d:	eb 0a                	jmp    3d49 <malloc+0x49>
    3d3f:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3d40:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    3d42:	8b 48 04             	mov    0x4(%eax),%ecx
    3d45:	39 f9                	cmp    %edi,%ecx
    3d47:	73 47                	jae    3d90 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    3d49:	89 c2                	mov    %eax,%edx
    3d4b:	39 05 c0 9d 00 00    	cmp    %eax,0x9dc0
    3d51:	75 ed                	jne    3d40 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
    3d53:	83 ec 0c             	sub    $0xc,%esp
    3d56:	56                   	push   %esi
    3d57:	e8 1f fc ff ff       	call   397b <sbrk>
  if(p == (char*)-1)
    3d5c:	83 c4 10             	add    $0x10,%esp
    3d5f:	83 f8 ff             	cmp    $0xffffffff,%eax
    3d62:	74 1c                	je     3d80 <malloc+0x80>
  hp->s.size = nu;
    3d64:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    3d67:	83 ec 0c             	sub    $0xc,%esp
    3d6a:	83 c0 08             	add    $0x8,%eax
    3d6d:	50                   	push   %eax
    3d6e:	e8 ed fe ff ff       	call   3c60 <free>
  return freep;
    3d73:	8b 15 c0 9d 00 00    	mov    0x9dc0,%edx
      if((p = morecore(nunits)) == 0)
    3d79:	83 c4 10             	add    $0x10,%esp
    3d7c:	85 d2                	test   %edx,%edx
    3d7e:	75 c0                	jne    3d40 <malloc+0x40>
        return 0;
  }
}
    3d80:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    3d83:	31 c0                	xor    %eax,%eax
}
    3d85:	5b                   	pop    %ebx
    3d86:	5e                   	pop    %esi
    3d87:	5f                   	pop    %edi
    3d88:	5d                   	pop    %ebp
    3d89:	c3                   	ret
    3d8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    3d90:	39 cf                	cmp    %ecx,%edi
    3d92:	74 4c                	je     3de0 <malloc+0xe0>
        p->s.size -= nunits;
    3d94:	29 f9                	sub    %edi,%ecx
    3d96:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    3d99:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    3d9c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    3d9f:	89 15 c0 9d 00 00    	mov    %edx,0x9dc0
}
    3da5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    3da8:	83 c0 08             	add    $0x8,%eax
}
    3dab:	5b                   	pop    %ebx
    3dac:	5e                   	pop    %esi
    3dad:	5f                   	pop    %edi
    3dae:	5d                   	pop    %ebp
    3daf:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
    3db0:	c7 05 c0 9d 00 00 c4 	movl   $0x9dc4,0x9dc0
    3db7:	9d 00 00 
    base.s.size = 0;
    3dba:	b8 c4 9d 00 00       	mov    $0x9dc4,%eax
    base.s.ptr = freep = prevp = &base;
    3dbf:	c7 05 c4 9d 00 00 c4 	movl   $0x9dc4,0x9dc4
    3dc6:	9d 00 00 
    base.s.size = 0;
    3dc9:	c7 05 c8 9d 00 00 00 	movl   $0x0,0x9dc8
    3dd0:	00 00 00 
    if(p->s.size >= nunits){
    3dd3:	e9 54 ff ff ff       	jmp    3d2c <malloc+0x2c>
    3dd8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3ddf:	00 
        prevp->s.ptr = p->s.ptr;
    3de0:	8b 08                	mov    (%eax),%ecx
    3de2:	89 0a                	mov    %ecx,(%edx)
    3de4:	eb b9                	jmp    3d9f <malloc+0x9f>
