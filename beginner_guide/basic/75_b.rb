# frozen_string_literal: true

H, W = gets.split.map(&:to_i)
B = Array.new(H) { gets.chomp.chars }

H.times do |y|
  W.times do |x|
    next unless B[y][x] == '.'

    c = 0
    (-1..1).each do |dx|
      (-1..1).each do |dy|
        next if dx.zero? && dy.zero?

        xx = x + dx
        yy = y + dy
        c += 1 if xx.between?(0, W - 1) && yy.between?(0, H - 1) && (B[yy][xx] == '#')
      end
    end
    B[y][x] = c.to_s
  end
end

B.each { |row| puts row.join }
