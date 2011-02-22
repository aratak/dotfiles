require 'rubygems' unless defined? Gem # rubygems is only needed in 1.8
require 'irbtools/configure'
Irbtools.railsrc = File.expand_path('.railsrc', '~')
Irbtools.init

