sentence = gets.chomp # ввод строки
k = 0 
('a'..'z').each do |letter| # перебор алфавита
    if sentence.index(letter) # поиск букв в строке
        k += 1 # подсчёт количества
    end
end
puts k == 26 ? "true" : "false"