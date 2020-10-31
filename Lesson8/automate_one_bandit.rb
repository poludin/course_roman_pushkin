print 'Сколько Вам лет? '
age = gets.to_i

print 'Хотите играть? (Y/N) '
answer = gets.strip.capitalize

#Проверка на возраст и хочешь ли играть
if age >= 18 && answer == 'Y'
  puts 'Хорошо, поиграем!'

  puts 'Если хотите перестать играть, введите: Stop '

  money = 100

  puts "Я смотрю у тебя #{money}$ и тебе хочется их потратить!"

  #Сколько раз можно сыграть
  1000.times do

    puts 'Введите Enter, чтобы дернуть ручку'
    gets

    x = rand(0..9)
    y = rand(0..9)
    z = rand(0..9)

    #счетчик значений "x, y, z"
    10.times do |xx|

      meter = rand(0..9)
      meter1 = rand(0..9)
      meter2 = rand(0..9)
      if xx < 10
        print "#{meter}  #{meter1}  #{meter2}"
        print "\r"
        sleep 0.1
        print "#{x}  #{y}  #{z}"
        print "\r"
      else
      end
    end

    puts

    #счетчик значений "x"
    #10.times do |xx|

      #meter = rand(0..9)
       #if xx < 10
        #print meter
        #print "\r"
        #sleep 0.08
      #else print x
      #end
    #end

    #puts

    #счетчик значений "y"
    #10.times do |yy|

      #meter = rand(0..9)
       #if yy < 10
        #print meter
        #print "\r"
        #sleep 0.08
      #else print y
      #end
    #end

    #puts

    #счетчик значений "z"
    #10.times do |zz|

      #meter = rand(0..9)
      #if zz < 10
        #print meter
        #print "\r"
        #sleep 0.08
      #else print z
      #end
    #end

    #puts

    puts "Выпало: #{x}#{y}#{z}"

    #В случае совпадаения чисел начисляются очки
    if x == y && x == z && x > 0 && x != 5 && x != 7 && x != 9
      puts "\nПолное совпадение! Вам зачислено #{x * 10}$"
      money = money + x * 10

    #В случае комбинаии 555 очки умножаются в 5 раз
    elsif x == y && x == z && x == 5 && money > 0
      puts "\nБИИИИИНГООО!!! Ваш счет удвоился!"
      money *= 2

    #В случае комбинаии 777 очки умножаются в 5 раз
    elsif x == y && x == z && x == 7 && money > 0
      puts "\nБИИИИИНГООО!!! Ваш счет удвоился!"
      money *= 2

    #В случае комбинаии 999 очки умножаются в 5 раз
    elsif x == y && x == z && x == 9 && money > 0
      puts "\nБИИИИИНГООО!!! Ваш счет удвоился!"
      money *= 2

    #В случае комбинаии 000 очки обнуляются
    elsif x == 0 && y == 0 && z == 0 && money >= 0
      puts "\nУвы, Ваш счет обнулился!"
      money = 0

    #В случае совпадения двух парных чисел + 5 очков
    elsif x == y || x == z || y == z
      puts "\nПарное совпадение! Вам зачислен 1 $."
      money += 1


    #В случае отсутствия совпадений снимается 5 очков
    #Выводится один случайный комментарий
    else money -= 5
      comment = rand(1..3)
      if comment == 1
        puts "\nПовезет в следующий раз! Списываю 5$."
      elsif comment == 2
        puts "\nНе расстраивайся! 5$ не так и много."
      else comment == 3
        puts "\nМинус 5$. Эти деньги пойдут на благотворительность!"
      end
    end

    puts "Теперь у Вас #{money}$"

    #При нулевом счете игра заканчивется
    if money <= 0
      puts 'Конец игре'
      puts "У Вас осталось #{money} денег"
      sleep 3
      exit
    end

    #Если надоело играть и вы захотетите забрать деньги, напишите "Stop" и игра закончится
    stop = gets.strip.capitalize

    if stop == 'Stop'
      puts 'Конец игре'
      puts "У Вас осталось #{money} денег"
      sleep 3
      exit
    end
  end

else
  puts 'Рано еще играть!'
  sleep 3
  exit
end