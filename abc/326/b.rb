# frozen_string_literal: true

n = gets.to_i

(n..919).each do |number|
  n100 = (number / 100) % 10
  n10 = (number / 10) % 10
  n1 = (number / 1) % 10

  if n100 * n10 == n1
    puts number
    break
  end
end
