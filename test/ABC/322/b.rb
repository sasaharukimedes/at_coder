# 自分回答
#おそらくstart_withのところで引数は取れない

# n, m = gets.split.map(&:to_i)
# s = gets.chomp
# t = gets.chomp

# prefix = s.start_with?(t)
# suffix =s.end_with?(t)

# if prefix && suffix
#   puts 0
# elsif prefix
#   puts 1
# elsif suffix
#   puts 2
# else
#   puts 3
# end

n, m = gets.split.map(&:to_i)
s = gets.chomp
t = gets.chomp

prefix = (s == t[0, s.length])

suffix = (s == t[-s.length, s.length])

# 結果を出力
if prefix && suffix
  puts 0
elsif prefix
  puts 1
elsif suffix
  puts 2
else
  puts 3
end

# 公式回答
# N, M = gets.split.map(&:to_i)
# S, T = gets.chomp, gets.chomp

# is_prefix = true
# N.times do |i|
#   is_prefix = false if S[i] != T[i]
# end

# is_suffix = true
# N.times do |i|
#   is_suffix = false if S[i] != T[M - N + i]
# end

# if is_prefix
#   puts is_suffix ? 0 : 1
# else
#   puts is_suffix ? 2 : 3
# end
