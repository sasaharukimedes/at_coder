# frozen_string_literal: true

def find_sum_of_digits(n)
  sum = 0
  while n.positive?
    sum += n % 10
    n /= 10
  end
  sum
end

N, A, B = gets.split.map(&:to_i)
total = 0

(1..N).each do |i|
  sum = find_sum_of_digits(i)
  total += i if sum >= A && sum <= B
end

puts total
