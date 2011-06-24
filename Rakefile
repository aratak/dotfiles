require 'fileutils'

def dotfiles
  ['gitconfig', 'irbrc', 'profile', 'railsrc', 'powconfig', 'gemrc', 'rails.bash']
end

def parse_files
  if ENV['FILES']
    ENV['FILES'].split(/,\s*/) & dotfiles
  else
    dotfiles
  end
end

def dotfile_home_path(filename)
  File.expand_path(".#{filename}", '~')
end

task :default => :install

desc "Copy dotfiles to my home directory"
task :install do
  parse_files.each do |filename|
    cp filename, dotfile_home_path(filename)
  end
end

desc "Update dotfiles from my home directory"
task :pull do
  parse_files.each do |filename|
    cp dotfile_home_path(filename), filename
  end
end