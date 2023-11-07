class CelebratingBirthday
  # クラスメソッドで誕生日を検索
  def self.birthday(target_date)
    birthdays = [["山田", "04-01"], ["田中", "12-31"]]
    birthdays.each do |name, date|
      puts "name:#{name}, date:#{date}"
      return name if date == target_date
    end
    nil  # 該当する誕生日が見つからない場合
  end
end

# 既存のbirthdays変数を使用してクラスメソッドを呼び出す
result = CelebratingBirthday.birthday("12-31")

if result
  puts result
else
  puts "該当する誕生日が見つかりません。"
end
