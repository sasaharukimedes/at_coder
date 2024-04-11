# frozen_string_literal: true

s = gets.chomp

frequency = Hash.new(0)
s.each_char { |char| frequency[char] += 1 }

max_frequency = frequency.values.max
most_frequent_chars = frequency.select { |_, v| v == max_frequency }.keys

puts most_frequent_chars.min

# officails answer

S = gets.chomp
a = Hash.new(0)
S.each_char { |c| a[c] += 1 }
ans = 'a'
('b'..'z').each do |c|
  ans = c if a[c] > a[ans]
end
puts ans
