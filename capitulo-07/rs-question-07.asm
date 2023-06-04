;
;   Building Instructions:
;   ml /Cx /coff HelloWorld.asm /link /SUBSYSTEM:console /out:a.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;
            .686
            .model flat,c 
            .stack 100h 
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG
printf      PROTO arg1:Ptr Byte, printlist:VARARG 
            .data
in1fmt      byte "%d",0
msg1fmt     byte 0Ah,"O conteudo do acumulador e: %d",0Ah,0Ah,0 
msg2fmt     byte "informe um numero",0Ah,0
            temp sdword ? 
            three sdword 3 
            aux sdword ? 
INACC       macro
            push ecx
            push edx
            INVOKE  scanf, 	ADDR in1fmt, ADDR aux
            mov  eax, aux
            pop edx
            pop ecx
            endm 
STOREACC    macro operand
            mov operand, eax
            endm
SUBACC      macro operand
            sub  eax, operand
            endm

DIVACC      macro operand
            push ebx
            push edx
            if(operand ne 0) and (operand ne 1)
            mov edx, eax
            mov aux, eax
            mov eax, 0
            mov ebx, operand 
            if operand LT 0
            neg ebx
            endif
            .while edx > 0
            sub edx, ebx
            add eax, 1
            .endw
            if operand LT 0
            neg eax
            endif
            elseif operand eq 0
            mov eax, -1
            endif 
            pop ebx
            pop edx
            endm

LOADACC     macro operand 
            mov eax,operand
            endm

            .code
main        proc
            INVOKE printf, ADDR msg2fmt
            INACC  
            SUBACC 5 
            DIVACC 2
            call OUTACC  
            ret
main        endp
OUTACC      proc 
            push eax 
            push ecx 
            push edx 
            mov temp,eax 
            INVOKE printf, ADDR msg1fmt, temp 
            pop edx   
            pop ecx
            pop eax
            ret
OUTACC      endp
            end
