# Questão 01 - Capítulo 04

## Question

**<p>1. Indicate whether the following statements are syntactically correct or incorrect in MASM. If incorrect, indicate what is wrong with the statement:</p>**
**A.** 
```asm
.if (number = 0)
add number,2
.endif 
```
**B.** 
```asm
.if count >= 0 then
sub count,2
.else
add count,3
.endif
```
**C.** 
```asm
.if x-1
dec x
.endif 
```
**D.** 
```asm
if01:     cmp x,y
          jle endif01
          then01: inc x
endif01:  nop
```

## Response

```
A. Incorreto, utilize "==" para comparação entre dois valores.
B. Incorreto, "then" não é um comando válido.
C. Depende, está sintaticamente correto, mas não faz sentido logicamente.
D. Incorreto, não é possivel utilizar o "cmp" entre dois operandos da memoria
```
