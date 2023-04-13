# Questão 07 - Capítulo 02

## Question

**<p>7. Given the following input and output, write both the C and assembly code necessary to make it look exactly as below. Pay careful attention to spacing and the blank lines:</p>**

**Input and Output**
```
Enter a number: 1
Enter a larger number: 3
Enter an even larger number: 5

1 < 3 < 5

5 > 3 > 1
```

## Response

**Primeiramente o código em Linguagem C:**
```c
#include <stdio.h>
int main(){
    int num1, num2, num3;
    printf("informe um numero:\n");
    scanf("%d",&num1);
    printf("informe um numero maior:\n");
    scanf("%d",&num2);
    printf("informe um numero maior ainda:\n");
    scanf("%d",&num3);
    printf("%d > %d > %d", num3, num2, num1);
    return 0;
}
```

**Como pede o exercicio, após criar o código em C, iremos implementar no Assembly.**

**O código em linguagem assembly está disponivel em <a href="./rs-question07.asm">rs-question07.asm</a></p>**
