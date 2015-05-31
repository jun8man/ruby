# -*- coding: utf-8 -*-
require "date"

# class definition.
class BookInfo
  def initialize(title, author, page, publish_date)
    @title        = title
    @author       = author
    @page         = page
    @publish_date = publish_date
  end

  attr_accessor :title, :author, :page, :publish_date

  def to_s
    "#{title}, #{author}, #{page}, #{publish_date}"
  end

  # if separator is nil, it becomes "\n".
  def toFormattedString(sep = "\n")
    "書籍名： #{@title}#{sep}著者名： #{@author}#{sep}ページ数： #{@page}ページ#{sep}発刊日： #{publish_date}#{sep}"
  end
end

class BookInfoManager
  def initialize
    @book_infos = {}
  end

  def setup
    @book_infos["Muscle2005"]   = BookInfo.new(
                                  "TARZAN",
                                  "Muscle SAITO",
                                  248,
                                  Date.new(2005, 1, 25)
                                  )
    @book_infos["Fashion2006"]  = BookInfo.new(
                                  "LEON",
                                  "Fashion KONISHI",
                                  164,
                                  Date.new(2006, 12, 23)
                                  )
  end

  def run
    while true
      print "==Menu==
1. 蔵書データの登録
2. 蔵書データの表示
3. 蔵書データの検索
9. 終了
==Menu==
番号を選んでください(1, 2, 3, 9) : "
      # gets is to get input from console.
      # chomp is to remove line gap code.
      num = gets.chomp
      case num
      when '1'
        addBookInfo
      when '2'
        displayAllBookInfos
      when '3'
        displaySearchedBookInfo
      when '9'
        break
      else
        # wait any input.
      end
    end
  end

  def addBookInfo
    input_book_info = BookInfo.new("", "", 0, Date.new)
    print "==Please input book information==\n"
    print "検索キー："
    key                    = gets.chomp
    print "書籍名："
    input_book_info.title  = gets.chomp
    print "著者名："
    input_book_info.author = gets.chomp
    print "ページ数："
    input_book_info.page   = gets.chomp
    print "発刊年："
    year                   = gets.chomp.to_i
    print "発刊月："
    month                  = gets.chomp.to_i
    print "発刊日："
    day                    = gets.chomp.to_i
    input_book_info.publish_date = Date.new(year, month, day)
    @book_infos[ key ] = input_book_info
    displayAllBookInfos
  end

  def displayAllBookInfos
    puts "\n------------------------------------"
    @book_infos.each { |key, info|
      print info.toFormattedString
    puts "\n------------------------------------"
    }
  end

  def displaySearchedBookInfo
    input_book_info = BookInfo.new("", "", 0, Date.new)
    print "==Please input your target information.==\n"
    print "==You can skip by \"enter key\" if you don't use some condition.==\n"
    print "検索キー："
    key                    = gets.chomp
    key = "" if key.nil?
    print "書籍名："
    input_book_info.title  = gets.chomp
    input_book_info.title  = "" if input_book_info.title.nil?
    print "著者名："
    input_book_info.author = gets.chomp
    input_book_info.author  = "" if input_book_info.author.nil?
    print "ページ数："
    input_book_info.page   = gets.chomp.to_i
    input_book_info.page = 0 if input_book_info.page.nil?
    print "発刊年："
    year                   = gets.chomp.to_i
    year = 0 if year.nil?
    print "発刊月："
    month                  = gets.chomp.to_i
    month = 0 if month.nil?
    print "発刊日："
    day                    = gets.chomp.to_i
    day = 0 if day.nil?
    if (year != 0 || month != 0 || day != 0)
      input_book_info.publish_date = Date.new(year, month, day)
    else
      input_book_info.publish_date = nil
    end
    displayBookinfo(searchedBookInfo(key, input_book_info))
  end

  def searchedBookInfo(searched_key, book_info)
    @book_infos.each { |key, info|
      ret = false
      ret = checkBookInfo(searched_key, key) if searched_key != ""
      ret = checkBookInfo(book_info.title, info.title) if book_info.title != ""
      ret = checkBookInfo(book_info.author, info.author) if book_info.author != ""
      ret = checkBookInfo(book_info.page, info.page) if book_info.page != 0
      ret = checkBookInfo(book_info.publish_date, info.publish_date) if book_info.publish_date != nil
      if ret == true
       return info
      end
    }
    return nil
  end

  def displayBookinfo(book_info)
    puts "\n------------------------------------"
      print book_info.toFormattedString if !book_info.nil?
      print "No Stocks!!\n" if book_info.nil?
    puts "\n------------------------------------"
  end

  def checkBookInfo(lhs, rhs)
    return true if lhs == rhs
    return false
  end

end


#### make client code first. ####
# make instance of book information manager.
book_info_manager = BookInfoManager.new

# setup book information.
book_info_manager.setup

# run each process repeatedly.
book_info_manager.run