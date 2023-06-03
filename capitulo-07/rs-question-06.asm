;
;   Building Instructions:
;   ml /Cx /coff rs-question-06.asm /link /SUBSYSTEM:console  /out:a.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;
          .686
          .model  flat, c
          .stack  100h
printf    PROTO   arg1:Ptr Byte, printlist:VARARG
scanf     PROTO   arg2:Ptr Byte, inputlist:VARARG
          .data
msg0fmt   byte   "%d",0
msg1fmt   byte   0Ah, "%s%d", 0Ah, 0Ah, 0
msg1      byte   "The contents of the accumulator are: ", 0
temp      sdword ?
three     sdword 3
          .code
MULTACC   macro operand

	      push ebx           ;; save ebx and ecx
          push ecx
          mov ebx, eax       ;; mov eax to ebx

          if operand eq 0
          mov eax,0
          elseif (operand ne 1) and (operand ne 0)
          mov eax, 0         ;; clear accumulator to zero
          mov ecx, operand   ;; load ecx with operand
          if operand LT 0    ;; if operand is negative
          neg ecx            ;; make ecx positive for loop
          endif   
          .while ecx > 0
          add eax, ebx       ;; repetitively add 
          dec ecx            ;; decrement ecx
          .endw    
          if operand LT 0    ;; if operand is negative
          neg eax            ;; negate accumulator, eax
          endif
          pop ecx            ;; restore ecx and ebx
          pop ebx
          endif
          endm
main      proc
          mov eax,1
          MULTACC 4
          INVOKE printf, ADDR msg0fmt, eax
          ret
main      endp
          end          
