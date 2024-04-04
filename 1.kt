import java.util.Scanner // входные данные

fun main() {
    val scanner = Scanner(System.`in`)
    val N = scanner.nextInt()

    for (i in N downTo 0) { // downTo - обратный порядок перебора i от N до 0  
        for (letter in 'Z' - (26 - N) downTo 'A' + i) { // перебор алфавита
            print(letter + " ")
        }
        println()
    }
}
