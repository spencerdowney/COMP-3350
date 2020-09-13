TITLE Loops - Spencer Downey
INCLUDE Irvine32.inc

.data 
message1 BYTE "Please enter your desired number: ",0
message2 BYTE "Your output is: ",0
intVal SDWORD ?

.code
main PROC
	mov edx, OFFSET message1
	call WriteString
	call ReadInt
	mov intVal, eax
	call crlf
	mov ecx, intVal
	mov eax, 0
L1:
	add eax, ecx
	dec ecx
	.if ecx == 2
		dec ecx
	.endif
	loop L1
	mov ecx, intVal
L2:
	dec ecx
	sub eax, ecx
	.if ecx == 3
		dec ecx
		dec ecx
	.endif
	loop L2

	inc eax
	mov edx, OFFSET message2
	call WriteString
	call WriteInt
	call crlf
exit
main ENDP
END main