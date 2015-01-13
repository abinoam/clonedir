#!/usr/bin/env ruby

require 'pathname'

unless ARGV[0] && ARGV[1]
  puts "Usage: #{__FILE__} <src_dir> <dest_dir>"
  exit
end