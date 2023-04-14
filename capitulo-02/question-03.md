# Questão 03 - Capítulo 02

## Question

**<p>3. Given the following MASM program, what will be output to the screen? Be sure to line everything up properly. Use a lowercase letter b to represent a blank and the words blank line to represent a blank line:</p>**

```asm
        .386
        .model flat, c
        .stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
        .data
msg1fmt byte "%s%d",0
msg2fmt byte "%s%d",0Ah,0Ah,0Ah,0
msg3fmt byte "%s%d",0Ah,0
msg1    byte "x = ",0
msg2    byte " y = ",0
msg3    byte "z=",0
num1    sdword 1
num2    sdword 2
num3    sdword 3
        .code
main    proc
        INVOKE printf, ADDR msg1fmt, ADDR msg1, num1
        INVOKE printf, ADDR msg2fmt, ADDR msg2, num2
        INVOKE printf, ADDR msg3fmt, ADDR msg3, num3
        ret
main    endp
        end
```

## Response

**Output:**
```
xb=b1byb=b2
blank line
blank line
z=3
```
