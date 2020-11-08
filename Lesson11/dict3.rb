dict = {
  'Dog' => ['Собака', 'Пес', 'Бобик'],
  'Cat' => ['Кошка', 'Кот', 'Котенок', 'Котэ'],
  'Girl' => ['Девушка', 'Девочка']
}

loop do

  print 'Введите слово для перевода (Enter для выхода): '
  word = gets.strip.capitalize

  if word == ""
    break
  end

  arr = dict[word]
  puts 'Переводы слова: '
  puts arr

  puts "Количество переводов #{arr.size}"
  puts '================================================'

end