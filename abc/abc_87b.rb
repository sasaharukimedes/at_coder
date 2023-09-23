A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i

res = 0

for a in 0..A
  for b in 0..B
    for c in 0..C
      total = 500*a + 100*b + 50*c
      res += 1 if total == X
    end
  end
end

puts res