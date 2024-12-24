assembly
; Bootloader code
section .multiboot
align 4
dd 0x1BADB002 ; magic number
dd 0x00000003 ; flags
dd - (0x1BADB002 + 0x00000003) ; checksum

section .text
global start
start:
    ; Initialize stack
    mov esp, stack_top

    ; Jump to kernel code
    jmp kernel_entry
