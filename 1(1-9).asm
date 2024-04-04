section .data
    newline db 10 ; символ новой строки
    space db " ", 0 ; пробел для разделения символов
    A db 'A', 0 ; символ 'A' для начала строки

section .bss
    N resb 4 ; переменная для хранения введенного числа

section .text
    global _start

_start:
    ; Ввод N 
    mov eax, 3      ; номер системного вызова для чтения
    mov ebx, 0      ; файловый дескриптор 0 - stdin
    mov ecx, N      ; адрес переменной N
    mov edx, 1      ; считываем 1 байт
    int 0x80        ; вызов прерывания

    ; Преобразование ASCII в целое число
    sub byte [N], '0' ; предполагаем, что ввод - одна цифра

    ; Сравнение N с 26
    cmp byte [N], 26

    ; Цикл для i = N до 1
    movzx esi, byte [N]
    loop_i:
        ; Вложенный цикл для k = i до 1
        movzx edi, byte [N]
        loop_k:
            ; Вычисление Str = 'A' + (k - 1)
            mov al, 'A' ; Значение АSCII символа А
            add al, dil ; dil = k
            dec al ; k--
            mov [A], al

            ; Вывод Str
            mov eax, 4
            mov ebx, 1
            mov ecx, A
            mov edx, 1
            int 0x80

            ; Вывод пробела
            mov eax, 4
            mov ebx, 1
            mov ecx, space
            mov edx, 1
            int 0x80

            ; Уменьшение k
            dec edi
            cmp edi,esi ; k и i
            jge loop_k 

        ; Вывод новой строки
        mov eax, 4
        mov ebx, 1
        mov ecx, newline
        mov edx, 1
        int 0x80

        ; Уменьшение i
        dec esi
        cmp esi, 0 ; Сравнение с 0
        jg loop_i

    ; Завершение программы
    mov eax, 60
    xor edi, edi
    syscall
