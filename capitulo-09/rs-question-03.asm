; Não está terminada.

            .686
            .model flat,c 
            .stack 100h 
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG
printf      PROTO arg1:Ptr Byte, printlist:VARARG 
            .data
in1fmt      byte "%d",0
msg1fmt     byte "E palindromo",0Ah,0
msg2fmt     byte "Nao e palindromo",0Ah,0
msg3fmt     byte "%s" ,0
msg4fmt     byte "Teste",0Ah,0

string      byte "abcdeedcba 1234554321 0987667890 123456789 abcdefghij aeiouuoiea lofr43qwxd 012345678 0123443210 hyrft543we"
temp        byte 10 dup(?) ,0
bool        byte ?
i           sdword 0
            .code
main        proc
            mov eax, 0
            .while (i < 10)
             
                mov bool, 1
                mov ecx, 10
                lea esi, string[eax]
                lea edi, temp
                cld
                .repeat
                    movsb
                .untilcxz
                mov ecx, 10
                mov esi, eax
                mov edi, 9
                .repeat
                    mov al, temp[edi]
                    mov ah, string[esi]
                    .if (ah != al)
                        mov bool, 0
                    .endif
                    inc esi
                    dec edi
                .untilcxz
                .if (bool == 1)
                    push eax
                    push edx
                    push ebx
                    push ecx
                    INVOKE printf, ADDR msg1fmt
                    pop ecx
                    pop ebx
                    pop edx
                    pop eax
                .endif
                .if (bool == 0)
                    push eax
                    push edx
                    push ebx
                    push ecx
                    INVOKE printf, ADDR msg2fmt
                    pop ecx
                    pop ebx
                    pop edx
                    pop eax
                .endif
                add eax, 11
                inc i
            .endw
            ret
main        endp
            end
