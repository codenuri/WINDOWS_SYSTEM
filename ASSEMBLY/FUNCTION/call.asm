; Listing generated by Microsoft (R) Optimizing Compiler Version 19.24.28314.0 

	TITLE	B:\02_ONLINE\03_WINDOWS\PART1\FUNCTION\call.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_add
PUBLIC	@foo@16
PUBLIC	_main
; Function compile flags: /Odtp
; File B:\02_ONLINE\03_WINDOWS\PART1\FUNCTION\call.c
_TEXT	SEGMENT
_main	PROC

; 11   : {

	push	ebp
	mov	ebp, esp

; 12   : 	foo(1, 2, 3, 4);

	push	4
	push	3
	mov	edx, 2
	mov	ecx, 1
	call	@foo@16

; 13   : 	add();

	call	_add

; 14   : }

	xor	eax, eax
	pop	ebp
	ret	0
_main	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File B:\02_ONLINE\03_WINDOWS\PART1\FUNCTION\call.c
_TEXT	SEGMENT
_a$ = -8						; size = 4
_b$ = -4						; size = 4
_c$ = 8							; size = 4
_d$ = 12						; size = 4
@foo@16	PROC
; _a$ = ecx
; _b$ = edx

; 7    : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _b$[ebp], edx
	mov	DWORD PTR _a$[ebp], ecx

; 8    : 
; 9    : }

	mov	esp, ebp
	pop	ebp
	ret	8
@foo@16	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File B:\02_ONLINE\03_WINDOWS\PART1\FUNCTION\call.c
_TEXT	SEGMENT
_add	PROC

; 3    : {

	push	ebp
	mov	ebp, esp

; 4    : 	return 300;

	mov	eax, 300				; 0000012cH

; 5    : }

	pop	ebp
	ret	0
_add	ENDP
_TEXT	ENDS
END
