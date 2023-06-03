;
;   Building Instructions:
;   ml /Cx /coff rs-question-02.asm /link /SUBSYSTEM:console /out:a.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;
          .686
          .model  flat, c
          .stack  100h
printf    PROTO   arg1:Ptr Byte, printlist:VARARG
scanf     PROTO   arg2:Ptr Byte, inputlist:VARARG
          .data
in1fmt    byte  "%d", 0
msg0fmt   byte  "Insira o numero para calcular o fatorial: ", 0
numFat    sdword 1
result    sdword 1
          .code
main      proc
          INVOKE printf, ADDR msg0fmt
          INVOKE scanf, ADDR in1fmt, ADDR numFat
          call power
          INVOKE printf, ADDR in1fmt, result
          ret
main      endp
power     proc
          push eax ; save registers
          push ecx 
          push edx

          .if numFat > 1
          .while numFat > 1
          mov eax,result
          imul numFat
          mov result,eax
          dec numFat
          .endw
          .else
          mov result, 1
          .endif

          pop edx      ; restore registers
          pop ecx
          pop eax
          ret
power     endp 
          end
