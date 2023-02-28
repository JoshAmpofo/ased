#!/usr/bin/env ruby
# This script performs a search limit pattern matching
# The search query must be exactly 10 digit number

puts ARGV[0].scan(/^[0-9]{10}$/).join
