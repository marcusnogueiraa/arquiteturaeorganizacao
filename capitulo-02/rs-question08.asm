;
;   Building Instructions:
;   ml /Cx /coff rs-question08.asm /link /SUBSYSTEM:console /out:a.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
; Correção: 0,5
        .686
        .model  flat, c
        .stack  100h
printf  PROTO   arg1:Ptr Byte, printlist:VARARG
scanf   PROTO arg2:Ptr Byte, inputlist:VARARG
        .data
in1fmt byte "%d",0
msg0fmt byte "%s",0
msg1fmt byte 0Ah,"Numbers",0
msg2fmt byte 0Ah,"   %d",0
msg0    byte "Enter a number: ",0
num1    sdword ?
num2    sdword ?
        .code
main    proc
        INVOKE printf, ADDR msg0fmt, ADDR msg0
        INVOKE scanf, ADDR in1fmt, ADDR num1
        INVOKE printf, ADDR msg0fmt, ADDR msg0
        INVOKE scanf, ADDR in1fmt, ADDR num2
        INVOKE printf, ADDR msg1fmt
        INVOKE printf, ADDR msg2fmt, num1
        INVOKE printf, ADDR msg2fmt, num2
        ret
main    endp
        end
