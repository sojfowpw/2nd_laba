using System;

class Program {
    static void Main() {
        string sentence = Console.ReadLine(); // ввод строки
        int k = 0;
        for (char letter = (char)('a'); letter <= (char)('z'); letter++) { // перебор строки
            if (sentence.Contains(letter)) { // поиск буквы в строке
                k++; // подсчёт количества
            }
        }
    }
}