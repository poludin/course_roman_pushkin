arr = %w[mike veronika alex sasha vika]

arr.each_with_index do |name, i|
  puts "#{i + 1} - #{name}"
end