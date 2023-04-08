# Questão 05 - Capítulo 01

## Question

**<p>5. Assuming all the variables are declared as byte, write assembly language instructions to implement each of the following C statements or segments:</p>**
**<p>A.** ``a = 'B';``</p>
**<p>B.** ``b = c;``</p>
**<p>C.** ``d = 'E'; e = d;``</p>
**<p>D.** ``d = 'z'; a = d; b = a;``</p>
**<p>E.** ``a = '2'; b = '?'; a = b;``</p>

## Response

**<p>A.** ``a = 'B';``</p>

```asm
; insert code here
```

**<p>B.** ``b = c;``</p>

```asm
;
mov al,c
mov b,al
```

**<p>C.** ``d = 'E'; e = d;``</p>

```asm
; insert code here
```

**<p>D.** ``d = 'z'; a = d; b = a;``</p>

```asm
;
mov d,'z'
mov al,d
mov a,al
mov b,al

```
**<p>E.** ``a = '2'; b = '?'; a = b;``</p>

```asm
; insert code here
```
