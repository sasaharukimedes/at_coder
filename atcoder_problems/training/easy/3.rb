# frozen_string_literal: true

# そもそも問題文の言いたいことがさっぱり分からなかった。。。

n, a, b = gets.split.map(&:to_i)
s = gets.chomp

na = 0
nb = 0

(0...n).each do |i|
  yosen = 'No'
  if s[i] == 'a'
    if na + nb < a + b
      na += 1
      yosen = 'Yes'
    end
  elsif s[i] == 'b'
    if na + nb < a + b && nb < b
      nb += 1
      yosen = 'Yes'
    end
  end
  puts yosen
end
