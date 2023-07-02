# Questão 02 - Capítulo 08

## Question

**<p>2. Given the contents of the following memory location, what is stored in the eax
register at the end of each segment?</p>**

**A.**
 ```asm
mov eax,temp
```
**B.**
 ```asm
mov eax,offset temp
```
**C.**
 ```asm
lea eax,temp
```
**D.**
 ```asm
mov eax,offset temp+4
```
**E.**
 ```asm
mov esi,offset temp
mov eax,esi
```
**F.**
 ```asm
mov edi,offset temp
mov eax,[edi]
```
**G.**
```asm
lea esi,temp
lea edi,temp+4
mov eax,[esi]
add eax,[edi] 
```
**H.**
 ```asm
mov esi,offset temp+4
mov eax,2
 imul [esi]
```

## Response
```
A. 5
B. 200
C. 200
D. 204
E. 200
F. 5
G. 12
H. Da erro, a instrução "imul" só pode ser usada com registrador ou memória.
```
