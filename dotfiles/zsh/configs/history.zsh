setopt hist_ignore_all_dups inc_append_history
HISTFILE=~/.zhistory
HISTSIZE=4096
SAVEHIST=4096
HSLINES=$(cat /root/.bash_history_summary|sort -k1|uniq -f1|wc -l)
export ERL_AFLAGS="-kernel shell_history enabled"
cat /root/.zhistory|sort -k1|uniq -f1 >> /root/.bash_history_summary
if [ $HSLINES!=0 ];then 
   cat /root/.bash_history_summary|sort -k1|uniq -f1 > /root/.bash_history_summary
fi
