
# Questão 10 - Capítulo 05

## Question

**<p>10.  Given the Fibonacci sequence defined iteratively as follows:
if n = 0, then 0
if n = 1, then 1
if n = 2, then 0 + 1 = 1
if n = 3, then 1 + 1 = 2
if n = 4, then 1 + 2 = 3
etc.
Implement the above function iteratively with your choice (or your instructor’s
choice) of any of the following:</p>**

> code base
```c
#include <stdio.h>

int main() {
    int numTermo;

    printf("Digite o número do termo da sequência de Fibonacci desejado: ");
    scanf("%d", &numTermo);

    int a = 1;
    int b = 1;
    int result;

    if (numTermo == 1)
        printf("Termo %d da sequência de Fibonacci: %d\n", numTermo, a);
    else if (numTermo == 2)
        printf("Termo %d da sequência de Fibonacci: %d\n", numTermo, b);
    else {
        for (int i = 3; i <= numTermo; i++) {
            result = a + b;
            a = b;
            b = result;
        }

        printf("Termo %d da sequência de Fibonacci: %d\n", numTermo, result);
    }

    return 0;
}

```

## Response

**A.** .while
**Essa resposta está no arquivo: <a href="./rs-question-10-A.asm">rs-question-10-A.asm</a></p>**

**B.** .repeat - .until
**Essa resposta está no arquivo: <a href="./rs-question-10-B.asm">rs-question-10-B.asm</a></p>**

**C.** .repeat - .untilcxz
**Essa resposta está no arquivo: <a href="./rs-question-10-C.asm">rs-question-10-C.asm</a></p>**

