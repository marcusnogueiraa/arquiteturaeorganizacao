# Questão 06 - Capítulo 04

## Question

**<p>6. Implement the program in Sect. 4.8 in assembly language without using high-level directives with only compares, jumps, and appropriate labels.</p>**

> sect 4.8 program (C language)
```c
#include <stdio.h>
int main () {
  int voltage;
  printf("%s", "Enter an AC Voltage: ");
  scanf("%d", &voltage);
  if (voltage >= 110 && voltage <= 120) printf("\n%s\n", "Voltage is Acceptable");
  else {
    printf("\n%s\n","Warning!");
    if (voltage < 110) printf("%s\n","Voltage too Low");
    else{
      printf("%s\n","Voltage too High");
    }
    printf("\n");
    return 0;
  }
}
```

> sect 4.8 program (Assembly x86 with directives)
```asm
    .686
    .model flat,c
    .stack 100h
scanf PROTO arg2:Ptr Byte, inputlist:VARARG
printf PROTO arg1:Ptr Byte, printlist:VARARG
    .data
in1fmt byte "%d",0
msg1fmt byte "%s",0
msg2fmt byte 0Ah,"%s",0Ah,0
msg4fmt byte "%s",0Ah,0
msg6fmt byte 0Ah,0
msg1 byte "Enter an AC voltage: ",0
msg2 byte "Voltage is Acceptable",0
msg3 byte "Warning!",0
msg4 byte "Voltage too Low",0
msg5 byte "Voltage too High",0
voltage sdword ?
    .code
main proc
    INVOKE printf, ADDR msg1fmt, ADDR msg1
    INVOKE scanf, ADDR in1fmt, ADDR voltage
    .if voltage >=110 && voltage <= 120
    INVOKE printf, ADDR msg2fmt, ADDR msg2
    .else
    INVOKE printf, ADDR msg2fmt, ADDR msg3
    .if voltage < 110
    INVOKE printf, ADDR msg4fmt, ADDR msg4
    .else
    INVOKE printf, ADDR msg4fmt, ADDR msg5
    .endif
    .endif
    INVOKE printf, ADDR msg6fmt
    ret
main endp
    end
```

## Response

**Essa resposta está no arquivo: <a href="./rs-question06.asm">rs-question06.asm</a></p>**
