# Questão 03 - Capítulo 10

## Question

**<p>4. Can pre-fix form of an arithmetic statement be used to create the corresponding
assembly language instructions? If not, why not? If so, how? For either answer,
show how it can or cannot be done by giving an example of a conversion to
pre-fix and the corresponding assembly instructions.</p>**

## Response

```
A forma pré-fixada de uma operação aritmética não pode ser usada paa criar instruções assembly.
Nas linguagens de alto nível podemos calcular: a = b - c / 3
Mas em assembly, não podemos. Ao invés disso podemos separar essa operação em diversas instruções.  
```
```asm
; Exemplo do Cálculo de a = b - c / 3
 mov eax,c
 mov ebx,3
 cdq
 idiv ebx
 mov ebx,b
 sub ebx,eax
 mov a,ebx
```
