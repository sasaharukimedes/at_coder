# frozen_string_literal: true

# n = gets.to_i

# lines = Array.new(n)
# n.times do |i|
#   lines[i] = gets.chomp
# end

# sorted_lines = lines.sort_by { |line| line.count('o') }.reverse

# sorted_lines.each do |line|
#   puts line
# end

n = gets.to_i

data = []

n.times do |i|
  row = gets.chomp
  o_count = row.count('o')
  data << [o_count, i + 1, row]
end

data.sort! { |a, b| [b[0], a[1]] <=> [a[0], b[1]] }

# 結果を出力
data.each_with_index do |item, _index|
  print "#{item[0 + 1]} "
end
print "\n"

# n = gets.to_i

# data = []

# n.times do |i|
#   row = gets.chomp
#   o_count = row.count('o')
#   data << [o_count, i + 1, row]
# end

# data.sort! { |a, b| [b[0], a[1]] <=> [a[0], b[1]] }

# # 結果を出力
# data.each_with_index do |item, index|
#   puts "#{item[0+1]}".join("")
# end
