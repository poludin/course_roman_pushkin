arr = []

while 2 + 2 == 4

  print 'Введите Ваши любимые цвета (или Stop для выхода): '
  color = gets.strip.capitalize

  if color == "Stop"
    puts arr.uniq.reverse
    exit
  end

  arr << color

end