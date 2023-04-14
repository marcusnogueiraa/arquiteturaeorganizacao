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
in1fmt  byte "%d", 0
msg1fmt byte "%s", 0Ah, 0
msg2fmt byte "%d%s%d%s%d", 0
msg1    byte "informe um numero:", 0
msg2    byte "informe um numero maior:", 0
msg3    byte "informe um numero maior ainda:", 0
msg4    byte " > ", 0
num1       sdword ?
num2       sdword ?
num3       sdword ?
        .code
main    proc
        INVOKE printf, ADDR msg1fmt, ADDR msg1
        INVOKE scanf, ADDR in1fmt, ADDR num1
        INVOKE printf, ADDR msg1fmt, ADDR msg2
        INVOKE scanf, ADDR in1fmt, ADDR num2
        INVOKE printf, ADDR msg1fmt, ADDR msg3
        INVOKE scanf, ADDR in1fmt, ADDR num3
        INVOKE printf, ADDR msg2fmt, num3, ADDR msg4, num2, ADDR msg4, num1
        ret
main    endp
        end
