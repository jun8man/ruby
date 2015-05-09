# -*- coding: utf-8 -*-

require 'date'

# 表示したいデータの作成
published_date = Date.new(2005, 1, 25)
month          = Date::MONTHNAMES[published_date.month]         # Dateクラスの配列に格納されている
abbr_month     = Date::ABBR_MONTHNAMES[published_date.month]    # Dateクラスの配列に格納されている

# 蔵書データを表示する
puts("出版年:           #{published_date.year.to_s}年")
puts("出版月(長い名前): #{month}")
puts("出版月(短い名前): #{abbr_month}")