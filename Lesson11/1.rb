print 'Введите число а: '
a = gets.strip.to_f

print 'Введите число b: '
b = gets.strip.to_f

puts "Исходные числа: #{a} и #{b}"

a, b = b, a
puts "Помняли местами и получилось: #{a} и #{b}"