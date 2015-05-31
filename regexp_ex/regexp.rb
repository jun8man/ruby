# -*- coding: utf-8 -*-

str = "Twinkle, twinkle, little star,
How I wonder what you are.
Up above the world so high,
Like a diamond in the sky.
Twinkle, twinkle, little star,
How I wonder what you are."

# Split by lines.
lines = str.split(/\n/)

# Get line which has "you".
puts "Line which has \"you\"."
lines.each { |line|
  puts line if line =~ /[Yy]ou/
}

puts "---------------------------"

# Get line which has "," on the end of line.
puts "Line which has \",\" on the end of line."
lines.each { |line|
  puts line if line =~ /,$/
}

puts "---------------------------"

# Get line which has "l" after 2 charactors from "i".
puts "Line which has \"l\" after 2 charactors from \"i\"."
lines.each { |line|
  puts line if line =~ /i..l/
}
