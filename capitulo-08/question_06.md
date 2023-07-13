# Questão 06 - Capítulo 08

## Question

**<p>6. Write both the C code and the assembly code to implement the simplified
version of the bubble sort which compares every element of every pass
through the array whether there was a swap on the previous pass or not.</p>**
</br>

**<p>a. Write both the C code and the assembly code to implement the simplified
version of the bubble sort which compares every element of every pass
through the array whether there was a swap on the previous pass or not.</p>**
</br>

**<p>b. First write the C code for the modified version of the bubble sort and then
write the modified version in assembly language. With the modified version,
if there is not a swap on the previous pass through the array, the array is in
order and there is no need to make any subsequent passes through the array.</p>**
</br>

**A) Bubble Sort Simples em C**
```c
void bubbleSort(int array[], int size) {
    int i, j, temp;
    for (i = 0; i < size - 1; i++) {
        for (j = 0; j < size - i - 1; j++) {
            if (array[j] > array[j + 1]) {
                // Troca os elementos
                temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
            }
        }
    }
}
```

**B) Bubble Sort Eficiente em C**
```c
void bubbleSort(int array[], int size) {
    int i, j, temp;
    bool swapped;

    for (i = 0; i < size - 1; i++) {
        swapped = false;

        for (j = 0; j < size - i - 1; j++) {
            if (array[j] > array[j + 1]) {
                temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
                swapped = true;
            }
        }
        if (!swapped) {
            break;
        }
    }
}
```

## Response

**Código em MASM (A): <a href="./rs-question-06-a.asm">rs-question-06-a.asm</a></p>**
**Código em MASM (B): <a href="./rs-question-06-b.asm">rs-question-06-b.asm</a></p>**
