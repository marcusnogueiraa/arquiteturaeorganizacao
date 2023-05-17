# Questão 01 - Capítulo 05

## Question


**<p>1. Given the following assembly language statements, indicate whether they are
syntactically correct or incorrect. If incorrect, indicate what is wrong with the
statement:</p>**
**A.**
 ```asm
.for i 1;i< 3;i++
;body of loop
.endfor
```
**B.**
 ```asm
mov i,1
while i < x
;body of loop
inc i
.endw
```
**C.**
 ```asm
mov i,0
.repeat
; body of loop
add i,2
.until i>10
```
**D.**
 ```asm
mov edx,3
.repeat
;body of loop
.untiledx
```
**E.**
 ```asm
mov ebx,2
.do
;body of loop
.while ebx>0
```

## Response

```
A.
B. Correto, mas poderíamos usar um registrador no lugar de i para melhor
desempenho.
C.
D. Errado, não existe a diretiva ".untiledx".
E. Errado, não existe a diretiva ".do".
```
