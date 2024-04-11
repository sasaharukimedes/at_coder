# frozen_string_literal: true

n = gets.to_i
cnt = Array.new(24, 0)
n.times do
  w, x = gets.split.map(&:to_i)
  cnt[x] += w
end

ans = 0
24.times do |i|
  sum = 0
  9.times do |j|
    sum += cnt[(i + j) % 24]
  end
  ans = [ans, sum].max
end

puts ans
