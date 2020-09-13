TITLE HW6-2.asm by Spencer Downey
Include Irvine32.inc

.data
PromptUser BYTE "Please enter a value:", 0
WelcomeMsg BYTE "Welcome! This program accepts six integers as input, stores them in a stack, and then displays them on the screen.", 0
DisplayInts BYTE "The integers stored are: ", 0
ArraySW SWORD 6 DUP(?)

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
	mov edx, OFFSET DisplayInts
	call crlf
	call WriteString
	call crlf
	L2:
		movsx eax, ArraySW[ebx]
		call WriteInt
		call crlf
		add ebx, 2
		loop L2
	call crlf
	exit
main ENDP
END main