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

  @index = 0
  word_translate = dict[word]

  word_translate.each do |index|
    @index += 1
  end

  puts "Количество переводов: #{@index}"

  puts 'Переводы: '

  word_translate.each do |name|
    puts "#{name}"
  end

  puts '==============================================='

end