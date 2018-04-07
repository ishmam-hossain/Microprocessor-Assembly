Mycode segment para public 'Code'

   assume cs:Mycode
   org    1000h


start:
     mov al,80h
     out 1fh,al
     mov al,17


label:  
      mov bl,0
      mov si,offset data
      mov di,offset led


display: 
        mov al,byteptr cs:[si]
        out 19h,al
        mov al,byteptr cs:[di]
        out 1bh,al
        mov cx,0ffffh
     l1:
        loop l1
        mov cx,0ffffh
     l2:
        loop l2

        inc si
        inc di
        inc bl
        cmp bl,al
        je lebel
        jmp display




data:
       db 0f9h
       db 0ffh
       db 0a4h
       db 0ffh
       db 0a0h
       db 0ffh
       db 83h
       db 0ffh
       db 88h
       db 0ffh
       db 80h
       db 0ffh
       db 0B0h
       db 0ffh
       db 99h
       db 0ffh

led:
       db 01h
       db 00h
       db 08h
       db 00h
       db 04h
       db 00h
       db 02h
       db 00h
       db 01h
       db 00h
       db 08h
       db 00h
       db 04h
       db 00h
       db 02h
       db 00h

Mycode Ends
End start