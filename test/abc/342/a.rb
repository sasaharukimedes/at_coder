# s = gets.chomp.chars

# def where_index(s)
#   s.each_with_index do |char, index|
#     return index + 1 if char != s[0]
#   end
#   nil
# end

# puts where_index(s)

# s = gets.chomp.chars

# def where_index(s)
#   count = Hash.new(0)
#   s.each { |char| count[char] += 1 }
#   unique_char = count.key(1)
#   return s.index(unique_char) + 1
# end

# puts where_index(s)



s = gets.chomp.chars

def where_index(s)
  count = Hash.new(0)
  s.each { |char| count[char] += 1 }
  unique_char = count.key(1)
  return s.index(unique_char) + 1
end

puts where_index(s)
