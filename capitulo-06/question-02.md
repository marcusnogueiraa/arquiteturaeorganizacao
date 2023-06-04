# Questão 02 - Capítulo 06

## Question

**<p>2. Given the following C arithmetic instructions, implement them using arithmetic
shift instructions, where possible:</p>**

**A.**
 ```c
answer = num - total / 32;
```
**B.**
 ```c
 result = (amount + number) * 4;
```
**C.**
 ```c
 x = y * 8 + z / 2;
```
**D.**
 ```c
 a = a / 16 – b * 6; 
```


## Response

**A.**
```asm
mov eax,num
sar eax,5
sub eax,total
mov answer,eax
```
**B.**
```asm
mov eax,amount
add eax,number
sal eax,2 
mov result,eax 
```
**C.**
```asm
mov eax,y
sal eax,3
mov x,eax
mov eax,z
sar eax,1
add x,eax
```
**D.**
```asm
mov eax,a
sar eax,4
mov a,eax
mov eax,b
mov ebx,6
imul ebx
sub a,eax
```
