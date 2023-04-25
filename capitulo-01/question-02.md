# Questão 02 - Capítulo 01

> Correção: 0,4

## Question

**<p>2. Implement each of the following declarations in assembly language:</p>**
**<p>A.** ``char initial;``</p>
**<p>B.** ``char grade = 'B';``</p>
**<p>C.** ``char x = 'P', y = 'Q';``</p>
**<p>D.** ``int amount;``</p>
**<p>E.** ``int count = 0;``</p>
**<p>F.** ``int number = -396;``</p>

## Response

**<p>A.** ``char initial;``</p>

```asm
initial byte ?
```

**<p>B.** ``char grade = 'B';``</p>

```asm
grade byte 'B'
```

**<p>C.** ``char x = 'P', y = 'Q';``</p>

```asm
x byte 'P'
y byte 'Q'
```

**<p>D.** ``int amount;``</p>

```asm
amount sdword ?
```

**<p>E.** ``int count = 0;``</p>

```asm
count sdword 0
```

**<p>F.** ``int number = -396;``</p>

```asm
number sdword -396
```
