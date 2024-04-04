let N = parseInt(prompt()); //ввод переменной
for (let i = N; i >= 0; i--) {
    let letter = String.fromCharCode('Z'.charCodeAt(0) - (26 - N)); // создание строки из Unicode символов; числовое значение этих символов
    for (; letter >= String.fromCharCode('A'.charCodeAt(0) + i); letter = String.fromCharCode(letter.charCodeAt(0) - 1)) { // перебор алфавита
        process.stdout.write(letter + " ");
    }
    console.log();
}
