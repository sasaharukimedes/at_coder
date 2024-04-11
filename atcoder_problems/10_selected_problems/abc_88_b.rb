# frozen_string_literal: true

gets.to_i
a = gets.split.map(&:to_i)

def point_spread(a)
  alice = 0
  bob = 0
  a.sort! { |a, b| b <=> a }
  a.each_with_index do |arr, index|
    if index.odd?
      alice += arr
    else
      bob += arr
    end
  end
  (alice - bob).abs
end

puts point_spread(a)
