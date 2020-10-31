x = rand(1..100)

1.upto(10) do |number|

  puts 'Какое число от 1 до 100 загадал компьютер?'
  puts "Попробуй угадай!) Попытка #{number}. Осталось #{10 - number + 1} попыток."

  print 'Введите число: '
  a = gets.chomp.to_f

  if x == a
    puts 'Угадал, молодец!'
    exit
  elsif x > a
    puts 'Нет, больше'
  elsif x < a
    puts 'Нет, меньше'
  end

puts

end