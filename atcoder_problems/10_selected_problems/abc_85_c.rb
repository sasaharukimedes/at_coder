# frozen_string_literal: true

N, Y = gets.split.map(&:to_i)

(0..N).times do |a|
  (0..N).times do |b|
    c = N - (a + b)
    if c >= 0 && (10_000 * a + 5000 * b + 1000 * c == Y)
      puts "#{a} #{b} #{c}"
      exit
    end
  end
end

puts '-1 -1 -1'
