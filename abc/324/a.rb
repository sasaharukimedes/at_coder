# frozen_string_literal: true

N = gets.to_i
values = gets.chomp.split.map(&:to_i)

result = values.uniq.length == 1

puts result ? 'Yes' : 'No'

# 公式回答

n = gets.to_i

a = []
n.times { a << gets.to_i }

result = a.uniq.length == 1

if result
  puts 'Yes'
else
  puts 'No'
end
