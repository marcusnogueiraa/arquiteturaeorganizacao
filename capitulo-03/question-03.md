# Questão 03 - Capítulo 03

> Correção: 0,5

## Question

**<p>3. Using order of operations from C, convert the following arithmetic statements into the equivalent assembly language statements. Be sure not to destroy the contents of any of the variables that appear only to the right of the assignment symbol:</p>**
**<p>A.** ``x = x ∗ y+z ∗ 2;``</p>
**<p>B.** ``a = b - c / 3;``</p>
**<p>C.** ``total = num1 / num2 - (num3 ∗ num4);``</p>
**<p>D.** ``r = -s + t++;``</p>
**<p>E.** ``m = n ∗ ((i - j) ∗ k);``</p>
**<p>F.** ``q = a – b + c / d * e;``</p>


## Response

**<p>A.** ``x = x ∗ y + z ∗ 2;``</p>

```asm
mov eax,x
imul y
mov ecx,eax
mov eax,z
mov ebx,2
imul ebx
add ecx,eax
mov x,ecx 
```

**<p>B.** ``a = b - c / 3;``</p>

```asm
 mov eax,c
 mov ebx,3
 cdq
 idiv ebx
 mov ebx,b
 sub ebx,eax
 mov a,ebx
```

**<p>C.** ``total = num1 / num2 - (num3 ∗ num4);``</p>

```asm
mov eax,num3
imul num4
mov ebx,eax
mov eax,num1
cdq
idiv num2
sub eax,ebx
mov total,eax
```

**<p>D.** ``r = -s + t++;``</p>

```asm
mov eax,s
neg eax
add eax,t
inc t
mov r,eax
```

**<p>E.** ``m = n ∗ ((i - j) ∗ k);``</p>

```asm
mov eax,i
sub eax,j
cdq
imul k
imul n
mov m,eax
```
**<p>F.** ``q = a – b + c / d * e;``</p>

```asm
mov eax,c
cdq
idiv d
imul e
sub eax,b
add eax,a
mov q,eax
```
