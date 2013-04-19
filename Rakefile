require 'fileutils'

def dotfiles
  %w{gitconfig profile gemrc}
end

def dotfile_home_path(filename)
  File.expand_path(".#{filename}", '~')
end

task :default => :install

desc "Copy dotfiles to my home directory"
task :install do
  dotfiles.each do |filename|
    cp filename, dotfile_home_path(filename)
  end
end

desc "Update dotfiles from my home directory"
task :pull do
  dotfiles.each do |filename|
    cp dotfile_home_path(filename), filename
  end
end