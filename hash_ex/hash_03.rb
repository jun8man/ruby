# -*- coding: utf-8 -*-

# Create new hash.
friends = {
  :Naka     => "Naka Daisuke",
  :Yamajun  => "Yamashita Junya",
  :Takahiro => "Sakayori Takahiro"
}

# Add new value.
friends[:Takuji] = "Higashiyama Takuji"

# Search a value.
puts friends[:Naka] if friends.include?(:Naka)       # return true.
puts friends[:Takuji] if friends.member?(:Takuji)    # return true.

# Delete a value.
friends.delete(:Takuji)

# Get hash key one by one.
friends.each_key { |key|
  puts "#{key} : " + friends[key]
}