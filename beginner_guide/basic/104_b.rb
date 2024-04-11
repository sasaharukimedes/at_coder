# frozen_string_literal: true

S = gets.chomp

def solve
  n = S.length

  return 'WA' if S[0] != 'A'
  return 'WA' if S[1] < 'a' || S[1] > 'z'
  return 'WA' if S[n - 1] < 'a' || S[n - 1] > 'z'

  c = 0
  x = 0
  (2..n - 2).each do |i|
    if S[i] >= 'a' && S[i] <= 'z'
      x += 1
    elsif S[i] == 'C'
      c += 1
    else
      return 'WA'
    end
  end

  return 'AC' if c == 1

  'WA'
end

puts solve
