require 'rubygems' unless defined? Gem # rubygems is only needed in 1.8
require 'irbtools/configure'
Irbtools.railsrc = File.expand_path('.railsrc', '~')
Irbtools.init

Wirb.schema.merge!(
  :string => :light_red,
  
  :open_regexp  => :yellow,
  :close_regexp => :yellow,  
  :regexp => :light_red,
  :comma  => :white
)

FancyIrb.options.merge!(
  :colorize => {
    :stdout => :white
  }
)
