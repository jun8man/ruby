# -*- coding: utf-8 -*-

require 'date'

# 表示したいデータの作成
published_date = Date.new(2005, 1, 25)
purchased_date = Date.new(2005, 3, 15)

# 蔵書データを表示する
puts("出版年: #{published_date.year.to_s}年")
puts("出版月: #{published_date.month.to_s}月")
puts("購入日: #{purchased_date.to_s}")