# frozen_string_literal: true

def find_sum_of_digits(n)
  sum = 0
  while n.positive?
    sum += n % 10
    n /= 10
  end
  sum
end

N = gets.to_i
A = gets.to_i
B = gets.to_i

total = 0

(1..N).each do |i|
  sum = find_sum_of_digits(i)
  total += i if sum >= A && sum <= B
end

puts total

#  -----------------------------------------

# frozen_string_literal: true

# puts "数値を入力してください:"
# n = gets.chomp

# sum = 0
# n.each_char do |digit|
#   sum += digit.to_i
# end

# puts "各桁の和: #{sum}"

#  -------------------------------

# frozen_string_literal: true

puts '数値を入力してください:'
n = gets.to_i

sum_digit = 0
while n > 0
  sum_digit += n % 10
  n /= 10
end

puts "各桁の和: #{sum_digit}"
