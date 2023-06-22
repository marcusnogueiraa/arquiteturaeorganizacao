# Questão 06 - Capítulo 05

## Question

**<p>6. Implement the following C segment using the .repeat - .untilcxz directives.
What if the value of n is 0 or negative? Does your code segment still work
properly? How can this problem be rectified?.</p>**

```c
sum = 0;
for(i=1; i <= n; i++)
  sum = sum + i;
```

## Response

> Correção: 0,1

**Primeira Implementação**
```asm
 mov sum,0
 mov ecx,n
 .repeat
 add sum,ecx
 .untilcxz
```

**Sobre o valor ser <= 0**
```asm
; No caso de N <= 0, o laço iria executar, porém como o
; .untilcxz decrementa primeir0 e verifica se ecx = 0 apenas depois, o
; código ficaria em um grande looping, não seria infinito pois o intervalo de numeros 
; inteiros no MASM não é infinito. Mas o programa executaria de maneira inapropriada.

; Uma maneira de evitar isso seria utilizando uma estrutura condicional que
; verificaria se N > 0

.if n>0
mov sum,0
mov ecx,n
.repeat
add sum,ecx
.untilcxz
.endif
```
