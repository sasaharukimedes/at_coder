
#公式回答
#いまいちわからなかった。。。

N = gets.to_i
X = gets.split.map(&:to_i).sort

ans = Float::INFINITY
(1..100).each do |p|
  tot = 0
  X.each { |x| tot += (x - p) ** 2 }
  ans = [ans, tot].min
end

puts ans

------------------------------------------------------------

N = gets.to_i
X = gets.split.map(&:to_i)

sum = X.sum
avg = (sum.to_f / N).round

ans1 = X.map { |x| (x - avg) ** 2 }.sum
ans2 = X.map { |x| (x - (avg + 1)) ** 2 }.sum

puts [ans1, ans2].min
