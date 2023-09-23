def is_321_like_number(n)
  n_str = n.to_s

  return "Yes" if n_str.length == 1

  (0...n_str.length - 1).each do |i|
    return "No" if n_str[i] <= n_str[i + 1]
  end

  puts "Yes"
end

n= gets.to_i
puts is_321_like_number(n)

# 公式回答
# s = gets.chomp
# (1...s.length).each do |i|
#   if s[i - 1] <= s[i]
#     puts "No"
#     exit
#   end
# end
# puts "Yes"
