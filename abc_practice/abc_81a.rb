# frozen_string_literal: true

def count_ones(s)
  s.count('1')
end

s = gets.to_s
puts count_ones(s)
