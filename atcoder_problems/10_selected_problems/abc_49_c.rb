# frozen_string_literal: true

s = gets.chomp.reverse
t = %w[dream dreamer erase eraser].map(&:reverse)

while s.size.positive?
  flag = false
  t.each do |ti|
    next unless s.start_with?(ti)

    flag = true
    s = s[ti.size..]
    break
  end
  if flag == false
    puts 'NO'
    exit
  end
end

puts 'YES'
