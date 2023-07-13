# Questão 01 - Capítulo 08

## Question

**<p>1. Given the following assembly language statements, indicate whether they are
syntactically correct or incorrect. If incorrect, indicate what is wrong with the
statement:**

**A.**
 ```asm
x sdword ?,?,?
```
**B.**
 ```asm
y sdword 3 dup(0)
```
**C.**
 ```asm
mov eax,x+8 
```
**D.**
 ```asm
mov eax,y[ebx]
```
**E.**
 ```asm
mov esi,edi
```
**F.**
 ```asm
mov [esi],[edi]
```

## Response
```
A. Correto
B. Correto
C. Correto
D. Correto
E. Correto
F. Incorreto! Já que se trata de uma operação entre dois endereços da memória.
```
