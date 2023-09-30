N = gets.to_i
D = []
while N > 0
  D.append(N % 10)
  N /= 10
end
D.reverse!

puts D