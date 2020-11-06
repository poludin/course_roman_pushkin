dict = { 'Dog' => 'Собака', 'Cat' => 'Кошка', 'Girl' => 'Девушка' }

loop do

  print 'Введите слово для перевода (Enter для выхода): '
  word = gets.strip.capitalize

  if word == ""
    break
  end

  word_transl = dict[word]
  puts "Перевод слова: #{word_transl}"


end