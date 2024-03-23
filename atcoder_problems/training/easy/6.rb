#自己回答
#偶数はとりあえずクリア。奇数のときの処理がうまくできてない


# h, w = gets.split.map(&:to_i)

# def calculate(h, w)
#   amount = 0
#   amount_h =0

#   if h.even?
#     amount = (h / 2) * w
#   elsif h.odd?
#     amount_h = ((h - 1) / 2 + 1)
#     pre_amount = ((h - 1) / 2 + 1) * w
#     amount = pre_amount - ((amount_h - 1) * ( w / 2))
#   end
#   return amount

# end

# puts calculate(h, w)


#公式回答

def main
  h, w = gets.chomp.split.map(&:to_i)

  if h == 1 || w == 1
    puts 1
    return
  end

  ans = (h * w) / 2
  ans += 1 if (h * w).odd?

  puts ans
end

main