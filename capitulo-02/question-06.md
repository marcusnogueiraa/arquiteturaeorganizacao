# Questão 06 - Capítulo 02

## Question

**<p>6. Implement the following C program in MASM. Be sure to use proper spacing on all output. If necessary, first key in the C program and then implement the MASM program to insure the MASM program works identically to the C program:</p>**

```c
#include <stdio.h>
int main(){
    int num1, num2;
    printf("\n%s","Enter a value for num1: ");
    scanf("%d",&num1);
    printf("\n%s","Enter a value for num2: ");
    scanf("%d",&num2);
    printf("\n%s\n\n","num1 num2");
    printf("%s%d%s%d\n\n"," ",num1," ",num2);
    return 0;
}
```

## Response

Essa resposta está no arquivo: <a href="./rs-question06.asm">rs-question06.asm</a></p>**