.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB 'TENDUKCAR $'
MSG2 DB 'MESSI $'

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    ;MASSAGE ONE OUTPUT
    LEA DX,MSG1 
    MOV AH,9
    INT 21H
    
    
    ;NEW LINE CODE  
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H 
                         ;FOR 2 LINE GAPE
    ;NEW LINE CODE  
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    
    
    ;MASSAGE 2 OUTPUT  
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN