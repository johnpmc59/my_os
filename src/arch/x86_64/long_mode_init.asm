global long_mode_start

section .text
bits 64
long_mode_start:
    ; load 0 into all data segment registers
    mov ax, 0
    mov ss, ax
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov gs, ax

    ; print 'SHAZAM!' to screen
    mov rax, 0xdf5adf41df48df53;SHAZ
    mov qword [0xb8000], rax
    mov rax, 0xdf20df21df4ddf41;AM!
    mov qword [0xb8008], rax
    ;mov rax, 0x2f592f412f4b2f4f
    ;mov qword [0xb8000], rax
    hlt
