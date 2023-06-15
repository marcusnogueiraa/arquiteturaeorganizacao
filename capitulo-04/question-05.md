# Questão 05 - Capítulo 04

> Correção: 0,3

## Question

**<p>5.  Implement the following C switch statement, which does not have a default statement, using compares, jumps, and appropriate labels. If number does not contain a 0 through 3, then the value of count should not change:</p>**

```c
switch number {
  case 0:
  case 1: count = count +2;
          break;
  case 2:
  case 3: count = count - 2;
}
```

## Response

```asm
switch01:    cmp w,0
             je case11
             cmp w,1
             je case11
             cmp w,2
             je case12
             cmp w,3
             je case12
             jmp endswitch01
case11:      add count,2
             jmp endswitch01
case12:      sub count,2
             jmp endswitch01
endswitch01: nop
```
