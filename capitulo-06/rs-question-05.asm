;   Correção: 0,5
;   Building Instructions:
;   ml /Cx /coff rs-question-05.asm /link /SUBSYSTEM:console /out:a.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;
        
		.686
		.model flat, c
		.stack 100h
scanf		PROTO arg2:Ptr Byte, inputlist:VARARG
printf		PROTO arg1:Ptr Byte, printlist:VARARG
		.data
in1fmt		byte "%d",0
msgfmt		byte "informe um numero", 0Ah,0
msg0fmt		byte "Fire Alarm", 0Ah,0
msg1fmt		byte "Carbon Monoxide", 0Ah,0
msg2fmt		byte "Power Outage", 0Ah,0
msg3fmt		byte "Gate Unlocked", 0Ah,0
msg4fmt		byte "Door Open", 0Ah,0
msg5fmt		byte "Window Open", 0Ah,0
num		    sdword	?
mask0		sdword  1
mask1		sdword	1
mask2		sdword	1
mask3		sdword	1
mask4		sdword	1
mask5       sdword  1
prtflag     sdword  0
		.code
main		proc
		INVOKE printf, ADDR msgfmt
		INVOKE scanf, ADDR in1fmt, ADDR num
		sal mask0,0
		sal mask1,1
		sal mask2,2
		sal mask3,3
		sal mask4,4
		sal mask5,5
		mov eax,num

		.if eax & mask0
		push eax
		INVOKE printf, ADDR msg0fmt
		pop eax
		mov prtflag,1
		.endif

		.if eax & mask1
		push eax
		INVOKE printf, ADDR msg1fmt
		pop eax
		mov prtflag,1
		.endif

		.if eax & mask2
		push eax
		INVOKE printf, ADDR msg2fmt
		pop eax
		mov prtflag,1
		.endif

		.if prtflag == 0

		.if eax & mask3
		push eax
		INVOKE printf, ADDR msg3fmt
		pop eax
		.endif
		.if eax & mask4
		push eax
		INVOKE printf, ADDR msg4fmt
		pop eax
		.endif
		.if eax & mask5
		push eax
		INVOKE printf, ADDR msg5fmt
		pop eax
		.endif

		.endif

		ret
main		endp
		end
