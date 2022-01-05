;Simple Program in assembly Language to take & display string

org 100h

.data
P1 DB 0DH,0AH,'ENTER FIRST NAME :::','$'
P2 DB 0DH,0AH,'ENTER SECOND NAME :::','$'
P3 DB 0DH,0DH,0AH,'NAME IS :::','$'
FN DB 20,22 DUP (0)
LN DB 20,22 DUP (0)
.CODE
;=========SHOW P1 STRING==================
LEA DX,P1
MOV AH,09H
INT 21H
;=========PROMPT FOR FIRST NAME==========
LEA DX,FN
MOV AH,0AH
INT 21H
MOV BL,FN[1]
MOV BH,00H
MOV FN[BX + 2], ' '
MOV FN[BX + 3], '$'
;========SHOW P2 STRING==================
LEA DX,P2
MOV AH,09H
INT 21H
;========PROMPT FOR SECOND NAME=========
LEA DX,LN
MOV AH,0AH
INT 21H
MOV BL,LN[1]
MOV BH,00H
MOV LN[BX + 2], '$'
;======================================
LEA DX,P3
MOV AH,09H
INT 21H
LEA DX, FN[2]
MOV AH,09H
INT 21H
LEA DX,LN[2]
MOV AH,09H
INT 21H
;======================================
INT 21H

RET




