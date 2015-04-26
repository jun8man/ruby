# -*- coding: utf-8 -*-

# 組み込みクラスライブラリではないのでrequire宣言が必要
require 'date'

# 今日
day = Date.today
puts day.to_s

# ひな祭りのオブジェクト
hina = Date.new(2015, 3, 3)
puts hina.to_s()
