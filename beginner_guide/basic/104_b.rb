S = gets.chomp

def solve
  n = S.length

  return "WA" if S[0] != 'A'
  return "WA" if S[1] < 'a' || 'z' < S[1]
  return "WA" if S[n-1] < 'a' || 'z' < S[n-1]

  c = 0
  x = 0
  (2..n-2).each do |i|
    if 'a' <= S[i] && S[i] <= 'z'
      x += 1
    elsif S[i] == 'C'
      c += 1
    else
      return "WA"
    end
  end

  return "AC" if c == 1
  return "WA"
end

puts solve
