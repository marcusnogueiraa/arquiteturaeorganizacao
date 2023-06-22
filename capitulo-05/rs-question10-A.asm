;   Correção: 1,0
;   Building Instructions:
;   ml /Cx /coff rs-question-10-A.asm /link /SUBSYSTEM:console /out:a.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;
        
		.686
		.model flat, c
		.stack 100h
scanf		PROTO arg2:Ptr Byte, inputlist:VARARG
printf		PROTO arg1:Ptr Byte, printlist:VARARG
		.data
in1fmt		byte "%d",0
msg1fmt		byte "Digite o número do termo da sequência de Fibonacci desejado: ", 0Ah,0
msg2fmt		byte "Termo %d da sequência de Fibonacci: %d", 0Ah, 0
numTermo	sdword	?
a		sdword  1
b		sdword	1
result		sdword	?
i		sdword	3
		.code
main		proc
		INVOKE printf, ADDR msg1fmt
		INVOKE scanf, ADDR in1fmt, ADDR numTermo
		.if numTermo == 1
		INVOKE printf, ADDR msg2fmt, numTermo, a
		.endif
		.if numTermo == 2 
		INVOKE printf, ADDR msg2fmt, numTermo, b
		.endif
		.if numTermo > 2
		mov ecx,i
		.while ecx <= numTermo

		; result = a + b
		mov eax,a
		add eax,b
		mov result,eax

		; a = b
		mov eax,b
		mov a,eax

		;b = result
		mov eax,result
		mov b,eax

		inc ecx
		.endw
		INVOKE printf, ADDR msg2fmt, numTermo, result
		.endif
		ret
main		endp
		end
