# -*- coding: utf-8 -*-

# 表示したいデータの作成
pages = 248
price = 2500
tax   = 0.05
purchased_amount = price * (1 + tax)

# 蔵書データを表示する
puts("ページ数: #{pages}ページ")
puts("本体価格: #{price}円")
puts("購入費用: #{purchased_amount.to_i}円")