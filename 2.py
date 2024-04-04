sentence = input() # ввод строки
k = 0
for letter in range(ord('a'), ord('z') + 1): # перебор букв алфавита
    if chr(letter) in sentence: # поиск букв в строке
        k += 1 # счётчик встречающихся букв
if k == 26:
    print("true")
else:
    print("false")