; Correção: 0,5

;
;   Building Instructions:
;   ml /Cx /coff rs-question-09.asm /link /SUBSYSTEM:console /out:a.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;
	.686
	.model flat, c
	.stack 100h
scanf  PROTO arg2:Ptr Byte, inputlist:VARARG
printf PROTO arg1:Ptr Byte, printlist:VARARG	
	.data
ini1fmt  byte "%lf",0
msg1fmt byte 0Ah,"%s",0Ah,0Ah,0
msg2fmt byte " %3.1f",0Ah,0
msg1    byte "Array",0
n       sdword 5
array   real8 5 dup(?)
	.code
main proc
		mov ebx,0
		mov ecx,n

		.repeat
		push ecx
		INVOKE scanf, ADDR ini1fmt, ADDR array[ebx]
		pop ecx
		add ebx,8
		.untilcxz

		INVOKE printf, ADDR msg1fmt, ADDR msg1
		lea esi,array
		mov ecx,n
		.repeat
		push ecx
		INVOKE printf, ADDR msg2fmt, real8 ptr [esi]
		pop ecx
		add esi,8
		.untilcxz
		INVOKE printf, ADDR msg1fmt, ADDR msg1
		mov ebx,0
		mov ecx,n
		.repeat
		push ecx
		INVOKE printf, ADDR msg2fmt, array[ebx]
		pop ecx
		add ebx,8
		.untilcxz
		ret
main	endp
		end
