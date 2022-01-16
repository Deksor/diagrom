
%ifdef COMFILE
        org 0x100 ;comfile org 
    start:
        jmp begin ;comfile starts here
%else
        org 0xf0000 ;rom org
%endif

    begin:
        mov dx, 0x0080
        mov al, 0x01
        out dx, al

        jmp end


;End of program
    end:
%ifdef COMFILE
        mov ax, 0x4c00
        int 0x21
%else
        hlt
%endif



        times 65520-($-$$) db 0 ;Padding to make a 64KB Rom
%ifndef COMFILE
    start:
        jmp word 0xf000:begin ;CPU starts reading here, jump back to the beginning of the rom
%endif
        
        
        times 65536-($-$$) db 0 ;Padding to add the remaining 16 ~or so bytes
