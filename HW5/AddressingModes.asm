TITLE Addressing Modes			(main.asm)
INCLUDE Irvine32.inc
.data
alpha 	DWORD		65219751h, 24875139h  
beta 		DWORD		3B2C791Ah, 0A57716Dh
gamma  	DWORD 	0C58Bh

.code		
main PROC	
	mov eax, 1111h;			Immediate
	mov ecx, eax;			Register to Register	
	mov edi, OFFSET beta;		Immediate	
	mov [gamma], eax; 		Direct	
	mov esi, gamma;			Direct	
	mov esi, 4;  			Immediate	
	mov eax, beta[esi];		Indirect-offset	
	mov ebx, OFFSET alpha;		Immediate	
	mov eax, [ebx];  			Indirect	
	mov eax, 4[ebx]; 			Indirect-displacement	
	mov eax, 4[ebx][esi];  		Base-Indirect-displacement	
exit
main ENDP
END main
