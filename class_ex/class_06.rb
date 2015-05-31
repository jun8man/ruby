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

# Create new Hash and added some instances.
def setUpFamily
  # Declared by Global Value.
  $familiy = {
    junya: Familiy.new("Yamashita Junya", 30),
    kana:  Familiy.new("Yamashita Kana", 30),
    toma:  Familiy.new("Yamashita Toma", 0.4)
  }
end

# Display.
def printFamily
  # Declared by Global Value.
  $familiy.each {|key, val|
    puts "#{key}: #{val.to_s}"
  }
end

#main
setUpFamily
printFamily