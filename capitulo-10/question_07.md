# Questão 07 - Capítulo 10

## Question

**<p>7.  Alter the if-then-else-if code segment in Sect. 10.8 to add an else section to the
nested if statement to output the message “x and y are equal”.</p>**

> Sect 10.8 MASM
```asm
        ;if x > y
if01:   fld y
        fld x
        fcomip st(0), st(1)
        jbe else01
then01: INVOKE printf, ADDR msg2fmt, ADDR msg2
        jmp endif01
else01: nop
        ;if x < y
if02:   fld y
        fld x
        fcomip st(0), st(1)
        jae endif02
then02: INVOKE printf, ADDR msg2fmt, ADDR msg3
endif02: nop
endif01: nop
```

## Response

**Essa resposta está no arquivo: <a href="./rs-question-07.asm">rs-question-07.asm</a></p>**
