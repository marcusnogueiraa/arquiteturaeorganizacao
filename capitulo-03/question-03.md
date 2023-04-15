# Questão 03 - Capítulo 03

## Question

**<p>3. Using order of operations from C, convert the following arithmetic statements into the equivalent assembly language statements. Be sure not to destroy the contents of any of the variables that appear only to the right of the assignment symbol:</p>**
**<p>A.** ``x = x ∗ y+z ∗ 2;``</p>
**<p>B.** ``a = b - c / 3;``</p>
**<p>C.** ``total = num1 / num2 - (num3 ∗ num4);``</p>
**<p>D.** ``r = -s + t++;``</p>
**<p>E.** ``m = n ∗ ((i - j) ∗ k);``</p>
**<p>F.** ``q = a – b + c / d * e;``</p>


## Response

**<p>A.** ``x = x ∗ y+z ∗ 2;``</p>

```asm
; insert code here
```

**<p>B.** ``a = b - c / 3;``</p>

```asm
 mov eax,c
 mov ebx,3
 cdq
 idiv ebx
 mov ebx, b
 sub ebx,eax
 mov a,ebx
```

**<p>C.** ``total = num1 / num2 - (num3 ∗ num4);``</p>

```asm
; insert code here
```

**<p>D.** ``r = -s + t++;``</p>

```asm
inc t
mov eax,s
neg eax
add eax,t
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
