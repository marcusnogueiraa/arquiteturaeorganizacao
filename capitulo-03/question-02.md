# Questão 02 - Capítulo 03
> Correção: 0,5

## Question

**<p>2. Convert the following C arithmetic statements to the equivalent Intel assembly language statements (hint: as discussed in the text, do not forget to move any immediate values into a register first for the imul and idiv instructions, if necessary):</p>**
**<p>A.** ``product = 3 ∗ number;``</p>
**<p>B.** ``result = number % amount;``</p>
**<p>C.** ``answer = number / 2;``</p>
**<p>D.** ``difference = 4 - number;``</p>


## Response

**<p>A.** ``product = 3 ∗ number;``</p>

```asm
mov eax,3
imul number
mov product,eax
```

**<p>B.** ``result = number % amount;``</p>

```asm
mov eax,number
cdq
mov ebx,amount
idiv ebx
mov result,edx
```

**<p>C.** ``answer = number / 2;``</p>

```asm
mov eax,number
mov ebx,2
cdq
idiv ebx
mov answer,eax
```

**<p>D.** ``difference = 4 - number;``</p>

```asm
mov eax,4
sub eax,number
mov difference,eax
```
