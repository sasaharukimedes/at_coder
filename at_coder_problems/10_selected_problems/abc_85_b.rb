n = gets.to_i
d= []

n.times do
  d << gets.to_i
end

def mochi_slice(d)
  d.sort!.uniq!
  return d.length
end

puts mochi_slice(d)