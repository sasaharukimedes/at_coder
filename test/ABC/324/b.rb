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
