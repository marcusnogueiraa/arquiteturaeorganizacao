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
mov eax,a
if01:   cmp eax,b
        jle if02
then01: sub eax,1
        mov a,eax
endif01:nop
if02:   cmp eax,b
        jg endif02
then02: mov eax,b
if03:   cmp eax,c
        jl if04
then03: sub eax,2
        mov b,eax
        jmp endif02
endif03:nop
if04:   cmp eax,c
        jge endif04
then04: mov eax,c
if05:   cmp eax,d
        jle if06
then05: add eax,d
        mov c,eax
endif05:nop
if06:   cmp eax,d
        jg endif06
        mov eax,d
        cdq
        mov ebx,2
        idiv ebx
        mov d,eax
endif06:nop
endif04:nop
endif02:nop
```
