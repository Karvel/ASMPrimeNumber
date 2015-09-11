; Elanna Grossman
; Prime number checker program - ASM

.586P
.MODEL FLAT, stdcall	;Flat Memory Model

PUBLIC prime

_TEXT SEGMENT			;Tells the assembler what type of the following is

.data
	divisor DWORD 2		;set divisor to 2 to avoid n/1
	counter DWORD ?

.code
prime PROC pri: DWORD
	mov eax,pri
	mov edx,0			;clear edx - remainder
	mov ecx,2
	div ecx				;pri/2
	inc eax				;pri/2 + 1
	mov counter,eax		;save new value

L1:
	mov eax,pri			;pri as dividend
	mov edx,0			;clear edx - remainder
	mov ecx,divisor		;adjust divisor
	div ecx				;pri/divisor
	cmp edx, 0
	je NotPrime			;check for remainder
	inc ecx
	mov divisor,ecx		;increment divisor
	cmp ecx,counter
	jl L1				;end when divisor >= counter
	mov eax,1			;return prime
	RET
	
NotPrime:
	mov eax,0			;return not prime
	RET

prime ENDP
_TEXT ENDS
END