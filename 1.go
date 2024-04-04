package main

import (
	"fmt" // пакет для вывода данных
)

func main() {
	var N int // объявление переменной 
	fmt.Scan(&N) // ввод с консоли
	for i := N; i >= 0; i-- {
		for letter := 'Z' - (26 - N); letter >= 'A'+ i; letter-- { // перебор алфавита
			fmt.Printf("%c ", letter) // %с - вывод символа
		}
		fmt.Println()
	}
}