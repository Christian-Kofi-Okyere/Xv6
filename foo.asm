
_foo:     file format elf32-i386


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
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 08             	sub    $0x8,%esp
  int pid;
  int k, n;
  int x, z;

  if(argc < 2)
  14:	83 39 01             	cmpl   $0x1,(%ecx)
int main(int argc, char *argv[]) {
  17:	8b 41 04             	mov    0x4(%ecx),%eax
  if(argc < 2)
  1a:	7f 7b                	jg     97 <main+0x97>
  else
        n = atoi(argv[1]);
  if (n < 0 ||n > 20)
  n = 2;

  printf(1, "creating %d processes!\n", n);
  1c:	53                   	push   %ebx
        n = 1; //Default
  1d:	bf 01 00 00 00       	mov    $0x1,%edi
  printf(1, "creating %d processes!\n", n);
  22:	6a 01                	push   $0x1
  24:	68 48 08 00 00       	push   $0x848
  29:	6a 01                	push   $0x1
  2b:	e8 b0 04 00 00       	call   4e0 <printf>
  30:	83 c4 10             	add    $0x10,%esp

  x = 0;
  pid = 0;

  for ( k = 0; k < n; k++ ) {
  33:	31 f6                	xor    %esi,%esi
  35:	eb 31                	jmp    68 <main+0x68>
  37:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  3e:	00 
  3f:	90                   	nop
    pid = fork ();
    if ( pid < 0 ) {
      printf(1, "%d failed in fork!\n", getpid());
    } else if (pid > 0) {
  40:	0f 84 82 00 00 00    	je     c8 <main+0xc8>
      // parent
      printf(1, "Parent %d creating child %d\n",getpid(), pid);
  46:	e8 88 03 00 00       	call   3d3 <getpid>
  4b:	53                   	push   %ebx
  for ( k = 0; k < n; k++ ) {
  4c:	83 c6 01             	add    $0x1,%esi
      printf(1, "Parent %d creating child %d\n",getpid(), pid);
  4f:	50                   	push   %eax
  50:	68 74 08 00 00       	push   $0x874
  55:	6a 01                	push   $0x1
  57:	e8 84 04 00 00       	call   4e0 <printf>
      wait();
  5c:	e8 fa 02 00 00       	call   35b <wait>
  61:	83 c4 10             	add    $0x10,%esp
  for ( k = 0; k < n; k++ ) {
  64:	39 fe                	cmp    %edi,%esi
  66:	7d 2a                	jge    92 <main+0x92>
    pid = fork ();
  68:	e8 de 02 00 00       	call   34b <fork>
  6d:	89 c3                	mov    %eax,%ebx
    if ( pid < 0 ) {
  6f:	85 c0                	test   %eax,%eax
  71:	79 cd                	jns    40 <main+0x40>
      printf(1, "%d failed in fork!\n", getpid());
  73:	e8 5b 03 00 00       	call   3d3 <getpid>
  78:	83 ec 04             	sub    $0x4,%esp
  for ( k = 0; k < n; k++ ) {
  7b:	83 c6 01             	add    $0x1,%esi
      printf(1, "%d failed in fork!\n", getpid());
  7e:	50                   	push   %eax
  7f:	68 60 08 00 00       	push   $0x860
  84:	6a 01                	push   $0x1
  86:	e8 55 04 00 00       	call   4e0 <printf>
  8b:	83 c4 10             	add    $0x10,%esp
  for ( k = 0; k < n; k++ ) {
  8e:	39 fe                	cmp    %edi,%esi
  90:	7c d6                	jl     68 <main+0x68>
        for(z = 0; z < 4000000000; z+=1)
            x = x + 3.14*89.64; //Useless calculation to consume CPU Time
        break;
      }
  }
  exit();
  92:	e8 bc 02 00 00       	call   353 <exit>
        n = atoi(argv[1]);
  97:	83 ec 0c             	sub    $0xc,%esp
  9a:	ff 70 04             	push   0x4(%eax)
  9d:	e8 3e 02 00 00       	call   2e0 <atoi>
  if (n < 0 ||n > 20)
  a2:	83 c4 10             	add    $0x10,%esp
        n = atoi(argv[1]);
  a5:	89 c7                	mov    %eax,%edi
  if (n < 0 ||n > 20)
  a7:	83 f8 14             	cmp    $0x14,%eax
  aa:	76 34                	jbe    e0 <main+0xe0>
  printf(1, "creating %d processes!\n", n);
  ac:	56                   	push   %esi
  n = 2;
  ad:	bf 02 00 00 00       	mov    $0x2,%edi
  printf(1, "creating %d processes!\n", n);
  b2:	6a 02                	push   $0x2
  b4:	68 48 08 00 00       	push   $0x848
  b9:	6a 01                	push   $0x1
  bb:	e8 20 04 00 00       	call   4e0 <printf>
  c0:	83 c4 10             	add    $0x10,%esp
  c3:	e9 6b ff ff ff       	jmp    33 <main+0x33>
        printf(1,"Child %d created\n",getpid());
  c8:	e8 06 03 00 00       	call   3d3 <getpid>
  cd:	52                   	push   %edx
  ce:	50                   	push   %eax
  cf:	68 91 08 00 00       	push   $0x891
  d4:	6a 01                	push   $0x1
  d6:	e8 05 04 00 00       	call   4e0 <printf>
  db:	83 c4 10             	add    $0x10,%esp
        for(z = 0; z < 4000000000; z+=1)
  de:	eb fe                	jmp    de <main+0xde>
  printf(1, "creating %d processes!\n", n);
  e0:	51                   	push   %ecx
  e1:	50                   	push   %eax
  e2:	68 48 08 00 00       	push   $0x848
  e7:	6a 01                	push   $0x1
  e9:	e8 f2 03 00 00       	call   4e0 <printf>
  for ( k = 0; k < n; k++ ) {
  ee:	83 c4 10             	add    $0x10,%esp
  f1:	85 ff                	test   %edi,%edi
  f3:	0f 85 3a ff ff ff    	jne    33 <main+0x33>
  f9:	eb 97                	jmp    92 <main+0x92>
  fb:	66 90                	xchg   %ax,%ax
  fd:	66 90                	xchg   %ax,%ax
  ff:	90                   	nop

00000100 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 100:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 101:	31 c0                	xor    %eax,%eax
{
 103:	89 e5                	mov    %esp,%ebp
 105:	53                   	push   %ebx
 106:	8b 4d 08             	mov    0x8(%ebp),%ecx
 109:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 10c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 110:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 114:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 117:	83 c0 01             	add    $0x1,%eax
 11a:	84 d2                	test   %dl,%dl
 11c:	75 f2                	jne    110 <strcpy+0x10>
    ;
  return os;
}
 11e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 121:	89 c8                	mov    %ecx,%eax
 123:	c9                   	leave
 124:	c3                   	ret
 125:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 12c:	00 
 12d:	8d 76 00             	lea    0x0(%esi),%esi

00000130 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	53                   	push   %ebx
 134:	8b 55 08             	mov    0x8(%ebp),%edx
 137:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 13a:	0f b6 02             	movzbl (%edx),%eax
 13d:	84 c0                	test   %al,%al
 13f:	75 2f                	jne    170 <strcmp+0x40>
 141:	eb 4a                	jmp    18d <strcmp+0x5d>
 143:	eb 1b                	jmp    160 <strcmp+0x30>
 145:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 14c:	00 
 14d:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 154:	00 
 155:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 15c:	00 
 15d:	8d 76 00             	lea    0x0(%esi),%esi
 160:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 164:	83 c2 01             	add    $0x1,%edx
 167:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 16a:	84 c0                	test   %al,%al
 16c:	74 12                	je     180 <strcmp+0x50>
 16e:	89 d9                	mov    %ebx,%ecx
 170:	0f b6 19             	movzbl (%ecx),%ebx
 173:	38 c3                	cmp    %al,%bl
 175:	74 e9                	je     160 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
 177:	29 d8                	sub    %ebx,%eax
}
 179:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 17c:	c9                   	leave
 17d:	c3                   	ret
 17e:	66 90                	xchg   %ax,%ax
  return (uchar)*p - (uchar)*q;
 180:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 184:	31 c0                	xor    %eax,%eax
 186:	29 d8                	sub    %ebx,%eax
}
 188:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 18b:	c9                   	leave
 18c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
 18d:	0f b6 19             	movzbl (%ecx),%ebx
 190:	31 c0                	xor    %eax,%eax
 192:	eb e3                	jmp    177 <strcmp+0x47>
 194:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 19b:	00 
 19c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000001a0 <strlen>:

uint
strlen(const char *s)
{
 1a0:	55                   	push   %ebp
 1a1:	89 e5                	mov    %esp,%ebp
 1a3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 1a6:	80 3a 00             	cmpb   $0x0,(%edx)
 1a9:	74 15                	je     1c0 <strlen+0x20>
 1ab:	31 c0                	xor    %eax,%eax
 1ad:	8d 76 00             	lea    0x0(%esi),%esi
 1b0:	83 c0 01             	add    $0x1,%eax
 1b3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 1b7:	89 c1                	mov    %eax,%ecx
 1b9:	75 f5                	jne    1b0 <strlen+0x10>
    ;
  return n;
}
 1bb:	89 c8                	mov    %ecx,%eax
 1bd:	5d                   	pop    %ebp
 1be:	c3                   	ret
 1bf:	90                   	nop
  for(n = 0; s[n]; n++)
 1c0:	31 c9                	xor    %ecx,%ecx
}
 1c2:	5d                   	pop    %ebp
 1c3:	89 c8                	mov    %ecx,%eax
 1c5:	c3                   	ret
 1c6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1cd:	00 
 1ce:	66 90                	xchg   %ax,%ax

000001d0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
 1d3:	57                   	push   %edi
 1d4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 1d7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1da:	8b 45 0c             	mov    0xc(%ebp),%eax
 1dd:	89 d7                	mov    %edx,%edi
 1df:	fc                   	cld
 1e0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 1e2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 1e5:	89 d0                	mov    %edx,%eax
 1e7:	c9                   	leave
 1e8:	c3                   	ret
 1e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000001f0 <strchr>:

char*
strchr(const char *s, char c)
{
 1f0:	55                   	push   %ebp
 1f1:	89 e5                	mov    %esp,%ebp
 1f3:	8b 45 08             	mov    0x8(%ebp),%eax
 1f6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 1fa:	0f b6 10             	movzbl (%eax),%edx
 1fd:	84 d2                	test   %dl,%dl
 1ff:	75 1a                	jne    21b <strchr+0x2b>
 201:	eb 25                	jmp    228 <strchr+0x38>
 203:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 20a:	00 
 20b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 210:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 214:	83 c0 01             	add    $0x1,%eax
 217:	84 d2                	test   %dl,%dl
 219:	74 0d                	je     228 <strchr+0x38>
    if(*s == c)
 21b:	38 d1                	cmp    %dl,%cl
 21d:	75 f1                	jne    210 <strchr+0x20>
      return (char*)s;
  return 0;
}
 21f:	5d                   	pop    %ebp
 220:	c3                   	ret
 221:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 228:	31 c0                	xor    %eax,%eax
}
 22a:	5d                   	pop    %ebp
 22b:	c3                   	ret
 22c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000230 <gets>:

char*
gets(char *buf, int max)
{
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	57                   	push   %edi
 234:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 235:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
 238:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 239:	31 db                	xor    %ebx,%ebx
{
 23b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 23e:	eb 27                	jmp    267 <gets+0x37>
    cc = read(0, &c, 1);
 240:	83 ec 04             	sub    $0x4,%esp
 243:	6a 01                	push   $0x1
 245:	56                   	push   %esi
 246:	6a 00                	push   $0x0
 248:	e8 1e 01 00 00       	call   36b <read>
    if(cc < 1)
 24d:	83 c4 10             	add    $0x10,%esp
 250:	85 c0                	test   %eax,%eax
 252:	7e 1d                	jle    271 <gets+0x41>
      break;
    buf[i++] = c;
 254:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 258:	8b 55 08             	mov    0x8(%ebp),%edx
 25b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 25f:	3c 0a                	cmp    $0xa,%al
 261:	74 10                	je     273 <gets+0x43>
 263:	3c 0d                	cmp    $0xd,%al
 265:	74 0c                	je     273 <gets+0x43>
  for(i=0; i+1 < max; ){
 267:	89 df                	mov    %ebx,%edi
 269:	83 c3 01             	add    $0x1,%ebx
 26c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 26f:	7c cf                	jl     240 <gets+0x10>
 271:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
 273:	8b 45 08             	mov    0x8(%ebp),%eax
 276:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
 27a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 27d:	5b                   	pop    %ebx
 27e:	5e                   	pop    %esi
 27f:	5f                   	pop    %edi
 280:	5d                   	pop    %ebp
 281:	c3                   	ret
 282:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 289:	00 
 28a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000290 <stat>:

int
stat(const char *n, struct stat *st)
{
 290:	55                   	push   %ebp
 291:	89 e5                	mov    %esp,%ebp
 293:	56                   	push   %esi
 294:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 295:	83 ec 08             	sub    $0x8,%esp
 298:	6a 00                	push   $0x0
 29a:	ff 75 08             	push   0x8(%ebp)
 29d:	e8 f1 00 00 00       	call   393 <open>
  if(fd < 0)
 2a2:	83 c4 10             	add    $0x10,%esp
 2a5:	85 c0                	test   %eax,%eax
 2a7:	78 27                	js     2d0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 2a9:	83 ec 08             	sub    $0x8,%esp
 2ac:	ff 75 0c             	push   0xc(%ebp)
 2af:	89 c3                	mov    %eax,%ebx
 2b1:	50                   	push   %eax
 2b2:	e8 f4 00 00 00       	call   3ab <fstat>
  close(fd);
 2b7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 2ba:	89 c6                	mov    %eax,%esi
  close(fd);
 2bc:	e8 ba 00 00 00       	call   37b <close>
  return r;
 2c1:	83 c4 10             	add    $0x10,%esp
}
 2c4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 2c7:	89 f0                	mov    %esi,%eax
 2c9:	5b                   	pop    %ebx
 2ca:	5e                   	pop    %esi
 2cb:	5d                   	pop    %ebp
 2cc:	c3                   	ret
 2cd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 2d0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 2d5:	eb ed                	jmp    2c4 <stat+0x34>
 2d7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 2de:	00 
 2df:	90                   	nop

000002e0 <atoi>:

int
atoi(const char *s)
{
 2e0:	55                   	push   %ebp
 2e1:	89 e5                	mov    %esp,%ebp
 2e3:	53                   	push   %ebx
 2e4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 2e7:	0f be 02             	movsbl (%edx),%eax
 2ea:	8d 48 d0             	lea    -0x30(%eax),%ecx
 2ed:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 2f0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 2f5:	77 1e                	ja     315 <atoi+0x35>
 2f7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 2fe:	00 
 2ff:	90                   	nop
    n = n*10 + *s++ - '0';
 300:	83 c2 01             	add    $0x1,%edx
 303:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 306:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 30a:	0f be 02             	movsbl (%edx),%eax
 30d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 310:	80 fb 09             	cmp    $0x9,%bl
 313:	76 eb                	jbe    300 <atoi+0x20>
  return n;
}
 315:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 318:	89 c8                	mov    %ecx,%eax
 31a:	c9                   	leave
 31b:	c3                   	ret
 31c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000320 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 320:	55                   	push   %ebp
 321:	89 e5                	mov    %esp,%ebp
 323:	57                   	push   %edi
 324:	8b 45 10             	mov    0x10(%ebp),%eax
 327:	8b 55 08             	mov    0x8(%ebp),%edx
 32a:	56                   	push   %esi
 32b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 32e:	85 c0                	test   %eax,%eax
 330:	7e 13                	jle    345 <memmove+0x25>
 332:	01 d0                	add    %edx,%eax
  dst = vdst;
 334:	89 d7                	mov    %edx,%edi
 336:	66 90                	xchg   %ax,%ax
 338:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 33f:	00 
    *dst++ = *src++;
 340:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 341:	39 f8                	cmp    %edi,%eax
 343:	75 fb                	jne    340 <memmove+0x20>
  return vdst;
}
 345:	5e                   	pop    %esi
 346:	89 d0                	mov    %edx,%eax
 348:	5f                   	pop    %edi
 349:	5d                   	pop    %ebp
 34a:	c3                   	ret

0000034b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 34b:	b8 01 00 00 00       	mov    $0x1,%eax
 350:	cd 40                	int    $0x40
 352:	c3                   	ret

00000353 <exit>:
SYSCALL(exit)
 353:	b8 02 00 00 00       	mov    $0x2,%eax
 358:	cd 40                	int    $0x40
 35a:	c3                   	ret

0000035b <wait>:
SYSCALL(wait)
 35b:	b8 03 00 00 00       	mov    $0x3,%eax
 360:	cd 40                	int    $0x40
 362:	c3                   	ret

00000363 <pipe>:
SYSCALL(pipe)
 363:	b8 04 00 00 00       	mov    $0x4,%eax
 368:	cd 40                	int    $0x40
 36a:	c3                   	ret

0000036b <read>:
SYSCALL(read)
 36b:	b8 05 00 00 00       	mov    $0x5,%eax
 370:	cd 40                	int    $0x40
 372:	c3                   	ret

00000373 <write>:
SYSCALL(write)
 373:	b8 10 00 00 00       	mov    $0x10,%eax
 378:	cd 40                	int    $0x40
 37a:	c3                   	ret

0000037b <close>:
SYSCALL(close)
 37b:	b8 15 00 00 00       	mov    $0x15,%eax
 380:	cd 40                	int    $0x40
 382:	c3                   	ret

00000383 <kill>:
SYSCALL(kill)
 383:	b8 06 00 00 00       	mov    $0x6,%eax
 388:	cd 40                	int    $0x40
 38a:	c3                   	ret

0000038b <exec>:
SYSCALL(exec)
 38b:	b8 07 00 00 00       	mov    $0x7,%eax
 390:	cd 40                	int    $0x40
 392:	c3                   	ret

00000393 <open>:
SYSCALL(open)
 393:	b8 0f 00 00 00       	mov    $0xf,%eax
 398:	cd 40                	int    $0x40
 39a:	c3                   	ret

0000039b <mknod>:
SYSCALL(mknod)
 39b:	b8 11 00 00 00       	mov    $0x11,%eax
 3a0:	cd 40                	int    $0x40
 3a2:	c3                   	ret

000003a3 <unlink>:
SYSCALL(unlink)
 3a3:	b8 12 00 00 00       	mov    $0x12,%eax
 3a8:	cd 40                	int    $0x40
 3aa:	c3                   	ret

000003ab <fstat>:
SYSCALL(fstat)
 3ab:	b8 08 00 00 00       	mov    $0x8,%eax
 3b0:	cd 40                	int    $0x40
 3b2:	c3                   	ret

000003b3 <link>:
SYSCALL(link)
 3b3:	b8 13 00 00 00       	mov    $0x13,%eax
 3b8:	cd 40                	int    $0x40
 3ba:	c3                   	ret

000003bb <mkdir>:
SYSCALL(mkdir)
 3bb:	b8 14 00 00 00       	mov    $0x14,%eax
 3c0:	cd 40                	int    $0x40
 3c2:	c3                   	ret

000003c3 <chdir>:
SYSCALL(chdir)
 3c3:	b8 09 00 00 00       	mov    $0x9,%eax
 3c8:	cd 40                	int    $0x40
 3ca:	c3                   	ret

000003cb <dup>:
SYSCALL(dup)
 3cb:	b8 0a 00 00 00       	mov    $0xa,%eax
 3d0:	cd 40                	int    $0x40
 3d2:	c3                   	ret

000003d3 <getpid>:
SYSCALL(getpid)
 3d3:	b8 0b 00 00 00       	mov    $0xb,%eax
 3d8:	cd 40                	int    $0x40
 3da:	c3                   	ret

000003db <sbrk>:
SYSCALL(sbrk)
 3db:	b8 0c 00 00 00       	mov    $0xc,%eax
 3e0:	cd 40                	int    $0x40
 3e2:	c3                   	ret

000003e3 <sleep>:
SYSCALL(sleep)
 3e3:	b8 0d 00 00 00       	mov    $0xd,%eax
 3e8:	cd 40                	int    $0x40
 3ea:	c3                   	ret

000003eb <uptime>:
SYSCALL(uptime)
 3eb:	b8 0e 00 00 00       	mov    $0xe,%eax
 3f0:	cd 40                	int    $0x40
 3f2:	c3                   	ret

000003f3 <ps>:
SYSCALL(ps)
 3f3:	b8 16 00 00 00       	mov    $0x16,%eax
 3f8:	cd 40                	int    $0x40
 3fa:	c3                   	ret

000003fb <chpr>:
SYSCALL(chpr)
 3fb:	b8 17 00 00 00       	mov    $0x17,%eax
 400:	cd 40                	int    $0x40
 402:	c3                   	ret
 403:	66 90                	xchg   %ax,%ax
 405:	66 90                	xchg   %ax,%ax
 407:	66 90                	xchg   %ax,%ax
 409:	66 90                	xchg   %ax,%ax
 40b:	66 90                	xchg   %ax,%ax
 40d:	66 90                	xchg   %ax,%ax
 40f:	66 90                	xchg   %ax,%ax
 411:	66 90                	xchg   %ax,%ax
 413:	66 90                	xchg   %ax,%ax
 415:	66 90                	xchg   %ax,%ax
 417:	66 90                	xchg   %ax,%ax
 419:	66 90                	xchg   %ax,%ax
 41b:	66 90                	xchg   %ax,%ax
 41d:	66 90                	xchg   %ax,%ax
 41f:	90                   	nop

00000420 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	57                   	push   %edi
 424:	56                   	push   %esi
 425:	53                   	push   %ebx
 426:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 428:	89 d1                	mov    %edx,%ecx
{
 42a:	83 ec 3c             	sub    $0x3c,%esp
 42d:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  if(sgn && xx < 0){
 430:	85 d2                	test   %edx,%edx
 432:	0f 89 98 00 00 00    	jns    4d0 <printint+0xb0>
 438:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 43c:	0f 84 8e 00 00 00    	je     4d0 <printint+0xb0>
    x = -xx;
 442:	f7 d9                	neg    %ecx
    neg = 1;
 444:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
 449:	89 45 c0             	mov    %eax,-0x40(%ebp)
 44c:	31 f6                	xor    %esi,%esi
 44e:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 455:	00 
 456:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 45d:	00 
 45e:	66 90                	xchg   %ax,%ax
  do{
    buf[i++] = digits[x % base];
 460:	89 c8                	mov    %ecx,%eax
 462:	31 d2                	xor    %edx,%edx
 464:	89 f7                	mov    %esi,%edi
 466:	f7 f3                	div    %ebx
 468:	8d 76 01             	lea    0x1(%esi),%esi
 46b:	0f b6 92 04 09 00 00 	movzbl 0x904(%edx),%edx
 472:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 476:	89 ca                	mov    %ecx,%edx
 478:	89 c1                	mov    %eax,%ecx
 47a:	39 da                	cmp    %ebx,%edx
 47c:	73 e2                	jae    460 <printint+0x40>
  if(neg)
 47e:	8b 45 c0             	mov    -0x40(%ebp),%eax
 481:	85 c0                	test   %eax,%eax
 483:	74 07                	je     48c <printint+0x6c>
    buf[i++] = '-';
 485:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
 48a:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
 48c:	8d 5d d8             	lea    -0x28(%ebp),%ebx
 48f:	8b 75 c4             	mov    -0x3c(%ebp),%esi
 492:	01 df                	add    %ebx,%edi
 494:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 49b:	00 
 49c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    putc(fd, buf[i]);
 4a0:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
 4a3:	83 ec 04             	sub    $0x4,%esp
 4a6:	88 45 d7             	mov    %al,-0x29(%ebp)
 4a9:	8d 45 d7             	lea    -0x29(%ebp),%eax
 4ac:	6a 01                	push   $0x1
 4ae:	50                   	push   %eax
 4af:	56                   	push   %esi
 4b0:	e8 be fe ff ff       	call   373 <write>
  while(--i >= 0)
 4b5:	89 f8                	mov    %edi,%eax
 4b7:	83 c4 10             	add    $0x10,%esp
 4ba:	83 ef 01             	sub    $0x1,%edi
 4bd:	39 d8                	cmp    %ebx,%eax
 4bf:	75 df                	jne    4a0 <printint+0x80>
}
 4c1:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4c4:	5b                   	pop    %ebx
 4c5:	5e                   	pop    %esi
 4c6:	5f                   	pop    %edi
 4c7:	5d                   	pop    %ebp
 4c8:	c3                   	ret
 4c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 4d0:	31 c0                	xor    %eax,%eax
 4d2:	e9 72 ff ff ff       	jmp    449 <printint+0x29>
 4d7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4de:	00 
 4df:	90                   	nop

000004e0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	57                   	push   %edi
 4e4:	56                   	push   %esi
 4e5:	53                   	push   %ebx
 4e6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 4e9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 4ec:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 4ef:	0f b6 13             	movzbl (%ebx),%edx
 4f2:	83 c3 01             	add    $0x1,%ebx
 4f5:	84 d2                	test   %dl,%dl
 4f7:	0f 84 a0 00 00 00    	je     59d <printf+0xbd>
 4fd:	8d 45 10             	lea    0x10(%ebp),%eax
 500:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c = fmt[i] & 0xff;
 503:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 506:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 509:	eb 28                	jmp    533 <printf+0x53>
 50b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
 510:	83 ec 04             	sub    $0x4,%esp
 513:	8d 45 e7             	lea    -0x19(%ebp),%eax
 516:	88 55 e7             	mov    %dl,-0x19(%ebp)
  for(i = 0; fmt[i]; i++){
 519:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 51c:	6a 01                	push   $0x1
 51e:	50                   	push   %eax
 51f:	56                   	push   %esi
 520:	e8 4e fe ff ff       	call   373 <write>
  for(i = 0; fmt[i]; i++){
 525:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 529:	83 c4 10             	add    $0x10,%esp
 52c:	84 d2                	test   %dl,%dl
 52e:	74 6d                	je     59d <printf+0xbd>
    c = fmt[i] & 0xff;
 530:	0f b6 c2             	movzbl %dl,%eax
      if(c == '%'){
 533:	83 f8 25             	cmp    $0x25,%eax
 536:	75 d8                	jne    510 <printf+0x30>
  for(i = 0; fmt[i]; i++){
 538:	0f b6 13             	movzbl (%ebx),%edx
 53b:	84 d2                	test   %dl,%dl
 53d:	74 5e                	je     59d <printf+0xbd>
    c = fmt[i] & 0xff;
 53f:	0f b6 c2             	movzbl %dl,%eax
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
 542:	80 fa 25             	cmp    $0x25,%dl
 545:	0f 84 1d 01 00 00    	je     668 <printf+0x188>
 54b:	83 e8 63             	sub    $0x63,%eax
 54e:	83 f8 15             	cmp    $0x15,%eax
 551:	77 0d                	ja     560 <printf+0x80>
 553:	ff 24 85 ac 08 00 00 	jmp    *0x8ac(,%eax,4)
 55a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 560:	83 ec 04             	sub    $0x4,%esp
 563:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 566:	88 55 d0             	mov    %dl,-0x30(%ebp)
        ap++;
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
 569:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
 56d:	6a 01                	push   $0x1
 56f:	51                   	push   %ecx
 570:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
 573:	56                   	push   %esi
 574:	e8 fa fd ff ff       	call   373 <write>
        putc(fd, c);
 579:	0f b6 55 d0          	movzbl -0x30(%ebp),%edx
  write(fd, &c, 1);
 57d:	83 c4 0c             	add    $0xc,%esp
 580:	88 55 e7             	mov    %dl,-0x19(%ebp)
 583:	6a 01                	push   $0x1
 585:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
 588:	51                   	push   %ecx
 589:	56                   	push   %esi
 58a:	e8 e4 fd ff ff       	call   373 <write>
  for(i = 0; fmt[i]; i++){
 58f:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 593:	83 c3 02             	add    $0x2,%ebx
 596:	83 c4 10             	add    $0x10,%esp
 599:	84 d2                	test   %dl,%dl
 59b:	75 93                	jne    530 <printf+0x50>
      }
      state = 0;
    }
  }
}
 59d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5a0:	5b                   	pop    %ebx
 5a1:	5e                   	pop    %esi
 5a2:	5f                   	pop    %edi
 5a3:	5d                   	pop    %ebp
 5a4:	c3                   	ret
 5a5:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 5a8:	83 ec 0c             	sub    $0xc,%esp
 5ab:	8b 17                	mov    (%edi),%edx
 5ad:	b9 10 00 00 00       	mov    $0x10,%ecx
 5b2:	89 f0                	mov    %esi,%eax
 5b4:	6a 00                	push   $0x0
        ap++;
 5b6:	83 c7 04             	add    $0x4,%edi
        printint(fd, *ap, 16, 0);
 5b9:	e8 62 fe ff ff       	call   420 <printint>
  for(i = 0; fmt[i]; i++){
 5be:	eb cf                	jmp    58f <printf+0xaf>
        s = (char*)*ap;
 5c0:	8b 07                	mov    (%edi),%eax
        ap++;
 5c2:	83 c7 04             	add    $0x4,%edi
        if(s == 0)
 5c5:	85 c0                	test   %eax,%eax
 5c7:	0f 84 b3 00 00 00    	je     680 <printf+0x1a0>
        while(*s != 0){
 5cd:	0f b6 10             	movzbl (%eax),%edx
 5d0:	84 d2                	test   %dl,%dl
 5d2:	0f 84 ba 00 00 00    	je     692 <printf+0x1b2>
 5d8:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 5db:	89 c7                	mov    %eax,%edi
 5dd:	89 d0                	mov    %edx,%eax
 5df:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 5e2:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 5e5:	89 fb                	mov    %edi,%ebx
 5e7:	89 cf                	mov    %ecx,%edi
 5e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
 5f0:	83 ec 04             	sub    $0x4,%esp
 5f3:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 5f6:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 5f9:	6a 01                	push   $0x1
 5fb:	57                   	push   %edi
 5fc:	56                   	push   %esi
 5fd:	e8 71 fd ff ff       	call   373 <write>
        while(*s != 0){
 602:	0f b6 03             	movzbl (%ebx),%eax
 605:	83 c4 10             	add    $0x10,%esp
 608:	84 c0                	test   %al,%al
 60a:	75 e4                	jne    5f0 <printf+0x110>
 60c:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  for(i = 0; fmt[i]; i++){
 60f:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 613:	83 c3 02             	add    $0x2,%ebx
 616:	84 d2                	test   %dl,%dl
 618:	0f 85 e5 fe ff ff    	jne    503 <printf+0x23>
 61e:	e9 7a ff ff ff       	jmp    59d <printf+0xbd>
 623:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
 628:	83 ec 0c             	sub    $0xc,%esp
 62b:	8b 17                	mov    (%edi),%edx
 62d:	b9 0a 00 00 00       	mov    $0xa,%ecx
 632:	89 f0                	mov    %esi,%eax
 634:	6a 01                	push   $0x1
        ap++;
 636:	83 c7 04             	add    $0x4,%edi
        printint(fd, *ap, 10, 1);
 639:	e8 e2 fd ff ff       	call   420 <printint>
  for(i = 0; fmt[i]; i++){
 63e:	e9 4c ff ff ff       	jmp    58f <printf+0xaf>
 643:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
 648:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 64a:	83 ec 04             	sub    $0x4,%esp
 64d:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        ap++;
 650:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 653:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 656:	6a 01                	push   $0x1
 658:	51                   	push   %ecx
 659:	56                   	push   %esi
 65a:	e8 14 fd ff ff       	call   373 <write>
  for(i = 0; fmt[i]; i++){
 65f:	e9 2b ff ff ff       	jmp    58f <printf+0xaf>
 664:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
 668:	83 ec 04             	sub    $0x4,%esp
 66b:	88 55 e7             	mov    %dl,-0x19(%ebp)
 66e:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 671:	6a 01                	push   $0x1
 673:	e9 10 ff ff ff       	jmp    588 <printf+0xa8>
 678:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 67f:	00 
          s = "(null)";
 680:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 683:	b8 28 00 00 00       	mov    $0x28,%eax
 688:	bf a3 08 00 00       	mov    $0x8a3,%edi
 68d:	e9 4d ff ff ff       	jmp    5df <printf+0xff>
  for(i = 0; fmt[i]; i++){
 692:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 696:	83 c3 02             	add    $0x2,%ebx
 699:	84 d2                	test   %dl,%dl
 69b:	0f 85 8f fe ff ff    	jne    530 <printf+0x50>
 6a1:	e9 f7 fe ff ff       	jmp    59d <printf+0xbd>
 6a6:	66 90                	xchg   %ax,%ax
 6a8:	66 90                	xchg   %ax,%ax
 6aa:	66 90                	xchg   %ax,%ax
 6ac:	66 90                	xchg   %ax,%ax
 6ae:	66 90                	xchg   %ax,%ax
 6b0:	66 90                	xchg   %ax,%ax
 6b2:	66 90                	xchg   %ax,%ax
 6b4:	66 90                	xchg   %ax,%ax
 6b6:	66 90                	xchg   %ax,%ax
 6b8:	66 90                	xchg   %ax,%ax
 6ba:	66 90                	xchg   %ax,%ax
 6bc:	66 90                	xchg   %ax,%ax
 6be:	66 90                	xchg   %ax,%ax

000006c0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 6c0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6c1:	a1 18 09 00 00       	mov    0x918,%eax
{
 6c6:	89 e5                	mov    %esp,%ebp
 6c8:	57                   	push   %edi
 6c9:	56                   	push   %esi
 6ca:	53                   	push   %ebx
 6cb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 6ce:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6d1:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6d8:	00 
 6d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6e0:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6e2:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6e4:	39 ca                	cmp    %ecx,%edx
 6e6:	73 30                	jae    718 <free+0x58>
 6e8:	39 c1                	cmp    %eax,%ecx
 6ea:	72 04                	jb     6f0 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6ec:	39 c2                	cmp    %eax,%edx
 6ee:	72 f0                	jb     6e0 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 6f0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 6f3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 6f6:	39 f8                	cmp    %edi,%eax
 6f8:	74 36                	je     730 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 6fa:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 6fd:	8b 42 04             	mov    0x4(%edx),%eax
 700:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 703:	39 f1                	cmp    %esi,%ecx
 705:	74 40                	je     747 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 707:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 709:	5b                   	pop    %ebx
  freep = p;
 70a:	89 15 18 09 00 00    	mov    %edx,0x918
}
 710:	5e                   	pop    %esi
 711:	5f                   	pop    %edi
 712:	5d                   	pop    %ebp
 713:	c3                   	ret
 714:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 718:	39 c2                	cmp    %eax,%edx
 71a:	72 c4                	jb     6e0 <free+0x20>
 71c:	39 c1                	cmp    %eax,%ecx
 71e:	73 c0                	jae    6e0 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
 720:	8b 73 fc             	mov    -0x4(%ebx),%esi
 723:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 726:	39 f8                	cmp    %edi,%eax
 728:	75 d0                	jne    6fa <free+0x3a>
 72a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
 730:	03 70 04             	add    0x4(%eax),%esi
 733:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 736:	8b 02                	mov    (%edx),%eax
 738:	8b 00                	mov    (%eax),%eax
 73a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 73d:	8b 42 04             	mov    0x4(%edx),%eax
 740:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 743:	39 f1                	cmp    %esi,%ecx
 745:	75 c0                	jne    707 <free+0x47>
    p->s.size += bp->s.size;
 747:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 74a:	89 15 18 09 00 00    	mov    %edx,0x918
    p->s.size += bp->s.size;
 750:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 753:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 756:	89 0a                	mov    %ecx,(%edx)
}
 758:	5b                   	pop    %ebx
 759:	5e                   	pop    %esi
 75a:	5f                   	pop    %edi
 75b:	5d                   	pop    %ebp
 75c:	c3                   	ret
 75d:	8d 76 00             	lea    0x0(%esi),%esi

00000760 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 760:	55                   	push   %ebp
 761:	89 e5                	mov    %esp,%ebp
 763:	57                   	push   %edi
 764:	56                   	push   %esi
 765:	53                   	push   %ebx
 766:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 769:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 76c:	8b 15 18 09 00 00    	mov    0x918,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 772:	8d 78 07             	lea    0x7(%eax),%edi
 775:	c1 ef 03             	shr    $0x3,%edi
 778:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 77b:	85 d2                	test   %edx,%edx
 77d:	0f 84 8d 00 00 00    	je     810 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 783:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 785:	8b 48 04             	mov    0x4(%eax),%ecx
 788:	39 f9                	cmp    %edi,%ecx
 78a:	73 64                	jae    7f0 <malloc+0x90>
  if(nu < 4096)
 78c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 791:	39 df                	cmp    %ebx,%edi
 793:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 796:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 79d:	eb 0a                	jmp    7a9 <malloc+0x49>
 79f:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 7a0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 7a2:	8b 48 04             	mov    0x4(%eax),%ecx
 7a5:	39 f9                	cmp    %edi,%ecx
 7a7:	73 47                	jae    7f0 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 7a9:	89 c2                	mov    %eax,%edx
 7ab:	39 05 18 09 00 00    	cmp    %eax,0x918
 7b1:	75 ed                	jne    7a0 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 7b3:	83 ec 0c             	sub    $0xc,%esp
 7b6:	56                   	push   %esi
 7b7:	e8 1f fc ff ff       	call   3db <sbrk>
  if(p == (char*)-1)
 7bc:	83 c4 10             	add    $0x10,%esp
 7bf:	83 f8 ff             	cmp    $0xffffffff,%eax
 7c2:	74 1c                	je     7e0 <malloc+0x80>
  hp->s.size = nu;
 7c4:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 7c7:	83 ec 0c             	sub    $0xc,%esp
 7ca:	83 c0 08             	add    $0x8,%eax
 7cd:	50                   	push   %eax
 7ce:	e8 ed fe ff ff       	call   6c0 <free>
  return freep;
 7d3:	8b 15 18 09 00 00    	mov    0x918,%edx
      if((p = morecore(nunits)) == 0)
 7d9:	83 c4 10             	add    $0x10,%esp
 7dc:	85 d2                	test   %edx,%edx
 7de:	75 c0                	jne    7a0 <malloc+0x40>
        return 0;
  }
}
 7e0:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 7e3:	31 c0                	xor    %eax,%eax
}
 7e5:	5b                   	pop    %ebx
 7e6:	5e                   	pop    %esi
 7e7:	5f                   	pop    %edi
 7e8:	5d                   	pop    %ebp
 7e9:	c3                   	ret
 7ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 7f0:	39 cf                	cmp    %ecx,%edi
 7f2:	74 4c                	je     840 <malloc+0xe0>
        p->s.size -= nunits;
 7f4:	29 f9                	sub    %edi,%ecx
 7f6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 7f9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 7fc:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 7ff:	89 15 18 09 00 00    	mov    %edx,0x918
}
 805:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 808:	83 c0 08             	add    $0x8,%eax
}
 80b:	5b                   	pop    %ebx
 80c:	5e                   	pop    %esi
 80d:	5f                   	pop    %edi
 80e:	5d                   	pop    %ebp
 80f:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 810:	c7 05 18 09 00 00 1c 	movl   $0x91c,0x918
 817:	09 00 00 
    base.s.size = 0;
 81a:	b8 1c 09 00 00       	mov    $0x91c,%eax
    base.s.ptr = freep = prevp = &base;
 81f:	c7 05 1c 09 00 00 1c 	movl   $0x91c,0x91c
 826:	09 00 00 
    base.s.size = 0;
 829:	c7 05 20 09 00 00 00 	movl   $0x0,0x920
 830:	00 00 00 
    if(p->s.size >= nunits){
 833:	e9 54 ff ff ff       	jmp    78c <malloc+0x2c>
 838:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 83f:	00 
        prevp->s.ptr = p->s.ptr;
 840:	8b 08                	mov    (%eax),%ecx
 842:	89 0a                	mov    %ecx,(%edx)
 844:	eb b9                	jmp    7ff <malloc+0x9f>
