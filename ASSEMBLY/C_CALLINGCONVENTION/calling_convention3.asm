; Listing generated by Microsoft (R) Optimizing Compiler Version 19.24.28314.0 

	TITLE	B:\02_ONLINE\03_WINDOWS\SOURCE\ASSEMBLY\C_CALLINGCONVENTION\calling_convention3.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_f1
PUBLIC	_f2
PUBLIC	_f3
PUBLIC	_main
; Function compile flags: /Odtp
; File B:\02_ONLINE\03_WINDOWS\SOURCE\ASSEMBLY\C_CALLINGCONVENTION\calling_convention3.c
_TEXT	SEGMENT
_main	PROC

; 11   : {

	push	ebp
	mov	ebp, esp

; 12   : 	f1(1, 2);			// add esp, 8	

	push	2
	push	1
	call	_f1
	add	esp, 8

; 13   : 	f1(1, 2, 3, 4);		// add esp, 16

	push	4
	push	3
	push	2
	push	1
	call	_f1
	add	esp, 16					; 00000010H

; 14   : 
; 15   : 	f2(1, 2);

	push	2
	push	1
	call	_f2
	add	esp, 8

; 16   : 	f2(1, 2, 3, 4);

	push	4
	push	3
	push	2
	push	1
	call	_f2
	add	esp, 16					; 00000010H

; 17   : 	
; 18   : 	f3(1, 2);

	push	2
	push	1
	call	_f3
	add	esp, 8

; 19   : 	f3(1, 2, 3, 4);

	push	4
	push	3
	push	2
	push	1
	call	_f3
	add	esp, 16					; 00000010H

; 20   : }

	xor	eax, eax
	pop	ebp
	ret	0
_main	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File B:\02_ONLINE\03_WINDOWS\SOURCE\ASSEMBLY\C_CALLINGCONVENTION\calling_convention3.c
_TEXT	SEGMENT
_n$ = 8							; size = 4
_f3	PROC

; 8    : void __fastcall f3(int n, ...) {}

	push	ebp
	mov	ebp, esp
	pop	ebp
	ret	0
_f3	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File B:\02_ONLINE\03_WINDOWS\SOURCE\ASSEMBLY\C_CALLINGCONVENTION\calling_convention3.c
_TEXT	SEGMENT
_n$ = 8							; size = 4
_f2	PROC

; 5    : {	

	push	ebp
	mov	ebp, esp

; 6    : 	// ret 8
; 7    : }

	pop	ebp
	ret	0
_f2	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File B:\02_ONLINE\03_WINDOWS\SOURCE\ASSEMBLY\C_CALLINGCONVENTION\calling_convention3.c
_TEXT	SEGMENT
_n$ = 8							; size = 4
_f1	PROC

; 2    : void f1(int n, ...) {}

	push	ebp
	mov	ebp, esp
	pop	ebp
	ret	0
_f1	ENDP
_TEXT	ENDS
END