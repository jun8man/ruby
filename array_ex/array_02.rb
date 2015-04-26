# -*- coding: utf-8 -*-

require 'date'

# 配列
# []メソッドを使う
train_types   = ["local", "rapid", "express"]
exam_scores   = [40, 30, 20, 10, 100]
fruits_prices = [["apple", 200], ["orange", 100], ["melon", 600]]

# indexを使うと添字を検索できる
puts train_types.index("local")
puts exam_scores.index(100)
puts fruits_prices.index(["orange", 100])

# 異なるデータが要素になっても大丈夫
# 使命, 身長, 生年月日
junya = ["Junya", 170, Date::new(1985, 2, 20)]
kana  = ["Kana", 156, Date::new(1984, 6, 19)]

puts "#{junya[0]} : #{junya[1].to_s}m, birth -> #{junya[2].to_s}"
puts "#{kana[0]}  : #{kana[1].to_s}m, birth -> #{kana[2].to_s}"
