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