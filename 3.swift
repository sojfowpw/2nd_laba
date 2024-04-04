import Foundation

let amount = Int(readLine()!)! // ввод количества чисел
for _ in 0...amount - 1 {
    var number = Int(readLine()!)! // ввод чисел
    var count: Int = 0
    while number != 0 {
        if (number % 10) % 2 == 0 { // проверка на чётность каждой цифры
            count += 1 // подсчёт количества
        }
        number /= 10
    }
    print("Result: ", count)
}
