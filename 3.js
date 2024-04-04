let amount = parseInt(prompt()); // ввод количества чисел
for (let i = 0; i < amount; i++) {
    let number = parseInt(prompt()); // ввод чисел
    let count = 0;
    while (number != 0) {
        if ((number % 10) % 2 == 0) { // проверка каждой цифры на чётность
            count++; // подсчёт количества
        }
        number = Math.floor(number / 10);
    }
    process.stdout.write("Result: " + count + "\n");
}
