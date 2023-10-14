N = gets.to_i
values = gets.chomp.split.map(&:to_i)

result = values.uniq.length == 1

puts result ? "Yes" : "No"
