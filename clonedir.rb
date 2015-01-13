#!/usr/bin/env ruby

require 'pathname'

unless ARGV[0] && ARGV[1]
  puts "Usage: #{__FILE__} <src_dir> <dest_dir>"
  exit
end

src_dir, dest_dir = ARGV

src_dir_path = Pathname.new(src_dir)
dest_dir_path = Pathname.new(dest_dir)

src_dir_path.find do |src|
  next unless src.directory?

  dest = dest_dir_path + src.relative_path_from(src_dir_path)

  dest.mkpath

  if dest.directory?
    puts "Successfully created #{dest}"
  else
    puts "Error creating #{dest}!"
  end
end