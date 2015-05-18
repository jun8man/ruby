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

end

# create instance of "student" as shin.
shin    = Student.new('久保秋　真', 45)
hiroshi = Student.new('久保秋　博', 41)

# display
puts shin.to_s()
puts hiroshi.to_s()
