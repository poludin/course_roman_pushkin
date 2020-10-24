print 'Сколько лет будем копить: '
y = gets.to_i

print 'Какую сумму будем откладывать в месяц: '
x = gets.to_f

s = 0

1.upto(y) do |yy|
  1.upto(12) do |mm|
    s = s + x
    puts "Год #{yy}, месяц #{mm}, отложено: #{s}."
  end
end