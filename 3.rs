use std::io;

fn main() {
    let mut amount = String::new();
    io::stdin().read_line(&mut amount); // ввод количества чисел
    let amount: i32 = amount.trim().parse().expect("Invalid input");
    for _i in 1..=amount {
        let mut number = String::new();
        io::stdin().read_line(&mut number); // ввод чисел
        let mut number: i32 = number.trim().parse().expect("Invalid input");
        let mut count = 0;
        while number != 0 {
            if (number % 10) % 2 == 0 { // проверка на чётность каждой цифры
                count += 1; // подсчёт количества
            }
            number = number / 10;
        }
        print!("{} ", count);
    }
}
