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

  # if separator is nil, it becomes "\n".
  def to_formatted_string(sep = "\n")
    "書籍名： #{@title}#{sep}著者名： #{@author}#{sep}ページ数： #{@page}ページ#{sep}発刊日： #{publish_date}#{sep}"
  end
end

# main
book_info = BookInfo.new(
  "実践アジャイル ソフトウェア開発方法とプロジェクト管理",
  "山田 正樹",
  248,
  Date.new(2005, 1, 25))

puts book_info.to_formatted_string
puts book_info.to_formatted_string("/")