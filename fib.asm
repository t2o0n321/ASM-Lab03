; name:
;	fib.asm
; author:
;	t2o0n321
; description:
;	Write a program that uses a loop to calculate the first 30 values of the Fibonacci number sequence, 
;	described by the following formula: Fib(1) = 1, Fib(2) = 1, Fib(n) = Fib(n – 1) + Fib(n – 2).

include Irvine32.inc

.data
tmp		dword	0

.code
main proc
	mov eax, 1
	mov edx, 1

	mov ecx, 2
L1:
	call WriteDec
	call Crlf
	loop L1

	mov ecx, 28
forLoop:
	mov tmp, edx
	add eax, edx
	call WriteDec
	call Crlf
	mov edx, eax
	mov eax, tmp

	loop forLoop
	exit
main endp
end main