n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
unique_a = a.uniq

def unknown_calc(a, k)
  all_nums = (1..k).to_a

  not_in_a = all_nums - a

  not_in_a.sum
end

puts unknown_calc(unique_a, k)

---

n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

def unknown_calc(a, k)
  # 1からkまでの合計を計算します（等差数列の和の公式を使用）
  total_sum = k * (k + 1) / 2

  # aの要素のうち、1からkの範囲にあるものの合計を計算します
  sum_a = a.uniq.select { |num| num <= k }.sum

  # 1からkまでの合計から、aの要素のうち1からkの範囲にあるものの合計を引きます
  not_in_a_sum = total_sum - sum_a

  not_in_a_sum
end

puts unknown_calc(a, k)