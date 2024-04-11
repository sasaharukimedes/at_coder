# frozen_string_literal: true

x, y = gets.split.map(&:to_i)

if x < y
  if (y - x) >= 3
    puts 'No'
  else
    puts 'Yes'
  end
elsif (x - y) >= 4
  puts 'No'
else
  puts 'Yes'
end
