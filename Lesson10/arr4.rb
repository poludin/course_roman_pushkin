arr = []
x = 0

loop do

  arr2 = []

  print "Enter name to add: "
  name = gets.strip.capitalize

  if name == ""
    break
  end

  print "Enter age: "
  age = gets.strip

  if age == ""
    break
  end

  arr2 << name
  arr2 << age
  arr << arr2

end


arr.each do |item|
  x += 1
  puts "#{x}. #{item[0]} - #{item[1]} age "
end