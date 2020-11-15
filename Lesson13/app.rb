@hh = {}

def add_persen options
  #добавляет пару в хеш
  puts 'Already exists' if @hh[options[:name]]
  @hh[options[:name]] = options[:age]
end

def show_hash
  #показывает хеш
  @hh.keys.each do |key|
    age = @hh[key]
    puts "Name - #{key}, age - #{age}"
  end
end

loop do
  #добавляет в хеш пока не введена пустая строка
  print 'Enter name: '
  @name = gets.strip.capitalize

  if @name == ''
    show_hash
    exit
  end

  print 'Enter age: '
  @age = gets.strip.to_i

  #options = { :name => @name, :age => @age }

  add_persen :name => @name, :age => @age

end