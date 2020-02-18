.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
    ;INPUT PART
    MOV AH,1    ;>"1" MEANS INPUT FUNCTION
    
    INT 21H     ;>IT WILL EXCECUTE THE 
                ;NEAREST FUNCTION
    MOV BL ,AL  
    
    
       
       
       
    
    
    
    
    ;OUTPUT PART
    MOV AH,2    ;>"2"  MEANS OUT PUT
    
    MOV DL,BL   ;>WHEN WE MOV SOMETHING 
                ;TO DL IT WILL PRINT.  
                
    INT 21H     ;>PRINTING THE IN PUT
    
    
    MOV AH ,4CH
    INT 21H
    MAIN ENDP
END MAIN