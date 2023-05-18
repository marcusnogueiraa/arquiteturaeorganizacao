# Questão 05 - Capítulo 05

## Question

**<p>5  Implement unsigned divide (similar to the div instruction) using repetitive subtraction, with your choice (or your instructor’s choice) of any of the following (start with the dividend in eax and the divisor in ebx, then place the quotient in eax and the remainder in edx. Note: Do not worry about division by zero or negative numbers):</p>**

**A.** .while<br/>
**B.** .repeat - .until<br/>
**C.** .repeat - .untilcxz<br/>

## Response

**A.** .while
```asm
mov edx,eax
mov eax,0
.while(edx >= ebx)
sub edx, ebx
inc eax
.endw
```

**B.** .repeat - .until
```asm
mov edx,eax
mov eax,0
.if edx >= ebx
.repeat
sub edx,ebx
inc eax
.until edx < ebx
.endif
```

**C.** .repeat - .untilcxz
```asm
mov edx,eax
mov eax,0
mov ecx, 1
.if edx >= ebx
.repeat
sub edx, ebx
inc eax
.if edx >= ebx
inc ecx
.endif
.untilcxz
.endif
```
