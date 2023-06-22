# Questão 02 - Capítulo 05

## Question

**<p>2 .Implement the last code segment in Sect. 5.1 without using directives and using only conditional and unconditional jumps.</p>**

> code in 5.1 section
```asm
mov ans,0
.if x!= 0
mov ecx,1 
.while ecx<=y
mov eax,ans
add eax,x
mov ans,eax 
inc ecx
.endw
mov i,ecx 
.endif
```

## Response

> Correção: 0,1

```asm
         mov ans,0
if01:    cmp x,0
         je endif01
         mov ecx,1
while01: cmp ecx,y
         jg endw01
         mov eax,ans
         add eax,x
         mov ans,eax
         inc ecx
         jmp while01
endw01:  nop
         mov i,ecx
endif01: nop
```
