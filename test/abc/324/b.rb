n = gets.to_i

n = gets.to_i

x = n / 6

def square(x)
  ans = Math.sqrt(x)
  ans == ans.to_i
end

#自己回答未完成

------------------------

N = gets.to_i

while N % 2 == 0
  N /= 2
end

while N % 3 == 0
  N /= 3
end

result = N == 1

puts result ? "Yes" : "No"

-----------------------------


#公式回答

n = gets.to_i

ord_2 = 0
while n % (2**(ord_2 + 1)) == 0
  ord_2 += 1
end

ord_3 = 0
while n % (3**(ord_3 + 1)) == 0
  ord_3 += 1
end

if n == (2**ord_2) * (3**ord_3)
  puts 'Yes'
else
  puts 'No'
end

-------------------------------

n = gets.to_i

while n % 2 == 0
  n /= 2
end

while n % 3 == 0
  n /= 3
end

if n == 1
  puts 'Yes'
else
  puts 'No'
end
