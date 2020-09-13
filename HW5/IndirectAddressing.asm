TITLE IndirectAddressing - Spencer Downey
INCLUDE Irvine32.inc

.data
Array1 WORD 7h, 8h, 7h, 6h, 5h, 4h, 3h, 2h, 1h, 0h, 1h
Array2 WORD 4h, 2h, 3h, 4h, 5h, 6h, 7h, 8h, 9h, 8h, 7h
Array3 WORD 10 DUP (?)
a1message BYTE "Array1 Values: ",0
a2message BYTE "Array2 Values: ",0
a3message BYTE "Array3 Values: ",0

.code
main PROC
	mov esi, OFFSET Array1
	mov ecx, 5
	mov edx, OFFSET Array2
	mov ebx, OFFSET Array3

L1:
	call ArraySub
	add edx, TYPE DWORD
	add esi, TYPE DWORD
	mov [ebx], ax
	add ebx, TYPE DWORD
	loop L1

	call crlf
	mov edx, OFFSET a1message
	call WriteString
	call crlf
	movzx eax, [Array1 + 0]
	call WriteHex
	call crlf
	movzx eax, [Array1 + 2]
	call WriteHex	
	call crlf
	movzx eax, [Array1 + 4]
	call WriteHex	
	call crlf
	movzx eax, [Array1 + 6]
	call WriteHex	
	call crlf
	movzx eax, [Array1 + 8]
	call WriteHex	
	call crlf
	movzx eax, [Array1 + 10]
	call WriteHex	
	call crlf
	movzx eax, [Array1 + 12]
	call WriteHex	
	call crlf
	movzx eax, [Array1 + 14]
	call WriteHex
	call crlf
	movzx eax, [Array1 + 16]
	call WriteHex
	call crlf
	movzx eax, [Array1 + 18]
	call WriteHex
	call crlf
	movzx eax, [Array1 + 20]
	call WriteHex
	call crlf

	call crlf
	mov edx, OFFSET a2message
	call WriteString
	call crlf
	movzx eax, [Array2 + 0]
	call WriteHex
	call crlf
	movzx eax, [Array2 + 2]
	call WriteHex	
	call crlf
	movzx eax, [Array2 + 4]
	call WriteHex	
	call crlf
	movzx eax, [Array2 + 6]
	call WriteHex	
	call crlf
	movzx eax, [Array2 + 8]
	call WriteHex	
	call crlf
	movzx eax, [Array2 + 10]
	call WriteHex	
	call crlf
	movzx eax, [Array2 + 12]
	call WriteHex	
	call crlf
	movzx eax, [Array2 + 14]
	call WriteHex
	call crlf
	movzx eax, [Array2 + 16]
	call WriteHex
	call crlf
	movzx eax, [Array2 + 18]
	call WriteHex
	call crlf
	movzx eax, [Array2 + 20]
	call WriteHex
	call crlf

	call crlf
	mov edx, OFFSET a3message
	call WriteString
	call crlf
	movzx eax, [Array3 + 0]
	call WriteHex
	call crlf
	movzx eax, [Array3 + 4]
	call WriteHex	
	call crlf
	movzx eax, [Array3 + 8]
	call WriteHex	
	call crlf
	movzx eax, [Array3 + 12]
	call WriteHex	
	call crlf
	movzx eax, [Array3 + 16]
	call WriteHex	
	call crlf
	movzx eax, [Array3 + 20]
	call WriteHex	
	call crlf

exit
main ENDP

ArraySub PROC USES esi
mov eax, 0
add eax, [esi]
sub eax, [edx]

ret
ArraySub ENDP

END main