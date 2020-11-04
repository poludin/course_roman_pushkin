arr = %w[mike veronika alex sasha vika 21]

x = 0

arr.each do |name|
  puts "#{x} #{name}"
  x += 1
end