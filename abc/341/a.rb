n = gets.to_i

n.times do
  print "0"
end

def alternating_string(n)
  s = ''
  n.times do
    s += '10'
  end
  s += '1'
  return s
end

# 例えば、N=3 の場合:
puts alternating_string(3)
