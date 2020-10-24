print 'Сколько раз будем играть? '
n = gets.to_i

print 'Введите Ваше любимое число: '
f = gets.to_i

1.upto(n) do |nn|
  x = rand(1..50)

  print "Играем #{nn} раз" + ' - '

  if x == f
    puts 'Вы выиграли!!!'
  else
    puts 'Вы проиграли'
  end
end