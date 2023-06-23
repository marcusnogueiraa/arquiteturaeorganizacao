;   Correção: 0,5
;   Building Instructions:
;   ml /Cx /coff rs-question-04.asm /link /SUBSYSTEM:console /out:a.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;
        
		.686
		.model flat, c
		.stack 100h
scanf		PROTO arg2:Ptr Byte, inputlist:VARARG
printf		PROTO arg1:Ptr Byte, printlist:VARARG
		.data
in1fmt		byte "%d",0
msg0fmt		byte "informe um numero", 0Ah,0
msg1fmt		byte "Paper jam", 0Ah,0
msg2fmt		byte "Paper misfeed", 0Ah,0
msg3fmt		byte "Paper tray empty", 0Ah,0
msg4fmt		byte "Toner low", 0Ah,0
msg5fmt		byte "Toner empty", 0Ah,0
num		sdword	?
mask1		sdword  1
mask2		sdword	1
mask3		sdword	1
mask4		sdword	1
mask5		sdword	1
		.code
main		proc
		INVOKE printf, ADDR msg0fmt
		INVOKE scanf, ADDR in1fmt, ADDR num
		sal mask1,0
		sal mask2,1
		sal mask3,2
		sal mask4,3
		sal mask5,4
		mov eax,num
		.if eax & mask1
		INVOKE printf, ADDR msg1fmt
		.else
		.if eax & mask2
		INVOKE printf, ADDR msg2fmt
		.else
		.if eax & mask3
		INVOKE printf, ADDR msg3fmt
		.else
		.if eax & mask4
		INVOKE printf, ADDR msg4fmt
		.else
		.if eax & mask5
		INVOKE printf, ADDR msg5fmt
		.endif
		.endif
		.endif
		.endif
		.endif
		ret
main		endp
		end
