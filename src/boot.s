[bits 16]

org 0x7c00

_start:

    mov ah, 0h
    mov ax, 0h
    mov al, ah
    mov bl, ah
    mov bh, ah
    mov dh, ah
    mov dl, ah
    mov es, ax
    mov ss, ax
    mov sp, 0x9000


    mov ah, 13h
    mov al, 0
    mov bh, 0
    mov bl, 4h
    mov cx, 12
    mov bp, hello
    int 10h
    jmp loop


hello db "hello world!", 0

loop:
    jmp loop

times 510-($-$$) db 0
dw 0xAA55
