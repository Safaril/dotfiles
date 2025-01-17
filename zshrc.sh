# check if this is a login shell
[ "$0" = "-zsh" ] && export LOGIN_ZSH=1

# run zprofile if this is not a login shell
[ -n "$LOGIN_ZSH" ] && source ~/.zprofile

# load shared shell configuration
source ~/.shrc

# History file
export HISTFILE=~/.zsh_history

# Don't show duplicate history entires
setopt hist_find_no_dups

# Remove unnecessary blanks from history
setopt hist_reduce_blanks

# Share history between instances
setopt share_history

# Don't hang up background jobs
setopt no_hup

# use emacs bindings even with vim as EDITOR
bindkey -e

# use a quick `jj` keystroke to get into vim mode on the command line
bindkey jj vi-cmd-mode

# fix backspace on Debian
[ -n "$LINUX" ] && bindkey "^?" backward-delete-char

# fix delete key on macOS
[ -n "$MACOS" ] && bindkey '\e[3~' delete-char

# alternate mappings for Ctrl-U/V to search the history
bindkey "^u" history-beginning-search-backward
bindkey "^v" history-beginning-search-forward
export PATH="/usr/local/bin:$PATH"
eval "$(rbenv init -)"
eval "$(nodenv init -)"
kitty + complete setup zsh | source /dev/stdin
