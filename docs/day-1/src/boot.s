.code16
.section .text
.global _start

_start:
    mov $HELLO_MSG, %bx
    call print_string
fin: 
    hlt
    jmp fin
# -------------------------------
print_string:
    push %ax 
    push %bx 
    mov $0x0e, %ah 
print_string_loop:
    movb (%bx), %al
    add $1, %bx 
    cmp $0, %al 
    je print_string_fin
    int $0x10 
    jmp print_string_loop
print_string_fin:
    pop %bx 
    pop %ax
    ret
# -------------------------------

HELLO_MSG:
    # "/r/n" return and new line 
    .ascii "Hello, World!\r\n\0"
