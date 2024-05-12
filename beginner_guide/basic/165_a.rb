# frozen_string_literal: true

k = gets.to_i
a, b = gets.split.map(&:to_i)

for i in a..b
  if i % k == 0
    puts 'OK'
    exit
  end
end
puts 'NG'
