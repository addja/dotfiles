source ~/.zshdir/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle colored-man-pages
antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle b4b4r07/enhancd

# Load the theme.
antigen theme bira

# Tell Antigen that you're done.
antigen apply

# My configuration
export EDITOR=nvim

# My aliases
alias nv=nvim

zle -N zle-line-init
zle -N zle-keymap-select
export KEYTIMEOUT=1

source /home/otero/.config/broot/launcher/bash/br

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export ZFZ_DEFAULT_OPS="--extended"
