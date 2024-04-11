# frozen_string_literal: true

# 素数判定
require 'prime'
Prime.prime?(123) # 123がどうか調べる

lang = %w[ruby python php]
lang.each_with_index do |ele, i|
  puts "#{i}番目の要素は#{ele}です"
end

# 二分探索
ary = [0, 4, 7, 10, 12]
ary.bsearch { |x| x >= 4 } # => 4
