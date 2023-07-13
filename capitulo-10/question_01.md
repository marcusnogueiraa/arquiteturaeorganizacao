# Questão 01 - Capítulo 10

## Question

**<p>1. Given the following variables, what are the results in the variable z for each of
the following code segments?</p>**

<p>w real8 2.0</p>
<p>x real8 5.5</p>
<p>y real8 6.5</p>
<p>z sdword ?</p>

**A.**
 ```asm
fld w
fld y
fadd
fistp z
```
**B.**
 ```asm
fld y
fld w
fdiv
fld x
fadd
fisttp z
```
**C.**
 ```asm
fld y
fld w
fsub
fistp z
```
**D.**
 ```asm
fld w
fld y
fadd
fist z
fld w
fadd
fistp z
```


### **Respostas**
 ```
A) 8  
B) 8
C) 4
D) 10
```


