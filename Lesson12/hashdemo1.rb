dict = {
  'Dog' => ['Собака', 'Пес', 'Бобик'],
  'Cat' => ['Кошка', 'Кот', 'Котенок', 'Котэ'],
  'Girl' => ['Девушка', 'Девочка']
}

dict.each_key do |key|
  puts "Ключ: #{key}"
end

x = 0

dict.each_value { |value| x += value.size }

puts "Всего переводов: #{x}"