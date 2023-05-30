
# Questão 04 - Capítulo 06

## Question

**<p>4. Assume that a status register in a processor indicates the current state of a
photocopying machine according to the following table. For each bit, output an
appropriate message indicating the status of the machine. Note that although
there can be more than one bit set at one time, only one error message can be
generated, where bit 0 has the highest priority, followed by bit 1, etc. At the
discretion of the instructor, implement using high-level directives, without
high-level directives, or a combination as shown in the text.
</br>  
Bit Message
</br>
</br>
0 Paper jam
</br>
1 Paper misfeed
</br>
2 Paper tray empty
</br>
3 Toner low
</br>
4 Toner empty</p>**
</br>
> Base code 
```c
#include<stdio.h>
int main(){
    int num;
    printf("informe um numero\n");
    scanf("%d", &num);
    int mask1 = 0, mask2 = 0, mask3 = 0, mask4 = 0, mask5 = 0;
    mask1 = 1<<0;
    mask2 = 1<<1;
    mask3 = 1<<2;
    mask4 = 1<<3;
    mask5 = 1<<4;
    if(num & mask1){
        printf("Paper jam\n");
    }
    else{
        if(num & mask2){
            printf("Paper misfeed\n");
        }
        else{
            if(num & mask3){
                printf("Paper tray empty\n");
            }
            else{
                if(num & mask4){
                    printf("Toner low\n");
                }
                else{
                    if(num & mask5){
                        printf("Toner empty\n");
                    }
                }
            }
        }
    }
}
```


## Response

**Essa resposta está no arquivo: <a href="./rs-question-04.asm">rs-question-04.asm</a></p>**
