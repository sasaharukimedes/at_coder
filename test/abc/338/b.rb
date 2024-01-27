s = gets.chomp

frequency = Hash.new(0)
s.each_char { |char| frequency[char] += 1 }

max_frequency = frequency.values.max
most_frequent_chars = frequency.select { |_, v| v == max_frequency }.keys

puts most_frequent_chars.sort.first
