;
;   Building Instructions:
;   ml /Cx /coff rs-question-03.asm /link /SUBSYSTEM:console /out:a.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;
        .686
        .model  flat, c
        .stack  100h
printf  PROTO   arg1:Ptr Byte, printlist:VARARG
scanf   PROTO   arg2:Ptr Byte, inputlist:VARARG
        .data
        .code
main    proc
        mov eax,2
        mov ebx,4
        mov ecx,8
        mov edx,16
        push eax
        push ebx
        push ecx
        push edx
        pop eax
        pop ebx
        pop ecx
        pop edx
main    endp
        end
