N = int(input())  # число N
for i in range(N, -1, -1):
    for letter in range(ord('Z') - (26 - N), ord('A') + i - 1, -1): #ord - номер символа по Unicode
        print(chr(letter), end=' ') # chr - символ по его номеру
    print()