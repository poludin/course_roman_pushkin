print 'Сколько Вам лет? '
age = gets.to_i

print 'Хотите играть? (Y/N) '
answer = gets.strip.capitalize

if answer == "Y" && age > 17

  puts 'Хорошо, поиграем! '
  puts 'Если хотите перестать играть, введите: Stop '

  money = 100

  add_money_proc = lambda { |sum, money|
    puts "Вам зачислено #{sum} долларов"
    money + sum
  }

    sub_money_proc = lambda { |sum, money|
    puts "Вы потеряли #{sum} долларов"
    money - sum
  }

  actions =
  {
    "000" => lambda { |money|
      puts 'Ваш баланс обнулен!'
      0
    },
    "111" => [100, add_money_proc],
    "222" => [200, add_money_proc],
    "333" => [300, add_money_proc],
    "444" => [400, add_money_proc],
    "555" => [500, add_money_proc],
    "666" => lambda { |money|
      puts 'Вы потеряли половину суммы!'
      money / 2
    },
    "777" => [70, sub_money_proc],
    "888" => [80, sub_money_proc],
    "999" => [90, sub_money_proc],
    "123" => [123, sub_money_proc],
  }

  1000.times do

    puts 'Введите Enter, чтобы дернуть ручку'
    gets

    num = rand(0..9).to_s + rand(0..9).to_s + rand(0..9).to_s

    10.times do |xx|

      x = rand(0..9)
      y = rand(0..9)
      z = rand(0..9)

      if xx < 10
        print "#{x}#{y}#{z}"
        print "\r"
        sleep 0.2
        print "#{num}"
        print "\r"
      end
    end

    puts "Выпало #{num}"

    if actions.has_key?(num)
      if actions[num].is_a?(Array)
        money = actions[num][1].call(actions[num][0], money)
      elsif actions[num].is_a?(Proc)
        money = actions[num].call(money)
      end
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

    puts "Осталось денег: #{money} долларов"

    if money == 0
      puts 'У вас не осталось денег'
      break
    elsif money < 0
      puts 'Вы задолжали денег и остались работать уборщиком на кухне, пока не закроете долг'
    end

    #Если надоело играть и вы захотетите забрать деньги, напишите "Stop" и игра закончится
    stop = gets.strip.capitalize

    if stop == 'Stop'
      puts 'Конец игре'
      puts "У Вас осталось #{money} денег"
      sleep 1
      exit
    end
  end

else
  puts 'Рано еще играть!'
  sleep 1
  exit
end