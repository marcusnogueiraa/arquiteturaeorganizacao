
# Questão 07 - Capítulo 05

## Question

**<p>7.  Implement the following do-while loop first using the .repeat - .until
directives and then using only compares, and conditional and unconditional jumps:</p>**

> question-07 code
```c
i = 10;
sum = 0;
do {
sum = sum+i;
i = i-2;
} while (i > 0);
```

## Response

> Correção: 0,2

**A.** .repeat - .until
```asm
mov i,10
mov sum,0
.repeat
mov eax,sum
add eax,i
mov sum,eax
sub i,2
.until i <= 0
```

**B.** jumps
```asm
    	 mov i,10
	 mov sum,0
repeat01:nop
	 mov eax,sum
	 add eax,i
	 mov sum,eax
	 sub i,2
	 cmp i,0
	 jg repeat01
endrpt01:nop
```
