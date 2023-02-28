#!/usr/bin/env ruby
# This script perform exact matching of characters beginning with `h`
# and ending with `n`

puts ARGV[0].scan(/^h.n$/).join
