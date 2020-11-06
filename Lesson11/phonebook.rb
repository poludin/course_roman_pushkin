phonebook = {}

loop do
  print 'Enter name (if push Enter - stop): '
  name = gets.strip.capitalize

  if name == ""
    break
  end

  print 'Enter phone number: '
  phone_number = gets.strip

  phonebook[name] = phone_number

end

puts '====== Phonebook ======'

phonebook.each do |key, value|
  puts "Name: #{key}, Phone: #{value}"
end

puts '======================='