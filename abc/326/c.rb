#wrong
n, m = gets.split.map(&:to_i)
present_coordinates = gets.split.map(&:to_i)

present_coordinates.sort!

max_gifts = 0
current_gifts = 1
left = 0

(1...n).each do |right|
  current_gifts += 1
  while present_coordinates[right] - present_coordinates[left] >= m
    left += 1
    current_gifts -= 1
  end
  max_gifts = [max_gifts, current_gifts].max
end

puts max_gifts

--------------------------
#correct
n, m = gets.split.map(&:to_i)
present_coordinates = gets.split.map(&:to_i).sort

max_gifts = 0
left = 0

present_coordinates.each_with_index do |right_val, right|
  while right_val - present_coordinates[left] >= m
    left += 1
  end
  max_gifts = [max_gifts, right - left + 1].max
end

puts max_gifts