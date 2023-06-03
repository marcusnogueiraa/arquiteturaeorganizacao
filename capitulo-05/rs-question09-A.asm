;
;   Building Instructions:
;   ml /Cx /coff rs-question09-A.asm /link /SUBSYSTEM:console /out:rs-question09-A.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;
        .686
        .model  flat, c
        .stack  100h
printf  PROTO   arg1:Ptr Byte, printlist:VARARG
scanf   PROTO   arg2:Ptr Byte, inputlist:VARARG
        .data
msg1fmt byte    "Digite o numero para calcular o fatorial: ",0
msg2fmt byte    0Ah,"O fatorial desse numero e: %d",0
in1fmt  byte    "%d",0
result  sdword  1
numFat  sdword  ?
        .code
main    proc
        INVOKE printf, ADDR msg1fmt
        INVOKE scanf, ADDR in1fmt, ADDR numFat
        .if numFat > 1
        .while numFat > 1
        mov eax,result
        imul numFat
        mov result,eax
        dec numFat
        .endw
        .else
        mov eax, numFat
        mov result, eax
        .endif
        INVOKE printf, ADDR msg2fmt, result
main    endp
        end
