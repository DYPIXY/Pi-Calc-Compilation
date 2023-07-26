section .data
    hello db 'Hello, World!',0

section .text
    global _start

_start:
    ; Write the string to the standard output
    mov eax, 4                   ; System call number for write
    mov ebx, 1                   ; File descriptor 1: stdout
    mov ecx, hello               ; Address of the string
    mov edx, 13                  ; Length of the string
    int 0x80                     ; Interrupt to invoke the kernel

    ; Terminate the program
    mov eax, 1                   ; System call number for exit
    xor ebx, ebx                 ; Exit code 0
    int 0x80                     ; Interrupt to invoke the kernel
