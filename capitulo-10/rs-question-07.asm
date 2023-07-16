; Correção: 0,5
;
;   Building Instructions:
;   ml /Cx /coff rs-question-07.asm.asm /link /SUBSYSTEM:console  /out:Out.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;
            .686
            .model  flat, c
            .stack  100h
printf      PROTO   arg1:Ptr Byte, printlist:VARARG
scanf       PROTO   arg2:Ptr Byte, inputlist:VARARG
            .data
msg2fmt     byte  "%s",0Ah, 0
msg2        byte "x is greater than y",0Ah, 0
msg3        byte "x is less than y",0Ah, 0
msg4        byte "x and y are equal",0Ah, 0
x           real8 7.5
y           real8 7.5
.code 
main        proc
            ;if x > y
if01:       fld y
            fld x
            fcomip st(0), st(1)
            jbe else01
then01:     INVOKE printf, ADDR msg2fmt, ADDR msg2
            jmp endif01
else01:     nop
            ;if x < y
if02:       fld y
            fld x
            fcomip st(0), st(1)
            jae else02
then02:     INVOKE printf, ADDR msg2fmt, ADDR msg3
            jmp endif02
else02:     nop
            INVOKE printf, ADDR msg2fmt, ADDR msg4
endif02:    nop
endif01:    nop
            ret
main        endp
            end         
