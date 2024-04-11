# frozen_string_literal: true

gets.to_i

gets.to_i

def square(x)
  ans = Math.sqrt(x)
  ans == ans.to_i
end

# 自己回答未完成

N = gets.to_i

N /= 2 while N.even?

N /= 3 while (N % 3).zero?

result = N == 1

puts result ? 'Yes' : 'No'

n = gets.to_i

ord_2 = 0
ord_2 += 1 while (n % (2**(ord_2 + 1))).zero?

ord_3 = 0
ord_3 += 1 while (n % (3**(ord_3 + 1))).zero?

if n == (2**ord_2) * (3**ord_3)
  puts 'Yes'
else
  puts 'No'
end

n = gets.to_i

n /= 2 while n.even?

n /= 3 while (n % 3).zero?

if n == 1
  puts 'Yes'
else
  puts 'No'
end
