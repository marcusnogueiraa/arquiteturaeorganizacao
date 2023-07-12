; Correção: 1,0
;   Building Instructions:
;   ml /Cx /coff rs-question-05.asm /link /SUBSYSTEM:console /out:a.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;
            .686
            .model flat,c 
            .stack 100h 
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG
printf      PROTO arg1:Ptr Byte, printlist:VARARG 
            .data
in1fmt      byte "%d",0
msg1fmt     byte "%d ",0 

vet1        sdword 53,75,87,78,98,54,6,69,65,34,87,30,70,86,65,92,775,745,89,52
vet2        sdword 20 dup(?)

            .code
main        proc
            mov ecx, 20
            mov ebx, 0
            .repeat
            mov eax, vet1[ebx]
            mov vet2[ebx], eax
            push ecx
            push eax
            push ebx
            INVOKE printf, ADDR msg1fmt, vet2[ebx]
            pop ebx
            pop eax
            pop ecx
            add ebx,4
            .untilcxz
            ret
main        endp
            end
