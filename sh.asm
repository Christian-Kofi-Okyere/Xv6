
_sh:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return 0;
}

int
main(void)
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	push   -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	51                   	push   %ecx
       e:	83 ec 04             	sub    $0x4,%esp
  static char buf[100];
  int fd;

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
      11:	eb 0e                	jmp    21 <main+0x21>
      13:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    if(fd >= 3){
      18:	83 f8 02             	cmp    $0x2,%eax
      1b:	0f 8f 96 00 00 00    	jg     b7 <main+0xb7>
  while((fd = open("console", O_RDWR)) >= 0){
      21:	83 ec 08             	sub    $0x8,%esp
      24:	6a 02                	push   $0x2
      26:	68 c9 13 00 00       	push   $0x13c9
      2b:	e8 43 0e 00 00       	call   e73 <open>
      30:	83 c4 10             	add    $0x10,%esp
      33:	85 c0                	test   %eax,%eax
      35:	79 e1                	jns    18 <main+0x18>
      37:	eb 2e                	jmp    67 <main+0x67>
      39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }

  // Read and run input commands.
  while(getcmd(buf, sizeof(buf)) >= 0){
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      40:	80 3d a2 14 00 00 20 	cmpb   $0x20,0x14a2
      47:	0f 84 8d 00 00 00    	je     da <main+0xda>
      4d:	8d 76 00             	lea    0x0(%esi),%esi
int
fork1(void)
{
  int pid;

  pid = fork();
      50:	e8 d6 0d 00 00       	call   e2b <fork>
  if(pid == -1)
      55:	83 f8 ff             	cmp    $0xffffffff,%eax
      58:	0f 84 c1 00 00 00    	je     11f <main+0x11f>
    if(fork1() == 0)
      5e:	85 c0                	test   %eax,%eax
      60:	74 63                	je     c5 <main+0xc5>
    wait();
      62:	e8 d4 0d 00 00       	call   e3b <wait>
  printf(2, "$ ");
      67:	83 ec 08             	sub    $0x8,%esp
      6a:	68 28 13 00 00       	push   $0x1328
      6f:	6a 02                	push   $0x2
      71:	e8 4a 0f 00 00       	call   fc0 <printf>
  memset(buf, 0, nbuf);
      76:	83 c4 0c             	add    $0xc,%esp
      79:	6a 64                	push   $0x64
      7b:	6a 00                	push   $0x0
      7d:	68 a0 14 00 00       	push   $0x14a0
      82:	e8 29 0c 00 00       	call   cb0 <memset>
  gets(buf, nbuf);
      87:	58                   	pop    %eax
      88:	5a                   	pop    %edx
      89:	6a 64                	push   $0x64
      8b:	68 a0 14 00 00       	push   $0x14a0
      90:	e8 7b 0c 00 00       	call   d10 <gets>
  if(buf[0] == 0) // EOF
      95:	0f b6 05 a0 14 00 00 	movzbl 0x14a0,%eax
      9c:	83 c4 10             	add    $0x10,%esp
      9f:	84 c0                	test   %al,%al
      a1:	74 0f                	je     b2 <main+0xb2>
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      a3:	3c 63                	cmp    $0x63,%al
      a5:	75 a9                	jne    50 <main+0x50>
      a7:	80 3d a1 14 00 00 64 	cmpb   $0x64,0x14a1
      ae:	75 a0                	jne    50 <main+0x50>
      b0:	eb 8e                	jmp    40 <main+0x40>
  exit();
      b2:	e8 7c 0d 00 00       	call   e33 <exit>
      close(fd);
      b7:	83 ec 0c             	sub    $0xc,%esp
      ba:	50                   	push   %eax
      bb:	e8 9b 0d 00 00       	call   e5b <close>
      break;
      c0:	83 c4 10             	add    $0x10,%esp
      c3:	eb a2                	jmp    67 <main+0x67>
      runcmd(parsecmd(buf));
      c5:	83 ec 0c             	sub    $0xc,%esp
      c8:	68 a0 14 00 00       	push   $0x14a0
      cd:	e8 8e 0a 00 00       	call   b60 <parsecmd>
      d2:	89 04 24             	mov    %eax,(%esp)
      d5:	e8 d6 00 00 00       	call   1b0 <runcmd>
      buf[strlen(buf)-1] = 0;  // chop \n
      da:	83 ec 0c             	sub    $0xc,%esp
      dd:	68 a0 14 00 00       	push   $0x14a0
      e2:	e8 99 0b 00 00       	call   c80 <strlen>
      e7:	c6 80 9f 14 00 00 00 	movb   $0x0,0x149f(%eax)
      if(chdir(buf+3) < 0)
      ee:	c7 04 24 a3 14 00 00 	movl   $0x14a3,(%esp)
      f5:	e8 a9 0d 00 00       	call   ea3 <chdir>
      fa:	83 c4 10             	add    $0x10,%esp
      fd:	85 c0                	test   %eax,%eax
      ff:	0f 89 62 ff ff ff    	jns    67 <main+0x67>
        printf(2, "cannot cd %s\n", buf+3);
     105:	51                   	push   %ecx
     106:	68 a3 14 00 00       	push   $0x14a3
     10b:	68 d1 13 00 00       	push   $0x13d1
     110:	6a 02                	push   $0x2
     112:	e8 a9 0e 00 00       	call   fc0 <printf>
     117:	83 c4 10             	add    $0x10,%esp
     11a:	e9 48 ff ff ff       	jmp    67 <main+0x67>
    panic("fork");
     11f:	83 ec 0c             	sub    $0xc,%esp
     122:	68 2b 13 00 00       	push   $0x132b
     127:	e8 44 00 00 00       	call   170 <panic>
     12c:	66 90                	xchg   %ax,%ax
     12e:	66 90                	xchg   %ax,%ax

00000130 <getcmd>:
{
     130:	55                   	push   %ebp
     131:	89 e5                	mov    %esp,%ebp
     133:	56                   	push   %esi
     134:	53                   	push   %ebx
     135:	8b 5d 08             	mov    0x8(%ebp),%ebx
     138:	8b 75 0c             	mov    0xc(%ebp),%esi
  printf(2, "$ ");
     13b:	83 ec 08             	sub    $0x8,%esp
     13e:	68 28 13 00 00       	push   $0x1328
     143:	6a 02                	push   $0x2
     145:	e8 76 0e 00 00       	call   fc0 <printf>
  memset(buf, 0, nbuf);
     14a:	83 c4 0c             	add    $0xc,%esp
     14d:	56                   	push   %esi
     14e:	6a 00                	push   $0x0
     150:	53                   	push   %ebx
     151:	e8 5a 0b 00 00       	call   cb0 <memset>
  gets(buf, nbuf);
     156:	58                   	pop    %eax
     157:	5a                   	pop    %edx
     158:	56                   	push   %esi
     159:	53                   	push   %ebx
     15a:	e8 b1 0b 00 00       	call   d10 <gets>
  if(buf[0] == 0) // EOF
     15f:	83 c4 10             	add    $0x10,%esp
     162:	80 3b 01             	cmpb   $0x1,(%ebx)
     165:	19 c0                	sbb    %eax,%eax
}
     167:	8d 65 f8             	lea    -0x8(%ebp),%esp
     16a:	5b                   	pop    %ebx
     16b:	5e                   	pop    %esi
     16c:	5d                   	pop    %ebp
     16d:	c3                   	ret
     16e:	66 90                	xchg   %ax,%ax

00000170 <panic>:
{
     170:	55                   	push   %ebp
     171:	89 e5                	mov    %esp,%ebp
     173:	83 ec 0c             	sub    $0xc,%esp
  printf(2, "%s\n", s);
     176:	ff 75 08             	push   0x8(%ebp)
     179:	68 c5 13 00 00       	push   $0x13c5
     17e:	6a 02                	push   $0x2
     180:	e8 3b 0e 00 00       	call   fc0 <printf>
  exit();
     185:	e8 a9 0c 00 00       	call   e33 <exit>
     18a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000190 <fork1>:
{
     190:	55                   	push   %ebp
     191:	89 e5                	mov    %esp,%ebp
     193:	83 ec 08             	sub    $0x8,%esp
  pid = fork();
     196:	e8 90 0c 00 00       	call   e2b <fork>
  if(pid == -1)
     19b:	83 f8 ff             	cmp    $0xffffffff,%eax
     19e:	74 02                	je     1a2 <fork1+0x12>
  return pid;
}
     1a0:	c9                   	leave
     1a1:	c3                   	ret
    panic("fork");
     1a2:	83 ec 0c             	sub    $0xc,%esp
     1a5:	68 2b 13 00 00       	push   $0x132b
     1aa:	e8 c1 ff ff ff       	call   170 <panic>
     1af:	90                   	nop

000001b0 <runcmd>:
{
     1b0:	55                   	push   %ebp
     1b1:	89 e5                	mov    %esp,%ebp
     1b3:	53                   	push   %ebx
     1b4:	83 ec 14             	sub    $0x14,%esp
     1b7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(cmd == 0)
     1ba:	85 db                	test   %ebx,%ebx
     1bc:	74 3a                	je     1f8 <runcmd+0x48>
  switch(cmd->type){
     1be:	83 3b 05             	cmpl   $0x5,(%ebx)
     1c1:	0f 87 db 00 00 00    	ja     2a2 <runcmd+0xf2>
     1c7:	8b 03                	mov    (%ebx),%eax
     1c9:	ff 24 85 e8 13 00 00 	jmp    *0x13e8(,%eax,4)
    if(ecmd->argv[0] == 0)
     1d0:	8b 43 04             	mov    0x4(%ebx),%eax
     1d3:	85 c0                	test   %eax,%eax
     1d5:	74 21                	je     1f8 <runcmd+0x48>
    exec(ecmd->argv[0], ecmd->argv);
     1d7:	8d 53 04             	lea    0x4(%ebx),%edx
     1da:	51                   	push   %ecx
     1db:	51                   	push   %ecx
     1dc:	52                   	push   %edx
     1dd:	50                   	push   %eax
     1de:	e8 88 0c 00 00       	call   e6b <exec>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
     1e3:	83 c4 0c             	add    $0xc,%esp
     1e6:	ff 73 04             	push   0x4(%ebx)
     1e9:	68 37 13 00 00       	push   $0x1337
     1ee:	6a 02                	push   $0x2
     1f0:	e8 cb 0d 00 00       	call   fc0 <printf>
    break;
     1f5:	83 c4 10             	add    $0x10,%esp
    exit();
     1f8:	e8 36 0c 00 00       	call   e33 <exit>
    if(fork1() == 0)
     1fd:	e8 8e ff ff ff       	call   190 <fork1>
     202:	85 c0                	test   %eax,%eax
     204:	75 f2                	jne    1f8 <runcmd+0x48>
     206:	e9 8c 00 00 00       	jmp    297 <runcmd+0xe7>
    if(pipe(p) < 0)
     20b:	83 ec 0c             	sub    $0xc,%esp
     20e:	8d 45 f0             	lea    -0x10(%ebp),%eax
     211:	50                   	push   %eax
     212:	e8 2c 0c 00 00       	call   e43 <pipe>
     217:	83 c4 10             	add    $0x10,%esp
     21a:	85 c0                	test   %eax,%eax
     21c:	0f 88 a2 00 00 00    	js     2c4 <runcmd+0x114>
    if(fork1() == 0){
     222:	e8 69 ff ff ff       	call   190 <fork1>
     227:	85 c0                	test   %eax,%eax
     229:	0f 84 d0 00 00 00    	je     2ff <runcmd+0x14f>
    if(fork1() == 0){
     22f:	e8 5c ff ff ff       	call   190 <fork1>
     234:	85 c0                	test   %eax,%eax
     236:	0f 84 95 00 00 00    	je     2d1 <runcmd+0x121>
    close(p[0]);
     23c:	83 ec 0c             	sub    $0xc,%esp
     23f:	ff 75 f0             	push   -0x10(%ebp)
     242:	e8 14 0c 00 00       	call   e5b <close>
    close(p[1]);
     247:	58                   	pop    %eax
     248:	ff 75 f4             	push   -0xc(%ebp)
     24b:	e8 0b 0c 00 00       	call   e5b <close>
    wait();
     250:	e8 e6 0b 00 00       	call   e3b <wait>
    wait();
     255:	e8 e1 0b 00 00       	call   e3b <wait>
    break;
     25a:	83 c4 10             	add    $0x10,%esp
     25d:	eb 99                	jmp    1f8 <runcmd+0x48>
    if(fork1() == 0)
     25f:	e8 2c ff ff ff       	call   190 <fork1>
     264:	85 c0                	test   %eax,%eax
     266:	74 2f                	je     297 <runcmd+0xe7>
    wait();
     268:	e8 ce 0b 00 00       	call   e3b <wait>
    runcmd(lcmd->right);
     26d:	83 ec 0c             	sub    $0xc,%esp
     270:	ff 73 08             	push   0x8(%ebx)
     273:	e8 38 ff ff ff       	call   1b0 <runcmd>
    close(rcmd->fd);
     278:	83 ec 0c             	sub    $0xc,%esp
     27b:	ff 73 14             	push   0x14(%ebx)
     27e:	e8 d8 0b 00 00       	call   e5b <close>
    if(open(rcmd->file, rcmd->mode) < 0){
     283:	58                   	pop    %eax
     284:	5a                   	pop    %edx
     285:	ff 73 10             	push   0x10(%ebx)
     288:	ff 73 08             	push   0x8(%ebx)
     28b:	e8 e3 0b 00 00       	call   e73 <open>
     290:	83 c4 10             	add    $0x10,%esp
     293:	85 c0                	test   %eax,%eax
     295:	78 18                	js     2af <runcmd+0xff>
      runcmd(bcmd->cmd);
     297:	83 ec 0c             	sub    $0xc,%esp
     29a:	ff 73 04             	push   0x4(%ebx)
     29d:	e8 0e ff ff ff       	call   1b0 <runcmd>
    panic("runcmd");
     2a2:	83 ec 0c             	sub    $0xc,%esp
     2a5:	68 30 13 00 00       	push   $0x1330
     2aa:	e8 c1 fe ff ff       	call   170 <panic>
      printf(2, "open %s failed\n", rcmd->file);
     2af:	51                   	push   %ecx
     2b0:	ff 73 08             	push   0x8(%ebx)
     2b3:	68 47 13 00 00       	push   $0x1347
     2b8:	6a 02                	push   $0x2
     2ba:	e8 01 0d 00 00       	call   fc0 <printf>
      exit();
     2bf:	e8 6f 0b 00 00       	call   e33 <exit>
      panic("pipe");
     2c4:	83 ec 0c             	sub    $0xc,%esp
     2c7:	68 57 13 00 00       	push   $0x1357
     2cc:	e8 9f fe ff ff       	call   170 <panic>
      close(0);
     2d1:	83 ec 0c             	sub    $0xc,%esp
     2d4:	6a 00                	push   $0x0
     2d6:	e8 80 0b 00 00       	call   e5b <close>
      dup(p[0]);
     2db:	5a                   	pop    %edx
     2dc:	ff 75 f0             	push   -0x10(%ebp)
     2df:	e8 c7 0b 00 00       	call   eab <dup>
      close(p[0]);
     2e4:	59                   	pop    %ecx
     2e5:	ff 75 f0             	push   -0x10(%ebp)
     2e8:	e8 6e 0b 00 00       	call   e5b <close>
      close(p[1]);
     2ed:	58                   	pop    %eax
     2ee:	ff 75 f4             	push   -0xc(%ebp)
     2f1:	e8 65 0b 00 00       	call   e5b <close>
      runcmd(pcmd->right);
     2f6:	58                   	pop    %eax
     2f7:	ff 73 08             	push   0x8(%ebx)
     2fa:	e8 b1 fe ff ff       	call   1b0 <runcmd>
      close(1);
     2ff:	83 ec 0c             	sub    $0xc,%esp
     302:	6a 01                	push   $0x1
     304:	e8 52 0b 00 00       	call   e5b <close>
      dup(p[1]);
     309:	58                   	pop    %eax
     30a:	ff 75 f4             	push   -0xc(%ebp)
     30d:	e8 99 0b 00 00       	call   eab <dup>
      close(p[0]);
     312:	58                   	pop    %eax
     313:	ff 75 f0             	push   -0x10(%ebp)
     316:	e8 40 0b 00 00       	call   e5b <close>
      close(p[1]);
     31b:	58                   	pop    %eax
     31c:	ff 75 f4             	push   -0xc(%ebp)
     31f:	e8 37 0b 00 00       	call   e5b <close>
      runcmd(pcmd->left);
     324:	5a                   	pop    %edx
     325:	ff 73 04             	push   0x4(%ebx)
     328:	e8 83 fe ff ff       	call   1b0 <runcmd>
     32d:	8d 76 00             	lea    0x0(%esi),%esi

00000330 <execcmd>:
//PAGEBREAK!
// Constructors

struct cmd*
execcmd(void)
{
     330:	55                   	push   %ebp
     331:	89 e5                	mov    %esp,%ebp
     333:	53                   	push   %ebx
     334:	83 ec 10             	sub    $0x10,%esp
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     337:	6a 54                	push   $0x54
     339:	e8 02 0f 00 00       	call   1240 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     33e:	83 c4 0c             	add    $0xc,%esp
     341:	6a 54                	push   $0x54
  cmd = malloc(sizeof(*cmd));
     343:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     345:	6a 00                	push   $0x0
     347:	50                   	push   %eax
     348:	e8 63 09 00 00       	call   cb0 <memset>
  cmd->type = EXEC;
     34d:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  return (struct cmd*)cmd;
}
     353:	89 d8                	mov    %ebx,%eax
     355:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     358:	c9                   	leave
     359:	c3                   	ret
     35a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000360 <redircmd>:

struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
     360:	55                   	push   %ebp
     361:	89 e5                	mov    %esp,%ebp
     363:	53                   	push   %ebx
     364:	83 ec 10             	sub    $0x10,%esp
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     367:	6a 18                	push   $0x18
     369:	e8 d2 0e 00 00       	call   1240 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     36e:	83 c4 0c             	add    $0xc,%esp
     371:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     373:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     375:	6a 00                	push   $0x0
     377:	50                   	push   %eax
     378:	e8 33 09 00 00       	call   cb0 <memset>
  cmd->type = REDIR;
  cmd->cmd = subcmd;
     37d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = REDIR;
     380:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  cmd->cmd = subcmd;
     386:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->file = file;
     389:	8b 45 0c             	mov    0xc(%ebp),%eax
     38c:	89 43 08             	mov    %eax,0x8(%ebx)
  cmd->efile = efile;
     38f:	8b 45 10             	mov    0x10(%ebp),%eax
     392:	89 43 0c             	mov    %eax,0xc(%ebx)
  cmd->mode = mode;
     395:	8b 45 14             	mov    0x14(%ebp),%eax
     398:	89 43 10             	mov    %eax,0x10(%ebx)
  cmd->fd = fd;
     39b:	8b 45 18             	mov    0x18(%ebp),%eax
     39e:	89 43 14             	mov    %eax,0x14(%ebx)
  return (struct cmd*)cmd;
}
     3a1:	89 d8                	mov    %ebx,%eax
     3a3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     3a6:	c9                   	leave
     3a7:	c3                   	ret
     3a8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     3af:	00 

000003b0 <pipecmd>:

struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
     3b0:	55                   	push   %ebp
     3b1:	89 e5                	mov    %esp,%ebp
     3b3:	53                   	push   %ebx
     3b4:	83 ec 10             	sub    $0x10,%esp
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     3b7:	6a 0c                	push   $0xc
     3b9:	e8 82 0e 00 00       	call   1240 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     3be:	83 c4 0c             	add    $0xc,%esp
     3c1:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     3c3:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     3c5:	6a 00                	push   $0x0
     3c7:	50                   	push   %eax
     3c8:	e8 e3 08 00 00       	call   cb0 <memset>
  cmd->type = PIPE;
  cmd->left = left;
     3cd:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = PIPE;
     3d0:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
  cmd->left = left;
     3d6:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     3d9:	8b 45 0c             	mov    0xc(%ebp),%eax
     3dc:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     3df:	89 d8                	mov    %ebx,%eax
     3e1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     3e4:	c9                   	leave
     3e5:	c3                   	ret
     3e6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     3ed:	00 
     3ee:	66 90                	xchg   %ax,%ax

000003f0 <listcmd>:

struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
     3f0:	55                   	push   %ebp
     3f1:	89 e5                	mov    %esp,%ebp
     3f3:	53                   	push   %ebx
     3f4:	83 ec 10             	sub    $0x10,%esp
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     3f7:	6a 0c                	push   $0xc
     3f9:	e8 42 0e 00 00       	call   1240 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     3fe:	83 c4 0c             	add    $0xc,%esp
     401:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     403:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     405:	6a 00                	push   $0x0
     407:	50                   	push   %eax
     408:	e8 a3 08 00 00       	call   cb0 <memset>
  cmd->type = LIST;
  cmd->left = left;
     40d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = LIST;
     410:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
  cmd->left = left;
     416:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     419:	8b 45 0c             	mov    0xc(%ebp),%eax
     41c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     41f:	89 d8                	mov    %ebx,%eax
     421:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     424:	c9                   	leave
     425:	c3                   	ret
     426:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     42d:	00 
     42e:	66 90                	xchg   %ax,%ax

00000430 <backcmd>:

struct cmd*
backcmd(struct cmd *subcmd)
{
     430:	55                   	push   %ebp
     431:	89 e5                	mov    %esp,%ebp
     433:	53                   	push   %ebx
     434:	83 ec 10             	sub    $0x10,%esp
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     437:	6a 08                	push   $0x8
     439:	e8 02 0e 00 00       	call   1240 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     43e:	83 c4 0c             	add    $0xc,%esp
     441:	6a 08                	push   $0x8
  cmd = malloc(sizeof(*cmd));
     443:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     445:	6a 00                	push   $0x0
     447:	50                   	push   %eax
     448:	e8 63 08 00 00       	call   cb0 <memset>
  cmd->type = BACK;
  cmd->cmd = subcmd;
     44d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = BACK;
     450:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
  cmd->cmd = subcmd;
     456:	89 43 04             	mov    %eax,0x4(%ebx)
  return (struct cmd*)cmd;
}
     459:	89 d8                	mov    %ebx,%eax
     45b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     45e:	c9                   	leave
     45f:	c3                   	ret

00000460 <gettoken>:
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     460:	55                   	push   %ebp
     461:	89 e5                	mov    %esp,%ebp
     463:	57                   	push   %edi
     464:	56                   	push   %esi
     465:	53                   	push   %ebx
     466:	83 ec 0c             	sub    $0xc,%esp
  char *s;
  int ret;

  s = *ps;
     469:	8b 45 08             	mov    0x8(%ebp),%eax
{
     46c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     46f:	8b 75 10             	mov    0x10(%ebp),%esi
  s = *ps;
     472:	8b 38                	mov    (%eax),%edi
  while(s < es && strchr(whitespace, *s))
     474:	39 df                	cmp    %ebx,%edi
     476:	72 0f                	jb     487 <gettoken+0x27>
     478:	eb 25                	jmp    49f <gettoken+0x3f>
     47a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    s++;
     480:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
     483:	39 fb                	cmp    %edi,%ebx
     485:	74 18                	je     49f <gettoken+0x3f>
     487:	0f be 07             	movsbl (%edi),%eax
     48a:	83 ec 08             	sub    $0x8,%esp
     48d:	50                   	push   %eax
     48e:	68 8c 14 00 00       	push   $0x148c
     493:	e8 38 08 00 00       	call   cd0 <strchr>
     498:	83 c4 10             	add    $0x10,%esp
     49b:	85 c0                	test   %eax,%eax
     49d:	75 e1                	jne    480 <gettoken+0x20>
  if(q)
     49f:	85 f6                	test   %esi,%esi
     4a1:	74 02                	je     4a5 <gettoken+0x45>
    *q = s;
     4a3:	89 3e                	mov    %edi,(%esi)
  ret = *s;
     4a5:	0f b6 07             	movzbl (%edi),%eax
  switch(*s){
     4a8:	3c 3c                	cmp    $0x3c,%al
     4aa:	0f 8f c8 00 00 00    	jg     578 <gettoken+0x118>
     4b0:	3c 3a                	cmp    $0x3a,%al
     4b2:	7f 5a                	jg     50e <gettoken+0xae>
     4b4:	84 c0                	test   %al,%al
     4b6:	75 48                	jne    500 <gettoken+0xa0>
     4b8:	31 f6                	xor    %esi,%esi
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     4ba:	8b 4d 14             	mov    0x14(%ebp),%ecx
     4bd:	85 c9                	test   %ecx,%ecx
     4bf:	74 05                	je     4c6 <gettoken+0x66>
    *eq = s;
     4c1:	8b 45 14             	mov    0x14(%ebp),%eax
     4c4:	89 38                	mov    %edi,(%eax)

  while(s < es && strchr(whitespace, *s))
     4c6:	39 df                	cmp    %ebx,%edi
     4c8:	72 0d                	jb     4d7 <gettoken+0x77>
     4ca:	eb 23                	jmp    4ef <gettoken+0x8f>
     4cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    s++;
     4d0:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
     4d3:	39 fb                	cmp    %edi,%ebx
     4d5:	74 18                	je     4ef <gettoken+0x8f>
     4d7:	0f be 07             	movsbl (%edi),%eax
     4da:	83 ec 08             	sub    $0x8,%esp
     4dd:	50                   	push   %eax
     4de:	68 8c 14 00 00       	push   $0x148c
     4e3:	e8 e8 07 00 00       	call   cd0 <strchr>
     4e8:	83 c4 10             	add    $0x10,%esp
     4eb:	85 c0                	test   %eax,%eax
     4ed:	75 e1                	jne    4d0 <gettoken+0x70>
  *ps = s;
     4ef:	8b 45 08             	mov    0x8(%ebp),%eax
     4f2:	89 38                	mov    %edi,(%eax)
  return ret;
}
     4f4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     4f7:	89 f0                	mov    %esi,%eax
     4f9:	5b                   	pop    %ebx
     4fa:	5e                   	pop    %esi
     4fb:	5f                   	pop    %edi
     4fc:	5d                   	pop    %ebp
     4fd:	c3                   	ret
     4fe:	66 90                	xchg   %ax,%ax
  switch(*s){
     500:	78 22                	js     524 <gettoken+0xc4>
     502:	3c 26                	cmp    $0x26,%al
     504:	74 08                	je     50e <gettoken+0xae>
     506:	8d 48 d8             	lea    -0x28(%eax),%ecx
     509:	80 f9 01             	cmp    $0x1,%cl
     50c:	77 16                	ja     524 <gettoken+0xc4>
  ret = *s;
     50e:	0f be f0             	movsbl %al,%esi
    s++;
     511:	83 c7 01             	add    $0x1,%edi
    break;
     514:	eb a4                	jmp    4ba <gettoken+0x5a>
     516:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     51d:	00 
     51e:	66 90                	xchg   %ax,%ax
  switch(*s){
     520:	3c 7c                	cmp    $0x7c,%al
     522:	74 ea                	je     50e <gettoken+0xae>
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     524:	39 df                	cmp    %ebx,%edi
     526:	72 27                	jb     54f <gettoken+0xef>
     528:	e9 87 00 00 00       	jmp    5b4 <gettoken+0x154>
     52d:	8d 76 00             	lea    0x0(%esi),%esi
     530:	0f be 07             	movsbl (%edi),%eax
     533:	83 ec 08             	sub    $0x8,%esp
     536:	50                   	push   %eax
     537:	68 84 14 00 00       	push   $0x1484
     53c:	e8 8f 07 00 00       	call   cd0 <strchr>
     541:	83 c4 10             	add    $0x10,%esp
     544:	85 c0                	test   %eax,%eax
     546:	75 1f                	jne    567 <gettoken+0x107>
      s++;
     548:	83 c7 01             	add    $0x1,%edi
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     54b:	39 fb                	cmp    %edi,%ebx
     54d:	74 4d                	je     59c <gettoken+0x13c>
     54f:	0f be 07             	movsbl (%edi),%eax
     552:	83 ec 08             	sub    $0x8,%esp
     555:	50                   	push   %eax
     556:	68 8c 14 00 00       	push   $0x148c
     55b:	e8 70 07 00 00       	call   cd0 <strchr>
     560:	83 c4 10             	add    $0x10,%esp
     563:	85 c0                	test   %eax,%eax
     565:	74 c9                	je     530 <gettoken+0xd0>
    ret = 'a';
     567:	be 61 00 00 00       	mov    $0x61,%esi
     56c:	e9 49 ff ff ff       	jmp    4ba <gettoken+0x5a>
     571:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  switch(*s){
     578:	3c 3e                	cmp    $0x3e,%al
     57a:	75 a4                	jne    520 <gettoken+0xc0>
    if(*s == '>'){
     57c:	80 7f 01 3e          	cmpb   $0x3e,0x1(%edi)
     580:	74 0d                	je     58f <gettoken+0x12f>
    s++;
     582:	83 c7 01             	add    $0x1,%edi
  ret = *s;
     585:	be 3e 00 00 00       	mov    $0x3e,%esi
     58a:	e9 2b ff ff ff       	jmp    4ba <gettoken+0x5a>
      s++;
     58f:	83 c7 02             	add    $0x2,%edi
      ret = '+';
     592:	be 2b 00 00 00       	mov    $0x2b,%esi
     597:	e9 1e ff ff ff       	jmp    4ba <gettoken+0x5a>
  if(eq)
     59c:	8b 45 14             	mov    0x14(%ebp),%eax
     59f:	85 c0                	test   %eax,%eax
     5a1:	74 05                	je     5a8 <gettoken+0x148>
    *eq = s;
     5a3:	8b 45 14             	mov    0x14(%ebp),%eax
     5a6:	89 18                	mov    %ebx,(%eax)
  while(s < es && strchr(whitespace, *s))
     5a8:	89 df                	mov    %ebx,%edi
    ret = 'a';
     5aa:	be 61 00 00 00       	mov    $0x61,%esi
     5af:	e9 3b ff ff ff       	jmp    4ef <gettoken+0x8f>
  if(eq)
     5b4:	8b 55 14             	mov    0x14(%ebp),%edx
     5b7:	85 d2                	test   %edx,%edx
     5b9:	74 ef                	je     5aa <gettoken+0x14a>
    *eq = s;
     5bb:	8b 45 14             	mov    0x14(%ebp),%eax
     5be:	89 38                	mov    %edi,(%eax)
  while(s < es && strchr(whitespace, *s))
     5c0:	eb e8                	jmp    5aa <gettoken+0x14a>
     5c2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     5c9:	00 
     5ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000005d0 <peek>:

int
peek(char **ps, char *es, char *toks)
{
     5d0:	55                   	push   %ebp
     5d1:	89 e5                	mov    %esp,%ebp
     5d3:	57                   	push   %edi
     5d4:	56                   	push   %esi
     5d5:	53                   	push   %ebx
     5d6:	83 ec 0c             	sub    $0xc,%esp
     5d9:	8b 7d 08             	mov    0x8(%ebp),%edi
     5dc:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *s;

  s = *ps;
     5df:	8b 1f                	mov    (%edi),%ebx
  while(s < es && strchr(whitespace, *s))
     5e1:	39 f3                	cmp    %esi,%ebx
     5e3:	72 12                	jb     5f7 <peek+0x27>
     5e5:	eb 28                	jmp    60f <peek+0x3f>
     5e7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     5ee:	00 
     5ef:	90                   	nop
    s++;
     5f0:	83 c3 01             	add    $0x1,%ebx
  while(s < es && strchr(whitespace, *s))
     5f3:	39 de                	cmp    %ebx,%esi
     5f5:	74 18                	je     60f <peek+0x3f>
     5f7:	0f be 03             	movsbl (%ebx),%eax
     5fa:	83 ec 08             	sub    $0x8,%esp
     5fd:	50                   	push   %eax
     5fe:	68 8c 14 00 00       	push   $0x148c
     603:	e8 c8 06 00 00       	call   cd0 <strchr>
     608:	83 c4 10             	add    $0x10,%esp
     60b:	85 c0                	test   %eax,%eax
     60d:	75 e1                	jne    5f0 <peek+0x20>
  *ps = s;
     60f:	89 1f                	mov    %ebx,(%edi)
  return *s && strchr(toks, *s);
     611:	0f be 03             	movsbl (%ebx),%eax
     614:	31 d2                	xor    %edx,%edx
     616:	84 c0                	test   %al,%al
     618:	75 0e                	jne    628 <peek+0x58>
}
     61a:	8d 65 f4             	lea    -0xc(%ebp),%esp
     61d:	89 d0                	mov    %edx,%eax
     61f:	5b                   	pop    %ebx
     620:	5e                   	pop    %esi
     621:	5f                   	pop    %edi
     622:	5d                   	pop    %ebp
     623:	c3                   	ret
     624:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  return *s && strchr(toks, *s);
     628:	83 ec 08             	sub    $0x8,%esp
     62b:	50                   	push   %eax
     62c:	ff 75 10             	push   0x10(%ebp)
     62f:	e8 9c 06 00 00       	call   cd0 <strchr>
     634:	83 c4 10             	add    $0x10,%esp
     637:	31 d2                	xor    %edx,%edx
     639:	85 c0                	test   %eax,%eax
     63b:	0f 95 c2             	setne  %dl
}
     63e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     641:	5b                   	pop    %ebx
     642:	89 d0                	mov    %edx,%eax
     644:	5e                   	pop    %esi
     645:	5f                   	pop    %edi
     646:	5d                   	pop    %ebp
     647:	c3                   	ret
     648:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     64f:	00 

00000650 <parseredirs>:
  return cmd;
}

struct cmd*
parseredirs(struct cmd *cmd, char **ps, char *es)
{
     650:	55                   	push   %ebp
     651:	89 e5                	mov    %esp,%ebp
     653:	57                   	push   %edi
     654:	56                   	push   %esi
     655:	53                   	push   %ebx
     656:	83 ec 2c             	sub    $0x2c,%esp
     659:	8b 75 0c             	mov    0xc(%ebp),%esi
     65c:	8b 5d 10             	mov    0x10(%ebp),%ebx
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
     65f:	90                   	nop
     660:	83 ec 04             	sub    $0x4,%esp
     663:	68 79 13 00 00       	push   $0x1379
     668:	53                   	push   %ebx
     669:	56                   	push   %esi
     66a:	e8 61 ff ff ff       	call   5d0 <peek>
     66f:	83 c4 10             	add    $0x10,%esp
     672:	85 c0                	test   %eax,%eax
     674:	0f 84 f6 00 00 00    	je     770 <parseredirs+0x120>
    tok = gettoken(ps, es, 0, 0);
     67a:	6a 00                	push   $0x0
     67c:	6a 00                	push   $0x0
     67e:	53                   	push   %ebx
     67f:	56                   	push   %esi
     680:	e8 db fd ff ff       	call   460 <gettoken>
     685:	89 c7                	mov    %eax,%edi
    if(gettoken(ps, es, &q, &eq) != 'a')
     687:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     68a:	50                   	push   %eax
     68b:	8d 45 e0             	lea    -0x20(%ebp),%eax
     68e:	50                   	push   %eax
     68f:	53                   	push   %ebx
     690:	56                   	push   %esi
     691:	e8 ca fd ff ff       	call   460 <gettoken>
     696:	83 c4 20             	add    $0x20,%esp
     699:	83 f8 61             	cmp    $0x61,%eax
     69c:	0f 85 d9 00 00 00    	jne    77b <parseredirs+0x12b>
      panic("missing file for redirection");
    switch(tok){
     6a2:	83 ff 3c             	cmp    $0x3c,%edi
     6a5:	74 69                	je     710 <parseredirs+0xc0>
     6a7:	83 ff 3e             	cmp    $0x3e,%edi
     6aa:	74 05                	je     6b1 <parseredirs+0x61>
     6ac:	83 ff 2b             	cmp    $0x2b,%edi
     6af:	75 af                	jne    660 <parseredirs+0x10>
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     6b1:	8b 55 e4             	mov    -0x1c(%ebp),%edx
     6b4:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  cmd = malloc(sizeof(*cmd));
     6b7:	83 ec 0c             	sub    $0xc,%esp
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     6ba:	89 55 d0             	mov    %edx,-0x30(%ebp)
     6bd:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  cmd = malloc(sizeof(*cmd));
     6c0:	6a 18                	push   $0x18
     6c2:	e8 79 0b 00 00       	call   1240 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     6c7:	83 c4 0c             	add    $0xc,%esp
     6ca:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     6cc:	89 c7                	mov    %eax,%edi
  memset(cmd, 0, sizeof(*cmd));
     6ce:	6a 00                	push   $0x0
     6d0:	50                   	push   %eax
     6d1:	e8 da 05 00 00       	call   cb0 <memset>
  cmd->type = REDIR;
     6d6:	c7 07 02 00 00 00    	movl   $0x2,(%edi)
  cmd->cmd = subcmd;
     6dc:	8b 45 08             	mov    0x8(%ebp),%eax
      break;
     6df:	83 c4 10             	add    $0x10,%esp
  cmd->cmd = subcmd;
     6e2:	89 47 04             	mov    %eax,0x4(%edi)
  cmd->file = file;
     6e5:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
     6e8:	89 4f 08             	mov    %ecx,0x8(%edi)
  cmd->efile = efile;
     6eb:	8b 55 d0             	mov    -0x30(%ebp),%edx
  cmd->mode = mode;
     6ee:	c7 47 10 01 02 00 00 	movl   $0x201,0x10(%edi)
  cmd->efile = efile;
     6f5:	89 57 0c             	mov    %edx,0xc(%edi)
  cmd->fd = fd;
     6f8:	c7 47 14 01 00 00 00 	movl   $0x1,0x14(%edi)
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     6ff:	89 7d 08             	mov    %edi,0x8(%ebp)
      break;
     702:	e9 59 ff ff ff       	jmp    660 <parseredirs+0x10>
     707:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     70e:	00 
     70f:	90                   	nop
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     710:	8b 55 e4             	mov    -0x1c(%ebp),%edx
     713:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  cmd = malloc(sizeof(*cmd));
     716:	83 ec 0c             	sub    $0xc,%esp
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     719:	89 55 d0             	mov    %edx,-0x30(%ebp)
     71c:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  cmd = malloc(sizeof(*cmd));
     71f:	6a 18                	push   $0x18
     721:	e8 1a 0b 00 00       	call   1240 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     726:	83 c4 0c             	add    $0xc,%esp
     729:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     72b:	89 c7                	mov    %eax,%edi
  memset(cmd, 0, sizeof(*cmd));
     72d:	6a 00                	push   $0x0
     72f:	50                   	push   %eax
     730:	e8 7b 05 00 00       	call   cb0 <memset>
  cmd->cmd = subcmd;
     735:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->file = file;
     738:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      break;
     73b:	83 c4 10             	add    $0x10,%esp
  cmd->efile = efile;
     73e:	8b 55 d0             	mov    -0x30(%ebp),%edx
  cmd->type = REDIR;
     741:	c7 07 02 00 00 00    	movl   $0x2,(%edi)
  cmd->cmd = subcmd;
     747:	89 47 04             	mov    %eax,0x4(%edi)
  cmd->file = file;
     74a:	89 4f 08             	mov    %ecx,0x8(%edi)
  cmd->efile = efile;
     74d:	89 57 0c             	mov    %edx,0xc(%edi)
  cmd->mode = mode;
     750:	c7 47 10 00 00 00 00 	movl   $0x0,0x10(%edi)
  cmd->fd = fd;
     757:	c7 47 14 00 00 00 00 	movl   $0x0,0x14(%edi)
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     75e:	89 7d 08             	mov    %edi,0x8(%ebp)
      break;
     761:	e9 fa fe ff ff       	jmp    660 <parseredirs+0x10>
     766:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     76d:	00 
     76e:	66 90                	xchg   %ax,%ax
    }
  }
  return cmd;
}
     770:	8b 45 08             	mov    0x8(%ebp),%eax
     773:	8d 65 f4             	lea    -0xc(%ebp),%esp
     776:	5b                   	pop    %ebx
     777:	5e                   	pop    %esi
     778:	5f                   	pop    %edi
     779:	5d                   	pop    %ebp
     77a:	c3                   	ret
      panic("missing file for redirection");
     77b:	83 ec 0c             	sub    $0xc,%esp
     77e:	68 5c 13 00 00       	push   $0x135c
     783:	e8 e8 f9 ff ff       	call   170 <panic>
     788:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     78f:	00 

00000790 <parseexec>:
  return cmd;
}

struct cmd*
parseexec(char **ps, char *es)
{
     790:	55                   	push   %ebp
     791:	89 e5                	mov    %esp,%ebp
     793:	57                   	push   %edi
     794:	56                   	push   %esi
     795:	53                   	push   %ebx
     796:	83 ec 30             	sub    $0x30,%esp
     799:	8b 5d 08             	mov    0x8(%ebp),%ebx
     79c:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *q, *eq;
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
     79f:	68 7c 13 00 00       	push   $0x137c
     7a4:	56                   	push   %esi
     7a5:	53                   	push   %ebx
     7a6:	e8 25 fe ff ff       	call   5d0 <peek>
     7ab:	83 c4 10             	add    $0x10,%esp
     7ae:	85 c0                	test   %eax,%eax
     7b0:	0f 85 aa 00 00 00    	jne    860 <parseexec+0xd0>
  cmd = malloc(sizeof(*cmd));
     7b6:	83 ec 0c             	sub    $0xc,%esp
     7b9:	89 c7                	mov    %eax,%edi
     7bb:	6a 54                	push   $0x54
     7bd:	e8 7e 0a 00 00       	call   1240 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     7c2:	83 c4 0c             	add    $0xc,%esp
     7c5:	6a 54                	push   $0x54
     7c7:	6a 00                	push   $0x0
     7c9:	89 45 d0             	mov    %eax,-0x30(%ebp)
     7cc:	50                   	push   %eax
     7cd:	e8 de 04 00 00       	call   cb0 <memset>
  cmd->type = EXEC;
     7d2:	8b 45 d0             	mov    -0x30(%ebp),%eax

  ret = execcmd();
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     7d5:	83 c4 0c             	add    $0xc,%esp
  cmd->type = EXEC;
     7d8:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  ret = parseredirs(ret, ps, es);
     7de:	56                   	push   %esi
     7df:	53                   	push   %ebx
     7e0:	50                   	push   %eax
     7e1:	e8 6a fe ff ff       	call   650 <parseredirs>
  while(!peek(ps, es, "|)&;")){
     7e6:	83 c4 10             	add    $0x10,%esp
  ret = parseredirs(ret, ps, es);
     7e9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     7ec:	eb 15                	jmp    803 <parseexec+0x73>
     7ee:	66 90                	xchg   %ax,%ax
    cmd->argv[argc] = q;
    cmd->eargv[argc] = eq;
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
     7f0:	83 ec 04             	sub    $0x4,%esp
     7f3:	56                   	push   %esi
     7f4:	53                   	push   %ebx
     7f5:	ff 75 d4             	push   -0x2c(%ebp)
     7f8:	e8 53 fe ff ff       	call   650 <parseredirs>
     7fd:	83 c4 10             	add    $0x10,%esp
     800:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     803:	83 ec 04             	sub    $0x4,%esp
     806:	68 93 13 00 00       	push   $0x1393
     80b:	56                   	push   %esi
     80c:	53                   	push   %ebx
     80d:	e8 be fd ff ff       	call   5d0 <peek>
     812:	83 c4 10             	add    $0x10,%esp
     815:	85 c0                	test   %eax,%eax
     817:	75 5f                	jne    878 <parseexec+0xe8>
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
     819:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     81c:	50                   	push   %eax
     81d:	8d 45 e0             	lea    -0x20(%ebp),%eax
     820:	50                   	push   %eax
     821:	56                   	push   %esi
     822:	53                   	push   %ebx
     823:	e8 38 fc ff ff       	call   460 <gettoken>
     828:	83 c4 10             	add    $0x10,%esp
     82b:	85 c0                	test   %eax,%eax
     82d:	74 49                	je     878 <parseexec+0xe8>
    if(tok != 'a')
     82f:	83 f8 61             	cmp    $0x61,%eax
     832:	75 62                	jne    896 <parseexec+0x106>
    cmd->argv[argc] = q;
     834:	8b 45 e0             	mov    -0x20(%ebp),%eax
     837:	8b 55 d0             	mov    -0x30(%ebp),%edx
     83a:	89 44 ba 04          	mov    %eax,0x4(%edx,%edi,4)
    cmd->eargv[argc] = eq;
     83e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     841:	89 44 ba 2c          	mov    %eax,0x2c(%edx,%edi,4)
    argc++;
     845:	83 c7 01             	add    $0x1,%edi
    if(argc >= MAXARGS)
     848:	83 ff 0a             	cmp    $0xa,%edi
     84b:	75 a3                	jne    7f0 <parseexec+0x60>
      panic("too many args");
     84d:	83 ec 0c             	sub    $0xc,%esp
     850:	68 85 13 00 00       	push   $0x1385
     855:	e8 16 f9 ff ff       	call   170 <panic>
     85a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    return parseblock(ps, es);
     860:	89 75 0c             	mov    %esi,0xc(%ebp)
     863:	89 5d 08             	mov    %ebx,0x8(%ebp)
  }
  cmd->argv[argc] = 0;
  cmd->eargv[argc] = 0;
  return ret;
}
     866:	8d 65 f4             	lea    -0xc(%ebp),%esp
     869:	5b                   	pop    %ebx
     86a:	5e                   	pop    %esi
     86b:	5f                   	pop    %edi
     86c:	5d                   	pop    %ebp
    return parseblock(ps, es);
     86d:	e9 ae 01 00 00       	jmp    a20 <parseblock>
     872:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  cmd->argv[argc] = 0;
     878:	8b 45 d0             	mov    -0x30(%ebp),%eax
     87b:	c7 44 b8 04 00 00 00 	movl   $0x0,0x4(%eax,%edi,4)
     882:	00 
  cmd->eargv[argc] = 0;
     883:	c7 44 b8 2c 00 00 00 	movl   $0x0,0x2c(%eax,%edi,4)
     88a:	00 
}
     88b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     88e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     891:	5b                   	pop    %ebx
     892:	5e                   	pop    %esi
     893:	5f                   	pop    %edi
     894:	5d                   	pop    %ebp
     895:	c3                   	ret
      panic("syntax");
     896:	83 ec 0c             	sub    $0xc,%esp
     899:	68 7e 13 00 00       	push   $0x137e
     89e:	e8 cd f8 ff ff       	call   170 <panic>
     8a3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     8aa:	00 
     8ab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

000008b0 <parsepipe>:
{
     8b0:	55                   	push   %ebp
     8b1:	89 e5                	mov    %esp,%ebp
     8b3:	57                   	push   %edi
     8b4:	56                   	push   %esi
     8b5:	53                   	push   %ebx
     8b6:	83 ec 14             	sub    $0x14,%esp
     8b9:	8b 75 08             	mov    0x8(%ebp),%esi
     8bc:	8b 7d 0c             	mov    0xc(%ebp),%edi
  cmd = parseexec(ps, es);
     8bf:	57                   	push   %edi
     8c0:	56                   	push   %esi
     8c1:	e8 ca fe ff ff       	call   790 <parseexec>
  if(peek(ps, es, "|")){
     8c6:	83 c4 0c             	add    $0xc,%esp
     8c9:	68 98 13 00 00       	push   $0x1398
  cmd = parseexec(ps, es);
     8ce:	89 c3                	mov    %eax,%ebx
  if(peek(ps, es, "|")){
     8d0:	57                   	push   %edi
     8d1:	56                   	push   %esi
     8d2:	e8 f9 fc ff ff       	call   5d0 <peek>
     8d7:	83 c4 10             	add    $0x10,%esp
     8da:	85 c0                	test   %eax,%eax
     8dc:	75 12                	jne    8f0 <parsepipe+0x40>
}
     8de:	8d 65 f4             	lea    -0xc(%ebp),%esp
     8e1:	89 d8                	mov    %ebx,%eax
     8e3:	5b                   	pop    %ebx
     8e4:	5e                   	pop    %esi
     8e5:	5f                   	pop    %edi
     8e6:	5d                   	pop    %ebp
     8e7:	c3                   	ret
     8e8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     8ef:	00 
    gettoken(ps, es, 0, 0);
     8f0:	6a 00                	push   $0x0
     8f2:	6a 00                	push   $0x0
     8f4:	57                   	push   %edi
     8f5:	56                   	push   %esi
     8f6:	e8 65 fb ff ff       	call   460 <gettoken>
    cmd = pipecmd(cmd, parsepipe(ps, es));
     8fb:	58                   	pop    %eax
     8fc:	5a                   	pop    %edx
     8fd:	57                   	push   %edi
     8fe:	56                   	push   %esi
     8ff:	e8 ac ff ff ff       	call   8b0 <parsepipe>
  cmd = malloc(sizeof(*cmd));
     904:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
    cmd = pipecmd(cmd, parsepipe(ps, es));
     90b:	89 c7                	mov    %eax,%edi
  cmd = malloc(sizeof(*cmd));
     90d:	e8 2e 09 00 00       	call   1240 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     912:	83 c4 0c             	add    $0xc,%esp
     915:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     917:	89 c6                	mov    %eax,%esi
  memset(cmd, 0, sizeof(*cmd));
     919:	6a 00                	push   $0x0
     91b:	50                   	push   %eax
     91c:	e8 8f 03 00 00       	call   cb0 <memset>
  cmd->left = left;
     921:	89 5e 04             	mov    %ebx,0x4(%esi)
  cmd->right = right;
     924:	83 c4 10             	add    $0x10,%esp
    cmd = pipecmd(cmd, parsepipe(ps, es));
     927:	89 f3                	mov    %esi,%ebx
  cmd->type = PIPE;
     929:	c7 06 03 00 00 00    	movl   $0x3,(%esi)
}
     92f:	89 d8                	mov    %ebx,%eax
  cmd->right = right;
     931:	89 7e 08             	mov    %edi,0x8(%esi)
}
     934:	8d 65 f4             	lea    -0xc(%ebp),%esp
     937:	5b                   	pop    %ebx
     938:	5e                   	pop    %esi
     939:	5f                   	pop    %edi
     93a:	5d                   	pop    %ebp
     93b:	c3                   	ret
     93c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000940 <parseline>:
{
     940:	55                   	push   %ebp
     941:	89 e5                	mov    %esp,%ebp
     943:	57                   	push   %edi
     944:	56                   	push   %esi
     945:	53                   	push   %ebx
     946:	83 ec 24             	sub    $0x24,%esp
     949:	8b 75 08             	mov    0x8(%ebp),%esi
     94c:	8b 7d 0c             	mov    0xc(%ebp),%edi
  cmd = parsepipe(ps, es);
     94f:	57                   	push   %edi
     950:	56                   	push   %esi
     951:	e8 5a ff ff ff       	call   8b0 <parsepipe>
  while(peek(ps, es, "&")){
     956:	83 c4 10             	add    $0x10,%esp
  cmd = parsepipe(ps, es);
     959:	89 c3                	mov    %eax,%ebx
  while(peek(ps, es, "&")){
     95b:	eb 3b                	jmp    998 <parseline+0x58>
     95d:	8d 76 00             	lea    0x0(%esi),%esi
    gettoken(ps, es, 0, 0);
     960:	6a 00                	push   $0x0
     962:	6a 00                	push   $0x0
     964:	57                   	push   %edi
     965:	56                   	push   %esi
     966:	e8 f5 fa ff ff       	call   460 <gettoken>
  cmd = malloc(sizeof(*cmd));
     96b:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
     972:	e8 c9 08 00 00       	call   1240 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     977:	83 c4 0c             	add    $0xc,%esp
     97a:	6a 08                	push   $0x8
     97c:	6a 00                	push   $0x0
     97e:	50                   	push   %eax
     97f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     982:	e8 29 03 00 00       	call   cb0 <memset>
  cmd->type = BACK;
     987:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  cmd->cmd = subcmd;
     98a:	83 c4 10             	add    $0x10,%esp
  cmd->type = BACK;
     98d:	c7 02 05 00 00 00    	movl   $0x5,(%edx)
  cmd->cmd = subcmd;
     993:	89 5a 04             	mov    %ebx,0x4(%edx)
    cmd = backcmd(cmd);
     996:	89 d3                	mov    %edx,%ebx
  while(peek(ps, es, "&")){
     998:	83 ec 04             	sub    $0x4,%esp
     99b:	68 9a 13 00 00       	push   $0x139a
     9a0:	57                   	push   %edi
     9a1:	56                   	push   %esi
     9a2:	e8 29 fc ff ff       	call   5d0 <peek>
     9a7:	83 c4 10             	add    $0x10,%esp
     9aa:	85 c0                	test   %eax,%eax
     9ac:	75 b2                	jne    960 <parseline+0x20>
  if(peek(ps, es, ";")){
     9ae:	83 ec 04             	sub    $0x4,%esp
     9b1:	68 96 13 00 00       	push   $0x1396
     9b6:	57                   	push   %edi
     9b7:	56                   	push   %esi
     9b8:	e8 13 fc ff ff       	call   5d0 <peek>
     9bd:	83 c4 10             	add    $0x10,%esp
     9c0:	85 c0                	test   %eax,%eax
     9c2:	75 0c                	jne    9d0 <parseline+0x90>
}
     9c4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9c7:	89 d8                	mov    %ebx,%eax
     9c9:	5b                   	pop    %ebx
     9ca:	5e                   	pop    %esi
     9cb:	5f                   	pop    %edi
     9cc:	5d                   	pop    %ebp
     9cd:	c3                   	ret
     9ce:	66 90                	xchg   %ax,%ax
    gettoken(ps, es, 0, 0);
     9d0:	6a 00                	push   $0x0
     9d2:	6a 00                	push   $0x0
     9d4:	57                   	push   %edi
     9d5:	56                   	push   %esi
     9d6:	e8 85 fa ff ff       	call   460 <gettoken>
    cmd = listcmd(cmd, parseline(ps, es));
     9db:	58                   	pop    %eax
     9dc:	5a                   	pop    %edx
     9dd:	57                   	push   %edi
     9de:	56                   	push   %esi
     9df:	e8 5c ff ff ff       	call   940 <parseline>
  cmd = malloc(sizeof(*cmd));
     9e4:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
    cmd = listcmd(cmd, parseline(ps, es));
     9eb:	89 c7                	mov    %eax,%edi
  cmd = malloc(sizeof(*cmd));
     9ed:	e8 4e 08 00 00       	call   1240 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     9f2:	83 c4 0c             	add    $0xc,%esp
     9f5:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     9f7:	89 c6                	mov    %eax,%esi
  memset(cmd, 0, sizeof(*cmd));
     9f9:	6a 00                	push   $0x0
     9fb:	50                   	push   %eax
     9fc:	e8 af 02 00 00       	call   cb0 <memset>
  cmd->left = left;
     a01:	89 5e 04             	mov    %ebx,0x4(%esi)
  cmd->right = right;
     a04:	83 c4 10             	add    $0x10,%esp
    cmd = listcmd(cmd, parseline(ps, es));
     a07:	89 f3                	mov    %esi,%ebx
  cmd->type = LIST;
     a09:	c7 06 04 00 00 00    	movl   $0x4,(%esi)
}
     a0f:	89 d8                	mov    %ebx,%eax
  cmd->right = right;
     a11:	89 7e 08             	mov    %edi,0x8(%esi)
}
     a14:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a17:	5b                   	pop    %ebx
     a18:	5e                   	pop    %esi
     a19:	5f                   	pop    %edi
     a1a:	5d                   	pop    %ebp
     a1b:	c3                   	ret
     a1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000a20 <parseblock>:
{
     a20:	55                   	push   %ebp
     a21:	89 e5                	mov    %esp,%ebp
     a23:	57                   	push   %edi
     a24:	56                   	push   %esi
     a25:	53                   	push   %ebx
     a26:	83 ec 10             	sub    $0x10,%esp
     a29:	8b 5d 08             	mov    0x8(%ebp),%ebx
     a2c:	8b 75 0c             	mov    0xc(%ebp),%esi
  if(!peek(ps, es, "("))
     a2f:	68 7c 13 00 00       	push   $0x137c
     a34:	56                   	push   %esi
     a35:	53                   	push   %ebx
     a36:	e8 95 fb ff ff       	call   5d0 <peek>
     a3b:	83 c4 10             	add    $0x10,%esp
     a3e:	85 c0                	test   %eax,%eax
     a40:	74 4a                	je     a8c <parseblock+0x6c>
  gettoken(ps, es, 0, 0);
     a42:	6a 00                	push   $0x0
     a44:	6a 00                	push   $0x0
     a46:	56                   	push   %esi
     a47:	53                   	push   %ebx
     a48:	e8 13 fa ff ff       	call   460 <gettoken>
  cmd = parseline(ps, es);
     a4d:	58                   	pop    %eax
     a4e:	5a                   	pop    %edx
     a4f:	56                   	push   %esi
     a50:	53                   	push   %ebx
     a51:	e8 ea fe ff ff       	call   940 <parseline>
  if(!peek(ps, es, ")"))
     a56:	83 c4 0c             	add    $0xc,%esp
     a59:	68 b8 13 00 00       	push   $0x13b8
  cmd = parseline(ps, es);
     a5e:	89 c7                	mov    %eax,%edi
  if(!peek(ps, es, ")"))
     a60:	56                   	push   %esi
     a61:	53                   	push   %ebx
     a62:	e8 69 fb ff ff       	call   5d0 <peek>
     a67:	83 c4 10             	add    $0x10,%esp
     a6a:	85 c0                	test   %eax,%eax
     a6c:	74 2b                	je     a99 <parseblock+0x79>
  gettoken(ps, es, 0, 0);
     a6e:	6a 00                	push   $0x0
     a70:	6a 00                	push   $0x0
     a72:	56                   	push   %esi
     a73:	53                   	push   %ebx
     a74:	e8 e7 f9 ff ff       	call   460 <gettoken>
  cmd = parseredirs(cmd, ps, es);
     a79:	83 c4 0c             	add    $0xc,%esp
     a7c:	56                   	push   %esi
     a7d:	53                   	push   %ebx
     a7e:	57                   	push   %edi
     a7f:	e8 cc fb ff ff       	call   650 <parseredirs>
}
     a84:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a87:	5b                   	pop    %ebx
     a88:	5e                   	pop    %esi
     a89:	5f                   	pop    %edi
     a8a:	5d                   	pop    %ebp
     a8b:	c3                   	ret
    panic("parseblock");
     a8c:	83 ec 0c             	sub    $0xc,%esp
     a8f:	68 9c 13 00 00       	push   $0x139c
     a94:	e8 d7 f6 ff ff       	call   170 <panic>
    panic("syntax - missing )");
     a99:	83 ec 0c             	sub    $0xc,%esp
     a9c:	68 a7 13 00 00       	push   $0x13a7
     aa1:	e8 ca f6 ff ff       	call   170 <panic>
     aa6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     aad:	00 
     aae:	66 90                	xchg   %ax,%ax

00000ab0 <nulterminate>:

// NUL-terminate all the counted strings.
struct cmd*
nulterminate(struct cmd *cmd)
{
     ab0:	55                   	push   %ebp
     ab1:	89 e5                	mov    %esp,%ebp
     ab3:	53                   	push   %ebx
     ab4:	83 ec 04             	sub    $0x4,%esp
     ab7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     aba:	85 db                	test   %ebx,%ebx
     abc:	74 29                	je     ae7 <nulterminate+0x37>
    return 0;

  switch(cmd->type){
     abe:	83 3b 05             	cmpl   $0x5,(%ebx)
     ac1:	77 24                	ja     ae7 <nulterminate+0x37>
     ac3:	8b 03                	mov    (%ebx),%eax
     ac5:	ff 24 85 00 14 00 00 	jmp    *0x1400(,%eax,4)
     acc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    nulterminate(pcmd->right);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    nulterminate(lcmd->left);
     ad0:	83 ec 0c             	sub    $0xc,%esp
     ad3:	ff 73 04             	push   0x4(%ebx)
     ad6:	e8 d5 ff ff ff       	call   ab0 <nulterminate>
    nulterminate(lcmd->right);
     adb:	58                   	pop    %eax
     adc:	ff 73 08             	push   0x8(%ebx)
     adf:	e8 cc ff ff ff       	call   ab0 <nulterminate>
    break;
     ae4:	83 c4 10             	add    $0x10,%esp
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
     ae7:	89 d8                	mov    %ebx,%eax
     ae9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     aec:	c9                   	leave
     aed:	c3                   	ret
     aee:	66 90                	xchg   %ax,%ax
    nulterminate(bcmd->cmd);
     af0:	83 ec 0c             	sub    $0xc,%esp
     af3:	ff 73 04             	push   0x4(%ebx)
     af6:	e8 b5 ff ff ff       	call   ab0 <nulterminate>
}
     afb:	89 d8                	mov    %ebx,%eax
    break;
     afd:	83 c4 10             	add    $0x10,%esp
}
     b00:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     b03:	c9                   	leave
     b04:	c3                   	ret
     b05:	8d 76 00             	lea    0x0(%esi),%esi
    for(i=0; ecmd->argv[i]; i++)
     b08:	8b 4b 04             	mov    0x4(%ebx),%ecx
     b0b:	85 c9                	test   %ecx,%ecx
     b0d:	74 d8                	je     ae7 <nulterminate+0x37>
     b0f:	8d 43 08             	lea    0x8(%ebx),%eax
     b12:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     b19:	00 
     b1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *ecmd->eargv[i] = 0;
     b20:	8b 50 24             	mov    0x24(%eax),%edx
    for(i=0; ecmd->argv[i]; i++)
     b23:	83 c0 04             	add    $0x4,%eax
      *ecmd->eargv[i] = 0;
     b26:	c6 02 00             	movb   $0x0,(%edx)
    for(i=0; ecmd->argv[i]; i++)
     b29:	8b 50 fc             	mov    -0x4(%eax),%edx
     b2c:	85 d2                	test   %edx,%edx
     b2e:	75 f0                	jne    b20 <nulterminate+0x70>
}
     b30:	89 d8                	mov    %ebx,%eax
     b32:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     b35:	c9                   	leave
     b36:	c3                   	ret
     b37:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     b3e:	00 
     b3f:	90                   	nop
    nulterminate(rcmd->cmd);
     b40:	83 ec 0c             	sub    $0xc,%esp
     b43:	ff 73 04             	push   0x4(%ebx)
     b46:	e8 65 ff ff ff       	call   ab0 <nulterminate>
    *rcmd->efile = 0;
     b4b:	8b 43 0c             	mov    0xc(%ebx),%eax
    break;
     b4e:	83 c4 10             	add    $0x10,%esp
    *rcmd->efile = 0;
     b51:	c6 00 00             	movb   $0x0,(%eax)
}
     b54:	89 d8                	mov    %ebx,%eax
     b56:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     b59:	c9                   	leave
     b5a:	c3                   	ret
     b5b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00000b60 <parsecmd>:
{
     b60:	55                   	push   %ebp
     b61:	89 e5                	mov    %esp,%ebp
     b63:	57                   	push   %edi
     b64:	56                   	push   %esi
  cmd = parseline(&s, es);
     b65:	8d 7d 08             	lea    0x8(%ebp),%edi
{
     b68:	53                   	push   %ebx
     b69:	83 ec 18             	sub    $0x18,%esp
  es = s + strlen(s);
     b6c:	8b 5d 08             	mov    0x8(%ebp),%ebx
     b6f:	53                   	push   %ebx
     b70:	e8 0b 01 00 00       	call   c80 <strlen>
  cmd = parseline(&s, es);
     b75:	59                   	pop    %ecx
     b76:	5e                   	pop    %esi
  es = s + strlen(s);
     b77:	01 c3                	add    %eax,%ebx
  cmd = parseline(&s, es);
     b79:	53                   	push   %ebx
     b7a:	57                   	push   %edi
     b7b:	e8 c0 fd ff ff       	call   940 <parseline>
  peek(&s, es, "");
     b80:	83 c4 0c             	add    $0xc,%esp
     b83:	68 46 13 00 00       	push   $0x1346
  cmd = parseline(&s, es);
     b88:	89 c6                	mov    %eax,%esi
  peek(&s, es, "");
     b8a:	53                   	push   %ebx
     b8b:	57                   	push   %edi
     b8c:	e8 3f fa ff ff       	call   5d0 <peek>
  if(s != es){
     b91:	8b 45 08             	mov    0x8(%ebp),%eax
     b94:	83 c4 10             	add    $0x10,%esp
     b97:	39 d8                	cmp    %ebx,%eax
     b99:	75 13                	jne    bae <parsecmd+0x4e>
  nulterminate(cmd);
     b9b:	83 ec 0c             	sub    $0xc,%esp
     b9e:	56                   	push   %esi
     b9f:	e8 0c ff ff ff       	call   ab0 <nulterminate>
}
     ba4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     ba7:	89 f0                	mov    %esi,%eax
     ba9:	5b                   	pop    %ebx
     baa:	5e                   	pop    %esi
     bab:	5f                   	pop    %edi
     bac:	5d                   	pop    %ebp
     bad:	c3                   	ret
    printf(2, "leftovers: %s\n", s);
     bae:	52                   	push   %edx
     baf:	50                   	push   %eax
     bb0:	68 ba 13 00 00       	push   $0x13ba
     bb5:	6a 02                	push   $0x2
     bb7:	e8 04 04 00 00       	call   fc0 <printf>
    panic("syntax");
     bbc:	c7 04 24 7e 13 00 00 	movl   $0x137e,(%esp)
     bc3:	e8 a8 f5 ff ff       	call   170 <panic>
     bc8:	66 90                	xchg   %ax,%ax
     bca:	66 90                	xchg   %ax,%ax
     bcc:	66 90                	xchg   %ax,%ax
     bce:	66 90                	xchg   %ax,%ax
     bd0:	66 90                	xchg   %ax,%ax
     bd2:	66 90                	xchg   %ax,%ax
     bd4:	66 90                	xchg   %ax,%ax
     bd6:	66 90                	xchg   %ax,%ax
     bd8:	66 90                	xchg   %ax,%ax
     bda:	66 90                	xchg   %ax,%ax
     bdc:	66 90                	xchg   %ax,%ax
     bde:	66 90                	xchg   %ax,%ax

00000be0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
     be0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     be1:	31 c0                	xor    %eax,%eax
{
     be3:	89 e5                	mov    %esp,%ebp
     be5:	53                   	push   %ebx
     be6:	8b 4d 08             	mov    0x8(%ebp),%ecx
     be9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     bec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
     bf0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
     bf4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
     bf7:	83 c0 01             	add    $0x1,%eax
     bfa:	84 d2                	test   %dl,%dl
     bfc:	75 f2                	jne    bf0 <strcpy+0x10>
    ;
  return os;
}
     bfe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c01:	89 c8                	mov    %ecx,%eax
     c03:	c9                   	leave
     c04:	c3                   	ret
     c05:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     c0c:	00 
     c0d:	8d 76 00             	lea    0x0(%esi),%esi

00000c10 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     c10:	55                   	push   %ebp
     c11:	89 e5                	mov    %esp,%ebp
     c13:	53                   	push   %ebx
     c14:	8b 55 08             	mov    0x8(%ebp),%edx
     c17:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     c1a:	0f b6 02             	movzbl (%edx),%eax
     c1d:	84 c0                	test   %al,%al
     c1f:	75 2f                	jne    c50 <strcmp+0x40>
     c21:	eb 4a                	jmp    c6d <strcmp+0x5d>
     c23:	eb 1b                	jmp    c40 <strcmp+0x30>
     c25:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     c2c:	00 
     c2d:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     c34:	00 
     c35:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     c3c:	00 
     c3d:	8d 76 00             	lea    0x0(%esi),%esi
     c40:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
     c44:	83 c2 01             	add    $0x1,%edx
     c47:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
     c4a:	84 c0                	test   %al,%al
     c4c:	74 12                	je     c60 <strcmp+0x50>
     c4e:	89 d9                	mov    %ebx,%ecx
     c50:	0f b6 19             	movzbl (%ecx),%ebx
     c53:	38 c3                	cmp    %al,%bl
     c55:	74 e9                	je     c40 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
     c57:	29 d8                	sub    %ebx,%eax
}
     c59:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c5c:	c9                   	leave
     c5d:	c3                   	ret
     c5e:	66 90                	xchg   %ax,%ax
  return (uchar)*p - (uchar)*q;
     c60:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
     c64:	31 c0                	xor    %eax,%eax
     c66:	29 d8                	sub    %ebx,%eax
}
     c68:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c6b:	c9                   	leave
     c6c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
     c6d:	0f b6 19             	movzbl (%ecx),%ebx
     c70:	31 c0                	xor    %eax,%eax
     c72:	eb e3                	jmp    c57 <strcmp+0x47>
     c74:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     c7b:	00 
     c7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000c80 <strlen>:

uint
strlen(const char *s)
{
     c80:	55                   	push   %ebp
     c81:	89 e5                	mov    %esp,%ebp
     c83:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
     c86:	80 3a 00             	cmpb   $0x0,(%edx)
     c89:	74 15                	je     ca0 <strlen+0x20>
     c8b:	31 c0                	xor    %eax,%eax
     c8d:	8d 76 00             	lea    0x0(%esi),%esi
     c90:	83 c0 01             	add    $0x1,%eax
     c93:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
     c97:	89 c1                	mov    %eax,%ecx
     c99:	75 f5                	jne    c90 <strlen+0x10>
    ;
  return n;
}
     c9b:	89 c8                	mov    %ecx,%eax
     c9d:	5d                   	pop    %ebp
     c9e:	c3                   	ret
     c9f:	90                   	nop
  for(n = 0; s[n]; n++)
     ca0:	31 c9                	xor    %ecx,%ecx
}
     ca2:	5d                   	pop    %ebp
     ca3:	89 c8                	mov    %ecx,%eax
     ca5:	c3                   	ret
     ca6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     cad:	00 
     cae:	66 90                	xchg   %ax,%ax

00000cb0 <memset>:

void*
memset(void *dst, int c, uint n)
{
     cb0:	55                   	push   %ebp
     cb1:	89 e5                	mov    %esp,%ebp
     cb3:	57                   	push   %edi
     cb4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     cb7:	8b 4d 10             	mov    0x10(%ebp),%ecx
     cba:	8b 45 0c             	mov    0xc(%ebp),%eax
     cbd:	89 d7                	mov    %edx,%edi
     cbf:	fc                   	cld
     cc0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     cc2:	8b 7d fc             	mov    -0x4(%ebp),%edi
     cc5:	89 d0                	mov    %edx,%eax
     cc7:	c9                   	leave
     cc8:	c3                   	ret
     cc9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000cd0 <strchr>:

char*
strchr(const char *s, char c)
{
     cd0:	55                   	push   %ebp
     cd1:	89 e5                	mov    %esp,%ebp
     cd3:	8b 45 08             	mov    0x8(%ebp),%eax
     cd6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
     cda:	0f b6 10             	movzbl (%eax),%edx
     cdd:	84 d2                	test   %dl,%dl
     cdf:	75 1a                	jne    cfb <strchr+0x2b>
     ce1:	eb 25                	jmp    d08 <strchr+0x38>
     ce3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     cea:	00 
     ceb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
     cf0:	0f b6 50 01          	movzbl 0x1(%eax),%edx
     cf4:	83 c0 01             	add    $0x1,%eax
     cf7:	84 d2                	test   %dl,%dl
     cf9:	74 0d                	je     d08 <strchr+0x38>
    if(*s == c)
     cfb:	38 d1                	cmp    %dl,%cl
     cfd:	75 f1                	jne    cf0 <strchr+0x20>
      return (char*)s;
  return 0;
}
     cff:	5d                   	pop    %ebp
     d00:	c3                   	ret
     d01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
     d08:	31 c0                	xor    %eax,%eax
}
     d0a:	5d                   	pop    %ebp
     d0b:	c3                   	ret
     d0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000d10 <gets>:

char*
gets(char *buf, int max)
{
     d10:	55                   	push   %ebp
     d11:	89 e5                	mov    %esp,%ebp
     d13:	57                   	push   %edi
     d14:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
     d15:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
     d18:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
     d19:	31 db                	xor    %ebx,%ebx
{
     d1b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
     d1e:	eb 27                	jmp    d47 <gets+0x37>
    cc = read(0, &c, 1);
     d20:	83 ec 04             	sub    $0x4,%esp
     d23:	6a 01                	push   $0x1
     d25:	56                   	push   %esi
     d26:	6a 00                	push   $0x0
     d28:	e8 1e 01 00 00       	call   e4b <read>
    if(cc < 1)
     d2d:	83 c4 10             	add    $0x10,%esp
     d30:	85 c0                	test   %eax,%eax
     d32:	7e 1d                	jle    d51 <gets+0x41>
      break;
    buf[i++] = c;
     d34:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     d38:	8b 55 08             	mov    0x8(%ebp),%edx
     d3b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
     d3f:	3c 0a                	cmp    $0xa,%al
     d41:	74 10                	je     d53 <gets+0x43>
     d43:	3c 0d                	cmp    $0xd,%al
     d45:	74 0c                	je     d53 <gets+0x43>
  for(i=0; i+1 < max; ){
     d47:	89 df                	mov    %ebx,%edi
     d49:	83 c3 01             	add    $0x1,%ebx
     d4c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     d4f:	7c cf                	jl     d20 <gets+0x10>
     d51:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
     d53:	8b 45 08             	mov    0x8(%ebp),%eax
     d56:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
     d5a:	8d 65 f4             	lea    -0xc(%ebp),%esp
     d5d:	5b                   	pop    %ebx
     d5e:	5e                   	pop    %esi
     d5f:	5f                   	pop    %edi
     d60:	5d                   	pop    %ebp
     d61:	c3                   	ret
     d62:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     d69:	00 
     d6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000d70 <stat>:

int
stat(const char *n, struct stat *st)
{
     d70:	55                   	push   %ebp
     d71:	89 e5                	mov    %esp,%ebp
     d73:	56                   	push   %esi
     d74:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     d75:	83 ec 08             	sub    $0x8,%esp
     d78:	6a 00                	push   $0x0
     d7a:	ff 75 08             	push   0x8(%ebp)
     d7d:	e8 f1 00 00 00       	call   e73 <open>
  if(fd < 0)
     d82:	83 c4 10             	add    $0x10,%esp
     d85:	85 c0                	test   %eax,%eax
     d87:	78 27                	js     db0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
     d89:	83 ec 08             	sub    $0x8,%esp
     d8c:	ff 75 0c             	push   0xc(%ebp)
     d8f:	89 c3                	mov    %eax,%ebx
     d91:	50                   	push   %eax
     d92:	e8 f4 00 00 00       	call   e8b <fstat>
  close(fd);
     d97:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
     d9a:	89 c6                	mov    %eax,%esi
  close(fd);
     d9c:	e8 ba 00 00 00       	call   e5b <close>
  return r;
     da1:	83 c4 10             	add    $0x10,%esp
}
     da4:	8d 65 f8             	lea    -0x8(%ebp),%esp
     da7:	89 f0                	mov    %esi,%eax
     da9:	5b                   	pop    %ebx
     daa:	5e                   	pop    %esi
     dab:	5d                   	pop    %ebp
     dac:	c3                   	ret
     dad:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
     db0:	be ff ff ff ff       	mov    $0xffffffff,%esi
     db5:	eb ed                	jmp    da4 <stat+0x34>
     db7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     dbe:	00 
     dbf:	90                   	nop

00000dc0 <atoi>:

int
atoi(const char *s)
{
     dc0:	55                   	push   %ebp
     dc1:	89 e5                	mov    %esp,%ebp
     dc3:	53                   	push   %ebx
     dc4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     dc7:	0f be 02             	movsbl (%edx),%eax
     dca:	8d 48 d0             	lea    -0x30(%eax),%ecx
     dcd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
     dd0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
     dd5:	77 1e                	ja     df5 <atoi+0x35>
     dd7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     dde:	00 
     ddf:	90                   	nop
    n = n*10 + *s++ - '0';
     de0:	83 c2 01             	add    $0x1,%edx
     de3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
     de6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
     dea:	0f be 02             	movsbl (%edx),%eax
     ded:	8d 58 d0             	lea    -0x30(%eax),%ebx
     df0:	80 fb 09             	cmp    $0x9,%bl
     df3:	76 eb                	jbe    de0 <atoi+0x20>
  return n;
}
     df5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     df8:	89 c8                	mov    %ecx,%eax
     dfa:	c9                   	leave
     dfb:	c3                   	ret
     dfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000e00 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
     e00:	55                   	push   %ebp
     e01:	89 e5                	mov    %esp,%ebp
     e03:	57                   	push   %edi
     e04:	8b 45 10             	mov    0x10(%ebp),%eax
     e07:	8b 55 08             	mov    0x8(%ebp),%edx
     e0a:	56                   	push   %esi
     e0b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     e0e:	85 c0                	test   %eax,%eax
     e10:	7e 13                	jle    e25 <memmove+0x25>
     e12:	01 d0                	add    %edx,%eax
  dst = vdst;
     e14:	89 d7                	mov    %edx,%edi
     e16:	66 90                	xchg   %ax,%ax
     e18:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     e1f:	00 
    *dst++ = *src++;
     e20:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
     e21:	39 f8                	cmp    %edi,%eax
     e23:	75 fb                	jne    e20 <memmove+0x20>
  return vdst;
}
     e25:	5e                   	pop    %esi
     e26:	89 d0                	mov    %edx,%eax
     e28:	5f                   	pop    %edi
     e29:	5d                   	pop    %ebp
     e2a:	c3                   	ret

00000e2b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     e2b:	b8 01 00 00 00       	mov    $0x1,%eax
     e30:	cd 40                	int    $0x40
     e32:	c3                   	ret

00000e33 <exit>:
SYSCALL(exit)
     e33:	b8 02 00 00 00       	mov    $0x2,%eax
     e38:	cd 40                	int    $0x40
     e3a:	c3                   	ret

00000e3b <wait>:
SYSCALL(wait)
     e3b:	b8 03 00 00 00       	mov    $0x3,%eax
     e40:	cd 40                	int    $0x40
     e42:	c3                   	ret

00000e43 <pipe>:
SYSCALL(pipe)
     e43:	b8 04 00 00 00       	mov    $0x4,%eax
     e48:	cd 40                	int    $0x40
     e4a:	c3                   	ret

00000e4b <read>:
SYSCALL(read)
     e4b:	b8 05 00 00 00       	mov    $0x5,%eax
     e50:	cd 40                	int    $0x40
     e52:	c3                   	ret

00000e53 <write>:
SYSCALL(write)
     e53:	b8 10 00 00 00       	mov    $0x10,%eax
     e58:	cd 40                	int    $0x40
     e5a:	c3                   	ret

00000e5b <close>:
SYSCALL(close)
     e5b:	b8 15 00 00 00       	mov    $0x15,%eax
     e60:	cd 40                	int    $0x40
     e62:	c3                   	ret

00000e63 <kill>:
SYSCALL(kill)
     e63:	b8 06 00 00 00       	mov    $0x6,%eax
     e68:	cd 40                	int    $0x40
     e6a:	c3                   	ret

00000e6b <exec>:
SYSCALL(exec)
     e6b:	b8 07 00 00 00       	mov    $0x7,%eax
     e70:	cd 40                	int    $0x40
     e72:	c3                   	ret

00000e73 <open>:
SYSCALL(open)
     e73:	b8 0f 00 00 00       	mov    $0xf,%eax
     e78:	cd 40                	int    $0x40
     e7a:	c3                   	ret

00000e7b <mknod>:
SYSCALL(mknod)
     e7b:	b8 11 00 00 00       	mov    $0x11,%eax
     e80:	cd 40                	int    $0x40
     e82:	c3                   	ret

00000e83 <unlink>:
SYSCALL(unlink)
     e83:	b8 12 00 00 00       	mov    $0x12,%eax
     e88:	cd 40                	int    $0x40
     e8a:	c3                   	ret

00000e8b <fstat>:
SYSCALL(fstat)
     e8b:	b8 08 00 00 00       	mov    $0x8,%eax
     e90:	cd 40                	int    $0x40
     e92:	c3                   	ret

00000e93 <link>:
SYSCALL(link)
     e93:	b8 13 00 00 00       	mov    $0x13,%eax
     e98:	cd 40                	int    $0x40
     e9a:	c3                   	ret

00000e9b <mkdir>:
SYSCALL(mkdir)
     e9b:	b8 14 00 00 00       	mov    $0x14,%eax
     ea0:	cd 40                	int    $0x40
     ea2:	c3                   	ret

00000ea3 <chdir>:
SYSCALL(chdir)
     ea3:	b8 09 00 00 00       	mov    $0x9,%eax
     ea8:	cd 40                	int    $0x40
     eaa:	c3                   	ret

00000eab <dup>:
SYSCALL(dup)
     eab:	b8 0a 00 00 00       	mov    $0xa,%eax
     eb0:	cd 40                	int    $0x40
     eb2:	c3                   	ret

00000eb3 <getpid>:
SYSCALL(getpid)
     eb3:	b8 0b 00 00 00       	mov    $0xb,%eax
     eb8:	cd 40                	int    $0x40
     eba:	c3                   	ret

00000ebb <sbrk>:
SYSCALL(sbrk)
     ebb:	b8 0c 00 00 00       	mov    $0xc,%eax
     ec0:	cd 40                	int    $0x40
     ec2:	c3                   	ret

00000ec3 <sleep>:
SYSCALL(sleep)
     ec3:	b8 0d 00 00 00       	mov    $0xd,%eax
     ec8:	cd 40                	int    $0x40
     eca:	c3                   	ret

00000ecb <uptime>:
SYSCALL(uptime)
     ecb:	b8 0e 00 00 00       	mov    $0xe,%eax
     ed0:	cd 40                	int    $0x40
     ed2:	c3                   	ret

00000ed3 <ps>:
SYSCALL(ps)
     ed3:	b8 16 00 00 00       	mov    $0x16,%eax
     ed8:	cd 40                	int    $0x40
     eda:	c3                   	ret

00000edb <chpr>:
SYSCALL(chpr)
     edb:	b8 17 00 00 00       	mov    $0x17,%eax
     ee0:	cd 40                	int    $0x40
     ee2:	c3                   	ret
     ee3:	66 90                	xchg   %ax,%ax
     ee5:	66 90                	xchg   %ax,%ax
     ee7:	66 90                	xchg   %ax,%ax
     ee9:	66 90                	xchg   %ax,%ax
     eeb:	66 90                	xchg   %ax,%ax
     eed:	66 90                	xchg   %ax,%ax
     eef:	66 90                	xchg   %ax,%ax
     ef1:	66 90                	xchg   %ax,%ax
     ef3:	66 90                	xchg   %ax,%ax
     ef5:	66 90                	xchg   %ax,%ax
     ef7:	66 90                	xchg   %ax,%ax
     ef9:	66 90                	xchg   %ax,%ax
     efb:	66 90                	xchg   %ax,%ax
     efd:	66 90                	xchg   %ax,%ax
     eff:	90                   	nop

00000f00 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
     f00:	55                   	push   %ebp
     f01:	89 e5                	mov    %esp,%ebp
     f03:	57                   	push   %edi
     f04:	56                   	push   %esi
     f05:	53                   	push   %ebx
     f06:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
     f08:	89 d1                	mov    %edx,%ecx
{
     f0a:	83 ec 3c             	sub    $0x3c,%esp
     f0d:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  if(sgn && xx < 0){
     f10:	85 d2                	test   %edx,%edx
     f12:	0f 89 98 00 00 00    	jns    fb0 <printint+0xb0>
     f18:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
     f1c:	0f 84 8e 00 00 00    	je     fb0 <printint+0xb0>
    x = -xx;
     f22:	f7 d9                	neg    %ecx
    neg = 1;
     f24:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
     f29:	89 45 c0             	mov    %eax,-0x40(%ebp)
     f2c:	31 f6                	xor    %esi,%esi
     f2e:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     f35:	00 
     f36:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     f3d:	00 
     f3e:	66 90                	xchg   %ax,%ax
  do{
    buf[i++] = digits[x % base];
     f40:	89 c8                	mov    %ecx,%eax
     f42:	31 d2                	xor    %edx,%edx
     f44:	89 f7                	mov    %esi,%edi
     f46:	f7 f3                	div    %ebx
     f48:	8d 76 01             	lea    0x1(%esi),%esi
     f4b:	0f b6 92 70 14 00 00 	movzbl 0x1470(%edx),%edx
     f52:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
     f56:	89 ca                	mov    %ecx,%edx
     f58:	89 c1                	mov    %eax,%ecx
     f5a:	39 da                	cmp    %ebx,%edx
     f5c:	73 e2                	jae    f40 <printint+0x40>
  if(neg)
     f5e:	8b 45 c0             	mov    -0x40(%ebp),%eax
     f61:	85 c0                	test   %eax,%eax
     f63:	74 07                	je     f6c <printint+0x6c>
    buf[i++] = '-';
     f65:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
     f6a:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
     f6c:	8d 5d d8             	lea    -0x28(%ebp),%ebx
     f6f:	8b 75 c4             	mov    -0x3c(%ebp),%esi
     f72:	01 df                	add    %ebx,%edi
     f74:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     f7b:	00 
     f7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    putc(fd, buf[i]);
     f80:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
     f83:	83 ec 04             	sub    $0x4,%esp
     f86:	88 45 d7             	mov    %al,-0x29(%ebp)
     f89:	8d 45 d7             	lea    -0x29(%ebp),%eax
     f8c:	6a 01                	push   $0x1
     f8e:	50                   	push   %eax
     f8f:	56                   	push   %esi
     f90:	e8 be fe ff ff       	call   e53 <write>
  while(--i >= 0)
     f95:	89 f8                	mov    %edi,%eax
     f97:	83 c4 10             	add    $0x10,%esp
     f9a:	83 ef 01             	sub    $0x1,%edi
     f9d:	39 d8                	cmp    %ebx,%eax
     f9f:	75 df                	jne    f80 <printint+0x80>
}
     fa1:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fa4:	5b                   	pop    %ebx
     fa5:	5e                   	pop    %esi
     fa6:	5f                   	pop    %edi
     fa7:	5d                   	pop    %ebp
     fa8:	c3                   	ret
     fa9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
     fb0:	31 c0                	xor    %eax,%eax
     fb2:	e9 72 ff ff ff       	jmp    f29 <printint+0x29>
     fb7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     fbe:	00 
     fbf:	90                   	nop

00000fc0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
     fc0:	55                   	push   %ebp
     fc1:	89 e5                	mov    %esp,%ebp
     fc3:	57                   	push   %edi
     fc4:	56                   	push   %esi
     fc5:	53                   	push   %ebx
     fc6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     fc9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
     fcc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
     fcf:	0f b6 13             	movzbl (%ebx),%edx
     fd2:	83 c3 01             	add    $0x1,%ebx
     fd5:	84 d2                	test   %dl,%dl
     fd7:	0f 84 a0 00 00 00    	je     107d <printf+0xbd>
     fdd:	8d 45 10             	lea    0x10(%ebp),%eax
     fe0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c = fmt[i] & 0xff;
     fe3:	8b 7d d4             	mov    -0x2c(%ebp),%edi
     fe6:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
     fe9:	eb 28                	jmp    1013 <printf+0x53>
     feb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
     ff0:	83 ec 04             	sub    $0x4,%esp
     ff3:	8d 45 e7             	lea    -0x19(%ebp),%eax
     ff6:	88 55 e7             	mov    %dl,-0x19(%ebp)
  for(i = 0; fmt[i]; i++){
     ff9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
     ffc:	6a 01                	push   $0x1
     ffe:	50                   	push   %eax
     fff:	56                   	push   %esi
    1000:	e8 4e fe ff ff       	call   e53 <write>
  for(i = 0; fmt[i]; i++){
    1005:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    1009:	83 c4 10             	add    $0x10,%esp
    100c:	84 d2                	test   %dl,%dl
    100e:	74 6d                	je     107d <printf+0xbd>
    c = fmt[i] & 0xff;
    1010:	0f b6 c2             	movzbl %dl,%eax
      if(c == '%'){
    1013:	83 f8 25             	cmp    $0x25,%eax
    1016:	75 d8                	jne    ff0 <printf+0x30>
  for(i = 0; fmt[i]; i++){
    1018:	0f b6 13             	movzbl (%ebx),%edx
    101b:	84 d2                	test   %dl,%dl
    101d:	74 5e                	je     107d <printf+0xbd>
    c = fmt[i] & 0xff;
    101f:	0f b6 c2             	movzbl %dl,%eax
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
    1022:	80 fa 25             	cmp    $0x25,%dl
    1025:	0f 84 1d 01 00 00    	je     1148 <printf+0x188>
    102b:	83 e8 63             	sub    $0x63,%eax
    102e:	83 f8 15             	cmp    $0x15,%eax
    1031:	77 0d                	ja     1040 <printf+0x80>
    1033:	ff 24 85 18 14 00 00 	jmp    *0x1418(,%eax,4)
    103a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    1040:	83 ec 04             	sub    $0x4,%esp
    1043:	8d 4d e7             	lea    -0x19(%ebp),%ecx
    1046:	88 55 d0             	mov    %dl,-0x30(%ebp)
        ap++;
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
    1049:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
    104d:	6a 01                	push   $0x1
    104f:	51                   	push   %ecx
    1050:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    1053:	56                   	push   %esi
    1054:	e8 fa fd ff ff       	call   e53 <write>
        putc(fd, c);
    1059:	0f b6 55 d0          	movzbl -0x30(%ebp),%edx
  write(fd, &c, 1);
    105d:	83 c4 0c             	add    $0xc,%esp
    1060:	88 55 e7             	mov    %dl,-0x19(%ebp)
    1063:	6a 01                	push   $0x1
    1065:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
    1068:	51                   	push   %ecx
    1069:	56                   	push   %esi
    106a:	e8 e4 fd ff ff       	call   e53 <write>
  for(i = 0; fmt[i]; i++){
    106f:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
    1073:	83 c3 02             	add    $0x2,%ebx
    1076:	83 c4 10             	add    $0x10,%esp
    1079:	84 d2                	test   %dl,%dl
    107b:	75 93                	jne    1010 <printf+0x50>
      }
      state = 0;
    }
  }
}
    107d:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1080:	5b                   	pop    %ebx
    1081:	5e                   	pop    %esi
    1082:	5f                   	pop    %edi
    1083:	5d                   	pop    %ebp
    1084:	c3                   	ret
    1085:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    1088:	83 ec 0c             	sub    $0xc,%esp
    108b:	8b 17                	mov    (%edi),%edx
    108d:	b9 10 00 00 00       	mov    $0x10,%ecx
    1092:	89 f0                	mov    %esi,%eax
    1094:	6a 00                	push   $0x0
        ap++;
    1096:	83 c7 04             	add    $0x4,%edi
        printint(fd, *ap, 16, 0);
    1099:	e8 62 fe ff ff       	call   f00 <printint>
  for(i = 0; fmt[i]; i++){
    109e:	eb cf                	jmp    106f <printf+0xaf>
        s = (char*)*ap;
    10a0:	8b 07                	mov    (%edi),%eax
        ap++;
    10a2:	83 c7 04             	add    $0x4,%edi
        if(s == 0)
    10a5:	85 c0                	test   %eax,%eax
    10a7:	0f 84 b3 00 00 00    	je     1160 <printf+0x1a0>
        while(*s != 0){
    10ad:	0f b6 10             	movzbl (%eax),%edx
    10b0:	84 d2                	test   %dl,%dl
    10b2:	0f 84 ba 00 00 00    	je     1172 <printf+0x1b2>
    10b8:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    10bb:	89 c7                	mov    %eax,%edi
    10bd:	89 d0                	mov    %edx,%eax
    10bf:	8d 4d e7             	lea    -0x19(%ebp),%ecx
    10c2:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    10c5:	89 fb                	mov    %edi,%ebx
    10c7:	89 cf                	mov    %ecx,%edi
    10c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
    10d0:	83 ec 04             	sub    $0x4,%esp
    10d3:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
    10d6:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
    10d9:	6a 01                	push   $0x1
    10db:	57                   	push   %edi
    10dc:	56                   	push   %esi
    10dd:	e8 71 fd ff ff       	call   e53 <write>
        while(*s != 0){
    10e2:	0f b6 03             	movzbl (%ebx),%eax
    10e5:	83 c4 10             	add    $0x10,%esp
    10e8:	84 c0                	test   %al,%al
    10ea:	75 e4                	jne    10d0 <printf+0x110>
    10ec:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  for(i = 0; fmt[i]; i++){
    10ef:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
    10f3:	83 c3 02             	add    $0x2,%ebx
    10f6:	84 d2                	test   %dl,%dl
    10f8:	0f 85 e5 fe ff ff    	jne    fe3 <printf+0x23>
    10fe:	e9 7a ff ff ff       	jmp    107d <printf+0xbd>
    1103:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    1108:	83 ec 0c             	sub    $0xc,%esp
    110b:	8b 17                	mov    (%edi),%edx
    110d:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1112:	89 f0                	mov    %esi,%eax
    1114:	6a 01                	push   $0x1
        ap++;
    1116:	83 c7 04             	add    $0x4,%edi
        printint(fd, *ap, 10, 1);
    1119:	e8 e2 fd ff ff       	call   f00 <printint>
  for(i = 0; fmt[i]; i++){
    111e:	e9 4c ff ff ff       	jmp    106f <printf+0xaf>
    1123:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    1128:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    112a:	83 ec 04             	sub    $0x4,%esp
    112d:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        ap++;
    1130:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
    1133:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1136:	6a 01                	push   $0x1
    1138:	51                   	push   %ecx
    1139:	56                   	push   %esi
    113a:	e8 14 fd ff ff       	call   e53 <write>
  for(i = 0; fmt[i]; i++){
    113f:	e9 2b ff ff ff       	jmp    106f <printf+0xaf>
    1144:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
    1148:	83 ec 04             	sub    $0x4,%esp
    114b:	88 55 e7             	mov    %dl,-0x19(%ebp)
    114e:	8d 4d e7             	lea    -0x19(%ebp),%ecx
    1151:	6a 01                	push   $0x1
    1153:	e9 10 ff ff ff       	jmp    1068 <printf+0xa8>
    1158:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    115f:	00 
          s = "(null)";
    1160:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    1163:	b8 28 00 00 00       	mov    $0x28,%eax
    1168:	bf df 13 00 00       	mov    $0x13df,%edi
    116d:	e9 4d ff ff ff       	jmp    10bf <printf+0xff>
  for(i = 0; fmt[i]; i++){
    1172:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
    1176:	83 c3 02             	add    $0x2,%ebx
    1179:	84 d2                	test   %dl,%dl
    117b:	0f 85 8f fe ff ff    	jne    1010 <printf+0x50>
    1181:	e9 f7 fe ff ff       	jmp    107d <printf+0xbd>
    1186:	66 90                	xchg   %ax,%ax
    1188:	66 90                	xchg   %ax,%ax
    118a:	66 90                	xchg   %ax,%ax
    118c:	66 90                	xchg   %ax,%ax
    118e:	66 90                	xchg   %ax,%ax
    1190:	66 90                	xchg   %ax,%ax
    1192:	66 90                	xchg   %ax,%ax
    1194:	66 90                	xchg   %ax,%ax
    1196:	66 90                	xchg   %ax,%ax
    1198:	66 90                	xchg   %ax,%ax
    119a:	66 90                	xchg   %ax,%ax
    119c:	66 90                	xchg   %ax,%ax
    119e:	66 90                	xchg   %ax,%ax

000011a0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    11a0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    11a1:	a1 04 15 00 00       	mov    0x1504,%eax
{
    11a6:	89 e5                	mov    %esp,%ebp
    11a8:	57                   	push   %edi
    11a9:	56                   	push   %esi
    11aa:	53                   	push   %ebx
    11ab:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    11ae:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    11b1:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    11b8:	00 
    11b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11c0:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    11c2:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    11c4:	39 ca                	cmp    %ecx,%edx
    11c6:	73 30                	jae    11f8 <free+0x58>
    11c8:	39 c1                	cmp    %eax,%ecx
    11ca:	72 04                	jb     11d0 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    11cc:	39 c2                	cmp    %eax,%edx
    11ce:	72 f0                	jb     11c0 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
    11d0:	8b 73 fc             	mov    -0x4(%ebx),%esi
    11d3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    11d6:	39 f8                	cmp    %edi,%eax
    11d8:	74 36                	je     1210 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
    11da:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    11dd:	8b 42 04             	mov    0x4(%edx),%eax
    11e0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    11e3:	39 f1                	cmp    %esi,%ecx
    11e5:	74 40                	je     1227 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
    11e7:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
    11e9:	5b                   	pop    %ebx
  freep = p;
    11ea:	89 15 04 15 00 00    	mov    %edx,0x1504
}
    11f0:	5e                   	pop    %esi
    11f1:	5f                   	pop    %edi
    11f2:	5d                   	pop    %ebp
    11f3:	c3                   	ret
    11f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    11f8:	39 c2                	cmp    %eax,%edx
    11fa:	72 c4                	jb     11c0 <free+0x20>
    11fc:	39 c1                	cmp    %eax,%ecx
    11fe:	73 c0                	jae    11c0 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
    1200:	8b 73 fc             	mov    -0x4(%ebx),%esi
    1203:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    1206:	39 f8                	cmp    %edi,%eax
    1208:	75 d0                	jne    11da <free+0x3a>
    120a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
    1210:	03 70 04             	add    0x4(%eax),%esi
    1213:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1216:	8b 02                	mov    (%edx),%eax
    1218:	8b 00                	mov    (%eax),%eax
    121a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
    121d:	8b 42 04             	mov    0x4(%edx),%eax
    1220:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    1223:	39 f1                	cmp    %esi,%ecx
    1225:	75 c0                	jne    11e7 <free+0x47>
    p->s.size += bp->s.size;
    1227:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
    122a:	89 15 04 15 00 00    	mov    %edx,0x1504
    p->s.size += bp->s.size;
    1230:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
    1233:	8b 4b f8             	mov    -0x8(%ebx),%ecx
    1236:	89 0a                	mov    %ecx,(%edx)
}
    1238:	5b                   	pop    %ebx
    1239:	5e                   	pop    %esi
    123a:	5f                   	pop    %edi
    123b:	5d                   	pop    %ebp
    123c:	c3                   	ret
    123d:	8d 76 00             	lea    0x0(%esi),%esi

00001240 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1240:	55                   	push   %ebp
    1241:	89 e5                	mov    %esp,%ebp
    1243:	57                   	push   %edi
    1244:	56                   	push   %esi
    1245:	53                   	push   %ebx
    1246:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1249:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    124c:	8b 15 04 15 00 00    	mov    0x1504,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1252:	8d 78 07             	lea    0x7(%eax),%edi
    1255:	c1 ef 03             	shr    $0x3,%edi
    1258:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    125b:	85 d2                	test   %edx,%edx
    125d:	0f 84 8d 00 00 00    	je     12f0 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1263:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    1265:	8b 48 04             	mov    0x4(%eax),%ecx
    1268:	39 f9                	cmp    %edi,%ecx
    126a:	73 64                	jae    12d0 <malloc+0x90>
  if(nu < 4096)
    126c:	bb 00 10 00 00       	mov    $0x1000,%ebx
    1271:	39 df                	cmp    %ebx,%edi
    1273:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    1276:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    127d:	eb 0a                	jmp    1289 <malloc+0x49>
    127f:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1280:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    1282:	8b 48 04             	mov    0x4(%eax),%ecx
    1285:	39 f9                	cmp    %edi,%ecx
    1287:	73 47                	jae    12d0 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1289:	89 c2                	mov    %eax,%edx
    128b:	39 05 04 15 00 00    	cmp    %eax,0x1504
    1291:	75 ed                	jne    1280 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
    1293:	83 ec 0c             	sub    $0xc,%esp
    1296:	56                   	push   %esi
    1297:	e8 1f fc ff ff       	call   ebb <sbrk>
  if(p == (char*)-1)
    129c:	83 c4 10             	add    $0x10,%esp
    129f:	83 f8 ff             	cmp    $0xffffffff,%eax
    12a2:	74 1c                	je     12c0 <malloc+0x80>
  hp->s.size = nu;
    12a4:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    12a7:	83 ec 0c             	sub    $0xc,%esp
    12aa:	83 c0 08             	add    $0x8,%eax
    12ad:	50                   	push   %eax
    12ae:	e8 ed fe ff ff       	call   11a0 <free>
  return freep;
    12b3:	8b 15 04 15 00 00    	mov    0x1504,%edx
      if((p = morecore(nunits)) == 0)
    12b9:	83 c4 10             	add    $0x10,%esp
    12bc:	85 d2                	test   %edx,%edx
    12be:	75 c0                	jne    1280 <malloc+0x40>
        return 0;
  }
}
    12c0:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    12c3:	31 c0                	xor    %eax,%eax
}
    12c5:	5b                   	pop    %ebx
    12c6:	5e                   	pop    %esi
    12c7:	5f                   	pop    %edi
    12c8:	5d                   	pop    %ebp
    12c9:	c3                   	ret
    12ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    12d0:	39 cf                	cmp    %ecx,%edi
    12d2:	74 4c                	je     1320 <malloc+0xe0>
        p->s.size -= nunits;
    12d4:	29 f9                	sub    %edi,%ecx
    12d6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    12d9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    12dc:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    12df:	89 15 04 15 00 00    	mov    %edx,0x1504
}
    12e5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    12e8:	83 c0 08             	add    $0x8,%eax
}
    12eb:	5b                   	pop    %ebx
    12ec:	5e                   	pop    %esi
    12ed:	5f                   	pop    %edi
    12ee:	5d                   	pop    %ebp
    12ef:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
    12f0:	c7 05 04 15 00 00 08 	movl   $0x1508,0x1504
    12f7:	15 00 00 
    base.s.size = 0;
    12fa:	b8 08 15 00 00       	mov    $0x1508,%eax
    base.s.ptr = freep = prevp = &base;
    12ff:	c7 05 08 15 00 00 08 	movl   $0x1508,0x1508
    1306:	15 00 00 
    base.s.size = 0;
    1309:	c7 05 0c 15 00 00 00 	movl   $0x0,0x150c
    1310:	00 00 00 
    if(p->s.size >= nunits){
    1313:	e9 54 ff ff ff       	jmp    126c <malloc+0x2c>
    1318:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    131f:	00 
        prevp->s.ptr = p->s.ptr;
    1320:	8b 08                	mov    (%eax),%ecx
    1322:	89 0a                	mov    %ecx,(%edx)
    1324:	eb b9                	jmp    12df <malloc+0x9f>
