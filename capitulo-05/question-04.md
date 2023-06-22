# Questão 04 - Capítulo 05

## Question

**<p>4. Implement the .repeat and .until directive at the end of Sect. 5.2 using only compare and jump instructions, along with the appropriate label names.</p>**

> code in 5.1 section (C)
```c
ans=0;
if (y!=0){
  i=1;
  do {
    ans=ans+x;
    i++;
  } while (i<=y);
}
```

> code in 5.1 section (MASM x86)
```asm
mov ans,0
.if y!=0
mov ecx,1
.repeat
mov eax,ans
add eax,x
mov ans,eax
inc ecx
.until ecx>y
mov i,ecx
.endif
```

## Response

> Correção: 0,1

```asm
          mov ans,0
if01:     cmp y,0
          je endif01
          mov ecx,1
repeat01: nop
          mov eax,ans
          add eax,x
          mov ans,eax
          inc ecx
          cmp ecx,y
          jle repeat01
endw01:   nop
          mov i,ecx
endif01:  nop
```
