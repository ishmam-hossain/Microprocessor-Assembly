LAB5 SEGMENT Para Public 'Code'
	ASSUME CS:LAB5
	org 1000h
	START:
		MOV AL, 80H
		OUT 1EH, AL
		REPEAT:
			L0:
                                MOV AL,00H
                                OUT 18H,AL
				MOV AL,00H
                                OUT 1AH,AL
				MOV AL,00H
                                OUT 1CH,AL
                                MOV CX,0FFFFH
   				Delay:LOOP Delay
                        L1:
                                MOV AL,0CFH
                                OUT 18H,AL
				MOV AL,0CFH
                                OUT 1AH,AL
				MOV AL,04H
                                OUT 1CH,AL
                                MOV CX,0FFFFH
   				D1:LOOP D1
                        L2:
                                MOV AL,0BFH
                                OUT 18H,AL
				MOV AL,0BFH
                                OUT 1AH,AL
				MOV AL,18H
                                OUT 1CH,AL
                                MOV CX,0FFFFH
   				D2:LOOP D2
                        L3:
                                MOV AL,0CFH
                                OUT 18H,AL
				MOV AL,0CFH
                                OUT 1AH,AL
				MOV AL,20H
                                OUT 1CH,AL
                                MOV CX,0FFFFH
   				D3:LOOP D3
                        L4:
                                MOV AL,0F7H
                                OUT 18H,AL
				MOV AL,0F7H
                                OUT 1AH,AL
				MOV AL,10H
                                OUT 1CH,AL
                                MOV CX,0FFFFH
   				D4:LOOP D4
                        L5:
                                MOV AL,0BFH
                                OUT 18H,AL
				MOV AL,0BFH
                                OUT 1AH,AL
				MOV AL,04H
                                OUT 1CH,AL
                                MOV CX,0FFFFH
   				D5:LOOP D5
                        L6:
                                MOV AL,0FDH
                                OUT 18H,AL
				MOV AL,0FDH
                                OUT 1AH,AL
				MOV AL,03CH
                                OUT 1CH,AL
   				MOV CX,0FFFFH
   				D6:LOOP D6
			JMP REPEAT
		LAB5 ENDS
			END START
