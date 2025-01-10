```assembly
section .data
    array dw 10, 20, 30, 40, 50
    len equ ($-array) / 2 ; Corrected length calculation

section .bss
    sum resw 1 ; Reserve space for the sum

section .text
    global _start

_start:
    ; Initialize the sum to 0
    mov word [sum], 0

    ; Loop through the array
    mov esi, array ; Load the address of the array
    mov ecx, len ; Load the length of the array
    ; loop counter is now properly initialized
loop_start:
    add word [sum], [esi] ; Add the current element to the sum
    add esi, 2 ; Move to the next element
    loop loop_start

    ; Exit the program
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80
```