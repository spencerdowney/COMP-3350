TITLE HW6-3.asm by Spencer Downey
INCLUDE Irvine32.inc

.data
WelcomeMsg BYTE "Welcome! This program accepts six integers as input and finds the element closest to zero then displays the value and the index of the value", 0
PromptUser BYTE "Please input a value: ", 0
spacing BYTE ", ", 0
String1 BYTE "The target value is ", 0
String2 BYTE "and is located at index: ", 0
ArraySW SWORD 6 DUP(?)
Target SWORD ?
TargetIndice WORD ?
temp WORD ?

.code
main PROC
	mov eax, 0
	mov ebx, 0
	mov ecx, 6
	mov edx, OFFSET WelcomeMsg
	call WriteString
	call crlf
	call crlf
	mov edx, OFFSET PromptUser
	L1:
		call WriteString
		call ReadInt
		mov ArraySW[ebx], ax
		add ebx, 2
		loop L1
	mov ebx, 0
	mov ecx, 6
	call crlf
	call crlf
	call findMinor
	mov edx, OFFSET String1
	call WriteString
	movsx eax, Target
	call WriteInt
	mov edx, OFFSET spacing
	call WriteString
	mov edx, OFFSET String2
	call WriteString
	movsx eax, TargetIndice
	call WriteInt
	call crlf
	exit
main ENDP

findMinor PROC USES ebx
	movsx eax, ArraySW[ebx]
	mov temp, ax
	L1:
		movsx eax, ArraySW[ebx]
		cmp ax, 0
		jge J1
		neg eax
		jmp J1
	J1:
		mov edx, eax
		cmp ax, temp
		jle J2
		add ebx, 2
		loop L1
		jmp J3
	J2:
		mov TargetIndice, bx
		mov temp, ax
		add ebx, 2
		loop L1
		jmp J3
	J3:
		mov bx, TargetIndice
		mov ax, bx
		mov bx, ArraySW[bx]
		mov Target, bx
		mov bx, 2
		div bl
		mov TargetIndice, ax
		ret
findMinor ENDP
END main