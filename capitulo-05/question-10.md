
# Questão 10 - Capítulo 05

## Question

**<p>10.  Given the Fibonacci sequence defined iteratively as follows:
if n = 0, then 0
if n = 1, then 1
if n = 2, then 0 + 1 = 1
if n = 3, then 1 + 1 = 2
if n = 4, then 1 + 2 = 3
etc.
Implement the above function iteratively with your choice (or your instructor’s
choice) of any of the following:</p>**

> code base
```c
#include <stdio.h>

int main() {
    int numTermo;

    printf("Digite o número do termo da sequência de Fibonacci desejado: ");
    scanf("%d", &numTermo);

    int a = 1;
    int b = 1;
    int result;

    if (numTermo == 1)
        printf("Termo %d da sequência de Fibonacci: %d\n", numTermo, a);
    else if (numTermo == 2)
        printf("Termo %d da sequência de Fibonacci: %d\n", numTermo, b);
    else {
        for (int i = 3; i <= numTermo; i++) {
            result = a + b;
            a = b;
            b = result;
        }

        printf("Termo %d da sequência de Fibonacci: %d\n", numTermo, result);
    }

    return 0;
}

```

## Response

**A.** .while
```asm
 ;
;   Building Instructions:
;   ml /Cx /coff HelloWorld.asm /link /SUBSYSTEM:console /out:a.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;
        
			.686
			.model flat, c
			.stack 100h
scanf		PROTO arg2:Ptr Byte, inputlist:VARARG
printf		PROTO arg1:Ptr Byte, printlist:VARARG
			.data
in1fmt		byte "%d",0
msg1fmt		byte "Digite o número do termo da sequência de Fibonacci desejado: ", 0Ah,0
msg2fmt		byte "Termo %d da sequência de Fibonacci: %d", 0Ah, 0

numTermo	sdword	?
a			sdword  1
b			sdword	1
result		sdword	?
i			sdword	3
			.code
main		proc
			INVOKE printf, ADDR msg1fmt
			INVOKE scanf, ADDR in1fmt, ADDR numTermo
			.if numTermo == 1
			INVOKE printf, ADDR msg2fmt, numTermo, a
			.endif
			.if numTermo == 2 
			INVOKE printf, ADDR msg2fmt, numTermo, b
			.endif
			.if numTermo > 2
			mov ecx,i
			.while ecx <= numTermo

			; result = a + b
			mov eax,a
			add eax,b
			mov result,eax

			; a = b
			mov eax,b
			mov a,eax

			;b = result
			mov eax,result
			mov b,eax

			inc ecx
			.endw
			INVOKE printf, ADDR msg2fmt, numTermo, result
			.endif
			ret
main		endp
			end
```

**B.** .repeat - .until
```asm
 
```
**C.** .repeat - .untilcxz
```asm
 
```
