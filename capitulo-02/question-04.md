# Questão 04 - Capítulo 02

## Question

**<p>4. Given the following MASM program, what will be output to the screen. Be sure to line everything up properly. Use a lowercase letter b to represent a blank and the words blank line to represent a blank line:</p>**

```asm
        .386
        .model flat, c
        .stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
        .data
msg1fmt byte 0Ah,"%s%d%s%d%s",0Ah,0
msg2fmt byte 0Ah,"%s%d",0Ah,0Ah,0
msg11   byte "The first number is ",0
msg12   byte ", but the second number is ",0
msg13   byte ",",0
msg2    byte "while the third number is ",0
num1    sdword 5
num2    sdword 7
num3    sdword 11
        .code
main    proc
        INVOKE printf, ADDR msg1fmt, ADDR msg11, num1,
        ADDR msg12, num2, ADDR msg13
        INVOKE printf, ADDR msg2fmt, ADDR msg2, num3
        ret
main    endp
        end
```

## Response

**Output:**
```

The first number is 5, but the second number is 7,

while the third number is 11

```
