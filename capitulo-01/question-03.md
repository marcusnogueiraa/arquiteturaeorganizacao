# Questão 03 - Capítulo 01

## Question

> Correção: 0,4

**<p>3. Assuming that the variables have been declared properly, indicate whether the following statements are syntactically correct or incorrect. If incorrect, indicate what is wrong with the statement:</p>**
**<p>A.** ``move cat,5``</p>
**<p>B.** ``mov dog,cat``</p>
**<p>C.** ``mov eax,ebx``</p>
**<p>D.** ``mov mouse,-7``</p>
**<p>E.** ``mov 1,frog``</p>
**<p>F.** ``mov horse,ecx``</p>
**<p>G.** ``mov rat,-eax``</p>
**<p>H.** ``mov edx,2``</p>

## Response

```
A. Errado, o certo é "mov", não "move".
B. Errado, nâo existe a opção mov mem,mem.
C. Correto.
D. Correto.
E. Incorreto, não faz sentido mover o valor de frog para a constante 1.
F. Correto.
G. Errado, não é correto utilizar "mov rat,-eax", para negar o valor de eax, utilize neg eax antes.
H. Correto.
```
