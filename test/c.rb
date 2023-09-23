# 公式回答

ans = []

(2...(1 << 10)).each do |i|
  x = 0
  (9).downto(0) do |j|
    if (i & (1 << j)) != 0
      x *= 10
      x += j
    end
  end
  ans.push(x)
end

ans.sort!

k = gets.chomp.to_i
puts ans[k - 1]
