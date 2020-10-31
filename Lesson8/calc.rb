print 'Введите А: '
a = gets.chomp.to_f

print 'Введите B: '
b = gets.chomp.to_f

print 'Что будем делать? (+ - * /) '
op = gets.strip

result = 0

if op == '/' && b == 0
  puts 'На ноль делить нельзя!'
  exit
elsif op == '+'
  result = a + b
elsif op == '-'
  result = a - b
elsif op == '*'
  result = a * b
else op == '/'
  result = a / b
end

puts "Результат: #{result}"