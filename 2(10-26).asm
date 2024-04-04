section .data 
    newline db 10 ; Символ новой строки
    space db " ", 0 ; Пробел
    A db 'A', 0 ; Символ А для начала строки

section .bss
    N resb 2 ; Переменная для хранения введённого числа

section .text
    global _start

_start:
    ; Ввод N
    mov eax, 3      ; Номер системного вызова для чтение
    mov ebx, 0      ; Файловый дескриптор 0 - stdin
    mov ecx, N      ; Адрес переменной N
    mov edx, 2      ; Считываем 2 байта
    int 0x80        ; Вызов прерывания

    ; Преобразование ASCII в целое число
    movzx eax, byte [N]
    sub al, '0' ; Преобразование 1 цифры
    mov dl, 10
    mul dl 

    ; Преобразование 2 цифры
    movzx edx, byte [N + 1]
    sub dl, '0'

    ; Соединение цифр в число
    add al, dl ; AL содержит двузначное число 
    mov [N], al

    ; Сравнение N с 26
    cmp byte [N], 26

    ; Цикл для i = N до 1
    movzx esi, byte [N]
    loop_i:
        ; Вложенный цикл k = i до 1
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
            cmp edi,esi
            jge loop_k

        ; Вывод новой строки
        mov eax, 4
        mov ebx, 1
        mov ecx, newline
        mov edx, 1
        int 0x80

        ; Уменьшение i
        dec esi
        cmp esi, 0
        jg loop_i

    ; Завершение программы
    mov eax, 60
    xor edi, edi
    syscall
