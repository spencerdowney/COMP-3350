TITLE Question2
; Question 2, from HW8

INCLUDE Irvine32.inc

.data

.code
	main PROC
		
		xor eax, eax
		xor ebx, ebx
		xor ecx, ecx
		xor edx, edx

		mov eax, 2h ; EAX

		add ebx, eax
		shl ebx, 4
		add ecx, eax
		shl ecx, 3
		add edx, eax
		shl edx, 2
		add ecx, edx
		add ebx, ecx
	
		mov eax, ebx
		call writeint
		call crlf

	exit
	main ENDP
END main