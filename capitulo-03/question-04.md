# Questão 04 - Capítulo 03

## Question

**<p>4. Using the order of operations from C, convert the following arithmetic statements into the equivalent assembly language code segment. Be careful to implement the unary minus sign, increment, and decrement operators carefully:</p>**
**<p>A.** ``--i;``</p>
**<p>B.** ``j = ++k - m;``</p>
**<p>C.** ``z = -(x + y);``</p>
**<p>D.** ``a = ++b - c++;``</p>
**<p>E.** ``x = -y + z--;``</p>


## Response

**<p>A.** ``--i;``</p>

```asm
dec i
```

**<p>B.** ``j = ++k - m;``</p>

```asm
inc k
mov eax,k
sub eax,m
mov j,eax
```

**<p>C.** ``z = -(x + y);``</p>

```asm
mov eax,x
add eax,y
neg eax
mov z,eax
```

**<p>D.** ``a = ++b - c++;``</p>

```asm
inc b
mov eax,b
sub eax,c
inc c
mov a,eax
```

**<p>E.** ``x = -y + z--;``</p>

```asm
mov eax,y
neg eax
add eax,z
dec z
mov x,eax
```
