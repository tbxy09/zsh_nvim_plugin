alias cd='__enhancd::cd'
alias cnpm='npm --registry=https://registry.npm.taobao.org --cache=/root/.npm/.cache/cnpm --disturl=https://npm.taobao.org/dist --userconfig=/root/.cnpmrc'
alias dfbackup='df -lh|grep backup'
alias dfdata='df -lh|grep data'
alias dfwin3='df -lh|grep win3'
alias dfwin4='df -lh|grep win4'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias llt='ls -latr'
alias llth='llt .|tail -10'
alias lltopt='llt /opt|tail -10'
alias lltwin3='llt /win3|tail -10'
alias lltwin4='llt /win4|tail -10'
#alias ls='ls --color=auto'
#git alias
alias gc='git clone'
alias ga='git add'
alias gm='git commit -m'
alias hg='history|grep'
alias ffzy='find -type f|fzy'
alias sap34='source activate python34'
alias cddir='cd $(dirname $(find -type f|fzy))'
alias hgs='cat /root/.bash_history_summary|fzy'
# enable color support of ls and also add handy aliases
alias ls='ls --color=auto'
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias llt="ls -latr"
alias dfwin3="df -lh|grep win3"
alias dfwin4="df -lh|grep win4"
alias dfdata="df -lh|grep data"
alias dfbackup="df -lh|grep backup"
alias lltwin3="llt /win3|tail -10"
alias lltwin4="llt /win4|tail -10"
alias lltopt="llt /opt|tail -10"
alias llth="llt .|tail -10"
alias alisec="47.94.205.80"
alias b1="104.129.180.167"
alias hg="history|fzy"
alias rmi="rm -vi"
alias ahat="aha >/win3/ls-with-colors.html"
alias zhg='cat /root/.zhistory|fzy'
alias sap34="conda activate python34"
alias sap2="conda activate patent-landscape"
alias start8888="nohup jupyter notebook --ip=* --allow-root &"
alias start7778='nohup python -m http.server 7778 &'
alias ta='tmux attach'
alias tls='tmux ls'
alias tat='tmux attach -t'
alias tns='tmux new-session -s'
