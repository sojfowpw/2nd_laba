# Лестница из букв
Программа будет реализовываться с помощью 2 циклов for. С клавиатуры вводим число N, в 1 цикле проходимся с помощью новой переменной i от N до 0. Во вложенном цикле проходимся по алфавиту в обратном порядке от Z – (26 – N) до A + i. Выводим результат на экран.

---
>Пример
>
>Ввод: 4
>
>Вывод:
>
>       D
>       D C
>       D C B
>       D C B A
---
# Панграмма
Учитывая строку sentence, содержащую только строчные буквы латинского алфавита, вернуть true, если это панграмма , иначе false.

Программа будет реализовываться с помощью цикла for, в котором происходит перебор алфавита от a до z. Если буква встречается в строке, к переменной-счётчику добавляется + 1. Если в строке встречаются все 26 букв, то есть переменная-счётчик = 26, выводится true, иначе false.

---
>Пример
>
>Ввод: thequickbrownfoxjumpsoverthelazydog
>
>Вывод: true
>
>Ввод: whatdoesthefoxsay
>
>Вывод: false
---
# Чётные цифры
Необходимо посчитать количество чётных цифр для каждого числа.

Программа будет реализовываться с помощью циклов for, while и последовательного ввода и вывода значений на экран. Цикл for используется для ввода нескольких чисел, количество которых было введено ранее. Переменная count используется в качестве переменной-счётчика чётных цифр в числе. В цикле while очередное число разбивается на цифры с помощью операции остаток от деления на 10. Эта цифра проверяется на чётность.

---
>Ввод: 3 12 5 44
>
>Вывод: 1 0 2
---
