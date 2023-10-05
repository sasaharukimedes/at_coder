# a, b = gets.split.map(&:to_i)
# count = 0

# if a == b
#   count = 1
# else
#   while b >= 0 do
#     b -= a
#     count += 1
#   end
# end

# puts count

A, B = gets.split.map(&:to_i)
ans = (B - 1 + A - 2) / (A - 1)
puts ans

