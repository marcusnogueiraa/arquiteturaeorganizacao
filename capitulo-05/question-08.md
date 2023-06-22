# Questão 08 - Capítulo 05

## Question

**<p>8. Implement the last code segment in Sect. 5.5 using the loop instruction instead
of .repeat and .untilcxz directives.</p>**

>  Code Sect 5.5
```asm
 *** Note: Correctly implemented code ***
mov ecx,2
.repeat
mov tempecx,ecx
mov ecx,3
.repeat
; body of nested loop
.untilcxz
mov ecx,tempecx
.untilcxz
```

## Response

> Correção: 0,2

```asm
            mov ecx,2
for01:      nop
            mov tempecx, ecx
            mov ecx,3
for02:      nop
            ; body of nested loop
            loop for02
endfor02:   nop
            mov ecx, tempecx
            loop for01
endfor01:   nop
```
