export ZSH=/Users/mcutalo/.oh-my-zsh

export EDITOR='vim'
export VISUAL='vim'

source ~/.dots/git
source ~/.dots/docker
source ~/.dots/kubernetes
source $ZSH/oh-my-zsh.sh

# ZSH_THEME="agnoster"
ZSH_THEME="robbyrussell"


HIST_STAMPS="mm/dd/yyyy"
plugins=(git kubectl docker zsh-autosuggestions)


alias pysource="source venv/bin/activate"
alias mysource="source ~/.zshrc"
alias editzsh="code -n ~/.zshrc ~/.shellconfigs ~/.oh-my-zsh/themes/agnoster.zsh-theme ~/.oh-my-zsh/themes/robbyrussell.zsh-theme"

function decode64() {
  print $(echo $1 | base64 -D ; echo)
}

function encode64() {
  print -n $1 | openssl base64
}

function whileforever(){
  sleeptime=$2
  
  if [ -z "$sleeptime" ] ; then
    sleeptime=1
  fi

  while :; do "$@"; sleep 1; done
}
