# frozen_string_literal: true

dx = [1, 0, -1, 0, 1, 1, -1, -1]
dy = [0, 1, 0, -1, 1, -1, 1, -1]

h, w = gets.chomp.split.map(&:to_i)
s = Array.new(h) { gets.chomp.chars }

ans = 0
used = Array.new(h) { Array.new(w, false) }

(0...h).each do |i|
  (0...w).each do |j|
    next if s[i][j] == '.' || used[i][j]

    que = [[i, j]]
    until que.empty?
      x, y = que.shift
      (0...8).each do |d|
        nx = x + dx[d]
        ny = y + dy[d]
        if nx >= 0 && nx < h && ny >= 0 && ny < w && s[nx][ny] == '#' && !used[nx][ny]
          used[nx][ny] = true
          que.push([nx, ny])
        end
      end
    end
    ans += 1
  end
end

puts ans
