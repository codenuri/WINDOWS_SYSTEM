; Listing generated by Microsoft (R) Optimizing Compiler Version 19.24.28314.0 

	TITLE	B:\02_ONLINE\03_WINDOWS\SOURCE\ASSEMBLY\C_CALLINGCONVENTION\calling_convention2.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_f1
PUBLIC	_f2@8
PUBLIC	@f3@8
PUBLIC	@f4@16
PUBLIC	_main
; Function compile flags: /Odtp
; File B:\02_ONLINE\03_WINDOWS\SOURCE\ASSEMBLY\C_CALLINGCONVENTION\calling_convention2.c
_TEXT	SEGMENT
_main	PROC

; 8    : {

	push	ebp
	mov	ebp, esp

; 9    : 	f1(1, 2);

	push	2
	push	1
	call	_f1
	add	esp, 8

; 10   : 	f2(1, 2);

	push	2
	push	1
	call	_f2@8

; 11   : 	f3(1, 2);

	mov	edx, 2
	mov	ecx, 1
	call	@f3@8

; 12   : 	f4(1, 2, 3, 4);

	push	4
	push	3
	mov	edx, 2
	mov	ecx, 1
	call	@f4@16

; 13   : }

	xor	eax, eax
	pop	ebp
	ret	0
_main	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File B:\02_ONLINE\03_WINDOWS\SOURCE\ASSEMBLY\C_CALLINGCONVENTION\calling_convention2.c
_TEXT	SEGMENT
_a$ = -8						; size = 4
_b$ = -4						; size = 4
_c$ = 8							; size = 4
_d$ = 12						; size = 4
@f4@16	PROC
; _a$ = ecx
; _b$ = edx

; 5    : void __fastcall f4(int a, int b, int c, int d) {  } 

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _b$[ebp], edx
	mov	DWORD PTR _a$[ebp], ecx
	mov	esp, ebp
	pop	ebp
	ret	8
@f4@16	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File B:\02_ONLINE\03_WINDOWS\SOURCE\ASSEMBLY\C_CALLINGCONVENTION\calling_convention2.c
_TEXT	SEGMENT
_a$ = -8						; size = 4
_b$ = -4						; size = 4
@f3@8	PROC
; _a$ = ecx
; _b$ = edx

; 4    : void __fastcall f3(int a, int b) {  }

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _b$[ebp], edx
	mov	DWORD PTR _a$[ebp], ecx
	mov	esp, ebp
	pop	ebp
	ret	0
@f3@8	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File B:\02_ONLINE\03_WINDOWS\SOURCE\ASSEMBLY\C_CALLINGCONVENTION\calling_convention2.c
_TEXT	SEGMENT
_a$ = 8							; size = 4
_b$ = 12						; size = 4
_f2@8	PROC

; 3    : void __stdcall  f2(int a, int b) {  }

	push	ebp
	mov	ebp, esp
	pop	ebp
	ret	8
_f2@8	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File B:\02_ONLINE\03_WINDOWS\SOURCE\ASSEMBLY\C_CALLINGCONVENTION\calling_convention2.c
_TEXT	SEGMENT
_a$ = 8							; size = 4
_b$ = 12						; size = 4
_f1	PROC

; 2    : void __cdecl    f1(int a, int b) {  }

	push	ebp
	mov	ebp, esp
	pop	ebp
	ret	0
_f1	ENDP
_TEXT	ENDS
END
