#!/usr/bin/env ruby
# This script will perform a repetitive pattern search

puts ARGV[0].scan(/hbt{2,5}n/).join
