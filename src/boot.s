[bits 16]

org 0x7c00

_start:

    mov eax, 0
    mov ebx, eax
    mov es, eax
    mov ss, eax
    mov sp, 0x9000

    mov ah, 0Eh
    mov al, [k]
    ;mov cx, 12
    ;mov bp, hello
    int 10h
    jmp loop


;hello db "hello world!", 0
k db 'a'

loop:
    jmp loop

times 510-($-$$) db 0
dw 0xAA55
