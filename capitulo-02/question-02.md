# Questão 02 - Capítulo 02

> Correção: 0,5

## Question

**<p>2.  Assuming that the .data section is set up properly, what is wrong with the logic of the following code segment? How could it be rewritten to avoid the difficulty?</p>**

```asm
mov num1,5
mov eax,num1
INVOKE printf, ADDR msg1fmt, ADDR msg1, num2
mov num2,eax
```

## Response

**O que está de errado com a lógica do código:**

> Correção: novamente, use as crases para código. E apenas lembrando que a printf apaga os registradores.

```
O que está errado nesse código é porque a atribuição
da variável "num2" vem depois do printf, então não 
tem garantia que a variável vai sair com o valor esperado.
```

**Código reescrito:**

```asm
mov num1,5
mov eax,num1
mov num2,eax
INVOKE printf, ADDR msg1fmt, ADDR msg1, num2
```
