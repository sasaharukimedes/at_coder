class CelebratingBirthday {
  // クラスメソッドで誕生日を検索
  static birthday(
    birthdays: [string, string][],
    targetDate: string
  ): string | null {
    for (const [name, date] of birthdays) {
      if (date === targetDate) {
        return name;
      }
    }
    return null; // 該当する誕生日が見つからない場合
  }
}

// birthdaysリスト
const birthdays: [string, string][] = [
  ["山田", "04-01"],
  ["田中", "12-31"],
];

// クラスメソッドを呼び出して04-01に対応する名前を取得
const result = CelebratingBirthday.birthday(birthdays, "04-01");

if (result) {
  console.log(result);
} else {
  console.log("該当する誕生日が見つかりません。");
}
