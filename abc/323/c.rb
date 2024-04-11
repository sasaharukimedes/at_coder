# frozen_string_literal: true

# うーんわからない

# n, m = gets.split.map(&:to_i)
# points = gets.split.map(&:to_i)
# players = n.times.map { gets.chomp }

# results = players.map do |player|
#   solved = player.chars.map.with_index { |c, i| c == 'o' ? points[i] : 0 }.sum
#   unsolved = player.chars.map.with_index { |c, i| c == 'x' ? points[i] : 0 }.sort.reverse
#   needed = 0
#   while solved < players.map { |p| p.chars.map.with_index { |c, i| c == 'o' ? points[i] : 0 }.sum }.max
#     solved += unsolved.shift
#     needed += 2
#   end
#   needed
# end

# puts results.join(' ')

# 公式回答

n, m = gets.split.map(&:to_i)
points = gets.split.map(&:to_i)
players = n.times.map { gets.chomp }

now_scores = (1..n).to_a

n.times do |i|
  m.times do |j|
    now_scores[i] += points[j] if players[i][j] == 'o'
  end
end

mx = now_scores.max

n.times do |i|
  unsolved = points.each_with_index.select { |_, j| players[i][j] == 'x' }.map(&:first).sort.reverse
  needed = 0

  while now_scores[i] < mx
    now_scores[i] += unsolved.shift
    needed += 1
  end

  puts needed
end
