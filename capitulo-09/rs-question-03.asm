;   Correção: 1,0
;   Building Instructions:
;   ml /Cx /coff rs-question-03.asm /link /SUBSYSTEM:console /out:a.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;
            .686
            .model  flat, c
            .stack  100h
printf      PROTO   arg1:Ptr Byte, printlist:VARARG
scanf       PROTO   arg2:Ptr Byte, inputlist:VARARG
            .data
msg1fmt     byte  "%s",0Ah, 0
in1fmt      byte  "%s", 0
msg1        byte  "Informe a palavra: ", 0
msg2        byte  "E palindromo", 0
msg3        byte  "Nao e palindromo", 0
string      byte  "abcdeedcba abcdeedcba abcdeedcba abcdeedcba abcdeedcba abcdeedcba abcdeedcba abcdeedcba abcdeedcba abcdeedcba"
bool        sdword  1
var1        sdword  0
var2        sdword  0
var3        sdword  0
.code 
main        proc
            lea esi, string
            lea edi, string+9
            mov eax, 0

            .while(var1 < 10)
            mov bool, 1
            mov ecx, 4
            .repeat
            mov al, [edi]
            mov ah, [esi]
            .if(al != ah)
            mov bool, 0
            .endif
            inc esi
            dec edi
            .untilcxz
            add esi, 7
            add edi, 15
            mov var2, esi
            mov var3, edi
            .if(bool == 0)
            INVOKE printf, ADDR msg1fmt, ADDR msg3
            .else
            INVOKE printf, ADDR msg1fmt, ADDR msg2
            .endif
            mov esi, var2
            mov edi, var3
            inc var1
            .endw
            ret
main        endp
            end
