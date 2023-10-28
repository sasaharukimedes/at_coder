x, y = gets.split.map(&:to_i)

if x < y
  if (y - x) >= 3
    puts "No"
  else
    puts "Yes"
  end
else
  if (x - y) >= 4
    puts "No"
  else
    puts "Yes"
  end
end
