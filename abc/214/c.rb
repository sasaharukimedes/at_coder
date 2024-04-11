# frozen_string_literal: true

N = gets.to_i
S = gets.split.map(&:to_i)
T = gets.split.map(&:to_i)
(N * 2).times do |i|
  T[(i + 1) % N] = [T[(i + 1) % N], T[i % N] + S[i % N]].min
end
T.each do |ans|
  puts ans
end
