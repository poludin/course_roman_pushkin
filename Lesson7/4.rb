print 'Сколько Вам лет? '
age = gets.to_i

print 'Хотите играть? (Y/N) '
answer = gets.strip.capitalize

if age >= 18 && answer == 'Y'
  puts 'Хорошо, поиграем'

  puts 'Если хотите перестать играть, введите: Stop '

  money = 100

  1000.times do

    puts 'Введите Enter чтобы дернуть ручку'
    gets

    x = rand(0..9)
    y = rand(0..9)
    z = rand(0..9)

    if x == 0 && y == 0 && z == 0
      puts 'Ваш баланс обнулен!'
      money = 0
    end

    if x == 1 && y == 1 && z == 1
      puts 'Вам зачисленно 10 долларов'
      money += 10
    end

    if x == 2 && y == 2 && z == 2
      puts 'Вам зачисленно 20 долларов'
      money += 20
    end

    if x == 3 && y == 3 && z == 3
      puts 'Вам зачисленно 30 долларов'
      money += 30
    end

    if x == 4 && y == 4 && z == 4
      puts 'Вам зачисленно 40 долларов'
      money += 40
    end

    if x == 5 && y == 5 && z == 5
      puts 'Вам зачисленно 50 долларов'
      money += 50
    end

    if x == 6 && y == 6 && z == 6
      puts 'Вам зачисленно 60 долларов'
      money -= 60
    end

    if x == 7 && y == 7 && z == 7
      puts 'Вам зачисленно 70 долларов'
      money += 70
    end

    if x == 8 && y == 8 && z == 8
      puts 'Вам зачисленно 80 долларов'
      money += 80
    end

    if x == 9 && y == 9 && z == 9
      puts 'Вам зачисленно 90 долларов'
      money -= 90
    end

    if x == 1 && y == 2  && z == 3
      puts 'Вам зачисленно 123 долларов'
      money +=  123
    end

    puts "Выпало: #{x}#{y}#{z}"
    money -= 5
    puts "Осталось денег: #{money} долларов"

    if money == 0
      puts 'Конец игре'
      exit
    end

    stop = gets.strip.capitalize

    if stop == 'Stop'
      puts 'Конец игре'
      exit
    end
  end

else
  puts 'Рано еще играть!'
end