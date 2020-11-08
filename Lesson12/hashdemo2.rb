dict = {
  'Dog' => 'Пес',
  'Cat' => 'Кошка',
  'Girl' => 'Девушка'
}

#Проверка, есть ли ключ в Хэше
if dict.has_key? 'Cat'
  puts 'В словаре есть Кот и это КЛЮЧ (key) в Хэше!'
end

#Проверка, есть ли ключ в Хэше
if dict['Cat']
  puts 'Есть кошка!'
end

#Проверка, есть ли значение в Хэше
if dict.has_value? 'Пес'
  puts 'В словаре есть Пес и это ЗНАЧЕНИЕ (value) в Хэше!'
end