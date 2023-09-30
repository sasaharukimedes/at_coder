divide = ["dream", "dreamer", "erase", "eraser"]

S = gets.chomp

# 後ろから解くかわりにすべての文字列を「左右反転」する
S = S.reverse
divide = divide.map(&:reverse)

# 端から切っていく
can = true
i = 0
while i < S.size
  can2 = false # 4 個の文字列たちどれかで divide できるか
  divide.each do |d|
    if S[i, d.size] == d # d で divide できるか
      can2 = true
      i += d.size # divide できたら i を進める
      break
    end
  end
  unless can2 # divide できなかったら
    can = false
    break
  end
end

puts can ? "YES" : "NO"