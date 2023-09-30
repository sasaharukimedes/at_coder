# A = 0x2d
# B = 0x19
# puts "#{A} AND #{B} = #{A & B}"
# puts "#{format('%08b', A)} AND #{format('%08b', B)} = #{format('%08b', A & B)}"


BIT_FLAG_0 = (1 << 0)
BIT_FLAG_1 = (1 << 1)
BIT_FLAG_2 = (1 << 2)
BIT_FLAG_3 = (1 << 3)
BIT_FLAG_4 = (1 << 4)
BIT_FLAG_5 = (1 << 5)
BIT_FLAG_6 = (1 << 6)
BIT_FLAG_7 = (1 << 7)

# {1, 3, 5} にフラグの立ったビット
bit = BIT_FLAG_1 | BIT_FLAG_3 | BIT_FLAG_5
puts "{1, 3, 5} = #{format('%08b', bit)}"

# ビット {1, 3, 5} について、3 番目のフラグが立っていること
if bit & BIT_FLAG_3 != 0
  puts "3 is in     #{format('%08b', bit)}"
end

# ビット {1, 3, 5} について、0 番目のフラグが立っていないこと
if bit & BIT_FLAG_0 == 0
  puts "0 is not in #{format('%08b', bit)}"
end

# 新たなビット
bit2 = BIT_FLAG_0 | BIT_FLAG_3 | BIT_FLAG_4 # {0, 3, 4}
puts "#{format('%08b', bit)} AND #{format('%08b', bit2)} = #{format('%08b', bit & bit2)}" # {1, 3, 5} AND {0, 3, 4} = {3}
puts "#{format('%08b', bit)} OR #{format('%08b', bit2)} = #{format('%08b', bit | bit2)}" # {1, 3, 5} OR {0, 3, 4} = {0, 1, 3, 4, 5}

# bitに6番目のフラグを立てる
puts "before: #{format('%08b', bit)}"
bit |= BIT_FLAG_6
puts "after : #{format('%08b', bit)} (6 included)"

# bit2から3番目のフラグを消す
puts "before: #{format('%08b', bit2)}"
bit2 &= ~BIT_FLAG_3
puts "after : #{format('%08b', bit2)} (3 excluded)"

puts "----------------------------------------------"

BIT_FLAG_DAMAGE = (1 << 0)
BIT_FLAG_DOKU = (1 << 1)
BIT_FLAG_MAHI = (1 << 2)
BIT_FLAG_SENTOFUNO = (1 << 3)

MASK_ATTACK = BIT_FLAG_DAMAGE
MASK_PUNCH = BIT_FLAG_DAMAGE | BIT_FLAG_MAHI
MASK_DEFEAT = BIT_FLAG_DAMAGE | BIT_FLAG_SENTOFUNO
MASK_DOKU_MAHI = BIT_FLAG_DOKU | BIT_FLAG_MAHI

# start: 0000, 初期状態
status = 0
puts "start: #{format('%04b', status)}"

# attacked: 0001 になる
status |= MASK_ATTACK
puts "attacked: #{format('%04b', status)}"

# punched: 0101 になる, HPはすでに満タンでないので、BIT_FLAG_DAMAGE の部分は変化なし
status |= MASK_PUNCH
puts "punched: #{format('%04b', status)}"

# 「毒」または「麻痺」かどうかを判定する
if status & MASK_DOKU_MAHI != 0
  puts "You are doku or mahi."
end

# kaihuku: 0001 にする, HPは回復しない、麻痺は回復する
status &= ~MASK_DOKU_MAHI
puts "kaihuku: #{format('%04b', status)}"

# defeat: 1001 にする, 戦闘不能にする
status |= MASK_DEFEAT
puts "sentofuno: #{format('%04b', status)}"

# kaihuku: 1001 のまま、戦闘不能状態は回復しない
status &= ~MASK_DOKU_MAHI
puts "sentofuno no mama: #{format('%04b', status)}"



#https://qiita.com/drken/items/7c6ff2aa4d8fce1c9361
#https://www.javadrive.jp/ruby/num/index6.html