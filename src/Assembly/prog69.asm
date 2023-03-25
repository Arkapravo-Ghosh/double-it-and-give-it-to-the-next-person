section .data
    prompt db "Enter a number: ", 0
    output db "Double it and give it to the next person: ", 0
    newline db 10, 0

section .bss
    num resb 32 ; reserve 32 bytes of memory for input
    num_len resb 1 ; reserve 1 byte of memory for input length

section .text
    global _start

_start:
    ; print the prompt message
    mov eax, 4
    mov ebx, 1
    mov ecx, prompt
    mov edx, 16
    int 0x80

    ; read the input from the user
    mov eax, 3
    mov ebx, 0
    mov ecx, num
    mov edx, 32
    int 0x80

    ; get the length of the input
    mov esi, num
    mov edi, num_len
    xor ecx, ecx
    mov cl, byte [esi]
    mov byte [edi], cl

    ; convert the input to a number
    mov ebx, 0
    mov edx, 0
    mov eax, 0

    mov esi, num
    mov ecx, num_len
    sub ecx, 1 ; decrement length by 1 to skip the newline character

    ; loop through each digit in the input
    .loop:
        cmp byte [esi], 10 ; check for newline character
        je .done

        movzx ebx, byte [esi] ; convert the digit to a number
        sub ebx, '0'

        ; multiply the number by 10 and add the digit
        mov edx, eax
        mov eax, 10
        mul eax, edx
        add eax, ebx

        ; increment the pointer to the next digit
        inc esi
        loop .loop

    .done:
    ; double the input and print the output
    add eax, eax
    mov ebx, 1
    mov ecx, output
    mov edx, 32
    int 0x80

    ; convert the doubled number to a string
    mov edi, num
    mov esi, edi
    mov ebx, 10

    ; divide the number by 10 repeatedly to get each digit
    .digit_loop:
        xor edx, edx
        div ebx
        add dl, '0'
        mov byte [edi], dl
        inc edi
        cmp eax, 0
        jnz .digit_loop

    ; reverse the order of the digits in the string
    sub edi, 1
    .reverse_loop:
        cmp esi, edi
        jge .print_num
        mov al, byte [esi]
        mov dl, byte [edi]
        mov byte [esi], dl
        mov byte [edi], al
        inc esi
        dec edi
        jmp .reverse_loop

    .print_num:
    ; print the doubled number
    mov eax, 4
    mov ebx, 1
    mov ecx, num
    sub ecx, 1 ; decrement pointer to skip the newline character
    mov edx, num_len
    int 0x80

    ; print a newline character
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    ; exit the program
    mov eax, 1
    xor ebx, ebx
    int 0x80