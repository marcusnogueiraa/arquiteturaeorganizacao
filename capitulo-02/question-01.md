# Questão 01 - Capítulo 02

## Question

**<p>1. Indicate whether the following statements are syntactically correct or incorrect. If incorrect, indicate what is wrong with the statement:</p>**
**<p>A.** ``printf PROTO arg1:Ptr Byte, printlist:VARARG``</p>
**<p>B.** ``msg1fmt byte "\n%s%d\n",0``</p>
**<p>C.** ``INVOKE printf, ADDR msg1fmt, ADDR number``</p>
**<p>D.** ``msg2fmt byte 0Ah,0Ah,"%s",0Ah,0Ah,0``</p>
**<p>E.** ``msg3fmt byte "%s%d", \n,0``</p>

## Response

```
A. Correto.
B. Correto*
C. Incorreto, exclua ADDR antes de number.
D. Correto.
E. Incorreto, esse '\n' não faz sentido, o correto seria 0Ah para quebra de linha.
```
