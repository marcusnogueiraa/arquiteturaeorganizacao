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
INACC macro
      push ebx 
      push ecx
      push edx
      INVOKE scanf, ADDR in1fmt, ADDR operand
      mov eax, operand
      pop edx 
      pop ecx
      pop ebx
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
DIVACC      macro operand
            push ecx
            push ebx
            mov ebx, eax
            mov eax, 0
            mov ecx, operand
            .if ebx < 0
            mov aux, ebx
            neg ebx
            .endif
            if  operand EQ 0
            mov eax, 1
            neg eax
            mov ebx, eax
            endif
            if  operand LT 0
            neg ecx
            endif
            .while ebx >= ecx
            inc eax
            sub  ebx, ecx
            .endw
            if operand LT 0
            neg eax
            endif
            .if aux < 0
            neg eax
            .endif
            pop ebx
            pop ecx
            endm
```

