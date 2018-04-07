MYCODE  SEGMENT para    public  'code'
        ASSUME  cs:MYCODE
org 1000h
START: 
      mov     al, 80h
      out     1Fh, al 
label:          
        mov     al, 0a7h
        out     19h, al  
        mov  cx,0ffffh 
        loop1:
             loop loop1
           
     
        mov     al,92h
        out    19h,al
        mov cx,0ffffh
        loop2:
              loop loop2
     
        mov    al,0a1h
        out 19h,al  
        mov cx,0ffffh
        loop3:
             loop loop3
        
     jmp label     
    hlt
MYCODE  ENDS
        END     START
