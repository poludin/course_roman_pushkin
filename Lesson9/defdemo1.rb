@a = 1

def print_greeting name
  @a = 2
  puts "Hello, #{name}"
end

print_greeting "Alex"

puts "Переменная a = #{@a}"