k = gets.to_i
a, b = gets.split.map(&:to_i)

largest = (b / k) * k
if a <= largest
  puts "OK"
else
  puts "NG"
end
