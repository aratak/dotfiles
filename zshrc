# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias txt2hex="hexdump -v -e '/1 \"0x%02X \"' ; echo"
# alias code="code-insiders"
alias tig="tig --all"
alias gti="git"
alias igt="git"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git gitfast git-open)

eval "$(/opt/homebrew/bin/brew shellenv)"

function title {
    echo -ne "\033]0;"$*"\007"
}

function ymlshow {
    hwatch -t -c bat --style=grid,numbers -f --theme=ansi $*
}

function hide_python_service_files {
    cp .zed/hide_settings.json .zed/settings.json
}

function show_python_service_files {
    cp .zed/show_settings.json .zed/settings.json
}

function hide_icons {
    defaults write com.apple.finder CreateDesktop false
    killall Finder
}

function show_icons {
    defaults write com.apple.finder CreateDesktop true
    killall Finder
}

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/npm/bin:$HOME/.bin:$PATH

export ARCHFLAGS="-arch x86_64"
export BUNDLER_EDITOR=atom

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

export HISTFILESIZE=1000000000
export HISTSIZE=1000000

alias gitx='gitx --all'
alias ruby='ruby -r rubygems'
alias please='sudo'
alias docker-env='. docker-env'

alias e='code'
alias ls='ls -F'
alias ll='ls -l'
alias refresh="cd && cd ~-"
unalias gm

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export LDFLAGS="-L/opt/homebrew/opt/qt@5/lib"
export CPPFLAGS="-I/opt/homebrew/opt/qt@5/include"
export PATH="/opt/homebrew/opt/qt@5/bin:$PATH"

export NODEJS_CHECK_SIGNATURES=no
# export NODE_OPTIONS=--openssl-legacy-provider

. $(brew --prefix)/opt/asdf/libexec/asdf.sh

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/aratak/.lmstudio/bin"

# Added by Windsurf
export PATH="/Users/aratak/.codeium/windsurf/bin:$PATH"

# Added by UV
eval "$(uv generate-shell-completion zsh)"

# libpq is required for pg gem
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
