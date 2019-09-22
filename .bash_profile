# pretty terminal
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

# user-installed binaries take precedence
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# disable google analytics in homebrew
export HOMEBREW_NO_ANALYTICS=1

# colors, file type indicators, and human units
alias ls='ls -GFh'
