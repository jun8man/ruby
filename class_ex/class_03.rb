# -*- coding: utf-8 -*-

# create "student" class.
class Student
  @@num_of_students = 0
  # Initialize.
  def initialize (name, age)
    @name = name
    @age  = age
    @@num_of_students += 1
  end

# accessor method
#  attr_reader : getter
#  attr_writer : setter
#  attr_accessor : getter & setter
#  * You can use instance name as method.
#
  attr_accessor :name, :age

end

# create instance of "student" as shin.
shin = Student.new('久保秋　真', 45)

# use getter by accessor.
puts "氏名：#{shin.name}, 年齢：#{shin.age}"

# use setter by accessor.
shin.name = "Singh, Tiger Jeet"
shin.age  = 445

puts "氏名：#{shin.name}, 年齢：#{shin.age}"