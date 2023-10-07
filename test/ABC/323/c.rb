#うーんわからない

n, m = gets.split.map(&:to_i)
points = gets.split.map(&:to_i)
players = n.times.map { gets.chomp }

results = players.map do |player|
  solved = player.chars.map.with_index { |c, i| c == 'o' ? points[i] : 0 }.sum
  unsolved = player.chars.map.with_index { |c, i| c == 'x' ? points[i] : 0 }.sort.reverse
  needed = 0
  while solved < players.map { |p| p.chars.map.with_index { |c, i| c == 'o' ? points[i] : 0 }.sum }.max
    solved += unsolved.shift
    needed += 2
  end
  needed
end

puts results.join(' ')

