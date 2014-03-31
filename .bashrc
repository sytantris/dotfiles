# enable bash completion
. /usr/local/etc/bash_completion
. ~/.bash_colours

export PS1=\
$c_purple'•'\
$b_blue'\u'\
$c_purple'|'\
$c_blue'\h'\
$c_purple':'\
$b_black'\w'\
$c_purple'•'\
$c_black$(__git_ps1 " on ")\
$c_cyan$(__git_ps1 "%s")'\n'\
$b_purple'$ '\
$b_white\
'\033]0;\w\007' # displays working directory in tab/window

#export PS1='\
#\[\e[0;35m\]•\
#\[\e[1;34m\]\u\
#\[\e[0;35m\]|\
#\[\e[0;34m\]\h\
#\[\e[0;35m\]:\
#\[\e[1;30m\]\w\
#\[\e[0;35m\]•\
#\[\e[0;30m\]$(__git_ps1 " on \
#\[\e[0;36m\]$(__git_ps1 "%s")\n\
#\[\e[1;35m\]$ \
#\[\e[1;37m\]\
#\033]0;\w\007' # displays working directory in tab/window

export PATH="$HOME/Developer/bin:/usr/local/share/npm/bin:$PATH"
export EDITOR="/Applications/MacVim.app/Contents/MacOS/Vim"
export TERM='xterm-256color'

export MIXIN_PATH="$HOME/Work/ops/lib/sass/"

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ls='ls -Gp'
alias ll='ls -la'
alias so='source'
alias grep='grep -i --colour=auto'
alias 'g++'='g++ -Wall -Wextra -pedantic'
alias gitlog='git log --graph --all --decorate --pretty=oneline'

# vi mode
set -o vi

# z
. ~/Developer/bin/z/z.sh
