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

# https://scriptingosx.com/2019/07/moving-to-zsh-06-customizing-the-zsh-prompt/
# Left Prompt Config
PS1='%F{blue}%1~%f → '

# Git Prompt Status
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

# Right Prompt Config
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{green}(%b)%r%f'
zstyle ':vcs_info:*' enable git

# Export path to global nvim appimage
export PATH="$PATH:/opt/nvim/" 

# Add go bin to PATH
export PATH="$PATH:/opt/go/bin" 
alias config='/usr/bin/git --git-dir=/home/jb/.dotfiles/ --work-tree=/home/jb'
