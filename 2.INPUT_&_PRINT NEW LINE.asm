.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
    ;INPUT PART
    MOV AH,1    ;>"1" MEANS INPUT FUNCTION
    
    INT 21H     ;>IT WILL EXCECUTE THE 
                ;NEAREST FUNCTION
    MOV BL ,AL  
    
    
       ;>>FOR PRINTING THE OUTPUT 
       ;IN A NEW LINE WE NEED WRITE A NEW CODE 
       
    MOV AH,2
    MOV DL,0AH  ;>>"0A" MEANS 10,
                ;H MEANS HEXADEIMAL
    INT 21H
    MOV DL,ODH   ;>>"OD" MEANS 13
    INT 21H                
       
    
    
    
    
    ;OUTPUT PART
    MOV AH,2    ;>"2"  MEANS OUT PUT
    
    MOV DL,BL   ;>WHEN WE MOV SOMETHING 
                ;TO DL IT WILL PRINT.  
                
    INT 21H     ;>PRINTING THE INPUT
    
    
    MOV AH ,4CH
    INT 21H
    MAIN ENDP
END MAIN