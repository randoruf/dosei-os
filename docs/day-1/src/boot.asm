[org 0x7c00] ; Tell the assembler where this code will be loaded

entry: 
    mov bx, HELLO_MSG
    call print_string
fin: 
    hlt 
    jmp fin 
; -------------------------------
print_string:
    push ax
    push bx 
    mov ah, 0x0e
print_string_loop: 
    mov al, [bx]
    add bx, 1
    cmp al, 0
    je print_string_fin
    int 0x10
    jmp print_string_loop
print_string_fin:
    pop bx
    pop ax 
    ret
; -------------------------------
HELLO_MSG:
    db "Hello, World!", 0x0d, 0x0a, 0 ; "/r/n" return and new line 


times 510-($-$$) db 0
dw 0xAA55