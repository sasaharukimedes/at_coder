# frozen_string_literal: true

s = gets.chomp.chars.map(&:to_i)
p s
count = 0
s.each do |num|
  count += 1 if num == 1
end
puts count
