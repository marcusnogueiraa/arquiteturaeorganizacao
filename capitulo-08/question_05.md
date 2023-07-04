# Questão 04 - Capítulo 08

## Question

**<p>5. Write both the C code and the assembly code to transfer the contents of a
20-element array of integers to a second 20-element array of integers.</p>**
</br>


## Response

**codgo em C
```c
#include <stdio.h>
int main(){
    int vet1[20] = {53,75,87,78,98,54,6,69,65,34,87,30,70,86,65,92,775,745,89,52};
    int vet2[20];
    for(int i = 0; i < 20; i++){
        vet2[i] = vet1[i];
        printf("%d ", vet2[i]);
    }
}
```
