
# The following lines were added by compinstall

#-Uz
autoload -U compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
setopt SHARE_HISTORY
setopt APPEND_HISTORY
HISTFILE=~/.histfile
SAVEHIST=1000
HISTSIZE=1000
# End of lines configured by zsh-newuser-install
# More autocomplete
setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

# omp
eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/catppuccin_mocha_fork.omp.json)"

# Rust
export PATH=/.cargo/bin:$PATH

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# . "$HOME/.local/bin/env"
source $HOME/.local/bin/env