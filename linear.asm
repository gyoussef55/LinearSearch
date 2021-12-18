TITLE LINEAR SEARCH ALGORITHM
; Author : Youssef Gamal
;-------------------------------------------------------------------------------------------------
; Linear search works by iterating over the array until finding the intended element 
; Time complexity  worst case O(n)
; Space comlexity O(1)
; you can do some improvement by making two counters one begins from the beginging and another one begins from the last array element
; and checking the two indices then increasing the first and decrement the second 
;-------------------------------------------------------------------------------------------------
.386
.MODEL FLAT
ExitProcess PROTO NEAR32 stdcall , dwExitCode:DWORD
INCLUDE io.h 
cr EQU 0dh
Lf EQU 0ah


.STACK 4096

.DATA
msg     BYTE "enter number",cr,lf,0
prm     BYTE "found at "
arr     DWORD 50,40,20,30,10
result  BYTE 11 dup (?),0ah,0dh,0
index   DWORD 11 dup(?)
prm2    BYTE "not found ",0
string  BYTE 20 dup (?)




;////////////////////////
.CODE
_start:

; input
output msg
input string,20
atod string

;//////////////////////

lea ebx,arr
mov esi,0
_for:
cmp esi , 5
je _IFnotfound
cmp eax,[ebx+esi*4]
je _IFfound

inc esi 
jmp _for

;//////////////////////


_IFfound:
inc esi
dtoa index,esi
output prm
jmp _end

_IFnotfound:
output prm2

_end:

invoke EXITPROCESS,0 
PUBLIC _start
END
