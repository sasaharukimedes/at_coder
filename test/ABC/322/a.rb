n = gets.to_i

s =  gets.to_s

index = s.index("ABC")

if index
  puts "#{index + 1}"
else
  puts -1
end
