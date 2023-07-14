# Questão 05 - Capítulo 10

## Question

**<p>5. Given the code using inline assembly in Sect. 10.7.4, rewrite it to work with
float and long double types (Hint: For type float, see Sect. 10.7.1).</p>**

> Sect 10.7.4 Code
```c
#include <stdio.h>
int main() {
  double x,y;
  printf("\n%s", "Enter a double for x: ");
  scanf_s("%lf", &x);
  __asm {
    fld x
    fstp y
  }
  printf("\n%s%6.4f\n\n", "The double in y is: ", y);
  return 0;
}
```

## Response

> Codigo com Float
```c
#include <stdio.h>
int main() {
  float x,y;
  printf("\n%s", "Enter a float for x: ");
  scanf_s("%f", &x);
  __asm {
    fld x
    fstp y
  }
  printf("\n%s%6.4f\n\n", "The float in y is: ", y);
  return 0;
}
```

> Codigo com Long Double
```c
#include <stdio.h>
int main() {
  long double x, y;
  printf("\n%s", "Enter a long double for x: ");
  scanf("%Lf", &x);
  __asm {
    fld x
    fstp y
  }
  printf("\n%s%6.4Lf\n\n", "The long double in y is: ", y);
  return 0;
}
```
