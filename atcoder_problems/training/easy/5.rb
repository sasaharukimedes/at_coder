N, M, C = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

ans = 0
N.times do
  sum = C
  A = gets.split.map(&:to_i)
  M.times do |j|
    sum += A[j] * B[j]
  end
  ans += 1 if sum > 0
end

puts ans
