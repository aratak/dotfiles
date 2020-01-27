require 'fileutils'

def dotfiles
  {
    'vscode'           => '.vscode',
    'gitconfig'        => '.gitconfig',
    'asdfrc'           => '.asdfrc',
    'zshrc'            => '.zshrc',
    'gemrc'            => '.gemrc',
    'gitignore_global' => '.gitignore_global',
    'iex.exs'          => '.iex.exs',
    'bundle'           => '.bundle',
    'zsh'              => '.zsh'
  }
end

def source_file_path(filename)
  File.expand_path File.join("./", filename)
end

def dotfile_home_path(filename)
  File.expand_path("#{filename}", '~')
end

task :default => :install

desc "Copy dotfiles to my home directory"
task :install do
  dotfiles.each do |source, destination|
    ln_s source_file_path(source), dotfile_home_path(destination), :verbose => true, :force => true
  end
end
