# frozen_string_literal: true

gets.to_i
a = gets.split.map(&:to_i)

products = a.each_cons(2).map { |a, b| a * b }
puts products.join(' ')
