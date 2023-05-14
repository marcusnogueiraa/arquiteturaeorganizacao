# Questão 02 - Capítulo 04

## Question

**<p>2. Using MASM directives, write an assembly language code segment to implement the following:</p>**

```c
if (a > b)
  a = a - 1;
else 
  if (b >= c)
    b = b - 2;
  else
    if (c > d)
      c = c + d;
    else
      d = d / 2;
```

## Response

```asm
mov eax,a
.if eax > b
sub eax,1
mov a,eax
.else
mov eax,b
.if eax >= c
sub eax,2
mov b,eax
.else
mov eax,c
.if eax > d
add eax,d
mov c,eax
.else
mov eax,d
cdq
mov ebx,2
idiv ebx
mov d,eax
.endif
.endif
.endif
```
