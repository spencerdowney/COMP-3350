TITLE HW6-1.asm by Spencer Downey
Include Irvine32.inc

.data
.code
main PROC
		mov ecx, 5
	L1:
		push ecx
		mov ecx, 5
	L2:
		mov al, 2Ah
		call WriteChar
		loop L2
		pop ecx
		mov al, 0AH
		call WriteChar
		loop L1
main ENDP
END main