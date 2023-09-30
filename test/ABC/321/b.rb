#自分のコード
# n, x = gets.chomp.split.map(&:to_i)
# scores = gets.chomp.split.map(&:to_i)

# scores.sort!
# scores.pop
# scores.shift
# sum_scores = scores.sum

# min_amount = x - sum_scores

# def calculate(min_amount)
#   if min_amount < 100
#     puts min_amount
#   elsif min_amount == 100
#     puts "0"
#   else
#     puts "-1"
#   end
# end

# puts calculate(min_amount)


N, X = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
A.append(-1)

for last in 0..100
  B = A.clone
  B[N-1] = last
  B.sort!
  sum = 0
  for i in 1..(N-2)
    sum += B[i]
  end
  if sum >= X
    puts last
    exit
  end
end

puts "-1"


#公式の回答

# N, X = gets.split.map(&:to_i)
# A = gets.split.map(&:to_i)
# A << -1

# (0..100).each do |last|
#   B = A.dup
#   B[N-1] = last
#   sum = B.sum
#   ma = B.max
#   mi = B.min
#   score = sum - ma - mi

#   if score >= X
#     puts last
#     exit
#   end
# end

# puts "-1"
