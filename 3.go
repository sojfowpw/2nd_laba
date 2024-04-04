package main

import (
    "fmt"
    )
func main() {
    var amount int
    fmt.Scan(&amount) // ввод количества чисел
    for i := 0; i < amount; i++ {
        var number int
        fmt.Scan(&number) // ввод чисел
        var count int = 0
        for number != 0 {
            if (number % 10) % 2 == 0 { // проверка на чётность цифр
                count++ // подсчёт количества
            }
            number /= 10
        }
        fmt.Println("Result: ", count)
    }
}