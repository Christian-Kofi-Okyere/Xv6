
_wc:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  printf(1, "%d %d %d %s\n", l, w, c, name);
}

int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	bf 01 00 00 00       	mov    $0x1,%edi
  13:	56                   	push   %esi
  14:	53                   	push   %ebx
  15:	51                   	push   %ecx
  16:	83 ec 18             	sub    $0x18,%esp
  19:	8b 01                	mov    (%ecx),%eax
  1b:	8b 71 04             	mov    0x4(%ecx),%esi
  1e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  int fd, i;

  if(argc <= 1){
  21:	83 f8 01             	cmp    $0x1,%eax
  24:	7e 58                	jle    7e <main+0x7e>
  26:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  2d:	00 
  2e:	66 90                	xchg   %ax,%ax
    wc(0, "");
    exit();
  }

  for(i = 1; i < argc; i++){
    if((fd = open(argv[i], 0)) < 0){
  30:	83 ec 08             	sub    $0x8,%esp
  33:	6a 00                	push   $0x0
  35:	ff 34 be             	push   (%esi,%edi,4)
  38:	e8 d6 03 00 00       	call   413 <open>
  3d:	83 c4 10             	add    $0x10,%esp
  40:	89 c3                	mov    %eax,%ebx
      printf(1, "wc: cannot open %s\n", argv[i]);
  42:	8b 04 be             	mov    (%esi,%edi,4),%eax
    if((fd = open(argv[i], 0)) < 0){
  45:	85 db                	test   %ebx,%ebx
  47:	78 22                	js     6b <main+0x6b>
      exit();
    }
    wc(fd, argv[i]);
  49:	83 ec 08             	sub    $0x8,%esp
  for(i = 1; i < argc; i++){
  4c:	83 c7 01             	add    $0x1,%edi
    wc(fd, argv[i]);
  4f:	50                   	push   %eax
  50:	53                   	push   %ebx
  51:	e8 4a 00 00 00       	call   a0 <wc>
    close(fd);
  56:	89 1c 24             	mov    %ebx,(%esp)
  59:	e8 9d 03 00 00       	call   3fb <close>
  for(i = 1; i < argc; i++){
  5e:	83 c4 10             	add    $0x10,%esp
  61:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
  64:	75 ca                	jne    30 <main+0x30>
  }
  exit();
  66:	e8 68 03 00 00       	call   3d3 <exit>
      printf(1, "wc: cannot open %s\n", argv[i]);
  6b:	52                   	push   %edx
  6c:	50                   	push   %eax
  6d:	68 eb 08 00 00       	push   $0x8eb
  72:	6a 01                	push   $0x1
  74:	e8 e7 04 00 00       	call   560 <printf>
      exit();
  79:	e8 55 03 00 00       	call   3d3 <exit>
    wc(0, "");
  7e:	51                   	push   %ecx
  7f:	51                   	push   %ecx
  80:	68 dd 08 00 00       	push   $0x8dd
  85:	6a 00                	push   $0x0
  87:	e8 14 00 00 00       	call   a0 <wc>
    exit();
  8c:	e8 42 03 00 00       	call   3d3 <exit>
  91:	66 90                	xchg   %ax,%ax
  93:	66 90                	xchg   %ax,%ax
  95:	66 90                	xchg   %ax,%ax
  97:	66 90                	xchg   %ax,%ax
  99:	66 90                	xchg   %ax,%ax
  9b:	66 90                	xchg   %ax,%ax
  9d:	66 90                	xchg   %ax,%ax
  9f:	90                   	nop

000000a0 <wc>:
{
  a0:	55                   	push   %ebp
  l = w = c = 0;
  a1:	31 d2                	xor    %edx,%edx
{
  a3:	89 e5                	mov    %esp,%ebp
  a5:	57                   	push   %edi
  a6:	56                   	push   %esi
  inword = 0;
  a7:	31 f6                	xor    %esi,%esi
{
  a9:	53                   	push   %ebx
  l = w = c = 0;
  aa:	31 db                	xor    %ebx,%ebx
{
  ac:	83 ec 1c             	sub    $0x1c,%esp
  l = w = c = 0;
  af:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  b6:	89 55 dc             	mov    %edx,-0x24(%ebp)
  b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  while((n = read(fd, buf, sizeof(buf))) > 0){
  c0:	83 ec 04             	sub    $0x4,%esp
  c3:	68 00 02 00 00       	push   $0x200
  c8:	68 80 09 00 00       	push   $0x980
  cd:	ff 75 08             	push   0x8(%ebp)
  d0:	e8 16 03 00 00       	call   3eb <read>
  d5:	83 c4 10             	add    $0x10,%esp
  d8:	89 c1                	mov    %eax,%ecx
  da:	85 c0                	test   %eax,%eax
  dc:	7e 62                	jle    140 <wc+0xa0>
    for(i=0; i<n; i++){
  de:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
  e1:	31 ff                	xor    %edi,%edi
  e3:	eb 0d                	jmp    f2 <wc+0x52>
  e5:	8d 76 00             	lea    0x0(%esi),%esi
        inword = 0;
  e8:	31 f6                	xor    %esi,%esi
    for(i=0; i<n; i++){
  ea:	83 c7 01             	add    $0x1,%edi
  ed:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
  f0:	74 3e                	je     130 <wc+0x90>
      if(buf[i] == '\n')
  f2:	0f be 87 80 09 00 00 	movsbl 0x980(%edi),%eax
        l++;
  f9:	31 c9                	xor    %ecx,%ecx
  fb:	3c 0a                	cmp    $0xa,%al
  fd:	0f 94 c1             	sete   %cl
      if(strchr(" \r\t\n\v", buf[i]))
 100:	83 ec 08             	sub    $0x8,%esp
 103:	50                   	push   %eax
        l++;
 104:	01 cb                	add    %ecx,%ebx
      if(strchr(" \r\t\n\v", buf[i]))
 106:	68 c8 08 00 00       	push   $0x8c8
 10b:	e8 60 01 00 00       	call   270 <strchr>
 110:	83 c4 10             	add    $0x10,%esp
 113:	85 c0                	test   %eax,%eax
 115:	75 d1                	jne    e8 <wc+0x48>
      else if(!inword){
 117:	85 f6                	test   %esi,%esi
 119:	75 cf                	jne    ea <wc+0x4a>
        w++;
 11b:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
        inword = 1;
 11f:	be 01 00 00 00       	mov    $0x1,%esi
    for(i=0; i<n; i++){
 124:	83 c7 01             	add    $0x1,%edi
 127:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
 12a:	75 c6                	jne    f2 <wc+0x52>
 12c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 130:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 133:	01 4d dc             	add    %ecx,-0x24(%ebp)
 136:	eb 88                	jmp    c0 <wc+0x20>
 138:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 13f:	00 
  if(n < 0){
 140:	8b 55 dc             	mov    -0x24(%ebp),%edx
 143:	75 22                	jne    167 <wc+0xc7>
  printf(1, "%d %d %d %s\n", l, w, c, name);
 145:	83 ec 08             	sub    $0x8,%esp
 148:	ff 75 0c             	push   0xc(%ebp)
 14b:	52                   	push   %edx
 14c:	ff 75 e0             	push   -0x20(%ebp)
 14f:	53                   	push   %ebx
 150:	68 de 08 00 00       	push   $0x8de
 155:	6a 01                	push   $0x1
 157:	e8 04 04 00 00       	call   560 <printf>
}
 15c:	83 c4 20             	add    $0x20,%esp
 15f:	8d 65 f4             	lea    -0xc(%ebp),%esp
 162:	5b                   	pop    %ebx
 163:	5e                   	pop    %esi
 164:	5f                   	pop    %edi
 165:	5d                   	pop    %ebp
 166:	c3                   	ret
    printf(1, "wc: read error\n");
 167:	50                   	push   %eax
 168:	50                   	push   %eax
 169:	68 ce 08 00 00       	push   $0x8ce
 16e:	6a 01                	push   $0x1
 170:	e8 eb 03 00 00       	call   560 <printf>
    exit();
 175:	e8 59 02 00 00       	call   3d3 <exit>
 17a:	66 90                	xchg   %ax,%ax
 17c:	66 90                	xchg   %ax,%ax
 17e:	66 90                	xchg   %ax,%ax

00000180 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 180:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 181:	31 c0                	xor    %eax,%eax
{
 183:	89 e5                	mov    %esp,%ebp
 185:	53                   	push   %ebx
 186:	8b 4d 08             	mov    0x8(%ebp),%ecx
 189:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 18c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 190:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 194:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 197:	83 c0 01             	add    $0x1,%eax
 19a:	84 d2                	test   %dl,%dl
 19c:	75 f2                	jne    190 <strcpy+0x10>
    ;
  return os;
}
 19e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1a1:	89 c8                	mov    %ecx,%eax
 1a3:	c9                   	leave
 1a4:	c3                   	ret
 1a5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1ac:	00 
 1ad:	8d 76 00             	lea    0x0(%esi),%esi

000001b0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	53                   	push   %ebx
 1b4:	8b 55 08             	mov    0x8(%ebp),%edx
 1b7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 1ba:	0f b6 02             	movzbl (%edx),%eax
 1bd:	84 c0                	test   %al,%al
 1bf:	75 2f                	jne    1f0 <strcmp+0x40>
 1c1:	eb 4a                	jmp    20d <strcmp+0x5d>
 1c3:	eb 1b                	jmp    1e0 <strcmp+0x30>
 1c5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1cc:	00 
 1cd:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1d4:	00 
 1d5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1dc:	00 
 1dd:	8d 76 00             	lea    0x0(%esi),%esi
 1e0:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 1e4:	83 c2 01             	add    $0x1,%edx
 1e7:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 1ea:	84 c0                	test   %al,%al
 1ec:	74 12                	je     200 <strcmp+0x50>
 1ee:	89 d9                	mov    %ebx,%ecx
 1f0:	0f b6 19             	movzbl (%ecx),%ebx
 1f3:	38 c3                	cmp    %al,%bl
 1f5:	74 e9                	je     1e0 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
 1f7:	29 d8                	sub    %ebx,%eax
}
 1f9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1fc:	c9                   	leave
 1fd:	c3                   	ret
 1fe:	66 90                	xchg   %ax,%ax
  return (uchar)*p - (uchar)*q;
 200:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 204:	31 c0                	xor    %eax,%eax
 206:	29 d8                	sub    %ebx,%eax
}
 208:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 20b:	c9                   	leave
 20c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
 20d:	0f b6 19             	movzbl (%ecx),%ebx
 210:	31 c0                	xor    %eax,%eax
 212:	eb e3                	jmp    1f7 <strcmp+0x47>
 214:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 21b:	00 
 21c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000220 <strlen>:

uint
strlen(const char *s)
{
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 226:	80 3a 00             	cmpb   $0x0,(%edx)
 229:	74 15                	je     240 <strlen+0x20>
 22b:	31 c0                	xor    %eax,%eax
 22d:	8d 76 00             	lea    0x0(%esi),%esi
 230:	83 c0 01             	add    $0x1,%eax
 233:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 237:	89 c1                	mov    %eax,%ecx
 239:	75 f5                	jne    230 <strlen+0x10>
    ;
  return n;
}
 23b:	89 c8                	mov    %ecx,%eax
 23d:	5d                   	pop    %ebp
 23e:	c3                   	ret
 23f:	90                   	nop
  for(n = 0; s[n]; n++)
 240:	31 c9                	xor    %ecx,%ecx
}
 242:	5d                   	pop    %ebp
 243:	89 c8                	mov    %ecx,%eax
 245:	c3                   	ret
 246:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 24d:	00 
 24e:	66 90                	xchg   %ax,%ax

00000250 <memset>:

void*
memset(void *dst, int c, uint n)
{
 250:	55                   	push   %ebp
 251:	89 e5                	mov    %esp,%ebp
 253:	57                   	push   %edi
 254:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 257:	8b 4d 10             	mov    0x10(%ebp),%ecx
 25a:	8b 45 0c             	mov    0xc(%ebp),%eax
 25d:	89 d7                	mov    %edx,%edi
 25f:	fc                   	cld
 260:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 262:	8b 7d fc             	mov    -0x4(%ebp),%edi
 265:	89 d0                	mov    %edx,%eax
 267:	c9                   	leave
 268:	c3                   	ret
 269:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000270 <strchr>:

char*
strchr(const char *s, char c)
{
 270:	55                   	push   %ebp
 271:	89 e5                	mov    %esp,%ebp
 273:	8b 45 08             	mov    0x8(%ebp),%eax
 276:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 27a:	0f b6 10             	movzbl (%eax),%edx
 27d:	84 d2                	test   %dl,%dl
 27f:	75 1a                	jne    29b <strchr+0x2b>
 281:	eb 25                	jmp    2a8 <strchr+0x38>
 283:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 28a:	00 
 28b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 290:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 294:	83 c0 01             	add    $0x1,%eax
 297:	84 d2                	test   %dl,%dl
 299:	74 0d                	je     2a8 <strchr+0x38>
    if(*s == c)
 29b:	38 d1                	cmp    %dl,%cl
 29d:	75 f1                	jne    290 <strchr+0x20>
      return (char*)s;
  return 0;
}
 29f:	5d                   	pop    %ebp
 2a0:	c3                   	ret
 2a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 2a8:	31 c0                	xor    %eax,%eax
}
 2aa:	5d                   	pop    %ebp
 2ab:	c3                   	ret
 2ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000002b0 <gets>:

char*
gets(char *buf, int max)
{
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	57                   	push   %edi
 2b4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 2b5:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
 2b8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 2b9:	31 db                	xor    %ebx,%ebx
{
 2bb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 2be:	eb 27                	jmp    2e7 <gets+0x37>
    cc = read(0, &c, 1);
 2c0:	83 ec 04             	sub    $0x4,%esp
 2c3:	6a 01                	push   $0x1
 2c5:	56                   	push   %esi
 2c6:	6a 00                	push   $0x0
 2c8:	e8 1e 01 00 00       	call   3eb <read>
    if(cc < 1)
 2cd:	83 c4 10             	add    $0x10,%esp
 2d0:	85 c0                	test   %eax,%eax
 2d2:	7e 1d                	jle    2f1 <gets+0x41>
      break;
    buf[i++] = c;
 2d4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 2d8:	8b 55 08             	mov    0x8(%ebp),%edx
 2db:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 2df:	3c 0a                	cmp    $0xa,%al
 2e1:	74 10                	je     2f3 <gets+0x43>
 2e3:	3c 0d                	cmp    $0xd,%al
 2e5:	74 0c                	je     2f3 <gets+0x43>
  for(i=0; i+1 < max; ){
 2e7:	89 df                	mov    %ebx,%edi
 2e9:	83 c3 01             	add    $0x1,%ebx
 2ec:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 2ef:	7c cf                	jl     2c0 <gets+0x10>
 2f1:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
 2f3:	8b 45 08             	mov    0x8(%ebp),%eax
 2f6:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
 2fa:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2fd:	5b                   	pop    %ebx
 2fe:	5e                   	pop    %esi
 2ff:	5f                   	pop    %edi
 300:	5d                   	pop    %ebp
 301:	c3                   	ret
 302:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 309:	00 
 30a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000310 <stat>:

int
stat(const char *n, struct stat *st)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	56                   	push   %esi
 314:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 315:	83 ec 08             	sub    $0x8,%esp
 318:	6a 00                	push   $0x0
 31a:	ff 75 08             	push   0x8(%ebp)
 31d:	e8 f1 00 00 00       	call   413 <open>
  if(fd < 0)
 322:	83 c4 10             	add    $0x10,%esp
 325:	85 c0                	test   %eax,%eax
 327:	78 27                	js     350 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 329:	83 ec 08             	sub    $0x8,%esp
 32c:	ff 75 0c             	push   0xc(%ebp)
 32f:	89 c3                	mov    %eax,%ebx
 331:	50                   	push   %eax
 332:	e8 f4 00 00 00       	call   42b <fstat>
  close(fd);
 337:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 33a:	89 c6                	mov    %eax,%esi
  close(fd);
 33c:	e8 ba 00 00 00       	call   3fb <close>
  return r;
 341:	83 c4 10             	add    $0x10,%esp
}
 344:	8d 65 f8             	lea    -0x8(%ebp),%esp
 347:	89 f0                	mov    %esi,%eax
 349:	5b                   	pop    %ebx
 34a:	5e                   	pop    %esi
 34b:	5d                   	pop    %ebp
 34c:	c3                   	ret
 34d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 350:	be ff ff ff ff       	mov    $0xffffffff,%esi
 355:	eb ed                	jmp    344 <stat+0x34>
 357:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 35e:	00 
 35f:	90                   	nop

00000360 <atoi>:

int
atoi(const char *s)
{
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	53                   	push   %ebx
 364:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 367:	0f be 02             	movsbl (%edx),%eax
 36a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 36d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 370:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 375:	77 1e                	ja     395 <atoi+0x35>
 377:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 37e:	00 
 37f:	90                   	nop
    n = n*10 + *s++ - '0';
 380:	83 c2 01             	add    $0x1,%edx
 383:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 386:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 38a:	0f be 02             	movsbl (%edx),%eax
 38d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 390:	80 fb 09             	cmp    $0x9,%bl
 393:	76 eb                	jbe    380 <atoi+0x20>
  return n;
}
 395:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 398:	89 c8                	mov    %ecx,%eax
 39a:	c9                   	leave
 39b:	c3                   	ret
 39c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003a0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	57                   	push   %edi
 3a4:	8b 45 10             	mov    0x10(%ebp),%eax
 3a7:	8b 55 08             	mov    0x8(%ebp),%edx
 3aa:	56                   	push   %esi
 3ab:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3ae:	85 c0                	test   %eax,%eax
 3b0:	7e 13                	jle    3c5 <memmove+0x25>
 3b2:	01 d0                	add    %edx,%eax
  dst = vdst;
 3b4:	89 d7                	mov    %edx,%edi
 3b6:	66 90                	xchg   %ax,%ax
 3b8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3bf:	00 
    *dst++ = *src++;
 3c0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 3c1:	39 f8                	cmp    %edi,%eax
 3c3:	75 fb                	jne    3c0 <memmove+0x20>
  return vdst;
}
 3c5:	5e                   	pop    %esi
 3c6:	89 d0                	mov    %edx,%eax
 3c8:	5f                   	pop    %edi
 3c9:	5d                   	pop    %ebp
 3ca:	c3                   	ret

000003cb <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 3cb:	b8 01 00 00 00       	mov    $0x1,%eax
 3d0:	cd 40                	int    $0x40
 3d2:	c3                   	ret

000003d3 <exit>:
SYSCALL(exit)
 3d3:	b8 02 00 00 00       	mov    $0x2,%eax
 3d8:	cd 40                	int    $0x40
 3da:	c3                   	ret

000003db <wait>:
SYSCALL(wait)
 3db:	b8 03 00 00 00       	mov    $0x3,%eax
 3e0:	cd 40                	int    $0x40
 3e2:	c3                   	ret

000003e3 <pipe>:
SYSCALL(pipe)
 3e3:	b8 04 00 00 00       	mov    $0x4,%eax
 3e8:	cd 40                	int    $0x40
 3ea:	c3                   	ret

000003eb <read>:
SYSCALL(read)
 3eb:	b8 05 00 00 00       	mov    $0x5,%eax
 3f0:	cd 40                	int    $0x40
 3f2:	c3                   	ret

000003f3 <write>:
SYSCALL(write)
 3f3:	b8 10 00 00 00       	mov    $0x10,%eax
 3f8:	cd 40                	int    $0x40
 3fa:	c3                   	ret

000003fb <close>:
SYSCALL(close)
 3fb:	b8 15 00 00 00       	mov    $0x15,%eax
 400:	cd 40                	int    $0x40
 402:	c3                   	ret

00000403 <kill>:
SYSCALL(kill)
 403:	b8 06 00 00 00       	mov    $0x6,%eax
 408:	cd 40                	int    $0x40
 40a:	c3                   	ret

0000040b <exec>:
SYSCALL(exec)
 40b:	b8 07 00 00 00       	mov    $0x7,%eax
 410:	cd 40                	int    $0x40
 412:	c3                   	ret

00000413 <open>:
SYSCALL(open)
 413:	b8 0f 00 00 00       	mov    $0xf,%eax
 418:	cd 40                	int    $0x40
 41a:	c3                   	ret

0000041b <mknod>:
SYSCALL(mknod)
 41b:	b8 11 00 00 00       	mov    $0x11,%eax
 420:	cd 40                	int    $0x40
 422:	c3                   	ret

00000423 <unlink>:
SYSCALL(unlink)
 423:	b8 12 00 00 00       	mov    $0x12,%eax
 428:	cd 40                	int    $0x40
 42a:	c3                   	ret

0000042b <fstat>:
SYSCALL(fstat)
 42b:	b8 08 00 00 00       	mov    $0x8,%eax
 430:	cd 40                	int    $0x40
 432:	c3                   	ret

00000433 <link>:
SYSCALL(link)
 433:	b8 13 00 00 00       	mov    $0x13,%eax
 438:	cd 40                	int    $0x40
 43a:	c3                   	ret

0000043b <mkdir>:
SYSCALL(mkdir)
 43b:	b8 14 00 00 00       	mov    $0x14,%eax
 440:	cd 40                	int    $0x40
 442:	c3                   	ret

00000443 <chdir>:
SYSCALL(chdir)
 443:	b8 09 00 00 00       	mov    $0x9,%eax
 448:	cd 40                	int    $0x40
 44a:	c3                   	ret

0000044b <dup>:
SYSCALL(dup)
 44b:	b8 0a 00 00 00       	mov    $0xa,%eax
 450:	cd 40                	int    $0x40
 452:	c3                   	ret

00000453 <getpid>:
SYSCALL(getpid)
 453:	b8 0b 00 00 00       	mov    $0xb,%eax
 458:	cd 40                	int    $0x40
 45a:	c3                   	ret

0000045b <sbrk>:
SYSCALL(sbrk)
 45b:	b8 0c 00 00 00       	mov    $0xc,%eax
 460:	cd 40                	int    $0x40
 462:	c3                   	ret

00000463 <sleep>:
SYSCALL(sleep)
 463:	b8 0d 00 00 00       	mov    $0xd,%eax
 468:	cd 40                	int    $0x40
 46a:	c3                   	ret

0000046b <uptime>:
SYSCALL(uptime)
 46b:	b8 0e 00 00 00       	mov    $0xe,%eax
 470:	cd 40                	int    $0x40
 472:	c3                   	ret

00000473 <ps>:
SYSCALL(ps)
 473:	b8 16 00 00 00       	mov    $0x16,%eax
 478:	cd 40                	int    $0x40
 47a:	c3                   	ret

0000047b <chpr>:
SYSCALL(chpr)
 47b:	b8 17 00 00 00       	mov    $0x17,%eax
 480:	cd 40                	int    $0x40
 482:	c3                   	ret
 483:	66 90                	xchg   %ax,%ax
 485:	66 90                	xchg   %ax,%ax
 487:	66 90                	xchg   %ax,%ax
 489:	66 90                	xchg   %ax,%ax
 48b:	66 90                	xchg   %ax,%ax
 48d:	66 90                	xchg   %ax,%ax
 48f:	66 90                	xchg   %ax,%ax
 491:	66 90                	xchg   %ax,%ax
 493:	66 90                	xchg   %ax,%ax
 495:	66 90                	xchg   %ax,%ax
 497:	66 90                	xchg   %ax,%ax
 499:	66 90                	xchg   %ax,%ax
 49b:	66 90                	xchg   %ax,%ax
 49d:	66 90                	xchg   %ax,%ax
 49f:	90                   	nop

000004a0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	57                   	push   %edi
 4a4:	56                   	push   %esi
 4a5:	53                   	push   %ebx
 4a6:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 4a8:	89 d1                	mov    %edx,%ecx
{
 4aa:	83 ec 3c             	sub    $0x3c,%esp
 4ad:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  if(sgn && xx < 0){
 4b0:	85 d2                	test   %edx,%edx
 4b2:	0f 89 98 00 00 00    	jns    550 <printint+0xb0>
 4b8:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 4bc:	0f 84 8e 00 00 00    	je     550 <printint+0xb0>
    x = -xx;
 4c2:	f7 d9                	neg    %ecx
    neg = 1;
 4c4:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
 4c9:	89 45 c0             	mov    %eax,-0x40(%ebp)
 4cc:	31 f6                	xor    %esi,%esi
 4ce:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4d5:	00 
 4d6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4dd:	00 
 4de:	66 90                	xchg   %ax,%ax
  do{
    buf[i++] = digits[x % base];
 4e0:	89 c8                	mov    %ecx,%eax
 4e2:	31 d2                	xor    %edx,%edx
 4e4:	89 f7                	mov    %esi,%edi
 4e6:	f7 f3                	div    %ebx
 4e8:	8d 76 01             	lea    0x1(%esi),%esi
 4eb:	0f b6 92 60 09 00 00 	movzbl 0x960(%edx),%edx
 4f2:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 4f6:	89 ca                	mov    %ecx,%edx
 4f8:	89 c1                	mov    %eax,%ecx
 4fa:	39 da                	cmp    %ebx,%edx
 4fc:	73 e2                	jae    4e0 <printint+0x40>
  if(neg)
 4fe:	8b 45 c0             	mov    -0x40(%ebp),%eax
 501:	85 c0                	test   %eax,%eax
 503:	74 07                	je     50c <printint+0x6c>
    buf[i++] = '-';
 505:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
 50a:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
 50c:	8d 5d d8             	lea    -0x28(%ebp),%ebx
 50f:	8b 75 c4             	mov    -0x3c(%ebp),%esi
 512:	01 df                	add    %ebx,%edi
 514:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 51b:	00 
 51c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    putc(fd, buf[i]);
 520:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
 523:	83 ec 04             	sub    $0x4,%esp
 526:	88 45 d7             	mov    %al,-0x29(%ebp)
 529:	8d 45 d7             	lea    -0x29(%ebp),%eax
 52c:	6a 01                	push   $0x1
 52e:	50                   	push   %eax
 52f:	56                   	push   %esi
 530:	e8 be fe ff ff       	call   3f3 <write>
  while(--i >= 0)
 535:	89 f8                	mov    %edi,%eax
 537:	83 c4 10             	add    $0x10,%esp
 53a:	83 ef 01             	sub    $0x1,%edi
 53d:	39 d8                	cmp    %ebx,%eax
 53f:	75 df                	jne    520 <printint+0x80>
}
 541:	8d 65 f4             	lea    -0xc(%ebp),%esp
 544:	5b                   	pop    %ebx
 545:	5e                   	pop    %esi
 546:	5f                   	pop    %edi
 547:	5d                   	pop    %ebp
 548:	c3                   	ret
 549:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 550:	31 c0                	xor    %eax,%eax
 552:	e9 72 ff ff ff       	jmp    4c9 <printint+0x29>
 557:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 55e:	00 
 55f:	90                   	nop

00000560 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	57                   	push   %edi
 564:	56                   	push   %esi
 565:	53                   	push   %ebx
 566:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 569:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 56c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 56f:	0f b6 13             	movzbl (%ebx),%edx
 572:	83 c3 01             	add    $0x1,%ebx
 575:	84 d2                	test   %dl,%dl
 577:	0f 84 a0 00 00 00    	je     61d <printf+0xbd>
 57d:	8d 45 10             	lea    0x10(%ebp),%eax
 580:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c = fmt[i] & 0xff;
 583:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 586:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 589:	eb 28                	jmp    5b3 <printf+0x53>
 58b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
 590:	83 ec 04             	sub    $0x4,%esp
 593:	8d 45 e7             	lea    -0x19(%ebp),%eax
 596:	88 55 e7             	mov    %dl,-0x19(%ebp)
  for(i = 0; fmt[i]; i++){
 599:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 59c:	6a 01                	push   $0x1
 59e:	50                   	push   %eax
 59f:	56                   	push   %esi
 5a0:	e8 4e fe ff ff       	call   3f3 <write>
  for(i = 0; fmt[i]; i++){
 5a5:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 5a9:	83 c4 10             	add    $0x10,%esp
 5ac:	84 d2                	test   %dl,%dl
 5ae:	74 6d                	je     61d <printf+0xbd>
    c = fmt[i] & 0xff;
 5b0:	0f b6 c2             	movzbl %dl,%eax
      if(c == '%'){
 5b3:	83 f8 25             	cmp    $0x25,%eax
 5b6:	75 d8                	jne    590 <printf+0x30>
  for(i = 0; fmt[i]; i++){
 5b8:	0f b6 13             	movzbl (%ebx),%edx
 5bb:	84 d2                	test   %dl,%dl
 5bd:	74 5e                	je     61d <printf+0xbd>
    c = fmt[i] & 0xff;
 5bf:	0f b6 c2             	movzbl %dl,%eax
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
 5c2:	80 fa 25             	cmp    $0x25,%dl
 5c5:	0f 84 1d 01 00 00    	je     6e8 <printf+0x188>
 5cb:	83 e8 63             	sub    $0x63,%eax
 5ce:	83 f8 15             	cmp    $0x15,%eax
 5d1:	77 0d                	ja     5e0 <printf+0x80>
 5d3:	ff 24 85 08 09 00 00 	jmp    *0x908(,%eax,4)
 5da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 5e0:	83 ec 04             	sub    $0x4,%esp
 5e3:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 5e6:	88 55 d0             	mov    %dl,-0x30(%ebp)
        ap++;
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
 5e9:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
 5ed:	6a 01                	push   $0x1
 5ef:	51                   	push   %ecx
 5f0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
 5f3:	56                   	push   %esi
 5f4:	e8 fa fd ff ff       	call   3f3 <write>
        putc(fd, c);
 5f9:	0f b6 55 d0          	movzbl -0x30(%ebp),%edx
  write(fd, &c, 1);
 5fd:	83 c4 0c             	add    $0xc,%esp
 600:	88 55 e7             	mov    %dl,-0x19(%ebp)
 603:	6a 01                	push   $0x1
 605:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
 608:	51                   	push   %ecx
 609:	56                   	push   %esi
 60a:	e8 e4 fd ff ff       	call   3f3 <write>
  for(i = 0; fmt[i]; i++){
 60f:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 613:	83 c3 02             	add    $0x2,%ebx
 616:	83 c4 10             	add    $0x10,%esp
 619:	84 d2                	test   %dl,%dl
 61b:	75 93                	jne    5b0 <printf+0x50>
      }
      state = 0;
    }
  }
}
 61d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 620:	5b                   	pop    %ebx
 621:	5e                   	pop    %esi
 622:	5f                   	pop    %edi
 623:	5d                   	pop    %ebp
 624:	c3                   	ret
 625:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 628:	83 ec 0c             	sub    $0xc,%esp
 62b:	8b 17                	mov    (%edi),%edx
 62d:	b9 10 00 00 00       	mov    $0x10,%ecx
 632:	89 f0                	mov    %esi,%eax
 634:	6a 00                	push   $0x0
        ap++;
 636:	83 c7 04             	add    $0x4,%edi
        printint(fd, *ap, 16, 0);
 639:	e8 62 fe ff ff       	call   4a0 <printint>
  for(i = 0; fmt[i]; i++){
 63e:	eb cf                	jmp    60f <printf+0xaf>
        s = (char*)*ap;
 640:	8b 07                	mov    (%edi),%eax
        ap++;
 642:	83 c7 04             	add    $0x4,%edi
        if(s == 0)
 645:	85 c0                	test   %eax,%eax
 647:	0f 84 b3 00 00 00    	je     700 <printf+0x1a0>
        while(*s != 0){
 64d:	0f b6 10             	movzbl (%eax),%edx
 650:	84 d2                	test   %dl,%dl
 652:	0f 84 ba 00 00 00    	je     712 <printf+0x1b2>
 658:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 65b:	89 c7                	mov    %eax,%edi
 65d:	89 d0                	mov    %edx,%eax
 65f:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 662:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 665:	89 fb                	mov    %edi,%ebx
 667:	89 cf                	mov    %ecx,%edi
 669:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
 670:	83 ec 04             	sub    $0x4,%esp
 673:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 676:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 679:	6a 01                	push   $0x1
 67b:	57                   	push   %edi
 67c:	56                   	push   %esi
 67d:	e8 71 fd ff ff       	call   3f3 <write>
        while(*s != 0){
 682:	0f b6 03             	movzbl (%ebx),%eax
 685:	83 c4 10             	add    $0x10,%esp
 688:	84 c0                	test   %al,%al
 68a:	75 e4                	jne    670 <printf+0x110>
 68c:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  for(i = 0; fmt[i]; i++){
 68f:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 693:	83 c3 02             	add    $0x2,%ebx
 696:	84 d2                	test   %dl,%dl
 698:	0f 85 e5 fe ff ff    	jne    583 <printf+0x23>
 69e:	e9 7a ff ff ff       	jmp    61d <printf+0xbd>
 6a3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
 6a8:	83 ec 0c             	sub    $0xc,%esp
 6ab:	8b 17                	mov    (%edi),%edx
 6ad:	b9 0a 00 00 00       	mov    $0xa,%ecx
 6b2:	89 f0                	mov    %esi,%eax
 6b4:	6a 01                	push   $0x1
        ap++;
 6b6:	83 c7 04             	add    $0x4,%edi
        printint(fd, *ap, 10, 1);
 6b9:	e8 e2 fd ff ff       	call   4a0 <printint>
  for(i = 0; fmt[i]; i++){
 6be:	e9 4c ff ff ff       	jmp    60f <printf+0xaf>
 6c3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
 6c8:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 6ca:	83 ec 04             	sub    $0x4,%esp
 6cd:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        ap++;
 6d0:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 6d3:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 6d6:	6a 01                	push   $0x1
 6d8:	51                   	push   %ecx
 6d9:	56                   	push   %esi
 6da:	e8 14 fd ff ff       	call   3f3 <write>
  for(i = 0; fmt[i]; i++){
 6df:	e9 2b ff ff ff       	jmp    60f <printf+0xaf>
 6e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
 6e8:	83 ec 04             	sub    $0x4,%esp
 6eb:	88 55 e7             	mov    %dl,-0x19(%ebp)
 6ee:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 6f1:	6a 01                	push   $0x1
 6f3:	e9 10 ff ff ff       	jmp    608 <printf+0xa8>
 6f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6ff:	00 
          s = "(null)";
 700:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 703:	b8 28 00 00 00       	mov    $0x28,%eax
 708:	bf ff 08 00 00       	mov    $0x8ff,%edi
 70d:	e9 4d ff ff ff       	jmp    65f <printf+0xff>
  for(i = 0; fmt[i]; i++){
 712:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 716:	83 c3 02             	add    $0x2,%ebx
 719:	84 d2                	test   %dl,%dl
 71b:	0f 85 8f fe ff ff    	jne    5b0 <printf+0x50>
 721:	e9 f7 fe ff ff       	jmp    61d <printf+0xbd>
 726:	66 90                	xchg   %ax,%ax
 728:	66 90                	xchg   %ax,%ax
 72a:	66 90                	xchg   %ax,%ax
 72c:	66 90                	xchg   %ax,%ax
 72e:	66 90                	xchg   %ax,%ax
 730:	66 90                	xchg   %ax,%ax
 732:	66 90                	xchg   %ax,%ax
 734:	66 90                	xchg   %ax,%ax
 736:	66 90                	xchg   %ax,%ax
 738:	66 90                	xchg   %ax,%ax
 73a:	66 90                	xchg   %ax,%ax
 73c:	66 90                	xchg   %ax,%ax
 73e:	66 90                	xchg   %ax,%ax

00000740 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 740:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 741:	a1 80 0b 00 00       	mov    0xb80,%eax
{
 746:	89 e5                	mov    %esp,%ebp
 748:	57                   	push   %edi
 749:	56                   	push   %esi
 74a:	53                   	push   %ebx
 74b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 74e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 751:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 758:	00 
 759:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 760:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 762:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 764:	39 ca                	cmp    %ecx,%edx
 766:	73 30                	jae    798 <free+0x58>
 768:	39 c1                	cmp    %eax,%ecx
 76a:	72 04                	jb     770 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 76c:	39 c2                	cmp    %eax,%edx
 76e:	72 f0                	jb     760 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 770:	8b 73 fc             	mov    -0x4(%ebx),%esi
 773:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 776:	39 f8                	cmp    %edi,%eax
 778:	74 36                	je     7b0 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 77a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 77d:	8b 42 04             	mov    0x4(%edx),%eax
 780:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 783:	39 f1                	cmp    %esi,%ecx
 785:	74 40                	je     7c7 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 787:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 789:	5b                   	pop    %ebx
  freep = p;
 78a:	89 15 80 0b 00 00    	mov    %edx,0xb80
}
 790:	5e                   	pop    %esi
 791:	5f                   	pop    %edi
 792:	5d                   	pop    %ebp
 793:	c3                   	ret
 794:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 798:	39 c2                	cmp    %eax,%edx
 79a:	72 c4                	jb     760 <free+0x20>
 79c:	39 c1                	cmp    %eax,%ecx
 79e:	73 c0                	jae    760 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
 7a0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 7a3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 7a6:	39 f8                	cmp    %edi,%eax
 7a8:	75 d0                	jne    77a <free+0x3a>
 7aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
 7b0:	03 70 04             	add    0x4(%eax),%esi
 7b3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 7b6:	8b 02                	mov    (%edx),%eax
 7b8:	8b 00                	mov    (%eax),%eax
 7ba:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 7bd:	8b 42 04             	mov    0x4(%edx),%eax
 7c0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 7c3:	39 f1                	cmp    %esi,%ecx
 7c5:	75 c0                	jne    787 <free+0x47>
    p->s.size += bp->s.size;
 7c7:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 7ca:	89 15 80 0b 00 00    	mov    %edx,0xb80
    p->s.size += bp->s.size;
 7d0:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 7d3:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 7d6:	89 0a                	mov    %ecx,(%edx)
}
 7d8:	5b                   	pop    %ebx
 7d9:	5e                   	pop    %esi
 7da:	5f                   	pop    %edi
 7db:	5d                   	pop    %ebp
 7dc:	c3                   	ret
 7dd:	8d 76 00             	lea    0x0(%esi),%esi

000007e0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 7e0:	55                   	push   %ebp
 7e1:	89 e5                	mov    %esp,%ebp
 7e3:	57                   	push   %edi
 7e4:	56                   	push   %esi
 7e5:	53                   	push   %ebx
 7e6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 7e9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 7ec:	8b 15 80 0b 00 00    	mov    0xb80,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 7f2:	8d 78 07             	lea    0x7(%eax),%edi
 7f5:	c1 ef 03             	shr    $0x3,%edi
 7f8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 7fb:	85 d2                	test   %edx,%edx
 7fd:	0f 84 8d 00 00 00    	je     890 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 803:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 805:	8b 48 04             	mov    0x4(%eax),%ecx
 808:	39 f9                	cmp    %edi,%ecx
 80a:	73 64                	jae    870 <malloc+0x90>
  if(nu < 4096)
 80c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 811:	39 df                	cmp    %ebx,%edi
 813:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 816:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 81d:	eb 0a                	jmp    829 <malloc+0x49>
 81f:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 820:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 822:	8b 48 04             	mov    0x4(%eax),%ecx
 825:	39 f9                	cmp    %edi,%ecx
 827:	73 47                	jae    870 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 829:	89 c2                	mov    %eax,%edx
 82b:	39 05 80 0b 00 00    	cmp    %eax,0xb80
 831:	75 ed                	jne    820 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 833:	83 ec 0c             	sub    $0xc,%esp
 836:	56                   	push   %esi
 837:	e8 1f fc ff ff       	call   45b <sbrk>
  if(p == (char*)-1)
 83c:	83 c4 10             	add    $0x10,%esp
 83f:	83 f8 ff             	cmp    $0xffffffff,%eax
 842:	74 1c                	je     860 <malloc+0x80>
  hp->s.size = nu;
 844:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 847:	83 ec 0c             	sub    $0xc,%esp
 84a:	83 c0 08             	add    $0x8,%eax
 84d:	50                   	push   %eax
 84e:	e8 ed fe ff ff       	call   740 <free>
  return freep;
 853:	8b 15 80 0b 00 00    	mov    0xb80,%edx
      if((p = morecore(nunits)) == 0)
 859:	83 c4 10             	add    $0x10,%esp
 85c:	85 d2                	test   %edx,%edx
 85e:	75 c0                	jne    820 <malloc+0x40>
        return 0;
  }
}
 860:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 863:	31 c0                	xor    %eax,%eax
}
 865:	5b                   	pop    %ebx
 866:	5e                   	pop    %esi
 867:	5f                   	pop    %edi
 868:	5d                   	pop    %ebp
 869:	c3                   	ret
 86a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 870:	39 cf                	cmp    %ecx,%edi
 872:	74 4c                	je     8c0 <malloc+0xe0>
        p->s.size -= nunits;
 874:	29 f9                	sub    %edi,%ecx
 876:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 879:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 87c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 87f:	89 15 80 0b 00 00    	mov    %edx,0xb80
}
 885:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 888:	83 c0 08             	add    $0x8,%eax
}
 88b:	5b                   	pop    %ebx
 88c:	5e                   	pop    %esi
 88d:	5f                   	pop    %edi
 88e:	5d                   	pop    %ebp
 88f:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 890:	c7 05 80 0b 00 00 84 	movl   $0xb84,0xb80
 897:	0b 00 00 
    base.s.size = 0;
 89a:	b8 84 0b 00 00       	mov    $0xb84,%eax
    base.s.ptr = freep = prevp = &base;
 89f:	c7 05 84 0b 00 00 84 	movl   $0xb84,0xb84
 8a6:	0b 00 00 
    base.s.size = 0;
 8a9:	c7 05 88 0b 00 00 00 	movl   $0x0,0xb88
 8b0:	00 00 00 
    if(p->s.size >= nunits){
 8b3:	e9 54 ff ff ff       	jmp    80c <malloc+0x2c>
 8b8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 8bf:	00 
        prevp->s.ptr = p->s.ptr;
 8c0:	8b 08                	mov    (%eax),%ecx
 8c2:	89 0a                	mov    %ecx,(%edx)
 8c4:	eb b9                	jmp    87f <malloc+0x9f>
