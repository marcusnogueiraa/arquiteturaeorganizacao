;   Correção: 0,5
;   Building Instructions:
;   ml /Cx /coff rs-question-08.asm /link /SUBSYSTEM:console /out:a.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;
            .686
            .model flat,c
            .stack 100h
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG
printf      PROTO arg1:Ptr Byte, printlist:VARARG
            .data
in1fmt      byte "%lf",0
msg0fmt     byte 0Ah,"%s",0
msg1fmt     byte 0Ah,"%s%6.1f",0Ah,0
msg0        byte "Informe um valor double positivo para x: ",0
msg1        byte "a soma e: ",0
x           real8 ?
suma        real8 0.0
zero        real8 0.0 
            .code
main        proc
doWhile01:  INVOKE printf, ADDR msg0fmt, ADDR msg0
            INVOKE scanf, ADDR in1fmt, ADDR x
            fld zero
            fld x
            fcomip st(0), st(1)
            jbe enddw01
            fld suma
            fld x
            fadd
            fstp suma
            jmp doWhile01
enddw01:    nop
            INVOKE printf, ADDR msg1fmt, ADDR msg1,suma
            ret
main        endp
            end
