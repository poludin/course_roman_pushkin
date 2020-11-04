arr = %w[mike veronika alex sasha vika]

loop do

  x = 1

  arr.each do |name|
    puts "#{x} #{name}"
    x += 1
  end

  puts "Кого удалить(порядковый номер): "
  n = gets.to_i

  arr.delete_at n - 1

end