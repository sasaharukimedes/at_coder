# frozen_string_literal: true

# n = gets.to_f

# puts (n / 1.08).round

# if n % 0.01 == 0
#   puts (n / 1.08).round
# else
#   puts ":("
# end

# 公式回答
# いまいち例外に関して理解できなかった。なぜ1079はだめなのか

N = gets.to_i

(1..N).each do |number|
  x = number.to_f
  x = (x * 1.08).to_i
  if x == N
    puts number
    return
  end
end

puts ':('
