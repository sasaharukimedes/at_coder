w, b = gets.split.map(&:to_i)

basic = "wbwbwwbwbwbw"

def yes_or_no(w, b, basic)
  # 基本パターンを繰り返して十分な長さの文字列を作成します
  extended_basic = basic * (w + b)

  # 'w'の数がwで、'b'の数がbであるような部分文字列が存在するかどうかをチェックします
  (0..(extended_basic.length - w - b)).each do |i|
    sub_string = extended_basic[i, w + b]
    if sub_string.count('w') == w && sub_string.count('b') == b
      return "Yes"
    end
  end

  # すべての部分文字列をチェックした後で、該当するものがなければ"No"を返します
  return "No"
end

puts yes_or_no(w, b, basic)