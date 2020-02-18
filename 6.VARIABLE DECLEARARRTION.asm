.MODEL SMALL
.STACK 100H
.DATA

VAR1 DB 5
VAR2 DB ?
VAR3 DB ?

.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
       
       
       ;VAR2 INPUT
    MOV AH,1
    INT 21H      ;VAR2 INPUT
    MOV VAR2,AL
    
    
        ;VAR3 INPUT
    MOV AH,1
    INT 21H
    MOV VAR3 ,AL    
    
    MOV AH,2
    ADD VAR1,48 ;>>ADDING 48 FOR EXACIT VALUE
    MOV DL,VAR1 ; PRINTING VARIAVBLE "1"
    INT 21H
          
          ;NEW LINE
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
          
          ;VAR2 OUTPUT
    MOV DL,VAR2
    INT 21H
    
              ;NEW LINE
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    
          ;VAR3 OUTPUT
    MOV DL,VAR3
    INT 21H
    
    
          
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN