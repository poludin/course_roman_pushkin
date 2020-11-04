def get_command
  actions = [:left, :right, :up, :down]

  x = rand(0..3)

  return actions[x]
end

command = get_command

puts "Got command: #{command}"

puts "Robot goes #{command}"