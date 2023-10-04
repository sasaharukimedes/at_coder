n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

a.sort!

(1..n).each do |i|
  j = a.bsearch_index { |x| x >= i }
  if j.nil?
    puts -1
  else
    puts a[j] - i
  end
end

#Ruby回答者の解答例
N, M = gets.split.collect(&:to_i)
A = gets.split.collect(&:to_i)
pairs = A.each_cons(2).to_a  # => [[1, 3], [3, 4], [4, 7], [7, 8]]
if A.first != 1
  pairs = [[0, A.first]] + pairs
end
c = 0
(1..N).each do |i|
  unless pairs[c]
    break
  end
  b, e = pairs[c]
  if i == b
    p 0
    next
  end
  if i < e
    p e - i
    next
  end
  c += 1
  redo
end
p 0

#コレでもいいというのだから驚き
N, M = gets.split.collect(&:to_i)
A = gets.split.collect(&:to_i)
puts (1..N).collect { |i| A.bsearch { |e| e >= i } - i }


# 公式回答

# 二分探索

# n, m = gets.split.map(&:to_i)
# a = gets.split.map(&:to_i).map{|x| x - 1}
# b = Array.new(n + 1, 0)

# m.times do |i|
#   b[a[i] + 1] += 1
# end

# for i in 1..n
#   b[i] += b[i - 1]
# end

# n.times do |i|
#   ok = n
#   ng = i - 1
#   while (ok - ng).abs > 1
#     mid = (ok + ng) / 2
#     if b[mid + 1] - b[i] >= 1
#       ok = mid
#     else
#       ng = mid
#     end
#   end
#   puts ok - i
# end



#lower_bound解

# n, m = gets.split.map(&:to_i)
# a = gets.split.map(&:to_i).map{|x| x - 1}

# n.times do |i|
#   x = a.bsearch{|y| y >= i} || n
#   puts x - i
# end



#O（N）解

# n, m = gets.split.map(&:to_i)
# a = gets.split.map(&:to_i).map{|x| x - 1}

# b = Array.new(n, 0)
# m.times do |i|
#   b[a[i]] = 1
# end

# ans = Array.new(n, 0)
# (n-1).downto(0) do |i|
#   if b[i] == 1
#     ans[i] = 0
#   else
#     ans[i] = ans[i+1] + 1
#   end
# end

# n.times do |i|
#   puts ans[i]
# end
