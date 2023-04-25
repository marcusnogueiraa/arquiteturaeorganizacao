;
;   Building Instructions:
;   ml /Cx /coff rs-question05.asm /link /SUBSYSTEM:console /out:a.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
; Correção: 0,5
        .686
        .model  flat, c
        .stack  100h
printf  PROTO arg1:Ptr Byte, printlist:VARARG
scanf   PROTO arg2:Ptr Byte, inputlist:VARARG
        .data
in1fmt   byte "%d",0
msg0fmt  byte 0Ah,"Enter an integer: ",0
msg1fmt  byte 0Ah,"The integer is: %d",0Ah,0Ah,0
number   sdword ?
        .code
main    proc
        INVOKE printf, ADDR msg0fmt
        INVOKE scanf, ADDR in1fmt, ADDR number
        mov eax,3
        imul number
        mov ebx,7
        sub ebx,eax
        mov number,ebx
        INVOKE printf, ADDR msg1fmt, number
        ret
main    endp
        end
