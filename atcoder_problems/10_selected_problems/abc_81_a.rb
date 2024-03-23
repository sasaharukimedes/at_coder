s = gets.chomp.chars.map(&:to_i)
p s
count = 0
s.each do |num|
  if num == 1
    count += 1
  end
end
puts count

