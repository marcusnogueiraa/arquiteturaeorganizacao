# Questão 04 - Capítulo 01

>  Correção: 0,4

## Question

**<p>4. Assuming all the variables are declared as sdword, write assembly language instructions to implement each of the following C statements or segments:</p>**
**<p>A.** ``i = 1;``</p>
**<p>B.** ``x = y;``</p>
**<p>C.** ``c = 2; b = c; a = b;``</p>
**<p>D.** ``x = y = 1;``</p>
**<p>E.** ``a = 1; b = 2; c = a; a = b; b = c;``</p>

## Response

**<p>A.** ``i = 1;``</p>

```asm
mov i,1
```

**<p>B.** ``x = y;``</p>

```asm
mov eax, y
mov x, eax
```

**<p>C.** ``c = 2; b = c; a = b;``</p>

```asm
mov c,2
mov eax,c
mov b,eax
mov eax,b
mov a,eax
```

**<p>D.** ``x = y = 1;``</p>

```asm
mov y,1
mov x,1
```

**<p>E.** ``a = 1; b = 2; c = a; a = b; b = c;``</p>

```asm
mov a,1
mov b,2
mov eax,a
mov c,eax
mov eax,b
mov a,eax
mov eax,c
mov b,eax
```
