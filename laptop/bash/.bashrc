# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize

# Load aliases
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    (cat ~/.cache/wal/sequences &)
    ;;
  screen*|linux)
    source ~/.cache/wal/colors-tty.sh
    ;;
esac

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

source ~/repos/pureline/pureline ~/.pureline.conf
