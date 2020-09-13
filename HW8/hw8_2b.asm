TITLE Question2b
; Question 2b from HW8

INCLUDE Irvine32.inc

.data

.code
	main PROC
		
		xor edx, edx
		xor eax, eax

		mov eax, 1234ABCDh

		and al, 11110000b
		
		shr eax, 4
		shr eax, 4
		shr eax, 4
		shr eax, 4
		add dl, al
		shr eax, 4
		shr eax, 4
		mov dh, al

		mov eax, edx
		call writehex
		call crlf



	exit
	main ENDP
END main