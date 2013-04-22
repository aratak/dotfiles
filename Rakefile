require 'fileutils'

def dotfiles
  %w{gitconfig profile gemrc}
end

def source_file_path(filename)
  File.expand_path File.join("./", filename)
end

def dotfile_home_path(filename)
  File.expand_path(".#{filename}", '~')
end

task :default => :install

desc "Copy dotfiles to my home directory"
task :install do
  dotfiles.each do |filename|
    ln_s source_file_path(filename), dotfile_home_path(filename), :verbose => true
  end
end
