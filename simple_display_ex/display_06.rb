# -*- coding: utf-8 -*-

require "date"

# 表示したい蔵書データを作成する
titles = [
  "実践アジャイル ソフトウェア開発方とプロジェクト管理",
  "入門LEGO MINDSTORMS NXT レゴブロックで作る動くロボット",
]

authors = [
  "山田 正樹",
  "大庭 慎一郎",
]

yomies = [
  "やまだ まさき",
  "おおば しんいちろう",
]

publishers = [
  "ソフト・リサーチ・センター",
  "ソフトバンク・クリエイティブ",
]

pages = [
  248,
  164,
]

prices = [
  2500,
  2400,
]

purchased_prices = [
  2650,
  2520,
]

isbn_10s = [
  "4883732088",
  "4797338253",
]

isbn_13s = [
  "978-4883732088",
  "978-4797338253",
]

sizes = [
  "21 x 14.8 x 2",
  "23 x 18.2 x 1.6",
]

published_dates = [
  Date.new(2005, 1, 25),
  Date.new(2006, 12, 23),
]

purchased_dates = [
  Date.new(2005, 2, 2),
  Date.new(2007, 1, 10),
]

# 蔵書データを表示する
titles.size.times { |i|      # titlesの要素数分添字をiとして処理を繰り返す
  puts "-------------------------"
  puts "書籍名:     #{titles[i]}"
  puts "著者名:     #{authors[i]}"
  puts "よみがな:   #{yomies[i]}"
  puts "出版社:     #{publishers[i]}"
  puts "ページ数:   #{pages[i]}ページ"
  puts "販売価格:   #{prices[i]}円"
  puts "購入費用:   #{purchased_prices[i]}円"
  puts "ISBN_10:    #{isbn_10s[i]}"
  puts "ISBN_13:    #{isbn_13s[i]}"
  puts "寸法:       #{sizes[i]}"
  puts "発刊日:     #{published_dates[i]}"
  puts "購入日:     #{purchased_dates[i]}"
}
# Arrayクラスのsizeメソッドで「配列の要素数」が返ってくる
# 返された配列の要素数に対して、Integerクラスのtimesメソッドで「要素数分の繰り返し処理」を行う
# その後の{}はブロックという引数となるための塊
# ブロックは単体では存在できないためオブジェクト化して使う必要がある
# このオブジェクトをProcオブジェクトと呼んでいる
# つまりここではブロックと呼ばれる{}をProcとしてtimesメソッドに渡している感じ、引数みたいな感じ
# さらにここでは|i|という書き方をすることで、Procが呼び出される際に引数を渡されることを期待している
# 「期待している」とか呼び出される側であるProcが更に引数を期待するとかわけわかんない感じになっているが
# つまりは呼び出される時に何かしらの値を受け取ってそれをProc内で処理するってこと(イマイチな説明か。。。)
