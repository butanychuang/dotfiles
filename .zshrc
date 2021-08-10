source $HOME/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle osx
antigen bundle brew
antigen bundle history-substring-search
antigen bundle vundle
antigen bundle aws
antigen bundle python
antigen bundle composer
antigen bundle laravel5

# Bundles from repo.
antigen bundle Tarrasch/zsh-bd
antigen bundle tarruda/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
# TODO: local theme ?
antigen theme butanychuang/dotfiles .zsh/butany

# Tell antigen that you're done.
antigen apply

# Load autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Disable autosetting terminal title
export DISABLE_AUTO_TITLE="true"

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

alias cl='clear'
jd() { cd $(dirname $(readlink "$1")) }

# Make filename completion sort by modification time
zstyle ':completion:*' file-sort time

# mosh hostname completion support
compdef mosh=ssh
