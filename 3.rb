amount = gets.to_i #ввод количества чисел
for i in (1..amount) 
    number = gets.to_i #ввод чисел
    count = 0
    while number != 0 
        if (number % 10) % 2 == 0 #проверка на чётность цифр
            count += 1 #подсчёт количества
        end
        number /= 10
    end
    print("Result: ", count, "\n")
end