;
;   Building Instructions:
;   ml /Cx /coff rs-question05.asm /link /SUBSYSTEM:console /out:a.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;
        .686
        .model  flat, c
        .stack  100h
printf  PROTO   arg1:Ptr Byte, printlist:VARARG
        .data
msg1fmt byte 0Ah, "%d + %d = %d", 0Ah, 0Ah, 0
x       sdword ?
y       sdword ?
z       sdword ?
        .code
main    proc
mov     x,1
mov     y,2
mov     z,3
        INVOKE printf, ADDR msg1fmt, x, y, z
        ret
main    endp
        end
