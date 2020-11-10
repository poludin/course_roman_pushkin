def show_book book
  #Выводит на экран записную книгу
  puts '=============================================<br>'

  book.keys.each do |key|
    age = book[key]
    puts "<i>Name</i>: <b>#{key}</b>, <i>age</i>: <b>#{age}</b> <br>"
  end

  puts '=============================================<br>'
end

book1 = { 'Mike' => 65, 'Gus' => 50, 'Lidia' => 42 }
#show_book book1

book2 = { 'Walt' => 45, 'Jessie' => 25 }
#show_book book2

#book = book1.merge book2
#show_book book

book1.merge! book2

puts '<body>'

show_book book1