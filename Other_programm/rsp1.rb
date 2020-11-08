print "(R)ock, (S)cissors, (P)aper? "
s = gets.strip.capitalize

if s == "R"
  user_choice = :rock
elsif s == "S"
  user_choice = :scissors
elsif s == "P"
  user_choice = :paper
else
  puts "Can't understand what you want, sorry..."
  exit
end

# Выбор компьютера

arr = [:rock, :scissors, :paper]

computer_choice = arr[rand(0..2)]

# На этом этапе пользователь и компьютер уже определились с выбором.
# Вывод выбранных комбинаций пользователя и компьютера

puts "User choice: #{user_choice}"
puts "Computer choice: #{computer_choice}"

# определяем матрицу комбинаций:
# каждый элемент в массиве matrix будет ещё одним массивом,
# в котором будут данные в следующем формате:
#
# 1-ый выбор | 2-ой выбор | результат

matrix = [

  # Ничья

  [:rock,   :rock,    :draw],
  [:scissors, :scissors,  :draw],
  [:paper,  :paper,   :draw],

  # Комбинации для "камень"

  [:rock,   :scissors,  :first_win],
  [:rock,   :paper,   :second_win],

  # Комбинации для "ножницы"

  [:scissors, :rock,    :second_win],
  [:scissors, :paper,   :first_win],

  # Комбинации для "paper"

  [:paper,  :rock,    :first_win],
  [:paper,  :scissors,  :second_win]
]

# для каждого элемента в массиве matrix

matrix.each do |item|

  # Проверим, совпадает ли текущая комбинация массива с нашим выбором

  if item[0] == user_choice && item[1] == computer_choice

    # Совпадает.
    # Теперь определяем кто выиграл, первый или второй

    if item[2] == :first_win
      puts "User wins!"
    elsif item[2] == :second_win
      puts "Computer wins!"
    elsif item[2] == :draw
      puts "Nobody wins!"
    end

    # Выход из программы

    exit

  end

end