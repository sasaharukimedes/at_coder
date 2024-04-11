# frozen_string_literal: true

s = gets.to_s

n = s[1..15]

if n.chars.each_with_index.all? { |char, index| index.even? ? char == '0' : true }
  puts 'Yes'
else
  puts 'No'
end
