[[ $- != *i* ]] && return
export SHELL=/bin/bash
[ -f ~/.config/bash.functions  ] && . ~/.config/bash.functions
has_hardstatus
PS1="$(appropriate_ps1)"
__expand_tilde_by_ref() { sleep 0; }
_expand() { sleep 0; }
alias column='column -c $COLUMNS'
alias cp='cp -i'
alias gi='git remote show | column; git branch --all --list --column=dense --no-merged && git status && glog -n 3'
alias grep='grep -i --color=auto'
alias grex='grep -iEvr '"'"'^[[:space:]]*(#|;|//|$)'"'"
alias lf='ls -AF --color=auto'
alias ls='ls -A --color=auto'
alias mv='mv -i'
alias rm='rm --one-file-system -i'
alias rs='rsync --inplace --out-format="%t %o %f ... %n" --info=flist0,progress2 --no-i-r --chmod=u+w,Du+x -Phe "ssh -S none"'
alias tig='tig --all'
alias wfm="find \$(manpath | tr : ' ') | grep"
alias zgrep='zgrep -i --color=auto'
bind '"\e[A"':history-search-backward
bind '"\e[B"':history-search-forward
eval "`dircolors -b`"
export HISTCONTROL=ignoredups #$HISTCONTROL${HISTCONTROL+,}ignoredups
export HISTSIZE=100000
export HISTIGNORE="&"
export HISTFILESIZE=999999999999
export EDITOR=emacs
export LANG=en_US.UTF-8
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/sbin:/usr/sbin:/sbin:$PATH"
export VISUAL=emacs
#export GRE_HOME=/tmp
export PROMPT_COMMAND='history -a'
export XAUTHORITY=/tmp/.Xauthority.$USER
export XDG_CONFIG_HOME=~/.config
mesg n
set completion-ignore-case On
set completion-query-items 150
set page-completions Off
set print-completions-horizontally On
set -o noclobber
shopt -s histappend
shopt -s checkwinsize
stty stop undef
stty start undef
stty -ixon -ixoff
complete -f -X '!*.@(sqlite|db)' sqlite3
complete -f emacs rsync mv cp rm mc scp diff ls sed mplayer tail find cmp
complete -f scp mkdir sshfs cat sqlite3 zip unzip useradd fusermount
complete -f head md5sum sed
