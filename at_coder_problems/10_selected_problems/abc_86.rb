a, b = gets.split.map(&:to_i)

def even_or_odd(a, b)
  if (a*b).even?
    puts "Even"
  else
    puts "Odd"
  end
end

puts even_or_odd(a, b)