```asm
.model small
.data
 
msg1 db 'Masukan kata: $'
msg2 db 0ah,0dh,'Ini huruf kapitalnya $'
 
 
 
A db ?
 
.code
main proc
    mov ax, @data
    mov ds, ax
 
    lea dx,msg1
    mov ah, 9       ;Print String
    int 21h
 
    mov ah,1
    int 21h
 
    mov A, al
    int 21h
 
 
 
 
 
    CMP A, 65       ; CMP=Compare, JE=Jump Equal
    JL l2 
    CMP A, 90
    JG l2          ;Goto l2
 
            ; JMP=Jump Goto Exit
    l1:    
    mov ah, 9
    lea dx,msg2     
    int 21h
 
 
    l2:
    JMP exit 
 
 
 
 
         exit:
         main endp
end main
```
