#!/usr/bin/env ruby

require 'pathname'

unless ARGV[0] && ARGV[1]
  puts "Usage: #{__FILE__} <src_dir> <dest_dir>"
  exit
end

src, dest = ARGV

src_path = Pathname.new(src)
dest_path = Pathname.new(dest)

src_path.find do |path|
	p path
end