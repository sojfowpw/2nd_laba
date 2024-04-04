import java.util.Scanner;

fun main() {
    val scanner = Scanner(System.`in`)
    val sentence = scanner.nextLine() // ввод строки
    var k = 0
    for (letter in 'a'..'z') { // перебор алфавита
        if (sentence.contains(Character.toString(letter))) { // поиск букв в строке
            k++ // подсчёт количества
        }
    }
    if (k == 26) {
        print("true")
    }
    else {
        print("false")
    }
}