section .data
    msg db "Hello, world!",0xa
    len equ $-msg

section .text
    global _start

_start:
    mov eax, 4       ; sys_write
    mov ebx, 1       ; stdout
    mov ecx, msg     ; string to output
    mov edx, len     ; length of string
    int 0x80         ; syscall

    mov eax, 1       ; sys_exit
    xor ebx, ebx     ; return code
    int 0x80         ; syscall
