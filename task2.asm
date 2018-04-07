LAB2 SEGMENT Para Public 'Code'
	ASSUME CS:LAB2
	org 1000h
	START:
		
		MOV AL, 80H
		OUT 1FH, AL

		REPEAT:
			MOV DX,0000H
			MOV SI,OFFSET DATA   
			

			L:
				MOV AL,BYTE PTR CS:[SI]
   				OUT 19H,AL
   
   				MOV CX,0FFFFH
   				D1:LOOP D1
   				MOV CX,0FFFFH                   
   				D2:LOOP D2


				INC SI
				INC DX

				CMP DX,0009H
				JE DONE
				JNE L

			DONE:
				JMP REPEAT
	data:
	 db 088h
         db 80h
         db 0c6h
         db 0c0h
         db 0f9h
         db 0a4h
         db 0c0h
         db 86h
         db 8eh

		LAB2 ENDS
			END START