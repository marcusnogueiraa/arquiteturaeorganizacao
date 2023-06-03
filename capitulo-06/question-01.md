# Questão 01 - Capítulo 06

## Question

**<p>1. Given the following assembly language statements, indicate whether they are
syntactically correct or incorrect. If incorrect, indicate what is wrong with the
statement:</p>**

**A.**
 ```asm
or eax,ebx
```
**B.**
 ```asm
 xor al,ah 
```
**C.**
 ```asm
 rotate al,1 
```
**D.**
 ```asm
shr ax,2 
```
**E.**
 ```asm
sar eax,3
```
**F.**
 ```asm
xchg dog,cat 
```
**G.**
 ```asm
ror exc,1
```
**H.**
 ```asm
lol dx,8 
```
**I.**
 ```asm
shift 2,ax 
```

## Response

**A.**
```
Correto
```
**B.**
```
Correto
```
**C.**
```
Incorreto, "rotate" não é uma instrução válida, use "ror" ou "rol"
```
**D.**
```
Correto
```
**E.**
 ```
Correto
```
**F.**
 ```
Incorreto, não é possível utilizar xchg com dois operandos da memória
```
**G.**
 ```
Correto, se "exc" se refere a uma variável, já que o nome correto do registrador é "ecx"
```
**H.**
 ```
Incorreto, o operador "lol" não existe
```
**I.**
 ```
Incorreto, o operador "shift" não existe
```
