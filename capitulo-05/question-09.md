
# Questão 09 - Capítulo 05

## Question

**<p>09.   Given the factorial function (n!) defined iteratively as follows:
If n = 0 or n = 1, then 1
If n = 2, then 1 * 2=2
If n = 3, then 1 * 2 * 3=6
If n = 4, then 1 * 2 * 3 * 4 = 24
etc.
Implement the above function iteratively with your choice (or your instructor’s
choice) of any of the following:</p>**

> base code
```c
#include <stdio.h>

int main(){
  int numFat, result;
  printf("Digite o número para calcular o fatorial: ");
  scanf("%d", &numFat);
  
  for(result = 1; numFat > 1; numFat--){
    result = result * numFat;
  }
  printf("O fatorial desse número é: %d", result);

}
```

## Response

**A.** .while
<br/>**Essa resposta está no arquivo: <a href="./rs-question09-A.asm">rs-question09-A.asm</a></p>**

**B.** .repeat - .until
<br/>**Essa resposta está no arquivo: <a href="./rs-question09-B.asm">rs-question09-B.asm</a></p>**

**C.** .repeat - .untilcxz
<br/>**Essa resposta está no arquivo: <a href="./rs-question09-C.asm">rs-question09-C.asm</a></p>**

