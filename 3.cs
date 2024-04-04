using System;
class Program {
    static void Main() {
        int amount = int.Parse(Console.ReadLine()); // ввод количества чисел
        for (int i = 0; i < amount; i ++) {
            int number = int.Parse(Console.ReadLine()); // ввод чисел
            int count = 0;
            while (number != 0) {
                if ((number % 10) % 2 == 0) { // проверка на чётность каждой цифры
                    count++; // подсчёт количества
                }
                number /= 10;
            }
            Console.Write("Result: " + count + "\n");
        }
    }
}
