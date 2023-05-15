# Questão 04 - Capítulo 04

## Question

**<p>4.  Given the example of the if-then-else-if structure in Problem 2 above, re-implement it using a nested if-then-if structure:</p>**

**<p>A. Use MASM directives.</p>**
**<p>B. Do not use MASM directives, but rather compares, jumps, and appropriate labels.</p>**

> question-02 code
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

**A.**
```asm
mov eax,a
.if eax > b
sub eax,1
mov a,eax
.endif
.if eax <= b
mov eax,b
.if eax >= c
sub eax,2
mov b,eax
.endif
.if eax < c
mov eax,c
.if eax > d
add eax,d
mov c,eax
.endif
.if eax <= d
mov eax,d
cdq
mov ebx,2
idiv ebx
mov d,eax
.endif
.endif
.endif
```

**B.**
```asm
; insert code here
```
