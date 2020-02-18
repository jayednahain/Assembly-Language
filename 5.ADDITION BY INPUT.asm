 .MODEL SMALL
 .STACK 100H
 .CODE
 MAIN PROC   
    
    ;INTPUT VALUE FUNCTION
    MOV AH,1
    INT 21H
    
    
    ;VALUE 1
    MOV BL ,AL
    INT 21H
    
    
    ;VALUE 2
    MOV CL,AL
    
    
               
    ;ADDITION
    ADD BL ,CL  ;BL =BL+CL
    
    
    ;PRINT VALUE
    MOV AH,2
    SUB BL.48 ;(BL-48) 
    MOV DL,BL
    INT 21H
    
    
    MOV AH ,4CH
    INT 21H
    MAIN ENDP
 END MAIN
    
    
    
    
    