#класс записной книжки
class Book

  attr_reader :last_person

  def initialize
    @hh = {}
    @last_person = ''
  end

  def add_persen options
    @last_person = options[:name]
    #добавляет пару в хеш
    puts 'Already exists' if @hh[options[:name]]
    @hh[options[:name]] = options[:age]
  end

  def show_all
    #показывает хеш
    @hh.each do |name, age|
      puts "#{name} is #{age} years old"
    end
  end

  #просмотр, что находится в хеше
  def show_hash
    return @hh
  end

end

b = Book.new

b.add_persen :name => 'Mike', :age => 34
b.add_persen :name => 'Alex', :age => 30
b.add_persen :name => 'Veronika', :age => 25

b.show_all

puts "Last person: #{b.last_person}"
puts b.show_hash