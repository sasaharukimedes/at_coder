# frozen_string_literal: true

h, a = gets.split.map(&:to_i)

def count?(h, a)
  counter = 0
  until h <= 0
    h -= a
    counter += 1
  end
  counter
end

puts count?(h, a)
