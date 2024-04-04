import java.util.Scanner;

fun main() {
    val scanner = Scanner(System.`in`)
    val amount = scanner.nextInt() // ввод количества чисел
    for (i in 1..amount) {
        var number = scanner.nextInt() // ввод чисел
        var count = 0
        while (number != 0) {
            if ((number % 10) % 2 == 0) // проверка на чётность цифр
                count++ // подсчёт количества
            number /= 10
        }
        println("Result: " + count)
    }
}