#!/usr/bin/env ruby
puts ARGV[0].scan(/\[from:(?<sender>[^\]]+)\].*\[to:(?<receiver>[^\]]+)\].*\[flags:(?<flags>[^\]]+)\]/).join(",")

