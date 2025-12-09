
_init:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:

// init: The initial user-level program

int
main(void)
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	53                   	push   %ebx
   e:	51                   	push   %ecx
  // --- Setup console as original init does ---
  if(open("console", O_RDWR) < 0){
   f:	83 ec 08             	sub    $0x8,%esp
  12:	6a 02                	push   $0x2
  14:	68 88 09 00 00       	push   $0x988
  19:	e8 b5 04 00 00       	call   4d3 <open>
  1e:	83 c4 10             	add    $0x10,%esp
  21:	85 c0                	test   %eax,%eax
  23:	0f 88 6f 01 00 00    	js     198 <main+0x198>
    mknod("console", 1, 1);
    open("console", O_RDWR);
  }
  // Duplicate descriptors for stdout and stderr
  dup(0);
  29:	83 ec 0c             	sub    $0xc,%esp
  2c:	6a 00                	push   $0x0
  2e:	e8 d8 04 00 00       	call   50b <dup>
  dup(0);
  33:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  3a:	e8 cc 04 00 00       	call   50b <dup>

  // --- Your added code to create processes with different priorities ---
  printf(1, "INIT.C STARTED!\n");
  3f:	5b                   	pop    %ebx
  40:	58                   	pop    %eax
  41:	68 90 09 00 00       	push   $0x990
  46:	6a 01                	push   $0x1
  48:	e8 d3 05 00 00       	call   620 <printf>
  printf(1, "Starting high and low priority processes...\n");
  4d:	58                   	pop    %eax
  4e:	5a                   	pop    %edx
  4f:	68 1c 0a 00 00       	push   $0xa1c
  54:	6a 01                	push   $0x1
  56:	e8 c5 05 00 00       	call   620 <printf>

  int i;
  int pidHigh = fork();
  5b:	e8 2b 04 00 00       	call   48b <fork>
  if(pidHigh < 0){
  60:	83 c4 10             	add    $0x10,%esp
  int pidHigh = fork();
  63:	89 c3                	mov    %eax,%ebx
  if(pidHigh < 0){
  65:	85 c0                	test   %eax,%eax
  67:	0f 88 15 01 00 00    	js     182 <main+0x182>
    printf(1, "ERROR: fork() for high-priority child failed\n");
  } else if(pidHigh == 0) {
  6d:	0f 84 7e 00 00 00    	je     f1 <main+0xf1>
      }
    }
    exit();
  }

  int pidLow = fork();
  73:	e8 13 04 00 00       	call   48b <fork>
  78:	89 c3                	mov    %eax,%ebx
  if(pidLow < 0){
  7a:	85 c0                	test   %eax,%eax
  7c:	0f 88 99 01 00 00    	js     21b <main+0x21b>
    printf(1, "ERROR: fork() for low-priority child failed\n");
  } else if(pidLow == 0) {
  82:	0f 84 35 01 00 00    	je     1bd <main+0x1bd>
      }
    }
    exit();
  }

  printf(1, "Parent process created both children. Now launching shell.\n");
  88:	50                   	push   %eax
  89:	50                   	push   %eax
  8a:	68 fc 0a 00 00       	push   $0xafc
  8f:	6a 01                	push   $0x1
  91:	e8 8a 05 00 00       	call   620 <printf>
  96:	83 c4 10             	add    $0x10,%esp
  99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

  // --- Original infinite loop to launch the shell repeatedly ---
  for(;;){
    printf(1, "init: starting sh\n");
  a0:	83 ec 08             	sub    $0x8,%esp
  a3:	68 cb 09 00 00       	push   $0x9cb
  a8:	6a 01                	push   $0x1
  aa:	e8 71 05 00 00       	call   620 <printf>
    int pid = fork();
  af:	e8 d7 03 00 00       	call   48b <fork>
    if(pid < 0){
  b4:	83 c4 10             	add    $0x10,%esp
    int pid = fork();
  b7:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
  b9:	85 c0                	test   %eax,%eax
  bb:	0f 88 8a 00 00 00    	js     14b <main+0x14b>
      printf(1, "init: fork failed\n");
      exit();
    }
    if(pid == 0){
  c1:	0f 84 97 00 00 00    	je     15e <main+0x15e>
  c7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  ce:	00 
  cf:	90                   	nop
      exit();
    }

    // Wait for shell to exit; if it does, loop again and re-launch
    int wpid;
    while((wpid=wait()) >= 0 && wpid != pid){
  d0:	e8 c6 03 00 00       	call   49b <wait>
  d5:	85 c0                	test   %eax,%eax
  d7:	78 c7                	js     a0 <main+0xa0>
  d9:	39 c3                	cmp    %eax,%ebx
  db:	74 c3                	je     a0 <main+0xa0>
      printf(1, "zombie!\n");
  dd:	83 ec 08             	sub    $0x8,%esp
  e0:	68 0a 0a 00 00       	push   $0xa0a
  e5:	6a 01                	push   $0x1
  e7:	e8 34 05 00 00       	call   620 <printf>
  ec:	83 c4 10             	add    $0x10,%esp
  ef:	eb df                	jmp    d0 <main+0xd0>
    printf(1, "High-priority process created! PID=%d\n", getpid());
  f1:	e8 1d 04 00 00       	call   513 <getpid>
  f6:	52                   	push   %edx
  f7:	50                   	push   %eax
  f8:	68 7c 0a 00 00       	push   $0xa7c
  fd:	6a 01                	push   $0x1
  ff:	e8 1c 05 00 00       	call   620 <printf>
    chpr(getpid(), 20);  // "Higher priority" if your scheduler picks larger numbers first
 104:	e8 0a 04 00 00       	call   513 <getpid>
 109:	59                   	pop    %ecx
 10a:	5a                   	pop    %edx
 10b:	6a 14                	push   $0x14
 10d:	50                   	push   %eax
 10e:	e8 28 04 00 00       	call   53b <chpr>
 113:	83 c4 10             	add    $0x10,%esp
 116:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 11d:	00 
 11e:	66 90                	xchg   %ax,%ax
 120:	69 c3 a5 46 8d ae    	imul   $0xae8d46a5,%ebx,%eax
 126:	c1 c8 07             	ror    $0x7,%eax
      if(i % 10000000 == 0) {
 129:	3d ad 01 00 00       	cmp    $0x1ad,%eax
 12e:	77 16                	ja     146 <main+0x146>
        printf(1, "[HIGH  PID=%d] i=%d\n", getpid(), i);
 130:	e8 de 03 00 00       	call   513 <getpid>
 135:	53                   	push   %ebx
 136:	50                   	push   %eax
 137:	68 a1 09 00 00       	push   $0x9a1
 13c:	6a 01                	push   $0x1
 13e:	e8 dd 04 00 00       	call   620 <printf>
 143:	83 c4 10             	add    $0x10,%esp
    for(i = 0;; i++){
 146:	83 c3 01             	add    $0x1,%ebx
      if(i % 10000000 == 0) {
 149:	eb d5                	jmp    120 <main+0x120>
      printf(1, "init: fork failed\n");
 14b:	53                   	push   %ebx
 14c:	53                   	push   %ebx
 14d:	68 de 09 00 00       	push   $0x9de
 152:	6a 01                	push   $0x1
 154:	e8 c7 04 00 00       	call   620 <printf>
      exit();
 159:	e8 35 03 00 00       	call   493 <exit>
      exec("sh", argv);
 15e:	50                   	push   %eax
 15f:	50                   	push   %eax
 160:	68 a4 0b 00 00       	push   $0xba4
 165:	68 f1 09 00 00       	push   $0x9f1
 16a:	e8 5c 03 00 00       	call   4cb <exec>
      printf(1, "init: exec sh failed\n");
 16f:	5a                   	pop    %edx
 170:	59                   	pop    %ecx
 171:	68 f4 09 00 00       	push   $0x9f4
 176:	6a 01                	push   $0x1
 178:	e8 a3 04 00 00       	call   620 <printf>
      exit();
 17d:	e8 11 03 00 00       	call   493 <exit>
    printf(1, "ERROR: fork() for high-priority child failed\n");
 182:	51                   	push   %ecx
 183:	51                   	push   %ecx
 184:	68 4c 0a 00 00       	push   $0xa4c
 189:	6a 01                	push   $0x1
 18b:	e8 90 04 00 00       	call   620 <printf>
 190:	83 c4 10             	add    $0x10,%esp
 193:	e9 db fe ff ff       	jmp    73 <main+0x73>
    mknod("console", 1, 1);
 198:	51                   	push   %ecx
 199:	6a 01                	push   $0x1
 19b:	6a 01                	push   $0x1
 19d:	68 88 09 00 00       	push   $0x988
 1a2:	e8 34 03 00 00       	call   4db <mknod>
    open("console", O_RDWR);
 1a7:	5b                   	pop    %ebx
 1a8:	58                   	pop    %eax
 1a9:	6a 02                	push   $0x2
 1ab:	68 88 09 00 00       	push   $0x988
 1b0:	e8 1e 03 00 00       	call   4d3 <open>
 1b5:	83 c4 10             	add    $0x10,%esp
 1b8:	e9 6c fe ff ff       	jmp    29 <main+0x29>
    printf(1, "Low-priority process created! PID=%d\n", getpid());
 1bd:	e8 51 03 00 00       	call   513 <getpid>
 1c2:	52                   	push   %edx
 1c3:	50                   	push   %eax
 1c4:	68 d4 0a 00 00       	push   $0xad4
 1c9:	6a 01                	push   $0x1
 1cb:	e8 50 04 00 00       	call   620 <printf>
    chpr(getpid(), 5);   // "Lower priority"
 1d0:	e8 3e 03 00 00       	call   513 <getpid>
 1d5:	59                   	pop    %ecx
 1d6:	5a                   	pop    %edx
 1d7:	6a 05                	push   $0x5
 1d9:	50                   	push   %eax
 1da:	e8 5c 03 00 00       	call   53b <chpr>
 1df:	83 c4 10             	add    $0x10,%esp
 1e2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1e9:	00 
 1ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1f0:	69 c3 a5 46 8d ae    	imul   $0xae8d46a5,%ebx,%eax
 1f6:	c1 c8 07             	ror    $0x7,%eax
      if(i % 10000000 == 0) {
 1f9:	3d ad 01 00 00       	cmp    $0x1ad,%eax
 1fe:	77 16                	ja     216 <main+0x216>
        printf(1, "[LOW   PID=%d] i=%d\n", getpid(), i);
 200:	e8 0e 03 00 00       	call   513 <getpid>
 205:	53                   	push   %ebx
 206:	50                   	push   %eax
 207:	68 b6 09 00 00       	push   $0x9b6
 20c:	6a 01                	push   $0x1
 20e:	e8 0d 04 00 00       	call   620 <printf>
 213:	83 c4 10             	add    $0x10,%esp
    for(i = 0;; i++){
 216:	83 c3 01             	add    $0x1,%ebx
      if(i % 10000000 == 0) {
 219:	eb d5                	jmp    1f0 <main+0x1f0>
    printf(1, "ERROR: fork() for low-priority child failed\n");
 21b:	51                   	push   %ecx
 21c:	51                   	push   %ecx
 21d:	68 a4 0a 00 00       	push   $0xaa4
 222:	6a 01                	push   $0x1
 224:	e8 f7 03 00 00       	call   620 <printf>
 229:	83 c4 10             	add    $0x10,%esp
 22c:	e9 57 fe ff ff       	jmp    88 <main+0x88>
 231:	66 90                	xchg   %ax,%ax
 233:	66 90                	xchg   %ax,%ax
 235:	66 90                	xchg   %ax,%ax
 237:	66 90                	xchg   %ax,%ax
 239:	66 90                	xchg   %ax,%ax
 23b:	66 90                	xchg   %ax,%ax
 23d:	66 90                	xchg   %ax,%ax
 23f:	90                   	nop

00000240 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 240:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 241:	31 c0                	xor    %eax,%eax
{
 243:	89 e5                	mov    %esp,%ebp
 245:	53                   	push   %ebx
 246:	8b 4d 08             	mov    0x8(%ebp),%ecx
 249:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 24c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 250:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 254:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 257:	83 c0 01             	add    $0x1,%eax
 25a:	84 d2                	test   %dl,%dl
 25c:	75 f2                	jne    250 <strcpy+0x10>
    ;
  return os;
}
 25e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 261:	89 c8                	mov    %ecx,%eax
 263:	c9                   	leave
 264:	c3                   	ret
 265:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 26c:	00 
 26d:	8d 76 00             	lea    0x0(%esi),%esi

00000270 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 270:	55                   	push   %ebp
 271:	89 e5                	mov    %esp,%ebp
 273:	53                   	push   %ebx
 274:	8b 55 08             	mov    0x8(%ebp),%edx
 277:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 27a:	0f b6 02             	movzbl (%edx),%eax
 27d:	84 c0                	test   %al,%al
 27f:	75 2f                	jne    2b0 <strcmp+0x40>
 281:	eb 4a                	jmp    2cd <strcmp+0x5d>
 283:	eb 1b                	jmp    2a0 <strcmp+0x30>
 285:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 28c:	00 
 28d:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 294:	00 
 295:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 29c:	00 
 29d:	8d 76 00             	lea    0x0(%esi),%esi
 2a0:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 2a4:	83 c2 01             	add    $0x1,%edx
 2a7:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 2aa:	84 c0                	test   %al,%al
 2ac:	74 12                	je     2c0 <strcmp+0x50>
 2ae:	89 d9                	mov    %ebx,%ecx
 2b0:	0f b6 19             	movzbl (%ecx),%ebx
 2b3:	38 c3                	cmp    %al,%bl
 2b5:	74 e9                	je     2a0 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
 2b7:	29 d8                	sub    %ebx,%eax
}
 2b9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2bc:	c9                   	leave
 2bd:	c3                   	ret
 2be:	66 90                	xchg   %ax,%ax
  return (uchar)*p - (uchar)*q;
 2c0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 2c4:	31 c0                	xor    %eax,%eax
 2c6:	29 d8                	sub    %ebx,%eax
}
 2c8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2cb:	c9                   	leave
 2cc:	c3                   	ret
  return (uchar)*p - (uchar)*q;
 2cd:	0f b6 19             	movzbl (%ecx),%ebx
 2d0:	31 c0                	xor    %eax,%eax
 2d2:	eb e3                	jmp    2b7 <strcmp+0x47>
 2d4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 2db:	00 
 2dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000002e0 <strlen>:

uint
strlen(const char *s)
{
 2e0:	55                   	push   %ebp
 2e1:	89 e5                	mov    %esp,%ebp
 2e3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 2e6:	80 3a 00             	cmpb   $0x0,(%edx)
 2e9:	74 15                	je     300 <strlen+0x20>
 2eb:	31 c0                	xor    %eax,%eax
 2ed:	8d 76 00             	lea    0x0(%esi),%esi
 2f0:	83 c0 01             	add    $0x1,%eax
 2f3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 2f7:	89 c1                	mov    %eax,%ecx
 2f9:	75 f5                	jne    2f0 <strlen+0x10>
    ;
  return n;
}
 2fb:	89 c8                	mov    %ecx,%eax
 2fd:	5d                   	pop    %ebp
 2fe:	c3                   	ret
 2ff:	90                   	nop
  for(n = 0; s[n]; n++)
 300:	31 c9                	xor    %ecx,%ecx
}
 302:	5d                   	pop    %ebp
 303:	89 c8                	mov    %ecx,%eax
 305:	c3                   	ret
 306:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 30d:	00 
 30e:	66 90                	xchg   %ax,%ax

00000310 <memset>:

void*
memset(void *dst, int c, uint n)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	57                   	push   %edi
 314:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 317:	8b 4d 10             	mov    0x10(%ebp),%ecx
 31a:	8b 45 0c             	mov    0xc(%ebp),%eax
 31d:	89 d7                	mov    %edx,%edi
 31f:	fc                   	cld
 320:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 322:	8b 7d fc             	mov    -0x4(%ebp),%edi
 325:	89 d0                	mov    %edx,%eax
 327:	c9                   	leave
 328:	c3                   	ret
 329:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000330 <strchr>:

char*
strchr(const char *s, char c)
{
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	8b 45 08             	mov    0x8(%ebp),%eax
 336:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 33a:	0f b6 10             	movzbl (%eax),%edx
 33d:	84 d2                	test   %dl,%dl
 33f:	75 1a                	jne    35b <strchr+0x2b>
 341:	eb 25                	jmp    368 <strchr+0x38>
 343:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 34a:	00 
 34b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 350:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 354:	83 c0 01             	add    $0x1,%eax
 357:	84 d2                	test   %dl,%dl
 359:	74 0d                	je     368 <strchr+0x38>
    if(*s == c)
 35b:	38 d1                	cmp    %dl,%cl
 35d:	75 f1                	jne    350 <strchr+0x20>
      return (char*)s;
  return 0;
}
 35f:	5d                   	pop    %ebp
 360:	c3                   	ret
 361:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 368:	31 c0                	xor    %eax,%eax
}
 36a:	5d                   	pop    %ebp
 36b:	c3                   	ret
 36c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000370 <gets>:

char*
gets(char *buf, int max)
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	57                   	push   %edi
 374:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 375:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
 378:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 379:	31 db                	xor    %ebx,%ebx
{
 37b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 37e:	eb 27                	jmp    3a7 <gets+0x37>
    cc = read(0, &c, 1);
 380:	83 ec 04             	sub    $0x4,%esp
 383:	6a 01                	push   $0x1
 385:	56                   	push   %esi
 386:	6a 00                	push   $0x0
 388:	e8 1e 01 00 00       	call   4ab <read>
    if(cc < 1)
 38d:	83 c4 10             	add    $0x10,%esp
 390:	85 c0                	test   %eax,%eax
 392:	7e 1d                	jle    3b1 <gets+0x41>
      break;
    buf[i++] = c;
 394:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 398:	8b 55 08             	mov    0x8(%ebp),%edx
 39b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 39f:	3c 0a                	cmp    $0xa,%al
 3a1:	74 10                	je     3b3 <gets+0x43>
 3a3:	3c 0d                	cmp    $0xd,%al
 3a5:	74 0c                	je     3b3 <gets+0x43>
  for(i=0; i+1 < max; ){
 3a7:	89 df                	mov    %ebx,%edi
 3a9:	83 c3 01             	add    $0x1,%ebx
 3ac:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 3af:	7c cf                	jl     380 <gets+0x10>
 3b1:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
 3b3:	8b 45 08             	mov    0x8(%ebp),%eax
 3b6:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
 3ba:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3bd:	5b                   	pop    %ebx
 3be:	5e                   	pop    %esi
 3bf:	5f                   	pop    %edi
 3c0:	5d                   	pop    %ebp
 3c1:	c3                   	ret
 3c2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3c9:	00 
 3ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000003d0 <stat>:

int
stat(const char *n, struct stat *st)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	56                   	push   %esi
 3d4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 3d5:	83 ec 08             	sub    $0x8,%esp
 3d8:	6a 00                	push   $0x0
 3da:	ff 75 08             	push   0x8(%ebp)
 3dd:	e8 f1 00 00 00       	call   4d3 <open>
  if(fd < 0)
 3e2:	83 c4 10             	add    $0x10,%esp
 3e5:	85 c0                	test   %eax,%eax
 3e7:	78 27                	js     410 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 3e9:	83 ec 08             	sub    $0x8,%esp
 3ec:	ff 75 0c             	push   0xc(%ebp)
 3ef:	89 c3                	mov    %eax,%ebx
 3f1:	50                   	push   %eax
 3f2:	e8 f4 00 00 00       	call   4eb <fstat>
  close(fd);
 3f7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 3fa:	89 c6                	mov    %eax,%esi
  close(fd);
 3fc:	e8 ba 00 00 00       	call   4bb <close>
  return r;
 401:	83 c4 10             	add    $0x10,%esp
}
 404:	8d 65 f8             	lea    -0x8(%ebp),%esp
 407:	89 f0                	mov    %esi,%eax
 409:	5b                   	pop    %ebx
 40a:	5e                   	pop    %esi
 40b:	5d                   	pop    %ebp
 40c:	c3                   	ret
 40d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 410:	be ff ff ff ff       	mov    $0xffffffff,%esi
 415:	eb ed                	jmp    404 <stat+0x34>
 417:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 41e:	00 
 41f:	90                   	nop

00000420 <atoi>:

int
atoi(const char *s)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	53                   	push   %ebx
 424:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 427:	0f be 02             	movsbl (%edx),%eax
 42a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 42d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 430:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 435:	77 1e                	ja     455 <atoi+0x35>
 437:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 43e:	00 
 43f:	90                   	nop
    n = n*10 + *s++ - '0';
 440:	83 c2 01             	add    $0x1,%edx
 443:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 446:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 44a:	0f be 02             	movsbl (%edx),%eax
 44d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 450:	80 fb 09             	cmp    $0x9,%bl
 453:	76 eb                	jbe    440 <atoi+0x20>
  return n;
}
 455:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 458:	89 c8                	mov    %ecx,%eax
 45a:	c9                   	leave
 45b:	c3                   	ret
 45c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000460 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	57                   	push   %edi
 464:	8b 45 10             	mov    0x10(%ebp),%eax
 467:	8b 55 08             	mov    0x8(%ebp),%edx
 46a:	56                   	push   %esi
 46b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 46e:	85 c0                	test   %eax,%eax
 470:	7e 13                	jle    485 <memmove+0x25>
 472:	01 d0                	add    %edx,%eax
  dst = vdst;
 474:	89 d7                	mov    %edx,%edi
 476:	66 90                	xchg   %ax,%ax
 478:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 47f:	00 
    *dst++ = *src++;
 480:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 481:	39 f8                	cmp    %edi,%eax
 483:	75 fb                	jne    480 <memmove+0x20>
  return vdst;
}
 485:	5e                   	pop    %esi
 486:	89 d0                	mov    %edx,%eax
 488:	5f                   	pop    %edi
 489:	5d                   	pop    %ebp
 48a:	c3                   	ret

0000048b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 48b:	b8 01 00 00 00       	mov    $0x1,%eax
 490:	cd 40                	int    $0x40
 492:	c3                   	ret

00000493 <exit>:
SYSCALL(exit)
 493:	b8 02 00 00 00       	mov    $0x2,%eax
 498:	cd 40                	int    $0x40
 49a:	c3                   	ret

0000049b <wait>:
SYSCALL(wait)
 49b:	b8 03 00 00 00       	mov    $0x3,%eax
 4a0:	cd 40                	int    $0x40
 4a2:	c3                   	ret

000004a3 <pipe>:
SYSCALL(pipe)
 4a3:	b8 04 00 00 00       	mov    $0x4,%eax
 4a8:	cd 40                	int    $0x40
 4aa:	c3                   	ret

000004ab <read>:
SYSCALL(read)
 4ab:	b8 05 00 00 00       	mov    $0x5,%eax
 4b0:	cd 40                	int    $0x40
 4b2:	c3                   	ret

000004b3 <write>:
SYSCALL(write)
 4b3:	b8 10 00 00 00       	mov    $0x10,%eax
 4b8:	cd 40                	int    $0x40
 4ba:	c3                   	ret

000004bb <close>:
SYSCALL(close)
 4bb:	b8 15 00 00 00       	mov    $0x15,%eax
 4c0:	cd 40                	int    $0x40
 4c2:	c3                   	ret

000004c3 <kill>:
SYSCALL(kill)
 4c3:	b8 06 00 00 00       	mov    $0x6,%eax
 4c8:	cd 40                	int    $0x40
 4ca:	c3                   	ret

000004cb <exec>:
SYSCALL(exec)
 4cb:	b8 07 00 00 00       	mov    $0x7,%eax
 4d0:	cd 40                	int    $0x40
 4d2:	c3                   	ret

000004d3 <open>:
SYSCALL(open)
 4d3:	b8 0f 00 00 00       	mov    $0xf,%eax
 4d8:	cd 40                	int    $0x40
 4da:	c3                   	ret

000004db <mknod>:
SYSCALL(mknod)
 4db:	b8 11 00 00 00       	mov    $0x11,%eax
 4e0:	cd 40                	int    $0x40
 4e2:	c3                   	ret

000004e3 <unlink>:
SYSCALL(unlink)
 4e3:	b8 12 00 00 00       	mov    $0x12,%eax
 4e8:	cd 40                	int    $0x40
 4ea:	c3                   	ret

000004eb <fstat>:
SYSCALL(fstat)
 4eb:	b8 08 00 00 00       	mov    $0x8,%eax
 4f0:	cd 40                	int    $0x40
 4f2:	c3                   	ret

000004f3 <link>:
SYSCALL(link)
 4f3:	b8 13 00 00 00       	mov    $0x13,%eax
 4f8:	cd 40                	int    $0x40
 4fa:	c3                   	ret

000004fb <mkdir>:
SYSCALL(mkdir)
 4fb:	b8 14 00 00 00       	mov    $0x14,%eax
 500:	cd 40                	int    $0x40
 502:	c3                   	ret

00000503 <chdir>:
SYSCALL(chdir)
 503:	b8 09 00 00 00       	mov    $0x9,%eax
 508:	cd 40                	int    $0x40
 50a:	c3                   	ret

0000050b <dup>:
SYSCALL(dup)
 50b:	b8 0a 00 00 00       	mov    $0xa,%eax
 510:	cd 40                	int    $0x40
 512:	c3                   	ret

00000513 <getpid>:
SYSCALL(getpid)
 513:	b8 0b 00 00 00       	mov    $0xb,%eax
 518:	cd 40                	int    $0x40
 51a:	c3                   	ret

0000051b <sbrk>:
SYSCALL(sbrk)
 51b:	b8 0c 00 00 00       	mov    $0xc,%eax
 520:	cd 40                	int    $0x40
 522:	c3                   	ret

00000523 <sleep>:
SYSCALL(sleep)
 523:	b8 0d 00 00 00       	mov    $0xd,%eax
 528:	cd 40                	int    $0x40
 52a:	c3                   	ret

0000052b <uptime>:
SYSCALL(uptime)
 52b:	b8 0e 00 00 00       	mov    $0xe,%eax
 530:	cd 40                	int    $0x40
 532:	c3                   	ret

00000533 <ps>:
SYSCALL(ps)
 533:	b8 16 00 00 00       	mov    $0x16,%eax
 538:	cd 40                	int    $0x40
 53a:	c3                   	ret

0000053b <chpr>:
SYSCALL(chpr)
 53b:	b8 17 00 00 00       	mov    $0x17,%eax
 540:	cd 40                	int    $0x40
 542:	c3                   	ret
 543:	66 90                	xchg   %ax,%ax
 545:	66 90                	xchg   %ax,%ax
 547:	66 90                	xchg   %ax,%ax
 549:	66 90                	xchg   %ax,%ax
 54b:	66 90                	xchg   %ax,%ax
 54d:	66 90                	xchg   %ax,%ax
 54f:	66 90                	xchg   %ax,%ax
 551:	66 90                	xchg   %ax,%ax
 553:	66 90                	xchg   %ax,%ax
 555:	66 90                	xchg   %ax,%ax
 557:	66 90                	xchg   %ax,%ax
 559:	66 90                	xchg   %ax,%ax
 55b:	66 90                	xchg   %ax,%ax
 55d:	66 90                	xchg   %ax,%ax
 55f:	90                   	nop

00000560 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	57                   	push   %edi
 564:	56                   	push   %esi
 565:	53                   	push   %ebx
 566:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 568:	89 d1                	mov    %edx,%ecx
{
 56a:	83 ec 3c             	sub    $0x3c,%esp
 56d:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  if(sgn && xx < 0){
 570:	85 d2                	test   %edx,%edx
 572:	0f 89 98 00 00 00    	jns    610 <printint+0xb0>
 578:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 57c:	0f 84 8e 00 00 00    	je     610 <printint+0xb0>
    x = -xx;
 582:	f7 d9                	neg    %ecx
    neg = 1;
 584:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
 589:	89 45 c0             	mov    %eax,-0x40(%ebp)
 58c:	31 f6                	xor    %esi,%esi
 58e:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 595:	00 
 596:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 59d:	00 
 59e:	66 90                	xchg   %ax,%ax
  do{
    buf[i++] = digits[x % base];
 5a0:	89 c8                	mov    %ecx,%eax
 5a2:	31 d2                	xor    %edx,%edx
 5a4:	89 f7                	mov    %esi,%edi
 5a6:	f7 f3                	div    %ebx
 5a8:	8d 76 01             	lea    0x1(%esi),%esi
 5ab:	0f b6 92 90 0b 00 00 	movzbl 0xb90(%edx),%edx
 5b2:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 5b6:	89 ca                	mov    %ecx,%edx
 5b8:	89 c1                	mov    %eax,%ecx
 5ba:	39 da                	cmp    %ebx,%edx
 5bc:	73 e2                	jae    5a0 <printint+0x40>
  if(neg)
 5be:	8b 45 c0             	mov    -0x40(%ebp),%eax
 5c1:	85 c0                	test   %eax,%eax
 5c3:	74 07                	je     5cc <printint+0x6c>
    buf[i++] = '-';
 5c5:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
 5ca:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
 5cc:	8d 5d d8             	lea    -0x28(%ebp),%ebx
 5cf:	8b 75 c4             	mov    -0x3c(%ebp),%esi
 5d2:	01 df                	add    %ebx,%edi
 5d4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 5db:	00 
 5dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    putc(fd, buf[i]);
 5e0:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
 5e3:	83 ec 04             	sub    $0x4,%esp
 5e6:	88 45 d7             	mov    %al,-0x29(%ebp)
 5e9:	8d 45 d7             	lea    -0x29(%ebp),%eax
 5ec:	6a 01                	push   $0x1
 5ee:	50                   	push   %eax
 5ef:	56                   	push   %esi
 5f0:	e8 be fe ff ff       	call   4b3 <write>
  while(--i >= 0)
 5f5:	89 f8                	mov    %edi,%eax
 5f7:	83 c4 10             	add    $0x10,%esp
 5fa:	83 ef 01             	sub    $0x1,%edi
 5fd:	39 d8                	cmp    %ebx,%eax
 5ff:	75 df                	jne    5e0 <printint+0x80>
}
 601:	8d 65 f4             	lea    -0xc(%ebp),%esp
 604:	5b                   	pop    %ebx
 605:	5e                   	pop    %esi
 606:	5f                   	pop    %edi
 607:	5d                   	pop    %ebp
 608:	c3                   	ret
 609:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 610:	31 c0                	xor    %eax,%eax
 612:	e9 72 ff ff ff       	jmp    589 <printint+0x29>
 617:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 61e:	00 
 61f:	90                   	nop

00000620 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 620:	55                   	push   %ebp
 621:	89 e5                	mov    %esp,%ebp
 623:	57                   	push   %edi
 624:	56                   	push   %esi
 625:	53                   	push   %ebx
 626:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 629:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 62c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 62f:	0f b6 13             	movzbl (%ebx),%edx
 632:	83 c3 01             	add    $0x1,%ebx
 635:	84 d2                	test   %dl,%dl
 637:	0f 84 a0 00 00 00    	je     6dd <printf+0xbd>
 63d:	8d 45 10             	lea    0x10(%ebp),%eax
 640:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c = fmt[i] & 0xff;
 643:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 646:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 649:	eb 28                	jmp    673 <printf+0x53>
 64b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
 650:	83 ec 04             	sub    $0x4,%esp
 653:	8d 45 e7             	lea    -0x19(%ebp),%eax
 656:	88 55 e7             	mov    %dl,-0x19(%ebp)
  for(i = 0; fmt[i]; i++){
 659:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 65c:	6a 01                	push   $0x1
 65e:	50                   	push   %eax
 65f:	56                   	push   %esi
 660:	e8 4e fe ff ff       	call   4b3 <write>
  for(i = 0; fmt[i]; i++){
 665:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 669:	83 c4 10             	add    $0x10,%esp
 66c:	84 d2                	test   %dl,%dl
 66e:	74 6d                	je     6dd <printf+0xbd>
    c = fmt[i] & 0xff;
 670:	0f b6 c2             	movzbl %dl,%eax
      if(c == '%'){
 673:	83 f8 25             	cmp    $0x25,%eax
 676:	75 d8                	jne    650 <printf+0x30>
  for(i = 0; fmt[i]; i++){
 678:	0f b6 13             	movzbl (%ebx),%edx
 67b:	84 d2                	test   %dl,%dl
 67d:	74 5e                	je     6dd <printf+0xbd>
    c = fmt[i] & 0xff;
 67f:	0f b6 c2             	movzbl %dl,%eax
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
 682:	80 fa 25             	cmp    $0x25,%dl
 685:	0f 84 1d 01 00 00    	je     7a8 <printf+0x188>
 68b:	83 e8 63             	sub    $0x63,%eax
 68e:	83 f8 15             	cmp    $0x15,%eax
 691:	77 0d                	ja     6a0 <printf+0x80>
 693:	ff 24 85 38 0b 00 00 	jmp    *0xb38(,%eax,4)
 69a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 6a0:	83 ec 04             	sub    $0x4,%esp
 6a3:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 6a6:	88 55 d0             	mov    %dl,-0x30(%ebp)
        ap++;
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
 6a9:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
 6ad:	6a 01                	push   $0x1
 6af:	51                   	push   %ecx
 6b0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
 6b3:	56                   	push   %esi
 6b4:	e8 fa fd ff ff       	call   4b3 <write>
        putc(fd, c);
 6b9:	0f b6 55 d0          	movzbl -0x30(%ebp),%edx
  write(fd, &c, 1);
 6bd:	83 c4 0c             	add    $0xc,%esp
 6c0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 6c3:	6a 01                	push   $0x1
 6c5:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
 6c8:	51                   	push   %ecx
 6c9:	56                   	push   %esi
 6ca:	e8 e4 fd ff ff       	call   4b3 <write>
  for(i = 0; fmt[i]; i++){
 6cf:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 6d3:	83 c3 02             	add    $0x2,%ebx
 6d6:	83 c4 10             	add    $0x10,%esp
 6d9:	84 d2                	test   %dl,%dl
 6db:	75 93                	jne    670 <printf+0x50>
      }
      state = 0;
    }
  }
}
 6dd:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6e0:	5b                   	pop    %ebx
 6e1:	5e                   	pop    %esi
 6e2:	5f                   	pop    %edi
 6e3:	5d                   	pop    %ebp
 6e4:	c3                   	ret
 6e5:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 6e8:	83 ec 0c             	sub    $0xc,%esp
 6eb:	8b 17                	mov    (%edi),%edx
 6ed:	b9 10 00 00 00       	mov    $0x10,%ecx
 6f2:	89 f0                	mov    %esi,%eax
 6f4:	6a 00                	push   $0x0
        ap++;
 6f6:	83 c7 04             	add    $0x4,%edi
        printint(fd, *ap, 16, 0);
 6f9:	e8 62 fe ff ff       	call   560 <printint>
  for(i = 0; fmt[i]; i++){
 6fe:	eb cf                	jmp    6cf <printf+0xaf>
        s = (char*)*ap;
 700:	8b 07                	mov    (%edi),%eax
        ap++;
 702:	83 c7 04             	add    $0x4,%edi
        if(s == 0)
 705:	85 c0                	test   %eax,%eax
 707:	0f 84 b3 00 00 00    	je     7c0 <printf+0x1a0>
        while(*s != 0){
 70d:	0f b6 10             	movzbl (%eax),%edx
 710:	84 d2                	test   %dl,%dl
 712:	0f 84 ba 00 00 00    	je     7d2 <printf+0x1b2>
 718:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 71b:	89 c7                	mov    %eax,%edi
 71d:	89 d0                	mov    %edx,%eax
 71f:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 722:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 725:	89 fb                	mov    %edi,%ebx
 727:	89 cf                	mov    %ecx,%edi
 729:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
 730:	83 ec 04             	sub    $0x4,%esp
 733:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 736:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 739:	6a 01                	push   $0x1
 73b:	57                   	push   %edi
 73c:	56                   	push   %esi
 73d:	e8 71 fd ff ff       	call   4b3 <write>
        while(*s != 0){
 742:	0f b6 03             	movzbl (%ebx),%eax
 745:	83 c4 10             	add    $0x10,%esp
 748:	84 c0                	test   %al,%al
 74a:	75 e4                	jne    730 <printf+0x110>
 74c:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  for(i = 0; fmt[i]; i++){
 74f:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 753:	83 c3 02             	add    $0x2,%ebx
 756:	84 d2                	test   %dl,%dl
 758:	0f 85 e5 fe ff ff    	jne    643 <printf+0x23>
 75e:	e9 7a ff ff ff       	jmp    6dd <printf+0xbd>
 763:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
 768:	83 ec 0c             	sub    $0xc,%esp
 76b:	8b 17                	mov    (%edi),%edx
 76d:	b9 0a 00 00 00       	mov    $0xa,%ecx
 772:	89 f0                	mov    %esi,%eax
 774:	6a 01                	push   $0x1
        ap++;
 776:	83 c7 04             	add    $0x4,%edi
        printint(fd, *ap, 10, 1);
 779:	e8 e2 fd ff ff       	call   560 <printint>
  for(i = 0; fmt[i]; i++){
 77e:	e9 4c ff ff ff       	jmp    6cf <printf+0xaf>
 783:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
 788:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 78a:	83 ec 04             	sub    $0x4,%esp
 78d:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        ap++;
 790:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 793:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 796:	6a 01                	push   $0x1
 798:	51                   	push   %ecx
 799:	56                   	push   %esi
 79a:	e8 14 fd ff ff       	call   4b3 <write>
  for(i = 0; fmt[i]; i++){
 79f:	e9 2b ff ff ff       	jmp    6cf <printf+0xaf>
 7a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
 7a8:	83 ec 04             	sub    $0x4,%esp
 7ab:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7ae:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 7b1:	6a 01                	push   $0x1
 7b3:	e9 10 ff ff ff       	jmp    6c8 <printf+0xa8>
 7b8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 7bf:	00 
          s = "(null)";
 7c0:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 7c3:	b8 28 00 00 00       	mov    $0x28,%eax
 7c8:	bf 13 0a 00 00       	mov    $0xa13,%edi
 7cd:	e9 4d ff ff ff       	jmp    71f <printf+0xff>
  for(i = 0; fmt[i]; i++){
 7d2:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 7d6:	83 c3 02             	add    $0x2,%ebx
 7d9:	84 d2                	test   %dl,%dl
 7db:	0f 85 8f fe ff ff    	jne    670 <printf+0x50>
 7e1:	e9 f7 fe ff ff       	jmp    6dd <printf+0xbd>
 7e6:	66 90                	xchg   %ax,%ax
 7e8:	66 90                	xchg   %ax,%ax
 7ea:	66 90                	xchg   %ax,%ax
 7ec:	66 90                	xchg   %ax,%ax
 7ee:	66 90                	xchg   %ax,%ax
 7f0:	66 90                	xchg   %ax,%ax
 7f2:	66 90                	xchg   %ax,%ax
 7f4:	66 90                	xchg   %ax,%ax
 7f6:	66 90                	xchg   %ax,%ax
 7f8:	66 90                	xchg   %ax,%ax
 7fa:	66 90                	xchg   %ax,%ax
 7fc:	66 90                	xchg   %ax,%ax
 7fe:	66 90                	xchg   %ax,%ax

00000800 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 800:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 801:	a1 ac 0b 00 00       	mov    0xbac,%eax
{
 806:	89 e5                	mov    %esp,%ebp
 808:	57                   	push   %edi
 809:	56                   	push   %esi
 80a:	53                   	push   %ebx
 80b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 80e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 811:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 818:	00 
 819:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 820:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 822:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 824:	39 ca                	cmp    %ecx,%edx
 826:	73 30                	jae    858 <free+0x58>
 828:	39 c1                	cmp    %eax,%ecx
 82a:	72 04                	jb     830 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 82c:	39 c2                	cmp    %eax,%edx
 82e:	72 f0                	jb     820 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 830:	8b 73 fc             	mov    -0x4(%ebx),%esi
 833:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 836:	39 f8                	cmp    %edi,%eax
 838:	74 36                	je     870 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 83a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 83d:	8b 42 04             	mov    0x4(%edx),%eax
 840:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 843:	39 f1                	cmp    %esi,%ecx
 845:	74 40                	je     887 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 847:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 849:	5b                   	pop    %ebx
  freep = p;
 84a:	89 15 ac 0b 00 00    	mov    %edx,0xbac
}
 850:	5e                   	pop    %esi
 851:	5f                   	pop    %edi
 852:	5d                   	pop    %ebp
 853:	c3                   	ret
 854:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 858:	39 c2                	cmp    %eax,%edx
 85a:	72 c4                	jb     820 <free+0x20>
 85c:	39 c1                	cmp    %eax,%ecx
 85e:	73 c0                	jae    820 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
 860:	8b 73 fc             	mov    -0x4(%ebx),%esi
 863:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 866:	39 f8                	cmp    %edi,%eax
 868:	75 d0                	jne    83a <free+0x3a>
 86a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
 870:	03 70 04             	add    0x4(%eax),%esi
 873:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 876:	8b 02                	mov    (%edx),%eax
 878:	8b 00                	mov    (%eax),%eax
 87a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 87d:	8b 42 04             	mov    0x4(%edx),%eax
 880:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 883:	39 f1                	cmp    %esi,%ecx
 885:	75 c0                	jne    847 <free+0x47>
    p->s.size += bp->s.size;
 887:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 88a:	89 15 ac 0b 00 00    	mov    %edx,0xbac
    p->s.size += bp->s.size;
 890:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 893:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 896:	89 0a                	mov    %ecx,(%edx)
}
 898:	5b                   	pop    %ebx
 899:	5e                   	pop    %esi
 89a:	5f                   	pop    %edi
 89b:	5d                   	pop    %ebp
 89c:	c3                   	ret
 89d:	8d 76 00             	lea    0x0(%esi),%esi

000008a0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 8a0:	55                   	push   %ebp
 8a1:	89 e5                	mov    %esp,%ebp
 8a3:	57                   	push   %edi
 8a4:	56                   	push   %esi
 8a5:	53                   	push   %ebx
 8a6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8a9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 8ac:	8b 15 ac 0b 00 00    	mov    0xbac,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8b2:	8d 78 07             	lea    0x7(%eax),%edi
 8b5:	c1 ef 03             	shr    $0x3,%edi
 8b8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 8bb:	85 d2                	test   %edx,%edx
 8bd:	0f 84 8d 00 00 00    	je     950 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8c3:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 8c5:	8b 48 04             	mov    0x4(%eax),%ecx
 8c8:	39 f9                	cmp    %edi,%ecx
 8ca:	73 64                	jae    930 <malloc+0x90>
  if(nu < 4096)
 8cc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 8d1:	39 df                	cmp    %ebx,%edi
 8d3:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 8d6:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 8dd:	eb 0a                	jmp    8e9 <malloc+0x49>
 8df:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8e0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 8e2:	8b 48 04             	mov    0x4(%eax),%ecx
 8e5:	39 f9                	cmp    %edi,%ecx
 8e7:	73 47                	jae    930 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 8e9:	89 c2                	mov    %eax,%edx
 8eb:	39 05 ac 0b 00 00    	cmp    %eax,0xbac
 8f1:	75 ed                	jne    8e0 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 8f3:	83 ec 0c             	sub    $0xc,%esp
 8f6:	56                   	push   %esi
 8f7:	e8 1f fc ff ff       	call   51b <sbrk>
  if(p == (char*)-1)
 8fc:	83 c4 10             	add    $0x10,%esp
 8ff:	83 f8 ff             	cmp    $0xffffffff,%eax
 902:	74 1c                	je     920 <malloc+0x80>
  hp->s.size = nu;
 904:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 907:	83 ec 0c             	sub    $0xc,%esp
 90a:	83 c0 08             	add    $0x8,%eax
 90d:	50                   	push   %eax
 90e:	e8 ed fe ff ff       	call   800 <free>
  return freep;
 913:	8b 15 ac 0b 00 00    	mov    0xbac,%edx
      if((p = morecore(nunits)) == 0)
 919:	83 c4 10             	add    $0x10,%esp
 91c:	85 d2                	test   %edx,%edx
 91e:	75 c0                	jne    8e0 <malloc+0x40>
        return 0;
  }
}
 920:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 923:	31 c0                	xor    %eax,%eax
}
 925:	5b                   	pop    %ebx
 926:	5e                   	pop    %esi
 927:	5f                   	pop    %edi
 928:	5d                   	pop    %ebp
 929:	c3                   	ret
 92a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 930:	39 cf                	cmp    %ecx,%edi
 932:	74 4c                	je     980 <malloc+0xe0>
        p->s.size -= nunits;
 934:	29 f9                	sub    %edi,%ecx
 936:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 939:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 93c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 93f:	89 15 ac 0b 00 00    	mov    %edx,0xbac
}
 945:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 948:	83 c0 08             	add    $0x8,%eax
}
 94b:	5b                   	pop    %ebx
 94c:	5e                   	pop    %esi
 94d:	5f                   	pop    %edi
 94e:	5d                   	pop    %ebp
 94f:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 950:	c7 05 ac 0b 00 00 b0 	movl   $0xbb0,0xbac
 957:	0b 00 00 
    base.s.size = 0;
 95a:	b8 b0 0b 00 00       	mov    $0xbb0,%eax
    base.s.ptr = freep = prevp = &base;
 95f:	c7 05 b0 0b 00 00 b0 	movl   $0xbb0,0xbb0
 966:	0b 00 00 
    base.s.size = 0;
 969:	c7 05 b4 0b 00 00 00 	movl   $0x0,0xbb4
 970:	00 00 00 
    if(p->s.size >= nunits){
 973:	e9 54 ff ff ff       	jmp    8cc <malloc+0x2c>
 978:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 97f:	00 
        prevp->s.ptr = p->s.ptr;
 980:	8b 08                	mov    (%eax),%ecx
 982:	89 0a                	mov    %ecx,(%edx)
 984:	eb b9                	jmp    93f <malloc+0x9f>
