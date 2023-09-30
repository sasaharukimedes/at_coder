N = gets.to_i
a = gets.split.map(&:to_i)

a.sort!.reverse!
alice = 0
bob = 0

N.times do |i|
  if i % 2 == 0
    alice += a[i]
  else
    bob += a[i]
  end
end

puts alice - bob