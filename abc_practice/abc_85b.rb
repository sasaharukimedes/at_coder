N = gets.to_i
d = gets.split.map(&:to_i)

num = Array.new(110, 0)  # バケット

N.times do |i|
  num[d[i]] += 1  # d[i]が1個増える
end

res = 0  # 答えを格納

(1..100).each do |i|  # 1 <= d[i] <= 100なので1から100まで探索
  res += 1 if num[i] > 0  # 0より大きかったら
end

puts res