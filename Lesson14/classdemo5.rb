#Самолет
class Airplane
  attr_reader :model    #модель
  attr_reader :altitude #высота
  attr_accessor :speed    #скорость

  def initialize(model)
    @model = model
    @speed = 0
    @altitude = 0
  end

  def fly
    @speed = 800
    @altitude = 10000
  end

  def land
    @speed = 0
    @altitude = 0
  end

  def moving?
    return @altitude > 0
  end

end

models = ['Airbus-320', 'Boeing-777', 'Il-86']
planes = []

10.times do
  model = models[rand(0..2)]
  plane = Airplane.new(model)

  if rand(0..1) == 1
    plane.fly
    plane.speed = rand(500..800)
  else
    plane.speed = 0
  end

  planes << plane
end

planes.each do |plane|
  puts "Model: #{plane.model}, Speed: #{plane.speed}, Alt: #{plane.altitude}"
  puts "Is moving: #{plane.moving?}"
  puts '===================================================================='
end