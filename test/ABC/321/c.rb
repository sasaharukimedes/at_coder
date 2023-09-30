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

#ユーザー解説
# k = gets.chomp.to_i - 1
# ans = Array.new(9) { |i| (i + 1).to_s } # 最初は"1", "2", ..., "9"
# k.times do |i|
#   ('0'..ans[i][-1]).each do |v|
#     ans.push(ans[i] + v)
#   end
# end
# puts ans[k] # ansは昇順に値が入っている
