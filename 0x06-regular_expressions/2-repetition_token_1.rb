#!/usr/bin/env ruby
# This script will perform a repetitive pattern matching for repeating
# chars in a query

puts ARGV[0].scan(/hb?tn/).join
