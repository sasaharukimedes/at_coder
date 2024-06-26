# frozen_string_literal: true

gets.to_i

s = gets.to_s

index = s.index('ABC')

if index
  puts(index + 1)
else
  puts(-1)
end

# 公式回答
N = gets.to_i
S = gets.chomp
ans = -1
(0..(N - 3)).each do |i|
  if S[i] == 'A' && S[i + 1] == 'B' && S[i + 2] == 'C'
    ans = i + 1
    break
  end
end
puts ans
