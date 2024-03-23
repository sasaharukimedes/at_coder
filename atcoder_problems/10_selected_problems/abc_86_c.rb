N = gets.to_i
t, x, y = Array.new(N+1, 0), Array.new(N+1, 0), Array.new(N+1, 0)

(1..N).each do |i|
  t[i], x[i], y[i] = gets.split.map(&:to_i)
end

can = true
(0...N).each do |i|
  dt = t[i+1] - t[i]
  dist = (x[i+1] - x[i]).abs + (y[i+1] - y[i]).abs
  if dt < dist
    can = false
  end
  if dist % 2 != dt % 2
    can = false
  end
end

if can
  puts "Yes"
else
  puts "No"
end
