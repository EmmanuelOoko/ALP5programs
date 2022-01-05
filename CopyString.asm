;Program in ASSEMBLY to Copy string -MASM 8086

org 100h
.stack 100h
.data
str db 2,2,"Joe Dayn$"
len db 0
.code
;==================Intitilize DS======================
mov ax,@DATA
mov ds,ax
mov si,OFFSET str
add si,2
;===========Calculating length of string===============
L:
cmp [si],'$'
je ex
inc si
inc len
LOOP L
ex:
;===================COPYING STRING=====================
add len,2
mov bl,len
strcpy db 2,?,2 DUP('$')
mov si,offset str +2
mov di,offset strcpy +2
mov cl,len
L1:
mov bl,[si]
mov [di],bl
inc si
inc di
LOOP L1
mov [di],'$'
;==========Printing of copying a string==============
lea dx,strcpy +2
mov ah,09h
int 21h
mov ah,4ch
int 21h
ret