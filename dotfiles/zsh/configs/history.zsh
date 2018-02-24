setopt hist_ignore_all_dups inc_append_history
HISTFILE=~/.zhistory
HISTSIZE=4096
SAVEHIST=4096
HSLINES=$(cat /root/.bash_history_summary|sort -k1|uniq -f1|wc -l)
export ERL_AFLAGS="-kernel shell_history enabled"
cat /root/.zhistory|sort -k1|uniq -f1 >> /root/.bash_history_summary
if [ $HSLINES!=0 ];then
   # using subshell
   echo "$(cat /root/.bash_history_summary|sort -k1|uniq -f1)" > /root/.bash_history_summary
# problem with original code
#   cat /root/.bash_history_summary|sort -k1|uniq -f1 > .bash_history_summary
# other solutions
#   cat /root/.bash_history_summary|sort -k1|uniq -f1 > redirect_buffer
#   cat redirect_buffer > /root/.bash_history_summary

# using sponge
#   cat /root/.bash_history_summary|sort -k1|uniq -f1|sponge .bash_history_summary
#   check the sponge in session buddy
# using subshell
fi
