# frozen_string_literal: true

# 1行の入力を受け取る
require 'English'
gets.chomp # 文字列
gets.to_i # 整数

# 複数行の入力を受け取る（文字列)
gets.chomp

# 1行に複数ある値を配列に詰めて受け取る
gets.split.map(&:to_i)
gets.chomp.split

# 複数の値を個別に受け取る(多重代入)
gets.split.map(&:to_i)

# n行の入力を受け取る
Array.new(n) { gets.to_i }
Array.new(n) { gets.chomp }

# 1文字、1桁ずつ区切って配列にする
gets.chomp.chars
gets.chomp.chars.map(&:to_i)
gets.digits

# 二次元配列として受け取る(h行w列)各要素は整数を想定
Array.new(h) { gets.split.map(&:to_i) }

# 複数行をまとめて受け取る
$DEFAULT_INPUT.read.split.map(&:to_i)
`dd`.split.map(&:to_i)

# 出力
num = 42
puts num
p num

str = 'atcoder'
puts str

puts ary.join(' ')

# 入力された文字列をそれぞれを数値のまま配列に格納する
gets.chomp.chars.map(&:to_i)

# 入力された文字を配列に格納する
gets.chomp.chars
