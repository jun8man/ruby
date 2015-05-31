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

# Register some book information as hash.
book_infomation = Hash.new
book_infomation[:Yamada2005] = BookInfo.new(
  "実践アジャイル ソフトウェア開発方法とプロジェクト管理",
  "山田 正樹",
  248,
  Date.new(2005, 1, 25))

book_infomation[:Ooba2006] = BookInfo.new(
  "入門LEGO MINDSTORMS NXT レゴブロックで作る動くロボット",
  "大庭 慎一郎",
  164,
  Date.new(2006, 12, 23))

# Output one by one.
book_infomation.each{ |key, value|
  puts "#{key}: #{value.title}, #{value.author}, #{value.page}, #{value.publish_date}"
}

# Other way to output.
book_info = book_infomation[:Yamada2005]
puts book_info.title
puts book_info.author
puts book_info.page
puts book_info.publish_date