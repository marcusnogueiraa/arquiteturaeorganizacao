;
;   Building Instructions:
;   ml /Cx /coff rs-question07.asm /link /SUBSYSTEM:console /out:a.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;
        .686
        .model  flat, c
        .stack  100h
printf  PROTO   arg1:Ptr Byte, printlist:VARARG
scanf   PROTO     arg2:Ptr Byte, inputlist:VARARG
        .data
in1fmt  byte "%d",0
msg1fmt byte "%s",0
msg2fmt byte 0Ah,"%d < %d < %d",0Ah,0
msg3fmt byte 0Ah,"%d > %d > %d",0
msg1    byte "Enter a number: ",0
msg2    byte "Enter a larger number: ",0
msg3    byte "Enter an even larger number: ",0
num1    sdword ?
num2    sdword ?
num3    sdword ?
        .code
main    proc
        INVOKE printf, ADDR msg1fmt, ADDR msg1
        INVOKE scanf, ADDR in1fmt, ADDR num1
        INVOKE printf, ADDR msg1fmt, ADDR msg2
        INVOKE scanf, ADDR in1fmt, ADDR num2
        INVOKE printf, ADDR msg1fmt, ADDR msg3
        INVOKE scanf, ADDR in1fmt, ADDR num3
        INVOKE printf, ADDR msg2fmt, num1, num2, num3
        INVOKE printf, ADDR msg3fmt, num3, num2, num1
        ret
main    endp
        end
