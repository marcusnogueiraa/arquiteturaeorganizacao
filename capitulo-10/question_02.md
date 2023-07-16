# Questão 02 - Capítulo 10

> Correção: 0,3.

## Question

**<p>2. Convert the following C-like arithmetic instructions into post-fix form and then
write the corresponding assembly language instructions. Assume that all variables are of type real8.</p>**

**A.**
 ```c
answer = x – y + z;
```
**B.**
 ```c
result = (w + x) / (y – z);
```
**C.**
 ```c
info = a / b * c – d;
```
**D.**
 ```c
data = i * j + (k / (m – n));
```


## Response
### Versão pós-fixa
```
A. x y - z +
B. w x + y z - /
C. a b / c * d -
D. k m n -/ i j * +
```
### Em assembly
**A.**
 ```asm
fld  x
fld  y
fsub
fld  z
fadd
fstp  answer
```
**B.**
 ```asm
fld  w
fld  x
fadd
fld  y
fld  z
fsub
fdiv
fstp  result
```
**C.**
 ```asm
fld  a
fld  b
fdiv
fld  c
fmul
fld  d
fsub
fstp  info
```
**D.**

> Correção: Aqui, pela ordem de avaliação, o _i_ e _j_ seria multiplicados primeiro. 

 ```asm
fld  k
fld  m
fld  n
fsub
fdiv
fld  i
fld  j
fmul
fadd
fstp  data
```
