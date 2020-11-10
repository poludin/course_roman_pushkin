def print_details details
  #защита от неустановленного параметра
  puts details[:name] if details[:name]
  puts details[:age] if details[:age]
  puts details[:adress] if details[:adress]
end

hh = { :name => 'Mike', :age => 30, :adress => '123 West Street' }

print_details hh