print 'Сколько пришло гостей? 1 или 2? '
x = gets.to_i

if x < 0
  puts 'Error'
  exit
elsif x == 0
  puts 'Гостей не будет'
elsif x == 1
  puts 'Пришел один гость'
elsif x == 2
  puts 'Пришли двое гостей'
else x > 2
  puts 'Будет много гостей'
end