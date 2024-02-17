A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i

count = 0

(0..A).each do |a|
  (0..B).each do |b|
    (0..C).each do |c|
      total = a * 500 + b * 100 + c * 50
      count += 1 if total == X
    end
  end
end

puts count


# まず、gets.to_iを用いて、500円玉の枚数A、100円玉の枚数B、50円玉の枚数C、そして目指す合計金額Xを入力として受け取ります。

# 次に、countという変数を0で初期化します。この変数は、合計金額がちょうどX円になる硬貨の選び方の数をカウントします。

# その後、3つのeachループを用いて、全ての硬貨の組み合わせを試します。最初のループでは、500円玉の枚数を0からAまで変えていきます。2つ目のループでは、100円玉の枚数を0からBまで変えていきます。3つ目のループでは、50円玉の枚数を0からCまで変えていきます。

# そして、各ループの中で、選んだ硬貨の合計金額totalを計算します。これは、500円玉の枚数aに500を掛けたもの、100円玉の枚数bに100を掛けたもの、50円玉の枚数cに50を掛けたものの合計です。

# 最後に、totalが目指す合計金額Xと等しいかどうかをチェックします。もし等しければ、countを1増やします。