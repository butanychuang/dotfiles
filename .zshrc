# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set custom plugin/theme directory
export ZSH_CUSTOM=$HOME/.zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="butany"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable autosetting terminal title.
export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx brew history-substring-search vundle npm python composer)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
PATH="${HOME}/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"
TZ="Asia/Taipei"
LC_ALL='zh_TW.UTF-8'
LANG='zh_TW.UTF-8'
HISTFILE=$HOME/.zhistory
HOSTNAME="`hostname`"
PAGER='less'
export EDITOR='vim'

# Fix git log mojibake
export LESSCHARSET="utf-8"

alias la='ls -lhA'
alias ll='ls -lh'
alias j='jobs'
alias cl='clear'

# Make filename completion sort by modification time
zstyle ':completion:*' file-sort time

# Load rvm, TODO: use oh-my-zsh
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# mosh hostname completion support
compdef mosh=ssh
