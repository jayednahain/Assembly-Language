.MODEL SAMLL
.STACK 100H
.CODE

MAIN PROC
    
       ;INPUT
    
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    INT 21H
    
    MOV BH,AL
    INT 21H
    
    MOV CL,AL
    INT 21H     
    
    MOV CH ,AL
         
         
         
         ;NEW LINE CODE
    
    MOV AH,2
    MOV DL,0AH  ;>>"0A" MEANS 10,
                ;H MEANS HEXADEIMAL
    INT 21H
    MOV DL,0DH   ;>>"OD" MEANS 13
    INT 21H 
    
    
    
    
      ;OUT PUT
    
    MOV AH,2
    
    MOV DL,BL
    INT 21H
    
    MOV DL,BH
    INT 21H
    
    MOV DL,CL
    INT 21H
    
    MOV DL,CH
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
     
    
    
    
    
    
    
    
    
    