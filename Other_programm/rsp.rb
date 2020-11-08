while true

  puts "=============================="
  print "(R)ock, (S)cissors, (P)aper? "
  s = gets.strip.capitalize

  if s == "R"
    @user_choice = :rock
  elsif s == "S"
    @user_choice = :scissors
  elsif s == "P"
    @user_choice = :paper
  else
    puts "Can't understand what you want, sorry..."
    exit
  end

  arr = [:rock, :scissors, :paper]
  @computer_choice = arr[rand(0..2)]

  #report variants
  def your_win
    puts "You win! Your choice is #{@user_choice} and computer choice is #{@computer_choice}."
  end

  def computer_win
    puts "Computer win! Your choice is #{@user_choice} and computer choice is #{@computer_choice}."
  end

  #game variants
  if @computer_choice == @user_choice
    puts "Nobody wins. Your choice is #{@user_choice} and computer choice is #{@computer_choice}."
  #user win
  elsif @user_choice == :rock && @computer_choice == :scissors
    your_win
  elsif @user_choice == :scissors && @computer_choice == :paper
    your_win
  elsif @user_choice == :paper && @computer_choice == :rock
    your_win
  #computer win
  else
    computer_win
  end

end