print 'Введите количество повторений: '
x = gets.chomp.to_i

x.times { |i| puts "i = #{i}: Четное? -  #{i.even?}" }