# Questão 02 - Capítulo 09

## Question

**<p>2. Given the following declarations, walk through the following code segments and indicate the contents of the ecx, esi, edi, and al registers upon completion of each segment. You may assume that string1 starts at memory
location 100 and string2 at memory location 105. With problem D, in addition to the registers, what would be the contents of string2?</p>**

<p>string1 byte "abcde"</p>
<p>string2 byte "abcyz"</p>

**A.**
 ```asm
mov ecx,5
mov al,"c"
mov edi,offset string1
rep scasb
```
**B.**
 ```asm
mov esi,offset string1+3
Lodsb
```
**C.**
 ```asm
mov ecx,5
mov esi,offset string1
mov edi,offset string2
repe cmpsb
```
**D.**
 ```asm
mov ecx,5
mov esi,offset string1
mov edi,offset string2
repne cmpsb
```
**E.**
 ```asm
lea edi,string2
mov al,"d"
stosb
```

## Response
```
A. ecx = 2, esi=undefined, edi = 103, al = “c”
B. ecx = undefined, esi = 104, edi = undefined, al = “d”
C. ecx = 1, esi=104, edi = 109, al = undefined
D. ecx = 4, esi=101, edi = 101, al = undefined
E. ecx = undefined, esi = undefined, edi = 105, al = "d"
```
