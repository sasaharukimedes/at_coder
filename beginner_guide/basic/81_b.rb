N = gets.to_i
A = gets.split.map(&:to_i)

res = 0

while true
  exist_odd = false
  for i in 0...N
    if A[i] % 2 != 0
      exist_odd = true
      break
    end
  end

  break if exist_odd

  for i in 0...N
    A[i] /= 2
  end

  res += 1
end

puts res
