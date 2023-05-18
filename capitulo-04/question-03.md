# Questão 03 - Capítulo 04

## Question

**<p>3. Convert the following C selection structures to the corresponding assembly language code segments. Do not use MASM directives, but rather only compares, jumps, and appropriate labels (hint: Problem B, use De Morgan’s rules):</p>**

**A.**
```c
if (w == 1 && x == 2)
  y--;
```

**B.**
```c
if (!(num > 0 && num <= 3))
  count = count - 2;
```

**C.**
```c
if ( (w == 1 || x == 2) && y == 3)
  z++;
```

**D.**
```c
if (a == 1 || b == 2 && c > 3 || d <= 4)
  e--;
```

## Response

**A.**
```asm
if01:    cmp w,1
         jne endif01
         cmp x,2
         jne endif01
then01:  dec y
endif01: nop
```

**B.**
```asm
if01:		 cmp num,0
		     jle then01
		     cmp num,3
		     jle endif01
then01:	 sub count,2
endif01: nop
```

**C.**
```asm
if01:    cmp w,1
         je and01
         cmp x,2
         jne endif01
and01:   cmp y,3
         jne endif01
then01:  inc z
endif01: nop
```

**D.**
```asm
if01:    cmp b,2
		     jne or01
		     cmp c,3
		     jg then01
or01:	   cmp a,1
		     je then01
		     cmp d,4		
		     jnle endif01
then01:	 dec e
endif01: nop
```
