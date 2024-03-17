s = gets.chomp
n = s.size
counts = Array.new(26, 0)
same = false

s.each_char do |c|
  counts[c.ord - 'a'.ord] += 1
end

ans = n * n
counts.each do |count|
  ans -= count * count
  same = true if count > 1
end

ans /= 2
ans += 1 if same

puts ans
---

s = gets.chomp
n = s.size
ans = 0
counts = Hash.new(0)

s.each_char.with_index do |c, j|
  ans += j - counts[c]
  counts[c] += 1
end

ans += 1 if counts.values.max > 1

puts ans

---

require 'set'

s = gets.chomp
n = s.size
counts = Hash.new(0)

s.each_char { |c| counts[c] += 1 }

ans = n * n - counts.values.map { |x| x * x }.sum
ans /= 2
ans += 1 if counts.values.max > 1

puts ans
