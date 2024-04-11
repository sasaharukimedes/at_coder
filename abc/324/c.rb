# frozen_string_literal: true

# 公式回答

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
  flag = true if a[i] == t.length && t.length == t2.length
  flag = true if a[i] + b[i] >= t.length && t.length + 1 == t2.length
  flag = true if a[i] + b[i] >= t.length - 1 && t.length - 1 == t2.length
  flag = true if a[i] + b[i] == t.length - 1 && t.length == t2.length
  ans.push(i) if flag
end

puts ans.length
puts ans.join(' ')

def check(s, t)
  return check(t, s) if s.length > t.length

  return false if s.length < t.length - 1

  i = 0
  j = 0
  miss = 0

  while i < s.length
    if s[i] == t[j]
      i += 1
    else
      miss += 1
      return false if miss > 1

      i += 1 if s.length == t.length
    end
    j += 1
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
