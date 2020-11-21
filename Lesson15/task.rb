class Country
  attr_reader :name, :airports

  def initialize(name)
    @name = name
    @airports = []
  end

  def add_airport airport
    @airports << airport
  end
end

class Airport
  attr_reader :name, :planes

  def initialize(name)
    @name = name
    @planes = []
  end

  def add_plane plane
    @planes << plane
  end
end

class Plane
  attr_reader :model

  def initialize(model)
    @model = model
  end
end

#Создаем массив стран
countries = []

#Создаем страны
russia = Country.new 'Russia'
england = Country.new 'England'

#Добавляем в массив стран
countries << russia
countries << england

#Создание аэропортов
#airports = []

airport1 = Airport.new 'SVO'
airport2 = Airport.new 'LON'

#Добавими аэропорты в страну
russia.add_airport airport1
england.add_airport airport2

#Добавление аэропорты в массив
#airports << airport1
#airports << airport2

#Создание самолетов для 1 аэропорта
plane1 = Plane.new 'Boeing-777'
plane2 = Plane.new 'A-320'
plane3 = Plane.new 'Il-76'

#Добавлем самолеты в 1 аэропорт
airport1.add_plane plane1
airport1.add_plane plane2
airport1.add_plane plane3

#Создание самолетов для 2 аэропорта
plane4 = Plane.new 'Cirrus-SR22'
plane5 = Plane.new 'Learjet-23'
plane6 = Plane.new 'Douglas-3'

#Добавлем самолеты в 2 аэропорт
airport2.add_plane plane4
airport2.add_plane plane5
airport2.add_plane plane6

countries.each do |country|
  #show country name
  puts "Airports From #{country.name}:"
  country.airports.each do |airport|
    puts "-Airport #{airport.name}"

    puts "--Planes in this airport:"
    airport.planes.each do |plane|
      puts "--#{plane.model}"
    end
  end
  puts '=============================='
end