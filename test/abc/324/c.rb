#公式回答

n = gets.to_i
t2 = gets.chomp

s = []
(1..n).each do |i|
  s[i] = gets.chomp
end

def calc(s, t)
  t.chars.each_with_index do |tc, i|
    return i if i >= s.length || s[i] != tc
  end
  t.length
end

a = []
b = []

(1..n).each do |i|
  a[i] = calc(s[i], t2)
  t2.reverse!
  s[i].reverse!
  b[i] = calc(s[i], t2)
end

ans = []

(1..n).each do |i|
  t = s[i]
  flag = false
  if a[i] == t.length && t.length == t2.length
    flag = true
  end
  if a[i] + b[i] >= t.length && t.length + 1 == t2.length
    flag = true
  end
  if a[i] + b[i] >= t.length - 1 && t.length - 1 == t2.length
    flag = true
  end
  if a[i] + b[i] == t.length - 1 && t.length == t2.length
    flag = true
  end
  ans.push(i) if flag
end

puts ans.length
puts ans.join(' ')

---------------------------------------

def check(s, t)
  if s.length > t.length
    return check(t, s)
  end

  if s.length < t.length - 1
    return false
  end

  i, j, miss = 0, 0, 0

  while i < s.length
    if s[i] == t[j]
      i += 1
      j += 1
    else
      miss += 1
      if miss > 1
        return false
      end
      if s.length == t.length
        i += 1
      end
      j += 1
    end
  end

  true
end

n, t = gets.chomp.split
n = n.to_i
ans = []

(1..n).each do |i|
  s = gets.chomp
  ans.push(i) if check(s, t)
end

puts ans.length
puts ans.join(' ')

