N = gets.to_i #ввод переменной int
(0..N).reverse_each do |i| #перебор i от N до 0
  ('A'.ord + i).upto('Z'.ord - (26 - N)).reverse_each do |letter| #перебор алфавита
    print (letter.chr + " ") #chr - преобразование числового кода в символ
  end
  puts
end