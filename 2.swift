import Foundation

let sentence = readLine()! // ввод строки
var k = 0
for letter in Int("a".unicodeScalars.first!.value)...Int("z".unicodeScalars.first!.value) { // перебор алфавита
    if sentence.contains(String(UnicodeScalar(letter)!)) { // поиск букв в строке
        k += 1 // подсчёт количества
    }
}
print(k == 26 ? "true" : "false")
