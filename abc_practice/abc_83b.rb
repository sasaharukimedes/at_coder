def find_sum_of_digits(n)
  sum = 0
  while n > 0
    sum += n % 10
    n /= 10
  end
  sum
end

N = gets.to_i
A = gets.to_i
B = gets.to_i

total = 0

for i in 1..N
  sum = find_sum_of_digits(i)
  if sum >= A && sum <= B
    total += i
  end
end

puts total