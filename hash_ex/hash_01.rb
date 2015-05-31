# -*- coding: utf-8 -*-

# Create new hash.
friends = {
  :Naka     => "Naka Daisuke",
  :Yamajun  => "Yamashita Junya",
  :Takahiro => "Sakayori Takahiro"
}

# Get hash value one by one.
friends.each { |key, val|
  puts "#{key} : #{val}"
}