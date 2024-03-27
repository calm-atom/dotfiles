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
#
# Find and set branch name var if in git repository.
function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '('$branch')'
  fi
}

# Enable substitution in the prompt.
setopt prompt_subst

# Prompt Config
PS1='%F{blue}%~ %(?.%F{green}.%F{red}) $(git_branch_name)>%f '

# Export path to global nvim appimage
export PATH="$PATH:/opt/nvim/" 

# Add go bin to PATH
export PATH="$PATH:/opt/go/bin" 
alias config='/usr/bin/git --git-dir=/home/jb/.dotfiles/ --work-tree=/home/jb'
