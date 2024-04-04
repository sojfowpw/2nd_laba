amount = int(input()) #ввод количества чисел
for i in range(0, amount):
    number = int(input()) #ввод чисел
    count = 0
    while number != 0:
        if (number % 10) % 2 == 0: #проверка на чётность каждой цифры
            count += 1 #подсчёт количества
        number //= 10
    print("Result: ", count)