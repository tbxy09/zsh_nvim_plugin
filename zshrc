export PATH=$PATH:/usr/local/go/pkg/tool/linux_amd64/
export GOBIN=/usr/local/go/bin
export GOROOT=/usr/local/go/
export GOPATH=$HOME/godns
export QT_QPA_PLATFORM=offscreen
export LSCOLORS=''
export LS_COLORS=""

#  load custom executable functions
for function in ~/.zsh/functions/*; do
  source $function
done
TRAPWINCH() {
  zle && { zle reset-prompt; zle -R }
}
# extra files in ~/.zsh/configs/pre , ~/.zsh/configs , and ~/.zsh/configs/post
# these are loaded first, second, and third, respectively.
_load_settings() {
  _dir="$1"
  if [ -d "$_dir" ]; then
    if [ -d "$_dir/pre" ]; then
      for config in "$_dir"/pre/**/*(N-.); do
        if [ ${config:e} = "zwc" ] ; then continue ; fi
        . $config
      done
    fi

    for config in "$_dir"/**/*(N-.); do
      case "$config" in
        "$_dir"/pre/*)
          :
          ;;
        "$_dir"/post/*)
          :
          ;;
        *)
          if [[ -f $config && ${config:e} != "zwc" ]]; then
            . $config
          fi
          ;;
      esac
    done

    if [ -d "$_dir/post" ]; then
      for config in "$_dir"/post/**/*(N-.); do
        if [ ${config:e} = "zwc" ] ; then continue ; fi
        . $config
      done
    fi
  fi
}
_load_settings "$HOME/.zsh/configs"

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases
[[ -f /opt/enhancd/init.sh ]] && source /opt/enhancd/init.sh

[[ -s "$HOME/.local/share/marker/marker.sh" ]] && source "$HOME/.local/share/marker/marker.sh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
. /root/anaconda/etc/profile.d/conda.sh
alias start7778='nohup python -m http.server 7778 &'
alias start8888="nohup jupyter notebook --ip=* --allow-root &"
export OPT='/opt/'
zle     -N    hgss
bindkey '^Y' hgss
eval $(dircolors -b $HOME/.dircolors)
eval $(dircolors -b /$DATA/dircolors-solarized/dircolors.256dark )
eval $(dircolors -b /$DATA/dircolors-solarized/dircolors.ansi-dark  )
#eval $(dircolors -b /data/dircolors-solarized/dircolors.ansi-universal   )
