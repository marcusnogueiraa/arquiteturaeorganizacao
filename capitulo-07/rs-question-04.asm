;   Correção: 0,1
;   Building Instructions:
;   ml /Cx /coff rs-question-04.asm /link /SUBSYSTEM:console /out:a.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
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
fat       macro numFat:REQ
          push eax ; save registers

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

          pop eax      ; restore registers
          endm
          .code
main      proc
          INVOKE printf, ADDR msg0fmt
          INVOKE scanf, ADDR in1fmt, ADDR numFat
          fat numFat
          INVOKE printf, ADDR in1fmt, result
          ret
main      endp
          end
