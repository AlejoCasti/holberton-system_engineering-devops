#!/usr/bin/env ruby
#puts ARGV[0].scan(/from:(\w+)|to:(\S+[\d,+])|flags:(\S+[\d,+,:])/).join(',')
puts ARGV[0].scan(/(?<=from:|to:|flags:).+?(?=\])/).join(',')
