# frozen_string_literal: true

x, a, b = gets.split.map(&:to_i)

def stomach(x, a, b)
  if (b - a) <= 0
    'delicious'
  elsif (b - a) <= x
    'safe'
  else
    'dangerous'
  end
end

puts stomach(x, a, b)
