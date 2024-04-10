a, b =gets.split.map(&:to_i)

c= a * b

if c.even?
  puts "Even"
else
  puts "Odd"
end
