# Questão 03 - Capítulo 08

> Correção: 0,5

## Question

**<p>3. Implement the following C instructions using assembly language. Assume all
variables are declared as sdword:**

**A.**
 ```c
num[0] 1;
```
**B.**
 ```c
x[1] = x[2];
```
**C.**
 ```c
y[i+1] = y[i];
```
**D.**
 ```c
z[i] = z[j];
```

## Response

**OBSERVAÇÃO:** No caso das varáveis "i" e "j" devem ser multiplos de quatro por se tratar de sdword.
</br>
**A.**
 ```asm
mov num+0,1
```
**B.**
 ```asm
mov eax,num+8
mov num+4,eax
```
**C.**
 ```asm
mov eax,num[ebx]
mov num[ebx+4],eax
```
**D.**
 ```asm
mov ebx,j
mov eax,num[ebx]
mov ebx,i
mov num[ebx],eax
```
