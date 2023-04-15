;
;   Building Instructions:
;   ml /Cx /coff rs-question06.asm /link /SUBSYSTEM:console /out:a.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;
        .686
        .model  flat, c
        .stack  100h
printf  PROTO arg1:Ptr Byte, printlist:VARARG
scanf   PROTO arg2:Ptr Byte, inputlist:VARARG
        .data
in1fmt   byte "%d",0
msg0fmt  byte "Enter the number of amperes: ",0
msg1fmt  byte "Enter the number of ohms: ",0
msg2fmt  byte 0Ah,"The number of volts is: %d",0
msg3fmt  byte 0Ah,"The number of watts is: %d",0
amperes  sdword ?
ohms     sdword ?
volts    sdword ?
watts    sdword ?
        .code
main    proc
        INVOKE printf, ADDR msg0fmt
        INVOKE scanf, ADDR in1fmt, ADDR amperes
        INVOKE printf, ADDR msg1fmt
        INVOKE scanf, ADDR in1fmt, ADDR ohms
        mov eax,amperes
        imul ohms
        mov volts,eax
        imul amperes
        mov watts,eax
        INVOKE printf, ADDR msg2fmt, volts
        INVOKE printf, ADDR msg3fmt, watts
        ret
main    endp
        end
