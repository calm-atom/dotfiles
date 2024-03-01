# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/jb/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

# Prompt Config
PS1='%F{blue}%~ %(?.%F{green}.%F{red})>%f '

# Export path to global nvim appimage
export PATH="$PATH:/opt/nvim/" 

# Add go bin to PATH
export PATH="$PATH:/opt/go/bin" 
alias config='/usr/bin/git --git-dir=/home/jb/.dotfiles/ --work-tree=/home/jb'
