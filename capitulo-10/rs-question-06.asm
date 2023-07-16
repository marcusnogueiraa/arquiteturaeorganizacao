; Correção: 0,5
;
;   Building Instructions:
;   ml /Cx /coff rs-question-06.asm /link /SUBSYSTEM:console /out:a.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;
            .686
            .model flat,c 
            .stack 100h 
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG
printf      PROTO arg1:Ptr Byte, printlist:VARARG 
            .data
in1fmt      byte "%lf",0
msg1fmt     byte "x e maior que y",0Ah,0
msg2fmt     byte 0Ah,"x e menor ou igual a y",0Ah,0
x           real8   7.9
y           real8   7.9
            .code
main        proc
if01:       fld y
            fld x
            fcomip st(0), st(1)
            jbe else01
then01:     INVOKE printf, ADDR msg1fmt
            jmp endif01
else01:     INVOKE printf, ADDR msg2fmt
endif01:    nop
            ret
main        endp
            end
