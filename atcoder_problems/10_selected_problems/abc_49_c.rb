s = gets.chomp.reverse
t = ['dream', 'dreamer', 'erase', 'eraser'].map(&:reverse)

while s.size > 0
  flag = false
  t.each do |ti|
    if s.start_with?(ti)
      flag = true
      s = s[ti.size..-1]
      break
    end
  end
  if flag == false
    puts 'NO'
    exit
  end
end

puts 'YES'
