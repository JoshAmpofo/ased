#!/usr/bin/env ruby
# This script performs pattern matching over a text file
# The search pattern should return:
#   [SENDER],[RECEIVER],[FLAGS}
# Sender: phone number or name (including country code if present)
# Receiver: same details as sender
# Flags that were used

puts ARGV[0].scan(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/).join(",")
