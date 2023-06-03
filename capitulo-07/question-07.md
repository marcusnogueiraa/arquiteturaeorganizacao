# Questão 07 - Capítulo 07

## Question

**<p>7. Implement the following instructions as macros as part of the macro calculator
problem in the last section of this chapter. For the division macro, use conditional assembly to solve any problems with negative numbers. Also, when
dealing with the possibility of division by 0, a -1 should be returned from the
macro to indicate an error:
<br/>
<br/>INACC
<br/>STOREACC
<br/>SUBACC
<br/>DIVACC</p>**

## Response

**A. INACC**
```asm
INACC macro operand
      push ebx 
      push ecx
      push edx
      INVOKE scanf, ADDR in1fmt, ADDR operand
      mov eax, operand
      pop edx 
      pop ecx
      pop ebx
      ret
      endm
```
**B. STOREACC**
```asm
STOREACC macro operand
         mov operand, eax
         endm
```
**C. SUBACC**
```asm
SUBACC macro operand
       sub eax, operand
       endm
```
**D. DIVACC**
```asm
DIVACC macro operand
       mov edx,eax
       mov eax,0
       .while(edx >= ebx)
       sub edx, ebx
       inc eax
       .endw
       endm
       ;; incompleta
```

