# -*- coding: utf-8 -*-

# Stringクラスのnewメソッドを使って文字列を作成する
# newするとは、Stringクラスがnewというメッセージを受け取って
# Stringクラス内で定義されているnewという処理(ここでは文字列を作る処理)を
# 与えられた引数を用いて実行していることになる
puts String.new("ようこそ")
puts String.new('Welcome')
puts String.new("私の好物は'りんご'です。")
puts String.new('私は"ドリアン"が苦手です。')

# <どんな時に使うのか？>
# プログラムを書いた時点では文字列が決まっていない、実行中に決まるものがある場合
# newしてあげるとよい