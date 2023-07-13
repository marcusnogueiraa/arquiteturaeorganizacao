;
;   Building Instructions:
;   ml /Cx /coff rs-question-04.asm.asm /link /SUBSYSTEM:console /out:a.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;
            .686
            .model flat,c 
            .stack 100h 
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG
printf      PROTO arg1:Ptr Byte, printlist:VARARG 
            .data
in1fmt      byte "%lf",0
msg1fmt     byte "Enter a long double for x: ",0
msg2fmt     byte 0Ah,"The long double in y is: %6.4lf",0Ah,0
x           real10   ?
y           real10   ?
            .code
main        proc
            INVOKE printf, ADDR msg1fmt
            INVOKE scanf, ADDR in1fmt, ADDR x
            fld  x
            fstp  y
            INVOKE printf, ADDR msg2fmt, y
            ret
main        endp
            end
