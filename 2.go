package main

import (
    "fmt"
    "strings")
func main() {
    var sentence string
    fmt.Scan(&sentence) // ввод строки
    var k int = 0
    for letter := 'a'; letter <= 'z'; letter++ { // перебор алфавита
        if strings.ContainsRune(sentence, letter) { // поиск букв в строке
            k++ // подсчёт количества
        }
    }
    if k == 26 {
        fmt.Print("true")
    } else {
        fmt.Print("false")
    }
}