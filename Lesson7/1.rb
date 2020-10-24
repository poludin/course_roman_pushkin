puts "Вы довольны своей зарплатой? (Да/Нет)"
answer = gets.strip.capitalize

if answer == "Да"
  puts "Очень хорошо"
elsif answer == "Нет"
  puts "Очень плохо"
else
  puts "Не ввели - Да/Нет"
end