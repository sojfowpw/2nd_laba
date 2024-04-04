use std::io;

fn main() {
    let mut sentence = String::new();
    io::stdin().read_line(&mut sentence); // ввод строки
    let mut k = 0;
    for letter in ('a' as u8..='z' as u8) { // перебор алфавита
        if sentence.contains(letter as char) { // поиск букв в строке
            k += 1; // подсчёт количества
        }
    }
    print!("{}", if k == 26 {"true"} else {"false"});
}