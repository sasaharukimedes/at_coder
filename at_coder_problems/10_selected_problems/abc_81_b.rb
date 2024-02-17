n = gets.to_i
a = gets.split.map(&:to_i)

count = 0
loop do
  break if !a.all?(&:even?)
  a = a.map do |num|
    num / 2
  end
  count += 1
end

puts count
