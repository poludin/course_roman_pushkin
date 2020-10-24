arr = %w(c r a s h  b a n d i c o o t)
dash = "-"

arr.size.times do |i|
  print arr[i]
  sleep 0.6
  print dash
  sleep 0.6
end

puts