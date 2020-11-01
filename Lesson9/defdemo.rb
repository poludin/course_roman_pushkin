def get_password
  print 'Введите пароль: '
  gets.chomp  #возвращает последнее выражение
end

xx = get_password

puts "Был введен пароль: #{xx}"