;
;   Building Instructions:
;   ml /Cx /coff rs-question-06-A.asm /link /SUBSYSTEM:console  /out:Out.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;
          .686
          .model  flat, c
          .stack  100h
printf    PROTO   arg1:Ptr Byte, printlist:VARARG
scanf     PROTO   arg2:Ptr Byte, inputlist:VARARG
          .data
msg0fmt   byte   "%d %d %d %d %d %d %d %d %d %d",0Ah,0
msg1fmt   byte   "%d",0
array     sdword 65,21,19,37,11,89,54,32,9,57
arraySize sdword 10
index     sdword 4
i         sdword 0
j         sdword ?
          .code
main    proc
          INVOKE printf, ADDR msg0fmt, array+0,array+4,array+8,array+12,array+16,array+20,array+24,array+28,array+32,array+36
          mov ecx, i             ; Indice Externo

          .while ecx < arraySize ; Laço Externo
          mov eax, arraySize     ; Limite do Laço
          dec eax                ; Limite até n-1
          mov j, eax             ; Indice Interno
          
          .while j > ecx         ; Laço Interno
          mov eax, j             
          imul index             ; Multiplicando o indice por 4
          mov ebx, array[eax-4]  ; Movendo o conteúdo do indice anterior
          .if ebx > array[eax]   ; Comparando os dois elementos
          push array[eax-4]         
          push array[eax]
          pop array[eax-4]
          pop array[eax]
          .endif                 
          dec j                  ; Decrementando Indice Externo
          .endw
          inc ecx                ; Incrementando Indice Interno
          .endw

          INVOKE printf, ADDR msg0fmt, array+0,array+4,array+8,array+12,array+16,array+20,array+24,array+28,array+32,array+36
          ret
main      endp
          end          
