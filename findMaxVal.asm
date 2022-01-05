;Finding Maximum Value in Assembly -masm 8086

org 100h      

.model small
.data      

ARR DB 1,2,5,8,10,25,45,0,3
arr_size = $ - offset ARR
max DB 0
.code
;Initilize Data Segment
mov ax,@DATA
mov DS,ax
;===========Moving Offset of arr=====
mov si,offset ARR
mov cx,arr_size
L:
mov ah,max
cmp [si],ah
jg ad
jmp last
ad:
mov al,[si]
mov max,al
last:
inc si
LOOP L
;to terminate Program
mov ah,4ch
int 21h
ret