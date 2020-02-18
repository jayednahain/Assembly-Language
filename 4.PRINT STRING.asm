.MODEL SAMLL
.STACK 100H
.DATA ;NEW! FOR USEING STRING   
      
                                          
      MSG1 DB 'TENDULKAR $';DB WILL ALLOCATE THE STRING SPACE
      MSG2 DB 'CRISTIANO $'


.CODE

MAIN PROC
    
     ;>>CODE SEGMENT DOSENT KNOW THERE IS NEW
     ;DATA SEGMENT
     
     ;>>SO WE HAVE TO TELL THERE IS NEW DATASEGMENT
     ;TO CODE SEGMENT   
     
     
     MOV AX,@DATA ;>>HERE INITIALIZATION OF
                  ;DATA SEGMENT
     MOV DS,AX
             
             ;PRINT MASSAGE1
     
     LEA DX,MSG1  ; load effective address
     
     MOV AH,9     ;>> '9' IS FOR STRING PRINTING
     INT 21H
        
        ;NEW LINE CODE    
     MOV AH,2
     MOV DL,0DH
     INT 21H
     MOV DL,0AH 
         
         ;PRINT MASSAGE2
     
     LEA DX,MSG2  ; load effective address
     
     MOV AH,9     ;>> '9' IS FOR STRING PRINTING
     INT 21H   
     
        
     MOV AH ,4CH
     INT 21H
     MAIN ENDP
END MAIN
     