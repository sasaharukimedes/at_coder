# # 入力を受け取ります
# n = gets.to_i
# a = gets.split.map(&:to_i)

# res = 0

# # 操作が行える限り操作を繰り返します
# while true
#   # 配列内に奇数が存在するかどうかをチェックします
#   exist_odd = a.any? { |item| item.odd? }

#   # 奇数が存在した場合、ループを抜けます
#   break if exist_odd

#   # 操作が行える場合、実際に操作を行います
#   a.map! { |item| item / 2 }

#   # 操作回数をインクリメントします
#   res += 1
# end

# # 結果を出力します
# puts res


# 入力を受け取ります
n = gets.to_i
a = gets.split.map(&:to_i)

res = 0

# 操作が行える限り操作を繰り返します
while true
  # 配列内に奇数が存在するかどうかをチェックします
  exist_odd = false
  a.each do |item|
    if item.odd?
      exist_odd = true
      break
    end
  end

  # 奇数が存在した場合、ループを抜けます
  break if exist_odd

  # 操作が行える場合、実際に操作を行います
  a.each_with_index do |item, index|
    a[index] = item / 2
  end

  # 操作回数をインクリメントします
  res += 1
end

# 結果を出力します
puts res


