#!/usr/bin/env ruby
input_string = ARGV[0]
regex = /^([\w\s]+),([\w\s]+),(\w+)$/

if match_data = input_string.match(regex)
  sender = match_data[1].strip
  receiver = match_data[2].strip
  flags = match_data[3]
  puts "#{sender},#{receiver},#{flags}"
end

