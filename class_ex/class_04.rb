# -*- coding: utf-8 -*-

require "date"

class BookInfo
  def initialize(title, author, page, publish_date)
    @title        = title
    @author       = author
    @page         = page
    @publish_date = publish_date
  end

  attr_accessor :title, :author, :page, :publish_date
end

# main
book_info = BookInfo.new(
  "実践アジャイル ソフトウェア開発方法とプロジェクト管理",
  "山田 正樹",
  248,
  Date.new(2005, 1, 25))

puts "書籍名：   #{book_info.title}"
puts "著者名：   #{book_info.author}"
puts "ページ数： #{book_info.page}"
puts "発刊日：   #{book_info.publish_date}"
