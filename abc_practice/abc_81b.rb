# frozen_string_literal: true

N = gets.to_i
A = gets.split.map(&:to_i)

res = 0

loop do
  exist_odd = false
  (0...N).each do |i|
    if A[i].odd?
      exist_odd = true
      break
    end
  end

  break if exist_odd

  (0...N).each do |i|
    A[i] /= 2
  end

  res += 1
end

puts res
