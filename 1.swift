import Foundation // фреймворк с базовыми классами и типами 

func printAlphabet(N: Int) {
    for i in stride(from: N, through: 0, by: -1) { // цикл от N до 0 с шагом -1
        for letter in stride(from: UnicodeScalar("Z").value - UInt32(26 - N), through: UnicodeScalar("A").value + UInt32(i), by: -1) {
            print(Character(UnicodeScalar(letter)!), terminator: " ") // uniclodescalar - тип для символа Unicode
        } // value - значение Unicode для символа, UInt32 - беззнаковое целое число
        print()
    }
}
let N = Int(readLine()!)! // ввод переменной 
printAlphabet(N: N) // вызов функции