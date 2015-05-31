# -*- coding: utf-8 -*-

# Create new hash.
friends = {
  :Naka     => "Naka Daisuke",
  :Yamajun  => "Yamashita Junya",
  :Takahiro => "Sakayori Takahiro"
}

# Get hash key one by one.
friends.each_key { |key|
  puts "#{key} : " + friends[key]
}