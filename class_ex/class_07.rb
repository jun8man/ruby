# -*- coding: utf-8 -*-

# create "Familiy" class.
class Familiy
  @@num_of_familiy = 0
  # Initialize.
  def initialize (name, age)
    @name = name
    @age  = age
    @@num_of_familiy += 1
  end

  # String expression for Familiy class.
  def to_s
    "#{@name}, #{@age}"
  end

  # accessor method
  attr_accessor :name, :age

end

# Create "FamilyBook" class.
class FamilyBook
  def initialize()
    @family = Hash.new
  end

  # Create new Hash and added Family instances.
  def setUpFamily
    @familiy = {
      junya: Familiy.new("Yamashita Junya", 30),
      kana:  Familiy.new("Yamashita Kana", 30),
      toma:  Familiy.new("Yamashita Toma", 0.4)
    }
  end

  # Display.
  def printFamily
    @familiy.each {|key, val|
      puts "#{key}: #{val.to_s}"
    }
  end

  def listAllFamilyMember
    # Create family member list.
    setUpFamily
    # Display family member.
    printFamily
  end
end

# Client Code.
family_book = FamilyBook.new
family_book.listAllFamilyMember