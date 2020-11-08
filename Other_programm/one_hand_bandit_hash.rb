# onehand bandit with hash

win_variant = {
  '111' => 100,
  '222' => 200,
  '333' => 300,
  '444' => 400,
  '555' => 5555,
  '666' => 600,
  '777' => 7000,
  '888' => 800,
  '999' => 900,
}

money = 100

while true

  puts 'Press ENTER for game("Stop" exit game)...'
  word = gets.strip.capitalize

  if word == "Stop"
    puts "Your balance is #{money}$"
    exit
  end

  random = rand(100...999).to_s

  if win_variant[random]
    puts "Win #{win_variant[random]} dollars."
    money += win_variant[random]
  else
    puts "You lost 10 dallars."
    money -= 10
      if money <= 0
        puts 'You money lost! End game!'
        exit
      end
  end

  puts "Combination: #{random}"
  puts "Your balance is #{money}$"
  puts '===================================='

end