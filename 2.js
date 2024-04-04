let sentence = prompt(); // ввод строки
let k = 0;
for (let letter = 'a'.charCodeAt(0); letter <= 'z'.charCodeAt(0); letter++) { // перебор алфавита
    if (sentence.includes(String.fromCharCode(letter))) { // поиск букв в строке
        k++; // подсчёт количества
    }
}
console.log(k == 26 ? "true" : "false");
