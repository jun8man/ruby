# -*- coding: utf-8 -*-

# create "student" class.
class Student
  # This is the "Class value".
  # It is shared with all instance for this class.
  @@num_of_students = 0
  # Initialize.
  # This is called when user use new method.
  # "new" is defined by "Object Class" and it has "initialize method".
  # It means that "Class" is based on "Object".
  def initialize (name, age)
    # "@" is the "instance value".
    @name = name
    @age  = age
    @@num_of_students += 1
  end

  # Return to the string expression for instance of "Student Class" (This is a manor).
  def to_s
    "#{@name}, #{@age}, #{@@num_of_students}"
  end

  # getter
  def name
    @name
  end

  def age
    @age
  end

  # setter
  def name=(val)
    @name = val
  end

  def age=(val)
    @age = val
  end

end

# create instance of "student" as shin.
shin = Student.new('久保秋　真', 45)
# use getter
puts "氏名：#{shin.name()}, 年齢：#{shin.age()}"

# use setter
shin.name = "Singh, Tiger Jeet"
shin.age  = 445
puts shin.name
puts shin.age

puts "氏名：#{shin.name()}, 年齢：#{shin.age()}"