# frozen_string_literal: true

N = gets.to_i
t = [0]
x = [0]
y = [0] # 初期状態
N.times do
  t_i, x_i, y_i = gets.split.map(&:to_i)
  t << t_i
  x << x_i
  y << y_i
end

can = true
N.times do |i|
  dt = t[i + 1] - t[i]
  dist = (x[i + 1] - x[i]).abs + (y[i + 1] - y[i]).abs
  can = false if dt < dist
  can = false if dist % 2 != dt % 2 # distとdtの偶奇は一致する必要あり！
end

puts can ? 'Yes' : 'No'
