# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
export PATH=$PATH:~/anaconda/bin/
export PATH=$PATH:/usr/local/go/pkg/tool/linux_amd64/
export GOBIN=/usr/local/go/bin
export GOROOT=/usr/local/go/
export GOPATH=$HOME/godns
export QT_QPA_PLATFORM=offscreen
#export http_proxy=socks5://127.0.0.1:1080  https_proxy=socks5://127.0.0.1:1080
#bash /usr/local/bin/shellproxy.sh
# If not running interactively, don't do anything
[ -z "$PS1" ] && return
#option1
# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
#HISTCONTROL=ignoredups:ignorespace
# doing a “history -a” after each command (append command to history after each command)
#export PROMPT_COMMAND="history -a;"$PROMPT_COMMAND
# append to the history file, don't overwrite it
#shopt -s histappend

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:erasedups
# doing a “history -a” after each command (append command to history after each command)

export PROMPT_COMMAND="history -a;"$PROMPT_COMMAND
# append to the history file, don't overwrite it
#export PROMPT_COMMAND="history -n;history -w;history -c;history -r;"$PROMPT_COMMAND
# append to the history file, don't overwrite it
shopt -s histappend



# for setting history length see HISTSIZE and HISTFILESIZE in bash(1) 
# if forbiding the history the HISTSIZE=0
HISTSIZE=1000
HISTFILESIZE=2000

#ignore the history command
HISTIGNORE="cd:ls:llt:pwd:ffzy"


# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
#    . /etc/bash_completion
#fi

alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"
. /root/torch/install/bin/torch-activate
eval $(ssh-agent)
alias llt="ls -latr"
alias dfwin3="df -lh|grep win3"
alias dfwin4="df -lh|grep win4"
alias dfdata="df -lh|grep data"
alias dfbackup="df -lh|grep backup"
alias lltwin3="llt /win3|tail -10"
alias lltwin4="llt /win4|tail -10"
alias lltopt="llt /opt|tail -10" 
alias llth="llt .|tail -10"
export EDITOR=vim
alias alisec="47.94.205.80"
alias b1="104.129.180.167"

#source enhanced
if [ -f /opt/enhancd/init.sh ]; then
    . /opt/enhancd/init.sh
fi

alias hg="history|fzy"
alias rmi="rm -vi"
alias ahat="aha >/win3/ls-with-colors.html"
#source enhanced
if [ -f /etc/bash.bashrc ]; then
    . /etc/bash.bashrc
fi
if [ -f /etc/bash.bash_aliases]; then
    . /etc/bash.bash_aliases
fi



[[ -s "$HOME/.local/share/marker/marker.sh" ]] && source "$HOME/.local/share/marker/marker.sh"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
