#Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh/.histfile
HISTSIZE=2500
SAVEHIST=2500
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/c4s3/.zsh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
bindkey '^[[Z' reverse-menu-complete
#sources

if [ -f ~/Scripts/zshaliases.sh ]; then
    source ~/Scripts/zshaliases.sh
else
    print "404: ~Scripts/zshaliases.sh not found."
fi

if [ -f ~/Scripts/zshplugs.sh ]; then
    source ~/Scripts/zshplugs.sh
else
    print "404: ~Scripts/zshplugs.sh not found."
fi

#custom scripts

~/Scripts/mnemosyne3.sh


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

fpath+=${ZDOTDIR:-~}/.zsh_functions
source ~/Gits/powerlevel10k/powerlevel10k.zsh-theme
