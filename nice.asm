
_nice:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

int main(int argc, char *argv[]) {
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	56                   	push   %esi
   e:	53                   	push   %ebx
   f:	51                   	push   %ecx
  10:	83 ec 0c             	sub    $0xc,%esp
    int pid, priority;

    if(argc < 3){
  13:	83 39 02             	cmpl   $0x2,(%ecx)
int main(int argc, char *argv[]) {
  16:	8b 71 04             	mov    0x4(%ecx),%esi
    if(argc < 3){
  19:	7f 13                	jg     2e <main+0x2e>
          printf(1, "usage: nice pid priority\n");
  1b:	50                   	push   %eax
  1c:	50                   	push   %eax
  1d:	68 c8 07 00 00       	push   $0x7c8
  22:	6a 01                	push   $0x1
  24:	e8 37 04 00 00       	call   460 <printf>
          exit();
  29:	e8 a5 02 00 00       	call   2d3 <exit>
    }
  
    pid = atoi(argv[1]);
  2e:	83 ec 0c             	sub    $0xc,%esp
  31:	ff 76 04             	push   0x4(%esi)
  34:	e8 27 02 00 00       	call   260 <atoi>
  39:	89 c3                	mov    %eax,%ebx
    priority = atoi(argv[2]);
  3b:	58                   	pop    %eax
  3c:	ff 76 08             	push   0x8(%esi)
  3f:	e8 1c 02 00 00       	call   260 <atoi>
  
    if (priority < 0 || priority > 20){
  44:	83 c4 10             	add    $0x10,%esp
  47:	83 f8 14             	cmp    $0x14,%eax
  4a:	76 13                	jbe    5f <main+0x5f>
        printf(2, "invalid priority (0-20)!\n");
  4c:	51                   	push   %ecx
  4d:	51                   	push   %ecx
  4e:	68 e2 07 00 00       	push   $0x7e2
  53:	6a 02                	push   $0x2
  55:	e8 06 04 00 00       	call   460 <printf>
        exit();
  5a:	e8 74 02 00 00       	call   2d3 <exit>
    }
  
    chpr(pid, priority);
  5f:	52                   	push   %edx
  60:	52                   	push   %edx
  61:	50                   	push   %eax
  62:	53                   	push   %ebx
  63:	e8 13 03 00 00       	call   37b <chpr>
    exit();
  68:	e8 66 02 00 00       	call   2d3 <exit>
  6d:	66 90                	xchg   %ax,%ax
  6f:	66 90                	xchg   %ax,%ax
  71:	66 90                	xchg   %ax,%ax
  73:	66 90                	xchg   %ax,%ax
  75:	66 90                	xchg   %ax,%ax
  77:	66 90                	xchg   %ax,%ax
  79:	66 90                	xchg   %ax,%ax
  7b:	66 90                	xchg   %ax,%ax
  7d:	66 90                	xchg   %ax,%ax
  7f:	90                   	nop

00000080 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
  80:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
  81:	31 c0                	xor    %eax,%eax
{
  83:	89 e5                	mov    %esp,%ebp
  85:	53                   	push   %ebx
  86:	8b 4d 08             	mov    0x8(%ebp),%ecx
  89:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
  90:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
  94:	88 14 01             	mov    %dl,(%ecx,%eax,1)
  97:	83 c0 01             	add    $0x1,%eax
  9a:	84 d2                	test   %dl,%dl
  9c:	75 f2                	jne    90 <strcpy+0x10>
    ;
  return os;
}
  9e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  a1:	89 c8                	mov    %ecx,%eax
  a3:	c9                   	leave
  a4:	c3                   	ret
  a5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  ac:	00 
  ad:	8d 76 00             	lea    0x0(%esi),%esi

000000b0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
  b0:	55                   	push   %ebp
  b1:	89 e5                	mov    %esp,%ebp
  b3:	53                   	push   %ebx
  b4:	8b 55 08             	mov    0x8(%ebp),%edx
  b7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
  ba:	0f b6 02             	movzbl (%edx),%eax
  bd:	84 c0                	test   %al,%al
  bf:	75 2f                	jne    f0 <strcmp+0x40>
  c1:	eb 4a                	jmp    10d <strcmp+0x5d>
  c3:	eb 1b                	jmp    e0 <strcmp+0x30>
  c5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  cc:	00 
  cd:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  d4:	00 
  d5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  dc:	00 
  dd:	8d 76 00             	lea    0x0(%esi),%esi
  e0:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
  e4:	83 c2 01             	add    $0x1,%edx
  e7:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
  ea:	84 c0                	test   %al,%al
  ec:	74 12                	je     100 <strcmp+0x50>
  ee:	89 d9                	mov    %ebx,%ecx
  f0:	0f b6 19             	movzbl (%ecx),%ebx
  f3:	38 c3                	cmp    %al,%bl
  f5:	74 e9                	je     e0 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
  f7:	29 d8                	sub    %ebx,%eax
}
  f9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  fc:	c9                   	leave
  fd:	c3                   	ret
  fe:	66 90                	xchg   %ax,%ax
  return (uchar)*p - (uchar)*q;
 100:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 104:	31 c0                	xor    %eax,%eax
 106:	29 d8                	sub    %ebx,%eax
}
 108:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 10b:	c9                   	leave
 10c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
 10d:	0f b6 19             	movzbl (%ecx),%ebx
 110:	31 c0                	xor    %eax,%eax
 112:	eb e3                	jmp    f7 <strcmp+0x47>
 114:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 11b:	00 
 11c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000120 <strlen>:

uint
strlen(const char *s)
{
 120:	55                   	push   %ebp
 121:	89 e5                	mov    %esp,%ebp
 123:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 126:	80 3a 00             	cmpb   $0x0,(%edx)
 129:	74 15                	je     140 <strlen+0x20>
 12b:	31 c0                	xor    %eax,%eax
 12d:	8d 76 00             	lea    0x0(%esi),%esi
 130:	83 c0 01             	add    $0x1,%eax
 133:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 137:	89 c1                	mov    %eax,%ecx
 139:	75 f5                	jne    130 <strlen+0x10>
    ;
  return n;
}
 13b:	89 c8                	mov    %ecx,%eax
 13d:	5d                   	pop    %ebp
 13e:	c3                   	ret
 13f:	90                   	nop
  for(n = 0; s[n]; n++)
 140:	31 c9                	xor    %ecx,%ecx
}
 142:	5d                   	pop    %ebp
 143:	89 c8                	mov    %ecx,%eax
 145:	c3                   	ret
 146:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 14d:	00 
 14e:	66 90                	xchg   %ax,%ax

00000150 <memset>:

void*
memset(void *dst, int c, uint n)
{
 150:	55                   	push   %ebp
 151:	89 e5                	mov    %esp,%ebp
 153:	57                   	push   %edi
 154:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 157:	8b 4d 10             	mov    0x10(%ebp),%ecx
 15a:	8b 45 0c             	mov    0xc(%ebp),%eax
 15d:	89 d7                	mov    %edx,%edi
 15f:	fc                   	cld
 160:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 162:	8b 7d fc             	mov    -0x4(%ebp),%edi
 165:	89 d0                	mov    %edx,%eax
 167:	c9                   	leave
 168:	c3                   	ret
 169:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000170 <strchr>:

char*
strchr(const char *s, char c)
{
 170:	55                   	push   %ebp
 171:	89 e5                	mov    %esp,%ebp
 173:	8b 45 08             	mov    0x8(%ebp),%eax
 176:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 17a:	0f b6 10             	movzbl (%eax),%edx
 17d:	84 d2                	test   %dl,%dl
 17f:	75 1a                	jne    19b <strchr+0x2b>
 181:	eb 25                	jmp    1a8 <strchr+0x38>
 183:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 18a:	00 
 18b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 190:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 194:	83 c0 01             	add    $0x1,%eax
 197:	84 d2                	test   %dl,%dl
 199:	74 0d                	je     1a8 <strchr+0x38>
    if(*s == c)
 19b:	38 d1                	cmp    %dl,%cl
 19d:	75 f1                	jne    190 <strchr+0x20>
      return (char*)s;
  return 0;
}
 19f:	5d                   	pop    %ebp
 1a0:	c3                   	ret
 1a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 1a8:	31 c0                	xor    %eax,%eax
}
 1aa:	5d                   	pop    %ebp
 1ab:	c3                   	ret
 1ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000001b0 <gets>:

char*
gets(char *buf, int max)
{
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	57                   	push   %edi
 1b4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 1b5:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
 1b8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 1b9:	31 db                	xor    %ebx,%ebx
{
 1bb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 1be:	eb 27                	jmp    1e7 <gets+0x37>
    cc = read(0, &c, 1);
 1c0:	83 ec 04             	sub    $0x4,%esp
 1c3:	6a 01                	push   $0x1
 1c5:	56                   	push   %esi
 1c6:	6a 00                	push   $0x0
 1c8:	e8 1e 01 00 00       	call   2eb <read>
    if(cc < 1)
 1cd:	83 c4 10             	add    $0x10,%esp
 1d0:	85 c0                	test   %eax,%eax
 1d2:	7e 1d                	jle    1f1 <gets+0x41>
      break;
    buf[i++] = c;
 1d4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 1d8:	8b 55 08             	mov    0x8(%ebp),%edx
 1db:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 1df:	3c 0a                	cmp    $0xa,%al
 1e1:	74 10                	je     1f3 <gets+0x43>
 1e3:	3c 0d                	cmp    $0xd,%al
 1e5:	74 0c                	je     1f3 <gets+0x43>
  for(i=0; i+1 < max; ){
 1e7:	89 df                	mov    %ebx,%edi
 1e9:	83 c3 01             	add    $0x1,%ebx
 1ec:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1ef:	7c cf                	jl     1c0 <gets+0x10>
 1f1:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
 1f3:	8b 45 08             	mov    0x8(%ebp),%eax
 1f6:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
 1fa:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1fd:	5b                   	pop    %ebx
 1fe:	5e                   	pop    %esi
 1ff:	5f                   	pop    %edi
 200:	5d                   	pop    %ebp
 201:	c3                   	ret
 202:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 209:	00 
 20a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000210 <stat>:

int
stat(const char *n, struct stat *st)
{
 210:	55                   	push   %ebp
 211:	89 e5                	mov    %esp,%ebp
 213:	56                   	push   %esi
 214:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 215:	83 ec 08             	sub    $0x8,%esp
 218:	6a 00                	push   $0x0
 21a:	ff 75 08             	push   0x8(%ebp)
 21d:	e8 f1 00 00 00       	call   313 <open>
  if(fd < 0)
 222:	83 c4 10             	add    $0x10,%esp
 225:	85 c0                	test   %eax,%eax
 227:	78 27                	js     250 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 229:	83 ec 08             	sub    $0x8,%esp
 22c:	ff 75 0c             	push   0xc(%ebp)
 22f:	89 c3                	mov    %eax,%ebx
 231:	50                   	push   %eax
 232:	e8 f4 00 00 00       	call   32b <fstat>
  close(fd);
 237:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 23a:	89 c6                	mov    %eax,%esi
  close(fd);
 23c:	e8 ba 00 00 00       	call   2fb <close>
  return r;
 241:	83 c4 10             	add    $0x10,%esp
}
 244:	8d 65 f8             	lea    -0x8(%ebp),%esp
 247:	89 f0                	mov    %esi,%eax
 249:	5b                   	pop    %ebx
 24a:	5e                   	pop    %esi
 24b:	5d                   	pop    %ebp
 24c:	c3                   	ret
 24d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 250:	be ff ff ff ff       	mov    $0xffffffff,%esi
 255:	eb ed                	jmp    244 <stat+0x34>
 257:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 25e:	00 
 25f:	90                   	nop

00000260 <atoi>:

int
atoi(const char *s)
{
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	53                   	push   %ebx
 264:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 267:	0f be 02             	movsbl (%edx),%eax
 26a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 26d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 270:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 275:	77 1e                	ja     295 <atoi+0x35>
 277:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 27e:	00 
 27f:	90                   	nop
    n = n*10 + *s++ - '0';
 280:	83 c2 01             	add    $0x1,%edx
 283:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 286:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 28a:	0f be 02             	movsbl (%edx),%eax
 28d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 290:	80 fb 09             	cmp    $0x9,%bl
 293:	76 eb                	jbe    280 <atoi+0x20>
  return n;
}
 295:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 298:	89 c8                	mov    %ecx,%eax
 29a:	c9                   	leave
 29b:	c3                   	ret
 29c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000002a0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 2a0:	55                   	push   %ebp
 2a1:	89 e5                	mov    %esp,%ebp
 2a3:	57                   	push   %edi
 2a4:	8b 45 10             	mov    0x10(%ebp),%eax
 2a7:	8b 55 08             	mov    0x8(%ebp),%edx
 2aa:	56                   	push   %esi
 2ab:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 2ae:	85 c0                	test   %eax,%eax
 2b0:	7e 13                	jle    2c5 <memmove+0x25>
 2b2:	01 d0                	add    %edx,%eax
  dst = vdst;
 2b4:	89 d7                	mov    %edx,%edi
 2b6:	66 90                	xchg   %ax,%ax
 2b8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 2bf:	00 
    *dst++ = *src++;
 2c0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 2c1:	39 f8                	cmp    %edi,%eax
 2c3:	75 fb                	jne    2c0 <memmove+0x20>
  return vdst;
}
 2c5:	5e                   	pop    %esi
 2c6:	89 d0                	mov    %edx,%eax
 2c8:	5f                   	pop    %edi
 2c9:	5d                   	pop    %ebp
 2ca:	c3                   	ret

000002cb <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 2cb:	b8 01 00 00 00       	mov    $0x1,%eax
 2d0:	cd 40                	int    $0x40
 2d2:	c3                   	ret

000002d3 <exit>:
SYSCALL(exit)
 2d3:	b8 02 00 00 00       	mov    $0x2,%eax
 2d8:	cd 40                	int    $0x40
 2da:	c3                   	ret

000002db <wait>:
SYSCALL(wait)
 2db:	b8 03 00 00 00       	mov    $0x3,%eax
 2e0:	cd 40                	int    $0x40
 2e2:	c3                   	ret

000002e3 <pipe>:
SYSCALL(pipe)
 2e3:	b8 04 00 00 00       	mov    $0x4,%eax
 2e8:	cd 40                	int    $0x40
 2ea:	c3                   	ret

000002eb <read>:
SYSCALL(read)
 2eb:	b8 05 00 00 00       	mov    $0x5,%eax
 2f0:	cd 40                	int    $0x40
 2f2:	c3                   	ret

000002f3 <write>:
SYSCALL(write)
 2f3:	b8 10 00 00 00       	mov    $0x10,%eax
 2f8:	cd 40                	int    $0x40
 2fa:	c3                   	ret

000002fb <close>:
SYSCALL(close)
 2fb:	b8 15 00 00 00       	mov    $0x15,%eax
 300:	cd 40                	int    $0x40
 302:	c3                   	ret

00000303 <kill>:
SYSCALL(kill)
 303:	b8 06 00 00 00       	mov    $0x6,%eax
 308:	cd 40                	int    $0x40
 30a:	c3                   	ret

0000030b <exec>:
SYSCALL(exec)
 30b:	b8 07 00 00 00       	mov    $0x7,%eax
 310:	cd 40                	int    $0x40
 312:	c3                   	ret

00000313 <open>:
SYSCALL(open)
 313:	b8 0f 00 00 00       	mov    $0xf,%eax
 318:	cd 40                	int    $0x40
 31a:	c3                   	ret

0000031b <mknod>:
SYSCALL(mknod)
 31b:	b8 11 00 00 00       	mov    $0x11,%eax
 320:	cd 40                	int    $0x40
 322:	c3                   	ret

00000323 <unlink>:
SYSCALL(unlink)
 323:	b8 12 00 00 00       	mov    $0x12,%eax
 328:	cd 40                	int    $0x40
 32a:	c3                   	ret

0000032b <fstat>:
SYSCALL(fstat)
 32b:	b8 08 00 00 00       	mov    $0x8,%eax
 330:	cd 40                	int    $0x40
 332:	c3                   	ret

00000333 <link>:
SYSCALL(link)
 333:	b8 13 00 00 00       	mov    $0x13,%eax
 338:	cd 40                	int    $0x40
 33a:	c3                   	ret

0000033b <mkdir>:
SYSCALL(mkdir)
 33b:	b8 14 00 00 00       	mov    $0x14,%eax
 340:	cd 40                	int    $0x40
 342:	c3                   	ret

00000343 <chdir>:
SYSCALL(chdir)
 343:	b8 09 00 00 00       	mov    $0x9,%eax
 348:	cd 40                	int    $0x40
 34a:	c3                   	ret

0000034b <dup>:
SYSCALL(dup)
 34b:	b8 0a 00 00 00       	mov    $0xa,%eax
 350:	cd 40                	int    $0x40
 352:	c3                   	ret

00000353 <getpid>:
SYSCALL(getpid)
 353:	b8 0b 00 00 00       	mov    $0xb,%eax
 358:	cd 40                	int    $0x40
 35a:	c3                   	ret

0000035b <sbrk>:
SYSCALL(sbrk)
 35b:	b8 0c 00 00 00       	mov    $0xc,%eax
 360:	cd 40                	int    $0x40
 362:	c3                   	ret

00000363 <sleep>:
SYSCALL(sleep)
 363:	b8 0d 00 00 00       	mov    $0xd,%eax
 368:	cd 40                	int    $0x40
 36a:	c3                   	ret

0000036b <uptime>:
SYSCALL(uptime)
 36b:	b8 0e 00 00 00       	mov    $0xe,%eax
 370:	cd 40                	int    $0x40
 372:	c3                   	ret

00000373 <ps>:
SYSCALL(ps)
 373:	b8 16 00 00 00       	mov    $0x16,%eax
 378:	cd 40                	int    $0x40
 37a:	c3                   	ret

0000037b <chpr>:
SYSCALL(chpr)
 37b:	b8 17 00 00 00       	mov    $0x17,%eax
 380:	cd 40                	int    $0x40
 382:	c3                   	ret
 383:	66 90                	xchg   %ax,%ax
 385:	66 90                	xchg   %ax,%ax
 387:	66 90                	xchg   %ax,%ax
 389:	66 90                	xchg   %ax,%ax
 38b:	66 90                	xchg   %ax,%ax
 38d:	66 90                	xchg   %ax,%ax
 38f:	66 90                	xchg   %ax,%ax
 391:	66 90                	xchg   %ax,%ax
 393:	66 90                	xchg   %ax,%ax
 395:	66 90                	xchg   %ax,%ax
 397:	66 90                	xchg   %ax,%ax
 399:	66 90                	xchg   %ax,%ax
 39b:	66 90                	xchg   %ax,%ax
 39d:	66 90                	xchg   %ax,%ax
 39f:	90                   	nop

000003a0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	57                   	push   %edi
 3a4:	56                   	push   %esi
 3a5:	53                   	push   %ebx
 3a6:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 3a8:	89 d1                	mov    %edx,%ecx
{
 3aa:	83 ec 3c             	sub    $0x3c,%esp
 3ad:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  if(sgn && xx < 0){
 3b0:	85 d2                	test   %edx,%edx
 3b2:	0f 89 98 00 00 00    	jns    450 <printint+0xb0>
 3b8:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 3bc:	0f 84 8e 00 00 00    	je     450 <printint+0xb0>
    x = -xx;
 3c2:	f7 d9                	neg    %ecx
    neg = 1;
 3c4:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
 3c9:	89 45 c0             	mov    %eax,-0x40(%ebp)
 3cc:	31 f6                	xor    %esi,%esi
 3ce:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3d5:	00 
 3d6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3dd:	00 
 3de:	66 90                	xchg   %ax,%ax
  do{
    buf[i++] = digits[x % base];
 3e0:	89 c8                	mov    %ecx,%eax
 3e2:	31 d2                	xor    %edx,%edx
 3e4:	89 f7                	mov    %esi,%edi
 3e6:	f7 f3                	div    %ebx
 3e8:	8d 76 01             	lea    0x1(%esi),%esi
 3eb:	0f b6 92 5c 08 00 00 	movzbl 0x85c(%edx),%edx
 3f2:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 3f6:	89 ca                	mov    %ecx,%edx
 3f8:	89 c1                	mov    %eax,%ecx
 3fa:	39 da                	cmp    %ebx,%edx
 3fc:	73 e2                	jae    3e0 <printint+0x40>
  if(neg)
 3fe:	8b 45 c0             	mov    -0x40(%ebp),%eax
 401:	85 c0                	test   %eax,%eax
 403:	74 07                	je     40c <printint+0x6c>
    buf[i++] = '-';
 405:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
 40a:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
 40c:	8d 5d d8             	lea    -0x28(%ebp),%ebx
 40f:	8b 75 c4             	mov    -0x3c(%ebp),%esi
 412:	01 df                	add    %ebx,%edi
 414:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 41b:	00 
 41c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    putc(fd, buf[i]);
 420:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
 423:	83 ec 04             	sub    $0x4,%esp
 426:	88 45 d7             	mov    %al,-0x29(%ebp)
 429:	8d 45 d7             	lea    -0x29(%ebp),%eax
 42c:	6a 01                	push   $0x1
 42e:	50                   	push   %eax
 42f:	56                   	push   %esi
 430:	e8 be fe ff ff       	call   2f3 <write>
  while(--i >= 0)
 435:	89 f8                	mov    %edi,%eax
 437:	83 c4 10             	add    $0x10,%esp
 43a:	83 ef 01             	sub    $0x1,%edi
 43d:	39 d8                	cmp    %ebx,%eax
 43f:	75 df                	jne    420 <printint+0x80>
}
 441:	8d 65 f4             	lea    -0xc(%ebp),%esp
 444:	5b                   	pop    %ebx
 445:	5e                   	pop    %esi
 446:	5f                   	pop    %edi
 447:	5d                   	pop    %ebp
 448:	c3                   	ret
 449:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 450:	31 c0                	xor    %eax,%eax
 452:	e9 72 ff ff ff       	jmp    3c9 <printint+0x29>
 457:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 45e:	00 
 45f:	90                   	nop

00000460 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	57                   	push   %edi
 464:	56                   	push   %esi
 465:	53                   	push   %ebx
 466:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 469:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 46c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 46f:	0f b6 13             	movzbl (%ebx),%edx
 472:	83 c3 01             	add    $0x1,%ebx
 475:	84 d2                	test   %dl,%dl
 477:	0f 84 a0 00 00 00    	je     51d <printf+0xbd>
 47d:	8d 45 10             	lea    0x10(%ebp),%eax
 480:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c = fmt[i] & 0xff;
 483:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 486:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 489:	eb 28                	jmp    4b3 <printf+0x53>
 48b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
 490:	83 ec 04             	sub    $0x4,%esp
 493:	8d 45 e7             	lea    -0x19(%ebp),%eax
 496:	88 55 e7             	mov    %dl,-0x19(%ebp)
  for(i = 0; fmt[i]; i++){
 499:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 49c:	6a 01                	push   $0x1
 49e:	50                   	push   %eax
 49f:	56                   	push   %esi
 4a0:	e8 4e fe ff ff       	call   2f3 <write>
  for(i = 0; fmt[i]; i++){
 4a5:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 4a9:	83 c4 10             	add    $0x10,%esp
 4ac:	84 d2                	test   %dl,%dl
 4ae:	74 6d                	je     51d <printf+0xbd>
    c = fmt[i] & 0xff;
 4b0:	0f b6 c2             	movzbl %dl,%eax
      if(c == '%'){
 4b3:	83 f8 25             	cmp    $0x25,%eax
 4b6:	75 d8                	jne    490 <printf+0x30>
  for(i = 0; fmt[i]; i++){
 4b8:	0f b6 13             	movzbl (%ebx),%edx
 4bb:	84 d2                	test   %dl,%dl
 4bd:	74 5e                	je     51d <printf+0xbd>
    c = fmt[i] & 0xff;
 4bf:	0f b6 c2             	movzbl %dl,%eax
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
 4c2:	80 fa 25             	cmp    $0x25,%dl
 4c5:	0f 84 1d 01 00 00    	je     5e8 <printf+0x188>
 4cb:	83 e8 63             	sub    $0x63,%eax
 4ce:	83 f8 15             	cmp    $0x15,%eax
 4d1:	77 0d                	ja     4e0 <printf+0x80>
 4d3:	ff 24 85 04 08 00 00 	jmp    *0x804(,%eax,4)
 4da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 4e0:	83 ec 04             	sub    $0x4,%esp
 4e3:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 4e6:	88 55 d0             	mov    %dl,-0x30(%ebp)
        ap++;
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
 4e9:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
 4ed:	6a 01                	push   $0x1
 4ef:	51                   	push   %ecx
 4f0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
 4f3:	56                   	push   %esi
 4f4:	e8 fa fd ff ff       	call   2f3 <write>
        putc(fd, c);
 4f9:	0f b6 55 d0          	movzbl -0x30(%ebp),%edx
  write(fd, &c, 1);
 4fd:	83 c4 0c             	add    $0xc,%esp
 500:	88 55 e7             	mov    %dl,-0x19(%ebp)
 503:	6a 01                	push   $0x1
 505:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
 508:	51                   	push   %ecx
 509:	56                   	push   %esi
 50a:	e8 e4 fd ff ff       	call   2f3 <write>
  for(i = 0; fmt[i]; i++){
 50f:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 513:	83 c3 02             	add    $0x2,%ebx
 516:	83 c4 10             	add    $0x10,%esp
 519:	84 d2                	test   %dl,%dl
 51b:	75 93                	jne    4b0 <printf+0x50>
      }
      state = 0;
    }
  }
}
 51d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 520:	5b                   	pop    %ebx
 521:	5e                   	pop    %esi
 522:	5f                   	pop    %edi
 523:	5d                   	pop    %ebp
 524:	c3                   	ret
 525:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 528:	83 ec 0c             	sub    $0xc,%esp
 52b:	8b 17                	mov    (%edi),%edx
 52d:	b9 10 00 00 00       	mov    $0x10,%ecx
 532:	89 f0                	mov    %esi,%eax
 534:	6a 00                	push   $0x0
        ap++;
 536:	83 c7 04             	add    $0x4,%edi
        printint(fd, *ap, 16, 0);
 539:	e8 62 fe ff ff       	call   3a0 <printint>
  for(i = 0; fmt[i]; i++){
 53e:	eb cf                	jmp    50f <printf+0xaf>
        s = (char*)*ap;
 540:	8b 07                	mov    (%edi),%eax
        ap++;
 542:	83 c7 04             	add    $0x4,%edi
        if(s == 0)
 545:	85 c0                	test   %eax,%eax
 547:	0f 84 b3 00 00 00    	je     600 <printf+0x1a0>
        while(*s != 0){
 54d:	0f b6 10             	movzbl (%eax),%edx
 550:	84 d2                	test   %dl,%dl
 552:	0f 84 ba 00 00 00    	je     612 <printf+0x1b2>
 558:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 55b:	89 c7                	mov    %eax,%edi
 55d:	89 d0                	mov    %edx,%eax
 55f:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 562:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 565:	89 fb                	mov    %edi,%ebx
 567:	89 cf                	mov    %ecx,%edi
 569:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
 570:	83 ec 04             	sub    $0x4,%esp
 573:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 576:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 579:	6a 01                	push   $0x1
 57b:	57                   	push   %edi
 57c:	56                   	push   %esi
 57d:	e8 71 fd ff ff       	call   2f3 <write>
        while(*s != 0){
 582:	0f b6 03             	movzbl (%ebx),%eax
 585:	83 c4 10             	add    $0x10,%esp
 588:	84 c0                	test   %al,%al
 58a:	75 e4                	jne    570 <printf+0x110>
 58c:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  for(i = 0; fmt[i]; i++){
 58f:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 593:	83 c3 02             	add    $0x2,%ebx
 596:	84 d2                	test   %dl,%dl
 598:	0f 85 e5 fe ff ff    	jne    483 <printf+0x23>
 59e:	e9 7a ff ff ff       	jmp    51d <printf+0xbd>
 5a3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
 5a8:	83 ec 0c             	sub    $0xc,%esp
 5ab:	8b 17                	mov    (%edi),%edx
 5ad:	b9 0a 00 00 00       	mov    $0xa,%ecx
 5b2:	89 f0                	mov    %esi,%eax
 5b4:	6a 01                	push   $0x1
        ap++;
 5b6:	83 c7 04             	add    $0x4,%edi
        printint(fd, *ap, 10, 1);
 5b9:	e8 e2 fd ff ff       	call   3a0 <printint>
  for(i = 0; fmt[i]; i++){
 5be:	e9 4c ff ff ff       	jmp    50f <printf+0xaf>
 5c3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
 5c8:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 5ca:	83 ec 04             	sub    $0x4,%esp
 5cd:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        ap++;
 5d0:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 5d3:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 5d6:	6a 01                	push   $0x1
 5d8:	51                   	push   %ecx
 5d9:	56                   	push   %esi
 5da:	e8 14 fd ff ff       	call   2f3 <write>
  for(i = 0; fmt[i]; i++){
 5df:	e9 2b ff ff ff       	jmp    50f <printf+0xaf>
 5e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
 5e8:	83 ec 04             	sub    $0x4,%esp
 5eb:	88 55 e7             	mov    %dl,-0x19(%ebp)
 5ee:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 5f1:	6a 01                	push   $0x1
 5f3:	e9 10 ff ff ff       	jmp    508 <printf+0xa8>
 5f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 5ff:	00 
          s = "(null)";
 600:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 603:	b8 28 00 00 00       	mov    $0x28,%eax
 608:	bf fc 07 00 00       	mov    $0x7fc,%edi
 60d:	e9 4d ff ff ff       	jmp    55f <printf+0xff>
  for(i = 0; fmt[i]; i++){
 612:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 616:	83 c3 02             	add    $0x2,%ebx
 619:	84 d2                	test   %dl,%dl
 61b:	0f 85 8f fe ff ff    	jne    4b0 <printf+0x50>
 621:	e9 f7 fe ff ff       	jmp    51d <printf+0xbd>
 626:	66 90                	xchg   %ax,%ax
 628:	66 90                	xchg   %ax,%ax
 62a:	66 90                	xchg   %ax,%ax
 62c:	66 90                	xchg   %ax,%ax
 62e:	66 90                	xchg   %ax,%ax
 630:	66 90                	xchg   %ax,%ax
 632:	66 90                	xchg   %ax,%ax
 634:	66 90                	xchg   %ax,%ax
 636:	66 90                	xchg   %ax,%ax
 638:	66 90                	xchg   %ax,%ax
 63a:	66 90                	xchg   %ax,%ax
 63c:	66 90                	xchg   %ax,%ax
 63e:	66 90                	xchg   %ax,%ax

00000640 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 640:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 641:	a1 70 08 00 00       	mov    0x870,%eax
{
 646:	89 e5                	mov    %esp,%ebp
 648:	57                   	push   %edi
 649:	56                   	push   %esi
 64a:	53                   	push   %ebx
 64b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 64e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 651:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 658:	00 
 659:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 660:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 662:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 664:	39 ca                	cmp    %ecx,%edx
 666:	73 30                	jae    698 <free+0x58>
 668:	39 c1                	cmp    %eax,%ecx
 66a:	72 04                	jb     670 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 66c:	39 c2                	cmp    %eax,%edx
 66e:	72 f0                	jb     660 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 670:	8b 73 fc             	mov    -0x4(%ebx),%esi
 673:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 676:	39 f8                	cmp    %edi,%eax
 678:	74 36                	je     6b0 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 67a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 67d:	8b 42 04             	mov    0x4(%edx),%eax
 680:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 683:	39 f1                	cmp    %esi,%ecx
 685:	74 40                	je     6c7 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 687:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 689:	5b                   	pop    %ebx
  freep = p;
 68a:	89 15 70 08 00 00    	mov    %edx,0x870
}
 690:	5e                   	pop    %esi
 691:	5f                   	pop    %edi
 692:	5d                   	pop    %ebp
 693:	c3                   	ret
 694:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 698:	39 c2                	cmp    %eax,%edx
 69a:	72 c4                	jb     660 <free+0x20>
 69c:	39 c1                	cmp    %eax,%ecx
 69e:	73 c0                	jae    660 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
 6a0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 6a3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 6a6:	39 f8                	cmp    %edi,%eax
 6a8:	75 d0                	jne    67a <free+0x3a>
 6aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
 6b0:	03 70 04             	add    0x4(%eax),%esi
 6b3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 6b6:	8b 02                	mov    (%edx),%eax
 6b8:	8b 00                	mov    (%eax),%eax
 6ba:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 6bd:	8b 42 04             	mov    0x4(%edx),%eax
 6c0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 6c3:	39 f1                	cmp    %esi,%ecx
 6c5:	75 c0                	jne    687 <free+0x47>
    p->s.size += bp->s.size;
 6c7:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 6ca:	89 15 70 08 00 00    	mov    %edx,0x870
    p->s.size += bp->s.size;
 6d0:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 6d3:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 6d6:	89 0a                	mov    %ecx,(%edx)
}
 6d8:	5b                   	pop    %ebx
 6d9:	5e                   	pop    %esi
 6da:	5f                   	pop    %edi
 6db:	5d                   	pop    %ebp
 6dc:	c3                   	ret
 6dd:	8d 76 00             	lea    0x0(%esi),%esi

000006e0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 6e0:	55                   	push   %ebp
 6e1:	89 e5                	mov    %esp,%ebp
 6e3:	57                   	push   %edi
 6e4:	56                   	push   %esi
 6e5:	53                   	push   %ebx
 6e6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 6e9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 6ec:	8b 15 70 08 00 00    	mov    0x870,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 6f2:	8d 78 07             	lea    0x7(%eax),%edi
 6f5:	c1 ef 03             	shr    $0x3,%edi
 6f8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 6fb:	85 d2                	test   %edx,%edx
 6fd:	0f 84 8d 00 00 00    	je     790 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 703:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 705:	8b 48 04             	mov    0x4(%eax),%ecx
 708:	39 f9                	cmp    %edi,%ecx
 70a:	73 64                	jae    770 <malloc+0x90>
  if(nu < 4096)
 70c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 711:	39 df                	cmp    %ebx,%edi
 713:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 716:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 71d:	eb 0a                	jmp    729 <malloc+0x49>
 71f:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 720:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 722:	8b 48 04             	mov    0x4(%eax),%ecx
 725:	39 f9                	cmp    %edi,%ecx
 727:	73 47                	jae    770 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 729:	89 c2                	mov    %eax,%edx
 72b:	39 05 70 08 00 00    	cmp    %eax,0x870
 731:	75 ed                	jne    720 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 733:	83 ec 0c             	sub    $0xc,%esp
 736:	56                   	push   %esi
 737:	e8 1f fc ff ff       	call   35b <sbrk>
  if(p == (char*)-1)
 73c:	83 c4 10             	add    $0x10,%esp
 73f:	83 f8 ff             	cmp    $0xffffffff,%eax
 742:	74 1c                	je     760 <malloc+0x80>
  hp->s.size = nu;
 744:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 747:	83 ec 0c             	sub    $0xc,%esp
 74a:	83 c0 08             	add    $0x8,%eax
 74d:	50                   	push   %eax
 74e:	e8 ed fe ff ff       	call   640 <free>
  return freep;
 753:	8b 15 70 08 00 00    	mov    0x870,%edx
      if((p = morecore(nunits)) == 0)
 759:	83 c4 10             	add    $0x10,%esp
 75c:	85 d2                	test   %edx,%edx
 75e:	75 c0                	jne    720 <malloc+0x40>
        return 0;
  }
}
 760:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 763:	31 c0                	xor    %eax,%eax
}
 765:	5b                   	pop    %ebx
 766:	5e                   	pop    %esi
 767:	5f                   	pop    %edi
 768:	5d                   	pop    %ebp
 769:	c3                   	ret
 76a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 770:	39 cf                	cmp    %ecx,%edi
 772:	74 4c                	je     7c0 <malloc+0xe0>
        p->s.size -= nunits;
 774:	29 f9                	sub    %edi,%ecx
 776:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 779:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 77c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 77f:	89 15 70 08 00 00    	mov    %edx,0x870
}
 785:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 788:	83 c0 08             	add    $0x8,%eax
}
 78b:	5b                   	pop    %ebx
 78c:	5e                   	pop    %esi
 78d:	5f                   	pop    %edi
 78e:	5d                   	pop    %ebp
 78f:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 790:	c7 05 70 08 00 00 74 	movl   $0x874,0x870
 797:	08 00 00 
    base.s.size = 0;
 79a:	b8 74 08 00 00       	mov    $0x874,%eax
    base.s.ptr = freep = prevp = &base;
 79f:	c7 05 74 08 00 00 74 	movl   $0x874,0x874
 7a6:	08 00 00 
    base.s.size = 0;
 7a9:	c7 05 78 08 00 00 00 	movl   $0x0,0x878
 7b0:	00 00 00 
    if(p->s.size >= nunits){
 7b3:	e9 54 ff ff ff       	jmp    70c <malloc+0x2c>
 7b8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 7bf:	00 
        prevp->s.ptr = p->s.ptr;
 7c0:	8b 08                	mov    (%eax),%ecx
 7c2:	89 0a                	mov    %ecx,(%edx)
 7c4:	eb b9                	jmp    77f <malloc+0x9f>
