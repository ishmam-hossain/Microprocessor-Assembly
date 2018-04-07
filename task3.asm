A SEGMENT Para Public 'Code'
	ASSUME CS:A
	ORG 1000H
	START:
		
		MOV AL, 80H
		OUT 1EH, AL

		GO:
			
			MOV SI,OFFSET DATA 
                        MOV DH,00H   
			

			L1:
                                MOV AL,00H
   				OUT 1CH,AL 
                                                                                           
 
				MOV AL,BYTE PTR CS:[SI]
   				OUT 18H,AL 
                                                            
                                
				MOV AL,BYTE PTR CS:[SI]
   				OUT 1AH,AL  
                                  
                                 
				MOV AL,0FFH
   				OUT 1CH,AL 
                                                                                    
                                MOV CX,0FFFFH
   				C1: LOOP C1
                                MOV CX,0FFFFH
   				C2 : LOOP C2
                                                                                            
   				
				INC SI
				INC DH 
                                

				CMP DH,08H 
                                JNE L1
				JE GO
                                                                                 
				

		DATA:                
		DB 0FEH 
                DB 0FDH
		DB 0FBH 
                DB 0F7H
		DB 0EFH 
                DB 0DFH
		DB 0BFH
                DB 7FH
		  
                             A ENDS
			        END START

