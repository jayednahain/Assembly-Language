.MODEL SMALL
.STACK 100H
.DATA

VAR DB ?



.CODE
MAIN PROC
    
       ;FOR IN PUT
    MOV AX,@DATA
    MOV DS,AX 
        
        ;PRINT THE INPUT DATA
    MOV AH,1
    INT 21H
    MOV VAR,AL
    
    
         ; PRINT ANOTHER CHARACTER "1"
    MOV AH,2
    MOV DL,'1'
    INT 21H
    
    MOV AH,2 
    SUB VAR,17   
    MOV DL,VAR
    INT 12H
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
MAIN
    